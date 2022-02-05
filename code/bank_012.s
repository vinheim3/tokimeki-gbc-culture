; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

	ld a, [$9d00]                                    ; $4000: $fa $00 $9d
	rlca                                             ; $4003: $07
	dec b                                            ; $4004: $05
	ld h, a                                          ; $4005: $67
	cp $99                                           ; $4006: $fe $99
	rst $38                                          ; $4008: $ff
	db $fd                                           ; $4009: $fd
	rst $38                                          ; $400a: $ff
	ld bc, rIE                                     ; $400b: $01 $ff $ff
	db $dd                                           ; $400e: $dd
	sub c                                            ; $400f: $91
	rst SubAFromDE                                          ; $4010: $df
	sub d                                            ; $4011: $92
	rst SubAFromDE                                          ; $4012: $df
	ldh [c], a                                       ; $4013: $e2
	rst SubAFromDE                                          ; $4014: $df
	add h                                            ; $4015: $84
	rst SubAFromDE                                          ; $4016: $df
	adc b                                            ; $4017: $88
	rst FarCall                                          ; $4018: $f7
	rst SubAFromDE                                          ; $4019: $df
	ld [bc], a                                       ; $401a: $02
	rst SubAFromDE                                          ; $401b: $df
	inc b                                            ; $401c: $04
	rst SubAFromDE                                          ; $401d: $df
	pop hl                                           ; $401e: $e1
	rst SubAFromDE                                          ; $401f: $df
	ld [bc], a                                       ; $4020: $02
	rst SubAFromDE                                          ; $4021: $df
	ld b, $fb                                        ; $4022: $06 $fb
	rst SubAFromDE                                          ; $4024: $df
	pop af                                           ; $4025: $f1
	rst SubAFromDE                                          ; $4026: $df
	sub c                                            ; $4027: $91
	rst SubAFromDE                                          ; $4028: $df
	and a                                            ; $4029: $a7
	rst SubAFromDE                                          ; $402a: $df
	pop bc                                           ; $402b: $c1
	rst SubAFromDE                                          ; $402c: $df
	and c                                            ; $402d: $a1
	rst SubAFromDE                                          ; $402e: $df
	ldh [c], a                                       ; $402f: $e2
	reti                                             ; $4030: $d9


	ld [hl+], a                                      ; $4031: $22
	rst SubAFromDE                                          ; $4032: $df
	jp nz, $defd                                     ; $4033: $c2 $fd $de

	rst $38                                          ; $4036: $ff
	ld a, e                                          ; $4037: $7b
	db $fc                                           ; $4038: $fc
	db $ed                                           ; $4039: $ed
	ld l, a                                          ; $403a: $6f
	and $de                                          ; $403b: $e6 $de
	rst $38                                          ; $403d: $ff
	ld a, a                                          ; $403e: $7f
	sbc d                                            ; $403f: $9a
	sbc [hl]                                         ; $4040: $9e
	db $fd                                           ; $4041: $fd
	ld e, a                                          ; $4042: $5f
	adc d                                            ; $4043: $8a
	rst $38                                          ; $4044: $ff
	rst SubAFromDE                                          ; $4045: $df
	ld [$7fdf], sp                                   ; $4046: $08 $df $7f
	rst SubAFromDE                                          ; $4049: $df
	ld d, l                                          ; $404a: $55

jr_012_404b:
	rst SubAFromDE                                          ; $404b: $df
	ld b, h                                          ; $404c: $44
	rst SubAFromDE                                          ; $404d: $df
	ld e, a                                          ; $404e: $5f
	rst SubAFromDE                                          ; $404f: $df
	ld b, h                                          ; $4050: $44
	rst SubAFromDE                                          ; $4051: $df
	ld d, l                                          ; $4052: $55
	db $fd                                           ; $4053: $fd
	rst SubAFromDE                                          ; $4054: $df
	rst JumpTable                                          ; $4055: $c7
	rst SubAFromDE                                          ; $4056: $df
	ld b, b                                          ; $4057: $40
	rst SubAFromDE                                          ; $4058: $df
	ld b, e                                          ; $4059: $43
	rst SubAFromDE                                          ; $405a: $df
	ld b, b                                          ; $405b: $40
	rst SubAFromDE                                          ; $405c: $df
	ld b, a                                          ; $405d: $47
	rst SubAFromDE                                          ; $405e: $df
	ld b, b                                          ; $405f: $40
	rst $38                                          ; $4060: $ff
	rst SubAFromDE                                          ; $4061: $df
	adc b                                            ; $4062: $88
	rst SubAFromDE                                          ; $4063: $df
	rst $38                                          ; $4064: $ff
	rst SubAFromDE                                          ; $4065: $df
	jr nz, @-$1f                                     ; $4066: $20 $df

	cp $df                                           ; $4068: $fe $df
	jr nz, jr_012_404b                               ; $406a: $20 $df

	rst $38                                          ; $406c: $ff
	rst SubAFromDE                                          ; $406d: $df

jr_012_406e:
	adc b                                            ; $406e: $88
	rst SubAFromDE                                          ; $406f: $df
	sub h                                            ; $4070: $94
	rst SubAFromDE                                          ; $4071: $df
	ret z                                            ; $4072: $c8

	rst SubAFromDE                                          ; $4073: $df
	ld [hl], $ff                                     ; $4074: $36 $ff
	rst SubAFromDE                                          ; $4076: $df
	db $fc                                           ; $4077: $fc
	ld [hl], a                                       ; $4078: $77
	ldh a, [$df]                                     ; $4079: $f0 $df
	jr nz, jr_012_406e                               ; $407b: $20 $f1

	rst SubAFromDE                                          ; $407d: $df
	ld b, d                                          ; $407e: $42
	rst SubAFromDE                                          ; $407f: $df
	ld b, a                                          ; $4080: $47
	rst SubAFromDE                                          ; $4081: $df
	ld b, c                                          ; $4082: $41
	rst SubAFromDE                                          ; $4083: $df
	add b                                            ; $4084: $80
	rst SubAFromDE                                          ; $4085: $df
	add c                                            ; $4086: $81
	rst SubAFromDE                                          ; $4087: $df
	ld b, b                                          ; $4088: $40
	rst SubAFromDE                                          ; $4089: $df
	daa                                              ; $408a: $27
	rst SubAFromDE                                          ; $408b: $df
	db $10                                           ; $408c: $10
	ld e, a                                          ; $408d: $5f
	sub [hl]                                         ; $408e: $96
	ld l, a                                          ; $408f: $6f
	cp $df                                           ; $4090: $fe $df
	ld a, [hl+]                                      ; $4092: $2a
	rst SubAFromDE                                          ; $4093: $df
	ld [hl+], a                                      ; $4094: $22
	rst SubAFromDE                                          ; $4095: $df
	ld [hl-], a                                      ; $4096: $32
	rst SubAFromDE                                          ; $4097: $df
	ld hl, $c1df                                     ; $4098: $21 $df $c1
	rst SubAFromDE                                          ; $409b: $df

Call_012_409c:
	ld [bc], a                                       ; $409c: $02
	rst SubAFromDE                                          ; $409d: $df
	inc c                                            ; $409e: $0c
	rst $38                                          ; $409f: $ff
	sbc l                                            ; $40a0: $9d
	ret nz                                           ; $40a1: $c0

	ld b, b                                          ; $40a2: $40
	ld h, a                                          ; $40a3: $67
	cp $9d                                           ; $40a4: $fe $9d
	rst $38                                          ; $40a6: $ff
	ld a, a                                          ; $40a7: $7f
	ld l, a                                          ; $40a8: $6f
	ld h, b                                          ; $40a9: $60
	rst SubAFromDE                                          ; $40aa: $df
	ld a, [bc]                                       ; $40ab: $0a
	rst SubAFromDE                                          ; $40ac: $df
	ld sp, $c0df                                     ; $40ad: $31 $df $c0
	ld c, a                                          ; $40b0: $4f
	ld [hl], $df                                     ; $40b1: $36 $df
	ld b, b                                          ; $40b3: $40
	rst SubAFromDE                                          ; $40b4: $df
	ld [hl], a                                       ; $40b5: $77
	rst SubAFromDE                                          ; $40b6: $df
	dec h                                            ; $40b7: $25
	rst SubAFromDE                                          ; $40b8: $df
	push af                                          ; $40b9: $f5
	rst SubAFromDE                                          ; $40ba: $df
	dec h                                            ; $40bb: $25
	rst SubAFromDE                                          ; $40bc: $df
	rst SubAFromBC                                          ; $40bd: $e7
	rst $38                                          ; $40be: $ff
	rst SubAFromDE                                          ; $40bf: $df
	add a                                            ; $40c0: $87
	rst SubAFromDE                                          ; $40c1: $df
	ld h, c                                          ; $40c2: $61
	ld e, a                                          ; $40c3: $5f
	jr nc, @-$1f                                     ; $40c4: $30 $df

	adc d                                            ; $40c6: $8a
	rst SubAFromDE                                          ; $40c7: $df
	push bc                                          ; $40c8: $c5
	rst SubAFromDE                                          ; $40c9: $df
	sbc e                                            ; $40ca: $9b
	ld e, e                                          ; $40cb: $5b
	jr nz, jr_012_4139                               ; $40cc: $20 $6b

	jp z, $1cdf                                      ; $40ce: $ca $df $1c

	rst SubAFromDE                                          ; $40d1: $df
	push de                                          ; $40d2: $d5
	rst SubAFromDE                                          ; $40d3: $df
	cp a                                             ; $40d4: $bf
	ld e, a                                          ; $40d5: $5f
	ldh a, [$df]                                     ; $40d6: $f0 $df
	ld bc, $e7df                                     ; $40d8: $01 $df $e7
	rst SubAFromDE                                          ; $40db: $df
	ld b, e                                          ; $40dc: $43
	ld h, a                                          ; $40dd: $67
	ldh a, [$dd]                                     ; $40de: $f0 $dd
	ld [bc], a                                       ; $40e0: $02
	rst SubAFromDE                                          ; $40e1: $df
	di                                               ; $40e2: $f3
	rst SubAFromDE                                          ; $40e3: $df
	ld h, $73                                        ; $40e4: $26 $73
	ldh a, [$9e]                                     ; $40e6: $f0 $9e
	ld a, a                                          ; $40e8: $7f
	ld e, a                                          ; $40e9: $5f
	ld a, d                                          ; $40ea: $7a
	rst SubAFromDE                                          ; $40eb: $df
	or l                                             ; $40ec: $b5
	db $dd                                           ; $40ed: $dd
	and l                                            ; $40ee: $a5
	rst SubAFromDE                                          ; $40ef: $df
	or a                                             ; $40f0: $b7
	rst SubAFromDE                                          ; $40f1: $df
	db $e4                                           ; $40f2: $e4
	rst SubAFromDE                                          ; $40f3: $df
	inc b                                            ; $40f4: $04
	db $fd                                           ; $40f5: $fd
	ld e, a                                          ; $40f6: $5f
	and $6f                                          ; $40f7: $e6 $6f
	cp $22                                           ; $40f9: $fe $22
	nop                                              ; $40fb: $00
	sbc e                                            ; $40fc: $9b
	dec e                                            ; $40fd: $1d
	rra                                              ; $40fe: $1f
	inc bc                                           ; $40ff: $03
	inc bc                                           ; $4100: $03
	ei                                               ; $4101: $fb
	sbc $ff                                          ; $4102: $de $ff
	ld [hl], a                                       ; $4104: $77
	db $fc                                           ; $4105: $fc
	ld [hl], e                                       ; $4106: $73
	ld a, [$dffb]                                    ; $4107: $fa $fb $df
	inc bc                                           ; $410a: $03
	ld a, a                                          ; $410b: $7f
	ldh [c], a                                       ; $410c: $e2
	sub a                                            ; $410d: $97
	ld h, c                                          ; $410e: $61
	ld a, a                                          ; $410f: $7f
	add c                                            ; $4110: $81
	rst $38                                          ; $4111: $ff
	add c                                            ; $4112: $81
	rst $38                                          ; $4113: $ff
	ld h, c                                          ; $4114: $61
	ld a, a                                          ; $4115: $7f
	ld e, a                                          ; $4116: $5f
	ret c                                            ; $4117: $d8

	inc bc                                           ; $4118: $03
	db $e4                                           ; $4119: $e4
	ld d, e                                          ; $411a: $53
	db $e4                                           ; $411b: $e4
	inc e                                            ; $411c: $1c
	nop                                              ; $411d: $00
	sbc c                                            ; $411e: $99
	rst $38                                          ; $411f: $ff
	db $fd                                           ; $4120: $fd
	rst $38                                          ; $4121: $ff
	ld bc, rIE                                     ; $4122: $01 $ff $ff
	db $ed                                           ; $4125: $ed
	sbc $ff                                          ; $4126: $de $ff
	sbc h                                            ; $4128: $9c
	add b                                            ; $4129: $80
	rst $38                                          ; $412a: $ff
	cp a                                             ; $412b: $bf
	ld d, e                                          ; $412c: $53
	ldh a, [$7f]                                     ; $412d: $f0 $7f
	sub $7f                                          ; $412f: $d6 $7f
	jp nc, $bf9e                                     ; $4131: $d2 $9e $bf

	ld a, e                                          ; $4134: $7b
	ld [$d05b], a                                    ; $4135: $ea $5b $d0
	rlca                                             ; $4138: $07

jr_012_4139:
	nop                                              ; $4139: $00
	sbc l                                            ; $413a: $9d
	ldh [$a0], a                                     ; $413b: $e0 $a0
	ld c, a                                          ; $413d: $4f
	cp $19                                           ; $413e: $fe $19
	nop                                              ; $4140: $00
	rst SubAFromDE                                          ; $4141: $df
	ld h, e                                          ; $4142: $63
	rst SubAFromDE                                          ; $4143: $df
	ld a, a                                          ; $4144: $7f
	rst SubAFromDE                                          ; $4145: $df
	ld a, [hl]                                       ; $4146: $7e
	db $dd                                           ; $4147: $dd
	ld h, b                                          ; $4148: $60
	ei                                               ; $4149: $fb
	db $dd                                           ; $414a: $dd
	cp $db                                           ; $414b: $fe $db
	add $f1                                          ; $414d: $c6 $f1
	rst SubAFromDE                                          ; $414f: $df
	ld a, [hl]                                       ; $4150: $7e
	rst SubAFromDE                                          ; $4151: $df
	ld a, a                                          ; $4152: $7f
	rst SubAFromDE                                          ; $4153: $df
	ld h, e                                          ; $4154: $63
	rst FarCall                                          ; $4155: $f7
	db $db                                           ; $4156: $db
	add $04                                          ; $4157: $c6 $04
	nop                                              ; $4159: $00
	pop de                                           ; $415a: $d1
	rst $38                                          ; $415b: $ff
	jp nc, $9d01                                     ; $415c: $d2 $01 $9d

	rst $38                                          ; $415f: $ff
	nop                                              ; $4160: $00
	ld l, a                                          ; $4161: $6f
	cp $80                                           ; $4162: $fe $80
	cp $01                                           ; $4164: $fe $01
	db $fc                                           ; $4166: $fc
	inc bc                                           ; $4167: $03
	ld hl, sp+$07                                    ; $4168: $f8 $07
	ld hl, sp+$07                                    ; $416a: $f8 $07
	ld c, h                                          ; $416c: $4c
	or e                                             ; $416d: $b3
	sbc b                                            ; $416e: $98
	ld h, a                                          ; $416f: $67
	and [hl]                                         ; $4170: $a6
	ld e, a                                          ; $4171: $5f
	ld l, a                                          ; $4172: $6f
	sbc a                                            ; $4173: $9f
	cp a                                             ; $4174: $bf
	ld e, a                                          ; $4175: $5f
	call c, $883f                                    ; $4176: $dc $3f $88
	rst $38                                          ; $4179: $ff
	cp h                                             ; $417a: $bc
	rst $38                                          ; $417b: $ff
	scf                                              ; $417c: $37
	ret z                                            ; $417d: $c8

	xor h                                            ; $417e: $ac
	inc de                                           ; $417f: $13
	db $ec                                           ; $4180: $ec
	inc bc                                           ; $4181: $03
	ld a, d                                          ; $4182: $7a
	sub b                                            ; $4183: $90
	ld bc, $00ff                                     ; $4184: $01 $ff $00
	jp $0f3c                                         ; $4187: $c3 $3c $0f


	cp $bf                                           ; $418a: $fe $bf
	rst $38                                          ; $418c: $ff
	ld [hl], e                                       ; $418d: $73
	adc h                                            ; $418e: $8c
	and b                                            ; $418f: $a0
	rla                                              ; $4190: $17
	db $e4                                           ; $4191: $e4
	dec bc                                           ; $4192: $0b
	ld [hl], a                                       ; $4193: $77
	ldh a, [$9e]                                     ; $4194: $f0 $9e
	jp nz, $f073                                     ; $4196: $c2 $73 $f0

	sbc [hl]                                         ; $4199: $9e
	ld a, a                                          ; $419a: $7f
	ld a, e                                          ; $419b: $7b
	cp $83                                           ; $419c: $fe $83
	and a                                            ; $419e: $a7
	rst $38                                          ; $419f: $ff
	rrca                                             ; $41a0: $0f
	rst $38                                          ; $41a1: $ff
	rla                                              ; $41a2: $17
	rst AddAOntoHL                                          ; $41a3: $ef
	ei                                               ; $41a4: $fb
	rlca                                             ; $41a5: $07
	add d                                            ; $41a6: $82
	ld a, a                                          ; $41a7: $7f
	rst FarCall                                          ; $41a8: $f7
	rst $38                                          ; $41a9: $ff
	inc hl                                           ; $41aa: $23
	call c, $bb45                                    ; $41ab: $dc $45 $bb
	cpl                                              ; $41ae: $2f
	pop de                                           ; $41af: $d1
	rlca                                             ; $41b0: $07
	ld hl, sp+$1f                                    ; $41b1: $f8 $1f
	ld [$c13f], a                                    ; $41b3: $ea $3f $c1
	ld l, $d1                                        ; $41b6: $2e $d1
	ld d, e                                          ; $41b8: $53
	db $ed                                           ; $41b9: $ed
	ld h, a                                          ; $41ba: $67
	and b                                            ; $41bb: $a0
	sbc b                                            ; $41bc: $98
	ld e, a                                          ; $41bd: $5f
	nop                                              ; $41be: $00
	cpl                                              ; $41bf: $2f
	nop                                              ; $41c0: $00
	dec b                                            ; $41c1: $05
	nop                                              ; $41c2: $00
	ld [bc], a                                       ; $41c3: $02
	ldh a, [rPCM34]                                  ; $41c4: $f0 $77
	db $e4                                           ; $41c6: $e4
	sbc d                                            ; $41c7: $9a
	rst FarCall                                          ; $41c8: $f7
	nop                                              ; $41c9: $00
	xor d                                            ; $41ca: $aa
	nop                                              ; $41cb: $00
	ld b, b                                          ; $41cc: $40
	ld a, [$6a95]                                    ; $41cd: $fa $95 $6a
	rst $38                                          ; $41d0: $ff
	cp [hl]                                          ; $41d1: $be
	rst $38                                          ; $41d2: $ff
	ldh a, [c]                                       ; $41d3: $f2
	di                                               ; $41d4: $f3
	db $e3                                           ; $41d5: $e3
	db $e3                                           ; $41d6: $e3
	add b                                            ; $41d7: $80
	add b                                            ; $41d8: $80
	ld l, e                                          ; $41d9: $6b
	ldh [$9c], a                                     ; $41da: $e0 $9c
	add sp, $5d                                      ; $41dc: $e8 $5d
	db $10                                           ; $41de: $10
	ld b, a                                          ; $41df: $47
	ret nc                                           ; $41e0: $d0

	ld h, a                                          ; $41e1: $67
	cp $96                                           ; $41e2: $fe $96
	xor a                                            ; $41e4: $af
	nop                                              ; $41e5: $00
	ld d, [hl]                                       ; $41e6: $56
	nop                                              ; $41e7: $00
	rst $38                                          ; $41e8: $ff
	sbc c                                            ; $41e9: $99
	rst $38                                          ; $41ea: $ff
	db $ec                                           ; $41eb: $ec
	ld c, $e8                                        ; $41ec: $0e $e8
	sbc [hl]                                         ; $41ee: $9e
	ld [bc], a                                       ; $41ef: $02
	ld a, e                                          ; $41f0: $7b
	ld e, b                                          ; $41f1: $58
	ld l, a                                          ; $41f2: $6f
	sub $9e                                          ; $41f3: $d6 $9e
	dec d                                            ; $41f5: $15
	ld d, e                                          ; $41f6: $53
	add h                                            ; $41f7: $84
	sub l                                            ; $41f8: $95
	ld [de], a                                       ; $41f9: $12
	dec c                                            ; $41fa: $0d
	nop                                              ; $41fb: $00
	ccf                                              ; $41fc: $3f
	ld b, e                                          ; $41fd: $43
	inc a                                            ; $41fe: $3c
	ld b, $79                                        ; $41ff: $06 $79
	nop                                              ; $4201: $00
	ld a, a                                          ; $4202: $7f
	rst FarCall                                          ; $4203: $f7
	sbc d                                            ; $4204: $9a
	add hl, bc                                       ; $4205: $09
	nop                                              ; $4206: $00
	ld d, a                                          ; $4207: $57
	nop                                              ; $4208: $00
	ccf                                              ; $4209: $3f
	ld l, e                                          ; $420a: $6b
	and [hl]                                         ; $420b: $a6
	sbc h                                            ; $420c: $9c
	cp d                                             ; $420d: $ba
	nop                                              ; $420e: $00
	ld d, l                                          ; $420f: $55
	ld d, e                                          ; $4210: $53
	sub b                                            ; $4211: $90
	sbc d                                            ; $4212: $9a
	cp $00                                           ; $4213: $fe $00
	push de                                          ; $4215: $d5
	nop                                              ; $4216: $00
	and b                                            ; $4217: $a0
	ld l, a                                          ; $4218: $6f
	ldh a, [$df]                                     ; $4219: $f0 $df
	rst $38                                          ; $421b: $ff
	sbc h                                            ; $421c: $9c
	sub e                                            ; $421d: $93
	inc a                                            ; $421e: $3c
	inc c                                            ; $421f: $0c
	ld e, e                                          ; $4220: $5b
	ld [hl], b                                       ; $4221: $70
	sbc b                                            ; $4222: $98
	rst $38                                          ; $4223: $ff
	ld a, [$f0fa]                                    ; $4224: $fa $fa $f0
	ldh a, [$c0]                                     ; $4227: $f0 $c0
	ret nz                                           ; $4229: $c0

	ld h, a                                          ; $422a: $67
	ld d, b                                          ; $422b: $50
	ld sp, hl                                        ; $422c: $f9
	ld a, a                                          ; $422d: $7f
	jp nc, $d29c                                     ; $422e: $d2 $9c $d2

	nop                                              ; $4231: $00
	db $fd                                           ; $4232: $fd
	ld a, e                                          ; $4233: $7b
	add $f1                                          ; $4234: $c6 $f1
	sbc h                                            ; $4236: $9c
	rst SubAFromHL                                          ; $4237: $d7
	rst $38                                          ; $4238: $ff
	sub [hl]                                         ; $4239: $96
	ld a, e                                          ; $423a: $7b
	cp $80                                           ; $423b: $fe $80
	or l                                             ; $423d: $b5
	rst $38                                          ; $423e: $ff
	rst SubAFromHL                                          ; $423f: $d7
	rst $38                                          ; $4240: $ff
	db $f4                                           ; $4241: $f4
	db $fc                                           ; $4242: $fc
	db $f4                                           ; $4243: $f4
	db $fc                                           ; $4244: $fc
	sbc b                                            ; $4245: $98
	sbc b                                            ; $4246: $98
	halt                                             ; $4247: $76
	rst $38                                          ; $4248: $ff
	adc [hl]                                         ; $4249: $8e
	rst $38                                          ; $424a: $ff
	ld e, $ff                                        ; $424b: $1e $ff
	ld a, d                                          ; $424d: $7a
	rst $38                                          ; $424e: $ff
	ldh a, [c]                                       ; $424f: $f2
	rst $38                                          ; $4250: $ff
	jp nz, $82ff                                     ; $4251: $c2 $ff $82

	rst $38                                          ; $4254: $ff
	ld [de], a                                       ; $4255: $12
	rst $38                                          ; $4256: $ff
	rst $38                                          ; $4257: $ff
	rst GetHLinHL                                          ; $4258: $cf
	rst $38                                          ; $4259: $ff
	add l                                            ; $425a: $85
	rst $38                                          ; $425b: $ff
	sbc [hl]                                         ; $425c: $9e
	ld b, b                                          ; $425d: $40
	ld a, e                                          ; $425e: $7b
	push af                                          ; $425f: $f5
	sbc b                                            ; $4260: $98
	ld c, c                                          ; $4261: $49
	rst $38                                          ; $4262: $ff
	and [hl]                                         ; $4263: $a6
	rst $38                                          ; $4264: $ff
	rst SubAFromDE                                          ; $4265: $df
	rst $38                                          ; $4266: $ff
	cp a                                             ; $4267: $bf
	push af                                          ; $4268: $f5
	sbc h                                            ; $4269: $9c
	ld bc, $8700                                     ; $426a: $01 $00 $87
	ld e, e                                          ; $426d: $5b
	ld [bc], a                                       ; $426e: $02
	sbc h                                            ; $426f: $9c
	sub $00                                          ; $4270: $d6 $00
	xor b                                            ; $4272: $a8
	cp $94                                           ; $4273: $fe $94
	ld b, d                                          ; $4275: $42
	db $fc                                           ; $4276: $fc
	ld c, c                                          ; $4277: $49
	cp $7b                                           ; $4278: $fe $7b
	db $fc                                           ; $427a: $fc
	ccf                                              ; $427b: $3f
	db $fc                                           ; $427c: $fc
	add a                                            ; $427d: $87
	cp $0e                                           ; $427e: $fe $0e
	ld a, d                                          ; $4280: $7a
	ld a, d                                          ; $4281: $7a
	sbc l                                            ; $4282: $9d
	rra                                              ; $4283: $1f
	rst $38                                          ; $4284: $ff
	ld d, [hl]                                       ; $4285: $56
	ldh [$9c], a                                     ; $4286: $e0 $9c
	ld a, [$f400]                                    ; $4288: $fa $00 $f4
	ld d, d                                          ; $428b: $52
	ret nc                                           ; $428c: $d0

	ld [hl], a                                       ; $428d: $77
	cp $f9                                           ; $428e: $fe $f9
	sbc [hl]                                         ; $4290: $9e
	jr z, jr_012_430e                                ; $4291: $28 $7b

	ld [de], a                                       ; $4293: $12
	sbc e                                            ; $4294: $9b
	db $fc                                           ; $4295: $fc
	nop                                              ; $4296: $00
	ldh [rP1], a                                     ; $4297: $e0 $00
	halt                                             ; $4299: $76
	ld b, b                                          ; $429a: $40
	db $dd                                           ; $429b: $dd
	rst $38                                          ; $429c: $ff
	ld h, [hl]                                       ; $429d: $66
	ld b, b                                          ; $429e: $40
	ld l, a                                          ; $429f: $6f
	ld [de], a                                       ; $42a0: $12
	ld a, a                                          ; $42a1: $7f
	cp $7f                                           ; $42a2: $fe $7f
	db $e4                                           ; $42a4: $e4
	ld a, a                                          ; $42a5: $7f
	cp $7f                                           ; $42a6: $fe $7f
	ld a, [$f27b]                                    ; $42a8: $fa $7b $f2
	sbc h                                            ; $42ab: $9c
	db $db                                           ; $42ac: $db
	rst $38                                          ; $42ad: $ff
	rst AddAOntoHL                                          ; $42ae: $ef
	ld a, e                                          ; $42af: $7b
	ld a, b                                          ; $42b0: $78
	sbc d                                            ; $42b1: $9a
	cp $ff                                           ; $42b2: $fe $ff
	push af                                          ; $42b4: $f5
	rst $38                                          ; $42b5: $ff
	ld d, [hl]                                       ; $42b6: $56
	ld a, e                                          ; $42b7: $7b
	db $fc                                           ; $42b8: $fc
	sub l                                            ; $42b9: $95
	rst FarCall                                          ; $42ba: $f7
	ld a, e                                          ; $42bb: $7b
	rst $38                                          ; $42bc: $ff
	ld [hl], a                                       ; $42bd: $77
	db $fd                                           ; $42be: $fd
	and c                                            ; $42bf: $a1
	cp $09                                           ; $42c0: $fe $09
	rst $38                                          ; $42c2: $ff
	dec d                                            ; $42c3: $15
	ld [hl], e                                       ; $42c4: $73
	ret nc                                           ; $42c5: $d0

	sbc [hl]                                         ; $42c6: $9e
	and $63                                          ; $42c7: $e6 $63
	sub b                                            ; $42c9: $90
	sub a                                            ; $42ca: $97
	ld a, a                                          ; $42cb: $7f
	add b                                            ; $42cc: $80
	ld a, a                                          ; $42cd: $7f
	add b                                            ; $42ce: $80
	ccf                                              ; $42cf: $3f
	ret nz                                           ; $42d0: $c0

	ld c, $f1                                        ; $42d1: $0e $f1
	ld [hl], l                                       ; $42d3: $75
	ret nz                                           ; $42d4: $c0

	sub h                                            ; $42d5: $94
	and h                                            ; $42d6: $a4
	ld e, a                                          ; $42d7: $5f
	ld h, d                                          ; $42d8: $62
	sbc a                                            ; $42d9: $9f
	dec [hl]                                         ; $42da: $35
	rst SubAFromDE                                          ; $42db: $df
	inc c                                            ; $42dc: $0c
	rst $38                                          ; $42dd: $ff
	add b                                            ; $42de: $80
	rst $38                                          ; $42df: $ff
	adc l                                            ; $42e0: $8d
	ld l, e                                          ; $42e1: $6b
	adc a                                            ; $42e2: $8f
	sub d                                            ; $42e3: $92
	ld b, b                                          ; $42e4: $40
	add b                                            ; $42e5: $80
	nop                                              ; $42e6: $00
	ret nz                                           ; $42e7: $c0

	add c                                            ; $42e8: $81
	ld a, b                                          ; $42e9: $78
	call nz, $2338                                   ; $42ea: $c4 $38 $23
	call c, $0084                                    ; $42ed: $dc $84 $00
	dec hl                                           ; $42f0: $2b
	ld a, e                                          ; $42f1: $7b
	ret c                                            ; $42f2: $d8

	sub b                                            ; $42f3: $90
	rra                                              ; $42f4: $1f
	ldh [rIF], a                                     ; $42f5: $e0 $0f
	ldh a, [rIF]                                     ; $42f7: $f0 $0f
	ldh a, [rBGP]                                    ; $42f9: $f0 $47
	db $fc                                           ; $42fb: $fc
	inc bc                                           ; $42fc: $03
	cp $30                                           ; $42fd: $fe $30
	rst $38                                          ; $42ff: $ff
	ld a, b                                          ; $4300: $78
	rst $38                                          ; $4301: $ff
	ld a, h                                          ; $4302: $7c
	ld a, d                                          ; $4303: $7a
	cp $9a                                           ; $4304: $fe $9a
	ld b, $ff                                        ; $4306: $06 $ff
	sbc l                                            ; $4308: $9d
	rst $38                                          ; $4309: $ff
	cp a                                             ; $430a: $bf
	ld a, e                                          ; $430b: $7b
	cp $8a                                           ; $430c: $fe $8a

jr_012_430e:
	inc [hl]                                         ; $430e: $34
	inc bc                                           ; $430f: $03
	rrca                                             ; $4310: $0f
	jr nc, jr_012_4359                               ; $4311: $30 $46

	add hl, sp                                       ; $4313: $39
	ld a, $c1                                        ; $4314: $3e $c1
	inc a                                            ; $4316: $3c
	jp $f32c                                         ; $4317: $c3 $2c $f3


	ld [hl], b                                       ; $431a: $70
	rst $38                                          ; $431b: $ff
	call z, $02ff                                    ; $431c: $cc $ff $02
	db $fc                                           ; $431f: $fc
	ld [hl+], a                                      ; $4320: $22
	call c, Call_012_7b01                            ; $4321: $dc $01 $7b
	ld [hl], a                                       ; $4324: $77
	sub a                                            ; $4325: $97
	ld sp, $35fe                                     ; $4326: $31 $fe $35
	ld a, [$fce3]                                    ; $4329: $fa $e3 $fc
	ld bc, $39ff                                     ; $432c: $01 $ff $39
	nop                                              ; $432f: $00
	add b                                            ; $4330: $80
	dec bc                                           ; $4331: $0b
	dec e                                            ; $4332: $1d
	dec de                                           ; $4333: $1b
	ld [de], a                                       ; $4334: $12
	ld de, $080e                                     ; $4335: $11 $0e $08
	ld b, $0d                                        ; $4338: $06 $0d
	ld d, $16                                        ; $433a: $16 $16
	db $10                                           ; $433c: $10
	dec d                                            ; $433d: $15
	ld a, [de]                                       ; $433e: $1a
	rra                                              ; $433f: $1f
	ld d, $29                                        ; $4340: $16 $29
	ld a, [hl+]                                      ; $4342: $2a
	daa                                              ; $4343: $27
	ld e, $1e                                        ; $4344: $1e $1e
	ld hl, $260f                                     ; $4346: $21 $0f $26
	jr z, jr_012_4370                                ; $4349: $28 $25

	dec b                                            ; $434b: $05
	inc h                                            ; $434c: $24
	ld e, $00                                        ; $434d: $1e $00
	ld bc, $1c8d                                     ; $434f: $01 $8d $1c
	inc hl                                           ; $4352: $23
	ld [hl+], a                                      ; $4353: $22
	add hl, de                                       ; $4354: $19
	ld [bc], a                                       ; $4355: $02
	inc bc                                           ; $4356: $03
	inc bc                                           ; $4357: $03
	inc b                                            ; $4358: $04

jr_012_4359:
	jr nz, jr_012_4373                               ; $4359: $20 $18

	rla                                              ; $435b: $17
	inc d                                            ; $435c: $14
	inc de                                           ; $435d: $13
	inc c                                            ; $435e: $0c
	ld a, [bc]                                       ; $435f: $0a
	inc de                                           ; $4360: $13
	inc c                                            ; $4361: $0c
	add hl, bc                                       ; $4362: $09
	pop bc                                           ; $4363: $c1
	rlca                                             ; $4364: $07
	jp nc, $1807                                     ; $4365: $d2 $07 $18

	nop                                              ; $4368: $00
	reti                                             ; $4369: $d9


	ld h, [hl]                                       ; $436a: $66
	sbc [hl]                                         ; $436b: $9e
	ld [hl+], a                                      ; $436c: $22
	ld a, e                                          ; $436d: $7b
	db $fd                                           ; $436e: $fd
	sub [hl]                                         ; $436f: $96

jr_012_4370:
	ld [hl+], a                                      ; $4370: $22
	ld h, $66                                        ; $4371: $26 $66

jr_012_4373:
	ld [hl+], a                                      ; $4373: $22
	daa                                              ; $4374: $27
	ld [hl-], a                                      ; $4375: $32
	ld [hl+], a                                      ; $4376: $22
	ld [hl+], a                                      ; $4377: $22
	ld d, l                                          ; $4378: $55
	sbc $33                                          ; $4379: $de $33
	sbc [hl]                                         ; $437b: $9e
	ld d, e                                          ; $437c: $53
	jp z, $be33                                      ; $437d: $ca $33 $be

	inc b                                            ; $4380: $04
	sbc e                                            ; $4381: $9b
	ld hl, sp-$01                                    ; $4382: $f8 $ff
	ld hl, sp-$04                                    ; $4384: $f8 $fc
	push af                                          ; $4386: $f5
	sbc [hl]                                         ; $4387: $9e
	rst $38                                          ; $4388: $ff
	ld e, e                                          ; $4389: $5b
	cp $9c                                           ; $438a: $fe $9c
	xor a                                            ; $438c: $af
	nop                                              ; $438d: $00
	ld d, [hl]                                       ; $438e: $56
	ld e, e                                          ; $438f: $5b
	ldh a, [c]                                       ; $4390: $f2
	sbc h                                            ; $4391: $9c
	push af                                          ; $4392: $f5
	nop                                              ; $4393: $00
	xor b                                            ; $4394: $a8
	ld h, e                                          ; $4395: $63
	ldh [$9a], a                                     ; $4396: $e0 $9a
	db $eb                                           ; $4398: $eb
	nop                                              ; $4399: $00
	call nc, $2000                                   ; $439a: $d4 $00 $20
	cp $9e                                           ; $439d: $fe $9e
	ld bc, $f47b                                     ; $439f: $01 $7b $f4
	sub h                                            ; $43a2: $94
	db $ed                                           ; $43a3: $ed
	nop                                              ; $43a4: $00
	rst SubAFromHL                                          ; $43a5: $d7
	nop                                              ; $43a6: $00
	ld [bc], a                                       ; $43a7: $02
	nop                                              ; $43a8: $00
	dec b                                            ; $43a9: $05
	nop                                              ; $43aa: $00
	dec hl                                           ; $43ab: $2b
	nop                                              ; $43ac: $00
	rst SubAFromDE                                          ; $43ad: $df
	ld d, e                                          ; $43ae: $53
	jp nz, $fe7f                                     ; $43af: $c2 $7f $fe

	sbc h                                            ; $43b2: $9c
	ld a, [$f400]                                    ; $43b3: $fa $00 $f4
	ld e, e                                          ; $43b6: $5b
	ldh a, [c]                                       ; $43b7: $f2
	sbc [hl]                                         ; $43b8: $9e
	sub $5b                                          ; $43b9: $d6 $5b
	ret nz                                           ; $43bb: $c0

	sbc d                                            ; $43bc: $9a
	cp $00                                           ; $43bd: $fe $00
	push de                                          ; $43bf: $d5
	nop                                              ; $43c0: $00
	and b                                            ; $43c1: $a0
	ld e, e                                          ; $43c2: $5b
	sub b                                            ; $43c3: $90
	sbc h                                            ; $43c4: $9c
	cp d                                             ; $43c5: $ba
	nop                                              ; $43c6: $00
	ld d, l                                          ; $43c7: $55
	ld d, e                                          ; $43c8: $53
	add b                                            ; $43c9: $80
	ld a, a                                          ; $43ca: $7f
	add [hl]                                         ; $43cb: $86
	sbc [hl]                                         ; $43cc: $9e
	dec d                                            ; $43cd: $15
	ld a, e                                          ; $43ce: $7b
	xor h                                            ; $43cf: $ac
	ld d, a                                          ; $43d0: $57
	ld [hl], b                                       ; $43d1: $70
	sbc h                                            ; $43d2: $9c
	ld a, a                                          ; $43d3: $7f
	nop                                              ; $43d4: $00
	cp a                                             ; $43d5: $bf
	ld a, e                                          ; $43d6: $7b
	db $fc                                           ; $43d7: $fc
	ld c, a                                          ; $43d8: $4f
	and b                                            ; $43d9: $a0
	ld [hl], a                                       ; $43da: $77
	cp $9d                                           ; $43db: $fe $9d
	rlca                                             ; $43dd: $07
	rst $38                                          ; $43de: $ff
	db $e3                                           ; $43df: $e3
	sbc h                                            ; $43e0: $9c
	ld hl, sp+$78                                    ; $43e1: $f8 $78
	db $e4                                           ; $43e3: $e4
	sbc $7c                                          ; $43e4: $de $7c

jr_012_43e6:
	sbc [hl]                                         ; $43e6: $9e
	ldh [c], a                                       ; $43e7: $e2
	sbc $3e                                          ; $43e8: $de $3e
	add h                                            ; $43ea: $84
	ldh a, [c]                                       ; $43eb: $f2
	ld e, $f1                                        ; $43ec: $1e $f1
	rra                                              ; $43ee: $1f
	rst $38                                          ; $43ef: $ff
	rst $38                                          ; $43f0: $ff
	inc c                                            ; $43f1: $0c
	rst $38                                          ; $43f2: $ff
	xor l                                            ; $43f3: $ad
	rst $38                                          ; $43f4: $ff
	rst SubAFromBC                                          ; $43f5: $e7
	cp $e7                                           ; $43f6: $fe $e7
	db $fc                                           ; $43f8: $fc
	rst AddAOntoHL                                          ; $43f9: $ef
	ld hl, sp+$7f                                    ; $43fa: $f8 $7f
	ldh a, [$7f]                                     ; $43fc: $f0 $7f
	pop hl                                           ; $43fe: $e1
	ld a, a                                          ; $43ff: $7f
	jp $bfff                                         ; $4400: $c3 $ff $bf


	db $fd                                           ; $4403: $fd
	ld hl, $77ff                                     ; $4404: $21 $ff $77
	cp $9e                                           ; $4407: $fe $9e
	ld [hl], e                                       ; $4409: $73
	db $dd                                           ; $440a: $dd
	rst $38                                          ; $440b: $ff
	sbc h                                            ; $440c: $9c
	adc $ff                                          ; $440d: $ce $ff
	cp $7b                                           ; $440f: $fe $7b
	cp $90                                           ; $4411: $fe $90
	db $fc                                           ; $4413: $fc
	rst $38                                          ; $4414: $ff
	ldh a, [c]                                       ; $4415: $f2
	db $fd                                           ; $4416: $fd
	adc [hl]                                         ; $4417: $8e
	pop af                                           ; $4418: $f1
	cp h                                             ; $4419: $bc
	inc bc                                           ; $441a: $03
	ldh [$1f], a                                     ; $441b: $e0 $1f
	sbc [hl]                                         ; $441d: $9e
	rst $38                                          ; $441e: $ff
	adc a                                            ; $441f: $8f
	db $fc                                           ; $4420: $fc
	rlca                                             ; $4421: $07
	sbc $06                                          ; $4422: $de $06
	ld a, a                                          ; $4424: $7f
	db $fc                                           ; $4425: $fc
	db $dd                                           ; $4426: $dd
	inc bc                                           ; $4427: $03
	rst SubAFromDE                                          ; $4428: $df
	add c                                            ; $4429: $81
	rst SubAFromDE                                          ; $442a: $df
	rst $38                                          ; $442b: $ff
	sbc e                                            ; $442c: $9b
	rst GetHLinHL                                          ; $442d: $cf
	jp z, $0a0e                                      ; $442e: $ca $0e $0a

	ld h, a                                          ; $4431: $67
	cp $9d                                           ; $4432: $fe $9d
	rst $38                                          ; $4434: $ff
	ei                                               ; $4435: $fb
	sbc $ff                                          ; $4436: $de $ff
	ld a, a                                          ; $4438: $7f
	pop de                                           ; $4439: $d1
	sub d                                            ; $443a: $92
	ld b, l                                          ; $443b: $45
	rst $38                                          ; $443c: $ff
	ld c, l                                          ; $443d: $4d
	rst JumpTable                                          ; $443e: $c7
	push bc                                          ; $443f: $c5
	rst $38                                          ; $4440: $ff
	db $dd                                           ; $4441: $dd
	rst $38                                          ; $4442: $ff
	rst JumpTable                                          ; $4443: $c7
	rst AddAOntoHL                                          ; $4444: $ef
	xor $e3                                          ; $4445: $ee $e3
	ldh [c], a                                       ; $4447: $e2
	push af                                          ; $4448: $f5
	ld a, [hl]                                       ; $4449: $7e
	ldh [c], a                                       ; $444a: $e2
	sbc l                                            ; $444b: $9d
	ld [bc], a                                       ; $444c: $02

jr_012_444d:
	ld bc, $9bf5                                     ; $444d: $01 $f5 $9b
	db $10                                           ; $4450: $10
	ldh [rP1], a                                     ; $4451: $e0 $00
	ldh a, [$f1]                                     ; $4453: $f0 $f1
	ld a, [hl]                                       ; $4455: $7e
	xor d                                            ; $4456: $aa
	sbc [hl]                                         ; $4457: $9e
	ld l, d                                          ; $4458: $6a
	ld d, e                                          ; $4459: $53
	ret nc                                           ; $445a: $d0

	adc [hl]                                         ; $445b: $8e
	ld a, h                                          ; $445c: $7c
	add b                                            ; $445d: $80
	ld c, [hl]                                       ; $445e: $4e
	jr nc, jr_012_43e6                               ; $445f: $30 $85

	ld a, d                                          ; $4461: $7a
	add h                                            ; $4462: $84
	ld a, e                                          ; $4463: $7b
	add d                                            ; $4464: $82
	db $fd                                           ; $4465: $fd
	add b                                            ; $4466: $80
	rst $38                                          ; $4467: $ff
	pop bc                                           ; $4468: $c1
	rst $38                                          ; $4469: $ff
	rst FarCall                                          ; $446a: $f7
	ld a, a                                          ; $446b: $7f
	xor a                                            ; $446c: $af
	ld e, e                                          ; $446d: $5b
	jr nz, jr_012_444d                               ; $446e: $20 $dd

	rst $38                                          ; $4470: $ff
	add b                                            ; $4471: $80
	ld b, d                                          ; $4472: $42
	db $fc                                           ; $4473: $fc
	ld c, c                                          ; $4474: $49
	cp $7b                                           ; $4475: $fe $7b
	db $fc                                           ; $4477: $fc
	ccf                                              ; $4478: $3f
	db $fc                                           ; $4479: $fc
	add a                                            ; $447a: $87
	cp $0e                                           ; $447b: $fe $0e
	rst $38                                          ; $447d: $ff
	rrca                                             ; $447e: $0f
	rst $38                                          ; $447f: $ff
	rra                                              ; $4480: $1f
	rst $38                                          ; $4481: $ff
	ld c, h                                          ; $4482: $4c
	or e                                             ; $4483: $b3
	sbc b                                            ; $4484: $98
	ld h, a                                          ; $4485: $67
	and [hl]                                         ; $4486: $a6
	ld e, a                                          ; $4487: $5f
	ld l, a                                          ; $4488: $6f
	sbc a                                            ; $4489: $9f
	ccf                                              ; $448a: $3f
	rst SubAFromDE                                          ; $448b: $df
	inc e                                            ; $448c: $1c
	rst $38                                          ; $448d: $ff
	adc b                                            ; $448e: $88
	rst $38                                          ; $448f: $ff
	cp h                                             ; $4490: $bc
	ld a, a                                          ; $4491: $7f
	ld b, h                                          ; $4492: $44
	adc a                                            ; $4493: $8f
	inc bc                                           ; $4494: $03
	db $fc                                           ; $4495: $fc
	inc bc                                           ; $4496: $03
	ld a, b                                          ; $4497: $78
	add a                                            ; $4498: $87
	ld a, b                                          ; $4499: $78
	add a                                            ; $449a: $87
	db $fc                                           ; $449b: $fc
	add a                                            ; $449c: $87
	cp [hl]                                          ; $449d: $be
	rst JumpTable                                          ; $449e: $c7
	ld [hl], e                                       ; $449f: $73
	adc a                                            ; $44a0: $8f
	or a                                             ; $44a1: $b7
	rrca                                             ; $44a2: $0f
	ld l, a                                          ; $44a3: $6f
	ld a, d                                          ; $44a4: $7a
	or [hl]                                          ; $44a5: $b6
	ld a, [hl]                                       ; $44a6: $7e
	ld h, [hl]                                       ; $44a7: $66
	rst FarCall                                          ; $44a8: $f7
	ld a, [hl]                                       ; $44a9: $7e
	ld l, [hl]                                       ; $44aa: $6e
	sbc h                                            ; $44ab: $9c
	add sp, $00                                      ; $44ac: $e8 $00
	add b                                            ; $44ae: $80
	ld d, [hl]                                       ; $44af: $56
	db $10                                           ; $44b0: $10
	sub h                                            ; $44b1: $94
	add a                                            ; $44b2: $87
	rst $38                                          ; $44b3: $ff
	rrca                                             ; $44b4: $0f
	cp $1e                                           ; $44b5: $fe $1e
	db $fc                                           ; $44b7: $fc
	inc a                                            ; $44b8: $3c
	ld hl, sp+$78                                    ; $44b9: $f8 $78
	ldh a, [$f0]                                     ; $44bb: $f0 $f0
	call c, $91ff                                    ; $44bd: $dc $ff $91
	rrca                                             ; $44c0: $0f
	rst SubAFromDE                                          ; $44c1: $df
	inc bc                                           ; $44c2: $03
	dec b                                            ; $44c3: $05
	inc bc                                           ; $44c4: $03
	ld a, d                                          ; $44c5: $7a
	ld bc, $00ff                                     ; $44c6: $01 $ff $00
	jp $0f3c                                         ; $44c9: $c3 $3c $0f


	cp $bf                                           ; $44cc: $fe $bf
	ld a, d                                          ; $44ce: $7a
	db $f4                                           ; $44cf: $f4
	sub l                                            ; $44d0: $95
	pop hl                                           ; $44d1: $e1
	rst $38                                          ; $44d2: $ff
	jp $c7fe                                         ; $44d3: $c3 $fe $c7


	db $fc                                           ; $44d6: $fc
	rst GetHLinHL                                          ; $44d7: $cf
	ld hl, sp-$21                                    ; $44d8: $f8 $df
	ldh a, [rPCM34]                                  ; $44da: $f0 $77
	push af                                          ; $44dc: $f5
	ld [hl], e                                       ; $44dd: $73
	ret nc                                           ; $44de: $d0

	add b                                            ; $44df: $80
	rra                                              ; $44e0: $1f
	db $fc                                           ; $44e1: $fc
	ccf                                              ; $44e2: $3f
	ld hl, sp+$7f                                    ; $44e3: $f8 $7f
	pop af                                           ; $44e5: $f1
	rst $38                                          ; $44e6: $ff
	add sp, -$01                                     ; $44e7: $e8 $ff
	push bc                                          ; $44e9: $c5
	rst $38                                          ; $44ea: $ff
	rst $38                                          ; $44eb: $ff
	adc d                                            ; $44ec: $8a
	rst $38                                          ; $44ed: $ff
	ld a, [bc]                                       ; $44ee: $0a
	rst SubAFromDE                                          ; $44ef: $df
	ld a, [bc]                                       ; $44f0: $0a
	xor a                                            ; $44f1: $af
	ld a, [bc]                                       ; $44f2: $0a
	cp $0a                                           ; $44f3: $fe $0a
	rst $38                                          ; $44f5: $ff
	ld c, d                                          ; $44f6: $4a
	rst $38                                          ; $44f7: $ff
	cp d                                             ; $44f8: $ba
	rst $38                                          ; $44f9: $ff
	ei                                               ; $44fa: $fb
	ld a, a                                          ; $44fb: $7f
	db $e3                                           ; $44fc: $e3
	ld a, a                                          ; $44fd: $7f
	rst FarCall                                          ; $44fe: $f7
	add [hl]                                         ; $44ff: $86

jr_012_4500:
	ld sp, $3ff1                                     ; $4500: $31 $f1 $3f
	pop af                                           ; $4503: $f1
	ccf                                              ; $4504: $3f
	ei                                               ; $4505: $fb
	jr jr_012_4500                                   ; $4506: $18 $f8

	rra                                              ; $4508: $1f
	ld hl, sp+$6c                                    ; $4509: $f8 $6c
	db $fc                                           ; $450b: $fc
	rst $38                                          ; $450c: $ff
	ld a, a                                          ; $450d: $7f
	rst $38                                          ; $450e: $ff
	cp $2f                                           ; $450f: $fe $2f
	db $fd                                           ; $4511: $fd
	ret nc                                           ; $4512: $d0

	cp a                                             ; $4513: $bf
	ldh a, [rIE]                                     ; $4514: $f0 $ff
	or b                                             ; $4516: $b0
	rst SubAFromDE                                          ; $4517: $df
	ld hl, sp+$7a                                    ; $4518: $f8 $7a
	and b                                            ; $451a: $a0
	sub a                                            ; $451b: $97
	rst JumpTable                                          ; $451c: $c7
	rst $38                                          ; $451d: $ff
	inc bc                                           ; $451e: $03

jr_012_451f:
	add e                                            ; $451f: $83
	ccf                                              ; $4520: $3f
	inc a                                            ; $4521: $3c
	ld a, a                                          ; $4522: $7f
	ld b, b                                          ; $4523: $40
	ld [hl], e                                       ; $4524: $73
	cp $9b                                           ; $4525: $fe $9b
	ld a, a                                          ; $4527: $7f
	ccf                                              ; $4528: $3f
	ccf                                              ; $4529: $3f
	ld a, a                                          ; $452a: $7f
	ld a, e                                          ; $452b: $7b
	rst SubAFromDE                                          ; $452c: $df
	db $dd                                           ; $452d: $dd
	rst $38                                          ; $452e: $ff
	add b                                            ; $452f: $80
	rla                                              ; $4530: $17
	rst AddAOntoHL                                          ; $4531: $ef
	ei                                               ; $4532: $fb
	rlca                                             ; $4533: $07
	add d                                            ; $4534: $82
	ld a, a                                          ; $4535: $7f
	rst FarCall                                          ; $4536: $f7
	rst $38                                          ; $4537: $ff
	inc [hl]                                         ; $4538: $34
	inc bc                                           ; $4539: $03
	rrca                                             ; $453a: $0f
	jr nc, @+$48                                     ; $453b: $30 $46

	add hl, sp                                       ; $453d: $39
	ld a, $c1                                        ; $453e: $3e $c1
	inc a                                            ; $4540: $3c
	jp $f32c                                         ; $4541: $c3 $2c $f3


	ld [hl], b                                       ; $4544: $70
	rst $38                                          ; $4545: $ff
	call z, $02ff                                    ; $4546: $cc $ff $02
	db $fc                                           ; $4549: $fc
	ld [hl+], a                                      ; $454a: $22
	call c, $fe01                                    ; $454b: $dc $01 $fe
	nop                                              ; $454e: $00
	sub [hl]                                         ; $454f: $96
	rst $38                                          ; $4550: $ff
	ld sp, $35fe                                     ; $4551: $31 $fe $35
	ld a, [$fce3]                                    ; $4554: $fa $e3 $fc
	ld bc, $7bff                                     ; $4557: $01 $ff $7b
	ld b, h                                          ; $455a: $44
	adc a                                            ; $455b: $8f
	add b                                            ; $455c: $80
	jr nz, jr_012_451f                               ; $455d: $20 $c0

	inc de                                           ; $455f: $13
	ldh [$8a], a                                     ; $4560: $e0 $8a
	pop af                                           ; $4562: $f1
	adc $f1                                          ; $4563: $ce $f1
	ld l, h                                          ; $4565: $6c
	di                                               ; $4566: $f3
	ld b, $f9                                        ; $4567: $06 $f9
	rrca                                             ; $4569: $0f
	rrca                                             ; $456a: $0f
	add a                                            ; $456b: $87
	ld l, e                                          ; $456c: $6b
	ld d, b                                          ; $456d: $50
	sbc [hl]                                         ; $456e: $9e
	jp nz, Jump_012_5073                             ; $456f: $c2 $73 $50

	ld a, e                                          ; $4572: $7b
	ret nc                                           ; $4573: $d0

	sub h                                            ; $4574: $94
	db $fc                                           ; $4575: $fc
	ld hl, $00fe                                     ; $4576: $21 $fe $00
	cp $31                                           ; $4579: $fe $31
	db $fc                                           ; $457b: $fc
	jr nc, @+$01                                     ; $457c: $30 $ff

	ldh [rIE], a                                     ; $457e: $e0 $ff
	ld a, e                                          ; $4580: $7b
	jp hl                                            ; $4581: $e9


	cp $7e                                           ; $4582: $fe $7e
	xor d                                            ; $4584: $aa
	sub [hl]                                         ; $4585: $96
	inc c                                            ; $4586: $0c
	inc bc                                           ; $4587: $03
	sub h                                            ; $4588: $94
	rrca                                             ; $4589: $0f
	dec b                                            ; $458a: $05
	sbc a                                            ; $458b: $9f
	ld c, a                                          ; $458c: $4f
	sbc a                                            ; $458d: $9f
	rra                                              ; $458e: $1f
	ld a, e                                          ; $458f: $7b
	ldh a, [$7f]                                     ; $4590: $f0 $7f
	cp [hl]                                          ; $4592: $be
	sub e                                            ; $4593: $93
	ld b, b                                          ; $4594: $40
	add b                                            ; $4595: $80
	rra                                              ; $4596: $1f
	rst SubAFromDE                                          ; $4597: $df
	jr nc, @-$1e                                     ; $4598: $30 $e0

	xor a                                            ; $459a: $af
	rst AddAOntoHL                                          ; $459b: $ef
	db $eb                                           ; $459c: $eb
	xor l                                            ; $459d: $ad
	ld l, a                                          ; $459e: $6f
	jp hl                                            ; $459f: $e9


	ei                                               ; $45a0: $fb
	rst SubAFromDE                                          ; $45a1: $df
	cp h                                             ; $45a2: $bc
	sub a                                            ; $45a3: $97
	add $42                                          ; $45a4: $c6 $42
	ld a, d                                          ; $45a6: $7a
	ld [hl], d                                       ; $45a7: $72
	ld c, d                                          ; $45a8: $4a
	ld c, d                                          ; $45a9: $4a
	ld c, [hl]                                       ; $45aa: $4e
	ld c, d                                          ; $45ab: $4a

jr_012_45ac:
	push af                                          ; $45ac: $f5
	sbc h                                            ; $45ad: $9c
	jr jr_012_45b0                                   ; $45ae: $18 $00

jr_012_45b0:
	jr c, jr_012_45ac                                ; $45b0: $38 $fa

	sub l                                            ; $45b2: $95
	ld b, $00                                        ; $45b3: $06 $00
	rrca                                             ; $45b5: $0f
	nop                                              ; $45b6: $00
	rra                                              ; $45b7: $1f
	nop                                              ; $45b8: $00
	ld a, $01                                        ; $45b9: $3e $01
	inc a                                            ; $45bb: $3c
	inc bc                                           ; $45bc: $03
	ei                                               ; $45bd: $fb
	sub a                                            ; $45be: $97
	ld [de], a                                       ; $45bf: $12
	dec c                                            ; $45c0: $0d
	nop                                              ; $45c1: $00
	ccf                                              ; $45c2: $3f
	pop bc                                           ; $45c3: $c1
	ld a, $03                                        ; $45c4: $3e $03
	db $fc                                           ; $45c6: $fc
	ld a, c                                          ; $45c7: $79
	ld a, a                                          ; $45c8: $7f
	db $fc                                           ; $45c9: $fc
	ld a, a                                          ; $45ca: $7f
	xor [hl]                                         ; $45cb: $ae
	sub a                                            ; $45cc: $97
	nop                                              ; $45cd: $00
	ret nz                                           ; $45ce: $c0

	add c                                            ; $45cf: $81
	ld a, b                                          ; $45d0: $78
	call nz, $2338                                   ; $45d1: $c4 $38 $23
	call c, $1f7b                                    ; $45d4: $dc $7b $1f
	sbc h                                            ; $45d7: $9c
	adc h                                            ; $45d8: $8c
	ld a, $3c                                        ; $45d9: $3e $3c
	ld e, d                                          ; $45db: $5a
	and b                                            ; $45dc: $a0
	sbc e                                            ; $45dd: $9b
	sbc c                                            ; $45de: $99
	rst $38                                          ; $45df: $ff
	db $ec                                           ; $45e0: $ec
	ld c, $f6                                        ; $45e1: $0e $f6
	sbc [hl]                                         ; $45e3: $9e
	inc bc                                           ; $45e4: $03
	ld a, d                                          ; $45e5: $7a
	ld c, d                                          ; $45e6: $4a
	ld a, a                                          ; $45e7: $7f
	cp $9a                                           ; $45e8: $fe $9a
	ld d, $ff                                        ; $45ea: $16 $ff
	or $ff                                           ; $45ec: $f6 $ff
	rst FarCall                                          ; $45ee: $f7
	ld [hl], c                                       ; $45ef: $71
	jp $e38b                                         ; $45f0: $c3 $8b $e3


	rst $38                                          ; $45f3: $ff
	rra                                              ; $45f4: $1f
	db $e3                                           ; $45f5: $e3
	cp [hl]                                          ; $45f6: $be
	ld c, a                                          ; $45f7: $4f
	ccf                                              ; $45f8: $3f
	rst SubAFromDE                                          ; $45f9: $df
	rrca                                             ; $45fa: $0f
	rst $38                                          ; $45fb: $ff
	ccf                                              ; $45fc: $3f
	rst $38                                          ; $45fd: $ff
	sbc a                                            ; $45fe: $9f
	ld a, a                                          ; $45ff: $7f
	cp a                                             ; $4600: $bf
	ld a, a                                          ; $4601: $7f
	rst $38                                          ; $4602: $ff
	add sp, $5d                                      ; $4603: $e8 $5d
	db $10                                           ; $4605: $10
	ld d, b                                          ; $4606: $50
	ld [hl], b                                       ; $4607: $70
	rst SubAFromDE                                          ; $4608: $df
	rst $38                                          ; $4609: $ff
	sbc h                                            ; $460a: $9c
	sub e                                            ; $460b: $93
	inc a                                            ; $460c: $3c
	inc c                                            ; $460d: $0c
	ld c, l                                          ; $460e: $4d
	db $fc                                           ; $460f: $fc
	sub [hl]                                         ; $4610: $96
	db $f4                                           ; $4611: $f4
	rst $38                                          ; $4612: $ff
	scf                                              ; $4613: $37
	ld hl, sp+$17                                    ; $4614: $f8 $17
	ld hl, sp+$33                                    ; $4616: $f8 $33
	db $fc                                           ; $4618: $fc
	ld hl, sp+$7b                                    ; $4619: $f8 $7b
	ret nz                                           ; $461b: $c0

	sbc [hl]                                         ; $461c: $9e
	di                                               ; $461d: $f3
	sbc $ff                                          ; $461e: $de $ff
	ld a, a                                          ; $4620: $7f
	ld hl, sp-$66                                    ; $4621: $f8 $9a
	ldh a, [$cf]                                     ; $4623: $f0 $cf
	add b                                            ; $4625: $80
	rst $38                                          ; $4626: $ff
	add b                                            ; $4627: $80
	ld a, d                                          ; $4628: $7a
	ld [hl], d                                       ; $4629: $72
	sbc [hl]                                         ; $462a: $9e
	db $ed                                           ; $462b: $ed
	ld a, b                                          ; $462c: $78
	db $ed                                           ; $462d: $ed
	add h                                            ; $462e: $84
	jr nz, @+$01                                     ; $462f: $20 $ff

	ld h, b                                          ; $4631: $60
	rst $38                                          ; $4632: $ff
	ld e, [hl]                                       ; $4633: $5e
	pop hl                                           ; $4634: $e1
	rst $38                                          ; $4635: $ff
	daa                                              ; $4636: $27
	rst $38                                          ; $4637: $ff
	ccf                                              ; $4638: $3f
	sbc c                                            ; $4639: $99
	ld h, a                                          ; $463a: $67
	push hl                                          ; $463b: $e5
	ei                                               ; $463c: $fb
	jr nc, @+$01                                     ; $463d: $30 $ff

	ld a, b                                          ; $463f: $78
	rst $38                                          ; $4640: $ff
	ld a, [hl]                                       ; $4641: $7e
	rst $38                                          ; $4642: $ff
	ld e, $ff                                        ; $4643: $1e $ff
	ld b, $ff                                        ; $4645: $06 $ff
	sbc l                                            ; $4647: $9d
	rst $38                                          ; $4648: $ff
	cp a                                             ; $4649: $bf
	ld a, e                                          ; $464a: $7b
	cp $84                                           ; $464b: $fe $84
	ld [hl], $f9                                     ; $464d: $36 $f9
	ld h, [hl]                                       ; $464f: $66
	ld sp, hl                                        ; $4650: $f9
	inc l                                            ; $4651: $2c
	di                                               ; $4652: $f3
	inc c                                            ; $4653: $0c
	di                                               ; $4654: $f3
	ld h, c                                          ; $4655: $61
	rst $38                                          ; $4656: $ff
	ldh [c], a                                       ; $4657: $e2
	rst $38                                          ; $4658: $ff
	ldh a, [rIE]                                     ; $4659: $f0 $ff
	db $eb                                           ; $465b: $eb
	or $e5                                           ; $465c: $f6 $e5
	rst $38                                          ; $465e: $ff
	dec d                                            ; $465f: $15
	rst $38                                          ; $4660: $ff
	dec b                                            ; $4661: $05
	rst $38                                          ; $4662: $ff
	add hl, bc                                       ; $4663: $09
	rst $38                                          ; $4664: $ff
	ld [hl], c                                       ; $4665: $71
	rst $38                                          ; $4666: $ff
	add c                                            ; $4667: $81
	ld a, e                                          ; $4668: $7b
	ld a, [$b27c]                                    ; $4669: $fa $7c $b2
	add b                                            ; $466c: $80
	ld c, e                                          ; $466d: $4b
	ld a, a                                          ; $466e: $7f

Jump_012_466f:
	add [hl]                                         ; $466f: $86
	cp $84                                           ; $4670: $fe $84
	db $fc                                           ; $4672: $fc
	sbc a                                            ; $4673: $9f
	rst $38                                          ; $4674: $ff
	and [hl]                                         ; $4675: $a6
	rst SubAFromBC                                          ; $4676: $e7
	call nz, Call_012_4cc7                           ; $4677: $c4 $c7 $4c
	ld c, a                                          ; $467a: $4f
	ld e, b                                          ; $467b: $58
	ld e, a                                          ; $467c: $5f
	ldh a, [$f0]                                     ; $467d: $f0 $f0
	ld [$34f8], sp                                   ; $467f: $08 $f8 $34
	db $fc                                           ; $4682: $fc
	ld b, h                                          ; $4683: $44
	db $fc                                           ; $4684: $fc
	ld b, d                                          ; $4685: $42
	xor $42                                          ; $4686: $ee $42
	or $82                                           ; $4688: $f6 $82
	xor $82                                          ; $468a: $ee $82
	sub l                                            ; $468c: $95
	cp $e6                                           ; $468d: $fe $e6
	rst SubAFromBC                                          ; $468f: $e7
	inc b                                            ; $4690: $04
	rlca                                             ; $4691: $07
	inc c                                            ; $4692: $0c
	rrca                                             ; $4693: $0f
	ret z                                            ; $4694: $c8

	rst GetHLinHL                                          ; $4695: $cf
	jr c, jr_012_4713                                ; $4696: $38 $7b

	sub [hl]                                         ; $4698: $96
	add a                                            ; $4699: $87
	add b                                            ; $469a: $80
	rst FarCall                                          ; $469b: $f7
	ret nz                                           ; $469c: $c0

	rst $38                                          ; $469d: $ff
	rrca                                             ; $469e: $0f
	rrca                                             ; $469f: $0f
	inc bc                                           ; $46a0: $03
	inc bc                                           ; $46a1: $03
	dec b                                            ; $46a2: $05
	rlca                                             ; $46a3: $07
	ld [$120f], sp                                   ; $46a4: $08 $0f $12

jr_012_46a7:
	rra                                              ; $46a7: $1f
	ld hl, $203f                                     ; $46a8: $21 $3f $20
	ccf                                              ; $46ab: $3f
	ld b, c                                          ; $46ac: $41
	ld a, a                                          ; $46ad: $7f
	ldh a, [$f0]                                     ; $46ae: $f0 $f0
	ld hl, sp-$08                                    ; $46b0: $f8 $f8
	db $dd                                           ; $46b2: $dd
	db $fc                                           ; $46b3: $fc
	rst SubAFromDE                                          ; $46b4: $df
	xor $df                                          ; $46b5: $ee $df
	jp z, $c2df                                      ; $46b7: $ca $df $c2

	rst SubAFromDE                                          ; $46ba: $df
	sub e                                            ; $46bb: $93
	ld [hl], h                                       ; $46bc: $74
	ld e, h                                          ; $46bd: $5c
	sbc d                                            ; $46be: $9a
	rst FarCall                                          ; $46bf: $f7
	nop                                              ; $46c0: $00
	xor d                                            ; $46c1: $aa
	nop                                              ; $46c2: $00
	ld b, b                                          ; $46c3: $40
	ld h, a                                          ; $46c4: $67
	ld b, b                                          ; $46c5: $40
	ld l, e                                          ; $46c6: $6b
	cp $98                                           ; $46c7: $fe $98
	ld e, a                                          ; $46c9: $5f
	nop                                              ; $46ca: $00

jr_012_46cb:
	cpl                                              ; $46cb: $2f
	nop                                              ; $46cc: $00
	dec b                                            ; $46cd: $05
	nop                                              ; $46ce: $00
	ld [bc], a                                       ; $46cf: $02
	ld [hl], l                                       ; $46d0: $75
	ld a, [bc]                                       ; $46d1: $0a
	adc b                                            ; $46d2: $88
	ld bc, $0303                                     ; $46d3: $01 $03 $03
	rlca                                             ; $46d6: $07
	rlca                                             ; $46d7: $07
	rrca                                             ; $46d8: $0f
	rrca                                             ; $46d9: $0f
	ld e, $1e                                        ; $46da: $1e $1e
	add hl, de                                       ; $46dc: $19
	add hl, de                                       ; $46dd: $19
	rra                                              ; $46de: $1f
	rra                                              ; $46df: $1f
	ld b, $fe                                        ; $46e0: $06 $fe
	ld [bc], a                                       ; $46e2: $02
	cp $86                                           ; $46e3: $fe $86
	cp $fc                                           ; $46e5: $fe $fc
	db $fc                                           ; $46e7: $fc
	add $e6                                          ; $46e8: $c6 $e6
	db $dd                                           ; $46ea: $dd
	cp $ff                                           ; $46eb: $fe $ff
	sub d                                            ; $46ed: $92
	inc sp                                           ; $46ee: $33
	di                                               ; $46ef: $f3
	rra                                              ; $46f0: $1f
	rst $38                                          ; $46f1: $ff
	inc e                                            ; $46f2: $1c
	db $fc                                           ; $46f3: $fc
	cp b                                             ; $46f4: $b8
	ld hl, sp+$18                                    ; $46f5: $f8 $18
	jr @+$01                                         ; $46f7: $18 $ff

	rst $38                                          ; $46f9: $ff
	ldh a, [$78]                                     ; $46fa: $f0 $78
	jp nz, $2c9b                                     ; $46fc: $c2 $9b $2c

	cpl                                              ; $46ff: $2f
	ld b, $07                                        ; $4700: $06 $07
	db $dd                                           ; $4702: $dd
	inc bc                                           ; $4703: $03
	rst SubAFromDE                                          ; $4704: $df
	rrca                                             ; $4705: $0f
	db $dd                                           ; $4706: $dd
	rra                                              ; $4707: $1f
	rst $38                                          ; $4708: $ff
	sub [hl]                                         ; $4709: $96
	ld l, d                                          ; $470a: $6a
	rst $38                                          ; $470b: $ff
	cp [hl]                                          ; $470c: $be

Call_012_470d:
	rst $38                                          ; $470d: $ff
	ldh a, [c]                                       ; $470e: $f2
	di                                               ; $470f: $f3
	db $e3                                           ; $4710: $e3
	db $e3                                           ; $4711: $e3
	add b                                            ; $4712: $80

jr_012_4713:
	ld l, c                                          ; $4713: $69
	dec hl                                           ; $4714: $2b
	ld a, [hl]                                       ; $4715: $7e
	db $fc                                           ; $4716: $fc
	ld c, a                                          ; $4717: $4f
	jr nc, jr_012_46a7                               ; $4718: $30 $8d

	ld h, c                                          ; $471a: $61
	ld a, a                                          ; $471b: $7f
	ld [hl], $3f                                     ; $471c: $36 $3f
	inc e                                            ; $471e: $1c
	rra                                              ; $471f: $1f
	ld hl, sp-$01                                    ; $4720: $f8 $ff
	ld h, h                                          ; $4722: $64
	rst SubAFromBC                                          ; $4723: $e7
	ld b, e                                          ; $4724: $43
	jp $e161                                         ; $4725: $c3 $61 $e1


	ld h, a                                          ; $4728: $67
	rst SubAFromBC                                          ; $4729: $e7
	ld c, e                                          ; $472a: $4b
	rst $38                                          ; $472b: $ff
	ld c, a                                          ; $472c: $4f
	jr nz, jr_012_46cb                               ; $472d: $20 $9c

	rst SubAFromHL                                          ; $472f: $d7
	rst $38                                          ; $4730: $ff
	sub [hl]                                         ; $4731: $96
	ld a, e                                          ; $4732: $7b
	cp $92                                           ; $4733: $fe $92
	or l                                             ; $4735: $b5
	rst $38                                          ; $4736: $ff
	rst SubAFromHL                                          ; $4737: $d7
	rst $38                                          ; $4738: $ff
	db $f4                                           ; $4739: $f4
	db $fc                                           ; $473a: $fc
	db $f4                                           ; $473b: $f4
	db $fc                                           ; $473c: $fc
	sbc b                                            ; $473d: $98
	sbc b                                            ; $473e: $98
	halt                                             ; $473f: $76
	rst $38                                          ; $4740: $ff
	adc [hl]                                         ; $4741: $8e
	ld a, d                                          ; $4742: $7a
	jp nc, $7a96                                     ; $4743: $d2 $96 $7a

	rst $38                                          ; $4746: $ff
	ldh a, [c]                                       ; $4747: $f2
	rst $38                                          ; $4748: $ff
	jp nz, $82ff                                     ; $4749: $c2 $ff $82

	rst $38                                          ; $474c: $ff
	ld [de], a                                       ; $474d: $12
	ld a, c                                          ; $474e: $79
	ld h, d                                          ; $474f: $62
	ld a, a                                          ; $4750: $7f
	cp $9e                                           ; $4751: $fe $9e
	and a                                            ; $4753: $a7
	ld a, d                                          ; $4754: $7a
	ld c, [hl]                                       ; $4755: $4e
	ld h, l                                          ; $4756: $65
	ld h, b                                          ; $4757: $60
	sbc c                                            ; $4758: $99
	ld [hl], e                                       ; $4759: $73
	adc h                                            ; $475a: $8c
	and b                                            ; $475b: $a0
	rla                                              ; $475c: $17
	db $e4                                           ; $475d: $e4
	dec bc                                           ; $475e: $0b
	ld e, l                                          ; $475f: $5d
	sub b                                            ; $4760: $90
	di                                               ; $4761: $f3
	ld a, l                                          ; $4762: $7d
	sub [hl]                                         ; $4763: $96
	adc a                                            ; $4764: $8f
	dec bc                                           ; $4765: $0b
	db $fc                                           ; $4766: $fc
	scf                                              ; $4767: $37
	db $fc                                           ; $4768: $fc
	ld b, l                                          ; $4769: $45
	cp $43                                           ; $476a: $fe $43
	xor $43                                          ; $476c: $ee $43
	or $83                                           ; $476e: $f6 $83
	xor $83                                          ; $4770: $ee $83
	cp $87                                           ; $4772: $fe $87
	rst $38                                          ; $4774: $ff
	ld d, [hl]                                       ; $4775: $56
	jp nc, $5c76                                     ; $4776: $d2 $76 $5c

	rst FarCall                                          ; $4779: $f7
	sbc d                                            ; $477a: $9a
	add hl, bc                                       ; $477b: $09
	nop                                              ; $477c: $00
	ld d, a                                          ; $477d: $57
	nop                                              ; $477e: $00
	ccf                                              ; $477f: $3f
	ld hl, sp-$66                                    ; $4780: $f8 $9a
	and b                                            ; $4782: $a0
	nop                                              ; $4783: $00
	jp nc, $fd00                                     ; $4784: $d2 $00 $fd

	ld h, l                                          ; $4787: $65
	or c                                             ; $4788: $b1
	ld a, [$019c]                                    ; $4789: $fa $9c $01
	nop                                              ; $478c: $00
	add a                                            ; $478d: $87
	ld hl, sp-$62                                    ; $478e: $f8 $9e
	jr z, jr_012_480d                                ; $4790: $28 $7b

	jp nc, $917d                                     ; $4792: $d2 $7d $91

	sub b                                            ; $4795: $90
	ldh [rP1], a                                     ; $4796: $e0 $00
	rst $38                                          ; $4798: $ff
	rst GetHLinHL                                          ; $4799: $cf
	db $fd                                           ; $479a: $fd
	add a                                            ; $479b: $87
	ld hl, sp+$4f                                    ; $479c: $f8 $4f
	ldh a, [c]                                       ; $479e: $f2
	sbc a                                            ; $479f: $9f
	pop hl                                           ; $47a0: $e1
	ld a, a                                          ; $47a1: $7f
	ldh [$bf], a                                     ; $47a2: $e0 $bf
	pop bc                                           ; $47a4: $c1
	ld a, e                                          ; $47a5: $7b
	inc e                                            ; $47a6: $1c
	sbc c                                            ; $47a7: $99
	rst $38                                          ; $47a8: $ff
	db $db                                           ; $47a9: $db
	rst $38                                          ; $47aa: $ff
	rst AddAOntoHL                                          ; $47ab: $ef
	rst $38                                          ; $47ac: $ff
	rst SubAFromDE                                          ; $47ad: $df
	ld a, c                                          ; $47ae: $79
	rst FarCall                                          ; $47af: $f7
	sbc h                                            ; $47b0: $9c
	push af                                          ; $47b1: $f5
	rst $38                                          ; $47b2: $ff
	ld d, [hl]                                       ; $47b3: $56
	ld a, e                                          ; $47b4: $7b
	db $fc                                           ; $47b5: $fc
	sub l                                            ; $47b6: $95
	rst FarCall                                          ; $47b7: $f7
	ld a, e                                          ; $47b8: $7b
	rst $38                                          ; $47b9: $ff
	ld [hl], a                                       ; $47ba: $77
	db $fd                                           ; $47bb: $fd
	and c                                            ; $47bc: $a1
	cp $09                                           ; $47bd: $fe $09
	rst $38                                          ; $47bf: $ff
	dec d                                            ; $47c0: $15
	ld [hl], e                                       ; $47c1: $73
	ld d, b                                          ; $47c2: $50
	adc l                                            ; $47c3: $8d
	and $ff                                          ; $47c4: $e6 $ff
	ld c, h                                          ; $47c6: $4c
	or e                                             ; $47c7: $b3
	sbc b                                            ; $47c8: $98
	ld h, a                                          ; $47c9: $67
	and [hl]                                         ; $47ca: $a6
	ld e, a                                          ; $47cb: $5f
	ld l, a                                          ; $47cc: $6f
	sbc a                                            ; $47cd: $9f
	cp a                                             ; $47ce: $bf
	ld e, a                                          ; $47cf: $5f
	call c, $883f                                    ; $47d0: $dc $3f $88
	rst $38                                          ; $47d3: $ff
	cp h                                             ; $47d4: $bc
	rst $38                                          ; $47d5: $ff
	ld h, [hl]                                       ; $47d6: $66
	add b                                            ; $47d7: $80
	sub a                                            ; $47d8: $97
	cp $01                                           ; $47d9: $fe $01
	db $fc                                           ; $47db: $fc
	inc bc                                           ; $47dc: $03
	ld hl, sp+$07                                    ; $47dd: $f8 $07
	ld hl, sp+$07                                    ; $47df: $f8 $07
	ld a, c                                          ; $47e1: $79
	jp Jump_012_5c7c                                 ; $47e2: $c3 $7c $5c


	sbc c                                            ; $47e5: $99
	db $fc                                           ; $47e6: $fc
	rst AddAOntoHL                                          ; $47e7: $ef
	xor $cb                                          ; $47e8: $ee $cb
	jp z, Jump_012_7ac3                              ; $47ea: $ca $c3 $7a

	ld d, d                                          ; $47ed: $52
	ld a, [hl]                                       ; $47ee: $7e
	ld [hl+], a                                      ; $47ef: $22
	adc a                                            ; $47f0: $8f
	inc hl                                           ; $47f1: $23
	db $dd                                           ; $47f2: $dd
	ld b, a                                          ; $47f3: $47
	cp e                                             ; $47f4: $bb
	cpl                                              ; $47f5: $2f
	rst SubAFromHL                                          ; $47f6: $d7
	rrca                                             ; $47f7: $0f
	rst $38                                          ; $47f8: $ff
	ld e, $fe                                        ; $47f9: $1e $fe
	add hl, sp                                       ; $47fb: $39
	reti                                             ; $47fc: $d9


	ccf                                              ; $47fd: $3f
	rst SubAFromDE                                          ; $47fe: $df
	ld e, a                                          ; $47ff: $5f
	rst AddAOntoHL                                          ; $4800: $ef
	ld [hl], a                                       ; $4801: $77
	ret nz                                           ; $4802: $c0

	sbc b                                            ; $4803: $98
	and h                                            ; $4804: $a4
	ld e, a                                          ; $4805: $5f
	ld h, d                                          ; $4806: $62
	sbc a                                            ; $4807: $9f
	dec [hl]                                         ; $4808: $35
	rst SubAFromDE                                          ; $4809: $df
	inc c                                            ; $480a: $0c
	ld a, e                                          ; $480b: $7b
	ld b, d                                          ; $480c: $42

jr_012_480d:
	sbc l                                            ; $480d: $9d
	adc l                                            ; $480e: $8d
	rst $38                                          ; $480f: $ff
	ld [hl], l                                       ; $4810: $75
	or b                                             ; $4811: $b0
	sbc [hl]                                         ; $4812: $9e
	ld a, h                                          ; $4813: $7c
	ld e, c                                          ; $4814: $59
	or b                                             ; $4815: $b0
	ld e, h                                          ; $4816: $5c
	ldh a, [$99]                                     ; $4817: $f0 $99
	ld b, e                                          ; $4819: $43
	inc a                                            ; $481a: $3c
	ld b, $79                                        ; $481b: $06 $79
	nop                                              ; $481d: $00
	ld a, a                                          ; $481e: $7f
	ld [hl], e                                       ; $481f: $73
	and h                                            ; $4820: $a4
	ld a, e                                          ; $4821: $7b
	cp $7f                                           ; $4822: $fe $7f
	ld d, h                                          ; $4824: $54
	ld a, a                                          ; $4825: $7f
	cp $78                                           ; $4826: $fe $78
	ld c, c                                          ; $4828: $49
	ld b, a                                          ; $4829: $47
	cp $8e                                           ; $482a: $fe $8e
	ldh a, [hDisp0_SCX]                                     ; $482c: $f0 $84
	nop                                              ; $482e: $00

jr_012_482f:
	dec hl                                           ; $482f: $2b
	add b                                            ; $4830: $80
	ccf                                              ; $4831: $3f
	ret nz                                           ; $4832: $c0

	rra                                              ; $4833: $1f
	ldh [rIF], a                                     ; $4834: $e0 $0f
	ldh a, [rIF]                                     ; $4836: $f0 $0f
	ldh a, [rBGP]                                    ; $4838: $f0 $47
	db $fc                                           ; $483a: $fc
	inc bc                                           ; $483b: $03
	cp $a3                                           ; $483c: $fe $a3
	nop                                              ; $483e: $00
	sub e                                            ; $483f: $93
	ld bc, $0605                                     ; $4840: $01 $05 $06
	rlca                                             ; $4843: $07
	ld [$4609], sp                                   ; $4844: $08 $09 $46
	ld b, a                                          ; $4847: $47
	ld bc, $0302                                     ; $4848: $01 $02 $03
	inc b                                            ; $484b: $04
	ld [hl], e                                       ; $484c: $73
	push af                                          ; $484d: $f5
	adc a                                            ; $484e: $8f
	ld a, [bc]                                       ; $484f: $0a
	dec bc                                           ; $4850: $0b
	ld bc, $1754                                     ; $4851: $01 $54 $17
	rla                                              ; $4854: $17
	ld d, a                                          ; $4855: $57
	ld e, b                                          ; $4856: $58
	ld e, c                                          ; $4857: $59
	ld e, d                                          ; $4858: $5a
	rla                                              ; $4859: $17
	dec d                                            ; $485a: $15
	ld d, $17                                        ; $485b: $16 $17
	jr @+$18                                         ; $485d: $18 $16

	db $dd                                           ; $485f: $dd
	rla                                              ; $4860: $17
	add b                                            ; $4861: $80
	ld e, $1f                                        ; $4862: $1e $1f
	rla                                              ; $4864: $17
	add hl, hl                                       ; $4865: $29
	ld a, [hl+]                                      ; $4866: $2a
	ld h, a                                          ; $4867: $67
	ld h, [hl]                                       ; $4868: $66
	dec bc                                           ; $4869: $0b
	ld h, l                                          ; $486a: $65
	ld h, h                                          ; $486b: $64
	inc [hl]                                         ; $486c: $34
	add hl, hl                                       ; $486d: $29
	ld a, [hl+]                                      ; $486e: $2a
	dec hl                                           ; $486f: $2b
	add hl, hl                                       ; $4870: $29
	dec l                                            ; $4871: $2d
	ld l, $2f                                        ; $4872: $2e $2f
	jr nc, jr_012_48a7                               ; $4874: $30 $31

	ld [hl-], a                                      ; $4876: $32
	inc sp                                           ; $4877: $33
	inc [hl]                                         ; $4878: $34
	ld h, e                                          ; $4879: $63
	ld h, d                                          ; $487a: $62
	ld h, c                                          ; $487b: $61
	ld h, b                                          ; $487c: $60
	ld h, [hl]                                       ; $487d: $66
	ld e, a                                          ; $487e: $5f
	ld e, [hl]                                       ; $487f: $5e
	dec de                                           ; $4880: $1b
	add b                                            ; $4881: $80
	dec a                                            ; $4882: $3d
	ld a, $3f                                        ; $4883: $3e $3f
	jr c, jr_012_48be                                ; $4885: $38 $37

	rrca                                             ; $4887: $0f
	db $10                                           ; $4888: $10
	inc d                                            ; $4889: $14
	add hl, de                                       ; $488a: $19
	dec e                                            ; $488b: $1d
	inc e                                            ; $488c: $1c
	dec de                                           ; $488d: $1b
	ld e, l                                          ; $488e: $5d
	ld e, h                                          ; $488f: $5c
	ld e, e                                          ; $4890: $5b
	ld d, [hl]                                       ; $4891: $56
	ld d, l                                          ; $4892: $55
	ld d, e                                          ; $4893: $53
	ld d, d                                          ; $4894: $52
	jr z, jr_012_48a8                                ; $4895: $28 $11

	inc a                                            ; $4897: $3c
	dec sp                                           ; $4898: $3b
	ld hl, $2322                                     ; $4899: $21 $22 $23
	inc h                                            ; $489c: $24
	dec h                                            ; $489d: $25
	ld h, $2c                                        ; $489e: $26 $2c
	jr z, jr_012_482f                                ; $48a0: $28 $8d

	jr z, jr_012_48f5                                ; $48a2: $28 $51

	ld d, b                                          ; $48a4: $50
	ld c, a                                          ; $48a5: $4f
	ld c, [hl]                                       ; $48a6: $4e

jr_012_48a7:
	ld c, l                                          ; $48a7: $4d

jr_012_48a8:
	add hl, sp                                       ; $48a8: $39
	ld a, [hl-]                                      ; $48a9: $3a
	ld [hl], $35                                     ; $48aa: $36 $35
	ld [hl], $35                                     ; $48ac: $36 $35
	daa                                              ; $48ae: $27
	jr nz, jr_012_48cb                               ; $48af: $20 $1a

	inc de                                           ; $48b1: $13
	ld [de], a                                       ; $48b2: $12
	ld c, $7b                                        ; $48b3: $0e $7b
	db $f4                                           ; $48b5: $f4
	sbc b                                            ; $48b6: $98
	ld c, h                                          ; $48b7: $4c
	dec c                                            ; $48b8: $0d
	ld c, e                                          ; $48b9: $4b
	ld c, d                                          ; $48ba: $4a
	ld c, c                                          ; $48bb: $49
	ld c, b                                          ; $48bc: $48
	ld b, l                                          ; $48bd: $45

jr_012_48be:
	jp c, $df0d                                      ; $48be: $da $0d $df

	inc c                                            ; $48c1: $0c
	sbc [hl]                                         ; $48c2: $9e
	nop                                              ; $48c3: $00
	db $dd                                           ; $48c4: $dd
	dec c                                            ; $48c5: $0d
	ld [hl], a                                       ; $48c6: $77
	ldh a, [$9c]                                     ; $48c7: $f0 $9c
	ld b, h                                          ; $48c9: $44
	ld b, e                                          ; $48ca: $43

jr_012_48cb:
	ld b, d                                          ; $48cb: $42
	call nc, Call_012_770d                           ; $48cc: $d4 $0d $77
	ldh a, [$9c]                                     ; $48cf: $f0 $9c
	ld b, c                                          ; $48d1: $41
	ld c, [hl]                                       ; $48d2: $4e
	ld b, b                                          ; $48d3: $40
	call nc, Call_012_770d                           ; $48d4: $d4 $0d $77
	ldh a, [$7b]                                     ; $48d7: $f0 $7b
	pop bc                                           ; $48d9: $c1
	call nc, Call_012_470d                           ; $48da: $d4 $0d $47
	ldh a, [$ca]                                     ; $48dd: $f0 $ca
	dec c                                            ; $48df: $0d
	ld sp, $cd00                                     ; $48e0: $31 $00 $cd
	ld h, [hl]                                       ; $48e3: $66
	sbc [hl]                                         ; $48e4: $9e
	ld [hl+], a                                      ; $48e5: $22
	ld a, e                                          ; $48e6: $7b
	db $fd                                           ; $48e7: $fd
	sbc e                                            ; $48e8: $9b
	ld [hl+], a                                      ; $48e9: $22
	ld h, d                                          ; $48ea: $62
	ld h, $62                                        ; $48eb: $26 $62
	ld a, e                                          ; $48ed: $7b
	ld a, [$249e]                                    ; $48ee: $fa $9e $24
	ld a, e                                          ; $48f1: $7b
	db $fc                                           ; $48f2: $fc
	sub a                                            ; $48f3: $97
	ld [hl+], a                                      ; $48f4: $22

jr_012_48f5:
	dec h                                            ; $48f5: $25
	ld d, l                                          ; $48f6: $55
	ld h, $22                                        ; $48f7: $26 $22
	daa                                              ; $48f9: $27
	inc sp                                           ; $48fa: $33
	ld [hl-], a                                      ; $48fb: $32
	sbc $22                                          ; $48fc: $de $22
	sbc d                                            ; $48fe: $9a
	ld d, l                                          ; $48ff: $55
	ld [hl], l                                       ; $4900: $75
	ld h, d                                          ; $4901: $62
	ld [hl+], a                                      ; $4902: $22
	ld d, l                                          ; $4903: $55
	db $dd                                           ; $4904: $dd
	inc sp                                           ; $4905: $33
	sbc c                                            ; $4906: $99
	dec [hl]                                         ; $4907: $35
	ld d, e                                          ; $4908: $53
	dec [hl]                                         ; $4909: $35
	ld d, e                                          ; $490a: $53
	inc sp                                           ; $490b: $33
	ld d, e                                          ; $490c: $53
	pop bc                                           ; $490d: $c1
	inc sp                                           ; $490e: $33
	add $33                                          ; $490f: $c6 $33
	ret nz                                           ; $4911: $c0

	nop                                              ; $4912: $00
	sbc e                                            ; $4913: $9b
	inc [hl]                                         ; $4914: $34
	db $f4                                           ; $4915: $f4
	ld h, b                                          ; $4916: $60
	ldh [$dd], a                                     ; $4917: $e0 $dd
	ret nz                                           ; $4919: $c0

	rst SubAFromDE                                          ; $491a: $df
	ldh a, [$dd]                                     ; $491b: $f0 $dd
	ld hl, sp-$01                                    ; $491d: $f8 $ff
	add l                                            ; $491f: $85
	call z, $f8cf                                    ; $4920: $cc $cf $f8
	rst $38                                          ; $4923: $ff
	jr c, jr_012_4965                                ; $4924: $38 $3f

	dec e                                            ; $4926: $1d
	rra                                              ; $4927: $1f
	jr jr_012_4942                                   ; $4928: $18 $18

	rst $38                                          ; $492a: $ff
	rst $38                                          ; $492b: $ff
	rrca                                             ; $492c: $0f
	rrca                                             ; $492d: $0f
	nop                                              ; $492e: $00
	nop                                              ; $492f: $00
	ld h, b                                          ; $4930: $60
	ld a, a                                          ; $4931: $7f
	ld b, b                                          ; $4932: $40
	ld a, a                                          ; $4933: $7f
	ld h, c                                          ; $4934: $61
	ld a, a                                          ; $4935: $7f
	ccf                                              ; $4936: $3f
	ccf                                              ; $4937: $3f
	ld h, e                                          ; $4938: $63
	ld h, a                                          ; $4939: $67
	db $dd                                           ; $493a: $dd
	ld a, a                                          ; $493b: $7f
	rst $38                                          ; $493c: $ff
	add b                                            ; $493d: $80
	db $d3                                           ; $493e: $d3
	rst $38                                          ; $493f: $ff
	pop hl                                           ; $4940: $e1
	rst $38                                          ; $4941: $ff

jr_012_4942:
	ld hl, $f93f                                     ; $4942: $21 $3f $f9
	rst $38                                          ; $4945: $ff
	ld h, l                                          ; $4946: $65
	rst SubAFromBC                                          ; $4947: $e7
	inc hl                                           ; $4948: $23
	db $e3                                           ; $4949: $e3
	ld [hl-], a                                      ; $494a: $32
	ldh a, [c]                                       ; $494b: $f2
	ld a, [de]                                       ; $494c: $1a
	ld a, [$ff87]                                    ; $494d: $fa $87 $ff
	ld l, a                                          ; $4950: $6f
	rst $38                                          ; $4951: $ff
	inc a                                            ; $4952: $3c
	db $fc                                           ; $4953: $fc
	rra                                              ; $4954: $1f
	rst $38                                          ; $4955: $ff
	ld h, $e7                                        ; $4956: $26 $e7
	jp nz, $86c3                                     ; $4958: $c2 $c3 $86

	add a                                            ; $495b: $87
	and $93                                          ; $495c: $e6 $93
	rst SubAFromBC                                          ; $495e: $e7
	and a                                            ; $495f: $a7
	rst $38                                          ; $4960: $ff
	xor b                                            ; $4961: $a8
	rst $38                                          ; $4962: $ff

jr_012_4963:
	and b                                            ; $4963: $a0
	rst $38                                          ; $4964: $ff

jr_012_4965:
	sub b                                            ; $4965: $90
	rst $38                                          ; $4966: $ff
	adc [hl]                                         ; $4967: $8e
	rst $38                                          ; $4968: $ff
	add c                                            ; $4969: $81
	ld a, e                                          ; $496a: $7b
	ld a, [$e080]                                    ; $496b: $fa $80 $e0
	rst $38                                          ; $496e: $ff
	db $fc                                           ; $496f: $fc
	ldh a, [$f7]                                     ; $4970: $f0 $f7
	ret nz                                           ; $4972: $c0

	and e                                            ; $4973: $a3
	ldh [rAUD1LEN], a                                ; $4974: $e0 $11
	ldh a, [rOBP0]                                   ; $4976: $f0 $48
	ld hl, sp-$7c                                    ; $4978: $f8 $84
	db $fc                                           ; $497a: $fc
	rlca                                             ; $497b: $07
	cp $83                                           ; $497c: $fe $83
	rst $38                                          ; $497e: $ff
	ld h, a                                          ; $497f: $67
	rst SubAFromBC                                          ; $4980: $e7
	jr nz, jr_012_4963                               ; $4981: $20 $e0

	jr nc, @-$0e                                     ; $4983: $30 $f0

	inc de                                           ; $4985: $13
	di                                               ; $4986: $f3
	inc e                                            ; $4987: $1c
	rst $38                                          ; $4988: $ff
	nop                                              ; $4989: $00
	rst $38                                          ; $498a: $ff
	ld bc, $ff8c                                     ; $498b: $01 $8c $ff
	inc bc                                           ; $498e: $03
	rst $38                                          ; $498f: $ff
	rst $38                                          ; $4990: $ff
	rst GetHLinHL                                          ; $4991: $cf
	ldh a, [$9f]                                     ; $4992: $f0 $9f
	db $ec                                           ; $4994: $ec
	ld a, a                                          ; $4995: $7f
	ldh [c], a                                       ; $4996: $e2
	cp a                                             ; $4997: $bf
	jp nz, $c277                                     ; $4998: $c2 $77 $c2

	rst AddAOntoHL                                          ; $499b: $ef
	pop bc                                           ; $499c: $c1
	rst FarCall                                          ; $499d: $f7
	pop bc                                           ; $499e: $c1
	rst $38                                          ; $499f: $ff
	ld a, e                                          ; $49a0: $7b
	jp hl                                            ; $49a1: $e9


	sbc h                                            ; $49a2: $9c
	add b                                            ; $49a3: $80
	rst $38                                          ; $49a4: $ff
	ret nz                                           ; $49a5: $c0

	ld a, e                                          ; $49a6: $7b
	rst JumpTable                                          ; $49a7: $c7
	add b                                            ; $49a8: $80
	ldh a, [$7f]                                     ; $49a9: $f0 $7f
	ld a, b                                          ; $49ab: $78
	sbc a                                            ; $49ac: $9f
	sbc b                                            ; $49ad: $98
	rst $38                                          ; $49ae: $ff
	ld hl, sp-$01                                    ; $49af: $f8 $ff
	rrca                                             ; $49b1: $0f
	rst $38                                          ; $49b2: $ff
	rra                                              ; $49b3: $1f
	rst $38                                          ; $49b4: $ff
	ccf                                              ; $49b5: $3f
	rst $38                                          ; $49b6: $ff
	ccf                                              ; $49b7: $3f
	rst FarCall                                          ; $49b8: $f7
	ld [hl], a                                       ; $49b9: $77
	db $d3                                           ; $49ba: $d3
	ld d, e                                          ; $49bb: $53
	ld b, e                                          ; $49bc: $43
	jp $c9c9                                         ; $49bd: $c3 $c9 $c9


	inc hl                                           ; $49c0: $23
	call c, $bb45                                    ; $49c1: $dc $45 $bb
	cpl                                              ; $49c4: $2f
	pop de                                           ; $49c5: $d1
	rlca                                             ; $49c6: $07
	ld hl, sp-$69                                    ; $49c7: $f8 $97
	rra                                              ; $49c9: $1f
	ld [$c13f], a                                    ; $49ca: $ea $3f $c1
	ld l, $d1                                        ; $49cd: $2e $d1
	ld d, e                                          ; $49cf: $53
	db $ed                                           ; $49d0: $ed
	rrca                                             ; $49d1: $0f
	nop                                              ; $49d2: $00
	sub e                                            ; $49d3: $93
	dec bc                                           ; $49d4: $0b
	ld a, [bc]                                       ; $49d5: $0a
	add hl, bc                                       ; $49d6: $09
	ld [$0607], sp                                   ; $49d7: $08 $07 $06
	dec b                                            ; $49da: $05
	inc b                                            ; $49db: $04
	inc bc                                           ; $49dc: $03
	ld [bc], a                                       ; $49dd: $02
	ld bc, $0800                                     ; $49de: $01 $00 $08
	nop                                              ; $49e1: $00
	sbc h                                            ; $49e2: $9c
	inc h                                            ; $49e3: $24
	ld b, e                                          ; $49e4: $43
	ld b, a                                          ; $49e5: $47
	sbc $33                                          ; $49e6: $de $33
	xor h                                            ; $49e8: $ac
	nop                                              ; $49e9: $00
	add l                                            ; $49ea: $85
	call z, $f8cf                                    ; $49eb: $cc $cf $f8
	rst $38                                          ; $49ee: $ff
	jr c, jr_012_4a30                                ; $49ef: $38 $3f

	dec e                                            ; $49f1: $1d
	rra                                              ; $49f2: $1f
	jr jr_012_4a0d                                   ; $49f3: $18 $18

	rst $38                                          ; $49f5: $ff
	rst $38                                          ; $49f6: $ff
	rrca                                             ; $49f7: $0f
	rrca                                             ; $49f8: $0f
	nop                                              ; $49f9: $00
	nop                                              ; $49fa: $00
	ld h, b                                          ; $49fb: $60
	ld a, a                                          ; $49fc: $7f
	ld b, b                                          ; $49fd: $40
	ld a, a                                          ; $49fe: $7f
	ld h, c                                          ; $49ff: $61
	ld a, a                                          ; $4a00: $7f
	ccf                                              ; $4a01: $3f
	ccf                                              ; $4a02: $3f
	ld h, e                                          ; $4a03: $63
	ld h, a                                          ; $4a04: $67
	db $dd                                           ; $4a05: $dd
	ld a, a                                          ; $4a06: $7f
	rst $38                                          ; $4a07: $ff
	add b                                            ; $4a08: $80
	jp nc, Jump_012_61fe                             ; $4a09: $d2 $fe $61

	ld a, a                                          ; $4a0c: $7f

jr_012_4a0d:
	ld hl, $f93f                                     ; $4a0d: $21 $3f $f9
	rst $38                                          ; $4a10: $ff
	ld h, l                                          ; $4a11: $65
	rst SubAFromBC                                          ; $4a12: $e7
	inc hl                                           ; $4a13: $23
	db $e3                                           ; $4a14: $e3
	ld [hl-], a                                      ; $4a15: $32
	ldh a, [c]                                       ; $4a16: $f2

jr_012_4a17:
	ld a, [de]                                       ; $4a17: $1a
	ld a, [$fe86]                                    ; $4a18: $fa $86 $fe
	ld l, h                                          ; $4a1b: $6c
	db $fc                                           ; $4a1c: $fc
	jr c, jr_012_4a17                                ; $4a1d: $38 $f8

	rra                                              ; $4a1f: $1f
	rst $38                                          ; $4a20: $ff
	ld h, $e7                                        ; $4a21: $26 $e7
	jp nz, $86c3                                     ; $4a23: $c2 $c3 $86

	add a                                            ; $4a26: $87
	and $93                                          ; $4a27: $e6 $93
	rst SubAFromBC                                          ; $4a29: $e7
	and a                                            ; $4a2a: $a7
	rst $38                                          ; $4a2b: $ff
	xor b                                            ; $4a2c: $a8
	rst $38                                          ; $4a2d: $ff

jr_012_4a2e:
	and b                                            ; $4a2e: $a0
	rst $38                                          ; $4a2f: $ff

jr_012_4a30:
	sub b                                            ; $4a30: $90
	rst $38                                          ; $4a31: $ff
	adc [hl]                                         ; $4a32: $8e
	rst $38                                          ; $4a33: $ff
	add c                                            ; $4a34: $81
	ld a, e                                          ; $4a35: $7b
	ld a, [$e080]                                    ; $4a36: $fa $80 $e0
	rst $38                                          ; $4a39: $ff
	ldh a, [$f0]                                     ; $4a3a: $f0 $f0
	ret nz                                           ; $4a3c: $c0

	ret nz                                           ; $4a3d: $c0

	and b                                            ; $4a3e: $a0
	ldh [rAUD1SWEEP], a                              ; $4a3f: $e0 $10
	ldh a, [rOBP0]                                   ; $4a41: $f0 $48
	ld hl, sp-$7c                                    ; $4a43: $f8 $84
	db $fc                                           ; $4a45: $fc
	inc b                                            ; $4a46: $04
	db $fc                                           ; $4a47: $fc
	add d                                            ; $4a48: $82
	cp $67                                           ; $4a49: $fe $67
	rst SubAFromBC                                          ; $4a4b: $e7
	jr nz, jr_012_4a2e                               ; $4a4c: $20 $e0

	jr nc, @-$0e                                     ; $4a4e: $30 $f0

	inc de                                           ; $4a50: $13
	di                                               ; $4a51: $f3
	inc e                                            ; $4a52: $1c
	rst $38                                          ; $4a53: $ff
	nop                                              ; $4a54: $00
	rst $38                                          ; $4a55: $ff
	ld bc, $ef9d                                     ; $4a56: $01 $9d $ef
	inc bc                                           ; $4a59: $03
	ld a, e                                          ; $4a5a: $7b
	sbc h                                            ; $4a5b: $9c
	sub d                                            ; $4a5c: $92
	db $10                                           ; $4a5d: $10
	rra                                              ; $4a5e: $1f
	inc l                                            ; $4a5f: $2c
	ccf                                              ; $4a60: $3f
	ld [hl+], a                                      ; $4a61: $22
	ccf                                              ; $4a62: $3f
	ld b, d                                          ; $4a63: $42
	ld [hl], a                                       ; $4a64: $77
	ld b, d                                          ; $4a65: $42
	ld l, a                                          ; $4a66: $6f
	ld b, c                                          ; $4a67: $41
	ld [hl], a                                       ; $4a68: $77
	ld b, c                                          ; $4a69: $41
	ld a, e                                          ; $4a6a: $7b
	sbc [hl]                                         ; $4a6b: $9e
	rst SubAFromDE                                          ; $4a6c: $df
	add b                                            ; $4a6d: $80
	rst SubAFromDE                                          ; $4a6e: $df
	ret nz                                           ; $4a6f: $c0

	rst SubAFromDE                                          ; $4a70: $df
	ldh [$df], a                                     ; $4a71: $e0 $df
	ldh a, [$df]                                     ; $4a73: $f0 $df
	ld a, b                                          ; $4a75: $78
	rst SubAFromDE                                          ; $4a76: $df
	sbc b                                            ; $4a77: $98
	rst SubAFromDE                                          ; $4a78: $df
	ld hl, sp-$21                                    ; $4a79: $f8 $df
	rrca                                             ; $4a7b: $0f
	rst SubAFromDE                                          ; $4a7c: $df
	rra                                              ; $4a7d: $1f
	db $dd                                           ; $4a7e: $dd
	ccf                                              ; $4a7f: $3f
	rst SubAFromDE                                          ; $4a80: $df
	ld [hl], a                                       ; $4a81: $77
	rst SubAFromDE                                          ; $4a82: $df
	ld d, e                                          ; $4a83: $53
	rst SubAFromDE                                          ; $4a84: $df
	ld b, e                                          ; $4a85: $43
	rst SubAFromDE                                          ; $4a86: $df
	ret                                              ; $4a87: $c9


	sbc e                                            ; $4a88: $9b
	inc [hl]                                         ; $4a89: $34
	db $f4                                           ; $4a8a: $f4
	ld h, b                                          ; $4a8b: $60
	ldh [$dd], a                                     ; $4a8c: $e0 $dd
	ret nz                                           ; $4a8e: $c0

	rst SubAFromDE                                          ; $4a8f: $df
	ldh a, [$dd]                                     ; $4a90: $f0 $dd
	ld hl, sp-$11                                    ; $4a92: $f8 $ef
	rrca                                             ; $4a94: $0f
	nop                                              ; $4a95: $00
	sub e                                            ; $4a96: $93

Call_012_4a97:
	dec bc                                           ; $4a97: $0b
	add hl, bc                                       ; $4a98: $09
	ld [$0607], sp                                   ; $4a99: $08 $07 $06
	dec b                                            ; $4a9c: $05
	inc b                                            ; $4a9d: $04
	inc bc                                           ; $4a9e: $03
	ld [bc], a                                       ; $4a9f: $02
	ld bc, $0a00                                     ; $4aa0: $01 $00 $0a
	inc b                                            ; $4aa3: $04
	nop                                              ; $4aa4: $00
	db $db                                           ; $4aa5: $db
	inc sp                                           ; $4aa6: $33
	ld e, d                                          ; $4aa7: $5a
	inc bc                                           ; $4aa8: $03
	sbc e                                            ; $4aa9: $9b
	nop                                              ; $4aaa: $00
	rst $38                                          ; $4aab: $ff
	inc b                                            ; $4aac: $04
	ei                                               ; $4aad: $fb
	or c                                             ; $4aae: $b1
	rst $38                                          ; $4aaf: $ff
	rst $38                                          ; $4ab0: $ff
	rst $38                                          ; $4ab1: $ff
	rst $38                                          ; $4ab2: $ff
	rst $38                                          ; $4ab3: $ff
	rst $38                                          ; $4ab4: $ff
	rst $38                                          ; $4ab5: $ff
	rst $38                                          ; $4ab6: $ff
	rst $38                                          ; $4ab7: $ff
	rst $38                                          ; $4ab8: $ff
	rst $38                                          ; $4ab9: $ff
	rst $38                                          ; $4aba: $ff
	rst $38                                          ; $4abb: $ff
	rst $38                                          ; $4abc: $ff
	rst $38                                          ; $4abd: $ff
	rst $38                                          ; $4abe: $ff
	cp [hl]                                          ; $4abf: $be
	rst $38                                          ; $4ac0: $ff
	rst $38                                          ; $4ac1: $ff
	rst $38                                          ; $4ac2: $ff
	sbc l                                            ; $4ac3: $9d
	ld [$b7f7], sp                                   ; $4ac4: $08 $f7 $b7
	rst $38                                          ; $4ac7: $ff
	rst $38                                          ; $4ac8: $ff
	rst $38                                          ; $4ac9: $ff
	rst $38                                          ; $4aca: $ff
	rst $38                                          ; $4acb: $ff
	rst $38                                          ; $4acc: $ff
	rst $38                                          ; $4acd: $ff
	rst FarCall                                          ; $4ace: $f7
	rst $38                                          ; $4acf: $ff
	rst $38                                          ; $4ad0: $ff
	sbc [hl]                                         ; $4ad1: $9e
	db $ec                                           ; $4ad2: $ec
	or c                                             ; $4ad3: $b1
	or $7e                                           ; $4ad4: $f6 $7e
	jr nz, jr_012_4adb                               ; $4ad6: $20 $03

	ld bc, $0300                                     ; $4ad8: $01 $00 $03

jr_012_4adb:
	db $fc                                           ; $4adb: $fc
	add e                                            ; $4adc: $83
	ld a, h                                          ; $4add: $7c
	ld c, $03                                        ; $4ade: $0e $03
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	scf                                              ; $4ae4: $37
	call nz, $ef9e                                   ; $4ae5: $c4 $9e $ef
	cp h                                             ; $4ae8: $bc
	rst $38                                          ; $4ae9: $ff
	rst $38                                          ; $4aea: $ff
	rst $38                                          ; $4aeb: $ff
	rst $38                                          ; $4aec: $ff
	rst $38                                          ; $4aed: $ff
	ld l, a                                          ; $4aee: $6f
	ld sp, hl                                        ; $4aef: $f9
	sbc h                                            ; $4af0: $9c
	cp a                                             ; $4af1: $bf
	ld b, b                                          ; $4af2: $40
	ld a, [$f4b9]                                    ; $4af3: $fa $b9 $f4
	db $e4                                           ; $4af6: $e4
	ld l, h                                          ; $4af7: $6c
	dec b                                            ; $4af8: $05
	sra a                                            ; $4af9: $cb $2f
	ld e, a                                          ; $4afb: $5f
	cp $97                                           ; $4afc: $fe $97
	ld bc, $03bc                                     ; $4afe: $01 $bc $03
	pop af                                           ; $4b01: $f1
	ld c, $73                                        ; $4b02: $0e $73
	inc c                                            ; $4b04: $0c
	rra                                              ; $4b05: $1f
	cp e                                             ; $4b06: $bb
	rra                                              ; $4b07: $1f
	cpl                                              ; $4b08: $2f
	rra                                              ; $4b09: $1f
	xor a                                            ; $4b0a: $af
	ld e, a                                          ; $4b0b: $5f
	ld l, [hl]                                       ; $4b0c: $6e
	sub a                                            ; $4b0d: $97
	ld bc, $033c                                     ; $4b0e: $01 $3c $03
	adc a                                            ; $4b11: $8f
	ld [hl], b                                       ; $4b12: $70
	sbc e                                            ; $4b13: $9b
	ld h, b                                          ; $4b14: $60
	sbc a                                            ; $4b15: $9f
	ld a, e                                          ; $4b16: $7b
	cp $8f                                           ; $4b17: $fe $8f
	sbc [hl]                                         ; $4b19: $9e
	ld h, b                                          ; $4b1a: $60
	dec [hl]                                         ; $4b1b: $35
	ret nz                                           ; $4b1c: $c0

	dec sp                                           ; $4b1d: $3b
	ret nz                                           ; $4b1e: $c0

	ld l, a                                          ; $4b1f: $6f
	add b                                            ; $4b20: $80
	add sp, $17                                      ; $4b21: $e8 $17
	db $f4                                           ; $4b23: $f4
	dec bc                                           ; $4b24: $0b
	ld a, [$fc05]                                    ; $4b25: $fa $05 $fc
	inc bc                                           ; $4b28: $03
	ld [hl], a                                       ; $4b29: $77
	db $fc                                           ; $4b2a: $fc
	add e                                            ; $4b2b: $83
	db $f4                                           ; $4b2c: $f4
	inc bc                                           ; $4b2d: $03
	db $fc                                           ; $4b2e: $fc
	inc bc                                           ; $4b2f: $03
	nop                                              ; $4b30: $00
	rst $38                                          ; $4b31: $ff
	ld hl, $11de                                     ; $4b32: $21 $de $11
	xor $02                                          ; $4b35: $ee $02
	db $fd                                           ; $4b37: $fd
	ld b, c                                          ; $4b38: $41
	cp [hl]                                          ; $4b39: $be
	ld [hl+], a                                      ; $4b3a: $22
	db $dd                                           ; $4b3b: $dd
	ld d, a                                          ; $4b3c: $57
	xor b                                            ; $4b3d: $a8
	ld l, $d1                                        ; $4b3e: $2e $d1
	nop                                              ; $4b40: $00
	rst $38                                          ; $4b41: $ff
	ld h, b                                          ; $4b42: $60
	sbc a                                            ; $4b43: $9f
	ld d, b                                          ; $4b44: $50
	adc a                                            ; $4b45: $8f
	ld [hl], b                                       ; $4b46: $70
	adc a                                            ; $4b47: $8f
	cp [hl]                                          ; $4b48: $be
	rst $38                                          ; $4b49: $ff
	rst $38                                          ; $4b4a: $ff
	rst $38                                          ; $4b4b: $ff
	sbc c                                            ; $4b4c: $99
	add b                                            ; $4b4d: $80
	ld a, a                                          ; $4b4e: $7f
	ld h, b                                          ; $4b4f: $60
	sbc a                                            ; $4b50: $9f
	ld b, b                                          ; $4b51: $40
	cp a                                             ; $4b52: $bf
	cp [hl]                                          ; $4b53: $be
	rst $38                                          ; $4b54: $ff
	rst $38                                          ; $4b55: $ff
	rst $38                                          ; $4b56: $ff
	sbc e                                            ; $4b57: $9b
	ld bc, $01fe                                     ; $4b58: $01 $fe $01
	cp $be                                           ; $4b5b: $fe $be
	rst $38                                          ; $4b5d: $ff
	rst $38                                          ; $4b5e: $ff
	rst $38                                          ; $4b5f: $ff
	ld h, a                                          ; $4b60: $67
	xor $b8                                          ; $4b61: $ee $b8
	rst $38                                          ; $4b63: $ff
	rst $38                                          ; $4b64: $ff
	rst $38                                          ; $4b65: $ff
	cp a                                             ; $4b66: $bf
	rst $38                                          ; $4b67: $ff
	rst $38                                          ; $4b68: $ff
	rst $38                                          ; $4b69: $ff
	rst $38                                          ; $4b6a: $ff
	rst $38                                          ; $4b6b: $ff
	ld h, a                                          ; $4b6c: $67
	ld c, b                                          ; $4b6d: $48
	ld c, [hl]                                       ; $4b6e: $4e
	call c, $ba7f                                    ; $4b6f: $dc $7f $ba
	cp h                                             ; $4b72: $bc

jr_012_4b73:
	rst $38                                          ; $4b73: $ff
	rst $38                                          ; $4b74: $ff
	rst $38                                          ; $4b75: $ff
	rst $38                                          ; $4b76: $ff
	rst $38                                          ; $4b77: $ff
	sbc c                                            ; $4b78: $99
	ld e, $e1                                        ; $4b79: $1e $e1
	inc hl                                           ; $4b7b: $23
	call c, $e718                                    ; $4b7c: $dc $18 $e7
	ld c, d                                          ; $4b7f: $4a
	sub $9c                                          ; $4b80: $d6 $9c
	di                                               ; $4b82: $f3
	inc c                                            ; $4b83: $0c
	di                                               ; $4b84: $f3
	cp a                                             ; $4b85: $bf
	rst $38                                          ; $4b86: $ff
	rst $38                                          ; $4b87: $ff
	sbc e                                            ; $4b88: $9b
	ld b, $f9                                        ; $4b89: $06 $f9
	ld b, $f9                                        ; $4b8b: $06 $f9
	ld b, [hl]                                       ; $4b8d: $46
	and d                                            ; $4b8e: $a2
	ld c, a                                          ; $4b8f: $4f
	sub h                                            ; $4b90: $94
	sbc c                                            ; $4b91: $99
	jr nz, jr_012_4b73                               ; $4b92: $20 $df

	ld d, l                                          ; $4b94: $55
	xor d                                            ; $4b95: $aa
	adc d                                            ; $4b96: $8a
	ld [hl], l                                       ; $4b97: $75
	cp h                                             ; $4b98: $bc
	rst $38                                          ; $4b99: $ff
	rst $38                                          ; $4b9a: $ff
	rst $38                                          ; $4b9b: $ff
	rst $38                                          ; $4b9c: $ff
	rst $38                                          ; $4b9d: $ff
	ld a, a                                          ; $4b9e: $7f
	jp nc, $f597                                     ; $4b9f: $d2 $97 $f5

	ld a, [bc]                                       ; $4ba2: $0a
	xor d                                            ; $4ba3: $aa
	ld d, l                                          ; $4ba4: $55
	ld d, b                                          ; $4ba5: $50
	xor a                                            ; $4ba6: $af
	and h                                            ; $4ba7: $a4
	ld e, e                                          ; $4ba8: $5b
	ld e, [hl]                                       ; $4ba9: $5e
	ldh [$7f], a                                     ; $4baa: $e0 $7f
	ld e, c                                          ; $4bac: $59
	sub a                                            ; $4bad: $97
	rra                                              ; $4bae: $1f
	ldh [$0a], a                                     ; $4baf: $e0 $0a
	push af                                          ; $4bb1: $f5
	add b                                            ; $4bb2: $80
	ld a, a                                          ; $4bb3: $7f
	ret nz                                           ; $4bb4: $c0

	ccf                                              ; $4bb5: $3f
	ld [hl], a                                       ; $4bb6: $77
	call nz, $f07f                                   ; $4bb7: $c4 $7f $f0
	add b                                            ; $4bba: $80
	push hl                                          ; $4bbb: $e5
	ld a, [de]                                       ; $4bbc: $1a
	ld hl, sp+$06                                    ; $4bbd: $f8 $06
	db $fc                                           ; $4bbf: $fc
	inc bc                                           ; $4bc0: $03
	ld e, e                                          ; $4bc1: $5b
	and h                                            ; $4bc2: $a4
	ld e, $e1                                        ; $4bc3: $1e $e1
	dec b                                            ; $4bc5: $05
	ld a, [$ff00]                                    ; $4bc6: $fa $00 $ff
	dec de                                           ; $4bc9: $1b
	inc h                                            ; $4bca: $24

jr_012_4bcb:
	ld h, l                                          ; $4bcb: $65
	ld a, [de]                                       ; $4bcc: $1a
	ld l, e                                          ; $4bcd: $6b
	inc d                                            ; $4bce: $14
	or h                                             ; $4bcf: $b4
	dec bc                                           ; $4bd0: $0b
	ld hl, sp+$07                                    ; $4bd1: $f8 $07
	call z, $ed03                                    ; $4bd3: $cc $03 $ed
	ld [bc], a                                       ; $4bd6: $02
	cp $01                                           ; $4bd7: $fe $01
	ld [hl], d                                       ; $4bd9: $72
	adc d                                            ; $4bda: $8a
	add b                                            ; $4bdb: $80
	cp $00                                           ; $4bdc: $fe $00
	ld a, a                                          ; $4bde: $7f
	add b                                            ; $4bdf: $80
	xor a                                            ; $4be0: $af
	ld d, b                                          ; $4be1: $50
	ld e, $e0                                        ; $4be2: $1e $e0
	dec hl                                           ; $4be4: $2b
	call nc, $ea15                                   ; $4be5: $d4 $15 $ea
	ld [bc], a                                       ; $4be8: $02
	db $fd                                           ; $4be9: $fd
	jr nz, jr_012_4bcb                               ; $4bea: $20 $df

	ld b, b                                          ; $4bec: $40
	cp a                                             ; $4bed: $bf
	add b                                            ; $4bee: $80
	ld a, a                                          ; $4bef: $7f
	ld d, a                                          ; $4bf0: $57
	ld c, [hl]                                       ; $4bf1: $4e
	cp a                                             ; $4bf2: $bf
	rst $38                                          ; $4bf3: $ff
	rst $38                                          ; $4bf4: $ff
	ld a, [hl]                                       ; $4bf5: $7e
	rst SubAFromHL                                          ; $4bf6: $d7
	ld b, a                                          ; $4bf7: $47
	ld l, h                                          ; $4bf8: $6c
	sbc [hl]                                         ; $4bf9: $9e
	db $10                                           ; $4bfa: $10
	ld l, d                                          ; $4bfb: $6a
	ld l, h                                          ; $4bfc: $6c
	ld b, d                                          ; $4bfd: $42
	ld a, [de]                                       ; $4bfe: $1a
	ld b, e                                          ; $4bff: $43
	cp $7f                                           ; $4c00: $fe $7f
	jp nc, $d477                                     ; $4c02: $d2 $77 $d4

	sbc e                                            ; $4c05: $9b
	ld a, [hl+]                                      ; $4c06: $2a
	push de                                          ; $4c07: $d5
	dec b                                            ; $4c08: $05
	ld a, [$ba77]                                    ; $4c09: $fa $77 $ba
	ld a, a                                          ; $4c0c: $7f
	sbc [hl]                                         ; $4c0d: $9e
	cp h                                             ; $4c0e: $bc
	rst $38                                          ; $4c0f: $ff
	rst $38                                          ; $4c10: $ff
	rst $38                                          ; $4c11: $ff
	rst $38                                          ; $4c12: $ff
	rst $38                                          ; $4c13: $ff
	sbc e                                            ; $4c14: $9b
	ldh [$1f], a                                     ; $4c15: $e0 $1f
	ldh a, [rIF]                                     ; $4c17: $f0 $0f
	cp e                                             ; $4c19: $bb
	rst $38                                          ; $4c1a: $ff
	rst $38                                          ; $4c1b: $ff
	rst $38                                          ; $4c1c: $ff
	rst $38                                          ; $4c1d: $ff
	rst $38                                          ; $4c1e: $ff
	rst $38                                          ; $4c1f: $ff
	ld a, a                                          ; $4c20: $7f
	ld c, [hl]                                       ; $4c21: $4e
	ccf                                              ; $4c22: $3f
	sub b                                            ; $4c23: $90
	ld a, a                                          ; $4c24: $7f
	db $fd                                           ; $4c25: $fd
	sub b                                            ; $4c26: $90
	db $fd                                           ; $4c27: $fd
	ld [bc], a                                       ; $4c28: $02
	ld a, [$b505]                                    ; $4c29: $fa $05 $b5
	ld c, d                                          ; $4c2c: $4a
	di                                               ; $4c2d: $f3
	inc c                                            ; $4c2e: $0c
	ldh [$1f], a                                     ; $4c2f: $e0 $1f
	ld d, b                                          ; $4c31: $50
	xor a                                            ; $4c32: $af
	and b                                            ; $4c33: $a0
	ld e, a                                          ; $4c34: $5f
	cp l                                             ; $4c35: $bd
	cp l                                             ; $4c36: $bd
	rst $38                                          ; $4c37: $ff
	rst $38                                          ; $4c38: $ff
	ld a, a                                          ; $4c39: $7f
	ld [hl], l                                       ; $4c3a: $75
	sub e                                            ; $4c3b: $93
	ld a, [bc]                                       ; $4c3c: $0a
	ld [$d515], a                                    ; $4c3d: $ea $15 $d5
	ld a, [hl+]                                      ; $4c40: $2a
	ld [$e215], a                                    ; $4c41: $ea $15 $e2
	inc e                                            ; $4c44: $1c
	dec e                                            ; $4c45: $1d
	ldh [$e2], a                                     ; $4c46: $e0 $e2
	cp h                                             ; $4c48: $bc
	add c                                            ; $4c49: $81
	dec sp                                           ; $4c4a: $3b
	rst $38                                          ; $4c4b: $ff
	rst $38                                          ; $4c4c: $ff
	ld a, [$059e]                                    ; $4c4d: $fa $9e $05
	ld [hl], a                                       ; $4c50: $77
	cp l                                             ; $4c51: $bd
	sbc h                                            ; $4c52: $9c
	jp $ff3c                                         ; $4c53: $c3 $3c $ff


	or h                                             ; $4c56: $b4
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	ld h, a                                          ; $4c59: $67
	rst $38                                          ; $4c5a: $ff
	db $fc                                           ; $4c5b: $fc
	cp $4f                                           ; $4c5c: $fe $4f
	ld hl, $fd94                                     ; $4c5e: $21 $94 $fd
	ld a, [$00ff]                                    ; $4c61: $fa $ff $00
	ld [hl], a                                       ; $4c64: $77
	ld c, h                                          ; $4c65: $4c
	ld [hl], d                                       ; $4c66: $72
	add b                                            ; $4c67: $80
	ld a, [hl]                                       ; $4c68: $7e
	call nz, Call_012_4a97                           ; $4c69: $c4 $97 $4a
	or l                                             ; $4c6c: $b5
	cpl                                              ; $4c6d: $2f
	ret nc                                           ; $4c6e: $d0

	ld h, h                                          ; $4c6f: $64
	sbc e                                            ; $4c70: $9b
	ld [hl+], a                                      ; $4c71: $22
	db $dd                                           ; $4c72: $dd
	cp a                                             ; $4c73: $bf
	rst $38                                          ; $4c74: $ff
	rst $38                                          ; $4c75: $ff
	ld a, a                                          ; $4c76: $7f
	inc b                                            ; $4c77: $04
	sbc e                                            ; $4c78: $9b
	xor e                                            ; $4c79: $ab
	ld d, h                                          ; $4c7a: $54
	pop hl                                           ; $4c7b: $e1
	ld e, $76                                        ; $4c7c: $1e $76
	call z, $9c7f                                    ; $4c7e: $cc $7f $9c
	sub e                                            ; $4c81: $93
	ld d, h                                          ; $4c82: $54
	xor e                                            ; $4c83: $ab
	ld a, [hl+]                                      ; $4c84: $2a
	push de                                          ; $4c85: $d5
	ld d, l                                          ; $4c86: $55
	xor d                                            ; $4c87: $aa
	ld [$f505], a                                    ; $4c88: $ea $05 $f5
	ld a, [bc]                                       ; $4c8b: $0a
	ld a, [hl]                                       ; $4c8c: $7e
	add c                                            ; $4c8d: $81
	cp l                                             ; $4c8e: $bd
	rst $38                                          ; $4c8f: $ff
	rst $38                                          ; $4c90: $ff
	rst $38                                          ; $4c91: $ff
	rst $38                                          ; $4c92: $ff
	ld a, a                                          ; $4c93: $7f
	inc a                                            ; $4c94: $3c
	ld a, a                                          ; $4c95: $7f
	ld b, [hl]                                       ; $4c96: $46
	halt                                             ; $4c97: $76
	and $6e                                          ; $4c98: $e6 $6e
	inc h                                            ; $4c9a: $24
	sbc c                                            ; $4c9b: $99
	dec de                                           ; $4c9c: $1b
	db $e4                                           ; $4c9d: $e4
	dec b                                            ; $4c9e: $05
	ld a, [$df20]                                    ; $4c9f: $fa $20 $df
	ld [hl], a                                       ; $4ca2: $77
	db $f4                                           ; $4ca3: $f4
	adc [hl]                                         ; $4ca4: $8e
	ld a, b                                          ; $4ca5: $78
	add a                                            ; $4ca6: $87
	inc a                                            ; $4ca7: $3c
	jp $e30c                                         ; $4ca8: $c3 $0c $e3


	ld c, $f1                                        ; $4cab: $0e $f1
	adc [hl]                                         ; $4cad: $8e
	ld [hl], c                                       ; $4cae: $71
	ld c, [hl]                                       ; $4caf: $4e
	or c                                             ; $4cb0: $b1
	add $39                                          ; $4cb1: $c6 $39
	db $e4                                           ; $4cb3: $e4
	dec de                                           ; $4cb4: $1b
	db $fd                                           ; $4cb5: $fd
	cp l                                             ; $4cb6: $bd
	ld sp, hl                                        ; $4cb7: $f9
	cp $fc                                           ; $4cb8: $fe $fc
	ld a, l                                          ; $4cba: $7d
	adc l                                            ; $4cbb: $8d

jr_012_4cbc:
	add b                                            ; $4cbc: $80
	ld a, [hl-]                                      ; $4cbd: $3a
	ret nz                                           ; $4cbe: $c0

	cp l                                             ; $4cbf: $bd
	ld b, b                                          ; $4cc0: $40
	sbc a                                            ; $4cc1: $9f
	ld h, b                                          ; $4cc2: $60
	ld [hl], e                                       ; $4cc3: $73
	inc c                                            ; $4cc4: $0c
	push af                                          ; $4cc5: $f5
	ld a, [bc]                                       ; $4cc6: $0a

Call_012_4cc7:
	cp e                                             ; $4cc7: $bb
	inc b                                            ; $4cc8: $04
	adc [hl]                                         ; $4cc9: $8e
	ld bc, $01ee                                     ; $4cca: $01 $ee $01
	rst JumpTable                                          ; $4ccd: $c7
	cp [hl]                                          ; $4cce: $be
	sub c                                            ; $4ccf: $91
	ld sp, hl                                        ; $4cd0: $f9
	cp $84                                           ; $4cd1: $fe $84
	ld bc, $41be                                     ; $4cd3: $01 $be $41
	db $ec                                           ; $4cd6: $ec
	inc de                                           ; $4cd7: $13
	ld hl, sp+$07                                    ; $4cd8: $f8 $07
	ret z                                            ; $4cda: $c8

	scf                                              ; $4cdb: $37
	ret c                                            ; $4cdc: $d8

	daa                                              ; $4cdd: $27
	xor b                                            ; $4cde: $a8
	ld d, a                                          ; $4cdf: $57
	ret nc                                           ; $4ce0: $d0

	cpl                                              ; $4ce1: $2f
	ld hl, sp+$07                                    ; $4ce2: $f8 $07
	pop af                                           ; $4ce4: $f1
	ld c, $f2                                        ; $4ce5: $0e $f2
	dec c                                            ; $4ce7: $0d
	pop hl                                           ; $4ce8: $e1
	ld e, $c7                                        ; $4ce9: $1e $c7
	jr c, jr_012_4cbc                                ; $4ceb: $38 $cf

	jr nc, @+$79                                     ; $4ced: $30 $77

	jr z, jr_012_4d6f                                ; $4cef: $28 $7e

	add l                                            ; $4cf1: $85
	ld a, [hl]                                       ; $4cf2: $7e
	xor a                                            ; $4cf3: $af
	ld a, a                                          ; $4cf4: $7f
	ld h, c                                          ; $4cf5: $61
	ld a, a                                          ; $4cf6: $7f
	db $fc                                           ; $4cf7: $fc
	sbc [hl]                                         ; $4cf8: $9e
	db $db                                           ; $4cf9: $db
	cp l                                             ; $4cfa: $bd
	xor $df                                          ; $4cfb: $ee $df
	cp a                                             ; $4cfd: $bf
	ldh a, [hDisp0_SCY]                                     ; $4cfe: $f0 $83
	rrca                                             ; $4d00: $0f
	pop af                                           ; $4d01: $f1
	ld c, $e1                                        ; $4d02: $0e $e1
	inc e                                            ; $4d04: $1c
	rst AddAOntoHL                                          ; $4d05: $ef
	db $10                                           ; $4d06: $10
	cp $01                                           ; $4d07: $fe $01
	db $fc                                           ; $4d09: $fc
	inc bc                                           ; $4d0a: $03
	ld sp, hl                                        ; $4d0b: $f9
	ld b, $f1                                        ; $4d0c: $06 $f1
	ld c, $2a                                        ; $4d0e: $0e $2a
	push de                                          ; $4d10: $d5
	ld d, a                                          ; $4d11: $57
	xor b                                            ; $4d12: $a8
	xor $11                                          ; $4d13: $ee $11
	ld b, b                                          ; $4d15: $40
	cp a                                             ; $4d16: $bf
	cpl                                              ; $4d17: $2f
	ret nc                                           ; $4d18: $d0

	ld a, a                                          ; $4d19: $7f
	add b                                            ; $4d1a: $80
	rst AddAOntoHL                                          ; $4d1b: $ef
	cp a                                             ; $4d1c: $bf
	or h                                             ; $4d1d: $b4
	sbc a                                            ; $4d1e: $9f
	sub a                                            ; $4d1f: $97
	ld h, b                                          ; $4d20: $60
	rst $38                                          ; $4d21: $ff
	nop                                              ; $4d22: $00
	ld bc, $30fe                                     ; $4d23: $01 $fe $30
	rst GetHLinHL                                          ; $4d26: $cf
	rst $38                                          ; $4d27: $ff
	cp l                                             ; $4d28: $bd
	pop hl                                           ; $4d29: $e1
	adc h                                            ; $4d2a: $8c
	ld a, a                                          ; $4d2b: $7f
	ld hl, sp-$63                                    ; $4d2c: $f8 $9d
	rlca                                             ; $4d2e: $07
	push af                                          ; $4d2f: $f5
	ld a, d                                          ; $4d30: $7a
	and $8b                                          ; $4d31: $e6 $8b
	ld [hl], l                                       ; $4d33: $75
	adc d                                            ; $4d34: $8a
	cp $01                                           ; $4d35: $fe $01
	ld sp, hl                                        ; $4d37: $f9
	ld b, $fd                                        ; $4d38: $06 $fd
	ld [bc], a                                       ; $4d3a: $02
	rst $38                                          ; $4d3b: $ff
	nop                                              ; $4d3c: $00
	ccf                                              ; $4d3d: $3f
	ret nz                                           ; $4d3e: $c0

	ld e, $e0                                        ; $4d3f: $1e $e0
	xor a                                            ; $4d41: $af
	ld d, b                                          ; $4d42: $50
	ld b, e                                          ; $4d43: $43
	cp h                                             ; $4d44: $bc
	or c                                             ; $4d45: $b1
	ld c, [hl]                                       ; $4d46: $4e
	ld l, a                                          ; $4d47: $6f
	ldh a, [$80]                                     ; $4d48: $f0 $80
	ld b, h                                          ; $4d4a: $44
	cp e                                             ; $4d4b: $bb
	add e                                            ; $4d4c: $83
	ld a, h                                          ; $4d4d: $7c
	jp nz, $f13d                                     ; $4d4e: $c2 $3d $f1

	ld c, $f8                                        ; $4d51: $0e $f8
	rlca                                             ; $4d53: $07
	jp hl                                            ; $4d54: $e9


	ld d, $f7                                        ; $4d55: $16 $f7
	ld [$04fb], sp                                   ; $4d57: $08 $fb $04
	ld [$04f7], sp                                   ; $4d5a: $08 $f7 $04
	ei                                               ; $4d5d: $fb
	ld a, [bc]                                       ; $4d5e: $0a
	push af                                          ; $4d5f: $f5
	dec e                                            ; $4d60: $1d
	ldh [c], a                                       ; $4d61: $e2
	inc c                                            ; $4d62: $0c
	di                                               ; $4d63: $f3
	rra                                              ; $4d64: $1f
	ldh [$ba], a                                     ; $4d65: $e0 $ba
	ld b, l                                          ; $4d67: $45
	rst SubAFromDE                                          ; $4d68: $df
	sbc b                                            ; $4d69: $98
	jr nz, @+$56                                     ; $4d6a: $20 $54

	xor e                                            ; $4d6c: $ab
	ld a, b                                          ; $4d6d: $78
	add a                                            ; $4d6e: $87

jr_012_4d6f:
	jr nc, @-$2f                                     ; $4d6f: $30 $cf

jr_012_4d71:
	ld [hl], l                                       ; $4d71: $75
	sub [hl]                                         ; $4d72: $96
	ld [hl], l                                       ; $4d73: $75
	ld c, b                                          ; $4d74: $48
	ld l, l                                          ; $4d75: $6d
	ld c, $7f                                        ; $4d76: $0e $7f

jr_012_4d78:
	db $f4                                           ; $4d78: $f4
	ld a, a                                          ; $4d79: $7f
	ld [bc], a                                       ; $4d7a: $02
	ld [hl], a                                       ; $4d7b: $77
	db $fc                                           ; $4d7c: $fc
	ld [hl], c                                       ; $4d7d: $71
	ld [hl], $b1                                     ; $4d7e: $36 $b1
	ld bc, $0300                                     ; $4d80: $01 $00 $03
	inc bc                                           ; $4d83: $03
	rrca                                             ; $4d84: $0f
	di                                               ; $4d85: $f3
	pop hl                                           ; $4d86: $e1
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	nop                                              ; $4d8a: $00
	nop                                              ; $4d8b: $00
	ld b, $83                                        ; $4d8c: $06 $83
	ld h, b                                          ; $4d8e: $60
	ld [$c4b9], sp                                   ; $4d8f: $08 $b9 $c4
	db $f4                                           ; $4d92: $f4
	db $f4                                           ; $4d93: $f4
	ld e, [hl]                                       ; $4d94: $5e
	xor c                                            ; $4d95: $a9
	db $fd                                           ; $4d96: $fd
	cp $63                                           ; $4d97: $fe $63
	sub b                                            ; $4d99: $90
	inc e                                            ; $4d9a: $1c
	push bc                                          ; $4d9b: $c5
	ld a, [hl-]                                      ; $4d9c: $3a
	swap h                                           ; $4d9d: $cb $34
	add c                                            ; $4d9f: $81
	ld a, [hl]                                       ; $4da0: $7e
	swap h                                           ; $4da1: $cb $34
	rst JumpTable                                          ; $4da3: $c7
	jr c, jr_012_4d71                                ; $4da4: $38 $cb

	inc [hl]                                         ; $4da6: $34
	ld h, a                                          ; $4da7: $67
	jr @+$77                                         ; $4da8: $18 $75

	and h                                            ; $4daa: $a4
	ld a, a                                          ; $4dab: $7f
	or h                                             ; $4dac: $b4
	ld [hl], l                                       ; $4dad: $75
	sbc d                                            ; $4dae: $9a
	cp [hl]                                          ; $4daf: $be
	rst $38                                          ; $4db0: $ff
	rst $38                                          ; $4db1: $ff
	rst $38                                          ; $4db2: $ff
	sbc [hl]                                         ; $4db3: $9e
	ld b, [hl]                                       ; $4db4: $46
	or c                                             ; $4db5: $b1
	rra                                              ; $4db6: $1f
	ld a, a                                          ; $4db7: $7f
	db $fc                                           ; $4db8: $fc
	ld hl, sp-$1f                                    ; $4db9: $f8 $e1
	rst JumpTable                                          ; $4dbb: $c7
	rst AddAOntoHL                                          ; $4dbc: $ef
	rst $38                                          ; $4dbd: $ff
	db $fc                                           ; $4dbe: $fc
	ldh [rWX], a                                     ; $4dbf: $e0 $4b
	or a                                             ; $4dc1: $b7
	rst $38                                          ; $4dc2: $ff
	db $fd                                           ; $4dc3: $fd
	rst $38                                          ; $4dc4: $ff
	jp hl                                            ; $4dc5: $e9


	or c                                             ; $4dc6: $b1
	dec h                                            ; $4dc7: $25
	add d                                            ; $4dc8: $82
	ld b, b                                          ; $4dc9: $40
	add sp, -$01                                     ; $4dca: $e8 $ff
	rst $38                                          ; $4dcc: $ff
	di                                               ; $4dcd: $f3
	rst $38                                          ; $4dce: $ff
	ld a, e                                          ; $4dcf: $7b
	xor l                                            ; $4dd0: $ad
	inc d                                            ; $4dd1: $14
	nop                                              ; $4dd2: $00
	pop bc                                           ; $4dd3: $c1
	ld h, b                                          ; $4dd4: $60
	ld hl, sp-$09                                    ; $4dd5: $f8 $f7
	sbc l                                            ; $4dd7: $9d
	ld [$baff], sp                                   ; $4dd8: $08 $ff $ba
	rst SubAFromDE                                          ; $4ddb: $df
	xor a                                            ; $4ddc: $af
	rst SubAFromDE                                          ; $4ddd: $df
	ld l, a                                          ; $4dde: $6f
	rst $38                                          ; $4ddf: $ff
	ccf                                              ; $4de0: $3f
	cp a                                             ; $4de1: $bf
	adc [hl]                                         ; $4de2: $8e
	ld b, b                                          ; $4de3: $40
	ld d, a                                          ; $4de4: $57
	xor b                                            ; $4de5: $a8
	xor a                                            ; $4de6: $af
	ld d, b                                          ; $4de7: $50
	rst SubAFromDE                                          ; $4de8: $df
	jr nz, jr_012_4d78                               ; $4de9: $20 $8d

	ld [hl], b                                       ; $4deb: $70
	ld e, [hl]                                       ; $4dec: $5e
	and b                                            ; $4ded: $a0
	cpl                                              ; $4dee: $2f
	ret nc                                           ; $4def: $d0

	sbc a                                            ; $4df0: $9f
	ld h, b                                          ; $4df1: $60
	and b                                            ; $4df2: $a0
	ld e, a                                          ; $4df3: $5f
	halt                                             ; $4df4: $76
	ld l, $7e                                        ; $4df5: $2e $7e
	sbc b                                            ; $4df7: $98
	ld a, l                                          ; $4df8: $7d
	jp nz, $fc7f                                     ; $4df9: $c2 $7f $fc

	sbc e                                            ; $4dfc: $9b
	add sp, $17                                      ; $4dfd: $e8 $17
	call nc, $8d2b                                   ; $4dff: $d4 $2b $8d
	nop                                              ; $4e02: $00
	sbc [hl]                                         ; $4e03: $9e
	nop                                              ; $4e04: $00
	db $dd                                           ; $4e05: $dd
	ld bc, $109e                                     ; $4e06: $01 $9e $10
	db $dd                                           ; $4e09: $dd
	ld bc, $029e                                     ; $4e0a: $01 $9e $02
	sbc $01                                          ; $4e0d: $de $01
	sub a                                            ; $4e0f: $97
	rra                                              ; $4e10: $1f
	jr nz, jr_012_4e34                               ; $4e11: $20 $21

	ld [hl+], a                                      ; $4e13: $22
	inc hl                                           ; $4e14: $23
	inc h                                            ; $4e15: $24
	dec h                                            ; $4e16: $25
	ld h, $77                                        ; $4e17: $26 $77
	xor $96                                          ; $4e19: $ee $96
	jr nz, jr_012_4e49                               ; $4e1b: $20 $2c

	dec l                                            ; $4e1d: $2d
	ld l, $2f                                        ; $4e1e: $2e $2f
	jr nc, @+$33                                     ; $4e20: $30 $31

	ld [hl+], a                                      ; $4e22: $22
	ld [hl+], a                                      ; $4e23: $22
	db $dd                                           ; $4e24: $dd
	ld bc, $3889                                     ; $4e25: $01 $89 $38
	add hl, sp                                       ; $4e28: $39
	ld a, [hl-]                                      ; $4e29: $3a
	dec sp                                           ; $4e2a: $3b
	inc a                                            ; $4e2b: $3c
	dec a                                            ; $4e2c: $3d
	ld a, $3f                                        ; $4e2d: $3e $3f
	ld [hl+], a                                      ; $4e2f: $22
	ld bc, $0100                                     ; $4e30: $01 $00 $01
	rlca                                             ; $4e33: $07

jr_012_4e34:
	ld b, l                                          ; $4e34: $45
	ld b, [hl]                                       ; $4e35: $46
	ld b, a                                          ; $4e36: $47
	ld c, b                                          ; $4e37: $48
	ld c, c                                          ; $4e38: $49
	ld c, d                                          ; $4e39: $4a
	ld c, e                                          ; $4e3a: $4b
	rrca                                             ; $4e3b: $0f
	ld c, $de                                        ; $4e3c: $0e $de
	ld bc, $0695                                     ; $4e3e: $01 $95 $06
	add hl, bc                                       ; $4e41: $09
	ld [$0405], sp                                   ; $4e42: $08 $05 $04
	ld a, [bc]                                       ; $4e45: $0a
	dec bc                                           ; $4e46: $0b
	inc c                                            ; $4e47: $0c
	dec c                                            ; $4e48: $0d

jr_012_4e49:
	ld b, h                                          ; $4e49: $44
	db $dd                                           ; $4e4a: $dd
	ld bc, $4397                                     ; $4e4b: $01 $97 $43
	ld b, d                                          ; $4e4e: $42
	ld b, c                                          ; $4e4f: $41
	ld b, b                                          ; $4e50: $40
	scf                                              ; $4e51: $37
	ld [hl], $35                                     ; $4e52: $36 $35
	inc [hl]                                         ; $4e54: $34
	ld a, e                                          ; $4e55: $7b
	jp c, $01df                                      ; $4e56: $da $df $01

	sub l                                            ; $4e59: $95
	inc sp                                           ; $4e5a: $33
	ld [hl-], a                                      ; $4e5b: $32
	dec hl                                           ; $4e5c: $2b
	ld a, [hl+]                                      ; $4e5d: $2a
	add hl, hl                                       ; $4e5e: $29
	jr z, jr_012_4e88                                ; $4e5f: $28 $27

	ld e, $01                                        ; $4e61: $1e $01
	ld [bc], a                                       ; $4e63: $02
	ld a, e                                          ; $4e64: $7b
	call z, $1d96                                    ; $4e65: $cc $96 $1d
	inc e                                            ; $4e68: $1c
	dec de                                           ; $4e69: $1b
	ld a, [de]                                       ; $4e6a: $1a
	add hl, de                                       ; $4e6b: $19
	jr @+$19                                         ; $4e6c: $18 $17

	ld d, $15                                        ; $4e6e: $16 $15
	ld a, e                                          ; $4e70: $7b
	and [hl]                                         ; $4e71: $a6
	sbc e                                            ; $4e72: $9b
	ld b, $01                                        ; $4e73: $06 $01
	inc d                                            ; $4e75: $14
	inc de                                           ; $4e76: $13
	call c, Call_012_7b01                            ; $4e77: $dc $01 $7b
	adc l                                            ; $4e7a: $8d
	sbc [hl]                                         ; $4e7b: $9e
	inc bc                                           ; $4e7c: $03
	ld a, e                                          ; $4e7d: $7b
	cp $9e                                           ; $4e7e: $fe $9e
	ld [de], a                                       ; $4e80: $12
	sbc $01                                          ; $4e81: $de $01
	sbc [hl]                                         ; $4e83: $9e
	ld de, $f06f                                     ; $4e84: $11 $6f $f0
	ld [hl], a                                       ; $4e87: $77

jr_012_4e88:
	ld a, e                                          ; $4e88: $7b
	jp c, $9d01                                      ; $4e89: $da $01 $9d

	db $10                                           ; $4e8c: $10
	ld b, $22                                        ; $4e8d: $06 $22
	nop                                              ; $4e8f: $00
	reti                                             ; $4e90: $d9


	inc sp                                           ; $4e91: $33
	sbc h                                            ; $4e92: $9c
	scf                                              ; $4e93: $37
	ld [hl], a                                       ; $4e94: $77
	ld [hl], a                                       ; $4e95: $77
	db $dd                                           ; $4e96: $dd
	inc sp                                           ; $4e97: $33
	rst SubAFromDE                                          ; $4e98: $df
	ld [hl], a                                       ; $4e99: $77
	sbc [hl]                                         ; $4e9a: $9e
	ld [hl], e                                       ; $4e9b: $73
	ld h, a                                          ; $4e9c: $67
	di                                               ; $4e9d: $f3
	ld a, a                                          ; $4e9e: $7f
	ei                                               ; $4e9f: $fb
	call c, Call_012_6f33                            ; $4ea0: $dc $33 $6f
	add sp, $7f                                      ; $4ea3: $e8 $7f
	di                                               ; $4ea5: $f3
	ld [hl], a                                       ; $4ea6: $77
	add sp, $67                                      ; $4ea7: $e8 $67
	db $ec                                           ; $4ea9: $ec
	sbc [hl]                                         ; $4eaa: $9e
	inc sp                                           ; $4eab: $33
	ld [hl], e                                       ; $4eac: $73
	di                                               ; $4ead: $f3
	adc $33                                          ; $4eae: $ce $33
	ld b, e                                          ; $4eb0: $43
	ld [bc], a                                       ; $4eb1: $02
	sbc h                                            ; $4eb2: $9c
	ld bc, $00ff                                     ; $4eb3: $01 $ff $00
	dec hl                                           ; $4eb6: $2b
	cp $9d                                           ; $4eb7: $fe $9d
	ld [$2ff7], sp                                   ; $4eb9: $08 $f7 $2f
	add sp, -$63                                     ; $4ebc: $e8 $9d
	inc b                                            ; $4ebe: $04

Jump_012_4ebf:
	ei                                               ; $4ebf: $fb
	ld d, a                                          ; $4ec0: $57
	ldh a, [c]                                       ; $4ec1: $f2
	sbc c                                            ; $4ec2: $99
	inc bc                                           ; $4ec3: $03
	db $fc                                           ; $4ec4: $fc
	nop                                              ; $4ec5: $00
	rst $38                                          ; $4ec6: $ff
	ld bc, $5ffe                                     ; $4ec7: $01 $fe $5f
	ldh a, [hDisp1_OBP0]                                     ; $4eca: $f0 $93
	or $07                                           ; $4ecc: $f6 $07
	cp $83                                           ; $4ece: $fe $83
	cp $03                                           ; $4ed0: $fe $03
	cp $0b                                           ; $4ed2: $fe $0b
	cp $0b                                           ; $4ed4: $fe $0b
	rst $38                                          ; $4ed6: $ff
	ld c, e                                          ; $4ed7: $4b
	ld a, e                                          ; $4ed8: $7b
	cp $9a                                           ; $4ed9: $fe $9a
	ld e, e                                          ; $4edb: $5b
	jp $c37f                                         ; $4edc: $c3 $7f $c3


	ld a, [hl]                                       ; $4edf: $7e
	ld [hl], a                                       ; $4ee0: $77
	cp $7f                                           ; $4ee1: $fe $7f
	db $eb                                           ; $4ee3: $eb
	ld l, a                                          ; $4ee4: $6f
	cp $97                                           ; $4ee5: $fe $97
	rst SubAFromDE                                          ; $4ee7: $df
	ldh [$bf], a                                     ; $4ee8: $e0 $bf
	ret nz                                           ; $4eea: $c0

	ld a, a                                          ; $4eeb: $7f
	add b                                            ; $4eec: $80
	ld a, a                                          ; $4eed: $7f
	add b                                            ; $4eee: $80
	ld [hl], e                                       ; $4eef: $73
	db $d3                                           ; $4ef0: $d3
	add a                                            ; $4ef1: $87
	jr nz, @+$01                                     ; $4ef2: $20 $ff

	add hl, hl                                       ; $4ef4: $29
	cp $07                                           ; $4ef5: $fe $07
	db $fc                                           ; $4ef7: $fc
	rlca                                             ; $4ef8: $07
	ld sp, hl                                        ; $4ef9: $f9
	rrca                                             ; $4efa: $0f
	ld sp, hl                                        ; $4efb: $f9
	rra                                              ; $4efc: $1f
	pop af                                           ; $4efd: $f1
	rra                                              ; $4efe: $1f
	ldh a, [c]                                       ; $4eff: $f2
	rra                                              ; $4f00: $1f
	push af                                          ; $4f01: $f5
	ld a, $e5                                        ; $4f02: $3e $e5
	ld a, $01                                        ; $4f04: $3e $01
	rst $38                                          ; $4f06: $ff
	ld bc, $03ff                                     ; $4f07: $01 $ff $03
	ld a, e                                          ; $4f0a: $7b
	cp a                                             ; $4f0b: $bf
	ld a, a                                          ; $4f0c: $7f
	cp $77                                           ; $4f0d: $fe $77
	or $7f                                           ; $4f0f: $f6 $7f
	cp $86                                           ; $4f11: $fe $86
	ld [hl], $c0                                     ; $4f13: $36 $c0
	dec a                                            ; $4f15: $3d
	ret nz                                           ; $4f16: $c0

	ld e, a                                          ; $4f17: $5f
	and b                                            ; $4f18: $a0
	ld e, $e0                                        ; $4f19: $1e $e0
	rla                                              ; $4f1b: $17
	add sp, $2b                                      ; $4f1c: $e8 $2b
	call nc, $f20d                                   ; $4f1e: $d4 $0d $f2
	ld [bc], a                                       ; $4f21: $02
	db $fd                                           ; $4f22: $fd
	ld hl, sp+$0f                                    ; $4f23: $f8 $0f
	ld hl, sp-$71                                    ; $4f25: $f8 $8f
	ld hl, sp-$31                                    ; $4f27: $f8 $cf
	ld hl, sp+$4f                                    ; $4f29: $f8 $4f
	db $fc                                           ; $4f2b: $fc
	ld a, e                                          ; $4f2c: $7b
	ret z                                            ; $4f2d: $c8

	add b                                            ; $4f2e: $80
	db $f4                                           ; $4f2f: $f4
	rlca                                             ; $4f30: $07
	ld a, [$ff03]                                    ; $4f31: $fa $03 $ff
	ccf                                              ; $4f34: $3f
	rst $38                                          ; $4f35: $ff
	rrca                                             ; $4f36: $0f
	rst $38                                          ; $4f37: $ff
	ld c, $ff                                        ; $4f38: $0e $ff
	ld c, $fb                                        ; $4f3a: $0e $fb
	ld e, $f3                                        ; $4f3c: $1e $f3
	ld a, $e3                                        ; $4f3e: $3e $e3
	ld a, a                                          ; $4f40: $7f
	jp Jump_012_7fff                                 ; $4f41: $c3 $ff $7f


	inc b                                            ; $4f44: $04
	rst $38                                          ; $4f45: $ff
	ld [$18ff], sp                                   ; $4f46: $08 $ff $18
	rst FarCall                                          ; $4f49: $f7
	jr @+$01                                         ; $4f4a: $18 $ff

	jr nc, @+$01                                     ; $4f4c: $30 $ff

	add l                                            ; $4f4e: $85
	ld [hl], b                                       ; $4f4f: $70
	rst $38                                          ; $4f50: $ff
	ldh a, [$2f]                                     ; $4f51: $f0 $2f
	ldh a, [$3f]                                     ; $4f53: $f0 $3f
	pop hl                                           ; $4f55: $e1
	ld a, [hl]                                       ; $4f56: $7e
	jp nz, $c47d                                     ; $4f57: $c2 $7d $c4

	dec sp                                           ; $4f5a: $3b
	add sp, $3f                                      ; $4f5b: $e8 $3f
	ldh a, [$3f]                                     ; $4f5d: $f0 $3f
	ldh [$7f], a                                     ; $4f5f: $e0 $7f
	pop bc                                           ; $4f61: $c1
	rst $38                                          ; $4f62: $ff
	add e                                            ; $4f63: $83
	db $ed                                           ; $4f64: $ed
	ccf                                              ; $4f65: $3f
	rst AddAOntoHL                                          ; $4f66: $ef
	cp a                                             ; $4f67: $bf
	ret                                              ; $4f68: $c9


	ld [hl], e                                       ; $4f69: $73
	and [hl]                                         ; $4f6a: $a6
	add a                                            ; $4f6b: $87
	ld [bc], a                                       ; $4f6c: $02
	cp $04                                           ; $4f6d: $fe $04
	db $fc                                           ; $4f6f: $fc

jr_012_4f70:
	rrca                                             ; $4f70: $0f
	rst $38                                          ; $4f71: $ff
	rst $38                                          ; $4f72: $ff
	ld l, c                                          ; $4f73: $69
	sbc $db                                          ; $4f74: $de $db
	sbc [hl]                                         ; $4f76: $9e
	sbc a                                            ; $4f77: $9f
	adc [hl]                                         ; $4f78: $8e
	rrca                                             ; $4f79: $0f
	inc c                                            ; $4f7a: $0c
	rrca                                             ; $4f7b: $0f
	inc d                                            ; $4f7c: $14
	rlca                                             ; $4f7d: $07
	ld b, $07                                        ; $4f7e: $06 $07
	xor $ef                                          ; $4f80: $ee $ef
	add e                                            ; $4f82: $83
	rst $38                                          ; $4f83: $ff
	ld l, a                                          ; $4f84: $6f
	ld h, l                                          ; $4f85: $65
	ld l, a                                          ; $4f86: $6f
	cp $7f                                           ; $4f87: $fe $7f
	jp c, $3e7f                                      ; $4f89: $da $7f $3e

	rst SubAFromDE                                          ; $4f8c: $df
	rst AddAOntoHL                                          ; $4f8d: $ef
	sub e                                            ; $4f8e: $93
	ld b, d                                          ; $4f8f: $42
	jp $c342                                         ; $4f90: $c3 $42 $c3


	ld d, d                                          ; $4f93: $52
	jp $8191                                         ; $4f94: $c3 $91 $81


	adc b                                            ; $4f97: $88
	add b                                            ; $4f98: $80
	pop hl                                           ; $4f99: $e1
	ldh [$5f], a                                     ; $4f9a: $e0 $5f
	db $e4                                           ; $4f9c: $e4
	ld a, a                                          ; $4f9d: $7f
	ret c                                            ; $4f9e: $d8

	sbc h                                            ; $4f9f: $9c
	ret nz                                           ; $4fa0: $c0

	rst $38                                          ; $4fa1: $ff
	ldh a, [rSCY]                                    ; $4fa2: $f0 $42
	ldh [c], a                                       ; $4fa4: $e2
	adc a                                            ; $4fa5: $8f
	ld c, [hl]                                       ; $4fa6: $4e
	or b                                             ; $4fa7: $b0
	jr @-$1e                                         ; $4fa8: $18 $e0

	dec a                                            ; $4faa: $3d
	ret nz                                           ; $4fab: $c0

	ld [hl], l                                       ; $4fac: $75
	add b                                            ; $4fad: $80
	jr c, jr_012_4f70                                ; $4fae: $38 $c0

	dec l                                            ; $4fb0: $2d
	ret nz                                           ; $4fb1: $c0

	db $f4                                           ; $4fb2: $f4
	nop                                              ; $4fb3: $00
	ld a, [hl+]                                      ; $4fb4: $2a
	ret nz                                           ; $4fb5: $c0

	ld b, [hl]                                       ; $4fb6: $46
	or h                                             ; $4fb7: $b4
	sbc d                                            ; $4fb8: $9a
	call z, $f8ff                                    ; $4fb9: $cc $ff $f8
	ld a, a                                          ; $4fbc: $7f
	ldh a, [$7b]                                     ; $4fbd: $f0 $7b
	ld [hl], e                                       ; $4fbf: $73
	adc l                                            ; $4fc0: $8d
	ldh a, [$1f]                                     ; $4fc1: $f0 $1f
	ldh a, [$df]                                     ; $4fc3: $f0 $df
	ldh a, [$9f]                                     ; $4fc5: $f0 $9f
	ld hl, sp+$0f                                    ; $4fc7: $f8 $0f
	db $fd                                           ; $4fc9: $fd
	ld a, e                                          ; $4fca: $7b
	db $fd                                           ; $4fcb: $fd
	ei                                               ; $4fcc: $fb
	sbc a                                            ; $4fcd: $9f
	ld sp, hl                                        ; $4fce: $f9
	rst $38                                          ; $4fcf: $ff
	xor c                                            ; $4fd0: $a9
	rst $38                                          ; $4fd1: $ff
	add hl, de                                       ; $4fd2: $19
	ld a, e                                          ; $4fd3: $7b
	cp $8c                                           ; $4fd4: $fe $8c
	ld a, e                                          ; $4fd6: $7b
	rst $38                                          ; $4fd7: $ff
	ld e, $3f                                        ; $4fd8: $1e $3f
	ldh [$1f], a                                     ; $4fda: $e0 $1f
	ldh a, [$3f]                                     ; $4fdc: $f0 $3f
	rst AddAOntoHL                                          ; $4fde: $ef
	ld a, a                                          ; $4fdf: $7f
	ret nz                                           ; $4fe0: $c0

	rst $38                                          ; $4fe1: $ff
	add c                                            ; $4fe2: $81
	rst $38                                          ; $4fe3: $ff

Call_012_4fe4:
	ld [bc], a                                       ; $4fe4: $02
	rst $38                                          ; $4fe5: $ff
	ld b, d                                          ; $4fe6: $42
	rst $38                                          ; $4fe7: $ff
	add h                                            ; $4fe8: $84
	ld e, d                                          ; $4fe9: $5a
	sub [hl]                                         ; $4fea: $96
	add d                                            ; $4feb: $82
	rst $38                                          ; $4fec: $ff
	rlca                                             ; $4fed: $07
	db $fc                                           ; $4fee: $fc
	rra                                              ; $4fef: $1f
	ld hl, sp+$17                                    ; $4ff0: $f8 $17
	ldh [$79], a                                     ; $4ff2: $e0 $79
	add [hl]                                         ; $4ff4: $86
	ld d, e                                          ; $4ff5: $53
	xor h                                            ; $4ff6: $ac
	add e                                            ; $4ff7: $83
	ld a, h                                          ; $4ff8: $7c
	ld b, $f8                                        ; $4ff9: $06 $f8
	rrca                                             ; $4ffb: $0f
	ldh a, [rTMA]                                    ; $4ffc: $f0 $06
	ld hl, sp+$17                                    ; $4ffe: $f8 $17
	add sp, $3f                                      ; $5000: $e8 $3f
	ld de, $1b1f                                     ; $5002: $11 $1f $1b
	or a                                             ; $5005: $b7
	xor c                                            ; $5006: $a9
	rst $38                                          ; $5007: $ff
	pop bc                                           ; $5008: $c1
	ld a, e                                          ; $5009: $7b
	ret nc                                           ; $500a: $d0

	sub [hl]                                         ; $500b: $96
	ld bc, $837e                                     ; $500c: $01 $7e $83
	sbc d                                            ; $500f: $9a
	rst SubAFromBC                                          ; $5010: $e7
	rst GetHLinHL                                          ; $5011: $cf
	rst GetHLinHL                                          ; $5012: $cf
	ld a, a                                          ; $5013: $7f
	ld [hl], d                                       ; $5014: $72
	ld [hl], a                                       ; $5015: $77
	db $f4                                           ; $5016: $f4
	ld [hl], e                                       ; $5017: $73
	ld b, e                                          ; $5018: $43
	adc h                                            ; $5019: $8c
	rlca                                             ; $501a: $07
	rst $38                                          ; $501b: $ff
	rra                                              ; $501c: $1f
	ldh a, [$30]                                     ; $501d: $f0 $30
	db $fc                                           ; $501f: $fc
	jr @+$01                                         ; $5020: $18 $ff

	rrca                                             ; $5022: $0f
	rst FarCall                                          ; $5023: $f7
	adc [hl]                                         ; $5024: $8e
	rst $38                                          ; $5025: $ff
	add h                                            ; $5026: $84
	ld a, a                                          ; $5027: $7f
	ret z                                            ; $5028: $c8

	ld [hl], a                                       ; $5029: $77
	ret z                                            ; $502a: $c8

	ld a, a                                          ; $502b: $7f
	ret nz                                           ; $502c: $c0

	ld l, [hl]                                       ; $502d: $6e
	and [hl]                                         ; $502e: $a6
	ld e, a                                          ; $502f: $5f
	xor d                                            ; $5030: $aa
	add b                                            ; $5031: $80
	rlca                                             ; $5032: $07
	ld hl, sp-$63                                    ; $5033: $f8 $9d
	ld h, b                                          ; $5035: $60
	ld [hl-], a                                      ; $5036: $32
	ret nz                                           ; $5037: $c0

	db $ed                                           ; $5038: $ed
	nop                                              ; $5039: $00
	cp a                                             ; $503a: $bf
	ld b, b                                          ; $503b: $40
	jp c, $0f25                                      ; $503c: $da $25 $0f

	ldh a, [$0b]                                     ; $503f: $f0 $0b
	ldh a, [$d0]                                     ; $5041: $f0 $d0
	rra                                              ; $5043: $1f
	ret nc                                           ; $5044: $d0

	rra                                              ; $5045: $1f
	ret c                                            ; $5046: $d8

	rra                                              ; $5047: $1f
	db $fc                                           ; $5048: $fc
	and a                                            ; $5049: $a7
	ld a, [hl]                                       ; $504a: $7e
	ld h, e                                          ; $504b: $63
	ld e, [hl]                                       ; $504c: $5e
	ld d, e                                          ; $504d: $53
	ld e, [hl]                                       ; $504e: $5e
	ld d, e                                          ; $504f: $53
	cp $85                                           ; $5050: $fe $85
	di                                               ; $5052: $f3
	add [hl]                                         ; $5053: $86
	add e                                            ; $5054: $83
	call nz, $ffc7                                   ; $5055: $c4 $c7 $ff
	ld a, [hl]                                       ; $5058: $7e
	ld sp, hl                                        ; $5059: $f9
	ld a, c                                          ; $505a: $79
	ret nz                                           ; $505b: $c0

	ld b, d                                          ; $505c: $42
	ret nz                                           ; $505d: $c0

	ld a, b                                          ; $505e: $78
	ret nz                                           ; $505f: $c0

	ld b, h                                          ; $5060: $44
	call nz, $12c4                                   ; $5061: $c4 $c4 $12
	ldh a, [c]                                       ; $5064: $f2
	rra                                              ; $5065: $1f
	rst $38                                          ; $5066: $ff
	db $10                                           ; $5067: $10
	ldh a, [rAUD3HIGH]                               ; $5068: $f0 $1e
	cp $0f                                           ; $506a: $fe $0f
	ld l, e                                          ; $506c: $6b
	ret nz                                           ; $506d: $c0

	sub [hl]                                         ; $506e: $96
	ld [hl-], a                                      ; $506f: $32
	inc de                                           ; $5070: $13
	xor $ef                                          ; $5071: $ee $ef

Jump_012_5073:
	inc e                                            ; $5073: $1c
	rra                                              ; $5074: $1f
	inc h                                            ; $5075: $24
	daa                                              ; $5076: $27
	ld hl, sp+$62                                    ; $5077: $f8 $62
	adc $4d                                          ; $5079: $ce $4d
	xor [hl]                                         ; $507b: $ae
	rst SubAFromDE                                          ; $507c: $df
	rra                                              ; $507d: $1f
	rst SubAFromDE                                          ; $507e: $df
	ret nz                                           ; $507f: $c0

	sbc h                                            ; $5080: $9c
	ld e, [hl]                                       ; $5081: $5e
	sbc $71                                          ; $5082: $de $71
	ld h, e                                          ; $5084: $63
	ld [$d47f], a                                    ; $5085: $ea $7f $d4
	sbc b                                            ; $5088: $98
	db $e4                                           ; $5089: $e4
	rst SubAFromBC                                          ; $508a: $e7
	jr @+$21                                         ; $508b: $18 $1f

	jr c, jr_012_50ce                                ; $508d: $38 $3f

	ret nz                                           ; $508f: $c0

	add hl, sp                                       ; $5090: $39
	and [hl]                                         ; $5091: $a6
	ld a, [hl]                                       ; $5092: $7e
	xor [hl]                                         ; $5093: $ae
	ld d, [hl]                                       ; $5094: $56
	add h                                            ; $5095: $84
	sub l                                            ; $5096: $95
	ld a, a                                          ; $5097: $7f
	rst $38                                          ; $5098: $ff
	rst $38                                          ; $5099: $ff
	add c                                            ; $509a: $81
	ldh a, [$0e]                                     ; $509b: $f0 $0e
	rra                                              ; $509d: $1f

Call_012_509e:
	or $3f                                           ; $509e: $f6 $3f
	ld sp, hl                                        ; $50a0: $f9
	halt                                             ; $50a1: $76
	sbc c                                            ; $50a2: $99
	sub a                                            ; $50a3: $97
	sbc [hl]                                         ; $50a4: $9e
	ld h, c                                          ; $50a5: $61
	rst AddAOntoHL                                          ; $50a6: $ef
	ld e, $ff                                        ; $50a7: $1e $ff
	rrca                                             ; $50a9: $0f
	ld sp, hl                                        ; $50aa: $f9
	jr @+$69                                         ; $50ab: $18 $67

	sbc d                                            ; $50ad: $9a
	ld l, l                                          ; $50ae: $6d
	call c, $fe7f                                    ; $50af: $dc $7f $fe
	ld h, a                                          ; $50b2: $67
	jp nc, $e67d                                     ; $50b3: $d2 $7d $e6

	sbc c                                            ; $50b6: $99
	add $39                                          ; $50b7: $c6 $39
	inc c                                            ; $50b9: $0c
	di                                               ; $50ba: $f3
	ld bc, $67fe                                     ; $50bb: $01 $fe $67
	cp [hl]                                          ; $50be: $be
	ld a, d                                          ; $50bf: $7a
	ld h, d                                          ; $50c0: $62
	ld a, [hl]                                       ; $50c1: $7e
	sbc b                                            ; $50c2: $98
	adc h                                            ; $50c3: $8c
	rst $38                                          ; $50c4: $ff
	ret nc                                           ; $50c5: $d0

	sbc a                                            ; $50c6: $9f
	rst $38                                          ; $50c7: $ff
	ld c, $f9                                        ; $50c8: $0e $f9
	ld a, c                                          ; $50ca: $79
	rst $38                                          ; $50cb: $ff
	add a                                            ; $50cc: $87
	db $fd                                           ; $50cd: $fd

jr_012_50ce:
	ld hl, $d8de                                     ; $50ce: $21 $de $d8
	rst $38                                          ; $50d1: $ff
	cp h                                             ; $50d2: $bc
	sub e                                            ; $50d3: $93
	sub e                                            ; $50d4: $93
	sbc e                                            ; $50d5: $9b
	sbc e                                            ; $50d6: $9b
	ld a, d                                          ; $50d7: $7a
	and b                                            ; $50d8: $a0
	sbc l                                            ; $50d9: $9d
	ld hl, sp+$07                                    ; $50da: $f8 $07
	ld a, c                                          ; $50dc: $79
	call $fe7f                                       ; $50dd: $cd $7f $fe
	sbc h                                            ; $50e0: $9c
	inc e                                            ; $50e1: $1c
	ldh a, [rAUD3HIGH]                               ; $50e2: $f0 $1e
	ld a, e                                          ; $50e4: $7b
	cp $25                                           ; $50e5: $fe $25
	ld [bc], a                                       ; $50e7: $02
	ld [hl], d                                       ; $50e8: $72
	db $e4                                           ; $50e9: $e4
	sbc l                                            ; $50ea: $9d
	rst $38                                          ; $50eb: $ff
	cpl                                              ; $50ec: $2f
	ld a, c                                          ; $50ed: $79
	ld [hl+], a                                      ; $50ee: $22
	ld h, e                                          ; $50ef: $63
	cp $72                                           ; $50f0: $fe $72
	inc a                                            ; $50f2: $3c
	ld d, c                                          ; $50f3: $51
	nop                                              ; $50f4: $00
	sbc [hl]                                         ; $50f5: $9e
	inc bc                                           ; $50f6: $03
	call c, $9e02                                    ; $50f7: $dc $02 $9e
	ld bc, $02dd                                     ; $50fa: $01 $dd $02
	ld [hl], a                                       ; $50fd: $77
	push af                                          ; $50fe: $f5
	sbc d                                            ; $50ff: $9a
	ld [hl-], a                                      ; $5100: $32
	ld [bc], a                                       ; $5101: $02
	ld sp, $2829                                     ; $5102: $31 $29 $28
	sbc $02                                          ; $5105: $de $02
	add b                                            ; $5107: $80
	jr nc, jr_012_5139                               ; $5108: $30 $2f

	ld l, $2d                                        ; $510a: $2e $2d
	inc l                                            ; $510c: $2c
	ld [bc], a                                       ; $510d: $02
	ld [bc], a                                       ; $510e: $02
	dec hl                                           ; $510f: $2b
	ld a, [hl+]                                      ; $5110: $2a
	ld [hl+], a                                      ; $5111: $22
	ld hl, $0220                                     ; $5112: $21 $20 $02
	ld bc, $1e1f                                     ; $5115: $01 $1f $1e
	dec e                                            ; $5118: $1d
	inc e                                            ; $5119: $1c
	dec de                                           ; $511a: $1b
	ld [bc], a                                       ; $511b: $02
	ld [bc], a                                       ; $511c: $02
	ld a, [de]                                       ; $511d: $1a
	add hl, de                                       ; $511e: $19
	jr jr_012_5138                                   ; $511f: $18 $17

	dec d                                            ; $5121: $15
	ld [bc], a                                       ; $5122: $02
	inc d                                            ; $5123: $14
	ld c, $0d                                        ; $5124: $0e $0d
	inc c                                            ; $5126: $0c
	adc b                                            ; $5127: $88
	dec bc                                           ; $5128: $0b
	ld a, [bc]                                       ; $5129: $0a
	ld [bc], a                                       ; $512a: $02
	add hl, bc                                       ; $512b: $09
	ld [$0607], sp                                   ; $512c: $08 $07 $06
	dec b                                            ; $512f: $05
	inc b                                            ; $5130: $04
	ld [bc], a                                       ; $5131: $02
	nop                                              ; $5132: $00
	rrca                                             ; $5133: $0f
	db $10                                           ; $5134: $10
	ld de, $1312                                     ; $5135: $11 $12 $13

jr_012_5138:
	ld [bc], a                                       ; $5138: $02

jr_012_5139:
	ld [bc], a                                       ; $5139: $02
	inc hl                                           ; $513a: $23
	inc h                                            ; $513b: $24
	dec h                                            ; $513c: $25
	ld h, $27                                        ; $513d: $26 $27
	ld [hl], e                                       ; $513f: $73
	cp a                                             ; $5140: $bf
	sbc l                                            ; $5141: $9d
	ld d, $02                                        ; $5142: $16 $02
	ld h, $00                                        ; $5144: $26 $00
	reti                                             ; $5146: $d9


	inc sp                                           ; $5147: $33
	adc a                                            ; $5148: $8f
	inc [hl]                                         ; $5149: $34
	ld b, h                                          ; $514a: $44
	inc sp                                           ; $514b: $33
	dec [hl]                                         ; $514c: $35
	ld b, [hl]                                       ; $514d: $46
	ld b, e                                          ; $514e: $43
	inc sp                                           ; $514f: $33
	ld d, [hl]                                       ; $5150: $56
	ld h, h                                          ; $5151: $64
	inc sp                                           ; $5152: $33
	inc [hl]                                         ; $5153: $34
	ld h, h                                          ; $5154: $64
	ld h, e                                          ; $5155: $63
	inc sp                                           ; $5156: $33
	ld b, h                                          ; $5157: $44
	ld b, l                                          ; $5158: $45
	ld a, e                                          ; $5159: $7b
	db $fd                                           ; $515a: $fd
	sub e                                            ; $515b: $93
	ld b, e                                          ; $515c: $43
	inc [hl]                                         ; $515d: $34
	ld b, [hl]                                       ; $515e: $46
	ld b, h                                          ; $515f: $44
	inc sp                                           ; $5160: $33
	ld [hl], $64                                     ; $5161: $36 $64
	ld h, [hl]                                       ; $5163: $66
	inc sp                                           ; $5164: $33
	ld h, [hl]                                       ; $5165: $66
	ld b, [hl]                                       ; $5166: $46
	ld h, e                                          ; $5167: $63
	sbc $33                                          ; $5168: $de $33
	ld b, e                                          ; $516a: $43
	ld [bc], a                                       ; $516b: $02
	sbc c                                            ; $516c: $99
	call z, $f87f                                    ; $516d: $cc $7f $f8
	rst $38                                          ; $5170: $ff
	ldh a, [$3f]                                     ; $5171: $f0 $3f
	ld a, e                                          ; $5173: $7b
	cp $96                                           ; $5174: $fe $96
	rra                                              ; $5176: $1f
	ldh a, [$df]                                     ; $5177: $f0 $df
	ldh a, [$9f]                                     ; $5179: $f0 $9f
	ld hl, sp+$0f                                    ; $517b: $f8 $0f
	nop                                              ; $517d: $00
	rst $38                                          ; $517e: $ff
	ld c, a                                          ; $517f: $4f
	cp $98                                           ; $5180: $fe $98
	ccf                                              ; $5182: $3f
	ldh [$1f], a                                     ; $5183: $e0 $1f
	ld hl, sp+$07                                    ; $5185: $f8 $07
	rst $38                                          ; $5187: $ff
	rrca                                             ; $5188: $0f
	ld a, e                                          ; $5189: $7b
	cp $9c                                           ; $518a: $fe $9c
	inc e                                            ; $518c: $1c
	ldh a, [rAUD3HIGH]                               ; $518d: $f0 $1e
	ld a, e                                          ; $518f: $7b
	cp $8e                                           ; $5190: $fe $8e
	rst $38                                          ; $5192: $ff
	ld c, $f9                                        ; $5193: $0e $f9
	ld a, c                                          ; $5195: $79
	rst $38                                          ; $5196: $ff
	add a                                            ; $5197: $87
	db $fd                                           ; $5198: $fd
	ld hl, $d8de                                     ; $5199: $21 $de $d8
	rst $38                                          ; $519c: $ff
	cp h                                             ; $519d: $bc
	sub e                                            ; $519e: $93
	sub e                                            ; $519f: $93
	sbc e                                            ; $51a0: $9b
	sbc e                                            ; $51a1: $9b
	add b                                            ; $51a2: $80
	ld l, e                                          ; $51a3: $6b
	ret c                                            ; $51a4: $d8

	ld a, a                                          ; $51a5: $7f
	ld hl, sp-$66                                    ; $51a6: $f8 $9a
	ret nz                                           ; $51a8: $c0

	ld a, a                                          ; $51a9: $7f
	and b                                            ; $51aa: $a0
	rst $38                                          ; $51ab: $ff
	ldh a, [rOCPD]                                   ; $51ac: $f0 $6b
	ldh a, [c]                                       ; $51ae: $f2
	sbc e                                            ; $51af: $9b
	ld bc, $03ff                                     ; $51b0: $01 $ff $03
	cp $6f                                           ; $51b3: $fe $6f
	cp $93                                           ; $51b5: $fe $93
	rra                                              ; $51b7: $1f
	or $3f                                           ; $51b8: $f6 $3f
	ld sp, hl                                        ; $51ba: $f9
	rst $38                                          ; $51bb: $ff
	rst FarCall                                          ; $51bc: $f7
	rst $38                                          ; $51bd: $ff
	inc e                                            ; $51be: $1c
	rst $38                                          ; $51bf: $ff
	jr nc, @+$01                                     ; $51c0: $30 $ff

	ld b, b                                          ; $51c2: $40
	ld [hl], a                                       ; $51c3: $77
	push hl                                          ; $51c4: $e5
	sbc l                                            ; $51c5: $9d
	add [hl]                                         ; $51c6: $86
	add e                                            ; $51c7: $83
	sbc $ff                                          ; $51c8: $de $ff
	ld [hl], a                                       ; $51ca: $77
	reti                                             ; $51cb: $d9


	ld a, a                                          ; $51cc: $7f
	db $dd                                           ; $51cd: $dd
	adc [hl]                                         ; $51ce: $8e
	ld hl, $42ff                                     ; $51cf: $21 $ff $42
	rst $38                                          ; $51d2: $ff
	add h                                            ; $51d3: $84
	ret c                                            ; $51d4: $d8

	rst SubAFromDE                                          ; $51d5: $df
	adc h                                            ; $51d6: $8c
	adc a                                            ; $51d7: $8f
	call nz, $f4c7                                   ; $51d8: $c4 $c7 $f4
	scf                                              ; $51db: $37
	cp $1b                                           ; $51dc: $fe $1b
	cp $0b                                           ; $51de: $fe $0b
	ld a, e                                          ; $51e0: $7b
	cp $9e                                           ; $51e1: $fe $9e
	inc de                                           ; $51e3: $13
	ld [hl], a                                       ; $51e4: $77
	call z, $e57f                                    ; $51e5: $cc $7f $e5
	ld e, a                                          ; $51e8: $5f
	add b                                            ; $51e9: $80
	ld a, e                                          ; $51ea: $7b
	ret c                                            ; $51eb: $d8

	add b                                            ; $51ec: $80
	ld [bc], a                                       ; $51ed: $02
	rst $38                                          ; $51ee: $ff
	dec b                                            ; $51ef: $05
	rst $38                                          ; $51f0: $ff
	adc a                                            ; $51f1: $8f
	ld a, [hl]                                       ; $51f2: $7e
	jp c, $e43c                                      ; $51f3: $da $3c $e4

	inc a                                            ; $51f6: $3c
	db $e4                                           ; $51f7: $e4
	ld e, $f2                                        ; $51f8: $1e $f2
	rst $38                                          ; $51fa: $ff
	dec bc                                           ; $51fb: $0b
	rst $38                                          ; $51fc: $ff
	ccf                                              ; $51fd: $3f
	pop af                                           ; $51fe: $f1
	pop de                                           ; $51ff: $d1
	ccf                                              ; $5200: $3f
	ld a, $1f                                        ; $5201: $3e $1f
	jr @+$11                                         ; $5203: $18 $0f

	ld [$080f], sp                                   ; $5205: $08 $0f $08
	sbc a                                            ; $5208: $9f
	sub b                                            ; $5209: $90
	rst $38                                          ; $520a: $ff
	pop hl                                           ; $520b: $e1
	sbc l                                            ; $520c: $9d
	rst $38                                          ; $520d: $ff
	ld c, e                                          ; $520e: $4b
	ld a, e                                          ; $520f: $7b
	db $fc                                           ; $5210: $fc
	ld a, a                                          ; $5211: $7f
	jp c, $fe7b                                      ; $5212: $da $7b $fe

	ld a, a                                          ; $5215: $7f
	push bc                                          ; $5216: $c5
	sbc l                                            ; $5217: $9d
	ld a, [$5f07]                                    ; $5218: $fa $07 $5f
	add $8f                                          ; $521b: $c6 $8f
	inc bc                                           ; $521d: $03
	rst $38                                          ; $521e: $ff
	rlca                                             ; $521f: $07
	db $fc                                           ; $5220: $fc
	rra                                              ; $5221: $1f
	ld hl, sp+$1f                                    ; $5222: $f8 $1f
	di                                               ; $5224: $f3
	rra                                              ; $5225: $1f
	ldh a, [$3f]                                     ; $5226: $f0 $3f
	pop hl                                           ; $5228: $e1
	ld a, a                                          ; $5229: $7f
	ret nz                                           ; $522a: $c0

	rst $38                                          ; $522b: $ff
	add c                                            ; $522c: $81
	ld a, e                                          ; $522d: $7b
	cp b                                             ; $522e: $b8
	ld a, e                                          ; $522f: $7b
	sub b                                            ; $5230: $90
	sub l                                            ; $5231: $95
	rst $38                                          ; $5232: $ff
	cp $fd                                           ; $5233: $fe $fd
	ei                                               ; $5235: $fb
	sbc a                                            ; $5236: $9f
	ld sp, hl                                        ; $5237: $f9
	rst $38                                          ; $5238: $ff
	xor c                                            ; $5239: $a9
	rst $38                                          ; $523a: $ff
	add hl, de                                       ; $523b: $19
	ld a, e                                          ; $523c: $7b
	cp $98                                           ; $523d: $fe $98
	ld a, e                                          ; $523f: $7b
	rst $38                                          ; $5240: $ff
	ld e, $00                                        ; $5241: $1e $00
	rst $38                                          ; $5243: $ff
	inc b                                            ; $5244: $04
	ei                                               ; $5245: $fb
	ld b, a                                          ; $5246: $47
	inc c                                            ; $5247: $0c
	ccf                                              ; $5248: $3f
	cp $9d                                           ; $5249: $fe $9d
	ld [$67f7], sp                                   ; $524b: $08 $f7 $67
	or $96                                           ; $524e: $f6 $96
	inc e                                            ; $5250: $1c
	rra                                              ; $5251: $1f
	db $e4                                           ; $5252: $e4
	rst SubAFromBC                                          ; $5253: $e7
	jr @+$21                                         ; $5254: $18 $1f

	jr c, jr_012_5297                                ; $5256: $38 $3f

	ret nz                                           ; $5258: $c0

	ld l, e                                          ; $5259: $6b
	ldh a, [$df]                                     ; $525a: $f0 $df
	rra                                              ; $525c: $1f
	rst SubAFromDE                                          ; $525d: $df
	ret nz                                           ; $525e: $c0

	sbc h                                            ; $525f: $9c
	ld e, [hl]                                       ; $5260: $5e
	sbc $71                                          ; $5261: $de $71
	ld a, e                                          ; $5263: $7b
	add c                                            ; $5264: $81
	ld h, a                                          ; $5265: $67
	ld b, $57                                        ; $5266: $06 $57
	ld b, d                                          ; $5268: $42
	ccf                                              ; $5269: $3f
	cp h                                             ; $526a: $bc
	sub [hl]                                         ; $526b: $96
	ld [hl-], a                                      ; $526c: $32
	inc de                                           ; $526d: $13
	xor $ef                                          ; $526e: $ee $ef
	inc e                                            ; $5270: $1c
	rra                                              ; $5271: $1f
	inc h                                            ; $5272: $24
	daa                                              ; $5273: $27
	ld hl, sp+$6b                                    ; $5274: $f8 $6b
	ld [$1296], a                                    ; $5276: $ea $96 $12
	ldh a, [c]                                       ; $5279: $f2
	rra                                              ; $527a: $1f
	rst $38                                          ; $527b: $ff
	db $10                                           ; $527c: $10
	ldh a, [rAUD3HIGH]                               ; $527d: $f0 $1e
	cp $0f                                           ; $527f: $fe $0f
	ld b, e                                          ; $5281: $43
	ret nc                                           ; $5282: $d0

	ld a, d                                          ; $5283: $7a
	xor [hl]                                         ; $5284: $ae
	ld a, d                                          ; $5285: $7a
	rst SubAFromHL                                          ; $5286: $d7
	adc [hl]                                         ; $5287: $8e
	rst $38                                          ; $5288: $ff
	ld e, e                                          ; $5289: $5b
	rst AddAOntoHL                                          ; $528a: $ef
	rst AddAOntoHL                                          ; $528b: $ef
	ld b, d                                          ; $528c: $42
	jp $c342                                         ; $528d: $c3 $42 $c3


	ld d, d                                          ; $5290: $52
	jp $8191                                         ; $5291: $c3 $91 $81


	adc b                                            ; $5294: $88
	add b                                            ; $5295: $80
	pop hl                                           ; $5296: $e1

jr_012_5297:
	ldh [hDisp0_SCY], a                                     ; $5297: $e0 $83
	ld a, e                                          ; $5299: $7b
	add sp, $5f                                      ; $529a: $e8 $5f
	call c, $947f                                    ; $529c: $dc $7f $94
	adc d                                            ; $529f: $8a
	rst $38                                          ; $52a0: $ff
	ld l, c                                          ; $52a1: $69
	sbc $db                                          ; $52a2: $de $db
	sbc [hl]                                         ; $52a4: $9e
	sbc a                                            ; $52a5: $9f
	adc [hl]                                         ; $52a6: $8e
	rrca                                             ; $52a7: $0f
	inc c                                            ; $52a8: $0c
	rrca                                             ; $52a9: $0f
	inc d                                            ; $52aa: $14
	rlca                                             ; $52ab: $07
	ld b, $07                                        ; $52ac: $06 $07
	xor $ef                                          ; $52ae: $ee $ef
	db $ed                                           ; $52b0: $ed
	ccf                                              ; $52b1: $3f
	rst AddAOntoHL                                          ; $52b2: $ef
	cp a                                             ; $52b3: $bf
	ret                                              ; $52b4: $c9


	ld [hl], e                                       ; $52b5: $73
	ld a, d                                          ; $52b6: $7a
	sbc d                                            ; $52b7: $9a
	ld [bc], a                                       ; $52b8: $02
	cp $04                                           ; $52b9: $fe $04
	db $fc                                           ; $52bb: $fc
	rrca                                             ; $52bc: $0f
	inc hl                                           ; $52bd: $23
	ld [hl], d                                       ; $52be: $72
	ld a, e                                          ; $52bf: $7b
	cp $73                                           ; $52c0: $fe $73
	ld [hl], b                                       ; $52c2: $70
	sbc l                                            ; $52c3: $9d
	inc bc                                           ; $52c4: $03
	db $fc                                           ; $52c5: $fc
	ld a, e                                          ; $52c6: $7b
	cp d                                             ; $52c7: $ba
	sbc [hl]                                         ; $52c8: $9e
	cp $2f                                           ; $52c9: $fe $2f
	sbc $7e                                          ; $52cb: $de $7e
	ld [$2f9e], sp                                   ; $52cd: $08 $9e $2f
	ld a, e                                          ; $52d0: $7b
	ldh [c], a                                       ; $52d1: $e2
	ld h, a                                          ; $52d2: $67
	cp $99                                           ; $52d3: $fe $99
	ld a, a                                          ; $52d5: $7f
	rst $38                                          ; $52d6: $ff
	rst $38                                          ; $52d7: $ff
	add c                                            ; $52d8: $81
	ldh a, [$0e]                                     ; $52d9: $f0 $0e
	ld c, a                                          ; $52db: $4f
	ld e, [hl]                                       ; $52dc: $5e
	ld a, a                                          ; $52dd: $7f
	cp $9b                                           ; $52de: $fe $9b
	or $07                                           ; $52e0: $f6 $07
	cp $83                                           ; $52e2: $fe $83
	ld a, d                                          ; $52e4: $7a
	ld c, l                                          ; $52e5: $4d
	ld a, d                                          ; $52e6: $7a
	ld b, h                                          ; $52e7: $44
	ld a, d                                          ; $52e8: $7a
	ld a, b                                          ; $52e9: $78
	ld a, a                                          ; $52ea: $7f
	cp $9a                                           ; $52eb: $fe $9a
	ld e, e                                          ; $52ed: $5b
	jp $c37f                                         ; $52ee: $c3 $7f $c3


	ld a, [hl]                                       ; $52f1: $7e
	ld [hl], a                                       ; $52f2: $77
	cp $7f                                           ; $52f3: $fe $7f
	db $eb                                           ; $52f5: $eb
	ld l, a                                          ; $52f6: $6f
	cp $98                                           ; $52f7: $fe $98
	rst SubAFromDE                                          ; $52f9: $df
	ldh [$bf], a                                     ; $52fa: $e0 $bf
	ret nz                                           ; $52fc: $c0

	ld a, a                                          ; $52fd: $7f
	add b                                            ; $52fe: $80
	ld a, a                                          ; $52ff: $7f
	ld l, a                                          ; $5300: $6f
	ld c, e                                          ; $5301: $4b
	adc h                                            ; $5302: $8c
	jr nz, @+$01                                     ; $5303: $20 $ff

	add hl, hl                                       ; $5305: $29
	cp $07                                           ; $5306: $fe $07
	db $fc                                           ; $5308: $fc
	rlca                                             ; $5309: $07
	ld sp, hl                                        ; $530a: $f9
	rrca                                             ; $530b: $0f
	ld sp, hl                                        ; $530c: $f9
	rra                                              ; $530d: $1f
	pop af                                           ; $530e: $f1
	rra                                              ; $530f: $1f
	ldh a, [c]                                       ; $5310: $f2
	rra                                              ; $5311: $1f
	push af                                          ; $5312: $f5
	ld a, $e5                                        ; $5313: $3e $e5
	ld a, $77                                        ; $5315: $3e $77
	ld d, [hl]                                       ; $5317: $56
	ld l, l                                          ; $5318: $6d
	sub $72                                          ; $5319: $d6 $72
	dec a                                            ; $531b: $3d
	add l                                            ; $531c: $85
	rst $38                                          ; $531d: $ff
	ld [hl], $c0                                     ; $531e: $36 $c0
	dec a                                            ; $5320: $3d
	ret nz                                           ; $5321: $c0

	ld e, a                                          ; $5322: $5f
	and b                                            ; $5323: $a0
	ld e, $e0                                        ; $5324: $1e $e0
	rla                                              ; $5326: $17
	add sp, $2b                                      ; $5327: $e8 $2b
	call nc, $f20d                                   ; $5329: $d4 $0d $f2
	ld [bc], a                                       ; $532c: $02
	db $fd                                           ; $532d: $fd
	ld hl, sp+$0f                                    ; $532e: $f8 $0f
	ld hl, sp-$71                                    ; $5330: $f8 $8f
	ld hl, sp-$31                                    ; $5332: $f8 $cf
	ld hl, sp+$4f                                    ; $5334: $f8 $4f
	db $fc                                           ; $5336: $fc
	ld a, e                                          ; $5337: $7b
	ret z                                            ; $5338: $c8

	sbc e                                            ; $5339: $9b
	db $f4                                           ; $533a: $f4
	rlca                                             ; $533b: $07
	ld a, [$6703]                                    ; $533c: $fa $03 $67
	add h                                            ; $533f: $84
	ld a, a                                          ; $5340: $7f
	and $97                                          ; $5341: $e6 $97
	add $39                                          ; $5343: $c6 $39
	inc c                                            ; $5345: $0c

jr_012_5346:
	di                                               ; $5346: $f3
	ld bc, $fffe                                     ; $5347: $01 $fe $ff
	ccf                                              ; $534a: $3f
	ld a, c                                          ; $534b: $79
	ld h, l                                          ; $534c: $65
	adc h                                            ; $534d: $8c
	ld c, $ff                                        ; $534e: $0e $ff
	ld c, $fb                                        ; $5350: $0e $fb
	ld e, $f3                                        ; $5352: $1e $f3
	ld a, $e3                                        ; $5354: $3e $e3
	ld a, a                                          ; $5356: $7f
	jp Jump_012_7fff                                 ; $5357: $c3 $ff $7f


	inc b                                            ; $535a: $04
	rst $38                                          ; $535b: $ff
	ld [$18ff], sp                                   ; $535c: $08 $ff $18
	rst FarCall                                          ; $535f: $f7

jr_012_5360:
	jr jr_012_53db                                   ; $5360: $18 $79

	sub b                                            ; $5362: $90
	sbc e                                            ; $5363: $9b
	ld [hl], b                                       ; $5364: $70
	rst $38                                          ; $5365: $ff
	ldh a, [$2f]                                     ; $5366: $f0 $2f
	ld a, d                                          ; $5368: $7a
	inc b                                            ; $5369: $04
	sbc c                                            ; $536a: $99
	ld a, [hl]                                       ; $536b: $7e
	jp nz, $c47d                                     ; $536c: $c2 $7d $c4

	dec sp                                           ; $536f: $3b
	add sp, $79                                      ; $5370: $e8 $79
	dec e                                            ; $5372: $1d
	sbc d                                            ; $5373: $9a
	ldh [$7f], a                                     ; $5374: $e0 $7f
	pop bc                                           ; $5376: $c1
	rst $38                                          ; $5377: $ff
	add e                                            ; $5378: $83
	ld b, a                                          ; $5379: $47
	inc e                                            ; $537a: $1c
	add b                                            ; $537b: $80
	ld c, [hl]                                       ; $537c: $4e
	or b                                             ; $537d: $b0
	jr jr_012_5360                                   ; $537e: $18 $e0

	dec a                                            ; $5380: $3d
	ret nz                                           ; $5381: $c0

	ld [hl], l                                       ; $5382: $75
	add b                                            ; $5383: $80
	jr c, jr_012_5346                                ; $5384: $38 $c0

	dec l                                            ; $5386: $2d
	ret nz                                           ; $5387: $c0

	db $f4                                           ; $5388: $f4
	nop                                              ; $5389: $00
	ld a, [hl+]                                      ; $538a: $2a
	ret nz                                           ; $538b: $c0

	rla                                              ; $538c: $17
	ldh [$79], a                                     ; $538d: $e0 $79
	add [hl]                                         ; $538f: $86
	ld d, e                                          ; $5390: $53
	xor h                                            ; $5391: $ac
	add e                                            ; $5392: $83
	ld a, h                                          ; $5393: $7c
	ld b, $f8                                        ; $5394: $06 $f8
	rrca                                             ; $5396: $0f
	ldh a, [rTMA]                                    ; $5397: $f0 $06
	ld hl, sp+$17                                    ; $5399: $f8 $17
	adc [hl]                                         ; $539b: $8e
	add sp, $07                                      ; $539c: $e8 $07
	ld hl, sp-$63                                    ; $539e: $f8 $9d
	ld h, b                                          ; $53a0: $60
	ld [hl-], a                                      ; $53a1: $32
	ret nz                                           ; $53a2: $c0

	db $ed                                           ; $53a3: $ed
	nop                                              ; $53a4: $00
	cp a                                             ; $53a5: $bf
	ld b, b                                          ; $53a6: $40
	jp c, $0f25                                      ; $53a7: $da $25 $0f

	ldh a, [$0b]                                     ; $53aa: $f0 $0b
	ldh a, [rHDMA1]                                  ; $53ac: $f0 $51
	nop                                              ; $53ae: $00
	sbc [hl]                                         ; $53af: $9e
	db $10                                           ; $53b0: $10
	call c, $9e11                                    ; $53b1: $dc $11 $9e
	ld d, $dd                                        ; $53b4: $16 $dd
	ld de, $f577                                     ; $53b6: $11 $77 $f5
	sbc d                                            ; $53b9: $9a
	rra                                              ; $53ba: $1f
	ld de, $2221                                     ; $53bb: $11 $21 $22
	inc hl                                           ; $53be: $23
	sbc $11                                          ; $53bf: $de $11
	add b                                            ; $53c1: $80
	ld bc, $0302                                     ; $53c2: $01 $02 $03
	inc b                                            ; $53c5: $04
	dec hl                                           ; $53c6: $2b
	ld de, $0511                                     ; $53c7: $11 $11 $05
	ld b, $07                                        ; $53ca: $06 $07
	ld [$1132], sp                                   ; $53cc: $08 $32 $11
	ld d, $09                                        ; $53cf: $16 $09
	ld a, [bc]                                       ; $53d1: $0a
	dec bc                                           ; $53d2: $0b
	inc c                                            ; $53d3: $0c
	ld sp, $1111                                     ; $53d4: $31 $11 $11
	dec c                                            ; $53d7: $0d
	ld c, $0f                                        ; $53d8: $0e $0f
	nop                                              ; $53da: $00

jr_012_53db:
	jr nc, jr_012_53ee                               ; $53db: $30 $11

	cpl                                              ; $53dd: $2f
	ld l, $2d                                        ; $53de: $2e $2d
	inc l                                            ; $53e0: $2c
	adc b                                            ; $53e1: $88
	ld a, [hl+]                                      ; $53e2: $2a
	add hl, hl                                       ; $53e3: $29
	ld de, $2728                                     ; $53e4: $11 $28 $27
	ld h, $25                                        ; $53e7: $26 $25
	inc h                                            ; $53e9: $24
	jr nz, jr_012_53fd                               ; $53ea: $20 $11

	ld e, $1d                                        ; $53ec: $1e $1d

jr_012_53ee:
	inc e                                            ; $53ee: $1c
	dec de                                           ; $53ef: $1b
	ld a, [de]                                       ; $53f0: $1a
	add hl, de                                       ; $53f1: $19
	ld de, $1811                                     ; $53f2: $11 $11 $18
	rla                                              ; $53f5: $17
	dec d                                            ; $53f6: $15
	inc d                                            ; $53f7: $14
	inc de                                           ; $53f8: $13
	ld [hl], e                                       ; $53f9: $73
	cp a                                             ; $53fa: $bf
	sbc l                                            ; $53fb: $9d
	ld [de], a                                       ; $53fc: $12

jr_012_53fd:
	ld de, $0026                                     ; $53fd: $11 $26 $00
	reti                                             ; $5400: $d9


	inc sp                                           ; $5401: $33
	adc a                                            ; $5402: $8f
	inc [hl]                                         ; $5403: $34
	ld b, h                                          ; $5404: $44
	inc sp                                           ; $5405: $33
	dec [hl]                                         ; $5406: $35
	ld b, [hl]                                       ; $5407: $46
	ld b, e                                          ; $5408: $43
	inc sp                                           ; $5409: $33
	ld d, [hl]                                       ; $540a: $56
	ld h, [hl]                                       ; $540b: $66
	inc sp                                           ; $540c: $33
	inc [hl]                                         ; $540d: $34
	ld h, [hl]                                       ; $540e: $66
	ld h, e                                          ; $540f: $63
	inc sp                                           ; $5410: $33
	ld b, h                                          ; $5411: $44
	ld b, l                                          ; $5412: $45
	ld a, e                                          ; $5413: $7b
	db $fd                                           ; $5414: $fd
	sub e                                            ; $5415: $93
	ld b, e                                          ; $5416: $43
	inc [hl]                                         ; $5417: $34
	ld b, [hl]                                       ; $5418: $46
	ld b, h                                          ; $5419: $44
	inc sp                                           ; $541a: $33
	ld [hl], $64                                     ; $541b: $36 $64
	ld h, [hl]                                       ; $541d: $66
	inc sp                                           ; $541e: $33
	ld h, [hl]                                       ; $541f: $66
	ld b, [hl]                                       ; $5420: $46
	ld h, e                                          ; $5421: $63
	sbc $33                                          ; $5422: $de $33
	ld c, a                                          ; $5424: $4f
	ld [bc], a                                       ; $5425: $02
	sbc l                                            ; $5426: $9d
	nop                                              ; $5427: $00
	rst $38                                          ; $5428: $ff
	rra                                              ; $5429: $1f
	cp $9c                                           ; $542a: $fe $9c
	inc bc                                           ; $542c: $03
	rst $38                                          ; $542d: $ff
	rlca                                             ; $542e: $07
	ld d, e                                          ; $542f: $53
	ldh a, [$9b]                                     ; $5430: $f0 $9b
	ret nz                                           ; $5432: $c0

	rst $38                                          ; $5433: $ff
	ld a, b                                          ; $5434: $78
	ld a, a                                          ; $5435: $7f
	rla                                              ; $5436: $17
	ret nc                                           ; $5437: $d0

	ld a, a                                          ; $5438: $7f
	jp nc, $2f9d                                     ; $5439: $d2 $9d $2f

	db $fc                                           ; $543c: $fc
	ld e, a                                          ; $543d: $5f
	ldh a, [c]                                       ; $543e: $f2
	sbc c                                            ; $543f: $99
	ld a, a                                          ; $5440: $7f
	rst $38                                          ; $5441: $ff
	rst $38                                          ; $5442: $ff
	add c                                            ; $5443: $81
	ldh a, [$0e]                                     ; $5444: $f0 $0e
	ld a, e                                          ; $5446: $7b
	or $9e                                           ; $5447: $f6 $9e
	rst SubAFromDE                                          ; $5449: $df
	ld h, a                                          ; $544a: $67
	xor $9e                                          ; $544b: $ee $9e
	add b                                            ; $544d: $80
	ld a, e                                          ; $544e: $7b
	cp $47                                           ; $544f: $fe $47
	call z, $2480                                    ; $5451: $cc $80 $24
	daa                                              ; $5454: $27
	inc h                                            ; $5455: $24
	daa                                              ; $5456: $27
	jr z, jr_012_5488                                ; $5457: $28 $2f

	ld d, b                                          ; $5459: $50
	ld e, a                                          ; $545a: $5f
	ld e, b                                          ; $545b: $58
	ld e, a                                          ; $545c: $5f
	ld h, h                                          ; $545d: $64
	ld h, a                                          ; $545e: $67
	jp nz, $91c3                                     ; $545f: $c2 $c3 $91

	ld d, c                                          ; $5462: $51
	rst $38                                          ; $5463: $ff
	ld e, e                                          ; $5464: $5b
	rst AddAOntoHL                                          ; $5465: $ef
	rst AddAOntoHL                                          ; $5466: $ef
	ld b, d                                          ; $5467: $42
	jp $c342                                         ; $5468: $c3 $42 $c3


	ld d, d                                          ; $546b: $52
	jp $8191                                         ; $546c: $c3 $91 $81


	adc b                                            ; $546f: $88
	add b                                            ; $5470: $80
	pop hl                                           ; $5471: $e1
	sbc l                                            ; $5472: $9d
	ldh [hDisp0_SCY], a                                     ; $5473: $e0 $83
	ld d, e                                          ; $5475: $53
	call z, $0188                                    ; $5476: $cc $88 $01
	rst $38                                          ; $5479: $ff
	rst $38                                          ; $547a: $ff
	ld l, c                                          ; $547b: $69
	sbc $db                                          ; $547c: $de $db
	sbc [hl]                                         ; $547e: $9e
	sbc a                                            ; $547f: $9f
	adc [hl]                                         ; $5480: $8e
	rrca                                             ; $5481: $0f
	inc c                                            ; $5482: $0c
	rrca                                             ; $5483: $0f
	inc d                                            ; $5484: $14
	rlca                                             ; $5485: $07
	ld b, $07                                        ; $5486: $06 $07

jr_012_5488:
	xor $ef                                          ; $5488: $ee $ef
	dec c                                            ; $548a: $0d
	rst $38                                          ; $548b: $ff
	rrca                                             ; $548c: $0f
	rst $38                                          ; $548d: $ff
	add hl, bc                                       ; $548e: $09
	ld a, e                                          ; $548f: $7b
	add sp, $7f                                      ; $5490: $e8 $7f
	cp $94                                           ; $5492: $fe $94
	ld [bc], a                                       ; $5494: $02
	cp $04                                           ; $5495: $fe $04
	db $fc                                           ; $5497: $fc
	rrca                                             ; $5498: $0f
	rst $38                                          ; $5499: $ff
	dec b                                            ; $549a: $05
	db $fd                                           ; $549b: $fd
	ld [bc], a                                       ; $549c: $02
	cp $01                                           ; $549d: $fe $01
	ld a, e                                          ; $549f: $7b
	ld b, [hl]                                       ; $54a0: $46
	ld a, a                                          ; $54a1: $7f
	db $f4                                           ; $54a2: $f4
	ld l, a                                          ; $54a3: $6f
	ld b, h                                          ; $54a4: $44
	adc a                                            ; $54a5: $8f
	ld c, [hl]                                       ; $54a6: $4e
	ld c, a                                          ; $54a7: $4f
	ld [bc], a                                       ; $54a8: $02
	inc bc                                           ; $54a9: $03
	ld bc, $0001                                     ; $54aa: $01 $01 $00
	nop                                              ; $54ad: $00
	ld [hl], d                                       ; $54ae: $72
	ld [hl], d                                       ; $54af: $72
	sbc c                                            ; $54b0: $99
	ld sp, hl                                        ; $54b1: $f9
	inc b                                            ; $54b2: $04
	db $fc                                           ; $54b3: $fc
	ld [bc], a                                       ; $54b4: $02
	cp $6f                                           ; $54b5: $fe $6f
	ld a, b                                          ; $54b7: $78
	sub b                                            ; $54b8: $90
	ld h, b                                          ; $54b9: $60
	ld a, a                                          ; $54ba: $7f
	db $10                                           ; $54bb: $10
	rra                                              ; $54bc: $1f
	inc c                                            ; $54bd: $0c
	rrca                                             ; $54be: $0f
	add e                                            ; $54bf: $83
	add e                                            ; $54c0: $83
	ld b, b                                          ; $54c1: $40
	ld b, b                                          ; $54c2: $40
	ccf                                              ; $54c3: $3f
	ldh [$1f], a                                     ; $54c4: $e0 $1f
	ld hl, sp+$07                                    ; $54c6: $f8 $07
	ld a, e                                          ; $54c8: $7b
	cp h                                             ; $54c9: $bc
	ld [hl], a                                       ; $54ca: $77
	add $8b                                          ; $54cb: $c6 $8b
	push bc                                          ; $54cd: $c5
	db $fd                                           ; $54ce: $fd
	ccf                                              ; $54cf: $3f
	ccf                                              ; $54d0: $3f
	rst $38                                          ; $54d1: $ff
	ld c, $f9                                        ; $54d2: $0e $f9
	ld a, c                                          ; $54d4: $79
	rst $38                                          ; $54d5: $ff
	add a                                            ; $54d6: $87
	db $fd                                           ; $54d7: $fd
	ld hl, $d8de                                     ; $54d8: $21 $de $d8
	rst $38                                          ; $54db: $ff
	cp h                                             ; $54dc: $bc
	inc de                                           ; $54dd: $13
	inc de                                           ; $54de: $13
	sbc d                                            ; $54df: $9a
	sbc e                                            ; $54e0: $9b
	ld h, a                                          ; $54e1: $67
	add d                                            ; $54e2: $82
	ld a, a                                          ; $54e3: $7f
	ld hl, sp-$64                                    ; $54e4: $f8 $9c
	ret nz                                           ; $54e6: $c0

	ld a, a                                          ; $54e7: $7f
	ret nz                                           ; $54e8: $c0

	ld a, e                                          ; $54e9: $7b
	ld hl, sp-$23                                    ; $54ea: $f8 $dd
	ld [$36df], sp                                   ; $54ec: $08 $df $36
	rst SubAFromDE                                          ; $54ef: $df
	push bc                                          ; $54f0: $c5
	rst SubAFromDE                                          ; $54f1: $df
	ld b, h                                          ; $54f2: $44
	rst SubAFromDE                                          ; $54f3: $df
	ld a, [hl+]                                      ; $54f4: $2a
	rst SubAFromDE                                          ; $54f5: $df
	push hl                                          ; $54f6: $e5
	add c                                            ; $54f7: $81
	rst $38                                          ; $54f8: $ff
	ccf                                              ; $54f9: $3f
	ld b, h                                          ; $54fa: $44
	call nz, $e222                                   ; $54fb: $c4 $22 $e2
	ld hl, $10e1                                     ; $54fe: $21 $e1 $10
	ldh a, [$08]                                     ; $5501: $f0 $08
	ld hl, sp+$08                                    ; $5503: $f8 $08
	ld hl, sp+$1e                                    ; $5505: $f8 $1e
	cp $0f                                           ; $5507: $fe $0f
	ld sp, hl                                        ; $5509: $f9
	or $07                                           ; $550a: $f6 $07
	cp $83                                           ; $550c: $fe $83
	cp $03                                           ; $550e: $fe $03
	cp $0b                                           ; $5510: $fe $0b
	cp $0b                                           ; $5512: $fe $0b
	rst $38                                          ; $5514: $ff
	ld c, e                                          ; $5515: $4b
	ld a, e                                          ; $5516: $7b
	cp $9a                                           ; $5517: $fe $9a
	ld e, e                                          ; $5519: $5b
	jp $c37f                                         ; $551a: $c3 $7f $c3


	ld a, [hl]                                       ; $551d: $7e
	ld [hl], a                                       ; $551e: $77
	cp $7f                                           ; $551f: $fe $7f
	db $eb                                           ; $5521: $eb
	ld l, a                                          ; $5522: $6f
	cp $98                                           ; $5523: $fe $98
	rst SubAFromDE                                          ; $5525: $df
	ldh [$bf], a                                     ; $5526: $e0 $bf
	ret nz                                           ; $5528: $c0

	ld a, a                                          ; $5529: $7f
	add b                                            ; $552a: $80
	ld a, a                                          ; $552b: $7f
	ld l, a                                          ; $552c: $6f
	xor c                                            ; $552d: $a9
	sbc h                                            ; $552e: $9c
	jr nz, @+$01                                     ; $552f: $20 $ff

	add hl, hl                                       ; $5531: $29
	ld l, a                                          ; $5532: $6f
	ld a, [hl+]                                      ; $5533: $2a
	ld [hl], e                                       ; $5534: $73
	ld b, b                                          ; $5535: $40
	ld a, a                                          ; $5536: $7f
	ld a, [hl]                                       ; $5537: $7e
	sbc e                                            ; $5538: $9b
	cp $05                                           ; $5539: $fe $05
	cp $0f                                           ; $553b: $fe $0f
	ld a, e                                          ; $553d: $7b
	ld c, b                                          ; $553e: $48
	ld a, e                                          ; $553f: $7b
	cp $7f                                           ; $5540: $fe $7f
	ld a, [$347f]                                    ; $5542: $fa $7f $34
	sbc [hl]                                         ; $5545: $9e
	ld hl, sp+$77                                    ; $5546: $f8 $77
	cp $7f                                           ; $5548: $fe $7f
	add sp, $4a                                      ; $554a: $e8 $4a
	adc $95                                          ; $554c: $ce $95
	nop                                              ; $554e: $00
	ldh [$e0], a                                     ; $554f: $e0 $e0
	ld de, $08f1                                     ; $5551: $11 $f1 $08
	ld hl, sp+$04                                    ; $5554: $f8 $04
	db $fc                                           ; $5556: $fc
	inc bc                                           ; $5557: $03
	ld [hl], e                                       ; $5558: $73
	ldh a, [$df]                                     ; $5559: $f0 $df
	dec c                                            ; $555b: $0d
	rst SubAFromDE                                          ; $555c: $df
	ld [bc], a                                       ; $555d: $02
	rst SubAFromDE                                          ; $555e: $df
	ld bc, $c1df                                     ; $555f: $01 $df $c1
	rst SubAFromDE                                          ; $5562: $df
	inc a                                            ; $5563: $3c
	rst SubAFromDE                                          ; $5564: $df
	ld [$84df], sp                                   ; $5565: $08 $df $84
	ld a, a                                          ; $5568: $7f
	ld [hl], d                                       ; $5569: $72
	sub e                                            ; $556a: $93
	add [hl]                                         ; $556b: $86
	add e                                            ; $556c: $83
	add $c7                                          ; $556d: $c6 $c7
	ld a, e                                          ; $556f: $7b
	ld a, e                                          ; $5570: $7b
	jr c, @+$3a                                      ; $5571: $38 $38

	nop                                              ; $5573: $00
	inc bc                                           ; $5574: $03
	ld b, b                                          ; $5575: $40
	ld [hl], h                                       ; $5576: $74
	db $dd                                           ; $5577: $dd
	ld [$486e], sp                                   ; $5578: $08 $6e $48
	sbc c                                            ; $557b: $99
	jr nc, jr_012_55bd                               ; $557c: $30 $3f

	ld [$488f], sp                                   ; $557e: $08 $8f $48
	ld c, a                                          ; $5581: $4f
	halt                                             ; $5582: $76
	sub h                                            ; $5583: $94
	ld e, a                                          ; $5584: $5f
	or [hl]                                          ; $5585: $b6
	sbc l                                            ; $5586: $9d
	ld [$77f7], sp                                   ; $5587: $08 $f7 $77
	ld a, [$9d7b]                                    ; $558a: $fa $7b $9d
	sbc d                                            ; $558d: $9a
	adc a                                            ; $558e: $8f
	ld hl, sp-$31                                    ; $558f: $f8 $cf
	ld hl, sp+$4f                                    ; $5591: $f8 $4f
	ld a, e                                          ; $5593: $7b
	adc a                                            ; $5594: $8f
	sbc b                                            ; $5595: $98
	rlca                                             ; $5596: $07
	db $f4                                           ; $5597: $f4
	rlca                                             ; $5598: $07
	ld a, [$ff03]                                    ; $5599: $fa $03 $ff
	ccf                                              ; $559c: $3f
	ld a, d                                          ; $559d: $7a
	push af                                          ; $559e: $f5
	sub h                                            ; $559f: $94
	ld c, $ff                                        ; $55a0: $0e $ff
	ld c, $fb                                        ; $55a2: $0e $fb
	ld e, $f3                                        ; $55a4: $1e $f3
	ld a, $e3                                        ; $55a6: $3e $e3
	ld a, a                                          ; $55a8: $7f
	jp Jump_012_77ff                                 ; $55a9: $c3 $ff $77


	ld a, h                                          ; $55ac: $7c
	sbc l                                            ; $55ad: $9d
	rra                                              ; $55ae: $1f
	ldh a, [rPCM34]                                  ; $55af: $f0 $77
	cp $9e                                           ; $55b1: $fe $9e
	ccf                                              ; $55b3: $3f
	ld a, e                                          ; $55b4: $7b
	cp $97                                           ; $55b5: $fe $97
	cpl                                              ; $55b7: $2f
	ldh a, [rIE]                                     ; $55b8: $f0 $ff
	or c                                             ; $55ba: $b1
	rst $38                                          ; $55bb: $ff
	rst $38                                          ; $55bc: $ff

jr_012_55bd:
	reti                                             ; $55bd: $d9


	cp a                                             ; $55be: $bf
	ld a, d                                          ; $55bf: $7a
	adc l                                            ; $55c0: $8d
	sbc [hl]                                         ; $55c1: $9e
	add hl, de                                       ; $55c2: $19
	ld a, e                                          ; $55c3: $7b
	cp $97                                           ; $55c4: $fe $97
	ld a, e                                          ; $55c6: $7b
	rst $38                                          ; $55c7: $ff
	ld e, $e1                                        ; $55c8: $1e $e1
	ld h, c                                          ; $55ca: $61
	ldh [c], a                                       ; $55cb: $e2
	db $e3                                           ; $55cc: $e3
	db $fc                                           ; $55cd: $fc
	ld [hl], a                                       ; $55ce: $77
	push hl                                          ; $55cf: $e5
	ld a, a                                          ; $55d0: $7f
	rst SubAFromDE                                          ; $55d1: $df
	sub [hl]                                         ; $55d2: $96
	rst SubAFromDE                                          ; $55d3: $df
	ldh a, [$9f]                                     ; $55d4: $f0 $9f
	ld hl, sp+$0f                                    ; $55d6: $f8 $0f
	nop                                              ; $55d8: $00
	rst $38                                          ; $55d9: $ff
	inc b                                            ; $55da: $04
	ei                                               ; $55db: $fb
	dec a                                            ; $55dc: $3d
	and $6f                                          ; $55dd: $e6 $6f
	sub h                                            ; $55df: $94
	ld c, e                                          ; $55e0: $4b
	cp $73                                           ; $55e1: $fe $73
	db $ec                                           ; $55e3: $ec
	sub a                                            ; $55e4: $97
	inc e                                            ; $55e5: $1c
	rra                                              ; $55e6: $1f
	db $e4                                           ; $55e7: $e4
	rst SubAFromBC                                          ; $55e8: $e7
	jr jr_012_560a                                   ; $55e9: $18 $1f

	jr c, jr_012_562c                                ; $55eb: $38 $3f

	halt                                             ; $55ed: $76
	and h                                            ; $55ee: $a4
	ld [hl], a                                       ; $55ef: $77
	cp $df                                           ; $55f0: $fe $df
	rra                                              ; $55f2: $1f
	rst SubAFromDE                                          ; $55f3: $df
	ret nz                                           ; $55f4: $c0

	sbc h                                            ; $55f5: $9c
	ld e, [hl]                                       ; $55f6: $5e
	sbc $71                                          ; $55f7: $de $71
	ld a, d                                          ; $55f9: $7a
	ldh a, [$66]                                     ; $55fa: $f0 $66
	ld c, $4e                                        ; $55fc: $0e $4e
	cp $96                                           ; $55fe: $fe $96

jr_012_5600:
	ld [hl-], a                                      ; $5600: $32
	inc de                                           ; $5601: $13
	xor $ef                                          ; $5602: $ee $ef
	inc e                                            ; $5604: $1c
	rra                                              ; $5605: $1f
	jr nz, jr_012_562b                               ; $5606: $20 $23

	ld hl, sp+$6b                                    ; $5608: $f8 $6b

jr_012_560a:
	ldh a, [$99]                                     ; $560a: $f0 $99
	ld [de], a                                       ; $560c: $12
	ldh a, [c]                                       ; $560d: $f2
	rra                                              ; $560e: $1f
	rst $38                                          ; $560f: $ff
	db $10                                           ; $5610: $10
	ldh a, [$7a]                                     ; $5611: $f0 $7a
	add [hl]                                         ; $5613: $86
	ld b, e                                          ; $5614: $43
	and b                                            ; $5615: $a0
	ld a, d                                          ; $5616: $7a
	ld c, [hl]                                       ; $5617: $4e
	sbc e                                            ; $5618: $9b
	rst $38                                          ; $5619: $ff

jr_012_561a:
	ldh a, [rIE]                                     ; $561a: $f0 $ff
	inc bc                                           ; $561c: $03
	ld a, c                                          ; $561d: $79
	ld l, [hl]                                       ; $561e: $6e
	sbc [hl]                                         ; $561f: $9e
	ld bc, $0a72                                     ; $5620: $01 $72 $0a
	ld l, a                                          ; $5623: $6f
	cp $80                                           ; $5624: $fe $80
	ld [hl], $c0                                     ; $5626: $36 $c0
	dec a                                            ; $5628: $3d
	ret nz                                           ; $5629: $c0

	ld e, a                                          ; $562a: $5f

jr_012_562b:
	and b                                            ; $562b: $a0

jr_012_562c:
	ld e, $e0                                        ; $562c: $1e $e0
	rla                                              ; $562e: $17
	add sp, $2b                                      ; $562f: $e8 $2b
	call nc, $f20d                                   ; $5631: $d4 $0d $f2
	ld [bc], a                                       ; $5634: $02
	db $fd                                           ; $5635: $fd
	ld c, [hl]                                       ; $5636: $4e
	or b                                             ; $5637: $b0
	jr jr_012_561a                                   ; $5638: $18 $e0

	dec a                                            ; $563a: $3d
	ret nz                                           ; $563b: $c0

	ld [hl], l                                       ; $563c: $75
	add b                                            ; $563d: $80
	jr c, jr_012_5600                                ; $563e: $38 $c0

	dec l                                            ; $5640: $2d
	ret nz                                           ; $5641: $c0

	db $f4                                           ; $5642: $f4
	nop                                              ; $5643: $00
	ld a, [hl+]                                      ; $5644: $2a
	add b                                            ; $5645: $80
	ret nz                                           ; $5646: $c0

	rla                                              ; $5647: $17
	ldh [$79], a                                     ; $5648: $e0 $79
	add [hl]                                         ; $564a: $86
	ld d, e                                          ; $564b: $53
	xor h                                            ; $564c: $ac
	add e                                            ; $564d: $83
	ld a, h                                          ; $564e: $7c
	ld b, $f8                                        ; $564f: $06 $f8
	rrca                                             ; $5651: $0f
	ldh a, [rTMA]                                    ; $5652: $f0 $06
	ld hl, sp+$17                                    ; $5654: $f8 $17
	add sp, $07                                      ; $5656: $e8 $07
	ld hl, sp-$63                                    ; $5658: $f8 $9d
	ld h, b                                          ; $565a: $60
	ld [hl-], a                                      ; $565b: $32
	ret nz                                           ; $565c: $c0

	db $ed                                           ; $565d: $ed
	nop                                              ; $565e: $00
	cp a                                             ; $565f: $bf
	ld b, b                                          ; $5660: $40
	jp c, $0f25                                      ; $5661: $da $25 $0f

	ldh a, [$9d]                                     ; $5664: $f0 $9d
	dec bc                                           ; $5666: $0b
	ldh a, [$67]                                     ; $5667: $f0 $67
	cp b                                             ; $5669: $b8
	ld a, a                                          ; $566a: $7f
	add $99                                          ; $566b: $c6 $99
	add $39                                          ; $566d: $c6 $39
	inc c                                            ; $566f: $0c
	di                                               ; $5670: $f3
	ld bc, $55fe                                     ; $5671: $01 $fe $55
	nop                                              ; $5674: $00
	sbc [hl]                                         ; $5675: $9e
	dec h                                            ; $5676: $25
	call c, $9e07                                    ; $5677: $dc $07 $9e
	rra                                              ; $567a: $1f
	db $dd                                           ; $567b: $dd
	rlca                                             ; $567c: $07
	ld a, e                                          ; $567d: $7b
	push af                                          ; $567e: $f5
	add b                                            ; $567f: $80
	ld bc, $0302                                     ; $5680: $01 $02 $03
	inc b                                            ; $5683: $04
	dec b                                            ; $5684: $05
	ld b, $07                                        ; $5685: $06 $07
	dec c                                            ; $5687: $0d
	ld c, $0f                                        ; $5688: $0e $0f
	db $10                                           ; $568a: $10
	ld de, $3312                                     ; $568b: $11 $12 $33
	rlca                                             ; $568e: $07
	ld a, [de]                                       ; $568f: $1a
	dec de                                           ; $5690: $1b
	inc e                                            ; $5691: $1c
	dec e                                            ; $5692: $1d
	ld e, $32                                        ; $5693: $1e $32
	rlca                                             ; $5695: $07
	rra                                              ; $5696: $1f
	inc bc                                           ; $5697: $03
	inc d                                            ; $5698: $14
	inc de                                           ; $5699: $13
	ld [$0731], sp                                   ; $569a: $08 $31 $07
	rlca                                             ; $569d: $07
	nop                                              ; $569e: $00
	add b                                            ; $569f: $80

jr_012_56a0:
	add hl, de                                       ; $56a0: $19
	inc hl                                           ; $56a1: $23
	inc h                                            ; $56a2: $24
	jr nc, jr_012_56ac                               ; $56a3: $30 $07

	nop                                              ; $56a5: $00
	nop                                              ; $56a6: $00
	ld [hl+], a                                      ; $56a7: $22
	ld hl, $2f20                                     ; $56a8: $21 $20 $2f
	rlca                                             ; $56ab: $07

jr_012_56ac:
	nop                                              ; $56ac: $00
	jr jr_012_56c6                                   ; $56ad: $18 $17

	ld d, $15                                        ; $56af: $16 $15
	ld l, $07                                        ; $56b1: $2e $07
	rlca                                             ; $56b3: $07
	inc c                                            ; $56b4: $0c
	dec bc                                           ; $56b5: $0b
	ld a, [bc]                                       ; $56b6: $0a
	add hl, bc                                       ; $56b7: $09
	dec l                                            ; $56b8: $2d
	rlca                                             ; $56b9: $07
	rlca                                             ; $56ba: $07
	inc l                                            ; $56bb: $2c
	dec hl                                           ; $56bc: $2b
	ld a, [hl+]                                      ; $56bd: $2a
	add hl, hl                                       ; $56be: $29
	sbc [hl]                                         ; $56bf: $9e
	jr z, jr_012_56a0                                ; $56c0: $28 $de

	rlca                                             ; $56c2: $07
	sbc e                                            ; $56c3: $9b
	daa                                              ; $56c4: $27
	rlca                                             ; $56c5: $07

jr_012_56c6:
	ld h, $07                                        ; $56c6: $26 $07
	daa                                              ; $56c8: $27
	nop                                              ; $56c9: $00
	jp c, $9833                                      ; $56ca: $da $33 $98

	ld [hl], $64                                     ; $56cd: $36 $64
	ld b, h                                          ; $56cf: $44
	ld [hl], $66                                     ; $56d0: $36 $66
	ld h, [hl]                                       ; $56d2: $66
	ld b, e                                          ; $56d3: $43
	ld a, e                                          ; $56d4: $7b
	db $fc                                           ; $56d5: $fc
	ld a, a                                          ; $56d6: $7f
	push af                                          ; $56d7: $f5
	sub e                                            ; $56d8: $93
	ld h, [hl]                                       ; $56d9: $66
	ld h, e                                          ; $56da: $63
	inc sp                                           ; $56db: $33
	ld b, h                                          ; $56dc: $44
	ld b, [hl]                                       ; $56dd: $46
	inc sp                                           ; $56de: $33
	ld b, h                                          ; $56df: $44
	ld b, l                                          ; $56e0: $45
	ld b, e                                          ; $56e1: $43
	inc [hl]                                         ; $56e2: $34
	ld b, [hl]                                       ; $56e3: $46
	ld b, h                                          ; $56e4: $44
	ld a, e                                          ; $56e5: $7b
	rst SubAFromBC                                          ; $56e6: $e7
	ld a, a                                          ; $56e7: $7f
	xor $9c                                          ; $56e8: $ee $9c
	ld h, [hl]                                       ; $56ea: $66
	ld b, [hl]                                       ; $56eb: $46
	ld h, e                                          ; $56ec: $63
	sbc $33                                          ; $56ed: $de $33
	dec hl                                           ; $56ef: $2b
	ld [bc], a                                       ; $56f0: $02
	sbc d                                            ; $56f1: $9a
	add e                                            ; $56f2: $83
	rst $38                                          ; $56f3: $ff
	add b                                            ; $56f4: $80
	rst $38                                          ; $56f5: $ff
	nop                                              ; $56f6: $00
	ld h, e                                          ; $56f7: $63
	cp $9e                                           ; $56f8: $fe $9e
	ld bc, $f45b                                     ; $56fa: $01 $5b $f4
	cpl                                              ; $56fd: $2f
	cp $98                                           ; $56fe: $fe $98
	ccf                                              ; $5700: $3f
	ldh [$1f], a                                     ; $5701: $e0 $1f
	ld hl, sp+$07                                    ; $5703: $f8 $07
	rst $38                                          ; $5705: $ff
	rrca                                             ; $5706: $0f
	ld a, e                                          ; $5707: $7b
	cp $89                                           ; $5708: $fe $89
	dec b                                            ; $570a: $05
	db $fd                                           ; $570b: $fd
	dec b                                            ; $570c: $05
	db $fd                                           ; $570d: $fd
	rlca                                             ; $570e: $07
	rst $38                                          ; $570f: $ff
	rst $38                                          ; $5710: $ff
	ld c, $f9                                        ; $5711: $0e $f9
	ld a, c                                          ; $5713: $79
	rst $38                                          ; $5714: $ff
	add a                                            ; $5715: $87
	db $fd                                           ; $5716: $fd
	ld hl, $d8de                                     ; $5717: $21 $de $d8
	rst $38                                          ; $571a: $ff
	cp h                                             ; $571b: $bc
	inc de                                           ; $571c: $13
	inc de                                           ; $571d: $13
	sbc d                                            ; $571e: $9a
	sbc e                                            ; $571f: $9b
	ld h, a                                          ; $5720: $67
	or d                                             ; $5721: $b2
	ld a, a                                          ; $5722: $7f
	ld hl, sp-$64                                    ; $5723: $f8 $9c
	ret nz                                           ; $5725: $c0

	ld a, a                                          ; $5726: $7f
	ret nz                                           ; $5727: $c0

	ld a, e                                          ; $5728: $7b
	ld hl, sp-$71                                    ; $5729: $f8 $8f
	rst $38                                          ; $572b: $ff
	ld l, c                                          ; $572c: $69
	sbc $db                                          ; $572d: $de $db
	sbc [hl]                                         ; $572f: $9e
	sbc a                                            ; $5730: $9f
	adc [hl]                                         ; $5731: $8e
	rrca                                             ; $5732: $0f
	inc c                                            ; $5733: $0c
	rrca                                             ; $5734: $0f
	inc d                                            ; $5735: $14
	rlca                                             ; $5736: $07
	ld b, $07                                        ; $5737: $06 $07
	xor $ef                                          ; $5739: $ee $ef
	ld l, a                                          ; $573b: $6f
	sbc d                                            ; $573c: $9a
	sub [hl]                                         ; $573d: $96
	ld [bc], a                                       ; $573e: $02
	cp $04                                           ; $573f: $fe $04
	db $fc                                           ; $5741: $fc
	inc b                                            ; $5742: $04
	db $fc                                           ; $5743: $fc
	ld [$08f8], sp                                   ; $5744: $08 $f8 $08
	ld a, e                                          ; $5747: $7b
	or h                                             ; $5748: $b4
	rst SubAFromDE                                          ; $5749: $df
	cp $df                                           ; $574a: $fe $df
	inc bc                                           ; $574c: $03
	rst SubAFromDE                                          ; $574d: $df
	ld bc, $dffd                                     ; $574e: $01 $fd $df
	db $10                                           ; $5751: $10
	rst SubAFromDE                                          ; $5752: $df
	add sp, -$6d                                     ; $5753: $e8 $93
	add [hl]                                         ; $5755: $86
	add e                                            ; $5756: $83
	add $c7                                          ; $5757: $c6 $c7
	ld a, e                                          ; $5759: $7b
	ld a, e                                          ; $575a: $7b
	jr c, jr_012_5795                                ; $575b: $38 $38

	nop                                              ; $575d: $00
	inc bc                                           ; $575e: $03
	ld b, b                                          ; $575f: $40
	ld [hl], h                                       ; $5760: $74
	db $dd                                           ; $5761: $dd
	ld [$d077], sp                                   ; $5762: $08 $77 $d0
	ld a, a                                          ; $5765: $7f
	cp b                                             ; $5766: $b8
	sub l                                            ; $5767: $95
	jr nc, jr_012_57a9                               ; $5768: $30 $3f

	ld [$488f], sp                                   ; $576a: $08 $8f $48
	ld c, a                                          ; $576d: $4f
	inc h                                            ; $576e: $24
	daa                                              ; $576f: $27
	inc h                                            ; $5770: $24
	daa                                              ; $5771: $27
	ld e, a                                          ; $5772: $5f
	halt                                             ; $5773: $76
	sbc l                                            ; $5774: $9d
	ld [$77f7], sp                                   ; $5775: $08 $f7 $77
	ld a, [$1080]                                    ; $5778: $fa $80 $10
	ldh a, [rAUDENA]                                 ; $577b: $f0 $26
	and $48                                          ; $577d: $e6 $48
	ret z                                            ; $577f: $c8

	ld b, b                                          ; $5780: $40
	ret nz                                           ; $5781: $c0

	ld b, a                                          ; $5782: $47
	rst JumpTable                                          ; $5783: $c7
	add b                                            ; $5784: $80
	add b                                            ; $5785: $80
	add h                                            ; $5786: $84
	add h                                            ; $5787: $84
	add d                                            ; $5788: $82
	add d                                            ; $5789: $82
	inc d                                            ; $578a: $14
	inc d                                            ; $578b: $14
	ld [hl+], a                                      ; $578c: $22
	ld [hl+], a                                      ; $578d: $22
	ld h, c                                          ; $578e: $61
	ld h, c                                          ; $578f: $61
	ret nc                                           ; $5790: $d0

	ldh a, [hDisp0_WY]                                     ; $5791: $f0 $88
	ld hl, sp-$68                                    ; $5793: $f8 $98

jr_012_5795:
	ld hl, sp+$66                                    ; $5795: $f8 $66
	ld h, [hl]                                       ; $5797: $66
	ld b, c                                          ; $5798: $41
	sbc [hl]                                         ; $5799: $9e
	ld b, c                                          ; $579a: $41
	db $dd                                           ; $579b: $dd
	ld [$36df], sp                                   ; $579c: $08 $df $36
	rst SubAFromDE                                          ; $579f: $df
	push bc                                          ; $57a0: $c5
	rst SubAFromDE                                          ; $57a1: $df
	ld b, h                                          ; $57a2: $44
	rst SubAFromDE                                          ; $57a3: $df
	ld a, [hl+]                                      ; $57a4: $2a
	rst SubAFromDE                                          ; $57a5: $df
	push hl                                          ; $57a6: $e5
	ld a, a                                          ; $57a7: $7f
	ld b, c                                          ; $57a8: $41

jr_012_57a9:
	ld [hl], a                                       ; $57a9: $77
	cp h                                             ; $57aa: $bc
	sub d                                            ; $57ab: $92
	jr z, jr_012_57dd                                ; $57ac: $28 $2f

	ld d, b                                          ; $57ae: $50
	ld e, a                                          ; $57af: $5f
	ld e, b                                          ; $57b0: $58
	ld e, a                                          ; $57b1: $5f
	ld h, h                                          ; $57b2: $64
	ld h, a                                          ; $57b3: $67
	jp nz, $91c3                                     ; $57b4: $c2 $c3 $91

	ld d, c                                          ; $57b7: $51
	dec c                                            ; $57b8: $0d
	ld a, e                                          ; $57b9: $7b
	ld [hl], $9e                                     ; $57ba: $36 $9e
	add hl, bc                                       ; $57bc: $09
	ld a, e                                          ; $57bd: $7b
	ld l, [hl]                                       ; $57be: $6e
	ld l, a                                          ; $57bf: $6f
	ld l, h                                          ; $57c0: $6c
	ld a, a                                          ; $57c1: $7f
	db $f4                                           ; $57c2: $f4
	sbc h                                            ; $57c3: $9c
	ld h, b                                          ; $57c4: $60
	ldh [rAUD2LOW], a                                ; $57c5: $e0 $18
	ld a, e                                          ; $57c7: $7b
	ld l, h                                          ; $57c8: $6c
	ld e, d                                          ; $57c9: $5a
	xor $dc                                          ; $57ca: $ee $dc
	ld bc, $c399                                     ; $57cc: $01 $99 $c3
	jp nz, $fe3f                                     ; $57cf: $c2 $3f $fe

	rrca                                             ; $57d2: $0f
	ld hl, sp+$77                                    ; $57d3: $f8 $77
	cp $99                                           ; $57d5: $fe $99
	rst $38                                          ; $57d7: $ff
	or c                                             ; $57d8: $b1
	rst $38                                          ; $57d9: $ff
	rst $38                                          ; $57da: $ff
	reti                                             ; $57db: $d9


	cp a                                             ; $57dc: $bf

jr_012_57dd:
	ld a, e                                          ; $57dd: $7b
	call $199e                                       ; $57de: $cd $9e $19
	ld a, e                                          ; $57e1: $7b
	cp $8c                                           ; $57e2: $fe $8c
	ld a, e                                          ; $57e4: $7b
	rst $38                                          ; $57e5: $ff
	ld e, $e1                                        ; $57e6: $1e $e1
	ld h, c                                          ; $57e8: $61
	ldh [c], a                                       ; $57e9: $e2
	db $e3                                           ; $57ea: $e3
	db $fc                                           ; $57eb: $fc
	ccf                                              ; $57ec: $3f
	ldh a, [$3f]                                     ; $57ed: $f0 $3f
	ldh a, [$1f]                                     ; $57ef: $f0 $1f
	ldh a, [$df]                                     ; $57f1: $f0 $df
	ldh a, [$9f]                                     ; $57f3: $f0 $9f
	ld hl, sp+$0f                                    ; $57f5: $f8 $0f
	ld b, [hl]                                       ; $57f7: $46
	ret nc                                           ; $57f8: $d0

	adc a                                            ; $57f9: $8f
	rst $38                                          ; $57fa: $ff
	ld e, e                                          ; $57fb: $5b
	rst AddAOntoHL                                          ; $57fc: $ef
	rst AddAOntoHL                                          ; $57fd: $ef
	ld b, d                                          ; $57fe: $42
	jp $c342                                         ; $57ff: $c3 $42 $c3


	ld d, d                                          ; $5802: $52
	jp $8191                                         ; $5803: $c3 $91 $81


	adc b                                            ; $5806: $88
	add b                                            ; $5807: $80
	pop hl                                           ; $5808: $e1
	ldh [rPCM34], a                                  ; $5809: $e0 $77
	cp h                                             ; $580b: $bc
	ld a, a                                          ; $580c: $7f
	push de                                          ; $580d: $d5
	ld [hl], a                                       ; $580e: $77
	cp $77                                           ; $580f: $fe $77
	res 3, e                                         ; $5811: $cb $9b
	cpl                                              ; $5813: $2f
	ldh a, [rIE]                                     ; $5814: $f0 $ff
	ccf                                              ; $5816: $3f
	ld a, e                                          ; $5817: $7b
	ld a, a                                          ; $5818: $7f
	sub h                                            ; $5819: $94
	ld c, $ff                                        ; $581a: $0e $ff
	ld c, $fb                                        ; $581c: $0e $fb
	ld e, $f3                                        ; $581e: $1e $f3
	ld a, $e3                                        ; $5820: $3e $e3
	ld a, a                                          ; $5822: $7f
	jp Jump_012_7bff                                 ; $5823: $c3 $ff $7b


	pop hl                                           ; $5826: $e1
	add [hl]                                         ; $5827: $86
	adc a                                            ; $5828: $8f
	ld hl, sp-$31                                    ; $5829: $f8 $cf
	ld hl, sp+$4f                                    ; $582b: $f8 $4f
	db $fc                                           ; $582d: $fc
	rlca                                             ; $582e: $07
	db $fc                                           ; $582f: $fc
	rlca                                             ; $5830: $07
	db $f4                                           ; $5831: $f4
	rlca                                             ; $5832: $07
	ld a, [$f603]                                    ; $5833: $fa $03 $f6
	rlca                                             ; $5836: $07
	cp $83                                           ; $5837: $fe $83
	cp $03                                           ; $5839: $fe $03
	cp $0b                                           ; $583b: $fe $0b
	cp $0b                                           ; $583d: $fe $0b
	rst $38                                          ; $583f: $ff
	ld c, e                                          ; $5840: $4b
	ld a, e                                          ; $5841: $7b
	cp $9e                                           ; $5842: $fe $9e
	ld e, e                                          ; $5844: $5b
	ld l, [hl]                                       ; $5845: $6e
	ret nz                                           ; $5846: $c0

	ld [hl], e                                       ; $5847: $73
	ld d, b                                          ; $5848: $50
	ld a, [hl]                                       ; $5849: $7e
	ld a, [hl]                                       ; $584a: $7e
	sub l                                            ; $584b: $95
	cp $05                                           ; $584c: $fe $05
	cp $df                                           ; $584e: $fe $df
	ldh [$bf], a                                     ; $5850: $e0 $bf
	ret nz                                           ; $5852: $c0

	ld a, a                                          ; $5853: $7f
	add b                                            ; $5854: $80
	ld a, a                                          ; $5855: $7f
	ld l, [hl]                                       ; $5856: $6e
	adc c                                            ; $5857: $89
	sbc b                                            ; $5858: $98
	jr nz, @+$01                                     ; $5859: $20 $ff

	add hl, hl                                       ; $585b: $29
	jp $c37f                                         ; $585c: $c3 $7f $c3


	ld a, [hl]                                       ; $585f: $7e
	ld [hl], a                                       ; $5860: $77
	cp $7f                                           ; $5861: $fe $7f
	bit 5, a                                         ; $5863: $cb $6f
	cp $7f                                           ; $5865: $fe $7f
	db $eb                                           ; $5867: $eb
	sbc l                                            ; $5868: $9d
	inc b                                            ; $5869: $04
	ei                                               ; $586a: $fb
	ld a, $3a                                        ; $586b: $3e $3a
	ld l, [hl]                                       ; $586d: $6e
	call nz, $fe77                                   ; $586e: $c4 $77 $fe
	sub a                                            ; $5871: $97
	inc e                                            ; $5872: $1c
	rra                                              ; $5873: $1f
	db $e4                                           ; $5874: $e4
	rst SubAFromBC                                          ; $5875: $e7
	jr jr_012_5897                                   ; $5876: $18 $1f

	jr c, jr_012_58b9                                ; $5878: $38 $3f

	halt                                             ; $587a: $76
	ld d, h                                          ; $587b: $54
	ld [hl], a                                       ; $587c: $77
	cp $df                                           ; $587d: $fe $df
	rra                                              ; $587f: $1f
	rst SubAFromDE                                          ; $5880: $df
	ret nz                                           ; $5881: $c0

	sbc h                                            ; $5882: $9c
	ld e, [hl]                                       ; $5883: $5e
	sbc $71                                          ; $5884: $de $71
	ld h, c                                          ; $5886: $61
	or $77                                           ; $5887: $f6 $77
	sub [hl]                                         ; $5889: $96
	ld d, a                                          ; $588a: $57
	add $96                                          ; $588b: $c6 $96

jr_012_588d:
	ld [hl-], a                                      ; $588d: $32
	inc de                                           ; $588e: $13
	xor $ef                                          ; $588f: $ee $ef
	inc e                                            ; $5891: $1c
	rra                                              ; $5892: $1f
	inc h                                            ; $5893: $24
	daa                                              ; $5894: $27
	ld hl, sp+$6b                                    ; $5895: $f8 $6b

jr_012_5897:
	ldh a, [$9c]                                     ; $5897: $f0 $9c
	ld [de], a                                       ; $5899: $12
	ldh a, [c]                                       ; $589a: $f2
	rra                                              ; $589b: $1f
	ld a, d                                          ; $589c: $7a
	ld a, h                                          ; $589d: $7c
	sbc h                                            ; $589e: $9c
	ld e, $fe                                        ; $589f: $1e $fe
	rrca                                             ; $58a1: $0f
	ld b, e                                          ; $58a2: $43
	sbc h                                            ; $58a3: $9c
	ld a, c                                          ; $58a4: $79
	cp $9a                                           ; $58a5: $fe $9a

jr_012_58a7:
	rst $38                                          ; $58a7: $ff
	ldh a, [rIE]                                     ; $58a8: $f0 $ff
	inc bc                                           ; $58aa: $03
	db $fc                                           ; $58ab: $fc
	ld a, e                                          ; $58ac: $7b
	cp h                                             ; $58ad: $bc
	ld a, e                                          ; $58ae: $7b
	ld a, d                                          ; $58af: $7a
	ld h, a                                          ; $58b0: $67
	cp $80                                           ; $58b1: $fe $80
	ld [hl], $c0                                     ; $58b3: $36 $c0

jr_012_58b5:
	dec a                                            ; $58b5: $3d
	ret nz                                           ; $58b6: $c0

	ld e, a                                          ; $58b7: $5f
	and b                                            ; $58b8: $a0

jr_012_58b9:
	ld e, $e0                                        ; $58b9: $1e $e0
	rla                                              ; $58bb: $17
	add sp, $2b                                      ; $58bc: $e8 $2b
	call nc, $f20d                                   ; $58be: $d4 $0d $f2
	ld [bc], a                                       ; $58c1: $02
	db $fd                                           ; $58c2: $fd
	ld c, [hl]                                       ; $58c3: $4e
	or b                                             ; $58c4: $b0
	jr jr_012_58a7                                   ; $58c5: $18 $e0

	dec a                                            ; $58c7: $3d
	ret nz                                           ; $58c8: $c0

	ld [hl], l                                       ; $58c9: $75
	add b                                            ; $58ca: $80
	jr c, jr_012_588d                                ; $58cb: $38 $c0

	dec l                                            ; $58cd: $2d
	ret nz                                           ; $58ce: $c0

	db $f4                                           ; $58cf: $f4
	nop                                              ; $58d0: $00
	ld a, [hl+]                                      ; $58d1: $2a
	add b                                            ; $58d2: $80
	ret nz                                           ; $58d3: $c0

	rla                                              ; $58d4: $17
	ldh [$79], a                                     ; $58d5: $e0 $79

jr_012_58d7:
	add [hl]                                         ; $58d7: $86
	ld d, e                                          ; $58d8: $53
	xor h                                            ; $58d9: $ac
	add e                                            ; $58da: $83
	ld a, h                                          ; $58db: $7c
	ld b, $f8                                        ; $58dc: $06 $f8
	rrca                                             ; $58de: $0f
	ldh a, [rTMA]                                    ; $58df: $f0 $06
	ld hl, sp+$17                                    ; $58e1: $f8 $17
	add sp, $07                                      ; $58e3: $e8 $07
	ld hl, sp-$63                                    ; $58e5: $f8 $9d
	ld h, b                                          ; $58e7: $60
	ld [hl-], a                                      ; $58e8: $32
	ret nz                                           ; $58e9: $c0

	db $ed                                           ; $58ea: $ed
	nop                                              ; $58eb: $00
	cp a                                             ; $58ec: $bf
	ld b, b                                          ; $58ed: $40
	jp c, $0f25                                      ; $58ee: $da $25 $0f

	ldh a, [$9d]                                     ; $58f1: $f0 $9d
	dec bc                                           ; $58f3: $0b
	ldh a, [$67]                                     ; $58f4: $f0 $67
	cp b                                             ; $58f6: $b8
	ld a, a                                          ; $58f7: $7f
	add $9b                                          ; $58f8: $c6 $9b
	add $39                                          ; $58fa: $c6 $39
	inc c                                            ; $58fc: $0c
	di                                               ; $58fd: $f3
	ld [hl], e                                       ; $58fe: $73
	and [hl]                                         ; $58ff: $a6
	sbc [hl]                                         ; $5900: $9e
	rst SubAFromDE                                          ; $5901: $df
	ld e, a                                          ; $5902: $5f
	adc [hl]                                         ; $5903: $8e
	ld d, l                                          ; $5904: $55
	inc [hl]                                         ; $5905: $34
	sbc [hl]                                         ; $5906: $9e
	nop                                              ; $5907: $00
	ld h, e                                          ; $5908: $63
	inc e                                            ; $5909: $1c
	ld l, a                                          ; $590a: $6f
	cp $99                                           ; $590b: $fe $99
	ld a, a                                          ; $590d: $7f
	rst $38                                          ; $590e: $ff
	rst $38                                          ; $590f: $ff
	add c                                            ; $5910: $81
	ldh a, [$0e]                                     ; $5911: $f0 $0e
	ld d, a                                          ; $5913: $57
	xor $7e                                          ; $5914: $ee $7e
	jr jr_012_58b5                                   ; $5916: $18 $9d

	cpl                                              ; $5918: $2f
	db $fc                                           ; $5919: $fc
	ld d, d                                          ; $591a: $52
	nop                                              ; $591b: $00
	sbc [hl]                                         ; $591c: $9e
	ld e, $dc                                        ; $591d: $1e $dc
	ld bc, $0b9e                                     ; $591f: $01 $9e $0b
	db $dd                                           ; $5922: $dd
	ld bc, $f577                                     ; $5923: $01 $77 $f5
	sbc d                                            ; $5926: $9a
	dec l                                            ; $5927: $2d
	ld [bc], a                                       ; $5928: $02
	cpl                                              ; $5929: $2f
	ld l, $2c                                        ; $592a: $2e $2c
	sbc $01                                          ; $592c: $de $01
	add b                                            ; $592e: $80
	ld [bc], a                                       ; $592f: $02
	inc bc                                           ; $5930: $03
	inc b                                            ; $5931: $04
	dec b                                            ; $5932: $05
	dec hl                                           ; $5933: $2b
	ld bc, $0701                                     ; $5934: $01 $01 $07
	ld [$0a09], sp                                   ; $5937: $08 $09 $0a
	ld a, [hl+]                                      ; $593a: $2a
	ld bc, $0c0b                                     ; $593b: $01 $0b $0c
	dec c                                            ; $593e: $0d
	ld c, $0f                                        ; $593f: $0e $0f
	add hl, hl                                       ; $5941: $29
	ld bc, $1101                                     ; $5942: $01 $01 $11
	ld [de], a                                       ; $5945: $12
	inc de                                           ; $5946: $13
	inc d                                            ; $5947: $14
	jr z, jr_012_594b                                ; $5948: $28 $01

	dec d                                            ; $594a: $15

jr_012_594b:
	dec d                                            ; $594b: $15
	rla                                              ; $594c: $17
	jr jr_012_58d7                                   ; $594d: $18 $88

	add hl, de                                       ; $594f: $19
	daa                                              ; $5950: $27
	ld bc, $1b15                                     ; $5951: $01 $15 $1b
	inc e                                            ; $5954: $1c
	dec e                                            ; $5955: $1d
	ld a, [de]                                       ; $5956: $1a
	ld h, $01                                        ; $5957: $26 $01
	ld bc, $0610                                     ; $5959: $01 $10 $06
	nop                                              ; $595c: $00
	ld d, $25                                        ; $595d: $16 $25
	ld bc, $2401                                     ; $595f: $01 $01 $24
	inc hl                                           ; $5962: $23
	ld [hl+], a                                      ; $5963: $22
	ld hl, $7720                                     ; $5964: $21 $20 $77
	cp a                                             ; $5967: $bf
	sbc h                                            ; $5968: $9c
	ld bc, $011f                                     ; $5969: $01 $1f $01
	ld h, $00                                        ; $596c: $26 $00
	reti                                             ; $596e: $d9


	inc sp                                           ; $596f: $33
	sub [hl]                                         ; $5970: $96
	ld h, h                                          ; $5971: $64
	ld b, h                                          ; $5972: $44
	inc sp                                           ; $5973: $33
	ld [hl], $66                                     ; $5974: $36 $66
	ld b, e                                          ; $5976: $43
	inc sp                                           ; $5977: $33
	ld h, [hl]                                       ; $5978: $66
	ld h, [hl]                                       ; $5979: $66
	ld a, e                                          ; $597a: $7b
	ld sp, hl                                        ; $597b: $f9
	sub l                                            ; $597c: $95
	ld h, e                                          ; $597d: $63
	inc sp                                           ; $597e: $33
	ld h, [hl]                                       ; $597f: $66
	ld b, [hl]                                       ; $5980: $46
	inc sp                                           ; $5981: $33
	ld b, h                                          ; $5982: $44
	ld b, l                                          ; $5983: $45
	ld b, e                                          ; $5984: $43
	inc [hl]                                         ; $5985: $34
	ld b, [hl]                                       ; $5986: $46
	ld a, e                                          ; $5987: $7b
	db $eb                                           ; $5988: $eb
	sbc l                                            ; $5989: $9d
	ld h, h                                          ; $598a: $64
	ld h, [hl]                                       ; $598b: $66
	ld a, e                                          ; $598c: $7b
	ldh a, [c]                                       ; $598d: $f2
	ld a, a                                          ; $598e: $7f
	xor $df                                          ; $598f: $ee $df
	inc sp                                           ; $5991: $33
	ld hl, $8d02                                     ; $5992: $21 $02 $8d
	rst $38                                          ; $5995: $ff
	ld e, e                                          ; $5996: $5b
	rst AddAOntoHL                                          ; $5997: $ef
	rst AddAOntoHL                                          ; $5998: $ef
	ld b, d                                          ; $5999: $42
	jp $c342                                         ; $599a: $c3 $42 $c3


	ld d, d                                          ; $599d: $52
	jp $8191                                         ; $599e: $c3 $91 $81


	adc b                                            ; $59a1: $88
	add b                                            ; $59a2: $80
	pop hl                                           ; $59a3: $e1
	ldh [rP1], a                                     ; $59a4: $e0 $00
	rst $38                                          ; $59a6: $ff
	rrca                                             ; $59a7: $0f
	cp $98                                           ; $59a8: $fe $98
	ccf                                              ; $59aa: $3f
	ldh [$1f], a                                     ; $59ab: $e0 $1f
	ld hl, sp+$07                                    ; $59ad: $f8 $07
	rst $38                                          ; $59af: $ff
	rrca                                             ; $59b0: $0f
	ld a, e                                          ; $59b1: $7b
	cp $88                                           ; $59b2: $fe $88
	dec b                                            ; $59b4: $05
	db $fd                                           ; $59b5: $fd
	dec b                                            ; $59b6: $05
	db $fd                                           ; $59b7: $fd
	rlca                                             ; $59b8: $07
	rst $38                                          ; $59b9: $ff
	rst $38                                          ; $59ba: $ff
	ld c, $f9                                        ; $59bb: $0e $f9
	ld a, c                                          ; $59bd: $79
	rst $38                                          ; $59be: $ff
	add a                                            ; $59bf: $87
	db $fd                                           ; $59c0: $fd
	ld hl, $d8de                                     ; $59c1: $21 $de $d8
	rst $38                                          ; $59c4: $ff
	cp h                                             ; $59c5: $bc
	inc de                                           ; $59c6: $13
	inc de                                           ; $59c7: $13
	sbc d                                            ; $59c8: $9a
	sbc e                                            ; $59c9: $9b
	add b                                            ; $59ca: $80
	ld l, e                                          ; $59cb: $6b
	ret c                                            ; $59cc: $d8

	ld a, a                                          ; $59cd: $7f
	ld hl, sp-$64                                    ; $59ce: $f8 $9c
	ret nz                                           ; $59d0: $c0

	ld a, a                                          ; $59d1: $7f
	ret nz                                           ; $59d2: $c0

	ld a, e                                          ; $59d3: $7b
	ld hl, sp-$62                                    ; $59d4: $f8 $9e
	add e                                            ; $59d6: $83
	ld a, e                                          ; $59d7: $7b
	or $5f                                           ; $59d8: $f6 $5f
	jp nz, $019e                                     ; $59da: $c2 $9e $01

	ld l, e                                          ; $59dd: $6b
	ld a, [$0296]                                    ; $59de: $fa $96 $02
	cp $04                                           ; $59e1: $fe $04
	db $fc                                           ; $59e3: $fc
	inc b                                            ; $59e4: $04
	db $fc                                           ; $59e5: $fc
	ld [$08f8], sp                                   ; $59e6: $08 $f8 $08
	ld a, e                                          ; $59e9: $7b
	or h                                             ; $59ea: $b4
	rst SubAFromDE                                          ; $59eb: $df
	cp $df                                           ; $59ec: $fe $df
	rlca                                             ; $59ee: $07
	rst SubAFromDE                                          ; $59ef: $df
	ld bc, $dffd                                     ; $59f0: $01 $fd $df
	db $10                                           ; $59f3: $10
	rst SubAFromDE                                          ; $59f4: $df
	add sp, -$6d                                     ; $59f5: $e8 $93
	add [hl]                                         ; $59f7: $86
	add e                                            ; $59f8: $83
	sbc $db                                          ; $59f9: $de $db
	ld a, a                                          ; $59fb: $7f
	ld a, a                                          ; $59fc: $7f
	jr c, jr_012_5a37                                ; $59fd: $38 $38

	nop                                              ; $59ff: $00
	inc bc                                           ; $5a00: $03
	ld b, b                                          ; $5a01: $40
	ld [hl], h                                       ; $5a02: $74
	db $dd                                           ; $5a03: $dd
	ld [$d077], sp                                   ; $5a04: $08 $77 $d0
	ld a, a                                          ; $5a07: $7f
	cp b                                             ; $5a08: $b8
	sub l                                            ; $5a09: $95
	jr nc, jr_012_5a4b                               ; $5a0a: $30 $3f

	ld [$488f], sp                                   ; $5a0c: $08 $8f $48
	ld c, a                                          ; $5a0f: $4f
	inc h                                            ; $5a10: $24
	daa                                              ; $5a11: $27
	inc h                                            ; $5a12: $24
	daa                                              ; $5a13: $27
	ld e, a                                          ; $5a14: $5f
	or h                                             ; $5a15: $b4
	sbc l                                            ; $5a16: $9d
	ld [$77f7], sp                                   ; $5a17: $08 $f7 $77
	ld a, [$1080]                                    ; $5a1a: $fa $80 $10
	ldh a, [rAUDENA]                                 ; $5a1d: $f0 $26
	and $48                                          ; $5a1f: $e6 $48
	ret z                                            ; $5a21: $c8

	ld b, b                                          ; $5a22: $40
	ret nz                                           ; $5a23: $c0

	ld b, a                                          ; $5a24: $47
	rst JumpTable                                          ; $5a25: $c7
	add b                                            ; $5a26: $80
	add b                                            ; $5a27: $80
	add h                                            ; $5a28: $84
	add h                                            ; $5a29: $84
	add d                                            ; $5a2a: $82
	add d                                            ; $5a2b: $82
	inc d                                            ; $5a2c: $14
	inc d                                            ; $5a2d: $14
	ld [hl+], a                                      ; $5a2e: $22
	ld [hl+], a                                      ; $5a2f: $22
	ld h, c                                          ; $5a30: $61
	ld h, c                                          ; $5a31: $61
	ret nc                                           ; $5a32: $d0

	ldh a, [hDisp0_WY]                                     ; $5a33: $f0 $88
	ld hl, sp-$68                                    ; $5a35: $f8 $98

jr_012_5a37:
	ld hl, sp+$66                                    ; $5a37: $f8 $66
	ld h, [hl]                                       ; $5a39: $66
	ld b, c                                          ; $5a3a: $41
	sbc [hl]                                         ; $5a3b: $9e
	ld b, c                                          ; $5a3c: $41
	db $dd                                           ; $5a3d: $dd
	ld [$36df], sp                                   ; $5a3e: $08 $df $36
	rst SubAFromDE                                          ; $5a41: $df
	push bc                                          ; $5a42: $c5
	rst SubAFromDE                                          ; $5a43: $df
	ld b, h                                          ; $5a44: $44
	rst SubAFromDE                                          ; $5a45: $df
	ld a, [hl+]                                      ; $5a46: $2a
	rst SubAFromDE                                          ; $5a47: $df
	push hl                                          ; $5a48: $e5
	ld a, a                                          ; $5a49: $7f
	ld b, c                                          ; $5a4a: $41

jr_012_5a4b:
	ld [hl], a                                       ; $5a4b: $77
	cp h                                             ; $5a4c: $bc
	add b                                            ; $5a4d: $80
	jr z, jr_012_5a7f                                ; $5a4e: $28 $2f

	ld d, b                                          ; $5a50: $50
	ld e, a                                          ; $5a51: $5f
	ld e, b                                          ; $5a52: $58
	ld e, a                                          ; $5a53: $5f
	ld h, h                                          ; $5a54: $64
	ld h, a                                          ; $5a55: $67
	jp nz, $91c3                                     ; $5a56: $c2 $c3 $91

	ld d, c                                          ; $5a59: $51
	rst $38                                          ; $5a5a: $ff
	ld l, c                                          ; $5a5b: $69
	sbc $db                                          ; $5a5c: $de $db
	sbc [hl]                                         ; $5a5e: $9e
	sbc a                                            ; $5a5f: $9f
	adc [hl]                                         ; $5a60: $8e
	rrca                                             ; $5a61: $0f
	inc c                                            ; $5a62: $0c
	rrca                                             ; $5a63: $0f
	inc d                                            ; $5a64: $14
	rlca                                             ; $5a65: $07
	ld b, $07                                        ; $5a66: $06 $07
	xor $ef                                          ; $5a68: $ee $ef
	ld h, b                                          ; $5a6a: $60
	ldh [rAUD2LOW], a                                ; $5a6b: $e0 $18
	ld a, e                                          ; $5a6d: $7b
	ld l, h                                          ; $5a6e: $6c
	ld e, e                                          ; $5a6f: $5b
	ld c, [hl]                                       ; $5a70: $4e
	call c, $9901                                    ; $5a71: $dc $01 $99
	jp $3fc2                                         ; $5a74: $c3 $c2 $3f


	cp $0f                                           ; $5a77: $fe $0f
	ld hl, sp+$77                                    ; $5a79: $f8 $77
	cp $95                                           ; $5a7b: $fe $95
	rst $38                                          ; $5a7d: $ff
	or c                                             ; $5a7e: $b1

jr_012_5a7f:
	rst $38                                          ; $5a7f: $ff
	rst $38                                          ; $5a80: $ff
	reti                                             ; $5a81: $d9


	cp a                                             ; $5a82: $bf
	rst $38                                          ; $5a83: $ff
	add hl, bc                                       ; $5a84: $09
	rst $38                                          ; $5a85: $ff
	add hl, de                                       ; $5a86: $19
	ld a, e                                          ; $5a87: $7b
	cp $8b                                           ; $5a88: $fe $8b
	ld a, e                                          ; $5a8a: $7b
	rst $38                                          ; $5a8b: $ff
	ld e, $e1                                        ; $5a8c: $1e $e1
	ld h, c                                          ; $5a8e: $61
	ldh [c], a                                       ; $5a8f: $e2
	db $e3                                           ; $5a90: $e3
	db $fc                                           ; $5a91: $fc
	ccf                                              ; $5a92: $3f
	ldh a, [$3f]                                     ; $5a93: $f0 $3f
	ldh a, [$1f]                                     ; $5a95: $f0 $1f
	ldh a, [$df]                                     ; $5a97: $f0 $df
	ldh a, [$9f]                                     ; $5a99: $f0 $9f
	ld hl, sp+$0f                                    ; $5a9b: $f8 $0f
	dec c                                            ; $5a9d: $0d
	ld a, d                                          ; $5a9e: $7a
	and $7f                                          ; $5a9f: $e6 $7f
	db $e3                                           ; $5aa1: $e3
	ld a, a                                          ; $5aa2: $7f
	ld e, $6f                                        ; $5aa3: $1e $6f
	inc e                                            ; $5aa5: $1c
	ld a, a                                          ; $5aa6: $7f
	db $f4                                           ; $5aa7: $f4
	ld b, [hl]                                       ; $5aa8: $46
	ret nz                                           ; $5aa9: $c0

	ld [hl], a                                       ; $5aaa: $77
	cp h                                             ; $5aab: $bc
	ld a, a                                          ; $5aac: $7f
	push de                                          ; $5aad: $d5
	ld [hl], a                                       ; $5aae: $77
	cp $77                                           ; $5aaf: $fe $77
	res 3, e                                         ; $5ab1: $cb $9b
	cpl                                              ; $5ab3: $2f
	ldh a, [rIE]                                     ; $5ab4: $f0 $ff
	ccf                                              ; $5ab6: $3f
	ld a, e                                          ; $5ab7: $7b
	rst GetHLinHL                                          ; $5ab8: $cf
	sub h                                            ; $5ab9: $94
	ld c, $ff                                        ; $5aba: $0e $ff
	ld c, $fb                                        ; $5abc: $0e $fb
	ld e, $f3                                        ; $5abe: $1e $f3
	ld a, $e3                                        ; $5ac0: $3e $e3
	ld a, a                                          ; $5ac2: $7f
	jp Jump_012_7bff                                 ; $5ac3: $c3 $ff $7b


	pop hl                                           ; $5ac6: $e1
	add [hl]                                         ; $5ac7: $86
	adc a                                            ; $5ac8: $8f
	ld hl, sp-$31                                    ; $5ac9: $f8 $cf
	ld hl, sp+$4f                                    ; $5acb: $f8 $4f
	db $fc                                           ; $5acd: $fc
	rlca                                             ; $5ace: $07
	db $fc                                           ; $5acf: $fc
	rlca                                             ; $5ad0: $07
	db $f4                                           ; $5ad1: $f4
	rlca                                             ; $5ad2: $07
	ld a, [$f603]                                    ; $5ad3: $fa $03 $f6
	rlca                                             ; $5ad6: $07
	cp $83                                           ; $5ad7: $fe $83
	cp $03                                           ; $5ad9: $fe $03
	cp $0b                                           ; $5adb: $fe $0b
	cp $0b                                           ; $5add: $fe $0b
	rst $38                                          ; $5adf: $ff
	ld c, e                                          ; $5ae0: $4b
	ld a, e                                          ; $5ae1: $7b
	cp $9e                                           ; $5ae2: $fe $9e
	ld e, e                                          ; $5ae4: $5b
	ld l, [hl]                                       ; $5ae5: $6e
	ret nz                                           ; $5ae6: $c0

	ld [hl], e                                       ; $5ae7: $73
	and b                                            ; $5ae8: $a0
	ld a, [hl]                                       ; $5ae9: $7e
	ld a, [hl]                                       ; $5aea: $7e
	sub l                                            ; $5aeb: $95
	cp $05                                           ; $5aec: $fe $05
	cp $df                                           ; $5aee: $fe $df
	ldh [$bf], a                                     ; $5af0: $e0 $bf
	ret nz                                           ; $5af2: $c0

	ld a, a                                          ; $5af3: $7f
	add b                                            ; $5af4: $80
	ld a, a                                          ; $5af5: $7f
	ld l, [hl]                                       ; $5af6: $6e
	sbc e                                            ; $5af7: $9b
	sbc b                                            ; $5af8: $98
	jr nz, @+$01                                     ; $5af9: $20 $ff

	add hl, hl                                       ; $5afb: $29
	jp $c37f                                         ; $5afc: $c3 $7f $c3


	ld a, [hl]                                       ; $5aff: $7e
	ld [hl], a                                       ; $5b00: $77
	cp $7f                                           ; $5b01: $fe $7f
	bit 5, a                                         ; $5b03: $cb $6f
	cp $57                                           ; $5b05: $fe $57
	add h                                            ; $5b07: $84
	ld a, a                                          ; $5b08: $7f
	db $db                                           ; $5b09: $db
	ld e, [hl]                                       ; $5b0a: $5e
	ld [hl], h                                       ; $5b0b: $74
	sbc b                                            ; $5b0c: $98
	ld [bc], a                                       ; $5b0d: $02
	db $fd                                           ; $5b0e: $fd
	add $39                                          ; $5b0f: $c6 $39
	inc c                                            ; $5b11: $0c
	di                                               ; $5b12: $f3
	ld bc, $e06b                                     ; $5b13: $01 $6b $e0
	ld l, [hl]                                       ; $5b16: $6e
	or h                                             ; $5b17: $b4
	ld [hl], a                                       ; $5b18: $77
	cp $97                                           ; $5b19: $fe $97
	inc e                                            ; $5b1b: $1c
	rra                                              ; $5b1c: $1f
	db $e4                                           ; $5b1d: $e4
	rst SubAFromBC                                          ; $5b1e: $e7
	jr jr_012_5b40                                   ; $5b1f: $18 $1f

	jr c, @+$41                                      ; $5b21: $38 $3f

	halt                                             ; $5b23: $76
	ld b, h                                          ; $5b24: $44
	ld l, a                                          ; $5b25: $6f
	cp $9d                                           ; $5b26: $fe $9d
	inc b                                            ; $5b28: $04
	ei                                               ; $5b29: $fb
	ld d, a                                          ; $5b2a: $57
	cp h                                             ; $5b2b: $bc
	rst SubAFromDE                                          ; $5b2c: $df
	rra                                              ; $5b2d: $1f
	rst SubAFromDE                                          ; $5b2e: $df
	ret nz                                           ; $5b2f: $c0

	sbc h                                            ; $5b30: $9c
	ld e, [hl]                                       ; $5b31: $5e
	sbc $71                                          ; $5b32: $de $71
	ld l, d                                          ; $5b34: $6a
	ld [hl], $6f                                     ; $5b35: $36 $6f
	ld [hl], h                                       ; $5b37: $74
	ld d, a                                          ; $5b38: $57
	ldh [hDisp1_WX], a                                     ; $5b39: $e0 $96
	ld [hl-], a                                      ; $5b3b: $32
	inc de                                           ; $5b3c: $13
	xor $ef                                          ; $5b3d: $ee $ef
	inc e                                            ; $5b3f: $1c

jr_012_5b40:
	rra                                              ; $5b40: $1f
	inc h                                            ; $5b41: $24
	daa                                              ; $5b42: $27
	ld hl, sp+$3d                                    ; $5b43: $f8 $3d
	call nz, $9c73                                   ; $5b45: $c4 $73 $9c
	sbc h                                            ; $5b48: $9c
	ld [de], a                                       ; $5b49: $12
	ldh a, [c]                                       ; $5b4a: $f2
	rra                                              ; $5b4b: $1f
	ld a, d                                          ; $5b4c: $7a
	ld c, h                                          ; $5b4d: $4c
	sbc l                                            ; $5b4e: $9d
	ld e, $fe                                        ; $5b4f: $1e $fe
	ld a, $e6                                        ; $5b51: $3e $e6
	ld a, a                                          ; $5b53: $7f
	cp $7e                                           ; $5b54: $fe $7e
	adc b                                            ; $5b56: $88
	sbc l                                            ; $5b57: $9d
	cpl                                              ; $5b58: $2f
	db $fc                                           ; $5b59: $fc
	ld e, a                                          ; $5b5a: $5f
	ldh a, [c]                                       ; $5b5b: $f2

jr_012_5b5c:
	adc c                                            ; $5b5c: $89
	ld a, a                                          ; $5b5d: $7f
	rst $38                                          ; $5b5e: $ff
	rst $38                                          ; $5b5f: $ff
	add c                                            ; $5b60: $81
	ldh a, [$0e]                                     ; $5b61: $f0 $0e
	rlca                                             ; $5b63: $07
	ld hl, sp-$63                                    ; $5b64: $f8 $9d
	ld h, b                                          ; $5b66: $60
	ld [hl-], a                                      ; $5b67: $32
	ret nz                                           ; $5b68: $c0

	db $ed                                           ; $5b69: $ed
	nop                                              ; $5b6a: $00
	cp a                                             ; $5b6b: $bf
	ld b, b                                          ; $5b6c: $40
	jp c, $0f25                                      ; $5b6d: $da $25 $0f

jr_012_5b70:
	ldh a, [$0b]                                     ; $5b70: $f0 $0b
	ldh a, [$57]                                     ; $5b72: $f0 $57
	ld [hl-], a                                      ; $5b74: $32
	ld a, a                                          ; $5b75: $7f

jr_012_5b76:
	ld e, h                                          ; $5b76: $5c
	ld a, [hl]                                       ; $5b77: $7e
	pop bc                                           ; $5b78: $c1
	sbc [hl]                                         ; $5b79: $9e
	inc bc                                           ; $5b7a: $03
	ld a, e                                          ; $5b7b: $7b
	adc $67                                          ; $5b7c: $ce $67
	ld a, [hl-]                                      ; $5b7e: $3a
	ld [hl], a                                       ; $5b7f: $77
	cp $80                                           ; $5b80: $fe $80
	ld [hl], $c0                                     ; $5b82: $36 $c0
	dec a                                            ; $5b84: $3d
	ret nz                                           ; $5b85: $c0

	ld e, a                                          ; $5b86: $5f
	and b                                            ; $5b87: $a0
	ld e, $e0                                        ; $5b88: $1e $e0
	rla                                              ; $5b8a: $17
	add sp, $2b                                      ; $5b8b: $e8 $2b
	call nc, $f20d                                   ; $5b8d: $d4 $0d $f2
	ld [bc], a                                       ; $5b90: $02
	db $fd                                           ; $5b91: $fd
	ld c, [hl]                                       ; $5b92: $4e
	or b                                             ; $5b93: $b0
	jr jr_012_5b76                                   ; $5b94: $18 $e0

	dec a                                            ; $5b96: $3d
	ret nz                                           ; $5b97: $c0

	ld [hl], l                                       ; $5b98: $75
	add b                                            ; $5b99: $80
	jr c, jr_012_5b5c                                ; $5b9a: $38 $c0

	dec l                                            ; $5b9c: $2d
	ret nz                                           ; $5b9d: $c0

	db $f4                                           ; $5b9e: $f4
	nop                                              ; $5b9f: $00
	ld a, [hl+]                                      ; $5ba0: $2a
	adc [hl]                                         ; $5ba1: $8e
	ret nz                                           ; $5ba2: $c0

	rla                                              ; $5ba3: $17
	ldh [$79], a                                     ; $5ba4: $e0 $79
	add [hl]                                         ; $5ba6: $86
	ld d, e                                          ; $5ba7: $53
	xor h                                            ; $5ba8: $ac
	add e                                            ; $5ba9: $83
	ld a, h                                          ; $5baa: $7c
	ld b, $f8                                        ; $5bab: $06 $f8
	rrca                                             ; $5bad: $0f
	ldh a, [rTMA]                                    ; $5bae: $f0 $06
	ld hl, sp+$17                                    ; $5bb0: $f8 $17
	add sp, $52                                      ; $5bb2: $e8 $52
	nop                                              ; $5bb4: $00
	sbc [hl]                                         ; $5bb5: $9e
	ld [hl+], a                                      ; $5bb6: $22
	call c, $9e01                                    ; $5bb7: $dc $01 $9e
	dec bc                                           ; $5bba: $0b
	db $dd                                           ; $5bbb: $dd
	ld bc, $f577                                     ; $5bbc: $01 $77 $f5
	sbc d                                            ; $5bbf: $9a
	ld h, $02                                        ; $5bc0: $26 $02
	jr z, jr_012_5bed                                ; $5bc2: $28 $29

	ld e, $de                                        ; $5bc4: $1e $de
	ld bc, $0280                                     ; $5bc6: $01 $80 $02
	inc bc                                           ; $5bc9: $03
	inc b                                            ; $5bca: $04
	dec b                                            ; $5bcb: $05
	rra                                              ; $5bcc: $1f
	ld bc, $0701                                     ; $5bcd: $01 $01 $07
	ld [$0a09], sp                                   ; $5bd0: $08 $09 $0a
	ld a, [hl+]                                      ; $5bd3: $2a
	ld bc, $0c0b                                     ; $5bd4: $01 $0b $0c
	dec c                                            ; $5bd7: $0d
	ld c, $0f                                        ; $5bd8: $0e $0f
	cpl                                              ; $5bda: $2f
	ld bc, $1101                                     ; $5bdb: $01 $01 $11
	ld [de], a                                       ; $5bde: $12
	inc de                                           ; $5bdf: $13
	inc d                                            ; $5be0: $14
	ld l, $01                                        ; $5be1: $2e $01
	ld bc, $1716                                     ; $5be3: $01 $16 $17
	jr jr_012_5b70                                   ; $5be6: $18 $88

	add hl, de                                       ; $5be8: $19
	dec l                                            ; $5be9: $2d
	ld bc, $1b01                                     ; $5bea: $01 $01 $1b

jr_012_5bed:
	inc e                                            ; $5bed: $1c
	dec e                                            ; $5bee: $1d
	ld a, [de]                                       ; $5bef: $1a
	inc l                                            ; $5bf0: $2c
	ld bc, $1501                                     ; $5bf1: $01 $01 $15
	db $10                                           ; $5bf4: $10
	ld b, $00                                        ; $5bf5: $06 $00
	dec hl                                           ; $5bf7: $2b
	ld bc, $2701                                     ; $5bf8: $01 $01 $27
	dec h                                            ; $5bfb: $25
	inc h                                            ; $5bfc: $24
	inc hl                                           ; $5bfd: $23
	ld hl, $bf77                                     ; $5bfe: $21 $77 $bf
	sbc h                                            ; $5c01: $9c
	ld bc, $0120                                     ; $5c02: $01 $20 $01
	ld h, $00                                        ; $5c05: $26 $00
	reti                                             ; $5c07: $d9


	inc sp                                           ; $5c08: $33
	sub [hl]                                         ; $5c09: $96
	ld h, h                                          ; $5c0a: $64
	ld b, h                                          ; $5c0b: $44
	inc sp                                           ; $5c0c: $33
	ld [hl], $66                                     ; $5c0d: $36 $66
	ld b, e                                          ; $5c0f: $43
	inc sp                                           ; $5c10: $33
	ld h, [hl]                                       ; $5c11: $66
	ld h, [hl]                                       ; $5c12: $66
	ld a, e                                          ; $5c13: $7b
	ld sp, hl                                        ; $5c14: $f9
	sub l                                            ; $5c15: $95
	ld h, e                                          ; $5c16: $63
	inc sp                                           ; $5c17: $33
	ld h, [hl]                                       ; $5c18: $66
	ld b, [hl]                                       ; $5c19: $46
	inc sp                                           ; $5c1a: $33
	inc [hl]                                         ; $5c1b: $34
	ld b, l                                          ; $5c1c: $45
	ld b, e                                          ; $5c1d: $43
	inc sp                                           ; $5c1e: $33
	ld b, [hl]                                       ; $5c1f: $46
	ld a, e                                          ; $5c20: $7b
	db $eb                                           ; $5c21: $eb
	sbc l                                            ; $5c22: $9d
	ld h, h                                          ; $5c23: $64
	ld h, [hl]                                       ; $5c24: $66
	ld a, e                                          ; $5c25: $7b
	ldh a, [c]                                       ; $5c26: $f2
	ld a, a                                          ; $5c27: $7f
	xor $df                                          ; $5c28: $ee $df
	inc sp                                           ; $5c2a: $33
	ld e, e                                          ; $5c2b: $5b
	ld [bc], a                                       ; $5c2c: $02
	adc l                                            ; $5c2d: $8d
	rst $38                                          ; $5c2e: $ff
	ld e, e                                          ; $5c2f: $5b
	rst AddAOntoHL                                          ; $5c30: $ef
	rst AddAOntoHL                                          ; $5c31: $ef
	ld b, d                                          ; $5c32: $42
	jp $c342                                         ; $5c33: $c3 $42 $c3


	ld d, d                                          ; $5c36: $52
	jp $8191                                         ; $5c37: $c3 $91 $81


	adc b                                            ; $5c3a: $88
	add b                                            ; $5c3b: $80
	pop hl                                           ; $5c3c: $e1
	ldh [rP1], a                                     ; $5c3d: $e0 $00
	rst $38                                          ; $5c3f: $ff
	ld b, a                                          ; $5c40: $47
	cp $87                                           ; $5c41: $fe $87
	inc bc                                           ; $5c43: $03
	rst $38                                          ; $5c44: $ff
	inc c                                            ; $5c45: $0c
	db $fc                                           ; $5c46: $fc
	dec d                                            ; $5c47: $15
	push af                                          ; $5c48: $f5

jr_012_5c49:
	ld a, [hl+]                                      ; $5c49: $2a
	ld [$eb2b], a                                    ; $5c4a: $ea $2b $eb
	ld h, $e6                                        ; $5c4d: $26 $e6
	jr jr_012_5c49                                   ; $5c4f: $18 $f8

	nop                                              ; $5c51: $00
	rst $38                                          ; $5c52: $ff
	add b                                            ; $5c53: $80
	rst $38                                          ; $5c54: $ff
	ld b, b                                          ; $5c55: $40
	ld a, a                                          ; $5c56: $7f
	and b                                            ; $5c57: $a0
	cp a                                             ; $5c58: $bf
	jr nz, jr_012_5c9a                               ; $5c59: $20 $3f

	ld [hl], a                                       ; $5c5b: $77
	db $fc                                           ; $5c5c: $fc
	ld a, a                                          ; $5c5d: $7f
	or $7f                                           ; $5c5e: $f6 $7f
	ldh a, [$9d]                                     ; $5c60: $f0 $9d
	inc b                                            ; $5c62: $04
	ei                                               ; $5c63: $fb
	ld d, a                                          ; $5c64: $57
	jp nc, $839e                                     ; $5c65: $d2 $9e $83

	ld a, e                                          ; $5c68: $7b
	ldh [$5f], a                                     ; $5c69: $e0 $5f
	ldh a, [c]                                       ; $5c6b: $f2
	sbc [hl]                                         ; $5c6c: $9e
	ld bc, $b243                                     ; $5c6d: $01 $43 $b2
	sub l                                            ; $5c70: $95
	ld de, $0af1                                     ; $5c71: $11 $f1 $0a
	ld a, [$f808]                                    ; $5c74: $fa $08 $f8
	ld [$10f8], sp                                   ; $5c77: $08 $f8 $10
	ldh a, [rPCM34]                                  ; $5c7a: $f0 $77

Jump_012_5c7c:
	cp $7f                                           ; $5c7c: $fe $7f
	ldh a, [c]                                       ; $5c7e: $f2
	sbc [hl]                                         ; $5c7f: $9e
	ret nz                                           ; $5c80: $c0

	ld a, e                                          ; $5c81: $7b
	or d                                             ; $5c82: $b2
	ld a, a                                          ; $5c83: $7f
	cp $7f                                           ; $5c84: $fe $7f
	or [hl]                                          ; $5c86: $b6
	ld [hl], a                                       ; $5c87: $77
	cp $9b                                           ; $5c88: $fe $9b
	inc hl                                           ; $5c8a: $23
	ccf                                              ; $5c8b: $3f
	cpl                                              ; $5c8c: $2f
	inc a                                            ; $5c8d: $3c
	ld h, a                                          ; $5c8e: $67
	ret c                                            ; $5c8f: $d8

	sub a                                            ; $5c90: $97
	inc a                                            ; $5c91: $3c
	rst $38                                          ; $5c92: $ff
	cp $c3                                           ; $5c93: $fe $c3
	rst $38                                          ; $5c95: $ff
	ld bc, $0ef0                                     ; $5c96: $01 $f0 $0e
	ld a, e                                          ; $5c99: $7b

jr_012_5c9a:
	db $f4                                           ; $5c9a: $f4
	sbc [hl]                                         ; $5c9b: $9e
	rst SubAFromDE                                          ; $5c9c: $df
	ld e, a                                          ; $5c9d: $5f
	jp nz, $a47f                                     ; $5c9e: $c2 $7f $a4

	adc l                                            ; $5ca1: $8d

jr_012_5ca2:
	rst $38                                          ; $5ca2: $ff
	ld l, c                                          ; $5ca3: $69
	sbc $db                                          ; $5ca4: $de $db
	sbc [hl]                                         ; $5ca6: $9e
	sbc a                                            ; $5ca7: $9f
	adc [hl]                                         ; $5ca8: $8e
	rrca                                             ; $5ca9: $0f
	inc c                                            ; $5caa: $0c
	rrca                                             ; $5cab: $0f
	inc d                                            ; $5cac: $14
	rlca                                             ; $5cad: $07
	ld b, $07                                        ; $5cae: $06 $07
	xor $ef                                          ; $5cb0: $ee $ef
	ld de, $77f1                                     ; $5cb2: $11 $f1 $77
	or d                                             ; $5cb5: $b2
	sbc l                                            ; $5cb6: $9d
	add hl, bc                                       ; $5cb7: $09
	ld sp, hl                                        ; $5cb8: $f9
	ld [hl], a                                       ; $5cb9: $77
	cp $7f                                           ; $5cba: $fe $7f
	ld hl, sp-$69                                    ; $5cbc: $f8 $97
	inc b                                            ; $5cbe: $04
	db $fc                                           ; $5cbf: $fc
	ccf                                              ; $5cc0: $3f
	jr nc, jr_012_5ca2                               ; $5cc1: $30 $df

	ret c                                            ; $5cc3: $d8

	sbc a                                            ; $5cc4: $9f
	sbc a                                            ; $5cc5: $9f
	db $dd                                           ; $5cc6: $dd
	rra                                              ; $5cc7: $1f
	db $dd                                           ; $5cc8: $dd
	dec c                                            ; $5cc9: $0d
	rst SubAFromDE                                          ; $5cca: $df
	rlca                                             ; $5ccb: $07
	adc a                                            ; $5ccc: $8f
	rst $38                                          ; $5ccd: $ff
	ld e, $f9                                        ; $5cce: $1e $f9
	ld a, c                                          ; $5cd0: $79
	cp $86                                           ; $5cd1: $fe $86
	cp $20                                           ; $5cd3: $fe $20
	rst SubAFromDE                                          ; $5cd5: $df
	sbc $f3                                          ; $5cd6: $de $f3
	or e                                             ; $5cd8: $b3
	ld a, [de]                                       ; $5cd9: $1a
	dec de                                           ; $5cda: $1b
	add d                                            ; $5cdb: $82
	add e                                            ; $5cdc: $83
	ld [hl], a                                       ; $5cdd: $77
	ld h, d                                          ; $5cde: $62
	ld [hl], a                                       ; $5cdf: $77
	ld a, $9c                                        ; $5ce0: $3e $9c
	ret nz                                           ; $5ce2: $c0

	ld a, a                                          ; $5ce3: $7f
	ret nz                                           ; $5ce4: $c0

	ld [hl], e                                       ; $5ce5: $73
	xor [hl]                                         ; $5ce6: $ae
	sbc d                                            ; $5ce7: $9a
	dec c                                            ; $5ce8: $0d
	rst $38                                          ; $5ce9: $ff
	rrca                                             ; $5cea: $0f
	rst $38                                          ; $5ceb: $ff
	add hl, bc                                       ; $5cec: $09
	ld a, e                                          ; $5ced: $7b

jr_012_5cee:
	ld e, b                                          ; $5cee: $58
	ld a, a                                          ; $5cef: $7f
	cp $93                                           ; $5cf0: $fe $93
	ld [bc], a                                       ; $5cf2: $02
	cp $04                                           ; $5cf3: $fe $04
	db $fc                                           ; $5cf5: $fc
	rrca                                             ; $5cf6: $0f
	rst $38                                          ; $5cf7: $ff
	inc b                                            ; $5cf8: $04
	db $fc                                           ; $5cf9: $fc
	ld [bc], a                                       ; $5cfa: $02
	cp $02                                           ; $5cfb: $fe $02
	cp $77                                           ; $5cfd: $fe $77
	ldh a, [$6f]                                     ; $5cff: $f0 $6f
	ld b, h                                          ; $5d01: $44
	rst SubAFromDE                                          ; $5d02: $df
	dec b                                            ; $5d03: $05
	rst SubAFromDE                                          ; $5d04: $df
	ld b, d                                          ; $5d05: $42
	rst SubAFromDE                                          ; $5d06: $df
	ld b, c                                          ; $5d07: $41
	rst SubAFromDE                                          ; $5d08: $df
	ld hl, $1cdf                                     ; $5d09: $21 $df $1c
	rst SubAFromDE                                          ; $5d0c: $df
	jr z, jr_012_5cee                                ; $5d0d: $28 $df

	and h                                            ; $5d0f: $a4
	sub c                                            ; $5d10: $91
	ld b, h                                          ; $5d11: $44
	call nz, $9b9e                                   ; $5d12: $c4 $9e $9b
	add $c7                                          ; $5d15: $c6 $c7
	ld a, e                                          ; $5d17: $7b
	ld a, e                                          ; $5d18: $7b
	jr c, jr_012_5d53                                ; $5d19: $38 $38

	nop                                              ; $5d1b: $00
	inc bc                                           ; $5d1c: $03
	ld b, b                                          ; $5d1d: $40
	ld [hl], h                                       ; $5d1e: $74
	db $dd                                           ; $5d1f: $dd
	ld [$dc77], sp                                   ; $5d20: $08 $77 $dc
	ld a, a                                          ; $5d23: $7f
	or [hl]                                          ; $5d24: $b6
	sub l                                            ; $5d25: $95
	jr nc, jr_012_5d67                               ; $5d26: $30 $3f

	ld [$488f], sp                                   ; $5d28: $08 $8f $48
	ld c, a                                          ; $5d2b: $4f
	inc h                                            ; $5d2c: $24
	daa                                              ; $5d2d: $27
	inc h                                            ; $5d2e: $24
	daa                                              ; $5d2f: $27
	ld e, a                                          ; $5d30: $5f
	ld d, h                                          ; $5d31: $54
	sbc l                                            ; $5d32: $9d
	ld [$77f7], sp                                   ; $5d33: $08 $f7 $77
	ld a, [$f693]                                    ; $5d36: $fa $93 $f6
	rlca                                             ; $5d39: $07
	cp $83                                           ; $5d3a: $fe $83
	cp $03                                           ; $5d3c: $fe $03
	cp $0b                                           ; $5d3e: $fe $0b
	cp $0b                                           ; $5d40: $fe $0b
	rst $38                                          ; $5d42: $ff
	ld c, e                                          ; $5d43: $4b
	ld a, e                                          ; $5d44: $7b
	cp $96                                           ; $5d45: $fe $96
	ld e, e                                          ; $5d47: $5b
	ld b, h                                          ; $5d48: $44
	call nz, $e222                                   ; $5d49: $c4 $22 $e2
	ld hl, $10e1                                     ; $5d4c: $21 $e1 $10
	ldh a, [rPCM34]                                  ; $5d4f: $f0 $77
	ld c, d                                          ; $5d51: $4a
	sbc e                                            ; $5d52: $9b

jr_012_5d53:
	ld e, $fe                                        ; $5d53: $1e $fe
	rrca                                             ; $5d55: $0f
	ld sp, hl                                        ; $5d56: $f9
	db $dd                                           ; $5d57: $dd
	ld [$36df], sp                                   ; $5d58: $08 $df $36
	rst SubAFromDE                                          ; $5d5b: $df
	push bc                                          ; $5d5c: $c5
	rst SubAFromDE                                          ; $5d5d: $df
	ld b, h                                          ; $5d5e: $44
	rst SubAFromDE                                          ; $5d5f: $df
	ld a, [hl+]                                      ; $5d60: $2a
	rst SubAFromDE                                          ; $5d61: $df
	push hl                                          ; $5d62: $e5
	sbc l                                            ; $5d63: $9d
	rst $38                                          ; $5d64: $ff
	ccf                                              ; $5d65: $3f
	ld [hl], a                                       ; $5d66: $77

jr_012_5d67:
	cp h                                             ; $5d67: $bc
	adc a                                            ; $5d68: $8f
	jr z, jr_012_5d9a                                ; $5d69: $28 $2f

	ld d, b                                          ; $5d6b: $50
	ld e, a                                          ; $5d6c: $5f
	ld e, b                                          ; $5d6d: $58
	ld e, a                                          ; $5d6e: $5f
	ld h, h                                          ; $5d6f: $64
	ld h, a                                          ; $5d70: $67
	jp nz, $91c3                                     ; $5d71: $c2 $c3 $91

	ld d, c                                          ; $5d74: $51
	jp $c37f                                         ; $5d75: $c3 $7f $c3


	ld a, [hl]                                       ; $5d78: $7e
	ld [hl], a                                       ; $5d79: $77
	cp $7f                                           ; $5d7a: $fe $7f
	cp e                                             ; $5d7c: $bb
	ld l, a                                          ; $5d7d: $6f
	cp $46                                           ; $5d7e: $fe $46
	or b                                             ; $5d80: $b0
	sbc e                                            ; $5d81: $9b
	rrca                                             ; $5d82: $0f
	db $fc                                           ; $5d83: $fc
	rlca                                             ; $5d84: $07
	rst $38                                          ; $5d85: $ff
	ld a, e                                          ; $5d86: $7b
	cp $7f                                           ; $5d87: $fe $7f
	ld a, [$447f]                                    ; $5d89: $fa $7f $44
	sbc [hl]                                         ; $5d8c: $9e
	ld hl, sp+$77                                    ; $5d8d: $f8 $77
	cp $99                                           ; $5d8f: $fe $99
	rst $38                                          ; $5d91: $ff
	or c                                             ; $5d92: $b1
	rst $38                                          ; $5d93: $ff
	rst $38                                          ; $5d94: $ff
	reti                                             ; $5d95: $d9


	cp a                                             ; $5d96: $bf
	ld a, e                                          ; $5d97: $7b
	dec l                                            ; $5d98: $2d
	sbc [hl]                                         ; $5d99: $9e

jr_012_5d9a:
	add hl, de                                       ; $5d9a: $19
	ld a, e                                          ; $5d9b: $7b
	cp $85                                           ; $5d9c: $fe $85
	ld a, e                                          ; $5d9e: $7b
	rst $38                                          ; $5d9f: $ff
	ld e, $e1                                        ; $5da0: $1e $e1
	ld h, c                                          ; $5da2: $61
	ldh [c], a                                       ; $5da3: $e2
	db $e3                                           ; $5da4: $e3
	db $fc                                           ; $5da5: $fc
	ccf                                              ; $5da6: $3f
	ldh a, [$3f]                                     ; $5da7: $f0 $3f
	ldh a, [$1f]                                     ; $5da9: $f0 $1f
	ldh a, [$df]                                     ; $5dab: $f0 $df
	ldh a, [$9f]                                     ; $5dad: $f0 $9f
	ld hl, sp+$0f                                    ; $5daf: $f8 $0f
	rst SubAFromDE                                          ; $5db1: $df
	ldh [$bf], a                                     ; $5db2: $e0 $bf
	ret nz                                           ; $5db4: $c0

	ld a, a                                          ; $5db5: $7f
	add b                                            ; $5db6: $80
	ld a, a                                          ; $5db7: $7f
	ld l, [hl]                                       ; $5db8: $6e
	ld e, e                                          ; $5db9: $5b
	sbc h                                            ; $5dba: $9c
	jr nz, @+$01                                     ; $5dbb: $20 $ff

	add hl, hl                                       ; $5dbd: $29
	ld l, [hl]                                       ; $5dbe: $6e
	ld e, d                                          ; $5dbf: $5a
	ld [hl], e                                       ; $5dc0: $73
	nop                                              ; $5dc1: $00
	ld a, a                                          ; $5dc2: $7f
	inc d                                            ; $5dc3: $14
	sbc h                                            ; $5dc4: $9c
	cp $05                                           ; $5dc5: $fe $05
	cp $77                                           ; $5dc7: $fe $77
	cp h                                             ; $5dc9: $bc
	ld a, a                                          ; $5dca: $7f
	push de                                          ; $5dcb: $d5
	ld [hl], a                                       ; $5dcc: $77
	cp $77                                           ; $5dcd: $fe $77
	res 3, e                                         ; $5dcf: $cb $9b
	cpl                                              ; $5dd1: $2f
	ldh a, [rIE]                                     ; $5dd2: $f0 $ff
	ccf                                              ; $5dd4: $3f
	ld a, d                                          ; $5dd5: $7a
	rst SubAFromDE                                          ; $5dd6: $df
	sub h                                            ; $5dd7: $94
	ld c, $ff                                        ; $5dd8: $0e $ff
	ld c, $fb                                        ; $5dda: $0e $fb
	ld e, $f3                                        ; $5ddc: $1e $f3
	ld a, $e3                                        ; $5dde: $3e $e3
	ld a, a                                          ; $5de0: $7f
	jp Jump_012_7bff                                 ; $5de1: $c3 $ff $7b


	pop hl                                           ; $5de4: $e1
	sbc d                                            ; $5de5: $9a
	adc a                                            ; $5de6: $8f
	ld hl, sp-$31                                    ; $5de7: $f8 $cf
	ld hl, sp+$4f                                    ; $5de9: $f8 $4f
	ld a, e                                          ; $5deb: $7b
	adc a                                            ; $5dec: $8f
	sbc d                                            ; $5ded: $9a
	rlca                                             ; $5dee: $07
	db $f4                                           ; $5def: $f4
	rlca                                             ; $5df0: $07
	ld a, [$5703]                                    ; $5df1: $fa $03 $57
	inc d                                            ; $5df4: $14
	ld c, e                                          ; $5df5: $4b
	cp $73                                           ; $5df6: $fe $73
	db $ec                                           ; $5df8: $ec
	sub a                                            ; $5df9: $97
	inc e                                            ; $5dfa: $1c
	rra                                              ; $5dfb: $1f
	db $e4                                           ; $5dfc: $e4
	rst SubAFromBC                                          ; $5dfd: $e7
	jr jr_012_5e1f                                   ; $5dfe: $18 $1f

	jr c, jr_012_5e41                                ; $5e00: $38 $3f

	ld l, [hl]                                       ; $5e02: $6e
	sub d                                            ; $5e03: $92
	ld a, a                                          ; $5e04: $7f
	cp $df                                           ; $5e05: $fe $df
	rra                                              ; $5e07: $1f
	rst SubAFromDE                                          ; $5e08: $df
	ret nz                                           ; $5e09: $c0

	sbc h                                            ; $5e0a: $9c
	ld e, [hl]                                       ; $5e0b: $5e
	sbc $71                                          ; $5e0c: $de $71
	ld h, c                                          ; $5e0e: $61
	and $66                                          ; $5e0f: $e6 $66
	sbc b                                            ; $5e11: $98
	ld h, a                                          ; $5e12: $67

jr_012_5e13:
	cp $96                                           ; $5e13: $fe $96
	ld [hl-], a                                      ; $5e15: $32
	inc de                                           ; $5e16: $13
	xor $ef                                          ; $5e17: $ee $ef
	inc e                                            ; $5e19: $1c
	rra                                              ; $5e1a: $1f
	inc h                                            ; $5e1b: $24
	daa                                              ; $5e1c: $27
	ld hl, sp+$6b                                    ; $5e1d: $f8 $6b

jr_012_5e1f:
	ldh a, [$99]                                     ; $5e1f: $f0 $99
	ld [de], a                                       ; $5e21: $12
	ldh a, [c]                                       ; $5e22: $f2
	rra                                              ; $5e23: $1f
	rst $38                                          ; $5e24: $ff
	db $10                                           ; $5e25: $10
	ldh a, [$7a]                                     ; $5e26: $f0 $7a
	sub $43                                          ; $5e28: $d6 $43
	and b                                            ; $5e2a: $a0
	ld a, a                                          ; $5e2b: $7f
	dec a                                            ; $5e2c: $3d

jr_012_5e2d:
	ld a, a                                          ; $5e2d: $7f
	xor h                                            ; $5e2e: $ac
	ld a, a                                          ; $5e2f: $7f
	ld h, c                                          ; $5e30: $61
	sbc l                                            ; $5e31: $9d
	inc bc                                           ; $5e32: $03
	db $fc                                           ; $5e33: $fc
	ld a, e                                          ; $5e34: $7b
	cp h                                             ; $5e35: $bc
	ld e, d                                          ; $5e36: $5a
	ld [$3680], a                                    ; $5e37: $ea $80 $36
	ret nz                                           ; $5e3a: $c0

	dec a                                            ; $5e3b: $3d
	ret nz                                           ; $5e3c: $c0

	ld e, a                                          ; $5e3d: $5f
	and b                                            ; $5e3e: $a0
	ld e, $e0                                        ; $5e3f: $1e $e0

jr_012_5e41:
	rla                                              ; $5e41: $17
	add sp, $2b                                      ; $5e42: $e8 $2b
	call nc, $f20d                                   ; $5e44: $d4 $0d $f2
	ld [bc], a                                       ; $5e47: $02
	db $fd                                           ; $5e48: $fd
	ld c, [hl]                                       ; $5e49: $4e
	or b                                             ; $5e4a: $b0
	jr jr_012_5e2d                                   ; $5e4b: $18 $e0

	dec a                                            ; $5e4d: $3d
	ret nz                                           ; $5e4e: $c0

	ld [hl], l                                       ; $5e4f: $75
	add b                                            ; $5e50: $80
	jr c, jr_012_5e13                                ; $5e51: $38 $c0

	dec l                                            ; $5e53: $2d
	ret nz                                           ; $5e54: $c0

	db $f4                                           ; $5e55: $f4
	nop                                              ; $5e56: $00
	ld a, [hl+]                                      ; $5e57: $2a
	add b                                            ; $5e58: $80
	ret nz                                           ; $5e59: $c0

	rla                                              ; $5e5a: $17
	ldh [$79], a                                     ; $5e5b: $e0 $79
	add [hl]                                         ; $5e5d: $86
	ld d, e                                          ; $5e5e: $53
	xor h                                            ; $5e5f: $ac
	add e                                            ; $5e60: $83
	ld a, h                                          ; $5e61: $7c
	ld b, $f8                                        ; $5e62: $06 $f8
	rrca                                             ; $5e64: $0f
	ldh a, [rTMA]                                    ; $5e65: $f0 $06
	ld hl, sp+$17                                    ; $5e67: $f8 $17
	add sp, $07                                      ; $5e69: $e8 $07
	ld hl, sp-$63                                    ; $5e6b: $f8 $9d
	ld h, b                                          ; $5e6d: $60
	ld [hl-], a                                      ; $5e6e: $32
	ret nz                                           ; $5e6f: $c0

	db $ed                                           ; $5e70: $ed
	nop                                              ; $5e71: $00
	cp a                                             ; $5e72: $bf
	ld b, b                                          ; $5e73: $40
	jp c, $0f25                                      ; $5e74: $da $25 $0f

	ldh a, [$9d]                                     ; $5e77: $f0 $9d
	dec bc                                           ; $5e79: $0b
	ldh a, [$67]                                     ; $5e7a: $f0 $67
	cp b                                             ; $5e7c: $b8
	ld a, a                                          ; $5e7d: $7f
	add $99                                          ; $5e7e: $c6 $99
	add $39                                          ; $5e80: $c6 $39
	inc c                                            ; $5e82: $0c
	di                                               ; $5e83: $f3
	ld bc, $55fe                                     ; $5e84: $01 $fe $55
	nop                                              ; $5e87: $00
	sbc [hl]                                         ; $5e88: $9e
	inc b                                            ; $5e89: $04
	call c, $9a01                                    ; $5e8a: $dc $01 $9a
	dec d                                            ; $5e8d: $15
	ld bc, $0201                                     ; $5e8e: $01 $01 $02
	inc bc                                           ; $5e91: $03
	ld [hl], a                                       ; $5e92: $77
	push af                                          ; $5e93: $f5
	add b                                            ; $5e94: $80
	ld b, $07                                        ; $5e95: $06 $07
	ld [$0a09], sp                                   ; $5e97: $08 $09 $0a
	ld bc, $0606                                     ; $5e9a: $01 $06 $06
	inc c                                            ; $5e9d: $0c
	dec c                                            ; $5e9e: $0d
	ld c, $0f                                        ; $5e9f: $0e $0f
	ld sp, $0601                                     ; $5ea1: $31 $01 $06
	ld de, $1312                                     ; $5ea4: $11 $12 $13
	inc d                                            ; $5ea7: $14
	jr nc, jr_012_5eab                               ; $5ea8: $30 $01

	dec d                                            ; $5eaa: $15

jr_012_5eab:
	ld b, $17                                        ; $5eab: $06 $17
	jr @+$1b                                         ; $5ead: $18 $19

	cpl                                              ; $5eaf: $2f
	ld bc, $1b01                                     ; $5eb0: $01 $01 $1b
	inc e                                            ; $5eb3: $1c
	add b                                            ; $5eb4: $80
	dec e                                            ; $5eb5: $1d
	ld e, $2e                                        ; $5eb6: $1e $2e
	ld bc, $1b1b                                     ; $5eb8: $01 $1b $1b
	ld hl, $2322                                     ; $5ebb: $21 $22 $23
	dec l                                            ; $5ebe: $2d
	ld bc, $201b                                     ; $5ebf: $01 $1b $20
	rra                                              ; $5ec2: $1f
	ld a, [de]                                       ; $5ec3: $1a
	ld d, $2c                                        ; $5ec4: $16 $2c
	ld bc, $1001                                     ; $5ec6: $01 $01 $10
	dec bc                                           ; $5ec9: $0b
	dec b                                            ; $5eca: $05
	nop                                              ; $5ecb: $00
	dec hl                                           ; $5ecc: $2b
	ld bc, $2a01                                     ; $5ecd: $01 $01 $2a
	add hl, hl                                       ; $5ed0: $29
	jr z, jr_012_5efa                                ; $5ed1: $28 $27

	ld h, $de                                        ; $5ed3: $26 $de
	ld bc, $259b                                     ; $5ed5: $01 $9b $25
	ld bc, $0124                                     ; $5ed8: $01 $24 $01
	add hl, hl                                       ; $5edb: $29
	nop                                              ; $5edc: $00
	db $dd                                           ; $5edd: $dd
	inc sp                                           ; $5ede: $33
	sub l                                            ; $5edf: $95
	ld [hl], $63                                     ; $5ee0: $36 $63
	inc sp                                           ; $5ee2: $33
	ld [hl], $66                                     ; $5ee3: $36 $66
	ld b, h                                          ; $5ee5: $44
	ld [hl], $66                                     ; $5ee6: $36 $66
	ld h, [hl]                                       ; $5ee8: $66
	ld b, e                                          ; $5ee9: $43
	ld a, e                                          ; $5eea: $7b
	db $fc                                           ; $5eeb: $fc
	ld a, e                                          ; $5eec: $7b
	push af                                          ; $5eed: $f5
	ld a, a                                          ; $5eee: $7f
	pop af                                           ; $5eef: $f1
	adc [hl]                                         ; $5ef0: $8e
	ld b, h                                          ; $5ef1: $44
	ld b, [hl]                                       ; $5ef2: $46
	inc sp                                           ; $5ef3: $33
	ld b, h                                          ; $5ef4: $44
	ld b, l                                          ; $5ef5: $45
	ld b, e                                          ; $5ef6: $43
	inc [hl]                                         ; $5ef7: $34
	ld b, [hl]                                       ; $5ef8: $46
	ld b, h                                          ; $5ef9: $44

jr_012_5efa:
	inc sp                                           ; $5efa: $33
	ld [hl], $64                                     ; $5efb: $36 $64
	ld h, [hl]                                       ; $5efd: $66
	inc sp                                           ; $5efe: $33
	ld h, [hl]                                       ; $5eff: $66
	ld b, [hl]                                       ; $5f00: $46
	ld h, e                                          ; $5f01: $63
	sbc $33                                          ; $5f02: $de $33
	ldh [rSB], a                                     ; $5f04: $e0 $01
	sub h                                            ; $5f06: $94
	inc e                                            ; $5f07: $1c
	rra                                              ; $5f08: $1f
	db $e4                                           ; $5f09: $e4
	rst SubAFromBC                                          ; $5f0a: $e7
	jr jr_012_5f2c                                   ; $5f0b: $18 $1f

	jr c, jr_012_5f4e                                ; $5f0d: $38 $3f

	ret nz                                           ; $5f0f: $c0

	rst $38                                          ; $5f10: $ff
	nop                                              ; $5f11: $00
	ld b, e                                          ; $5f12: $43
	cp $92                                           ; $5f13: $fe $92
	rlca                                             ; $5f15: $07
	rst $38                                          ; $5f16: $ff
	cpl                                              ; $5f17: $2f
	db $fc                                           ; $5f18: $fc
	rra                                              ; $5f19: $1f
	rra                                              ; $5f1a: $1f
	ret nz                                           ; $5f1b: $c0

	ret nz                                           ; $5f1c: $c0

	ld e, [hl]                                       ; $5f1d: $5e
	sbc $71                                          ; $5f1e: $de $71
	rst $38                                          ; $5f20: $ff
	ld bc, $ec6b                                     ; $5f21: $01 $6b $ec
	ld a, a                                          ; $5f24: $7f
	ld hl, sp+$67                                    ; $5f25: $f8 $67
	or $6f                                           ; $5f27: $f6 $6f
	cp $96                                           ; $5f29: $fe $96
	ld [hl-], a                                      ; $5f2b: $32

jr_012_5f2c:
	inc de                                           ; $5f2c: $13
	xor $ef                                          ; $5f2d: $ee $ef
	inc e                                            ; $5f2f: $1c
	rra                                              ; $5f30: $1f
	inc h                                            ; $5f31: $24
	daa                                              ; $5f32: $27
	ld hl, sp+$6b                                    ; $5f33: $f8 $6b
	ldh a, [hDisp1_WX]                                     ; $5f35: $f0 $96
	ld [de], a                                       ; $5f37: $12
	ldh a, [c]                                       ; $5f38: $f2
	rra                                              ; $5f39: $1f
	rst $38                                          ; $5f3a: $ff
	db $10                                           ; $5f3b: $10
	ldh a, [rAUD3HIGH]                               ; $5f3c: $f0 $1e
	cp $0f                                           ; $5f3e: $fe $0f
	ld b, e                                          ; $5f40: $43
	or d                                             ; $5f41: $b2
	adc c                                            ; $5f42: $89
	add b                                            ; $5f43: $80
	rst $38                                          ; $5f44: $ff
	ret nz                                           ; $5f45: $c0

	rst $38                                          ; $5f46: $ff
	ldh a, [rIE]                                     ; $5f47: $f0 $ff
	rst $38                                          ; $5f49: $ff
	ld e, e                                          ; $5f4a: $5b
	rst AddAOntoHL                                          ; $5f4b: $ef
	rst AddAOntoHL                                          ; $5f4c: $ef
	ld b, d                                          ; $5f4d: $42

jr_012_5f4e:
	jp $c342                                         ; $5f4e: $c3 $42 $c3


	ld d, d                                          ; $5f51: $52
	jp $8191                                         ; $5f52: $c3 $91 $81


	adc b                                            ; $5f55: $88
	add b                                            ; $5f56: $80
	pop hl                                           ; $5f57: $e1
	ldh [rBGP], a                                    ; $5f58: $e0 $47
	jp c, $839e                                      ; $5f5a: $da $9e $83

	ld a, e                                          ; $5f5d: $7b
	ret c                                            ; $5f5e: $d8

	ld e, a                                          ; $5f5f: $5f
	ldh a, [c]                                       ; $5f60: $f2
	ld a, a                                          ; $5f61: $7f
	sub h                                            ; $5f62: $94
	adc d                                            ; $5f63: $8a
	rst $38                                          ; $5f64: $ff
	ld l, c                                          ; $5f65: $69
	sbc $db                                          ; $5f66: $de $db
	sbc [hl]                                         ; $5f68: $9e
	sbc a                                            ; $5f69: $9f
	adc [hl]                                         ; $5f6a: $8e
	rrca                                             ; $5f6b: $0f
	inc c                                            ; $5f6c: $0c
	rrca                                             ; $5f6d: $0f
	inc d                                            ; $5f6e: $14
	rlca                                             ; $5f6f: $07
	ld b, $07                                        ; $5f70: $06 $07
	xor $ef                                          ; $5f72: $ee $ef
	db $ed                                           ; $5f74: $ed
	ccf                                              ; $5f75: $3f
	rst AddAOntoHL                                          ; $5f76: $ef
	cp a                                             ; $5f77: $bf
	ret                                              ; $5f78: $c9


	ld [hl], e                                       ; $5f79: $73
	ld a, d                                          ; $5f7a: $7a
	sbc d                                            ; $5f7b: $9a
	ld [bc], a                                       ; $5f7c: $02
	cp $04                                           ; $5f7d: $fe $04
	db $fc                                           ; $5f7f: $fc
	rrca                                             ; $5f80: $0f
	ld c, e                                          ; $5f81: $4b
	ld [hl], d                                       ; $5f82: $72
	ld a, a                                          ; $5f83: $7f
	cp $93                                           ; $5f84: $fe $93
	or $07                                           ; $5f86: $f6 $07
	cp $83                                           ; $5f88: $fe $83
	cp $03                                           ; $5f8a: $fe $03
	cp $0b                                           ; $5f8c: $fe $0b
	cp $0b                                           ; $5f8e: $fe $0b
	rst $38                                          ; $5f90: $ff
	ld c, e                                          ; $5f91: $4b
	ld a, e                                          ; $5f92: $7b
	cp $9a                                           ; $5f93: $fe $9a
	ld e, e                                          ; $5f95: $5b
	jp $c37f                                         ; $5f96: $c3 $7f $c3


	ld a, [hl]                                       ; $5f99: $7e
	ld [hl], a                                       ; $5f9a: $77
	cp $7f                                           ; $5f9b: $fe $7f
	db $eb                                           ; $5f9d: $eb
	ld l, a                                          ; $5f9e: $6f
	cp $98                                           ; $5f9f: $fe $98
	rst SubAFromDE                                          ; $5fa1: $df
	ldh [$bf], a                                     ; $5fa2: $e0 $bf
	ret nz                                           ; $5fa4: $c0

	ld a, a                                          ; $5fa5: $7f
	add b                                            ; $5fa6: $80

jr_012_5fa7:
	ld a, a                                          ; $5fa7: $7f
	ld l, a                                          ; $5fa8: $6f
	sbc e                                            ; $5fa9: $9b
	adc h                                            ; $5faa: $8c
	jr nz, @+$01                                     ; $5fab: $20 $ff

	add hl, hl                                       ; $5fad: $29
	cp $07                                           ; $5fae: $fe $07
	db $fc                                           ; $5fb0: $fc
	rlca                                             ; $5fb1: $07
	ld sp, hl                                        ; $5fb2: $f9
	rrca                                             ; $5fb3: $0f
	ld sp, hl                                        ; $5fb4: $f9
	rra                                              ; $5fb5: $1f
	pop af                                           ; $5fb6: $f1
	rra                                              ; $5fb7: $1f
	ldh a, [c]                                       ; $5fb8: $f2
	rra                                              ; $5fb9: $1f
	push af                                          ; $5fba: $f5
	ld a, $e5                                        ; $5fbb: $3e $e5
	ld a, $77                                        ; $5fbd: $3e $77
	and [hl]                                         ; $5fbf: $a6
	ld a, a                                          ; $5fc0: $7f
	pop bc                                           ; $5fc1: $c1
	ld [hl], a                                       ; $5fc2: $77
	cp $77                                           ; $5fc3: $fe $77
	or $7f                                           ; $5fc5: $f6 $7f
	cp $96                                           ; $5fc7: $fe $96
	ld hl, sp+$0f                                    ; $5fc9: $f8 $0f
	ld hl, sp-$71                                    ; $5fcb: $f8 $8f
	ld hl, sp-$31                                    ; $5fcd: $f8 $cf
	ld hl, sp+$4f                                    ; $5fcf: $f8 $4f
	db $fc                                           ; $5fd1: $fc
	ld a, e                                          ; $5fd2: $7b
	ret c                                            ; $5fd3: $d8

	add b                                            ; $5fd4: $80
	db $f4                                           ; $5fd5: $f4
	rlca                                             ; $5fd6: $07
	ld a, [$ff03]                                    ; $5fd7: $fa $03 $ff
	ccf                                              ; $5fda: $3f
	rst $38                                          ; $5fdb: $ff
	rrca                                             ; $5fdc: $0f
	rst $38                                          ; $5fdd: $ff
	ld c, $ff                                        ; $5fde: $0e $ff
	ld c, $fb                                        ; $5fe0: $0e $fb
	ld e, $f3                                        ; $5fe2: $1e $f3
	ld a, $e3                                        ; $5fe4: $3e $e3
	ld a, a                                          ; $5fe6: $7f
	jp Jump_012_7fff                                 ; $5fe7: $c3 $ff $7f


	inc b                                            ; $5fea: $04
	rst $38                                          ; $5feb: $ff
	ld [$18ff], sp                                   ; $5fec: $08 $ff $18
	rst FarCall                                          ; $5fef: $f7
	jr @+$01                                         ; $5ff0: $18 $ff

	jr nc, @+$01                                     ; $5ff2: $30 $ff

	adc d                                            ; $5ff4: $8a
	ld [hl], b                                       ; $5ff5: $70
	rst $38                                          ; $5ff6: $ff
	ldh a, [$2f]                                     ; $5ff7: $f0 $2f
	ldh a, [$3f]                                     ; $5ff9: $f0 $3f
	pop hl                                           ; $5ffb: $e1
	ld a, [hl]                                       ; $5ffc: $7e
	jp nz, $c47d                                     ; $5ffd: $c2 $7d $c4

	dec sp                                           ; $6000: $3b
	add sp, $3f                                      ; $6001: $e8 $3f
	ldh a, [$3f]                                     ; $6003: $f0 $3f
	ldh [$7f], a                                     ; $6005: $e0 $7f
	pop bc                                           ; $6007: $c1
	rst $38                                          ; $6008: $ff
	add e                                            ; $6009: $83
	ld b, a                                          ; $600a: $47
	jr nz, jr_012_5fa7                               ; $600b: $20 $9a

	call z, $f8ff                                    ; $600d: $cc $ff $f8
	ld a, a                                          ; $6010: $7f
	ldh a, [$7b]                                     ; $6011: $f0 $7b
	db $e3                                           ; $6013: $e3
	adc l                                            ; $6014: $8d
	ldh a, [$1f]                                     ; $6015: $f0 $1f
	ldh a, [$df]                                     ; $6017: $f0 $df
	ldh a, [$9f]                                     ; $6019: $f0 $9f
	ld hl, sp+$0f                                    ; $601b: $f8 $0f
	db $fd                                           ; $601d: $fd
	ld a, e                                          ; $601e: $7b
	db $fd                                           ; $601f: $fd
	ei                                               ; $6020: $fb
	sbc a                                            ; $6021: $9f
	ld sp, hl                                        ; $6022: $f9
	rst $38                                          ; $6023: $ff
	xor c                                            ; $6024: $a9
	rst $38                                          ; $6025: $ff
	add hl, de                                       ; $6026: $19
	ld a, e                                          ; $6027: $7b
	cp $8c                                           ; $6028: $fe $8c
	ld a, e                                          ; $602a: $7b
	rst $38                                          ; $602b: $ff
	ld e, $3f                                        ; $602c: $1e $3f
	ldh [$1f], a                                     ; $602e: $e0 $1f
	ldh a, [$3f]                                     ; $6030: $f0 $3f
	rst AddAOntoHL                                          ; $6032: $ef
	ld a, a                                          ; $6033: $7f
	ret nz                                           ; $6034: $c0

	rst $38                                          ; $6035: $ff
	add c                                            ; $6036: $81
	rst $38                                          ; $6037: $ff
	ld [bc], a                                       ; $6038: $02
	rst $38                                          ; $6039: $ff
	ld b, d                                          ; $603a: $42
	rst $38                                          ; $603b: $ff
	add h                                            ; $603c: $84
	ld e, a                                          ; $603d: $5f
	add $7f                                          ; $603e: $c6 $7f
	add l                                            ; $6040: $85
	ld a, a                                          ; $6041: $7f
	ld a, l                                          ; $6042: $7d
	sub l                                            ; $6043: $95
	rra                                              ; $6044: $1f
	ld hl, sp+$3f                                    ; $6045: $f8 $3f
	ld de, $1b1f                                     ; $6047: $11 $1f $1b
	or a                                             ; $604a: $b7
	xor c                                            ; $604b: $a9
	rst $38                                          ; $604c: $ff
	pop bc                                           ; $604d: $c1
	ld a, e                                          ; $604e: $7b
	ldh [hDisp1_WX], a                                     ; $604f: $e0 $96
	ld bc, $837e                                     ; $6051: $01 $7e $83
	sbc d                                            ; $6054: $9a
	rst SubAFromBC                                          ; $6055: $e7
	rst GetHLinHL                                          ; $6056: $cf
	rst GetHLinHL                                          ; $6057: $cf
	ld a, a                                          ; $6058: $7f
	ld [hl], d                                       ; $6059: $72
	ld [hl], a                                       ; $605a: $77
	db $f4                                           ; $605b: $f4
	ld [hl], d                                       ; $605c: $72
	db $d3                                           ; $605d: $d3
	ld a, [hl]                                       ; $605e: $7e
	ld c, a                                          ; $605f: $4f
	ld a, a                                          ; $6060: $7f
	jp $3090                                         ; $6061: $c3 $90 $30


	db $fc                                           ; $6064: $fc
	jr @+$01                                         ; $6065: $18 $ff

	rrca                                             ; $6067: $0f
	rst FarCall                                          ; $6068: $f7
	adc [hl]                                         ; $6069: $8e
	rst $38                                          ; $606a: $ff
	add h                                            ; $606b: $84
	ld a, a                                          ; $606c: $7f
	ret z                                            ; $606d: $c8

	ld [hl], a                                       ; $606e: $77
	ret z                                            ; $606f: $c8

	ld a, a                                          ; $6070: $7f
	ret nz                                           ; $6071: $c0

	ld l, a                                          ; $6072: $6f
	ld [hl], $5f                                     ; $6073: $36 $5f
	cp d                                             ; $6075: $ba
	add b                                            ; $6076: $80
	ret nc                                           ; $6077: $d0

	rra                                              ; $6078: $1f
	ret nc                                           ; $6079: $d0

	rra                                              ; $607a: $1f
	ret c                                            ; $607b: $d8

	rra                                              ; $607c: $1f

Jump_012_607d:
	db $fc                                           ; $607d: $fc
	and a                                            ; $607e: $a7
	ld a, [hl]                                       ; $607f: $7e
	ld h, e                                          ; $6080: $63
	ld e, [hl]                                       ; $6081: $5e
	ld d, e                                          ; $6082: $53
	ld e, [hl]                                       ; $6083: $5e
	ld d, e                                          ; $6084: $53
	cp $f3                                           ; $6085: $fe $f3
	add [hl]                                         ; $6087: $86
	add e                                            ; $6088: $83
	call nz, $ffc7                                   ; $6089: $c4 $c7 $ff
	ld a, [hl]                                       ; $608c: $7e
	ld sp, hl                                        ; $608d: $f9
	ld a, c                                          ; $608e: $79
	ret nz                                           ; $608f: $c0

	ld b, d                                          ; $6090: $42
	ret nz                                           ; $6091: $c0

	ld a, b                                          ; $6092: $78
	ret nz                                           ; $6093: $c0

	ld b, h                                          ; $6094: $44
	call nz, $c49a                                   ; $6095: $c4 $9a $c4
	rra                                              ; $6098: $1f
	or $3f                                           ; $6099: $f6 $3f
	ld sp, hl                                        ; $609b: $f9
	ld a, d                                          ; $609c: $7a
	ld e, c                                          ; $609d: $59
	sub [hl]                                         ; $609e: $96
	nop                                              ; $609f: $00
	sbc [hl]                                         ; $60a0: $9e
	ld h, c                                          ; $60a1: $61
	rst AddAOntoHL                                          ; $60a2: $ef
	ld e, $ff                                        ; $60a3: $1e $ff
	rrca                                             ; $60a5: $0f
	ld sp, hl                                        ; $60a6: $f9
	jr jr_012_610f                                   ; $60a7: $18 $66

	ld a, b                                          ; $60a9: $78
	ld l, [hl]                                       ; $60aa: $6e
	db $ec                                           ; $60ab: $ec
	ld a, a                                          ; $60ac: $7f
	cp $66                                           ; $60ad: $fe $66
	ld h, d                                          ; $60af: $62
	ld a, d                                          ; $60b0: $7a
	ld [hl-], a                                      ; $60b1: $32
	ld a, a                                          ; $60b2: $7f
	jr c, jr_012_6134                                ; $60b3: $38 $7f

	or d                                             ; $60b5: $b2
	adc [hl]                                         ; $60b6: $8e
	sbc a                                            ; $60b7: $9f
	rst $38                                          ; $60b8: $ff
	ld c, $f9                                        ; $60b9: $0e $f9
	ld a, c                                          ; $60bb: $79
	rst $38                                          ; $60bc: $ff
	add a                                            ; $60bd: $87
	db $fd                                           ; $60be: $fd
	ld hl, $d8de                                     ; $60bf: $21 $de $d8
	rst $38                                          ; $60c2: $ff
	cp h                                             ; $60c3: $bc
	sub e                                            ; $60c4: $93
	sub e                                            ; $60c5: $93
	sbc e                                            ; $60c6: $9b
	sbc e                                            ; $60c7: $9b
	ld a, e                                          ; $60c8: $7b
	ld b, b                                          ; $60c9: $40
	sbc l                                            ; $60ca: $9d
	ld hl, sp+$07                                    ; $60cb: $f8 $07
	ld a, d                                          ; $60cd: $7a
	db $dd                                           ; $60ce: $dd
	ld a, a                                          ; $60cf: $7f
	cp $9c                                           ; $60d0: $fe $9c
	inc e                                            ; $60d2: $1c
	ldh a, [rAUD3HIGH]                               ; $60d3: $f0 $1e
	ld a, e                                          ; $60d5: $7b
	cp $3d                                           ; $60d6: $fe $3d
	xor d                                            ; $60d8: $aa
	ld d, l                                          ; $60d9: $55
	xor $56                                          ; $60da: $ee $56
	inc d                                            ; $60dc: $14
	sbc c                                            ; $60dd: $99
	ld a, a                                          ; $60de: $7f
	rst $38                                          ; $60df: $ff
	rst $38                                          ; $60e0: $ff
	add c                                            ; $60e1: $81
	ldh a, [$0e]                                     ; $60e2: $f0 $0e
	ld c, l                                          ; $60e4: $4d
	nop                                              ; $60e5: $00
	pop bc                                           ; $60e6: $c1
	ld [$ff03], sp                                   ; $60e7: $08 $03 $ff
	rst SubAFromDE                                          ; $60ea: $df
	ld [$019c], sp                                   ; $60eb: $08 $9c $01
	jr z, jr_012_6117                                ; $60ee: $28 $27

	push bc                                          ; $60f0: $c5
	ld [$269b], sp                                   ; $60f1: $08 $9b $26
	dec h                                            ; $60f4: $25
	inc h                                            ; $60f5: $24
	inc hl                                           ; $60f6: $23
	push bc                                          ; $60f7: $c5
	ld [$229b], sp                                   ; $60f8: $08 $9b $22
	ld hl, $1f20                                     ; $60fb: $21 $20 $1f
	push bc                                          ; $60fe: $c5
	ld [$1e9b], sp                                   ; $60ff: $08 $9b $1e
	dec e                                            ; $6102: $1d
	inc e                                            ; $6103: $1c
	dec de                                           ; $6104: $1b
	push bc                                          ; $6105: $c5
	ld [$1a9b], sp                                   ; $6106: $08 $9b $1a
	add hl, de                                       ; $6109: $19
	jr jr_012_6123                                   ; $610a: $18 $17

	add $08                                          ; $610c: $c6 $08
	sbc d                                            ; $610e: $9a

jr_012_610f:
	ld d, $15                                        ; $610f: $16 $15
	inc d                                            ; $6111: $14
	inc de                                           ; $6112: $13
	ld [de], a                                       ; $6113: $12
	add $08                                          ; $6114: $c6 $08
	sbc d                                            ; $6116: $9a

jr_012_6117:
	ld de, $0f10                                     ; $6117: $11 $10 $0f
	ld c, $0d                                        ; $611a: $0e $0d
	add $08                                          ; $611c: $c6 $08
	sbc c                                            ; $611e: $99
	inc c                                            ; $611f: $0c
	dec bc                                           ; $6120: $0b
	ld a, [bc]                                       ; $6121: $0a
	add hl, bc                                       ; $6122: $09

jr_012_6123:
	rlca                                             ; $6123: $07
	ld b, $c6                                        ; $6124: $06 $c6
	ld [$059a], sp                                   ; $6126: $08 $9a $05
	inc b                                            ; $6129: $04
	inc bc                                           ; $612a: $03
	ld [bc], a                                       ; $612b: $02
	nop                                              ; $612c: $00
	ld [bc], a                                       ; $612d: $02
	db $db                                           ; $612e: $db
	ret                                              ; $612f: $c9


	ld [$002f], sp                                   ; $6130: $08 $2f $00
	pop bc                                           ; $6133: $c1

jr_012_6134:
	ld [hl], a                                       ; $6134: $77
	sbc h                                            ; $6135: $9c
	ld [hl], a                                       ; $6136: $77
	ld [hl], h                                       ; $6137: $74
	ld b, h                                          ; $6138: $44
	db $d3                                           ; $6139: $d3
	ld [hl], a                                       ; $613a: $77
	sbc l                                            ; $613b: $9d
	ld d, h                                          ; $613c: $54
	ld h, h                                          ; $613d: $64
	db $d3                                           ; $613e: $d3
	ld [hl], a                                       ; $613f: $77
	sbc [hl]                                         ; $6140: $9e
	ld d, [hl]                                       ; $6141: $56
	ld c, e                                          ; $6142: $4b
	ldh a, [$df]                                     ; $6143: $f0 $df
	ld b, [hl]                                       ; $6145: $46
	db $d3                                           ; $6146: $d3
	ld [hl], a                                       ; $6147: $77
	sbc l                                            ; $6148: $9d
	ld b, h                                          ; $6149: $44
	ld b, l                                          ; $614a: $45
	ld c, e                                          ; $614b: $4b
	or c                                             ; $614c: $b1
	sbc [hl]                                         ; $614d: $9e
	ld d, h                                          ; $614e: $54
	ld c, a                                          ; $614f: $4f
	ldh a, [$9e]                                     ; $6150: $f0 $9e
	ld b, [hl]                                       ; $6152: $46
	ld c, a                                          ; $6153: $4f
	and b                                            ; $6154: $a0
	sbc e                                            ; $6155: $9b
	ld [hl], e                                       ; $6156: $73
	ld h, [hl]                                       ; $6157: $66
	ld b, [hl]                                       ; $6158: $46
	ld h, a                                          ; $6159: $67
	call nc, $4777                                   ; $615a: $d4 $77 $47
	ldh a, [$d2]                                     ; $615d: $f0 $d2
	ld [hl], a                                       ; $615f: $77
	and a                                            ; $6160: $a7
	nop                                              ; $6161: $00
	sbc l                                            ; $6162: $9d
	nop                                              ; $6163: $00
	rst $38                                          ; $6164: $ff
	ld [hl], a                                       ; $6165: $77
	cp $9d                                           ; $6166: $fe $9d
	ld [$6ff7], sp                                   ; $6168: $08 $f7 $6f
	ld hl, sp+$77                                    ; $616b: $f8 $77
	cp $9d                                           ; $616d: $fe $9d
	inc b                                            ; $616f: $04
	ei                                               ; $6170: $fb
	ld e, a                                          ; $6171: $5f
	db $f4                                           ; $6172: $f4
	dec hl                                           ; $6173: $2b
	cp $9e                                           ; $6174: $fe $9e
	rst AddAOntoHL                                          ; $6176: $ef
	ld e, a                                          ; $6177: $5f
	db $f4                                           ; $6178: $f4
	sbc c                                            ; $6179: $99
	inc bc                                           ; $617a: $03
	db $fc                                           ; $617b: $fc
	nop                                              ; $617c: $00
	rst $38                                          ; $617d: $ff
	ld bc, $4ffe                                     ; $617e: $01 $fe $4f

jr_012_6181:
	ldh [$9d], a                                     ; $6181: $e0 $9d
	ld b, b                                          ; $6183: $40
	cp a                                             ; $6184: $bf
	ld e, a                                          ; $6185: $5f
	db $f4                                           ; $6186: $f4
	adc a                                            ; $6187: $8f
	ld [hl], $c0                                     ; $6188: $36 $c0
	dec a                                            ; $618a: $3d
	ret nz                                           ; $618b: $c0

	ld e, a                                          ; $618c: $5f
	and b                                            ; $618d: $a0
	ld e, $e0                                        ; $618e: $1e $e0
	rla                                              ; $6190: $17
	add sp, $2b                                      ; $6191: $e8 $2b
	call nc, $f20d                                   ; $6193: $d4 $0d $f2
	ld [bc], a                                       ; $6196: $02
	db $fd                                           ; $6197: $fd
	ld e, a                                          ; $6198: $5f
	and $6f                                          ; $6199: $e6 $6f
	adc h                                            ; $619b: $8c
	adc a                                            ; $619c: $8f
	ld c, [hl]                                       ; $619d: $4e
	or b                                             ; $619e: $b0
	jr jr_012_6181                                   ; $619f: $18 $e0

	dec a                                            ; $61a1: $3d
	ret nz                                           ; $61a2: $c0

	ld [hl], l                                       ; $61a3: $75
	add b                                            ; $61a4: $80
	jr c, @-$3e                                      ; $61a5: $38 $c0

	dec l                                            ; $61a7: $2d
	ret nz                                           ; $61a8: $c0

	db $f4                                           ; $61a9: $f4
	nop                                              ; $61aa: $00
	ld a, [hl+]                                      ; $61ab: $2a
	ret nz                                           ; $61ac: $c0

	ld l, e                                          ; $61ad: $6b
	ldh [c], a                                       ; $61ae: $e2
	ld h, e                                          ; $61af: $63
	ld a, h                                          ; $61b0: $7c
	add h                                            ; $61b1: $84
	rla                                              ; $61b2: $17
	ldh [$79], a                                     ; $61b3: $e0 $79
	add [hl]                                         ; $61b5: $86
	ld d, e                                          ; $61b6: $53
	xor h                                            ; $61b7: $ac
	add e                                            ; $61b8: $83
	ld a, h                                          ; $61b9: $7c
	ld b, $f8                                        ; $61ba: $06 $f8
	rrca                                             ; $61bc: $0f
	ldh a, [rTMA]                                    ; $61bd: $f0 $06
	ld hl, sp+$17                                    ; $61bf: $f8 $17
	add sp, -$30                                     ; $61c1: $e8 $d0
	cpl                                              ; $61c3: $2f
	add b                                            ; $61c4: $80
	ld a, a                                          ; $61c5: $7f
	ld [bc], a                                       ; $61c6: $02
	db $fd                                           ; $61c7: $fd
	dec h                                            ; $61c8: $25
	sbc d                                            ; $61c9: $9a
	adc b                                            ; $61ca: $88
	ld [hl], a                                       ; $61cb: $77
	db $10                                           ; $61cc: $10
	ld a, e                                          ; $61cd: $7b
	ld a, d                                          ; $61ce: $7a
	ld a, a                                          ; $61cf: $7f
	db $f4                                           ; $61d0: $f4
	ld a, a                                          ; $61d1: $7f
	add h                                            ; $61d2: $84
	ld a, a                                          ; $61d3: $7f
	ld a, [hl]                                       ; $61d4: $7e
	sbc c                                            ; $61d5: $99
	ld b, l                                          ; $61d6: $45
	cp d                                             ; $61d7: $ba
	dec bc                                           ; $61d8: $0b
	db $f4                                           ; $61d9: $f4
	inc c                                            ; $61da: $0c
	di                                               ; $61db: $f3
	ld l, a                                          ; $61dc: $6f
	or b                                             ; $61dd: $b0
	adc a                                            ; $61de: $8f
	rlca                                             ; $61df: $07
	ld hl, sp-$63                                    ; $61e0: $f8 $9d
	ld h, b                                          ; $61e2: $60
	ld [hl-], a                                      ; $61e3: $32
	ret nz                                           ; $61e4: $c0

	db $ed                                           ; $61e5: $ed
	nop                                              ; $61e6: $00
	cp a                                             ; $61e7: $bf
	ld b, b                                          ; $61e8: $40
	jp c, $0f25                                      ; $61e9: $da $25 $0f

	ldh a, [$0b]                                     ; $61ec: $f0 $0b
	ldh a, [$67]                                     ; $61ee: $f0 $67
	sub h                                            ; $61f0: $94
	sub a                                            ; $61f1: $97
	ld h, $d9                                        ; $61f2: $26 $d9
	dec c                                            ; $61f4: $0d
	ldh a, [c]                                       ; $61f5: $f2
	ld e, d                                          ; $61f6: $5a
	and l                                            ; $61f7: $a5
	ldh [$1f], a                                     ; $61f8: $e0 $1f
	ld h, a                                          ; $61fa: $67
	xor b                                            ; $61fb: $a8
	ld a, a                                          ; $61fc: $7f
	cp h                                             ; $61fd: $bc

Jump_012_61fe:
	sbc e                                            ; $61fe: $9b
	add $39                                          ; $61ff: $c6 $39
	inc c                                            ; $6201: $0c
	di                                               ; $6202: $f3
	ld d, e                                          ; $6203: $53
	ld b, [hl]                                       ; $6204: $46
	ld [hl], e                                       ; $6205: $73
	ret nz                                           ; $6206: $c0

	inc a                                            ; $6207: $3c
	nop                                              ; $6208: $00
	sbc [hl]                                         ; $6209: $9e
	ld bc, $02dc                                     ; $620a: $01 $dc $02
	sbc [hl]                                         ; $620d: $9e
	rlca                                             ; $620e: $07
	db $dd                                           ; $620f: $dd
	ld [bc], a                                       ; $6210: $02
	ld [hl], a                                       ; $6211: $77
	push af                                          ; $6212: $f5
	sbc [hl]                                         ; $6213: $9e
	db $10                                           ; $6214: $10
	sub $02                                          ; $6215: $d6 $02
	sbc [hl]                                         ; $6217: $9e
	rrca                                             ; $6218: $0f
	call c, $9d02                                    ; $6219: $dc $02 $9d
	ld c, $0d                                        ; $621c: $0e $0d
	ld [hl], a                                       ; $621e: $77
	ldh [c], a                                       ; $621f: $e2
	sbc h                                            ; $6220: $9c
	inc c                                            ; $6221: $0c
	dec bc                                           ; $6222: $0b
	ld a, [bc]                                       ; $6223: $0a
	sbc $02                                          ; $6224: $de $02
	sbc e                                            ; $6226: $9b
	add hl, bc                                       ; $6227: $09
	ld [bc], a                                       ; $6228: $02
	ld [bc], a                                       ; $6229: $02
	ld [$d37b], sp                                   ; $622a: $08 $7b $d3
	ld a, e                                          ; $622d: $7b
	rst SubAFromHL                                          ; $622e: $d7
	sbc e                                            ; $622f: $9b
	ld b, $02                                        ; $6230: $06 $02
	ld [bc], a                                       ; $6232: $02
	dec b                                            ; $6233: $05
	sbc $02                                          ; $6234: $de $02
	sbc [hl]                                         ; $6236: $9e
	inc b                                            ; $6237: $04
	push de                                          ; $6238: $d5
	ld [bc], a                                       ; $6239: $02
	sbc [hl]                                         ; $623a: $9e
	inc bc                                           ; $623b: $03
	db $dd                                           ; $623c: $dd
	ld [bc], a                                       ; $623d: $02
	ld a, a                                          ; $623e: $7f
	cp a                                             ; $623f: $bf
	sbc l                                            ; $6240: $9d
	nop                                              ; $6241: $00
	ld [bc], a                                       ; $6242: $02
	ld b, $00                                        ; $6243: $06 $00
	pop bc                                           ; $6245: $c1
	inc sp                                           ; $6246: $33
	rst SubAFromHL                                          ; $6247: $d7
	inc sp                                           ; $6248: $33
	ret c                                            ; $6249: $d8

	ld bc, $0083                                     ; $624a: $01 $83 $00
	rst $38                                          ; $624d: $ff
	nop                                              ; $624e: $00
	rst $38                                          ; $624f: $ff
	ld c, b                                          ; $6250: $48
	or a                                             ; $6251: $b7
	ld bc, $0afe                                     ; $6252: $01 $fe $0a
	push af                                          ; $6255: $f5
	dec b                                            ; $6256: $05
	ld a, [$d42b]                                    ; $6257: $fa $2b $d4
	ld e, a                                          ; $625a: $5f
	and b                                            ; $625b: $a0
	add b                                            ; $625c: $80
	ld a, a                                          ; $625d: $7f
	ret nz                                           ; $625e: $c0

	ccf                                              ; $625f: $3f
	add sp, $17                                      ; $6260: $e8 $17
	db $fc                                           ; $6262: $fc
	inc bc                                           ; $6263: $03
	ld d, [hl]                                       ; $6264: $56
	ld bc, $ac00                                     ; $6265: $01 $00 $ac
	ld [hl], a                                       ; $6268: $77
	db $e4                                           ; $6269: $e4
	ld a, e                                          ; $626a: $7b
	db $fd                                           ; $626b: $fd
	ld a, e                                          ; $626c: $7b
	cp $96                                           ; $626d: $fe $96
	cp a                                             ; $626f: $bf
	nop                                              ; $6270: $00
	ei                                               ; $6271: $fb
	inc b                                            ; $6272: $04
	rst FarCall                                          ; $6273: $f7
	ld [$00ff], sp                                   ; $6274: $08 $ff $00
	rst AddAOntoHL                                          ; $6277: $ef
	ld a, e                                          ; $6278: $7b
	db $f4                                           ; $6279: $f4
	sbc [hl]                                         ; $627a: $9e
	db $fd                                           ; $627b: $fd
	ld [hl], e                                       ; $627c: $73
	xor $7f                                          ; $627d: $ee $7f
	cp $9d                                           ; $627f: $fe $9d
	sbc $01                                          ; $6281: $de $01
	ld a, e                                          ; $6283: $7b
	ldh a, [$9a]                                     ; $6284: $f0 $9a
	db $10                                           ; $6286: $10
	ld hl, $bbde                                     ; $6287: $21 $de $bb
	ld b, h                                          ; $628a: $44
	ld [hl], a                                       ; $628b: $77
	ld hl, sp-$67                                    ; $628c: $f8 $99
	ld d, l                                          ; $628e: $55
	xor b                                            ; $628f: $a8
	add hl, bc                                       ; $6290: $09
	or $04                                           ; $6291: $f6 $04
	ei                                               ; $6293: $fb
	ld h, a                                          ; $6294: $67
	ret nc                                           ; $6295: $d0

	adc c                                            ; $6296: $89
	cp [hl]                                          ; $6297: $be
	ld b, b                                          ; $6298: $40
	ld a, a                                          ; $6299: $7f
	add b                                            ; $629a: $80
	rra                                              ; $629b: $1f
	ldh [rIE], a                                     ; $629c: $e0 $ff
	nop                                              ; $629e: $00
	push de                                          ; $629f: $d5
	nop                                              ; $62a0: $00
	dec bc                                           ; $62a1: $0b
	db $f4                                           ; $62a2: $f4
	ld [hl], l                                       ; $62a3: $75
	adc d                                            ; $62a4: $8a
	ld a, [de]                                       ; $62a5: $1a
	push hl                                          ; $62a6: $e5

jr_012_62a7:
	ld b, l                                          ; $62a7: $45
	cp d                                             ; $62a8: $ba
	and b                                            ; $62a9: $a0
	ld e, a                                          ; $62aa: $5f
	ld a, h                                          ; $62ab: $7c
	add e                                            ; $62ac: $83
	ld [hl], a                                       ; $62ad: $77
	call nz, $c36b                                   ; $62ae: $c4 $6b $c3
	sub [hl]                                         ; $62b1: $96
	rst $38                                          ; $62b2: $ff
	ld b, b                                          ; $62b3: $40
	cp a                                             ; $62b4: $bf
	db $f4                                           ; $62b5: $f4
	dec bc                                           ; $62b6: $0b
	ld hl, sp+$07                                    ; $62b7: $f8 $07
	cp $01                                           ; $62b9: $fe $01
	ld l, a                                          ; $62bb: $6f
	ldh a, [c]                                       ; $62bc: $f2
	sbc h                                            ; $62bd: $9c
	ld e, b                                          ; $62be: $58
	and a                                            ; $62bf: $a7
	cp $7b                                           ; $62c0: $fe $7b
	or d                                             ; $62c2: $b2
	ld a, a                                          ; $62c3: $7f
	cp $99                                           ; $62c4: $fe $99
	ld d, c                                          ; $62c6: $51
	nop                                              ; $62c7: $00
	ld d, b                                          ; $62c8: $50
	xor a                                            ; $62c9: $af
	db $e4                                           ; $62ca: $e4
	dec de                                           ; $62cb: $1b
	ld [hl], a                                       ; $62cc: $77
	or $80                                           ; $62cd: $f6 $80
	ccf                                              ; $62cf: $3f
	nop                                              ; $62d0: $00
	rrca                                             ; $62d1: $0f
	nop                                              ; $62d2: $00
	rlca                                             ; $62d3: $07
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	add sp, $03                                      ; $62d6: $e8 $03
	db $fc                                           ; $62d8: $fc
	ld e, a                                          ; $62d9: $5f
	and b                                            ; $62da: $a0
	ld a, a                                          ; $62db: $7f
	add b                                            ; $62dc: $80
	xor [hl]                                         ; $62dd: $ae
	ld d, b                                          ; $62de: $50
	ld e, l                                          ; $62df: $5d
	and b                                            ; $62e0: $a0
	ld [$00f0], sp                                   ; $62e1: $08 $f0 $00
	cp $00                                           ; $62e4: $fe $00
	rst $38                                          ; $62e6: $ff
	inc c                                            ; $62e7: $0c
	ldh a, [c]                                       ; $62e8: $f2
	inc bc                                           ; $62e9: $03
	db $fc                                           ; $62ea: $fc
	add hl, hl                                       ; $62eb: $29
	sub $10                                          ; $62ec: $d6 $10
	sbc l                                            ; $62ee: $9d
	rst AddAOntoHL                                          ; $62ef: $ef
	cp a                                             ; $62f0: $bf
	ld a, e                                          ; $62f1: $7b
	sbc [hl]                                         ; $62f2: $9e
	ld [hl], a                                       ; $62f3: $77
	ret c                                            ; $62f4: $d8

	rst $38                                          ; $62f5: $ff
	sub e                                            ; $62f6: $93
	ld d, c                                          ; $62f7: $51
	xor [hl]                                         ; $62f8: $ae
	ld [bc], a                                       ; $62f9: $02
	db $fd                                           ; $62fa: $fd
	ld bc, $00fe                                     ; $62fb: $01 $fe $00
	rrca                                             ; $62fe: $0f
	ldh a, [rP1]                                     ; $62ff: $f0 $00
	xor e                                            ; $6301: $ab
	ld d, h                                          ; $6302: $54
	ld a, e                                          ; $6303: $7b
	ldh a, [rOCPD]                                   ; $6304: $f0 $6b
	and b                                            ; $6306: $a0
	ld a, a                                          ; $6307: $7f
	jr nc, jr_012_62a7                               ; $6308: $30 $9d

	ld d, a                                          ; $630a: $57
	xor b                                            ; $630b: $a8
	ld [hl], e                                       ; $630c: $73
	ldh [rOCPD], a                                   ; $630d: $e0 $6b
	ldh a, [$7f]                                     ; $630f: $f0 $7f
	cp $7b                                           ; $6311: $fe $7b
	call c, $ff9c                                    ; $6313: $dc $9c $ff
	ld d, l                                          ; $6316: $55
	xor d                                            ; $6317: $aa
	ld [hl], a                                       ; $6318: $77
	ld d, h                                          ; $6319: $54
	sbc l                                            ; $631a: $9d
	rst SubAFromDE                                          ; $631b: $df
	jr nz, jr_012_6395                               ; $631c: $20 $77

	rst AddAOntoHL                                          ; $631e: $ef
	sbc l                                            ; $631f: $9d
	or $01                                           ; $6320: $f6 $01
	ld l, a                                          ; $6322: $6f
	ld hl, sp+$6f                                    ; $6323: $f8 $6f
	cp $7f                                           ; $6325: $fe $7f
	ld [$fc7f], a                                    ; $6327: $ea $7f $fc
	ld l, a                                          ; $632a: $6f
	ldh a, [$9b]                                     ; $632b: $f0 $9b
	db $fd                                           ; $632d: $fd
	ld [bc], a                                       ; $632e: $02
	rst $38                                          ; $632f: $ff
	nop                                              ; $6330: $00
	ld [hl], e                                       ; $6331: $73
	inc d                                            ; $6332: $14
	ld a, e                                          ; $6333: $7b
	xor $77                                          ; $6334: $ee $77
	ld a, [$f077]                                    ; $6336: $fa $77 $f0
	ld a, a                                          ; $6339: $7f
	nop                                              ; $633a: $00
	ld [hl], a                                       ; $633b: $77
	db $f4                                           ; $633c: $f4
	sbc [hl]                                         ; $633d: $9e
	rst FarCall                                          ; $633e: $f7
	ld e, e                                          ; $633f: $5b
	or b                                             ; $6340: $b0
	ld a, e                                          ; $6341: $7b
	or $9c                                           ; $6342: $f6 $9c
	ld hl, sp+$41                                    ; $6344: $f8 $41
	add b                                            ; $6346: $80
	ld [hl], a                                       ; $6347: $77
	pop af                                           ; $6348: $f1
	ld a, a                                          ; $6349: $7f
	halt                                             ; $634a: $76
	sbc l                                            ; $634b: $9d
	jp hl                                            ; $634c: $e9


	inc d                                            ; $634d: $14
	ld [hl], a                                       ; $634e: $77
	ld a, [$2277]                                    ; $634f: $fa $77 $22
	sbc [hl]                                         ; $6352: $9e
	rst SubAFromDE                                          ; $6353: $df
	ld [hl], e                                       ; $6354: $73
	cp h                                             ; $6355: $bc
	ld [hl], a                                       ; $6356: $77
	ret c                                            ; $6357: $d8

	ld [hl], a                                       ; $6358: $77
	jp z, $f477                                      ; $6359: $ca $77 $f4

	sbc h                                            ; $635c: $9c
	rra                                              ; $635d: $1f
	nop                                              ; $635e: $00
	db $eb                                           ; $635f: $eb
	ld [hl], a                                       ; $6360: $77
	ld [hl-], a                                      ; $6361: $32
	adc a                                            ; $6362: $8f
	ret nz                                           ; $6363: $c0

	dec bc                                           ; $6364: $0b
	db $f4                                           ; $6365: $f4
	ld c, $01                                        ; $6366: $0e $01
	ldh [rP1], a                                     ; $6368: $e0 $00
	sbc $00                                          ; $636a: $de $00
	ld c, [hl]                                       ; $636c: $4e
	or b                                             ; $636d: $b0
	ld h, b                                          ; $636e: $60
	add b                                            ; $636f: $80
	cp d                                             ; $6370: $ba
	ld b, b                                          ; $6371: $40
	call nc, $98fe                                   ; $6372: $d4 $fe $98
	inc a                                            ; $6375: $3c
	ret nz                                           ; $6376: $c0

	ld [hl], c                                       ; $6377: $71
	ld c, $0c                                        ; $6378: $0e $0c
	inc bc                                           ; $637a: $03
	ld [bc], a                                       ; $637b: $02
	db $fc                                           ; $637c: $fc
	ld a, e                                          ; $637d: $7b
	or a                                             ; $637e: $b7
	ei                                               ; $637f: $fb
	sbc [hl]                                         ; $6380: $9e
	and b                                            ; $6381: $a0
	ld [hl], a                                       ; $6382: $77
	and h                                            ; $6383: $a4
	ld a, [hl]                                       ; $6384: $7e
	or [hl]                                          ; $6385: $b6
	sbc l                                            ; $6386: $9d
	ld [hl+], a                                      ; $6387: $22
	db $dd                                           ; $6388: $dd
	ld [hl], a                                       ; $6389: $77
	ld a, $91                                        ; $638a: $3e $91
	ld b, a                                          ; $638c: $47
	cp b                                             ; $638d: $b8
	rst $38                                          ; $638e: $ff
	nop                                              ; $638f: $00
	ld bc, $57fe                                     ; $6390: $01 $fe $57
	xor b                                            ; $6393: $a8
	dec hl                                           ; $6394: $2b

jr_012_6395:
	call nc, Call_012_6897                           ; $6395: $d4 $97 $68
	ld a, [hl+]                                      ; $6398: $2a
	push de                                          ; $6399: $d5
	ld [hl], a                                       ; $639a: $77
	xor [hl]                                         ; $639b: $ae
	ld e, a                                          ; $639c: $5f
	cp $77                                           ; $639d: $fe $77
	sub b                                            ; $639f: $90
	scf                                              ; $63a0: $37
	cp $94                                           ; $63a1: $fe $94
	sbc a                                            ; $63a3: $9f
	ld h, b                                          ; $63a4: $60
	ld [$e337], sp                                   ; $63a5: $08 $37 $e3
	nop                                              ; $63a8: $00
	ret nc                                           ; $63a9: $d0

	nop                                              ; $63aa: $00
	db $f4                                           ; $63ab: $f4
	nop                                              ; $63ac: $00
	ld [$f27b], a                                    ; $63ad: $ea $7b $f2
	ld l, [hl]                                       ; $63b0: $6e
	and b                                            ; $63b1: $a0
	ld a, [hl]                                       ; $63b2: $7e
	ld h, $6b                                        ; $63b3: $26 $6b
	db $e3                                           ; $63b5: $e3
	ld a, a                                          ; $63b6: $7f
	db $eb                                           ; $63b7: $eb
	sbc [hl]                                         ; $63b8: $9e
	ret nz                                           ; $63b9: $c0

	ld l, a                                          ; $63ba: $6f
	or $9d                                           ; $63bb: $f6 $9d
	jr z, @-$27                                      ; $63bd: $28 $d7

	ld l, e                                          ; $63bf: $6b
	xor $9e                                          ; $63c0: $ee $9e
	ld a, $4b                                        ; $63c2: $3e $4b
	pop bc                                           ; $63c4: $c1
	ld a, [hl]                                       ; $63c5: $7e
	adc e                                            ; $63c6: $8b
	ld h, e                                          ; $63c7: $63
	db $f4                                           ; $63c8: $f4
	ld a, [hl]                                       ; $63c9: $7e
	sbc b                                            ; $63ca: $98
	ld c, a                                          ; $63cb: $4f
	db $e4                                           ; $63cc: $e4
	sbc c                                            ; $63cd: $99
	jr nz, @-$1f                                     ; $63ce: $20 $df

	nop                                              ; $63d0: $00
	rst $38                                          ; $63d1: $ff
	dec de                                           ; $63d2: $1b
	db $e4                                           ; $63d3: $e4
	ld e, a                                          ; $63d4: $5f
	ldh a, [$7e]                                     ; $63d5: $f0 $7e
	jr nz, jr_012_6457                               ; $63d7: $20 $7e

	ld a, [hl]                                       ; $63d9: $7e
	ld [hl], a                                       ; $63da: $77
	and c                                            ; $63db: $a1
	ld a, a                                          ; $63dc: $7f
	halt                                             ; $63dd: $76
	ld a, a                                          ; $63de: $7f
	db $10                                           ; $63df: $10
	ld a, d                                          ; $63e0: $7a
	and l                                            ; $63e1: $a5
	ld l, d                                          ; $63e2: $6a
	cp d                                             ; $63e3: $ba
	sbc e                                            ; $63e4: $9b
	nop                                              ; $63e5: $00
	dec de                                           ; $63e6: $1b
	ld a, [de]                                       ; $63e7: $1a
	push hl                                          ; $63e8: $e5
	ld l, [hl]                                       ; $63e9: $6e
	ld h, [hl]                                       ; $63ea: $66
	ld l, a                                          ; $63eb: $6f
	cp $7b                                           ; $63ec: $fe $7b
	ldh a, [$9e]                                     ; $63ee: $f0 $9e
	ld h, l                                          ; $63f0: $65
	ld d, e                                          ; $63f1: $53
	ldh a, [$9a]                                     ; $63f2: $f0 $9a
	inc b                                            ; $63f4: $04
	nop                                              ; $63f5: $00
	rst $38                                          ; $63f6: $ff
	sbc a                                            ; $63f7: $9f
	ld h, b                                          ; $63f8: $60
	ld e, e                                          ; $63f9: $5b
	ldh a, [$7e]                                     ; $63fa: $f0 $7e
	rst SubAFromDE                                          ; $63fc: $df
	sbc h                                            ; $63fd: $9c
	ld a, a                                          ; $63fe: $7f
	rla                                              ; $63ff: $17
	add sp, $5b                                      ; $6400: $e8 $5b
	ldh a, [rIE]                                     ; $6402: $f0 $ff
	sbc h                                            ; $6404: $9c
	dec a                                            ; $6405: $3d
	nop                                              ; $6406: $00
	rst $38                                          ; $6407: $ff
	ld l, a                                          ; $6408: $6f
	adc $7d                                          ; $6409: $ce $7d
	adc h                                            ; $640b: $8c
	ld [hl], e                                       ; $640c: $73
	ldh a, [$9a]                                     ; $640d: $f0 $9a
	push af                                          ; $640f: $f5
	nop                                              ; $6410: $00
	rst $38                                          ; $6411: $ff
	db $fc                                           ; $6412: $fc
	inc bc                                           ; $6413: $03
	ld l, [hl]                                       ; $6414: $6e
	ld l, h                                          ; $6415: $6c
	ld e, [hl]                                       ; $6416: $5e
	add b                                            ; $6417: $80
	sbc l                                            ; $6418: $9d
	inc [hl]                                         ; $6419: $34
	bit 6, a                                         ; $641a: $cb $77
	ld sp, hl                                        ; $641c: $f9
	ld a, a                                          ; $641d: $7f
	add b                                            ; $641e: $80
	ld b, [hl]                                       ; $641f: $46
	rst $38                                          ; $6420: $ff
	ld d, l                                          ; $6421: $55
	nop                                              ; $6422: $00
	db $d3                                           ; $6423: $d3
	inc l                                            ; $6424: $2c
	adc d                                            ; $6425: $8a
	ld c, $0d                                        ; $6426: $0e $0d
	inc l                                            ; $6428: $2c
	inc l                                            ; $6429: $2c
	ld a, [bc]                                       ; $642a: $0a
	add hl, bc                                       ; $642b: $09
	ld [$0607], sp                                   ; $642c: $08 $07 $06
	dec b                                            ; $642f: $05
	inc b                                            ; $6430: $04
	ld bc, $0b00                                     ; $6431: $01 $00 $0b
	inc c                                            ; $6434: $0c
	ld d, $17                                        ; $6435: $16 $17
	jr jr_012_6452                                   ; $6437: $18 $19

	ld a, [de]                                       ; $6439: $1a
	dec de                                           ; $643a: $1b
	db $dd                                           ; $643b: $dd
	inc e                                            ; $643c: $1c
	sub h                                            ; $643d: $94
	dec e                                            ; $643e: $1d
	ld e, $1f                                        ; $643f: $1e $1f
	jr nz, jr_012_6464                               ; $6441: $20 $21

	ld [hl+], a                                      ; $6443: $22
	inc hl                                           ; $6444: $23
	dec hl                                           ; $6445: $2b
	inc de                                           ; $6446: $13
	ld h, $2a                                        ; $6447: $26 $2a
	sbc $29                                          ; $6449: $de $29
	adc h                                            ; $644b: $8c
	jr z, jr_012_6475                                ; $644c: $28 $27

	dec h                                            ; $644e: $25
	dec d                                            ; $644f: $15
	dec d                                            ; $6450: $15
	inc d                                            ; $6451: $14

jr_012_6452:
	ld [de], a                                       ; $6452: $12
	inc d                                            ; $6453: $14
	dec d                                            ; $6454: $15
	inc d                                            ; $6455: $14
	dec d                                            ; $6456: $15

jr_012_6457:
	ld [de], a                                       ; $6457: $12
	ld [de], a                                       ; $6458: $12
	ld de, $1424                                     ; $6459: $11 $24 $14
	dec d                                            ; $645c: $15
	ld de, $7b12                                     ; $645d: $11 $12 $7b
	ei                                               ; $6460: $fb
	ld a, a                                          ; $6461: $7f
	or $9b                                           ; $6462: $f6 $9b

jr_012_6464:
	ld [de], a                                       ; $6464: $12
	dec d                                            ; $6465: $15
	inc h                                            ; $6466: $24
	db $10                                           ; $6467: $10
	ld a, e                                          ; $6468: $7b
	push af                                          ; $6469: $f5
	sub [hl]                                         ; $646a: $96
	inc h                                            ; $646b: $24
	rrca                                             ; $646c: $0f
	ld [de], a                                       ; $646d: $12
	db $10                                           ; $646e: $10
	inc bc                                           ; $646f: $03
	dec d                                            ; $6470: $15
	inc h                                            ; $6471: $24
	inc bc                                           ; $6472: $03
	ld [bc], a                                       ; $6473: $02
	ld a, e                                          ; $6474: $7b

jr_012_6475:
	cp $08                                           ; $6475: $fe $08
	nop                                              ; $6477: $00
	call $dd22                                       ; $6478: $cd $22 $dd
	ld [hl], a                                       ; $647b: $77
	ret                                              ; $647c: $c9


	ld [hl+], a                                      ; $647d: $22
	db $fd                                           ; $647e: $fd
	dec b                                            ; $647f: $05
	sub d                                            ; $6480: $92
	rst AddAOntoHL                                          ; $6481: $ef
	db $10                                           ; $6482: $10
	ld e, [hl]                                       ; $6483: $5e
	and c                                            ; $6484: $a1
	ld hl, sp+$07                                    ; $6485: $f8 $07
	ld de, $3f0e                                     ; $6487: $11 $0e $3f
	nop                                              ; $648a: $00
	ld e, d                                          ; $648b: $5a
	nop                                              ; $648c: $00
	dec b                                            ; $648d: $05
	db $fd                                           ; $648e: $fd
	adc l                                            ; $648f: $8d
	rst $38                                          ; $6490: $ff
	nop                                              ; $6491: $00
	db $fc                                           ; $6492: $fc
	ld bc, $05e0                                     ; $6493: $01 $e0 $05
	ld [bc], a                                       ; $6496: $02
	rst $38                                          ; $6497: $ff
	nop                                              ; $6498: $00
	cp $01                                           ; $6499: $fe $01
	ld sp, $0300                                     ; $649b: $31 $00 $03
	nop                                              ; $649e: $00
	ld b, a                                          ; $649f: $47
	add b                                            ; $64a0: $80
	ld a, a                                          ; $64a1: $7f
	ld a, e                                          ; $64a2: $7b
	db $ed                                           ; $64a3: $ed
	ld e, a                                          ; $64a4: $5f
	cp $77                                           ; $64a5: $fe $77
	ei                                               ; $64a7: $fb
	ld a, a                                          ; $64a8: $7f
	db $ed                                           ; $64a9: $ed
	sub l                                            ; $64aa: $95
	ld e, h                                          ; $64ab: $5c
	and e                                            ; $64ac: $a3
	cp $01                                           ; $64ad: $fe $01
	db $f4                                           ; $64af: $f4
	inc bc                                           ; $64b0: $03
	adc b                                            ; $64b1: $88
	rla                                              ; $64b2: $17
	ld d, b                                          ; $64b3: $50
	cpl                                              ; $64b4: $2f
	ld l, a                                          ; $64b5: $6f
	jp hl                                            ; $64b6: $e9


	sbc d                                            ; $64b7: $9a
	dec b                                            ; $64b8: $05
	ld a, [$857a]                                    ; $64b9: $fa $7a $85
	db $fd                                           ; $64bc: $fd
	ld a, e                                          ; $64bd: $7b
	call z, $f79e                                    ; $64be: $cc $9e $f7
	ld [hl], e                                       ; $64c1: $73
	ldh [$67], a                                     ; $64c2: $e0 $67
	cp $98                                           ; $64c4: $fe $98
	ld bc, $03fe                                     ; $64c6: $01 $fe $03
	db $fc                                           ; $64c9: $fc
	rst $38                                          ; $64ca: $ff
	nop                                              ; $64cb: $00
	db $fd                                           ; $64cc: $fd
	ld l, e                                          ; $64cd: $6b
	pop af                                           ; $64ce: $f1
	sbc c                                            ; $64cf: $99
	sbc $01                                          ; $64d0: $de $01
	rst $38                                          ; $64d2: $ff
	nop                                              ; $64d3: $00
	rst AddAOntoHL                                          ; $64d4: $ef
	db $10                                           ; $64d5: $10
	ld l, a                                          ; $64d6: $6f
	db $f4                                           ; $64d7: $f4
	sbc c                                            ; $64d8: $99
	cp a                                             ; $64d9: $bf
	nop                                              ; $64da: $00
	ei                                               ; $64db: $fb
	inc b                                            ; $64dc: $04
	rst FarCall                                          ; $64dd: $f7
	ld [$f07b], sp                                   ; $64de: $08 $7b $f0
	sbc b                                            ; $64e1: $98
	nop                                              ; $64e2: $00
	ret nc                                           ; $64e3: $d0

	cpl                                              ; $64e4: $2f
	and e                                            ; $64e5: $a3
	ld e, h                                          ; $64e6: $5c
	rst SubAFromDE                                          ; $64e7: $df
	jr nz, @+$79                                     ; $64e8: $20 $77

	db $ec                                           ; $64ea: $ec
	sub e                                            ; $64eb: $93
	db $fc                                           ; $64ec: $fc
	inc bc                                           ; $64ed: $03
	ldh [$1f], a                                     ; $64ee: $e0 $1f
	ld bc, $00f0                                     ; $64f0: $01 $f0 $00
	rst $38                                          ; $64f3: $ff
	pop bc                                           ; $64f4: $c1

jr_012_64f5:
	ld a, $e3                                        ; $64f5: $3e $e3
	inc e                                            ; $64f7: $1c
	ld [hl], a                                       ; $64f8: $77
	add d                                            ; $64f9: $82
	sbc l                                            ; $64fa: $9d
	rrca                                             ; $64fb: $0f
	ldh a, [rPCM34]                                  ; $64fc: $f0 $77
	ld [$509b], a                                    ; $64fe: $ea $9b $50
	xor a                                            ; $6501: $af
	and b                                            ; $6502: $a0
	ld e, a                                          ; $6503: $5f
	ld [hl], a                                       ; $6504: $77
	call $0497                                       ; $6505: $cd $97 $04
	ei                                               ; $6508: $fb
	nop                                              ; $6509: $00
	rst $38                                          ; $650a: $ff
	ld [bc], a                                       ; $650b: $02
	db $fd                                           ; $650c: $fd
	db $ed                                           ; $650d: $ed
	ld [de], a                                       ; $650e: $12
	ld h, a                                          ; $650f: $67
	and h                                            ; $6510: $a4
	ld a, a                                          ; $6511: $7f
	ld [$d48f], a                                    ; $6512: $ea $8f $d4
	dec hl                                           ; $6515: $2b
	ld a, [$fd05]                                    ; $6516: $fa $05 $fd
	ld [bc], a                                       ; $6519: $02
	nop                                              ; $651a: $00
	rst $38                                          ; $651b: $ff
	jr z, jr_012_64f5                                ; $651c: $28 $d7

	ld d, h                                          ; $651e: $54
	xor e                                            ; $651f: $ab
	xor a                                            ; $6520: $af
	ld d, b                                          ; $6521: $50

jr_012_6522:
	rst SubAFromHL                                          ; $6522: $d7
	jr z, jr_012_658c                                ; $6523: $28 $67

	ld h, b                                          ; $6525: $60
	sbc c                                            ; $6526: $99
	ld b, b                                          ; $6527: $40
	cp a                                             ; $6528: $bf

jr_012_6529:
	and l                                            ; $6529: $a5
	ld e, d                                          ; $652a: $5a
	ld e, d                                          ; $652b: $5a
	and l                                            ; $652c: $a5
	ld [hl], a                                       ; $652d: $77
	ld [hl], d                                       ; $652e: $72
	ld a, a                                          ; $652f: $7f
	cp $7f                                           ; $6530: $fe $7f
	push bc                                          ; $6532: $c5
	sbc e                                            ; $6533: $9b
	ld a, [hl+]                                      ; $6534: $2a
	push de                                          ; $6535: $d5
	ld e, l                                          ; $6536: $5d
	and d                                            ; $6537: $a2
	ld [hl], a                                       ; $6538: $77
	ret c                                            ; $6539: $d8

	ld a, a                                          ; $653a: $7f
	or b                                             ; $653b: $b0
	ld h, a                                          ; $653c: $67
	ldh [$7f], a                                     ; $653d: $e0 $7f
	ld l, d                                          ; $653f: $6a
	ld a, a                                          ; $6540: $7f
	cp b                                             ; $6541: $b8
	ld a, a                                          ; $6542: $7f
	db $fc                                           ; $6543: $fc
	sbc e                                            ; $6544: $9b
	and a                                            ; $6545: $a7
	ld e, b                                          ; $6546: $58
	ld e, a                                          ; $6547: $5f
	and b                                            ; $6548: $a0
	ld [hl], a                                       ; $6549: $77
	ldh a, [$98]                                     ; $654a: $f0 $98
	ret z                                            ; $654c: $c8

	nop                                              ; $654d: $00
	inc [hl]                                         ; $654e: $34
	ret nz                                           ; $654f: $c0

	jp c, $0020                                     ; $6550: $da $20 $00

	ld a, e                                          ; $6553: $7b
	ld d, $7f                                        ; $6554: $16 $7f
	ld [hl], b                                       ; $6556: $70
	ld a, [hl]                                       ; $6557: $7e
	ld hl, sp+$77                                    ; $6558: $f8 $77
	rst SubAFromDE                                          ; $655a: $df
	ei                                               ; $655b: $fb
	sbc c                                            ; $655c: $99
	rst GetHLinHL                                          ; $655d: $cf
	nop                                              ; $655e: $00
	ld a, [$1f05]                                    ; $655f: $fa $05 $1f
	ldh [$6f], a                                     ; $6562: $e0 $6f
	pop af                                           ; $6564: $f1
	sbc [hl]                                         ; $6565: $9e
	ld bc, $e27b                                     ; $6566: $01 $7b $e2
	ld a, a                                          ; $6569: $7f
	ld h, a                                          ; $656a: $67
	sub h                                            ; $656b: $94
	rlca                                             ; $656c: $07
	ld hl, sp-$04                                    ; $656d: $f8 $fc
	nop                                              ; $656f: $00
	add b                                            ; $6570: $80
	nop                                              ; $6571: $00
	ld [hl], l                                       ; $6572: $75
	nop                                              ; $6573: $00
	ld l, d                                          ; $6574: $6a
	nop                                              ; $6575: $00
	sub b                                            ; $6576: $90
	db $fc                                           ; $6577: $fc
	sbc h                                            ; $6578: $9c
	ld hl, sp+$00                                    ; $6579: $f8 $00
	call nc, $d172                                   ; $657b: $d4 $72 $d1
	ld l, a                                          ; $657e: $6f
	cp $7f                                           ; $657f: $fe $7f
	ld h, $7f                                        ; $6581: $26 $7f
	jr jr_012_6522                                   ; $6583: $18 $9d

	cp a                                             ; $6585: $bf
	ld b, b                                          ; $6586: $40
	ld l, a                                          ; $6587: $6f
	or $6f                                           ; $6588: $f6 $6f
	jr nc, jr_012_6529                               ; $658a: $30 $9d

jr_012_658c:
	or $01                                           ; $658c: $f6 $01
	ld [hl], a                                       ; $658e: $77
	ld hl, sp-$64                                    ; $658f: $f8 $9c
	ld d, [hl]                                       ; $6591: $56
	nop                                              ; $6592: $00
	and c                                            ; $6593: $a1
	ld l, e                                          ; $6594: $6b
	cp h                                             ; $6595: $bc
	ld [hl], a                                       ; $6596: $77
	sbc h                                            ; $6597: $9c
	sbc [hl]                                         ; $6598: $9e
	ld c, e                                          ; $6599: $4b
	db $fc                                           ; $659a: $fc
	ld a, a                                          ; $659b: $7f
	cp d                                             ; $659c: $ba
	sbc b                                            ; $659d: $98
	ret nz                                           ; $659e: $c0

	nop                                              ; $659f: $00
	ldh [rAUD1SWEEP], a                              ; $65a0: $e0 $10
	nop                                              ; $65a2: $00
	ret nz                                           ; $65a3: $c0

	db $fc                                           ; $65a4: $fc
	ld a, e                                          ; $65a5: $7b
	ld l, d                                          ; $65a6: $6a
	sbc h                                            ; $65a7: $9c
	rrca                                             ; $65a8: $0f
	nop                                              ; $65a9: $00
	ccf                                              ; $65aa: $3f
	db $fd                                           ; $65ab: $fd
	sbc e                                            ; $65ac: $9b
	inc bc                                           ; $65ad: $03
	db $10                                           ; $65ae: $10
	rrca                                             ; $65af: $0f
	nop                                              ; $65b0: $00
	ld a, e                                          ; $65b1: $7b
	or $76                                           ; $65b2: $f6 $76
	add e                                            ; $65b4: $83
	sbc c                                            ; $65b5: $99
	add b                                            ; $65b6: $80
	inc bc                                           ; $65b7: $03
	jr nz, jr_012_65d9                               ; $65b8: $20 $1f

	nop                                              ; $65ba: $00
	ldh a, [rPCM34]                                  ; $65bb: $f0 $77
	ld [hl], l                                       ; $65bd: $75
	ld [hl], a                                       ; $65be: $77
	cp $9b                                           ; $65bf: $fe $9b
	rlca                                             ; $65c1: $07
	ret nz                                           ; $65c2: $c0

	rra                                              ; $65c3: $1f
	ret nz                                           ; $65c4: $c0

	ld [hl], a                                       ; $65c5: $77
	add sp, -$65                                     ; $65c6: $e8 $9b
	push af                                          ; $65c8: $f5
	ld a, [bc]                                       ; $65c9: $0a
	xor b                                            ; $65ca: $a8
	ld d, a                                          ; $65cb: $57
	ld l, a                                          ; $65cc: $6f
	xor b                                            ; $65cd: $a8
	ld [hl], d                                       ; $65ce: $72
	sbc b                                            ; $65cf: $98
	halt                                             ; $65d0: $76
	call nz, $b472                                   ; $65d1: $c4 $72 $b4
	ld a, e                                          ; $65d4: $7b
	adc b                                            ; $65d5: $88
	ld a, e                                          ; $65d6: $7b
	ldh a, [$7e]                                     ; $65d7: $f0 $7e

jr_012_65d9:
	or b                                             ; $65d9: $b0
	ld [hl], a                                       ; $65da: $77
	db $f4                                           ; $65db: $f4
	ld a, [hl]                                       ; $65dc: $7e
	add d                                            ; $65dd: $82
	ld e, [hl]                                       ; $65de: $5e
	add e                                            ; $65df: $83
	ld [hl], a                                       ; $65e0: $77
	ldh [c], a                                       ; $65e1: $e2
	ld l, a                                          ; $65e2: $6f
	ret nc                                           ; $65e3: $d0

	ld [hl], a                                       ; $65e4: $77
	cp $7f                                           ; $65e5: $fe $7f
	sbc b                                            ; $65e7: $98
	sbc c                                            ; $65e8: $99
	push de                                          ; $65e9: $d5
	ld a, [hl+]                                      ; $65ea: $2a
	ld a, [hl+]                                      ; $65eb: $2a
	push de                                          ; $65ec: $d5
	push bc                                          ; $65ed: $c5
	ld a, [hl-]                                      ; $65ee: $3a
	ld [hl], a                                       ; $65ef: $77
	or $77                                           ; $65f0: $f6 $77
	ldh a, [$7e]                                     ; $65f2: $f0 $7e
	add d                                            ; $65f4: $82
	sbc c                                            ; $65f5: $99
	dec h                                            ; $65f6: $25
	jp c, Jump_012_7f80                              ; $65f7: $da $80 $7f

	inc a                                            ; $65fa: $3c
	jp $f076                                         ; $65fb: $c3 $76 $f0


	ld a, a                                          ; $65fe: $7f
	and $93                                          ; $65ff: $e6 $93
	ld [$ff15], a                                    ; $6601: $ea $15 $ff
	nop                                              ; $6604: $00
	ld d, h                                          ; $6605: $54
	xor e                                            ; $6606: $ab
	xor d                                            ; $6607: $aa
	ld d, l                                          ; $6608: $55
	ld c, b                                          ; $6609: $48
	or a                                             ; $660a: $b7
	sub b                                            ; $660b: $90
	ld l, a                                          ; $660c: $6f
	ld e, a                                          ; $660d: $5f
	cp l                                             ; $660e: $bd
	sbc e                                            ; $660f: $9b
	ld [hl], b                                       ; $6610: $70
	rrca                                             ; $6611: $0f
	sbc l                                            ; $6612: $9d
	ld [bc], a                                       ; $6613: $02
	ld e, a                                          ; $6614: $5f
	rra                                              ; $6615: $1f
	sbc d                                            ; $6616: $9a
	ld b, e                                          ; $6617: $43
	cp h                                             ; $6618: $bc
	rra                                              ; $6619: $1f
	ldh [$e8], a                                     ; $661a: $e0 $e8
	ld [hl], c                                       ; $661c: $71
	ldh [hDisp1_WY], a                                     ; $661d: $e0 $95
	ld [$5ff2], sp                                   ; $661f: $08 $f2 $5f
	and b                                            ; $6622: $a0
	inc a                                            ; $6623: $3c
	ret nz                                           ; $6624: $c0

	rst $38                                          ; $6625: $ff
	nop                                              ; $6626: $00
	jr @+$09                                         ; $6627: $18 $07

	db $fd                                           ; $6629: $fd
	sbc [hl]                                         ; $662a: $9e
	ldh [$7b], a                                     ; $662b: $e0 $7b
	ld [hl-], a                                      ; $662d: $32
	ld a, [hl]                                       ; $662e: $7e
	or $ff                                           ; $662f: $f6 $ff
	sbc d                                            ; $6631: $9a
	sub e                                            ; $6632: $93
	ld h, b                                          ; $6633: $60
	nop                                              ; $6634: $00
	rst $38                                          ; $6635: $ff
	inc bc                                           ; $6636: $03
	cp $7f                                           ; $6637: $fe $7f
	add hl, sp                                       ; $6639: $39
	halt                                             ; $663a: $76
	jp nc, $0498                                     ; $663b: $d2 $98 $04

	inc bc                                           ; $663e: $03
	ld c, a                                          ; $663f: $4f
	add b                                            ; $6640: $80
	and b                                            ; $6641: $a0
	ld e, b                                          ; $6642: $58
	pop hl                                           ; $6643: $e1
	ld [hl], a                                       ; $6644: $77
	inc d                                            ; $6645: $14
	adc d                                            ; $6646: $8a
	ld a, a                                          ; $6647: $7f
	dec bc                                           ; $6648: $0b
	ld d, h                                          ; $6649: $54
	call c, $0223                                    ; $664a: $dc $23 $02
	db $fd                                           ; $664d: $fd
	pop bc                                           ; $664e: $c1
	jr c, jr_012_6651                                ; $664f: $38 $00

jr_012_6651:
	nop                                              ; $6651: $00
	ld a, a                                          ; $6652: $7f
	nop                                              ; $6653: $00
	call z, $0030                                   ; $6654: $cc $30 $00
	dec de                                           ; $6657: $1b
	ld a, [de]                                       ; $6658: $1a
	ld h, l                                          ; $6659: $65
	ld a, a                                          ; $665a: $7f
	add b                                            ; $665b: $80
	ld e, c                                          ; $665c: $59
	or b                                             ; $665d: $b0
	rst $38                                          ; $665e: $ff
	sbc d                                            ; $665f: $9a
	push af                                          ; $6660: $f5
	nop                                              ; $6661: $00
	rst $38                                          ; $6662: $ff
	db $fc                                           ; $6663: $fc
	inc bc                                           ; $6664: $03
	ld l, a                                          ; $6665: $6f
	inc l                                            ; $6666: $2c
	ld [hl], e                                       ; $6667: $73
	ldh a, [$9c]                                     ; $6668: $f0 $9c
	dec a                                            ; $666a: $3d
	nop                                              ; $666b: $00
	rst $38                                          ; $666c: $ff
	ld l, a                                          ; $666d: $6f
	sbc $7f                                          ; $666e: $de $7f
	ld e, d                                          ; $6670: $5a
	ld [hl], c                                       ; $6671: $71
	call nc, Call_012_409c                           ; $6672: $d4 $9c $40
	jp hl                                            ; $6675: $e9


	inc d                                            ; $6676: $14
	ld [hl], a                                       ; $6677: $77
	ld a, [$b675]                                    ; $6678: $fa $75 $b6
	sbc [hl]                                         ; $667b: $9e
	rst SubAFromDE                                          ; $667c: $df
	ld [hl], e                                       ; $667d: $73
	inc l                                            ; $667e: $2c
	ld [hl], a                                       ; $667f: $77
	jr jr_012_66f9                                   ; $6680: $18 $77

	ld a, [bc]                                       ; $6682: $0a
	ld l, a                                          ; $6683: $6f
	jr nz, jr_012_6705                               ; $6684: $20 $7f

	and $7f                                          ; $6686: $e6 $7f
	ldh a, [$9e]                                     ; $6688: $f0 $9e
	cp $63                                           ; $668a: $fe $63
	ld a, [bc]                                       ; $668c: $0a
	ld a, a                                          ; $668d: $7f
	ld [hl], b                                       ; $668e: $70
	ld a, [hl]                                       ; $668f: $7e
	ld l, $9a                                        ; $6690: $2e $9a
	nop                                              ; $6692: $00
	add hl, de                                       ; $6693: $19
	sub b                                            ; $6694: $90
	ld l, a                                          ; $6695: $6f
	ld b, b                                          ; $6696: $40
	ld l, [hl]                                       ; $6697: $6e
	db $ed                                           ; $6698: $ed
	sub d                                            ; $6699: $92
	rst $38                                          ; $669a: $ff
	rrca                                             ; $669b: $0f
	ldh a, [$1f]                                     ; $669c: $f0 $1f
	ldh [$2f], a                                     ; $669e: $e0 $2f
	ret nc                                           ; $66a0: $d0

	ld e, $e0                                        ; $66a1: $1e $e0
	ld e, b                                          ; $66a3: $58
	add c                                            ; $66a4: $81
	nop                                              ; $66a5: $00
	rst SubAFromBC                                          ; $66a6: $e7
	ld h, a                                          ; $66a7: $67
	adc e                                            ; $66a8: $8b
	ld a, a                                          ; $66a9: $7f
	db $e4                                           ; $66aa: $e4
	sub l                                            ; $66ab: $95
	or h                                             ; $66ac: $b4
	ld c, e                                          ; $66ad: $4b
	ldh a, [rIF]                                     ; $66ae: $f0 $0f
	inc e                                            ; $66b0: $1c
	db $e3                                           ; $66b1: $e3
	ld b, $f9                                        ; $66b2: $06 $f9
	inc bc                                           ; $66b4: $03
	db $fc                                           ; $66b5: $fc
	ld [hl], a                                       ; $66b6: $77
	ld [$e26d], sp                                   ; $66b7: $08 $6d $e2
	ld a, a                                          ; $66ba: $7f
	db $fc                                           ; $66bb: $fc
	ld a, a                                          ; $66bc: $7f
	db $ec                                           ; $66bd: $ec
	ld a, l                                          ; $66be: $7d
	ld a, [hl]                                       ; $66bf: $7e
	ld a, [hl]                                       ; $66c0: $7e
	sbc d                                            ; $66c1: $9a
	sbc l                                            ; $66c2: $9d
	or $09                                           ; $66c3: $f6 $09
	ld h, a                                          ; $66c5: $67
	ld h, h                                          ; $66c6: $64
	ld a, l                                          ; $66c7: $7d
	jp nz, Jump_012_607d                             ; $66c8: $c2 $7d $60

	ld d, c                                          ; $66cb: $51
	inc bc                                           ; $66cc: $03
	ld a, e                                          ; $66cd: $7b
	cp $7d                                           ; $66ce: $fe $7d
	call c, Call_012_7c96                            ; $66d0: $dc $96 $7c
	inc bc                                           ; $66d3: $03
	ld e, a                                          ; $66d4: $5f
	nop                                              ; $66d5: $00
	xor e                                            ; $66d6: $ab
	nop                                              ; $66d7: $00
	ld b, l                                          ; $66d8: $45
	nop                                              ; $66d9: $00
	ld [bc], a                                       ; $66da: $02
	ld a, b                                          ; $66db: $78
	ret nc                                           ; $66dc: $d0

	ld a, a                                          ; $66dd: $7f
	ld d, $77                                        ; $66de: $16 $77
	db $eb                                           ; $66e0: $eb
	ld e, l                                          ; $66e1: $5d
	db $ec                                           ; $66e2: $ec
	ld [hl], l                                       ; $66e3: $75
	ret z                                            ; $66e4: $c8

	sbc b                                            ; $66e5: $98
	and a                                            ; $66e6: $a7
	nop                                              ; $66e7: $00
	ld d, c                                          ; $66e8: $51
	nop                                              ; $66e9: $00
	scf                                              ; $66ea: $37
	nop                                              ; $66eb: $00
	ld a, [bc]                                       ; $66ec: $0a
	ld l, h                                          ; $66ed: $6c
	or d                                             ; $66ee: $b2
	ld a, e                                          ; $66ef: $7b

jr_012_66f0:
	ldh [c], a                                       ; $66f0: $e2
	sbc d                                            ; $66f1: $9a
	cp e                                             ; $66f2: $bb
	nop                                              ; $66f3: $00
	ld d, b                                          ; $66f4: $50
	nop                                              ; $66f5: $00
	jr z, jr_012_66f0                                ; $66f6: $28 $f8

	ld [hl], a                                       ; $66f8: $77

jr_012_66f9:
	ld b, d                                          ; $66f9: $42
	sbc [hl]                                         ; $66fa: $9e
	jp c, $0d7b                                      ; $66fb: $da $7b $0d

	ld a, a                                          ; $66fe: $7f
	ret nc                                           ; $66ff: $d0

	ld a, l                                          ; $6700: $7d
	db $fc                                           ; $6701: $fc
	sbc c                                            ; $6702: $99
	cp b                                             ; $6703: $b8
	ld b, b                                          ; $6704: $40

jr_012_6705:
	ld a, [hl]                                       ; $6705: $7e
	add b                                            ; $6706: $80
	jr nz, jr_012_6768                               ; $6707: $20 $5f

	ld h, a                                          ; $6709: $67
	ld d, [hl]                                       ; $670a: $56
	ld l, a                                          ; $670b: $6f
	cp $9a                                           ; $670c: $fe $9a
	jp $203c                                         ; $670e: $c3 $3c $20


	rra                                              ; $6711: $1f
	rrca                                             ; $6712: $0f
	ld a, e                                          ; $6713: $7b
	call nz, $089e                                   ; $6714: $c4 $9e $08
	ld a, [$a27e]                                    ; $6717: $fa $7e $a2
	ld a, a                                          ; $671a: $7f
	ld l, $9a                                        ; $671b: $2e $9a
	db $10                                           ; $671d: $10
	add sp, $59                                      ; $671e: $e8 $59
	inc b                                            ; $6720: $04
	xor d                                            ; $6721: $aa
	ld l, e                                          ; $6722: $6b
	or b                                             ; $6723: $b0
	db $fd                                           ; $6724: $fd
	sbc d                                            ; $6725: $9a
	adc b                                            ; $6726: $88
	nop                                              ; $6727: $00
	ld d, l                                          ; $6728: $55
	nop                                              ; $6729: $00
	and b                                            ; $672a: $a0
	db $ec                                           ; $672b: $ec
	sbc [hl]                                         ; $672c: $9e
	ld a, [hl+]                                      ; $672d: $2a
	ld a, e                                          ; $672e: $7b
	sbc a                                            ; $672f: $9f
	ld [hl], h                                       ; $6730: $74
	ld c, a                                          ; $6731: $4f
	sbc [hl]                                         ; $6732: $9e
	ld b, $7a                                        ; $6733: $06 $7a
	ld l, l                                          ; $6735: $6d
	ld [hl], l                                       ; $6736: $75
	adc [hl]                                         ; $6737: $8e
	ld a, a                                          ; $6738: $7f
	call nz, $ac77                                   ; $6739: $c4 $77 $ac
	ld a, a                                          ; $673c: $7f
	ld a, [de]                                       ; $673d: $1a
	ld a, a                                          ; $673e: $7f
	ld d, a                                          ; $673f: $57
	ld a, a                                          ; $6740: $7f
	xor d                                            ; $6741: $aa
	sbc l                                            ; $6742: $9d
	ld a, $c1                                        ; $6743: $3e $c1
	ld l, e                                          ; $6745: $6b
	ld a, a                                          ; $6746: $7f
	sub l                                            ; $6747: $95
	rst $38                                          ; $6748: $ff
	ret nz                                           ; $6749: $c0

	ccf                                              ; $674a: $3f
	ld c, a                                          ; $674b: $4f
	add b                                            ; $674c: $80
	rra                                              ; $674d: $1f
	ldh [rSB], a                                     ; $674e: $e0 $01
	cp $78                                           ; $6750: $fe $78
	db $fd                                           ; $6752: $fd
	ld a, [hl]                                       ; $6753: $7e
	ld [hl], b                                       ; $6754: $70
	sbc [hl]                                         ; $6755: $9e
	push hl                                          ; $6756: $e5
	ld d, d                                          ; $6757: $52
	ld [hl], b                                       ; $6758: $70
	ld l, d                                          ; $6759: $6a
	sbc $7e                                          ; $675a: $de $7e
	db $f4                                           ; $675c: $f4
	ld a, a                                          ; $675d: $7f
	ld sp, hl                                        ; $675e: $f9
	ld a, a                                          ; $675f: $7f
	or a                                             ; $6760: $b7
	ld e, [hl]                                       ; $6761: $5e
	nop                                              ; $6762: $00
	sbc l                                            ; $6763: $9d
	inc [hl]                                         ; $6764: $34
	bit 6, a                                         ; $6765: $cb $77
	ld sp, hl                                        ; $6767: $f9

jr_012_6768:
	ld a, e                                          ; $6768: $7b
	xor h                                            ; $6769: $ac
	ld l, e                                          ; $676a: $6b
	ldh a, [$6f]                                     ; $676b: $f0 $6f
	call z, $a07f                                    ; $676d: $cc $7f $a0
	ld a, [hl]                                       ; $6770: $7e
	ld d, $9b                                        ; $6771: $16 $9b
	nop                                              ; $6773: $00
	rra                                              ; $6774: $1f
	ld b, [hl]                                       ; $6775: $46
	add hl, sp                                       ; $6776: $39
	ld [hl], h                                       ; $6777: $74
	or $fd                                           ; $6778: $f6 $fd
	ld a, l                                          ; $677a: $7d
	ei                                               ; $677b: $fb
	ld a, l                                          ; $677c: $7d
	jp hl                                            ; $677d: $e9


	ld h, [hl]                                       ; $677e: $66
	jr nc, jr_012_67ec                               ; $677f: $30 $6b

	or b                                             ; $6781: $b0
	sbc d                                            ; $6782: $9a
	inc b                                            ; $6783: $04
	nop                                              ; $6784: $00
	rst $38                                          ; $6785: $ff
	sbc a                                            ; $6786: $9f
	ld h, b                                          ; $6787: $60
	ld e, e                                          ; $6788: $5b
	and b                                            ; $6789: $a0
	ld a, l                                          ; $678a: $7d
	inc h                                            ; $678b: $24
	sbc h                                            ; $678c: $9c
	ld a, a                                          ; $678d: $7f
	rla                                              ; $678e: $17
	add sp, $5f                                      ; $678f: $e8 $5f
	ldh a, [$98]                                     ; $6791: $f0 $98
	cp e                                             ; $6793: $bb
	ld c, h                                          ; $6794: $4c
	rla                                              ; $6795: $17
	ld hl, sp-$11                                    ; $6796: $f8 $ef
	ldh a, [$bf]                                     ; $6798: $f0 $bf
	ld a, c                                          ; $679a: $79
	or b                                             ; $679b: $b0
	ld h, [hl]                                       ; $679c: $66
	rst $38                                          ; $679d: $ff
	add b                                            ; $679e: $80
	add c                                            ; $679f: $81
	ld a, a                                          ; $67a0: $7f
	rst JumpTable                                          ; $67a1: $c7
	ld bc, $8f73                                     ; $67a2: $01 $73 $8f
	adc a                                            ; $67a5: $8f
	ld b, d                                          ; $67a6: $42
	rst JumpTable                                          ; $67a7: $c7
	inc a                                            ; $67a8: $3c
	ccf                                              ; $67a9: $3f
	ld hl, sp-$21                                    ; $67aa: $f8 $df
	ldh [hDisp0_LCDC], a                                     ; $67ac: $e0 $82
	jr nc, jr_012_67b1                               ; $67ae: $30 $01

	rst $38                                          ; $67b0: $ff

jr_012_67b1:
	ld b, $fe                                        ; $67b1: $06 $fe
	rst $38                                          ; $67b3: $ff
	rst $38                                          ; $67b4: $ff
	adc $22                                          ; $67b5: $ce $22
	rst GetHLinHL                                          ; $67b7: $cf
	ld hl, $1000                                     ; $67b8: $21 $00 $10
	rst $38                                          ; $67bb: $ff
	rst $38                                          ; $67bc: $ff
	di                                               ; $67bd: $f3
	adc e                                            ; $67be: $8b
	inc e                                            ; $67bf: $1c
	jp hl                                            ; $67c0: $e9


	sbc [hl]                                         ; $67c1: $9e
	rst AddAOntoHL                                          ; $67c2: $ef
	sub [hl]                                         ; $67c3: $96
	rst AddAOntoHL                                          ; $67c4: $ef
	sub c                                            ; $67c5: $91
	ld l, l                                          ; $67c6: $6d
	jp nc, Jump_012_7ab5                             ; $67c7: $d2 $b5 $7a

	xor $1d                                          ; $67ca: $ee $1d
	ei                                               ; $67cc: $fb
	rlca                                             ; $67cd: $07
	ld l, l                                          ; $67ce: $6d
	sub e                                            ; $67cf: $93
	or [hl]                                          ; $67d0: $b6
	ld c, c                                          ; $67d1: $49
	rst $38                                          ; $67d2: $ff
	ld a, e                                          ; $67d3: $7b
	ret                                              ; $67d4: $c9


	ld [hl], a                                       ; $67d5: $77
	ld d, b                                          ; $67d6: $50
	ld [hl], a                                       ; $67d7: $77
	cp $97                                           ; $67d8: $fe $97
	db $eb                                           ; $67da: $eb
	inc [hl]                                         ; $67db: $34
	db $dd                                           ; $67dc: $dd
	ld a, [hl-]                                      ; $67dd: $3a
	rst FarCall                                          ; $67de: $f7
	rrca                                             ; $67df: $0f
	ld hl, sp+$07                                    ; $67e0: $f8 $07
	ld h, a                                          ; $67e2: $67
	or b                                             ; $67e3: $b0
	add b                                            ; $67e4: $80
	rrca                                             ; $67e5: $0f
	pop af                                           ; $67e6: $f1
	inc sp                                           ; $67e7: $33
	call $bf43                                       ; $67e8: $cd $43 $bf
	add l                                            ; $67eb: $85

jr_012_67ec:
	rst $38                                          ; $67ec: $ff
	adc l                                            ; $67ed: $8d
	ei                                               ; $67ee: $fb
	ld sp, $d2fb                                     ; $67ef: $31 $fb $d2
	db $eb                                           ; $67f2: $eb
	ld d, h                                          ; $67f3: $54
	ld l, $bd                                        ; $67f4: $2e $bd
	inc bc                                           ; $67f6: $03
	ccf                                              ; $67f7: $3f
	add e                                            ; $67f8: $83
	rst JumpTable                                          ; $67f9: $c7
	pop af                                           ; $67fa: $f1
	db $fc                                           ; $67fb: $fc
	add c                                            ; $67fc: $81
	sbc a                                            ; $67fd: $9f
	add c                                            ; $67fe: $81
	rst JumpTable                                          ; $67ff: $c7
	rst $38                                          ; $6800: $ff
	add c                                            ; $6801: $81
	pop bc                                           ; $6802: $c1
	sbc a                                            ; $6803: $9f
	add b                                            ; $6804: $80
	add c                                            ; $6805: $81
	xor l                                            ; $6806: $ad

jr_012_6807:
	inc hl                                           ; $6807: $23
	jr nc, jr_012_6807                               ; $6808: $30 $fd

	ld [hl], c                                       ; $680a: $71
	cp $e1                                           ; $680b: $fe $e1
	cp $e0                                           ; $680d: $fe $e0
	ld a, [hl]                                       ; $680f: $7e
	ld [bc], a                                       ; $6810: $02
	db $fd                                           ; $6811: $fd
	inc b                                            ; $6812: $04
	ei                                               ; $6813: $fb
	jr c, @-$7b                                      ; $6814: $38 $83

	sbc c                                            ; $6816: $99
	ld a, h                                          ; $6817: $7c
	or d                                             ; $6818: $b2
	ld a, h                                          ; $6819: $7c
	ld h, h                                          ; $681a: $64
	ld sp, hl                                        ; $681b: $f9
	and $f9                                          ; $681c: $e6 $f9
	ld b, l                                          ; $681e: $45
	ld d, d                                          ; $681f: $52
	ld e, b                                          ; $6820: $58
	ld b, a                                          ; $6821: $47
	ld b, h                                          ; $6822: $44
	ld [hl], e                                       ; $6823: $73
	add b                                            ; $6824: $80
	ld [hl+], a                                      ; $6825: $22
	add hl, sp                                       ; $6826: $39
	nop                                              ; $6827: $00
	rst $38                                          ; $6828: $ff
	add e                                            ; $6829: $83
	ld a, h                                          ; $682a: $7c
	ld c, h                                          ; $682b: $4c
	or e                                             ; $682c: $b3
	ld d, b                                          ; $682d: $50
	xor a                                            ; $682e: $af
	ld hl, $2fdf                                     ; $682f: $21 $df $2f
	rst SubAFromDE                                          ; $6832: $df
	ld sp, hl                                        ; $6833: $f9
	di                                               ; $6834: $f3
	add hl, hl                                       ; $6835: $29
	sub e                                            ; $6836: $93
	add h                                            ; $6837: $84
	ei                                               ; $6838: $fb
	add a                                            ; $6839: $87
	ld hl, sp-$38                                    ; $683a: $f8 $c8
	rst FarCall                                          ; $683c: $f7
	ldh a, [$ef]                                     ; $683d: $f0 $ef
	sub b                                            ; $683f: $90
	cp a                                             ; $6840: $bf
	sbc h                                            ; $6841: $9c
	cp a                                             ; $6842: $bf
	adc e                                            ; $6843: $8b
	sbc h                                            ; $6844: $9c
	rst SubAFromBC                                          ; $6845: $e7
	ld c, c                                          ; $6846: $49
	db $e4                                           ; $6847: $e4
	ld a, d                                          ; $6848: $7a
	sub c                                            ; $6849: $91
	ld a, [hl]                                       ; $684a: $7e
	or c                                             ; $684b: $b1
	add b                                            ; $684c: $80
	ldh [rIE], a                                     ; $684d: $e0 $ff
	ldh a, [$2f]                                     ; $684f: $f0 $2f
	ret c                                            ; $6851: $d8

	rla                                              ; $6852: $17
	db $ec                                           ; $6853: $ec
	sub e                                            ; $6854: $93
	xor $49                                          ; $6855: $ee $49
	rst FarCall                                          ; $6857: $f7
	push hl                                          ; $6858: $e5
	ei                                               ; $6859: $fb
	ld b, [hl]                                       ; $685a: $46
	ld sp, hl                                        ; $685b: $f9
	ccf                                              ; $685c: $3f
	cp a                                             ; $685d: $bf
	call c, $383b                                    ; $685e: $dc $3b $38
	rst GetHLinHL                                          ; $6861: $cf
	db $f4                                           ; $6862: $f4
	rlca                                             ; $6863: $07
	rlca                                             ; $6864: $07
	ld a, a                                          ; $6865: $7f
	ld a, [hl]                                       ; $6866: $7e
	add e                                            ; $6867: $83
	ld b, c                                          ; $6868: $41
	db $fd                                           ; $6869: $fd
	scf                                              ; $686a: $37
	ldh [$80], a                                     ; $686b: $e0 $80
	sub b                                            ; $686d: $90
	ld a, a                                          ; $686e: $7f
	add hl, de                                       ; $686f: $19
	sbc b                                            ; $6870: $98
	add hl, hl                                       ; $6871: $29
	call c, $ee14                                    ; $6872: $dc $14 $ee
	sub d                                            ; $6875: $92
	xor $41                                          ; $6876: $ee $41
	rst AddAOntoHL                                          ; $6878: $ef
	ldh a, [c]                                       ; $6879: $f2
	db $fd                                           ; $687a: $fd
	ld [de], a                                       ; $687b: $12
	ld sp, hl                                        ; $687c: $f9
	add hl, bc                                       ; $687d: $09
	ld hl, sp+$0c                                    ; $687e: $f8 $0c
	rst SubAFromBC                                          ; $6880: $e7
	ld a, [hl-]                                      ; $6881: $3a
	rst $38                                          ; $6882: $ff
	ld a, a                                          ; $6883: $7f
	rst $38                                          ; $6884: $ff
	jp Jump_012_4ebf                                 ; $6885: $c3 $bf $4e


	cp l                                             ; $6888: $bd
	ld c, a                                          ; $6889: $4f
	ld a, a                                          ; $688a: $7f
	ld [hl], l                                       ; $688b: $75
	sub e                                            ; $688c: $93
	ld a, d                                          ; $688d: $7a
	adc h                                            ; $688e: $8c
	di                                               ; $688f: $f3
	db $10                                           ; $6890: $10
	rst AddAOntoHL                                          ; $6891: $ef
	ld [hl], b                                       ; $6892: $70
	adc a                                            ; $6893: $8f
	adc b                                            ; $6894: $88
	ld [hl], a                                       ; $6895: $77
	daa                                              ; $6896: $27

Call_012_6897:
	ei                                               ; $6897: $fb
	inc e                                            ; $6898: $1c
	ld [hl], a                                       ; $6899: $77
	dec [hl]                                         ; $689a: $35
	ld a, a                                          ; $689b: $7f
	cp $7e                                           ; $689c: $fe $7e
	ld h, l                                          ; $689e: $65
	adc e                                            ; $689f: $8b
	rlca                                             ; $68a0: $07
	ld hl, sp+$0f                                    ; $68a1: $f8 $0f
	ld sp, hl                                        ; $68a3: $f9
	ld d, $ea                                        ; $68a4: $16 $ea
	dec [hl]                                         ; $68a6: $35
	call nz, $fe7b                                   ; $68a7: $c4 $7b $fe
	rst SubAFromDE                                          ; $68aa: $df
	ld d, [hl]                                       ; $68ab: $56
	ld [hl], a                                       ; $68ac: $77
	rst $38                                          ; $68ad: $ff
	db $fc                                           ; $68ae: $fc
	cpl                                              ; $68af: $2f
	xor b                                            ; $68b0: $a8
	rst $38                                          ; $68b1: $ff
	ld hl, sp-$01                                    ; $68b2: $f8 $ff
	ld [hl], a                                       ; $68b4: $77
	db $fc                                           ; $68b5: $fc
	add b                                            ; $68b6: $80
	sbc [hl]                                         ; $68b7: $9e
	inc sp                                           ; $68b8: $33
	ld a, a                                          ; $68b9: $7f
	rst $38                                          ; $68ba: $ff
	dec sp                                           ; $68bb: $3b
	ei                                               ; $68bc: $fb
	dec de                                           ; $68bd: $1b
	adc c                                            ; $68be: $89
	dec c                                            ; $68bf: $0d
	ld a, h                                          ; $68c0: $7c
	adc l                                            ; $68c1: $8d
	ld c, $bf                                        ; $68c2: $0e $bf
	sub [hl]                                         ; $68c4: $96
	rst JumpTable                                          ; $68c5: $c7
	sbc a                                            ; $68c6: $9f
	jp $bf04                                         ; $68c7: $c3 $04 $bf


	add h                                            ; $68ca: $84
	or a                                             ; $68cb: $b7
	jp z, $93b7                                      ; $68cc: $ca $b7 $93

	rst GetHLinHL                                          ; $68cf: $cf
	sbc d                                            ; $68d0: $9a
	rst SubAFromBC                                          ; $68d1: $e7
	ld b, c                                          ; $68d2: $41
	di                                               ; $68d3: $f3
	ld b, b                                          ; $68d4: $40
	db $fd                                           ; $68d5: $fd
	adc l                                            ; $68d6: $8d
	ld [hl+], a                                      ; $68d7: $22
	db $fd                                           ; $68d8: $fd
	sbc a                                            ; $68d9: $9f
	rst SubAFromBC                                          ; $68da: $e7
	db $e3                                           ; $68db: $e3
	rst SubAFromDE                                          ; $68dc: $df
	ld [hl], e                                       ; $68dd: $73
	call Call_012_6dd2                               ; $68de: $cd $d2 $6d
	rst AddAOntoHL                                          ; $68e1: $ef
	scf                                              ; $68e2: $37
	db $fc                                           ; $68e3: $fc
	ccf                                              ; $68e4: $3f
	ldh a, [c]                                       ; $68e5: $f2
	dec e                                            ; $68e6: $1d
	pop hl                                           ; $68e7: $e1
	ld a, $6e                                        ; $68e8: $3e $6e
	ld sp, hl                                        ; $68ea: $f9
	ld a, a                                          ; $68eb: $7f
	ld e, e                                          ; $68ec: $5b
	ld a, d                                          ; $68ed: $7a
	add [hl]                                         ; $68ee: $86
	add b                                            ; $68ef: $80
	ld hl, sp+$41                                    ; $68f0: $f8 $41
	add b                                            ; $68f2: $80
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	dec h                                            ; $68f5: $25
	rst $38                                          ; $68f6: $ff
	ld hl, $3175                                     ; $68f7: $21 $75 $31
	inc hl                                           ; $68fa: $23
	ld h, e                                          ; $68fb: $63
	dec sp                                           ; $68fc: $3b
	di                                               ; $68fd: $f3
	ld [hl], e                                       ; $68fe: $73
	sbc a                                            ; $68ff: $9f
	rst GetHLinHL                                          ; $6900: $cf
	or l                                             ; $6901: $b5
	rst GetHLinHL                                          ; $6902: $cf
	ld e, a                                          ; $6903: $5f
	add a                                            ; $6904: $87
	ldh a, [c]                                       ; $6905: $f2
	rst $38                                          ; $6906: $ff
	db $e4                                           ; $6907: $e4
	and $c7                                          ; $6908: $e6 $c7
	call z, $cccf                                    ; $690a: $cc $cf $cc
	adc $cc                                          ; $690d: $ce $cc
	adc d                                            ; $690f: $8a
	push bc                                          ; $6910: $c5
	xor $e6                                          ; $6911: $ee $e6
	rst FarCall                                          ; $6913: $f7
	ld a, a                                          ; $6914: $7f
	rst FarCall                                          ; $6915: $f7
	and c                                            ; $6916: $a1
	add a                                            ; $6917: $87
	add e                                            ; $6918: $83
	rst SubAFromDE                                          ; $6919: $df
	and a                                            ; $691a: $a7
	rst JumpTable                                          ; $691b: $c7
	ld b, $df                                        ; $691c: $06 $df
	ld [hl], $8f                                     ; $691e: $36 $8f
	ld c, [hl]                                       ; $6920: $4e
	or a                                             ; $6921: $b7
	add a                                            ; $6922: $87
	ld [hl], a                                       ; $6923: $77
	inc b                                            ; $6924: $04
	ld a, c                                          ; $6925: $79
	or h                                             ; $6926: $b4
	ld h, a                                          ; $6927: $67
	cp $7f                                           ; $6928: $fe $7f

jr_012_692a:
	ld l, e                                          ; $692a: $6b
	ld a, a                                          ; $692b: $7f
	db $fc                                           ; $692c: $fc
	sbc l                                            ; $692d: $9d
	ld d, l                                          ; $692e: $55
	xor d                                            ; $692f: $aa
	ld h, a                                          ; $6930: $67
	ldh a, [c]                                       ; $6931: $f2
	sbc e                                            ; $6932: $9b
	ld a, [bc]                                       ; $6933: $0a
	push af                                          ; $6934: $f5
	ld d, a                                          ; $6935: $57
	xor b                                            ; $6936: $a8
	ld [hl], a                                       ; $6937: $77
	rst FarCall                                          ; $6938: $f7
	adc a                                            ; $6939: $8f
	pop bc                                           ; $693a: $c1
	cp $a0                                           ; $693b: $fe $a0
	rst $38                                          ; $693d: $ff
	or b                                             ; $693e: $b0
	rst AddAOntoHL                                          ; $693f: $ef
	pop af                                           ; $6940: $f1
	cp a                                             ; $6941: $bf
	pop af                                           ; $6942: $f1
	cp a                                             ; $6943: $bf
	pop de                                           ; $6944: $d1

jr_012_6945:
	cp a                                             ; $6945: $bf
	reti                                             ; $6946: $d9


	cp a                                             ; $6947: $bf
	ld sp, hl                                        ; $6948: $f9
	sbc a                                            ; $6949: $9f
	ld c, b                                          ; $694a: $48
	ret nc                                           ; $694b: $d0

	ld a, l                                          ; $694c: $7d
	dec [hl]                                         ; $694d: $35
	ld [hl], e                                       ; $694e: $73
	ld hl, sp-$63                                    ; $694f: $f8 $9d
	jr z, jr_012_692a                                ; $6951: $28 $d7

	ld l, e                                          ; $6953: $6b
	ldh a, [$73]                                     ; $6954: $f0 $73
	ld [hl], b                                       ; $6956: $70
	sbc l                                            ; $6957: $9d
	dec b                                            ; $6958: $05
	ld a, [$f26b]                                    ; $6959: $fa $6b $f2
	sub l                                            ; $695c: $95
	db $f4                                           ; $695d: $f4
	nop                                              ; $695e: $00
	ret nz                                           ; $695f: $c0

	sbc a                                            ; $6960: $9f
	ld h, b                                          ; $6961: $60
	ld [$e337], sp                                   ; $6962: $08 $37 $e3
	nop                                              ; $6965: $00
	ret nc                                           ; $6966: $d0

	ld a, e                                          ; $6967: $7b
	push af                                          ; $6968: $f5
	sbc [hl]                                         ; $6969: $9e
	ld [$ef7b], a                                    ; $696a: $ea $7b $ef
	ld [hl], h                                       ; $696d: $74
	ld a, b                                          ; $696e: $78
	ld a, c                                          ; $696f: $79
	ld h, c                                          ; $6970: $61
	sub l                                            ; $6971: $95
	ldh [$df], a                                     ; $6972: $e0 $df
	jr nc, jr_012_6945                               ; $6974: $30 $cf

	jr c, jr_012_69e7                                ; $6976: $38 $6f

	sbc b                                            ; $6978: $98
	ld d, a                                          ; $6979: $57
	xor h                                            ; $697a: $ac
	db $db                                           ; $697b: $db
	ld a, d                                          ; $697c: $7a
	ld b, $91                                        ; $697d: $06 $91
	ld h, b                                          ; $697f: $60
	rra                                              ; $6980: $1f
	ld d, b                                          ; $6981: $50
	adc a                                            ; $6982: $8f
	ld c, $70                                        ; $6983: $0e $70
	inc a                                            ; $6985: $3c
	di                                               ; $6986: $f3
	ld hl, sp-$05                                    ; $6987: $f8 $fb
	ld a, [$f1ff]                                    ; $6989: $fa $ff $f1
	ei                                               ; $698c: $fb
	ld a, e                                          ; $698d: $7b
	sbc $7d                                          ; $698e: $de $7d
	ld sp, $e27a                                     ; $6990: $31 $7a $e2
	ld a, l                                          ; $6993: $7d
	ld hl, sp-$67                                    ; $6994: $f8 $99
	ldh [c], a                                       ; $6996: $e2
	dec a                                            ; $6997: $3d
	db $ec                                           ; $6998: $ec
	inc sp                                           ; $6999: $33
	ret                                              ; $699a: $c9


	ld [hl], a                                       ; $699b: $77
	ld c, b                                          ; $699c: $48
	ld h, c                                          ; $699d: $61
	ld h, e                                          ; $699e: $63
	cp $9d                                           ; $699f: $fe $9d
	cp a                                             ; $69a1: $bf
	ld b, b                                          ; $69a2: $40
	ld l, a                                          ; $69a3: $6f
	ld hl, sp+$7f                                    ; $69a4: $f8 $7f
	ld c, d                                          ; $69a6: $4a
	ld a, a                                          ; $69a7: $7f
	ld e, b                                          ; $69a8: $58
	sub a                                            ; $69a9: $97
	dec hl                                           ; $69aa: $2b
	call nc, Call_012_6897                           ; $69ab: $d4 $97 $68
	ld a, [hl+]                                      ; $69ae: $2a
	push de                                          ; $69af: $d5
	db $fd                                           ; $69b0: $fd
	ld [bc], a                                       ; $69b1: $02
	ld h, l                                          ; $69b2: $65
	jr nz, @-$63                                     ; $69b3: $20 $9b

	add hl, bc                                       ; $69b5: $09
	or $22                                           ; $69b6: $f6 $22
	db $dd                                           ; $69b8: $dd
	ld [hl], a                                       ; $69b9: $77
	ld a, $9c                                        ; $69ba: $3e $9c
	ld b, a                                          ; $69bc: $47
	cp b                                             ; $69bd: $b8
	rst $38                                          ; $69be: $ff
	ld a, b                                          ; $69bf: $78
	ld a, [hl-]                                      ; $69c0: $3a
	ld l, h                                          ; $69c1: $6c
	sbc d                                            ; $69c2: $9a
	ld a, [$a098]                                    ; $69c3: $fa $98 $a0
	ld c, [hl]                                       ; $69c6: $4e
	or b                                             ; $69c7: $b0
	ld h, b                                          ; $69c8: $60
	add b                                            ; $69c9: $80
	cp d                                             ; $69ca: $ba
	ld b, b                                          ; $69cb: $40
	ld [hl], l                                       ; $69cc: $75
	jr nc, @-$72                                     ; $69cd: $30 $8c

	inc a                                            ; $69cf: $3c
	ret nz                                           ; $69d0: $c0

	ld [hl], c                                       ; $69d1: $71
	ld c, $0c                                        ; $69d2: $0e $0c
	inc bc                                           ; $69d4: $03
	inc bc                                           ; $69d5: $03
	db $fc                                           ; $69d6: $fc
	ld e, a                                          ; $69d7: $5f
	and b                                            ; $69d8: $a0
	ld a, a                                          ; $69d9: $7f
	add b                                            ; $69da: $80
	xor [hl]                                         ; $69db: $ae
	ld d, b                                          ; $69dc: $50
	ld e, l                                          ; $69dd: $5d
	and b                                            ; $69de: $a0
	ld [$00f0], sp                                   ; $69df: $08 $f0 $00
	ld a, d                                          ; $69e2: $7a
	cp $7d                                           ; $69e3: $fe $7d
	or $9d                                           ; $69e5: $f6 $9d

jr_012_69e7:
	db $e4                                           ; $69e7: $e4
	dec de                                           ; $69e8: $1b
	ld [hl], a                                       ; $69e9: $77
	cp b                                             ; $69ea: $b8
	sbc [hl]                                         ; $69eb: $9e
	ccf                                              ; $69ec: $3f
	ld a, e                                          ; $69ed: $7b
	dec h                                            ; $69ee: $25
	sbc e                                            ; $69ef: $9b
	rlca                                             ; $69f0: $07
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	add sp, $6f                                      ; $69f3: $e8 $6f
	sub c                                            ; $69f5: $91
	sbc l                                            ; $69f6: $9d
	ld e, b                                          ; $69f7: $58
	and a                                            ; $69f8: $a7
	ld [hl], e                                       ; $69f9: $73
	ld b, [hl]                                       ; $69fa: $46
	sbc l                                            ; $69fb: $9d
	nop                                              ; $69fc: $00
	ld d, c                                          ; $69fd: $51
	ld h, b                                          ; $69fe: $60
	ldh [$7c], a                                     ; $69ff: $e0 $7c
	cp [hl]                                          ; $6a01: $be
	adc d                                            ; $6a02: $8a
	db $f4                                           ; $6a03: $f4
	dec bc                                           ; $6a04: $0b
	ld hl, sp+$07                                    ; $6a05: $f8 $07
	cp $01                                           ; $6a07: $fe $01
	dec bc                                           ; $6a09: $0b
	db $f4                                           ; $6a0a: $f4
	ld [hl], l                                       ; $6a0b: $75
	adc d                                            ; $6a0c: $8a
	ld a, [de]                                       ; $6a0d: $1a
	push hl                                          ; $6a0e: $e5
	ld b, l                                          ; $6a0f: $45
	cp d                                             ; $6a10: $ba
	and b                                            ; $6a11: $a0
	ld e, a                                          ; $6a12: $5f
	ld a, h                                          ; $6a13: $7c
	add e                                            ; $6a14: $83
	rst $38                                          ; $6a15: $ff
	nop                                              ; $6a16: $00
	db $fd                                           ; $6a17: $fd
	ld l, e                                          ; $6a18: $6b
	pop hl                                           ; $6a19: $e1
	sbc h                                            ; $6a1a: $9c
	cp [hl]                                          ; $6a1b: $be
	ld b, b                                          ; $6a1c: $40
	ld a, a                                          ; $6a1d: $7f
	ld a, b                                          ; $6a1e: $78
	ld a, [hl]                                       ; $6a1f: $7e
	ld a, a                                          ; $6a20: $7f
	ld hl, sp-$62                                    ; $6a21: $f8 $9e
	push de                                          ; $6a23: $d5
	ld a, b                                          ; $6a24: $78
	pop af                                           ; $6a25: $f1
	sbc [hl]                                         ; $6a26: $9e
	db $eb                                           ; $6a27: $eb
	ld [hl], a                                       ; $6a28: $77
	or d                                             ; $6a29: $b2
	sub a                                            ; $6a2a: $97
	ret nz                                           ; $6a2b: $c0

	dec bc                                           ; $6a2c: $0b
	db $f4                                           ; $6a2d: $f4
	ld c, $01                                        ; $6a2e: $0e $01
	ldh [rP1], a                                     ; $6a30: $e0 $00
	sbc $fe                                          ; $6a32: $de $fe
	sbc e                                            ; $6a34: $9b
	ld d, c                                          ; $6a35: $51
	xor [hl]                                         ; $6a36: $ae
	ld [bc], a                                       ; $6a37: $02
	db $fd                                           ; $6a38: $fd
	ld a, d                                          ; $6a39: $7a
	sub h                                            ; $6a3a: $94
	adc a                                            ; $6a3b: $8f
	rrca                                             ; $6a3c: $0f
	ldh a, [rP1]                                     ; $6a3d: $f0 $00
	xor e                                            ; $6a3f: $ab
	ld d, h                                          ; $6a40: $54
	rst $38                                          ; $6a41: $ff
	nop                                              ; $6a42: $00
	inc c                                            ; $6a43: $0c
	ldh a, [c]                                       ; $6a44: $f2
	inc bc                                           ; $6a45: $03
	db $fc                                           ; $6a46: $fc
	add hl, hl                                       ; $6a47: $29
	sub $10                                          ; $6a48: $d6 $10
	rst AddAOntoHL                                          ; $6a4a: $ef
	cp a                                             ; $6a4b: $bf
	ld a, e                                          ; $6a4c: $7b
	adc $67                                          ; $6a4d: $ce $67
	ld b, b                                          ; $6a4f: $40
	sub e                                            ; $6a50: $93
	ld c, b                                          ; $6a51: $48
	or a                                             ; $6a52: $b7
	ld bc, $0afe                                     ; $6a53: $01 $fe $0a
	push af                                          ; $6a56: $f5
	dec b                                            ; $6a57: $05
	ld a, [$d42b]                                    ; $6a58: $fa $2b $d4
	ld e, a                                          ; $6a5b: $5f
	and b                                            ; $6a5c: $a0
	ld [hl], l                                       ; $6a5d: $75
	add c                                            ; $6a5e: $81
	sub a                                            ; $6a5f: $97
	add sp, $17                                      ; $6a60: $e8 $17
	db $fc                                           ; $6a62: $fc
	inc bc                                           ; $6a63: $03
	ld d, [hl]                                       ; $6a64: $56
	ld bc, $ac00                                     ; $6a65: $01 $00 $ac
	ld [hl], a                                       ; $6a68: $77
	db $e4                                           ; $6a69: $e4
	adc a                                            ; $6a6a: $8f
	ld hl, $bbde                                     ; $6a6b: $21 $de $bb
	ld b, h                                          ; $6a6e: $44
	rst $38                                          ; $6a6f: $ff
	nop                                              ; $6a70: $00
	rst AddAOntoHL                                          ; $6a71: $ef
	db $10                                           ; $6a72: $10
	ld d, l                                          ; $6a73: $55
	xor b                                            ; $6a74: $a8
	add hl, bc                                       ; $6a75: $09
	or $04                                           ; $6a76: $f6 $04
	ei                                               ; $6a78: $fb
	nop                                              ; $6a79: $00
	rst $38                                          ; $6a7a: $ff
	jp $c700                                         ; $6a7b: $c3 $00 $c7


	ld [hl-], a                                      ; $6a7e: $32
	sbc b                                            ; $6a7f: $98
	ld h, d                                          ; $6a80: $62
	ld h, e                                          ; $6a81: $63
	rrca                                             ; $6a82: $0f
	ld c, $0d                                        ; $6a83: $0e $0d
	inc c                                            ; $6a85: $0c
	dec bc                                           ; $6a86: $0b
	sbc $32                                          ; $6a87: $de $32
	sbc h                                            ; $6a89: $9c
	dec b                                            ; $6a8a: $05
	inc b                                            ; $6a8b: $04
	inc bc                                           ; $6a8c: $03
	sbc $32                                          ; $6a8d: $de $32
	add b                                            ; $6a8f: $80
	ld [hl], d                                       ; $6a90: $72
	ld [hl], e                                       ; $6a91: $73
	ld [hl], h                                       ; $6a92: $74
	ld [hl], l                                       ; $6a93: $75
	halt                                             ; $6a94: $76
	ld [hl], a                                       ; $6a95: $77
	scf                                              ; $6a96: $37
	ld [hl], $35                                     ; $6a97: $36 $35
	inc [hl]                                         ; $6a99: $34
	inc sp                                           ; $6a9a: $33
	ld sp, $2f30                                     ; $6a9b: $31 $30 $2f
	ld l, $2d                                        ; $6a9e: $2e $2d
	jr c, jr_012_6ad4                                ; $6aa0: $38 $32

	ld a, l                                          ; $6aa2: $7d
	ld a, h                                          ; $6aa3: $7c
	ld a, e                                          ; $6aa4: $7b
	ld a, d                                          ; $6aa5: $7a
	ld a, c                                          ; $6aa6: $79
	ld a, b                                          ; $6aa7: $78
	ld [hl], c                                       ; $6aa8: $71
	ld [hl], b                                       ; $6aa9: $70
	add hl, sp                                       ; $6aaa: $39
	ld a, [hl-]                                      ; $6aab: $3a
	dec sp                                           ; $6aac: $3b
	inc a                                            ; $6aad: $3c
	ld b, h                                          ; $6aae: $44
	add b                                            ; $6aaf: $80
	nop                                              ; $6ab0: $00
	ld bc, $0802                                     ; $6ab1: $01 $02 $08
	add hl, bc                                       ; $6ab4: $09
	ld a, [bc]                                       ; $6ab5: $0a
	ld [hl-], a                                      ; $6ab6: $32
	ld l, a                                          ; $6ab7: $6f
	ld l, [hl]                                       ; $6ab8: $6e
	ld l, l                                          ; $6ab9: $6d
	ld l, h                                          ; $6aba: $6c
	ld l, e                                          ; $6abb: $6b
	ld l, d                                          ; $6abc: $6a
	ld l, c                                          ; $6abd: $69
	ld l, b                                          ; $6abe: $68
	db $10                                           ; $6abf: $10
	ld de, $1312                                     ; $6ac0: $11 $12 $13
	ld d, $17                                        ; $6ac3: $16 $17
	jr jr_012_6ae0                                   ; $6ac5: $18 $19

	ld a, [de]                                       ; $6ac7: $1a
	ld e, $1f                                        ; $6ac8: $1e $1f
	jr nz, jr_012_6b33                               ; $6aca: $20 $67

	ld h, [hl]                                       ; $6acc: $66
	ld h, l                                          ; $6acd: $65
	ld h, h                                          ; $6ace: $64
	add b                                            ; $6acf: $80
	ld h, c                                          ; $6ad0: $61
	ld h, b                                          ; $6ad1: $60
	ld e, a                                          ; $6ad2: $5f
	ld e, [hl]                                       ; $6ad3: $5e

jr_012_6ad4:
	ld hl, $2322                                     ; $6ad4: $21 $22 $23
	inc h                                            ; $6ad7: $24
	dec h                                            ; $6ad8: $25
	ld h, $3d                                        ; $6ad9: $26 $3d
	ld a, $3f                                        ; $6adb: $3e $3f
	ld b, c                                          ; $6add: $41
	ld b, d                                          ; $6ade: $42
	ld b, e                                          ; $6adf: $43

jr_012_6ae0:
	daa                                              ; $6ae0: $27
	jr z, jr_012_6b0c                                ; $6ae1: $28 $29

	ld e, l                                          ; $6ae3: $5d
	ld e, h                                          ; $6ae4: $5c
	ld e, e                                          ; $6ae5: $5b
	ld e, d                                          ; $6ae6: $5a
	ld b, b                                          ; $6ae7: $40
	jr z, jr_012_6b13                                ; $6ae8: $28 $29

	ld b, a                                          ; $6aea: $47
	ld b, [hl]                                       ; $6aeb: $46
	daa                                              ; $6aec: $27
	ld b, l                                          ; $6aed: $45
	add hl, hl                                       ; $6aee: $29
	ld [hl], e                                       ; $6aef: $73
	ld hl, sp-$21                                    ; $6af0: $f8 $df
	dec hl                                           ; $6af2: $2b
	sub [hl]                                         ; $6af3: $96
	ld e, c                                          ; $6af4: $59
	ld e, b                                          ; $6af5: $58
	ld d, a                                          ; $6af6: $57
	ld d, [hl]                                       ; $6af7: $56
	ld d, l                                          ; $6af8: $55
	ld d, h                                          ; $6af9: $54
	inc l                                            ; $6afa: $2c
	dec hl                                           ; $6afb: $2b
	ld a, [hl+]                                      ; $6afc: $2a
	ld [hl], e                                       ; $6afd: $73
	cp $77                                           ; $6afe: $fe $77
	ld hl, sp-$21                                    ; $6b00: $f8 $df
	inc e                                            ; $6b02: $1c
	sub c                                            ; $6b03: $91
	ld d, e                                          ; $6b04: $53
	ld d, d                                          ; $6b05: $52
	ld d, c                                          ; $6b06: $51
	ld d, b                                          ; $6b07: $50
	ld c, a                                          ; $6b08: $4f
	ld c, [hl]                                       ; $6b09: $4e
	dec e                                            ; $6b0a: $1d
	inc e                                            ; $6b0b: $1c

jr_012_6b0c:
	dec de                                           ; $6b0c: $1b
	inc e                                            ; $6b0d: $1c
	ld a, [hl+]                                      ; $6b0e: $2a
	dec hl                                           ; $6b0f: $2b
	dec de                                           ; $6b10: $1b
	inc e                                            ; $6b11: $1c
	ld [hl], a                                       ; $6b12: $77

jr_012_6b13:
	ld hl, sp-$70                                    ; $6b13: $f8 $90
	inc l                                            ; $6b15: $2c
	ld a, [hl+]                                      ; $6b16: $2a
	ld c, l                                          ; $6b17: $4d
	ld c, h                                          ; $6b18: $4c
	ld c, e                                          ; $6b19: $4b
	ld c, d                                          ; $6b1a: $4a
	ld c, c                                          ; $6b1b: $49
	ld c, b                                          ; $6b1c: $48
	dec d                                            ; $6b1d: $15
	inc l                                            ; $6b1e: $2c
	dec d                                            ; $6b1f: $15
	inc l                                            ; $6b20: $2c
	dec de                                           ; $6b21: $1b
	inc e                                            ; $6b22: $1c
	dec hl                                           ; $6b23: $2b
	ld a, e                                          ; $6b24: $7b
	ld a, [$fe7f]                                    ; $6b25: $fa $7f $fe
	sbc [hl]                                         ; $6b28: $9e
	dec e                                            ; $6b29: $1d
	ld a, e                                          ; $6b2a: $7b
	jp hl                                            ; $6b2b: $e9


	ld a, a                                          ; $6b2c: $7f
	ld sp, hl                                        ; $6b2d: $f9
	ld a, a                                          ; $6b2e: $7f
	pop hl                                           ; $6b2f: $e1
	sbc [hl]                                         ; $6b30: $9e
	inc d                                            ; $6b31: $14
	ld a, e                                          ; $6b32: $7b

jr_012_6b33:
	cp $67                                           ; $6b33: $fe $67
	ld hl, sp-$66                                    ; $6b35: $f8 $9a
	ld b, $2b                                        ; $6b37: $06 $2b
	inc l                                            ; $6b39: $2c
	ld b, $07                                        ; $6b3a: $06 $07
	ld c, e                                          ; $6b3c: $4b
	cp $22                                           ; $6b3d: $fe $22
	nop                                              ; $6b3f: $00
	pop bc                                           ; $6b40: $c1
	ld [hl+], a                                      ; $6b41: $22
	rst SubAFromHL                                          ; $6b42: $d7
	ld [hl+], a                                      ; $6b43: $22
	sbc d                                            ; $6b44: $9a
	ld b, h                                          ; $6b45: $44
	ld b, d                                          ; $6b46: $42
	ld [hl+], a                                      ; $6b47: $22
	daa                                              ; $6b48: $27
	ld [hl], d                                       ; $6b49: $72
	sbc $22                                          ; $6b4a: $de $22
	sbc e                                            ; $6b4c: $9b
	ld [hl], a                                       ; $6b4d: $77
	halt                                             ; $6b4e: $76
	ld b, h                                          ; $6b4f: $44
	ld b, a                                          ; $6b50: $47
	db $db                                           ; $6b51: $db
	ld [hl], a                                       ; $6b52: $77
	sbc e                                            ; $6b53: $9b
	ld [hl+], a                                      ; $6b54: $22
	inc h                                            ; $6b55: $24
	ld b, h                                          ; $6b56: $44
	ld d, d                                          ; $6b57: $52
	ld h, a                                          ; $6b58: $67
	db $e3                                           ; $6b59: $e3
	rst SubAFromDE                                          ; $6b5a: $df
	ld b, h                                          ; $6b5b: $44
	dec de                                           ; $6b5c: $1b
	or $ce                                           ; $6b5d: $f6 $ce
	ld [hl+], a                                      ; $6b5f: $22
	add c                                            ; $6b60: $81
	ld bc, $ff92                                     ; $6b61: $01 $92 $ff
	db $fc                                           ; $6b64: $fc
	rst $38                                          ; $6b65: $ff
	ret nz                                           ; $6b66: $c0

	rst $38                                          ; $6b67: $ff
	rst $38                                          ; $6b68: $ff
	ld a, a                                          ; $6b69: $7f
	or e                                             ; $6b6a: $b3
	ld a, a                                          ; $6b6b: $7f
	add b                                            ; $6b6c: $80
	ccf                                              ; $6b6d: $3f
	ret nz                                           ; $6b6e: $c0

	ccf                                              ; $6b6f: $3f
	ld a, e                                          ; $6b70: $7b
	or $d3                                           ; $6b71: $f6 $d3
	rst $38                                          ; $6b73: $ff
	ld b, a                                          ; $6b74: $47
	rst AddAOntoHL                                          ; $6b75: $ef
	sbc [hl]                                         ; $6b76: $9e
	nop                                              ; $6b77: $00
	jp nc, $8cff                                     ; $6b78: $d2 $ff $8c

	rlca                                             ; $6b7b: $07
	rst $38                                          ; $6b7c: $ff
	or b                                             ; $6b7d: $b0
	add b                                            ; $6b7e: $80
	rst SubAFromDE                                          ; $6b7f: $df
	add c                                            ; $6b80: $81
	add e                                            ; $6b81: $83
	add e                                            ; $6b82: $83
	rst $38                                          ; $6b83: $ff
	rst $38                                          ; $6b84: $ff
	adc a                                            ; $6b85: $8f
	adc a                                            ; $6b86: $8f
	sbc a                                            ; $6b87: $9f
	sbc a                                            ; $6b88: $9f
	di                                               ; $6b89: $f3
	sub e                                            ; $6b8a: $93
	rst $38                                          ; $6b8b: $ff
	rst $38                                          ; $6b8c: $ff
	and b                                            ; $6b8d: $a0
	ld a, e                                          ; $6b8e: $7b
	call z, $fc7f                                    ; $6b8f: $cc $7f $fc
	sbc [hl]                                         ; $6b92: $9e
	ld b, b                                          ; $6b93: $40
	ld a, e                                          ; $6b94: $7b
	sub $6f                                          ; $6b95: $d6 $6f
	cp $94                                           ; $6b97: $fe $94
	jr @+$01                                         ; $6b99: $18 $ff

	xor b                                            ; $6b9b: $a8
	rst $38                                          ; $6b9c: $ff
	db $10                                           ; $6b9d: $10
	rst $38                                          ; $6b9e: $ff
	ld d, b                                          ; $6b9f: $50
	rst $38                                          ; $6ba0: $ff
	jr nc, @+$01                                     ; $6ba1: $30 $ff

	jr nz, jr_012_6c20                               ; $6ba3: $20 $7b

	cp $7f                                           ; $6ba5: $fe $7f
	add sp, $4b                                      ; $6ba7: $e8 $4b
	and b                                            ; $6ba9: $a0
	adc a                                            ; $6baa: $8f
	ld a, a                                          ; $6bab: $7f
	rrca                                             ; $6bac: $0f
	rst $38                                          ; $6bad: $ff
	ld bc, $0fff                                     ; $6bae: $01 $ff $0f
	rst $38                                          ; $6bb1: $ff
	add hl, de                                       ; $6bb2: $19
	rst $38                                          ; $6bb3: $ff
	rra                                              ; $6bb4: $1f
	rst $38                                          ; $6bb5: $ff
	ld b, $ff                                        ; $6bb6: $06 $ff
	jr c, @+$01                                      ; $6bb8: $38 $ff

	inc c                                            ; $6bba: $0c
	ld a, e                                          ; $6bbb: $7b
	jp nz, $8c9a                                     ; $6bbc: $c2 $9a $8c

	rst $38                                          ; $6bbf: $ff
	and $ff                                          ; $6bc0: $e6 $ff
	ld a, [hl-]                                      ; $6bc2: $3a
	ld a, e                                          ; $6bc3: $7b
	ret z                                            ; $6bc4: $c8

	sbc [hl]                                         ; $6bc5: $9e
	ld [hl], b                                       ; $6bc6: $70
	ld a, e                                          ; $6bc7: $7b
	ret nc                                           ; $6bc8: $d0

	sbc l                                            ; $6bc9: $9d
	ld h, b                                          ; $6bca: $60
	rst $38                                          ; $6bcb: $ff
	db $fd                                           ; $6bcc: $fd
	ld h, e                                          ; $6bcd: $63
	add [hl]                                         ; $6bce: $86
	ld a, e                                          ; $6bcf: $7b
	ei                                               ; $6bd0: $fb
	sbc h                                            ; $6bd1: $9c
	ret nz                                           ; $6bd2: $c0

	ld b, b                                          ; $6bd3: $40
	ret nz                                           ; $6bd4: $c0

	ld [hl], e                                       ; $6bd5: $73
	cp e                                             ; $6bd6: $bb
	ld [hl], a                                       ; $6bd7: $77
	ldh a, [$73]                                     ; $6bd8: $f0 $73
	db $fc                                           ; $6bda: $fc
	ld l, e                                          ; $6bdb: $6b
	ldh [$9e], a                                     ; $6bdc: $e0 $9e
	add b                                            ; $6bde: $80
	ld d, a                                          ; $6bdf: $57
	ld h, d                                          ; $6be0: $62
	ld a, a                                          ; $6be1: $7f
	xor l                                            ; $6be2: $ad
	sbc $ff                                          ; $6be3: $de $ff
	sbc [hl]                                         ; $6be5: $9e
	ld d, l                                          ; $6be6: $55
	ld a, e                                          ; $6be7: $7b
	ld sp, hl                                        ; $6be8: $f9
	ld [hl], e                                       ; $6be9: $73
	rst FarCall                                          ; $6bea: $f7
	ld l, e                                          ; $6beb: $6b
	rst SubAFromBC                                          ; $6bec: $e7
	ld a, a                                          ; $6bed: $7f
	ldh a, [rPCM34]                                  ; $6bee: $f0 $77
	ld [hl], b                                       ; $6bf0: $70
	ld c, a                                          ; $6bf1: $4f
	ldh a, [$57]                                     ; $6bf2: $f0 $57
	ldh [$9a], a                                     ; $6bf4: $e0 $9a
	ld d, a                                          ; $6bf6: $57
	rst $38                                          ; $6bf7: $ff
	xor [hl]                                         ; $6bf8: $ae
	rst $38                                          ; $6bf9: $ff
	ld c, [hl]                                       ; $6bfa: $4e
	ld e, e                                          ; $6bfb: $5b
	ldh a, [$9a]                                     ; $6bfc: $f0 $9a
	rst FarCall                                          ; $6bfe: $f7
	rst $38                                          ; $6bff: $ff
	ld [$d5ff], a                                    ; $6c00: $ea $ff $d5
	ld [hl], e                                       ; $6c03: $73
	cp h                                             ; $6c04: $bc
	ld [hl], a                                       ; $6c05: $77
	cp $9b                                           ; $6c06: $fe $9b
	inc bc                                           ; $6c08: $03
	rst $38                                          ; $6c09: $ff
	inc bc                                           ; $6c0a: $03
	cp $77                                           ; $6c0b: $fe $77
	cp $dd                                           ; $6c0d: $fe $dd
	rst $38                                          ; $6c0f: $ff
	sbc [hl]                                         ; $6c10: $9e
	db $fd                                           ; $6c11: $fd
	ld a, e                                          ; $6c12: $7b
	cp $dd                                           ; $6c13: $fe $dd
	rst $38                                          ; $6c15: $ff
	sbc [hl]                                         ; $6c16: $9e
	ld hl, sp+$7b                                    ; $6c17: $f8 $7b
	cp $9e                                           ; $6c19: $fe $9e
	db $f4                                           ; $6c1b: $f4
	sbc $fe                                          ; $6c1c: $de $fe
	sbc b                                            ; $6c1e: $98
	xor h                                            ; $6c1f: $ac

jr_012_6c20:
	cp a                                             ; $6c20: $bf
	xor b                                            ; $6c21: $a8
	add sp, -$04                                     ; $6c22: $e8 $fc
	db $fc                                           ; $6c24: $fc
	ld hl, sp+$7b                                    ; $6c25: $f8 $7b
	db $eb                                           ; $6c27: $eb
	sub e                                            ; $6c28: $93
	ldh a, [$fd]                                     ; $6c29: $f0 $fd
	ld c, $fd                                        ; $6c2b: $0e $fd
	db $fc                                           ; $6c2d: $fc
	rst $38                                          ; $6c2e: $ff
	ld a, [hl+]                                      ; $6c2f: $2a
	db $fd                                           ; $6c30: $fd
	ld l, $ff                                        ; $6c31: $2e $ff
	ld a, e                                          ; $6c33: $7b
	db $fd                                           ; $6c34: $fd
	ld [hl], a                                       ; $6c35: $77
	ld l, [hl]                                       ; $6c36: $6e
	ld a, a                                          ; $6c37: $7f
	db $fc                                           ; $6c38: $fc
	adc [hl]                                         ; $6c39: $8e
	rra                                              ; $6c3a: $1f
	cp $1f                                           ; $6c3b: $fe $1f
	ld a, [$fa1f]                                    ; $6c3d: $fa $1f $fa
	ccf                                              ; $6c40: $3f
	ld a, [$fe3f]                                    ; $6c41: $fa $3f $fe
	rst $38                                          ; $6c44: $ff
	ld a, [$fbff]                                    ; $6c45: $fa $ff $fb
	rst $38                                          ; $6c48: $ff
	rst $38                                          ; $6c49: $ff
	jr z, @+$7d                                      ; $6c4a: $28 $7b

	cp $9e                                           ; $6c4c: $fe $9e
	sub b                                            ; $6c4e: $90
	ld h, a                                          ; $6c4f: $67
	halt                                             ; $6c50: $76
	ld a, e                                          ; $6c51: $7b
	ei                                               ; $6c52: $fb
	sbc [hl]                                         ; $6c53: $9e
	and c                                            ; $6c54: $a1
	ld a, e                                          ; $6c55: $7b
	and [hl]                                         ; $6c56: $a6
	sbc [hl]                                         ; $6c57: $9e
	ld a, a                                          ; $6c58: $7f
	ld a, e                                          ; $6c59: $7b
	ld [$107f], sp                                   ; $6c5a: $08 $7f $10
	ld l, a                                          ; $6c5d: $6f
	ldh a, [$98]                                     ; $6c5e: $f0 $98
	inc b                                            ; $6c60: $04
	rst $38                                          ; $6c61: $ff
	adc a                                            ; $6c62: $8f
	rst AddAOntoHL                                          ; $6c63: $ef
	add b                                            ; $6c64: $80
	ret nz                                           ; $6c65: $c0

	ld a, l                                          ; $6c66: $7d
	ld [hl], a                                       ; $6c67: $77
	db $f4                                           ; $6c68: $f4
	ld [hl], e                                       ; $6c69: $73
	db $db                                           ; $6c6a: $db
	ld [hl], a                                       ; $6c6b: $77
	add [hl]                                         ; $6c6c: $86
	sbc [hl]                                         ; $6c6d: $9e
	ld [bc], a                                       ; $6c6e: $02
	ld a, d                                          ; $6c6f: $7a
	db $e4                                           ; $6c70: $e4
	ld a, a                                          ; $6c71: $7f
	cp $6f                                           ; $6c72: $fe $6f
	ldh [$66], a                                     ; $6c74: $e0 $66
	xor b                                            ; $6c76: $a8
	ld h, a                                          ; $6c77: $67
	ret nz                                           ; $6c78: $c0

	pop af                                           ; $6c79: $f1
	db $dd                                           ; $6c7a: $dd
	rst $38                                          ; $6c7b: $ff
	add b                                            ; $6c7c: $80
	ld c, e                                          ; $6c7d: $4b
	inc [hl]                                         ; $6c7e: $34
	add b                                            ; $6c7f: $80
	inc b                                            ; $6c80: $04
	ld hl, sp+$04                                    ; $6c81: $f8 $04
	or e                                             ; $6c83: $b3
	inc b                                            ; $6c84: $04
	ld c, $00                                        ; $6c85: $0e $00
	inc b                                            ; $6c87: $04
	add d                                            ; $6c88: $82
	ld c, e                                          ; $6c89: $4b
	rst $38                                          ; $6c8a: $ff
	inc bc                                           ; $6c8b: $03
	db $fd                                           ; $6c8c: $fd
	inc bc                                           ; $6c8d: $03
	rst $38                                          ; $6c8e: $ff
	ld [hl], a                                       ; $6c8f: $77

jr_012_6c90:
	cp $8f                                           ; $6c90: $fe $8f
	db $fc                                           ; $6c92: $fc
	rra                                              ; $6c93: $1f
	ld hl, sp+$3b                                    ; $6c94: $f8 $3b
	ld hl, sp-$01                                    ; $6c96: $f8 $ff
	db $fc                                           ; $6c98: $fc
	ld hl, sp-$01                                    ; $6c99: $f8 $ff
	cp $9b                                           ; $6c9b: $fe $9b
	rst $38                                          ; $6c9d: $ff
	set 7, a                                         ; $6c9e: $cb $ff
	ret                                              ; $6ca0: $c9


	ld a, d                                          ; $6ca1: $7a
	sbc b                                            ; $6ca2: $98
	ld a, a                                          ; $6ca3: $7f
	ld a, [$ef9d]                                    ; $6ca4: $fa $9d $ef
	ld sp, hl                                        ; $6ca7: $f9
	ld a, d                                          ; $6ca8: $7a
	ld a, $9e                                        ; $6ca9: $3e $9e
	cp $73                                           ; $6cab: $fe $73
	cp $7b                                           ; $6cad: $fe $7b
	ld hl, sp-$66                                    ; $6caf: $f8 $9a
	rrca                                             ; $6cb1: $0f
	cp $0f                                           ; $6cb2: $fe $0f
	rst $38                                          ; $6cb4: $ff
	rrca                                             ; $6cb5: $0f
	ld [hl], e                                       ; $6cb6: $73
	jr nz, jr_012_6c90                               ; $6cb7: $20 $d7

	rst $38                                          ; $6cb9: $ff
	ld a, a                                          ; $6cba: $7f
	jp nc, $f09e                                     ; $6cbb: $d2 $9e $f0

	ld a, e                                          ; $6cbe: $7b
	sub $7f                                          ; $6cbf: $d6 $7f
	ld a, [hl-]                                      ; $6cc1: $3a
	ld a, a                                          ; $6cc2: $7f
	cp $7f                                           ; $6cc3: $fe $7f
	ld a, [$747e]                                    ; $6cc5: $fa $7e $74
	ld a, a                                          ; $6cc8: $7f
	db $fc                                           ; $6cc9: $fc
	ld a, a                                          ; $6cca: $7f
	and c                                            ; $6ccb: $a1
	sbc d                                            ; $6ccc: $9a
	ccf                                              ; $6ccd: $3f
	rst $38                                          ; $6cce: $ff
	ld e, b                                          ; $6ccf: $58
	rst $38                                          ; $6cd0: $ff
	ld [hl], c                                       ; $6cd1: $71
	ld a, d                                          ; $6cd2: $7a
	ld h, [hl]                                       ; $6cd3: $66
	ld a, a                                          ; $6cd4: $7f
	ld hl, sp-$66                                    ; $6cd5: $f8 $9a
	di                                               ; $6cd7: $f3
	rst $38                                          ; $6cd8: $ff
	ld [hl], $ff                                     ; $6cd9: $36 $ff
	inc h                                            ; $6cdb: $24
	ld e, e                                          ; $6cdc: $5b
	ld [hl], b                                       ; $6cdd: $70
	ld l, e                                          ; $6cde: $6b
	cp $f2                                           ; $6cdf: $fe $f2
	inc [hl]                                         ; $6ce1: $34
	nop                                              ; $6ce2: $00
	add b                                            ; $6ce3: $80
	ld bc, $0302                                     ; $6ce4: $01 $02 $03
	ld hl, $0202                                     ; $6ce7: $21 $02 $02
	rlca                                             ; $6cea: $07
	ld [bc], a                                       ; $6ceb: $02
	ld de, $0f10                                     ; $6cec: $11 $10 $0f
	ld c, $0d                                        ; $6cef: $0e $0d
	inc c                                            ; $6cf1: $0c
	dec bc                                           ; $6cf2: $0b
	ld a, [bc]                                       ; $6cf3: $0a
	dec b                                            ; $6cf4: $05
	ld b, $08                                        ; $6cf5: $06 $08
	add hl, bc                                       ; $6cf7: $09
	ld [de], a                                       ; $6cf8: $12
	inc de                                           ; $6cf9: $13
	inc d                                            ; $6cfa: $14
	dec d                                            ; $6cfb: $15
	inc h                                            ; $6cfc: $24
	inc h                                            ; $6cfd: $24
	inc hl                                           ; $6cfe: $23
	ld [hl+], a                                      ; $6cff: $22
	jr nz, jr_012_6d21                               ; $6d00: $20 $1f

	ld e, $94                                        ; $6d02: $1e $94
	dec e                                            ; $6d04: $1d
	dec de                                           ; $6d05: $1b
	ld a, [de]                                       ; $6d06: $1a
	jr jr_012_6d20                                   ; $6d07: $18 $17

	ld d, $04                                        ; $6d09: $16 $04
	nop                                              ; $6d0b: $00
	add hl, de                                       ; $6d0c: $19
	inc e                                            ; $6d0d: $1c
	inc e                                            ; $6d0e: $1c
	db $db                                           ; $6d0f: $db
	dec h                                            ; $6d10: $25
	pop bc                                           ; $6d11: $c1
	inc e                                            ; $6d12: $1c
	pop de                                           ; $6d13: $d1
	inc e                                            ; $6d14: $1c
	ld d, $00                                        ; $6d15: $16 $00
	db $dd                                           ; $6d17: $dd
	ld [hl], a                                       ; $6d18: $77
	rst SubAFromDE                                          ; $6d19: $df
	inc sp                                           ; $6d1a: $33
	sbc [hl]                                         ; $6d1b: $9e
	scf                                              ; $6d1c: $37
	ld [hl], a                                       ; $6d1d: $77
	db $fc                                           ; $6d1e: $fc
	sbc [hl]                                         ; $6d1f: $9e

jr_012_6d20:
	daa                                              ; $6d20: $27

jr_012_6d21:
	ld l, a                                          ; $6d21: $6f
	ld hl, sp-$64                                    ; $6d22: $f8 $9c
	inc sp                                           ; $6d24: $33
	ld [hl], a                                       ; $6d25: $77
	ld b, h                                          ; $6d26: $44
	sbc $55                                          ; $6d27: $de $55
	ret                                              ; $6d29: $c9


	ld b, h                                          ; $6d2a: $44
	ld c, h                                          ; $6d2b: $4c
	dec b                                            ; $6d2c: $05
	sub a                                            ; $6d2d: $97
	ret nz                                           ; $6d2e: $c0

	rst $38                                          ; $6d2f: $ff
	ld h, e                                          ; $6d30: $63
	ld a, a                                          ; $6d31: $7f
	add b                                            ; $6d32: $80
	rst $38                                          ; $6d33: $ff
	pop hl                                           ; $6d34: $e1
	rst $38                                          ; $6d35: $ff
	ld [hl], a                                       ; $6d36: $77
	db $fc                                           ; $6d37: $fc
	ld a, a                                          ; $6d38: $7f
	db $f4                                           ; $6d39: $f4
	sbc l                                            ; $6d3a: $9d
	ld [hl], c                                       ; $6d3b: $71
	ld a, a                                          ; $6d3c: $7f
	db $d3                                           ; $6d3d: $d3
	rst $38                                          ; $6d3e: $ff
	sub d                                            ; $6d3f: $92
	nop                                              ; $6d40: $00
	rst $38                                          ; $6d41: $ff
	ccf                                              ; $6d42: $3f
	cp a                                             ; $6d43: $bf
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	ld e, $df                                        ; $6d46: $1e $df
	rst $38                                          ; $6d48: $ff
	rst $38                                          ; $6d49: $ff
	rra                                              ; $6d4a: $1f
	rst SubAFromDE                                          ; $6d4b: $df
	cp $77                                           ; $6d4c: $fe $77
	ld hl, sp+$7f                                    ; $6d4e: $f8 $7f
	ei                                               ; $6d50: $fb
	call nc, Call_012_7fff                           ; $6d51: $d4 $ff $7f
	adc $86                                          ; $6d54: $ce $86
	rst SubAFromBC                                          ; $6d56: $e7
	rst $38                                          ; $6d57: $ff
	rst JumpTable                                          ; $6d58: $c7
	rst $38                                          ; $6d59: $ff
	set 7, a                                         ; $6d5a: $cb $ff
	add c                                            ; $6d5c: $81
	rst $38                                          ; $6d5d: $ff
	push bc                                          ; $6d5e: $c5
	ei                                               ; $6d5f: $fb
	ld [hl], d                                       ; $6d60: $72
	rst GetHLinHL                                          ; $6d61: $cf
	db $fc                                           ; $6d62: $fc
	add a                                            ; $6d63: $87
	sbc b                                            ; $6d64: $98
	rst SubAFromBC                                          ; $6d65: $e7
	or c                                             ; $6d66: $b1
	rst $38                                          ; $6d67: $ff
	ld b, c                                          ; $6d68: $41
	cp a                                             ; $6d69: $bf
	dec sp                                           ; $6d6a: $3b
	rst $38                                          ; $6d6b: $ff
	push hl                                          ; $6d6c: $e5
	rst $38                                          ; $6d6d: $ff
	ld e, a                                          ; $6d6e: $5f
	sbc $ff                                          ; $6d6f: $de $ff
	ld a, a                                          ; $6d71: $7f
	pop de                                           ; $6d72: $d1
	sub [hl]                                         ; $6d73: $96
	scf                                              ; $6d74: $37
	rst GetHLinHL                                          ; $6d75: $cf
	ld a, a                                          ; $6d76: $7f
	rst $38                                          ; $6d77: $ff
	ld a, [hl]                                       ; $6d78: $7e
	rst $38                                          ; $6d79: $ff
	ld a, h                                          ; $6d7a: $7c
	rst $38                                          ; $6d7b: $ff
	db $fc                                           ; $6d7c: $fc
	ld a, e                                          ; $6d7d: $7b
	cp $df                                           ; $6d7e: $fe $df
	rst $38                                          ; $6d80: $ff
	sbc c                                            ; $6d81: $99
	ld e, b                                          ; $6d82: $58
	rst $38                                          ; $6d83: $ff
	ld a, c                                          ; $6d84: $79
	rst $38                                          ; $6d85: $ff
	rst $38                                          ; $6d86: $ff
	rst AddAOntoHL                                          ; $6d87: $ef
	ld [hl], a                                       ; $6d88: $77
	cp $7b                                           ; $6d89: $fe $7b
	adc l                                            ; $6d8b: $8d
	ld a, e                                          ; $6d8c: $7b
	ld a, [$fc9d]                                    ; $6d8d: $fa $9d $fc
	inc bc                                           ; $6d90: $03
	ld [hl], a                                       ; $6d91: $77
	sbc [hl]                                         ; $6d92: $9e
	ld [hl], a                                       ; $6d93: $77
	db $fc                                           ; $6d94: $fc
	ld l, a                                          ; $6d95: $6f
	cp $df                                           ; $6d96: $fe $df
	rst $38                                          ; $6d98: $ff
	rst SubAFromDE                                          ; $6d99: $df
	ld d, a                                          ; $6d9a: $57
	db $d3                                           ; $6d9b: $d3
	rst $38                                          ; $6d9c: $ff
	ld a, a                                          ; $6d9d: $7f
	jp nz, $c677                                     ; $6d9e: $c2 $77 $c6

	sub e                                            ; $6da1: $93
	ld [hl], c                                       ; $6da2: $71
	rst $38                                          ; $6da3: $ff
	push hl                                          ; $6da4: $e5
	ei                                               ; $6da5: $fb
	db $eb                                           ; $6da6: $eb
	push af                                          ; $6da7: $f5
	ld [hl], a                                       ; $6da8: $77
	ld l, c                                          ; $6da9: $69
	ld a, a                                          ; $6daa: $7f
	ld h, c                                          ; $6dab: $61
	ld a, a                                          ; $6dac: $7f
	ld h, c                                          ; $6dad: $61
	ldh a, [rHDMA3]                                  ; $6dae: $f0 $53
	ret nz                                           ; $6db0: $c0

	ld [hl], e                                       ; $6db1: $73
	pop af                                           ; $6db2: $f1
	ld d, a                                          ; $6db3: $57
	ld h, b                                          ; $6db4: $60
	adc [hl]                                         ; $6db5: $8e
	ld a, a                                          ; $6db6: $7f
	rst SubAFromBC                                          ; $6db7: $e7
	rst $38                                          ; $6db8: $ff
	and h                                            ; $6db9: $a4
	db $fd                                           ; $6dba: $fd
	sbc b                                            ; $6dbb: $98
	ldh a, [hDisp0_LCDC]                                     ; $6dbc: $f0 $82
	rst $38                                          ; $6dbe: $ff
	xor l                                            ; $6dbf: $ad
	rst $38                                          ; $6dc0: $ff
	ld hl, sp-$0f                                    ; $6dc1: $f8 $f1
	ld l, a                                          ; $6dc3: $6f
	cp a                                             ; $6dc4: $bf
	inc l                                            ; $6dc5: $2c
	db $fc                                           ; $6dc6: $fc
	ld a, e                                          ; $6dc7: $7b
	xor l                                            ; $6dc8: $ad
	ld [hl], a                                       ; $6dc9: $77
	inc e                                            ; $6dca: $1c
	ld a, e                                          ; $6dcb: $7b
	ret c                                            ; $6dcc: $d8

	ld [hl], a                                       ; $6dcd: $77
	push de                                          ; $6dce: $d5
	ld [hl], a                                       ; $6dcf: $77
	ld l, d                                          ; $6dd0: $6a
	push de                                          ; $6dd1: $d5

Call_012_6dd2:
	rst $38                                          ; $6dd2: $ff
	sub b                                            ; $6dd3: $90
	rlca                                             ; $6dd4: $07
	rst $38                                          ; $6dd5: $ff
	call nc, $acaf                                   ; $6dd6: $d4 $af $ac
	sub $dc                                          ; $6dd9: $d6 $dc
	and [hl]                                         ; $6ddb: $a6
	db $f4                                           ; $6ddc: $f4
	add h                                            ; $6ddd: $84
	rst SubAFromBC                                          ; $6dde: $e7
	sub a                                            ; $6ddf: $97
	db $f4                                           ; $6de0: $f4
	or h                                             ; $6de1: $b4
	db $e4                                           ; $6de2: $e4
	ld a, e                                          ; $6de3: $7b
	cp $df                                           ; $6de4: $fe $df
	rst $38                                          ; $6de6: $ff
	adc a                                            ; $6de7: $8f
	xor $ff                                          ; $6de8: $ee $ff
	xor a                                            ; $6dea: $af
	rst AddAOntoHL                                          ; $6deb: $ef
	rst GetHLinHL                                          ; $6dec: $cf
	rst AddAOntoHL                                          ; $6ded: $ef
	db $fd                                           ; $6dee: $fd
	rst $38                                          ; $6def: $ff
	ei                                               ; $6df0: $fb
	rst $38                                          ; $6df1: $ff
	sbc e                                            ; $6df2: $9b
	sbc a                                            ; $6df3: $9f
	sbc [hl]                                         ; $6df4: $9e
	sbc [hl]                                         ; $6df5: $9e
	rst $38                                          ; $6df6: $ff
	ld d, l                                          ; $6df7: $55
	ld a, e                                          ; $6df8: $7b
	cp $63                                           ; $6df9: $fe $63
	ret nz                                           ; $6dfb: $c0

	ld a, e                                          ; $6dfc: $7b
	or l                                             ; $6dfd: $b5
	ld h, e                                          ; $6dfe: $63
	ldh a, [$97]                                     ; $6dff: $f0 $97
	ld a, [de]                                       ; $6e01: $1a
	pop af                                           ; $6e02: $f1
	rst $38                                          ; $6e03: $ff
	rst $38                                          ; $6e04: $ff
	ldh [$e0], a                                     ; $6e05: $e0 $e0
	rst $38                                          ; $6e07: $ff
	db $fd                                           ; $6e08: $fd
	ld a, e                                          ; $6e09: $7b
	cp $9d                                           ; $6e0a: $fe $9d
	rst $38                                          ; $6e0c: $ff
	add e                                            ; $6e0d: $83
	ld a, e                                          ; $6e0e: $7b
	and a                                            ; $6e0f: $a7
	ld a, a                                          ; $6e10: $7f
	dec e                                            ; $6e11: $1d
	sbc e                                            ; $6e12: $9b
	add a                                            ; $6e13: $87
	rst $38                                          ; $6e14: $ff
	xor a                                            ; $6e15: $af
	rst SubAFromHL                                          ; $6e16: $d7
	db $dd                                           ; $6e17: $dd
	rlca                                             ; $6e18: $07
	ld l, [hl]                                       ; $6e19: $6e
	or [hl]                                          ; $6e1a: $b6
	rst SubAFromDE                                          ; $6e1b: $df
	rst $38                                          ; $6e1c: $ff
	sbc [hl]                                         ; $6e1d: $9e
	ld bc, $5e73                                     ; $6e1e: $01 $73 $5e
	ld l, a                                          ; $6e21: $6f
	ld e, h                                          ; $6e22: $5c
	ld l, a                                          ; $6e23: $6f
	ld c, b                                          ; $6e24: $48
	db $dd                                           ; $6e25: $dd
	rst $38                                          ; $6e26: $ff
	ld a, [hl]                                       ; $6e27: $7e
	rst FarCall                                          ; $6e28: $f7
	sub e                                            ; $6e29: $93
	or h                                             ; $6e2a: $b4
	ld a, a                                          ; $6e2b: $7f
	dec de                                           ; $6e2c: $1b
	scf                                              ; $6e2d: $37
	ld l, a                                          ; $6e2e: $6f
	ld a, a                                          ; $6e2f: $7f
	cp $ff                                           ; $6e30: $fe $ff
	ei                                               ; $6e32: $fb
	and $63                                          ; $6e33: $e6 $63
	daa                                              ; $6e35: $27
	ld h, a                                          ; $6e36: $67
	ldh [$9e], a                                     ; $6e37: $e0 $9e
	add b                                            ; $6e39: $80
	ld l, e                                          ; $6e3a: $6b
	ld e, d                                          ; $6e3b: $5a
	sbc [hl]                                         ; $6e3c: $9e
	ld b, b                                          ; $6e3d: $40
	ld a, e                                          ; $6e3e: $7b
	cp $77                                           ; $6e3f: $fe $77
	or h                                             ; $6e41: $b4
	ld a, e                                          ; $6e42: $7b
	db $fc                                           ; $6e43: $fc
	ld a, e                                          ; $6e44: $7b
	ei                                               ; $6e45: $fb
	rst SubAFromDE                                          ; $6e46: $df
	add b                                            ; $6e47: $80
	ld a, a                                          ; $6e48: $7f
	jp nc, $c676                                     ; $6e49: $d2 $76 $c6

	add [hl]                                         ; $6e4c: $86
	cp $81                                           ; $6e4d: $fe $81
	rst $38                                          ; $6e4f: $ff
	rst GetHLinHL                                          ; $6e50: $cf
	rst SubAFromDE                                          ; $6e51: $df
	rst AddAOntoHL                                          ; $6e52: $ef
	cp h                                             ; $6e53: $bc
	jp rIE                                         ; $6e54: $c3 $ff $ff


	call $fcd8                                       ; $6e57: $cd $d8 $fc
	db $fc                                           ; $6e5a: $fc
	ld e, a                                          ; $6e5b: $5f
	and b                                            ; $6e5c: $a0
	dec b                                            ; $6e5d: $05
	ld h, d                                          ; $6e5e: $62
	ld de, $706e                                     ; $6e5f: $11 $6e $70
	add e                                            ; $6e62: $83
	ld de, $3100                                     ; $6e63: $11 $00 $31
	ld h, [hl]                                       ; $6e66: $66
	db $ed                                           ; $6e67: $ed
	ld a, [hl]                                       ; $6e68: $7e
	ld d, a                                          ; $6e69: $57
	ld [hl], e                                       ; $6e6a: $73
	sub e                                            ; $6e6b: $93
	ld a, d                                          ; $6e6c: $7a
	cp $de                                           ; $6e6d: $fe $de
	ret nz                                           ; $6e6f: $c0

	ld l, d                                          ; $6e70: $6a
	dec [hl]                                         ; $6e71: $35
	ld [hl], e                                       ; $6e72: $73
	db $fc                                           ; $6e73: $fc
	ld h, a                                          ; $6e74: $67
	ld [hl], b                                       ; $6e75: $70
	sbc [hl]                                         ; $6e76: $9e
	inc bc                                           ; $6e77: $03
	ld [hl], a                                       ; $6e78: $77
	dec b                                            ; $6e79: $05
	ld a, e                                          ; $6e7a: $7b
	ldh a, [$80]                                     ; $6e7b: $f0 $80
	ld [hl], e                                       ; $6e7d: $73
	cp a                                             ; $6e7e: $bf
	ld a, a                                          ; $6e7f: $7f
	rst $38                                          ; $6e80: $ff
	db $eb                                           ; $6e81: $eb
	db $dd                                           ; $6e82: $dd
	dec h                                            ; $6e83: $25
	ei                                               ; $6e84: $fb
	ld h, e                                          ; $6e85: $63
	cp a                                             ; $6e86: $bf
	ld h, a                                          ; $6e87: $67
	rst SubAFromDE                                          ; $6e88: $df
	push bc                                          ; $6e89: $c5
	ld a, e                                          ; $6e8a: $7b
	cp c                                             ; $6e8b: $b9
	rst JumpTable                                          ; $6e8c: $c7
	ld a, [$feff]                                    ; $6e8d: $fa $ff $fe
	db $fc                                           ; $6e90: $fc
	db $f4                                           ; $6e91: $f4
	ld hl, sp-$28                                    ; $6e92: $f8 $d8
	ldh a, [$98]                                     ; $6e94: $f0 $98
	ei                                               ; $6e96: $fb
	ret c                                            ; $6e97: $d8

	ei                                               ; $6e98: $fb
	db $fd                                           ; $6e99: $fd
	db $fc                                           ; $6e9a: $fc
	inc [hl]                                         ; $6e9b: $34
	sbc d                                            ; $6e9c: $9a
	db $f4                                           ; $6e9d: $f4
	ld a, a                                          ; $6e9e: $7f
	add a                                            ; $6e9f: $87
	sbc c                                            ; $6ea0: $99
	rst AddAOntoHL                                          ; $6ea1: $ef
	ld a, c                                          ; $6ea2: $79
	jp hl                                            ; $6ea3: $e9


	sub l                                            ; $6ea4: $95
	ld h, c                                          ; $6ea5: $61
	rst $38                                          ; $6ea6: $ff
	ld h, c                                          ; $6ea7: $61
	push af                                          ; $6ea8: $f5
	ld l, e                                          ; $6ea9: $6b
	ld a, a                                          ; $6eaa: $7f
	ld a, a                                          ; $6eab: $7f
	ldh [$7f], a                                     ; $6eac: $e0 $7f
	ld bc, $a877                                     ; $6eae: $01 $77 $a8
	ld a, a                                          ; $6eb1: $7f
	dec e                                            ; $6eb2: $1d
	sbc b                                            ; $6eb3: $98
	add e                                            ; $6eb4: $83
	db $fd                                           ; $6eb5: $fd
	add e                                            ; $6eb6: $83
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	pop af                                           ; $6eb9: $f1
	rrca                                             ; $6eba: $0f
	pop de                                           ; $6ebb: $d1
	rst $38                                          ; $6ebc: $ff
	sbc l                                            ; $6ebd: $9d
	ld d, l                                          ; $6ebe: $55
	xor d                                            ; $6ebf: $aa
	ld [hl], e                                       ; $6ec0: $73
	ld e, d                                          ; $6ec1: $5a
	ld a, e                                          ; $6ec2: $7b
	ld e, b                                          ; $6ec3: $58
	sbc l                                            ; $6ec4: $9d
	adc b                                            ; $6ec5: $88
	adc a                                            ; $6ec6: $8f
	ld l, [hl]                                       ; $6ec7: $6e
	db $db                                           ; $6ec8: $db
	sbc e                                            ; $6ec9: $9b
	ccf                                              ; $6eca: $3f
	ld h, c                                          ; $6ecb: $61
	ld a, a                                          ; $6ecc: $7f
	pop hl                                           ; $6ecd: $e1
	ld a, e                                          ; $6ece: $7b
	db $fc                                           ; $6ecf: $fc
	ld [hl], e                                       ; $6ed0: $73
	cp $79                                           ; $6ed1: $fe $79
	pop de                                           ; $6ed3: $d1
	add a                                            ; $6ed4: $87
	nop                                              ; $6ed5: $00
	inc h                                            ; $6ed6: $24
	rst FarCall                                          ; $6ed7: $f7
	db $eb                                           ; $6ed8: $eb
	rst SubAFromBC                                          ; $6ed9: $e7
	ccf                                              ; $6eda: $3f
	ld a, l                                          ; $6edb: $7d
	nop                                              ; $6edc: $00
	ld a, $05                                        ; $6edd: $3e $05
	add d                                            ; $6edf: $82
	ld l, $c0                                        ; $6ee0: $2e $c0
	inc c                                            ; $6ee2: $0c
	jr nz, jr_012_6ee9                               ; $6ee3: $20 $04

	dec de                                           ; $6ee5: $1b
	db $d3                                           ; $6ee6: $d3
	ccf                                              ; $6ee7: $3f
	rst $38                                          ; $6ee8: $ff

jr_012_6ee9:
	db $fd                                           ; $6ee9: $fd
	adc h                                            ; $6eea: $8c
	ld sp, hl                                        ; $6eeb: $f9
	ld c, d                                          ; $6eec: $4a
	ld a, d                                          ; $6eed: $7a
	ld b, c                                          ; $6eee: $41
	sbc c                                            ; $6eef: $99
	dec bc                                           ; $6ef0: $0b
	inc b                                            ; $6ef1: $04
	adc e                                            ; $6ef2: $8b
	ld h, h                                          ; $6ef3: $64
	ld e, [hl]                                       ; $6ef4: $5e
	jr nz, jr_012_6f6a                               ; $6ef5: $20 $73

	ld b, d                                          ; $6ef7: $42
	sub [hl]                                         ; $6ef8: $96
	ccf                                              ; $6ef9: $3f
	rst AddAOntoHL                                          ; $6efa: $ef
	ld [hl], b                                       ; $6efb: $70
	ld l, a                                          ; $6efc: $6f
	sbc a                                            ; $6efd: $9f
	rst $38                                          ; $6efe: $ff
	ld hl, sp+$2f                                    ; $6eff: $f8 $2f
	ldh a, [rPCM12]                                  ; $6f01: $f0 $76
	call z, $f7df                                    ; $6f03: $cc $df $f7
	sub d                                            ; $6f06: $92
	sub c                                            ; $6f07: $91
	rst FarCall                                          ; $6f08: $f7
	inc sp                                           ; $6f09: $33
	ld e, l                                          ; $6f0a: $5d
	sbc e                                            ; $6f0b: $9b
	ld l, l                                          ; $6f0c: $6d
	rst SubAFromBC                                          ; $6f0d: $e7
	add hl, de                                       ; $6f0e: $19
	inc bc                                           ; $6f0f: $03
	xor l                                            ; $6f10: $ad
	rst SubAFromBC                                          ; $6f11: $e7
	ld bc, $dee0                                     ; $6f12: $01 $e0 $de
	rst $38                                          ; $6f15: $ff
	sbc h                                            ; $6f16: $9c
	xor h                                            ; $6f17: $ac
	rst $38                                          ; $6f18: $ff
	call nc, $fc73                                   ; $6f19: $d4 $73 $fc
	rst SubAFromDE                                          ; $6f1c: $df
	rst $38                                          ; $6f1d: $ff
	rst SubAFromDE                                          ; $6f1e: $df
	sbc a                                            ; $6f1f: $9f
	ld a, [hl]                                       ; $6f20: $7e
	ld e, [hl]                                       ; $6f21: $5e
	sbc l                                            ; $6f22: $9d
	and $b7                                          ; $6f23: $e6 $b7
	ld a, d                                          ; $6f25: $7a
	ld d, [hl]                                       ; $6f26: $56
	sbc [hl]                                         ; $6f27: $9e
	sub h                                            ; $6f28: $94
	ld [hl], a                                       ; $6f29: $77
	cp $94                                           ; $6f2a: $fe $94
	cp e                                             ; $6f2c: $bb
	rst JumpTable                                          ; $6f2d: $c7
	sbc a                                            ; $6f2e: $9f
	ldh [$d6], a                                     ; $6f2f: $e0 $d6
	cp $7f                                           ; $6f31: $fe $7f

Call_012_6f33:
	rst $38                                          ; $6f33: $ff
	ldh a, [rIE]                                     ; $6f34: $f0 $ff
	db $10                                           ; $6f36: $10
	ld a, e                                          ; $6f37: $7b
	cp $96                                           ; $6f38: $fe $96
	add hl, de                                       ; $6f3a: $19
	rst $38                                          ; $6f3b: $ff
	sbc c                                            ; $6f3c: $99
	rst $38                                          ; $6f3d: $ff
	ld b, b                                          ; $6f3e: $40
	cp a                                             ; $6f3f: $bf
	ret nz                                           ; $6f40: $c0

	ld b, b                                          ; $6f41: $40
	ret nz                                           ; $6f42: $c0

	halt                                             ; $6f43: $76
	cp a                                             ; $6f44: $bf
	ld l, [hl]                                       ; $6f45: $6e
	sub h                                            ; $6f46: $94
	ld a, e                                          ; $6f47: $7b
	ei                                               ; $6f48: $fb
	add e                                            ; $6f49: $83
	ldh a, [$6f]                                     ; $6f4a: $f0 $6f
	cp $fd                                           ; $6f4c: $fe $fd
	ccf                                              ; $6f4e: $3f
	rrca                                             ; $6f4f: $0f
	ld a, a                                          ; $6f50: $7f
	rst SubAFromHL                                          ; $6f51: $d7
	rst FarCall                                          ; $6f52: $f7
	ld a, a                                          ; $6f53: $7f
	or $67                                           ; $6f54: $f6 $67
	or $67                                           ; $6f56: $f6 $67
	cp $ef                                           ; $6f58: $fe $ef
	jr nz, jr_012_6f9b                               ; $6f5a: $20 $3f

	rra                                              ; $6f5c: $1f
	rst $38                                          ; $6f5d: $ff
	ld c, $19                                        ; $6f5e: $0e $19
	rrca                                             ; $6f60: $0f
	rra                                              ; $6f61: $1f
	ld [$0818], sp                                   ; $6f62: $08 $18 $08
	jr jr_012_6fc9                                   ; $6f65: $18 $62

	ld l, l                                          ; $6f67: $6d
	ret c                                            ; $6f68: $d8

	rst $38                                          ; $6f69: $ff

jr_012_6f6a:
	sbc l                                            ; $6f6a: $9d
	db $fd                                           ; $6f6b: $fd
	cp $6d                                           ; $6f6c: $fe $6d

jr_012_6f6e:
	xor b                                            ; $6f6e: $a8
	ld [hl], a                                       ; $6f6f: $77
	inc l                                            ; $6f70: $2c
	sub h                                            ; $6f71: $94
	nop                                              ; $6f72: $00
	ldh [rP1], a                                     ; $6f73: $e0 $00
	ret nz                                           ; $6f75: $c0

	nop                                              ; $6f76: $00
	rst $38                                          ; $6f77: $ff
	jr nc, jr_012_6f6e                               ; $6f78: $30 $f4

	inc sp                                           ; $6f7a: $33
	di                                               ; $6f7b: $f3
	rst FarCall                                          ; $6f7c: $f7
	sbc $f3                                          ; $6f7d: $de $f3
	sub b                                            ; $6f7f: $90
	scf                                              ; $6f80: $37
	ldh a, [c]                                       ; $6f81: $f2
	inc sp                                           ; $6f82: $33
	ld [hl], a                                       ; $6f83: $77
	inc de                                           ; $6f84: $13
	rla                                              ; $6f85: $17
	dec de                                           ; $6f86: $1b
	rst AddAOntoHL                                          ; $6f87: $ef
	inc b                                            ; $6f88: $04
	rst $38                                          ; $6f89: $ff
	adc a                                            ; $6f8a: $8f
	rst AddAOntoHL                                          ; $6f8b: $ef
	add b                                            ; $6f8c: $80
	ret nz                                           ; $6f8d: $c0

	ld a, l                                          ; $6f8e: $7d
	ld h, l                                          ; $6f8f: $65
	ld a, e                                          ; $6f90: $7b
	ld a, l                                          ; $6f91: $7d
	xor [hl]                                         ; $6f92: $ae
	sub h                                            ; $6f93: $94
	ld a, [hl]                                       ; $6f94: $7e
	ld hl, sp-$01                                    ; $6f95: $f8 $ff
	db $f4                                           ; $6f97: $f4
	ld hl, sp-$50                                    ; $6f98: $f8 $b0
	ret nc                                           ; $6f9a: $d0

jr_012_6f9b:
	db $10                                           ; $6f9b: $10
	jr nc, jr_012_6fae                               ; $6f9c: $30 $10

	jr nc, jr_012_7012                               ; $6f9e: $30 $72

	ld de, $809e                                     ; $6fa0: $11 $9e $80
	ld a, b                                          ; $6fa3: $78
	cp a                                             ; $6fa4: $bf
	sbc b                                            ; $6fa5: $98
	ldh [$bd], a                                     ; $6fa6: $e0 $bd
	ld e, $12                                        ; $6fa8: $1e $12
	db $ed                                           ; $6faa: $ed
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	ld [hl], e                                       ; $6fad: $73

jr_012_6fae:
	sbc a                                            ; $6fae: $9f
	ld a, [$f0df]                                    ; $6faf: $fa $df $f0
	rst SubAFromDE                                          ; $6fb2: $df
	ld hl, sp-$09                                    ; $6fb3: $f8 $f7
	ld l, [hl]                                       ; $6fb5: $6e
	ld e, h                                          ; $6fb6: $5c
	ld d, c                                          ; $6fb7: $51
	dec hl                                           ; $6fb8: $2b
	ld e, c                                          ; $6fb9: $59
	call nc, $ffd7                                   ; $6fba: $d4 $d7 $ff
	ld a, a                                          ; $6fbd: $7f
	and h                                            ; $6fbe: $a4
	ld d, a                                          ; $6fbf: $57
	ldh [$df], a                                     ; $6fc0: $e0 $df
	ldh a, [rPCM34]                                  ; $6fc2: $f0 $77
	add $df                                          ; $6fc4: $c6 $df
	ret nz                                           ; $6fc6: $c0

	halt                                             ; $6fc7: $76
	adc h                                            ; $6fc8: $8c

jr_012_6fc9:
	ld h, a                                          ; $6fc9: $67
	adc $93                                          ; $6fca: $ce $93
	ld e, d                                          ; $6fcc: $5a
	ld l, e                                          ; $6fcd: $6b
	ld e, e                                          ; $6fce: $5b
	ld l, d                                          ; $6fcf: $6a
	xor a                                            ; $6fd0: $af
	rst $38                                          ; $6fd1: $ff
	rst SubAFromBC                                          ; $6fd2: $e7
	or a                                             ; $6fd3: $b7
	sbc a                                            ; $6fd4: $9f
	or a                                             ; $6fd5: $b7
	rst $38                                          ; $6fd6: $ff
	xor a                                            ; $6fd7: $af
	ld [hl], a                                       ; $6fd8: $77
	ldh a, [hDisp1_WY]                                     ; $6fd9: $f0 $95
	and $7e                                          ; $6fdb: $e6 $7e
	ret z                                            ; $6fdd: $c8

	ld a, b                                          ; $6fde: $78
	ret nc                                           ; $6fdf: $d0

	ldh a, [hDisp1_SCY]                                     ; $6fe0: $f0 $90
	ldh a, [rAUD4LEN]                                ; $6fe2: $f0 $20
	ldh [rPCM34], a                                  ; $6fe4: $e0 $77
	cp $80                                           ; $6fe6: $fe $80
	and b                                            ; $6fe8: $a0
	ldh [rTIMA], a                                   ; $6fe9: $e0 $05
	ld b, $05                                        ; $6feb: $06 $05
	ld b, $09                                        ; $6fed: $06 $09
	ld c, $13                                        ; $6fef: $0e $13
	dec e                                            ; $6ff1: $1d
	cpl                                              ; $6ff2: $2f
	inc sp                                           ; $6ff3: $33
	ld e, a                                          ; $6ff4: $5f
	ld h, a                                          ; $6ff5: $67
	ld e, l                                          ; $6ff6: $5d
	ld l, l                                          ; $6ff7: $6d
	ld e, e                                          ; $6ff8: $5b
	ld l, e                                          ; $6ff9: $6b
	ld a, e                                          ; $6ffa: $7b
	ld h, a                                          ; $6ffb: $67
	xor l                                            ; $6ffc: $ad
	or e                                             ; $6ffd: $b3
	or l                                             ; $6ffe: $b5
	cp e                                             ; $6fff: $bb
	xor e                                            ; $7000: $ab
	cp l                                             ; $7001: $bd
	rla                                              ; $7002: $17
	rra                                              ; $7003: $1f
	rrca                                             ; $7004: $0f
	rrca                                             ; $7005: $0f
	rlca                                             ; $7006: $07
	add b                                            ; $7007: $80
	rlca                                             ; $7008: $07
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	ret                                              ; $700b: $c9


	ccf                                              ; $700c: $3f
	ld l, h                                          ; $700d: $6c
	sbc a                                            ; $700e: $9f
	inc [hl]                                         ; $700f: $34
	rst GetHLinHL                                          ; $7010: $cf
	cp l                                             ; $7011: $bd

jr_012_7012:
	rst JumpTable                                          ; $7012: $c7
	rst SubAFromDE                                          ; $7013: $df
	rst SubAFromBC                                          ; $7014: $e7
	db $f4                                           ; $7015: $f4
	call z, $18e8                                    ; $7016: $cc $e8 $18
	ldh a, [$f0]                                     ; $7019: $f0 $f0
	cp $ff                                           ; $701b: $fe $ff
	db $e3                                           ; $701d: $e3
	db $e3                                           ; $701e: $e3
	adc a                                            ; $701f: $8f
	adc a                                            ; $7020: $8f
	ccf                                              ; $7021: $3f
	ccf                                              ; $7022: $3f
	ld a, a                                          ; $7023: $7f
	ld c, a                                          ; $7024: $4f
	ld l, a                                          ; $7025: $6f
	ld c, b                                          ; $7026: $48
	sbc e                                            ; $7027: $9b
	ccf                                              ; $7028: $3f
	jr c, @+$11                                      ; $7029: $38 $0f

	rrca                                             ; $702b: $0f
	ld [hl], h                                       ; $702c: $74
	ret nz                                           ; $702d: $c0

	ld a, h                                          ; $702e: $7c
	or $85                                           ; $702f: $f6 $85

jr_012_7031:
	db $e3                                           ; $7031: $e3
	rst $38                                          ; $7032: $ff
	ld b, $fe                                        ; $7033: $06 $fe
	inc c                                            ; $7035: $0c
	db $fc                                           ; $7036: $fc
	jr c, jr_012_7031                                ; $7037: $38 $f8

	ldh a, [$f0]                                     ; $7039: $f0 $f0
	ld sp, hl                                        ; $703b: $f9
	add [hl]                                         ; $703c: $86
	ld sp, hl                                        ; $703d: $f9
	add [hl]                                         ; $703e: $86
	ld e, e                                          ; $703f: $5b
	and h                                            ; $7040: $a4
	db $d3                                           ; $7041: $d3
	dec l                                            ; $7042: $2d
	rst JumpTable                                          ; $7043: $c7
	dec sp                                           ; $7044: $3b
	adc $3f                                          ; $7045: $ce $3f
	ret c                                            ; $7047: $d8

	ccf                                              ; $7048: $3f
	pop af                                           ; $7049: $f1
	ccf                                              ; $704a: $3f
	db $fd                                           ; $704b: $fd
	reti                                             ; $704c: $d9


	ld bc, $0297                                     ; $704d: $01 $97 $02
	inc bc                                           ; $7050: $03
	ld [bc], a                                       ; $7051: $02
	inc bc                                           ; $7052: $03
	ld h, b                                          ; $7053: $60
	and b                                            ; $7054: $a0
	ld d, b                                          ; $7055: $50
	or b                                             ; $7056: $b0
	ld [hl], a                                       ; $7057: $77
	cp $77                                           ; $7058: $fe $77
	add h                                            ; $705a: $84
	ld [hl], e                                       ; $705b: $73
	ld d, [hl]                                       ; $705c: $56
	ld a, [hl]                                       ; $705d: $7e
	ld [$6080], a                                    ; $705e: $ea $80 $60
	ld [hl], a                                       ; $7061: $77
	adc $7b                                          ; $7062: $ce $7b
	jp z, $cafb                                      ; $7064: $ca $fb $ca

	ld a, [$ffcb]                                    ; $7067: $fa $cb $ff
	rst JumpTable                                          ; $706a: $c7
	ld e, e                                          ; $706b: $5b
	ld h, a                                          ; $706c: $67
	add $3f                                          ; $706d: $c6 $3f
	adc h                                            ; $706f: $8c
	ld a, a                                          ; $7070: $7f
	sbc h                                            ; $7071: $9c
	ld a, a                                          ; $7072: $7f
	cp h                                             ; $7073: $bc
	ld a, a                                          ; $7074: $7f
	cp a                                             ; $7075: $bf
	ld a, a                                          ; $7076: $7f
	or e                                             ; $7077: $b3
	ld a, a                                          ; $7078: $7f
	pop de                                           ; $7079: $d1
	ccf                                              ; $707a: $3f
	pop de                                           ; $707b: $d1
	ccf                                              ; $707c: $3f
	rra                                              ; $707d: $1f
	ldh a, [$7f]                                     ; $707e: $f0 $7f
	cp $83                                           ; $7080: $fe $83
	rla                                              ; $7082: $17
	ld hl, sp-$1d                                    ; $7083: $f8 $e3
	db $fc                                           ; $7085: $fc
	db $ed                                           ; $7086: $ed
	ldh a, [c]                                       ; $7087: $f2
	rst FarCall                                          ; $7088: $f7
	ld hl, sp-$07                                    ; $7089: $f8 $f9
	cp $fc                                           ; $708b: $fe $fc
	rst $38                                          ; $708d: $ff
	adc b                                            ; $708e: $88
	ld [hl], a                                       ; $708f: $77
	sub b                                            ; $7090: $90
	ld l, a                                          ; $7091: $6f
	db $10                                           ; $7092: $10
	rst AddAOntoHL                                          ; $7093: $ef
	ld bc, $63ff                                     ; $7094: $01 $ff $63
	sbc a                                            ; $7097: $9f
	rst SubAFromBC                                          ; $7098: $e7
	ccf                                              ; $7099: $3f
	rst AddAOntoHL                                          ; $709a: $ef
	ccf                                              ; $709b: $3f
	rst $38                                          ; $709c: $ff
	ccf                                              ; $709d: $3f
	ld h, c                                          ; $709e: $61
	inc [hl]                                         ; $709f: $34
	ld a, l                                          ; $70a0: $7d
	add sp, -$65                                     ; $70a1: $e8 $9b
	rst $38                                          ; $70a3: $ff
	ld [$d5ff], a                                    ; $70a4: $ea $ff $d5
	ld l, e                                          ; $70a7: $6b
	add hl, bc                                       ; $70a8: $09
	db $dd                                           ; $70a9: $dd
	rst $38                                          ; $70aa: $ff
	sbc d                                            ; $70ab: $9a
	ld d, a                                          ; $70ac: $57
	rst $38                                          ; $70ad: $ff
	xor [hl]                                         ; $70ae: $ae
	rst $38                                          ; $70af: $ff
	ld c, [hl]                                       ; $70b0: $4e
	ld e, e                                          ; $70b1: $5b
	ldh a, [$7c]                                     ; $70b2: $f0 $7c
	ld l, c                                          ; $70b4: $69
	ld a, a                                          ; $70b5: $7f
	ld sp, hl                                        ; $70b6: $f9
	ld [hl], c                                       ; $70b7: $71
	ld d, e                                          ; $70b8: $53
	ld e, e                                          ; $70b9: $5b
	ldh a, [rOCPS]                                   ; $70ba: $f0 $6a
	rst JumpTable                                          ; $70bc: $c7
	ld [hl], e                                       ; $70bd: $73
	jp hl                                            ; $70be: $e9


	ld a, a                                          ; $70bf: $7f
	ldh a, [$7f]                                     ; $70c0: $f0 $7f
	ld sp, hl                                        ; $70c2: $f9
	ld a, a                                          ; $70c3: $7f
	cp $60                                           ; $70c4: $fe $60
	sub b                                            ; $70c6: $90
	ld l, e                                          ; $70c7: $6b
	reti                                             ; $70c8: $d9


	ld d, l                                          ; $70c9: $55
	ret nc                                           ; $70ca: $d0

	ld [hl], e                                       ; $70cb: $73
	db $fc                                           ; $70cc: $fc
	ld e, b                                          ; $70cd: $58

jr_012_70ce:
	ld d, b                                          ; $70ce: $50
	ld [hl], a                                       ; $70cf: $77
	ei                                               ; $70d0: $fb
	adc a                                            ; $70d1: $8f
	rra                                              ; $70d2: $1f
	jr jr_012_7104                                   ; $70d3: $18 $2f

	jr nc, @+$31                                     ; $70d5: $30 $2f

	jr nc, @+$60                                     ; $70d7: $30 $5e

	ld h, c                                          ; $70d9: $61
	ld a, [hl]                                       ; $70da: $7e
	ld b, c                                          ; $70db: $41
	cp h                                             ; $70dc: $bc
	jp $87f8                                         ; $70dd: $c3 $f8 $87


	ld hl, sp-$79                                    ; $70e0: $f8 $87
	ei                                               ; $70e2: $fb
	rst SubAFromDE                                          ; $70e3: $df
	ld a, b                                          ; $70e4: $78
	add a                                            ; $70e5: $87
	xor b                                            ; $70e6: $a8
	ret c                                            ; $70e7: $d8

jr_012_70e8:
	ret nc                                           ; $70e8: $d0

	or b                                             ; $70e9: $b0
	and b                                            ; $70ea: $a0
	ld h, b                                          ; $70eb: $60
	jr nz, jr_012_70ce                               ; $70ec: $20 $e0

	add b                                            ; $70ee: $80
	add b                                            ; $70ef: $80
	ld c, [hl]                                       ; $70f0: $4e
	adc $be                                          ; $70f1: $ce $be
	ld a, d                                          ; $70f3: $7a
	ld d, $fa                                        ; $70f4: $16 $fa
	ld l, $f2                                        ; $70f6: $2e $f2
	ld h, $fa                                        ; $70f8: $26 $fa
	or a                                             ; $70fa: $b7
	ld a, e                                          ; $70fb: $7b
	cp $19                                           ; $70fc: $fe $19
	ei                                               ; $70fe: $fb
	rst SubAFromDE                                          ; $70ff: $df
	rlca                                             ; $7100: $07
	ld a, a                                          ; $7101: $7f
	ret z                                            ; $7102: $c8

	add b                                            ; $7103: $80

jr_012_7104:
	ccf                                              ; $7104: $3f
	jr nz, jr_012_7186                               ; $7105: $20 $7f

	ld b, b                                          ; $7107: $40
	rst $38                                          ; $7108: $ff
	add b                                            ; $7109: $80
	rst AddAOntoHL                                          ; $710a: $ef
	db $10                                           ; $710b: $10
	rst $38                                          ; $710c: $ff
	nop                                              ; $710d: $00
	rst SubAFromDE                                          ; $710e: $df
	jr nz, jr_012_70e8                               ; $710f: $20 $d7

	jr z, jr_012_70ce                                ; $7111: $28 $bb

	ld h, h                                          ; $7113: $64
	cp [hl]                                          ; $7114: $be
	ld h, e                                          ; $7115: $63
	cpl                                              ; $7116: $2f
	pop af                                           ; $7117: $f1
	rla                                              ; $7118: $17
	ld hl, sp+$01                                    ; $7119: $f8 $01
	ld bc, $0203                                     ; $711b: $01 $03 $02
	rlca                                             ; $711e: $07
	inc b                                            ; $711f: $04
	rrca                                             ; $7120: $0f
	ld [$863f], sp                                   ; $7121: $08 $3f $86
	jr nc, @-$07                                     ; $7124: $30 $f7

	ret z                                            ; $7126: $c8

	and $19                                          ; $7127: $e6 $19
	call z, $c033                                    ; $7129: $cc $33 $c0
	ret nz                                           ; $712c: $c0

	ldh [$a0], a                                     ; $712d: $e0 $a0
	or b                                             ; $712f: $b0
	ret nc                                           ; $7130: $d0

	cp b                                             ; $7131: $b8
	ret z                                            ; $7132: $c8

	ld hl, sp-$38                                    ; $7133: $f8 $c8
	call c, Call_012_4fe4                            ; $7135: $dc $e4 $4f
	ld [hl], e                                       ; $7138: $73
	scf                                              ; $7139: $37
	jr c, @+$01                                      ; $713a: $38 $ff

	db $fc                                           ; $713c: $fc
	ld a, b                                          ; $713d: $78
	jp z, $8d7e                                      ; $713e: $ca $7e $8d

	ld a, [hl]                                       ; $7141: $7e
	db $e3                                           ; $7142: $e3
	sbc e                                            ; $7143: $9b
	add b                                            ; $7144: $80
	ccf                                              ; $7145: $3f
	ret nz                                           ; $7146: $c0

	ccf                                              ; $7147: $3f
	ld a, e                                          ; $7148: $7b
	or $9a                                           ; $7149: $f6 $9a
	or b                                             ; $714b: $b0
	add b                                            ; $714c: $80
	rst SubAFromDE                                          ; $714d: $df
	add c                                            ; $714e: $81
	add e                                            ; $714f: $83
	ld a, b                                          ; $7150: $78
	add h                                            ; $7151: $84
	rst SubAFromDE                                          ; $7152: $df
	adc a                                            ; $7153: $8f
	rst SubAFromDE                                          ; $7154: $df
	sbc a                                            ; $7155: $9f
	sbc l                                            ; $7156: $9d
	di                                               ; $7157: $f3
	sub e                                            ; $7158: $93
	ld a, e                                          ; $7159: $7b
	ld [hl], b                                       ; $715a: $70
	adc a                                            ; $715b: $8f
	cp $1f                                           ; $715c: $fe $1f
	ld a, [$fa1f]                                    ; $715e: $fa $1f $fa
	ccf                                              ; $7161: $3f
	ld a, [$fe3f]                                    ; $7162: $fa $3f $fe
	rst $38                                          ; $7165: $ff
	ld a, [$fbff]                                    ; $7166: $fa $ff $fb
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	jr z, jr_012_71e8                                ; $716b: $28 $7b

	cp $9e                                           ; $716d: $fe $9e
	sub b                                            ; $716f: $90
	ld h, a                                          ; $7170: $67
	ld d, $7b                                        ; $7171: $16 $7b
	ei                                               ; $7173: $fb
	sbc h                                            ; $7174: $9c
	and c                                            ; $7175: $a1
	rst $38                                          ; $7176: $ff
	inc bc                                           ; $7177: $03
	ld a, d                                          ; $7178: $7a
	ld c, l                                          ; $7179: $4d
	sbc [hl]                                         ; $717a: $9e
	inc c                                            ; $717b: $0c
	ld [hl], c                                       ; $717c: $71
	add h                                            ; $717d: $84
	ld [hl], a                                       ; $717e: $77
	ldh a, [$9e]                                     ; $717f: $f0 $9e
	and b                                            ; $7181: $a0
	ld a, e                                          ; $7182: $7b
	or c                                             ; $7183: $b1
	ld a, a                                          ; $7184: $7f
	db $fc                                           ; $7185: $fc

jr_012_7186:
	ld a, a                                          ; $7186: $7f
	ld [hl], a                                       ; $7187: $77
	ld l, l                                          ; $7188: $6d
	ld d, c                                          ; $7189: $51
	ld a, a                                          ; $718a: $7f
	cp $7f                                           ; $718b: $fe $7f
	add sp, -$62                                     ; $718d: $e8 $9e
	xor b                                            ; $718f: $a8
	ld a, b                                          ; $7190: $78
	call nc, Call_012_509e                           ; $7191: $d4 $9e $50
	ld a, d                                          ; $7194: $7a
	ld l, c                                          ; $7195: $69
	sbc [hl]                                         ; $7196: $9e
	jr nz, jr_012_7214                               ; $7197: $20 $7b

	cp $7f                                           ; $7199: $fe $7f
	add sp, $7e                                      ; $719b: $e8 $7e
	rra                                              ; $719d: $1f
	ld a, [hl]                                       ; $719e: $7e
	db $ec                                           ; $719f: $ec
	ld a, a                                          ; $71a0: $7f
	db $fc                                           ; $71a1: $fc
	ld a, h                                          ; $71a2: $7c
	call nz, $ea7c                                   ; $71a3: $c4 $7c $ea
	sbc h                                            ; $71a6: $9c
	ld b, $ff                                        ; $71a7: $06 $ff
	jr c, @+$7d                                      ; $71a9: $38 $7b

	ret z                                            ; $71ab: $c8

	ld a, a                                          ; $71ac: $7f
	jp nc, $8c9a                                     ; $71ad: $d2 $9a $8c

	rst $38                                          ; $71b0: $ff
	and $ff                                          ; $71b1: $e6 $ff
	ld a, [hl-]                                      ; $71b3: $3a
	ld a, e                                          ; $71b4: $7b
	ret c                                            ; $71b5: $d8

	sbc [hl]                                         ; $71b6: $9e
	ld [hl], b                                       ; $71b7: $70
	ld a, e                                          ; $71b8: $7b
	ldh [$9e], a                                     ; $71b9: $e0 $9e
	ld h, b                                          ; $71bb: $60
	ld [hl], d                                       ; $71bc: $72
	call z, $fe77                                    ; $71bd: $cc $77 $fe
	ld a, a                                          ; $71c0: $7f
	xor d                                            ; $71c1: $aa
	sbc l                                            ; $71c2: $9d
	inc bc                                           ; $71c3: $03
	cp $77                                           ; $71c4: $fe $77
	cp $70                                           ; $71c6: $fe $70
	jp c, $fe7b                                      ; $71c8: $da $7b $fe

	ld l, l                                          ; $71cb: $6d
	ld h, d                                          ; $71cc: $62
	ld a, c                                          ; $71cd: $79
	inc b                                            ; $71ce: $04
	sbc $fe                                          ; $71cf: $de $fe
	sbc b                                            ; $71d1: $98
	xor h                                            ; $71d2: $ac
	cp a                                             ; $71d3: $bf
	xor b                                            ; $71d4: $a8
	add sp, -$04                                     ; $71d5: $e8 $fc
	db $fc                                           ; $71d7: $fc
	ld hl, sp+$7b                                    ; $71d8: $f8 $7b
	db $eb                                           ; $71da: $eb
	sub e                                            ; $71db: $93
	ldh a, [$fd]                                     ; $71dc: $f0 $fd
	ld c, $fd                                        ; $71de: $0e $fd
	db $fc                                           ; $71e0: $fc
	rst $38                                          ; $71e1: $ff
	ld a, [hl+]                                      ; $71e2: $2a
	db $fd                                           ; $71e3: $fd
	ld l, $ff                                        ; $71e4: $2e $ff
	ld a, e                                          ; $71e6: $7b
	db $fd                                           ; $71e7: $fd

jr_012_71e8:
	halt                                             ; $71e8: $76
	sbc [hl]                                         ; $71e9: $9e
	ld a, a                                          ; $71ea: $7f
	db $fc                                           ; $71eb: $fc
	ld [hl], a                                       ; $71ec: $77
	add $9e                                          ; $71ed: $c6 $9e
	ld [bc], a                                       ; $71ef: $02
	ld a, e                                          ; $71f0: $7b
	and h                                            ; $71f1: $a4
	ld a, a                                          ; $71f2: $7f
	cp $6f                                           ; $71f3: $fe $6f
	ld [hl], b                                       ; $71f5: $70
	ld h, a                                          ; $71f6: $67
	ld a, b                                          ; $71f7: $78
	ld e, [hl]                                       ; $71f8: $5e
	sbc e                                            ; $71f9: $9b
	rst SubAFromDE                                          ; $71fa: $df
	rst $38                                          ; $71fb: $ff
	add b                                            ; $71fc: $80
	ld c, e                                          ; $71fd: $4b
	inc [hl]                                         ; $71fe: $34
	add b                                            ; $71ff: $80
	inc b                                            ; $7200: $04
	ld hl, sp+$04                                    ; $7201: $f8 $04
	or e                                             ; $7203: $b3
	inc b                                            ; $7204: $04
	ld c, $00                                        ; $7205: $0e $00
	inc b                                            ; $7207: $04
	add d                                            ; $7208: $82
	ld c, e                                          ; $7209: $4b
	rst $38                                          ; $720a: $ff
	inc bc                                           ; $720b: $03
	db $fd                                           ; $720c: $fd
	inc bc                                           ; $720d: $03
	rst $38                                          ; $720e: $ff
	ld [hl], a                                       ; $720f: $77
	cp $8f                                           ; $7210: $fe $8f
	db $fc                                           ; $7212: $fc
	rra                                              ; $7213: $1f

jr_012_7214:
	ld hl, sp+$3b                                    ; $7214: $f8 $3b
	ld hl, sp-$01                                    ; $7216: $f8 $ff
	db $fc                                           ; $7218: $fc
	ld hl, sp-$01                                    ; $7219: $f8 $ff
	cp $9b                                           ; $721b: $fe $9b
	rst $38                                          ; $721d: $ff
	set 7, a                                         ; $721e: $cb $ff
	ret                                              ; $7220: $c9


	ld a, e                                          ; $7221: $7b
	ld l, b                                          ; $7222: $68
	ld a, a                                          ; $7223: $7f
	ld a, [$ef99]                                    ; $7224: $fa $99 $ef
	ld sp, hl                                        ; $7227: $f9
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rlca                                             ; $722a: $07
	cp $73                                           ; $722b: $fe $73
	cp $7b                                           ; $722d: $fe $7b
	ld hl, sp-$68                                    ; $722f: $f8 $98
	rrca                                             ; $7231: $0f
	cp $0f                                           ; $7232: $fe $0f
	rst $38                                          ; $7234: $ff
	rrca                                             ; $7235: $0f
	cp $f0                                           ; $7236: $fe $f0
	ld a, e                                          ; $7238: $7b
	and $7f                                          ; $7239: $e6 $7f
	sbc d                                            ; $723b: $9a
	ld a, a                                          ; $723c: $7f
	cp $7f                                           ; $723d: $fe $7f
	ld a, [$547f]                                    ; $723f: $fa $7f $54
	ld a, a                                          ; $7242: $7f
	db $fc                                           ; $7243: $fc
	ld a, a                                          ; $7244: $7f
	xor a                                            ; $7245: $af
	ld a, l                                          ; $7246: $7d
	rst GetHLinHL                                          ; $7247: $cf
	sbc h                                            ; $7248: $9c
	ld e, b                                          ; $7249: $58
	rst $38                                          ; $724a: $ff
	ld [hl], c                                       ; $724b: $71
	ld a, e                                          ; $724c: $7b
	ld b, [hl]                                       ; $724d: $46
	ld a, a                                          ; $724e: $7f
	ld hl, sp-$66                                    ; $724f: $f8 $9a
	di                                               ; $7251: $f3
	rst $38                                          ; $7252: $ff

jr_012_7253:
	ld [hl], $ff                                     ; $7253: $36 $ff
	inc h                                            ; $7255: $24
	ld e, e                                          ; $7256: $5b
	sub b                                            ; $7257: $90
	ld l, e                                          ; $7258: $6b
	cp $f2                                           ; $7259: $fe $f2
	adc a                                            ; $725b: $8f
	rst FarCall                                          ; $725c: $f7
	inc c                                            ; $725d: $0c
	push af                                          ; $725e: $f5
	ld c, $f4                                        ; $725f: $0e $f4
	rrca                                             ; $7261: $0f
	ld a, [$f207]                                    ; $7262: $fa $07 $f2
	rrca                                             ; $7265: $0f
	di                                               ; $7266: $f3
	ld c, $63                                        ; $7267: $0e $63
	sbc [hl]                                         ; $7269: $9e
	and a                                            ; $726a: $a7
	sbc $64                                          ; $726b: $de $64
	ld d, d                                          ; $726d: $52
	sbc e                                            ; $726e: $9b
	db $fc                                           ; $726f: $fc
	inc c                                            ; $7270: $0c
	cp $06                                           ; $7271: $fe $06
	ld a, e                                          ; $7273: $7b
	ld b, l                                          ; $7274: $45
	sbc [hl]                                         ; $7275: $9e
	add hl, bc                                       ; $7276: $09
	and d                                            ; $7277: $a2
	nop                                              ; $7278: $00
	sub l                                            ; $7279: $95
	inc bc                                           ; $727a: $03
	ld bc, $3a10                                     ; $727b: $01 $10 $3a
	ld bc, $0d01                                     ; $727e: $01 $01 $0d
	ld bc, $0310                                     ; $7281: $01 $10 $03
	ld [hl], e                                       ; $7284: $73
	ld a, [$3180]                                    ; $7285: $fa $80 $31
	inc h                                            ; $7288: $24
	inc h                                            ; $7289: $24
	add hl, bc                                       ; $728a: $09
	inc h                                            ; $728b: $24
	ld c, e                                          ; $728c: $4b
	ld c, h                                          ; $728d: $4c
	ld c, l                                          ; $728e: $4d
	ld c, [hl]                                       ; $728f: $4e
	ld c, a                                          ; $7290: $4f
	ld d, b                                          ; $7291: $50
	ld d, c                                          ; $7292: $51
	ld d, d                                          ; $7293: $52
	rra                                              ; $7294: $1f
	ld e, $1d                                        ; $7295: $1e $1d
	add hl, de                                       ; $7297: $19
	ld l, $17                                        ; $7298: $2e $17
	ld d, $15                                        ; $729a: $16 $15
	inc d                                            ; $729c: $14
	inc de                                           ; $729d: $13
	rrca                                             ; $729e: $0f
	inc de                                           ; $729f: $13
	ld e, a                                          ; $72a0: $5f
	ld h, b                                          ; $72a1: $60
	ld h, c                                          ; $72a2: $61
	ld h, d                                          ; $72a3: $62
	ld h, e                                          ; $72a4: $63
	ld h, h                                          ; $72a5: $64
	add b                                            ; $72a6: $80
	ld h, l                                          ; $72a7: $65
	ld h, [hl]                                       ; $72a8: $66
	inc b                                            ; $72a9: $04
	dec b                                            ; $72aa: $05
	ld [de], a                                       ; $72ab: $12
	ld b, $0e                                        ; $72ac: $06 $0e
	jr jr_012_72d0                                   ; $72ae: $18 $20

	ld de, $0200                                     ; $72b0: $11 $00 $02
	ld a, [bc]                                       ; $72b3: $0a
	ld a, [de]                                       ; $72b4: $1a
	ld l, a                                          ; $72b5: $6f
	ld l, a                                          ; $72b6: $6f
	ld l, [hl]                                       ; $72b7: $6e
	ld l, l                                          ; $72b8: $6d
	ld l, h                                          ; $72b9: $6c
	ld l, e                                          ; $72ba: $6b
	ld l, d                                          ; $72bb: $6a
	ld l, c                                          ; $72bc: $69
	inc e                                            ; $72bd: $1c
	ld [hl+], a                                      ; $72be: $22
	dec l                                            ; $72bf: $2d
	ld hl, $2827                                     ; $72c0: $21 $27 $28
	ld a, [hl+]                                      ; $72c3: $2a
	inc l                                            ; $72c4: $2c
	jr nc, jr_012_7253                               ; $72c5: $30 $8c

	dec [hl]                                         ; $72c7: $35
	ld h, $25                                        ; $72c8: $26 $25
	ld l, b                                          ; $72ca: $68
	ld h, a                                          ; $72cb: $67
	ld e, [hl]                                       ; $72cc: $5e
	ld e, l                                          ; $72cd: $5d
	ld e, h                                          ; $72ce: $5c
	ld e, e                                          ; $72cf: $5b

jr_012_72d0:
	ld e, d                                          ; $72d0: $5a
	inc [hl]                                         ; $72d1: $34
	inc [hl]                                         ; $72d2: $34
	cpl                                              ; $72d3: $2f
	ld [hl-], a                                      ; $72d4: $32
	inc sp                                           ; $72d5: $33
	ld [hl], $29                                     ; $72d6: $36 $29
	inc hl                                           ; $72d8: $23
	dec de                                           ; $72d9: $1b
	db $dd                                           ; $72da: $dd
	rlca                                             ; $72db: $07
	rst SubAFromDE                                          ; $72dc: $df
	dec bc                                           ; $72dd: $0b
	rst SubAFromDE                                          ; $72de: $df
	ld [hl], b                                       ; $72df: $70
	sbc e                                            ; $72e0: $9b
	ld d, [hl]                                       ; $72e1: $56
	ld [hl], d                                       ; $72e2: $72
	ld [hl], b                                       ; $72e3: $70
	ld [hl], b                                       ; $72e4: $70
	db $db                                           ; $72e5: $db
	dec bc                                           ; $72e6: $0b
	sbc [hl]                                         ; $72e7: $9e
	dec hl                                           ; $72e8: $2b
	db $dd                                           ; $72e9: $dd
	inc c                                            ; $72ea: $0c
	sub [hl]                                         ; $72eb: $96
	ld [$0b0b], sp                                   ; $72ec: $08 $0b $0b
	ld e, c                                          ; $72ef: $59
	ld e, b                                          ; $72f0: $58
	ld d, a                                          ; $72f1: $57
	ld [hl], c                                       ; $72f2: $71
	ld d, l                                          ; $72f3: $55
	ld d, h                                          ; $72f4: $54
	db $d3                                           ; $72f5: $d3
	dec bc                                           ; $72f6: $0b
	sbc c                                            ; $72f7: $99
	ld d, e                                          ; $72f8: $53
	ld c, d                                          ; $72f9: $4a
	ld c, c                                          ; $72fa: $49
	ld c, b                                          ; $72fb: $48
	ld b, a                                          ; $72fc: $47
	ld b, [hl]                                       ; $72fd: $46
	call nc, $990b                                   ; $72fe: $d4 $0b $99
	ld b, l                                          ; $7301: $45
	ld b, h                                          ; $7302: $44
	ld b, e                                          ; $7303: $43
	ld b, d                                          ; $7304: $42
	ld b, c                                          ; $7305: $41
	ld b, b                                          ; $7306: $40
	db $d3                                           ; $7307: $d3
	dec bc                                           ; $7308: $0b
	sbc l                                            ; $7309: $9d
	ccf                                              ; $730a: $3f
	ld a, $cf                                        ; $730b: $3e $cf
	dec bc                                           ; $730d: $0b
	sbc c                                            ; $730e: $99
	dec a                                            ; $730f: $3d
	inc a                                            ; $7310: $3c
	dec sp                                           ; $7311: $3b
	add hl, sp                                       ; $7312: $39
	jr c, jr_012_734c                                ; $7313: $38 $37

	pop bc                                           ; $7315: $c1
	dec bc                                           ; $7316: $0b
	sbc [hl]                                         ; $7317: $9e
	dec bc                                           ; $7318: $0b
	jr c, jr_012_731b                                ; $7319: $38 $00

jr_012_731b:
	rst SubAFromHL                                          ; $731b: $d7
	ld [hl], a                                       ; $731c: $77
	rst SubAFromDE                                          ; $731d: $df
	inc sp                                           ; $731e: $33
	sbc [hl]                                         ; $731f: $9e
	scf                                              ; $7320: $37
	call c, $9e77                                    ; $7321: $dc $77 $9e
	daa                                              ; $7324: $27
	ld [hl], a                                       ; $7325: $77
	or $99                                           ; $7326: $f6 $99
	daa                                              ; $7328: $27
	inc sp                                           ; $7329: $33
	inc hl                                           ; $732a: $23
	inc hl                                           ; $732b: $23
	scf                                              ; $732c: $37
	ld [hl+], a                                      ; $732d: $22
	ld l, a                                          ; $732e: $6f
	db $ec                                           ; $732f: $ec
	ld [hl], e                                       ; $7330: $73
	jp hl                                            ; $7331: $e9


	sbc $33                                          ; $7332: $de $33
	jp c, $9e77                                      ; $7334: $da $77 $9e

	ld b, h                                          ; $7337: $44
	sbc $55                                          ; $7338: $de $55
	sbc $44                                          ; $733a: $de $44
	sbc $22                                          ; $733c: $de $22
	ld l, e                                          ; $733e: $6b
	or $dd                                           ; $733f: $f6 $dd
	ld b, h                                          ; $7341: $44
	ld h, e                                          ; $7342: $63
	or $9b                                           ; $7343: $f6 $9b
	ld b, l                                          ; $7345: $45
	ld d, l                                          ; $7346: $55
	ld d, l                                          ; $7347: $55
	ld d, h                                          ; $7348: $54
	ld l, e                                          ; $7349: $6b
	or $6b                                           ; $734a: $f6 $6b

jr_012_734c:
	ld hl, sp+$57                                    ; $734c: $f8 $57
	db $ec                                           ; $734e: $ec
	rst SubAFromHL                                          ; $734f: $d7
	ld b, h                                          ; $7350: $44
	inc bc                                           ; $7351: $03
	nop                                              ; $7352: $00
	pop af                                           ; $7353: $f1
	inc bc                                           ; $7354: $03
	nop                                              ; $7355: $00
	rst $38                                          ; $7356: $ff
	inc b                                            ; $7357: $04
	nop                                              ; $7358: $00
	sbc [hl]                                         ; $7359: $9e
	ld b, h                                          ; $735a: $44
	cp a                                             ; $735b: $bf
	ld bc, $ff8d                                     ; $735c: $01 $8d $ff
	db $fc                                           ; $735f: $fc
	rst $38                                          ; $7360: $ff
	jr @+$01                                         ; $7361: $18 $ff

	jr nc, @+$01                                     ; $7363: $30 $ff

	ld h, b                                          ; $7365: $60
	rst $38                                          ; $7366: $ff
	ret nz                                           ; $7367: $c0

	ei                                               ; $7368: $fb
	add c                                            ; $7369: $81
	rst FarCall                                          ; $736a: $f7
	inc bc                                           ; $736b: $03
	rrca                                             ; $736c: $0f
	ld b, $ff                                        ; $736d: $06 $ff
	nop                                              ; $736f: $00
	ld c, e                                          ; $7370: $4b
	cp $9e                                           ; $7371: $fe $9e
	rrca                                             ; $7373: $0f
	ld h, a                                          ; $7374: $67
	ldh [$99], a                                     ; $7375: $e0 $99
	rst $38                                          ; $7377: $ff
	add c                                            ; $7378: $81
	rst $38                                          ; $7379: $ff
	inc bc                                           ; $737a: $03
	rst $38                                          ; $737b: $ff
	ld b, $5f                                        ; $737c: $06 $5f
	ret nc                                           ; $737e: $d0

	ld [hl], a                                       ; $737f: $77
	ldh a, [$9b]                                     ; $7380: $f0 $9b
	rra                                              ; $7382: $1f
	ld b, $1f                                        ; $7383: $06 $1f
	inc c                                            ; $7385: $0c
	ld a, e                                          ; $7386: $7b
	ldh a, [$9b]                                     ; $7387: $f0 $9b
	ldh a, [rIE]                                     ; $7389: $f0 $ff
	ld h, b                                          ; $738b: $60
	db $fd                                           ; $738c: $fd
	ld a, e                                          ; $738d: $7b
	ret nz                                           ; $738e: $c0

	sbc [hl]                                         ; $738f: $9e
	add a                                            ; $7390: $87
	ld a, e                                          ; $7391: $7b
	ldh [$67], a                                     ; $7392: $e0 $67
	ldh a, [rPCM34]                                  ; $7394: $f0 $77
	ldh [$7f], a                                     ; $7396: $e0 $7f
	or b                                             ; $7398: $b0
	sbc h                                            ; $7399: $9c
	rst AddAOntoHL                                          ; $739a: $ef
	ld b, $3f                                        ; $739b: $06 $3f
	ld c, e                                          ; $739d: $4b
	ldh a, [$9e]                                     ; $739e: $f0 $9e
	cp $77                                           ; $73a0: $fe $77
	ldh a, [$9e]                                     ; $73a2: $f0 $9e
	ccf                                              ; $73a4: $3f
	ld e, a                                          ; $73a5: $5f
	or b                                             ; $73a6: $b0
	ld d, a                                          ; $73a7: $57
	ret nc                                           ; $73a8: $d0

	sbc d                                            ; $73a9: $9a
	rst AddAOntoHL                                          ; $73aa: $ef
	inc bc                                           ; $73ab: $03
	rst SubAFromDE                                          ; $73ac: $df
	ld b, $ff                                        ; $73ad: $06 $ff
	ld c, e                                          ; $73af: $4b
	ret nc                                           ; $73b0: $d0

	ld [hl], e                                       ; $73b1: $73
	ldh a, [$5b]                                     ; $73b2: $f0 $5b
	ret nc                                           ; $73b4: $d0

	ld l, e                                          ; $73b5: $6b
	ld l, d                                          ; $73b6: $6a
	sbc l                                            ; $73b7: $9d
	rst $38                                          ; $73b8: $ff
	add b                                            ; $73b9: $80
	sbc $ff                                          ; $73ba: $de $ff
	ld [hl], a                                       ; $73bc: $77
	db $fc                                           ; $73bd: $fc
	sbc [hl]                                         ; $73be: $9e
	cp $73                                           ; $73bf: $fe $73
	ldh a, [hDisp1_BGP]                                     ; $73c1: $f0 $92
	ld a, a                                          ; $73c3: $7f
	nop                                              ; $73c4: $00
	sbc a                                            ; $73c5: $9f
	nop                                              ; $73c6: $00
	cpl                                              ; $73c7: $2f
	nop                                              ; $73c8: $00
	dec e                                            ; $73c9: $1d
	nop                                              ; $73ca: $00
	ld a, [bc]                                       ; $73cb: $0a
	nop                                              ; $73cc: $00
	scf                                              ; $73cd: $37
	nop                                              ; $73ce: $00
	ld c, d                                          ; $73cf: $4a
	db $f4                                           ; $73d0: $f4
	sbc h                                            ; $73d1: $9c
	jr nc, jr_012_73d4                               ; $73d2: $30 $00

jr_012_73d4:
	ld b, b                                          ; $73d4: $40
	db $f4                                           ; $73d5: $f4
	sbc e                                            ; $73d6: $9b
	ei                                               ; $73d7: $fb
	nop                                              ; $73d8: $00
	push af                                          ; $73d9: $f5
	nop                                              ; $73da: $00
	ld l, a                                          ; $73db: $6f
	call z, $fe77                                    ; $73dc: $cc $77 $fe
	sbc d                                            ; $73df: $9a
	ld a, [hl]                                       ; $73e0: $7e
	nop                                              ; $73e1: $00
	ld [$5400], a                                    ; $73e2: $ea $00 $54
	ld a, e                                          ; $73e5: $7b
	ldh a, [$9e]                                     ; $73e6: $f0 $9e
	cp a                                             ; $73e8: $bf
	ld a, e                                          ; $73e9: $7b
	db $f4                                           ; $73ea: $f4
	sbc [hl]                                         ; $73eb: $9e
	rst SubAFromHL                                          ; $73ec: $d7
	ld a, e                                          ; $73ed: $7b
	add $9c                                          ; $73ee: $c6 $9c
	add c                                            ; $73f0: $81
	nop                                              ; $73f1: $00
	dec b                                            ; $73f2: $05
	ldh a, [c]                                       ; $73f3: $f2
	rst SubAFromDE                                          ; $73f4: $df
	ldh [hDisp1_OBP1], a                                     ; $73f5: $e0 $94
	rra                                              ; $73f7: $1f
	ld a, a                                          ; $73f8: $7f
	ld [$040c], sp                                   ; $73f9: $08 $0c $04
	add [hl]                                         ; $73fc: $86
	ld [bc], a                                       ; $73fd: $02
	ld b, e                                          ; $73fe: $43
	ld a, l                                          ; $73ff: $7d
	ld a, a                                          ; $7400: $7f
	add b                                            ; $7401: $80
	ld [hl], a                                       ; $7402: $77
	call $b07b                                       ; $7403: $cd $7b $b0
	sbc [hl]                                         ; $7406: $9e
	or h                                             ; $7407: $b4
	ld a, e                                          ; $7408: $7b
	jp z, $f09a                                      ; $7409: $ca $9a $f0

	nop                                              ; $740c: $00
	ld hl, sp+$00                                    ; $740d: $f8 $00
	add sp, $7b                                      ; $740f: $e8 $7b
	call nz, $019e                                   ; $7411: $c4 $9e $01
	ldh a, [c]                                       ; $7414: $f2
	ld l, a                                          ; $7415: $6f
	xor b                                            ; $7416: $a8
	sbc h                                            ; $7417: $9c
	ld a, [$f400]                                    ; $7418: $fa $00 $f4
	ld a, e                                          ; $741b: $7b
	ldh [c], a                                       ; $741c: $e2
	ld a, a                                          ; $741d: $7f
	sub $9e                                          ; $741e: $d6 $9e
	and h                                            ; $7420: $a4
	ld d, d                                          ; $7421: $52
	or h                                             ; $7422: $b4
	adc h                                            ; $7423: $8c
	db $fd                                           ; $7424: $fd
	nop                                              ; $7425: $00
	xor d                                            ; $7426: $aa
	nop                                              ; $7427: $00
	rrca                                             ; $7428: $0f
	rrca                                             ; $7429: $0f
	adc b                                            ; $742a: $88
	adc b                                            ; $742b: $88
	ld hl, sp-$07                                    ; $742c: $f8 $f9
	ld [$084b], sp                                   ; $742e: $08 $4b $08
	add sp, -$08                                     ; $7431: $e8 $f8
	ld a, [$f808]                                    ; $7433: $fa $08 $f8
	rrca                                             ; $7436: $0f
	sbc $ff                                          ; $7437: $de $ff
	sbc $01                                          ; $7439: $de $01
	sbc h                                            ; $743b: $9c
	ld l, l                                          ; $743c: $6d
	ld bc, $de29                                     ; $743d: $01 $29 $de
	ld bc, $a996                                     ; $7440: $01 $96 $a9
	ld bc, $ff01                                     ; $7443: $01 $01 $ff
	rst $38                                          ; $7446: $ff
	inc e                                            ; $7447: $1c
	inc e                                            ; $7448: $1c
	db $e3                                           ; $7449: $e3
	db $e3                                           ; $744a: $e3
	ld a, e                                          ; $744b: $7b
	ld c, e                                          ; $744c: $4b
	sbc e                                            ; $744d: $9b
	stop                                             ; $744e: $10 $00
	ld l, l                                          ; $7450: $6d
	rst $38                                          ; $7451: $ff
	ld l, a                                          ; $7452: $6f
	rla                                              ; $7453: $17
	ld a, e                                          ; $7454: $7b
	inc h                                            ; $7455: $24
	sbc h                                            ; $7456: $9c
	ccf                                              ; $7457: $3f
	nop                                              ; $7458: $00
	rra                                              ; $7459: $1f
	ld [hl], e                                       ; $745a: $73
	cp $77                                           ; $745b: $fe $77
	ld hl, sp-$6a                                    ; $745d: $f8 $96
	rrca                                             ; $745f: $0f
	rra                                              ; $7460: $1f
	ldh a, [$f3]                                     ; $7461: $f0 $f3
	nop                                              ; $7463: $00
	inc hl                                           ; $7464: $23
	nop                                              ; $7465: $00
	ld [hl], c                                       ; $7466: $71
	cp a                                             ; $7467: $bf
	ld a, d                                          ; $7468: $7a
	rst AddAOntoHL                                          ; $7469: $ef
	sub e                                            ; $746a: $93
	ld bc, $07fe                                     ; $746b: $01 $fe $07
	ld hl, sp+$07                                    ; $746e: $f8 $07
	rlca                                             ; $7470: $07
	ld hl, sp-$08                                    ; $7471: $f8 $f8
	nop                                              ; $7473: $00
	inc e                                            ; $7474: $1c
	nop                                              ; $7475: $00
	add h                                            ; $7476: $84
	sbc $ff                                          ; $7477: $de $ff
	ld [hl], e                                       ; $7479: $73
	sbc h                                            ; $747a: $9c
	rst SubAFromDE                                          ; $747b: $df
	rst SubAFromBC                                          ; $747c: $e7
	sbc c                                            ; $747d: $99
	jr c, @-$06                                      ; $747e: $38 $f8

	nop                                              ; $7480: $00
	ld [hl], b                                       ; $7481: $70
	nop                                              ; $7482: $00
	ld d, e                                          ; $7483: $53
	ld h, a                                          ; $7484: $67
	ldh a, [$5f]                                     ; $7485: $f0 $5f
	cp $9e                                           ; $7487: $fe $9e
	rst AddAOntoHL                                          ; $7489: $ef
	ld a, e                                          ; $748a: $7b
	ld e, $7f                                        ; $748b: $1e $7f
	ld c, b                                          ; $748d: $48
	rst SubAFromDE                                          ; $748e: $df
	db $e3                                           ; $748f: $e3
	rst SubAFromDE                                          ; $7490: $df
	inc e                                            ; $7491: $1c
	ld a, e                                          ; $7492: $7b
	ld e, d                                          ; $7493: $5a
	ld e, a                                          ; $7494: $5f
	ldh [c], a                                       ; $7495: $e2
	ld a, a                                          ; $7496: $7f
	db $fd                                           ; $7497: $fd
	sbc h                                            ; $7498: $9c
	ld b, c                                          ; $7499: $41
	nop                                              ; $749a: $00
	inc hl                                           ; $749b: $23
	ld l, a                                          ; $749c: $6f
	ldh a, [$9a]                                     ; $749d: $f0 $9a
	ld [$5515], a                                    ; $749f: $ea $15 $55
	xor d                                            ; $74a2: $aa
	push af                                          ; $74a3: $f5
	ld l, e                                          ; $74a4: $6b
	ld b, b                                          ; $74a5: $40
	sbc b                                            ; $74a6: $98
	push de                                          ; $74a7: $d5
	nop                                              ; $74a8: $00
	and d                                            ; $74a9: $a2
	nop                                              ; $74aa: $00
	ret nz                                           ; $74ab: $c0

	nop                                              ; $74ac: $00
	add b                                            ; $74ad: $80
	ld l, e                                          ; $74ae: $6b
	cpl                                              ; $74af: $2f
	ld e, [hl]                                       ; $74b0: $5e
	sub b                                            ; $74b1: $90
	pop af                                           ; $74b2: $f1
	ld l, a                                          ; $74b3: $6f
	cp d                                             ; $74b4: $ba
	ld c, [hl]                                       ; $74b5: $4e
	add b                                            ; $74b6: $80
	ld a, a                                          ; $74b7: $7f
	ld b, e                                          ; $74b8: $43
	ld a, $f0                                        ; $74b9: $3e $f0
	ld [hl], a                                       ; $74bb: $77
	or b                                             ; $74bc: $b0
	halt                                             ; $74bd: $76
	halt                                             ; $74be: $76
	ld a, [hl]                                       ; $74bf: $7e
	dec a                                            ; $74c0: $3d
	ld a, a                                          ; $74c1: $7f
	dec de                                           ; $74c2: $1b
	ld a, e                                          ; $74c3: $7b
	add hl, de                                       ; $74c4: $19
	sbc e                                            ; $74c5: $9b
	rst $38                                          ; $74c6: $ff
	dec b                                            ; $74c7: $05
	rst $38                                          ; $74c8: $ff
	db $fd                                           ; $74c9: $fd
	ld a, e                                          ; $74ca: $7b
	db $fc                                           ; $74cb: $fc
	rst SubAFromDE                                          ; $74cc: $df
	rst $38                                          ; $74cd: $ff
	sbc h                                            ; $74ce: $9c
	ld e, h                                          ; $74cf: $5c
	rst $38                                          ; $74d0: $ff
	ld hl, sp+$7a                                    ; $74d1: $f8 $7a
	ld de, $ffdf                                     ; $74d3: $11 $df $ff
	sbc [hl]                                         ; $74d6: $9e
	and b                                            ; $74d7: $a0
	ld l, e                                          ; $74d8: $6b
	db $fc                                           ; $74d9: $fc
	sbc h                                            ; $74da: $9c
	ld d, b                                          ; $74db: $50
	nop                                              ; $74dc: $00
	and b                                            ; $74dd: $a0
	ld c, e                                          ; $74de: $4b
	sbc a                                            ; $74df: $9f
	sbc e                                            ; $74e0: $9b
	inc bc                                           ; $74e1: $03
	db $fc                                           ; $74e2: $fc
	rlca                                             ; $74e3: $07
	ld hl, sp+$5f                                    ; $74e4: $f8 $5f
	ret nc                                           ; $74e6: $d0

	ld a, a                                          ; $74e7: $7f
	pop af                                           ; $74e8: $f1
	sbc l                                            ; $74e9: $9d
	cp $02                                           ; $74ea: $fe $02
	ld a, e                                          ; $74ec: $7b
	cp $df                                           ; $74ed: $fe $df
	cp $9e                                           ; $74ef: $fe $9e
	add [hl]                                         ; $74f1: $86
	ld [hl], a                                       ; $74f2: $77
	db $fc                                           ; $74f3: $fc
	db $dd                                           ; $74f4: $dd
	rst $38                                          ; $74f5: $ff
	rst SubAFromDE                                          ; $74f6: $df
	ld bc, $fd9c                                     ; $74f7: $01 $9c $fd
	ld bc, $7b85                                     ; $74fa: $01 $85 $7b
	cp $7f                                           ; $74fd: $fe $7f
	ld a, [$c076]                                    ; $74ff: $fa $76 $c0
	ld a, [hl]                                       ; $7502: $7e
	ld e, e                                          ; $7503: $5b
	sbc e                                            ; $7504: $9b
	cpl                                              ; $7505: $2f
	ret nc                                           ; $7506: $d0

	dec d                                            ; $7507: $15
	ld [$546b], a                                    ; $7508: $ea $6b $54
	db $dd                                           ; $750b: $dd
	rst $38                                          ; $750c: $ff
	ld l, e                                          ; $750d: $6b
	ccf                                              ; $750e: $3f
	ld h, e                                          ; $750f: $63
	ret nz                                           ; $7510: $c0

	ld h, d                                          ; $7511: $62
	ldh a, [$7e]                                     ; $7512: $f0 $7e
	ld a, [bc]                                       ; $7514: $0a
	ld a, a                                          ; $7515: $7f
	ld l, h                                          ; $7516: $6c
	sbc l                                            ; $7517: $9d
	jr nz, jr_012_751a                               ; $7518: $20 $00

jr_012_751a:
	ld d, d                                          ; $751a: $52
	nop                                              ; $751b: $00
	sub $01                                          ; $751c: $d6 $01
	add b                                            ; $751e: $80
	cpl                                              ; $751f: $2f
	ld h, $24                                        ; $7520: $26 $24
	ld bc, $1601                                     ; $7522: $01 $01 $16
	dec d                                            ; $7525: $15
	rrca                                             ; $7526: $0f
	db $10                                           ; $7527: $10
	inc de                                           ; $7528: $13
	inc hl                                           ; $7529: $23
	inc d                                            ; $752a: $14
	ld a, [de]                                       ; $752b: $1a
	ld e, $21                                        ; $752c: $1e $21
	inc c                                            ; $752e: $0c
	dec c                                            ; $752f: $0d
	inc hl                                           ; $7530: $23
	ld c, $23                                        ; $7531: $0e $23
	inc hl                                           ; $7533: $23
	dec h                                            ; $7534: $25
	add hl, hl                                       ; $7535: $29
	inc hl                                           ; $7536: $23
	ld de, $1712                                     ; $7537: $11 $12 $17
	jr jr_012_7555                                   ; $753a: $18 $19

	dec de                                           ; $753c: $1b
	inc e                                            ; $753d: $1c
	sub c                                            ; $753e: $91
	dec e                                            ; $753f: $1d
	rra                                              ; $7540: $1f
	jr nz, jr_012_7565                               ; $7541: $20 $22

	daa                                              ; $7543: $27
	jr z, jr_012_7570                                ; $7544: $28 $2a

	dec hl                                           ; $7546: $2b
	inc l                                            ; $7547: $2c
	dec l                                            ; $7548: $2d
	ld l, $0b                                        ; $7549: $2e $0b
	ld a, [bc]                                       ; $754b: $0a
	add hl, bc                                       ; $754c: $09
	ld l, e                                          ; $754d: $6b
	cp $9d                                           ; $754e: $fe $9d
	rlca                                             ; $7550: $07
	ld [$fe6b], sp                                   ; $7551: $08 $6b $fe
	sbc l                                            ; $7554: $9d

jr_012_7555:
	rlca                                             ; $7555: $07
	ld b, $6b                                        ; $7556: $06 $6b
	cp $9d                                           ; $7558: $fe $9d
	rlca                                             ; $755a: $07
	dec b                                            ; $755b: $05
	ld l, e                                          ; $755c: $6b
	cp $9d                                           ; $755d: $fe $9d
	rlca                                             ; $755f: $07
	inc b                                            ; $7560: $04
	ld l, e                                          ; $7561: $6b
	cp $9d                                           ; $7562: $fe $9d
	ld [bc], a                                       ; $7564: $02

jr_012_7565:
	nop                                              ; $7565: $00
	ld a, e                                          ; $7566: $7b
	cp $9e                                           ; $7567: $fe $9e
	inc bc                                           ; $7569: $03
	ld a, e                                          ; $756a: $7b
	db $fc                                           ; $756b: $fc
	dec bc                                           ; $756c: $0b
	nop                                              ; $756d: $00
	rst GetHLinHL                                          ; $756e: $cf
	ld [hl], a                                       ; $756f: $77

jr_012_7570:
	jp c, $9d22                                      ; $7570: $da $22 $9d

	ld [hl], d                                       ; $7573: $72
	ld [hl+], a                                      ; $7574: $22
	add $44                                          ; $7575: $c6 $44
	ld d, a                                          ; $7577: $57
	dec b                                            ; $7578: $05
	adc l                                            ; $7579: $8d
	rst $38                                          ; $757a: $ff
	db $fc                                           ; $757b: $fc
	rst $38                                          ; $757c: $ff
	jr @+$01                                         ; $757d: $18 $ff

	jr nc, @+$01                                     ; $757f: $30 $ff

	ld h, b                                          ; $7581: $60
	rst $38                                          ; $7582: $ff
	ret nz                                           ; $7583: $c0

	ei                                               ; $7584: $fb
	add c                                            ; $7585: $81
	rst FarCall                                          ; $7586: $f7
	inc bc                                           ; $7587: $03
	rrca                                             ; $7588: $0f
	ld b, $ff                                        ; $7589: $06 $ff
	nop                                              ; $758b: $00
	ld c, e                                          ; $758c: $4b
	cp $9e                                           ; $758d: $fe $9e
	rrca                                             ; $758f: $0f
	ld h, a                                          ; $7590: $67
	ldh [$99], a                                     ; $7591: $e0 $99
	rst $38                                          ; $7593: $ff
	add c                                            ; $7594: $81
	rst $38                                          ; $7595: $ff
	inc bc                                           ; $7596: $03
	rst $38                                          ; $7597: $ff
	ld b, $5f                                        ; $7598: $06 $5f
	ret nc                                           ; $759a: $d0

	ld [hl], a                                       ; $759b: $77
	ldh a, [$9b]                                     ; $759c: $f0 $9b
	rra                                              ; $759e: $1f
	ld b, $1f                                        ; $759f: $06 $1f
	inc c                                            ; $75a1: $0c
	ld a, e                                          ; $75a2: $7b
	ldh a, [$9b]                                     ; $75a3: $f0 $9b
	ldh a, [rIE]                                     ; $75a5: $f0 $ff
	ld h, b                                          ; $75a7: $60
	db $fd                                           ; $75a8: $fd
	ld a, e                                          ; $75a9: $7b
	ret nz                                           ; $75aa: $c0

	sbc [hl]                                         ; $75ab: $9e
	add a                                            ; $75ac: $87
	ld a, e                                          ; $75ad: $7b
	ldh [$67], a                                     ; $75ae: $e0 $67
	ldh a, [rPCM34]                                  ; $75b0: $f0 $77
	ldh [$7f], a                                     ; $75b2: $e0 $7f
	or b                                             ; $75b4: $b0
	sbc h                                            ; $75b5: $9c
	rst AddAOntoHL                                          ; $75b6: $ef
	ld b, $3f                                        ; $75b7: $06 $3f
	ld c, e                                          ; $75b9: $4b
	ldh a, [$9e]                                     ; $75ba: $f0 $9e
	cp $77                                           ; $75bc: $fe $77
	ldh a, [$9e]                                     ; $75be: $f0 $9e
	ccf                                              ; $75c0: $3f
	ld e, a                                          ; $75c1: $5f
	or b                                             ; $75c2: $b0
	ld d, a                                          ; $75c3: $57
	ret nc                                           ; $75c4: $d0

	sbc d                                            ; $75c5: $9a
	rst AddAOntoHL                                          ; $75c6: $ef
	inc bc                                           ; $75c7: $03
	rst SubAFromDE                                          ; $75c8: $df
	ld b, $ff                                        ; $75c9: $06 $ff
	ld c, e                                          ; $75cb: $4b
	ldh [$73], a                                     ; $75cc: $e0 $73
	ldh a, [$5b]                                     ; $75ce: $f0 $5b
	ret nz                                           ; $75d0: $c0

	ld l, a                                          ; $75d1: $6f
	ld l, e                                          ; $75d2: $6b
	db $dd                                           ; $75d3: $dd
	rst $38                                          ; $75d4: $ff
	sbc [hl]                                         ; $75d5: $9e
	ldh [$7b], a                                     ; $75d6: $e0 $7b
	cp $de                                           ; $75d8: $fe $de
	rst $38                                          ; $75da: $ff
	sbc e                                            ; $75db: $9b
	nop                                              ; $75dc: $00
	rst SubAFromHL                                          ; $75dd: $d7
	nop                                              ; $75de: $00
	and d                                            ; $75df: $a2
	db $fc                                           ; $75e0: $fc
	ld a, a                                          ; $75e1: $7f
	push hl                                          ; $75e2: $e5
	sbc [hl]                                         ; $75e3: $9e
	ld [$77fe], sp                                   ; $75e4: $08 $fe $77
	pop hl                                           ; $75e7: $e1
	sub h                                            ; $75e8: $94
	ld a, [hl]                                       ; $75e9: $7e
	nop                                              ; $75ea: $00
	dec d                                            ; $75eb: $15
	nop                                              ; $75ec: $00
	inc bc                                           ; $75ed: $03
	nop                                              ; $75ee: $00
	add a                                            ; $75ef: $87
	nop                                              ; $75f0: $00
	ld c, a                                          ; $75f1: $4f
	nop                                              ; $75f2: $00
	ccf                                              ; $75f3: $3f
	ld [hl], e                                       ; $75f4: $73
	ldh a, [$9c]                                     ; $75f5: $f0 $9c
	xor a                                            ; $75f7: $af
	nop                                              ; $75f8: $00
	ld a, a                                          ; $75f9: $7f
	ld h, e                                          ; $75fa: $63
	jr nc, jr_012_767c                               ; $75fb: $30 $7f

	or l                                             ; $75fd: $b5
	ld a, a                                          ; $75fe: $7f
	cp $df                                           ; $75ff: $fe $df
	rst $38                                          ; $7601: $ff
	rst SubAFromDE                                          ; $7602: $df
	rlca                                             ; $7603: $07
	ld a, e                                          ; $7604: $7b
	rst JumpTable                                          ; $7605: $c7
	ld [hl], a                                       ; $7606: $77
	jp nc, $bf77                                     ; $7607: $d2 $77 $bf

	ld a, e                                          ; $760a: $7b
	ld a, [$fc6f]                                    ; $760b: $fa $6f $fc
	ld [hl], a                                       ; $760e: $77
	ld a, [$d49b]                                    ; $760f: $fa $9b $d4
	dec hl                                           ; $7612: $2b

jr_012_7613:
	ld [$7715], a                                    ; $7613: $ea $15 $77
	sbc a                                            ; $7616: $9f
	sbc h                                            ; $7617: $9c
	dec b                                            ; $7618: $05
	rst $38                                          ; $7619: $ff
	db $fd                                           ; $761a: $fd
	ld a, e                                          ; $761b: $7b
	db $fc                                           ; $761c: $fc
	sbc $ff                                          ; $761d: $de $ff
	add b                                            ; $761f: $80
	jr nc, @-$0f                                     ; $7620: $30 $ef

	jr z, jr_012_7613                                ; $7622: $28 $ef

	jr c, @+$01                                      ; $7624: $38 $ff

	ld hl, sp+$7f                                    ; $7626: $f8 $7f
	ld a, b                                          ; $7628: $78
	rrca                                             ; $7629: $0f
	xor h                                            ; $762a: $ac
	ld c, e                                          ; $762b: $4b
	sbc $6f                                          ; $762c: $de $6f
	rst $38                                          ; $762e: $ff
	rst GetHLinHL                                          ; $762f: $cf
	rst $38                                          ; $7630: $ff
	or b                                             ; $7631: $b0
	rst $38                                          ; $7632: $ff
	ld a, a                                          ; $7633: $7f
	rst $38                                          ; $7634: $ff
	ret nz                                           ; $7635: $c0

	cp $ff                                           ; $7636: $fe $ff
	rst $38                                          ; $7638: $ff
	add b                                            ; $7639: $80
	ldh [rP1], a                                     ; $763a: $e0 $00
	ret nz                                           ; $763c: $c0

	rst $38                                          ; $763d: $ff
	rst $38                                          ; $763e: $ff
	rst SubAFromDE                                          ; $763f: $df
	add hl, bc                                       ; $7640: $09
	rst SubAFromDE                                          ; $7641: $df
	pop af                                           ; $7642: $f1
	rst SubAFromDE                                          ; $7643: $df
	ld bc, $03df                                     ; $7644: $01 $df $03
	rst SubAFromDE                                          ; $7647: $df
	cp $77                                           ; $7648: $fe $77
	ld a, [$ffdf]                                    ; $764a: $fa $df $ff
	rst SubAFromDE                                          ; $764d: $df
	adc b                                            ; $764e: $88
	rst SubAFromDE                                          ; $764f: $df
	adc a                                            ; $7650: $8f
	db $dd                                           ; $7651: $dd
	ret nz                                           ; $7652: $c0

	rst SubAFromDE                                          ; $7653: $df
	ld a, a                                          ; $7654: $7f
	ld b, a                                          ; $7655: $47
	and b                                            ; $7656: $a0
	rst SubAFromDE                                          ; $7657: $df
	ld [bc], a                                       ; $7658: $02
	sbc b                                            ; $7659: $98
	inc b                                            ; $765a: $04
	db $fc                                           ; $765b: $fc
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	xor b                                            ; $765e: $a8
	nop                                              ; $765f: $00
	ld e, l                                          ; $7660: $5d
	ld e, d                                          ; $7661: $5a
	and d                                            ; $7662: $a2
	ld a, a                                          ; $7663: $7f
	ld b, h                                          ; $7664: $44
	sbc [hl]                                         ; $7665: $9e
	cp a                                             ; $7666: $bf
	ld [hl], e                                       ; $7667: $73
	ld hl, sp-$64                                    ; $7668: $f8 $9c
	ld a, [$d500]                                    ; $766a: $fa $00 $d5
	ld a, e                                          ; $766d: $7b
	ld a, [hl-]                                      ; $766e: $3a
	sbc h                                            ; $766f: $9c
	ld b, b                                          ; $7670: $40
	nop                                              ; $7671: $00
	add b                                            ; $7672: $80
	ld h, e                                          ; $7673: $63
	and $9e                                          ; $7674: $e6 $9e
	ld l, a                                          ; $7676: $6f
	ld a, e                                          ; $7677: $7b
	and $9c                                          ; $7678: $e6 $9c
	rla                                              ; $767a: $17
	nop                                              ; $767b: $00

jr_012_767c:
	ld a, [bc]                                       ; $767c: $0a
	ld a, e                                          ; $767d: $7b
	ret z                                            ; $767e: $c8

	rst SubAFromDE                                          ; $767f: $df
	add b                                            ; $7680: $80
	ld h, e                                          ; $7681: $63
	ld h, b                                          ; $7682: $60
	ld [hl], e                                       ; $7683: $73
	or c                                             ; $7684: $b1
	ld h, a                                          ; $7685: $67
	cp $95                                           ; $7686: $fe $95
	rst SubAFromDE                                          ; $7688: $df
	nop                                              ; $7689: $00
	push af                                          ; $768a: $f5
	nop                                              ; $768b: $00
	xor d                                            ; $768c: $aa
	nop                                              ; $768d: $00
	rst $38                                          ; $768e: $ff
	ld bc, $03fe                                     ; $768f: $01 $fe $03
	ld [hl], e                                       ; $7692: $73
	cp $88                                           ; $7693: $fe $88
	rlca                                             ; $7695: $07
	db $fd                                           ; $7696: $fd
	rrca                                             ; $7697: $0f
	ld sp, hl                                        ; $7698: $f9
	rrca                                             ; $7699: $0f
	ei                                               ; $769a: $fb
	rra                                              ; $769b: $1f
	ld b, e                                          ; $769c: $43
	rst $38                                          ; $769d: $ff
	ld d, a                                          ; $769e: $57
	cp $8f                                           ; $769f: $fe $8f
	call c, $e88f                                    ; $76a1: $dc $8f $e8
	xor a                                            ; $76a4: $af
	xor h                                            ; $76a5: $ac
	xor a                                            ; $76a6: $af
	cp h                                             ; $76a7: $bc
	xor a                                            ; $76a8: $af
	cp h                                             ; $76a9: $bc
	rra                                              ; $76aa: $1f
	db $fc                                           ; $76ab: $fc
	ld e, a                                          ; $76ac: $5f
	ret nc                                           ; $76ad: $d0

	sbc [hl]                                         ; $76ae: $9e
	rst AddAOntoHL                                          ; $76af: $ef
	ld a, e                                          ; $76b0: $7b
	sub d                                            ; $76b1: $92
	sbc [hl]                                         ; $76b2: $9e
	ld [$224a], a                                    ; $76b3: $ea $4a $22
	ld a, a                                          ; $76b6: $7f
	xor $57                                          ; $76b7: $ee $57
	db $f4                                           ; $76b9: $f4
	sbc h                                            ; $76ba: $9c
	ld c, d                                          ; $76bb: $4a
	nop                                              ; $76bc: $00
	add c                                            ; $76bd: $81
	ld [hl], d                                       ; $76be: $72
	cp a                                             ; $76bf: $bf
	sbc h                                            ; $76c0: $9c
	rra                                              ; $76c1: $1f
	rst $38                                          ; $76c2: $ff
	ldh a, [$7a]                                     ; $76c3: $f0 $7a
	db $db                                           ; $76c5: $db
	sbc $80                                          ; $76c6: $de $80
	sbc $ff                                          ; $76c8: $de $ff
	sbc [hl]                                         ; $76ca: $9e
	ld a, [hl+]                                      ; $76cb: $2a
	ld a, e                                          ; $76cc: $7b
	ld l, d                                          ; $76cd: $6a
	push hl                                          ; $76ce: $e5
	sbc c                                            ; $76cf: $99
	ld d, b                                          ; $76d0: $50
	xor a                                            ; $76d1: $af
	xor d                                            ; $76d2: $aa
	ld d, l                                          ; $76d3: $55
	ld d, l                                          ; $76d4: $55
	xor d                                            ; $76d5: $aa
	ld a, e                                          ; $76d6: $7b
	jp nc, $ffde                                     ; $76d7: $d2 $de $ff

	ld [hl], a                                       ; $76da: $77
	db $fc                                           ; $76db: $fc
	sbc [hl]                                         ; $76dc: $9e
	scf                                              ; $76dd: $37
	ld a, e                                          ; $76de: $7b
	cp d                                             ; $76df: $ba
	sbc [hl]                                         ; $76e0: $9e
	db $10                                           ; $76e1: $10
	or $6b                                           ; $76e2: $f6 $6b
	and d                                            ; $76e4: $a2
	sbc h                                            ; $76e5: $9c
	ccf                                              ; $76e6: $3f
	ret nz                                           ; $76e7: $c0

	rst GetHLinHL                                          ; $76e8: $cf
	ld a, d                                          ; $76e9: $7a
	ret                                              ; $76ea: $c9


	sub e                                            ; $76eb: $93
	ld bc, $01ff                                     ; $76ec: $01 $ff $01
	ld d, $1f                                        ; $76ef: $16 $1f
	ld a, $3f                                        ; $76f1: $3e $3f
	rlca                                             ; $76f3: $07
	rlca                                             ; $76f4: $07
	inc b                                            ; $76f5: $04
	rlca                                             ; $76f6: $07
	ld b, $6b                                        ; $76f7: $06 $6b
	cp $8c                                           ; $76f9: $fe $8c
	inc d                                            ; $76fb: $14
	db $fc                                           ; $76fc: $fc
	ld [hl], h                                       ; $76fd: $74
	db $fc                                           ; $76fe: $fc
	db $e4                                           ; $76ff: $e4
	db $fc                                           ; $7700: $fc
	xor [hl]                                         ; $7701: $ae
	cp [hl]                                          ; $7702: $be
	sub [hl]                                         ; $7703: $96
	sbc [hl]                                         ; $7704: $9e
	sub [hl]                                         ; $7705: $96
	sbc [hl]                                         ; $7706: $9e
	adc d                                            ; $7707: $8a
	adc [hl]                                         ; $7708: $8e
	db $eb                                           ; $7709: $eb
	rst AddAOntoHL                                          ; $770a: $ef
	ld d, b                                          ; $770b: $50
	nop                                              ; $770c: $00

Call_012_770d:
	and b                                            ; $770d: $a0
	ldh a, [c]                                       ; $770e: $f2
	rst SubAFromDE                                          ; $770f: $df
	ei                                               ; $7710: $fb
	sbc l                                            ; $7711: $9d
	inc b                                            ; $7712: $04
	cp a                                             ; $7713: $bf
	ld l, a                                          ; $7714: $6f
	ld [$209d], sp                                   ; $7715: $08 $9d $20
	rst SubAFromDE                                          ; $7718: $df
	ld a, e                                          ; $7719: $7b
	ei                                               ; $771a: $fb
	halt                                             ; $771b: $76
	or $9e                                           ; $771c: $f6 $9e
	and b                                            ; $771e: $a0
	ld e, a                                          ; $771f: $5f
	ldh a, [$df]                                     ; $7720: $f0 $df
	ld hl, sp-$65                                    ; $7722: $f8 $9b
	rlca                                             ; $7724: $07
	adc a                                            ; $7725: $8f
	nop                                              ; $7726: $00
	ld b, h                                          ; $7727: $44
	ld e, a                                          ; $7728: $5f
	ldh a, [$df]                                     ; $7729: $f0 $df
	ld a, c                                          ; $772b: $79
	sbc e                                            ; $772c: $9b
	add h                                            ; $772d: $84
	adc [hl]                                         ; $772e: $8e
	nop                                              ; $772f: $00
	ld [bc], a                                       ; $7730: $02
	ld l, a                                          ; $7731: $6f
	ldh a, [rPCM34]                                  ; $7732: $f0 $77
	add a                                            ; $7734: $87
	rst SubAFromDE                                          ; $7735: $df
	ld a, c                                          ; $7736: $79
	sbc e                                            ; $7737: $9b
	add [hl]                                         ; $7738: $86
	and [hl]                                         ; $7739: $a6
	nop                                              ; $773a: $00
	inc d                                            ; $773b: $14
	ld e, a                                          ; $773c: $5f
	ldh a, [$99]                                     ; $773d: $f0 $99
	ld l, c                                          ; $773f: $69
	ld a, c                                          ; $7740: $79
	add [hl]                                         ; $7741: $86
	sub [hl]                                         ; $7742: $96
	nop                                              ; $7743: $00
	inc l                                            ; $7744: $2c
	ld e, a                                          ; $7745: $5f
	ldh a, [$df]                                     ; $7746: $f0 $df
	db $ec                                           ; $7748: $ec
	sbc e                                            ; $7749: $9b
	inc de                                           ; $774a: $13
	or e                                             ; $774b: $b3
	nop                                              ; $774c: $00
	or e                                             ; $774d: $b3
	ld e, a                                          ; $774e: $5f
	ldh a, [$df]                                     ; $774f: $f0 $df
	ccf                                              ; $7751: $3f
	sbc e                                            ; $7752: $9b
	ret nz                                           ; $7753: $c0

	ret c                                            ; $7754: $d8

	ld bc, $de65                                     ; $7755: $01 $65 $de
	rst $38                                          ; $7758: $ff
	ld a, e                                          ; $7759: $7b
	ld d, h                                          ; $775a: $54
	ld [hl], a                                       ; $775b: $77
	ldh a, [$9b]                                     ; $775c: $f0 $9b
	ld hl, sp-$01                                    ; $775e: $f8 $ff
	cp $fe                                           ; $7760: $fe $fe
	ld l, [hl]                                       ; $7762: $6e
	ld [hl-], a                                      ; $7763: $32
	halt                                             ; $7764: $76
	pop af                                           ; $7765: $f1

jr_012_7766:
	rst SubAFromDE                                          ; $7766: $df
	sbc b                                            ; $7767: $98
	ld a, [hl]                                       ; $7768: $7e
	xor a                                            ; $7769: $af
	sbc l                                            ; $776a: $9d
	ld e, $1f                                        ; $776b: $1e $1f
	ld e, l                                          ; $776d: $5d

jr_012_776e:
	jp nc, $09df                                     ; $776e: $d2 $df $09

	rst SubAFromDE                                          ; $7771: $df
	rst SubAFromBC                                          ; $7772: $e7
	sbc e                                            ; $7773: $9b
	jr c, jr_012_776e                                ; $7774: $38 $f8

	ld [hl], b                                       ; $7776: $70
	pop af                                           ; $7777: $f1
	sbc $ff                                          ; $7778: $de $ff
	ld a, [hl]                                       ; $777a: $7e
	adc $75                                          ; $777b: $ce $75
	ld l, a                                          ; $777d: $6f
	ld a, a                                          ; $777e: $7f
	ld a, [$e679]                                    ; $777f: $fa $79 $e6
	ld a, e                                          ; $7782: $7b
	db $fc                                           ; $7783: $fc
	ld h, b                                          ; $7784: $60
	ldh a, [$dc]                                     ; $7785: $f0 $dc
	rst $38                                          ; $7787: $ff
	ld d, l                                          ; $7788: $55
	jr nc, jr_012_7766                               ; $7789: $30 $db

	rst $38                                          ; $778b: $ff
	sbc h                                            ; $778c: $9c
	cp $fd                                           ; $778d: $fe $fd
	ldh a, [$6f]                                     ; $778f: $f0 $6f
	ldh [$df], a                                     ; $7791: $e0 $df
	db $fd                                           ; $7793: $fd
	sbc e                                            ; $7794: $9b
	ld d, $96                                        ; $7795: $16 $96
	jp c, $dcda                                      ; $7797: $da $da $dc

	rst $38                                          ; $779a: $ff
	ld [hl], e                                       ; $779b: $73
	ldh [$7f], a                                     ; $779c: $e0 $7f
	cp a                                             ; $779e: $bf
	ld a, l                                          ; $779f: $7d
	adc b                                            ; $77a0: $88
	sbc $ff                                          ; $77a1: $de $ff
	sbc h                                            ; $77a3: $9c
	ld a, a                                          ; $77a4: $7f
	db $fd                                           ; $77a5: $fd
	pop bc                                           ; $77a6: $c1
	ld l, e                                          ; $77a7: $6b
	ret nz                                           ; $77a8: $c0

	ld a, h                                          ; $77a9: $7c
	add b                                            ; $77aa: $80
	sbc [hl]                                         ; $77ab: $9e
	dec de                                           ; $77ac: $1b
	inc h                                            ; $77ad: $24
	ret nc                                           ; $77ae: $d0

	sbc l                                            ; $77af: $9d
	rst FarCall                                          ; $77b0: $f7
	add e                                            ; $77b1: $83
	ld a, e                                          ; $77b2: $7b
	ld h, e                                          ; $77b3: $63
	ld d, h                                          ; $77b4: $54
	ret nc                                           ; $77b5: $d0

	sbc $ff                                          ; $77b6: $de $ff
	ld d, a                                          ; $77b8: $57
	ldh [$dd], a                                     ; $77b9: $e0 $dd
	rst $38                                          ; $77bb: $ff
	sbc e                                            ; $77bc: $9b
	ld [bc], a                                       ; $77bd: $02
	cp $17                                           ; $77be: $fe $17
	db $fc                                           ; $77c0: $fc
	ld a, d                                          ; $77c1: $7a
	pop bc                                           ; $77c2: $c1
	ld l, l                                          ; $77c3: $6d
	add hl, bc                                       ; $77c4: $09
	sbc $ff                                          ; $77c5: $de $ff
	sub h                                            ; $77c7: $94
	inc a                                            ; $77c8: $3c
	rst $38                                          ; $77c9: $ff
	add hl, de                                       ; $77ca: $19
	rst $38                                          ; $77cb: $ff
	dec sp                                           ; $77cc: $3b
	rst $38                                          ; $77cd: $ff
	ld [hl], e                                       ; $77ce: $73
	rst $38                                          ; $77cf: $ff
	rst SubAFromBC                                          ; $77d0: $e7
	rst $38                                          ; $77d1: $ff
	jp $df7b                                         ; $77d2: $c3 $7b $df


	ld a, a                                          ; $77d5: $7f
	db $db                                           ; $77d6: $db
	sbc e                                            ; $77d7: $9b
	db $fc                                           ; $77d8: $fc
	rrca                                             ; $77d9: $0f
	cp $1f                                           ; $77da: $fe $1f
	ld a, e                                          ; $77dc: $7b
	ret nz                                           ; $77dd: $c0

	sbc h                                            ; $77de: $9c
	ld h, e                                          ; $77df: $63
	rst $38                                          ; $77e0: $ff
	pop bc                                           ; $77e1: $c1
	ld a, d                                          ; $77e2: $7a
	ld b, c                                          ; $77e3: $41
	ld a, a                                          ; $77e4: $7f
	and b                                            ; $77e5: $a0
	add a                                            ; $77e6: $87
	rlca                                             ; $77e7: $07
	add [hl]                                         ; $77e8: $86
	ld a, [hl]                                       ; $77e9: $7e
	ld d, e                                          ; $77ea: $53
	xor [hl]                                         ; $77eb: $ae
	xor e                                            ; $77ec: $ab
	ld d, a                                          ; $77ed: $57
	pop de                                           ; $77ee: $d1
	cpl                                              ; $77ef: $2f
	ld a, c                                          ; $77f0: $79
	add a                                            ; $77f1: $87
	ld d, l                                          ; $77f2: $55
	xor e                                            ; $77f3: $ab
	add hl, hl                                       ; $77f4: $29
	rst SubAFromHL                                          ; $77f5: $d7
	inc bc                                           ; $77f6: $03
	rst $38                                          ; $77f7: $ff
	ld a, [bc]                                       ; $77f8: $0a
	push af                                          ; $77f9: $f5
	ld bc, $02fe                                     ; $77fa: $01 $fe $02
	db $fd                                           ; $77fd: $fd
	nop                                              ; $77fe: $00

Jump_012_77ff:
	ld a, e                                          ; $77ff: $7b
	db $e3                                           ; $7800: $e3
	ld a, a                                          ; $7801: $7f
	inc hl                                           ; $7802: $23
	ld a, [hl]                                       ; $7803: $7e
	db $f4                                           ; $7804: $f4
	sub b                                            ; $7805: $90
	ld a, h                                          ; $7806: $7c
	rst $38                                          ; $7807: $ff
	ldh a, [$3f]                                     ; $7808: $f0 $3f
	ldh a, [$1f]                                     ; $780a: $f0 $1f
	ld hl, sp+$3f                                    ; $780c: $f8 $3f
	cp $6f                                           ; $780e: $fe $6f
	rst $38                                          ; $7810: $ff
	rst JumpTable                                          ; $7811: $c7
	rst $38                                          ; $7812: $ff
	adc a                                            ; $7813: $8f
	ei                                               ; $7814: $fb
	ld a, c                                          ; $7815: $79
	adc [hl]                                         ; $7816: $8e
	ld a, a                                          ; $7817: $7f
	ld h, c                                          ; $7818: $61
	ld a, a                                          ; $7819: $7f
	call c, $d57e                                    ; $781a: $dc $7e $d5
	ld a, a                                          ; $781d: $7f
	jp $bd7f                                         ; $781e: $c3 $7f $bd


	sbc c                                            ; $7821: $99
	inc c                                            ; $7822: $0c
	db $fc                                           ; $7823: $fc
	dec de                                           ; $7824: $1b
	ei                                               ; $7825: $fb
	inc a                                            ; $7826: $3c
	db $fc                                           ; $7827: $fc
	ld [hl], b                                       ; $7828: $70
	ld d, b                                          ; $7829: $50
	ld a, a                                          ; $782a: $7f
	adc a                                            ; $782b: $8f
	ld a, d                                          ; $782c: $7a
	db $f4                                           ; $782d: $f4
	sub a                                            ; $782e: $97
	ccf                                              ; $782f: $3f
	ld hl, $233f                                     ; $7830: $21 $3f $23
	rst $38                                          ; $7833: $ff
	and $ff                                          ; $7834: $e6 $ff
	db $fc                                           ; $7836: $fc
	ld a, e                                          ; $7837: $7b
	ret                                              ; $7838: $c9


	halt                                             ; $7839: $76
	db $e4                                           ; $783a: $e4
	ld a, e                                          ; $783b: $7b
	ld [hl], b                                       ; $783c: $70
	sbc h                                            ; $783d: $9c
	rst AddAOntoHL                                          ; $783e: $ef
	inc bc                                           ; $783f: $03
	rst SubAFromDE                                          ; $7840: $df
	ld h, a                                          ; $7841: $67
	nop                                              ; $7842: $00
	ld a, c                                          ; $7843: $79
	di                                               ; $7844: $f3
	ld a, a                                          ; $7845: $7f
	adc $7f                                          ; $7846: $ce $7f
	add a                                            ; $7848: $87
	ld a, a                                          ; $7849: $7f
	add e                                            ; $784a: $83
	ld a, a                                          ; $784b: $7f
	ld a, [$ffdd]                                    ; $784c: $fa $dd $ff
	ld a, a                                          ; $784f: $7f
	ret nz                                           ; $7850: $c0

	ld l, l                                          ; $7851: $6d
	reti                                             ; $7852: $d9


	sbc d                                            ; $7853: $9a
	inc b                                            ; $7854: $04
	ei                                               ; $7855: $fb
	ldh [$7f], a                                     ; $7856: $e0 $7f
	di                                               ; $7858: $f3
	ld a, e                                          ; $7859: $7b
	push hl                                          ; $785a: $e5
	sbc l                                            ; $785b: $9d
	rst FarCall                                          ; $785c: $f7
	ld a, a                                          ; $785d: $7f
	ld a, e                                          ; $785e: $7b
	cp a                                             ; $785f: $bf
	sbc [hl]                                         ; $7860: $9e
	cp a                                             ; $7861: $bf
	ld a, e                                          ; $7862: $7b
	sub h                                            ; $7863: $94
	ld a, e                                          ; $7864: $7b
	xor c                                            ; $7865: $a9
	ld e, e                                          ; $7866: $5b
	db $10                                           ; $7867: $10
	sbc h                                            ; $7868: $9c
	inc bc                                           ; $7869: $03
	rst AddAOntoHL                                          ; $786a: $ef
	ld b, $5d                                        ; $786b: $06 $5d
	ld d, b                                          ; $786d: $50
	sbc [hl]                                         ; $786e: $9e
	cp $78                                           ; $786f: $fe $78
	call z, $209e                                    ; $7871: $cc $9e $20
	ld l, e                                          ; $7874: $6b
	db $f4                                           ; $7875: $f4
	ld h, h                                          ; $7876: $64
	ret nz                                           ; $7877: $c0

	ld h, l                                          ; $7878: $65
	sub b                                            ; $7879: $90
	ld a, [hl]                                       ; $787a: $7e
	ld d, c                                          ; $787b: $51
	sbc d                                            ; $787c: $9a
	sbc a                                            ; $787d: $9f
	nop                                              ; $787e: $00
	cpl                                              ; $787f: $2f
	nop                                              ; $7880: $00
	dec e                                            ; $7881: $1d
	ld a, b                                          ; $7882: $78
	ret nz                                           ; $7883: $c0

	rst SubAFromDE                                          ; $7884: $df
	rst AddAOntoHL                                          ; $7885: $ef
	rst SubAFromDE                                          ; $7886: $df
	and [hl]                                         ; $7887: $a6
	rst SubAFromDE                                          ; $7888: $df
	db $d3                                           ; $7889: $d3
	sbc l                                            ; $788a: $9d
	jp hl                                            ; $788b: $e9


	ld l, c                                          ; $788c: $69
	halt                                             ; $788d: $76
	and b                                            ; $788e: $a0
	ld [hl], a                                       ; $788f: $77
	add b                                            ; $7890: $80
	sbc b                                            ; $7891: $98
	ld [$1cff], sp                                   ; $7892: $08 $ff $1c
	rst $38                                          ; $7895: $ff
	ld [hl-], a                                      ; $7896: $32

jr_012_7897:
	rst $38                                          ; $7897: $ff
	ld h, c                                          ; $7898: $61
	ld a, e                                          ; $7899: $7b
	xor l                                            ; $789a: $ad
	sbc c                                            ; $789b: $99
	db $fc                                           ; $789c: $fc
	rst SubAFromDE                                          ; $789d: $df
	cp $87                                           ; $789e: $fe $87
	rst $38                                          ; $78a0: $ff
	rlca                                             ; $78a1: $07
	ld d, h                                          ; $78a2: $54
	ldh a, [c]                                       ; $78a3: $f2
	ld a, a                                          ; $78a4: $7f
	add hl, de                                       ; $78a5: $19
	ld a, b                                          ; $78a6: $78
	or b                                             ; $78a7: $b0
	ld l, e                                          ; $78a8: $6b
	or b                                             ; $78a9: $b0
	sbc h                                            ; $78aa: $9c
	db $f4                                           ; $78ab: $f4
	nop                                              ; $78ac: $00
	add sp, $7b                                      ; $78ad: $e8 $7b
	or b                                             ; $78af: $b0
	sbc [hl]                                         ; $78b0: $9e
	and h                                            ; $78b1: $a4
	ld a, c                                          ; $78b2: $79
	or l                                             ; $78b3: $b5
	sbc b                                            ; $78b4: $98
	add d                                            ; $78b5: $82
	rst $38                                          ; $78b6: $ff
	ld [bc], a                                       ; $78b7: $02
	rst $38                                          ; $78b8: $ff
	add a                                            ; $78b9: $87
	rst $38                                          ; $78ba: $ff
	rst SubAFromDE                                          ; $78bb: $df
	ld l, d                                          ; $78bc: $6a
	ld c, b                                          ; $78bd: $48
	sub h                                            ; $78be: $94
	daa                                              ; $78bf: $27
	rst SubAFromBC                                          ; $78c0: $e7
	db $10                                           ; $78c1: $10
	ldh a, [rAUD3LEN]                                ; $78c2: $f0 $1b
	ei                                               ; $78c4: $fb
	rra                                              ; $78c5: $1f
	rst $38                                          ; $78c6: $ff
	ld [$05f8], sp                                   ; $78c7: $08 $f8 $05
	ld [hl], d                                       ; $78ca: $72
	ld d, a                                          ; $78cb: $57
	ld a, a                                          ; $78cc: $7f
	ld l, c                                          ; $78cd: $69
	sub [hl]                                         ; $78ce: $96
	ld [hl], b                                       ; $78cf: $70
	cp a                                             ; $78d0: $bf
	cp b                                             ; $78d1: $b8
	ld c, a                                          ; $78d2: $4f
	ld c, d                                          ; $78d3: $4a
	or a                                             ; $78d4: $b7
	nop                                              ; $78d5: $00
	rst $38                                          ; $78d6: $ff
	add sp, $7b                                      ; $78d7: $e8 $7b
	rst JumpTable                                          ; $78d9: $c7
	ld a, [hl]                                       ; $78da: $7e
	db $f4                                           ; $78db: $f4
	ld a, [hl]                                       ; $78dc: $7e
	xor h                                            ; $78dd: $ac
	sub [hl]                                         ; $78de: $96
	add d                                            ; $78df: $82
	db $fd                                           ; $78e0: $fd
	sub c                                            ; $78e1: $91
	cp $90                                           ; $78e2: $fe $90
	rst $38                                          ; $78e4: $ff
	adc b                                            ; $78e5: $88
	rst $38                                          ; $78e6: $ff
	adc d                                            ; $78e7: $8a
	ld a, e                                          ; $78e8: $7b
	db $e4                                           ; $78e9: $e4
	ld a, a                                          ; $78ea: $7f
	ld [hl-], a                                      ; $78eb: $32
	ld l, e                                          ; $78ec: $6b
	and h                                            ; $78ed: $a4
	ld h, b                                          ; $78ee: $60
	ldh [$7b], a                                     ; $78ef: $e0 $7b
	ei                                               ; $78f1: $fb
	ld [hl], e                                       ; $78f2: $73
	ldh a, [$9e]                                     ; $78f3: $f0 $9e
	dec b                                            ; $78f5: $05
	ld a, d                                          ; $78f6: $7a
	jr jr_012_7897                                   ; $78f7: $18 $9e

	add l                                            ; $78f9: $85
	sbc $ff                                          ; $78fa: $de $ff
	rst SubAFromDE                                          ; $78fc: $df
	call $dbdf                                       ; $78fd: $cd $df $db
	rst SubAFromDE                                          ; $7900: $df
	cp a                                             ; $7901: $bf
	sbc h                                            ; $7902: $9c
	di                                               ; $7903: $f3
	rst $38                                          ; $7904: $ff
	bit 7, e                                         ; $7905: $cb $7b
	ld [hl], l                                       ; $7907: $75
	ld a, a                                          ; $7908: $7f
	cp $7f                                           ; $7909: $fe $7f
	inc de                                           ; $790b: $13
	sbc [hl]                                         ; $790c: $9e
	sbc $7b                                          ; $790d: $de $7b
	add sp, $7f                                      ; $790f: $e8 $7f
	dec bc                                           ; $7911: $0b
	ld [hl], a                                       ; $7912: $77
	db $f4                                           ; $7913: $f4
	ld a, [hl]                                       ; $7914: $7e
	inc hl                                           ; $7915: $23
	ld [hl], a                                       ; $7916: $77
	cp $7f                                           ; $7917: $fe $7f
	cp h                                             ; $7919: $bc
	ld l, a                                          ; $791a: $6f
	rst GetHLinHL                                          ; $791b: $cf
	sbc [hl]                                         ; $791c: $9e
	ld a, b                                          ; $791d: $78
	halt                                             ; $791e: $76
	jp c, $c193                                      ; $791f: $da $93 $c1

	cp [hl]                                          ; $7922: $be
	cp $84                                           ; $7923: $fe $84
	rst $38                                          ; $7925: $ff
	ld b, l                                          ; $7926: $45
	rst $38                                          ; $7927: $ff
	ld c, a                                          ; $7928: $4f
	rst $38                                          ; $7929: $ff
	sbc h                                            ; $792a: $9c
	rst $38                                          ; $792b: $ff
	sbc b                                            ; $792c: $98
	sbc $ff                                          ; $792d: $de $ff
	sbc h                                            ; $792f: $9c
	ld e, $ff                                        ; $7930: $1e $ff
	inc b                                            ; $7932: $04
	ld a, e                                          ; $7933: $7b
	ldh [c], a                                       ; $7934: $e2
	ld a, a                                          ; $7935: $7f
	cp $77                                           ; $7936: $fe $77
	call c, $8e94                                    ; $7938: $dc $94 $8e
	rst $38                                          ; $793b: $ff
	sbc c                                            ; $793c: $99
	rst $38                                          ; $793d: $ff
	sub b                                            ; $793e: $90
	rst $38                                          ; $793f: $ff
	jr nz, @+$01                                     ; $7940: $20 $ff

	ei                                               ; $7942: $fb
	nop                                              ; $7943: $00
	push af                                          ; $7944: $f5
	ld a, d                                          ; $7945: $7a
	and $67                                          ; $7946: $e6 $67
	ld l, $9a                                        ; $7948: $2e $9a
	ld a, [hl]                                       ; $794a: $7e
	nop                                              ; $794b: $00
	ld [$5400], a                                    ; $794c: $ea $00 $54
	ld a, e                                          ; $794f: $7b
	ldh a, [$9e]                                     ; $7950: $f0 $9e
	cp a                                             ; $7952: $bf
	ld a, e                                          ; $7953: $7b
	db $f4                                           ; $7954: $f4
	sbc [hl]                                         ; $7955: $9e
	rst SubAFromHL                                          ; $7956: $d7
	ld a, b                                          ; $7957: $78
	ld h, [hl]                                       ; $7958: $66

jr_012_7959:
	sbc [hl]                                         ; $7959: $9e
	add c                                            ; $795a: $81
	cp $7f                                           ; $795b: $fe $7f
	ld a, [hl+]                                      ; $795d: $2a
	sbc [hl]                                         ; $795e: $9e
	or h                                             ; $795f: $b4
	ld a, e                                          ; $7960: $7b
	ld [$f09c], a                                    ; $7961: $ea $9c $f0
	nop                                              ; $7964: $00
	ld hl, sp+$7b                                    ; $7965: $f8 $7b
	ld e, $7f                                        ; $7967: $1e $7f
	db $e4                                           ; $7969: $e4
	halt                                             ; $796a: $76
	ld b, d                                          ; $796b: $42
	ld a, a                                          ; $796c: $7f
	cp $6f                                           ; $796d: $fe $6f
	ld [hl], b                                       ; $796f: $70
	ld a, a                                          ; $7970: $7f
	db $fc                                           ; $7971: $fc
	ld a, c                                          ; $7972: $79
	add hl, bc                                       ; $7973: $09
	or $df                                           ; $7974: $f6 $df
	rrca                                             ; $7976: $0f
	sbc [hl]                                         ; $7977: $9e
	ld [hl], b                                       ; $7978: $70
	ld a, e                                          ; $7979: $7b
	ld b, b                                          ; $797a: $40
	ld a, [hl]                                       ; $797b: $7e
	or h                                             ; $797c: $b4
	sbc h                                            ; $797d: $9c
	ccf                                              ; $797e: $3f
	nop                                              ; $797f: $00
	rra                                              ; $7980: $1f
	ld [hl], e                                       ; $7981: $73
	cp $7f                                           ; $7982: $fe $7f
	sub a                                            ; $7984: $97
	ld a, [hl]                                       ; $7985: $7e
	ld l, a                                          ; $7986: $6f
	ld e, [hl]                                       ; $7987: $5e
	jp nc, $ef98                                     ; $7988: $d2 $98 $ef

	nop                                              ; $798b: $00
	rst FarCall                                          ; $798c: $f7
	jr nc, jr_012_7959                               ; $798d: $30 $ca

	ld a, b                                          ; $798f: $78
	push af                                          ; $7990: $f5
	ld e, d                                          ; $7991: $5a
	add b                                            ; $7992: $80
	sbc h                                            ; $7993: $9c
	ret nz                                           ; $7994: $c0

	nop                                              ; $7995: $00
	add b                                            ; $7996: $80
	ld l, e                                          ; $7997: $6b
	add h                                            ; $7998: $84
	ld e, [hl]                                       ; $7999: $5e
	add b                                            ; $799a: $80
	ld l, e                                          ; $799b: $6b
	ld bc, $005f                                     ; $799c: $01 $5f $00
	ld a, a                                          ; $799f: $7f
	ldh a, [c]                                       ; $79a0: $f2
	sbc h                                            ; $79a1: $9c
	ld b, c                                          ; $79a2: $41
	nop                                              ; $79a3: $00
	inc hl                                           ; $79a4: $23
	ld l, h                                          ; $79a5: $6c
	sub b                                            ; $79a6: $90
	sub l                                            ; $79a7: $95
	ld [$5515], a                                    ; $79a8: $ea $15 $55
	xor d                                            ; $79ab: $aa
	db $e3                                           ; $79ac: $e3
	db $e3                                           ; $79ad: $e3
	call c, $c0dc                                    ; $79ae: $dc $dc $c0
	ret nz                                           ; $79b1: $c0

	ld [hl], e                                       ; $79b2: $73
	db $e3                                           ; $79b3: $e3
	ld [hl], e                                       ; $79b4: $73
	cp $df                                           ; $79b5: $fe $df
	pop hl                                           ; $79b7: $e1
	rst SubAFromDE                                          ; $79b8: $df
	jp $83df                                         ; $79b9: $c3 $df $83


	rst SubAFromDE                                          ; $79bc: $df
	add b                                            ; $79bd: $80
	rst SubAFromDE                                          ; $79be: $df
	jp Jump_012_7fdf                                 ; $79bf: $c3 $df $7f


	adc h                                            ; $79c2: $8c
	ld l, $6e                                        ; $79c3: $2e $6e
	xor [hl]                                         ; $79c5: $ae
	xor [hl]                                         ; $79c6: $ae
	rst SubAFromHL                                          ; $79c7: $d7
	cpl                                              ; $79c8: $2f
	inc sp                                           ; $79c9: $33

jr_012_79ca:
	rst $38                                          ; $79ca: $ff
	ld a, c                                          ; $79cb: $79
	rst $38                                          ; $79cc: $ff
	inc l                                            ; $79cd: $2c
	rst SubAFromDE                                          ; $79ce: $df
	ld e, a                                          ; $79cf: $5f
	cp a                                             ; $79d0: $bf
	daa                                              ; $79d1: $27
	ei                                               ; $79d2: $fb
	ld [hl], e                                       ; $79d3: $73
	rst AddAOntoHL                                          ; $79d4: $ef
	rst JumpTable                                          ; $79d5: $c7
	ld a, b                                          ; $79d6: $78
	pop af                                           ; $79d7: $f1
	sbc h                                            ; $79d8: $9c
	rra                                              ; $79d9: $1f
	cp $3c                                           ; $79da: $fe $3c
	ld a, e                                          ; $79dc: $7b
	xor $8c                                          ; $79dd: $ee $8c
	ld e, d                                          ; $79df: $5a
	rst $38                                          ; $79e0: $ff
	xor a                                            ; $79e1: $af
	rst $38                                          ; $79e2: $ff
	cpl                                              ; $79e3: $2f
	rst $38                                          ; $79e4: $ff
	ld h, a                                          ; $79e5: $67
	rst $38                                          ; $79e6: $ff
	ld d, b                                          ; $79e7: $50
	xor a                                            ; $79e8: $af
	jr nz, jr_012_79ca                               ; $79e9: $20 $df

	ld d, h                                          ; $79eb: $54
	xor a                                            ; $79ec: $af
	ld a, [hl+]                                      ; $79ed: $2a
	rst SubAFromDE                                          ; $79ee: $df
	ld [bc], a                                       ; $79ef: $02
	rst $38                                          ; $79f0: $ff
	add h                                            ; $79f1: $84
	ld [hl], e                                       ; $79f2: $73
	cp $7f                                           ; $79f3: $fe $7f
	ld e, a                                          ; $79f5: $5f
	sub [hl]                                         ; $79f6: $96
	db $10                                           ; $79f7: $10
	rra                                              ; $79f8: $1f
	ld h, c                                          ; $79f9: $61
	ld a, a                                          ; $79fa: $7f
	inc hl                                           ; $79fb: $23
	ccf                                              ; $79fc: $3f
	ld b, h                                          ; $79fd: $44
	ld a, a                                          ; $79fe: $7f
	ret z                                            ; $79ff: $c8

	ld [hl], e                                       ; $7a00: $73
	xor a                                            ; $7a01: $af
	rst SubAFromDE                                          ; $7a02: $df
	rrca                                             ; $7a03: $0f
	rst SubAFromDE                                          ; $7a04: $df
	adc b                                            ; $7a05: $88
	add a                                            ; $7a06: $87
	ld hl, sp-$07                                    ; $7a07: $f8 $f9
	ld [$084b], sp                                   ; $7a09: $08 $4b $08
	add sp, -$08                                     ; $7a0c: $e8 $f8
	ld a, [$f808]                                    ; $7a0e: $fa $08 $f8
	rrca                                             ; $7a11: $0f
	rst $38                                          ; $7a12: $ff
	ldh [$e0], a                                     ; $7a13: $e0 $e0

jr_012_7a15:
	rra                                              ; $7a15: $1f
	ld a, a                                          ; $7a16: $7f
	ld [$040c], sp                                   ; $7a17: $08 $0c $04
	add [hl]                                         ; $7a1a: $86
	ld [bc], a                                       ; $7a1b: $02
	ld b, e                                          ; $7a1c: $43
	ld a, l                                          ; $7a1d: $7d
	ld a, a                                          ; $7a1e: $7f
	halt                                             ; $7a1f: $76
	and [hl]                                         ; $7a20: $a6
	sbc [hl]                                         ; $7a21: $9e
	dec b                                            ; $7a22: $05
	ldh a, [c]                                       ; $7a23: $f2
	sbc [hl]                                         ; $7a24: $9e
	scf                                              ; $7a25: $37
	ld a, d                                          ; $7a26: $7a
	jp c, $8ef5                                      ; $7a27: $da $f5 $8e

	db $e4                                           ; $7a2a: $e4
	db $fc                                           ; $7a2b: $fc
	call c, $4cfc                                    ; $7a2c: $dc $fc $4c
	db $fc                                           ; $7a2f: $fc
	inc h                                            ; $7a30: $24
	db $fc                                           ; $7a31: $fc
	ld d, $fe                                        ; $7a32: $16 $fe
	xor $fe                                          ; $7a34: $ee $fe
	cp d                                             ; $7a36: $ba
	cp d                                             ; $7a37: $ba
	rst SubAFromBC                                          ; $7a38: $e7
	rst $38                                          ; $7a39: $ff
	jr nc, jr_012_7aad                               ; $7a3a: $30 $71

	sbc d                                            ; $7a3c: $9a
	rst $38                                          ; $7a3d: $ff
	rst SubAFromDE                                          ; $7a3e: $df
	ld bc, $028e                                     ; $7a3f: $01 $8e $02
	inc bc                                           ; $7a42: $03
	inc b                                            ; $7a43: $04
	rlca                                             ; $7a44: $07
	ld [$010f], sp                                   ; $7a45: $08 $0f $01
	ld bc, $0706                                     ; $7a48: $01 $06 $07
	jr @+$21                                         ; $7a4b: $18 $1f

	db $e3                                           ; $7a4d: $e3
	rst $38                                          ; $7a4e: $ff
	jr z, @+$01                                      ; $7a4f: $28 $ff

	ld b, c                                          ; $7a51: $41
	ld a, d                                          ; $7a52: $7a
	cp b                                             ; $7a53: $b8
	ld a, a                                          ; $7a54: $7f
	or b                                             ; $7a55: $b0
	ld a, l                                          ; $7a56: $7d
	sub $7e                                          ; $7a57: $d6 $7e
	inc a                                            ; $7a59: $3c
	ld a, h                                          ; $7a5a: $7c
	ld c, a                                          ; $7a5b: $4f
	sbc d                                            ; $7a5c: $9a
	ld e, e                                          ; $7a5d: $5b
	rst $38                                          ; $7a5e: $ff
	adc e                                            ; $7a5f: $8b
	rst $38                                          ; $7a60: $ff
	dec bc                                           ; $7a61: $0b
	ld a, e                                          ; $7a62: $7b
	or $7e                                           ; $7a63: $f6 $7e
	ld h, b                                          ; $7a65: $60
	sbc [hl]                                         ; $7a66: $9e
	sbc a                                            ; $7a67: $9f
	ld a, c                                          ; $7a68: $79
	ld b, l                                          ; $7a69: $45
	ld a, a                                          ; $7a6a: $7f
	ld [$627e], a                                    ; $7a6b: $ea $7e $62
	ld a, [hl]                                       ; $7a6e: $7e
	ld h, h                                          ; $7a6f: $64
	ld a, [hl]                                       ; $7a70: $7e
	ld l, $78                                        ; $7a71: $2e $78
	and c                                            ; $7a73: $a1
	sub a                                            ; $7a74: $97
	rst $38                                          ; $7a75: $ff
	ld e, a                                          ; $7a76: $5f
	ld c, h                                          ; $7a77: $4c
	ld a, a                                          ; $7a78: $7f
	ld e, b                                          ; $7a79: $58
	ld a, a                                          ; $7a7a: $7f
	ld [hl], b                                       ; $7a7b: $70
	ld a, a                                          ; $7a7c: $7f
	ld h, c                                          ; $7a7d: $61
	jr nc, jr_012_7a15                               ; $7a7e: $30 $95

	pop af                                           ; $7a80: $f1
	ld de, $10f0                                     ; $7a81: $11 $f0 $10
	ld sp, hl                                        ; $7a84: $f9
	dec sp                                           ; $7a85: $3b
	db $fd                                           ; $7a86: $fd
	ld h, l                                          ; $7a87: $65
	cp $c2                                           ; $7a88: $fe $c2
	ld a, c                                          ; $7a8a: $79
	push bc                                          ; $7a8b: $c5
	ld a, a                                          ; $7a8c: $7f
	rst SubAFromDE                                          ; $7a8d: $df
	add b                                            ; $7a8e: $80
	ld b, $bf                                        ; $7a8f: $06 $bf
	adc h                                            ; $7a91: $8c
	rst $38                                          ; $7a92: $ff
	sbc b                                            ; $7a93: $98
	ld a, a                                          ; $7a94: $7f
	ldh a, [$7f]                                     ; $7a95: $f0 $7f
	ld h, b                                          ; $7a97: $60
	ld a, a                                          ; $7a98: $7f
	ld b, b                                          ; $7a99: $40
	rst $38                                          ; $7a9a: $ff
	pop bc                                           ; $7a9b: $c1
	rst FarCall                                          ; $7a9c: $f7
	jp Jump_012_466f                                 ; $7a9d: $c3 $6f $46


	ret nz                                           ; $7aa0: $c0

	ld h, b                                          ; $7aa1: $60
	ldh [$27], a                                     ; $7aa2: $e0 $27
	ldh [$2f], a                                     ; $7aa4: $e0 $2f
	ldh a, [rSVBK]                                   ; $7aa6: $f0 $70
	ret z                                            ; $7aa8: $c8

	ret z                                            ; $7aa9: $c8

	db $e3                                           ; $7aaa: $e3
	rst SubAFromBC                                          ; $7aab: $e7
	db $f4                                           ; $7aac: $f4

jr_012_7aad:
	inc [hl]                                         ; $7aad: $34
	sbc h                                            ; $7aae: $9c
	ld hl, sp+$18                                    ; $7aaf: $f8 $18
	ccf                                              ; $7ab1: $3f
	ld c, b                                          ; $7ab2: $48
	ldh a, [$9e]                                     ; $7ab3: $f0 $9e

Jump_012_7ab5:
	rra                                              ; $7ab5: $1f
	ld l, a                                          ; $7ab6: $6f
	ldh a, [$6c]                                     ; $7ab7: $f0 $6c
	and b                                            ; $7ab9: $a0
	adc h                                            ; $7aba: $8c
	add e                                            ; $7abb: $83
	rst SubAFromDE                                          ; $7abc: $df
	add [hl]                                         ; $7abd: $86
	cp $ec                                           ; $7abe: $fe $ec
	sbc a                                            ; $7ac0: $9f
	rst $38                                          ; $7ac1: $ff
	rlca                                             ; $7ac2: $07

Jump_012_7ac3:
	inc e                                            ; $7ac3: $1c
	inc bc                                           ; $7ac4: $03
	ld [hl-], a                                      ; $7ac5: $32
	ld bc, $8102                                     ; $7ac6: $01 $02 $81
	add a                                            ; $7ac9: $87
	add c                                            ; $7aca: $81
	adc a                                            ; $7acb: $8f
	ret nz                                           ; $7acc: $c0

	ld e, b                                          ; $7acd: $58
	cp d                                             ; $7ace: $ba
	nop                                              ; $7acf: $00
	rlc c                                            ; $7ad0: $cb $01
	sub c                                            ; $7ad2: $91
	ld c, e                                          ; $7ad3: $4b
	ld c, h                                          ; $7ad4: $4c
	ld c, l                                          ; $7ad5: $4d
	ld bc, $5001                                     ; $7ad6: $01 $01 $50
	ld d, c                                          ; $7ad9: $51
	inc c                                            ; $7ada: $0c
	dec c                                            ; $7adb: $0d
	ld c, $01                                        ; $7adc: $0e $01
	ld bc, $1226                                     ; $7ade: $01 $26 $12
	db $dd                                           ; $7ae1: $dd
	ld bc, $5d80                                     ; $7ae2: $01 $80 $5d
	ld e, [hl]                                       ; $7ae5: $5e
	ld e, a                                          ; $7ae6: $5f
	inc hl                                           ; $7ae7: $23
	ld h, c                                          ; $7ae8: $61
	ld h, d                                          ; $7ae9: $62
	ld h, e                                          ; $7aea: $63
	ld h, h                                          ; $7aeb: $64
	ld h, l                                          ; $7aec: $65
	rla                                              ; $7aed: $17
	jr @+$1b                                         ; $7aee: $18 $19

	ld bc, $1c1b                                     ; $7af0: $01 $1b $1c
	dec e                                            ; $7af3: $1d
	ld e, $1f                                        ; $7af4: $1e $1f
	jr nz, jr_012_7b17                               ; $7af6: $20 $1f

	ld [hl], c                                       ; $7af8: $71
	inc hl                                           ; $7af9: $23
	ld [hl], e                                       ; $7afa: $73
	ld [hl], h                                       ; $7afb: $74
	ld [hl], l                                       ; $7afc: $75
	halt                                             ; $7afd: $76
	ld [hl], d                                       ; $7afe: $72
	inc hl                                           ; $7aff: $23
	ld [hl], b                                       ; $7b00: $70

Call_012_7b01:
	ld [hl+], a                                      ; $7b01: $22
	inc hl                                           ; $7b02: $23
	add b                                            ; $7b03: $80
	inc hl                                           ; $7b04: $23
	dec h                                            ; $7b05: $25
	inc hl                                           ; $7b06: $23
	daa                                              ; $7b07: $27
	jr z, jr_012_7b33                                ; $7b08: $28 $29

	ld [hl+], a                                      ; $7b0a: $22
	inc hl                                           ; $7b0b: $23
	ld [hl+], a                                      ; $7b0c: $22
	ld l, a                                          ; $7b0d: $6f
	ld l, [hl]                                       ; $7b0e: $6e
	ld l, l                                          ; $7b0f: $6d
	ld l, h                                          ; $7b10: $6c
	ld l, e                                          ; $7b11: $6b
	ld l, d                                          ; $7b12: $6a
	ld l, c                                          ; $7b13: $69
	ld l, b                                          ; $7b14: $68
	ld h, a                                          ; $7b15: $67
	dec l                                            ; $7b16: $2d

jr_012_7b17:
	ld l, $2f                                        ; $7b17: $2e $2f
	jr nc, jr_012_7b4c                               ; $7b19: $30 $31

	ld [hl-], a                                      ; $7b1b: $32
	inc sp                                           ; $7b1c: $33
	inc [hl]                                         ; $7b1d: $34
	inc l                                            ; $7b1e: $2c
	dec hl                                           ; $7b1f: $2b
	ld a, [hl+]                                      ; $7b20: $2a
	ld h, [hl]                                       ; $7b21: $66
	ld h, b                                          ; $7b22: $60
	add c                                            ; $7b23: $81
	ld e, h                                          ; $7b24: $5c
	ld e, e                                          ; $7b25: $5b
	ld e, d                                          ; $7b26: $5a
	ld e, c                                          ; $7b27: $59
	ld e, b                                          ; $7b28: $58
	ld d, a                                          ; $7b29: $57
	ld d, [hl]                                       ; $7b2a: $56
	ld de, $2124                                     ; $7b2b: $11 $24 $21
	ld a, [de]                                       ; $7b2e: $1a
	ld d, $15                                        ; $7b2f: $16 $15
	inc d                                            ; $7b31: $14
	inc de                                           ; $7b32: $13

jr_012_7b33:
	db $10                                           ; $7b33: $10
	rrca                                             ; $7b34: $0f
	dec bc                                           ; $7b35: $0b
	add hl, bc                                       ; $7b36: $09
	ld a, [bc]                                       ; $7b37: $0a
	ld d, l                                          ; $7b38: $55
	ld d, h                                          ; $7b39: $54
	ld d, e                                          ; $7b3a: $53
	ld d, d                                          ; $7b3b: $52
	ld c, a                                          ; $7b3c: $4f
	ld b, h                                          ; $7b3d: $44
	ld b, l                                          ; $7b3e: $45
	ld c, d                                          ; $7b3f: $4a
	add hl, bc                                       ; $7b40: $09
	ld a, [bc]                                       ; $7b41: $0a
	ld h, a                                          ; $7b42: $67
	cp $93                                           ; $7b43: $fe $93
	rlca                                             ; $7b45: $07
	ld [$4849], sp                                   ; $7b46: $08 $49 $48
	ld b, a                                          ; $7b49: $47
	ld b, [hl]                                       ; $7b4a: $46
	add hl, bc                                       ; $7b4b: $09

jr_012_7b4c:
	ld c, [hl]                                       ; $7b4c: $4e
	ld a, l                                          ; $7b4d: $7d
	ld a, h                                          ; $7b4e: $7c
	rlca                                             ; $7b4f: $07
	ld [$fe63], sp                                   ; $7b50: $08 $63 $fe
	sub h                                            ; $7b53: $94
	ld b, $43                                        ; $7b54: $06 $43
	ld b, d                                          ; $7b56: $42
	ld b, c                                          ; $7b57: $41
	ld b, $07                                        ; $7b58: $06 $07
	ld a, e                                          ; $7b5a: $7b
	ld a, d                                          ; $7b5b: $7a
	ld a, c                                          ; $7b5c: $79
	rlca                                             ; $7b5d: $07
	ld b, $63                                        ; $7b5e: $06 $63
	cp $94                                           ; $7b60: $fe $94
	dec b                                            ; $7b62: $05
	ld b, b                                          ; $7b63: $40
	ccf                                              ; $7b64: $3f
	ld a, $3d                                        ; $7b65: $3e $3d
	inc a                                            ; $7b67: $3c
	dec sp                                           ; $7b68: $3b
	ld a, b                                          ; $7b69: $78
	ld [hl], a                                       ; $7b6a: $77
	rlca                                             ; $7b6b: $07
	dec b                                            ; $7b6c: $05
	ld h, e                                          ; $7b6d: $63
	cp $96                                           ; $7b6e: $fe $96
	inc b                                            ; $7b70: $04
	ld a, [hl-]                                      ; $7b71: $3a
	add hl, sp                                       ; $7b72: $39
	jr c, jr_012_7bac                                ; $7b73: $38 $37

	ld [hl], $35                                     ; $7b75: $36 $35
	rlca                                             ; $7b77: $07
	inc b                                            ; $7b78: $04
	ld e, a                                          ; $7b79: $5f
	cp $9d                                           ; $7b7a: $fe $9d
	ld [bc], a                                       ; $7b7c: $02
	nop                                              ; $7b7d: $00
	ld a, e                                          ; $7b7e: $7b
	cp $9e                                           ; $7b7f: $fe $9e
	inc bc                                           ; $7b81: $03
	ld [hl], e                                       ; $7b82: $73
	db $fc                                           ; $7b83: $fc
	ld l, a                                          ; $7b84: $6f
	ld a, [$fc7b]                                    ; $7b85: $fa $7b $fc
	ld a, [hl-]                                      ; $7b88: $3a
	nop                                              ; $7b89: $00
	ret nc                                           ; $7b8a: $d0

	ld [hl], a                                       ; $7b8b: $77
	sbc [hl]                                         ; $7b8c: $9e
	ld h, [hl]                                       ; $7b8d: $66
	ld c, a                                          ; $7b8e: $4f
	or $9e                                           ; $7b8f: $f6 $9e
	ld d, l                                          ; $7b91: $55
	db $dd                                           ; $7b92: $dd
	ld [hl], a                                       ; $7b93: $77
	sbc [hl]                                         ; $7b94: $9e
	ld [hl+], a                                      ; $7b95: $22
	ld a, e                                          ; $7b96: $7b
	db $fd                                           ; $7b97: $fd
	sbc h                                            ; $7b98: $9c
	ld [hl], l                                       ; $7b99: $75
	ld d, l                                          ; $7b9a: $55
	ld [hl], d                                       ; $7b9b: $72
	sbc $22                                          ; $7b9c: $de $22
	sbc [hl]                                         ; $7b9e: $9e
	ld h, [hl]                                       ; $7b9f: $66
	sbc $22                                          ; $7ba0: $de $22
	sbc d                                            ; $7ba2: $9a
	ld d, l                                          ; $7ba3: $55
	ld [hl], l                                       ; $7ba4: $75
	ld [hl], d                                       ; $7ba5: $72
	ld [hl+], a                                      ; $7ba6: $22
	ld h, $dd                                        ; $7ba7: $26 $dd
	ld h, [hl]                                       ; $7ba9: $66
	sbc d                                            ; $7baa: $9a
	ld b, h                                          ; $7bab: $44

jr_012_7bac:
	ld d, l                                          ; $7bac: $55
	ld [hl], l                                       ; $7bad: $75
	ld d, a                                          ; $7bae: $57
	ld d, l                                          ; $7baf: $55
	db $db                                           ; $7bb0: $db
	ld b, h                                          ; $7bb1: $44
	sbc h                                            ; $7bb2: $9c
	ld d, l                                          ; $7bb3: $55
	ld d, h                                          ; $7bb4: $54
	ld b, h                                          ; $7bb5: $44
	ld h, e                                          ; $7bb6: $63
	or $9e                                           ; $7bb7: $f6 $9e
	ld b, l                                          ; $7bb9: $45
	ld h, a                                          ; $7bba: $67
	or $de                                           ; $7bbb: $f6 $de
	ld d, l                                          ; $7bbd: $55
	ld h, e                                          ; $7bbe: $63
	or $d1                                           ; $7bbf: $f6 $d1
	ld b, h                                          ; $7bc1: $44
	ld h, l                                          ; $7bc2: $65
	nop                                              ; $7bc3: $00
	adc [hl]                                         ; $7bc4: $8e
	rra                                              ; $7bc5: $1f
	inc c                                            ; $7bc6: $0c
	rst $38                                          ; $7bc7: $ff
	jr @+$01                                         ; $7bc8: $18 $ff

	ldh a, [rIE]                                     ; $7bca: $f0 $ff
	ld h, b                                          ; $7bcc: $60
	rst $38                                          ; $7bcd: $ff
	ret nz                                           ; $7bce: $c0

	rst $38                                          ; $7bcf: $ff
	add c                                            ; $7bd0: $81
	rst FarCall                                          ; $7bd1: $f7
	inc bc                                           ; $7bd2: $03
	rst AddAOntoHL                                          ; $7bd3: $ef
	ld b, $fe                                        ; $7bd4: $06 $fe
	ld [hl], a                                       ; $7bd6: $77
	ldh a, [$9e]                                     ; $7bd7: $f0 $9e
	ccf                                              ; $7bd9: $3f
	ld l, a                                          ; $7bda: $6f
	ldh a, [$9a]                                     ; $7bdb: $f0 $9a
	rst $38                                          ; $7bdd: $ff
	inc bc                                           ; $7bde: $03
	rst $38                                          ; $7bdf: $ff
	ld b, $3f                                        ; $7be0: $06 $3f
	ld c, e                                          ; $7be2: $4b
	ldh [$57], a                                     ; $7be3: $e0 $57
	ret nc                                           ; $7be5: $d0

	sub e                                            ; $7be6: $93
	rst AddAOntoHL                                          ; $7be7: $ef
	inc bc                                           ; $7be8: $03
	rst SubAFromDE                                          ; $7be9: $df
	ld b, $fe                                        ; $7bea: $06 $fe
	call z, $98ff                                    ; $7bec: $cc $ff $98
	rst $38                                          ; $7bef: $ff
	cp a                                             ; $7bf0: $bf
	rst $38                                          ; $7bf1: $ff
	ldh [$67], a                                     ; $7bf2: $e0 $67
	ret nc                                           ; $7bf4: $d0

	rst SubAFromDE                                          ; $7bf5: $df
	db $ec                                           ; $7bf6: $ec
	sub a                                            ; $7bf7: $97
	or a                                             ; $7bf8: $b7
	and a                                            ; $7bf9: $a7
	pop de                                           ; $7bfa: $d1
	pop de                                           ; $7bfb: $d1
	db $eb                                           ; $7bfc: $eb
	ld l, e                                          ; $7bfd: $6b
	rst $38                                          ; $7bfe: $ff

Jump_012_7bff:
	db $fc                                           ; $7bff: $fc
	ld l, a                                          ; $7c00: $6f
	ldh [$9e], a                                     ; $7c01: $e0 $9e
	rst $38                                          ; $7c03: $ff
	ld c, e                                          ; $7c04: $4b
	ret nz                                           ; $7c05: $c0

	ld [hl], e                                       ; $7c06: $73
	ldh a, [$73]                                     ; $7c07: $f0 $73
	ret nc                                           ; $7c09: $d0

	sbc b                                            ; $7c0a: $98
	ld a, a                                          ; $7c0b: $7f
	ld b, c                                          ; $7c0c: $41
	ld a, a                                          ; $7c0d: $7f
	ld b, e                                          ; $7c0e: $43
	ld a, a                                          ; $7c0f: $7f
	ld b, [hl]                                       ; $7c10: $46
	rrca                                             ; $7c11: $0f
	ld a, e                                          ; $7c12: $7b
	res 2, e                                         ; $7c13: $cb $93
	ld bc, $c1ff                                     ; $7c15: $01 $ff $c1
	rst $38                                          ; $7c18: $ff
	ld a, $fe                                        ; $7c19: $3e $fe
	inc c                                            ; $7c1b: $0c
	db $fc                                           ; $7c1c: $fc
	ld [de], a                                       ; $7c1d: $12
	ldh a, [c]                                       ; $7c1e: $f2
	add hl, sp                                       ; $7c1f: $39
	ld sp, hl                                        ; $7c20: $f9
	ld d, e                                          ; $7c21: $53
	ld [hl], b                                       ; $7c22: $70
	sbc h                                            ; $7c23: $9c
	add e                                            ; $7c24: $83
	rst $38                                          ; $7c25: $ff
	cp $0f                                           ; $7c26: $fe $0f
	nop                                              ; $7c28: $00
	sub e                                            ; $7c29: $93
	ld [$0607], sp                                   ; $7c2a: $08 $07 $06
	dec b                                            ; $7c2d: $05
	inc b                                            ; $7c2e: $04
	inc bc                                           ; $7c2f: $03
	ld [bc], a                                       ; $7c30: $02
	ld bc, $0902                                     ; $7c31: $01 $02 $09
	ld bc, $0900                                     ; $7c34: $01 $00 $09
	nop                                              ; $7c37: $00
	sbc [hl]                                         ; $7c38: $9e
	ld [hl], l                                       ; $7c39: $75
	sbc $44                                          ; $7c3a: $de $44
	sbc l                                            ; $7c3c: $9d
	ld b, l                                          ; $7c3d: $45
	ld b, h                                          ; $7c3e: $44
	ld sp, $8e00                                     ; $7c3f: $31 $00 $8e
	rra                                              ; $7c42: $1f
	inc c                                            ; $7c43: $0c
	rst $38                                          ; $7c44: $ff
	jr @+$01                                         ; $7c45: $18 $ff

	ldh a, [rIE]                                     ; $7c47: $f0 $ff
	ld h, b                                          ; $7c49: $60
	rst $38                                          ; $7c4a: $ff
	ret nz                                           ; $7c4b: $c0

	rst $38                                          ; $7c4c: $ff
	add c                                            ; $7c4d: $81
	rst FarCall                                          ; $7c4e: $f7
	inc bc                                           ; $7c4f: $03
	rst AddAOntoHL                                          ; $7c50: $ef
	ld b, $ff                                        ; $7c51: $06 $ff
	ld [hl], a                                       ; $7c53: $77
	ldh a, [$9e]                                     ; $7c54: $f0 $9e
	ccf                                              ; $7c56: $3f
	ld l, a                                          ; $7c57: $6f
	ldh a, [$9c]                                     ; $7c58: $f0 $9c
	rst $38                                          ; $7c5a: $ff
	inc bc                                           ; $7c5b: $03
	rst $38                                          ; $7c5c: $ff
	ld l, a                                          ; $7c5d: $6f
	ldh a, [$5b]                                     ; $7c5e: $f0 $5b
	ldh [$9e], a                                     ; $7c60: $e0 $9e
	ccf                                              ; $7c62: $3f
	ld c, e                                          ; $7c63: $4b
	ldh a, [$9e]                                     ; $7c64: $f0 $9e
	cp $4b                                           ; $7c66: $fe $4b
	ret nc                                           ; $7c68: $d0

	ld d, a                                          ; $7c69: $57
	or b                                             ; $7c6a: $b0
	sbc e                                            ; $7c6b: $9b
	rst AddAOntoHL                                          ; $7c6c: $ef
	inc bc                                           ; $7c6d: $03
	rst SubAFromDE                                          ; $7c6e: $df
	ld b, $0f                                        ; $7c6f: $06 $0f
	nop                                              ; $7c71: $00
	sub e                                            ; $7c72: $93
	ld bc, $0102                                     ; $7c73: $01 $02 $01
	inc b                                            ; $7c76: $04
	dec b                                            ; $7c77: $05
	inc b                                            ; $7c78: $04
	inc b                                            ; $7c79: $04
	inc bc                                           ; $7c7a: $03
	inc b                                            ; $7c7b: $04
	inc b                                            ; $7c7c: $04
	nop                                              ; $7c7d: $00
	inc b                                            ; $7c7e: $04
	inc b                                            ; $7c7f: $04
	nop                                              ; $7c80: $00
	db $db                                           ; $7c81: $db
	ld b, h                                          ; $7c82: $44
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff

Call_012_7c96:
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff
	rst $38                                          ; $7e63: $ff
	rst $38                                          ; $7e64: $ff
	rst $38                                          ; $7e65: $ff
	rst $38                                          ; $7e66: $ff
	rst $38                                          ; $7e67: $ff
	rst $38                                          ; $7e68: $ff
	rst $38                                          ; $7e69: $ff
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	rst $38                                          ; $7e6c: $ff
	rst $38                                          ; $7e6d: $ff
	rst $38                                          ; $7e6e: $ff
	rst $38                                          ; $7e6f: $ff
	rst $38                                          ; $7e70: $ff
	rst $38                                          ; $7e71: $ff
	rst $38                                          ; $7e72: $ff
	rst $38                                          ; $7e73: $ff
	rst $38                                          ; $7e74: $ff
	rst $38                                          ; $7e75: $ff
	rst $38                                          ; $7e76: $ff
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
	rst $38                                          ; $7e7b: $ff
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	rst $38                                          ; $7e7f: $ff
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff
	rst $38                                          ; $7e87: $ff
	rst $38                                          ; $7e88: $ff
	rst $38                                          ; $7e89: $ff
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff
	rst $38                                          ; $7e92: $ff
	rst $38                                          ; $7e93: $ff
	rst $38                                          ; $7e94: $ff
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	rst $38                                          ; $7e97: $ff
	rst $38                                          ; $7e98: $ff
	rst $38                                          ; $7e99: $ff
	rst $38                                          ; $7e9a: $ff
	rst $38                                          ; $7e9b: $ff
	rst $38                                          ; $7e9c: $ff
	rst $38                                          ; $7e9d: $ff
	rst $38                                          ; $7e9e: $ff
	rst $38                                          ; $7e9f: $ff
	rst $38                                          ; $7ea0: $ff
	rst $38                                          ; $7ea1: $ff
	rst $38                                          ; $7ea2: $ff
	rst $38                                          ; $7ea3: $ff
	rst $38                                          ; $7ea4: $ff
	rst $38                                          ; $7ea5: $ff
	rst $38                                          ; $7ea6: $ff
	rst $38                                          ; $7ea7: $ff
	rst $38                                          ; $7ea8: $ff
	rst $38                                          ; $7ea9: $ff
	rst $38                                          ; $7eaa: $ff
	rst $38                                          ; $7eab: $ff
	rst $38                                          ; $7eac: $ff
	rst $38                                          ; $7ead: $ff
	rst $38                                          ; $7eae: $ff
	rst $38                                          ; $7eaf: $ff
	rst $38                                          ; $7eb0: $ff
	rst $38                                          ; $7eb1: $ff
	rst $38                                          ; $7eb2: $ff
	rst $38                                          ; $7eb3: $ff
	rst $38                                          ; $7eb4: $ff
	rst $38                                          ; $7eb5: $ff
	rst $38                                          ; $7eb6: $ff
	rst $38                                          ; $7eb7: $ff
	rst $38                                          ; $7eb8: $ff
	rst $38                                          ; $7eb9: $ff
	rst $38                                          ; $7eba: $ff
	rst $38                                          ; $7ebb: $ff
	rst $38                                          ; $7ebc: $ff
	rst $38                                          ; $7ebd: $ff
	rst $38                                          ; $7ebe: $ff
	rst $38                                          ; $7ebf: $ff
	rst $38                                          ; $7ec0: $ff
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff
	rst $38                                          ; $7ed1: $ff
	rst $38                                          ; $7ed2: $ff
	rst $38                                          ; $7ed3: $ff
	rst $38                                          ; $7ed4: $ff
	rst $38                                          ; $7ed5: $ff
	rst $38                                          ; $7ed6: $ff
	rst $38                                          ; $7ed7: $ff
	rst $38                                          ; $7ed8: $ff
	rst $38                                          ; $7ed9: $ff
	rst $38                                          ; $7eda: $ff
	rst $38                                          ; $7edb: $ff
	rst $38                                          ; $7edc: $ff
	rst $38                                          ; $7edd: $ff
	rst $38                                          ; $7ede: $ff
	rst $38                                          ; $7edf: $ff
	rst $38                                          ; $7ee0: $ff
	rst $38                                          ; $7ee1: $ff
	rst $38                                          ; $7ee2: $ff
	rst $38                                          ; $7ee3: $ff
	rst $38                                          ; $7ee4: $ff
	rst $38                                          ; $7ee5: $ff
	rst $38                                          ; $7ee6: $ff
	rst $38                                          ; $7ee7: $ff
	rst $38                                          ; $7ee8: $ff
	rst $38                                          ; $7ee9: $ff
	rst $38                                          ; $7eea: $ff
	rst $38                                          ; $7eeb: $ff
	rst $38                                          ; $7eec: $ff
	rst $38                                          ; $7eed: $ff
	rst $38                                          ; $7eee: $ff
	rst $38                                          ; $7eef: $ff
	rst $38                                          ; $7ef0: $ff
	rst $38                                          ; $7ef1: $ff
	rst $38                                          ; $7ef2: $ff
	rst $38                                          ; $7ef3: $ff
	rst $38                                          ; $7ef4: $ff
	rst $38                                          ; $7ef5: $ff
	rst $38                                          ; $7ef6: $ff
	rst $38                                          ; $7ef7: $ff
	rst $38                                          ; $7ef8: $ff
	rst $38                                          ; $7ef9: $ff
	rst $38                                          ; $7efa: $ff
	rst $38                                          ; $7efb: $ff
	rst $38                                          ; $7efc: $ff
	rst $38                                          ; $7efd: $ff
	rst $38                                          ; $7efe: $ff
	rst $38                                          ; $7eff: $ff
	rst $38                                          ; $7f00: $ff
	rst $38                                          ; $7f01: $ff
	rst $38                                          ; $7f02: $ff
	rst $38                                          ; $7f03: $ff
	rst $38                                          ; $7f04: $ff
	rst $38                                          ; $7f05: $ff
	rst $38                                          ; $7f06: $ff
	rst $38                                          ; $7f07: $ff
	rst $38                                          ; $7f08: $ff
	rst $38                                          ; $7f09: $ff
	rst $38                                          ; $7f0a: $ff
	rst $38                                          ; $7f0b: $ff
	rst $38                                          ; $7f0c: $ff
	rst $38                                          ; $7f0d: $ff
	rst $38                                          ; $7f0e: $ff
	rst $38                                          ; $7f0f: $ff
	rst $38                                          ; $7f10: $ff
	rst $38                                          ; $7f11: $ff
	rst $38                                          ; $7f12: $ff
	rst $38                                          ; $7f13: $ff
	rst $38                                          ; $7f14: $ff
	rst $38                                          ; $7f15: $ff
	rst $38                                          ; $7f16: $ff
	rst $38                                          ; $7f17: $ff
	rst $38                                          ; $7f18: $ff
	rst $38                                          ; $7f19: $ff
	rst $38                                          ; $7f1a: $ff
	rst $38                                          ; $7f1b: $ff
	rst $38                                          ; $7f1c: $ff
	rst $38                                          ; $7f1d: $ff
	rst $38                                          ; $7f1e: $ff
	rst $38                                          ; $7f1f: $ff
	rst $38                                          ; $7f20: $ff
	rst $38                                          ; $7f21: $ff
	rst $38                                          ; $7f22: $ff
	rst $38                                          ; $7f23: $ff
	rst $38                                          ; $7f24: $ff
	rst $38                                          ; $7f25: $ff
	rst $38                                          ; $7f26: $ff
	rst $38                                          ; $7f27: $ff
	rst $38                                          ; $7f28: $ff
	rst $38                                          ; $7f29: $ff
	rst $38                                          ; $7f2a: $ff
	rst $38                                          ; $7f2b: $ff
	rst $38                                          ; $7f2c: $ff
	rst $38                                          ; $7f2d: $ff
	rst $38                                          ; $7f2e: $ff
	rst $38                                          ; $7f2f: $ff
	rst $38                                          ; $7f30: $ff
	rst $38                                          ; $7f31: $ff
	rst $38                                          ; $7f32: $ff
	rst $38                                          ; $7f33: $ff
	rst $38                                          ; $7f34: $ff
	rst $38                                          ; $7f35: $ff
	rst $38                                          ; $7f36: $ff
	rst $38                                          ; $7f37: $ff
	rst $38                                          ; $7f38: $ff
	rst $38                                          ; $7f39: $ff
	rst $38                                          ; $7f3a: $ff
	rst $38                                          ; $7f3b: $ff
	rst $38                                          ; $7f3c: $ff
	rst $38                                          ; $7f3d: $ff
	rst $38                                          ; $7f3e: $ff
	rst $38                                          ; $7f3f: $ff
	rst $38                                          ; $7f40: $ff
	rst $38                                          ; $7f41: $ff
	rst $38                                          ; $7f42: $ff
	rst $38                                          ; $7f43: $ff
	rst $38                                          ; $7f44: $ff
	rst $38                                          ; $7f45: $ff
	rst $38                                          ; $7f46: $ff
	rst $38                                          ; $7f47: $ff
	rst $38                                          ; $7f48: $ff
	rst $38                                          ; $7f49: $ff
	rst $38                                          ; $7f4a: $ff
	rst $38                                          ; $7f4b: $ff
	rst $38                                          ; $7f4c: $ff
	rst $38                                          ; $7f4d: $ff
	rst $38                                          ; $7f4e: $ff
	rst $38                                          ; $7f4f: $ff
	rst $38                                          ; $7f50: $ff
	rst $38                                          ; $7f51: $ff
	rst $38                                          ; $7f52: $ff
	rst $38                                          ; $7f53: $ff
	rst $38                                          ; $7f54: $ff
	rst $38                                          ; $7f55: $ff
	rst $38                                          ; $7f56: $ff
	rst $38                                          ; $7f57: $ff
	rst $38                                          ; $7f58: $ff
	rst $38                                          ; $7f59: $ff
	rst $38                                          ; $7f5a: $ff
	rst $38                                          ; $7f5b: $ff
	rst $38                                          ; $7f5c: $ff
	rst $38                                          ; $7f5d: $ff
	rst $38                                          ; $7f5e: $ff
	rst $38                                          ; $7f5f: $ff
	rst $38                                          ; $7f60: $ff
	rst $38                                          ; $7f61: $ff
	rst $38                                          ; $7f62: $ff
	rst $38                                          ; $7f63: $ff
	rst $38                                          ; $7f64: $ff
	rst $38                                          ; $7f65: $ff
	rst $38                                          ; $7f66: $ff
	rst $38                                          ; $7f67: $ff
	rst $38                                          ; $7f68: $ff
	rst $38                                          ; $7f69: $ff
	rst $38                                          ; $7f6a: $ff
	rst $38                                          ; $7f6b: $ff
	rst $38                                          ; $7f6c: $ff
	rst $38                                          ; $7f6d: $ff
	rst $38                                          ; $7f6e: $ff
	rst $38                                          ; $7f6f: $ff
	rst $38                                          ; $7f70: $ff
	rst $38                                          ; $7f71: $ff
	rst $38                                          ; $7f72: $ff
	rst $38                                          ; $7f73: $ff
	rst $38                                          ; $7f74: $ff
	rst $38                                          ; $7f75: $ff
	rst $38                                          ; $7f76: $ff
	rst $38                                          ; $7f77: $ff
	rst $38                                          ; $7f78: $ff
	rst $38                                          ; $7f79: $ff
	rst $38                                          ; $7f7a: $ff
	rst $38                                          ; $7f7b: $ff
	rst $38                                          ; $7f7c: $ff
	rst $38                                          ; $7f7d: $ff
	rst $38                                          ; $7f7e: $ff
	rst $38                                          ; $7f7f: $ff

Jump_012_7f80:
	rst $38                                          ; $7f80: $ff
	rst $38                                          ; $7f81: $ff
	rst $38                                          ; $7f82: $ff
	rst $38                                          ; $7f83: $ff
	rst $38                                          ; $7f84: $ff
	rst $38                                          ; $7f85: $ff
	rst $38                                          ; $7f86: $ff
	rst $38                                          ; $7f87: $ff
	rst $38                                          ; $7f88: $ff
	rst $38                                          ; $7f89: $ff
	rst $38                                          ; $7f8a: $ff
	rst $38                                          ; $7f8b: $ff
	rst $38                                          ; $7f8c: $ff
	rst $38                                          ; $7f8d: $ff
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
	rst $38                                          ; $7fdd: $ff
	rst $38                                          ; $7fde: $ff

Jump_012_7fdf:
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

Call_012_7fff:
Jump_012_7fff:
	rst $38                                          ; $7fff: $ff
