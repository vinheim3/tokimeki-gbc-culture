; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

	sbc d                                            ; $4000: $9a
	ld [hl], a                                       ; $4001: $77
	db $fc                                           ; $4002: $fc
	sbc [hl]                                         ; $4003: $9e
	adc d                                            ; $4004: $8a
	ld a, d                                          ; $4005: $7a
	ret z                                            ; $4006: $c8

	sbc [hl]                                         ; $4007: $9e
	cp a                                             ; $4008: $bf
	ld [hl], a                                       ; $4009: $77
	ld [hl], $7b                                     ; $400a: $36 $7b
	jp nz, $2a63                                     ; $400c: $c2 $63 $2a

	sbc [hl]                                         ; $400f: $9e
	ld a, [bc]                                       ; $4010: $0a
	ld e, [hl]                                       ; $4011: $5e
	adc h                                            ; $4012: $8c
	sbc e                                            ; $4013: $9b
	call c, Call_045_6f03                            ; $4014: $dc $03 $6f
	db $10                                           ; $4017: $10
	ld [hl], a                                       ; $4018: $77
	ld [hl], b                                       ; $4019: $70
	sbc e                                            ; $401a: $9b
	ld e, d                                          ; $401b: $5a
	and b                                            ; $401c: $a0
	xor l                                            ; $401d: $ad
	ld d, b                                          ; $401e: $50
	ld [hl], a                                       ; $401f: $77
	ldh a, [$7f]                                     ; $4020: $f0 $7f
	adc h                                            ; $4022: $8c
	ld a, a                                          ; $4023: $7f
	ret nc                                           ; $4024: $d0

	ld a, e                                          ; $4025: $7b
	ld e, d                                          ; $4026: $5a
	ld a, e                                          ; $4027: $7b
	xor h                                            ; $4028: $ac
	sbc [hl]                                         ; $4029: $9e
	dec b                                            ; $402a: $05
	db $fc                                           ; $402b: $fc
	halt                                             ; $402c: $76
	adc b                                            ; $402d: $88
	ld l, e                                          ; $402e: $6b
	sbc h                                            ; $402f: $9c
	ld l, e                                          ; $4030: $6b
	ldh a, [$7f]                                     ; $4031: $f0 $7f
	cp $9e                                           ; $4033: $fe $9e
	ei                                               ; $4035: $fb
	ld [hl], e                                       ; $4036: $73
	db $ec                                           ; $4037: $ec
	sbc [hl]                                         ; $4038: $9e
	ld b, l                                          ; $4039: $45
	db $fc                                           ; $403a: $fc
	ld a, a                                          ; $403b: $7f
	sub h                                            ; $403c: $94
	sbc b                                            ; $403d: $98
	and l                                            ; $403e: $a5
	nop                                              ; $403f: $00
	ld e, [hl]                                       ; $4040: $5e
	nop                                              ; $4041: $00
	cp l                                             ; $4042: $bd
	nop                                              ; $4043: $00
	xor $73                                          ; $4044: $ee $73
	call z, Call_045_77ff                            ; $4046: $cc $ff $77
	db $fc                                           ; $4049: $fc
	sbc [hl]                                         ; $404a: $9e
	add d                                            ; $404b: $82
	ld a, e                                          ; $404c: $7b
	db $f4                                           ; $404d: $f4
	ld a, a                                          ; $404e: $7f
	adc h                                            ; $404f: $8c
	ld h, a                                          ; $4050: $67
	ldh a, [$75]                                     ; $4051: $f0 $75
	ld a, l                                          ; $4053: $7d
	ld a, a                                          ; $4054: $7f
	ld c, b                                          ; $4055: $48
	sub a                                            ; $4056: $97
	ld a, [$5401]                                    ; $4057: $fa $01 $54
	ld bc, $0300                                     ; $405a: $01 $00 $03
	nop                                              ; $405d: $00
	inc bc                                           ; $405e: $03
	ld [hl], a                                       ; $405f: $77
	db $f4                                           ; $4060: $f4
	halt                                             ; $4061: $76
	cp b                                             ; $4062: $b8
	ld a, d                                          ; $4063: $7a
	and $9b                                          ; $4064: $e6 $9b
	add b                                            ; $4066: $80
	xor d                                            ; $4067: $aa
	add b                                            ; $4068: $80
	push de                                          ; $4069: $d5
	ld h, d                                          ; $406a: $62
	and [hl]                                         ; $406b: $a6
	ld [hl], a                                       ; $406c: $77
	add sp, $6f                                      ; $406d: $e8 $6f
	call nc, $fe5f                                   ; $406f: $d4 $5f $fe
	sbc [hl]                                         ; $4072: $9e
	cp [hl]                                          ; $4073: $be
	ld d, e                                          ; $4074: $53
	ldh a, [$7f]                                     ; $4075: $f0 $7f
	call z, $e07f                                    ; $4077: $cc $7f $e0
	sbc [hl]                                         ; $407a: $9e
	ld d, h                                          ; $407b: $54
	ld d, [hl]                                       ; $407c: $56
	add [hl]                                         ; $407d: $86
	ld [hl], e                                       ; $407e: $73
	ret nc                                           ; $407f: $d0

	sub [hl]                                         ; $4080: $96
	ld a, [$f400]                                    ; $4081: $fa $00 $f4
	nop                                              ; $4084: $00
	xor b                                            ; $4085: $a8
	nop                                              ; $4086: $00
	ld d, b                                          ; $4087: $50
	nop                                              ; $4088: $00
	add b                                            ; $4089: $80
	cp $77                                           ; $408a: $fe $77
	db $fc                                           ; $408c: $fc
	sbc [hl]                                         ; $408d: $9e
	and d                                            ; $408e: $a2
	ld a, e                                          ; $408f: $7b
	ld d, h                                          ; $4090: $54
	sbc [hl]                                         ; $4091: $9e
	ld [bc], a                                       ; $4092: $02
	ld h, e                                          ; $4093: $63
	db $fc                                           ; $4094: $fc
	rst $38                                          ; $4095: $ff
	ld a, a                                          ; $4096: $7f
	ld a, b                                          ; $4097: $78
	ld a, a                                          ; $4098: $7f
	xor b                                            ; $4099: $a8

Call_045_409a:
	ld a, a                                          ; $409a: $7f
	cp b                                             ; $409b: $b8
	sbc [hl]                                         ; $409c: $9e
	ld a, l                                          ; $409d: $7d
	ld [hl], e                                       ; $409e: $73
	call nz, $b37d                                   ; $409f: $c4 $7d $b3
	ld l, a                                          ; $40a2: $6f
	ld b, b                                          ; $40a3: $40
	ld a, a                                          ; $40a4: $7f
	add h                                            ; $40a5: $84
	ld a, a                                          ; $40a6: $7f
	ld b, b                                          ; $40a7: $40
	sbc [hl]                                         ; $40a8: $9e
	dec bc                                           ; $40a9: $0b
	ld a, e                                          ; $40aa: $7b
	jr nz, jr_045_4124                               ; $40ab: $20 $77

	call c, $325e                                    ; $40ad: $dc $5e $32
	ld a, a                                          ; $40b0: $7f
	ret c                                            ; $40b1: $d8

	ld a, e                                          ; $40b2: $7b
	ld l, h                                          ; $40b3: $6c
	ld h, e                                          ; $40b4: $63
	and d                                            ; $40b5: $a2
	halt                                             ; $40b6: $76
	ld [hl], h                                       ; $40b7: $74
	ld [hl], a                                       ; $40b8: $77
	sbc h                                            ; $40b9: $9c
	ld a, e                                          ; $40ba: $7b
	or $93                                           ; $40bb: $f6 $93
	ld bc, $03fd                                     ; $40bd: $01 $fd $03
	ld d, h                                          ; $40c0: $54
	inc bc                                           ; $40c1: $03
	and c                                            ; $40c2: $a1
	inc bc                                           ; $40c3: $03
	ld [hl], h                                       ; $40c4: $74
	inc bc                                           ; $40c5: $03
	xor c                                            ; $40c6: $a9
	inc bc                                           ; $40c7: $03
	ld d, l                                          ; $40c8: $55
	ld a, e                                          ; $40c9: $7b
	ld b, b                                          ; $40ca: $40
	ld a, a                                          ; $40cb: $7f
	cp $7f                                           ; $40cc: $fe $7f
	xor h                                            ; $40ce: $ac
	sbc h                                            ; $40cf: $9c
	ld e, l                                          ; $40d0: $5d
	add b                                            ; $40d1: $80
	ld a, [hl]                                       ; $40d2: $7e
	ld a, e                                          ; $40d3: $7b
	ld b, h                                          ; $40d4: $44
	sbc [hl]                                         ; $40d5: $9e
	ld l, d                                          ; $40d6: $6a
	ld l, e                                          ; $40d7: $6b
	ld b, b                                          ; $40d8: $40
	ld a, [hl]                                       ; $40d9: $7e
	ld [hl], e                                       ; $40da: $73
	sbc [hl]                                         ; $40db: $9e
	ret nc                                           ; $40dc: $d0

	ld a, e                                          ; $40dd: $7b
	ld a, h                                          ; $40de: $7c
	sbc c                                            ; $40df: $99
	push de                                          ; $40e0: $d5
	nop                                              ; $40e1: $00
	adc d                                            ; $40e2: $8a
	jr nz, jr_045_413a                               ; $40e3: $20 $55

	ld h, b                                          ; $40e5: $60
	db $fd                                           ; $40e6: $fd
	sbc c                                            ; $40e7: $99
	ld d, d                                          ; $40e8: $52
	inc a                                            ; $40e9: $3c
	rra                                              ; $40ea: $1f
	cp $be                                           ; $40eb: $fe $be
	rst $38                                          ; $40ed: $ff
	ld l, c                                          ; $40ee: $69
	jp hl                                            ; $40ef: $e9


	cp $98                                           ; $40f0: $fe $98
	ld [bc], a                                       ; $40f2: $02
	ld bc, $03e1                                     ; $40f3: $01 $e1 $03
	db $eb                                           ; $40f6: $eb
	rst $38                                          ; $40f7: $ff
	ld d, b                                          ; $40f8: $50
	ld [hl], e                                       ; $40f9: $73
	ldh a, [$97]                                     ; $40fa: $f0 $97
	ld [bc], a                                       ; $40fc: $02
	inc b                                            ; $40fd: $04
	dec b                                            ; $40fe: $05
	ld c, $43                                        ; $40ff: $0e $43
	cp a                                             ; $4101: $bf
	rst SubAFromDE                                          ; $4102: $df
	rst $38                                          ; $4103: $ff
	ld h, c                                          ; $4104: $61
	sbc l                                            ; $4105: $9d
	sub a                                            ; $4106: $97
	nop                                              ; $4107: $00
	jr nz, jr_045_414a                               ; $4108: $20 $40

	ld [bc], a                                       ; $410a: $02
	db $f4                                           ; $410b: $f4
	db $f4                                           ; $410c: $f4
	cp $ab                                           ; $410d: $fe $ab
	ld l, e                                          ; $410f: $6b
	ret nc                                           ; $4110: $d0

	sub [hl]                                         ; $4111: $96
	ld [$0c00], sp                                   ; $4112: $08 $00 $0c
	jr c, jr_045_4155                                ; $4115: $38 $3e

	ld a, h                                          ; $4117: $7c
	ccf                                              ; $4118: $3f
	ld a, a                                          ; $4119: $7f
	xor a                                            ; $411a: $af
	ld a, e                                          ; $411b: $7b
	ldh a, [rPCM34]                                  ; $411c: $f0 $77
	call c, $0296                                    ; $411e: $dc $96 $02
	inc bc                                           ; $4121: $03
	ld c, $13                                        ; $4122: $0e $13

jr_045_4124:
	inc hl                                           ; $4124: $23
	add hl, de                                       ; $4125: $19
	sbc c                                            ; $4126: $99
	ccf                                              ; $4127: $3f
	cp $73                                           ; $4128: $fe $73
	ldh a, [hDisp1_BGP]                                     ; $412a: $f0 $92
	ld bc, $e2ff                                     ; $412c: $01 $ff $e2
	add b                                            ; $412f: $80
	and b                                            ; $4130: $a0
	ldh [$f0], a                                     ; $4131: $e0 $f0
	ldh [$b8], a                                     ; $4133: $e0 $b8
	db $fc                                           ; $4135: $fc
	db $ec                                           ; $4136: $ec
	rst $38                                          ; $4137: $ff
	ld d, a                                          ; $4138: $57
	ld a, e                                          ; $4139: $7b

jr_045_413a:
	ldh a, [$7f]                                     ; $413a: $f0 $7f
	db $ec                                           ; $413c: $ec
	ld a, a                                          ; $413d: $7f
	ret nc                                           ; $413e: $d0

	sbc b                                            ; $413f: $98
	jr nz, jr_045_4142                               ; $4140: $20 $00

jr_045_4142:
	xor h                                            ; $4142: $ac
	ld a, b                                          ; $4143: $78
	ld e, [hl]                                       ; $4144: $5e
	db $fc                                           ; $4145: $fc
	inc c                                            ; $4146: $0c
	sbc $ff                                          ; $4147: $de $ff
	ld [hl], a                                       ; $4149: $77

jr_045_414a:
	ldh a, [$66]                                     ; $414a: $f0 $66
	ld c, b                                          ; $414c: $48
	sub h                                            ; $414d: $94
	ret nz                                           ; $414e: $c0

	add b                                            ; $414f: $80
	ldh [$c0], a                                     ; $4150: $e0 $c0
	xor a                                            ; $4152: $af
	ld hl, sp+$55                                    ; $4153: $f8 $55

jr_045_4155:
	rst $38                                          ; $4155: $ff
	and b                                            ; $4156: $a0
	nop                                              ; $4157: $00
	ld b, b                                          ; $4158: $40
	or $9c                                           ; $4159: $f6 $9c
	ld d, a                                          ; $415b: $57
	db $fc                                           ; $415c: $fc
	ld a, [hl+]                                      ; $415d: $2a
	db $f4                                           ; $415e: $f4
	sbc [hl]                                         ; $415f: $9e
	ldh a, [$f2]                                     ; $4160: $f0 $f2
	ld l, [hl]                                       ; $4162: $6e
	inc e                                            ; $4163: $1c
	rla                                              ; $4164: $17
	ldh a, [rPCM12]                                  ; $4165: $f0 $76
	call z, $f057                                    ; $4167: $cc $57 $f0
	ld h, l                                          ; $416a: $65
	add sp, -$80                                     ; $416b: $e8 $80
	ld e, $00                                        ; $416d: $1e $00
	inc hl                                           ; $416f: $23
	ld e, $41                                        ; $4170: $1e $41
	ccf                                              ; $4172: $3f
	xor a                                            ; $4173: $af
	rst $38                                          ; $4174: $ff
	xor b                                            ; $4175: $a8
	ld [bc], a                                       ; $4176: $02
	ld d, h                                          ; $4177: $54
	ld [bc], a                                       ; $4178: $02
	xor l                                            ; $4179: $ad
	ld [bc], a                                       ; $417a: $02
	inc b                                            ; $417b: $04
	inc bc                                           ; $417c: $03
	inc b                                            ; $417d: $04
	inc bc                                           ; $417e: $03
	nop                                              ; $417f: $00
	rlca                                             ; $4180: $07
	ld b, b                                          ; $4181: $40
	add a                                            ; $4182: $87
	nop                                              ; $4183: $00
	rst JumpTable                                          ; $4184: $c7
	add b                                            ; $4185: $80
	rlca                                             ; $4186: $07
	ld bc, $0807                                     ; $4187: $01 $07 $08
	rlca                                             ; $418a: $07
	ld c, c                                          ; $418b: $49
	sbc c                                            ; $418c: $99
	daa                                              ; $418d: $27

jr_045_418e:
	add hl, bc                                       ; $418e: $09
	ld h, a                                          ; $418f: $67
	add hl, bc                                       ; $4190: $09
	ld h, a                                          ; $4191: $67
	inc bc                                           ; $4192: $03
	ld a, e                                          ; $4193: $7b
	cp $96                                           ; $4194: $fe $96
	ld [$c080], a                                    ; $4196: $ea $80 $c0
	add b                                            ; $4199: $80
	add b                                            ; $419a: $80
	ret nz                                           ; $419b: $c0

	nop                                              ; $419c: $00

Call_045_419d:
	ret nz                                           ; $419d: $c0

	add c                                            ; $419e: $81
	ld a, e                                          ; $419f: $7b
	cp $88                                           ; $41a0: $fe $88
	add e                                            ; $41a2: $83
	rst SubAFromHL                                          ; $41a3: $d7
	dec b                                            ; $41a4: $05
	sbc a                                            ; $41a5: $9f
	ld a, [bc]                                       ; $41a6: $0a
	ld h, b                                          ; $41a7: $60
	add b                                            ; $41a8: $80
	ld h, b                                          ; $41a9: $60
	ret nz                                           ; $41aa: $c0

	ld h, b                                          ; $41ab: $60
	jr nz, jr_045_418e                               ; $41ac: $20 $e0

	db $10                                           ; $41ae: $10
	ldh [$28], a                                     ; $41af: $e0 $28
	ldh a, [$fa]                                     ; $41b1: $f0 $fa
	rst $38                                          ; $41b3: $ff
	ld d, h                                          ; $41b4: $54
	rst $38                                          ; $41b5: $ff
	dec d                                            ; $41b6: $15
	ld [$7aaf], a                                    ; $41b7: $ea $af $7a
	rst SubAFromHL                                          ; $41ba: $d7
	sub e                                            ; $41bb: $93
	xor [hl]                                         ; $41bc: $ae
	ld d, c                                          ; $41bd: $51
	ld d, l                                          ; $41be: $55
	xor d                                            ; $41bf: $aa
	xor b                                            ; $41c0: $a8
	ld d, a                                          ; $41c1: $57
	ld hl, sp+$07                                    ; $41c2: $f8 $07
	ld d, l                                          ; $41c4: $55
	nop                                              ; $41c5: $00
	ld d, a                                          ; $41c6: $57
	xor b                                            ; $41c7: $a8
	ld [hl], l                                       ; $41c8: $75
	ld d, b                                          ; $41c9: $50
	sbc c                                            ; $41ca: $99
	and b                                            ; $41cb: $a0
	ld e, a                                          ; $41cc: $5f
	ld d, h                                          ; $41cd: $54
	xor e                                            ; $41ce: $ab
	ld bc, $74fe                                     ; $41cf: $01 $fe $74
	ld [hl], b                                       ; $41d2: $70
	ld a, a                                          ; $41d3: $7f
	db $fc                                           ; $41d4: $fc
	ld [hl], l                                       ; $41d5: $75
	ld c, b                                          ; $41d6: $48
	ld a, a                                          ; $41d7: $7f
	ld sp, hl                                        ; $41d8: $f9
	sub a                                            ; $41d9: $97
	rrca                                             ; $41da: $0f
	ldh a, [rIE]                                     ; $41db: $f0 $ff
	nop                                              ; $41dd: $00
	or b                                             ; $41de: $b0
	ld c, a                                          ; $41df: $4f
	ld c, e                                          ; $41e0: $4b
	rra                                              ; $41e1: $1f
	ld a, c                                          ; $41e2: $79
	ld c, $9a                                        ; $41e3: $0e $9a
	ld d, l                                          ; $41e5: $55
	ld d, h                                          ; $41e6: $54
	xor e                                            ; $41e7: $ab
	ld a, [hl+]                                      ; $41e8: $2a
	push de                                          ; $41e9: $d5
	ld [hl], h                                       ; $41ea: $74
	ld e, h                                          ; $41eb: $5c
	sbc e                                            ; $41ec: $9b
	cpl                                              ; $41ed: $2f
	ldh a, [$f7]                                     ; $41ee: $f0 $f7
	ld hl, sp+$75                                    ; $41f0: $f8 $75
	inc h                                            ; $41f2: $24
	sbc c                                            ; $41f3: $99
	ld d, b                                          ; $41f4: $50
	xor a                                            ; $41f5: $af
	xor d                                            ; $41f6: $aa
	ld d, l                                          ; $41f7: $55
	db $fd                                           ; $41f8: $fd
	ld [bc], a                                       ; $41f9: $02
	halt                                             ; $41fa: $76
	or c                                             ; $41fb: $b1
	ld a, c                                          ; $41fc: $79
	ld a, [hl]                                       ; $41fd: $7e
	sbc l                                            ; $41fe: $9d
	rst $38                                          ; $41ff: $ff
	add b                                            ; $4200: $80
	ld a, c                                          ; $4201: $79
	adc a                                            ; $4202: $8f
	ld a, a                                          ; $4203: $7f
	xor d                                            ; $4204: $aa
	sbc e                                            ; $4205: $9b
	ld l, d                                          ; $4206: $6a
	sub l                                            ; $4207: $95
	push af                                          ; $4208: $f5
	ld a, [bc]                                       ; $4209: $0a
	ld [hl], l                                       ; $420a: $75
	ld [hl+], a                                      ; $420b: $22
	halt                                             ; $420c: $76
	sbc h                                            ; $420d: $9c
	sbc l                                            ; $420e: $9d
	ld a, [bc]                                       ; $420f: $0a
	push af                                          ; $4210: $f5
	ld [hl], h                                       ; $4211: $74
	db $e4                                           ; $4212: $e4
	ld [hl], a                                       ; $4213: $77
	and [hl]                                         ; $4214: $a6
	ld a, d                                          ; $4215: $7a
	add c                                            ; $4216: $81
	ld a, e                                          ; $4217: $7b
	ei                                               ; $4218: $fb
	ld h, h                                          ; $4219: $64
	ld a, $7e                                        ; $421a: $3e $7e
	ld c, $7f                                        ; $421c: $0e $7f
	ret nc                                           ; $421e: $d0

	sbc [hl]                                         ; $421f: $9e
	ld [$f05b], sp                                   ; $4220: $08 $5b $f0
	ld [hl], a                                       ; $4223: $77
	ld [hl+], a                                      ; $4224: $22
	ld [hl], h                                       ; $4225: $74
	dec [hl]                                         ; $4226: $35
	ld [hl], h                                       ; $4227: $74
	add b                                            ; $4228: $80
	ld l, a                                          ; $4229: $6f
	xor $9b                                          ; $422a: $ee $9b

jr_045_422c:
	xor c                                            ; $422c: $a9
	nop                                              ; $422d: $00
	xor d                                            ; $422e: $aa
	rst $38                                          ; $422f: $ff
	ld [hl], l                                       ; $4230: $75
	rst GetHLinHL                                          ; $4231: $cf
	sbc l                                            ; $4232: $9d
	ld b, b                                          ; $4233: $40
	cp a                                             ; $4234: $bf
	ld l, a                                          ; $4235: $6f
	call c, Call_045_6074                            ; $4236: $dc $74 $60
	ld l, [hl]                                       ; $4239: $6e
	jr z, jr_045_429b                                ; $423a: $28 $5f

	ldh a, [$6e]                                     ; $423c: $f0 $6e
	ld h, $5f                                        ; $423e: $26 $5f
	ldh a, [$7f]                                     ; $4240: $f0 $7f
	sbc c                                            ; $4242: $99
	ld [hl], h                                       ; $4243: $74
	add a                                            ; $4244: $87
	ld [hl], a                                       ; $4245: $77
	ldh a, [$72]                                     ; $4246: $f0 $72
	call nc, $f47b                                   ; $4248: $d4 $7b $f4
	ld [hl], a                                       ; $424b: $77
	push hl                                          ; $424c: $e5
	ld l, a                                          ; $424d: $6f
	ldh a, [$9a]                                     ; $424e: $f0 $9a
	ld b, c                                          ; $4250: $41
	inc e                                            ; $4251: $1c
	ld a, a                                          ; $4252: $7f
	rst $38                                          ; $4253: $ff
	inc b                                            ; $4254: $04
	ld [hl], e                                       ; $4255: $73
	ret nc                                           ; $4256: $d0

	ld a, a                                          ; $4257: $7f
	ld [hl], b                                       ; $4258: $70
	ld l, a                                          ; $4259: $6f
	ldh [$9c], a                                     ; $425a: $e0 $9c
	add e                                            ; $425c: $83
	add $29                                          ; $425d: $c6 $29
	ld [hl], a                                       ; $425f: $77
	sbc $78                                          ; $4260: $de $78
	ld h, d                                          ; $4262: $62
	ld a, [hl]                                       ; $4263: $7e
	inc de                                           ; $4264: $13
	ld a, a                                          ; $4265: $7f
	ld d, d                                          ; $4266: $52
	ld a, h                                          ; $4267: $7c
	call z, Call_045_419d                            ; $4268: $cc $9d $41
	inc hl                                           ; $426b: $23
	ld [hl], a                                       ; $426c: $77
	jp nc, $948f                                     ; $426d: $d2 $8f $94

	db $eb                                           ; $4270: $eb
	db $eb                                           ; $4271: $eb
	call nc, $e0df                                   ; $4272: $d4 $df $e0
	jp z, $fde0                                      ; $4275: $ca $e0 $fd

	ld hl, sp+$28                                    ; $4278: $f8 $28
	ld a, a                                          ; $427a: $7f
	ret nz                                           ; $427b: $c0

	rst $38                                          ; $427c: $ff
	ld a, [hl+]                                      ; $427d: $2a
	push de                                          ; $427e: $d5
	ld [hl], h                                       ; $427f: $74
	ld d, [hl]                                       ; $4280: $56
	ld h, a                                          ; $4281: $67
	or b                                             ; $4282: $b0
	ld [hl], a                                       ; $4283: $77
	call nc, $027f                                   ; $4284: $d4 $7f $02
	ld a, h                                          ; $4287: $7c
	ld hl, sp+$77                                    ; $4288: $f8 $77
	ld d, d                                          ; $428a: $52
	ld [hl], h                                       ; $428b: $74
	ld e, b                                          ; $428c: $58
	ld [hl], h                                       ; $428d: $74
	ld b, b                                          ; $428e: $40
	ld [hl], a                                       ; $428f: $77
	jr z, jr_045_422c                                ; $4290: $28 $9a

	ld c, $f0                                        ; $4292: $0e $f0
	db $dd                                           ; $4294: $dd
	nop                                              ; $4295: $00
	cp d                                             ; $4296: $ba
	ld a, e                                          ; $4297: $7b
	ldh a, [$6f]                                     ; $4298: $f0 $6f
	ld b, [hl]                                       ; $429a: $46

jr_045_429b:
	sbc l                                            ; $429b: $9d
	inc c                                            ; $429c: $0c
	di                                               ; $429d: $f3
	ld [hl], a                                       ; $429e: $77
	jp nc, $fc7f                                     ; $429f: $d2 $7f $fc

	sub a                                            ; $42a2: $97
	sbc a                                            ; $42a3: $9f
	ccf                                              ; $42a4: $3f
	cp $3f                                           ; $42a5: $fe $3f
	ld a, [$eb37]                                    ; $42a7: $fa $37 $eb
	scf                                              ; $42aa: $37
	ld a, e                                          ; $42ab: $7b
	ld a, [hl]                                       ; $42ac: $7e
	ld [hl], e                                       ; $42ad: $73
	ldh a, [$7e]                                     ; $42ae: $f0 $7e
	adc $97                                          ; $42b0: $ce $97
	and $78                                          ; $42b2: $e6 $78
	ld sp, hl                                        ; $42b4: $f9
	ld h, b                                          ; $42b5: $60
	ld h, d                                          ; $42b6: $62
	db $fc                                           ; $42b7: $fc
	dec d                                            ; $42b8: $15
	ldh [rPCM34], a                                  ; $42b9: $e0 $77
	ldh a, [$7d]                                     ; $42bb: $f0 $7d
	ld a, [hl-]                                      ; $42bd: $3a
	ld a, [hl]                                       ; $42be: $7e
	sbc [hl]                                         ; $42bf: $9e
	ld a, a                                          ; $42c0: $7f
	or [hl]                                          ; $42c1: $b6
	ld [hl], b                                       ; $42c2: $70
	ld h, d                                          ; $42c3: $62
	ld l, d                                          ; $42c4: $6a
	ld h, $77                                        ; $42c5: $26 $77
	ld hl, sp+$74                                    ; $42c7: $f8 $74
	add [hl]                                         ; $42c9: $86
	ld d, a                                          ; $42ca: $57
	ldh a, [rPCM34]                                  ; $42cb: $f0 $77
	or b                                             ; $42cd: $b0
	ld a, a                                          ; $42ce: $7f
	sbc d                                            ; $42cf: $9a
	ld h, a                                          ; $42d0: $67
	ldh a, [$5e]                                     ; $42d1: $f0 $5e
	call nc, $9e7c                                   ; $42d3: $d4 $7c $9e
	ld l, h                                          ; $42d6: $6c
	and b                                            ; $42d7: $a0
	ld h, a                                          ; $42d8: $67
	ldh a, [$fd]                                     ; $42d9: $f0 $fd
	ld d, h                                          ; $42db: $54
	ld b, d                                          ; $42dc: $42
	db $fd                                           ; $42dd: $fd
	ld a, a                                          ; $42de: $7f
	and d                                            ; $42df: $a2
	ld [hl], h                                       ; $42e0: $74
	xor b                                            ; $42e1: $a8
	ld l, d                                          ; $42e2: $6a
	ld h, h                                          ; $42e3: $64
	cp $77                                           ; $42e4: $fe $77
	cp d                                             ; $42e6: $ba
	ld h, a                                          ; $42e7: $67
	ldh a, [rPCM34]                                  ; $42e8: $f0 $77
	or b                                             ; $42ea: $b0
	ld a, a                                          ; $42eb: $7f
	inc c                                            ; $42ec: $0c
	ld h, a                                          ; $42ed: $67
	adc $77                                          ; $42ee: $ce $77
	ldh a, [$7d]                                     ; $42f0: $f0 $7d
	ld d, d                                          ; $42f2: $52
	ld h, h                                          ; $42f3: $64
	ld [hl], d                                       ; $42f4: $72
	ld a, h                                          ; $42f5: $7c
	and d                                            ; $42f6: $a2
	ld a, a                                          ; $42f7: $7f
	ld h, h                                          ; $42f8: $64
	ld a, l                                          ; $42f9: $7d
	ld [hl], $94                                     ; $42fa: $36 $94
	and c                                            ; $42fc: $a1
	nop                                              ; $42fd: $00
	xor $1f                                          ; $42fe: $ee $1f
	rst FarCall                                          ; $4300: $f7
	rra                                              ; $4301: $1f
	jp z, $a237                                      ; $4302: $ca $37 $a2

jr_045_4305:
	rlca                                             ; $4305: $07
	ld d, e                                          ; $4306: $53
	call c, Call_045_7c03                            ; $4307: $dc $03 $7c
	ld [hl], b                                       ; $430a: $70
	adc [hl]                                         ; $430b: $8e
	add b                                            ; $430c: $80
	nop                                              ; $430d: $00
	inc c                                            ; $430e: $0c
	cp $e6                                           ; $430f: $fe $e6
	cp $f4                                           ; $4311: $fe $f4
	cp $9c                                           ; $4313: $fe $9c
	cp $79                                           ; $4315: $fe $79
	sbc h                                            ; $4317: $9c
	ld e, $ff                                        ; $4318: $1e $ff
	ei                                               ; $431a: $fb
	db $fc                                           ; $431b: $fc
	nop                                              ; $431c: $00
	call c, Call_045_7f01                            ; $431d: $dc $01 $7f
	ld a, [$aa9a]                                    ; $4320: $fa $9a $aa
	ld bc, $0154                                     ; $4323: $01 $54 $01
	ld [$ca7b], a                                    ; $4326: $ea $7b $ca
	sub e                                            ; $4329: $93
	ld hl, sp-$04                                    ; $432a: $f8 $fc
	ld hl, sp-$04                                    ; $432c: $f8 $fc
	ldh a, [$f8]                                     ; $432e: $f0 $f8
	ld d, c                                          ; $4330: $51
	sbc $5c                                          ; $4331: $de $5c
	cp $cd                                           ; $4333: $fe $cd
	ldh a, [$5f]                                     ; $4335: $f0 $5f
	ld a, $7f                                        ; $4337: $3e $7f
	ld b, d                                          ; $4339: $42
	sbc e                                            ; $433a: $9b
	ld a, [bc]                                       ; $433b: $0a
	nop                                              ; $433c: $00
	ld b, l                                          ; $433d: $45
	nop                                              ; $433e: $00
	ld [hl], h                                       ; $433f: $74
	db $e4                                           ; $4340: $e4
	ld a, a                                          ; $4341: $7f
	sbc [hl]                                         ; $4342: $9e
	ld a, a                                          ; $4343: $7f
	ld h, [hl]                                       ; $4344: $66
	ld [hl], a                                       ; $4345: $77
	sbc [hl]                                         ; $4346: $9e
	ld l, [hl]                                       ; $4347: $6e
	ret nz                                           ; $4348: $c0

	ld e, a                                          ; $4349: $5f
	ld d, b                                          ; $434a: $50
	ld [hl], a                                       ; $434b: $77
	or $7d                                           ; $434c: $f6 $7d
	add $67                                          ; $434e: $c6 $67
	ldh a, [c]                                       ; $4350: $f2
	ld l, a                                          ; $4351: $6f
	ldh a, [$9c]                                     ; $4352: $f0 $9c
	ld [bc], a                                       ; $4354: $02
	ld sp, hl                                        ; $4355: $f9
	ei                                               ; $4356: $fb
	ld d, e                                          ; $4357: $53
	ldh a, [$7f]                                     ; $4358: $f0 $7f
	db $fd                                           ; $435a: $fd
	ld c, a                                          ; $435b: $4f
	ldh [$9c], a                                     ; $435c: $e0 $9c
	ld [$efe7], sp                                   ; $435e: $08 $e7 $ef
	inc de                                           ; $4361: $13
	ldh [$9c], a                                     ; $4362: $e0 $9c
	jr nz, jr_045_4305                               ; $4364: $20 $9f

	cp a                                             ; $4366: $bf
	ld c, a                                          ; $4367: $4f
	ldh [$df], a                                     ; $4368: $e0 $df
	cp $03                                           ; $436a: $fe $03
	sub b                                            ; $436c: $90
	inc bc                                           ; $436d: $03
	sub b                                            ; $436e: $90
	inc bc                                           ; $436f: $03
	sub b                                            ; $4370: $90
	ld c, e                                          ; $4371: $4b
	sub b                                            ; $4372: $90
	sbc [hl]                                         ; $4373: $9e
	rlca                                             ; $4374: $07
	ld c, a                                          ; $4375: $4f
	sub b                                            ; $4376: $90
	sbc l                                            ; $4377: $9d
	sbc a                                            ; $4378: $9f
	ldh [$72], a                                     ; $4379: $e0 $72
	sub h                                            ; $437b: $94
	ld [hl], c                                       ; $437c: $71
	ld h, a                                          ; $437d: $67
	ld e, a                                          ; $437e: $5f
	sub b                                            ; $437f: $90
	ld a, h                                          ; $4380: $7c
	sub b                                            ; $4381: $90
	ld d, a                                          ; $4382: $57
	or b                                             ; $4383: $b0
	ld [hl], h                                       ; $4384: $74
	sub b                                            ; $4385: $90
	ld e, a                                          ; $4386: $5f
	sub b                                            ; $4387: $90
	sbc l                                            ; $4388: $9d
	cp $01                                           ; $4389: $fe $01
	ld h, a                                          ; $438b: $67
	ldh a, [$6f]                                     ; $438c: $f0 $6f
	ldh [$7b], a                                     ; $438e: $e0 $7b
	call nz, $b768                                   ; $4390: $c4 $68 $b7
	ld l, a                                          ; $4393: $6f
	sub b                                            ; $4394: $90
	ld a, [hl]                                       ; $4395: $7e
	ld l, [hl]                                       ; $4396: $6e
	ld [hl], a                                       ; $4397: $77
	and [hl]                                         ; $4398: $a6
	ld a, b                                          ; $4399: $78
	ld [hl], c                                       ; $439a: $71
	ld a, [hl]                                       ; $439b: $7e
	and c                                            ; $439c: $a1
	ld a, a                                          ; $439d: $7f
	and $9a                                          ; $439e: $e6 $9a
	cp d                                             ; $43a0: $ba
	ei                                               ; $43a1: $fb
	nop                                              ; $43a2: $00
	ld [bc], a                                       ; $43a3: $02
	nop                                              ; $43a4: $00
	ld a, e                                          ; $43a5: $7b
	db $fc                                           ; $43a6: $fc
	sbc b                                            ; $43a7: $98
	ld sp, hl                                        ; $43a8: $f9
	xor a                                            ; $43a9: $af
	ld d, e                                          ; $43aa: $53
	inc b                                            ; $43ab: $04
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	ld d, b                                          ; $43ae: $50
	ld a, b                                          ; $43af: $78
	pop bc                                           ; $43b0: $c1
	ld [hl], e                                       ; $43b1: $73
	add [hl]                                         ; $43b2: $86
	sbc e                                            ; $43b3: $9b
	ld h, b                                          ; $43b4: $60
	rst $38                                          ; $43b5: $ff
	ld [bc], a                                       ; $43b6: $02
	db $fd                                           ; $43b7: $fd
	ld l, [hl]                                       ; $43b8: $6e
	ld bc, $ae7f                                     ; $43b9: $01 $7f $ae
	sub [hl]                                         ; $43bc: $96
	ld [$ef00], sp                                   ; $43bd: $08 $00 $ef
	nop                                              ; $43c0: $00
	add hl, bc                                       ; $43c1: $09
	rst SubAFromBC                                          ; $43c2: $e7
	cp h                                             ; $43c3: $bc
	ld c, a                                          ; $43c4: $4f
	db $10                                           ; $43c5: $10
	ld [hl], e                                       ; $43c6: $73
	ldh a, [rOCPD]                                   ; $43c7: $f0 $6b
	ld h, [hl]                                       ; $43c9: $66
	ld a, b                                          ; $43ca: $78
	ld e, h                                          ; $43cb: $5c
	db $fc                                           ; $43cc: $fc
	sbc l                                            ; $43cd: $9d
	and b                                            ; $43ce: $a0
	cp a                                             ; $43cf: $bf
	cp $7f                                           ; $43d0: $fe $7f
	db $fc                                           ; $43d2: $fc
	ld a, a                                          ; $43d3: $7f
	and [hl]                                         ; $43d4: $a6
	sbc e                                            ; $43d5: $9b
	ld hl, sp+$1f                                    ; $43d6: $f8 $1f

jr_045_43d8:
	ld h, b                                          ; $43d8: $60
	jr nz, jr_045_43d8                               ; $43d9: $20 $fd

	ld a, a                                          ; $43db: $7f
	ld a, $73                                        ; $43dc: $3e $73
	db $fc                                           ; $43de: $fc
	sbc e                                            ; $43df: $9b
	cp $2b                                           ; $43e0: $fe $2b
	call nc, Call_045_6901                           ; $43e2: $d4 $01 $69
	and b                                            ; $43e5: $a0
	ld l, a                                          ; $43e6: $6f
	ld [hl], $9b                                     ; $43e7: $36 $9b
	ldh [$7f], a                                     ; $43e9: $e0 $7f
	add b                                            ; $43eb: $80
	add b                                            ; $43ec: $80
	db $fd                                           ; $43ed: $fd
	ld a, a                                          ; $43ee: $7f
	sub h                                            ; $43ef: $94
	ld [hl], a                                       ; $43f0: $77
	db $fc                                           ; $43f1: $fc
	ld a, e                                          ; $43f2: $7b
	sub b                                            ; $43f3: $90
	sbc h                                            ; $43f4: $9c
	ld d, c                                          ; $43f5: $51
	ld b, $02                                        ; $43f6: $06 $02
	ld e, a                                          ; $43f8: $5f
	ldh [$7f], a                                     ; $43f9: $e0 $7f
	db $fd                                           ; $43fb: $fd
	sbc [hl]                                         ; $43fc: $9e
	add d                                            ; $43fd: $82
	ld l, a                                          ; $43fe: $6f
	sub b                                            ; $43ff: $90
	ld a, e                                          ; $4400: $7b
	sub h                                            ; $4401: $94
	ld [hl], a                                       ; $4402: $77
	db $fc                                           ; $4403: $fc
	ld a, a                                          ; $4404: $7f
	ld [hl], $99                                     ; $4405: $36 $99
	cp [hl]                                          ; $4407: $be
	ld b, a                                          ; $4408: $47
	jr jr_045_4413                                   ; $4409: $18 $08

	nop                                              ; $440b: $00
	dec d                                            ; $440c: $15
	ld [hl], h                                       ; $440d: $74
	ld hl, $e06f                                     ; $440e: $21 $6f $e0
	ld [hl], e                                       ; $4411: $73
	sub b                                            ; $4412: $90

jr_045_4413:
	ld a, c                                          ; $4413: $79
	db $fd                                           ; $4414: $fd
	ld d, e                                          ; $4415: $53
	sub b                                            ; $4416: $90
	ld a, a                                          ; $4417: $7f
	ldh [$9e], a                                     ; $4418: $e0 $9e
	xor d                                            ; $441a: $aa
	ld e, e                                          ; $441b: $5b
	sub b                                            ; $441c: $90
	ld a, l                                          ; $441d: $7d
	call $e07b                                       ; $441e: $cd $7b $e0
	ld d, e                                          ; $4421: $53
	sub b                                            ; $4422: $90
	ld a, e                                          ; $4423: $7b
	ldh a, [$5b]                                     ; $4424: $f0 $5b
	sub b                                            ; $4426: $90
	ld a, l                                          ; $4427: $7d
	or l                                             ; $4428: $b5
	ld a, a                                          ; $4429: $7f
	ldh a, [$9e]                                     ; $442a: $f0 $9e
	xor e                                            ; $442c: $ab
	ld d, e                                          ; $442d: $53
	sub b                                            ; $442e: $90
	ld a, d                                          ; $442f: $7a
	and $5b                                          ; $4430: $e6 $5b
	sub b                                            ; $4432: $90
	ld [hl], c                                       ; $4433: $71
	dec d                                            ; $4434: $15
	ld e, e                                          ; $4435: $5b
	sub b                                            ; $4436: $90
	ld [hl], e                                       ; $4437: $73
	ldh a, [$5b]                                     ; $4438: $f0 $5b
	sub b                                            ; $443a: $90
	ld h, h                                          ; $443b: $64
	ld b, l                                          ; $443c: $45
	ld l, e                                          ; $443d: $6b
	cp $6f                                           ; $443e: $fe $6f
	ld sp, hl                                        ; $4440: $f9
	ld a, a                                          ; $4441: $7f
	ret c                                            ; $4442: $d8

	sbc [hl]                                         ; $4443: $9e
	ld bc, $db69                                     ; $4444: $01 $69 $db
	ld [hl], a                                       ; $4447: $77
	ei                                               ; $4448: $fb
	ld a, l                                          ; $4449: $7d
	ld l, $7e                                        ; $444a: $2e $7e
	sub d                                            ; $444c: $92
	ld a, [hl]                                       ; $444d: $7e
	add d                                            ; $444e: $82
	sbc e                                            ; $444f: $9b
	ld a, [hl+]                                      ; $4450: $2a
	push de                                          ; $4451: $d5
	dec b                                            ; $4452: $05
	ld a, [$f077]                                    ; $4453: $fa $77 $f0
	ld a, l                                          ; $4456: $7d
	ld [hl+], a                                      ; $4457: $22
	ld a, a                                          ; $4458: $7f
	call $f077                                       ; $4459: $cd $77 $f0
	ld [hl], a                                       ; $445c: $77
	db $fc                                           ; $445d: $fc
	ld a, a                                          ; $445e: $7f
	ldh a, [$7f]                                     ; $445f: $f0 $7f
	db $e4                                           ; $4461: $e4
	ld [hl], l                                       ; $4462: $75
	ld a, $67                                        ; $4463: $3e $67
	ldh a, [$9d]                                     ; $4465: $f0 $9d
	ld [$6cf7], sp                                   ; $4467: $08 $f7 $6c
	ld c, h                                          ; $446a: $4c
	sbc l                                            ; $446b: $9d
	xor a                                            ; $446c: $af
	ld d, b                                          ; $446d: $50
	ld c, a                                          ; $446e: $4f
	ldh a, [rPCM12]                                  ; $446f: $f0 $76
	ld [hl-], a                                      ; $4471: $32
	ld [hl], a                                       ; $4472: $77
	ldh a, [$9d]                                     ; $4473: $f0 $9d
	xor b                                            ; $4475: $a8
	ld d, a                                          ; $4476: $57
	ld l, a                                          ; $4477: $6f
	ldh a, [$9d]                                     ; $4478: $f0 $9d
	ld [$6715], a                                    ; $447a: $ea $15 $67
	ret nz                                           ; $447d: $c0

Call_045_447e:
	ld l, a                                          ; $447e: $6f
	ldh a, [$5f]                                     ; $447f: $f0 $5f
	or b                                             ; $4481: $b0
	ld c, a                                          ; $4482: $4f
	ldh a, [$7f]                                     ; $4483: $f0 $7f
	db $fc                                           ; $4485: $fc
	ld a, a                                          ; $4486: $7f
	db $f4                                           ; $4487: $f4
	sbc [hl]                                         ; $4488: $9e
	ld d, h                                          ; $4489: $54
	ld a, b                                          ; $448a: $78
	ld a, h                                          ; $448b: $7c
	ld d, a                                          ; $448c: $57
	ldh a, [$72]                                     ; $448d: $f0 $72
	ld c, a                                          ; $448f: $4f
	ld e, e                                          ; $4490: $5b
	ret nc                                           ; $4491: $d0

	ld h, a                                          ; $4492: $67
	ldh a, [$7f]                                     ; $4493: $f0 $7f
	and h                                            ; $4495: $a4
	ld [hl], a                                       ; $4496: $77
	ld d, b                                          ; $4497: $50
	ld h, a                                          ; $4498: $67
	ldh a, [$9d]                                     ; $4499: $f0 $9d
	ld d, b                                          ; $449b: $50
	xor a                                            ; $449c: $af
	ld l, a                                          ; $449d: $6f
	ld b, b                                          ; $449e: $40
	ld h, a                                          ; $449f: $67
	ldh a, [$67]                                     ; $44a0: $f0 $67
	jr nz, jr_045_4513                               ; $44a2: $20 $6f

	ldh a, [$5f]                                     ; $44a4: $f0 $5f
	db $10                                           ; $44a6: $10
	inc bc                                           ; $44a7: $03
	ldh a, [$03]                                     ; $44a8: $f0 $03
	ldh a, [$6f]                                     ; $44aa: $f0 $6f
	pop af                                           ; $44ac: $f1
	ld a, [hl]                                       ; $44ad: $7e
	pop de                                           ; $44ae: $d1
	ld a, [hl]                                       ; $44af: $7e
	add l                                            ; $44b0: $85
	ld l, a                                          ; $44b1: $6f
	db $fc                                           ; $44b2: $fc
	ld [hl], c                                       ; $44b3: $71
	ld b, h                                          ; $44b4: $44
	ld [hl], d                                       ; $44b5: $72
	sbc c                                            ; $44b6: $99
	ld l, a                                          ; $44b7: $6f
	db $fc                                           ; $44b8: $fc
	ld a, [hl]                                       ; $44b9: $7e
	ret nc                                           ; $44ba: $d0

	ld a, a                                          ; $44bb: $7f
	db $ec                                           ; $44bc: $ec
	ld d, a                                          ; $44bd: $57
	ldh a, [$03]                                     ; $44be: $f0 $03
	db $fc                                           ; $44c0: $fc
	inc bc                                           ; $44c1: $03
	db $fc                                           ; $44c2: $fc
	rra                                              ; $44c3: $1f
	db $fc                                           ; $44c4: $fc
	ld a, [hl]                                       ; $44c5: $7e
	call nc, $0175                                   ; $44c6: $d4 $75 $01
	ld a, a                                          ; $44c9: $7f
	ld hl, sp+$7d                                    ; $44ca: $f8 $7d
	dec c                                            ; $44cc: $0d
	ld [hl], c                                       ; $44cd: $71
	ld l, c                                          ; $44ce: $69
	ld a, [$4c6b]                                    ; $44cf: $fa $6b $4c
	inc bc                                           ; $44d2: $03
	ldh a, [$27]                                     ; $44d3: $f0 $27
	ldh a, [$9e]                                     ; $44d5: $f0 $9e
	and d                                            ; $44d7: $a2
	inc de                                           ; $44d8: $13
	ldh [$7c], a                                     ; $44d9: $e0 $7c
	xor $4f                                          ; $44db: $ee $4f
	ldh a, [rPCM34]                                  ; $44dd: $f0 $77
	add b                                            ; $44df: $80
	rra                                              ; $44e0: $1f
	ldh a, [$75]                                     ; $44e1: $f0 $75
	ld d, c                                          ; $44e3: $51
	ld e, a                                          ; $44e4: $5f
	ldh a, [$79]                                     ; $44e5: $f0 $79
	dec d                                            ; $44e7: $15
	ld [hl], e                                       ; $44e8: $73
	ldh a, [rAUD1LOW]                                ; $44e9: $f0 $13
	nop                                              ; $44eb: $00
	pop bc                                           ; $44ec: $c1
	inc sp                                           ; $44ed: $33
	sbc l                                            ; $44ee: $9d
	scf                                              ; $44ef: $37
	ld [hl], e                                       ; $44f0: $73
	db $dd                                           ; $44f1: $dd
	inc sp                                           ; $44f2: $33
	push de                                          ; $44f3: $d5
	ld [hl], a                                       ; $44f4: $77
	call $d744                                       ; $44f5: $cd $44 $d7
	ld h, [hl]                                       ; $44f8: $66
	scf                                              ; $44f9: $37
	db $ec                                           ; $44fa: $ec
	rst SubAFromHL                                          ; $44fb: $d7
	ld d, l                                          ; $44fc: $55
	adc b                                            ; $44fd: $88
	rlca                                             ; $44fe: $07
	sbc l                                            ; $44ff: $9d
	nop                                              ; $4500: $00
	rst $38                                          ; $4501: $ff
	inc bc                                           ; $4502: $03
	cp $03                                           ; $4503: $fe $03
	cp $03                                           ; $4505: $fe $03
	cp $03                                           ; $4507: $fe $03
	cp $03                                           ; $4509: $fe $03
	cp $03                                           ; $450b: $fe $03
	cp $03                                           ; $450d: $fe $03
	cp $03                                           ; $450f: $fe $03
	cp $03                                           ; $4511: $fe $03

jr_045_4513:
	cp $03                                           ; $4513: $fe $03
	cp $03                                           ; $4515: $fe $03
	cp $03                                           ; $4517: $fe $03
	cp $03                                           ; $4519: $fe $03
	cp $03                                           ; $451b: $fe $03
	cp $03                                           ; $451d: $fe $03
	cp $03                                           ; $451f: $fe $03
	cp $03                                           ; $4521: $fe $03
	cp $03                                           ; $4523: $fe $03
	cp $67                                           ; $4525: $fe $67
	cp $9b                                           ; $4527: $fe $9b

jr_045_4529:
	ld bc, $0ffe                                     ; $4529: $01 $fe $0f
	ldh a, [$57]                                     ; $452c: $f0 $57
	db $f4                                           ; $452e: $f4
	sbc e                                            ; $452f: $9b
	ld d, a                                          ; $4530: $57
	xor b                                            ; $4531: $a8
	dec hl                                           ; $4532: $2b
	call nc, $f26f                                   ; $4533: $d4 $6f $f2

Jump_045_4536:
	sub l                                            ; $4536: $95
	ld c, $f3                                        ; $4537: $0e $f3
	halt                                             ; $4539: $76
	xor e                                            ; $453a: $ab
	cpl                                              ; $453b: $2f
	db $d3                                           ; $453c: $d3
	sub $2b                                          ; $453d: $d6 $2b
	cp $03                                           ; $453f: $fe $03
	ld h, a                                          ; $4541: $67
	ldh [$99], a                                     ; $4542: $e0 $99
	ld d, b                                          ; $4544: $50
	xor a                                            ; $4545: $af
	ld [$d015], a                                    ; $4546: $ea $15 $d0
	cpl                                              ; $4549: $2f
	inc bc                                           ; $454a: $03
	xor h                                            ; $454b: $ac
	inc bc                                           ; $454c: $03
	cp $03                                           ; $454d: $fe $03
	cp $03                                           ; $454f: $fe $03
	cp $03                                           ; $4551: $fe $03
	cp $03                                           ; $4553: $fe $03
	cp $5f                                           ; $4555: $fe $5f
	inc c                                            ; $4557: $0c
	sbc l                                            ; $4558: $9d
	xor d                                            ; $4559: $aa
	ld d, l                                          ; $455a: $55
	ld h, a                                          ; $455b: $67
	db $f4                                           ; $455c: $f4
	sub a                                            ; $455d: $97
	dec b                                            ; $455e: $05
	ld a, [$d728]                                    ; $455f: $fa $28 $d7
	ld b, l                                          ; $4562: $45
	cp d                                             ; $4563: $ba
	ld [$6f15], a                                    ; $4564: $ea $15 $6f
	add sp, -$6b                                     ; $4567: $e8 $95
	dec bc                                           ; $4569: $0b
	db $f4                                           ; $456a: $f4
	rst SubAFromHL                                          ; $456b: $d7
	jr z, jr_045_4529                                ; $456c: $28 $bb

	ld b, h                                          ; $456e: $44
	ld [hl], l                                       ; $456f: $75
	adc d                                            ; $4570: $8a
	xor d                                            ; $4571: $aa
	ld d, l                                          ; $4572: $55
	ld [hl], a                                       ; $4573: $77
	db $f4                                           ; $4574: $f4
	ld a, a                                          ; $4575: $7f
	add sp, -$80                                     ; $4576: $e8 $80
	xor e                                            ; $4578: $ab
	ld d, h                                          ; $4579: $54
	ld d, l                                          ; $457a: $55
	xor d                                            ; $457b: $aa
	ld a, [bc]                                       ; $457c: $0a
	push af                                          ; $457d: $f5
	ld b, c                                          ; $457e: $41
	cp a                                             ; $457f: $bf
	ld d, $e8                                        ; $4580: $16 $e8
	ld d, l                                          ; $4582: $55
	xor d                                            ; $4583: $aa
	dec hl                                           ; $4584: $2b
	call nc, $aa55                                   ; $4585: $d4 $55 $aa
	xor e                                            ; $4588: $ab
	ld d, h                                          ; $4589: $54
	ld d, c                                          ; $458a: $51
	xor [hl]                                         ; $458b: $ae
	ld [bc], a                                       ; $458c: $02
	db $fc                                           ; $458d: $fc
	ld [hl], b                                       ; $458e: $70
	add b                                            ; $458f: $80
	rlca                                             ; $4590: $07
	ld bc, $a857                                     ; $4591: $01 $57 $a8
	xor e                                            ; $4594: $ab
	ld d, h                                          ; $4595: $54
	ld d, [hl]                                       ; $4596: $56
	add a                                            ; $4597: $87
	xor c                                            ; $4598: $a9
	and e                                            ; $4599: $a3
	ld e, h                                          ; $459a: $5c
	db $10                                           ; $459b: $10
	ldh [$03], a                                     ; $459c: $e0 $03
	nop                                              ; $459e: $00
	ld a, a                                          ; $459f: $7f
	inc b                                            ; $45a0: $04
	ldh [rP1], a                                     ; $45a1: $e0 $00
	ld [hl], h                                       ; $45a3: $74
	adc e                                            ; $45a4: $8b
	and d                                            ; $45a5: $a2
	ld e, a                                          ; $45a6: $5f
	ld e, h                                          ; $45a7: $5c
	and b                                            ; $45a8: $a0
	add b                                            ; $45a9: $80
	nop                                              ; $45aa: $00
	rra                                              ; $45ab: $1f
	rlca                                             ; $45ac: $07
	db $fc                                           ; $45ad: $fc
	nop                                              ; $45ae: $00
	add b                                            ; $45af: $80
	cp $80                                           ; $45b0: $fe $80
	dec d                                            ; $45b2: $15
	ld [$d12e], a                                    ; $45b3: $ea $2e $d1
	ld a, e                                          ; $45b6: $7b
	add b                                            ; $45b7: $80
	cp $01                                           ; $45b8: $fe $01
	ld e, h                                          ; $45ba: $5c
	inc bc                                           ; $45bb: $03
	xor [hl]                                         ; $45bc: $ae
	ld bc, $0156                                     ; $45bd: $01 $56 $01
	xor a                                            ; $45c0: $af
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	rst $38                                          ; $45c3: $ff
	add b                                            ; $45c4: $80
	ld a, a                                          ; $45c5: $7f
	ld bc, $2afe                                     ; $45c6: $01 $fe $2a
	push de                                          ; $45c9: $d5
	ld d, a                                          ; $45ca: $57
	xor b                                            ; $45cb: $a8
	ld a, a                                          ; $45cc: $7f
	add b                                            ; $45cd: $80
	ei                                               ; $45ce: $fb
	inc b                                            ; $45cf: $04
	rst FarCall                                          ; $45d0: $f7
	adc a                                            ; $45d1: $8f
	ld [$ff00], sp                                   ; $45d2: $08 $00 $ff
	and b                                            ; $45d5: $a0
	ld e, a                                          ; $45d6: $5f
	ld d, h                                          ; $45d7: $54
	xor e                                            ; $45d8: $ab
	ld a, [$fd05]                                    ; $45d9: $fa $05 $fd
	ld [bc], a                                       ; $45dc: $02
	cp d                                             ; $45dd: $ba
	dec b                                            ; $45de: $05
	ld d, b                                          ; $45df: $50
	rrca                                             ; $45e0: $0f
	xor e                                            ; $45e1: $ab
	ld a, e                                          ; $45e2: $7b
	ldh [rPCM34], a                                  ; $45e3: $e0 $77
	cp $77                                           ; $45e5: $fe $77
	adc b                                            ; $45e7: $88
	ld [hl], a                                       ; $45e8: $77
	ld hl, sp+$7f                                    ; $45e9: $f8 $7f
	db $e4                                           ; $45eb: $e4
	ld h, a                                          ; $45ec: $67
	ldh a, [$9d]                                     ; $45ed: $f0 $9d
	ld e, a                                          ; $45ef: $5f
	and b                                            ; $45f0: $a0
	ld d, a                                          ; $45f1: $57
	ld b, [hl]                                       ; $45f2: $46
	ld a, a                                          ; $45f3: $7f
	ldh a, [$7f]                                     ; $45f4: $f0 $7f
	ei                                               ; $45f6: $fb
	sbc c                                            ; $45f7: $99
	ld a, [hl-]                                      ; $45f8: $3a
	push bc                                          ; $45f9: $c5
	dec b                                            ; $45fa: $05
	ld a, [$f708]                                    ; $45fb: $fa $08 $f7
	ld h, a                                          ; $45fe: $67
	ldh a, [$7f]                                     ; $45ff: $f0 $7f
	ret nz                                           ; $4601: $c0

	ld a, a                                          ; $4602: $7f
	ld sp, hl                                        ; $4603: $f9
	ld a, a                                          ; $4604: $7f
	xor [hl]                                         ; $4605: $ae
	ld h, a                                          ; $4606: $67
	jr nc, jr_045_4688                               ; $4607: $30 $7f

	ret z                                            ; $4609: $c8

	ld a, a                                          ; $460a: $7f
	ld e, h                                          ; $460b: $5c
	ld a, a                                          ; $460c: $7f
	xor h                                            ; $460d: $ac
	ld a, a                                          ; $460e: $7f
	rst FarCall                                          ; $460f: $f7
	sbc l                                            ; $4610: $9d
	xor a                                            ; $4611: $af
	ld d, b                                          ; $4612: $50
	ld e, a                                          ; $4613: $5f
	call z, $a899                                    ; $4614: $cc $99 $a8
	ld d, a                                          ; $4617: $57
	push de                                          ; $4618: $d5
	ld a, [hl+]                                      ; $4619: $2a
	ld a, [$5705]                                    ; $461a: $fa $05 $57
	cp d                                             ; $461d: $ba
	ld a, a                                          ; $461e: $7f
	adc b                                            ; $461f: $88
	sbc l                                            ; $4620: $9d
	add c                                            ; $4621: $81
	ld a, [hl]                                       ; $4622: $7e
	ld h, a                                          ; $4623: $67
	db $f4                                           ; $4624: $f4
	sub a                                            ; $4625: $97
	inc bc                                           ; $4626: $03
	db $fc                                           ; $4627: $fc
	ld a, d                                          ; $4628: $7a
	add l                                            ; $4629: $85
	or l                                             ; $462a: $b5
	ld c, d                                          ; $462b: $4a
	ld l, d                                          ; $462c: $6a
	sub l                                            ; $462d: $95
	ld [hl], a                                       ; $462e: $77
	ld [bc], a                                       ; $462f: $02
	ld a, a                                          ; $4630: $7f
	xor b                                            ; $4631: $a8
	ld l, a                                          ; $4632: $6f
	inc e                                            ; $4633: $1c
	ld a, a                                          ; $4634: $7f
	db $fc                                           ; $4635: $fc
	sbc l                                            ; $4636: $9d
	and d                                            ; $4637: $a2
	ld e, h                                          ; $4638: $5c
	ld [hl], a                                       ; $4639: $77
	db $e3                                           ; $463a: $e3
	sbc h                                            ; $463b: $9c
	pop hl                                           ; $463c: $e1
	nop                                              ; $463d: $00
	dec b                                            ; $463e: $05
	ld a, e                                          ; $463f: $7b
	cp $8e                                           ; $4640: $fe $8e
	rrca                                             ; $4642: $0f
	nop                                              ; $4643: $00
	ldh a, [rP1]                                     ; $4644: $f0 $00
	inc bc                                           ; $4646: $03
	nop                                              ; $4647: $00

jr_045_4648:
	rrca                                             ; $4648: $0f
	ldh a, [rSCX]                                    ; $4649: $f0 $43
	cp h                                             ; $464b: $bc
	ld bc, $01fe                                     ; $464c: $01 $fe $01
	cp $06                                           ; $464f: $fe $06
	ld hl, sp-$40                                    ; $4651: $f8 $c0
	ld [hl], e                                       ; $4653: $73
	xor $77                                          ; $4654: $ee $77
	jr nc, jr_045_46d7                               ; $4656: $30 $7f

	cp d                                             ; $4658: $ba
	sbc d                                            ; $4659: $9a
	jr nc, @-$3e                                     ; $465a: $30 $c0

	inc b                                            ; $465c: $04
	inc bc                                           ; $465d: $03
	ei                                               ; $465e: $fb
	ld a, e                                          ; $465f: $7b
	ldh [c], a                                       ; $4660: $e2
	sub h                                            ; $4661: $94
	nop                                              ; $4662: $00
	ld bc, $ff00                                     ; $4663: $01 $00 $ff
	jr jr_045_4648                                   ; $4666: $18 $e0

	ld b, $01                                        ; $4668: $06 $01
	ld c, d                                          ; $466a: $4a
	inc a                                            ; $466b: $3c
	ld b, b                                          ; $466c: $40
	ld a, e                                          ; $466d: $7b
	inc bc                                           ; $466e: $03
	sbc b                                            ; $466f: $98
	ld [$1207], sp                                   ; $4670: $08 $07 $12
	db $fd                                           ; $4673: $fd
	ret nz                                           ; $4674: $c0

	nop                                              ; $4675: $00
	rra                                              ; $4676: $1f
	ld [hl], a                                       ; $4677: $77
	jp c, $e77b                                      ; $4678: $da $7b $e7

	sbc [hl]                                         ; $467b: $9e
	ld a, a                                          ; $467c: $7f
	ld a, e                                          ; $467d: $7b
	or [hl]                                          ; $467e: $b6
	ld a, a                                          ; $467f: $7f
	add b                                            ; $4680: $80
	sbc l                                            ; $4681: $9d
	sbc h                                            ; $4682: $9c
	ld h, b                                          ; $4683: $60
	halt                                             ; $4684: $76
	ld [$079e], a                                    ; $4685: $ea $9e $07

jr_045_4688:
	ld a, e                                          ; $4688: $7b
	db $f4                                           ; $4689: $f4
	sbc c                                            ; $468a: $99
	reti                                             ; $468b: $d9


	ld h, $c3                                        ; $468c: $26 $c3
	inc a                                            ; $468e: $3c
	jp Jump_045_773c                                 ; $468f: $c3 $3c $77


	and $7f                                          ; $4692: $e6 $7f
	sbc $8d                                          ; $4694: $de $8d
	adc [hl]                                         ; $4696: $8e
	ld [hl], c                                       ; $4697: $71
	dec c                                            ; $4698: $0d
	ei                                               ; $4699: $fb
	ld e, $fb                                        ; $469a: $1e $fb
	dec l                                            ; $469c: $2d
	ei                                               ; $469d: $fb
	ld e, a                                          ; $469e: $5f
	ei                                               ; $469f: $fb
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	ldh [rP1], a                                     ; $46a2: $e0 $00
	and b                                            ; $46a4: $a0
	ld b, b                                          ; $46a5: $40
	ldh [$c0], a                                     ; $46a6: $e0 $c0
	ld h, a                                          ; $46a8: $67
	cp $9c                                           ; $46a9: $fe $9c
	ld d, a                                          ; $46ab: $57
	nop                                              ; $46ac: $00
	xor d                                            ; $46ad: $aa
	ld a, e                                          ; $46ae: $7b
	sbc $f7                                          ; $46af: $de $f7
	sbc d                                            ; $46b1: $9a
	db $fd                                           ; $46b2: $fd
	nop                                              ; $46b3: $00
	ld [$4100], a                                    ; $46b4: $ea $00 $41
	or $7f                                           ; $46b7: $f6 $7f
	db $f4                                           ; $46b9: $f4
	sbc h                                            ; $46ba: $9c
	add d                                            ; $46bb: $82
	nop                                              ; $46bc: $00
	ld d, l                                          ; $46bd: $55
	ld a, e                                          ; $46be: $7b
	call c, $fc77                                    ; $46bf: $dc $77 $fc
	sub a                                            ; $46c2: $97
	ld e, l                                          ; $46c3: $5d
	nop                                              ; $46c4: $00
	cp a                                             ; $46c5: $bf
	nop                                              ; $46c6: $00
	push de                                          ; $46c7: $d5
	ld a, [hl+]                                      ; $46c8: $2a
	cp $01                                           ; $46c9: $fe $01
	ld l, a                                          ; $46cb: $6f
	dec l                                            ; $46cc: $2d
	ld a, [hl]                                       ; $46cd: $7e
	sub h                                            ; $46ce: $94
	sub l                                            ; $46cf: $95
	ld d, h                                          ; $46d0: $54
	dec hl                                           ; $46d1: $2b
	ld a, [$4005]                                    ; $46d2: $fa $05 $40
	cp a                                             ; $46d5: $bf
	add b                                            ; $46d6: $80

jr_045_46d7:
	ld a, a                                          ; $46d7: $7f
	push af                                          ; $46d8: $f5
	ld a, [bc]                                       ; $46d9: $0a
	ld l, a                                          ; $46da: $6f
	xor $7f                                          ; $46db: $ee $7f
	db $fd                                           ; $46dd: $fd
	ld a, [hl]                                       ; $46de: $7e
	ldh a, [hDisp1_SCY]                                     ; $46df: $f0 $90
	inc b                                            ; $46e1: $04
	ei                                               ; $46e2: $fb
	nop                                              ; $46e3: $00
	rst $38                                          ; $46e4: $ff
	ld b, b                                          ; $46e5: $40
	cp a                                             ; $46e6: $bf
	xor b                                            ; $46e7: $a8
	ld d, a                                          ; $46e8: $57
	ld d, l                                          ; $46e9: $55
	xor d                                            ; $46ea: $aa
	ld [$7f15], a                                    ; $46eb: $ea $15 $7f
	add b                                            ; $46ee: $80
	rst $38                                          ; $46ef: $ff
	ld a, d                                          ; $46f0: $7a
	ld h, b                                          ; $46f1: $60
	ld l, a                                          ; $46f2: $6f
	nop                                              ; $46f3: $00
	ld a, a                                          ; $46f4: $7f
	ldh a, [rPCM12]                                  ; $46f5: $f0 $76
	xor h                                            ; $46f7: $ac
	ld a, a                                          ; $46f8: $7f
	cp $7f                                           ; $46f9: $fe $7f
	ld hl, sp+$67                                    ; $46fb: $f8 $67
	ldh a, [$99]                                     ; $46fd: $f0 $99
	cp a                                             ; $46ff: $bf
	ld b, b                                          ; $4700: $40
	rst $38                                          ; $4701: $ff
	rlca                                             ; $4702: $07
	sbc a                                            ; $4703: $9f
	ld a, a                                          ; $4704: $7f
	ld h, a                                          ; $4705: $67
	ldh a, [$7f]                                     ; $4706: $f0 $7f
	call z, $e07f                                    ; $4708: $cc $7f $e0
	sbc [hl]                                         ; $470b: $9e
	ld hl, sp-$22                                    ; $470c: $f8 $de
	rst $38                                          ; $470e: $ff
	ld a, h                                          ; $470f: $7c
	ld hl, sp+$77                                    ; $4710: $f8 $77
	ldh a, [c]                                       ; $4712: $f2
	sbc l                                            ; $4713: $9d
	inc b                                            ; $4714: $04
	ld hl, sp+$76                                    ; $4715: $f8 $76
	ret c                                            ; $4717: $d8

	ld a, d                                          ; $4718: $7a
	ld e, l                                          ; $4719: $5d
	add b                                            ; $471a: $80
	cp $7e                                           ; $471b: $fe $7e
	add c                                            ; $471d: $81
	inc c                                            ; $471e: $0c
	ldh a, [$e1]                                     ; $471f: $f0 $e1
	nop                                              ; $4721: $00

jr_045_4722:
	ld [bc], a                                       ; $4722: $02
	inc e                                            ; $4723: $1c
	ld b, b                                          ; $4724: $40
	jr nz, jr_045_472d                               ; $4725: $20 $06

	ld bc, $3f1e                                     ; $4727: $01 $1e $3f
	add hl, de                                       ; $472a: $19
	jr nc, jr_045_475d                               ; $472b: $30 $30

jr_045_472d:
	ret nz                                           ; $472d: $c0

jr_045_472e:
	rrca                                             ; $472e: $0f
	nop                                              ; $472f: $00
	ret nc                                           ; $4730: $d0

	jr nz, jr_045_4733                               ; $4731: $20 $00

jr_045_4733:
	nop                                              ; $4733: $00
	rla                                              ; $4734: $17
	rrca                                             ; $4735: $0f
	ld hl, sp-$01                                    ; $4736: $f8 $ff
	ld a, $c1                                        ; $4738: $3e $c1
	ld a, a                                          ; $473a: $7f
	ld [hl], h                                       ; $473b: $74
	sbc [hl]                                         ; $473c: $9e
	ld a, h                                          ; $473d: $7c
	ld a, c                                          ; $473e: $79
	ld a, [$127f]                                    ; $473f: $fa $7f $12
	add [hl]                                         ; $4742: $86
	ldh [$1f], a                                     ; $4743: $e0 $1f
	jr jr_045_472e                                   ; $4745: $18 $e7

	ld hl, sp+$07                                    ; $4747: $f8 $07
	rst $38                                          ; $4749: $ff
	nop                                              ; $474a: $00
	ld hl, sp+$07                                    ; $474b: $f8 $07
	nop                                              ; $474d: $00
	nop                                              ; $474e: $00
	jr c, jr_045_4751                                ; $474f: $38 $00

jr_045_4751:
	sbc b                                            ; $4751: $98
	ld [hl], b                                       ; $4752: $70
	xor b                                            ; $4753: $a8

jr_045_4754:
	ld [hl], b                                       ; $4754: $70
	ret c                                            ; $4755: $d8

	jr nc, @-$16                                     ; $4756: $30 $e8

	jr nc, jr_045_4722                               ; $4758: $30 $c8

	jr nc, jr_045_4754                               ; $475a: $30 $f8

	ld a, d                                          ; $475c: $7a

jr_045_475d:
	call z, $227f                                    ; $475d: $cc $7f $22
	ld h, a                                          ; $4760: $67
	db $fc                                           ; $4761: $fc
	sbc [hl]                                         ; $4762: $9e
	ld [bc], a                                       ; $4763: $02
	cp $94                                           ; $4764: $fe $94
	db $dd                                           ; $4766: $dd
	ldh [c], a                                       ; $4767: $e2
	xor d                                            ; $4768: $aa
	push de                                          ; $4769: $d5
	call z, $88f3                                    ; $476a: $cc $f3 $88
	rst FarCall                                          ; $476d: $f7
	rst JumpTable                                          ; $476e: $c7
	ld hl, sp-$80                                    ; $476f: $f8 $80
	halt                                             ; $4771: $76
	rst SubAFromHL                                          ; $4772: $d7
	sbc b                                            ; $4773: $98
	nop                                              ; $4774: $00
	db $f4                                           ; $4775: $f4
	dec bc                                           ; $4776: $0b
	ld hl, sp+$07                                    ; $4777: $f8 $07
	ldh a, [rIF]                                     ; $4779: $f0 $0f
	ld a, e                                          ; $477b: $7b
	ld b, h                                          ; $477c: $44
	db $fc                                           ; $477d: $fc
	ld a, [hl]                                       ; $477e: $7e
	cp h                                             ; $477f: $bc
	ld a, [hl]                                       ; $4780: $7e
	adc $9c                                          ; $4781: $ce $9c
	pop bc                                           ; $4783: $c1
	ld a, $de                                        ; $4784: $3e $de
	ld a, e                                          ; $4786: $7b
	and b                                            ; $4787: $a0
	ld l, a                                          ; $4788: $6f
	ldh a, [c]                                       ; $4789: $f2
	ld a, l                                          ; $478a: $7d
	cp [hl]                                          ; $478b: $be
	sbc e                                            ; $478c: $9b
	ccf                                              ; $478d: $3f
	ei                                               ; $478e: $fb
	sbc $e0                                          ; $478f: $de $e0
	ei                                               ; $4791: $fb
	ld a, a                                          ; $4792: $7f
	call c, $7d99                                    ; $4793: $dc $99 $7d
	add e                                            ; $4796: $83
	dec b                                            ; $4797: $05
	ei                                               ; $4798: $fb
	ldh [$c0], a                                     ; $4799: $e0 $c0
	ei                                               ; $479b: $fb
	ld a, a                                          ; $479c: $7f
	db $eb                                           ; $479d: $eb

jr_045_479e:
	sbc [hl]                                         ; $479e: $9e
	ld h, b                                          ; $479f: $60
	ld [hl], d                                       ; $47a0: $72
	ret nz                                           ; $47a1: $c0

	rst $38                                          ; $47a2: $ff
	sbc [hl]                                         ; $47a3: $9e
	inc b                                            ; $47a4: $04
	ld l, d                                          ; $47a5: $6a
	ldh [c], a                                       ; $47a6: $e2
	sbc [hl]                                         ; $47a7: $9e
	ld d, c                                          ; $47a8: $51
	ld a, e                                          ; $47a9: $7b
	and b                                            ; $47aa: $a0
	ld a, a                                          ; $47ab: $7f
	ld hl, sp-$09                                    ; $47ac: $f8 $f7
	sbc d                                            ; $47ae: $9a
	ld b, b                                          ; $47af: $40
	nop                                              ; $47b0: $00
	and b                                            ; $47b1: $a0
	nop                                              ; $47b2: $00
	ld d, b                                          ; $47b3: $50
	ld a, d                                          ; $47b4: $7a
	add h                                            ; $47b5: $84
	sbc [hl]                                         ; $47b6: $9e
	dec bc                                           ; $47b7: $0b
	ld a, d                                          ; $47b8: $7a
	inc h                                            ; $47b9: $24
	halt                                             ; $47ba: $76
	ld a, d                                          ; $47bb: $7a
	ld a, a                                          ; $47bc: $7f
	ldh [c], a                                       ; $47bd: $e2
	ld a, a                                          ; $47be: $7f
	db $fc                                           ; $47bf: $fc
	ld a, a                                          ; $47c0: $7f
	db $f4                                           ; $47c1: $f4
	sbc h                                            ; $47c2: $9c
	push de                                          ; $47c3: $d5
	ld [bc], a                                       ; $47c4: $02
	xor e                                            ; $47c5: $ab
	ld a, e                                          ; $47c6: $7b
	jp c, $fc77                                      ; $47c7: $da $77 $fc

	sub a                                            ; $47ca: $97
	xor d                                            ; $47cb: $aa
	ld bc, $0f73                                     ; $47cc: $01 $73 $0f
	ld a, a                                          ; $47cf: $7f
	rst $38                                          ; $47d0: $ff
	ld e, a                                          ; $47d1: $5f
	and b                                            ; $47d2: $a0
	ld l, [hl]                                       ; $47d3: $6e
	call nz, $f797                                   ; $47d4: $c4 $97 $f7
	rrca                                             ; $47d7: $0f
	ccf                                              ; $47d8: $3f
	rst $38                                          ; $47d9: $ff
	ld hl, sp-$01                                    ; $47da: $f8 $ff
	jr nz, jr_045_479e                               ; $47dc: $20 $c0

	ld [hl], a                                       ; $47de: $77
	db $f4                                           ; $47df: $f4
	sbc [hl]                                         ; $47e0: $9e
	di                                               ; $47e1: $f3
	ld a, e                                          ; $47e2: $7b
	db $f4                                           ; $47e3: $f4
	rst SubAFromDE                                          ; $47e4: $df
	rst $38                                          ; $47e5: $ff
	sub b                                            ; $47e6: $90
	ret z                                            ; $47e7: $c8

	ldh a, [rSB]                                     ; $47e8: $f0 $01
	nop                                              ; $47ea: $00
	ld c, $3f                                        ; $47eb: $0e $3f
	db $fd                                           ; $47ed: $fd
	inc bc                                           ; $47ee: $03
	sbc a                                            ; $47ef: $9f
	ld a, a                                          ; $47f0: $7f
	rst $38                                          ; $47f1: $ff
	rst $38                                          ; $47f2: $ff
	or $f8                                           ; $47f3: $f6 $f8
	add b                                            ; $47f5: $80
	ld a, c                                          ; $47f6: $79
	ldh a, [c]                                       ; $47f7: $f2
	sbc e                                            ; $47f8: $9b
	db $f4                                           ; $47f9: $f4
	ld [$d86c], sp                                   ; $47fa: $08 $6c $d8
	db $dd                                           ; $47fd: $dd

jr_045_47fe:
	rst $38                                          ; $47fe: $ff
	sub [hl]                                         ; $47ff: $96
	ldh a, [hDisp1_LCDC]                                     ; $4800: $f0 $8f
	rrca                                             ; $4802: $0f
	nop                                              ; $4803: $00
	rst SubAFromDE                                          ; $4804: $df
	ccf                                              ; $4805: $3f
	rst SubAFromHL                                          ; $4806: $d7
	ld [$7b1f], sp                                   ; $4807: $08 $1f $7b
	and d                                            ; $480a: $a2
	db $dd                                           ; $480b: $dd
	rst $38                                          ; $480c: $ff
	ld a, e                                          ; $480d: $7b
	jp nc, $009d                                     ; $480e: $d2 $9d $00

	db $fc                                           ; $4811: $fc
	ld a, e                                          ; $4812: $7b
	rst JumpTable                                          ; $4813: $c7
	sbc c                                            ; $4814: $99
	rst SubAFromDE                                          ; $4815: $df
	ld h, b                                          ; $4816: $60
	rst SubAFromDE                                          ; $4817: $df
	ld h, b                                          ; $4818: $60
	rst $38                                          ; $4819: $ff
	cp $77                                           ; $481a: $fe $77
	cp $7d                                           ; $481c: $fe $7d
	ld d, d                                          ; $481e: $52
	ld [hl], l                                       ; $481f: $75
	cp h                                             ; $4820: $bc
	ld a, [hl]                                       ; $4821: $7e
	sbc [hl]                                         ; $4822: $9e
	ld a, a                                          ; $4823: $7f
	cp $99                                           ; $4824: $fe $99
	dec de                                           ; $4826: $1b
	jr nc, @+$21                                     ; $4827: $30 $1f

	jr nc, jr_045_483a                               ; $4829: $30 $0f

	jr nc, jr_045_48a4                               ; $482b: $30 $77

	cpl                                              ; $482d: $2f
	sub [hl]                                         ; $482e: $96
	dec hl                                           ; $482f: $2b
	inc b                                            ; $4830: $04
	dec d                                            ; $4831: $15
	jr c, jr_045_4845                                ; $4832: $38 $11

jr_045_4834:
	jr c, jr_045_4834                                ; $4834: $38 $fe

	ld bc, $fcfc                                     ; $4836: $01 $fc $fc
	sub [hl]                                         ; $4839: $96

jr_045_483a:
	jr @+$09                                         ; $483a: $18 $07

	add d                                            ; $483c: $82
	ld a, l                                          ; $483d: $7d
	ldh a, [c]                                       ; $483e: $f2
	dec c                                            ; $483f: $0d
	ldh [c], a                                       ; $4840: $e2
	dec e                                            ; $4841: $1d
	cp $fc                                           ; $4842: $fe $fc
	ld a, a                                          ; $4844: $7f

jr_045_4845:
	cp b                                             ; $4845: $b8
	ld a, [hl]                                       ; $4846: $7e
	ld a, [$d89b]                                    ; $4847: $fa $9b $d8
	daa                                              ; $484a: $27
	jp c, Jump_045_7625                              ; $484b: $da $25 $76

	ret nz                                           ; $484e: $c0

	ld a, e                                          ; $484f: $7b
	db $e4                                           ; $4850: $e4
	sbc c                                            ; $4851: $99
	nop                                              ; $4852: $00
	ret c                                            ; $4853: $d8

	jr nc, jr_045_47fe                               ; $4854: $30 $a8

	ld [hl], b                                       ; $4856: $70
	ret z                                            ; $4857: $c8

	ld a, d                                          ; $4858: $7a
	ret nz                                           ; $4859: $c0

	sbc e                                            ; $485a: $9b
	ret nc                                           ; $485b: $d0

	jr c, @+$04                                      ; $485c: $38 $02

	ld bc, $c05e                                     ; $485e: $01 $5e $c0
	ld a, c                                          ; $4861: $79
	add b                                            ; $4862: $80
	ld a, a                                          ; $4863: $7f
	ld a, [bc]                                       ; $4864: $0a
	sub e                                            ; $4865: $93
	rra                                              ; $4866: $1f
	call z, $8af3                                    ; $4867: $cc $f3 $8a
	push af                                          ; $486a: $f5
	call z, $8cf3                                    ; $486b: $cc $f3 $8c
	di                                               ; $486e: $f3
	ret nz                                           ; $486f: $c0

	rst $38                                          ; $4870: $ff
	or b                                             ; $4871: $b0
	ld a, e                                          ; $4872: $7b
	ld [bc], a                                       ; $4873: $02
	ld a, a                                          ; $4874: $7f
	adc c                                            ; $4875: $89
	ld a, a                                          ; $4876: $7f
	cp d                                             ; $4877: $ba
	ld a, h                                          ; $4878: $7c
	sbc d                                            ; $4879: $9a
	ld a, a                                          ; $487a: $7f
	cp $7e                                           ; $487b: $fe $7e
	cp h                                             ; $487d: $bc
	ld a, a                                          ; $487e: $7f
	sub h                                            ; $487f: $94
	ld a, c                                          ; $4880: $79
	adc b                                            ; $4881: $88
	sub [hl]                                         ; $4882: $96
	ld bc, $2cd3                                     ; $4883: $01 $d3 $2c
	db $e3                                           ; $4886: $e3
	inc e                                            ; $4887: $1c
	jp $c23c                                         ; $4888: $c3 $3c $c2


	dec a                                            ; $488b: $3d
	ld l, l                                          ; $488c: $6d
	add [hl]                                         ; $488d: $86
	rst SubAFromDE                                          ; $488e: $df
	rst $38                                          ; $488f: $ff
	ld a, l                                          ; $4890: $7d
	adc b                                            ; $4891: $88
	sbc [hl]                                         ; $4892: $9e
	dec d                                            ; $4893: $15
	ld a, c                                          ; $4894: $79
	adc b                                            ; $4895: $88
	sbc l                                            ; $4896: $9d
	db $fd                                           ; $4897: $fd
	ei                                               ; $4898: $fb
	halt                                             ; $4899: $76
	ret                                              ; $489a: $c9


	sbc e                                            ; $489b: $9b
	rst $38                                          ; $489c: $ff
	ld a, a                                          ; $489d: $7f
	sbc [hl]                                         ; $489e: $9e
	ldh [rBCPD], a                                   ; $489f: $e0 $69
	adc b                                            ; $48a1: $88
	cp $9c                                           ; $48a2: $fe $9c

jr_045_48a4:
	ccf                                              ; $48a4: $3f
	rrca                                             ; $48a5: $0f

jr_045_48a6:
	rst AddAOntoHL                                          ; $48a6: $ef
	ld [hl], l                                       ; $48a7: $75
	ld b, a                                          ; $48a8: $47
	db $fc                                           ; $48a9: $fc
	ld l, [hl]                                       ; $48aa: $6e
	ld h, h                                          ; $48ab: $64
	ei                                               ; $48ac: $fb
	add b                                            ; $48ad: $80
	db $10                                           ; $48ae: $10
	ld bc, $0703                                     ; $48af: $01 $03 $07
	ld [bc], a                                       ; $48b2: $02
	inc c                                            ; $48b3: $0c
	ld bc, $6100                                     ; $48b4: $01 $00 $61
	rra                                              ; $48b7: $1f
	dec bc                                           ; $48b8: $0b
	inc e                                            ; $48b9: $1c
	rlca                                             ; $48ba: $07
	jr jr_045_48c4                                   ; $48bb: $18 $07

	rra                                              ; $48bd: $1f
	dec a                                            ; $48be: $3d
	cp $30                                           ; $48bf: $fe $30
	ret nz                                           ; $48c1: $c0

	add hl, bc                                       ; $48c2: $09
	rlca                                             ; $48c3: $07

jr_045_48c4:
	db $10                                           ; $48c4: $10
	ld sp, hl                                        ; $48c5: $f9
	ld [$c0f1], sp                                   ; $48c6: $08 $f1 $c0
	ld sp, $6190                                     ; $48c9: $31 $90 $61
	db $e4                                           ; $48cc: $e4
	adc c                                            ; $48cd: $89
	ld hl, sp+$03                                    ; $48ce: $f8 $03
	nop                                              ; $48d0: $00
	ld l, $1f                                        ; $48d1: $2e $1f
	ld l, b                                          ; $48d3: $68
	rst $38                                          ; $48d4: $ff

jr_045_48d5:
	jr nc, jr_045_48a6                               ; $48d5: $30 $cf

	nop                                              ; $48d7: $00
	rst $38                                          ; $48d8: $ff
	ld [bc], a                                       ; $48d9: $02
	rst $38                                          ; $48da: $ff
	inc bc                                           ; $48db: $03
	rst $38                                          ; $48dc: $ff
	rrca                                             ; $48dd: $0f
	nop                                              ; $48de: $00
	add sp, $10                                      ; $48df: $e8 $10
	db $10                                           ; $48e1: $10
	ldh [$f0], a                                     ; $48e2: $e0 $f0
	ld a, c                                          ; $48e4: $79
	db $ec                                           ; $48e5: $ec
	ld a, a                                          ; $48e6: $7f
	ld a, [$6679]                                    ; $48e7: $fa $79 $66
	sub d                                            ; $48ea: $92
	rst $38                                          ; $48eb: $ff

Call_045_48ec:
	di                                               ; $48ec: $f3
	ld a, $61                                        ; $48ed: $3e $61
	ld e, $42                                        ; $48ef: $1e $42
	ccf                                              ; $48f1: $3f
	halt                                             ; $48f2: $76
	ccf                                              ; $48f3: $3f
	ld [hl], c                                       ; $48f4: $71
	ld a, $46                                        ; $48f5: $3e $46

jr_045_48f7:
	add hl, sp                                       ; $48f7: $39
	db $dd                                           ; $48f8: $dd
	rst $38                                          ; $48f9: $ff
	sub a                                            ; $48fa: $97
	jr nz, jr_045_48d5                               ; $48fb: $20 $d8

	jr jr_045_48f7                                   ; $48fd: $18 $f8

	ret c                                            ; $48ff: $d8

	ld hl, sp-$38                                    ; $4900: $f8 $c8
	ld hl, sp+$7a                                    ; $4902: $f8 $7a
	pop hl                                           ; $4904: $e1
	sbc d                                            ; $4905: $9a
	rst $38                                          ; $4906: $ff
	db $fd                                           ; $4907: $fd
	cp $f8                                           ; $4908: $fe $f8
	rst $38                                          ; $490a: $ff
	halt                                             ; $490b: $76
	call z, $fe7f                                    ; $490c: $cc $7f $fe
	sbc [hl]                                         ; $490f: $9e
	ccf                                              ; $4910: $3f
	ld a, e                                          ; $4911: $7b
	ldh a, [c]                                       ; $4912: $f2
	sbc e                                            ; $4913: $9b
	cp a                                             ; $4914: $bf
	rst $38                                          ; $4915: $ff
	cp a                                             ; $4916: $bf
	ld a, a                                          ; $4917: $7f
	ld [hl], a                                       ; $4918: $77
	ld c, d                                          ; $4919: $4a
	ld l, b                                          ; $491a: $68
	ld e, a                                          ; $491b: $5f
	call c, Call_045_7bff                            ; $491c: $dc $ff $7b
	ld sp, hl                                        ; $491f: $f9
	ld h, h                                          ; $4920: $64
	ld c, a                                          ; $4921: $4f
	ld a, [hl]                                       ; $4922: $7e
	xor a                                            ; $4923: $af
	rst SubAFromDE                                          ; $4924: $df
	rst $38                                          ; $4925: $ff
	ld a, d                                          ; $4926: $7a
	cp h                                             ; $4927: $bc
	ld a, [hl]                                       ; $4928: $7e
	call z, $1689                                    ; $4929: $cc $89 $16
	add hl, sp                                       ; $492c: $39
	jr nz, jr_045_493f                               ; $492d: $20 $10

	nop                                              ; $492f: $00
	nop                                              ; $4930: $00
	adc a                                            ; $4931: $8f
	ld a, a                                          ; $4932: $7f
	and h                                            ; $4933: $a4
	ld hl, sp+$00                                    ; $4934: $f8 $00
	nop                                              ; $4936: $00
	inc l                                            ; $4937: $2c
	inc de                                           ; $4938: $13
	ld d, d                                          ; $4939: $52
	xor l                                            ; $493a: $ad
	ld [hl+], a                                      ; $493b: $22
	db $dd                                           ; $493c: $dd
	nop                                              ; $493d: $00
	nop                                              ; $493e: $00

jr_045_493f:
	add hl, sp                                       ; $493f: $39
	rlca                                             ; $4940: $07
	ld a, d                                          ; $4941: $7a
	sub b                                            ; $4942: $90
	ld a, e                                          ; $4943: $7b
	ld c, d                                          ; $4944: $4a
	sbc d                                            ; $4945: $9a
	ld [$19ff], sp                                   ; $4946: $08 $ff $19
	and $c0                                          ; $4949: $e6 $c0
	ld a, e                                          ; $494b: $7b
	ld hl, sp+$7e                                    ; $494c: $f8 $7e
	adc l                                            ; $494e: $8d
	ld a, [hl]                                       ; $494f: $7e
	ld h, b                                          ; $4950: $60
	ld a, a                                          ; $4951: $7f
	ld a, [$f99b]                                    ; $4952: $fa $9b $f9
	rlca                                             ; $4955: $07
	ld hl, sp+$07                                    ; $4956: $f8 $07
	ld [hl], a                                       ; $4958: $77
	ld h, $9c                                        ; $4959: $26 $9c
	ld hl, sp+$78                                    ; $495b: $f8 $78
	ld [hl], b                                       ; $495d: $70
	ld a, c                                          ; $495e: $79
	and h                                            ; $495f: $a4
	ld a, a                                          ; $4960: $7f
	pop de                                           ; $4961: $d1
	sbc e                                            ; $4962: $9b
	cp b                                             ; $4963: $b8
	ld [hl], b                                       ; $4964: $70
	ret c                                            ; $4965: $d8

	ld [hl], b                                       ; $4966: $70
	ld e, d                                          ; $4967: $5a
	call nz, $0198                                   ; $4968: $c4 $98 $01
	ld [bc], a                                       ; $496b: $02
	ld bc, $0100                                     ; $496c: $01 $00 $01
	rst GetHLinHL                                          ; $496f: $cf
	ccf                                              ; $4970: $3f
	ld a, e                                          ; $4971: $7b
	ld [hl], l                                       ; $4972: $75
	cp $98                                           ; $4973: $fe $98
	ld a, b                                          ; $4975: $78
	rlca                                             ; $4976: $07
	ret nz                                           ; $4977: $c0

	rst $38                                          ; $4978: $ff
	add b                                            ; $4979: $80
	rst $38                                          ; $497a: $ff
	ret nz                                           ; $497b: $c0

	ld a, e                                          ; $497c: $7b
	sbc c                                            ; $497d: $99
	halt                                             ; $497e: $76
	and $7e                                          ; $497f: $e6 $7e
	adc c                                            ; $4981: $89
	sub a                                            ; $4982: $97
	db $fc                                           ; $4983: $fc
	inc bc                                           ; $4984: $03
	ld hl, sp+$07                                    ; $4985: $f8 $07
	ldh a, [c]                                       ; $4987: $f2
	dec c                                            ; $4988: $0d
	ldh a, [rIF]                                     ; $4989: $f0 $0f
	ld l, [hl]                                       ; $498b: $6e
	db $ed                                           ; $498c: $ed
	ld a, a                                          ; $498d: $7f
	db $dd                                           ; $498e: $dd
	sbc b                                            ; $498f: $98
	add e                                            ; $4990: $83
	ld a, h                                          ; $4991: $7c
	jp $c73c                                         ; $4992: $c3 $3c $c7


	inc a                                            ; $4995: $3c
	bit 7, d                                         ; $4996: $cb $7a
	cp d                                             ; $4998: $ba
	ld [hl], a                                       ; $4999: $77
	ldh a, [c]                                       ; $499a: $f2
	ld a, l                                          ; $499b: $7d
	ld a, [$5d9b]                                    ; $499c: $fa $9b $5d
	ei                                               ; $499f: $fb
	cp l                                             ; $49a0: $bd
	ei                                               ; $49a1: $fb
	ld [hl], a                                       ; $49a2: $77
	db $fc                                           ; $49a3: $fc
	ld l, l                                          ; $49a4: $6d
	add h                                            ; $49a5: $84
	ld e, h                                          ; $49a6: $5c
	ld b, b                                          ; $49a7: $40
	rst $38                                          ; $49a8: $ff
	ld a, a                                          ; $49a9: $7f
	db $dd                                           ; $49aa: $dd
	sub d                                            ; $49ab: $92
	ld h, h                                          ; $49ac: $64
	dec de                                           ; $49ad: $1b
	pop hl                                           ; $49ae: $e1
	rra                                              ; $49af: $1f
	add b                                            ; $49b0: $80
	ld a, a                                          ; $49b1: $7f
	db $10                                           ; $49b2: $10
	ld a, a                                          ; $49b3: $7f
	jr @+$01                                         ; $49b4: $18 $ff

	ld a, h                                          ; $49b6: $7c
	rst $38                                          ; $49b7: $ff
	rla                                              ; $49b8: $17
	ld a, c                                          ; $49b9: $79
	ld [$9c7f], a                                    ; $49ba: $ea $7f $9c
	rst SubAFromDE                                          ; $49bd: $df
	rst $38                                          ; $49be: $ff
	ld [hl], a                                       ; $49bf: $77
	ld a, b                                          ; $49c0: $78
	sbc b                                            ; $49c1: $98
	ld e, $01                                        ; $49c2: $1e $01
	rlca                                             ; $49c4: $07
	jr @+$01                                         ; $49c5: $18 $ff

	nop                                              ; $49c7: $00
	cp a                                             ; $49c8: $bf
	ld a, c                                          ; $49c9: $79
	ret nz                                           ; $49ca: $c0

	sbc [hl]                                         ; $49cb: $9e
	db $fc                                           ; $49cc: $fc
	ld a, e                                          ; $49cd: $7b
	ld [hl], b                                       ; $49ce: $70
	ld a, a                                          ; $49cf: $7f
	or $7e                                           ; $49d0: $f6 $7e
	ld e, e                                          ; $49d2: $5b
	ld a, a                                          ; $49d3: $7f
	ld l, h                                          ; $49d4: $6c
	ld a, e                                          ; $49d5: $7b
	di                                               ; $49d6: $f3
	ld [hl], e                                       ; $49d7: $73
	db $e3                                           ; $49d8: $e3
	ld a, [hl]                                       ; $49d9: $7e
	ret z                                            ; $49da: $c8

	sbc c                                            ; $49db: $99
	add h                                            ; $49dc: $84
	ld a, e                                          ; $49dd: $7b
	cp a                                             ; $49de: $bf
	ld b, b                                          ; $49df: $40
	or b                                             ; $49e0: $b0
	ld c, a                                          ; $49e1: $4f
	sbc $ff                                          ; $49e2: $de $ff
	ld a, e                                          ; $49e4: $7b
	jr z, jr_045_4a64                                ; $49e5: $28 $7d

	ld e, [hl]                                       ; $49e7: $5e
	sbc e                                            ; $49e8: $9b
	ld a, [$9000]                                    ; $49e9: $fa $00 $90
	ld h, b                                          ; $49ec: $60
	halt                                             ; $49ed: $76
	cp h                                             ; $49ee: $bc
	sbc [hl]                                         ; $49ef: $9e
	ei                                               ; $49f0: $fb
	ld [hl], a                                       ; $49f1: $77
	push de                                          ; $49f2: $d5
	ld a, c                                          ; $49f3: $79
	ld b, $97                                        ; $49f4: $06 $97
	reti                                             ; $49f6: $d9


	ccf                                              ; $49f7: $3f
	ld b, h                                          ; $49f8: $44
	dec sp                                           ; $49f9: $3b
	ld d, e                                          ; $49fa: $53
	ccf                                              ; $49fb: $3f
	ld a, e                                          ; $49fc: $7b
	ccf                                              ; $49fd: $3f
	ld a, e                                          ; $49fe: $7b
	db $e3                                           ; $49ff: $e3
	ld a, a                                          ; $4a00: $7f
	ld a, [bc]                                       ; $4a01: $0a

jr_045_4a02:
	sub h                                            ; $4a02: $94
	nop                                              ; $4a03: $00
	xor h                                            ; $4a04: $ac
	ld a, h                                          ; $4a05: $7c
	inc d                                            ; $4a06: $14
	add sp, $0c                                      ; $4a07: $e8 $0c
	db $fc                                           ; $4a09: $fc

jr_045_4a0a:
	inc l                                            ; $4a0a: $2c
	db $fc                                           ; $4a0b: $fc
	jr z, jr_045_4a0a                                ; $4a0c: $28 $fc

	ld l, [hl]                                       ; $4a0e: $6e
	ret nz                                           ; $4a0f: $c0

	ld e, a                                          ; $4a10: $5f
	cp $7f                                           ; $4a11: $fe $7f
	cp h                                             ; $4a13: $bc
	sbc d                                            ; $4a14: $9a
	ld a, a                                          ; $4a15: $7f
	ret nz                                           ; $4a16: $c0

	ld a, a                                          ; $4a17: $7f
	ret nz                                           ; $4a18: $c0

	rst $38                                          ; $4a19: $ff
	ld l, [hl]                                       ; $4a1a: $6e
	cp d                                             ; $4a1b: $ba
	ld a, c                                          ; $4a1c: $79
	adc e                                            ; $4a1d: $8b
	ld h, d                                          ; $4a1e: $62
	ret nz                                           ; $4a1f: $c0

	ld [hl], a                                       ; $4a20: $77
	cp $7a                                           ; $4a21: $fe $7a
	ret nz                                           ; $4a23: $c0

	ld a, [hl]                                       ; $4a24: $7e
	jp nz, $369d                                     ; $4a25: $c2 $9d $36

	add hl, de                                       ; $4a28: $19
	ld [hl], a                                       ; $4a29: $77
	db $fc                                           ; $4a2a: $fc
	sbc h                                            ; $4a2b: $9c

jr_045_4a2c:
	jr nc, jr_045_4a2e                               ; $4a2c: $30 $00

jr_045_4a2e:
	jr nz, jr_045_4aab                               ; $4a2e: $20 $7b

	cp $7e                                           ; $4a30: $fe $7e
	adc b                                            ; $4a32: $88
	ld a, [hl]                                       ; $4a33: $7e
	jp nz, $fe7f                                     ; $4a34: $c2 $7f $fe

	sbc e                                            ; $4a37: $9b
	ld [bc], a                                       ; $4a38: $02
	db $fd                                           ; $4a39: $fd
	ld [bc], a                                       ; $4a3a: $02
	db $fd                                           ; $4a3b: $fd
	ei                                               ; $4a3c: $fb
	ld a, l                                          ; $4a3d: $7d
	add b                                            ; $4a3e: $80
	ld a, a                                          ; $4a3f: $7f
	ld a, [bc]                                       ; $4a40: $0a
	ld a, a                                          ; $4a41: $7f
	cp $9d                                           ; $4a42: $fe $9d
	reti                                             ; $4a44: $d9


	daa                                              ; $4a45: $27
	ld l, h                                          ; $4a46: $6c
	add b                                            ; $4a47: $80
	ld a, [hl]                                       ; $4a48: $7e
	pop hl                                           ; $4a49: $e1
	ld a, a                                          ; $4a4a: $7f
	jr jr_045_4a2c                                   ; $4a4b: $18 $df

	ld hl, sp-$64                                    ; $4a4d: $f8 $9c
	ld [hl], b                                       ; $4a4f: $70
	ld hl, sp-$48                                    ; $4a50: $f8 $b8
	ld a, c                                          ; $4a52: $79
	ld [de], a                                       ; $4a53: $12
	sub a                                            ; $4a54: $97
	ld [$0015], a                                    ; $4a55: $ea $15 $00
	rst $38                                          ; $4a58: $ff
	add e                                            ; $4a59: $83
	add e                                            ; $4a5a: $83
	add c                                            ; $4a5b: $81
	add c                                            ; $4a5c: $81
	ld h, [hl]                                       ; $4a5d: $66
	ret nz                                           ; $4a5e: $c0

	ld a, a                                          ; $4a5f: $7f

jr_045_4a60:
	daa                                              ; $4a60: $27
	sub [hl]                                         ; $4a61: $96
	add a                                            ; $4a62: $87
	ld a, a                                          ; $4a63: $7f

jr_045_4a64:
	rst FarCall                                          ; $4a64: $f7
	rst $38                                          ; $4a65: $ff
	rst $38                                          ; $4a66: $ff
	rst FarCall                                          ; $4a67: $f7
	cp a                                             ; $4a68: $bf
	ret nz                                           ; $4a69: $c0

	ld a, a                                          ; $4a6a: $7f
	ld [hl], b                                       ; $4a6b: $70
	ld b, a                                          ; $4a6c: $47
	sub l                                            ; $4a6d: $95
	db $fc                                           ; $4a6e: $fc
	ld hl, sp-$14                                    ; $4a6f: $f8 $ec
	jr jr_045_4a02                                   ; $4a71: $18 $8f

	nop                                              ; $4a73: $00
	add e                                            ; $4a74: $83
	inc c                                            ; $4a75: $0c
	or c                                             ; $4a76: $b1
	ld c, a                                          ; $4a77: $4f
	ld h, h                                          ; $4a78: $64
	ld b, h                                          ; $4a79: $44
	ld [hl], a                                       ; $4a7a: $77
	ld e, $9b                                        ; $4a7b: $1e $9b
	and b                                            ; $4a7d: $a0
	ld e, a                                          ; $4a7e: $5f
	cp a                                             ; $4a7f: $bf
	ld a, [hl]                                       ; $4a80: $7e
	ld l, l                                          ; $4a81: $6d
	jr nz, @+$01                                     ; $4a82: $20 $ff

	ld a, a                                          ; $4a84: $7f
	jp z, $ec7e                                      ; $4a85: $ca $7e $ec

	sbc h                                            ; $4a88: $9c
	add e                                            ; $4a89: $83
	ld a, [hl]                                       ; $4a8a: $7e
	db $fd                                           ; $4a8b: $fd
	ld [hl], d                                       ; $4a8c: $72
	adc $6f                                          ; $4a8d: $ce $6f
	ldh [c], a                                       ; $4a8f: $e2
	ld a, [hl]                                       ; $4a90: $7e
	jp nz, Jump_045_7d9e                             ; $4a91: $c2 $9e $7d

	ld [hl], c                                       ; $4a94: $71
	ld a, b                                          ; $4a95: $78
	ld h, h                                          ; $4a96: $64
	ld a, $76                                        ; $4a97: $3e $76
	ret nz                                           ; $4a99: $c0

	sub a                                            ; $4a9a: $97
	rst GetHLinHL                                          ; $4a9b: $cf
	db $fc                                           ; $4a9c: $fc
	rst $38                                          ; $4a9d: $ff
	add h                                            ; $4a9e: $84
	rst $38                                          ; $4a9f: $ff
	nop                                              ; $4aa0: $00
	xor $10                                          ; $4aa1: $ee $10
	ld l, h                                          ; $4aa3: $6c
	ld hl, sp+$74                                    ; $4aa4: $f8 $74
	or $7e                                           ; $4aa6: $f6 $7e
	call z, $9efb                                    ; $4aa8: $cc $fb $9e

jr_045_4aab:
	inc h                                            ; $4aab: $24
	db $fc                                           ; $4aac: $fc
	ld a, a                                          ; $4aad: $7f
	nop                                              ; $4aae: $00
	halt                                             ; $4aaf: $76
	cp $fd                                           ; $4ab0: $fe $fd
	sbc [hl]                                         ; $4ab2: $9e
	sbc b                                            ; $4ab3: $98
	ld l, a                                          ; $4ab4: $6f
	cp d                                             ; $4ab5: $ba
	sbc l                                            ; $4ab6: $9d
	rst $38                                          ; $4ab7: $ff
	xor d                                            ; $4ab8: $aa

jr_045_4ab9:
	ld a, c                                          ; $4ab9: $79
	jr jr_045_4ab9                                   ; $4aba: $18 $fd

	sbc b                                            ; $4abc: $98
	adc h                                            ; $4abd: $8c
	add $49                                          ; $4abe: $c6 $49
	add [hl]                                         ; $4ac0: $86
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	ldh a, [rBCPD]                                   ; $4ac3: $f0 $69
	inc a                                            ; $4ac5: $3c
	ld a, a                                          ; $4ac6: $7f
	jr nz, jr_045_4a60                               ; $4ac7: $20 $97

	ld a, b                                          ; $4ac9: $78
	jr nc, @+$4a                                     ; $4aca: $30 $48

	jr nc, jr_045_4ace                               ; $4acc: $30 $00

jr_045_4ace:
	nop                                              ; $4ace: $00
	ld d, [hl]                                       ; $4acf: $56
	jr c, @+$69                                      ; $4ad0: $38 $67

	ldh a, [$7c]                                     ; $4ad2: $f0 $7c
	cp [hl]                                          ; $4ad4: $be
	sbc l                                            ; $4ad5: $9d
	adc b                                            ; $4ad6: $88
	ld [hl], b                                       ; $4ad7: $70

jr_045_4ad8:
	rst FarCall                                          ; $4ad8: $f7
	ld a, a                                          ; $4ad9: $7f
	push af                                          ; $4ada: $f5
	sbc d                                            ; $4adb: $9a
	ld hl, sp-$10                                    ; $4adc: $f8 $f0
	jr nc, jr_045_4ad8                               ; $4ade: $30 $f8

	ld a, [hl]                                       ; $4ae0: $7e
	ld a, d                                          ; $4ae1: $7a
	cp $67                                           ; $4ae2: $fe $67
	cp $9b                                           ; $4ae4: $fe $9b
	dec l                                            ; $4ae6: $2d
	ld e, $1f                                        ; $4ae7: $1e $1f
	ld a, $78                                        ; $4ae9: $3e $78

jr_045_4aeb:
	ld b, b                                          ; $4aeb: $40
	ld h, e                                          ; $4aec: $63
	cp $9b                                           ; $4aed: $fe $9b

jr_045_4aef:
	rst SubAFromDE                                          ; $4aef: $df

jr_045_4af0:
	jr nz, jr_045_4af0                               ; $4af0: $20 $fe

	ld [hl], c                                       ; $4af2: $71
	ld d, [hl]                                       ; $4af3: $56
	jp nz, $bf80                                     ; $4af4: $c2 $80 $bf

	ld h, b                                          ; $4af7: $60
	di                                               ; $4af8: $f3
	cp $ff                                           ; $4af9: $fe $ff
	nop                                              ; $4afb: $00
	jr nc, jr_045_4b1d                               ; $4afc: $30 $1f

	ld [hl], $19                                     ; $4afe: $36 $19
	ld h, $19                                        ; $4b00: $26 $19
	ld [hl-], a                                      ; $4b02: $32
	dec e                                            ; $4b03: $1d
	dec l                                            ; $4b04: $2d
	db $10                                           ; $4b05: $10
	jr nz, jr_045_4b08                               ; $4b06: $20 $00

jr_045_4b08:
	ld hl, $0706                                     ; $4b08: $21 $06 $07
	rrca                                             ; $4b0b: $0f
	nop                                              ; $4b0c: $00
	rst $38                                          ; $4b0d: $ff
	jr nz, jr_045_4aef                               ; $4b0e: $20 $df

	jr nz, @-$1f                                     ; $4b10: $20 $df

	ld bc, $fcff                                     ; $4b12: $01 $ff $fc
	ld a, [hl]                                       ; $4b15: $7e
	db $ed                                           ; $4b16: $ed
	sub c                                            ; $4b17: $91
	nop                                              ; $4b18: $00
	ld d, $0c                                        ; $4b19: $16 $0c
	ld c, $1e                                        ; $4b1b: $0e $1e

jr_045_4b1d:
	ei                                               ; $4b1d: $fb
	rlca                                             ; $4b1e: $07
	db $dd                                           ; $4b1f: $dd
	daa                                              ; $4b20: $27
	rst SubAFromDE                                          ; $4b21: $df
	daa                                              ; $4b22: $27
	rla                                              ; $4b23: $17
	rst AddAOntoHL                                          ; $4b24: $ef
	rst $38                                          ; $4b25: $ff
	ld a, d                                          ; $4b26: $7a
	call c, $219b                                    ; $4b27: $dc $9b $21
	nop                                              ; $4b2a: $00
	ld a, e                                          ; $4b2b: $7b
	ld sp, $cd7a                                     ; $4b2c: $31 $7a $cd
	sbc [hl]                                         ; $4b2f: $9e
	add c                                            ; $4b30: $81
	ld l, a                                          ; $4b31: $6f
	db $fc                                           ; $4b32: $fc
	sub a                                            ; $4b33: $97
	add b                                            ; $4b34: $80

Jump_045_4b35:
	add c                                            ; $4b35: $81
	add d                                            ; $4b36: $82
	add c                                            ; $4b37: $81
	ldh [$80], a                                     ; $4b38: $e0 $80
	rst GetHLinHL                                          ; $4b3a: $cf
	or a                                             ; $4b3b: $b7
	ld [hl], a                                       ; $4b3c: $77
	cp $9d                                           ; $4b3d: $fe $9d
	rst SubAFromDE                                          ; $4b3f: $df
	and a                                            ; $4b40: $a7
	ld a, e                                          ; $4b41: $7b
	cp $7e                                           ; $4b42: $fe $7e
	sbc d                                            ; $4b44: $9a
	sub c                                            ; $4b45: $91
	rlca                                             ; $4b46: $07
	inc a                                            ; $4b47: $3c
	rlca                                             ; $4b48: $07
	add e                                            ; $4b49: $83
	inc c                                            ; $4b4a: $0c
	add e                                            ; $4b4b: $83
	inc c                                            ; $4b4c: $0c
	add d                                            ; $4b4d: $82
	dec c                                            ; $4b4e: $0d
	add e                                            ; $4b4f: $83
	inc c                                            ; $4b50: $0c
	add h                                            ; $4b51: $84
	ld [$7380], sp                                   ; $4b52: $08 $80 $73
	cp $7d                                           ; $4b55: $fe $7d
	cp $7c                                           ; $4b57: $fe $7c
	or [hl]                                          ; $4b59: $b6
	ld a, a                                          ; $4b5a: $7f
	db $fc                                           ; $4b5b: $fc
	sbc h                                            ; $4b5c: $9c
	add hl, sp                                       ; $4b5d: $39
	rst GetHLinHL                                          ; $4b5e: $cf
	ld c, b                                          ; $4b5f: $48
	ld [hl], e                                       ; $4b60: $73
	ld c, h                                          ; $4b61: $4c
	sub l                                            ; $4b62: $95
	ld a, h                                          ; $4b63: $7c
	jr c, jr_045_4aeb                                ; $4b64: $38 $85

	ld a, [hl]                                       ; $4b66: $7e
	srl [hl]                                         ; $4b67: $cb $3e
	push de                                          ; $4b69: $d5
	ld a, $ef                                        ; $4b6a: $3e $ef
	ld a, $fd                                        ; $4b6c: $3e $fd
	ld a, a                                          ; $4b6e: $7f
	adc [hl]                                         ; $4b6f: $8e
	sbc h                                            ; $4b70: $9c
	pop af                                           ; $4b71: $f1
	ld [hl], b                                       ; $4b72: $70
	db $fd                                           ; $4b73: $fd
	ld a, b                                          ; $4b74: $78
	ld b, h                                          ; $4b75: $44
	ld [hl], a                                       ; $4b76: $77
	cp $fd                                           ; $4b77: $fe $fd
	ld a, [hl]                                       ; $4b79: $7e
	call nz, $e39d                                   ; $4b7a: $c4 $9d $e3
	pop bc                                           ; $4b7d: $c1
	ld e, l                                          ; $4b7e: $5d
	adc b                                            ; $4b7f: $88
	db $fd                                           ; $4b80: $fd
	sbc [hl]                                         ; $4b81: $9e
	add b                                            ; $4b82: $80
	ld a, e                                          ; $4b83: $7b
	ld hl, sp-$64                                    ; $4b84: $f8 $9c
	ld d, l                                          ; $4b86: $55
	nop                                              ; $4b87: $00
	xor d                                            ; $4b88: $aa
	ld h, e                                          ; $4b89: $63
	ld c, h                                          ; $4b8a: $4c
	sbc d                                            ; $4b8b: $9a
	xor d                                            ; $4b8c: $aa
	ld d, l                                          ; $4b8d: $55
	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	ld d, b                                          ; $4b90: $50
	ld a, e                                          ; $4b91: $7b
	ldh a, [$9e]                                     ; $4b92: $f0 $9e
	push de                                          ; $4b94: $d5
	ld l, e                                          ; $4b95: $6b
	ldh a, [$9d]                                     ; $4b96: $f0 $9d
	xor e                                            ; $4b98: $ab
	ld d, h                                          ; $4b99: $54
	db $fd                                           ; $4b9a: $fd
	ld a, a                                          ; $4b9b: $7f
	ldh a, [$7f]                                     ; $4b9c: $f0 $7f
	jp hl                                            ; $4b9e: $e9


	ld e, a                                          ; $4b9f: $5f
	ldh [rAUD2ENV], a                                ; $4ba0: $e0 $17
	ldh a, [rPCM12]                                  ; $4ba2: $f0 $76
	inc [hl]                                         ; $4ba4: $34
	ld [hl], a                                       ; $4ba5: $77
	or b                                             ; $4ba6: $b0
	ld a, l                                          ; $4ba7: $7d
	add b                                            ; $4ba8: $80
	ld c, a                                          ; $4ba9: $4f
	ldh a, [$5e]                                     ; $4baa: $f0 $5e
	ld [$f047], a                                    ; $4bac: $ea $47 $f0
	ld [hl], a                                       ; $4baf: $77
	call nz, Call_045_447e                           ; $4bb0: $c4 $7e $44
	ld e, a                                          ; $4bb3: $5f
	ldh a, [$9a]                                     ; $4bb4: $f0 $9a
	dec a                                            ; $4bb6: $3d
	nop                                              ; $4bb7: $00
	ld d, a                                          ; $4bb8: $57
	nop                                              ; $4bb9: $00
	xor e                                            ; $4bba: $ab
	ld e, e                                          ; $4bbb: $5b
	ld [hl], b                                       ; $4bbc: $70
	sbc l                                            ; $4bbd: $9d
	ei                                               ; $4bbe: $fb
	inc b                                            ; $4bbf: $04
	ld e, a                                          ; $4bc0: $5f
	and h                                            ; $4bc1: $a4
	ld a, a                                          ; $4bc2: $7f
	cp $7d                                           ; $4bc3: $fe $7d
	xor d                                            ; $4bc5: $aa
	sbc h                                            ; $4bc6: $9c
	ldh a, [c]                                       ; $4bc7: $f2
	inc c                                            ; $4bc8: $0c
	ld [hl], l                                       ; $4bc9: $75
	ld d, a                                          ; $4bca: $57
	jp nz, Jump_045_559b                             ; $4bcb: $c2 $9b $55

	add hl, hl                                       ; $4bce: $29
	ld [hl], c                                       ; $4bcf: $71
	rst SubAFromDE                                          ; $4bd0: $df
	ld h, e                                          ; $4bd1: $63
	ldh a, [c]                                       ; $4bd2: $f2
	sub a                                            ; $4bd3: $97
	ld d, l                                          ; $4bd4: $55
	xor d                                            ; $4bd5: $aa
	xor d                                            ; $4bd6: $aa
	ld d, l                                          ; $4bd7: $55
	rst $38                                          ; $4bd8: $ff
	rst $38                                          ; $4bd9: $ff
	add b                                            ; $4bda: $80
	ld a, a                                          ; $4bdb: $7f
	ld h, a                                          ; $4bdc: $67
	call nc, $f06f                                   ; $4bdd: $d4 $6f $f0
	ld a, d                                          ; $4be0: $7a
	dec c                                            ; $4be1: $0d
	ld a, a                                          ; $4be2: $7f
	sbc [hl]                                         ; $4be3: $9e
	sbc d                                            ; $4be4: $9a

jr_045_4be5:
	ld bc, $2ad5                                     ; $4be5: $01 $d5 $2a
	xor d                                            ; $4be8: $aa
	ld d, l                                          ; $4be9: $55
	ld [hl], a                                       ; $4bea: $77
	ldh a, [$df]                                     ; $4beb: $f0 $df
	ld hl, sp+$77                                    ; $4bed: $f8 $77
	ldh a, [$6f]                                     ; $4bef: $f0 $6f
	db $f4                                           ; $4bf1: $f4
	ld [hl], a                                       ; $4bf2: $77
	db $fc                                           ; $4bf3: $fc
	rst SubAFromDE                                          ; $4bf4: $df
	ld a, h                                          ; $4bf5: $7c
	sbc [hl]                                         ; $4bf6: $9e
	jr c, jr_045_4c4c                                ; $4bf7: $38 $53

	ldh a, [$df]                                     ; $4bf9: $f0 $df
	ld sp, hl                                        ; $4bfb: $f9
	sbc e                                            ; $4bfc: $9b
	ld [hl], l                                       ; $4bfd: $75
	ei                                               ; $4bfe: $fb
	db $fd                                           ; $4bff: $fd
	ld [bc], a                                       ; $4c00: $02
	ld e, a                                          ; $4c01: $5f
	ldh a, [$de]                                     ; $4c02: $f0 $de
	db $e3                                           ; $4c04: $e3
	sbc [hl]                                         ; $4c05: $9e
	rst $38                                          ; $4c06: $ff
	ld h, a                                          ; $4c07: $67
	call nz, $fc7f                                   ; $4c08: $c4 $7f $fc
	sub e                                            ; $4c0b: $93
	jr z, jr_045_4be5                                ; $4c0c: $28 $d7

	ret nz                                           ; $4c0e: $c0

	ret nz                                           ; $4c0f: $c0

	jp c, Jump_045_50e5                              ; $4c10: $da $e5 $50

	xor a                                            ; $4c13: $af
	xor d                                            ; $4c14: $aa
	ld d, l                                          ; $4c15: $55
	ld b, b                                          ; $4c16: $40
	cp a                                             ; $4c17: $bf
	ld [hl], a                                       ; $4c18: $77
	db $fc                                           ; $4c19: $fc
	ld a, a                                          ; $4c1a: $7f
	sub h                                            ; $4c1b: $94
	ld [hl], a                                       ; $4c1c: $77
	add sp, -$63                                     ; $4c1d: $e8 $9d
	ld b, l                                          ; $4c1f: $45
	cp d                                             ; $4c20: $ba
	ld e, a                                          ; $4c21: $5f
	ld l, l                                          ; $4c22: $6d
	scf                                              ; $4c23: $37
	ldh a, [$7f]                                     ; $4c24: $f0 $7f
	db $fc                                           ; $4c26: $fc
	ld b, a                                          ; $4c27: $47
	ldh a, [$78]                                     ; $4c28: $f0 $78
	ret nz                                           ; $4c2a: $c0

	ld d, e                                          ; $4c2b: $53
	ldh a, [$7f]                                     ; $4c2c: $f0 $7f
	db $fc                                           ; $4c2e: $fc
	ld a, h                                          ; $4c2f: $7c
	sub [hl]                                         ; $4c30: $96
	ld c, a                                          ; $4c31: $4f
	ldh a, [$67]                                     ; $4c32: $f0 $67
	cp h                                             ; $4c34: $bc
	ld h, a                                          ; $4c35: $67
	ldh a, [$67]                                     ; $4c36: $f0 $67
	cp h                                             ; $4c38: $bc
	ld e, a                                          ; $4c39: $5f
	ldh a, [$9d]                                     ; $4c3a: $f0 $9d
	ld a, [bc]                                       ; $4c3c: $0a
	push af                                          ; $4c3d: $f5
	ld d, a                                          ; $4c3e: $57
	ldh a, [$9d]                                     ; $4c3f: $f0 $9d
	ld d, c                                          ; $4c41: $51
	xor [hl]                                         ; $4c42: $ae
	rrca                                             ; $4c43: $0f
	ret nc                                           ; $4c44: $d0

	sbc l                                            ; $4c45: $9d
	ld b, h                                          ; $4c46: $44
	cp e                                             ; $4c47: $bb
	rla                                              ; $4c48: $17
	ldh a, [$9d]                                     ; $4c49: $f0 $9d
	ld a, [hl+]                                      ; $4c4b: $2a

jr_045_4c4c:
	push de                                          ; $4c4c: $d5
	ld e, a                                          ; $4c4d: $5f
	add b                                            ; $4c4e: $80
	sub a                                            ; $4c4f: $97
	xor b                                            ; $4c50: $a8
	ld d, a                                          ; $4c51: $57
	ld d, c                                          ; $4c52: $51
	xor [hl]                                         ; $4c53: $ae
	and b                                            ; $4c54: $a0
	ld e, a                                          ; $4c55: $5f
	dec d                                            ; $4c56: $15
	ld [$5c6f], a                                    ; $4c57: $ea $6f $5c
	ld a, a                                          ; $4c5a: $7f
	ldh a, [$9d]                                     ; $4c5b: $f0 $9d
	and d                                            ; $4c5d: $a2
	ld e, l                                          ; $4c5e: $5d
	ld [hl], a                                       ; $4c5f: $77
	ld hl, sp-$6d                                    ; $4c60: $f8 $93
	db $10                                           ; $4c62: $10
	rst AddAOntoHL                                          ; $4c63: $ef
	xor b                                            ; $4c64: $a8
	ld d, a                                          ; $4c65: $57
	dec b                                            ; $4c66: $05
	ld a, [$57a8]                                    ; $4c67: $fa $a8 $57
	ld d, l                                          ; $4c6a: $55
	xor d                                            ; $4c6b: $aa
	and b                                            ; $4c6c: $a0
	ld e, a                                          ; $4c6d: $5f
	ld [hl], a                                       ; $4c6e: $77
	ldh a, [$9b]                                     ; $4c6f: $f0 $9b
	ld c, b                                          ; $4c71: $48
	or a                                             ; $4c72: $b7
	add d                                            ; $4c73: $82
	ld a, l                                          ; $4c74: $7d
	ld c, a                                          ; $4c75: $4f
	inc h                                            ; $4c76: $24
	ld l, a                                          ; $4c77: $6f
	xor b                                            ; $4c78: $a8
	ld a, [hl]                                       ; $4c79: $7e
	db $e4                                           ; $4c7a: $e4
	ld h, a                                          ; $4c7b: $67
	ldh a, [rPCM34]                                  ; $4c7c: $f0 $77
	call nc, $e079                                   ; $4c7e: $d4 $79 $e0
	ld e, b                                          ; $4c81: $58
	db $ed                                           ; $4c82: $ed
	scf                                              ; $4c83: $37
	ldh a, [$36]                                     ; $4c84: $f0 $36
	nop                                              ; $4c86: $00
	rst GetHLinHL                                          ; $4c87: $cf
	inc sp                                           ; $4c88: $33
	sbc l                                            ; $4c89: $9d
	ld [hl], $66                                     ; $4c8a: $36 $66
	ld h, a                                          ; $4c8c: $67
	ld hl, sp-$21                                    ; $4c8d: $f8 $df
	ld h, [hl]                                       ; $4c8f: $66
	call c, $9a33                                    ; $4c90: $dc $33 $9a
	ld h, [hl]                                       ; $4c93: $66
	ld b, h                                          ; $4c94: $44
	ld [hl], a                                       ; $4c95: $77
	ld b, h                                          ; $4c96: $44
	ld b, h                                          ; $4c97: $44
	ld [hl], e                                       ; $4c98: $73
	rst AddAOntoHL                                          ; $4c99: $ef
	ld a, a                                          ; $4c9a: $7f
	ld hl, sp+$77                                    ; $4c9b: $f8 $77
	or $9e                                           ; $4c9d: $f6 $9e
	scf                                              ; $4c9f: $37
	ld a, e                                          ; $4ca0: $7b
	ei                                               ; $4ca1: $fb
	ld [hl], e                                       ; $4ca2: $73
	or $77                                           ; $4ca3: $f6 $77
	rst FarCall                                          ; $4ca5: $f7
	ld l, a                                          ; $4ca6: $6f
	or $9e                                           ; $4ca7: $f6 $9e
	ld [hl], h                                       ; $4ca9: $74
	db $dd                                           ; $4caa: $dd
	ld b, h                                          ; $4cab: $44
	sbc l                                            ; $4cac: $9d
	ld [hl], a                                       ; $4cad: $77
	ld b, l                                          ; $4cae: $45
	db $dd                                           ; $4caf: $dd
	ld b, h                                          ; $4cb0: $44
	sbc h                                            ; $4cb1: $9c
	ld b, l                                          ; $4cb2: $45
	ld d, l                                          ; $4cb3: $55
	ld d, h                                          ; $4cb4: $54
	ld [hl], a                                       ; $4cb5: $77
	xor $df                                          ; $4cb6: $ee $df
	ld b, h                                          ; $4cb8: $44
	call $9a55                                       ; $4cb9: $cd $55 $9a
	dec b                                            ; $4cbc: $05
	sbc l                                            ; $4cbd: $9d
	nop                                              ; $4cbe: $00
	rst $38                                          ; $4cbf: $ff
	inc bc                                           ; $4cc0: $03
	cp $03                                           ; $4cc1: $fe $03
	cp $03                                           ; $4cc3: $fe $03
	cp $03                                           ; $4cc5: $fe $03
	cp $03                                           ; $4cc7: $fe $03
	cp $03                                           ; $4cc9: $fe $03
	cp $03                                           ; $4ccb: $fe $03
	cp $03                                           ; $4ccd: $fe $03
	cp $77                                           ; $4ccf: $fe $77
	cp $9e                                           ; $4cd1: $fe $9e
	ld bc, $f45b                                     ; $4cd3: $01 $5b $f4
	sbc h                                            ; $4cd6: $9c
	inc bc                                           ; $4cd7: $03
	rst $38                                          ; $4cd8: $ff
	rra                                              ; $4cd9: $1f
	sbc $ff                                          ; $4cda: $de $ff
	ld h, a                                          ; $4cdc: $67
	add sp, -$62                                     ; $4cdd: $e8 $9e
	ccf                                              ; $4cdf: $3f
	jp c, Jump_045_77ff                              ; $4ce0: $da $ff $77

	ldh a, [c]                                       ; $4ce3: $f2
	sbc [hl]                                         ; $4ce4: $9e
	rrca                                             ; $4ce5: $0f
	sub $ff                                          ; $4ce6: $d6 $ff
	inc bc                                           ; $4ce8: $03
	xor h                                            ; $4ce9: $ac
	inc bc                                           ; $4cea: $03
	cp $03                                           ; $4ceb: $fe $03
	cp $1f                                           ; $4ced: $fe $1f
	ld d, d                                          ; $4cef: $52
	sbc h                                            ; $4cf0: $9c
	cp $03                                           ; $4cf1: $fe $03
	db $fc                                           ; $4cf3: $fc
	ld d, a                                          ; $4cf4: $57
	ldh a, [$9b]                                     ; $4cf5: $f0 $9b
	add b                                            ; $4cf7: $80
	ld a, a                                          ; $4cf8: $7f
	rst SubAFromDE                                          ; $4cf9: $df
	jr nz, jr_045_4cff                               ; $4cfa: $20 $03

	jp z, $fe03                                      ; $4cfc: $ca $03 $fe

jr_045_4cff:
	inc bc                                           ; $4cff: $03
	adc d                                            ; $4d00: $8a
	sbc l                                            ; $4d01: $9d
	rst $38                                          ; $4d02: $ff
	rlca                                             ; $4d03: $07
	ld a, d                                          ; $4d04: $7a
	cp $7e                                           ; $4d05: $fe $7e
	db $e4                                           ; $4d07: $e4
	ld a, [hl]                                       ; $4d08: $7e

Call_045_4d09:
	xor $9b                                          ; $4d09: $ee $9b
	ld a, a                                          ; $4d0b: $7f
	rst $38                                          ; $4d0c: $ff
	ldh a, [$fc]                                     ; $4d0d: $f0 $fc
	ld h, [hl]                                       ; $4d0f: $66
	add sp, -$21                                     ; $4d10: $e8 $df
	rst $38                                          ; $4d12: $ff
	sbc d                                            ; $4d13: $9a
	ldh a, [$fe]                                     ; $4d14: $f0 $fe
	nop                                              ; $4d16: $00
	pop bc                                           ; $4d17: $c1
	rrca                                             ; $4d18: $0f
	ld l, e                                          ; $4d19: $6b
	pop af                                           ; $4d1a: $f1
	sub l                                            ; $4d1b: $95
	cp $fc                                           ; $4d1c: $fe $fc
	ret nz                                           ; $4d1e: $c0

	add c                                            ; $4d1f: $81
	rrca                                             ; $4d20: $0f
	inc de                                           ; $4d21: $13
	rst $38                                          ; $4d22: $ff
	ld h, [hl]                                       ; $4d23: $66
	db $fd                                           ; $4d24: $fd
	jp nz, $f477                                     ; $4d25: $c2 $77 $f4

	sbc e                                            ; $4d28: $9b
	ldh [$c0], a                                     ; $4d29: $e0 $c0
	rlca                                             ; $4d2b: $07
	add hl, bc                                       ; $4d2c: $09
	ld a, e                                          ; $4d2d: $7b
	rst GetHLinHL                                          ; $4d2e: $cf
	adc [hl]                                         ; $4d2f: $8e
	rst AddAOntoHL                                          ; $4d30: $ef
	adc a                                            ; $4d31: $8f
	rst FarCall                                          ; $4d32: $f7
	rst $38                                          ; $4d33: $ff
	rst FarCall                                          ; $4d34: $f7
	ldh a, [$e0]                                     ; $4d35: $f0 $e0
	ld bc, $3f02                                     ; $4d37: $01 $02 $3f
	ld c, a                                          ; $4d3a: $4f
	cp $ff                                           ; $4d3b: $fe $ff
	cp [hl]                                          ; $4d3d: $be
	rst $38                                          ; $4d3e: $ff
	cp [hl]                                          ; $4d3f: $be
	rst SubAFromDE                                          ; $4d40: $df
	ld [hl], a                                       ; $4d41: $77
	cp $03                                           ; $4d42: $fe $03
	sub b                                            ; $4d44: $90
	inc bc                                           ; $4d45: $03
	cp $2e                                           ; $4d46: $fe $2e
	and $97                                          ; $4d48: $e6 $97
	dec de                                           ; $4d4a: $1b
	db $e4                                           ; $4d4b: $e4
	rra                                              ; $4d4c: $1f
	ldh [$3e], a                                     ; $4d4d: $e0 $3e
	ret nz                                           ; $4d4f: $c0

	dec a                                            ; $4d50: $3d
	ret nz                                           ; $4d51: $c0

	ld [hl], a                                       ; $4d52: $77
	ldh a, [c]                                       ; $4d53: $f2
	sub e                                            ; $4d54: $93
	ld h, b                                          ; $4d55: $60
	sbc a                                            ; $4d56: $9f
	ld hl, sp+$07                                    ; $4d57: $f8 $07
	ld hl, sp+$07                                    ; $4d59: $f8 $07
	ret nz                                           ; $4d5b: $c0

	ccf                                              ; $4d5c: $3f
	ret nz                                           ; $4d5d: $c0

	ccf                                              ; $4d5e: $3f
	ld h, b                                          ; $4d5f: $60
	rra                                              ; $4d60: $1f
	ld l, d                                          ; $4d61: $6a
	inc h                                            ; $4d62: $24
	add [hl]                                         ; $4d63: $86
	db $fc                                           ; $4d64: $fc
	ld de, $00ee                                     ; $4d65: $11 $ee $00
	rst $38                                          ; $4d68: $ff
	dec c                                            ; $4d69: $0d
	ldh a, [rAUD3HIGH]                               ; $4d6a: $f0 $1e
	ldh [rP1], a                                     ; $4d6c: $e0 $00
	rst $38                                          ; $4d6e: $ff
	inc d                                            ; $4d6f: $14
	db $eb                                           ; $4d70: $eb
	cp [hl]                                          ; $4d71: $be
	ld b, c                                          ; $4d72: $41
	db $eb                                           ; $4d73: $eb
	nop                                              ; $4d74: $00
	ld d, l                                          ; $4d75: $55
	ld a, [bc]                                       ; $4d76: $0a
	xor d                                            ; $4d77: $aa
	ld d, l                                          ; $4d78: $55
	ld d, l                                          ; $4d79: $55
	ld [$01aa], sp                                   ; $4d7a: $08 $aa $01
	ld h, a                                          ; $4d7d: $67
	cp [hl]                                          ; $4d7e: $be
	sub a                                            ; $4d7f: $97
	ld b, b                                          ; $4d80: $40
	cp a                                             ; $4d81: $bf
	xor d                                            ; $4d82: $aa
	ld d, l                                          ; $4d83: $55
	ld d, a                                          ; $4d84: $57
	xor b                                            ; $4d85: $a8
	xor d                                            ; $4d86: $aa
	ld d, l                                          ; $4d87: $55
	ld d, [hl]                                       ; $4d88: $56
	and d                                            ; $4d89: $a2
	ld a, a                                          ; $4d8a: $7f
	db $ec                                           ; $4d8b: $ec
	sbc l                                            ; $4d8c: $9d
	and b                                            ; $4d8d: $a0
	ld e, a                                          ; $4d8e: $5f
	inc bc                                           ; $4d8f: $03
	add h                                            ; $4d90: $84
	ld b, e                                          ; $4d91: $43
	cp $99                                           ; $4d92: $fe $99
	ld [$00f0], sp                                   ; $4d94: $08 $f0 $00
	rst $38                                          ; $4d97: $ff
	ld [bc], a                                       ; $4d98: $02
	db $fc                                           ; $4d99: $fc
	ld h, a                                          ; $4d9a: $67
	cp $8e                                           ; $4d9b: $fe $8e
	add e                                            ; $4d9d: $83
	nop                                              ; $4d9e: $00
	ld a, a                                          ; $4d9f: $7f
	rra                                              ; $4da0: $1f
	ei                                               ; $4da1: $fb
	ld a, l                                          ; $4da2: $7d
	ld a, e                                          ; $4da3: $7b
	ccf                                              ; $4da4: $3f
	ld a, e                                          ; $4da5: $7b
	ld a, a                                          ; $4da6: $7f
	ccf                                              ; $4da7: $3f
	ld a, e                                          ; $4da8: $7b
	ccf                                              ; $4da9: $3f
	ld a, a                                          ; $4daa: $7f
	ld a, $79                                        ; $4dab: $3e $79
	db $fc                                           ; $4dad: $fc
	ld a, c                                          ; $4dae: $79
	cp l                                             ; $4daf: $bd
	sbc h                                            ; $4db0: $9c
	rst SubAFromDE                                          ; $4db1: $df
	ldh [rIE], a                                     ; $4db2: $e0 $ff
	ld [hl], a                                       ; $4db4: $77
	cp $9b                                           ; $4db5: $fe $9b
	add b                                            ; $4db7: $80
	rst $38                                          ; $4db8: $ff
	add b                                            ; $4db9: $80
	ld b, a                                          ; $4dba: $47
	ld a, e                                          ; $4dbb: $7b
	rst GetHLinHL                                          ; $4dbc: $cf
	sub a                                            ; $4dbd: $97
	ld a, a                                          ; $4dbe: $7f
	pop hl                                           ; $4dbf: $e1
	rst $38                                          ; $4dc0: $ff
	scf                                              ; $4dc1: $37
	rst $38                                          ; $4dc2: $ff
	ld b, $ff                                        ; $4dc3: $06 $ff
	inc b                                            ; $4dc5: $04
	ld l, a                                          ; $4dc6: $6f
	jp $f797                                         ; $4dc7: $c3 $97 $f7


	ccf                                              ; $4dca: $3f
	rst $38                                          ; $4dcb: $ff
	daa                                              ; $4dcc: $27
	rst $38                                          ; $4dcd: $ff
	rst SubAFromBC                                          ; $4dce: $e7
	rst $38                                          ; $4dcf: $ff
	ld h, a                                          ; $4dd0: $67
	ld a, d                                          ; $4dd1: $7a
	adc e                                            ; $4dd2: $8b
	ld a, a                                          ; $4dd3: $7f
	cp $7e                                           ; $4dd4: $fe $7e
	cp h                                             ; $4dd6: $bc
	sub a                                            ; $4dd7: $97
	inc sp                                           ; $4dd8: $33
	cp a                                             ; $4dd9: $bf
	rst $38                                          ; $4dda: $ff
	ldh a, [$f8]                                     ; $4ddb: $f0 $f8
	ldh [$e0], a                                     ; $4ddd: $e0 $e0
	ld hl, sp+$7b                                    ; $4ddf: $f8 $7b
	ret                                              ; $4de1: $c9


	ld bc, $9a80                                     ; $4de2: $01 $80 $9a
	rst $38                                          ; $4de5: $ff
	inc e                                            ; $4de6: $1c
	db $e3                                           ; $4de7: $e3
	inc a                                            ; $4de8: $3c
	jp $f26e                                         ; $4de9: $c3 $6e $f2


	ld [hl], a                                       ; $4dec: $77
	cp $67                                           ; $4ded: $fe $67
	ld [$0e96], a                                    ; $4def: $ea $96 $0e
	pop af                                           ; $4df2: $f1
	sbc h                                            ; $4df3: $9c
	ld h, b                                          ; $4df4: $60
	ldh [rP1], a                                     ; $4df5: $e0 $00
	add sp, $00                                      ; $4df7: $e8 $00
	push af                                          ; $4df9: $f5
	ld [hl], a                                       ; $4dfa: $77
	sub h                                            ; $4dfb: $94
	sbc [hl]                                         ; $4dfc: $9e
	add b                                            ; $4dfd: $80
	ld [hl], a                                       ; $4dfe: $77
	ldh [c], a                                       ; $4dff: $e2
	add [hl]                                         ; $4e00: $86
	db $e3                                           ; $4e01: $e3
	inc e                                            ; $4e02: $1c

Call_045_4e03:
	ld h, e                                          ; $4e03: $63
	inc e                                            ; $4e04: $1c

jr_045_4e05:
	or a                                             ; $4e05: $b7
	ld [$007d], sp                                   ; $4e06: $08 $7d $00
	ld hl, sp+$00                                    ; $4e09: $f8 $00
	db $f4                                           ; $4e0b: $f4
	nop                                              ; $4e0c: $00
	ld a, [de]                                       ; $4e0d: $1a
	ldh [$35], a                                     ; $4e0e: $e0 $35
	ret nz                                           ; $4e10: $c0

	ld [$e500], a                                    ; $4e11: $ea $00 $e5
	nop                                              ; $4e14: $00
	xor b                                            ; $4e15: $a8
	nop                                              ; $4e16: $00
	ld b, b                                          ; $4e17: $40
	nop                                              ; $4e18: $00
	add b                                            ; $4e19: $80
	cp $7f                                           ; $4e1a: $fe $7f
	rst JumpTable                                          ; $4e1c: $c7
	adc l                                            ; $4e1d: $8d
	ld e, h                                          ; $4e1e: $5c
	inc bc                                           ; $4e1f: $03
	xor b                                            ; $4e20: $a8
	rlca                                             ; $4e21: $07
	jr jr_045_4e2b                                   ; $4e22: $18 $07

	jr z, @+$09                                      ; $4e24: $28 $07

	ld d, b                                          ; $4e26: $50
	rrca                                             ; $4e27: $0f
	and b                                            ; $4e28: $a0
	rra                                              ; $4e29: $1f
	ld a, h                                          ; $4e2a: $7c

jr_045_4e2b:
	inc bc                                           ; $4e2b: $03
	jr z, jr_045_4e05                                ; $4e2c: $28 $d7

	ld d, b                                          ; $4e2e: $50
	xor a                                            ; $4e2f: $af
	ld h, a                                          ; $4e30: $67
	or [hl]                                          ; $4e31: $b6
	sbc d                                            ; $4e32: $9a
	ld a, c                                          ; $4e33: $79
	add [hl]                                         ; $4e34: $86
	rst $38                                          ; $4e35: $ff
	nop                                              ; $4e36: $00
	scf                                              ; $4e37: $37
	ld [hl], d                                       ; $4e38: $72
	sbc [hl]                                         ; $4e39: $9e
	ld h, a                                          ; $4e3a: $67
	cp $7e                                           ; $4e3b: $fe $7e
	sbc [hl]                                         ; $4e3d: $9e
	sbc b                                            ; $4e3e: $98
	push de                                          ; $4e3f: $d5
	ld a, [hl+]                                      ; $4e40: $2a
	ld a, [bc]                                       ; $4e41: $0a
	push af                                          ; $4e42: $f5
	dec b                                            ; $4e43: $05
	ld a, [$770a]                                    ; $4e44: $fa $0a $77
	and e                                            ; $4e47: $a3
	ld [hl], e                                       ; $4e48: $73
	cp $7f                                           ; $4e49: $fe $7f
	jp nc, $ba9b                                     ; $4e4b: $d2 $9b $ba

	ld b, l                                          ; $4e4e: $45
	ld d, l                                          ; $4e4f: $55
	xor d                                            ; $4e50: $aa
	ld d, [hl]                                       ; $4e51: $56
	cp b                                             ; $4e52: $b8
	ld l, [hl]                                       ; $4e53: $6e
	and h                                            ; $4e54: $a4
	ld [hl], a                                       ; $4e55: $77
	adc b                                            ; $4e56: $88
	ld c, a                                          ; $4e57: $4f
	ld d, d                                          ; $4e58: $52
	ld a, a                                          ; $4e59: $7f
	jp c, $2a9d                                      ; $4e5a: $da $9d $2a

	push de                                          ; $4e5d: $d5
	ld c, a                                          ; $4e5e: $4f
	ldh a, [$72]                                     ; $4e5f: $f0 $72
	sub d                                            ; $4e61: $92
	ld a, a                                          ; $4e62: $7f
	jp c, $1c7d                                      ; $4e63: $da $7d $1c

	ld h, e                                          ; $4e66: $63
	db $fc                                           ; $4e67: $fc
	ld a, [hl]                                       ; $4e68: $7e
	rst $38                                          ; $4e69: $ff
	adc l                                            ; $4e6a: $8d
	ld [bc], a                                       ; $4e6b: $02
	inc b                                            ; $4e6c: $04
	inc bc                                           ; $4e6d: $03
	inc b                                            ; $4e6e: $04
	rrca                                             ; $4e6f: $0f
	nop                                              ; $4e70: $00
	ccf                                              ; $4e71: $3f
	dec c                                            ; $4e72: $0d
	rra                                              ; $4e73: $1f
	nop                                              ; $4e74: $00
	inc bc                                           ; $4e75: $03
	nop                                              ; $4e76: $00
	rst AddAOntoHL                                          ; $4e77: $ef
	ld e, $ff                                        ; $4e78: $1e $ff
	xor $3f                                          ; $4e7a: $ee $3f
	ld c, h                                          ; $4e7c: $4c
	ld a, b                                          ; $4e7d: $78
	ld d, a                                          ; $4e7e: $57
	sub [hl]                                         ; $4e7f: $96
	nop                                              ; $4e80: $00
	cp a                                             ; $4e81: $bf
	ld b, b                                          ; $4e82: $40
	rst $38                                          ; $4e83: $ff
	jr nz, @+$01                                     ; $4e84: $20 $ff

	pop af                                           ; $4e86: $f1
	rst $38                                          ; $4e87: $ff
	di                                               ; $4e88: $f3
	ld a, e                                          ; $4e89: $7b
	ret                                              ; $4e8a: $c9


	ld a, [hl]                                       ; $4e8b: $7e
	ret nc                                           ; $4e8c: $d0

	ld a, a                                          ; $4e8d: $7f
	db $db                                           ; $4e8e: $db
	sbc [hl]                                         ; $4e8f: $9e
	dec bc                                           ; $4e90: $0b
	ld a, d                                          ; $4e91: $7a
	call nc, Call_045_597d                           ; $4e92: $d4 $7d $59
	sbc [hl]                                         ; $4e95: $9e
	add a                                            ; $4e96: $87
	sbc $ff                                          ; $4e97: $de $ff
	sbc h                                            ; $4e99: $9c
	ld a, [hl]                                       ; $4e9a: $7e
	rst $38                                          ; $4e9b: $ff
	inc sp                                           ; $4e9c: $33
	ld a, c                                          ; $4e9d: $79
	ld e, c                                          ; $4e9e: $59
	ld a, l                                          ; $4e9f: $7d
	adc b                                            ; $4ea0: $88
	sbc h                                            ; $4ea1: $9c
	jp $31ff                                         ; $4ea2: $c3 $ff $31


	ld a, d                                          ; $4ea5: $7a
	and b                                            ; $4ea6: $a0
	sbc [hl]                                         ; $4ea7: $9e
	rst JumpTable                                          ; $4ea8: $c7
	ld h, b                                          ; $4ea9: $60
	add hl, sp                                       ; $4eaa: $39
	ld a, a                                          ; $4eab: $7f
	call c, $3e9c                                    ; $4eac: $dc $9c $3e
	rst $38                                          ; $4eaf: $ff
	ld a, l                                          ; $4eb0: $7d
	ld a, d                                          ; $4eb1: $7a
	xor d                                            ; $4eb2: $aa
	sbc c                                            ; $4eb3: $99
	rst AddAOntoHL                                          ; $4eb4: $ef
	nop                                              ; $4eb5: $00
	rst $38                                          ; $4eb6: $ff
	sbc a                                            ; $4eb7: $9f
	ld h, b                                          ; $4eb8: $60
	ld a, [$997b]                                    ; $4eb9: $fa $7b $99
	ld a, l                                          ; $4ebc: $7d
	rst SubAFromDE                                          ; $4ebd: $df
	ld l, h                                          ; $4ebe: $6c
	or h                                             ; $4ebf: $b4
	sbc h                                            ; $4ec0: $9c
	ld [$5101], a                                    ; $4ec1: $ea $01 $51
	ld a, e                                          ; $4ec4: $7b
	ld [$549e], sp                                   ; $4ec5: $08 $9e $54
	ld a, e                                          ; $4ec8: $7b
	nop                                              ; $4ec9: $00
	ld a, a                                          ; $4eca: $7f
	daa                                              ; $4ecb: $27

jr_045_4ecc:
	ld a, l                                          ; $4ecc: $7d
	rst GetHLinHL                                          ; $4ecd: $cf
	ld [hl], a                                       ; $4ece: $77
	xor $8f                                          ; $4ecf: $ee $8f
	or b                                             ; $4ed1: $b0
	rrca                                             ; $4ed2: $0f
	ld d, e                                          ; $4ed3: $53
	inc c                                            ; $4ed4: $0c
	cpl                                              ; $4ed5: $2f
	nop                                              ; $4ed6: $00
	rra                                              ; $4ed7: $1f
	nop                                              ; $4ed8: $00
	ccf                                              ; $4ed9: $3f
	nop                                              ; $4eda: $00
	rst JumpTable                                          ; $4edb: $c7
	jr c, @+$03                                      ; $4edc: $38 $01

	cp $7f                                           ; $4ede: $fe $7f
	add b                                            ; $4ee0: $80
	ld c, [hl]                                       ; $4ee1: $4e
	sbc e                                            ; $4ee2: $9b
	ld a, [hl]                                       ; $4ee3: $7e
	call nc, $cc7e                                   ; $4ee4: $d4 $7e $cc
	sbc l                                            ; $4ee7: $9d
	xor d                                            ; $4ee8: $aa
	nop                                              ; $4ee9: $00
	ld l, a                                          ; $4eea: $6f
	ld b, a                                          ; $4eeb: $47
	ld a, [hl]                                       ; $4eec: $7e
	rla                                              ; $4eed: $17
	ld a, [hl]                                       ; $4eee: $7e
	xor b                                            ; $4eef: $a8
	db $fd                                           ; $4ef0: $fd
	sbc [hl]                                         ; $4ef1: $9e
	adc b                                            ; $4ef2: $88
	ld a, e                                          ; $4ef3: $7b
	ret nz                                           ; $4ef4: $c0

	ld a, a                                          ; $4ef5: $7f
	add sp, $7f                                      ; $4ef6: $e8 $7f
	ldh a, [$7f]                                     ; $4ef8: $f0 $7f
	adc $7f                                          ; $4efa: $ce $7f
	cp $9a                                           ; $4efc: $fe $9a
	inc hl                                           ; $4efe: $23
	nop                                              ; $4eff: $00
	ld [bc], a                                       ; $4f00: $02
	nop                                              ; $4f01: $00
	ld bc, $b47a                                     ; $4f02: $01 $7a $b4
	sbc b                                            ; $4f05: $98
	and b                                            ; $4f06: $a0
	nop                                              ; $4f07: $00
	db $d3                                           ; $4f08: $d3
	nop                                              ; $4f09: $00
	rst AddAOntoHL                                          ; $4f0a: $ef
	nop                                              ; $4f0b: $00
	cp h                                             ; $4f0c: $bc
	ld [hl], e                                       ; $4f0d: $73
	ret c                                            ; $4f0e: $d8

	ld a, a                                          ; $4f0f: $7f
	add hl, hl                                       ; $4f10: $29
	ld a, [hl]                                       ; $4f11: $7e
	cp l                                             ; $4f12: $bd
	sbc [hl]                                         ; $4f13: $9e
	ld d, a                                          ; $4f14: $57
	halt                                             ; $4f15: $76
	add d                                            ; $4f16: $82
	sub h                                            ; $4f17: $94
	nop                                              ; $4f18: $00
	rst SubAFromBC                                          ; $4f19: $e7
	nop                                              ; $4f1a: $00
	ldh [$1f], a                                     ; $4f1b: $e0 $1f
	ldh a, [rIF]                                     ; $4f1d: $f0 $0f
	ldh a, [rIF]                                     ; $4f1f: $f0 $0f
	ldh [$1f], a                                     ; $4f21: $e0 $1f
	ld h, a                                          ; $4f23: $67
	or b                                             ; $4f24: $b0
	ld l, a                                          ; $4f25: $6f
	ld sp, hl                                        ; $4f26: $f9
	sbc l                                            ; $4f27: $9d
	ld e, $e1                                        ; $4f28: $1e $e1
	ld d, a                                          ; $4f2a: $57
	ldh a, [$7e]                                     ; $4f2b: $f0 $7e
	jr c, jr_045_4ecc                                ; $4f2d: $38 $9d

	ld a, $c1                                        ; $4f2f: $3e $c1
	ld [hl], a                                       ; $4f31: $77
	db $f4                                           ; $4f32: $f4
	ld a, a                                          ; $4f33: $7f
	ld e, b                                          ; $4f34: $58
	ld a, [hl]                                       ; $4f35: $7e
	ret                                              ; $4f36: $c9


	ld h, a                                          ; $4f37: $67
	add a                                            ; $4f38: $87
	ld [hl], a                                       ; $4f39: $77
	ei                                               ; $4f3a: $fb
	ld a, a                                          ; $4f3b: $7f
	adc b                                            ; $4f3c: $88
	daa                                              ; $4f3d: $27
	ldh a, [$9d]                                     ; $4f3e: $f0 $9d
	ld b, $f9                                        ; $4f40: $06 $f9
	ld l, a                                          ; $4f42: $6f
	jp hl                                            ; $4f43: $e9


	ld a, a                                          ; $4f44: $7f
	sbc d                                            ; $4f45: $9a
	ld a, e                                          ; $4f46: $7b
	ei                                               ; $4f47: $fb
	ld a, a                                          ; $4f48: $7f
	jr z, @-$63                                      ; $4f49: $28 $9b

	db $fc                                           ; $4f4b: $fc
	ld h, b                                          ; $4f4c: $60
	sbc h                                            ; $4f4d: $9c
	db $fd                                           ; $4f4e: $fd
	ld [hl], a                                       ; $4f4f: $77
	ld sp, hl                                        ; $4f50: $f9
	sbc l                                            ; $4f51: $9d
	nop                                              ; $4f52: $00
	db $fd                                           ; $4f53: $fd
	ld a, d                                          ; $4f54: $7a
	ld e, l                                          ; $4f55: $5d
	ld a, a                                          ; $4f56: $7f
	ld [hl], $9d                                     ; $4f57: $36 $9d
	rlca                                             ; $4f59: $07
	inc bc                                           ; $4f5a: $03
	cp $98                                           ; $4f5b: $fe $98
	inc b                                            ; $4f5d: $04
	rra                                              ; $4f5e: $1f

jr_045_4f5f:
	nop                                              ; $4f5f: $00
	rra                                              ; $4f60: $1f
	add hl, bc                                       ; $4f61: $09
	rra                                              ; $4f62: $1f
	rrca                                             ; $4f63: $0f
	ld [hl], h                                       ; $4f64: $74
	di                                               ; $4f65: $f3
	sbc l                                            ; $4f66: $9d
	rst $38                                          ; $4f67: $ff
	sub e                                            ; $4f68: $93
	ld a, d                                          ; $4f69: $7a
	ldh a, [$9c]                                     ; $4f6a: $f0 $9c
	ld e, l                                          ; $4f6c: $5d
	rst $38                                          ; $4f6d: $ff
	rst SubAFromDE                                          ; $4f6e: $df
	ld a, e                                          ; $4f6f: $7b
	cp $7d                                           ; $4f70: $fe $7d
	and c                                            ; $4f72: $a1
	ld a, [hl]                                       ; $4f73: $7e
	jp nc, $ffdf                                     ; $4f74: $d2 $df $ff

	sbc d                                            ; $4f77: $9a
	ld a, e                                          ; $4f78: $7b
	rst $38                                          ; $4f79: $ff
	ld h, e                                          ; $4f7a: $63
	rst $38                                          ; $4f7b: $ff
	ld h, $7a                                        ; $4f7c: $26 $7a
	cp h                                             ; $4f7e: $bc
	sbc [hl]                                         ; $4f7f: $9e
	sbc a                                            ; $4f80: $9f
	jp c, Jump_045_77ff                              ; $4f81: $da $ff $77

	db $ec                                           ; $4f84: $ec
	ld [hl], a                                       ; $4f85: $77
	db $fc                                           ; $4f86: $fc
	db $dd                                           ; $4f87: $dd
	rst $38                                          ; $4f88: $ff
	ld a, a                                          ; $4f89: $7f
	sbc $5f                                          ; $4f8a: $de $5f
	ld a, [$ffdd]                                    ; $4f8c: $fa $dd $ff
	sub b                                            ; $4f8f: $90
	xor d                                            ; $4f90: $aa

jr_045_4f91:
	rst $38                                          ; $4f91: $ff
	db $10                                           ; $4f92: $10
	rst AddAOntoHL                                          ; $4f93: $ef
	db $10                                           ; $4f94: $10
	ld l, b                                          ; $4f95: $68
	db $10                                           ; $4f96: $10
	ld c, [hl]                                       ; $4f97: $4e
	jr nc, jr_045_4f91                               ; $4f98: $30 $f7

	jr jr_045_4ffb                                   ; $4f9a: $18 $5f

	jr c, jr_045_4f5f                                ; $4f9c: $38 $c1

	ld a, $7b                                        ; $4f9e: $3e $7b
	ldh a, [$99]                                     ; $4fa0: $f0 $99
	inc c                                            ; $4fa2: $0c
	rst FarCall                                          ; $4fa3: $f7
	inc c                                            ; $4fa4: $0c
	ld [hl-], a                                      ; $4fa5: $32
	inc c                                            ; $4fa6: $0c
	or a                                             ; $4fa7: $b7
	ld a, e                                          ; $4fa8: $7b
	ld a, [$f67f]                                    ; $4fa9: $fa $7f $f6
	sbc l                                            ; $4fac: $9d
	push af                                          ; $4fad: $f5
	ld a, [bc]                                       ; $4fae: $0a
	ld a, e                                          ; $4faf: $7b
	ldh a, [$7a]                                     ; $4fb0: $f0 $7a
	dec d                                            ; $4fb2: $15
	ld a, [hl]                                       ; $4fb3: $7e
	ld c, e                                          ; $4fb4: $4b
	sbc e                                            ; $4fb5: $9b
	dec b                                            ; $4fb6: $05
	inc bc                                           ; $4fb7: $03
	db $fc                                           ; $4fb8: $fc
	inc bc                                           ; $4fb9: $03
	ld a, b                                          ; $4fba: $78
	adc c                                            ; $4fbb: $89
	sbc h                                            ; $4fbc: $9c

jr_045_4fbd:
	inc bc                                           ; $4fbd: $03
	ldh a, [$80]                                     ; $4fbe: $f0 $80
	ld h, d                                          ; $4fc0: $62
	add hl, bc                                       ; $4fc1: $09
	ld a, h                                          ; $4fc2: $7c
	xor a                                            ; $4fc3: $af
	sbc e                                            ; $4fc4: $9b
	add b                                            ; $4fc5: $80
	ccf                                              ; $4fc6: $3f
	ret nz                                           ; $4fc7: $c0

	ld b, b                                          ; $4fc8: $40
	halt                                             ; $4fc9: $76
	sub $83                                          ; $4fca: $d6 $83
	ld b, b                                          ; $4fcc: $40
	ld a, a                                          ; $4fcd: $7f
	ret nz                                           ; $4fce: $c0

	ld [hl], a                                       ; $4fcf: $77
	ret z                                            ; $4fd0: $c8

	rst $38                                          ; $4fd1: $ff
	ret nz                                           ; $4fd2: $c0

	ld e, a                                          ; $4fd3: $5f
	ldh [$2f], a                                     ; $4fd4: $e0 $2f
	ret nc                                           ; $4fd6: $d0

	inc h                                            ; $4fd7: $24
	nop                                              ; $4fd8: $00
	ld [hl], d                                       ; $4fd9: $72
	nop                                              ; $4fda: $00
	ld [hl], l                                       ; $4fdb: $75
	jr nz, jr_045_4fbd                               ; $4fdc: $20 $df

	jr nz, jr_045_4fbd                               ; $4fde: $20 $dd

	cpl                                              ; $4fe0: $2f
	cp a                                             ; $4fe1: $bf
	ld [hl], b                                       ; $4fe2: $70
	cp a                                             ; $4fe3: $bf
	ld [hl], b                                       ; $4fe4: $70
	add a                                            ; $4fe5: $87
	ld a, b                                          ; $4fe6: $78
	dec d                                            ; $4fe7: $15
	ld a, e                                          ; $4fe8: $7b
	ld a, [hl+]                                      ; $4fe9: $2a
	add b                                            ; $4fea: $80
	ld e, l                                          ; $4feb: $5d
	ld [$08ff], sp                                   ; $4fec: $08 $ff $08

jr_045_4fef:
	db $fd                                           ; $4fef: $fd
	rst AddAOntoHL                                          ; $4ff0: $ef
	rst $38                                          ; $4ff1: $ff
	inc c                                            ; $4ff2: $0c
	rst AddAOntoHL                                          ; $4ff3: $ef
	inc e                                            ; $4ff4: $1c
	ldh [$1f], a                                     ; $4ff5: $e0 $1f
	ld d, l                                          ; $4ff7: $55
	nop                                              ; $4ff8: $00
	sbc d                                            ; $4ff9: $9a
	nop                                              ; $4ffa: $00

jr_045_4ffb:
	ld e, b                                          ; $4ffb: $58
	nop                                              ; $4ffc: $00
	db $eb                                           ; $4ffd: $eb
	db $10                                           ; $4ffe: $10
	xor a                                            ; $4fff: $af
	rst $38                                          ; $5000: $ff
	rst AddAOntoHL                                          ; $5001: $ef
	jr jr_045_4fef                                   ; $5002: $18 $eb

	inc e                                            ; $5004: $1c
	db $e3                                           ; $5005: $e3
	inc e                                            ; $5006: $1c
	ld d, l                                          ; $5007: $55
	nop                                              ; $5008: $00
	adc d                                            ; $5009: $8a
	sbc b                                            ; $500a: $98
	nop                                              ; $500b: $00
	jr jr_045_500e                                   ; $500c: $18 $00

jr_045_500e:
	cp d                                             ; $500e: $ba
	nop                                              ; $500f: $00
	rst AddAOntoHL                                          ; $5010: $ef
	ei                                               ; $5011: $fb
	ld [hl], a                                       ; $5012: $77
	ldh a, [$9d]                                     ; $5013: $f0 $9d
	pop af                                           ; $5015: $f1
	ld c, $76                                        ; $5016: $0e $76
	ld b, [hl]                                       ; $5018: $46
	ld a, a                                          ; $5019: $7f
	ldh a, [$99]                                     ; $501a: $f0 $99
	sbc b                                            ; $501c: $98
	ld [$cfff], sp                                   ; $501d: $08 $ff $cf
	rst FarCall                                          ; $5020: $f7
	inc c                                            ; $5021: $0c
	ld [hl], a                                       ; $5022: $77
	ldh a, [rIE]                                     ; $5023: $f0 $ff
	ld a, a                                          ; $5025: $7f
	cp [hl]                                          ; $5026: $be
	add h                                            ; $5027: $84
	jr nc, @+$12                                     ; $5028: $30 $10

	jr nc, jr_045_503c                               ; $502a: $30 $10

	rst $38                                          ; $502c: $ff

jr_045_502d:
	sbc e                                            ; $502d: $9b
	rst $38                                          ; $502e: $ff
	jr @+$01                                         ; $502f: $18 $ff

	jr c, @-$1d                                      ; $5031: $38 $e1

	ld e, $00                                        ; $5033: $1e $00
	nop                                              ; $5035: $00
	stop                                             ; $5036: $10 $00
	ld [$2810], sp                                   ; $5038: $08 $10 $28
	db $10                                           ; $503b: $10

jr_045_503c:
	rst GetHLinHL                                          ; $503c: $cf
	ld a, b                                          ; $503d: $78
	rst AddAOntoHL                                          ; $503e: $ef
	jr @+$01                                         ; $503f: $18 $ff

	jr jr_045_503c                                   ; $5041: $18 $f9

	ld [hl], e                                       ; $5043: $73
	ldh a, [$7f]                                     ; $5044: $f0 $7f
	cp $7b                                           ; $5046: $fe $7b
	ldh [$97], a                                     ; $5048: $e0 $97
	jr nc, @-$1f                                     ; $504a: $30 $df

	jr c, jr_045_502d                                ; $504c: $38 $df

	jr c, @-$03                                      ; $504e: $38 $fb

	inc d                                            ; $5050: $14
	ld bc, $99fe                                     ; $5051: $01 $fe $99
	ld b, c                                          ; $5054: $41
	nop                                              ; $5055: $00
	and c                                            ; $5056: $a1
	ld b, b                                          ; $5057: $40
	cp a                                             ; $5058: $bf
	ld h, b                                          ; $5059: $60
	ld [hl], a                                       ; $505a: $77
	cp $7d                                           ; $505b: $fe $7d
	db $e4                                           ; $505d: $e4
	ld a, a                                          ; $505e: $7f
	or b                                             ; $505f: $b0
	sub [hl]                                         ; $5060: $96
	inc l                                            ; $5061: $2c
	nop                                              ; $5062: $00
	add h                                            ; $5063: $84
	nop                                              ; $5064: $00
	call nc, Call_045_7c80                           ; $5065: $d4 $80 $7c
	ret nz                                           ; $5068: $c0

	ld a, b                                          ; $5069: $78
	ld a, e                                          ; $506a: $7b
	cp $96                                           ; $506b: $fe $96
	rra                                              ; $506d: $1f
	ldh [$1f], a                                     ; $506e: $e0 $1f
	rlca                                             ; $5070: $07
	rlca                                             ; $5071: $07
	dec b                                            ; $5072: $05
	rlca                                             ; $5073: $07
	nop                                              ; $5074: $00
	inc b                                            ; $5075: $04
	ld hl, sp+$7a                                    ; $5076: $f8 $7a
	or $7d                                           ; $5078: $f6 $7d
	db $ec                                           ; $507a: $ec
	sub a                                            ; $507b: $97
	or h                                             ; $507c: $b4
	dec e                                            ; $507d: $1d
	ld a, $1f                                        ; $507e: $3e $1f
	rrca                                             ; $5080: $0f
	ld c, $07                                        ; $5081: $0e $07
	ld a, $77                                        ; $5083: $3e $77
	ldh a, [$de]                                     ; $5085: $f0 $de
	rst $38                                          ; $5087: $ff
	add a                                            ; $5088: $87
	db $fd                                           ; $5089: $fd
	ld a, e                                          ; $508a: $7b
	ld sp, hl                                        ; $508b: $f9
	ld a, e                                          ; $508c: $7b
	add c                                            ; $508d: $81
	call Call_045_6d47                               ; $508e: $cd $47 $6d
	inc bc                                           ; $5091: $03
	rlca                                             ; $5092: $07
	inc bc                                           ; $5093: $03
	rlca                                             ; $5094: $07
	cp l                                             ; $5095: $bd
	rst SubAFromDE                                          ; $5096: $df
	or e                                             ; $5097: $b3
	pop af                                           ; $5098: $f1
	pop af                                           ; $5099: $f1
	pop hl                                           ; $509a: $e1
	push af                                          ; $509b: $f5
	jp $c3c7                                         ; $509c: $c3 $c7 $c3


	add e                                            ; $509f: $83
	ret nz                                           ; $50a0: $c0

	db $dd                                           ; $50a1: $dd
	add b                                            ; $50a2: $80
	rst SubAFromDE                                          ; $50a3: $df
	rst $38                                          ; $50a4: $ff
	sub d                                            ; $50a5: $92
	cp $ff                                           ; $50a6: $fe $ff
	cp $fe                                           ; $50a8: $fe $fe
	db $fc                                           ; $50aa: $fc
	ret c                                            ; $50ab: $d8

	add $c2                                          ; $50ac: $c6 $c2
	pop bc                                           ; $50ae: $c1
	ret nz                                           ; $50af: $c0

	ld bc, $0300                                     ; $50b0: $01 $00 $03
	ld [hl], a                                       ; $50b3: $77
	sub c                                            ; $50b4: $91
	ld a, d                                          ; $50b5: $7a
	ld c, d                                          ; $50b6: $4a
	halt                                             ; $50b7: $76
	ld b, [hl]                                       ; $50b8: $46
	ld [hl], a                                       ; $50b9: $77
	db $fc                                           ; $50ba: $fc
	ld a, d                                          ; $50bb: $7a
	db $10                                           ; $50bc: $10
	db $fc                                           ; $50bd: $fc
	ld h, a                                          ; $50be: $67
	ldh a, [$7f]                                     ; $50bf: $f0 $7f
	db $fc                                           ; $50c1: $fc
	ei                                               ; $50c2: $fb
	ld a, a                                          ; $50c3: $7f
	inc l                                            ; $50c4: $2c
	rrca                                             ; $50c5: $0f
	ldh a, [$9e]                                     ; $50c6: $f0 $9e
	ld a, [bc]                                       ; $50c8: $0a
	ld h, e                                          ; $50c9: $63
	ldh a, [$9e]                                     ; $50ca: $f0 $9e
	rla                                              ; $50cc: $17
	db $fc                                           ; $50cd: $fc
	sbc [hl]                                         ; $50ce: $9e
	ld a, [hl+]                                      ; $50cf: $2a
	ld h, e                                          ; $50d0: $63
	ldh a, [$73]                                     ; $50d1: $f0 $73
	sbc a                                            ; $50d3: $9f
	ld a, c                                          ; $50d4: $79
	ld l, $67                                        ; $50d5: $2e $67
	ldh a, [$9e]                                     ; $50d7: $f0 $9e
	rst FarCall                                          ; $50d9: $f7
	db $fc                                           ; $50da: $fc
	ld a, l                                          ; $50db: $7d
	ld l, h                                          ; $50dc: $6c
	ld h, a                                          ; $50dd: $67
	ldh a, [$9e]                                     ; $50de: $f0 $9e
	adc a                                            ; $50e0: $8f
	db $fc                                           ; $50e1: $fc
	sbc [hl]                                         ; $50e2: $9e
	add d                                            ; $50e3: $82
	ld h, e                                          ; $50e4: $63

Jump_045_50e5:
	ldh a, [$6f]                                     ; $50e5: $f0 $6f
	ld a, [hl]                                       ; $50e7: $7e
	ld e, a                                          ; $50e8: $5f
	ldh [$6f], a                                     ; $50e9: $e0 $6f
	ldh a, [$5f]                                     ; $50eb: $f0 $5f
	ret nz                                           ; $50ed: $c0

	ld l, a                                          ; $50ee: $6f
	ldh a, [$5f]                                     ; $50ef: $f0 $5f
	ld h, b                                          ; $50f1: $60
	ld l, a                                          ; $50f2: $6f
	ldh a, [$67]                                     ; $50f3: $f0 $67
	sub b                                            ; $50f5: $90
	sbc [hl]                                         ; $50f6: $9e
	cp a                                             ; $50f7: $bf
	ld a, b                                          ; $50f8: $78
	jp z, $8e76                                      ; $50f9: $ca $76 $8e

	ld l, a                                          ; $50fc: $6f
	db $e4                                           ; $50fd: $e4
	ld [hl], l                                       ; $50fe: $75
	inc e                                            ; $50ff: $1c
	ld a, l                                          ; $5100: $7d
	sub e                                            ; $5101: $93
	ld a, a                                          ; $5102: $7f
	cp $98                                           ; $5103: $fe $98
	ld d, b                                          ; $5105: $50
	rrca                                             ; $5106: $0f
	xor d                                            ; $5107: $aa
	rst $38                                          ; $5108: $ff
	ld d, l                                          ; $5109: $55
	nop                                              ; $510a: $00
	xor [hl]                                         ; $510b: $ae
	ld l, l                                          ; $510c: $6d
	jr nc, jr_045_518e                               ; $510d: $30 $7f

	ld a, [bc]                                       ; $510f: $0a
	sub e                                            ; $5110: $93
	ldh [rIF], a                                     ; $5111: $e0 $0f
	push hl                                          ; $5113: $e5
	rlca                                             ; $5114: $07
	rst $38                                          ; $5115: $ff
	ld e, a                                          ; $5116: $5f
	rrca                                             ; $5117: $0f
	xor e                                            ; $5118: $ab
	rlca                                             ; $5119: $07
	ret nc                                           ; $511a: $d0

	rlca                                             ; $511b: $07
	ld a, [$96fe]                                    ; $511c: $fa $fe $96
	ret nc                                           ; $511f: $d0

	ldh [$f0], a                                     ; $5120: $e0 $f0

jr_045_5122:
	ld hl, sp-$10                                    ; $5122: $f8 $f0
	ld hl, sp-$04                                    ; $5124: $f8 $fc
	db $fc                                           ; $5126: $fc
	ldh a, [$78]                                     ; $5127: $f0 $78
	ld [hl], h                                       ; $5129: $74
	rst $38                                          ; $512a: $ff
	adc a                                            ; $512b: $8f
	rrca                                             ; $512c: $0f
	inc bc                                           ; $512d: $03
	rrca                                             ; $512e: $0f
	inc bc                                           ; $512f: $03
	ld a, a                                          ; $5130: $7f
	inc bc                                           ; $5131: $03
	ld sp, hl                                        ; $5132: $f9
	ld e, a                                          ; $5133: $5f
	db $eb                                           ; $5134: $eb
	rla                                              ; $5135: $17
	dec sp                                           ; $5136: $3b
	rst SubAFromHL                                          ; $5137: $d7
	dec de                                           ; $5138: $1b
	rst SubAFromBC                                          ; $5139: $e7
	rlca                                             ; $513a: $07
	rrca                                             ; $513b: $0f
	db $dd                                           ; $513c: $dd
	add b                                            ; $513d: $80
	sbc [hl]                                         ; $513e: $9e
	or b                                             ; $513f: $b0
	ld a, e                                          ; $5140: $7b
	ldh [hDisp0_OBP1], a                                     ; $5141: $e0 $87
	cp b                                             ; $5143: $b8
	db $fc                                           ; $5144: $fc
	ld sp, hl                                        ; $5145: $f9
	db $fc                                           ; $5146: $fc
	ld hl, sp-$01                                    ; $5147: $f8 $ff
	db $fc                                           ; $5149: $fc
	ei                                               ; $514a: $fb
	inc bc                                           ; $514b: $03
	ld bc, $0f13                                     ; $514c: $01 $13 $0f
	rlca                                             ; $514f: $07
	rrca                                             ; $5150: $0f
	rst $38                                          ; $5151: $ff
	inc b                                            ; $5152: $04
	rst $38                                          ; $5153: $ff
	ld [hl], l                                       ; $5154: $75
	ei                                               ; $5155: $fb
	rst $38                                          ; $5156: $ff
	rst $38                                          ; $5157: $ff
	ccf                                              ; $5158: $3f
	ccf                                              ; $5159: $3f
	rst SubAFromDE                                          ; $515a: $df
	ld d, h                                          ; $515b: $54
	ld [hl], h                                       ; $515c: $74
	sbc h                                            ; $515d: $9c
	xor a                                            ; $515e: $af
	ld d, b                                          ; $515f: $50
	ld d, l                                          ; $5160: $55
	ld [hl], l                                       ; $5161: $75
	sub d                                            ; $5162: $92
	ld e, e                                          ; $5163: $5b
	cp $7f                                           ; $5164: $fe $7f
	ldh a, [$9e]                                     ; $5166: $f0 $9e
	push af                                          ; $5168: $f5
	ld d, e                                          ; $5169: $53
	ldh a, [$7f]                                     ; $516a: $f0 $7f
	cp $47                                           ; $516c: $fe $47
	ldh a, [$7c]                                     ; $516e: $f0 $7c
	ld [hl], h                                       ; $5170: $74
	ld c, a                                          ; $5171: $4f
	ldh a, [$9e]                                     ; $5172: $f0 $9e
	db $dd                                           ; $5174: $dd
	ld c, e                                          ; $5175: $4b
	ldh a, [rPCM12]                                  ; $5176: $f0 $76
	ld l, h                                          ; $5178: $6c
	rla                                              ; $5179: $17
	ret nc                                           ; $517a: $d0

	rlca                                             ; $517b: $07
	ldh [rBGP], a                                    ; $517c: $e0 $47
	sub b                                            ; $517e: $90
	sbc [hl]                                         ; $517f: $9e
	ld a, a                                          ; $5180: $7f
	ld c, e                                          ; $5181: $4b
	ldh a, [$03]                                     ; $5182: $f0 $03
	cp $1b                                           ; $5184: $fe $1b
	jr nc, jr_045_5122                               ; $5186: $30 $9a

	xor d                                            ; $5188: $aa

jr_045_5189:
	ld d, l                                          ; $5189: $55
	ld d, l                                          ; $518a: $55
	xor d                                            ; $518b: $aa
	ld d, b                                          ; $518c: $50
	ld l, e                                          ; $518d: $6b

jr_045_518e:
	db $f4                                           ; $518e: $f4
	add d                                            ; $518f: $82
	db $eb                                           ; $5190: $eb
	inc d                                            ; $5191: $14
	ld d, a                                          ; $5192: $57
	xor b                                            ; $5193: $a8
	xor c                                            ; $5194: $a9
	ld d, a                                          ; $5195: $57
	ld d, a                                          ; $5196: $57
	xor b                                            ; $5197: $a8
	rlca                                             ; $5198: $07
	rrca                                             ; $5199: $0f
	ld h, e                                          ; $519a: $63
	rrca                                             ; $519b: $0f
	push hl                                          ; $519c: $e5
	dec bc                                           ; $519d: $0b
	rst JumpTable                                          ; $519e: $c7
	dec bc                                           ; $519f: $0b
	jp $8f3f                                         ; $51a0: $c3 $3f $8f


	ld a, c                                          ; $51a3: $79
	ld e, l                                          ; $51a4: $5d
	rst $38                                          ; $51a5: $ff
	ld a, [hl+]                                      ; $51a6: $2a
	rst $38                                          ; $51a7: $ff
	ld a, e                                          ; $51a8: $7b
	add b                                            ; $51a9: $80
	ld bc, $0080                                     ; $51aa: $01 $80 $00
	ld a, b                                          ; $51ad: $78
	ld a, e                                          ; $51ae: $7b
	sbc d                                            ; $51af: $9a
	db $dd                                           ; $51b0: $dd
	rst $38                                          ; $51b1: $ff
	xor [hl]                                         ; $51b2: $ae
	rst $38                                          ; $51b3: $ff
	db $fd                                           ; $51b4: $fd
	ld a, e                                          ; $51b5: $7b
	ld hl, sp-$64                                    ; $51b6: $f8 $9c
	ccf                                              ; $51b8: $3f
	rst $38                                          ; $51b9: $ff
	add a                                            ; $51ba: $87
	ld a, e                                          ; $51bb: $7b
	ld a, l                                          ; $51bc: $7d
	ld a, a                                          ; $51bd: $7f
	ld hl, sp-$66                                    ; $51be: $f8 $9a
	ld d, a                                          ; $51c0: $57
	rst $38                                          ; $51c1: $ff
	ei                                               ; $51c2: $fb
	rst $38                                          ; $51c3: $ff
	ld d, l                                          ; $51c4: $55
	ld a, e                                          ; $51c5: $7b
	ld hl, sp+$77                                    ; $51c6: $f8 $77
	cp h                                             ; $51c8: $bc
	rla                                              ; $51c9: $17
	db $fc                                           ; $51ca: $fc
	sbc l                                            ; $51cb: $9d
	xor e                                            ; $51cc: $ab
	ld d, h                                          ; $51cd: $54
	ld c, a                                          ; $51ce: $4f
	ldh a, [rPCM34]                                  ; $51cf: $f0 $77
	ld a, h                                          ; $51d1: $7c
	ld d, a                                          ; $51d2: $57
	ldh a, [$9d]                                     ; $51d3: $f0 $9d
	ld a, [$0f05]                                    ; $51d5: $fa $05 $0f
	ldh [rBGP], a                                    ; $51d8: $e0 $47
	ldh a, [$7f]                                     ; $51da: $f0 $7f
	ld e, b                                          ; $51dc: $58
	inc bc                                           ; $51dd: $03
	ret nc                                           ; $51de: $d0

	inc de                                           ; $51df: $13
	ldh a, [$9d]                                     ; $51e0: $f0 $9d
	ld sp, hl                                        ; $51e2: $f9
	ld b, $4f                                        ; $51e3: $06 $4f
	ldh a, [$9d]                                     ; $51e5: $f0 $9d
	ld [$0f15], a                                    ; $51e7: $ea $15 $0f
	ld b, b                                          ; $51ea: $40
	inc bc                                           ; $51eb: $03
	jr nz, @+$55                                     ; $51ec: $20 $53

	jr nz, jr_045_5189                               ; $51ee: $20 $99

	ld d, h                                          ; $51f0: $54
	xor e                                            ; $51f1: $ab
	rst $38                                          ; $51f2: $ff
	nop                                              ; $51f3: $00
	ld d, a                                          ; $51f4: $57
	xor b                                            ; $51f5: $a8
	ld h, a                                          ; $51f6: $67
	ldh a, [$9e]                                     ; $51f7: $f0 $9e
	and b                                            ; $51f9: $a0
	ld a, d                                          ; $51fa: $7a
	inc sp                                           ; $51fb: $33
	sbc l                                            ; $51fc: $9d
	push de                                          ; $51fd: $d5
	ld a, a                                          ; $51fe: $7f
	ld l, [hl]                                       ; $51ff: $6e
	sbc b                                            ; $5200: $98
	sbc [hl]                                         ; $5201: $9e
	xor b                                            ; $5202: $a8
	ld [hl], l                                       ; $5203: $75
	inc sp                                           ; $5204: $33
	ld a, e                                          ; $5205: $7b
	cp $7e                                           ; $5206: $fe $7e
	call z, $ea99                                    ; $5208: $cc $99 $ea
	ccf                                              ; $520b: $3f
	db $fd                                           ; $520c: $fd
	rlca                                             ; $520d: $07
	ld b, a                                          ; $520e: $47
	cp b                                             ; $520f: $b8
	ld h, [hl]                                       ; $5210: $66
	ld a, e                                          ; $5211: $7b
	ld a, a                                          ; $5212: $7f
	db $e4                                           ; $5213: $e4
	sbc l                                            ; $5214: $9d
	dec d                                            ; $5215: $15
	ld [$5d56], a                                    ; $5216: $ea $56 $5d
	ld [hl], a                                       ; $5219: $77
	call nc, $0a9e                                   ; $521a: $d4 $9e $0a
	ld e, d                                          ; $521d: $5a
	ld e, e                                          ; $521e: $5b
	ld l, a                                          ; $521f: $6f
	or h                                             ; $5220: $b4
	inc bc                                           ; $5221: $03
	ldh a, [$03]                                     ; $5222: $f0 $03
	ldh a, [$57]                                     ; $5224: $f0 $57
	ldh a, [$9d]                                     ; $5226: $f0 $9d
	add d                                            ; $5228: $82
	ld a, l                                          ; $5229: $7d
	inc bc                                           ; $522a: $03
	ret nc                                           ; $522b: $d0

	inc bc                                           ; $522c: $03
	ldh a, [rAUD2ENV]                                ; $522d: $f0 $17
	ld d, b                                          ; $522f: $50
	sbc [hl]                                         ; $5230: $9e
	add b                                            ; $5231: $80
	ld e, c                                          ; $5232: $59
	ld e, e                                          ; $5233: $5b
	ld a, a                                          ; $5234: $7f
	ldh a, [$9d]                                     ; $5235: $f0 $9d
	ld d, b                                          ; $5237: $50
	xor a                                            ; $5238: $af
	ld c, a                                          ; $5239: $4f
	jr nz, jr_045_523d                               ; $523a: $20 $01

	ld e, e                                          ; $523c: $5b

jr_045_523d:
	inc bc                                           ; $523d: $03
	cp $03                                           ; $523e: $fe $03
	cp $03                                           ; $5240: $fe $03
	cp $03                                           ; $5242: $fe $03
	cp $03                                           ; $5244: $fe $03
	cp $03                                           ; $5246: $fe $03
	cp $03                                           ; $5248: $fe $03
	cp $03                                           ; $524a: $fe $03
	cp $03                                           ; $524c: $fe $03
	cp $03                                           ; $524e: $fe $03
	cp $03                                           ; $5250: $fe $03
	cp $7f                                           ; $5252: $fe $7f
	cp $19                                           ; $5254: $fe $19
	nop                                              ; $5256: $00
	rst GetHLinHL                                          ; $5257: $cf
	ld h, [hl]                                       ; $5258: $66
	sbc l                                            ; $5259: $9d
	ld h, l                                          ; $525a: $65
	ld d, l                                          ; $525b: $55
	ld h, e                                          ; $525c: $63
	rst FarCall                                          ; $525d: $f7
	inc sp                                           ; $525e: $33
	or $da                                           ; $525f: $f6 $da
	ld [hl], a                                       ; $5261: $77
	sbc h                                            ; $5262: $9c
	ld [hl], l                                       ; $5263: $75
	ld d, l                                          ; $5264: $55
	ld d, l                                          ; $5265: $55
	jp c, $9e33                                      ; $5266: $da $33 $9e

	ld b, h                                          ; $5269: $44
	ld h, e                                          ; $526a: $63
	or $03                                           ; $526b: $f6 $03
	rst $38                                          ; $526d: $ff
	or d                                             ; $526e: $b2
	add [hl]                                         ; $526f: $86
	ei                                               ; $5270: $fb
	rst SubAFromHL                                          ; $5271: $d7
	rst $38                                          ; $5272: $ff
	inc bc                                           ; $5273: $03
	ldh a, [$fc]                                     ; $5274: $f0 $fc
	sbc [hl]                                         ; $5276: $9e
	db $fd                                           ; $5277: $fd
	ld c, e                                          ; $5278: $4b
	ldh a, [$9e]                                     ; $5279: $f0 $9e
	ld d, l                                          ; $527b: $55
	inc bc                                           ; $527c: $03
	ldh a, [$03]                                     ; $527d: $f0 $03
	ldh a, [$03]                                     ; $527f: $f0 $03
	ldh a, [$03]                                     ; $5281: $f0 $03
	ldh a, [$5b]                                     ; $5283: $f0 $5b
	ldh a, [$9e]                                     ; $5285: $f0 $9e
	ld e, a                                          ; $5287: $5f
	inc bc                                           ; $5288: $03
	jr nc, jr_045_52de                               ; $5289: $30 $53

	ldh a, [$9e]                                     ; $528b: $f0 $9e
	ld a, a                                          ; $528d: $7f
	ld c, e                                          ; $528e: $4b
	ldh a, [$d6]                                     ; $528f: $f0 $d6
	rst $38                                          ; $5291: $ff
	rlca                                             ; $5292: $07
	ldh a, [$db]                                     ; $5293: $f0 $db
	rst $38                                          ; $5295: $ff
	sbc [hl]                                         ; $5296: $9e
	ccf                                              ; $5297: $3f
	ld l, e                                          ; $5298: $6b
	db $ed                                           ; $5299: $ed
	sbc [hl]                                         ; $529a: $9e
	ret nz                                           ; $529b: $c0

	ld l, e                                          ; $529c: $6b
	ld hl, sp+$63                                    ; $529d: $f8 $63
	db $dd                                           ; $529f: $dd
	ld b, e                                          ; $52a0: $43
	ldh a, [$dc]                                     ; $52a1: $f0 $dc
	rst FarCall                                          ; $52a3: $f7
	sbc h                                            ; $52a4: $9c
	rst $38                                          ; $52a5: $ff
	inc bc                                           ; $52a6: $03
	inc bc                                           ; $52a7: $03
	jp c, $80ff                                      ; $52a8: $da $ff $80

	rlca                                             ; $52ab: $07
	db $fc                                           ; $52ac: $fc
	rst $38                                          ; $52ad: $ff
	add hl, hl                                       ; $52ae: $29
	inc b                                            ; $52af: $04
	nop                                              ; $52b0: $00
	ld b, b                                          ; $52b1: $40
	ld b, h                                          ; $52b2: $44
	ld b, h                                          ; $52b3: $44
	rst $38                                          ; $52b4: $ff
	rst $38                                          ; $52b5: $ff
	rst FarCall                                          ; $52b6: $f7
	ld [hl], e                                       ; $52b7: $73
	ld [hl], a                                       ; $52b8: $77
	scf                                              ; $52b9: $37
	inc sp                                           ; $52ba: $33
	inc sp                                           ; $52bb: $33
	nop                                              ; $52bc: $00
	rst $38                                          ; $52bd: $ff

jr_045_52be:
	dec h                                            ; $52be: $25
	jr nz, jr_045_52e5                               ; $52bf: $20 $24

	jr nz, jr_045_5327                               ; $52c1: $20 $64

	ld h, h                                          ; $52c3: $64
	rst $38                                          ; $52c4: $ff
	rst $38                                          ; $52c5: $ff
	ld [hl], d                                       ; $52c6: $72
	halt                                             ; $52c7: $76
	ld [hl], d                                       ; $52c8: $72
	halt                                             ; $52c9: $76
	rst SubAFromDE                                          ; $52ca: $df
	ld [hl-], a                                      ; $52cb: $32
	sbc l                                            ; $52cc: $9d
	nop                                              ; $52cd: $00
	ld a, [hl]                                       ; $52ce: $7e
	sbc $2a                                          ; $52cf: $de $2a
	sbc $0a                                          ; $52d1: $de $0a
	rst SubAFromDE                                          ; $52d3: $df
	rst $38                                          ; $52d4: $ff
	db $db                                           ; $52d5: $db

jr_045_52d6:
	ld h, [hl]                                       ; $52d6: $66
	sbc l                                            ; $52d7: $9d
	nop                                              ; $52d8: $00
	ld h, h                                          ; $52d9: $64
	db $db                                           ; $52da: $db
	ld [$f063], sp                                   ; $52db: $08 $63 $f0

jr_045_52de:
	sbc h                                            ; $52de: $9c
	ld l, h                                          ; $52df: $6c
	ld b, l                                          ; $52e0: $45
	ld b, l                                          ; $52e1: $45
	db $dd                                           ; $52e2: $dd
	ld b, h                                          ; $52e3: $44
	rst SubAFromDE                                          ; $52e4: $df

jr_045_52e5:
	rst $38                                          ; $52e5: $ff
	db $db                                           ; $52e6: $db
	db $ec                                           ; $52e7: $ec
	sbc l                                            ; $52e8: $9d
	nop                                              ; $52e9: $00

jr_045_52ea:
	reti                                             ; $52ea: $d9


	db $db                                           ; $52eb: $db
	add c                                            ; $52ec: $81
	rst SubAFromDE                                          ; $52ed: $df
	rst $38                                          ; $52ee: $ff
	db $db                                           ; $52ef: $db
	reti                                             ; $52f0: $d9


	sbc l                                            ; $52f1: $9d
	nop                                              ; $52f2: $00
	sub c                                            ; $52f3: $91
	db $db                                           ; $52f4: $db
	jr c, jr_045_52d6                                ; $52f5: $38 $df

	rst $38                                          ; $52f7: $ff
	db $db                                           ; $52f8: $db
	sub c                                            ; $52f9: $91
	sbc l                                            ; $52fa: $9d
	nop                                              ; $52fb: $00
	inc sp                                           ; $52fc: $33
	db $db                                           ; $52fd: $db
	add [hl]                                         ; $52fe: $86
	rst SubAFromDE                                          ; $52ff: $df
	rst $38                                          ; $5300: $ff
	db $dd                                           ; $5301: $dd
	inc sp                                           ; $5302: $33
	rst SubAFromDE                                          ; $5303: $df
	ld sp, $199d                                     ; $5304: $31 $9d $19
	ld [hl], $db                                     ; $5307: $36 $db
	jr nz, jr_045_52ea                               ; $5309: $20 $df

	rst $38                                          ; $530b: $ff
	db $db                                           ; $530c: $db
	ld b, $9d                                        ; $530d: $06 $9d
	rst $38                                          ; $530f: $ff
	ld d, l                                          ; $5310: $55
	db $dd                                           ; $5311: $dd
	ld l, h                                          ; $5312: $6c
	rst SubAFromDE                                          ; $5313: $df
	ld c, h                                          ; $5314: $4c
	sbc l                                            ; $5315: $9d
	rst $38                                          ; $5316: $ff
	xor $db                                          ; $5317: $ee $db
	ld b, h                                          ; $5319: $44
	sbc l                                            ; $531a: $9d
	rst SubAFromDE                                          ; $531b: $df
	adc c                                            ; $531c: $89
	sbc $08                                          ; $531d: $de $08
	rst SubAFromDE                                          ; $531f: $df
	jr jr_045_52be                                   ; $5320: $18 $9c

	db $10                                           ; $5322: $10
	rst $38                                          ; $5323: $ff
	rst SubAFromDE                                          ; $5324: $df
	sbc $d9                                          ; $5325: $de $d9

jr_045_5327:
	sbc $c9                                          ; $5327: $de $c9
	sbc l                                            ; $5329: $9d
	rst $38                                          ; $532a: $ff
	db $dd                                           ; $532b: $dd
	db $dd                                           ; $532c: $dd
	db $d3                                           ; $532d: $d3
	rst SubAFromDE                                          ; $532e: $df
	sub e                                            ; $532f: $93
	sbc l                                            ; $5330: $9d
	rst $38                                          ; $5331: $ff
	ei                                               ; $5332: $fb
	db $dd                                           ; $5333: $dd
	sbc c                                            ; $5334: $99
	rst SubAFromDE                                          ; $5335: $df
	reti                                             ; $5336: $d9


	rst SubAFromDE                                          ; $5337: $df
	rst SubAFromDE                                          ; $5338: $df
	sbc $ff                                          ; $5339: $de $ff
	sbc [hl]                                         ; $533b: $9e
	jr nz, jr_045_53a9                               ; $533c: $20 $6b

	jr nz, @-$20                                     ; $533e: $20 $de

	ret nz                                           ; $5340: $c0

	call c, $9cff                                    ; $5341: $dc $ff $9c
	xor d                                            ; $5344: $aa
	ld d, l                                          ; $5345: $55
	xor e                                            ; $5346: $ab
	ld h, [hl]                                       ; $5347: $66
	db $d3                                           ; $5348: $d3
	call nc, $3bff                                   ; $5349: $d4 $ff $3b
	ldh a, [$6e]                                     ; $534c: $f0 $6e
	or b                                             ; $534e: $b0
	sbc l                                            ; $534f: $9d
	ret nz                                           ; $5350: $c0

	add b                                            ; $5351: $80
	ld l, d                                          ; $5352: $6a
	xor b                                            ; $5353: $a8
	ld a, [hl]                                       ; $5354: $7e
	cp a                                             ; $5355: $bf
	ld [hl], e                                       ; $5356: $73
	ld hl, sp-$62                                    ; $5357: $f8 $9e
	ldh [rOCPD], a                                   ; $5359: $e0 $6b
	add sp, -$62                                     ; $535b: $e8 $9e
	rra                                              ; $535d: $1f
	ei                                               ; $535e: $fb
	sbc h                                            ; $535f: $9c
	ldh a, [$30]                                     ; $5360: $f0 $30
	jr nc, jr_045_53d3                               ; $5362: $30 $6f

	ld hl, sp+$7f                                    ; $5364: $f8 $7f
	rst FarCall                                          ; $5366: $f7
	reti                                             ; $5367: $d9


	inc bc                                           ; $5368: $03
	reti                                             ; $5369: $d9


	rlca                                             ; $536a: $07
	jp c, $9e44                                      ; $536b: $da $44 $9e

	ld b, l                                          ; $536e: $45
	reti                                             ; $536f: $d9


	inc sp                                           ; $5370: $33
	sbc [hl]                                         ; $5371: $9e
	ld h, b                                          ; $5372: $60
	jp c, $9e64                                      ; $5373: $da $64 $9e

	ld [hl], $da                                     ; $5376: $36 $da
	ld [hl-], a                                      ; $5378: $32
	reti                                             ; $5379: $d9


	ld a, [bc]                                       ; $537a: $0a
	reti                                             ; $537b: $d9


	ld h, [hl]                                       ; $537c: $66
	rst SubAFromDE                                          ; $537d: $df
	ld [$d9fb], sp                                   ; $537e: $08 $fb $d9
	ld h, [hl]                                       ; $5381: $66
	call c, $de44                                    ; $5382: $dc $44 $de
	ld b, [hl]                                       ; $5385: $46
	rst SubAFromDE                                          ; $5386: $df
	db $ec                                           ; $5387: $ec
	sbc $ee                                          ; $5388: $de $ee
	sbc $ec                                          ; $538a: $de $ec
	reti                                             ; $538c: $d9


	adc c                                            ; $538d: $89
	reti                                             ; $538e: $d9


	reti                                             ; $538f: $d9


	reti                                             ; $5390: $d9


	add hl, sp                                       ; $5391: $39
	reti                                             ; $5392: $d9


	sub b                                            ; $5393: $90
	reti                                             ; $5394: $d9


	add d                                            ; $5395: $82
	reti                                             ; $5396: $d9


	ld sp, $dcfe                                     ; $5397: $31 $fe $dc
	inc b                                            ; $539a: $04
	sbc $26                                          ; $539b: $de $26
	call c, $df22                                    ; $539d: $dc $22 $df
	ld c, h                                          ; $53a0: $4c
	db $db                                           ; $53a1: $db
	inc c                                            ; $53a2: $0c
	reti                                             ; $53a3: $d9


	ld b, h                                          ; $53a4: $44
	reti                                             ; $53a5: $d9


	db $10                                           ; $53a6: $10
	reti                                             ; $53a7: $d9


	ret                                              ; $53a8: $c9


jr_045_53a9:
	reti                                             ; $53a9: $d9


	sub e                                            ; $53aa: $93
	rst SubAFromDE                                          ; $53ab: $df
	reti                                             ; $53ac: $d9


	db $db                                           ; $53ad: $db
	sbc c                                            ; $53ae: $99
	ld sp, hl                                        ; $53af: $f9
	reti                                             ; $53b0: $d9


	ret nz                                           ; $53b1: $c0

	sbc b                                            ; $53b2: $98
	rla                                              ; $53b3: $17
	ld a, [hl+]                                      ; $53b4: $2a
	dec d                                            ; $53b5: $15
	ld [bc], a                                       ; $53b6: $02
	dec b                                            ; $53b7: $05
	nop                                              ; $53b8: $00
	ld bc, $97f8                                     ; $53b9: $01 $f8 $97
	ld a, a                                          ; $53bc: $7f
	xor a                                            ; $53bd: $af
	ld e, l                                          ; $53be: $5d
	xor e                                            ; $53bf: $ab
	ld d, a                                          ; $53c0: $57
	xor d                                            ; $53c1: $aa
	ld d, l                                          ; $53c2: $55
	xor d                                            ; $53c3: $aa
	ld h, d                                          ; $53c4: $62
	push de                                          ; $53c5: $d5
	call c, $9dff                                    ; $53c6: $dc $ff $9d
	ld a, a                                          ; $53c9: $7f
	cp a                                             ; $53ca: $bf
	ld e, a                                          ; $53cb: $5f
	ret z                                            ; $53cc: $c8

	sbc b                                            ; $53cd: $98
	pop bc                                           ; $53ce: $c1
	jp nz, $82c2                                     ; $53cf: $c2 $c2 $82

	add c                                            ; $53d2: $81

jr_045_53d3:
	add e                                            ; $53d3: $83
	add b                                            ; $53d4: $80
	db $dd                                           ; $53d5: $dd
	adc b                                            ; $53d6: $88
	adc h                                            ; $53d7: $8c
	call z, $ccce                                    ; $53d8: $cc $ce $cc
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	add b                                            ; $53dd: $80
	db $10                                           ; $53de: $10
	ld [rRAMB], sp                                   ; $53df: $08 $00 $40
	or b                                             ; $53e2: $b0
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	ld h, b                                          ; $53e5: $60
	nop                                              ; $53e6: $00
	inc e                                            ; $53e7: $1c
	inc e                                            ; $53e8: $1c
	and b                                            ; $53e9: $a0
	nop                                              ; $53ea: $00
	pop de                                           ; $53eb: $d1
	jr nc, jr_045_5434                               ; $53ec: $30 $46

	ret nz                                           ; $53ee: $c0

	jp c, $9e45                                      ; $53ef: $da $45 $9e

	ld b, c                                          ; $53f2: $41
	reti                                             ; $53f3: $d9


	inc sp                                           ; $53f4: $33
	call c, $df64                                    ; $53f5: $dc $64 $df
	ld b, [hl]                                       ; $53f8: $46

jr_045_53f9:
	sbc [hl]                                         ; $53f9: $9e
	ld b, $d9                                        ; $53fa: $06 $d9
	ld [hl-], a                                      ; $53fc: $32
	ld b, [hl]                                       ; $53fd: $46
	ret nz                                           ; $53fe: $c0

	ld sp, hl                                        ; $53ff: $f9
	reti                                             ; $5400: $d9


	ld h, [hl]                                       ; $5401: $66
	reti                                             ; $5402: $d9


	ld b, [hl]                                       ; $5403: $46
	reti                                             ; $5404: $d9


	db $ec                                           ; $5405: $ec
	jp c, $9e89                                      ; $5406: $da $89 $9e

	add hl, bc                                       ; $5409: $09
	ld h, d                                          ; $540a: $62
	ret nz                                           ; $540b: $c0

	jp c, $9e31                                      ; $540c: $da $31 $9e

	sub b                                            ; $540f: $90
	jp c, $dc98                                      ; $5410: $da $98 $dc

	add d                                            ; $5413: $82
	sbc $80                                          ; $5414: $de $80
	sbc $31                                          ; $5416: $de $31
	rst SubAFromDE                                          ; $5418: $df
	jr nc, jr_045_53f9                               ; $5419: $30 $de

	ld [hl-], a                                      ; $541b: $32
	reti                                             ; $541c: $d9


	inc b                                            ; $541d: $04
	reti                                             ; $541e: $d9


	ld [hl+], a                                      ; $541f: $22
	reti                                             ; $5420: $d9


	inc c                                            ; $5421: $0c
	ld b, $c0                                        ; $5422: $06 $c0
	reti                                             ; $5424: $d9


	sbc c                                            ; $5425: $99
	ld b, [hl]                                       ; $5426: $46
	ret nz                                           ; $5427: $c0

	ld a, [$029e]                                    ; $5428: $fa $9e $02
	ld sp, hl                                        ; $542b: $f9
	sbc h                                            ; $542c: $9c
	ld d, l                                          ; $542d: $55
	ld a, [hl+]                                      ; $542e: $2a
	ld d, l                                          ; $542f: $55
	ld a, d                                          ; $5430: $7a
	jp nz, $159e                                     ; $5431: $c2 $9e $15

jr_045_5434:
	ld h, d                                          ; $5434: $62
	ret nz                                           ; $5435: $c0

	sbc e                                            ; $5436: $9b
	ld e, a                                          ; $5437: $5f
	xor a                                            ; $5438: $af
	ld e, a                                          ; $5439: $5f
	cp a                                             ; $543a: $bf
	ld a, e                                          ; $543b: $7b
	cp $9e                                           ; $543c: $fe $9e
	xor e                                            ; $543e: $ab
	ld sp, hl                                        ; $543f: $f9
	rst SubAFromDE                                          ; $5440: $df
	add [hl]                                         ; $5441: $86
	ld a, [hl]                                       ; $5442: $7e
	push bc                                          ; $5443: $c5
	sbc e                                            ; $5444: $9b
	adc a                                            ; $5445: $8f
	add a                                            ; $5446: $87
	add b                                            ; $5447: $80
	add b                                            ; $5448: $80
	db $dd                                           ; $5449: $dd
	ret z                                            ; $544a: $c8

	sbc [hl]                                         ; $544b: $9e
	rst GetHLinHL                                          ; $544c: $cf
	sbc $c0                                          ; $544d: $de $c0
	rst SubAFromDE                                          ; $544f: $df
	db $10                                           ; $5450: $10
	sub l                                            ; $5451: $95
	ld h, b                                          ; $5452: $60
	add b                                            ; $5453: $80
	cp $fe                                           ; $5454: $fe $fe
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	ld [$9028], sp                                   ; $5458: $08 $28 $90
	ld b, b                                          ; $545b: $40
	ld a, e                                          ; $545c: $7b
	ld sp, hl                                        ; $545d: $f9
	ld [bc], a                                       ; $545e: $02
	ret nz                                           ; $545f: $c0

	reti                                             ; $5460: $d9


	ld b, c                                          ; $5461: $41
	reti                                             ; $5462: $d9


	inc sp                                           ; $5463: $33
	db $dd                                           ; $5464: $dd
	ld [bc], a                                       ; $5465: $02
	db $dd                                           ; $5466: $dd
	ld b, $dd                                        ; $5467: $06 $dd
	ld [hl], $6e                                     ; $5469: $36 $6e
	ret nz                                           ; $546b: $c0

	call c, Call_045_5908                            ; $546c: $dc $08 $59
	add b                                            ; $546f: $80
	db $db                                           ; $5470: $db
	ld [$c026], sp                                   ; $5471: $08 $26 $c0
	reti                                             ; $5474: $d9


	add hl, bc                                       ; $5475: $09
	reti                                             ; $5476: $d9


	reti                                             ; $5477: $d9


	reti                                             ; $5478: $d9


	ld sp, $98d9                                     ; $5479: $31 $d9 $98
	sbc [hl]                                         ; $547c: $9e
	add b                                            ; $547d: $80
	jp c, $9e90                                      ; $547e: $da $90 $9e

	ld [hl-], a                                      ; $5481: $32
	jp c, $3e22                                      ; $5482: $da $22 $3e

	ret nz                                           ; $5485: $c0

	db $dd                                           ; $5486: $dd
	ld [$dbff], sp                                   ; $5487: $08 $ff $db
	ld b, h                                          ; $548a: $44
	rst SubAFromDE                                          ; $548b: $df
	ld c, h                                          ; $548c: $4c
	jp c, $9e10                                      ; $548d: $da $10 $9e

	nop                                              ; $5490: $00
	reti                                             ; $5491: $d9


	ret                                              ; $5492: $c9


	call c, $de9b                                    ; $5493: $dc $9b $de
	sub e                                            ; $5496: $93
	reti                                             ; $5497: $d9


	sub c                                            ; $5498: $91
	ld c, d                                          ; $5499: $4a
	ret z                                            ; $549a: $c8

	ld a, l                                          ; $549b: $7d
	add $94                                          ; $549c: $c6 $94
	cp $75                                           ; $549e: $fe $75
	ld h, e                                          ; $54a0: $63
	ld a, b                                          ; $54a1: $78
	ld l, b                                          ; $54a2: $68
	ld d, b                                          ; $54a3: $50
	ld l, b                                          ; $54a4: $68
	ccf                                              ; $54a5: $3f
	ld a, a                                          ; $54a6: $7f
	rst $38                                          ; $54a7: $ff
	db $fc                                           ; $54a8: $fc
	db $dd                                           ; $54a9: $dd
	ldh a, [$97]                                     ; $54aa: $f0 $97
	nop                                              ; $54ac: $00
	and b                                            ; $54ad: $a0
	ld d, l                                          ; $54ae: $55
	ldh a, [rP1]                                     ; $54af: $f0 $00
	nop                                              ; $54b1: $00
	ld bc, $de02                                     ; $54b2: $01 $02 $de
	rst $38                                          ; $54b5: $ff
	sbc [hl]                                         ; $54b6: $9e
	rrca                                             ; $54b7: $0f
	ld l, d                                          ; $54b8: $6a
	xor [hl]                                         ; $54b9: $ae
	ld a, a                                          ; $54ba: $7f
	cp $9c                                           ; $54bb: $fe $9c
	dec hl                                           ; $54bd: $2b
	ld d, a                                          ; $54be: $57
	cp a                                             ; $54bf: $bf
	ld h, h                                          ; $54c0: $64
	ld b, c                                          ; $54c1: $41
	sbc [hl]                                         ; $54c2: $9e
	ldh [rBCPS], a                                   ; $54c3: $e0 $68
	dec sp                                           ; $54c5: $3b
	sbc [hl]                                         ; $54c6: $9e
	rst SubAFromDE                                          ; $54c7: $df
	ld h, h                                          ; $54c8: $64
	ld [hl-], a                                      ; $54c9: $32
	ld h, a                                          ; $54ca: $67
	ld sp, hl                                        ; $54cb: $f9
	ld l, e                                          ; $54cc: $6b
	ldh a, [$78]                                     ; $54cd: $f0 $78
	ld c, l                                          ; $54cf: $4d
	ld l, e                                          ; $54d0: $6b
	ld hl, sp+$6f                                    ; $54d1: $f8 $6f
	sbc l                                            ; $54d3: $9d
	ld d, d                                          ; $54d4: $52
	jp $07de                                         ; $54d5: $c3 $de $07


	rst SubAFromDE                                          ; $54d8: $df
	ld b, b                                          ; $54d9: $40
	rst SubAFromDE                                          ; $54da: $df
	ld h, b                                          ; $54db: $60
	db $dd                                           ; $54dc: $dd
	ld h, c                                          ; $54dd: $61
	reti                                             ; $54de: $d9


	inc sp                                           ; $54df: $33
	sbc [hl]                                         ; $54e0: $9e
	ld b, $dd                                        ; $54e1: $06 $dd
	ld [bc], a                                       ; $54e3: $02
	sbc $a2                                          ; $54e4: $de $a2
	sbc [hl]                                         ; $54e6: $9e
	ld [hl-], a                                      ; $54e7: $32
	jp c, Jump_045_4536                              ; $54e8: $da $36 $45

	add b                                            ; $54eb: $80
	db $dd                                           ; $54ec: $dd
	adc b                                            ; $54ed: $88
	db $dd                                           ; $54ee: $dd
	adc d                                            ; $54ef: $8a
	db $dd                                           ; $54f0: $dd
	ld h, [hl]                                       ; $54f1: $66
	ld l, l                                          ; $54f2: $6d
	ld d, l                                          ; $54f3: $55
	ld b, $c0                                        ; $54f4: $06 $c0
	db $dd                                           ; $54f6: $dd
	jr nc, @-$63                                     ; $54f7: $30 $9b

	ld [hl-], a                                      ; $54f9: $32
	ld [de], a                                       ; $54fa: $12
	sbc b                                            ; $54fb: $98
	sbc b                                            ; $54fc: $98
	call c, $9e99                                    ; $54fd: $dc $99 $9e
	cp c                                             ; $5500: $b9
	sbc $90                                          ; $5501: $de $90
	call c, $d910                                    ; $5503: $dc $10 $d9
	ld [hl+], a                                      ; $5506: $22
	ld b, [hl]                                       ; $5507: $46
	ret nz                                           ; $5508: $c0

	ld sp, hl                                        ; $5509: $f9
	reti                                             ; $550a: $d9


	ld c, h                                          ; $550b: $4c
	ld sp, hl                                        ; $550c: $f9
	ld d, l                                          ; $550d: $55
	add b                                            ; $550e: $80
	db $dd                                           ; $550f: $dd
	or e                                             ; $5510: $b3
	ld [hl+], a                                      ; $5511: $22
	ret nz                                           ; $5512: $c0

	sbc b                                            ; $5513: $98
	ld l, b                                          ; $5514: $68
	ld b, c                                          ; $5515: $41
	ld a, [bc]                                       ; $5516: $0a
	dec h                                            ; $5517: $25
	dec hl                                           ; $5518: $2b
	rrca                                             ; $5519: $0f
	dec d                                            ; $551a: $15
	db $dd                                           ; $551b: $dd
	ldh a, [$df]                                     ; $551c: $f0 $df
	ret nc                                           ; $551e: $d0

	sbc h                                            ; $551f: $9c
	ldh a, [$fa]                                     ; $5520: $f0 $fa
	dec d                                            ; $5522: $15
	ld a, d                                          ; $5523: $7a
	call nc, Call_045_7a9b                           ; $5524: $d4 $9b $7a

Jump_045_5527:
	push af                                          ; $5527: $f5
	xor b                                            ; $5528: $a8
	ld b, b                                          ; $5529: $40
	db $fd                                           ; $552a: $fd
	sbc l                                            ; $552b: $9d
	dec b                                            ; $552c: $05
	ld a, [bc]                                       ; $552d: $0a
	ld a, e                                          ; $552e: $7b
	db $f4                                           ; $552f: $f4
	sub e                                            ; $5530: $93
	db $f4                                           ; $5531: $f4
	xor b                                            ; $5532: $a8
	ld b, b                                          ; $5533: $40
	add b                                            ; $5534: $80
	ld bc, $150a                                     ; $5535: $01 $0a $15

jr_045_5538:
	dec b                                            ; $5538: $05
	dec bc                                           ; $5539: $0b
	ld d, a                                          ; $553a: $57
	cp a                                             ; $553b: $bf
	ld a, a                                          ; $553c: $7f
	ld h, [hl]                                       ; $553d: $66
	db $db                                           ; $553e: $db
	sbc h                                            ; $553f: $9c
	rrca                                             ; $5540: $0f
	rst SubAFromBC                                          ; $5541: $e7
	ld l, $fb                                        ; $5542: $2e $fb
	sbc l                                            ; $5544: $9d
	jr jr_045_5538                                   ; $5545: $18 $f1

	db $fd                                           ; $5547: $fd
	sbc [hl]                                         ; $5548: $9e
	ld e, $6b                                        ; $5549: $1e $6b
	add sp, -$62                                     ; $554b: $e8 $9e
	ld bc, $9afb                                     ; $554d: $01 $fb $9a
	inc b                                            ; $5550: $04
	dec c                                            ; $5551: $0d
	push hl                                          ; $5552: $e5
	ld a, [$76fa]                                    ; $5553: $fa $fa $76
	push bc                                          ; $5556: $c5
	sbc l                                            ; $5557: $9d
	cp $1e                                           ; $5558: $fe $1e
	db $dd                                           ; $555a: $dd
	rlca                                             ; $555b: $07
	sbc [hl]                                         ; $555c: $9e
	dec c                                            ; $555d: $0d
	ld a, e                                          ; $555e: $7b
	ret                                              ; $555f: $c9


	ld a, l                                          ; $5560: $7d
	ld a, [hl-]                                      ; $5561: $3a
	rst SubAFromDE                                          ; $5562: $df
	rlca                                             ; $5563: $07
	sub h                                            ; $5564: $94
	ld [bc], a                                       ; $5565: $02
	add b                                            ; $5566: $80
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	and b                                            ; $5569: $a0
	ld d, b                                          ; $556a: $50
	ld [bc], a                                       ; $556b: $02
	inc sp                                           ; $556c: $33
	di                                               ; $556d: $f3
	ei                                               ; $556e: $fb
	pop af                                           ; $556f: $f1
	sbc $fe                                          ; $5570: $de $fe
	sbc d                                            ; $5572: $9a
	ld sp, $2121                                     ; $5573: $31 $21 $21
	ld bc, $de09                                     ; $5576: $01 $09 $de
	ld bc, $a2dd                                     ; $5579: $01 $dd $a2
	sbc e                                            ; $557c: $9b
	add d                                            ; $557d: $82
	ld b, $07                                        ; $557e: $06 $07
	rlca                                             ; $5580: $07
	call c, $de36                                    ; $5581: $dc $36 $de
	or d                                             ; $5584: $b2
	call c, $de0a                                    ; $5585: $dc $0a $de
	ld c, d                                          ; $5588: $4a
	ld e, d                                          ; $5589: $5a
	ret nz                                           ; $558a: $c0

	rst SubAFromDE                                          ; $558b: $df
	adc h                                            ; $558c: $8c
	sbc h                                            ; $558d: $9c
	call z, $c4c4                                    ; $558e: $cc $c4 $c4
	db $db                                           ; $5591: $db
	ld h, [hl]                                       ; $5592: $66
	rst SubAFromDE                                          ; $5593: $df
	ld l, [hl]                                       ; $5594: $6e
	jp c, $9e46                                      ; $5595: $da $46 $9e

	ld b, h                                          ; $5598: $44
	ld h, $c0                                        ; $5599: $26 $c0

Jump_045_559b:
	sbc [hl]                                         ; $559b: $9e
	ld [de], a                                       ; $559c: $12
	jp c, $9e1a                                      ; $559d: $da $1a $9e

	cp c                                             ; $55a0: $b9
	jp c, $9eb1                                      ; $55a1: $da $b1 $9e

	db $10                                           ; $55a4: $10
	jp c, Jump_045_6214                              ; $55a5: $da $14 $62

	ret nz                                           ; $55a8: $c0

	ld l, a                                          ; $55a9: $6f
	ld a, [bc]                                       ; $55aa: $0a
	sbc l                                            ; $55ab: $9d
	ld b, b                                          ; $55ac: $40
	ld [hl+], a                                      ; $55ad: $22
	jp c, Jump_045_7326                              ; $55ae: $da $26 $73

	di                                               ; $55b1: $f3
	sbc $40                                          ; $55b2: $de $40
	ld h, d                                          ; $55b4: $62
	ret nz                                           ; $55b5: $c0

	ld a, l                                          ; $55b6: $7d
	ld c, a                                          ; $55b7: $4f
	call c, $9e98                                    ; $55b8: $dc $98 $9e
	ret                                              ; $55bb: $c9


	jp c, $9c49                                      ; $55bc: $da $49 $9c

	or e                                             ; $55bf: $b3
	or c                                             ; $55c0: $b1
	or c                                             ; $55c1: $b1
	db $db                                           ; $55c2: $db
	sub c                                            ; $55c3: $91
	ld l, [hl]                                       ; $55c4: $6e
	cp c                                             ; $55c5: $b9
	sbc [hl]                                         ; $55c6: $9e
	or e                                             ; $55c7: $b3
	ld b, [hl]                                       ; $55c8: $46
	ret nz                                           ; $55c9: $c0

	sub l                                            ; $55ca: $95
	ld a, [hl+]                                      ; $55cb: $2a
	ld d, h                                          ; $55cc: $54
	ld h, b                                          ; $55cd: $60
	ld [hl], b                                       ; $55ce: $70
	ld [hl], d                                       ; $55cf: $72
	ld h, l                                          ; $55d0: $65
	ld l, d                                          ; $55d1: $6a
	ld a, a                                          ; $55d2: $7f
	push af                                          ; $55d3: $f5
	ei                                               ; $55d4: $fb
	db $dd                                           ; $55d5: $dd
	rst $38                                          ; $55d6: $ff
	sub l                                            ; $55d7: $95
	push af                                          ; $55d8: $f5
	rst $38                                          ; $55d9: $ff
	add b                                            ; $55da: $80
	dec b                                            ; $55db: $05
	ld a, [hl+]                                      ; $55dc: $2a
	ld d, a                                          ; $55dd: $57
	xor a                                            ; $55de: $af
	rst $38                                          ; $55df: $ff
	add b                                            ; $55e0: $80
	adc e                                            ; $55e1: $8b
	halt                                             ; $55e2: $76
	call nc, $ffdf                                   ; $55e3: $d4 $df $ff
	sbc e                                            ; $55e6: $9b
	ld a, a                                          ; $55e7: $7f
	db $f4                                           ; $55e8: $f4
	xor a                                            ; $55e9: $af
	ld e, a                                          ; $55ea: $5f
	db $dd                                           ; $55eb: $dd
	rst $38                                          ; $55ec: $ff
	sbc l                                            ; $55ed: $9d
	rra                                              ; $55ee: $1f
	xor a                                            ; $55ef: $af
	jp c, $8dff                                      ; $55f0: $da $ff $8d

	nop                                              ; $55f3: $00
	xor c                                            ; $55f4: $a9
	jp c, $f4d9                                      ; $55f5: $da $d9 $f4

	xor b                                            ; $55f8: $a8
	ld c, h                                          ; $55f9: $4c
	xor b                                            ; $55fa: $a8
	ld [$3576], sp                                   ; $55fb: $08 $76 $35
	ld [hl], $1b                                     ; $55fe: $36 $1b
	ld e, a                                          ; $5600: $5f
	cp e                                             ; $5601: $bb
	ld e, a                                          ; $5602: $5f
	rst $38                                          ; $5603: $ff
	ld a, a                                          ; $5604: $7f
	ld a, b                                          ; $5605: $78
	inc h                                            ; $5606: $24
	adc h                                            ; $5607: $8c
	ld d, l                                          ; $5608: $55
	ld a, [hl+]                                      ; $5609: $2a
	dec d                                            ; $560a: $15
	nop                                              ; $560b: $00
	add b                                            ; $560c: $80
	ld b, b                                          ; $560d: $40
	and b                                            ; $560e: $a0
	ld d, h                                          ; $560f: $54
	xor d                                            ; $5610: $aa
	push de                                          ; $5611: $d5
	ld [$feff], a                                    ; $5612: $ea $ff $fe
	db $fd                                           ; $5615: $fd
	db $fd                                           ; $5616: $fd
	rst $38                                          ; $5617: $ff
	ld d, [hl]                                       ; $5618: $56
	xor d                                            ; $5619: $aa
	ld d, h                                          ; $561a: $54
	ld [hl], l                                       ; $561b: $75
	adc b                                            ; $561c: $88
	sub [hl]                                         ; $561d: $96
	ld bc, $55a9                                     ; $561e: $01 $a9 $55
	xor e                                            ; $5621: $ab
	rst $38                                          ; $5622: $ff
	ld d, l                                          ; $5623: $55
	xor d                                            ; $5624: $aa
	dec b                                            ; $5625: $05
	ld [bc], a                                       ; $5626: $02
	sbc $80                                          ; $5627: $de $80
	sbc d                                            ; $5629: $9a
	sbc a                                            ; $562a: $9f
	xor d                                            ; $562b: $aa
	ld d, l                                          ; $562c: $55
	ld a, [$73fd]                                    ; $562d: $fa $fd $73
	sbc [hl]                                         ; $5630: $9e
	ld a, a                                          ; $5631: $7f
	rst FarCall                                          ; $5632: $f7
	sub [hl]                                         ; $5633: $96
	and d                                            ; $5634: $a2
	nop                                              ; $5635: $00
	ld bc, $807e                                     ; $5636: $01 $7e $80
	dec bc                                           ; $5639: $0b
	ld d, l                                          ; $563a: $55
	xor d                                            ; $563b: $aa
	ld e, l                                          ; $563c: $5d
	db $dd                                           ; $563d: $dd
	rst $38                                          ; $563e: $ff
	adc h                                            ; $563f: $8c
	pop af                                           ; $5640: $f1
	ld a, a                                          ; $5641: $7f
	inc [hl]                                         ; $5642: $34
	ld [hl-], a                                      ; $5643: $32
	or d                                             ; $5644: $b2
	ld [hl+], a                                      ; $5645: $22
	ldh a, [c]                                       ; $5646: $f2
	inc b                                            ; $5647: $04
	cp $ff                                           ; $5648: $fe $ff
	inc bc                                           ; $564a: $03
	nop                                              ; $564b: $00
	nop                                              ; $564c: $00
	stop                                             ; $564d: $10 $00
	ld a, [$ec4c]                                    ; $564f: $fa $4c $ec
	db $ec                                           ; $5652: $ec
	db $dd                                           ; $5653: $dd
	ld c, h                                          ; $5654: $4c
	sbc h                                            ; $5655: $9c
	inc c                                            ; $5656: $0c
	ld [hl+], a                                      ; $5657: $22
	ldh [c], a                                       ; $5658: $e2
	db $db                                           ; $5659: $db
	ld b, d                                          ; $565a: $42
	db $dd                                           ; $565b: $dd
	ret nz                                           ; $565c: $c0

	rst SubAFromDE                                          ; $565d: $df
	call nz, $d07e                                   ; $565e: $c4 $7e $d0
	db $db                                           ; $5661: $db
	ld l, [hl]                                       ; $5662: $6e
	sbc l                                            ; $5663: $9d
	db $ec                                           ; $5664: $ec
	xor $de                                          ; $5665: $ee $de
	ld b, h                                          ; $5667: $44
	sbc $40                                          ; $5668: $de $40
	sbc [hl]                                         ; $566a: $9e
	ld h, b                                          ; $566b: $60
	ld e, [hl]                                       ; $566c: $5e
	ret nz                                           ; $566d: $c0

	rst SubAFromDE                                          ; $566e: $df
	ld [$099a], sp                                   ; $566f: $08 $9a $09
	ld c, c                                          ; $5672: $49
	ld c, l                                          ; $5673: $4d
	ld c, c                                          ; $5674: $49
	ld c, c                                          ; $5675: $49
	db $db                                           ; $5676: $db
	reti                                             ; $5677: $d9


	rst SubAFromDE                                          ; $5678: $df
	db $dd                                           ; $5679: $dd
	call c, $df1a                                    ; $567a: $dc $1a $df
	sub d                                            ; $567d: $92
	ld a, e                                          ; $567e: $7b
	add hl, bc                                       ; $567f: $09
	sbc $b1                                          ; $5680: $de $b1
	rst SubAFromDE                                          ; $5682: $df
	cp c                                             ; $5683: $b9
	sbc l                                            ; $5684: $9d
	sbc c                                            ; $5685: $99
	inc d                                            ; $5686: $14
	sbc $04                                          ; $5687: $de $04
	sbc $06                                          ; $5689: $de $06
	sbc l                                            ; $568b: $9d
	add [hl]                                         ; $568c: $86
	ld [hl+], a                                      ; $568d: $22
	jp c, $dc32                                      ; $568e: $da $32 $dc

	ld b, b                                          ; $5691: $40
	rst SubAFromDE                                          ; $5692: $df
	ld h, b                                          ; $5693: $60
	ld h, [hl]                                       ; $5694: $66
	pop bc                                           ; $5695: $c1
	sbc [hl]                                         ; $5696: $9e
	ld h, $73                                        ; $5697: $26 $73
	ldh a, [c]                                       ; $5699: $f2
	rst SubAFromDE                                          ; $569a: $df
	ld h, b                                          ; $569b: $60
	ld h, [hl]                                       ; $569c: $66
	ret nz                                           ; $569d: $c0

	sbc [hl]                                         ; $569e: $9e
	ld l, h                                          ; $569f: $6c
	call c, $9d98                                    ; $56a0: $dc $98 $9d
	ret c                                            ; $56a3: $d8

	reti                                             ; $56a4: $d9


	ld h, [hl]                                       ; $56a5: $66
	pop bc                                           ; $56a6: $c1
	sbc [hl]                                         ; $56a7: $9e
	ld c, c                                          ; $56a8: $49
	jp c, $d891                                      ; $56a9: $da $91 $d8

	or e                                             ; $56ac: $b3
	sub c                                            ; $56ad: $91
	ret nz                                           ; $56ae: $c0

	pop bc                                           ; $56af: $c1
	ld b, b                                          ; $56b0: $40
	ret nz                                           ; $56b1: $c0

	ret nz                                           ; $56b2: $c0

	daa                                              ; $56b3: $27
	ld [$01d5], a                                    ; $56b4: $ea $d5 $01
	ld bc, $0181                                     ; $56b7: $01 $81 $01
	ld bc, $ded9                                     ; $56ba: $01 $d9 $de
	rst $38                                          ; $56bd: $ff
	sbc c                                            ; $56be: $99
	adc e                                            ; $56bf: $8b
	ldh a, [$e3]                                     ; $56c0: $f0 $e3
	add $6f                                          ; $56c2: $c6 $6f
	db $d3                                           ; $56c4: $d3
	ld a, b                                          ; $56c5: $78
	add b                                            ; $56c6: $80
	sbc e                                            ; $56c7: $9b
	adc a                                            ; $56c8: $8f
	sbc a                                            ; $56c9: $9f
	cp a                                             ; $56ca: $bf
	sbc a                                            ; $56cb: $9f
	halt                                             ; $56cc: $76
	reti                                             ; $56cd: $d9


	ld a, l                                          ; $56ce: $7d
	db $ed                                           ; $56cf: $ed
	sbc e                                            ; $56d0: $9b
	ld hl, sp+$50                                    ; $56d1: $f8 $50
	db $fc                                           ; $56d3: $fc
	ld a, [hl+]                                      ; $56d4: $2a
	reti                                             ; $56d5: $d9


	rst $38                                          ; $56d6: $ff
	sub a                                            ; $56d7: $97
	call nc, rIE                                   ; $56d8: $d4 $ff $ff
	and h                                            ; $56db: $a4
	ld e, [hl]                                       ; $56dc: $5e
	pop hl                                           ; $56dd: $e1
	ld b, d                                          ; $56de: $42
	ld b, a                                          ; $56df: $47
	sbc $ff                                          ; $56e0: $de $ff
	sub d                                            ; $56e2: $92
	rst SubAFromDE                                          ; $56e3: $df
	cp a                                             ; $56e4: $bf
	rra                                              ; $56e5: $1f
	cp a                                             ; $56e6: $bf
	cp a                                             ; $56e7: $bf
	inc b                                            ; $56e8: $04
	inc b                                            ; $56e9: $04
	call nz, $10f3                                   ; $56ea: $c4 $f3 $10
	ld b, b                                          ; $56ed: $40
	ld d, b                                          ; $56ee: $50
	ld b, b                                          ; $56ef: $40
	db $dd                                           ; $56f0: $dd
	rst $38                                          ; $56f1: $ff
	db $dd                                           ; $56f2: $dd
	rst AddAOntoHL                                          ; $56f3: $ef
	ld a, [hl]                                       ; $56f4: $7e
	rst SubAFromHL                                          ; $56f5: $d7
	sbc d                                            ; $56f6: $9a
	ld a, h                                          ; $56f7: $7c
	add b                                            ; $56f8: $80
	ld [hl], b                                       ; $56f9: $70
	ld c, $01                                        ; $56fa: $0e $01
	ld [hl], h                                       ; $56fc: $74
	ld b, b                                          ; $56fd: $40
	call c, $9dff                                    ; $56fe: $dc $ff $9d
	rlca                                             ; $5701: $07
	ld hl, sp-$03                                    ; $5702: $f8 $fd
	sbc [hl]                                         ; $5704: $9e
	jp $816e                                         ; $5705: $c3 $6e $81


	sbc $ff                                          ; $5708: $de $ff
	sbc l                                            ; $570a: $9d
	ldh [rAUD3LEVEL], a                              ; $570b: $e0 $1c
	ld a, d                                          ; $570d: $7a
	add sp, -$64                                     ; $570e: $e8 $9c
	rrca                                             ; $5710: $0f
	rst $38                                          ; $5711: $ff
	db $e3                                           ; $5712: $e3
	reti                                             ; $5713: $d9


	rst $38                                          ; $5714: $ff
	rst $38                                          ; $5715: $ff
	sbc d                                            ; $5716: $9a
	ret nz                                           ; $5717: $c0

	jr nc, jr_045_5799                               ; $5718: $30 $7f

	rst $38                                          ; $571a: $ff
	adc h                                            ; $571b: $8c
	ret c                                            ; $571c: $d8

	rst $38                                          ; $571d: $ff
	ld a, c                                          ; $571e: $79
	ld e, c                                          ; $571f: $59
	ld a, [hl]                                       ; $5720: $7e
	adc h                                            ; $5721: $8c
	sbc h                                            ; $5722: $9c
	ld [$e100], sp                                   ; $5723: $08 $00 $e1
	call c, $99ff                                    ; $5726: $dc $ff $99
	ldh a, [$80]                                     ; $5729: $f0 $80
	cp $8a                                           ; $572b: $fe $8a
	ld bc, $7989                                     ; $572d: $01 $89 $79
	ld e, b                                          ; $5730: $58
	ld a, a                                          ; $5731: $7f
	db $db                                           ; $5732: $db
	sbc l                                            ; $5733: $9d
	ld b, h                                          ; $5734: $44
	call z, $c0de                                    ; $5735: $cc $de $c0
	rst SubAFromDE                                          ; $5738: $df
	ld b, b                                          ; $5739: $40
	sub h                                            ; $573a: $94
	nop                                              ; $573b: $00

jr_045_573c:
	xor d                                            ; $573c: $aa
	ld [hl+], a                                      ; $573d: $22
	rst $38                                          ; $573e: $ff
	nop                                              ; $573f: $00
	rlca                                             ; $5740: $07
	rlca                                             ; $5741: $07
	nop                                              ; $5742: $00
	rra                                              ; $5743: $1f
	ld b, h                                          ; $5744: $44
	db $dd                                           ; $5745: $dd
	ei                                               ; $5746: $fb
	sbc c                                            ; $5747: $99
	and c                                            ; $5748: $a1
	ld h, h                                          ; $5749: $64
	rst $38                                          ; $574a: $ff
	ld a, a                                          ; $574b: $7f
	rst $38                                          ; $574c: $ff
	db $ec                                           ; $574d: $ec
	ld a, b                                          ; $574e: $78
	sub b                                            ; $574f: $90
	sbc [hl]                                         ; $5750: $9e
	sbc e                                            ; $5751: $9b
	ei                                               ; $5752: $fb
	sub l                                            ; $5753: $95
	inc d                                            ; $5754: $14
	ld c, h                                          ; $5755: $4c
	rst $38                                          ; $5756: $ff
	sbc [hl]                                         ; $5757: $9e
	cp $07                                           ; $5758: $fe $07
	rst $38                                          ; $575a: $ff
	rst $38                                          ; $575b: $ff
	ret                                              ; $575c: $c9


	or e                                             ; $575d: $b3
	ld l, c                                          ; $575e: $69
	ldh a, [$9c]                                     ; $575f: $f0 $9c
	add hl, de                                       ; $5761: $19
	rst $38                                          ; $5762: $ff
	nop                                              ; $5763: $00
	db $dd                                           ; $5764: $dd
	ret nz                                           ; $5765: $c0

	sbc l                                            ; $5766: $9d
	sub c                                            ; $5767: $91
	and $fb                                          ; $5768: $e6 $fb
	sbc l                                            ; $576a: $9d
	ret nc                                           ; $576b: $d0

	sub e                                            ; $576c: $93
	ld [hl], e                                       ; $576d: $73
	ld l, a                                          ; $576e: $6f
	sbc h                                            ; $576f: $9c
	ldh [rAUDENA], a                                 ; $5770: $e0 $26
	ld l, h                                          ; $5772: $6c
	ei                                               ; $5773: $fb
	sbc e                                            ; $5774: $9b
	sub $66                                          ; $5775: $d6 $66
	rla                                              ; $5777: $17
	ld b, $de                                        ; $5778: $06 $de
	rrca                                             ; $577a: $0f
	sbc h                                            ; $577b: $9c
	ld a, b                                          ; $577c: $78
	inc l                                            ; $577d: $2c
	sbc c                                            ; $577e: $99
	db $fc                                           ; $577f: $fc
	ld a, l                                          ; $5780: $7d
	ld [$6c96], sp                                   ; $5781: $08 $96 $6c
	rst $38                                          ; $5784: $ff
	ld bc, $0e80                                     ; $5785: $01 $80 $0e
	jp $c978                                         ; $5788: $c3 $78 $c9


	sub e                                            ; $578b: $93
	ld [hl], h                                       ; $578c: $74
	cp a                                             ; $578d: $bf
	sub e                                            ; $578e: $93
	ccf                                              ; $578f: $3f
	rst $38                                          ; $5790: $ff
	inc h                                            ; $5791: $24
	ret                                              ; $5792: $c9


	rst $38                                          ; $5793: $ff
	ldh [$78], a                                     ; $5794: $e0 $78
	ld e, b                                          ; $5796: $58
	ret nc                                           ; $5797: $d0

	ld b, b                                          ; $5798: $40

jr_045_5799:
	db $db                                           ; $5799: $db
	ld [hl], $fe                                     ; $579a: $36 $fe
	sbc $80                                          ; $579c: $de $80
	sbc h                                            ; $579e: $9c
	ret c                                            ; $579f: $d8

	sub d                                            ; $57a0: $92
	ldh a, [$fc]                                     ; $57a1: $f0 $fc
	sbc l                                            ; $57a3: $9d
	daa                                              ; $57a4: $27
	ld l, l                                          ; $57a5: $6d
	ei                                               ; $57a6: $fb
	ld [hl], l                                       ; $57a7: $75
	add a                                            ; $57a8: $87
	sbc $01                                          ; $57a9: $de $01
	ld a, e                                          ; $57ab: $7b
	db $10                                           ; $57ac: $10
	db $db                                           ; $57ad: $db
	ld bc, $d787                                     ; $57ae: $01 $87 $d7
	ld a, [bc]                                       ; $57b1: $0a
	ret nz                                           ; $57b2: $c0

	ld h, d                                          ; $57b3: $62
	ld [hl], l                                       ; $57b4: $75
	jr jr_045_573c                                   ; $57b5: $18 $85

	ld e, a                                          ; $57b7: $5f
	cp a                                             ; $57b8: $bf
	rst $38                                          ; $57b9: $ff
	cp a                                             ; $57ba: $bf
	sbc l                                            ; $57bb: $9d
	adc d                                            ; $57bc: $8a
	add a                                            ; $57bd: $87
	ld a, [$d4ff]                                    ; $57be: $fa $ff $d4
	and b                                            ; $57c1: $a0
	rra                                              ; $57c2: $1f
	cpl                                              ; $57c3: $2f
	ld d, l                                          ; $57c4: $55
	rlca                                             ; $57c5: $07
	nop                                              ; $57c6: $00
	adc d                                            ; $57c7: $8a
	ld a, e                                          ; $57c8: $7b
	ld b, $88                                        ; $57c9: $06 $88
	ret nc                                           ; $57cb: $d0

	xor b                                            ; $57cc: $a8
	ld hl, sp-$01                                    ; $57cd: $f8 $ff
	push af                                          ; $57cf: $f5
	ld [hl], b                                       ; $57d0: $70
	add d                                            ; $57d1: $82
	ldh a, [$f0]                                     ; $57d2: $f0 $f0
	ld b, c                                          ; $57d4: $41
	ld h, d                                          ; $57d5: $62
	ret nz                                           ; $57d6: $c0

	add sp, -$71                                     ; $57d7: $e8 $8f
	ld a, a                                          ; $57d9: $7f
	rrca                                             ; $57da: $0f
	rrca                                             ; $57db: $0f
	ccf                                              ; $57dc: $3f
	rra                                              ; $57dd: $1f
	ccf                                              ; $57de: $3f
	rla                                              ; $57df: $17
	ld d, b                                          ; $57e0: $50
	ret nz                                           ; $57e1: $c0

	call c, $9edf                                    ; $57e2: $dc $df $9e
	rra                                              ; $57e5: $1f
	reti                                             ; $57e6: $d9


	rst AddAOntoHL                                          ; $57e7: $ef
	ld a, a                                          ; $57e8: $7f
	ld [bc], a                                       ; $57e9: $02
	ld a, a                                          ; $57ea: $7f
	db $db                                           ; $57eb: $db
	call nc, $9eff                                   ; $57ec: $d4 $ff $9e
	rst JumpTable                                          ; $57ef: $c7
	call c, $9eff                                    ; $57f0: $dc $ff $9e
	db $fc                                           ; $57f3: $fc
	reti                                             ; $57f4: $d9


	rst $38                                          ; $57f5: $ff
	sbc [hl]                                         ; $57f6: $9e
	rra                                              ; $57f7: $1f
	db $dd                                           ; $57f8: $dd
	rst $38                                          ; $57f9: $ff
	sbc h                                            ; $57fa: $9c
	cp $e8                                           ; $57fb: $fe $e8
	add b                                            ; $57fd: $80
	db $db                                           ; $57fe: $db
	rst $38                                          ; $57ff: $ff
	ld a, a                                          ; $5800: $7f
	ld [hl], h                                       ; $5801: $74
	ld [hl], a                                       ; $5802: $77
	ldh a, [c]                                       ; $5803: $f2
	sbc [hl]                                         ; $5804: $9e
	db $e4                                           ; $5805: $e4
	cp $dd                                           ; $5806: $fe $dd
	rst $38                                          ; $5808: $ff
	sbc [hl]                                         ; $5809: $9e
	ld hl, sp+$7a                                    ; $580a: $f8 $7a
	sub $7f                                          ; $580c: $d6 $7f
	ldh a, [c]                                       ; $580e: $f2
	sbc l                                            ; $580f: $9d
	db $f4                                           ; $5810: $f4
	ld b, b                                          ; $5811: $40
	db $fd                                           ; $5812: $fd
	ld l, a                                          ; $5813: $6f
	ldh a, [c]                                       ; $5814: $f2
	rst $38                                          ; $5815: $ff
	sbc [hl]                                         ; $5816: $9e
	and b                                            ; $5817: $a0
	ld [hl], e                                       ; $5818: $73
	ldh a, [c]                                       ; $5819: $f2
	ld a, e                                          ; $581a: $7b
	ld e, b                                          ; $581b: $58
	ld [hl], e                                       ; $581c: $73
	ldh a, [c]                                       ; $581d: $f2
	rst $38                                          ; $581e: $ff
	sub a                                            ; $581f: $97
	ld [$080a], sp                                   ; $5820: $08 $0a $08
	ld a, [bc]                                       ; $5823: $0a
	dec bc                                           ; $5824: $0b
	ld a, [bc]                                       ; $5825: $0a
	ld a, [bc]                                       ; $5826: $0a
	dec bc                                           ; $5827: $0b
	sbc $07                                          ; $5828: $de $07
	call c, $9704                                    ; $582a: $dc $04 $97
	ld a, h                                          ; $582d: $7c
	nop                                              ; $582e: $00
	ld a, [hl]                                       ; $582f: $7e
	ld hl, sp-$03                                    ; $5830: $f8 $fd
	db $fd                                           ; $5832: $fd
	ld a, $87                                        ; $5833: $3e $87
	ld a, e                                          ; $5835: $7b
	xor a                                            ; $5836: $af
	ld a, a                                          ; $5837: $7f
	ld e, d                                          ; $5838: $5a
	ld a, a                                          ; $5839: $7f
	ld [hl], $de                                     ; $583a: $36 $de
	ld a, a                                          ; $583c: $7f
	sbc b                                            ; $583d: $98
	nop                                              ; $583e: $00
	db $fc                                           ; $583f: $fc
	db $e3                                           ; $5840: $e3
	di                                               ; $5841: $f3
	inc a                                            ; $5842: $3c
	add b                                            ; $5843: $80
	nop                                              ; $5844: $00
	ld a, e                                          ; $5845: $7b
	rst AddAOntoHL                                          ; $5846: $ef
	sub e                                            ; $5847: $93
	rra                                              ; $5848: $1f
	rrca                                             ; $5849: $0f
	rst $38                                          ; $584a: $ff
	rst $38                                          ; $584b: $ff
	ret nz                                           ; $584c: $c0

	pop bc                                           ; $584d: $c1
	ldh a, [rSB]                                     ; $584e: $f0 $01
	rst $38                                          ; $5850: $ff
	cp $57                                           ; $5851: $fe $57
	ld e, d                                          ; $5853: $5a
	halt                                             ; $5854: $76
	ld c, e                                          ; $5855: $4b
	halt                                             ; $5856: $76
	rra                                              ; $5857: $1f
	sub l                                            ; $5858: $95
	cpl                                              ; $5859: $2f
	ret nz                                           ; $585a: $c0

	rra                                              ; $585b: $1f
	ld hl, sp-$20                                    ; $585c: $f8 $e0
	ld l, b                                          ; $585e: $68
	ldh a, [$c0]                                     ; $585f: $f0 $c0
	nop                                              ; $5861: $00
	ccf                                              ; $5862: $3f
	db $db                                           ; $5863: $db
	rst $38                                          ; $5864: $ff
	ld a, [hl]                                       ; $5865: $7e
	push de                                          ; $5866: $d5
	sub a                                            ; $5867: $97
	ld [hl], b                                       ; $5868: $70
	nop                                              ; $5869: $00
	rrca                                             ; $586a: $0f
	nop                                              ; $586b: $00
	ld b, $31                                        ; $586c: $06 $31
	rst $38                                          ; $586e: $ff
	db $fc                                           ; $586f: $fc
	ld [hl], e                                       ; $5870: $73
	ld l, l                                          ; $5871: $6d
	adc a                                            ; $5872: $8f
	cp $18                                           ; $5873: $fe $18
	sbc h                                            ; $5875: $9c
	ld [$201c], sp                                   ; $5876: $08 $1c $20
	ld bc, $c01c                                     ; $5879: $01 $1c $c0
	pop hl                                           ; $587c: $e1
	ld bc, $e101                                     ; $587d: $01 $01 $e1
	rst $38                                          ; $5880: $ff
	cp $e0                                           ; $5881: $fe $e0
	ei                                               ; $5883: $fb
	ld a, e                                          ; $5884: $7b
	add h                                            ; $5885: $84
	call c, $e080                                    ; $5886: $dc $80 $e0
	sbc $9e                                          ; $5889: $de $9e
	inc c                                            ; $588b: $0c
	ld a, [$da79]                                    ; $588c: $fa $79 $da
	db $fc                                           ; $588f: $fc
	sbc l                                            ; $5890: $9d
	ld a, [hl]                                       ; $5891: $7e
	add hl, de                                       ; $5892: $19
	ei                                               ; $5893: $fb
	ld [hl], a                                       ; $5894: $77
	ld h, d                                          ; $5895: $62
	db $fd                                           ; $5896: $fd
	sbc h                                            ; $5897: $9c
	dec d                                            ; $5898: $15
	cp $71                                           ; $5899: $fe $71
	db $fc                                           ; $589b: $fc
	ld a, h                                          ; $589c: $7c
	ld h, [hl]                                       ; $589d: $66
	ld a, a                                          ; $589e: $7f
	adc d                                            ; $589f: $8a
	db $fd                                           ; $58a0: $fd
	sbc e                                            ; $58a1: $9b
	ldh a, [rIE]                                     ; $58a2: $f0 $ff
	ccf                                              ; $58a4: $3f
	ldh [$dd], a                                     ; $58a5: $e0 $dd
	rst $38                                          ; $58a7: $ff
	ld a, a                                          ; $58a8: $7f
	ldh a, [c]                                       ; $58a9: $f2
	sbc [hl]                                         ; $58aa: $9e
	ret nz                                           ; $58ab: $c0

	call c, $9bff                                    ; $58ac: $dc $ff $9b
	ld a, a                                          ; $58af: $7f
	call nz, $11ff                                   ; $58b0: $c4 $ff $11
	ld [hl], d                                       ; $58b3: $72
	db $d3                                           ; $58b4: $d3
	sbc h                                            ; $58b5: $9c
	ccf                                              ; $58b6: $3f
	nop                                              ; $58b7: $00
	cp $dd                                           ; $58b8: $fe $dd
	rst $38                                          ; $58ba: $ff
	sbc h                                            ; $58bb: $9c
	call z, $fee0                                    ; $58bc: $cc $e0 $fe
	ld a, e                                          ; $58bf: $7b
	sbc $7f                                          ; $58c0: $de $7f
	db $fc                                           ; $58c2: $fc
	halt                                             ; $58c3: $76
	ld c, d                                          ; $58c4: $4a
	ld [hl], a                                       ; $58c5: $77
	sbc $6e                                          ; $58c6: $de $6e
	push de                                          ; $58c8: $d5
	sbc l                                            ; $58c9: $9d
	ld bc, $fbfc                                     ; $58ca: $01 $fc $fb
	ld a, a                                          ; $58cd: $7f
	add sp, -$03                                     ; $58ce: $e8 $fd
	ld a, a                                          ; $58d0: $7f
	ret nc                                           ; $58d1: $d0

	sbc [hl]                                         ; $58d2: $9e
	ld sp, hl                                        ; $58d3: $f9
	ld l, e                                          ; $58d4: $6b
	sub c                                            ; $58d5: $91
	ld a, l                                          ; $58d6: $7d
	rst JumpTable                                          ; $58d7: $c7
	ld l, a                                          ; $58d8: $6f
	sub e                                            ; $58d9: $93
	ld a, [hl]                                       ; $58da: $7e
	ld h, e                                          ; $58db: $63
	ld l, e                                          ; $58dc: $6b
	ld b, a                                          ; $58dd: $47
	ld l, [hl]                                       ; $58de: $6e
	inc de                                           ; $58df: $13
	ld a, e                                          ; $58e0: $7b
	dec h                                            ; $58e1: $25
	ld sp, hl                                        ; $58e2: $f9
	rst SubAFromDE                                          ; $58e3: $df
	rrca                                             ; $58e4: $0f
	ld a, [hl]                                       ; $58e5: $7e
	inc d                                            ; $58e6: $14
	rst $38                                          ; $58e7: $ff
	ld a, [hl]                                       ; $58e8: $7e
	ld e, h                                          ; $58e9: $5c
	ld a, c                                          ; $58ea: $79
	ld a, h                                          ; $58eb: $7c
	db $fc                                           ; $58ec: $fc
	ld a, a                                          ; $58ed: $7f
	ld e, $9e                                        ; $58ee: $1e $9e
	ldh [rPCM34], a                                  ; $58f0: $e0 $77
	call nz, Call_045_797f                           ; $58f2: $c4 $7f $79
	ld a, [hl]                                       ; $58f5: $7e
	jp nc, $9df9                                     ; $58f6: $d2 $f9 $9d

	ldh a, [rIF]                                     ; $58f9: $f0 $0f
	ld a, e                                          ; $58fb: $7b
	db $e4                                           ; $58fc: $e4
	ld [hl], e                                       ; $58fd: $73
	ld l, l                                          ; $58fe: $6d
	cp $df                                           ; $58ff: $fe $df
	ld e, b                                          ; $5901: $58
	sbc h                                            ; $5902: $9c
	ld e, a                                          ; $5903: $5f
	ld e, c                                          ; $5904: $59
	adc [hl]                                         ; $5905: $8e
	ld a, c                                          ; $5906: $79
	db $db                                           ; $5907: $db

Call_045_5908:
	sbc $ef                                          ; $5908: $de $ef
	sbc l                                            ; $590a: $9d
	xor $70                                          ; $590b: $ee $70
	ld [hl], a                                       ; $590d: $77
	sbc [hl]                                         ; $590e: $9e
	sbc l                                            ; $590f: $9d
	jr nc, jr_045_592a                               ; $5910: $30 $18

	ld [hl], l                                       ; $5912: $75
	call $e07b                                       ; $5913: $cd $7b $e0
	ld l, [hl]                                       ; $5916: $6e
	db $e4                                           ; $5917: $e4
	sbc [hl]                                         ; $5918: $9e
	sbc b                                            ; $5919: $98
	ld [hl], e                                       ; $591a: $73
	ldh a, [c]                                       ; $591b: $f2
	ld [hl], a                                       ; $591c: $77
	cp b                                             ; $591d: $b8
	ldh [$8b], a                                     ; $591e: $e0 $8b
	add hl, hl                                       ; $5920: $29
	nop                                              ; $5921: $00
	push de                                          ; $5922: $d5
	ld [hl], a                                       ; $5923: $77
	db $db                                           ; $5924: $db
	inc sp                                           ; $5925: $33
	rrca                                             ; $5926: $0f
	or $df                                           ; $5927: $f6 $df
	ld b, h                                          ; $5929: $44

jr_045_592a:
	ld e, a                                          ; $592a: $5f
	or $df                                           ; $592b: $f6 $df
	ld h, [hl]                                       ; $592d: $66
	sbc [hl]                                         ; $592e: $9e
	ld h, e                                          ; $592f: $63
	ld h, e                                          ; $5930: $63
	or $9d                                           ; $5931: $f6 $9d
	ld h, [hl]                                       ; $5933: $66
	ld [hl], e                                       ; $5934: $73
	ld h, e                                          ; $5935: $63
	or $9e                                           ; $5936: $f6 $9e
	ld b, l                                          ; $5938: $45
	db $dd                                           ; $5939: $dd
	ld d, l                                          ; $593a: $55
	sbc [hl]                                         ; $593b: $9e
	ld d, h                                          ; $593c: $54
	ld [hl], a                                       ; $593d: $77
	or $9e                                           ; $593e: $f6 $9e
	ld h, l                                          ; $5940: $65
	db $dd                                           ; $5941: $dd
	ld d, l                                          ; $5942: $55
	ld [hl], e                                       ; $5943: $73
	db $ec                                           ; $5944: $ec
	sbc [hl]                                         ; $5945: $9e
	ld h, [hl]                                       ; $5946: $66
	db $db                                           ; $5947: $db
	ld d, l                                          ; $5948: $55
	ld b, [hl]                                       ; $5949: $46
	adc h                                            ; $594a: $8c
	sub a                                            ; $594b: $97
	inc hl                                           ; $594c: $23
	scf                                              ; $594d: $37
	ld [hl], a                                       ; $594e: $77
	rrca                                             ; $594f: $0f
	rrca                                             ; $5950: $0f
	ld e, a                                          ; $5951: $5f
	ld e, b                                          ; $5952: $58
	cp e                                             ; $5953: $bb
	call c, $dfff                                    ; $5954: $dc $ff $df
	cp a                                             ; $5957: $bf
	add e                                            ; $5958: $83
	ld a, h                                          ; $5959: $7c
	db $fd                                           ; $595a: $fd
	rst $38                                          ; $595b: $ff
	ret c                                            ; $595c: $d8

	rst FarCall                                          ; $595d: $f7
	db $eb                                           ; $595e: $eb
	adc b                                            ; $595f: $88
	ld [hl], b                                       ; $5960: $70
	ldh [$fe], a                                     ; $5961: $e0 $fe
	db $fc                                           ; $5963: $fc
	rst $38                                          ; $5964: $ff
	ei                                               ; $5965: $fb
	rst FarCall                                          ; $5966: $f7
	rst FarCall                                          ; $5967: $f7
	adc a                                            ; $5968: $8f
	rra                                              ; $5969: $1f
	ld a, h                                          ; $596a: $7c
	nop                                              ; $596b: $00
	ld b, $71                                        ; $596c: $06 $71
	rst $38                                          ; $596e: $ff
	ld bc, $1860                                     ; $596f: $01 $60 $18
	db $e3                                           ; $5972: $e3
	rst $38                                          ; $5973: $ff
	ld sp, hl                                        ; $5974: $f9
	db $dd                                           ; $5975: $dd
	rst $38                                          ; $5976: $ff
	add b                                            ; $5977: $80
	rst SubAFromBC                                          ; $5978: $e7
	ld a, $3b                                        ; $5979: $3e $3b
	ld h, a                                          ; $597b: $67
	sbc [hl]                                         ; $597c: $9e

Call_045_597d:
	ld sp, hl                                        ; $597d: $f9
	add c                                            ; $597e: $81
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	pop bc                                           ; $5981: $c1
	rst JumpTable                                          ; $5982: $c7
	sbc a                                            ; $5983: $9f
	rst $38                                          ; $5984: $ff
	cp $fe                                           ; $5985: $fe $fe
	rst $38                                          ; $5987: $ff
	cp $84                                           ; $5988: $fe $84
	add e                                            ; $598a: $83
	ld bc, $d8d8                                     ; $598b: $01 $d8 $d8
	ldh [c], a                                       ; $598e: $e2
	rst AddAOntoHL                                          ; $598f: $ef
	inc a                                            ; $5990: $3c
	ld hl, sp-$04                                    ; $5991: $f8 $fc
	cp $27                                           ; $5993: $fe $27
	daa                                              ; $5995: $27
	dec c                                            ; $5996: $0d
	rst $38                                          ; $5997: $ff
	add b                                            ; $5998: $80
	add a                                            ; $5999: $87
	ld [hl], c                                       ; $599a: $71
	ld h, c                                          ; $599b: $61
	ld b, d                                          ; $599c: $42
	ld c, $99                                        ; $599d: $0e $99
	rlca                                             ; $599f: $07
	sbc a                                            ; $59a0: $9f
	ld a, b                                          ; $59a1: $78
	adc [hl]                                         ; $59a2: $8e
	sbc [hl]                                         ; $59a3: $9e
	cp l                                             ; $59a4: $bd
	pop af                                           ; $59a5: $f1
	and $e0                                          ; $59a6: $e6 $e0
	ld h, b                                          ; $59a8: $60
	ld [$1e01], sp                                   ; $59a9: $08 $01 $1e
	ld a, $69                                        ; $59ac: $3e $69
	add hl, bc                                       ; $59ae: $09
	ld c, $ad                                        ; $59af: $0e $ad
	rst FarCall                                          ; $59b1: $f7
	ld e, $c1                                        ; $59b2: $1e $c1
	pop bc                                           ; $59b4: $c1
	rst FarCall                                          ; $59b5: $f7
	rst FarCall                                          ; $59b6: $f7
	rst $38                                          ; $59b7: $ff
	add b                                            ; $59b8: $80
	ld [hl], d                                       ; $59b9: $72
	nop                                              ; $59ba: $00
	ret nz                                           ; $59bb: $c0

	add hl, sp                                       ; $59bc: $39
	adc e                                            ; $59bd: $8b
	inc a                                            ; $59be: $3c
	cp $d8                                           ; $59bf: $fe $d8
	db $e3                                           ; $59c1: $e3
	rst $38                                          ; $59c2: $ff
	ccf                                              ; $59c3: $3f
	add b                                            ; $59c4: $80
	pop af                                           ; $59c5: $f1
	rst $38                                          ; $59c6: $ff
	pop hl                                           ; $59c7: $e1
	adc a                                            ; $59c8: $8f
	inc e                                            ; $59c9: $1c
	ld h, b                                          ; $59ca: $60
	db $fc                                           ; $59cb: $fc
	nop                                              ; $59cc: $00
	ld [hl+], a                                      ; $59cd: $22
	db $10                                           ; $59ce: $10
	ld a, [de]                                       ; $59cf: $1a
	ld d, $65                                        ; $59d0: $16 $65
	sbc a                                            ; $59d2: $9f
	nop                                              ; $59d3: $00
	rst $38                                          ; $59d4: $ff
	rst SubAFromDE                                          ; $59d5: $df
	rst AddAOntoHL                                          ; $59d6: $ef
	db $e4                                           ; $59d7: $e4
	add b                                            ; $59d8: $80
	ldh [hDisp0_LCDC], a                                     ; $59d9: $e0 $82
	ret c                                            ; $59db: $d8

	ret                                              ; $59dc: $c9


	ld hl, sp-$46                                    ; $59dd: $f8 $ba
	ret z                                            ; $59df: $c8

	db $ec                                           ; $59e0: $ec
	ld a, [$fc70]                                    ; $59e1: $fa $70 $fc
	jr nc, jr_045_59ed                               ; $59e4: $30 $07

	ld a, h                                          ; $59e6: $7c
	jr nc, jr_045_59f9                               ; $59e7: $30 $10

	inc b                                            ; $59e9: $04
	rrca                                             ; $59ea: $0f
	inc h                                            ; $59eb: $24
	adc l                                            ; $59ec: $8d

jr_045_59ed:
	rst $38                                          ; $59ed: $ff
	ld a, $27                                        ; $59ee: $3e $27
	add hl, bc                                       ; $59f0: $09
	ld [$1bcd], sp                                   ; $59f1: $08 $cd $1b
	ldh a, [rP1]                                     ; $59f4: $f0 $00
	ld bc, $8000                                     ; $59f6: $01 $00 $80

jr_045_59f9:
	ld b, $07                                        ; $59f9: $06 $07
	ld [hl-], a                                      ; $59fb: $32
	ldh a, [hDisp1_OBP1]                                     ; $59fc: $f0 $94
	or [hl]                                          ; $59fe: $b6
	rra                                              ; $59ff: $1f
	adc d                                            ; $5a00: $8a
	cp d                                             ; $5a01: $ba
	ld bc, $e0b1                                     ; $5a02: $01 $b1 $e0
	ld a, b                                          ; $5a05: $78
	ld c, a                                          ; $5a06: $4f
	ldh [$71], a                                     ; $5a07: $e0 $71
	ld b, c                                          ; $5a09: $41
	ret nz                                           ; $5a0a: $c0

	ld b, b                                          ; $5a0b: $40
	ld [$30e0], sp                                   ; $5a0c: $08 $e0 $30
	nop                                              ; $5a0f: $00
	ld [$6223], sp                                   ; $5a10: $08 $23 $62
	ld l, d                                          ; $5a13: $6a
	rlca                                             ; $5a14: $07
	rlca                                             ; $5a15: $07
	jp $91f9                                         ; $5a16: $c3 $f9 $91


	db $fd                                           ; $5a19: $fd
	call c, $9c9d                                    ; $5a1a: $dc $9d $9c
	nop                                              ; $5a1d: $00
	ld bc, $0303                                     ; $5a1e: $01 $03 $03
	add [hl]                                         ; $5a21: $86
	add c                                            ; $5a22: $81
	xor e                                            ; $5a23: $ab
	ld [hl], $ff                                     ; $5a24: $36 $ff
	cp $dd                                           ; $5a26: $fe $dd
	db $fc                                           ; $5a28: $fc
	adc d                                            ; $5a29: $8a
	pop de                                           ; $5a2a: $d1
	jp $b052                                         ; $5a2b: $c3 $52 $b0


	db $ec                                           ; $5a2e: $ec

jr_045_5a2f:
	cp $10                                           ; $5a2f: $fe $10
	ret nc                                           ; $5a31: $d0

	adc h                                            ; $5a32: $8c
	inc e                                            ; $5a33: $1c
	adc l                                            ; $5a34: $8d
	ld c, a                                          ; $5a35: $4f
	ret nz                                           ; $5a36: $c0

	ld bc, $8f6f                                     ; $5a37: $01 $6f $8f
	sub e                                            ; $5a3a: $93
	add e                                            ; $5a3b: $83
	dec c                                            ; $5a3c: $0d
	ld e, c                                          ; $5a3d: $59
	ld c, l                                          ; $5a3e: $4d
	call c, $9c01                                    ; $5a3f: $dc $01 $9c
	di                                               ; $5a42: $f3
	add [hl]                                         ; $5a43: $86
	ld a, $dc                                        ; $5a44: $3e $dc
	cp $9d                                           ; $5a46: $fe $9d
	inc bc                                           ; $5a48: $03
	inc b                                            ; $5a49: $04
	sbc $0c                                          ; $5a4a: $de $0c
	sbc d                                            ; $5a4c: $9a
	rlc l                                            ; $5a4d: $cb $05
	db $10                                           ; $5a4f: $10
	db $fc                                           ; $5a50: $fc
	ei                                               ; $5a51: $fb
	sbc $f3                                          ; $5a52: $de $f3
	sub h                                            ; $5a54: $94
	scf                                              ; $5a55: $37
	ld hl, sp-$20                                    ; $5a56: $f8 $e0
	ld b, b                                          ; $5a58: $40
	sub b                                            ; $5a59: $90
	nop                                              ; $5a5a: $00
	nop                                              ; $5a5b: $00
	ld [$4712], sp                                   ; $5a5c: $08 $12 $47
	ld a, a                                          ; $5a5f: $7f
	call c, $84ff                                    ; $5a60: $dc $ff $84
	rst AddAOntoHL                                          ; $5a63: $ef
	ld hl, sp+$00                                    ; $5a64: $f8 $00
	xor l                                            ; $5a66: $ad
	call c, $9118                                    ; $5a67: $dc $18 $91
	and b                                            ; $5a6a: $a0
	jr nz, jr_045_5a7e                               ; $5a6b: $20 $11

	add d                                            ; $5a6d: $82
	ld [de], a                                       ; $5a6e: $12
	inc hl                                           ; $5a6f: $23
	rst SubAFromBC                                          ; $5a70: $e7
	xor $df                                          ; $5a71: $ee $df
	sbc a                                            ; $5a73: $9f
	ld c, $01                                        ; $5a74: $0e $01
	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00
	dec c                                            ; $5a78: $0d
	nop                                              ; $5a79: $00
	ld h, b                                          ; $5a7a: $60
	nop                                              ; $5a7b: $00
	inc l                                            ; $5a7c: $2c
	nop                                              ; $5a7d: $00

jr_045_5a7e:
	db $dd                                           ; $5a7e: $dd
	rst $38                                          ; $5a7f: $ff
	ld a, a                                          ; $5a80: $7f
	sbc l                                            ; $5a81: $9d
	rst SubAFromDE                                          ; $5a82: $df
	ld sp, hl                                        ; $5a83: $f9
	add b                                            ; $5a84: $80
	sbc $1f                                          ; $5a85: $de $1f
	sbc l                                            ; $5a87: $9d
	ld e, b                                          ; $5a88: $58
	or [hl]                                          ; $5a89: $b6
	sub [hl]                                         ; $5a8a: $96
	add hl, de                                       ; $5a8b: $19
	dec l                                            ; $5a8c: $2d
	ld sp, hl                                        ; $5a8d: $f9
	di                                               ; $5a8e: $f3
	ld h, e                                          ; $5a8f: $63
	rst SubAFromBC                                          ; $5a90: $e7
	rst GetHLinHL                                          ; $5a91: $cf
	rst AddAOntoHL                                          ; $5a92: $ef
	and $d3                                          ; $5a93: $e6 $d3
	jr nc, jr_045_5a2f                               ; $5a95: $30 $98

	add e                                            ; $5a97: $83
	inc bc                                           ; $5a98: $03
	adc h                                            ; $5a99: $8c
	sbc [hl]                                         ; $5a9a: $9e
	ld c, a                                          ; $5a9b: $4f
	sbc a                                            ; $5a9c: $9f
	rst $38                                          ; $5a9d: $ff
	rst $38                                          ; $5a9e: $ff
	db $fc                                           ; $5a9f: $fc
	db $fc                                           ; $5aa0: $fc
	ld [hl], e                                       ; $5aa1: $73
	ld h, c                                          ; $5aa2: $61
	or b                                             ; $5aa3: $b0
	sub e                                            ; $5aa4: $93
	ldh a, [$e4]                                     ; $5aa5: $f0 $e4
	xor l                                            ; $5aa7: $ad
	or $40                                           ; $5aa8: $f6 $40
	ld h, b                                          ; $5aaa: $60
	ld h, b                                          ; $5aab: $60
	adc c                                            ; $5aac: $89
	ld b, e                                          ; $5aad: $43
	inc bc                                           ; $5aae: $03
	ld [bc], a                                       ; $5aaf: $02
	add hl, bc                                       ; $5ab0: $09
	sbc $9f                                          ; $5ab1: $de $9f
	sub e                                            ; $5ab3: $93
	halt                                             ; $5ab4: $76
	inc a                                            ; $5ab5: $3c
	inc [hl]                                         ; $5ab6: $34
	inc h                                            ; $5ab7: $24
	ld b, b                                          ; $5ab8: $40
	ld e, $19                                        ; $5ab9: $1e $19
	ld h, $07                                        ; $5abb: $26 $07
	cp $c8                                           ; $5abd: $fe $c8
	ld hl, sp+$7b                                    ; $5abf: $f8 $7b
	ret nz                                           ; $5ac1: $c0

	add b                                            ; $5ac2: $80
	ret c                                            ; $5ac3: $d8

	ld hl, sp+$01                                    ; $5ac4: $f8 $01
	ld e, d                                          ; $5ac6: $5a
	ldh [c], a                                       ; $5ac7: $e2
	ld [$ac12], sp                                   ; $5ac8: $08 $12 $ac
	adc a                                            ; $5acb: $8f
	inc bc                                           ; $5acc: $03
	ld b, $04                                        ; $5acd: $06 $04
	dec c                                            ; $5acf: $0d
	rst FarCall                                          ; $5ad0: $f7
	db $ed                                           ; $5ad1: $ed
	ld b, b                                          ; $5ad2: $40
	ld [hl], b                                       ; $5ad3: $70
	db $fc                                           ; $5ad4: $fc
	ld sp, hl                                        ; $5ad5: $f9
	sub c                                            ; $5ad6: $91
	add h                                            ; $5ad7: $84
	inc e                                            ; $5ad8: $1c
	add b                                            ; $5ad9: $80
	ei                                               ; $5ada: $fb
	sbc b                                            ; $5adb: $98
	sbc b                                            ; $5adc: $98
	ret nz                                           ; $5add: $c0

	ld l, [hl]                                       ; $5ade: $6e
	rst $38                                          ; $5adf: $ff
	di                                               ; $5ae0: $f3
	ld a, a                                          ; $5ae1: $7f
	sub e                                            ; $5ae2: $93
	inc b                                            ; $5ae3: $04
	ld h, a                                          ; $5ae4: $67
	ld h, a                                          ; $5ae5: $67
	ccf                                              ; $5ae6: $3f
	or e                                             ; $5ae7: $b3
	rrca                                             ; $5ae8: $0f
	nop                                              ; $5ae9: $00
	or c                                             ; $5aea: $b1
	jr nz, jr_045_5aed                               ; $5aeb: $20 $00

jr_045_5aed:
	ld h, d                                          ; $5aed: $62
	ld a, d                                          ; $5aee: $7a
	ld a, e                                          ; $5aef: $7b
	adc a                                            ; $5af0: $8f
	add b                                            ; $5af1: $80
	ld c, a                                          ; $5af2: $4f
	rst SubAFromDE                                          ; $5af3: $df
	rst $38                                          ; $5af4: $ff
	sbc a                                            ; $5af5: $9f
	add a                                            ; $5af6: $87
	ld l, l                                          ; $5af7: $6d
	ld e, c                                          ; $5af8: $59
	and e                                            ; $5af9: $a3
	ld b, a                                          ; $5afa: $47
	add sp, -$6f                                     ; $5afb: $e8 $91
	inc e                                            ; $5afd: $1c
	dec b                                            ; $5afe: $05
	ldh a, [c]                                       ; $5aff: $f2
	and a                                            ; $5b00: $a7
	rst SubAFromDE                                          ; $5b01: $df
	cp a                                             ; $5b02: $bf
	rra                                              ; $5b03: $1f
	ld l, a                                          ; $5b04: $6f
	db $e3                                           ; $5b05: $e3
	ei                                               ; $5b06: $fb
	ld l, h                                          ; $5b07: $6c
	ld b, $c2                                        ; $5b08: $06 $c2
	ld d, b                                          ; $5b0a: $50
	rst AddAOntoHL                                          ; $5b0b: $ef
	jr z, jr_045_5b1e                                ; $5b0c: $28 $10

	jp $f993                                         ; $5b0e: $c3 $93 $f9


	add b                                            ; $5b11: $80
	dec a                                            ; $5b12: $3d
	cp a                                             ; $5b13: $bf
	jr jr_045_5aed                                   ; $5b14: $18 $d7

	rst $38                                          ; $5b16: $ff
	db $fc                                           ; $5b17: $fc
	ret nc                                           ; $5b18: $d0

	cp d                                             ; $5b19: $ba
	and [hl]                                         ; $5b1a: $a6
	ld b, h                                          ; $5b1b: $44
	ld [hl], b                                       ; $5b1c: $70
	pop de                                           ; $5b1d: $d1

jr_045_5b1e:
	ld b, e                                          ; $5b1e: $43
	cp [hl]                                          ; $5b1f: $be
	rrca                                             ; $5b20: $0f
	dec b                                            ; $5b21: $05
	add hl, de                                       ; $5b22: $19
	cp e                                             ; $5b23: $bb
	rst GetHLinHL                                          ; $5b24: $cf
	ld l, $bc                                        ; $5b25: $2e $bc
	ld c, l                                          ; $5b27: $4d
	ld b, b                                          ; $5b28: $40
	ld b, $e2                                        ; $5b29: $06 $e2
	call $2331                                       ; $5b2b: $cd $31 $23
	adc e                                            ; $5b2e: $8b
	ld [hl+], a                                      ; $5b2f: $22
	cp b                                             ; $5b30: $b8
	add b                                            ; $5b31: $80
	ld hl, sp-$64                                    ; $5b32: $f8 $9c
	add [hl]                                         ; $5b34: $86
	adc $7f                                          ; $5b35: $ce $7f
	ld a, a                                          ; $5b37: $7f
	rst SubAFromDE                                          ; $5b38: $df
	ld e, h                                          ; $5b39: $5c
	ld [hl], e                                       ; $5b3a: $73
	sub e                                            ; $5b3b: $93
	sub a                                            ; $5b3c: $97
	ld b, b                                          ; $5b3d: $40
	rrca                                             ; $5b3e: $0f
	ld l, d                                          ; $5b3f: $6a
	add $21                                          ; $5b40: $c6 $21
	inc c                                            ; $5b42: $0c
	ld c, h                                          ; $5b43: $4c
	ld [$ff3f], sp                                   ; $5b44: $08 $3f $ff
	sbc l                                            ; $5b47: $9d
	jr c, jr_045_5bbc                                ; $5b48: $38 $72

	push de                                          ; $5b4a: $d5
	call $2417                                       ; $5b4b: $cd $17 $24
	ldh a, [$d7]                                     ; $5b4e: $f0 $d7
	inc hl                                           ; $5b50: $23
	add b                                            ; $5b51: $80
	adc h                                            ; $5b52: $8c
	ld l, $33                                        ; $5b53: $2e $33
	ld hl, sp-$02                                    ; $5b55: $f8 $fe
	ccf                                              ; $5b57: $3f
	inc l                                            ; $5b58: $2c
	ld c, h                                          ; $5b59: $4c
	ld d, h                                          ; $5b5a: $54
	ldh a, [$60]                                     ; $5b5b: $f0 $60
	add e                                            ; $5b5d: $83
	ld b, a                                          ; $5b5e: $47
	ld hl, $809e                                     ; $5b5f: $21 $9e $80
	rst AddAOntoHL                                          ; $5b62: $ef
	rrca                                             ; $5b63: $0f
	adc a                                            ; $5b64: $8f
	ldh a, [$f8]                                     ; $5b65: $f0 $f8
	cp $ff                                           ; $5b67: $fe $ff
	rst $38                                          ; $5b69: $ff
	ld [hl], b                                       ; $5b6a: $70
	ldh [rP1], a                                     ; $5b6b: $e0 $00
	cp $ff                                           ; $5b6d: $fe $ff
	ret nz                                           ; $5b6f: $c0

	nop                                              ; $5b70: $00
	adc d                                            ; $5b71: $8a
	inc b                                            ; $5b72: $04
	adc a                                            ; $5b73: $8f
	rra                                              ; $5b74: $1f
	rst $38                                          ; $5b75: $ff
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	ccf                                              ; $5b78: $3f
	rst $38                                          ; $5b79: $ff
	rst $38                                          ; $5b7a: $ff
	nop                                              ; $5b7b: $00
	dec c                                            ; $5b7c: $0d
	add hl, bc                                       ; $5b7d: $09
	inc b                                            ; $5b7e: $04
	adc c                                            ; $5b7f: $89
	ld d, $1c                                        ; $5b80: $16 $1c
	ld b, b                                          ; $5b82: $40
	rst $38                                          ; $5b83: $ff
	cp $f0                                           ; $5b84: $fe $f0
	inc bc                                           ; $5b86: $03
	halt                                             ; $5b87: $76
	db $db                                           ; $5b88: $db
	sub l                                            ; $5b89: $95
	xor b                                            ; $5b8a: $a8
	ld h, b                                          ; $5b8b: $60
	db $10                                           ; $5b8c: $10
	ld [$00c0], sp                                   ; $5b8d: $08 $c0 $00
	ld b, $12                                        ; $5b90: $06 $12
	ld b, a                                          ; $5b92: $47
	rra                                              ; $5b93: $1f
	db $db                                           ; $5b94: $db

jr_045_5b95:
	rst $38                                          ; $5b95: $ff
	sub l                                            ; $5b96: $95
	adc d                                            ; $5b97: $8a
	or [hl]                                          ; $5b98: $b6
	ret                                              ; $5b99: $c9


	ldh [$03], a                                     ; $5b9a: $e0 $03
	cp a                                             ; $5b9c: $bf
	ld a, a                                          ; $5b9d: $7f

jr_045_5b9e:
	ld e, a                                          ; $5b9e: $5f
	ld bc, $dec9                                     ; $5b9f: $01 $c9 $de
	rst $38                                          ; $5ba2: $ff
	add b                                            ; $5ba3: $80
	nop                                              ; $5ba4: $00
	add b                                            ; $5ba5: $80
	cp a                                             ; $5ba6: $bf
	add hl, sp                                       ; $5ba7: $39
	inc [hl]                                         ; $5ba8: $34
	jp $48a0                                         ; $5ba9: $c3 $a0 $48


	jr nc, @-$02                                     ; $5bac: $30 $fc

	ld l, a                                          ; $5bae: $6f
	ret nz                                           ; $5baf: $c0

	ld hl, sp+$3c                                    ; $5bb0: $f8 $3c
	rra                                              ; $5bb2: $1f
	or a                                             ; $5bb3: $b7
	rst $38                                          ; $5bb4: $ff
	rrca                                             ; $5bb5: $0f
	rst JumpTable                                          ; $5bb6: $c7
	add hl, sp                                       ; $5bb7: $39
	ld de, $a18d                                     ; $5bb8: $11 $8d $a1
	inc d                                            ; $5bbb: $14

jr_045_5bbc:
	jr jr_045_5b9e                                   ; $5bbc: $18 $e0

	ret nz                                           ; $5bbe: $c0

	ldh a, [$08]                                     ; $5bbf: $f0 $08

jr_045_5bc1:
	nop                                              ; $5bc1: $00
	ld b, b                                          ; $5bc2: $40
	add b                                            ; $5bc3: $80
	ldh [$e6], a                                     ; $5bc4: $e0 $e6
	sbc a                                            ; $5bc6: $9f
	rst $38                                          ; $5bc7: $ff
	pop af                                           ; $5bc8: $f1
	ldh [$b7], a                                     ; $5bc9: $e0 $b7
	add a                                            ; $5bcb: $87
	and e                                            ; $5bcc: $a3
	ld b, d                                          ; $5bcd: $42
	ld [bc], a                                       ; $5bce: $02
	jr nc, @-$6f                                     ; $5bcf: $30 $8f

	ccf                                              ; $5bd1: $3f
	ld a, b                                          ; $5bd2: $78
	ld a, b                                          ; $5bd3: $78
	ld e, h                                          ; $5bd4: $5c
	cp l                                             ; $5bd5: $bd
	db $fd                                           ; $5bd6: $fd
	rst GetHLinHL                                          ; $5bd7: $cf
	rst SubAFromDE                                          ; $5bd8: $df
	dec [hl]                                         ; $5bd9: $35
	dec e                                            ; $5bda: $1d
	inc a                                            ; $5bdb: $3c
	ld [hl], c                                       ; $5bdc: $71
	ld b, h                                          ; $5bdd: $44
	add b                                            ; $5bde: $80
	jr jr_045_5bc1                                   ; $5bdf: $18 $e0

	jp z, $80e2                                      ; $5be1: $ca $e2 $80

	jp $bf8e                                         ; $5be4: $c3 $8e $bf


	ld a, a                                          ; $5be7: $7f
	rst FarCall                                          ; $5be8: $f7
	add e                                            ; $5be9: $83
	or c                                             ; $5bea: $b1
	xor l                                            ; $5beb: $ad
	pop af                                           ; $5bec: $f1
	add b                                            ; $5bed: $80
	nop                                              ; $5bee: $00
	dec c                                            ; $5bef: $0d
	sbc h                                            ; $5bf0: $9c
	ld a, h                                          ; $5bf1: $7c
	ld c, [hl]                                       ; $5bf2: $4e
	ld e, [hl]                                       ; $5bf3: $5e
	ld c, $7f                                        ; $5bf4: $0e $7f
	rst $38                                          ; $5bf6: $ff
	di                                               ; $5bf7: $f3
	db $e3                                           ; $5bf8: $e3
	db $ec                                           ; $5bf9: $ec
	jr nc, jr_045_5b95                               ; $5bfa: $30 $99

	nop                                              ; $5bfc: $00
	rra                                              ; $5bfd: $1f
	inc b                                            ; $5bfe: $04
	ld b, b                                          ; $5bff: $40
	nop                                              ; $5c00: $00
	inc bc                                           ; $5c01: $03
	rst GetHLinHL                                          ; $5c02: $cf
	ld a, a                                          ; $5c03: $7f
	ldh a, [c]                                       ; $5c04: $f2
	adc l                                            ; $5c05: $8d
	ldh [$fb], a                                     ; $5c06: $e0 $fb
	cp a                                             ; $5c08: $bf
	rst $38                                          ; $5c09: $ff
	inc a                                            ; $5c0a: $3c
	or b                                             ; $5c0b: $b0
	ld a, [de]                                       ; $5c0c: $1a
	ld [$5cba], sp                                   ; $5c0d: $08 $ba $5c
	ld b, b                                          ; $5c10: $40
	nop                                              ; $5c11: $00
	jp $fdcf                                         ; $5c12: $c3 $cf $fd


	rst FarCall                                          ; $5c15: $f7
	ld b, a                                          ; $5c16: $47
	rst AddAOntoHL                                          ; $5c17: $ef
	ld a, e                                          ; $5c18: $7b
	add b                                            ; $5c19: $80
	sub h                                            ; $5c1a: $94
	cp b                                             ; $5c1b: $b8
	ld a, b                                          ; $5c1c: $78
	db $f4                                           ; $5c1d: $f4
	dec b                                            ; $5c1e: $05
	add a                                            ; $5c1f: $87
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	ld [hl], a                                       ; $5c22: $77
	ld b, a                                          ; $5c23: $47
	add a                                            ; $5c24: $87
	dec bc                                           ; $5c25: $0b
	ld a, e                                          ; $5c26: $7b
	ld b, c                                          ; $5c27: $41
	ld a, a                                          ; $5c28: $7f
	ld b, l                                          ; $5c29: $45
	add b                                            ; $5c2a: $80
	ld l, e                                          ; $5c2b: $6b
	add b                                            ; $5c2c: $80
	sub e                                            ; $5c2d: $93
	inc e                                            ; $5c2e: $1c
	call z, $1837                                    ; $5c2f: $cc $37 $18
	ccf                                              ; $5c32: $3f
	sbc a                                            ; $5c33: $9f
	rst $38                                          ; $5c34: $ff
	db $ec                                           ; $5c35: $ec
	db $e3                                           ; $5c36: $e3
	inc sp                                           ; $5c37: $33
	ret z                                            ; $5c38: $c8

	rst SubAFromBC                                          ; $5c39: $e7
	cpl                                              ; $5c3a: $2f

jr_045_5c3b:
	inc hl                                           ; $5c3b: $23
	rra                                              ; $5c3c: $1f
	rlca                                             ; $5c3d: $07
	inc b                                            ; $5c3e: $04
	adc a                                            ; $5c3f: $8f
	or [hl]                                          ; $5c40: $b6
	rst FarCall                                          ; $5c41: $f7
	di                                               ; $5c42: $f3
	rst JumpTable                                          ; $5c43: $c7
	rst SubAFromBC                                          ; $5c44: $e7
	xor $ee                                          ; $5c45: $ee $ee
	ld h, h                                          ; $5c47: $64
	ld h, l                                          ; $5c48: $65
	ld hl, $8280                                     ; $5c49: $21 $80 $82
	ld h, b                                          ; $5c4c: $60
	push bc                                          ; $5c4d: $c5
	call $0f44                                       ; $5c4e: $cd $44 $0f
	rst SubAFromHL                                          ; $5c51: $d7
	cp e                                             ; $5c52: $bb
	rst $38                                          ; $5c53: $ff
	cp a                                             ; $5c54: $bf
	dec sp                                           ; $5c55: $3b
	ld [hl-], a                                      ; $5c56: $32
	ei                                               ; $5c57: $fb
	rst $38                                          ; $5c58: $ff
	dec sp                                           ; $5c59: $3b
	ld [hl], a                                       ; $5c5a: $77
	inc hl                                           ; $5c5b: $23
	ld e, $00                                        ; $5c5c: $1e $00
	or d                                             ; $5c5e: $b2

jr_045_5c5f:
	inc sp                                           ; $5c5f: $33
	ld c, c                                          ; $5c60: $49
	ld c, $80                                        ; $5c61: $0e $80
	pop bc                                           ; $5c63: $c1
	ldh a, [rIE]                                     ; $5c64: $f0 $ff
	ld c, l                                          ; $5c66: $4d
	call z, $f3f6                                    ; $5c67: $cc $f6 $f3
	add [hl]                                         ; $5c6a: $86
	ld a, a                                          ; $5c6b: $7f
	ld [$51a1], sp                                   ; $5c6c: $08 $a1 $51
	cp c                                             ; $5c6f: $b9
	ret c                                            ; $5c70: $d8

	xor c                                            ; $5c71: $a9
	reti                                             ; $5c72: $d9


	add c                                            ; $5c73: $81
	rst $38                                          ; $5c74: $ff
	ld e, [hl]                                       ; $5c75: $5e
	ld l, $1c                                        ; $5c76: $2e $1c
	inc e                                            ; $5c78: $1c
	ld e, h                                          ; $5c79: $5c
	ld l, h                                          ; $5c7a: $6c
	ld l, h                                          ; $5c7b: $6c
	ld [$020c], sp                                   ; $5c7c: $08 $0c $02
	inc bc                                           ; $5c7f: $03
	inc bc                                           ; $5c80: $03
	stop                                             ; $5c81: $10 $00
	jr nz, jr_045_5c5f                               ; $5c83: $20 $da

	rst $38                                          ; $5c85: $ff
	sbc d                                            ; $5c86: $9a
	rst SubAFromDE                                          ; $5c87: $df
	di                                               ; $5c88: $f3
	ld [hl+], a                                      ; $5c89: $22
	and b                                            ; $5c8a: $a0
	ldh [c], a                                       ; $5c8b: $e2
	sbc $58                                          ; $5c8c: $de $58
	adc d                                            ; $5c8e: $8a
	rla                                              ; $5c8f: $17
	ld c, h                                          ; $5c90: $4c
	db $fc                                           ; $5c91: $fc
	ld a, [hl]                                       ; $5c92: $7e
	inc a                                            ; $5c93: $3c
	cp h                                             ; $5c94: $bc
	cp l                                             ; $5c95: $bd
	cp l                                             ; $5c96: $bd
	ld sp, hl                                        ; $5c97: $f9
	dec e                                            ; $5c98: $1d
	cp a                                             ; $5c99: $bf
	adc $0e                                          ; $5c9a: $ce $0e
	adc h                                            ; $5c9c: $8c
	adc [hl]                                         ; $5c9d: $8e
	adc h                                            ; $5c9e: $8c
	ld c, $b0                                        ; $5c9f: $0e $b0
	ld a, [hl]                                       ; $5ca1: $7e
	ld a, [hl]                                       ; $5ca2: $7e
	cp $75                                           ; $5ca3: $fe $75

jr_045_5ca5:
	ld a, l                                          ; $5ca5: $7d
	adc d                                            ; $5ca6: $8a
	or b                                             ; $5ca7: $b0
	ld h, b                                          ; $5ca8: $60
	ld h, b                                          ; $5ca9: $60
	ld b, b                                          ; $5caa: $40
	ld b, b                                          ; $5cab: $40
	and b                                            ; $5cac: $a0
	ldh [c], a                                       ; $5cad: $e2
	ldh [c], a                                       ; $5cae: $e2
	rrca                                             ; $5caf: $0f
	rra                                              ; $5cb0: $1f
	rra                                              ; $5cb1: $1f
	ccf                                              ; $5cb2: $3f
	ccf                                              ; $5cb3: $3f
	ld e, a                                          ; $5cb4: $5f
	dec e                                            ; $5cb5: $1d
	dec e                                            ; $5cb6: $1d
	jr nc, jr_045_5c3b                               ; $5cb7: $30 $82

	rlca                                             ; $5cb9: $07
	dec c                                            ; $5cba: $0d
	dec bc                                           ; $5cbb: $0b
	sbc $01                                          ; $5cbc: $de $01
	sbc d                                            ; $5cbe: $9a
	rst GetHLinHL                                          ; $5cbf: $cf
	ld a, l                                          ; $5cc0: $7d
	ld sp, hl                                        ; $5cc1: $f9
	di                                               ; $5cc2: $f3
	rst FarCall                                          ; $5cc3: $f7
	sbc $ff                                          ; $5cc4: $de $ff
	sbc e                                            ; $5cc6: $9b
	ld [$cace], sp                                   ; $5cc7: $08 $ce $ca
	adc $de                                          ; $5cca: $ce $de
	call z, $cb9a                                    ; $5ccc: $cc $9a $cb
	rst $38                                          ; $5ccf: $ff
	ld sp, hl                                        ; $5cd0: $f9
	db $fd                                           ; $5cd1: $fd
	db $fd                                           ; $5cd2: $fd
	sbc $ff                                          ; $5cd3: $de $ff
	sub c                                            ; $5cd5: $91
	db $fd                                           ; $5cd6: $fd
	ld b, b                                          ; $5cd7: $40
	ret nz                                           ; $5cd8: $c0

	ret nz                                           ; $5cd9: $c0

	add b                                            ; $5cda: $80
	add b                                            ; $5cdb: $80
	ret nz                                           ; $5cdc: $c0

jr_045_5cdd:
	ret nc                                           ; $5cdd: $d0

	ret nc                                           ; $5cde: $d0

	cp a                                             ; $5cdf: $bf
	ccf                                              ; $5ce0: $3f
	ccf                                              ; $5ce1: $3f
	ld a, a                                          ; $5ce2: $7f
	ld a, a                                          ; $5ce3: $7f
	sbc $3f                                          ; $5ce4: $de $3f
	add a                                            ; $5ce6: $87
	dec de                                           ; $5ce7: $1b
	xor h                                            ; $5ce8: $ac
	inc l                                            ; $5ce9: $2c
	rrca                                             ; $5cea: $0f
	dec l                                            ; $5ceb: $2d
	ld l, [hl]                                       ; $5cec: $6e
	ld a, e                                          ; $5ced: $7b
	ld d, a                                          ; $5cee: $57
	ldh a, [$dc]                                     ; $5cef: $f0 $dc
	sbc $fe                                          ; $5cf1: $de $fe
	sbc $9d                                          ; $5cf3: $de $9d
	sbc l                                            ; $5cf5: $9d
	cp e                                             ; $5cf6: $bb
	ldh a, [$58]                                     ; $5cf7: $f0 $58
	ld d, b                                          ; $5cf9: $50
	ret nz                                           ; $5cfa: $c0

	jr nz, jr_045_5cdd                               ; $5cfb: $20 $e0

	sbc b                                            ; $5cfd: $98
	ld a, c                                          ; $5cfe: $79
	sbc $ff                                          ; $5cff: $de $ff
	rst SubAFromDE                                          ; $5d01: $df
	ld a, a                                          ; $5d02: $7f
	adc h                                            ; $5d03: $8c
	sbc a                                            ; $5d04: $9f
	rst SubAFromBC                                          ; $5d05: $e7
	and $7c                                          ; $5d06: $e6 $7c
	ld b, a                                          ; $5d08: $47
	dec h                                            ; $5d09: $25
	ld [hl], h                                       ; $5d0a: $74
	db $f4                                           ; $5d0b: $f4
	or $76                                           ; $5d0c: $f6 $76
	dec a                                            ; $5d0e: $3d
	di                                               ; $5d0f: $f3
	ld hl, sp-$06                                    ; $5d10: $f8 $fa
	ei                                               ; $5d12: $fb
	ei                                               ; $5d13: $fb
	ld sp, hl                                        ; $5d14: $f9
	ld sp, hl                                        ; $5d15: $f9
	ld hl, sp+$79                                    ; $5d16: $f8 $79
	ld b, c                                          ; $5d18: $41
	sbc c                                            ; $5d19: $99
	ld c, b                                          ; $5d1a: $48
	sbc b                                            ; $5d1b: $98
	sbc [hl]                                         ; $5d1c: $9e
	ld e, $0c                                        ; $5d1d: $1e $0c
	ld l, a                                          ; $5d1f: $6f
	jp c, $96ff                                      ; $5d20: $da $ff $96

	jr nz, jr_045_5ca5                               ; $5d23: $20 $80

	adc h                                            ; $5d25: $8c
	adc e                                            ; $5d26: $8b
	sub c                                            ; $5d27: $91
	add e                                            ; $5d28: $83
	add e                                            ; $5d29: $83
	rrca                                             ; $5d2a: $0f
	rst SubAFromDE                                          ; $5d2b: $df
	db $db                                           ; $5d2c: $db
	ld a, a                                          ; $5d2d: $7f
	sbc d                                            ; $5d2e: $9a
	rst $38                                          ; $5d2f: $ff
	ldh a, [$58]                                     ; $5d30: $f0 $58
	ld [$dd3c], sp                                   ; $5d32: $08 $3c $dd
	db $fc                                           ; $5d35: $fc
	reti                                             ; $5d36: $d9


	rst $38                                          ; $5d37: $ff
	sub a                                            ; $5d38: $97
	sub c                                            ; $5d39: $91
	dec de                                           ; $5d3a: $1b
	ccf                                              ; $5d3b: $3f
	add hl, sp                                       ; $5d3c: $39
	dec a                                            ; $5d3d: $3d
	inc a                                            ; $5d3e: $3c
	inc e                                            ; $5d3f: $1c
	inc e                                            ; $5d40: $1c
	reti                                             ; $5d41: $d9


	rst $38                                          ; $5d42: $ff
	sub d                                            ; $5d43: $92
	nop                                              ; $5d44: $00
	or b                                             ; $5d45: $b0
	rst GetHLinHL                                          ; $5d46: $cf
	jp nc, $9d9c                                     ; $5d47: $d2 $9c $9d

	cp l                                             ; $5d4a: $bd
	ld a, a                                          ; $5d4b: $7f
	rst $38                                          ; $5d4c: $ff
	rst GetHLinHL                                          ; $5d4d: $cf
	di                                               ; $5d4e: $f3
	db $fd                                           ; $5d4f: $fd
	rst $38                                          ; $5d50: $ff
	sbc $fe                                          ; $5d51: $de $fe
	sub d                                            ; $5d53: $92
	ld [hl], l                                       ; $5d54: $75
	ld b, a                                          ; $5d55: $47
	halt                                             ; $5d56: $76
	sub c                                            ; $5d57: $91
	inc bc                                           ; $5d58: $03
	add d                                            ; $5d59: $82
	add e                                            ; $5d5a: $83
	add e                                            ; $5d5b: $83
	and e                                            ; $5d5c: $a3
	cp c                                             ; $5d5d: $b9
	adc l                                            ; $5d5e: $8d
	xor $fc                                          ; $5d5f: $ee $fc
	sbc $7f                                          ; $5d61: $de $7f
	add b                                            ; $5d63: $80
	or a                                             ; $5d64: $b7
	add l                                            ; $5d65: $85
	ld b, c                                          ; $5d66: $41
	ld h, a                                          ; $5d67: $67
	and d                                            ; $5d68: $a2
	ld [hl], e                                       ; $5d69: $73
	inc hl                                           ; $5d6a: $23
	or e                                             ; $5d6b: $b3
	add c                                            ; $5d6c: $81
	ld b, e                                          ; $5d6d: $43
	db $e3                                           ; $5d6e: $e3
	db $e3                                           ; $5d6f: $e3
	ld h, a                                          ; $5d70: $67
	daa                                              ; $5d71: $27
	scf                                              ; $5d72: $37
	daa                                              ; $5d73: $27
	ld e, $5e                                        ; $5d74: $1e $5e
	db $ed                                           ; $5d76: $ed
	xor $22                                          ; $5d77: $ee $22
	ccf                                              ; $5d79: $3f
	ld [hl], a                                       ; $5d7a: $77
	xor $e7                                          ; $5d7b: $ee $e7
	rst SubAFromBC                                          ; $5d7d: $e7
	or $f1                                           ; $5d7e: $f6 $f1
	di                                               ; $5d80: $f3
	and $cc                                          ; $5d81: $e6 $cc
	add c                                            ; $5d83: $81
	reti                                             ; $5d84: $d9


	ld l, l                                          ; $5d85: $6d
	and $a6                                          ; $5d86: $e6 $a6
	ld [bc], a                                       ; $5d88: $02
	ret nc                                           ; $5d89: $d0

	ld e, e                                          ; $5d8a: $5b
	and [hl]                                         ; $5d8b: $a6
	ld c, [hl]                                       ; $5d8c: $4e
	sbc a                                            ; $5d8d: $9f
	rra                                              ; $5d8e: $1f
	ld e, a                                          ; $5d8f: $5f
	rst $38                                          ; $5d90: $ff
	ccf                                              ; $5d91: $3f

jr_045_5d92:
	rst $38                                          ; $5d92: $ff
	db $db                                           ; $5d93: $db
	di                                               ; $5d94: $f3
	add hl, sp                                       ; $5d95: $39
	jr z, jr_045_5dc0                                ; $5d96: $28 $28

	dec l                                            ; $5d98: $2d
	jr nc, jr_045_5db6                               ; $5d99: $30 $1b

	add hl, sp                                       ; $5d9b: $39
	ld a, b                                          ; $5d9c: $78
	db $e4                                           ; $5d9d: $e4
	push hl                                          ; $5d9e: $e5
	push hl                                          ; $5d9f: $e5
	ldh [$e1], a                                     ; $5da0: $e0 $e1
	sbc $f0                                          ; $5da2: $de $f0
	sbc e                                            ; $5da4: $9b
	and b                                            ; $5da5: $a0
	ld bc, $2b03                                     ; $5da6: $01 $03 $2b
	sbc $81                                          ; $5da9: $de $81

jr_045_5dab:
	sbc d                                            ; $5dab: $9a
	daa                                              ; $5dac: $27
	rst SubAFromDE                                          ; $5dad: $df
	rst $38                                          ; $5dae: $ff
	rst $38                                          ; $5daf: $ff
	rst FarCall                                          ; $5db0: $f7
	ld [hl], a                                       ; $5db1: $77
	ld [hl], b                                       ; $5db2: $70
	rst SubAFromDE                                          ; $5db3: $df
	scf                                              ; $5db4: $37
	adc c                                            ; $5db5: $89

jr_045_5db6:
	ld h, d                                          ; $5db6: $62
	ld l, h                                          ; $5db7: $6c

jr_045_5db8:
	call c, $c8dc                                    ; $5db8: $dc $dc $c8
	ret nz                                           ; $5dbb: $c0

	reti                                             ; $5dbc: $d9


	db $db                                           ; $5dbd: $db
	sub a                                            ; $5dbe: $97
	add a                                            ; $5dbf: $87

jr_045_5dc0:
	adc a                                            ; $5dc0: $8f
	adc a                                            ; $5dc1: $8f
	sbc a                                            ; $5dc2: $9f
	sbc a                                            ; $5dc3: $9f
	ld c, $4e                                        ; $5dc4: $0e $4e
	ld c, $0c                                        ; $5dc6: $0e $0c
	ld c, $06                                        ; $5dc8: $0e $06
	inc c                                            ; $5dca: $0c
	jr nz, jr_045_5dab                               ; $5dcb: $20 $de

	db $fc                                           ; $5dcd: $fc
	rst SubAFromDE                                          ; $5dce: $df
	cp $de                                           ; $5dcf: $fe $de
	rst $38                                          ; $5dd1: $ff
	sub l                                            ; $5dd2: $95
	inc hl                                           ; $5dd3: $23
	and c                                            ; $5dd4: $a1
	ld [bc], a                                       ; $5dd5: $02
	ld b, b                                          ; $5dd6: $40
	ld b, b                                          ; $5dd7: $40
	jr c, jr_045_5d92                                ; $5dd8: $38 $b8

	jr c, jr_045_5db8                                ; $5dda: $38 $dc

	ld e, [hl]                                       ; $5ddc: $5e
	ld a, d                                          ; $5ddd: $7a
	ldh a, [c]                                       ; $5dde: $f2
	rst SubAFromDE                                          ; $5ddf: $df
	rlca                                             ; $5de0: $07
	add [hl]                                         ; $5de1: $86
	add a                                            ; $5de2: $87
	inc bc                                           ; $5de3: $03
	ld b, a                                          ; $5de4: $47
	add a                                            ; $5de5: $87
	push bc                                          ; $5de6: $c5
	sub $da                                          ; $5de7: $d6 $da
	set 1, l                                         ; $5de9: $cb $cd
	rst $38                                          ; $5deb: $ff
	ei                                               ; $5dec: $fb
	ld a, e                                          ; $5ded: $7b
	dec sp                                           ; $5dee: $3b
	add hl, hl                                       ; $5def: $29
	dec h                                            ; $5df0: $25
	inc [hl]                                         ; $5df1: $34
	ld [hl-], a                                      ; $5df2: $32
	adc e                                            ; $5df3: $8b
	sbc l                                            ; $5df4: $9d
	ld a, $3f                                        ; $5df5: $3e $3f
	ccf                                              ; $5df7: $3f
	ld a, c                                          ; $5df8: $79
	ld a, l                                          ; $5df9: $7d
	ld a, b                                          ; $5dfa: $78
	ld a, d                                          ; $5dfb: $7a
	jp $d073                                         ; $5dfc: $c3 $73 $d0


	add a                                            ; $5dff: $87
	db $10                                           ; $5e00: $10
	ld b, b                                          ; $5e01: $40
	and c                                            ; $5e02: $a1
	ld bc, $e3c5                                     ; $5e03: $01 $c5 $e3
	nop                                              ; $5e06: $00
	ld d, c                                          ; $5e07: $51
	rst $38                                          ; $5e08: $ff
	cp a                                             ; $5e09: $bf
	sbc $fe                                          ; $5e0a: $de $fe
	ld a, $3c                                        ; $5e0c: $3e $3c
	cp l                                             ; $5e0e: $bd
	cp h                                             ; $5e0f: $bc
	jp nc, $b8c4                                     ; $5e10: $d2 $c4 $b8

	ld hl, sp-$68                                    ; $5e13: $f8 $98
	nop                                              ; $5e15: $00
	add b                                            ; $5e16: $80
	db $10                                           ; $5e17: $10
	halt                                             ; $5e18: $76
	or c                                             ; $5e19: $b1
	ld [hl], l                                       ; $5e1a: $75
	ld d, b                                          ; $5e1b: $50
	add [hl]                                         ; $5e1c: $86
	rla                                              ; $5e1d: $17
	dec d                                            ; $5e1e: $15
	ld [hl], $3f                                     ; $5e1f: $36 $3f
	scf                                              ; $5e21: $37
	ld a, [hl-]                                      ; $5e22: $3a
	inc sp                                           ; $5e23: $33
	ld [hl-], a                                      ; $5e24: $32
	ldh [$e2], a                                     ; $5e25: $e0 $e2
	pop hl                                           ; $5e27: $e1
	ldh a, [$f8]                                     ; $5e28: $f0 $f8
	db $fc                                           ; $5e2a: $fc
	cp $ff                                           ; $5e2b: $fe $ff
	dec a                                            ; $5e2d: $3d
	ld [hl], $76                                     ; $5e2e: $36 $76
	ld [hl], l                                       ; $5e30: $75
	inc sp                                           ; $5e31: $33
	ld a, d                                          ; $5e32: $7a
	db $fc                                           ; $5e33: $fc
	db $e4                                           ; $5e34: $e4
	ld hl, sp+$7a                                    ; $5e35: $f8 $7a
	call nz, $f893                                   ; $5e37: $c4 $93 $f8
	pop af                                           ; $5e3a: $f1
	di                                               ; $5e3b: $f3
	ei                                               ; $5e3c: $fb
	dec c                                            ; $5e3d: $0d
	add hl, bc                                       ; $5e3e: $09
	dec bc                                           ; $5e3f: $0b
	rrca                                             ; $5e40: $0f
	rrca                                             ; $5e41: $0f

jr_045_5e42:
	dec c                                            ; $5e42: $0d
	dec b                                            ; $5e43: $05
	ld bc, $4372                                     ; $5e44: $01 $72 $43
	sbc $fe                                          ; $5e47: $de $fe
	sub l                                            ; $5e49: $95
	cpl                                              ; $5e4a: $2f
	ld c, e                                          ; $5e4b: $4b
	dec de                                           ; $5e4c: $1b
	ld a, [bc]                                       ; $5e4d: $0a
	ld [$180c], sp                                   ; $5e4e: $08 $0c $18
	add b                                            ; $5e51: $80
	rst SubAFromDE                                          ; $5e52: $df
	cp a                                             ; $5e53: $bf
	call c, $96ff                                    ; $5e54: $dc $ff $96
	ld a, a                                          ; $5e57: $7f
	cp [hl]                                          ; $5e58: $be
	cp [hl]                                          ; $5e59: $be
	ld a, $37                                        ; $5e5a: $3e $37
	ld [hl], c                                       ; $5e5c: $71
	ld h, c                                          ; $5e5d: $61
	ld bc, $de01                                     ; $5e5e: $01 $01 $de
	rst $38                                          ; $5e61: $ff
	call c, $99fe                                    ; $5e62: $dc $fe $99
	inc e                                            ; $5e65: $1c
	cp h                                             ; $5e66: $bc
	sbc b                                            ; $5e67: $98
	cp b                                             ; $5e68: $b8
	ld [$7924], sp                                   ; $5e69: $08 $24 $79
	ldh a, [rPCM34]                                  ; $5e6c: $f0 $77
	and c                                            ; $5e6e: $a1
	ld a, l                                          ; $5e6f: $7d
	cp a                                             ; $5e70: $bf
	sbc l                                            ; $5e71: $9d
	rst SubAFromDE                                          ; $5e72: $df
	ld a, l                                          ; $5e73: $7d
	ld a, d                                          ; $5e74: $7a
	inc a                                            ; $5e75: $3c
	sbc [hl]                                         ; $5e76: $9e
	ld c, c                                          ; $5e77: $49
	sbc $01                                          ; $5e78: $de $01
	ld a, e                                          ; $5e7a: $7b
	pop bc                                           ; $5e7b: $c1
	call c, $ddfe                                    ; $5e7c: $dc $fe $dd
	inc bc                                           ; $5e7f: $03
	sbc e                                            ; $5e80: $9b
	add d                                            ; $5e81: $82
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	ld [$c373], sp                                   ; $5e84: $08 $73 $c3
	ld a, e                                          ; $5e87: $7b
	inc c                                            ; $5e88: $0c
	add b                                            ; $5e89: $80
	inc sp                                           ; $5e8a: $33
	di                                               ; $5e8b: $f3
	inc hl                                           ; $5e8c: $23
	inc hl                                           ; $5e8d: $23
	jr z, jr_045_5ebb                                ; $5e8e: $28 $2b

	dec hl                                           ; $5e90: $2b
	ld l, $87                                        ; $5e91: $2e $87
	add a                                            ; $5e93: $87
	rst JumpTable                                          ; $5e94: $c7
	add $c6                                          ; $5e95: $c6 $c6
	call nz, $c1c4                                   ; $5e97: $c4 $c4 $c1
	sbc [hl]                                         ; $5e9a: $9e
	inc d                                            ; $5e9b: $14
	inc l                                            ; $5e9c: $2c
	nop                                              ; $5e9d: $00
	and b                                            ; $5e9e: $a0
	ret nz                                           ; $5e9f: $c0

	ld c, b                                          ; $5ea0: $48
	ld a, b                                          ; $5ea1: $78
	di                                               ; $5ea2: $f3
	adc a                                            ; $5ea3: $8f
	rra                                              ; $5ea4: $1f
	ld a, a                                          ; $5ea5: $7f
	ld e, a                                          ; $5ea6: $5f
	ccf                                              ; $5ea7: $3f
	or a                                             ; $5ea8: $b7
	add b                                            ; $5ea9: $80
	add a                                            ; $5eaa: $87
	ld h, h                                          ; $5eab: $64
	ld [hl], h                                       ; $5eac: $74
	inc [hl]                                         ; $5ead: $34
	jr c, jr_045_5ee8                                ; $5eae: $38 $38

	ld a, d                                          ; $5eb0: $7a
	ld d, [hl]                                       ; $5eb1: $56
	ld d, d                                          ; $5eb2: $52
	db $db                                           ; $5eb3: $db
	set 1, e                                         ; $5eb4: $cb $cb
	rst JumpTable                                          ; $5eb6: $c7
	rst JumpTable                                          ; $5eb7: $c7

jr_045_5eb8:
	add l                                            ; $5eb8: $85
	adc c                                            ; $5eb9: $89
	adc l                                            ; $5eba: $8d

jr_045_5ebb:
	ld [hl], e                                       ; $5ebb: $73
	ld de, $e200                                     ; $5ebc: $11 $00 $e2
	sub b                                            ; $5ebf: $90
	jr nz, jr_045_5e42                               ; $5ec0: $20 $80

	inc bc                                           ; $5ec2: $03
	ldh a, [$f2]                                     ; $5ec3: $f0 $f2
	ldh a, [c]                                       ; $5ec5: $f2
	ldh a, [$e0]                                     ; $5ec6: $f0 $e0
	ret nz                                           ; $5ec8: $c0

	sub h                                            ; $5ec9: $94
	ld b, b                                          ; $5eca: $40
	call nz, $c076                                   ; $5ecb: $c4 $76 $c0
	add $20                                          ; $5ece: $c6 $20
	jr nz, jr_045_5eb8                               ; $5ed0: $20 $e6

	and b                                            ; $5ed2: $a0
	inc b                                            ; $5ed3: $04
	rst AddAOntoHL                                          ; $5ed4: $ef
	ld a, b                                          ; $5ed5: $78
	inc [hl]                                         ; $5ed6: $34
	sub e                                            ; $5ed7: $93
	rst SubAFromDE                                          ; $5ed8: $df
	add hl, de                                       ; $5ed9: $19
	ld e, a                                          ; $5eda: $5f
	ei                                               ; $5edb: $fb
	db $e4                                           ; $5edc: $e4
	call z, $90f0                                    ; $5edd: $cc $f0 $90
	sub b                                            ; $5ee0: $90
	xor h                                            ; $5ee1: $ac
	jr nc, jr_045_5ee4                               ; $5ee2: $30 $00

jr_045_5ee4:
	db $dd                                           ; $5ee4: $dd
	sbc a                                            ; $5ee5: $9f
	sub a                                            ; $5ee6: $97
	rra                                              ; $5ee7: $1f

jr_045_5ee8:
	inc de                                           ; $5ee8: $13
	sbc a                                            ; $5ee9: $9f
	ccf                                              ; $5eea: $3f
	inc h                                            ; $5eeb: $24
	inc h                                            ; $5eec: $24
	dec h                                            ; $5eed: $25
	ld b, $fd                                        ; $5eee: $06 $fd
	call c, $deff                                    ; $5ef0: $dc $ff $de
	cp $93                                           ; $5ef3: $fe $93
	inc a                                            ; $5ef5: $3c
	inc [hl]                                         ; $5ef6: $34
	and h                                            ; $5ef7: $a4
	ccf                                              ; $5ef8: $3f
	daa                                              ; $5ef9: $27
	rlca                                             ; $5efa: $07
	rlca                                             ; $5efb: $07
	rrca                                             ; $5efc: $0f
	add e                                            ; $5efd: $83
	add e                                            ; $5efe: $83
	inc bc                                           ; $5eff: $03
	nop                                              ; $5f00: $00
	sbc $18                                          ; $5f01: $de $18
	sub h                                            ; $5f03: $94
	db $10                                           ; $5f04: $10
	ret nz                                           ; $5f05: $c0

	add b                                            ; $5f06: $80
	cp c                                             ; $5f07: $b9
	sbc e                                            ; $5f08: $9b
	dec de                                           ; $5f09: $1b
	ld e, e                                          ; $5f0a: $5b
	ld a, e                                          ; $5f0b: $7b
	or d                                             ; $5f0c: $b2
	ccf                                              ; $5f0d: $3f
	ld a, a                                          ; $5f0e: $7f
	sbc $67                                          ; $5f0f: $de $67
	ld a, a                                          ; $5f11: $7f
	rst SubAFromBC                                          ; $5f12: $e7
	add b                                            ; $5f13: $80
	ld c, a                                          ; $5f14: $4f
	ld sp, hl                                        ; $5f15: $f9
	cp c                                             ; $5f16: $b9
	ld a, [$73f1]                                    ; $5f17: $fa $f1 $73
	ld d, c                                          ; $5f1a: $51
	dec b                                            ; $5f1b: $05
	ld b, l                                          ; $5f1c: $45
	ld a, a                                          ; $5f1d: $7f

jr_045_5f1e:
	ld a, a                                          ; $5f1e: $7f
	dec a                                            ; $5f1f: $3d
	ccf                                              ; $5f20: $3f
	cp l                                             ; $5f21: $bd
	cp a                                             ; $5f22: $bf
	ei                                               ; $5f23: $fb
	cp e                                             ; $5f24: $bb
	ld d, c                                          ; $5f25: $51
	ld [hl], c                                       ; $5f26: $71
	ld e, b                                          ; $5f27: $58
	ld [$6d08], sp                                   ; $5f28: $08 $08 $6d
	dec e                                            ; $5f2b: $1d
	dec b                                            ; $5f2c: $05
	cp h                                             ; $5f2d: $bc
	sbc h                                            ; $5f2e: $9c
	adc h                                            ; $5f2f: $8c
	call z, $c0cc                                    ; $5f30: $cc $cc $c0
	sub l                                            ; $5f33: $95
	ldh [$f8], a                                     ; $5f34: $e0 $f8
	nop                                              ; $5f36: $00
	add b                                            ; $5f37: $80
	and b                                            ; $5f38: $a0
	ldh [$e0], a                                     ; $5f39: $e0 $e0
	and c                                            ; $5f3b: $a1
	and b                                            ; $5f3c: $a0
	and b                                            ; $5f3d: $a0
	ld [hl], a                                       ; $5f3e: $77
	jr nz, jr_045_5f1e                               ; $5f3f: $20 $dd

	ld a, a                                          ; $5f41: $7f
	sub a                                            ; $5f42: $97
	inc [hl]                                         ; $5f43: $34
	dec h                                            ; $5f44: $25
	dec h                                            ; $5f45: $25
	add hl, bc                                       ; $5f46: $09
	sub e                                            ; $5f47: $93
	inc sp                                           ; $5f48: $33
	add c                                            ; $5f49: $81
	and c                                            ; $5f4a: $a1
	db $db                                           ; $5f4b: $db
	rst $38                                          ; $5f4c: $ff
	rst SubAFromDE                                          ; $5f4d: $df
	ld a, a                                          ; $5f4e: $7f
	sub a                                            ; $5f4f: $97
	and $56                                          ; $5f50: $e6 $56
	rst SubAFromHL                                          ; $5f52: $d7
	dec d                                            ; $5f53: $15
	ld de, $0c0f                                     ; $5f54: $11 $0f $0c
	reti                                             ; $5f57: $d9


	halt                                             ; $5f58: $76
	pop bc                                           ; $5f59: $c1
	adc d                                            ; $5f5a: $8a
	ld hl, sp-$10                                    ; $5f5b: $f8 $f0
	di                                               ; $5f5d: $f3
	daa                                              ; $5f5e: $27
	ld bc, $8301                                     ; $5f5f: $01 $01 $83
	add [hl]                                         ; $5f62: $86
	ld b, $04                                        ; $5f63: $06 $04
	inc b                                            ; $5f65: $04
	ld d, b                                          ; $5f66: $50
	cp $fe                                           ; $5f67: $fe $fe
	ld a, h                                          ; $5f69: $7c
	ld a, c                                          ; $5f6a: $79
	ld sp, hl                                        ; $5f6b: $f9
	ei                                               ; $5f6c: $fb
	ei                                               ; $5f6d: $fb
	cp a                                             ; $5f6e: $bf
	add b                                            ; $5f6f: $80
	cp $9b                                           ; $5f70: $fe $9b
	adc $8f                                          ; $5f72: $ce $8f
	rst $38                                          ; $5f74: $ff

jr_045_5f75:
	ld hl, sp+$76                                    ; $5f75: $f8 $76
	add h                                            ; $5f77: $84
	sbc e                                            ; $5f78: $9b
	ld sp, $0070                                     ; $5f79: $31 $70 $00
	rlca                                             ; $5f7c: $07
	cp $9a                                           ; $5f7d: $fe $9a
	inc bc                                           ; $5f7f: $03
	ld a, a                                          ; $5f80: $7f
	xor $fd                                          ; $5f81: $ee $fd
	ld a, [$ffde]                                    ; $5f83: $fa $de $ff
	sbc h                                            ; $5f86: $9c
	db $fc                                           ; $5f87: $fc
	add b                                            ; $5f88: $80
	db $10                                           ; $5f89: $10
	cp $95                                           ; $5f8a: $fe $95
	ld b, b                                          ; $5f8c: $40
	rra                                              ; $5f8d: $1f
	rst $38                                          ; $5f8e: $ff
	push af                                          ; $5f8f: $f5
	xor d                                            ; $5f90: $aa
	nop                                              ; $5f91: $00
	rlca                                             ; $5f92: $07
	rst $38                                          ; $5f93: $ff
	cp a                                             ; $5f94: $bf
	ldh [$fc], a                                     ; $5f95: $e0 $fc
	sub e                                            ; $5f97: $93
	rlca                                             ; $5f98: $07
	ld [bc], a                                       ; $5f99: $02
	rst $38                                          ; $5f9a: $ff
	ccf                                              ; $5f9b: $3f
	ld a, c                                          ; $5f9c: $79
	xor a                                            ; $5f9d: $af
	ld d, a                                          ; $5f9e: $57
	rst $38                                          ; $5f9f: $ff
	ld hl, sp-$03                                    ; $5fa0: $f8 $fd
	nop                                              ; $5fa2: $00
	ret nz                                           ; $5fa3: $c0

	ld [hl], e                                       ; $5fa4: $73
	scf                                              ; $5fa5: $37
	sub e                                            ; $5fa6: $93
	nop                                              ; $5fa7: $00
	xor a                                            ; $5fa8: $af
	db $fd                                           ; $5fa9: $fd
	call c, $fef9                                    ; $5faa: $dc $f9 $fe
	ret nz                                           ; $5fad: $c0

	rst $38                                          ; $5fae: $ff
	rst $38                                          ; $5faf: $ff
	ld d, b                                          ; $5fb0: $50
	ld [bc], a                                       ; $5fb1: $02
	inc bc                                           ; $5fb2: $03
	ld a, e                                          ; $5fb3: $7b
	rst AddAOntoHL                                          ; $5fb4: $ef
	add b                                            ; $5fb5: $80
	daa                                              ; $5fb6: $27
	ld h, $e6                                        ; $5fb7: $26 $e6
	adc d                                            ; $5fb9: $8a
	jp nc, $3a11                                     ; $5fba: $d2 $11 $3a

	ld a, a                                          ; $5fbd: $7f
	pop bc                                           ; $5fbe: $c1
	pop bc                                           ; $5fbf: $c1
	ld bc, $0941                                     ; $5fc0: $01 $41 $09
	adc e                                            ; $5fc3: $8b
	ld bc, $f800                                     ; $5fc4: $01 $00 $f8
	ld a, a                                          ; $5fc7: $7f
	ld a, [hl]                                       ; $5fc8: $7e
	ld h, e                                          ; $5fc9: $63
	ld c, a                                          ; $5fca: $4f
	adc $5e                                          ; $5fcb: $ce $5e
	ccf                                              ; $5fcd: $3f
	rlca                                             ; $5fce: $07
	add b                                            ; $5fcf: $80
	add c                                            ; $5fd0: $81
	sbc h                                            ; $5fd1: $9c
	or b                                             ; $5fd2: $b0
	jr nc, jr_045_5f75                               ; $5fd3: $30 $a0

	add b                                            ; $5fd5: $80
	ret nz                                           ; $5fd6: $c0

	ld d, d                                          ; $5fd7: $52
	jp c, $931b                                      ; $5fd8: $da $1b $93

	and b                                            ; $5fdb: $a0
	ld b, b                                          ; $5fdc: $40
	rst $38                                          ; $5fdd: $ff
	ld sp, hl                                        ; $5fde: $f9
	adc l                                            ; $5fdf: $8d
	dec b                                            ; $5fe0: $05
	add h                                            ; $5fe1: $84
	inc c                                            ; $5fe2: $0c

Call_045_5fe3:
	rra                                              ; $5fe3: $1f
	ccf                                              ; $5fe4: $3f
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	jr z, jr_045_6021                                ; $5fe7: $28 $38

jr_045_5fe9:
	jr nz, jr_045_5fee                               ; $5fe9: $20 $03

	dec e                                            ; $5feb: $1d
	inc de                                           ; $5fec: $13
	dec de                                           ; $5fed: $1b

jr_045_5fee:
	dec de                                           ; $5fee: $1b
	rst JumpTable                                          ; $5fef: $c7
	rst JumpTable                                          ; $5ff0: $c7
	rst GetHLinHL                                          ; $5ff1: $cf
	db $ec                                           ; $5ff2: $ec
	and $ec                                          ; $5ff3: $e6 $ec
	rst SubAFromDE                                          ; $5ff5: $df
	db $e4                                           ; $5ff6: $e4
	sub a                                            ; $5ff7: $97
	nop                                              ; $5ff8: $00
	ld [bc], a                                       ; $5ff9: $02
	ld b, c                                          ; $5ffa: $41
	ld hl, $4010                                     ; $5ffb: $21 $10 $40
	nop                                              ; $5ffe: $00
	add c                                            ; $5fff: $81
	ld l, c                                          ; $6000: $69
	pop de                                           ; $6001: $d1
	ld a, [hl]                                       ; $6002: $7e
	ld c, a                                          ; $6003: $4f
	sub [hl]                                         ; $6004: $96
	sbc a                                            ; $6005: $9f
	ld a, a                                          ; $6006: $7f
	cp a                                             ; $6007: $bf
	rst $38                                          ; $6008: $ff
	rst AddAOntoHL                                          ; $6009: $ef
	ld [hl], a                                       ; $600a: $77
	rst $38                                          ; $600b: $ff
	jr nz, jr_045_606e                               ; $600c: $20 $60

jr_045_600e:
	ld a, b                                          ; $600e: $78
	add a                                            ; $600f: $87
	add b                                            ; $6010: $80
	sub b                                            ; $6011: $90
	adc b                                            ; $6012: $88
	nop                                              ; $6013: $00
	ret nz                                           ; $6014: $c0

	dec b                                            ; $6015: $05
	cp $ff                                           ; $6016: $fe $ff
	ld a, l                                          ; $6018: $7d
	jr nc, jr_045_5fe9                               ; $6019: $30 $ce

	cp $3e                                           ; $601b: $fe $3e
	ld a, [$0001]                                    ; $601d: $fa $01 $00
	add d                                            ; $6020: $82

jr_045_6021:
	adc $30                                          ; $6021: $ce $30
	nop                                              ; $6023: $00
	rrca                                             ; $6024: $0f
	dec de                                           ; $6025: $1b
	adc c                                            ; $6026: $89
	dec bc                                           ; $6027: $0b
	inc bc                                           ; $6028: $03
	ccf                                              ; $6029: $3f
	ld a, a                                          ; $602a: $7f

jr_045_602b:
	ld e, a                                          ; $602b: $5f
	db $10                                           ; $602c: $10
	inc b                                            ; $602d: $04
	ld b, $04                                        ; $602e: $06 $04
	add a                                            ; $6030: $87
	inc c                                            ; $6031: $0c
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	jr nz, jr_045_600e                               ; $6034: $20 $d8

	ld e, d                                          ; $6036: $5a
	ld d, d                                          ; $6037: $52
	db $db                                           ; $6038: $db
	sbc c                                            ; $6039: $99
	adc l                                            ; $603a: $8d
	ld b, l                                          ; $603b: $45
	ld a, [hl+]                                      ; $603c: $2a

Jump_045_603d:
	daa                                              ; $603d: $27
	daa                                              ; $603e: $27
	cpl                                              ; $603f: $2f
	daa                                              ; $6040: $27
	ld h, a                                          ; $6041: $67
	ld [hl], e                                       ; $6042: $73
	dec sp                                           ; $6043: $3b
	ld [hl], a                                       ; $6044: $77
	ld e, a                                          ; $6045: $5f
	ld a, l                                          ; $6046: $7d
	db $fc                                           ; $6047: $fc
	ei                                               ; $6048: $fb
	db $dd                                           ; $6049: $dd
	rst $38                                          ; $604a: $ff
	sbc e                                            ; $604b: $9b
	and c                                            ; $604c: $a1
	add e                                            ; $604d: $83
	inc bc                                           ; $604e: $03
	inc b                                            ; $604f: $04
	db $fd                                           ; $6050: $fd
	sbc h                                            ; $6051: $9c
	push af                                          ; $6052: $f5
	ld a, [$de1a]                                    ; $6053: $fa $1a $de
	cp $9a                                           ; $6056: $fe $9a
	ld a, a                                          ; $6058: $7f
	rst AddAOntoHL                                          ; $6059: $ef
	ld [$e404], sp                                   ; $605a: $08 $04 $e4
	cp $7f                                           ; $605d: $fe $7f
	ld e, $80                                        ; $605f: $1e $80
	and c                                            ; $6061: $a1
	ld de, $4101                                     ; $6062: $11 $01 $41
	ld d, e                                          ; $6065: $53
	ld [hl], c                                       ; $6066: $71
	add hl, hl                                       ; $6067: $29
	adc c                                            ; $6068: $89
	ld a, [hl]                                       ; $6069: $7e
	ld l, [hl]                                       ; $606a: $6e
	ld a, [hl]                                       ; $606b: $7e
	ld a, $2c                                        ; $606c: $3e $2c

jr_045_606e:
	ld c, $06                                        ; $606e: $0e $06
	ld d, $91                                        ; $6070: $16 $91
	sub c                                            ; $6072: $91
	add c                                            ; $6073: $81

Call_045_6074:
	nop                                              ; $6074: $00
	jr z, jr_045_602b                                ; $6075: $28 $b4

	cp b                                             ; $6077: $b8
	or h                                             ; $6078: $b4
	ld l, a                                          ; $6079: $6f
	ld l, a                                          ; $607a: $6f
	ld a, a                                          ; $607b: $7f
	rst $38                                          ; $607c: $ff
	rst SubAFromHL                                          ; $607d: $d7
	ld c, e                                          ; $607e: $4b
	ld b, a                                          ; $607f: $47
	sub [hl]                                         ; $6080: $96
	ld c, e                                          ; $6081: $4b
	add d                                            ; $6082: $82
	ld d, l                                          ; $6083: $55
	xor d                                            ; $6084: $aa
	ld d, l                                          ; $6085: $55
	xor d                                            ; $6086: $aa
	ld e, l                                          ; $6087: $5d
	xor [hl]                                         ; $6088: $ae
	push de                                          ; $6089: $d5
	sbc $ff                                          ; $608a: $de $ff
	add a                                            ; $608c: $87
	rst AddAOntoHL                                          ; $608d: $ef
	db $fd                                           ; $608e: $fd
	ldh a, [c]                                       ; $608f: $f2
	ld a, c                                          ; $6090: $79
	ccf                                              ; $6091: $3f
	add sp, $73                                      ; $6092: $e8 $73
	xor c                                            ; $6094: $a9
	ld d, e                                          ; $6095: $53
	add b                                            ; $6096: $80
	ret nz                                           ; $6097: $c0

	and a                                            ; $6098: $a7
	ld [hl], a                                       ; $6099: $77
	cp a                                             ; $609a: $bf
	sbc h                                            ; $609b: $9c
	cp $fc                                           ; $609c: $fe $fc
	rst $38                                          ; $609e: $ff
	ld a, a                                          ; $609f: $7f
	ret c                                            ; $60a0: $d8

	adc b                                            ; $60a1: $88
	nop                                              ; $60a2: $00
	ld [$78f3], sp                                   ; $60a3: $08 $f3 $78
	ld l, e                                          ; $60a6: $6b
	sbc $ff                                          ; $60a7: $de $ff
	sbc [hl]                                         ; $60a9: $9e
	rst FarCall                                          ; $60aa: $f7
	ld a, e                                          ; $60ab: $7b
	add d                                            ; $60ac: $82
	ld a, a                                          ; $60ad: $7f
	rst FarCall                                          ; $60ae: $f7
	rst $38                                          ; $60af: $ff
	adc [hl]                                         ; $60b0: $8e
	rrca                                             ; $60b1: $0f
	rst $38                                          ; $60b2: $ff
	rst $38                                          ; $60b3: $ff
	inc sp                                           ; $60b4: $33
	ld h, a                                          ; $60b5: $67
	rst $38                                          ; $60b6: $ff
	ld [bc], a                                       ; $60b7: $02
	rst $38                                          ; $60b8: $ff
	ldh a, [rP1]                                     ; $60b9: $f0 $00
	nop                                              ; $60bb: $00
	call z, $0098                                    ; $60bc: $cc $98 $00
	db $fd                                           ; $60bf: $fd
	ld [bc], a                                       ; $60c0: $02
	rst SubAFromBC                                          ; $60c1: $e7
	db $dd                                           ; $60c2: $dd
	rst $38                                          ; $60c3: $ff
	sbc e                                            ; $60c4: $9b
	sbc a                                            ; $60c5: $9f
	rst AddAOntoHL                                          ; $60c6: $ef

jr_045_60c7:
	db $fd                                           ; $60c7: $fd
	jr jr_045_60c7                                   ; $60c8: $18 $fd

	sbc l                                            ; $60ca: $9d
	ld h, b                                          ; $60cb: $60
	nop                                              ; $60cc: $00
	ld l, l                                          ; $60cd: $6d
	ld e, c                                          ; $60ce: $59
	rst SubAFromDE                                          ; $60cf: $df
	rst $38                                          ; $60d0: $ff
	ld a, a                                          ; $60d1: $7f
	dec e                                            ; $60d2: $1d
	ei                                               ; $60d3: $fb
	sbc [hl]                                         ; $60d4: $9e
	ld [$ffdb], a                                    ; $60d5: $ea $db $ff
	sbc l                                            ; $60d8: $9d
	rst AddAOntoHL                                          ; $60d9: $ef
	dec d                                            ; $60da: $15
	ld sp, hl                                        ; $60db: $f9
	ld [hl], a                                       ; $60dc: $77
	ld a, [bc]                                       ; $60dd: $0a
	ld a, d                                          ; $60de: $7a
	or d                                             ; $60df: $b2
	sbc l                                            ; $60e0: $9d
	rst $38                                          ; $60e1: $ff
	ld bc, $7afe                                     ; $60e2: $01 $fe $7a
	ldh [$9e], a                                     ; $60e5: $e0 $9e
	ld b, b                                          ; $60e7: $40
	ld a, c                                          ; $60e8: $79
	ld h, [hl]                                       ; $60e9: $66
	add b                                            ; $60ea: $80
	rlca                                             ; $60eb: $07
	ld hl, sp-$02                                    ; $60ec: $f8 $fe
	rst $38                                          ; $60ee: $ff
	cp a                                             ; $60ef: $bf
	rst FarCall                                          ; $60f0: $f7
	nop                                              ; $60f1: $00
	nop                                              ; $60f2: $00
	ld hl, sp+$07                                    ; $60f3: $f8 $07
	ld bc, $0500                                     ; $60f5: $01 $00 $05
	add hl, de                                       ; $60f8: $19
	pop hl                                           ; $60f9: $e1
	ld h, b                                          ; $60fa: $60
	ldh a, [$e0]                                     ; $60fb: $f0 $e0
	inc bc                                           ; $60fd: $03
	rst $38                                          ; $60fe: $ff
	ld a, [$1ee6]                                    ; $60ff: $fa $e6 $1e
	sbc a                                            ; $6102: $9f
	rrca                                             ; $6103: $0f
	rra                                              ; $6104: $1f
	db $fc                                           ; $6105: $fc
	nop                                              ; $6106: $00
	jp c, $d8f8                                      ; $6107: $da $f8 $d8

	adc d                                            ; $610a: $8a
	ld h, b                                          ; $610b: $60
	jr z, jr_045_613e                                ; $610c: $28 $30

	ld b, b                                          ; $610e: $40
	ld b, l                                          ; $610f: $45
	dec h                                            ; $6110: $25
	rlca                                             ; $6111: $07
	daa                                              ; $6112: $27

jr_045_6113:
	adc a                                            ; $6113: $8f
	rst JumpTable                                          ; $6114: $c7
	rst GetHLinHL                                          ; $6115: $cf
	sbc a                                            ; $6116: $9f
	ld a, $82                                        ; $6117: $3e $82
	add l                                            ; $6119: $85
	add l                                            ; $611a: $85
	ld bc, $1f00                                     ; $611b: $01 $00 $1f
	rlca                                             ; $611e: $07
	ld [$a475], sp                                   ; $611f: $08 $75 $a4
	sub d                                            ; $6122: $92
	rst $38                                          ; $6123: $ff
	ldh [$f8], a                                     ; $6124: $e0 $f8
	rst $38                                          ; $6126: $ff
	and $4e                                          ; $6127: $e6 $4e
	ld a, [hl]                                       ; $6129: $7e
	jr c, jr_045_6113                                ; $612a: $38 $e7

	rst $38                                          ; $612c: $ff
	ld a, h                                          ; $612d: $7c
	ccf                                              ; $612e: $3f
	add hl, de                                       ; $612f: $19
	ld a, e                                          ; $6130: $7b
	or b                                             ; $6131: $b0
	ld a, [hl]                                       ; $6132: $7e
	ld sp, $9c7d                                     ; $6133: $31 $7d $9c
	add b                                            ; $6136: $80
	ld [bc], a                                       ; $6137: $02
	inc b                                            ; $6138: $04
	sub c                                            ; $6139: $91
	ld hl, $8243                                     ; $613a: $21 $43 $82
	add d                                            ; $613d: $82

jr_045_613e:
	and a                                            ; $613e: $a7
	db $fc                                           ; $613f: $fc
	ld hl, sp+$60                                    ; $6140: $f8 $60
	ret nz                                           ; $6142: $c0

	add b                                            ; $6143: $80
	ld bc, $0001                                     ; $6144: $01 $01 $00
	rst GetHLinHL                                          ; $6147: $cf
	cp $6c                                           ; $6148: $fe $6c
	ld c, l                                          ; $614a: $4d
	rlca                                             ; $614b: $07
	inc bc                                           ; $614c: $03
	rlca                                             ; $614d: $07
	ld b, $30                                        ; $614e: $06 $30
	ld bc, $b293                                     ; $6150: $01 $93 $b2
	ld hl, sp-$04                                    ; $6153: $f8 $fc
	ld hl, sp-$7d                                    ; $6155: $f8 $83
	ld sp, hl                                        ; $6157: $f9

jr_045_6158:
	sbc e                                            ; $6158: $9b
	pop af                                           ; $6159: $f1
	and h                                            ; $615a: $a4
	db $ec                                           ; $615b: $ec
	rst SubAFromHL                                          ; $615c: $d7
	cp l                                             ; $615d: $bd
	or e                                             ; $615e: $b3
	xor a                                            ; $615f: $af
	ld h, [hl]                                       ; $6160: $66
	ld c, $5e                                        ; $6161: $0e $5e
	ld d, $2c                                        ; $6163: $16 $2c
	ld a, b                                          ; $6165: $78
	ld a, b                                          ; $6166: $78
	ld [hl], b                                       ; $6167: $70
	rst $38                                          ; $6168: $ff
	rst $38                                          ; $6169: $ff
	rst GetHLinHL                                          ; $616a: $cf
	rst AddAOntoHL                                          ; $616b: $ef
	inc sp                                           ; $616c: $33
	add a                                            ; $616d: $87
	and $c9                                          ; $616e: $e6 $c9
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	jr nc, jr_045_61ed                               ; $6172: $30 $79

	ldh a, [c]                                       ; $6174: $f2
	sub c                                            ; $6175: $91
	add hl, de                                       ; $6176: $19
	jr nc, jr_045_6158                               ; $6177: $30 $df

	rst GetHLinHL                                          ; $6179: $cf
	rst FarCall                                          ; $617a: $f7
	adc a                                            ; $617b: $8f
	rst SubAFromBC                                          ; $617c: $e7
	adc b                                            ; $617d: $88
	rst GetHLinHL                                          ; $617e: $cf
	ld a, b                                          ; $617f: $78
	jr nz, jr_045_61b2                               ; $6180: $20 $30

	ld [$7b78], sp                                   ; $6182: $08 $78 $7b
	dec l                                            ; $6185: $2d
	sub c                                            ; $6186: $91
	add [hl]                                         ; $6187: $86
	sub c                                            ; $6188: $91
	sub c                                            ; $6189: $91
	adc b                                            ; $618a: $88
	adc b                                            ; $618b: $88
	and b                                            ; $618c: $a0
	add hl, sp                                       ; $618d: $39
	ld hl, $0e2b                                     ; $618e: $21 $2b $0e
	ld c, $17                                        ; $6191: $0e $17
	rla                                              ; $6193: $17
	rra                                              ; $6194: $1f
	sbc $16                                          ; $6195: $de $16
	add b                                            ; $6197: $80
	ld d, b                                          ; $6198: $50
	ld b, b                                          ; $6199: $40
	ld h, a                                          ; $619a: $67
	ld d, [hl]                                       ; $619b: $56
	ld b, [hl]                                       ; $619c: $46
	add hl, sp                                       ; $619d: $39
	dec sp                                           ; $619e: $3b
	ret c                                            ; $619f: $d8

	rst AddAOntoHL                                          ; $61a0: $ef
	rst $38                                          ; $61a1: $ff
	sbc b                                            ; $61a2: $98
	adc c                                            ; $61a3: $89
	sbc c                                            ; $61a4: $99
	ld b, $04                                        ; $61a5: $06 $04
	daa                                              ; $61a7: $27
	ld [$aa5d], a                                    ; $61a8: $ea $5d $aa
	ld d, l                                          ; $61ab: $55
	ld [$8bbf], a                                    ; $61ac: $ea $bf $8b
	dec b                                            ; $61af: $05
	sbc a                                            ; $61b0: $9f
	db $e3                                           ; $61b1: $e3

jr_045_61b2:
	rst $38                                          ; $61b2: $ff
	cp a                                             ; $61b3: $bf
	sbc a                                            ; $61b4: $9f
	ld b, b                                          ; $61b5: $40
	ld [hl], h                                       ; $61b6: $74
	sbc c                                            ; $61b7: $99

jr_045_61b8:
	ld a, [$0f3f]                                    ; $61b8: $fa $3f $0f
	nop                                              ; $61bb: $00
	ld b, b                                          ; $61bc: $40
	rst SubAFromBC                                          ; $61bd: $e7
	ld a, d                                          ; $61be: $7a
	add $90                                          ; $61bf: $c6 $90
	ret nz                                           ; $61c1: $c0

	ldh a, [rIE]                                     ; $61c2: $f0 $ff
	rst $38                                          ; $61c4: $ff
	cp b                                             ; $61c5: $b8
	inc bc                                           ; $61c6: $03
	nop                                              ; $61c7: $00
	add b                                            ; $61c8: $80
	rst $38                                          ; $61c9: $ff
	ld sp, hl                                        ; $61ca: $f9
	inc bc                                           ; $61cb: $03
	sbc c                                            ; $61cc: $99
	rst $38                                          ; $61cd: $ff
	rlca                                             ; $61ce: $07
	or e                                             ; $61cf: $b3
	ld a, d                                          ; $61d0: $7a
	add $93                                          ; $61d1: $c6 $93
	db $fc                                           ; $61d3: $fc
	ld h, [hl]                                       ; $61d4: $66
	nop                                              ; $61d5: $00
	ld hl, sp+$4c                                    ; $61d6: $f8 $4c
	nop                                              ; $61d8: $00
	ld [$3ed5], a                                    ; $61d9: $ea $d5 $3e
	rst SubAFromDE                                          ; $61dc: $df
	rst $38                                          ; $61dd: $ff
	rst GetHLinHL                                          ; $61de: $cf
	ld a, d                                          ; $61df: $7a
	xor l                                            ; $61e0: $ad
	ld a, [hl]                                       ; $61e1: $7e
	ld d, $92                                        ; $61e2: $16 $92
	jr nz, jr_045_61e6                               ; $61e4: $20 $00

jr_045_61e6:
	jr nc, jr_045_61e8                               ; $61e6: $30 $00

jr_045_61e8:
	nop                                              ; $61e8: $00
	ld e, l                                          ; $61e9: $5d
	ld a, [hl+]                                      ; $61ea: $2a
	add b                                            ; $61eb: $80
	ld b, b                                          ; $61ec: $40

jr_045_61ed:
	push af                                          ; $61ed: $f5
	add d                                            ; $61ee: $82
	push af                                          ; $61ef: $f5
	ld [$94fc], a                                    ; $61f0: $ea $fc $94
	ld a, h                                          ; $61f3: $7c
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	ld d, l                                          ; $61f6: $55
	xor e                                            ; $61f7: $ab
	dec b                                            ; $61f8: $05
	ld a, [hl+]                                      ; $61f9: $2a
	ld d, b                                          ; $61fa: $50
	xor d                                            ; $61fb: $aa
	ld d, l                                          ; $61fc: $55
	and b                                            ; $61fd: $a0
	ld sp, hl                                        ; $61fe: $f9
	sbc l                                            ; $61ff: $9d
	rst FarCall                                          ; $6200: $f7
	ld [$f47b], a                                    ; $6201: $ea $7b $f4
	sbc l                                            ; $6204: $9d
	add b                                            ; $6205: $80
	ld d, b                                          ; $6206: $50
	ld hl, sp-$65                                    ; $6207: $f8 $9b
	rst $38                                          ; $6209: $ff
	xor a                                            ; $620a: $af
	ld d, l                                          ; $620b: $55
	ld a, [bc]                                       ; $620c: $0a
	ld h, a                                          ; $620d: $67
	db $e3                                           ; $620e: $e3
	halt                                             ; $620f: $76
	sbc h                                            ; $6210: $9c
	sbc d                                            ; $6211: $9a
	rst $38                                          ; $6212: $ff
	add b                                            ; $6213: $80

Jump_045_6214:
	ld b, e                                          ; $6214: $43
	xor h                                            ; $6215: $ac
	ld [bc], a                                       ; $6216: $02
	db $fd                                           ; $6217: $fd
	sbc l                                            ; $6218: $9d
	ccf                                              ; $6219: $3f
	inc e                                            ; $621a: $1c
	db $fc                                           ; $621b: $fc
	ld a, l                                          ; $621c: $7d
	and h                                            ; $621d: $a4
	sub h                                            ; $621e: $94
	cp $1b                                           ; $621f: $fe $1b
	pop bc                                           ; $6221: $c1
	ld d, l                                          ; $6222: $55
	ld a, [bc]                                       ; $6223: $0a
	nop                                              ; $6224: $00
	rrca                                             ; $6225: $0f
	cp a                                             ; $6226: $bf
	ld bc, $3e04                                     ; $6227: $01 $04 $3e
	ld [hl], d                                       ; $622a: $72
	ld l, l                                          ; $622b: $6d
	sub a                                            ; $622c: $97
	rra                                              ; $622d: $1f
	rst SubAFromDE                                          ; $622e: $df
	rst $38                                          ; $622f: $ff
	ld d, l                                          ; $6230: $55
	xor d                                            ; $6231: $aa
	dec d                                            ; $6232: $15
	rst $38                                          ; $6233: $ff
	rst $38                                          ; $6234: $ff
	ld l, l                                          ; $6235: $6d
	jr nz, jr_045_61b8                               ; $6236: $20 $80

	add h                                            ; $6238: $84
	add b                                            ; $6239: $80
	ld bc, $9ced                                     ; $623a: $01 $ed $9c
	ld a, [hl]                                       ; $623d: $7e
	db $fc                                           ; $623e: $fc
	ld d, e                                          ; $623f: $53
	ld a, a                                          ; $6240: $7f
	ld a, a                                          ; $6241: $7f
	cp $12                                           ; $6242: $fe $12
	inc bc                                           ; $6244: $03
	ld bc, $0403                                     ; $6245: $01 $03 $04
	add hl, bc                                       ; $6248: $09
	dec l                                            ; $6249: $2d
	sbc h                                            ; $624a: $9c
	db $e4                                           ; $624b: $e4
	ld l, c                                          ; $624c: $69
	nop                                              ; $624d: $00
	add l                                            ; $624e: $85
	reti                                             ; $624f: $d9


	or $f2                                           ; $6250: $f6 $f2
	ld h, b                                          ; $6252: $60
	jr @-$6e                                         ; $6253: $18 $90

	ld sp, hl                                        ; $6255: $f9
	ld a, b                                          ; $6256: $78
	add b                                            ; $6257: $80
	jr nz, jr_045_6270                               ; $6258: $20 $16

	cpl                                              ; $625a: $2f
	dec hl                                           ; $625b: $2b
	db $e3                                           ; $625c: $e3
	ld sp, hl                                        ; $625d: $f9
	add hl, sp                                       ; $625e: $39
	ld bc, $01e1                                     ; $625f: $01 $e1 $01
	db $10                                           ; $6262: $10
	db $10                                           ; $6263: $10
	inc e                                            ; $6264: $1c
	ld b, $c6                                        ; $6265: $06 $c6
	cp $1e                                           ; $6267: $fe $1e
	ld b, $c4                                        ; $6269: $06 $c4
	cp b                                             ; $626b: $b8
	ld a, [$c4f0]                                    ; $626c: $fa $f0 $c4
	add a                                            ; $626f: $87

jr_045_6270:
	rlca                                             ; $6270: $07
	ld sp, hl                                        ; $6271: $f9
	dec sp                                           ; $6272: $3b
	ld b, a                                          ; $6273: $47
	dec b                                            ; $6274: $05
	rrca                                             ; $6275: $0f
	dec sp                                           ; $6276: $3b
	adc b                                            ; $6277: $88
	ld a, b                                          ; $6278: $78
	ld hl, sp+$34                                    ; $6279: $f8 $34
	db $10                                           ; $627b: $10
	ld hl, $be81                                     ; $627c: $21 $81 $be
	inc de                                           ; $627f: $13
	push bc                                          ; $6280: $c5
	jp $f8f8                                         ; $6281: $c3 $f8 $f8


	ret c                                            ; $6284: $d8

	db $fc                                           ; $6285: $fc
	call nz, $3aec                                   ; $6286: $c4 $ec $3a
	ld a, $aa                                        ; $6289: $3e $aa
	ld b, b                                          ; $628b: $40
	adc b                                            ; $628c: $88
	ld d, l                                          ; $628d: $55
	xor b                                            ; $628e: $a8
	ld a, c                                          ; $628f: $79
	cp h                                             ; $6290: $bc
	adc d                                            ; $6291: $8a
	ld b, h                                          ; $6292: $44
	rra                                              ; $6293: $1f
	ld [hl], d                                       ; $6294: $72
	add b                                            ; $6295: $80
	ld b, $08                                        ; $6296: $06 $08
	ld bc, $2200                                     ; $6298: $01 $00 $22
	dec d                                            ; $629b: $15
	and d                                            ; $629c: $a2
	ld d, l                                          ; $629d: $55
	adc b                                            ; $629e: $88
	ld d, b                                          ; $629f: $50
	xor d                                            ; $62a0: $aa
	ld d, h                                          ; $62a1: $54
	call z, $08e8                                    ; $62a2: $cc $e8 $08
	ld [$7873], sp                                   ; $62a5: $08 $73 $78
	ld [hl], d                                       ; $62a8: $72
	add b                                            ; $62a9: $80
	add b                                            ; $62aa: $80
	ld b, c                                          ; $62ab: $41
	add b                                            ; $62ac: $80
	ld d, l                                          ; $62ad: $55
	nop                                              ; $62ae: $00
	ld d, b                                          ; $62af: $50
	jr z, jr_045_6307                                ; $62b0: $28 $55

	ccf                                              ; $62b2: $3f
	inc a                                            ; $62b3: $3c
	ccf                                              ; $62b4: $3f
	add d                                            ; $62b5: $82
	ld a, [$8387]                                    ; $62b6: $fa $87 $83
	xor b                                            ; $62b9: $a8
	add b                                            ; $62ba: $80
	db $10                                           ; $62bb: $10
	ld a, [bc]                                       ; $62bc: $0a
	inc d                                            ; $62bd: $14
	add b                                            ; $62be: $80
	ld bc, $1588                                     ; $62bf: $01 $88 $15
	ld a, a                                          ; $62c2: $7f
	ld b, a                                          ; $62c3: $47
	ldh a, [$63]                                     ; $62c4: $f0 $63
	ld a, a                                          ; $62c6: $7f
	ld e, h                                          ; $62c7: $5c
	halt                                             ; $62c8: $76
	sub [hl]                                         ; $62c9: $96
	ldh [rIE], a                                     ; $62ca: $e0 $ff
	call nz, $9b02                                   ; $62cc: $c4 $02 $9b
	dec b                                            ; $62cf: $05
	dec sp                                           ; $62d0: $3b
	ret z                                            ; $62d1: $c8

	ld bc, $ffde                                     ; $62d2: $01 $de $ff
	add b                                            ; $62d5: $80
	and $f8                                          ; $62d6: $e6 $f8
	call nz, $ff37                                   ; $62d8: $c4 $37 $ff
	push af                                          ; $62db: $f5
	dec bc                                           ; $62dc: $0b
	add b                                            ; $62dd: $80
	inc c                                            ; $62de: $0c
	adc b                                            ; $62df: $88
	ld [hl], c                                       ; $62e0: $71
	dec d                                            ; $62e1: $15
	ld h, [hl]                                       ; $62e2: $66
	ld a, [$7ff4]                                    ; $62e3: $fa $f4 $7f
	di                                               ; $62e6: $f3
	ld h, a                                          ; $62e7: $67
	adc [hl]                                         ; $62e8: $8e
	ld hl, sp-$07                                    ; $62e9: $f8 $f9
	ld d, l                                          ; $62eb: $55
	xor d                                            ; $62ec: $aa
	ld c, l                                          ; $62ed: $4d
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	add hl, sp                                       ; $62f0: $39
	sbc a                                            ; $62f1: $9f
	add h                                            ; $62f2: $84
	xor d                                            ; $62f3: $aa
	ld d, l                                          ; $62f4: $55
	adc h                                            ; $62f5: $8c
	or d                                             ; $62f6: $b2
	rst $38                                          ; $62f7: $ff
	rst $38                                          ; $62f8: $ff
	add $60                                          ; $62f9: $c6 $60
	ld a, e                                          ; $62fb: $7b
	add d                                            ; $62fc: $82
	pop de                                           ; $62fd: $d1
	rst $38                                          ; $62fe: $ff
	and c                                            ; $62ff: $a1
	inc bc                                           ; $6300: $03
	ldh a, [$fc]                                     ; $6301: $f0 $fc
	ld b, $7d                                        ; $6303: $06 $7d
	ld l, $00                                        ; $6305: $2e $00

jr_045_6307:
	ld e, a                                          ; $6307: $5f
	db $fc                                           ; $6308: $fc
	ld a, c                                          ; $6309: $79
	call $8fdf                                       ; $630a: $cd $df $8f
	sbc h                                            ; $630d: $9c
	ld b, l                                          ; $630e: $45
	ret nz                                           ; $630f: $c0

	jr nz, jr_045_638c                               ; $6310: $20 $7a

	rst $38                                          ; $6312: $ff
	sub l                                            ; $6313: $95
	ldh a, [rSVBK]                                   ; $6314: $f0 $70
	ld hl, sp-$08                                    ; $6316: $f8 $f8
	add a                                            ; $6318: $87
	nop                                              ; $6319: $00
	jr nz, jr_045_637f                               ; $631a: $20 $63

	rst $38                                          ; $631c: $ff
	cp $7b                                           ; $631d: $fe $7b
	inc de                                           ; $631f: $13
	ld a, [hl]                                       ; $6320: $7e
	rst GetHLinHL                                          ; $6321: $cf
	db $fc                                           ; $6322: $fc
	ld a, l                                          ; $6323: $7d
	ld [hl], d                                       ; $6324: $72
	ld a, [hl]                                       ; $6325: $7e
	sbc e                                            ; $6326: $9b
	ld a, d                                          ; $6327: $7a
	ret nc                                           ; $6328: $d0

	sbc l                                            ; $6329: $9d
	and d                                            ; $632a: $a2
	inc d                                            ; $632b: $14
	ld l, a                                          ; $632c: $6f
	pop af                                           ; $632d: $f1
	ld [hl], c                                       ; $632e: $71
	ld e, [hl]                                       ; $632f: $5e
	ld a, l                                          ; $6330: $7d
	and a                                            ; $6331: $a7
	ld a, a                                          ; $6332: $7f
	ldh [$fc], a                                     ; $6333: $e0 $fc
	ld a, b                                          ; $6335: $78
	jp nc, $019d                                     ; $6336: $d2 $9d $01

	rra                                              ; $6339: $1f
	ld a, d                                          ; $633a: $7a
	sub b                                            ; $633b: $90
	sbc d                                            ; $633c: $9a
	ld [bc], a                                       ; $633d: $02
	ld d, l                                          ; $633e: $55
	xor d                                            ; $633f: $aa
	pop bc                                           ; $6340: $c1
	add $7b                                          ; $6341: $c6 $7b
	sub $fe                                          ; $6343: $d6 $fe
	ld a, l                                          ; $6345: $7d
	pop hl                                           ; $6346: $e1
	ld a, e                                          ; $6347: $7b
	ldh [$8e], a                                     ; $6348: $e0 $8e
	ei                                               ; $634a: $fb
	ld d, c                                          ; $634b: $51
	xor d                                            ; $634c: $aa
	ld d, l                                          ; $634d: $55
	and h                                            ; $634e: $a4
	ld bc, $0026                                     ; $634f: $01 $26 $00
	inc b                                            ; $6352: $04
	inc b                                            ; $6353: $04
	stop                                             ; $6354: $10 $00
	ld [$017f], sp                                   ; $6356: $08 $7f $01
	dec b                                            ; $6359: $05
	ld a, [hl-]                                      ; $635a: $3a
	ld a, e                                          ; $635b: $7b
	inc hl                                           ; $635c: $23
	sbc d                                            ; $635d: $9a
	ld a, a                                          ; $635e: $7f
	rst SubAFromDE                                          ; $635f: $df
	rla                                              ; $6360: $17
	ld a, [$7af9]                                    ; $6361: $fa $f9 $7a
	adc d                                            ; $6364: $8a
	sub d                                            ; $6365: $92
	inc c                                            ; $6366: $0c
	rst $38                                          ; $6367: $ff
	rst $38                                          ; $6368: $ff
	and d                                            ; $6369: $a2
	ld b, h                                          ; $636a: $44
	adc b                                            ; $636b: $88
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	inc hl                                           ; $636e: $23
	ld b, $04                                        ; $636f: $06 $04
	nop                                              ; $6371: $00
	ld [$bf7b], sp                                   ; $6372: $08 $7b $bf
	sub l                                            ; $6375: $95
	inc e                                            ; $6376: $1c
	rst $38                                          ; $6377: $ff
	rst $38                                          ; $6378: $ff
	inc bc                                           ; $6379: $03
	rrca                                             ; $637a: $0f
	ld sp, $c221                                     ; $637b: $31 $21 $c2
	nop                                              ; $637e: $00

jr_045_637f:
	ld h, d                                          ; $637f: $62
	cp $8e                                           ; $6380: $fe $8e
	ld c, $1e                                        ; $6382: $0e $1e
	inc a                                            ; $6384: $3c
	ld hl, sp-$64                                    ; $6385: $f8 $9c

jr_045_6387:
	rra                                              ; $6387: $1f
	ld d, e                                          ; $6388: $53
	db $e3                                           ; $6389: $e3
	ld d, $7a                                        ; $638a: $16 $7a

jr_045_638c:
	ld c, a                                          ; $638c: $4f
	dec de                                           ; $638d: $1b
	nop                                              ; $638e: $00
	jp $1c0c                                         ; $638f: $c3 $0c $1c


	add hl, sp                                       ; $6392: $39
	ld [hl], l                                       ; $6393: $75
	ld e, $93                                        ; $6394: $1e $93
	nop                                              ; $6396: $00
	adc b                                            ; $6397: $88
	ret c                                            ; $6398: $d8

	ld hl, sp-$41                                    ; $6399: $f8 $bf
	ei                                               ; $639b: $fb
	cp a                                             ; $639c: $bf
	ld hl, sp-$02                                    ; $639d: $f8 $fe
	ld [hl], b                                       ; $639f: $70
	jr nc, jr_045_63d6                               ; $63a0: $30 $34

	ld [hl], e                                       ; $63a2: $73
	sbc e                                            ; $63a3: $9b
	add l                                            ; $63a4: $85
	add c                                            ; $63a5: $81
	rst AddAOntoHL                                          ; $63a6: $ef
	inc sp                                           ; $63a7: $33
	sub d                                            ; $63a8: $92
	or a                                             ; $63a9: $b7
	inc sp                                           ; $63aa: $33
	inc b                                            ; $63ab: $04
	sbc b                                            ; $63ac: $98
	ld a, [hl]                                       ; $63ad: $7e
	db $10                                           ; $63ae: $10
	call z, Call_045_48ec                            ; $63af: $cc $ec $48
	ld bc, $0400                                     ; $63b2: $01 $00 $04
	ld l, $50                                        ; $63b5: $2e $50
	dec [hl]                                         ; $63b7: $35
	ld a, [de]                                       ; $63b8: $1a
	dec b                                            ; $63b9: $05
	ld b, l                                          ; $63ba: $45
	inc h                                            ; $63bb: $24
	adc b                                            ; $63bc: $88
	pop de                                           ; $63bd: $d1
	and e                                            ; $63be: $a3
	sbc $ff                                          ; $63bf: $de $ff
	add b                                            ; $63c1: $80
	cp e                                             ; $63c2: $bb
	di                                               ; $63c3: $f3
	ld a, a                                          ; $63c4: $7f
	ld [de], a                                       ; $63c5: $12
	add h                                            ; $63c6: $84
	ld b, d                                          ; $63c7: $42
	xor c                                            ; $63c8: $a9
	ld d, h                                          ; $63c9: $54
	add b                                            ; $63ca: $80
	ld b, $18                                        ; $63cb: $06 $18
	adc l                                            ; $63cd: $8d
	dec sp                                           ; $63ce: $3b
	rst $38                                          ; $63cf: $ff
	rst $38                                          ; $63d0: $ff
	cp $f8                                           ; $63d1: $fe $f8
	ld sp, hl                                        ; $63d3: $f9
	rst $38                                          ; $63d4: $ff
	cp c                                             ; $63d5: $b9

jr_045_63d6:
	ld b, h                                          ; $63d6: $44
	ld [bc], a                                       ; $63d7: $02
	inc a                                            ; $63d8: $3c
	ld a, [de]                                       ; $63d9: $1a
	and d                                            ; $63da: $a2
	ld hl, $74f4                                     ; $63db: $21 $f4 $74
	rst $38                                          ; $63de: $ff
	db $fc                                           ; $63df: $fc
	cp $86                                           ; $63e0: $fe $86
	rst SubAFromBC                                          ; $63e2: $e7
	ld b, c                                          ; $63e3: $41
	call c, Call_045_6f0f                            ; $63e4: $dc $0f $6f
	ld d, a                                          ; $63e7: $57
	ld [$dcc6], sp                                   ; $63e8: $08 $c6 $dc
	ret c                                            ; $63eb: $d8

	jr c, jr_045_6387                                ; $63ec: $38 $99

	sub a                                            ; $63ee: $97
	ccf                                              ; $63ef: $3f
	ld [hl], a                                       ; $63f0: $77
	ld a, b                                          ; $63f1: $78
	db $e3                                           ; $63f2: $e3
	add a                                            ; $63f3: $87
	add b                                            ; $63f4: $80
	ld a, [hl]                                       ; $63f5: $7e
	ei                                               ; $63f6: $fb
	ldh a, [$3c]                                     ; $63f7: $f0 $3c
	inc b                                            ; $63f9: $04
	ldh [$79], a                                     ; $63fa: $e0 $79
	ld b, $dc                                        ; $63fc: $06 $dc
	rst $38                                          ; $63fe: $ff
	sub l                                            ; $63ff: $95
	ldh [$e1], a                                     ; $6400: $e0 $e1
	ldh a, [$ef]                                     ; $6402: $f0 $ef
	rst $38                                          ; $6404: $ff
	sub e                                            ; $6405: $93
	ld [hl], e                                       ; $6406: $73
	ld h, d                                          ; $6407: $62
	ld bc, $7342                                     ; $6408: $01 $42 $73
	ldh a, [$9a]                                     ; $640b: $f0 $9a
	db $fd                                           ; $640d: $fd
	ld e, h                                          ; $640e: $5c
	db $fc                                           ; $640f: $fc
	rlca                                             ; $6410: $07
	ld sp, hl                                        ; $6411: $f9
	ld a, e                                          ; $6412: $7b
	ld e, l                                          ; $6413: $5d
	sbc l                                            ; $6414: $9d
	ld b, b                                          ; $6415: $40
	xor b                                            ; $6416: $a8
	ld a, e                                          ; $6417: $7b
	jr z, @-$20                                      ; $6418: $28 $de

	rst $38                                          ; $641a: $ff
	sub c                                            ; $641b: $91
	cp a                                             ; $641c: $bf
	rla                                              ; $641d: $17
	nop                                              ; $641e: $00
	ret nz                                           ; $641f: $c0

	adc b                                            ; $6420: $88
	add sp, -$04                                     ; $6421: $e8 $fc
	rst $38                                          ; $6423: $ff
	cp $e5                                           ; $6424: $fe $e5
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	or $df                                           ; $6428: $f6 $df
	sbc $ff                                          ; $642a: $de $ff
	sbc [hl]                                         ; $642c: $9e
	cp $fd                                           ; $642d: $fe $fd
	sub [hl]                                         ; $642f: $96
	ret nz                                           ; $6430: $c0

	reti                                             ; $6431: $d9


	rst $38                                          ; $6432: $ff
	jr nz, jr_045_6435                               ; $6433: $20 $00

jr_045_6435:
	nop                                              ; $6435: $00
	rlca                                             ; $6436: $07
	xor $ff                                          ; $6437: $ee $ff
	ld a, b                                          ; $6439: $78
	ld h, [hl]                                       ; $643a: $66
	ld [hl], d                                       ; $643b: $72
	jp hl                                            ; $643c: $e9


	sbc [hl]                                         ; $643d: $9e
	ld d, $76                                        ; $643e: $16 $76
	rst SubAFromHL                                          ; $6440: $d7
	ld a, a                                          ; $6441: $7f
	xor h                                            ; $6442: $ac
	sbc e                                            ; $6443: $9b
	add b                                            ; $6444: $80
	add sp, -$20                                     ; $6445: $e8 $e0
	ld b, $7a                                        ; $6447: $06 $7a
	or a                                             ; $6449: $b7
	sbc h                                            ; $644a: $9c
	ld de, $0938                                     ; $644b: $11 $38 $09
	ld [hl], e                                       ; $644e: $73
	scf                                              ; $644f: $37
	ld a, a                                          ; $6450: $7f
	sbc $7f                                          ; $6451: $de $7f
	ldh a, [c]                                       ; $6453: $f2
	sbc b                                            ; $6454: $98
	rrca                                             ; $6455: $0f
	inc c                                            ; $6456: $0c
	nop                                              ; $6457: $00
	nop                                              ; $6458: $00
	jr nz, jr_045_6478                               ; $6459: $20 $1d

	rrca                                             ; $645b: $0f
	ei                                               ; $645c: $fb
	ld a, c                                          ; $645d: $79
	or b                                             ; $645e: $b0
	sbc [hl]                                         ; $645f: $9e
	ldh [c], a                                       ; $6460: $e2
	cp $9c                                           ; $6461: $fe $9c
	and b                                            ; $6463: $a0
	jp hl                                            ; $6464: $e9


	ei                                               ; $6465: $fb
	ld a, b                                          ; $6466: $78
	rst JumpTable                                          ; $6467: $c7
	cp $9c                                           ; $6468: $fe $9c
	ld de, $0007                                     ; $646a: $11 $07 $00
	ld a, e                                          ; $646d: $7b
	rst SubAFromHL                                          ; $646e: $d7
	sbc e                                            ; $646f: $9b
	sbc b                                            ; $6470: $98
	nop                                              ; $6471: $00
	call z, $fbdc                                    ; $6472: $cc $dc $fb

Call_045_6475:
	sbc l                                            ; $6475: $9d
	or b                                             ; $6476: $b0
	cp a                                             ; $6477: $bf

jr_045_6478:
	ld [hl], a                                       ; $6478: $77
	rst SubAFromHL                                          ; $6479: $d7
	sbc h                                            ; $647a: $9c
	ld [bc], a                                       ; $647b: $02
	inc bc                                           ; $647c: $03
	inc bc                                           ; $647d: $03
	ld l, d                                          ; $647e: $6a
	sub c                                            ; $647f: $91
	rst SubAFromDE                                          ; $6480: $df
	inc bc                                           ; $6481: $03
	sbc c                                            ; $6482: $99
	rst $38                                          ; $6483: $ff
	ld a, b                                          ; $6484: $78
	dec b                                            ; $6485: $05
	ld a, e                                          ; $6486: $7b
	ld b, $80                                        ; $6487: $06 $80
	halt                                             ; $6489: $76
	ld sp, hl                                        ; $648a: $f9
	sub h                                            ; $648b: $94
	inc b                                            ; $648c: $04
	rra                                              ; $648d: $1f
	rrca                                             ; $648e: $0f
	ld h, b                                          ; $648f: $60
	ldh a, [$8e]                                     ; $6490: $f0 $8e

jr_045_6492:
	adc h                                            ; $6492: $8c
	ld a, b                                          ; $6493: $78
	adc [hl]                                         ; $6494: $8e
	rst $38                                          ; $6495: $ff
	add hl, bc                                       ; $6496: $09
	ld [hl], h                                       ; $6497: $74
	adc c                                            ; $6498: $89
	rst $38                                          ; $6499: $ff
	sub a                                            ; $649a: $97
	inc bc                                           ; $649b: $03
	rst SubAFromDE                                          ; $649c: $df
	jr nc, jr_045_64db                               ; $649d: $30 $3c

	daa                                              ; $649f: $27
	rla                                              ; $64a0: $17
	ld [$7773], sp                                   ; $64a1: $08 $73 $77
	ld [hl], l                                       ; $64a4: $75
	ld [hl], e                                       ; $64a5: $73
	ld a, e                                          ; $64a6: $7b
	sbc l                                            ; $64a7: $9d
	rst $38                                          ; $64a8: $ff
	rra                                              ; $64a9: $1f
	ld l, a                                          ; $64aa: $6f
	dec l                                            ; $64ab: $2d
	adc a                                            ; $64ac: $8f
	rrca                                             ; $64ad: $0f
	ld bc, $7f33                                     ; $64ae: $01 $33 $7f
	nop                                              ; $64b1: $00
	ld bc, $0002                                     ; $64b2: $01 $02 $00
	rst $38                                          ; $64b5: $ff
	rst SubAFromDE                                          ; $64b6: $df
	ld a, a                                          ; $64b7: $7f
	rst $38                                          ; $64b8: $ff
	rst $38                                          ; $64b9: $ff
	rst SubAFromDE                                          ; $64ba: $df
	db $fd                                           ; $64bb: $fd
	ldh [$de], a                                     ; $64bc: $e0 $de
	rst $38                                          ; $64be: $ff
	ld a, [hl]                                       ; $64bf: $7e
	ld [hl], a                                       ; $64c0: $77
	ld a, [hl]                                       ; $64c1: $7e
	ld l, l                                          ; $64c2: $6d
	sbc [hl]                                         ; $64c3: $9e
	ld b, l                                          ; $64c4: $45
	call c, Call_045_7eff                            ; $64c5: $dc $ff $7e
	ld h, [hl]                                       ; $64c8: $66
	add b                                            ; $64c9: $80
	ld [bc], a                                       ; $64ca: $02
	adc l                                            ; $64cb: $8d
	ld [bc], a                                       ; $64cc: $02
	and [hl]                                         ; $64cd: $a6
	ld b, b                                          ; $64ce: $40
	ld hl, sp+$5b                                    ; $64cf: $f8 $5b
	rst $38                                          ; $64d1: $ff
	ld e, a                                          ; $64d2: $5f
	ldh a, [$fd]                                     ; $64d3: $f0 $fd
	ld e, c                                          ; $64d5: $59
	cp a                                             ; $64d6: $bf
	rlca                                             ; $64d7: $07
	and h                                            ; $64d8: $a4
	nop                                              ; $64d9: $00
	add b                                            ; $64da: $80

jr_045_64db:
	ld [$3880], sp                                   ; $64db: $08 $80 $38
	rra                                              ; $64de: $1f
	rst SubAFromDE                                          ; $64df: $df
	jr nz, jr_045_6492                               ; $64e0: $20 $b0

	rst $38                                          ; $64e2: $ff
	rst $38                                          ; $64e3: $ff
	ld a, a                                          ; $64e4: $7f
	rst JumpTable                                          ; $64e5: $c7
	ldh [rAUD4LEN], a                                ; $64e6: $e0 $20
	rst SubAFromDE                                          ; $64e8: $df
	add b                                            ; $64e9: $80
	ld c, a                                          ; $64ea: $4f
	nop                                              ; $64eb: $00
	rrca                                             ; $64ec: $0f
	ld b, b                                          ; $64ed: $40
	add c                                            ; $64ee: $81
	ld a, [hl-]                                      ; $64ef: $3a
	push bc                                          ; $64f0: $c5
	ld c, a                                          ; $64f1: $4f
	ld [hl], c                                       ; $64f2: $71
	rst $38                                          ; $64f3: $ff
	rst $38                                          ; $64f4: $ff
	db $fc                                           ; $64f5: $fc
	nop                                              ; $64f6: $00
	ld bc, $b33a                                     ; $64f7: $01 $3a $b3
	adc [hl]                                         ; $64fa: $8e
	nop                                              ; $64fb: $00
	ld [hl], a                                       ; $64fc: $77
	add sp, -$7a                                     ; $64fd: $e8 $86
	cpl                                              ; $64ff: $2f
	db $fc                                           ; $6500: $fc
	ld d, c                                          ; $6501: $51
	add c                                            ; $6502: $81
	push bc                                          ; $6503: $c5
	ei                                               ; $6504: $fb
	halt                                             ; $6505: $76
	rst $38                                          ; $6506: $ff
	cp $08                                           ; $6507: $fe $08
	sbc e                                            ; $6509: $9b
	or c                                             ; $650a: $b1
	ld h, e                                          ; $650b: $63
	rrca                                             ; $650c: $0f
	and b                                            ; $650d: $a0
	ld l, [hl]                                       ; $650e: $6e
	ei                                               ; $650f: $fb
	ld a, c                                          ; $6510: $79
	rst SubAFromHL                                          ; $6511: $d7
	sbc c                                            ; $6512: $99
	rst $38                                          ; $6513: $ff
	ld e, $00                                        ; $6514: $1e $00
	nop                                              ; $6516: $00
	ld b, c                                          ; $6517: $41
	db $e4                                           ; $6518: $e4
	ld l, h                                          ; $6519: $6c
	xor d                                            ; $651a: $aa
	cp $9c                                           ; $651b: $fe $9c
	add b                                            ; $651d: $80
	ldh a, [c]                                       ; $651e: $f2
	ld a, b                                          ; $651f: $78
	ld a, b                                          ; $6520: $78
	or d                                             ; $6521: $b2
	ld a, d                                          ; $6522: $7a
	inc de                                           ; $6523: $13
	ei                                               ; $6524: $fb
	ld a, a                                          ; $6525: $7f
	inc bc                                           ; $6526: $03
	ld l, l                                          ; $6527: $6d
	call c, $9ef6                                    ; $6528: $dc $f6 $9e
	ld a, [de]                                       ; $652b: $1a
	push af                                          ; $652c: $f5
	ld l, [hl]                                       ; $652d: $6e
	call c, Call_045_7ff7                            ; $652e: $dc $f7 $7f
	sub [hl]                                         ; $6531: $96
	di                                               ; $6532: $f3
	ld l, e                                          ; $6533: $6b
	xor d                                            ; $6534: $aa
	ldh [$d0], a                                     ; $6535: $e0 $d0
	sbc l                                            ; $6537: $9d
	inc bc                                           ; $6538: $03
	ld b, $fb                                        ; $6539: $06 $fb
	sbc [hl]                                         ; $653b: $9e
	rlca                                             ; $653c: $07
	ld a, c                                          ; $653d: $79
	ld d, h                                          ; $653e: $54
	ld [hl], c                                       ; $653f: $71
	ld b, b                                          ; $6540: $40
	ld a, [$5476]                                    ; $6541: $fa $76 $54
	db $fd                                           ; $6544: $fd
	ld a, d                                          ; $6545: $7a
	ld l, [hl]                                       ; $6546: $6e
	ld d, e                                          ; $6547: $53
	ldh a, [$f9]                                     ; $6548: $f0 $f9
	sbc l                                            ; $654a: $9d
	rst $38                                          ; $654b: $ff
	ld a, h                                          ; $654c: $7c
	di                                               ; $654d: $f3
	ld a, d                                          ; $654e: $7a
	ld d, d                                          ; $654f: $52
	ld a, [hl]                                       ; $6550: $7e
	ld [hl], h                                       ; $6551: $74
	ld a, [hl]                                       ; $6552: $7e
	ld e, [hl]                                       ; $6553: $5e
	ld a, a                                          ; $6554: $7f
	db $fc                                           ; $6555: $fc
	ld a, [$199b]                                    ; $6556: $fa $9b $19
	nop                                              ; $6559: $00
	inc b                                            ; $655a: $04
	rlca                                             ; $655b: $07
	ld [hl], b                                       ; $655c: $70
	jp hl                                            ; $655d: $e9


	sbc l                                            ; $655e: $9d
	inc bc                                           ; $655f: $03
	rst JumpTable                                          ; $6560: $c7
	db $fc                                           ; $6561: $fc
	sbc [hl]                                         ; $6562: $9e
	ccf                                              ; $6563: $3f
	ld a, d                                          ; $6564: $7a
	and c                                            ; $6565: $a1
	db $fd                                           ; $6566: $fd
	sbc e                                            ; $6567: $9b
	rrca                                             ; $6568: $0f
	cp a                                             ; $6569: $bf
	rst $38                                          ; $656a: $ff
	ld c, [hl]                                       ; $656b: $4e
	ld l, a                                          ; $656c: $6f
	or b                                             ; $656d: $b0
	rst SubAFromDE                                          ; $656e: $df
	rst $38                                          ; $656f: $ff
	ld [hl], a                                       ; $6570: $77
	inc l                                            ; $6571: $2c
	ld a, [hl]                                       ; $6572: $7e
	ret z                                            ; $6573: $c8

	sub a                                            ; $6574: $97
	rst $38                                          ; $6575: $ff
	ld [hl], e                                       ; $6576: $73
	ld b, a                                          ; $6577: $47
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	ld h, h                                          ; $657a: $64
	ret z                                            ; $657b: $c8

	cp a                                             ; $657c: $bf
	sbc $ff                                          ; $657d: $de $ff
	ld a, [hl]                                       ; $657f: $7e
	ld a, [$f67c]                                    ; $6580: $fa $7c $f6
	ld a, e                                          ; $6583: $7b
	rst AddAOntoHL                                          ; $6584: $ef
	ld a, l                                          ; $6585: $7d
	xor [hl]                                         ; $6586: $ae
	sbc h                                            ; $6587: $9c
	ld [$3fff], sp                                   ; $6588: $08 $ff $3f
	db $dd                                           ; $658b: $dd
	rst $38                                          ; $658c: $ff
	ld a, e                                          ; $658d: $7b
	call z, $0030                                   ; $658e: $cc $30 $00
	db $db                                           ; $6591: $db
	inc sp                                           ; $6592: $33
	sbc e                                            ; $6593: $9b
	ld d, e                                          ; $6594: $53
	inc sp                                           ; $6595: $33
	ld d, l                                          ; $6596: $55
	dec [hl]                                         ; $6597: $35
	db $db                                           ; $6598: $db
	inc sp                                           ; $6599: $33
	sbc h                                            ; $659a: $9c
	dec [hl]                                         ; $659b: $35
	ld d, l                                          ; $659c: $55
	ld d, e                                          ; $659d: $53
	reti                                             ; $659e: $d9


	inc sp                                           ; $659f: $33
	ld h, e                                          ; $65a0: $63
	rst FarCall                                          ; $65a1: $f7
	dec sp                                           ; $65a2: $3b
	or $9e                                           ; $65a3: $f6 $9e
	ld d, l                                          ; $65a5: $55
	ld [hl], a                                       ; $65a6: $77
	or $db                                           ; $65a7: $f6 $db
	ld d, l                                          ; $65a9: $55
	sbc [hl]                                         ; $65aa: $9e
	dec [hl]                                         ; $65ab: $35
	ld h, e                                          ; $65ac: $63
	or $77                                           ; $65ad: $f6 $77
	push bc                                          ; $65af: $c5
	rst SubAFromDE                                          ; $65b0: $df
	ld h, [hl]                                       ; $65b1: $66
	sbc $44                                          ; $65b2: $de $44
	sbc l                                            ; $65b4: $9d
	ld b, l                                          ; $65b5: $45
	ld d, e                                          ; $65b6: $53
	ld l, a                                          ; $65b7: $6f
	ld hl, sp-$24                                    ; $65b8: $f8 $dc
	ld b, h                                          ; $65ba: $44
	ld e, a                                          ; $65bb: $5f
	or $df                                           ; $65bc: $f6 $df
	ld b, h                                          ; $65be: $44
	ld a, [hl+]                                      ; $65bf: $2a
	ld [$009d], sp                                   ; $65c0: $08 $9d $00
	rst $38                                          ; $65c3: $ff
	inc bc                                           ; $65c4: $03
	cp $03                                           ; $65c5: $fe $03
	cp $03                                           ; $65c7: $fe $03
	cp $03                                           ; $65c9: $fe $03
	cp $03                                           ; $65cb: $fe $03
	cp $03                                           ; $65cd: $fe $03
	cp $03                                           ; $65cf: $fe $03
	cp $3b                                           ; $65d1: $fe $3b
	cp $9b                                           ; $65d3: $fe $9b
	ld a, a                                          ; $65d5: $7f
	add b                                            ; $65d6: $80
	ld bc, $6700                                     ; $65d7: $01 $00 $67
	db $f4                                           ; $65da: $f4
	sbc b                                            ; $65db: $98
	rrca                                             ; $65dc: $0f
	ldh a, [$35]                                     ; $65dd: $f0 $35
	ret nz                                           ; $65df: $c0

	xor d                                            ; $65e0: $aa
	nop                                              ; $65e1: $00
	ld b, l                                          ; $65e2: $45
	ld [hl], e                                       ; $65e3: $73
	ldh a, [hDisp1_OBP1]                                     ; $65e4: $f0 $94
	inc bc                                           ; $65e6: $03
	db $fc                                           ; $65e7: $fc
	rlca                                             ; $65e8: $07
	ld hl, sp-$18                                    ; $65e9: $f8 $e8
	db $10                                           ; $65eb: $10
	ld d, b                                          ; $65ec: $50
	nop                                              ; $65ed: $00
	and b                                            ; $65ee: $a0
	nop                                              ; $65ef: $00
	ld b, b                                          ; $65f0: $40
	ld a, e                                          ; $65f1: $7b
	ldh a, [$9a]                                     ; $65f2: $f0 $9a
	ld [$d6f7], sp                                   ; $65f4: $08 $f7 $d6
	ld bc, $f702                                     ; $65f7: $01 $02 $f7
	ld [hl], e                                       ; $65fa: $73
	jp nc, $8096                                     ; $65fb: $d2 $96 $80

	ld a, a                                          ; $65fe: $7f
	ld a, b                                          ; $65ff: $78
	rlca                                             ; $6600: $07
	xor a                                            ; $6601: $af
	nop                                              ; $6602: $00
	ld e, a                                          ; $6603: $5f
	nop                                              ; $6604: $00
	cp a                                             ; $6605: $bf
	ld h, e                                          ; $6606: $63
	ret nz                                           ; $6607: $c0

	inc bc                                           ; $6608: $03
	cp $03                                           ; $6609: $fe $03
	cp $03                                           ; $660b: $fe $03
	cp $03                                           ; $660d: $fe $03
	cp $03                                           ; $660f: $fe $03
	cp $03                                           ; $6611: $fe $03
	cp $6f                                           ; $6613: $fe $6f
	cp $95                                           ; $6615: $fe $95
	ld bc, $00fe                                     ; $6617: $01 $fe $00
	cp $02                                           ; $661a: $fe $02
	db $fc                                           ; $661c: $fc
	inc b                                            ; $661d: $04
	ld hl, sp+$08                                    ; $661e: $f8 $08
	ldh a, [rPCM34]                                  ; $6620: $f0 $77
	cp $9d                                           ; $6622: $fe $9d
	ld h, b                                          ; $6624: $60
	add b                                            ; $6625: $80
	ldh [$d5], a                                     ; $6626: $e0 $d5
	add b                                            ; $6628: $80
	cpl                                              ; $6629: $2f
	ret nz                                           ; $662a: $c0

	ld d, h                                          ; $662b: $54
	inc bc                                           ; $662c: $03
	inc l                                            ; $662d: $2c
	inc bc                                           ; $662e: $03
	ld e, h                                          ; $662f: $5c
	inc bc                                           ; $6630: $03
	adc h                                            ; $6631: $8c
	inc bc                                           ; $6632: $03
	inc b                                            ; $6633: $04
	inc bc                                           ; $6634: $03
	xor h                                            ; $6635: $ac
	inc bc                                           ; $6636: $03
	ld e, $61                                        ; $6637: $1e $61
	ld bc, $e700                                     ; $6639: $01 $00 $e7
	nop                                              ; $663c: $00
	cp $01                                           ; $663d: $fe $01
	push de                                          ; $663f: $d5
	ld a, [hl+]                                      ; $6640: $2a
	xor d                                            ; $6641: $aa
	ld d, l                                          ; $6642: $55
	ld d, l                                          ; $6643: $55
	xor d                                            ; $6644: $aa
	and b                                            ; $6645: $a0
	ld e, a                                          ; $6646: $5f
	jp nc, $2f8e                                     ; $6647: $d2 $8e $2f

	ld a, [hl]                                       ; $664a: $7e
	ld bc, $1b64                                     ; $664b: $01 $64 $1b
	db $fc                                           ; $664e: $fc
	inc bc                                           ; $664f: $03
	db $fc                                           ; $6650: $fc
	inc bc                                           ; $6651: $03
	rst $38                                          ; $6652: $ff
	nop                                              ; $6653: $00
	sbc a                                            ; $6654: $9f
	ld h, b                                          ; $6655: $60
	ld l, [hl]                                       ; $6656: $6e
	pop af                                           ; $6657: $f1
	rst AddAOntoHL                                          ; $6658: $ef
	ldh a, [rVBK]                                    ; $6659: $f0 $4f
	adc b                                            ; $665b: $88
	sbc l                                            ; $665c: $9d
	ld a, [bc]                                       ; $665d: $0a
	push af                                          ; $665e: $f5
	ld d, a                                          ; $665f: $57
	ldh a, [$9c]                                     ; $6660: $f0 $9c
	ld a, l                                          ; $6662: $7d
	add d                                            ; $6663: $82
	rst $38                                          ; $6664: $ff
	ld h, d                                          ; $6665: $62
	and b                                            ; $6666: $a0
	sbc b                                            ; $6667: $98
	dec d                                            ; $6668: $15
	ld [$c43b], a                                    ; $6669: $ea $3b $c4
	db $fd                                           ; $666c: $fd
	ld [bc], a                                       ; $666d: $02
	ei                                               ; $666e: $fb
	ld [hl], e                                       ; $666f: $73
	ldh a, [$8c]                                     ; $6670: $f0 $8c
	ld b, c                                          ; $6672: $41
	cp [hl]                                          ; $6673: $be
	and d                                            ; $6674: $a2
	ld e, l                                          ; $6675: $5d
	push de                                          ; $6676: $d5
	ld a, [hl+]                                      ; $6677: $2a
	ld l, a                                          ; $6678: $6f
	db $10                                           ; $6679: $10
	xor d                                            ; $667a: $aa
	nop                                              ; $667b: $00
	stop                                             ; $667c: $10 $00
	dec c                                            ; $667e: $0d
	ldh a, [c]                                       ; $667f: $f2
	ld d, l                                          ; $6680: $55

jr_045_6681:
	and b                                            ; $6681: $a0
	ld l, d                                          ; $6682: $6a
	add b                                            ; $6683: $80
	push de                                          ; $6684: $d5
	ld l, [hl]                                       ; $6685: $6e
	ld d, h                                          ; $6686: $54
	cp $90                                           ; $6687: $fe $90
	ld b, b                                          ; $6689: $40
	cp a                                             ; $668a: $bf
	and b                                            ; $668b: $a0
	ld e, a                                          ; $668c: $5f
	or h                                             ; $668d: $b4
	dec bc                                           ; $668e: $0b
	inc e                                            ; $668f: $1c
	inc bc                                           ; $6690: $03
	ld a, [hl+]                                      ; $6691: $2a
	ld bc, $0116                                     ; $6692: $01 $16 $01
	dec bc                                           ; $6695: $0b
	nop                                              ; $6696: $00
	rlca                                             ; $6697: $07
	ld d, d                                          ; $6698: $52
	ld h, b                                          ; $6699: $60
	sbc e                                            ; $669a: $9b
	jp nz, $fd3d                                     ; $669b: $c2 $3d $fd

	ld [bc], a                                       ; $669e: $02
	ld c, a                                          ; $669f: $4f
	ld d, $9d                                        ; $66a0: $16 $9d
	ld d, b                                          ; $66a2: $50
	xor a                                            ; $66a3: $af
	ld [bc], a                                       ; $66a4: $02
	ldh a, [c]                                       ; $66a5: $f2
	inc bc                                           ; $66a6: $03
	cp $4f                                           ; $66a7: $fe $4f
	cp $89                                           ; $66a9: $fe $89
	dec c                                            ; $66ab: $0d
	ldh a, [rTMA]                                    ; $66ac: $f0 $06
	ld sp, hl                                        ; $66ae: $f9
	inc c                                            ; $66af: $0c
	di                                               ; $66b0: $f3
	db $10                                           ; $66b1: $10
	ldh [rAUD4LEN], a                                ; $66b2: $e0 $20
	ret nz                                           ; $66b4: $c0

	ld b, b                                          ; $66b5: $40
	add b                                            ; $66b6: $80
	add b                                            ; $66b7: $80
	nop                                              ; $66b8: $00
	ld b, d                                          ; $66b9: $42
	add b                                            ; $66ba: $80
	jr @-$1e                                         ; $66bb: $18 $e0

	add b                                            ; $66bd: $80
	ld a, b                                          ; $66be: $78
	jr nz, jr_045_6681                               ; $66bf: $20 $c0

	ld h, [hl]                                       ; $66c1: $66
	cp l                                             ; $66c2: $bd
	sbc [hl]                                         ; $66c3: $9e
	ret nz                                           ; $66c4: $c0

	ldh [$e0], a                                     ; $66c5: $e0 $e0
	sbc [hl]                                         ; $66c7: $9e
	and c                                            ; $66c8: $a1
	ld a, c                                          ; $66c9: $79
	xor d                                            ; $66ca: $aa
	sbc [hl]                                         ; $66cb: $9e
	cpl                                              ; $66cc: $2f
	cp $77                                           ; $66cd: $fe $77
	adc $8a                                          ; $66cf: $ce $8a
	ld a, b                                          ; $66d1: $78
	nop                                              ; $66d2: $00
	inc a                                            ; $66d3: $3c
	nop                                              ; $66d4: $00
	xor b                                            ; $66d5: $a8
	ld d, a                                          ; $66d6: $57
	push de                                          ; $66d7: $d5
	ld a, [hl+]                                      ; $66d8: $2a
	add sp, $17                                      ; $66d9: $e8 $17
	push de                                          ; $66db: $d5
	dec hl                                           ; $66dc: $2b
	ld [$f515], a                                    ; $66dd: $ea $15 $f5
	ld a, [bc]                                       ; $66e0: $0a
	ld a, d                                          ; $66e1: $7a
	dec b                                            ; $66e2: $05
	ccf                                              ; $66e3: $3f
	nop                                              ; $66e4: $00
	ld c, d                                          ; $66e5: $4a
	ld [hl], d                                       ; $66e6: $72
	sbc $97                                          ; $66e7: $de $97
	inc b                                            ; $66e9: $04
	rst $38                                          ; $66ea: $ff

jr_045_66eb:
	xor d                                            ; $66eb: $aa
	rst $38                                          ; $66ec: $ff
	ld de, $bffe                                     ; $66ed: $11 $fe $bf
	ld b, b                                          ; $66f0: $40
	ld a, e                                          ; $66f1: $7b
	jp c, $886b                                      ; $66f2: $da $6b $88

	ld a, l                                          ; $66f5: $7d
	ld l, [hl]                                       ; $66f6: $6e
	ld a, a                                          ; $66f7: $7f
	ld b, $7f                                        ; $66f8: $06 $7f
	db $fc                                           ; $66fa: $fc
	add b                                            ; $66fb: $80
	ld d, h                                          ; $66fc: $54
	xor e                                            ; $66fd: $ab
	scf                                              ; $66fe: $37
	ret z                                            ; $66ff: $c8

	rra                                              ; $6700: $1f
	ldh [$0a], a                                     ; $6701: $e0 $0a
	push af                                          ; $6703: $f5
	dec d                                            ; $6704: $15
	ld [$fd02], a                                    ; $6705: $ea $02 $fd
	nop                                              ; $6708: $00
	rst $38                                          ; $6709: $ff
	jr nz, jr_045_66eb                               ; $670a: $20 $df

	ld d, h                                          ; $670c: $54
	xor e                                            ; $670d: $ab
	ld d, l                                          ; $670e: $55
	nop                                              ; $670f: $00
	ld [$fd00], a                                    ; $6710: $ea $00 $fd
	nop                                              ; $6713: $00
	ld d, a                                          ; $6714: $57
	xor b                                            ; $6715: $a8
	dec hl                                           ; $6716: $2b
	call nc, $aa55                                   ; $6717: $d4 $55 $aa
	ld a, [hl+]                                      ; $671a: $2a
	sub a                                            ; $671b: $97
	push de                                          ; $671c: $d5
	dec b                                            ; $671d: $05
	ld a, [$0040]                                    ; $671e: $fa $40 $00
	xor d                                            ; $6721: $aa
	nop                                              ; $6722: $00
	ld d, l                                          ; $6723: $55
	ld a, e                                          ; $6724: $7b
	rst GetHLinHL                                          ; $6725: $cf
	sub a                                            ; $6726: $97
	db $eb                                           ; $6727: $eb
	inc d                                            ; $6728: $14
	ld d, a                                          ; $6729: $57
	xor b                                            ; $672a: $a8
	xor e                                            ; $672b: $ab
	ld d, h                                          ; $672c: $54
	ld d, l                                          ; $672d: $55
	xor d                                            ; $672e: $aa
	db $fd                                           ; $672f: $fd
	sbc h                                            ; $6730: $9c
	xor b                                            ; $6731: $a8
	nop                                              ; $6732: $00
	push de                                          ; $6733: $d5
	ld [hl], e                                       ; $6734: $73
	cp e                                             ; $6735: $bb
	halt                                             ; $6736: $76
	ld e, h                                          ; $6737: $5c
	ld a, [hl]                                       ; $6738: $7e
	rst SubAFromDE                                          ; $6739: $df
	sbc d                                            ; $673a: $9a
	dec b                                            ; $673b: $05
	nop                                              ; $673c: $00
	ld a, [bc]                                       ; $673d: $0a
	nop                                              ; $673e: $00
	ld a, a                                          ; $673f: $7f
	ld [hl], e                                       ; $6740: $73
	ldh a, [$7e]                                     ; $6741: $f0 $7e
	ld c, b                                          ; $6743: $48
	ld a, a                                          ; $6744: $7f
	ldh a, [hDisp1_OBP1]                                     ; $6745: $f0 $94
	xor e                                            ; $6747: $ab
	nop                                              ; $6748: $00
	ld e, [hl]                                       ; $6749: $5e
	ld bc, $03fc                                     ; $674a: $01 $fc $03
	ld hl, sp+$07                                    ; $674d: $f8 $07
	ret nc                                           ; $674f: $d0

	cpl                                              ; $6750: $2f
	add b                                            ; $6751: $80
	ld [hl], e                                       ; $6752: $73
	db $eb                                           ; $6753: $eb
	ld a, [hl]                                       ; $6754: $7e
	and d                                            ; $6755: $a2
	ld e, a                                          ; $6756: $5f
	inc d                                            ; $6757: $14
	ld a, a                                          ; $6758: $7f
	xor $9d                                          ; $6759: $ee $9d
	ld d, c                                          ; $675b: $51
	xor [hl]                                         ; $675c: $ae
	ld [bc], a                                       ; $675d: $02
	or b                                             ; $675e: $b0
	inc bc                                           ; $675f: $03
	cp $4f                                           ; $6760: $fe $4f
	cp $93                                           ; $6762: $fe $93
	inc hl                                           ; $6764: $23
	ret nz                                           ; $6765: $c0

	ld hl, $23c0                                     ; $6766: $21 $c0 $23
	ret nz                                           ; $6769: $c0

	ld e, $e1                                        ; $676a: $1e $e1
	dec c                                            ; $676c: $0d
	ldh a, [c]                                       ; $676d: $f2
	ld [bc], a                                       ; $676e: $02
	db $fd                                           ; $676f: $fd
	ld a, c                                          ; $6770: $79
	ld a, b                                          ; $6771: $78
	ld a, a                                          ; $6772: $7f
	inc a                                            ; $6773: $3c
	add b                                            ; $6774: $80
	ret nz                                           ; $6775: $c0

	db $10                                           ; $6776: $10
	ldh [rOBP0], a                                   ; $6777: $e0 $48
	ldh a, [$af]                                     ; $6779: $f0 $af
	ldh a, [$f0]                                     ; $677b: $f0 $f0
	rst $38                                          ; $677d: $ff
	db $fc                                           ; $677e: $fc
	rst $38                                          ; $677f: $ff
	ldh a, [rIE]                                     ; $6780: $f0 $ff
	adc h                                            ; $6782: $8c

jr_045_6783:
	di                                               ; $6783: $f3
	rlca                                             ; $6784: $07
	nop                                              ; $6785: $00
	ld c, $00                                        ; $6786: $0e $00
	ld de, $260e                                     ; $6788: $11 $0e $26
	rra                                              ; $678b: $1f
	ld l, a                                          ; $678c: $6f
	sbc a                                            ; $678d: $9f
	scf                                              ; $678e: $37
	rst GetHLinHL                                          ; $678f: $cf
	rlca                                             ; $6790: $07
	rst $38                                          ; $6791: $ff
	rst SubAFromBC                                          ; $6792: $e7
	rst $38                                          ; $6793: $ff
	ld a, [hl]                                       ; $6794: $7e
	cp $7f                                           ; $6795: $fe $7f
	xor $9a                                          ; $6797: $ee $9a
	ld [$7b07], sp                                   ; $6799: $08 $07 $7b
	add a                                            ; $679c: $87
	add c                                            ; $679d: $81
	ld a, e                                          ; $679e: $7b
	ldh [c], a                                       ; $679f: $e2
	ld a, a                                          ; $67a0: $7f
	cp $9b                                           ; $67a1: $fe $9b
	pop hl                                           ; $67a3: $e1
	cp $c0                                           ; $67a4: $fe $c0
	ccf                                              ; $67a6: $3f
	ld [hl], e                                       ; $67a7: $73
	ld e, d                                          ; $67a8: $5a
	ld a, e                                          ; $67a9: $7b
	db $fc                                           ; $67aa: $fc
	sbc h                                            ; $67ab: $9c
	ld c, a                                          ; $67ac: $4f
	add b                                            ; $67ad: $80
	add e                                            ; $67ae: $83
	cp $99                                           ; $67af: $fe $99
	ld [hl], b                                       ; $67b1: $70
	adc a                                            ; $67b2: $8f
	jr nc, jr_045_6783                               ; $67b3: $30 $ce

	ld a, [de]                                       ; $67b5: $1a
	db $e4                                           ; $67b6: $e4
	ld a, c                                          ; $67b7: $79
	adc a                                            ; $67b8: $8f
	sbc b                                            ; $67b9: $98
	db $fc                                           ; $67ba: $fc
	pop bc                                           ; $67bb: $c1
	ld a, $c1                                        ; $67bc: $3e $c1
	ld a, $31                                        ; $67be: $3e $31
	ld c, $66                                        ; $67c0: $0e $66
	halt                                             ; $67c2: $76
	ld a, a                                          ; $67c3: $7f
	ld hl, sp-$62                                    ; $67c4: $f8 $9e
	add c                                            ; $67c6: $81
	ld a, e                                          ; $67c7: $7b
	jr nz, @+$80                                     ; $67c8: $20 $7e

	ld d, h                                          ; $67ca: $54
	ld a, a                                          ; $67cb: $7f
	inc c                                            ; $67cc: $0c
	ld a, [hl]                                       ; $67cd: $7e
	call nc, $0877                                   ; $67ce: $d4 $77 $08
	ld l, a                                          ; $67d1: $6f
	db $fc                                           ; $67d2: $fc
	ld l, l                                          ; $67d3: $6d
	ld e, b                                          ; $67d4: $58
	inc bc                                           ; $67d5: $03
	db $fc                                           ; $67d6: $fc
	inc bc                                           ; $67d7: $03
	db $fc                                           ; $67d8: $fc
	inc bc                                           ; $67d9: $03
	db $fc                                           ; $67da: $fc
	ld h, e                                          ; $67db: $63
	db $fc                                           ; $67dc: $fc
	ld a, [hl]                                       ; $67dd: $7e
	cp h                                             ; $67de: $bc
	ld c, a                                          ; $67df: $4f
	ldh a, [$7f]                                     ; $67e0: $f0 $7f
	ld c, b                                          ; $67e2: $48
	ld a, [hl]                                       ; $67e3: $7e
	jr c, jr_045_6835                                ; $67e4: $38 $4f

	ldh a, [rBGP]                                    ; $67e6: $f0 $47
	ldh [$9d], a                                     ; $67e8: $e0 $9d
	ld b, h                                          ; $67ea: $44
	cp e                                             ; $67eb: $bb
	ld c, a                                          ; $67ec: $4f
	ldh a, [$9d]                                     ; $67ed: $f0 $9d
	ld de, $4fee                                     ; $67ef: $11 $ee $4f
	ldh a, [$7f]                                     ; $67f2: $f0 $7f
	cp $67                                           ; $67f4: $fe $67
	db $f4                                           ; $67f6: $f4
	sbc e                                            ; $67f7: $9b
	xor b                                            ; $67f8: $a8
	ld d, h                                          ; $67f9: $54
	ld b, b                                          ; $67fa: $40
	and b                                            ; $67fb: $a0
	ld a, b                                          ; $67fc: $78
	add d                                            ; $67fd: $82
	sub b                                            ; $67fe: $90
	add c                                            ; $67ff: $81
	ld d, h                                          ; $6800: $54
	db $eb                                           ; $6801: $eb
	and b                                            ; $6802: $a0
	rst $38                                          ; $6803: $ff
	ld [hl], h                                       ; $6804: $74
	rst $38                                          ; $6805: $ff
	sbc e                                            ; $6806: $9b
	ld a, a                                          ; $6807: $7f
	ld h, l                                          ; $6808: $65
	rra                                              ; $6809: $1f
	add hl, bc                                       ; $680a: $09
	ld b, $55                                        ; $680b: $06 $55
	xor e                                            ; $680d: $ab
	halt                                             ; $680e: $76
	jr c, jr_045_6885                                ; $680f: $38 $74

	sub [hl]                                         ; $6811: $96
	adc d                                            ; $6812: $8a
	rla                                              ; $6813: $17
	add sp, $3f                                      ; $6814: $e8 $3f
	ret nz                                           ; $6816: $c0

	ret nz                                           ; $6817: $c0

	nop                                              ; $6818: $00
	ldh a, [c]                                       ; $6819: $f2
	db $fc                                           ; $681a: $fc
	add sp, -$10                                     ; $681b: $e8 $f0
	ret nc                                           ; $681d: $d0

	ldh [$a0], a                                     ; $681e: $e0 $a0
	ret nz                                           ; $6820: $c0

	and b                                            ; $6821: $a0
	ret nz                                           ; $6822: $c0

	jr c, @-$3e                                      ; $6823: $38 $c0

	or h                                             ; $6825: $b4
	ret nz                                           ; $6826: $c0

	inc h                                            ; $6827: $24
	ld h, c                                          ; $6828: $61
	ld e, a                                          ; $6829: $5f
	ld a, h                                          ; $682a: $7c
	ld c, b                                          ; $682b: $48
	sbc d                                            ; $682c: $9a
	ld [bc], a                                       ; $682d: $02
	ld bc, $0007                                     ; $682e: $01 $07 $00
	jr jr_045_68ab                                   ; $6831: $18 $78

	cp a                                             ; $6833: $bf
	ld l, a                                          ; $6834: $6f

jr_045_6835:
	ldh a, [c]                                       ; $6835: $f2
	sbc d                                            ; $6836: $9a
	adc d                                            ; $6837: $8a
	nop                                              ; $6838: $00
	ld e, l                                          ; $6839: $5d
	nop                                              ; $683a: $00
	xor a                                            ; $683b: $af
	ld a, c                                          ; $683c: $79
	ld h, h                                          ; $683d: $64
	sub h                                            ; $683e: $94
	sbc c                                            ; $683f: $99
	ld h, b                                          ; $6840: $60
	ldh [c], a                                       ; $6841: $e2
	ld bc, $c33c                                     ; $6842: $01 $3c $c3
	nop                                              ; $6845: $00
	rst $38                                          ; $6846: $ff
	ld [$feff], sp                                   ; $6847: $08 $ff $fe
	call c, Call_045_7dff                            ; $684a: $dc $ff $7d
	ld l, b                                          ; $684d: $68
	ld a, [hl]                                       ; $684e: $7e
	call z, Call_045_6475                            ; $684f: $cc $75 $64
	ld a, [hl]                                       ; $6852: $7e
	or h                                             ; $6853: $b4
	ld l, [hl]                                       ; $6854: $6e
	ccf                                              ; $6855: $3f
	ld l, a                                          ; $6856: $6f
	add h                                            ; $6857: $84
	sbc c                                            ; $6858: $99
	rst FarCall                                          ; $6859: $f7
	ld [$00ff], sp                                   ; $685a: $08 $ff $00
	ld a, a                                          ; $685d: $7f
	add b                                            ; $685e: $80
	ld l, a                                          ; $685f: $6f
	ldh a, [$7d]                                     ; $6860: $f0 $7d
	sbc b                                            ; $6862: $98
	sbc l                                            ; $6863: $9d
	xor a                                            ; $6864: $af
	ld d, b                                          ; $6865: $50
	ld l, a                                          ; $6866: $6f
	db $f4                                           ; $6867: $f4
	ld e, a                                          ; $6868: $5f
	ldh [$7f], a                                     ; $6869: $e0 $7f
	call z, $d057                                    ; $686b: $cc $57 $d0
	sbc h                                            ; $686e: $9c
	cp e                                             ; $686f: $bb
	ld b, h                                          ; $6870: $44
	ld e, a                                          ; $6871: $5f
	halt                                             ; $6872: $76
	ld c, a                                          ; $6873: $4f
	ld e, e                                          ; $6874: $5b
	ldh [$7f], a                                     ; $6875: $e0 $7f
	or b                                             ; $6877: $b0
	sbc l                                            ; $6878: $9d
	ld a, [$5705]                                    ; $6879: $fa $05 $57
	ldh a, [$6f]                                     ; $687c: $f0 $6f
	db $fc                                           ; $687e: $fc
	ld c, a                                          ; $687f: $4f
	ldh a, [$6f]                                     ; $6880: $f0 $6f
	call z, $e01f                                    ; $6882: $cc $1f $e0

jr_045_6885:
	ld a, a                                          ; $6885: $7f
	db $fc                                           ; $6886: $fc
	ld a, a                                          ; $6887: $7f
	adc b                                            ; $6888: $88
	ld e, a                                          ; $6889: $5f
	ldh a, [$7d]                                     ; $688a: $f0 $7d
	inc d                                            ; $688c: $14
	ld a, a                                          ; $688d: $7f
	ld a, b                                          ; $688e: $78
	ld d, a                                          ; $688f: $57
	ldh [$6d], a                                     ; $6890: $e0 $6d
	jr nz, jr_045_6913                               ; $6892: $20 $7f

	db $fc                                           ; $6894: $fc
	ld a, a                                          ; $6895: $7f
	add sp, -$70                                     ; $6896: $e8 $90
	ld d, [hl]                                       ; $6898: $56
	xor b                                            ; $6899: $a8
	xor h                                            ; $689a: $ac
	ld d, b                                          ; $689b: $50
	ld e, b                                          ; $689c: $58
	and b                                            ; $689d: $a0
	or b                                             ; $689e: $b0
	ld b, b                                          ; $689f: $40
	ld d, b                                          ; $68a0: $50
	and b                                            ; $68a1: $a0
	xor b                                            ; $68a2: $a8
	ld b, b                                          ; $68a3: $40
	ld [hl], b                                       ; $68a4: $70
	add b                                            ; $68a5: $80
	ldh [rSVBK], a                                   ; $68a6: $e0 $70
	add [hl]                                         ; $68a8: $86
	ld sp, hl                                        ; $68a9: $f9
	sbc h                                            ; $68aa: $9c

jr_045_68ab:
	and b                                            ; $68ab: $a0
	ld b, b                                          ; $68ac: $40
	ld [$fe7a], sp                                   ; $68ad: $08 $7a $fe
	ld a, b                                          ; $68b0: $78
	db $ec                                           ; $68b1: $ec
	sub e                                            ; $68b2: $93
	ld [bc], a                                       ; $68b3: $02
	add hl, bc                                       ; $68b4: $09
	ld b, $18                                        ; $68b5: $06 $18
	rlca                                             ; $68b7: $07
	dec b                                            ; $68b8: $05
	rra                                              ; $68b9: $1f
	ld a, [hl+]                                      ; $68ba: $2a
	rra                                              ; $68bb: $1f
	rlca                                             ; $68bc: $07
	nop                                              ; $68bd: $00
	rra                                              ; $68be: $1f
	ld a, e                                          ; $68bf: $7b
	cp $8e                                           ; $68c0: $fe $8e
	ld a, [de]                                       ; $68c2: $1a
	dec b                                            ; $68c3: $05
	dec [hl]                                         ; $68c4: $35

jr_045_68c5:
	ld a, [bc]                                       ; $68c5: $0a
	ld hl, sp+$07                                    ; $68c6: $f8 $07
	pop de                                           ; $68c8: $d1
	cpl                                              ; $68c9: $2f
	xor d                                            ; $68ca: $aa
	ld e, a                                          ; $68cb: $5f
	ldh a, [rP1]                                     ; $68cc: $f0 $00
	ldh a, [rP1]                                     ; $68ce: $f0 $00
	ld h, b                                          ; $68d0: $60
	add b                                            ; $68d1: $80
	ldh [c], a                                       ; $68d2: $e2
	ld a, e                                          ; $68d3: $7b
	ld [de], a                                       ; $68d4: $12
	sbc l                                            ; $68d5: $9d
	add hl, hl                                       ; $68d6: $29
	sub $77                                          ; $68d7: $d6 $77
	ld c, a                                          ; $68d9: $4f
	ld a, a                                          ; $68da: $7f
	jp c, $fb96                                      ; $68db: $da $96 $fb

	rlca                                             ; $68de: $07
	pop bc                                           ; $68df: $c1
	ccf                                              ; $68e0: $3f
	inc bc                                           ; $68e1: $03
	rst $38                                          ; $68e2: $ff
	inc bc                                           ; $68e3: $03
	rst $38                                          ; $68e4: $ff
	rst JumpTable                                          ; $68e5: $c7
	call c, Call_045_7fff                            ; $68e6: $dc $ff $7f
	xor $94                                          ; $68e9: $ee $94
	ld [bc], a                                       ; $68eb: $02
	rst $38                                          ; $68ec: $ff
	dec b                                            ; $68ed: $05
	rst $38                                          ; $68ee: $ff
	ld a, [bc]                                       ; $68ef: $0a
	rst $38                                          ; $68f0: $ff
	rla                                              ; $68f1: $17
	rst $38                                          ; $68f2: $ff
	cpl                                              ; $68f3: $2f
	rst $38                                          ; $68f4: $ff
	ld a, a                                          ; $68f5: $7f
	sbc $ff                                          ; $68f6: $de $ff
	ld a, a                                          ; $68f8: $7f
	db $f4                                           ; $68f9: $f4
	sbc h                                            ; $68fa: $9c
	add d                                            ; $68fb: $82
	rst $38                                          ; $68fc: $ff
	ld d, l                                          ; $68fd: $55
	ld a, b                                          ; $68fe: $78
	ld b, d                                          ; $68ff: $42
	sbc [hl]                                         ; $6900: $9e

Call_045_6901:
	rst SubAFromHL                                          ; $6901: $d7
	reti                                             ; $6902: $d9


	rst $38                                          ; $6903: $ff
	nop                                              ; $6904: $00
	db $ed                                           ; $6905: $ed
	inc bc                                           ; $6906: $03
	cp $03                                           ; $6907: $fe $03
	cp $3f                                           ; $6909: $fe $3f
	cp $95                                           ; $690b: $fe $95
	ei                                               ; $690d: $fb
	inc b                                            ; $690e: $04
	db $f4                                           ; $690f: $f4
	ld a, [bc]                                       ; $6910: $0a
	ldh [rAUD3LEVEL], a                              ; $6911: $e0 $1c

jr_045_6913:
	ldh [rAUD2LOW], a                                ; $6913: $e0 $18
	add sp, $10                                      ; $6915: $e8 $10
	halt                                             ; $6917: $76
	cp b                                             ; $6918: $b8
	sbc e                                            ; $6919: $9b
	ld b, e                                          ; $691a: $43
	cp h                                             ; $691b: $bc
	sbc h                                            ; $691c: $9c
	ld h, e                                          ; $691d: $63
	ld h, [hl]                                       ; $691e: $66
	jr jr_045_69a0                                   ; $691f: $18 $7f

	db $e4                                           ; $6921: $e4
	sub d                                            ; $6922: $92
	ld a, d                                          ; $6923: $7a
	dec b                                            ; $6924: $05
	dec a                                            ; $6925: $3d
	ld [bc], a                                       ; $6926: $02
	ld a, [$1505]                                    ; $6927: $fa $05 $15
	ld a, [hl+]                                      ; $692a: $2a
	ld l, $11                                        ; $692b: $2e $11
	stop                                             ; $692d: $10 $00
	ld h, a                                          ; $692f: $67
	ld l, d                                          ; $6930: $6a
	adc $7d                                          ; $6931: $ce $7d
	ret nc                                           ; $6933: $d0

	adc [hl]                                         ; $6934: $8e
	ld d, h                                          ; $6935: $54
	xor e                                            ; $6936: $ab
	xor d                                            ; $6937: $aa
	ld d, l                                          ; $6938: $55
	inc e                                            ; $6939: $1c
	inc bc                                           ; $693a: $03
	sbc a                                            ; $693b: $9f
	nop                                              ; $693c: $00
	xor b                                            ; $693d: $a8
	ld d, b                                          ; $693e: $50
	ld d, b                                          ; $693f: $50
	and b                                            ; $6940: $a0
	add b                                            ; $6941: $80
	ld b, b                                          ; $6942: $40
	jr nz, jr_045_68c5                               ; $6943: $20 $80

	ld b, c                                          ; $6945: $41
	ld [hl], d                                       ; $6946: $72
	ret c                                            ; $6947: $d8

	ld a, a                                          ; $6948: $7f
	db $fc                                           ; $6949: $fc
	adc c                                            ; $694a: $89
	ld c, d                                          ; $694b: $4a
	dec a                                            ; $694c: $3d
	ld a, [bc]                                       ; $694d: $0a
	dec b                                            ; $694e: $05
	ld bc, $b800                                     ; $694f: $01 $00 $b8
	nop                                              ; $6952: $00
	inc b                                            ; $6953: $04
	ld hl, sp+$00                                    ; $6954: $f8 $00
	ld hl, sp-$18                                    ; $6956: $f8 $e8
	db $10                                           ; $6958: $10
	jr c, jr_045_695b                                ; $6959: $38 $00

jr_045_695b:
	ld c, b                                          ; $695b: $48
	ldh a, [$2f]                                     ; $695c: $f0 $2f
	ldh a, [$8a]                                     ; $695e: $f0 $8a
	ld [hl], c                                       ; $6960: $71
	ld [hl], l                                       ; $6961: $75

jr_045_6962:
	call nz, $ea7f                                   ; $6962: $c4 $7f $ea
	db $fd                                           ; $6965: $fd
	sbc d                                            ; $6966: $9a

jr_045_6967:
	ld d, l                                          ; $6967: $55
	ccf                                              ; $6968: $3f
	adc e                                            ; $6969: $8b
	ld a, a                                          ; $696a: $7f
	dec d                                            ; $696b: $15
	ld a, e                                          ; $696c: $7b
	db $10                                           ; $696d: $10
	ld a, a                                          ; $696e: $7f
	db $fc                                           ; $696f: $fc
	sbc l                                            ; $6970: $9d
	db $fd                                           ; $6971: $fd
	ld [bc], a                                       ; $6972: $02
	db $fd                                           ; $6973: $fd
	ld a, a                                          ; $6974: $7f
	ld hl, sp-$62                                    ; $6975: $f8 $9e
	ld a, [hl+]                                      ; $6977: $2a
	ld a, e                                          ; $6978: $7b
	nop                                              ; $6979: $00
	sbc d                                            ; $697a: $9a
	add d                                            ; $697b: $82
	ld a, a                                          ; $697c: $7f
	rst $38                                          ; $697d: $ff
	nop                                              ; $697e: $00
	pop af                                           ; $697f: $f1
	ld [hl], e                                       ; $6980: $73
	sub b                                            ; $6981: $90
	adc d                                            ; $6982: $8a
	inc b                                            ; $6983: $04
	ei                                               ; $6984: $fb
	adc b                                            ; $6985: $88
	rst FarCall                                          ; $6986: $f7

jr_045_6987:
	ld d, l                                          ; $6987: $55
	rst $38                                          ; $6988: $ff
	jr z, jr_045_6962                                ; $6989: $28 $d7

	db $fc                                           ; $698b: $fc
	inc bc                                           ; $698c: $03
	add sp, $17                                      ; $698d: $e8 $17
	ret nz                                           ; $698f: $c0

	ccf                                              ; $6990: $3f
	ldh [$1f], a                                     ; $6991: $e0 $1f
	sub l                                            ; $6993: $95
	ld l, b                                          ; $6994: $68
	jr nz, jr_045_6967                               ; $6995: $20 $d0

	ld b, b                                          ; $6997: $40
	ld a, e                                          ; $6998: $7b
	sbc [hl]                                         ; $6999: $9e
	sbc l                                            ; $699a: $9d
	ld b, b                                          ; $699b: $40
	add b                                            ; $699c: $80
	ld l, a                                          ; $699d: $6f
	and b                                            ; $699e: $a0
	sbc l                                            ; $699f: $9d

jr_045_69a0:
	ld e, h                                          ; $69a0: $5c
	inc bc                                           ; $69a1: $03
	ld l, c                                          ; $69a2: $69
	ld a, l                                          ; $69a3: $7d
	ld a, [$ea90]                                    ; $69a4: $fa $90 $ea
	rst $38                                          ; $69a7: $ff
	ld [hl], l                                       ; $69a8: $75
	rst $38                                          ; $69a9: $ff
	db $db                                           ; $69aa: $db
	ccf                                              ; $69ab: $3f
	inc e                                            ; $69ac: $1c
	inc bc                                           ; $69ad: $03
	ld l, l                                          ; $69ae: $6d
	ld [bc], a                                       ; $69af: $02
	ld l, $11                                        ; $69b0: $2e $11
	inc d                                            ; $69b2: $14
	dec bc                                           ; $69b3: $0b
	inc bc                                           ; $69b4: $03
	ld a, e                                          ; $69b5: $7b
	ld h, b                                          ; $69b6: $60
	ld a, a                                          ; $69b7: $7f
	ld l, h                                          ; $69b8: $6c
	sbc b                                            ; $69b9: $98
	rrca                                             ; $69ba: $0f
	nop                                              ; $69bb: $00
	dec b                                            ; $69bc: $05
	nop                                              ; $69bd: $00
	ld [$1400], sp                                   ; $69be: $08 $00 $14
	ld a, e                                          ; $69c1: $7b
	db $fc                                           ; $69c2: $fc
	sbc [hl]                                         ; $69c3: $9e
	dec d                                            ; $69c4: $15
	ld h, e                                          ; $69c5: $63
	ld e, $9e                                        ; $69c6: $1e $9e
	ccf                                              ; $69c8: $3f
	ld a, e                                          ; $69c9: $7b
	ld [$779b], a                                    ; $69ca: $ea $9b $77
	nop                                              ; $69cd: $00
	cp a                                             ; $69ce: $bf
	ld b, b                                          ; $69cf: $40
	ld [bc], a                                       ; $69d0: $02
	db $f4                                           ; $69d1: $f4
	ld a, e                                          ; $69d2: $7b
	cp $7b                                           ; $69d3: $fe $7b
	ld b, l                                          ; $69d5: $45
	ld a, d                                          ; $69d6: $7a
	ld a, [hl-]                                      ; $69d7: $3a
	ld a, a                                          ; $69d8: $7f
	cp $7e                                           ; $69d9: $fe $7e
	inc b                                            ; $69db: $04
	ld a, l                                          ; $69dc: $7d
	ld bc, $f077                                     ; $69dd: $01 $77 $f0
	sbc h                                            ; $69e0: $9c
	cp a                                             ; $69e1: $bf
	nop                                              ; $69e2: $00
	rlca                                             ; $69e3: $07
	ld [hl], e                                       ; $69e4: $73
	xor h                                            ; $69e5: $ac
	db $fd                                           ; $69e6: $fd
	ld l, a                                          ; $69e7: $6f
	sbc $9c                                          ; $69e8: $de $9c
	rst SubAFromHL                                          ; $69ea: $d7
	nop                                              ; $69eb: $00
	xor d                                            ; $69ec: $aa
	ld l, e                                          ; $69ed: $6b
	jr nc, jr_045_6987                               ; $69ee: $30 $97

	ld hl, sp+$0c                                    ; $69f0: $f8 $0c
	or $0c                                           ; $69f2: $f6 $0c
	add sp, $14                                      ; $69f4: $e8 $14
	call nz, Call_045_6f38                           ; $69f6: $c4 $38 $6f
	ld h, b                                          ; $69f9: $60
	ld [hl], a                                       ; $69fa: $77
	ld a, $77                                        ; $69fb: $3e $77
	cp $ff                                           ; $69fd: $fe $ff
	ld a, a                                          ; $69ff: $7f
	ret nc                                           ; $6a00: $d0

	add d                                            ; $6a01: $82
	db $10                                           ; $6a02: $10
	rrca                                             ; $6a03: $0f
	rlca                                             ; $6a04: $07

jr_045_6a05:
	nop                                              ; $6a05: $00
	inc b                                            ; $6a06: $04
	inc bc                                           ; $6a07: $03
	inc bc                                           ; $6a08: $03
	rst $38                                          ; $6a09: $ff
	adc a                                            ; $6a0a: $8f
	ld a, a                                          ; $6a0b: $7f
	db $dd                                           ; $6a0c: $dd
	ccf                                              ; $6a0d: $3f
	adc [hl]                                         ; $6a0e: $8e
	ld [hl], c                                       ; $6a0f: $71
	ld sp, hl                                        ; $6a10: $f9
	ld b, $04                                        ; $6a11: $06 $04
	rst $38                                          ; $6a13: $ff
	add b                                            ; $6a14: $80
	ld a, a                                          ; $6a15: $7f
	call nz, $883f                                   ; $6a16: $c4 $3f $88
	rst $38                                          ; $6a19: $ff
	pop de                                           ; $6a1a: $d1
	cp $c1                                           ; $6a1b: $fe $c1
	cp $00                                           ; $6a1d: $fe $00
	ld a, e                                          ; $6a1f: $7b
	cp $7e                                           ; $6a20: $fe $7e
	cp h                                             ; $6a22: $bc
	sbc e                                            ; $6a23: $9b
	jr nz, jr_045_6a05                               ; $6a24: $20 $df

	ld c, $f0                                        ; $6a26: $0e $f0
	push af                                          ; $6a28: $f5
	ld a, a                                          ; $6a29: $7f
	cp [hl]                                          ; $6a2a: $be
	ld a, a                                          ; $6a2b: $7f
	add $7e                                          ; $6a2c: $c6 $7e
	sbc h                                            ; $6a2e: $9c
	ld sp, hl                                        ; $6a2f: $f9

jr_045_6a30:
	sbc d                                            ; $6a30: $9a
	ld h, b                                          ; $6a31: $60
	nop                                              ; $6a32: $00
	ld b, b                                          ; $6a33: $40
	add b                                            ; $6a34: $80
	jr c, jr_045_6a97                                ; $6a35: $38 $60

	add b                                            ; $6a37: $80
	rst $38                                          ; $6a38: $ff
	ld a, a                                          ; $6a39: $7f
	or d                                             ; $6a3a: $b2
	sbc l                                            ; $6a3b: $9d
	ldh a, [rIF]                                     ; $6a3c: $f0 $0f
	ld a, e                                          ; $6a3e: $7b
	add l                                            ; $6a3f: $85
	ld h, e                                          ; $6a40: $63
	sbc d                                            ; $6a41: $9a
	sbc c                                            ; $6a42: $99
	add d                                            ; $6a43: $82
	ld bc, $837c                                     ; $6a44: $01 $7c $83
	jr jr_045_6a30                                   ; $6a47: $18 $e7

	db $fd                                           ; $6a49: $fd
	ld a, h                                          ; $6a4a: $7c
	ccf                                              ; $6a4b: $3f
	ld a, [hl]                                       ; $6a4c: $7e
	ld [hl], h                                       ; $6a4d: $74
	sub [hl]                                         ; $6a4e: $96
	pop bc                                           ; $6a4f: $c1
	ld a, $a3                                        ; $6a50: $3e $a3
	ld e, h                                          ; $6a52: $5c
	ld b, c                                          ; $6a53: $41
	cp [hl]                                          ; $6a54: $be
	xor b                                            ; $6a55: $a8
	ld a, a                                          ; $6a56: $7f
	cpl                                              ; $6a57: $2f
	ld a, e                                          ; $6a58: $7b
	ld h, c                                          ; $6a59: $61
	add e                                            ; $6a5a: $83
	and e                                            ; $6a5b: $a3
	db $fc                                           ; $6a5c: $fc
	sub b                                            ; $6a5d: $90
	ldh [$f8], a                                     ; $6a5e: $e0 $f8
	nop                                              ; $6a60: $00
	ld b, $f8                                        ; $6a61: $06 $f8
	pop af                                           ; $6a63: $f1
	cp $fc                                           ; $6a64: $fe $fc
	rst $38                                          ; $6a66: $ff
	ret nz                                           ; $6a67: $c0

	ret nz                                           ; $6a68: $c0

	adc [hl]                                         ; $6a69: $8e
	ret nz                                           ; $6a6a: $c0

	ldh a, [rIF]                                     ; $6a6b: $f0 $0f
	ldh a, [rIF]                                     ; $6a6d: $f0 $0f
	rst $38                                          ; $6a6f: $ff
	nop                                              ; $6a70: $00
	jr c, jr_045_6a73                                ; $6a71: $38 $00

jr_045_6a73:
	db $fc                                           ; $6a73: $fc
	nop                                              ; $6a74: $00
	dec d                                            ; $6a75: $15
	ld [$c26f], a                                    ; $6a76: $ea $6f $c2
	sbc d                                            ; $6a79: $9a
	add e                                            ; $6a7a: $83
	nop                                              ; $6a7b: $00
	ld b, $01                                        ; $6a7c: $06 $01
	rrca                                             ; $6a7e: $0f
	ld a, e                                          ; $6a7f: $7b

jr_045_6a80:
	db $fc                                           ; $6a80: $fc
	sbc h                                            ; $6a81: $9c
	push de                                          ; $6a82: $d5
	ld a, [bc]                                       ; $6a83: $0a
	nop                                              ; $6a84: $00
	ld a, c                                          ; $6a85: $79
	ld b, d                                          ; $6a86: $42
	adc h                                            ; $6a87: $8c
	ld l, d                                          ; $6a88: $6a
	dec d                                            ; $6a89: $15
	call nc, $a82b                                   ; $6a8a: $d4 $2b $a8
	ld d, a                                          ; $6a8d: $57
	push de                                          ; $6a8e: $d5
	ld a, [hl+]                                      ; $6a8f: $2a
	sub h                                            ; $6a90: $94
	ld a, a                                          ; $6a91: $7f
	nop                                              ; $6a92: $00
	rst $38                                          ; $6a93: $ff
	ld b, b                                          ; $6a94: $40
	ccf                                              ; $6a95: $3f
	ret nz                                           ; $6a96: $c0

jr_045_6a97:
	ccf                                              ; $6a97: $3f
	ld bc, $0bff                                     ; $6a98: $01 $ff $0b
	ld a, c                                          ; $6a9b: $79
	ld h, d                                          ; $6a9c: $62
	sbc [hl]                                         ; $6a9d: $9e
	ld e, a                                          ; $6a9e: $5f
	sbc $ff                                          ; $6a9f: $de $ff
	sbc e                                            ; $6aa1: $9b
	rst SubAFromDE                                          ; $6aa2: $df
	rst $38                                          ; $6aa3: $ff
	call nc, Call_045_6c2b                           ; $6aa4: $d4 $2b $6c
	sbc $97                                          ; $6aa7: $de $97
	ld b, l                                          ; $6aa9: $45
	cp d                                             ; $6aaa: $ba
	dec bc                                           ; $6aab: $0b
	db $f4                                           ; $6aac: $f4
	ld e, $e1                                        ; $6aad: $1e $e1
	jr nc, jr_045_6a80                               ; $6aaf: $30 $cf

	ld a, $d2                                        ; $6ab1: $3e $d2
	sub [hl]                                         ; $6ab3: $96
	ld sp, hl                                        ; $6ab4: $f9
	nop                                              ; $6ab5: $00
	ldh a, [rSB]                                     ; $6ab6: $f0 $01
	ldh [rAUD1SWEEP], a                              ; $6ab8: $e0 $10
	ret nc                                           ; $6aba: $d0

	jr nz, @-$3e                                     ; $6abb: $20 $c0

	ld a, e                                          ; $6abd: $7b
	ld b, b                                          ; $6abe: $40
	ld a, [hl]                                       ; $6abf: $7e
	ld e, b                                          ; $6ac0: $58
	ld a, e                                          ; $6ac1: $7b
	db $fc                                           ; $6ac2: $fc
	db $ec                                           ; $6ac3: $ec
	ld a, a                                          ; $6ac4: $7f
	adc h                                            ; $6ac5: $8c
	sbc l                                            ; $6ac6: $9d
	ld h, a                                          ; $6ac7: $67
	jr @+$79                                         ; $6ac8: $18 $77

	and h                                            ; $6aca: $a4
	ei                                               ; $6acb: $fb
	ld a, a                                          ; $6acc: $7f
	add hl, bc                                       ; $6acd: $09
	ld a, c                                          ; $6ace: $79
	sub e                                            ; $6acf: $93
	adc e                                            ; $6ad0: $8b
	ldh [rAUD4LEN], a                                ; $6ad1: $e0 $20
	ret nz                                           ; $6ad3: $c0

	ld b, b                                          ; $6ad4: $40
	add b                                            ; $6ad5: $80
	dec c                                            ; $6ad6: $0d
	ld [bc], a                                       ; $6ad7: $02
	ld [$7007], sp                                   ; $6ad8: $08 $07 $70
	rrca                                             ; $6adb: $0f
	ld b, b                                          ; $6adc: $40
	ccf                                              ; $6add: $3f
	add hl, de                                       ; $6ade: $19
	ld b, $08                                        ; $6adf: $06 $08
	rlca                                             ; $6ae1: $07
	ld a, $01                                        ; $6ae2: $3e $01
	inc bc                                           ; $6ae4: $03
	ld a, b                                          ; $6ae5: $78
	and [hl]                                         ; $6ae6: $a6
	sbc h                                            ; $6ae7: $9c
	adc [hl]                                         ; $6ae8: $8e
	ld bc, $7a87                                     ; $6ae9: $01 $87 $7a
	jp nz, $e27d                                     ; $6aec: $c2 $7d $e2

	ld a, l                                          ; $6aef: $7d
	adc h                                            ; $6af0: $8c
	sbc c                                            ; $6af1: $99
	rst FarCall                                          ; $6af2: $f7
	ld [$01fe], sp                                   ; $6af3: $08 $fe $01
	push af                                          ; $6af6: $f5
	ld a, [bc]                                       ; $6af7: $0a
	ld [hl], a                                       ; $6af8: $77
	add b                                            ; $6af9: $80
	ld a, [hl]                                       ; $6afa: $7e
	add $97                                          ; $6afb: $c6 $97
	ld b, b                                          ; $6afd: $40
	cp a                                             ; $6afe: $bf
	and h                                            ; $6aff: $a4
	ld e, a                                          ; $6b00: $5f
	ld c, b                                          ; $6b01: $48
	cp a                                             ; $6b02: $bf
	and d                                            ; $6b03: $a2
	ld e, l                                          ; $6b04: $5d
	halt                                             ; $6b05: $76
	ld h, h                                          ; $6b06: $64
	ld a, h                                          ; $6b07: $7c
	ld b, [hl]                                       ; $6b08: $46
	sub e                                            ; $6b09: $93
	dec hl                                           ; $6b0a: $2b
	call nc, $fa05                                   ; $6b0b: $d4 $05 $fa
	ld a, [bc]                                       ; $6b0e: $0a
	db $f4                                           ; $6b0f: $f4
	ld d, $e8                                        ; $6b10: $16 $e8

jr_045_6b12:
	ld a, [bc]                                       ; $6b12: $0a
	db $f4                                           ; $6b13: $f4
	ld e, $01                                        ; $6b14: $1e $01
	ld [hl], a                                       ; $6b16: $77
	ld d, b                                          ; $6b17: $50
	adc d                                            ; $6b18: $8a
	ld [hl-], a                                      ; $6b19: $32
	rst GetHLinHL                                          ; $6b1a: $cf
	add h                                            ; $6b1b: $84
	inc bc                                           ; $6b1c: $03
	inc bc                                           ; $6b1d: $03
	ld bc, $0102                                     ; $6b1e: $01 $02 $01
	jr nc, jr_045_6b32                               ; $6b21: $30 $0f

	ret c                                            ; $6b23: $d8

	jr nz, jr_045_6b12                               ; $6b24: $20 $ec

	db $10                                           ; $6b26: $10
	ld d, a                                          ; $6b27: $57
	xor b                                            ; $6b28: $a8
	adc d                                            ; $6b29: $8a
	ld [hl], l                                       ; $6b2a: $75
	push de                                          ; $6b2b: $d5
	ld a, [hl-]                                      ; $6b2c: $3a
	xor b                                            ; $6b2d: $a8
	ld a, c                                          ; $6b2e: $79
	sbc b                                            ; $6b2f: $98
	ld a, a                                          ; $6b30: $7f
	ret z                                            ; $6b31: $c8

jr_045_6b32:
	ld a, a                                          ; $6b32: $7f
	dec l                                            ; $6b33: $2d
	add b                                            ; $6b34: $80
	ld [$c515], a                                    ; $6b35: $ea $15 $c5
	ld a, [hl-]                                      ; $6b38: $3a
	add e                                            ; $6b39: $83
	ld a, h                                          ; $6b3a: $7c
	ld d, a                                          ; $6b3b: $57
	ld hl, sp-$71                                    ; $6b3c: $f8 $8f
	ldh a, [$5f]                                     ; $6b3e: $f0 $5f
	ldh [$2a], a                                     ; $6b40: $e0 $2a
	push de                                          ; $6b42: $d5
	ld a, [hl]                                       ; $6b43: $7e
	add c                                            ; $6b44: $81
	xor b                                            ; $6b45: $a8
	ld d, a                                          ; $6b46: $57
	ld d, l                                          ; $6b47: $55
	xor a                                            ; $6b48: $af
	ldh [$1f], a                                     ; $6b49: $e0 $1f
	pop de                                           ; $6b4b: $d1
	cpl                                              ; $6b4c: $2f
	ldh [c], a                                       ; $6b4d: $e2
	rra                                              ; $6b4e: $1f
	push bc                                          ; $6b4f: $c5
	ccf                                              ; $6b50: $3f
	adc d                                            ; $6b51: $8a
	ld a, a                                          ; $6b52: $7f
	ld d, a                                          ; $6b53: $57
	sbc l                                            ; $6b54: $9d
	rst $38                                          ; $6b55: $ff
	xor a                                            ; $6b56: $af
	ld a, e                                          ; $6b57: $7b
	ld d, $9e                                        ; $6b58: $16 $9e
	sbc a                                            ; $6b5a: $9f
	sbc $ff                                          ; $6b5b: $de $ff
	sub h                                            ; $6b5d: $94
	cp $ff                                           ; $6b5e: $fe $ff
	ld d, h                                          ; $6b60: $54
	rst $38                                          ; $6b61: $ff
	jr z, @+$01                                      ; $6b62: $28 $ff

	db $f4                                           ; $6b64: $f4
	rst $38                                          ; $6b65: $ff
	ld a, [$f5ff]                                    ; $6b66: $fa $ff $f5
	ld a, c                                          ; $6b69: $79
	ld h, b                                          ; $6b6a: $60
	ld h, a                                          ; $6b6b: $67
	ld hl, $4f7f                                     ; $6b6c: $21 $7f $4f
	sbc b                                            ; $6b6f: $98
	pop af                                           ; $6b70: $f1
	ld c, $c2                                        ; $6b71: $0e $c2
	inc a                                            ; $6b73: $3c
	ld h, b                                          ; $6b74: $60
	sbc h                                            ; $6b75: $9c
	cp $7b                                           ; $6b76: $fe $7b
	adc b                                            ; $6b78: $88
	adc [hl]                                         ; $6b79: $8e
	rra                                              ; $6b7a: $1f
	ldh [rP1], a                                     ; $6b7b: $e0 $00
	rst $38                                          ; $6b7d: $ff
	add e                                            ; $6b7e: $83
	nop                                              ; $6b7f: $00
	rst AddAOntoHL                                          ; $6b80: $ef
	nop                                              ; $6b81: $00
	ld a, h                                          ; $6b82: $7c
	inc bc                                           ; $6b83: $03
	ld a, l                                          ; $6b84: $7d
	inc bc                                           ; $6b85: $03
	inc a                                            ; $6b86: $3c
	inc bc                                           ; $6b87: $03
	ld a, h                                          ; $6b88: $7c
	inc bc                                           ; $6b89: $03
	pop bc                                           ; $6b8a: $c1
	ld a, e                                          ; $6b8b: $7b
	jr nc, jr_045_6c0b                               ; $6b8c: $30 $7d

	xor [hl]                                         ; $6b8e: $ae
	add b                                            ; $6b8f: $80
	dec a                                            ; $6b90: $3d
	jp nz, $e01f                                     ; $6b91: $c2 $1f $e0

	sub e                                            ; $6b94: $93
	db $ec                                           ; $6b95: $ec
	ld bc, $3dfe                                     ; $6b96: $01 $fe $3d
	cp $f9                                           ; $6b99: $fe $f9
	cp $73                                           ; $6b9b: $fe $73
	db $fc                                           ; $6b9d: $fc
	ld b, b                                          ; $6b9e: $40
	cp a                                             ; $6b9f: $bf
	and b                                            ; $6ba0: $a0
	ld e, a                                          ; $6ba1: $5f
	ld b, c                                          ; $6ba2: $41
	cp [hl]                                          ; $6ba3: $be
	xor d                                            ; $6ba4: $aa
	ld d, l                                          ; $6ba5: $55
	ld d, a                                          ; $6ba6: $57
	xor b                                            ; $6ba7: $a8
	cpl                                              ; $6ba8: $2f
	ret nc                                           ; $6ba9: $d0

	ld d, a                                          ; $6baa: $57
	xor b                                            ; $6bab: $a8
	cp e                                             ; $6bac: $bb
	ld b, h                                          ; $6bad: $44
	add b                                            ; $6bae: $80
	ld a, [hl]                                       ; $6baf: $7e
	ld a, [hl]                                       ; $6bb0: $7e
	add a                                            ; $6bb1: $87
	rst $38                                          ; $6bb2: $ff
	adc [hl]                                         ; $6bb3: $8e
	pop af                                           ; $6bb4: $f1
	rrca                                             ; $6bb5: $0f
	ldh a, [rSC]                                     ; $6bb6: $f0 $02
	db $fd                                           ; $6bb8: $fd
	add b                                            ; $6bb9: $80
	ld a, a                                          ; $6bba: $7f
	ld b, l                                          ; $6bbb: $45
	cp a                                             ; $6bbc: $bf
	and d                                            ; $6bbd: $a2
	ld e, a                                          ; $6bbe: $5f
	db $10                                           ; $6bbf: $10
	ldh [$64], a                                     ; $6bc0: $e0 $64
	add b                                            ; $6bc2: $80
	ld b, $80                                        ; $6bc3: $06 $80
	sbc $00                                          ; $6bc5: $de $00
	jr nc, @-$2f                                     ; $6bc7: $30 $cf

	ld a, [bc]                                       ; $6bc9: $0a
	ld a, c                                          ; $6bca: $79
	ld [$ab9e], sp                                   ; $6bcb: $08 $9e $ab

jr_045_6bce:
	ld l, d                                          ; $6bce: $6a
	jr nc, jr_045_6bce                               ; $6bcf: $30 $fd

	sbc [hl]                                         ; $6bd1: $9e
	ld b, b                                          ; $6bd2: $40
	ld a, c                                          ; $6bd3: $79
	xor h                                            ; $6bd4: $ac
	sbc h                                            ; $6bd5: $9c
	db $dd                                           ; $6bd6: $dd
	nop                                              ; $6bd7: $00
	inc bc                                           ; $6bd8: $03
	ld a, d                                          ; $6bd9: $7a
	ld l, d                                          ; $6bda: $6a
	adc b                                            ; $6bdb: $88
	dec e                                            ; $6bdc: $1d
	ld [bc], a                                       ; $6bdd: $02
	ld a, [de]                                       ; $6bde: $1a
	dec b                                            ; $6bdf: $05
	inc sp                                           ; $6be0: $33
	rrca                                             ; $6be1: $0f
	rst AddAOntoHL                                          ; $6be2: $ef
	rra                                              ; $6be3: $1f
	ld d, a                                          ; $6be4: $57
	xor a                                            ; $6be5: $af
	xor e                                            ; $6be6: $ab
	ld d, l                                          ; $6be7: $55
	add b                                            ; $6be8: $80
	ld a, a                                          ; $6be9: $7f
	ld d, c                                          ; $6bea: $51
	cp $29                                           ; $6beb: $fe $29
	cp $58                                           ; $6bed: $fe $58
	db $fc                                           ; $6bef: $fc
	rst AddAOntoHL                                          ; $6bf0: $ef
	ld hl, sp-$0f                                    ; $6bf1: $f8 $f1
	ld a, e                                          ; $6bf3: $7b
	ld e, [hl]                                       ; $6bf4: $5e
	sbc l                                            ; $6bf5: $9d
	ld a, b                                          ; $6bf6: $78
	rst $38                                          ; $6bf7: $ff
	halt                                             ; $6bf8: $76
	and d                                            ; $6bf9: $a2
	sub e                                            ; $6bfa: $93
	ld l, a                                          ; $6bfb: $6f
	db $10                                           ; $6bfc: $10
	ret nz                                           ; $6bfd: $c0

	ccf                                              ; $6bfe: $3f
	ld a, $ff                                        ; $6bff: $3e $ff
	rst JumpTable                                          ; $6c01: $c7
	rst $38                                          ; $6c02: $ff
	inc sp                                           ; $6c03: $33
	rst GetHLinHL                                          ; $6c04: $cf
	sbc c                                            ; $6c05: $99
	rlca                                             ; $6c06: $07
	ld [hl], l                                       ; $6c07: $75
	sub h                                            ; $6c08: $94
	sbc b                                            ; $6c09: $98
	inc c                                            ; $6c0a: $0c

jr_045_6c0b:
	nop                                              ; $6c0b: $00
	ld e, h                                          ; $6c0c: $5c
	add b                                            ; $6c0d: $80
	nop                                              ; $6c0e: $00
	rst $38                                          ; $6c0f: $ff
	ld d, b                                          ; $6c10: $50
	ld a, e                                          ; $6c11: $7b
	ld c, d                                          ; $6c12: $4a
	ld a, a                                          ; $6c13: $7f
	xor [hl]                                         ; $6c14: $ae
	ld a, a                                          ; $6c15: $7f
	ld a, b                                          ; $6c16: $78
	sbc d                                            ; $6c17: $9a
	ld [de], a                                       ; $6c18: $12
	dec c                                            ; $6c19: $0d
	ld de, $800e                                     ; $6c1a: $11 $0e $80
	ld a, d                                          ; $6c1d: $7a
	ld [hl], $7e                                     ; $6c1e: $36 $7e
	ld [$8a95], a                                    ; $6c20: $ea $95 $8a
	rst $38                                          ; $6c23: $ff
	ld d, a                                          ; $6c24: $57
	rst $38                                          ; $6c25: $ff
	ld b, h                                          ; $6c26: $44
	cp e                                             ; $6c27: $bb
	xor d                                            ; $6c28: $aa
	ld d, l                                          ; $6c29: $55
	ld e, l                                          ; $6c2a: $5d

Call_045_6c2b:
	and d                                            ; $6c2b: $a2
	halt                                             ; $6c2c: $76
	cp h                                             ; $6c2d: $bc
	ld a, [hl]                                       ; $6c2e: $7e
	or h                                             ; $6c2f: $b4
	ld a, [hl]                                       ; $6c30: $7e
	adc d                                            ; $6c31: $8a
	add b                                            ; $6c32: $80
	db $f4                                           ; $6c33: $f4
	nop                                              ; $6c34: $00
	ld e, b                                          ; $6c35: $58
	rst $38                                          ; $6c36: $ff
	xor e                                            ; $6c37: $ab
	ldh a, [$63]                                     ; $6c38: $f0 $63
	ret nz                                           ; $6c3a: $c0

	cp h                                             ; $6c3b: $bc
	jp $8fd3                                         ; $6c3c: $c3 $d3 $8f


	ld [hl], $cf                                     ; $6c3f: $36 $cf
	push bc                                          ; $6c41: $c5
	ccf                                              ; $6c42: $3f
	jp nz, $1f3f                                     ; $6c43: $c2 $3f $1f

	nop                                              ; $6c46: $00
	ld c, $01                                        ; $6c47: $0e $01
	ld a, b                                          ; $6c49: $78
	rlca                                             ; $6c4a: $07
	ldh [$1f], a                                     ; $6c4b: $e0 $1f
	ld h, c                                          ; $6c4d: $61
	sbc [hl]                                         ; $6c4e: $9e
	ld [bc], a                                       ; $6c4f: $02
	db $fd                                           ; $6c50: $fd
	rla                                              ; $6c51: $17
	adc e                                            ; $6c52: $8b
	add sp, $2e                                      ; $6c53: $e8 $2e
	pop de                                           ; $6c55: $d1
	ld b, c                                          ; $6c56: $41
	cp [hl]                                          ; $6c57: $be
	add d                                            ; $6c58: $82
	ld a, l                                          ; $6c59: $7d
	ld d, h                                          ; $6c5a: $54
	xor e                                            ; $6c5b: $ab
	xor b                                            ; $6c5c: $a8
	ld d, a                                          ; $6c5d: $57
	ld d, h                                          ; $6c5e: $54
	xor e                                            ; $6c5f: $ab
	add b                                            ; $6c60: $80
	ld a, a                                          ; $6c61: $7f
	ld b, c                                          ; $6c62: $41
	cp [hl]                                          ; $6c63: $be
	ld a, [bc]                                       ; $6c64: $0a
	push af                                          ; $6c65: $f5
	dec b                                            ; $6c66: $05
	ld a, b                                          ; $6c67: $78
	ld h, b                                          ; $6c68: $60
	ld a, [hl]                                       ; $6c69: $7e
	ldh [$98], a                                     ; $6c6a: $e0 $98
	cp [hl]                                          ; $6c6c: $be
	rst $38                                          ; $6c6d: $ff
	ld e, h                                          ; $6c6e: $5c
	rst $38                                          ; $6c6f: $ff
	cp b                                             ; $6c70: $b8
	rst $38                                          ; $6c71: $ff
	ld de, $f07a                                     ; $6c72: $11 $7a $f0
	ld [hl], h                                       ; $6c75: $74
	ld b, h                                          ; $6c76: $44
	ld a, a                                          ; $6c77: $7f
	xor d                                            ; $6c78: $aa
	sbc h                                            ; $6c79: $9c
	xor [hl]                                         ; $6c7a: $ae
	rst $38                                          ; $6c7b: $ff
	ld e, l                                          ; $6c7c: $5d
	ld a, e                                          ; $6c7d: $7b
	ldh a, [$7f]                                     ; $6c7e: $f0 $7f
	adc [hl]                                         ; $6c80: $8e
	ld a, a                                          ; $6c81: $7f
	ldh a, [$7f]                                     ; $6c82: $f0 $7f
	adc [hl]                                         ; $6c84: $8e
	ld [hl], a                                       ; $6c85: $77
	adc d                                            ; $6c86: $8a
	ld a, a                                          ; $6c87: $7f
	db $fc                                           ; $6c88: $fc
	sbc b                                            ; $6c89: $98
	ld b, l                                          ; $6c8a: $45
	rst $38                                          ; $6c8b: $ff
	ld [bc], a                                       ; $6c8c: $02
	rst $38                                          ; $6c8d: $ff
	dec b                                            ; $6c8e: $05
	rst $38                                          ; $6c8f: $ff
	ld a, [bc]                                       ; $6c90: $0a
	ld a, e                                          ; $6c91: $7b
	xor $7f                                          ; $6c92: $ee $7f
	ld c, $94                                        ; $6c94: $0e $94
	add [hl]                                         ; $6c96: $86
	ld sp, hl                                        ; $6c97: $f9
	rst SubAFromBC                                          ; $6c98: $e7
	ld hl, sp-$11                                    ; $6c99: $f8 $ef
	ldh a, [$df]                                     ; $6c9b: $f0 $df
	ldh [rIE], a                                     ; $6c9d: $e0 $ff
	ret nz                                           ; $6c9f: $c0

	cp a                                             ; $6ca0: $bf
	ld a, b                                          ; $6ca1: $78
	cp a                                             ; $6ca2: $bf
	sbc h                                            ; $6ca3: $9c
	ld de, $e0e0                                     ; $6ca4: $11 $e0 $e0
	ld a, c                                          ; $6ca7: $79
	db $ec                                           ; $6ca8: $ec
	sbc [hl]                                         ; $6ca9: $9e
	jr jr_045_6d26                                   ; $6caa: $18 $7a

	or e                                             ; $6cac: $b3
	sub [hl]                                         ; $6cad: $96
	sub b                                            ; $6cae: $90
	ld l, a                                          ; $6caf: $6f
	sub b                                            ; $6cb0: $90
	ld l, a                                          ; $6cb1: $6f
	ld h, e                                          ; $6cb2: $63
	sbc a                                            ; $6cb3: $9f
	ld hl, sp+$07                                    ; $6cb4: $f8 $07
	ld a, a                                          ; $6cb6: $7f
	ld a, c                                          ; $6cb7: $79
	adc h                                            ; $6cb8: $8c
	ld a, l                                          ; $6cb9: $7d
	ld [hl-], a                                      ; $6cba: $32
	sub b                                            ; $6cbb: $90
	pop af                                           ; $6cbc: $f1
	nop                                              ; $6cbd: $00
	inc a                                            ; $6cbe: $3c
	ret nz                                           ; $6cbf: $c0

jr_045_6cc0:
	ld c, a                                          ; $6cc0: $4f
	or b                                             ; $6cc1: $b0
	pop af                                           ; $6cc2: $f1
	cp $05                                           ; $6cc3: $fe $05
	cp $8c                                           ; $6cc5: $fe $8c
	ld a, a                                          ; $6cc7: $7f
	call c, $cf3f                                    ; $6cc8: $dc $3f $cf
	ld a, e                                          ; $6ccb: $7b
	cp $9b                                           ; $6ccc: $fe $9b
	ld h, a                                          ; $6cce: $67
	rra                                              ; $6ccf: $1f
	rst SubAFromBC                                          ; $6cd0: $e7
	rra                                              ; $6cd1: $1f
	ld l, [hl]                                       ; $6cd2: $6e
	adc c                                            ; $6cd3: $89
	sbc l                                            ; $6cd4: $9d
	rst SubAFromDE                                          ; $6cd5: $df
	jr nz, jr_045_6d3e                               ; $6cd6: $20 $66

	add b                                            ; $6cd8: $80
	ld a, l                                          ; $6cd9: $7d
	db $f4                                           ; $6cda: $f4
	sbc [hl]                                         ; $6cdb: $9e
	pop hl                                           ; $6cdc: $e1
	ld [hl], e                                       ; $6cdd: $73
	rst FarCall                                          ; $6cde: $f7
	adc e                                            ; $6cdf: $8b
	ld a, a                                          ; $6ce0: $7f
	add b                                            ; $6ce1: $80
	rra                                              ; $6ce2: $1f
	ldh [$2c], a                                     ; $6ce3: $e0 $2c
	db $d3                                           ; $6ce5: $d3
	ld bc, $f1fe                                     ; $6ce6: $01 $fe $f1
	rrca                                             ; $6ce9: $0f
	ldh [$1f], a                                     ; $6cea: $e0 $1f
	add b                                            ; $6cec: $80
	ld a, a                                          ; $6ced: $7f
	pop bc                                           ; $6cee: $c1
	ld a, $c1                                        ; $6cef: $3e $c1
	ld a, $90                                        ; $6cf1: $3e $90
	ld l, a                                          ; $6cf3: $6f
	ld a, c                                          ; $6cf4: $79
	or d                                             ; $6cf5: $b2
	adc c                                            ; $6cf6: $89
	rst $38                                          ; $6cf7: $ff
	call nz, $d0f8                                   ; $6cf8: $c4 $f8 $d0
	ldh [$b0], a                                     ; $6cfb: $e0 $b0
	ret nz                                           ; $6cfd: $c0

	jr nc, jr_045_6cc0                               ; $6cfe: $30 $c0

	add a                                            ; $6d00: $87
	ld hl, sp-$08                                    ; $6d01: $f8 $f8
	rst $38                                          ; $6d03: $ff
	ld hl, sp-$02                                    ; $6d04: $f8 $fe
	ld hl, sp-$04                                    ; $6d06: $f8 $fc
	ld [bc], a                                       ; $6d08: $02
	rst $38                                          ; $6d09: $ff
	push bc                                          ; $6d0a: $c5
	ccf                                              ; $6d0b: $3f
	ld a, [bc]                                       ; $6d0c: $0a
	ld a, e                                          ; $6d0d: $7b
	ld e, d                                          ; $6d0e: $5a
	adc e                                            ; $6d0f: $8b
	ld c, b                                          ; $6d10: $48
	rst $38                                          ; $6d11: $ff
	add a                                            ; $6d12: $87
	ld hl, sp+$1c                                    ; $6d13: $f8 $1c
	rst $38                                          ; $6d15: $ff
	rra                                              ; $6d16: $1f
	rst $38                                          ; $6d17: $ff
	db $eb                                           ; $6d18: $eb
	db $fc                                           ; $6d19: $fc
	ld d, e                                          ; $6d1a: $53
	db $fc                                           ; $6d1b: $fc
	xor c                                            ; $6d1c: $a9
	cp $13                                           ; $6d1d: $fe $13
	db $fc                                           ; $6d1f: $fc
	dec bc                                           ; $6d20: $0b
	db $fc                                           ; $6d21: $fc
	and b                                            ; $6d22: $a0
	ld a, a                                          ; $6d23: $7f
	halt                                             ; $6d24: $76
	inc e                                            ; $6d25: $1c

jr_045_6d26:
	ld a, a                                          ; $6d26: $7f
	add d                                            ; $6d27: $82
	ld a, e                                          ; $6d28: $7b
	jp nz, $3f9b                                     ; $6d29: $c2 $9b $3f

	adc l                                            ; $6d2c: $8d
	ld a, a                                          ; $6d2d: $7f
	ld b, $79                                        ; $6d2e: $06 $79
	ld e, $9e                                        ; $6d30: $1e $9e
	ld d, c                                          ; $6d32: $51
	ld a, e                                          ; $6d33: $7b
	ld c, b                                          ; $6d34: $48
	ld a, a                                          ; $6d35: $7f
	ld [hl+], a                                      ; $6d36: $22
	ld a, a                                          ; $6d37: $7f
	cp h                                             ; $6d38: $bc
	ld a, a                                          ; $6d39: $7f
	ld b, $7e                                        ; $6d3a: $06 $7e
	ldh [c], a                                       ; $6d3c: $e2
	sbc c                                            ; $6d3d: $99

jr_045_6d3e:
	xor h                                            ; $6d3e: $ac
	ld d, e                                          ; $6d3f: $53
	dec b                                            ; $6d40: $05
	ld a, [$54a8]                                    ; $6d41: $fa $a8 $54
	ld a, c                                          ; $6d44: $79
	ld d, $7f                                        ; $6d45: $16 $7f

Call_045_6d47:
	call nz, $ea98                                   ; $6d47: $c4 $98 $ea
	cp a                                             ; $6d4a: $bf
	ld b, b                                          ; $6d4b: $40
	ld a, a                                          ; $6d4c: $7f
	add b                                            ; $6d4d: $80
	inc e                                            ; $6d4e: $1c
	db $e3                                           ; $6d4f: $e3
	ld [hl], a                                       ; $6d50: $77
	adc d                                            ; $6d51: $8a
	sbc d                                            ; $6d52: $9a
	ld e, [hl]                                       ; $6d53: $5e
	and c                                            ; $6d54: $a1
	ld bc, $c300                                     ; $6d55: $01 $00 $c3
	ld a, d                                          ; $6d58: $7a
	ld c, $74                                        ; $6d59: $0e $74
	add [hl]                                         ; $6d5b: $86
	sbc l                                            ; $6d5c: $9d
	or l                                             ; $6d5d: $b5
	ld c, d                                          ; $6d5e: $4a
	ld [hl], a                                       ; $6d5f: $77
	sub b                                            ; $6d60: $90
	ld a, l                                          ; $6d61: $7d
	sbc b                                            ; $6d62: $98
	ld a, a                                          ; $6d63: $7f
	cp $82                                           ; $6d64: $fe $82
	add hl, bc                                       ; $6d66: $09
	rlca                                             ; $6d67: $07
	ret nz                                           ; $6d68: $c0

	ccf                                              ; $6d69: $3f
	add hl, bc                                       ; $6d6a: $09
	or $ff                                           ; $6d6b: $f6 $ff
	nop                                              ; $6d6d: $00
	ld d, l                                          ; $6d6e: $55
	xor d                                            ; $6d6f: $aa
	ld a, [bc]                                       ; $6d70: $0a
	push af                                          ; $6d71: $f5
	ld d, l                                          ; $6d72: $55
	xor d                                            ; $6d73: $aa
	add e                                            ; $6d74: $83
	db $fc                                           ; $6d75: $fc
	ld d, a                                          ; $6d76: $57
	add sp, $3f                                      ; $6d77: $e8 $3f
	ret nz                                           ; $6d79: $c0

	ld a, [hl]                                       ; $6d7a: $7e
	add c                                            ; $6d7b: $81
	cp a                                             ; $6d7c: $bf
	ld b, b                                          ; $6d7d: $40
	ld a, [hl]                                       ; $6d7e: $7e
	add c                                            ; $6d7f: $81
	cp l                                             ; $6d80: $bd
	ld b, d                                          ; $6d81: $42
	and b                                            ; $6d82: $a0
	ld a, e                                          ; $6d83: $7b
	ret                                              ; $6d84: $c9


	ld a, l                                          ; $6d85: $7d
	cp $9d                                           ; $6d86: $fe $9d
	ld d, b                                          ; $6d88: $50
	xor a                                            ; $6d89: $af
	ld [hl], a                                       ; $6d8a: $77
	cp h                                             ; $6d8b: $bc
	ld a, a                                          ; $6d8c: $7f
	push af                                          ; $6d8d: $f5
	ld a, h                                          ; $6d8e: $7c
	ld e, [hl]                                       ; $6d8f: $5e
	ld a, [hl]                                       ; $6d90: $7e
	ld a, d                                          ; $6d91: $7a
	ld a, a                                          ; $6d92: $7f
	ldh a, [$7f]                                     ; $6d93: $f0 $7f
	and [hl]                                         ; $6d95: $a6
	sbc l                                            ; $6d96: $9d
	jp z, Jump_045_7535                              ; $6d97: $ca $35 $75

	jr nc, jr_045_6e1b                               ; $6d9a: $30 $7f

	ld hl, sp+$7f                                    ; $6d9c: $f8 $7f
	ld h, d                                          ; $6d9e: $62
	sub h                                            ; $6d9f: $94
	ld [hl], l                                       ; $6da0: $75
	rst $38                                          ; $6da1: $ff
	xor d                                            ; $6da2: $aa
	rra                                              ; $6da3: $1f
	ld d, h                                          ; $6da4: $54
	rrca                                             ; $6da5: $0f
	xor a                                            ; $6da6: $af
	nop                                              ; $6da7: $00
	ld e, a                                          ; $6da8: $5f
	nop                                              ; $6da9: $00
	ld hl, sp+$7a                                    ; $6daa: $f8 $7a
	adc d                                            ; $6dac: $8a
	sbc c                                            ; $6dad: $99
	add c                                            ; $6dae: $81
	ld a, [hl]                                       ; $6daf: $7e
	rlca                                             ; $6db0: $07
	rst $38                                          ; $6db1: $ff
	rlca                                             ; $6db2: $07
	rst $38                                          ; $6db3: $ff
	ld [hl], h                                       ; $6db4: $74
	ld h, d                                          ; $6db5: $62
	ld h, a                                          ; $6db6: $67
	cp $7e                                           ; $6db7: $fe $7e
	adc $7f                                          ; $6db9: $ce $7f
	jr jr_045_6e3a                                   ; $6dbb: $18 $7d

	jp nc, $8f9a                                     ; $6dbd: $d2 $9a $8f

	ld [hl], b                                       ; $6dc0: $70
	rst $38                                          ; $6dc1: $ff
	nop                                              ; $6dc2: $00
	cp $77                                           ; $6dc3: $fe $77
	push bc                                          ; $6dc5: $c5
	sub d                                            ; $6dc6: $92
	nop                                              ; $6dc7: $00
	add c                                            ; $6dc8: $81
	ld a, [hl]                                       ; $6dc9: $7e
	pop bc                                           ; $6dca: $c1
	ld a, $c0                                        ; $6dcb: $3e $c0
	ccf                                              ; $6dcd: $3f
	add b                                            ; $6dce: $80
	ld a, a                                          ; $6dcf: $7f
	add c                                            ; $6dd0: $81
	ld a, [hl]                                       ; $6dd1: $7e
	rra                                              ; $6dd2: $1f
	ldh [$63], a                                     ; $6dd3: $e0 $63
	call c, Call_045_409a                            ; $6dd5: $dc $9a $40
	db $fd                                           ; $6dd8: $fd
	ld [bc], a                                       ; $6dd9: $02
	sbc $21                                          ; $6dda: $de $21
	ld l, a                                          ; $6ddc: $6f
	db $f4                                           ; $6ddd: $f4
	sub a                                            ; $6dde: $97
	di                                               ; $6ddf: $f3
	rrca                                             ; $6de0: $0f
	ld hl, sp+$07                                    ; $6de1: $f8 $07
	ret nc                                           ; $6de3: $d0

	cpl                                              ; $6de4: $2f
	add sp, $17                                      ; $6de5: $e8 $17
	ld h, a                                          ; $6de7: $67
	db $e4                                           ; $6de8: $e4
	ld d, a                                          ; $6de9: $57
	nop                                              ; $6dea: $00
	jp c, $9c55                                      ; $6deb: $da $55 $9c

	ld d, h                                          ; $6dee: $54
	ld b, h                                          ; $6def: $44
	ld b, h                                          ; $6df0: $44
	ld h, a                                          ; $6df1: $67
	rst FarCall                                          ; $6df2: $f7
	sbc h                                            ; $6df3: $9c
	ld b, [hl]                                       ; $6df4: $46
	scf                                              ; $6df5: $37
	ld d, l                                          ; $6df6: $55
	ld [hl], e                                       ; $6df7: $73
	di                                               ; $6df8: $f3
	sbc e                                            ; $6df9: $9b
	ld d, h                                          ; $6dfa: $54
	ld h, h                                          ; $6dfb: $64
	ld b, e                                          ; $6dfc: $43
	inc sp                                           ; $6dfd: $33
	ld a, e                                          ; $6dfe: $7b
	or $9b                                           ; $6dff: $f6 $9b
	ld b, l                                          ; $6e01: $45
	ld d, l                                          ; $6e02: $55
	ld d, l                                          ; $6e03: $55
	ld b, h                                          ; $6e04: $44
	sbc $66                                          ; $6e05: $de $66
	jp c, $9c55                                      ; $6e07: $da $55 $9c

	inc sp                                           ; $6e0a: $33
	ld h, [hl]                                       ; $6e0b: $66
	ld b, [hl]                                       ; $6e0c: $46
	db $db                                           ; $6e0d: $db
	ld d, l                                          ; $6e0e: $55
	sbc e                                            ; $6e0f: $9b
	ld b, [hl]                                       ; $6e10: $46
	ld h, e                                          ; $6e11: $63
	ld [hl], $33                                     ; $6e12: $36 $33
	ld l, a                                          ; $6e14: $6f
	rst GetHLinHL                                          ; $6e15: $cf
	sbc e                                            ; $6e16: $9b
	ld h, [hl]                                       ; $6e17: $66
	ld h, e                                          ; $6e18: $63
	inc [hl]                                         ; $6e19: $34
	ld b, e                                          ; $6e1a: $43

jr_045_6e1b:
	sbc $44                                          ; $6e1b: $de $44
	sub a                                            ; $6e1d: $97
	ld b, [hl]                                       ; $6e1e: $46
	ld h, [hl]                                       ; $6e1f: $66
	ld h, h                                          ; $6e20: $64
	ld h, [hl]                                       ; $6e21: $66
	ld h, e                                          ; $6e22: $63
	ld h, [hl]                                       ; $6e23: $66
	ld h, e                                          ; $6e24: $63
	ld h, e                                          ; $6e25: $63
	ld a, e                                          ; $6e26: $7b
	db $d3                                           ; $6e27: $d3
	sub [hl]                                         ; $6e28: $96
	inc sp                                           ; $6e29: $33
	ld [hl], $33                                     ; $6e2a: $36 $33
	inc sp                                           ; $6e2c: $33
	scf                                              ; $6e2d: $37
	ld [hl], a                                       ; $6e2e: $77
	ld [hl], $64                                     ; $6e2f: $36 $64
	ld h, [hl]                                       ; $6e31: $66
	ld a, e                                          ; $6e32: $7b
	pop af                                           ; $6e33: $f1
	rst SubAFromDE                                          ; $6e34: $df
	inc sp                                           ; $6e35: $33
	db $dd                                           ; $6e36: $dd
	ld [hl], a                                       ; $6e37: $77
	sbc d                                            ; $6e38: $9a
	ld h, [hl]                                       ; $6e39: $66

jr_045_6e3a:
	ld h, a                                          ; $6e3a: $67
	ld [hl], a                                       ; $6e3b: $77
	ld [hl], e                                       ; $6e3c: $73
	ld h, [hl]                                       ; $6e3d: $66
	sbc $77                                          ; $6e3e: $de $77
	jr z, jr_045_6e4e                                ; $6e40: $28 $0c

	sub e                                            ; $6e42: $93
	xor e                                            ; $6e43: $ab
	rst $38                                          ; $6e44: $ff
	ld d, l                                          ; $6e45: $55
	rst $38                                          ; $6e46: $ff
	xor d                                            ; $6e47: $aa
	rst $38                                          ; $6e48: $ff
	ld d, l                                          ; $6e49: $55
	xor a                                            ; $6e4a: $af
	xor d                                            ; $6e4b: $aa
	ld d, l                                          ; $6e4c: $55
	ld d, l                                          ; $6e4d: $55

jr_045_6e4e:
	xor d                                            ; $6e4e: $aa
	ld [hl], a                                       ; $6e4f: $77
	db $fc                                           ; $6e50: $fc
	rst SubAFromDE                                          ; $6e51: $df
	rst $38                                          ; $6e52: $ff
	sbc l                                            ; $6e53: $9d
	rst SubAFromDE                                          ; $6e54: $df
	rst $38                                          ; $6e55: $ff
	ld l, e                                          ; $6e56: $6b
	db $ec                                           ; $6e57: $ec
	ld a, a                                          ; $6e58: $7f
	db $fc                                           ; $6e59: $fc
	sbc c                                            ; $6e5a: $99
	ld e, a                                          ; $6e5b: $5f
	ld d, l                                          ; $6e5c: $55
	xor a                                            ; $6e5d: $af
	rst $38                                          ; $6e5e: $ff
	rst $38                                          ; $6e5f: $ff
	cp $de                                           ; $6e60: $fe $de
	rst $38                                          ; $6e62: $ff
	ld a, a                                          ; $6e63: $7f
	db $ec                                           ; $6e64: $ec
	sbc d                                            ; $6e65: $9a
	rst AddAOntoHL                                          ; $6e66: $ef
	rst $38                                          ; $6e67: $ff
	ld e, a                                          ; $6e68: $5f
	rst $38                                          ; $6e69: $ff
	cp [hl]                                          ; $6e6a: $be
	ld a, e                                          ; $6e6b: $7b
	db $ec                                           ; $6e6c: $ec
	sub l                                            ; $6e6d: $95
	ret nc                                           ; $6e6e: $d0

	rst $38                                          ; $6e6f: $ff
	xor b                                            ; $6e70: $a8
	rst $38                                          ; $6e71: $ff
	ld e, b                                          ; $6e72: $58
	rst $38                                          ; $6e73: $ff
	ldh [rIE], a                                     ; $6e74: $e0 $ff
	pop bc                                           ; $6e76: $c1
	rst $38                                          ; $6e77: $ff
	ld a, e                                          ; $6e78: $7b
	push hl                                          ; $6e79: $e5
	sbc $ff                                          ; $6e7a: $de $ff
	cp l                                             ; $6e7c: $bd
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	rst $38                                          ; $6e7f: $ff
	rst $38                                          ; $6e80: $ff
	sbc [hl]                                         ; $6e81: $9e
	ret nz                                           ; $6e82: $c0

	ld [hl], e                                       ; $6e83: $73
	cp $7f                                           ; $6e84: $fe $7f
	add sp, -$46                                     ; $6e86: $e8 $ba
	rst $38                                          ; $6e88: $ff
	rst $38                                          ; $6e89: $ff
	rst $38                                          ; $6e8a: $ff
	rst $38                                          ; $6e8b: $ff
	rst $38                                          ; $6e8c: $ff
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	sbc [hl]                                         ; $6e8f: $9e
	rlca                                             ; $6e90: $07
	ld c, e                                          ; $6e91: $4b
	ldh a, [$5f]                                     ; $6e92: $f0 $5f
	ret nc                                           ; $6e94: $d0

	cp [hl]                                          ; $6e95: $be
	rst $38                                          ; $6e96: $ff
	rst $38                                          ; $6e97: $ff
	rst $38                                          ; $6e98: $ff
	sbc l                                            ; $6e99: $9d
	push de                                          ; $6e9a: $d5
	xor d                                            ; $6e9b: $aa
	cp d                                             ; $6e9c: $ba
	rst $38                                          ; $6e9d: $ff
	rst $38                                          ; $6e9e: $ff
	rst $38                                          ; $6e9f: $ff
	rst $38                                          ; $6ea0: $ff
	rst $38                                          ; $6ea1: $ff
	rst $38                                          ; $6ea2: $ff
	rst $38                                          ; $6ea3: $ff
	sbc [hl]                                         ; $6ea4: $9e
	ld a, a                                          ; $6ea5: $7f
	ld c, e                                          ; $6ea6: $4b
	ldh [$9d], a                                     ; $6ea7: $e0 $9d
	db $fc                                           ; $6ea9: $fc
	ei                                               ; $6eaa: $fb
	or d                                             ; $6eab: $b2
	rst $38                                          ; $6eac: $ff
	rst $38                                          ; $6ead: $ff
	rst $38                                          ; $6eae: $ff
	rst $38                                          ; $6eaf: $ff
	rst $38                                          ; $6eb0: $ff
	rst $38                                          ; $6eb1: $ff
	rst $38                                          ; $6eb2: $ff
	rst $38                                          ; $6eb3: $ff
	rst $38                                          ; $6eb4: $ff
	rst $38                                          ; $6eb5: $ff
	rst $38                                          ; $6eb6: $ff
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	sbc h                                            ; $6ebb: $9c
	ld [bc], a                                       ; $6ebc: $02
	rst $38                                          ; $6ebd: $ff
	ld bc, $f873                                     ; $6ebe: $01 $73 $f8
	sbc h                                            ; $6ec1: $9c
	rla                                              ; $6ec2: $17
	rst $38                                          ; $6ec3: $ff
	rrca                                             ; $6ec4: $0f
	ld l, e                                          ; $6ec5: $6b
	cp $9c                                           ; $6ec6: $fe $9c
	ld l, e                                          ; $6ec8: $6b
	rst $38                                          ; $6ec9: $ff
	ccf                                              ; $6eca: $3f
	ld a, e                                          ; $6ecb: $7b
	cp d                                             ; $6ecc: $ba
	reti                                             ; $6ecd: $d9


	rst $38                                          ; $6ece: $ff
	sbc [hl]                                         ; $6ecf: $9e
	cp a                                             ; $6ed0: $bf
	sub $ff                                          ; $6ed1: $d6 $ff
	sbc b                                            ; $6ed3: $98
	xor $ff                                          ; $6ed4: $ee $ff
	push bc                                          ; $6ed6: $c5
	rst $38                                          ; $6ed7: $ff
	adc d                                            ; $6ed8: $8a
	rst $38                                          ; $6ed9: $ff
	db $fd                                           ; $6eda: $fd
	ld [hl], e                                       ; $6edb: $73
	jr nc, jr_045_6f5d                               ; $6edc: $30 $7f

	db $fc                                           ; $6ede: $fc
	sbc [hl]                                         ; $6edf: $9e
	push de                                          ; $6ee0: $d5
	ld a, e                                          ; $6ee1: $7b
	ld e, $77                                        ; $6ee2: $1e $77
	db $fc                                           ; $6ee4: $fc
	db $dd                                           ; $6ee5: $dd
	rst $38                                          ; $6ee6: $ff
	sbc [hl]                                         ; $6ee7: $9e
	ld d, a                                          ; $6ee8: $57
	ld [hl], e                                       ; $6ee9: $73
	ld [de], a                                       ; $6eea: $12
	add b                                            ; $6eeb: $80
	xor [hl]                                         ; $6eec: $ae
	rst $38                                          ; $6eed: $ff
	ld d, h                                          ; $6eee: $54
	db $fd                                           ; $6eef: $fd
	xor b                                            ; $6ef0: $a8
	ld hl, sp-$0b                                    ; $6ef1: $f8 $f5
	rst $38                                          ; $6ef3: $ff
	ld a, [$f5ff]                                    ; $6ef4: $fa $ff $f5
	rst $38                                          ; $6ef7: $ff
	cp d                                             ; $6ef8: $ba
	rst $38                                          ; $6ef9: $ff
	ld d, l                                          ; $6efa: $55
	ei                                               ; $6efb: $fb
	ret z                                            ; $6efc: $c8

	call nz, $c061                                   ; $6efd: $c4 $61 $c0
	jp nz, Jump_045_7fed                             ; $6f00: $c2 $ed $7f

Call_045_6f03:
	cp a                                             ; $6f03: $bf
	rra                                              ; $6f04: $1f
	cp a                                             ; $6f05: $bf
	rst $38                                          ; $6f06: $ff
	cp a                                             ; $6f07: $bf
	cp [hl]                                          ; $6f08: $be
	rst $38                                          ; $6f09: $ff
	or a                                             ; $6f0a: $b7
	sbc e                                            ; $6f0b: $9b
	ld hl, sp-$01                                    ; $6f0c: $f8 $ff
	rlca                                             ; $6f0e: $07

Call_045_6f0f:
	db $fc                                           ; $6f0f: $fc
	ld a, e                                          ; $6f10: $7b
	sub b                                            ; $6f11: $90
	db $dd                                           ; $6f12: $dd
	rst $38                                          ; $6f13: $ff
	adc d                                            ; $6f14: $8a
	di                                               ; $6f15: $f3
	db $fc                                           ; $6f16: $fc
	ld a, l                                          ; $6f17: $7d
	add e                                            ; $6f18: $83
	sbc $7f                                          ; $6f19: $de $7f
	ldh [rIE], a                                     ; $6f1b: $e0 $ff
	ld c, d                                          ; $6f1d: $4a
	rst SubAFromBC                                          ; $6f1e: $e7
	add e                                            ; $6f1f: $83
	pop bc                                           ; $6f20: $c1
	xor d                                            ; $6f21: $aa
	ld d, l                                          ; $6f22: $55
	dec d                                            ; $6f23: $15
	ld a, [bc]                                       ; $6f24: $0a
	ld [bc], a                                       ; $6f25: $02
	pop hl                                           ; $6f26: $e1
	nop                                              ; $6f27: $00
	db $fc                                           ; $6f28: $fc
	ld c, $77                                        ; $6f29: $0e $77
	halt                                             ; $6f2b: $76
	adc h                                            ; $6f2c: $8c
	ld a, a                                          ; $6f2d: $7f
	nop                                              ; $6f2e: $00
	ld a, $af                                        ; $6f2f: $3e $af
	ld e, a                                          ; $6f31: $5f
	ld e, a                                          ; $6f32: $5f
	xor a                                            ; $6f33: $af
	xor c                                            ; $6f34: $a9
	ld e, a                                          ; $6f35: $5f
	ld e, e                                          ; $6f36: $5b
	dec l                                            ; $6f37: $2d

Call_045_6f38:
	ld bc, $82cf                                     ; $6f38: $01 $cf $82
	pop af                                           ; $6f3b: $f1
	rra                                              ; $6f3c: $1f
	ld a, [hl]                                       ; $6f3d: $7e
	inc de                                           ; $6f3e: $13
	ld sp, hl                                        ; $6f3f: $f9
	ld [hl], d                                       ; $6f40: $72
	cp b                                             ; $6f41: $b8
	ld [hl], e                                       ; $6f42: $73
	db $fc                                           ; $6f43: $fc
	sbc b                                            ; $6f44: $98
	dec [hl]                                         ; $6f45: $35
	rrca                                             ; $6f46: $0f
	ld [bc], a                                       ; $6f47: $02
	dec b                                            ; $6f48: $05
	ld b, l                                          ; $6f49: $45

jr_045_6f4a:
	add d                                            ; $6f4a: $82
	cp a                                             ; $6f4b: $bf
	ld a, e                                          ; $6f4c: $7b
	ld h, d                                          ; $6f4d: $62
	ld a, a                                          ; $6f4e: $7f
	db $fc                                           ; $6f4f: $fc
	ld l, a                                          ; $6f50: $6f
	adc [hl]                                         ; $6f51: $8e
	sbc b                                            ; $6f52: $98
	xor h                                            ; $6f53: $ac
	ld e, e                                          ; $6f54: $5b
	ld e, c                                          ; $6f55: $59
	and l                                            ; $6f56: $a5
	ld hl, sp-$01                                    ; $6f57: $f8 $ff
	ldh a, [$7b]                                     ; $6f59: $f0 $7b

jr_045_6f5b:
	cp $98                                           ; $6f5b: $fe $98

jr_045_6f5d:
	ld d, b                                          ; $6f5d: $50
	rst $38                                          ; $6f5e: $ff
	and b                                            ; $6f5f: $a0
	rst $38                                          ; $6f60: $ff
	ld d, c                                          ; $6f61: $51
	rst $38                                          ; $6f62: $ff
	and d                                            ; $6f63: $a2
	ld a, e                                          ; $6f64: $7b
	ld l, [hl]                                       ; $6f65: $6e
	sbc e                                            ; $6f66: $9b
	ld [bc], a                                       ; $6f67: $02
	db $fd                                           ; $6f68: $fd
	ld bc, $befe                                     ; $6f69: $01 $fe $be
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rst $38                                          ; $6f6e: $ff
	sbc h                                            ; $6f6f: $9c
	inc bc                                           ; $6f70: $03
	db $fc                                           ; $6f71: $fc
	add b                                            ; $6f72: $80
	ld a, e                                          ; $6f73: $7b
	ld a, [$a07f]                                    ; $6f74: $fa $7f $a0
	adc e                                            ; $6f77: $8b
	ld d, b                                          ; $6f78: $50
	xor a                                            ; $6f79: $af
	jr nz, jr_045_6f5b                               ; $6f7a: $20 $df

	ld b, b                                          ; $6f7c: $40
	cp a                                             ; $6f7d: $bf
	ld h, b                                          ; $6f7e: $60
	sbc a                                            ; $6f7f: $9f
	ld d, l                                          ; $6f80: $55
	xor d                                            ; $6f81: $aa
	and b                                            ; $6f82: $a0
	ld b, h                                          ; $6f83: $44
	ld b, b                                          ; $6f84: $40
	cp a                                             ; $6f85: $bf
	add b                                            ; $6f86: $80
	ld b, b                                          ; $6f87: $40
	jr nz, jr_045_6f4a                               ; $6f88: $20 $c0

	nop                                              ; $6f8a: $00
	ret nz                                           ; $6f8b: $c0

	ld [hl], a                                       ; $6f8c: $77
	db $fc                                           ; $6f8d: $fc
	ld a, a                                          ; $6f8e: $7f
	ldh a, [$bf]                                     ; $6f8f: $f0 $bf
	xor d                                            ; $6f91: $aa
	rst $38                                          ; $6f92: $ff
	sbc c                                            ; $6f93: $99
	ld a, [hl+]                                      ; $6f94: $2a
	ld d, l                                          ; $6f95: $55
	add c                                            ; $6f96: $81
	ld a, [hl]                                       ; $6f97: $7e
	nop                                              ; $6f98: $00
	ld a, a                                          ; $6f99: $7f
	ld [hl], a                                       ; $6f9a: $77
	db $fc                                           ; $6f9b: $fc
	ld a, e                                          ; $6f9c: $7b
	ldh a, [$9a]                                     ; $6f9d: $f0 $9a
	sub c                                            ; $6f9f: $91
	ld bc, $a8fe                                     ; $6fa0: $01 $fe $a8
	ld d, a                                          ; $6fa3: $57
	ld a, e                                          ; $6fa4: $7b
	call c, Call_045_7f9e                            ; $6fa5: $dc $9e $7f
	ld [hl], a                                       ; $6fa8: $77
	db $fc                                           ; $6fa9: $fc
	ld a, a                                          ; $6faa: $7f
	ret z                                            ; $6fab: $c8

	sbc e                                            ; $6fac: $9b
	and b                                            ; $6fad: $a0
	ld e, a                                          ; $6fae: $5f
	ld b, b                                          ; $6faf: $40
	cp a                                             ; $6fb0: $bf
	cp a                                             ; $6fb1: $bf
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	halt                                             ; $6fb4: $76
	call c, $fc7f                                    ; $6fb5: $dc $7f $fc
	ld a, a                                          ; $6fb8: $7f
	ld b, h                                          ; $6fb9: $44
	sbc [hl]                                         ; $6fba: $9e
	dec b                                            ; $6fbb: $05
	ld a, e                                          ; $6fbc: $7b
	db $fc                                           ; $6fbd: $fc
	sub [hl]                                         ; $6fbe: $96
	add l                                            ; $6fbf: $85
	rst $38                                          ; $6fc0: $ff
	sbc e                                            ; $6fc1: $9b
	rst $38                                          ; $6fc2: $ff
	ld e, l                                          ; $6fc3: $5d
	rst $38                                          ; $6fc4: $ff
	ld l, $ff                                        ; $6fc5: $2e $ff
	ld b, l                                          ; $6fc7: $45
	ld l, e                                          ; $6fc8: $6b
	ld l, d                                          ; $6fc9: $6a
	sbc [hl]                                         ; $6fca: $9e
	dec d                                            ; $6fcb: $15
	ld l, e                                          ; $6fcc: $6b
	ld hl, sp+$73                                    ; $6fcd: $f8 $73
	db $fc                                           ; $6fcf: $fc
	sbc e                                            ; $6fd0: $9b
	ld a, [$f5aa]                                    ; $6fd1: $fa $aa $f5
	db $fd                                           ; $6fd4: $fd
	ld a, e                                          ; $6fd5: $7b
	ld hl, sp-$62                                    ; $6fd6: $f8 $9e
	ld d, h                                          ; $6fd8: $54
	ld a, e                                          ; $6fd9: $7b
	db $fc                                           ; $6fda: $fc
	sub c                                            ; $6fdb: $91
	ld d, c                                          ; $6fdc: $51
	ldh a, [c]                                       ; $6fdd: $f2
	and d                                            ; $6fde: $a2
	pop af                                           ; $6fdf: $f1
	ld d, c                                          ; $6fe0: $51
	or d                                             ; $6fe1: $b2
	and b                                            ; $6fe2: $a0
	ld d, b                                          ; $6fe3: $50
	ld d, l                                          ; $6fe4: $55
	rst $38                                          ; $6fe5: $ff
	ld a, [bc]                                       ; $6fe6: $0a
	db $fd                                           ; $6fe7: $fd
	dec d                                            ; $6fe8: $15
	ld [$e271], a                                    ; $6fe9: $ea $71 $e2
	sbc d                                            ; $6fec: $9a
	ld d, h                                          ; $6fed: $54
	ld b, b                                          ; $6fee: $40
	and b                                            ; $6fef: $a0
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	ld a, e                                          ; $6ff2: $7b
	call c, $d671                                    ; $6ff3: $dc $71 $d6
	sbc [hl]                                         ; $6ff6: $9e
	ld d, b                                          ; $6ff7: $50
	ld a, e                                          ; $6ff8: $7b
	db $f4                                           ; $6ff9: $f4
	db $fd                                           ; $6ffa: $fd
	sbc [hl]                                         ; $6ffb: $9e
	xor c                                            ; $6ffc: $a9
	ld a, e                                          ; $6ffd: $7b
	ld c, b                                          ; $6ffe: $48
	sbc c                                            ; $6fff: $99
	xor [hl]                                         ; $7000: $ae
	ld sp, hl                                        ; $7001: $f9
	ld [bc], a                                       ; $7002: $02
	di                                               ; $7003: $f3
	ld b, d                                          ; $7004: $42
	add hl, sp                                       ; $7005: $39
	cp [hl]                                          ; $7006: $be
	ei                                               ; $7007: $fb
	ei                                               ; $7008: $fb
	ei                                               ; $7009: $fb
	sub a                                            ; $700a: $97
	ld b, a                                          ; $700b: $47
	ldh [c], a                                       ; $700c: $e2
	add [hl]                                         ; $700d: $86
	ld h, a                                          ; $700e: $67
	rra                                              ; $700f: $1f
	ld c, $0a                                        ; $7010: $0e $0a
	rla                                              ; $7012: $17
	cp l                                             ; $7013: $bd
	ld [bc], a                                       ; $7014: $02
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	add b                                            ; $7018: $80
	dec h                                            ; $7019: $25
	ld hl, sp+$4c                                    ; $701a: $f8 $4c
	ld hl, sp+$01                                    ; $701c: $f8 $01
	cp $40                                           ; $701e: $fe $40
	cp $24                                           ; $7020: $fe $24
	db $fc                                           ; $7022: $fc
	ld b, b                                          ; $7023: $40
	db $fc                                           ; $7024: $fc
	ld hl, $48fc                                     ; $7025: $21 $fc $48
	ld sp, hl                                        ; $7028: $f9
	ld a, [de]                                       ; $7029: $1a
	ld bc, $3f10                                     ; $702a: $01 $10 $3f
	jr nz, jr_045_70ae                               ; $702d: $20 $7f

	ld b, d                                          ; $702f: $42
	ld h, c                                          ; $7030: $61
	ld b, b                                          ; $7031: $40
	ld sp, hl                                        ; $7032: $f9
	xor c                                            ; $7033: $a9
	rst $38                                          ; $7034: $ff
	add b                                            ; $7035: $80
	rst $38                                          ; $7036: $ff
	pop bc                                           ; $7037: $c1
	add b                                            ; $7038: $80
	sbc b                                            ; $7039: $98
	nop                                              ; $703a: $00
	inc a                                            ; $703b: $3c
	inc b                                            ; $703c: $04
	ld [hl], d                                       ; $703d: $72
	inc b                                            ; $703e: $04
	ld a, [$7d02]                                    ; $703f: $fa $02 $7d
	xor d                                            ; $7042: $aa
	nop                                              ; $7043: $00
	ld h, a                                          ; $7044: $67
	db $10                                           ; $7045: $10
	rst SubAFromDE                                          ; $7046: $df
	jr nz, jr_045_7096                               ; $7047: $20 $4d

	ld [hl-], a                                      ; $7049: $32
	nop                                              ; $704a: $00
	rst JumpTable                                          ; $704b: $c7
	inc b                                            ; $704c: $04
	rst FarCall                                          ; $704d: $f7
	dec b                                            ; $704e: $05
	xor $03                                          ; $704f: $ee $03
	call c, $3807                                    ; $7051: $dc $07 $38
	ld d, a                                          ; $7054: $57
	nop                                              ; $7055: $00
	rst $38                                          ; $7056: $ff
	inc b                                            ; $7057: $04
	ld a, a                                          ; $7058: $7f
	cp $9a                                           ; $7059: $fe $9a
	rra                                              ; $705b: $1f
	rst $38                                          ; $705c: $ff
	ld a, [hl+]                                      ; $705d: $2a
	push de                                          ; $705e: $d5
	ld a, a                                          ; $705f: $7f
	halt                                             ; $7060: $76
	rst FarCall                                          ; $7061: $f7
	cp [hl]                                          ; $7062: $be
	rst $38                                          ; $7063: $ff
	rst $38                                          ; $7064: $ff
	db $fd                                           ; $7065: $fd
	sbc b                                            ; $7066: $98
	ld e, $de                                        ; $7067: $1e $de
	db $ed                                           ; $7069: $ed
	cp l                                             ; $706a: $bd
	ld b, d                                          ; $706b: $42
	ld a, [$7705]                                    ; $706c: $fa $05 $77
	db $f4                                           ; $706f: $f4
	sbc b                                            ; $7070: $98
	rst AddAOntoHL                                          ; $7071: $ef
	db $10                                           ; $7072: $10
	ld a, a                                          ; $7073: $7f
	add b                                            ; $7074: $80
	db $ed                                           ; $7075: $ed
	ld [de], a                                       ; $7076: $12
	ccf                                              ; $7077: $3f
	ld a, d                                          ; $7078: $7a
	xor a                                            ; $7079: $af
	ld a, [hl]                                       ; $707a: $7e
	ld e, h                                          ; $707b: $5c
	sbc h                                            ; $707c: $9c
	or a                                             ; $707d: $b7
	ld c, a                                          ; $707e: $4f
	db $fc                                           ; $707f: $fc
	ld a, e                                          ; $7080: $7b
	dec de                                           ; $7081: $1b
	sbc d                                            ; $7082: $9a
	rst FarCall                                          ; $7083: $f7
	dec c                                            ; $7084: $0d
	xor l                                            ; $7085: $ad
	jp c, Jump_045_7980                              ; $7086: $da $80 $79

	ld a, d                                          ; $7089: $7a
	ld a, a                                          ; $708a: $7f
	db $e3                                           ; $708b: $e3
	ld a, a                                          ; $708c: $7f
	ld a, [$a893]                                    ; $708d: $fa $93 $a8

Jump_045_7090:
	rrca                                             ; $7090: $0f
	ld l, d                                          ; $7091: $6a
	ccf                                              ; $7092: $3f
	and b                                            ; $7093: $a0
	dec de                                           ; $7094: $1b
	ld d, h                                          ; $7095: $54

jr_045_7096:
	inc bc                                           ; $7096: $03
	ld h, b                                          ; $7097: $60
	sbc a                                            ; $7098: $9f
	ret nz                                           ; $7099: $c0

	ccf                                              ; $709a: $3f
	ld a, e                                          ; $709b: $7b
	db $fc                                           ; $709c: $fc
	sub [hl]                                         ; $709d: $96
	ld l, $60                                        ; $709e: $2e $60
	sub l                                            ; $70a0: $95
	ret nz                                           ; $70a1: $c0

	ld a, [hl+]                                      ; $70a2: $2a
	ld h, d                                          ; $70a3: $62
	sub l                                            ; $70a4: $95
	ld b, [hl]                                       ; $70a5: $46
	ld [bc], a                                       ; $70a6: $02
	cp [hl]                                          ; $70a7: $be
	rst $38                                          ; $70a8: $ff
	rst $38                                          ; $70a9: $ff
	push de                                          ; $70aa: $d5
	sub e                                            ; $70ab: $93
	inc c                                            ; $70ac: $0c
	and [hl]                                         ; $70ad: $a6

jr_045_70ae:
	inc de                                           ; $70ae: $13
	ld h, c                                          ; $70af: $61
	ld b, b                                          ; $70b0: $40
	add b                                            ; $70b1: $80
	sub l                                            ; $70b2: $95
	ld a, [bc]                                       ; $70b3: $0a
	ld h, b                                          ; $70b4: $60
	rra                                              ; $70b5: $1f
	ld bc, $76fe                                     ; $70b6: $01 $fe $76
	sub b                                            ; $70b9: $90
	sub e                                            ; $70ba: $93
	ld bc, $005e                                     ; $70bb: $01 $5e $00
	xor e                                            ; $70be: $ab
	ld hl, $0854                                     ; $70bf: $21 $54 $08
	inc de                                           ; $70c2: $13
	ld c, l                                          ; $70c3: $4d
	adc b                                            ; $70c4: $88
	ret nz                                           ; $70c5: $c0

	ld a, a                                          ; $70c6: $7f
	ld [hl], a                                       ; $70c7: $77
	cp $94                                           ; $70c8: $fe $94
	jp $cf7f                                         ; $70ca: $c3 $7f $cf


	ld a, a                                          ; $70cd: $7f
	rst SubAFromDE                                          ; $70ce: $df
	ld a, a                                          ; $70cf: $7f
	sbc h                                            ; $70d0: $9c
	ld a, [hl]                                       ; $70d1: $7e
	sbc h                                            ; $70d2: $9c
	ld a, h                                          ; $70d3: $7c
	inc bc                                           ; $70d4: $03
	ld a, d                                          ; $70d5: $7a
	add $7d                                          ; $70d6: $c6 $7d
	ld a, [hl-]                                      ; $70d8: $3a
	sub l                                            ; $70d9: $95
	rst GetHLinHL                                          ; $70da: $cf
	rst $38                                          ; $70db: $ff
	add a                                            ; $70dc: $87
	rst GetHLinHL                                          ; $70dd: $cf
	cp $ff                                           ; $70de: $fe $ff
	ld [hl], $37                                     ; $70e0: $36 $37
	ld b, $07                                        ; $70e2: $06 $07
	ld a, d                                          ; $70e4: $7a

jr_045_70e5:
	ret c                                            ; $70e5: $d8

	add b                                            ; $70e6: $80
	rst SubAFromHL                                          ; $70e7: $d7
	ld d, l                                          ; $70e8: $55
	xor [hl]                                         ; $70e9: $ae
	cp d                                             ; $70ea: $ba
	ld e, [hl]                                       ; $70eb: $5e
	ld e, [hl]                                       ; $70ec: $5e
	cp d                                             ; $70ed: $ba
	ld a, [bc]                                       ; $70ee: $0a
	ld d, h                                          ; $70ef: $54
	db $10                                           ; $70f0: $10
	and c                                            ; $70f1: $a1
	ld [$fb51], sp                                   ; $70f2: $08 $51 $fb
	rst $38                                          ; $70f5: $ff
	jp $d3ff                                         ; $70f6: $c3 $ff $d3


	adc a                                            ; $70f9: $8f
	rlca                                             ; $70fa: $07
	cp a                                             ; $70fb: $bf
	add b                                            ; $70fc: $80
	inc de                                           ; $70fd: $13
	ld d, d                                          ; $70fe: $52
	and c                                            ; $70ff: $a1
	jr nc, jr_045_70e5                               ; $7100: $30 $e3

	and b                                            ; $7102: $a0
	ret nc                                           ; $7103: $d0

	cp h                                             ; $7104: $bc
	adc $91                                          ; $7105: $ce $91
	ld c, c                                          ; $7107: $49
	sbc [hl]                                         ; $7108: $9e
	add e                                            ; $7109: $83
	ld a, e                                          ; $710a: $7b
	ld d, h                                          ; $710b: $54
	xor e                                            ; $710c: $ab
	add [hl]                                         ; $710d: $86
	add hl, bc                                       ; $710e: $09
	daa                                              ; $710f: $27
	ret c                                            ; $7110: $d8

	rst SubAFromHL                                          ; $7111: $d7
	ld hl, sp+$47                                    ; $7112: $f8 $47
	cp b                                             ; $7114: $b8
	cp a                                             ; $7115: $bf
	ccf                                              ; $7116: $3f
	sbc [hl]                                         ; $7117: $9e
	add b                                            ; $7118: $80
	add c                                            ; $7119: $81
	ld [hl], b                                       ; $711a: $70
	ld d, e                                          ; $711b: $53
	xor b                                            ; $711c: $a8
	xor l                                            ; $711d: $ad
	ld d, d                                          ; $711e: $52
	jp nz, wButtonsPressed                                     ; $711f: $c2 $25 $c1

	ld [bc], a                                       ; $7122: $02
	jp nz, $0001                                     ; $7123: $c2 $01 $00

	rst $38                                          ; $7126: $ff
	inc c                                            ; $7127: $0c
	ldh [c], a                                       ; $7128: $e2
	ld e, e                                          ; $7129: $5b
	inc b                                            ; $712a: $04
	db $fd                                           ; $712b: $fd
	ld [bc], a                                       ; $712c: $02
	ld [hl], b                                       ; $712d: $70
	add b                                            ; $712e: $80
	and b                                            ; $712f: $a0
	ld b, b                                          ; $7130: $40
	ld h, b                                          ; $7131: $60
	add b                                            ; $7132: $80
	ldh [rP1], a                                     ; $7133: $e0 $00
	nop                                              ; $7135: $00
	ld sp, hl                                        ; $7136: $f9
	add d                                            ; $7137: $82
	adc [hl]                                         ; $7138: $8e
	add hl, sp                                       ; $7139: $39
	ret nz                                           ; $713a: $c0

	add hl, de                                       ; $713b: $19
	ldh a, [c]                                       ; $713c: $f2
	add hl, bc                                       ; $713d: $09
	ldh a, [$09]                                     ; $713e: $f0 $09
	ld [hl], d                                       ; $7140: $72
	add hl, bc                                       ; $7141: $09
	ld [hl], h                                       ; $7142: $74
	add hl, bc                                       ; $7143: $09
	ld a, [$0001]                                    ; $7144: $fa $01 $00
	ld a, a                                          ; $7147: $7f
	add b                                            ; $7148: $80
	ld a, a                                          ; $7149: $7f
	ld a, e                                          ; $714a: $7b
	db $fc                                           ; $714b: $fc
	ld a, a                                          ; $714c: $7f
	jp z, Jump_045_7e9c                              ; $714d: $ca $9c $7e

	xor b                                            ; $7150: $a8
	rlca                                             ; $7151: $07
	cp a                                             ; $7152: $bf
	rst $38                                          ; $7153: $ff
	rst $38                                          ; $7154: $ff
	sbc h                                            ; $7155: $9c
	inc c                                            ; $7156: $0c
	ld sp, hl                                        ; $7157: $f9
	ld b, [hl]                                       ; $7158: $46
	ld a, e                                          ; $7159: $7b
	ld a, [$208c]                                    ; $715a: $fa $8c $20
	rst $38                                          ; $715d: $ff
	jr nc, @-$3e                                     ; $715e: $30 $c0

	sbc a                                            ; $7160: $9f
	ret nz                                           ; $7161: $c0

	add b                                            ; $7162: $80
	rst SubAFromDE                                          ; $7163: $df
	and b                                            ; $7164: $a0
	rst SubAFromDE                                          ; $7165: $df
	ld b, b                                          ; $7166: $40
	db $e3                                           ; $7167: $e3
	jr @+$01                                         ; $7168: $18 $ff

	add h                                            ; $716a: $84
	rst $38                                          ; $716b: $ff
	ld a, $c0                                        ; $716c: $3e $c0
	nop                                              ; $716e: $00
	cp a                                             ; $716f: $bf
	rst $38                                          ; $7170: $ff
	nop                                              ; $7171: $00
	adc b                                            ; $7172: $88
	rst $38                                          ; $7173: $ff
	ld h, e                                          ; $7174: $63
	sbc h                                            ; $7175: $9c
	sbc $31                                          ; $7176: $de $31
	ld l, l                                          ; $7178: $6d
	rla                                              ; $7179: $17
	xor a                                            ; $717a: $af
	inc sp                                           ; $717b: $33
	ld l, a                                          ; $717c: $6f
	inc de                                           ; $717d: $13
	sbc a                                            ; $717e: $9f
	inc hl                                           ; $717f: $23
	ld a, a                                          ; $7180: $7f
	ld bc, $03fd                                     ; $7181: $01 $fd $03
	ld a, h                                          ; $7184: $7c
	rrca                                             ; $7185: $0f
	ccf                                              ; $7186: $3f
	call nz, $e4ff                                   ; $7187: $c4 $ff $e4
	ld [hl], a                                       ; $718a: $77
	cp $8c                                           ; $718b: $fe $8c
	rst SubAFromDE                                          ; $718d: $df
	and h                                            ; $718e: $a4
	cp a                                             ; $718f: $bf
	inc b                                            ; $7190: $04
	ei                                               ; $7191: $fb
	push hl                                          ; $7192: $e5
	db $f4                                           ; $7193: $f4
	ei                                               ; $7194: $fb
	rst SubAFromDE                                          ; $7195: $df
	ld a, $ff                                        ; $7196: $3e $ff
	ld a, $fd                                        ; $7198: $3e $fd
	ld a, $fd                                        ; $719a: $3e $fd
	ld d, $ff                                        ; $719c: $16 $ff
	ld a, $c3                                        ; $719e: $3e $c3
	ld a, c                                          ; $71a0: $79
	db $ec                                           ; $71a1: $ec
	ld a, b                                          ; $71a2: $78
	sbc [hl]                                         ; $71a3: $9e
	add b                                            ; $71a4: $80
	add b                                            ; $71a5: $80
	db $fd                                           ; $71a6: $fd
	nop                                              ; $71a7: $00
	ld a, [hl]                                       ; $71a8: $7e
	add b                                            ; $71a9: $80
	xor $10                                          ; $71aa: $ee $10
	ld e, a                                          ; $71ac: $5f
	and b                                            ; $71ad: $a0
	xor e                                            ; $71ae: $ab
	ld d, b                                          ; $71af: $50
	ld d, a                                          ; $71b0: $57
	add sp, $7b                                      ; $71b1: $e8 $7b
	ldh [$fe], a                                     ; $71b3: $e0 $fe
	ld bc, $146b                                     ; $71b5: $01 $6b $14
	ld c, $01                                        ; $71b8: $0e $01
	dec d                                            ; $71ba: $15
	ld a, [bc]                                       ; $71bb: $0a
	xor [hl]                                         ; $71bc: $ae
	dec e                                            ; $71bd: $1d
	call nc, $aa2a                                   ; $71be: $d4 $2a $aa
	ld d, h                                          ; $71c1: $54
	ld d, [hl]                                       ; $71c2: $56
	xor c                                            ; $71c3: $a9
	add b                                            ; $71c4: $80
	xor d                                            ; $71c5: $aa
	ld d, c                                          ; $71c6: $51
	push af                                          ; $71c7: $f5
	ld a, [bc]                                       ; $71c8: $0a
	ld a, [$5705]                                    ; $71c9: $fa $05 $57
	xor b                                            ; $71cc: $a8
	xor a                                            ; $71cd: $af
	ld d, b                                          ; $71ce: $50
	rst $38                                          ; $71cf: $ff
	add b                                            ; $71d0: $80
	ld a, a                                          ; $71d1: $7f
	add b                                            ; $71d2: $80
	adc a                                            ; $71d3: $8f

jr_045_71d4:
	ld d, b                                          ; $71d4: $50
	ld de, $15ef                                     ; $71d5: $11 $ef $15
	db $eb                                           ; $71d8: $eb
	sub d                                            ; $71d9: $92
	ld l, l                                          ; $71da: $6d
	sbc [hl]                                         ; $71db: $9e
	ld a, a                                          ; $71dc: $7f
	cp $3f                                           ; $71dd: $fe $3f
	cp $3f                                           ; $71df: $fe $3f
	cp e                                             ; $71e1: $bb
	ld a, [hl]                                       ; $71e2: $7e
	cp h                                             ; $71e3: $bc
	sbc l                                            ; $71e4: $9d
	ld e, [hl]                                       ; $71e5: $5e
	cp $7b                                           ; $71e6: $fe $7b
	ld [hl], d                                       ; $71e8: $72
	add b                                            ; $71e9: $80
	sbc [hl]                                         ; $71ea: $9e
	ld h, c                                          ; $71eb: $61
	and e                                            ; $71ec: $a3
	ld [hl], e                                       ; $71ed: $73
	ld sp, $3163                                     ; $71ee: $31 $63 $31
	ld h, e                                          ; $71f1: $63
	inc bc                                           ; $71f2: $03
	ld h, c                                          ; $71f3: $61
	inc bc                                           ; $71f4: $03
	ld h, c                                          ; $71f5: $61
	or [hl]                                          ; $71f6: $b6
	ld sp, hl                                        ; $71f7: $f9
	inc b                                            ; $71f8: $04
	ei                                               ; $71f9: $fb
	db $ec                                           ; $71fa: $ec
	scf                                              ; $71fb: $37
	db $fc                                           ; $71fc: $fc
	daa                                              ; $71fd: $27
	cp l                                             ; $71fe: $bd
	ld h, $3f                                        ; $71ff: $26 $3f
	ld h, $33                                        ; $7201: $26 $33
	inc h                                            ; $7203: $24
	inc e                                            ; $7204: $1c
	daa                                              ; $7205: $27
	ccf                                              ; $7206: $3f
	ret c                                            ; $7207: $d8

	ld d, $8d                                        ; $7208: $16 $8d
	ld sp, hl                                        ; $720a: $f9

jr_045_720b:
	ld d, $f8                                        ; $720b: $16 $f8
	jr jr_045_720b                                   ; $720d: $18 $fc

	ld c, [hl]                                       ; $720f: $4e
	cp h                                             ; $7210: $bc
	ld c, c                                          ; $7211: $49
	cp [hl]                                          ; $7212: $be
	ld b, $f9                                        ; $7213: $06 $f9
	adc a                                            ; $7215: $8f
	jr nz, jr_045_71d4                               ; $7216: $20 $bc

	rlca                                             ; $7218: $07
	db $fc                                           ; $7219: $fc
	rlca                                             ; $721a: $07
	ld c, h                                          ; $721b: $4c
	ld a, e                                          ; $721c: $7b
	cp $80                                           ; $721d: $fe $80
	db $10                                           ; $721f: $10
	rst GetHLinHL                                          ; $7220: $cf
	ldh [$1f], a                                     ; $7221: $e0 $1f
	ld [hl+], a                                      ; $7223: $22
	db $fd                                           ; $7224: $fd
	xor l                                            ; $7225: $ad
	ld [hl], e                                       ; $7226: $73

jr_045_7227:
	ld [hl-], a                                      ; $7227: $32
	db $dd                                           ; $7228: $dd
	db $fd                                           ; $7229: $fd
	sbc e                                            ; $722a: $9b
	or b                                             ; $722b: $b0
	reti                                             ; $722c: $d9


	jr nc, jr_045_7227                               ; $722d: $30 $f8

	dec hl                                           ; $722f: $2b
	call nc, $c8a4                                   ; $7230: $d4 $a4 $c8
	ld c, d                                          ; $7233: $4a
	or h                                             ; $7234: $b4
	sub b                                            ; $7235: $90
	ld l, [hl]                                       ; $7236: $6e
	sub h                                            ; $7237: $94
	ld a, [bc]                                       ; $7238: $0a
	nop                                              ; $7239: $00
	sbc h                                            ; $723a: $9c
	ret c                                            ; $723b: $d8

	inc h                                            ; $723c: $24
	ld b, d                                          ; $723d: $42
	add l                                            ; $723e: $85
	add h                                            ; $723f: $84
	dec b                                            ; $7240: $05
	nop                                              ; $7241: $00
	dec hl                                           ; $7242: $2b
	inc b                                            ; $7243: $04
	dec b                                            ; $7244: $05
	ld a, [hl+]                                      ; $7245: $2a
	jr nz, jr_045_7291                               ; $7246: $20 $49

	inc sp                                           ; $7248: $33
	ld [$6897], sp                                   ; $7249: $08 $97 $68
	or e                                             ; $724c: $b3
	ld c, b                                          ; $724d: $48
	dec d                                            ; $724e: $15
	ld [$0803], sp                                   ; $724f: $08 $03 $08
	pop de                                           ; $7252: $d1
	ld [$08d0], sp                                   ; $7253: $08 $d0 $08
	db $10                                           ; $7256: $10
	adc b                                            ; $7257: $88
	rst SubAFromBC                                          ; $7258: $e7
	cp a                                             ; $7259: $bf
	rst $38                                          ; $725a: $ff
	ld a, [$0593]                                    ; $725b: $fa $93 $05
	db $fd                                           ; $725e: $fd
	dec bc                                           ; $725f: $0b
	db $eb                                           ; $7260: $eb
	rla                                              ; $7261: $17
	ld d, a                                          ; $7262: $57
	cpl                                              ; $7263: $2f
	rlca                                             ; $7264: $07
	di                                               ; $7265: $f3
	ld [bc], a                                       ; $7266: $02
	db $e4                                           ; $7267: $e4
	pop af                                           ; $7268: $f1
	cp a                                             ; $7269: $bf
	rst $38                                          ; $726a: $ff
	cp a                                             ; $726b: $bf
	add h                                            ; $726c: $84
	ld b, b                                          ; $726d: $40
	ld a, [$fde5]                                    ; $726e: $fa $e5 $fd
	ldh a, [c]                                       ; $7271: $f2
	ld hl, sp-$0d                                    ; $7272: $f8 $f3
	ldh a, [$f2]                                     ; $7274: $f0 $f2
	ldh a, [$e2]                                     ; $7276: $f0 $e2
	db $f4                                           ; $7278: $f4
	add hl, bc                                       ; $7279: $09
	ldh [c], a                                       ; $727a: $e2
	add hl, de                                       ; $727b: $19
	rst SubAFromBC                                          ; $727c: $e7
	dec de                                           ; $727d: $1b
	add $1f                                          ; $727e: $c6 $1f
	rrca                                             ; $7280: $0f
	inc e                                            ; $7281: $1c
	rrca                                             ; $7282: $0f
	rra                                              ; $7283: $1f
	rrca                                             ; $7284: $0f
	rra                                              ; $7285: $1f
	rra                                              ; $7286: $1f
	ld c, $7a                                        ; $7287: $0e $7a
	inc b                                            ; $7289: $04
	ld a, b                                          ; $728a: $78
	ld h, [hl]                                       ; $728b: $66
	adc l                                            ; $728c: $8d
	ld a, $d5                                        ; $728d: $3e $d5
	cp $eb                                           ; $728f: $fe $eb

jr_045_7291:
	rst $38                                          ; $7291: $ff
	cp $fe                                           ; $7292: $fe $fe
	cp l                                             ; $7294: $bd
	inc l                                            ; $7295: $2c
	inc bc                                           ; $7296: $03
	add b                                            ; $7297: $80
	rst SubAFromHL                                          ; $7298: $d7
	and b                                            ; $7299: $a0
	sbc $80                                          ; $729a: $de $80
	db $dd                                           ; $729c: $dd
	and b                                            ; $729d: $a0
	jp c, $f87b                                      ; $729e: $da $7b $f8

	sbc d                                            ; $72a1: $9a
	sbc [hl]                                         ; $72a2: $9e
	add b                                            ; $72a3: $80
	push de                                          ; $72a4: $d5
	and b                                            ; $72a5: $a0
	adc d                                            ; $72a6: $8a
	cp c                                             ; $72a7: $b9
	ld e, a                                          ; $72a8: $5f
	xor a                                            ; $72a9: $af
	ld d, l                                          ; $72aa: $55
	xor b                                            ; $72ab: $a8
	ld d, b                                          ; $72ac: $50
	and b                                            ; $72ad: $a0
	ld d, c                                          ; $72ae: $51
	and d                                            ; $72af: $a2
	add b                                            ; $72b0: $80
	rst FarCall                                          ; $72b1: $f7
	rrca                                             ; $72b2: $0f
	rst SubAFromBC                                          ; $72b3: $e7
	add hl, de                                       ; $72b4: $19
	rst AddAOntoHL                                          ; $72b5: $ef
	jr jr_045_72c7                                   ; $72b6: $18 $0f

	ld sp, $335f                                     ; $72b8: $31 $5f $33
	ld e, a                                          ; $72bb: $5f
	ld a, [hl+]                                      ; $72bc: $2a
	ld c, a                                          ; $72bd: $4f
	push af                                          ; $72be: $f5
	ld c, a                                          ; $72bf: $4f
	ld hl, sp-$06                                    ; $72c0: $f8 $fa
	db $fd                                           ; $72c2: $fd
	db $fd                                           ; $72c3: $fd
	ei                                               ; $72c4: $fb
	ei                                               ; $72c5: $fb
	cp l                                             ; $72c6: $bd

jr_045_72c7:
	rst $38                                          ; $72c7: $ff
	sbc a                                            ; $72c8: $9f
	db $fc                                           ; $72c9: $fc
	ccf                                              ; $72ca: $3f
	db $fc                                           ; $72cb: $fc
	ld e, a                                          ; $72cc: $5f
	db $fc                                           ; $72cd: $fc
	rra                                              ; $72ce: $1f
	cp $9e                                           ; $72cf: $fe $9e
	rra                                              ; $72d1: $1f
	cp a                                             ; $72d2: $bf
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	ld a, [hl]                                       ; $72d5: $7e
	xor l                                            ; $72d6: $ad
	ld a, [hl]                                       ; $72d7: $7e
	inc e                                            ; $72d8: $1c
	ld a, h                                          ; $72d9: $7c
	ld c, d                                          ; $72da: $4a
	add b                                            ; $72db: $80
	rst $38                                          ; $72dc: $ff
	rst FarCall                                          ; $72dd: $f7
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	adc $bf                                          ; $72e0: $ce $bf
	dec [hl]                                         ; $72e2: $35
	pop hl                                           ; $72e3: $e1
	xor l                                            ; $72e4: $ad
	di                                               ; $72e5: $f3
	sub [hl]                                         ; $72e6: $96
	rst AddAOntoHL                                          ; $72e7: $ef
	sbc h                                            ; $72e8: $9c
	or $bf                                           ; $72e9: $f6 $bf
	db $fc                                           ; $72eb: $fc
	dec a                                            ; $72ec: $3d
	or $9e                                           ; $72ed: $f6 $9e
	db $fd                                           ; $72ef: $fd
	cp l                                             ; $72f0: $bd
	cp $a9                                           ; $72f1: $fe $a9
	rst JumpTable                                          ; $72f3: $c7
	ld b, b                                          ; $72f4: $40
	xor [hl]                                         ; $72f5: $ae
	ld bc, $4322                                     ; $72f6: $01 $22 $43
	inc bc                                           ; $72f9: $03
	adc e                                            ; $72fa: $8b
	add b                                            ; $72fb: $80
	rla                                              ; $72fc: $17
	ld e, l                                          ; $72fd: $5d
	adc d                                            ; $72fe: $8a
	cp c                                             ; $72ff: $b9
	ld [hl], b                                       ; $7300: $70
	db $dd                                           ; $7301: $dd
	db $eb                                           ; $7302: $eb
	ld e, $3f                                        ; $7303: $1e $3f
	ld a, a                                          ; $7305: $7f
	ld l, a                                          ; $7306: $6f
	push af                                          ; $7307: $f5
	ei                                               ; $7308: $fb
	ldh [c], a                                       ; $7309: $e2
	pop af                                           ; $730a: $f1
	ld b, b                                          ; $730b: $40
	ldh [rBCPD], a                                   ; $730c: $e0 $69
	ld b, c                                          ; $730e: $41
	ld l, a                                          ; $730f: $6f
	jp $59ab                                         ; $7310: $c3 $ab $59


	call z, $8d1e                                    ; $7313: $cc $1e $8d
	sbc [hl]                                         ; $7316: $9e
	adc l                                            ; $7317: $8d
	sbc $9d                                          ; $7318: $de $9d
	adc $90                                          ; $731a: $ce $90
	ld e, h                                          ; $731c: $5c
	adc [hl]                                         ; $731d: $8e
	inc e                                            ; $731e: $1c
	adc [hl]                                         ; $731f: $8e
	db $fc                                           ; $7320: $fc
	ld c, $9c                                        ; $7321: $0e $9c
	cp $02                                           ; $7323: $fe $02
	ld h, c                                          ; $7325: $61

Jump_045_7326:
	ld [hl], d                                       ; $7326: $72
	ld hl, $fe01                                     ; $7327: $21 $01 $fe
	call nz, $28bc                                   ; $732a: $c4 $bc $28
	ld d, l                                          ; $732d: $55
	nop                                              ; $732e: $00
	ld bc, $8026                                     ; $732f: $01 $26 $80
	ld a, b                                          ; $7332: $78
	cp h                                             ; $7333: $bc
	ld h, b                                          ; $7334: $60
	ld d, $e0                                        ; $7335: $16 $e0
	daa                                              ; $7337: $27
	ret nz                                           ; $7338: $c0

	dec d                                            ; $7339: $15
	jp nz, $835c                                     ; $733a: $c2 $5c $83

	ld a, b                                          ; $733d: $78
	add a                                            ; $733e: $87
	daa                                              ; $733f: $27
	rst $38                                          ; $7340: $ff
	ld e, $24                                        ; $7341: $1e $24
	jr jr_045_736b                                   ; $7343: $18 $26

	inc d                                            ; $7345: $14
	ld [hl+], a                                      ; $7346: $22
	jr z, jr_045_735b                                ; $7347: $28 $12

	ld [bc], a                                       ; $7349: $02
	add hl, de                                       ; $734a: $19
	add b                                            ; $734b: $80
	add hl, de                                       ; $734c: $19
	sub b                                            ; $734d: $90
	dec c                                            ; $734e: $0d

jr_045_734f:
	adc c                                            ; $734f: $89
	ld b, $80                                        ; $7350: $06 $80
	dec hl                                           ; $7352: $2b
	ld d, b                                          ; $7353: $50
	inc [hl]                                         ; $7354: $34
	ld c, b                                          ; $7355: $48
	inc h                                            ; $7356: $24
	ld c, b                                          ; $7357: $48
	inc [hl]                                         ; $7358: $34
	ld c, b                                          ; $7359: $48
	ld d, h                                          ; $735a: $54

jr_045_735b:
	adc b                                            ; $735b: $88
	ld e, h                                          ; $735c: $5c
	add b                                            ; $735d: $80
	cp c                                             ; $735e: $b9
	nop                                              ; $735f: $00
	pop de                                           ; $7360: $d1
	jr nz, jr_045_73ab                               ; $7361: $20 $48

	db $f4                                           ; $7363: $f4
	inc [hl]                                         ; $7364: $34
	ld l, b                                          ; $7365: $68
	ld [$2434], sp                                   ; $7366: $08 $34 $24
	ld a, [de]                                       ; $7369: $1a
	ccf                                              ; $736a: $3f

jr_045_736b:
	rra                                              ; $736b: $1f
	sbc a                                            ; $736c: $9f
	rra                                              ; $736d: $1f
	ld a, [de]                                       ; $736e: $1a
	rst SubAFromDE                                          ; $736f: $df
	sbc d                                            ; $7370: $9a
	sub d                                            ; $7371: $92
	rst GetHLinHL                                          ; $7372: $cf
	ld e, c                                          ; $7373: $59
	jr nz, jr_045_73ae                               ; $7374: $20 $38

	jr nc, jr_045_73dc                               ; $7376: $30 $64

	ld [$4400], sp                                   ; $7378: $08 $00 $44
	call nz, $0a88                                   ; $737b: $c4 $88 $0a
	call nz, $ccbe                                   ; $737e: $c4 $be $cc
	ret z                                            ; $7381: $c8

	adc b                                            ; $7382: $88
	sbc e                                            ; $7383: $9b
	db $10                                           ; $7384: $10
	ld [$8058], sp                                   ; $7385: $08 $58 $80
	cp a                                             ; $7388: $bf
	ret z                                            ; $7389: $c8

	ld e, b                                          ; $738a: $58
	add [hl]                                         ; $738b: $86
	ld d, b                                          ; $738c: $50
	adc c                                            ; $738d: $89
	ld [$16d0], sp                                   ; $738e: $08 $d0 $16
	ld c, b                                          ; $7391: $48
	di                                               ; $7392: $f3
	inc c                                            ; $7393: $0c
	db $e3                                           ; $7394: $e3
	inc e                                            ; $7395: $1c
	ldh a, [rIF]                                     ; $7396: $f0 $0f
	ldh a, [rIF]                                     ; $7398: $f0 $0f
	or c                                             ; $739a: $b1
	ld c, $b2                                        ; $739b: $0e $b2
	inc c                                            ; $739d: $0c
	and d                                            ; $739e: $a2
	inc c                                            ; $739f: $0c
	sbc c                                            ; $73a0: $99
	inc h                                            ; $73a1: $24
	ld b, b                                          ; $73a2: $40
	add b                                            ; $73a3: $80
	ret nz                                           ; $73a4: $c0

	cp [hl]                                          ; $73a5: $be
	and b                                            ; $73a6: $a0
	ld h, h                                          ; $73a7: $64
	ld [hl+], a                                      ; $73a8: $22
	add a                                            ; $73a9: $87
	ld b, b                                          ; $73aa: $40

jr_045_73ab:
	call nz, $1000                                   ; $73ab: $c4 $00 $10

jr_045_73ae:
	add c                                            ; $73ae: $81
	ld [hl], c                                       ; $73af: $71
	add e                                            ; $73b0: $83
	rra                                              ; $73b1: $1f
	ld e, $5c                                        ; $73b2: $1e $5c
	ld e, $1e                                        ; $73b4: $1e $1e
	inc e                                            ; $73b6: $1c
	dec de                                           ; $73b7: $1b
	inc e                                            ; $73b8: $1c
	dec a                                            ; $73b9: $3d
	ld [hl], b                                       ; $73ba: $70
	ld h, d                                          ; $73bb: $62
	ret nz                                           ; $73bc: $c0

	reti                                             ; $73bd: $d9


	add b                                            ; $73be: $80
	nop                                              ; $73bf: $00
	jr jr_045_734f                                   ; $73c0: $18 $8d

	cp a                                             ; $73c2: $bf
	reti                                             ; $73c3: $d9


	or c                                             ; $73c4: $b1
	rst SubAFromDE                                          ; $73c5: $df
	ld b, b                                          ; $73c6: $40
	adc l                                            ; $73c7: $8d
	ld h, b                                          ; $73c8: $60
	ret nc                                           ; $73c9: $d0

	nop                                              ; $73ca: $00
	ld c, h                                          ; $73cb: $4c
	db $10                                           ; $73cc: $10
	ld d, $08                                        ; $73cd: $16 $08
	dec b                                            ; $73cf: $05
	adc b                                            ; $73d0: $88
	add b                                            ; $73d1: $80
	pop de                                           ; $73d2: $d1
	sub b                                            ; $73d3: $90
	add b                                            ; $73d4: $80
	sub b                                            ; $73d5: $90
	ret nz                                           ; $73d6: $c0

	db $10                                           ; $73d7: $10
	add b                                            ; $73d8: $80
	nop                                              ; $73d9: $00
	db $dd                                           ; $73da: $dd
	add b                                            ; $73db: $80

jr_045_73dc:
	sbc h                                            ; $73dc: $9c
	add c                                            ; $73dd: $81
	add b                                            ; $73de: $80
	jp nz, $55b9                                     ; $73df: $c2 $b9 $55

	ld a, [hl+]                                      ; $73e2: $2a
	dec b                                            ; $73e3: $05
	ld a, [bc]                                       ; $73e4: $0a
	dec b                                            ; $73e5: $05
	nop                                              ; $73e6: $00
	inc b                                            ; $73e7: $04
	ld [$d97e], sp                                   ; $73e8: $08 $7e $d9
	sbc c                                            ; $73eb: $99
	ld [$0fe7], sp                                   ; $73ec: $08 $e7 $0f
	dec d                                            ; $73ef: $15
	ld h, c                                          ; $73f0: $61
	cp a                                             ; $73f1: $bf
	ld a, b                                          ; $73f2: $78
	ld d, l                                          ; $73f3: $55
	ld [hl], b                                       ; $73f4: $70
	ld e, l                                          ; $73f5: $5d
	add b                                            ; $73f6: $80
	rst $38                                          ; $73f7: $ff
	ei                                               ; $73f8: $fb
	ei                                               ; $73f9: $fb
	db $fc                                           ; $73fa: $fc
	rst FarCall                                          ; $73fb: $f7
	ld hl, sp-$05                                    ; $73fc: $f8 $fb
	db $f4                                           ; $73fe: $f4
	rst FarCall                                          ; $73ff: $f7
	cp b                                             ; $7400: $b8
	ld a, [$f794]                                    ; $7401: $fa $94 $f7
	sbc b                                            ; $7404: $98
	ld a, [$d0f4]                                    ; $7405: $fa $f4 $d0
	xor a                                            ; $7408: $af
	and b                                            ; $7409: $a0
	rst SubAFromDE                                          ; $740a: $df
	ret nc                                           ; $740b: $d0

	xor a                                            ; $740c: $af
	ldh a, [$df]                                     ; $740d: $f0 $df
	call z, $e0ff                                    ; $740f: $cc $ff $e0
	ld e, a                                          ; $7412: $5f
	ret nc                                           ; $7413: $d0

	ld l, a                                          ; $7414: $6f
	add sp, -$80                                     ; $7415: $e8 $80
	ld d, a                                          ; $7417: $57
	xor e                                            ; $7418: $ab
	db $fd                                           ; $7419: $fd
	or a                                             ; $741a: $b7
	db $ec                                           ; $741b: $ec
	jp hl                                            ; $741c: $e9


	db $f4                                           ; $741d: $f4
	rst FarCall                                          ; $741e: $f7
	ldh [$ef], a                                     ; $741f: $e0 $ef
	add b                                            ; $7421: $80
	rst SubAFromHL                                          ; $7422: $d7
	add b                                            ; $7423: $80
	ld [$d580], a                                    ; $7424: $ea $80 $d5
	add b                                            ; $7427: $80
	ld sp, hl                                        ; $7428: $f9
	add [hl]                                         ; $7429: $86
	cp $00                                           ; $742a: $fe $00
	cp $01                                           ; $742c: $fe $01
	rst $38                                          ; $742e: $ff
	ld bc, $01eb                                     ; $742f: $01 $eb $01
	rst SubAFromHL                                          ; $7432: $d7
	ld bc, $06aa                                     ; $7433: $01 $aa $06
	sbc c                                            ; $7436: $99
	ld e, d                                          ; $7437: $5a
	ld [$69c3], sp                                   ; $7438: $08 $c3 $69
	ld [bc], a                                       ; $743b: $02
	rst JumpTable                                          ; $743c: $c7

jr_045_743d:
	cp [hl]                                          ; $743d: $be
	add b                                            ; $743e: $80

jr_045_743f:
	db $10                                           ; $743f: $10
	ldh a, [$8b]                                     ; $7440: $f0 $8b
	ld h, b                                          ; $7442: $60
	jr nc, @+$22                                     ; $7443: $30 $20

	jr nc, @-$3e                                     ; $7445: $30 $c0

	ld h, b                                          ; $7447: $60
	ld b, $8c                                        ; $7448: $06 $8c
	nop                                              ; $744a: $00
	ld h, $22                                        ; $744b: $26 $22
	scf                                              ; $744d: $37
	inc [hl]                                         ; $744e: $34
	ld a, a                                          ; $744f: $7f
	inc a                                            ; $7450: $3c
	ld a, h                                          ; $7451: $7c
	ld b, $f2                                        ; $7452: $06 $f2
	ld [bc], a                                       ; $7454: $02
	or c                                             ; $7455: $b1
	cp h                                             ; $7456: $bc
	ld sp, $0101                                     ; $7457: $31 $01 $01
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	ld a, e                                          ; $745c: $7b
	ld [hl], h                                       ; $745d: $74

jr_045_745e:
	rst SubAFromDE                                          ; $745e: $df
	ld b, c                                          ; $745f: $41
	rst SubAFromDE                                          ; $7460: $df
	ld b, b                                          ; $7461: $40
	sub e                                            ; $7462: $93
	ld hl, $1fa7                                     ; $7463: $21 $a7 $1f
	or a                                             ; $7466: $b7
	rst GetHLinHL                                          ; $7467: $cf
	db $db                                           ; $7468: $db
	rst SubAFromBC                                          ; $7469: $e7
	adc $bf                                          ; $746a: $ce $bf
	sbc [hl]                                         ; $746c: $9e
	adc a                                            ; $746d: $8f
	sub d                                            ; $746e: $92
	ld a, e                                          ; $746f: $7b
	cp $90                                           ; $7470: $fe $90
	add d                                            ; $7472: $82
	sbc a                                            ; $7473: $9f
	call nz, $e203                                   ; $7474: $c4 $03 $e2
	ld bc, $41a0                                     ; $7477: $01 $a0 $41
	jr nz, jr_045_743d                               ; $747a: $20 $c1

	jr nz, jr_045_743f                               ; $747c: $20 $c1

	ld c, $c1                                        ; $747e: $0e $c1
	ld l, $7b                                        ; $7480: $2e $7b
	cp $88                                           ; $7482: $fe $88
	and d                                            ; $7484: $a2
	ld b, c                                          ; $7485: $41
	ld b, a                                          ; $7486: $47
	add c                                            ; $7487: $81
	adc a                                            ; $7488: $8f
	ld bc, $01df                                     ; $7489: $01 $df $01
	ld a, l                                          ; $748c: $7d
	add e                                            ; $748d: $83
	pop af                                           ; $748e: $f1
	inc bc                                           ; $748f: $03
	halt                                             ; $7490: $76
	add e                                            ; $7491: $83
	and $03                                          ; $7492: $e6 $03
	rrca                                             ; $7494: $0f
	add a                                            ; $7495: $87
	cpl                                              ; $7496: $2f
	sbc a                                            ; $7497: $9f
	sbc a                                            ; $7498: $9f
	rst $38                                          ; $7499: $ff
	rst SubAFromDE                                          ; $749a: $df
	sbc $9f                                          ; $749b: $de $9f
	add b                                            ; $749d: $80
	rst SubAFromDE                                          ; $749e: $df
	adc a                                            ; $749f: $8f
	rst GetHLinHL                                          ; $74a0: $cf
	adc a                                            ; $74a1: $8f
	rst GetHLinHL                                          ; $74a2: $cf
	rst GetHLinHL                                          ; $74a3: $cf
	xor b                                            ; $74a4: $a8
	ld b, d                                          ; $74a5: $42
	ld b, d                                          ; $74a6: $42
	call nz, $c2c4                                   ; $74a7: $c4 $c4 $c2
	ldh [$d6], a                                     ; $74aa: $e0 $d6
	ld d, b                                          ; $74ac: $50
	ldh [c], a                                       ; $74ad: $e2
	ld c, d                                          ; $74ae: $4a
	push af                                          ; $74af: $f5
	dec d                                            ; $74b0: $15
	jp z, $c060                                      ; $74b1: $ca $60 $c0

	add hl, hl                                       ; $74b4: $29
	ld d, $14                                        ; $74b5: $16 $14
	jr z, jr_045_74da                                ; $74b7: $28 $21

	ld e, [hl]                                       ; $74b9: $5e
	nop                                              ; $74ba: $00
	ccf                                              ; $74bb: $3f
	ret nc                                           ; $74bc: $d0

	add b                                            ; $74bd: $80
	rrca                                             ; $74be: $0f
	inc bc                                           ; $74bf: $03
	db $ec                                           ; $74c0: $ec
	ld d, b                                          ; $74c1: $50
	xor a                                            ; $74c2: $af
	inc bc                                           ; $74c3: $03
	jr jr_045_750b                                   ; $74c4: $18 $45

	jr c, jr_045_745e                                ; $74c6: $38 $96

	ld a, b                                          ; $74c8: $78
	db $dd                                           ; $74c9: $dd
	ld [de], a                                       ; $74ca: $12
	ld l, $d0                                        ; $74cb: $2e $d0
	dec de                                           ; $74cd: $1b
	db $fc                                           ; $74ce: $fc
	ld a, [$251c]                                    ; $74cf: $fa $1c $25
	ld a, $46                                        ; $74d2: $3e $46
	inc a                                            ; $74d4: $3c
	xor $17                                          ; $74d5: $ee $17
	jp nz, $ee7e                                     ; $74d7: $c2 $7e $ee

jr_045_74da:
	ld [hl], d                                       ; $74da: $72
	ld a, [hl]                                       ; $74db: $7e
	ld h, d                                          ; $74dc: $62
	ld a, a                                          ; $74dd: $7f
	ld a, [$c280]                                    ; $74de: $fa $80 $c2
	ld b, $ca                                        ; $74e1: $06 $ca
	or $81                                           ; $74e3: $f6 $81
	ld a, a                                          ; $74e5: $7f
	inc h                                            ; $74e6: $24
	ld e, b                                          ; $74e7: $58
	dec d                                            ; $74e8: $15
	ld c, b                                          ; $74e9: $48
	jp nc, $8b2c                                     ; $74ea: $d2 $2c $8b

	ld [hl], h                                       ; $74ed: $74
	add sp, $00                                      ; $74ee: $e8 $00
	inc d                                            ; $74f0: $14
	dec bc                                           ; $74f1: $0b
	db $10                                           ; $74f2: $10
	rlca                                             ; $74f3: $07
	inc c                                            ; $74f4: $0c
	rst JumpTable                                          ; $74f5: $c7
	ld [$2124], sp                                   ; $74f6: $08 $24 $21
	ld b, b                                          ; $74f9: $40
	and c                                            ; $74fa: $a1
	ld b, b                                          ; $74fb: $40
	ld h, c                                          ; $74fc: $61
	sub b                                            ; $74fd: $90
	ld l, b                                          ; $74fe: $68
	sbc b                                            ; $74ff: $98
	ld d, a                                          ; $7500: $57
	ld c, b                                          ; $7501: $48
	rst FarCall                                          ; $7502: $f7
	inc bc                                           ; $7503: $03
	db $fc                                           ; $7504: $fc
	inc c                                            ; $7505: $0c
	ldh a, [$7b]                                     ; $7506: $f0 $7b
	ld e, b                                          ; $7508: $58
	sub [hl]                                         ; $7509: $96
	ret nz                                           ; $750a: $c0

jr_045_750b:
	sbc h                                            ; $750b: $9c
	add b                                            ; $750c: $80
	sbc a                                            ; $750d: $9f
	ret nz                                           ; $750e: $c0

	sub a                                            ; $750f: $97
	ret z                                            ; $7510: $c8

	sbc a                                            ; $7511: $9f
	jp $c3bc                                         ; $7512: $c3 $bc $c3


	ret nz                                           ; $7515: $c0

	ld d, b                                          ; $7516: $50
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	ld a, a                                          ; $7519: $7f
	ld sp, hl                                        ; $751a: $f9
	ld a, l                                          ; $751b: $7d
	db $fc                                           ; $751c: $fc
	sbc h                                            ; $751d: $9c
	db $ec                                           ; $751e: $ec
	di                                               ; $751f: $f3
	db $fc                                           ; $7520: $fc
	sbc $ff                                          ; $7521: $de $ff
	halt                                             ; $7523: $76
	ret z                                            ; $7524: $c8

	ld a, a                                          ; $7525: $7f
	cp $7c                                           ; $7526: $fe $7c
	sub $82                                          ; $7528: $d6 $82
	ld b, $fd                                        ; $752a: $06 $fd
	inc c                                            ; $752c: $0c
	rst $38                                          ; $752d: $ff
	xor b                                            ; $752e: $a8
	rst $38                                          ; $752f: $ff
	ld e, d                                          ; $7530: $5a
	db $fd                                           ; $7531: $fd
	db $fd                                           ; $7532: $fd
	ld hl, sp-$06                                    ; $7533: $f8 $fa

Jump_045_7535:
	db $fc                                           ; $7535: $fc
	ld hl, sp-$02                                    ; $7536: $f8 $fe
	ld a, d                                          ; $7538: $7a
	db $fc                                           ; $7539: $fc
	ld a, b                                          ; $753a: $78
	ld hl, sp+$7c                                    ; $753b: $f8 $7c
	ret c                                            ; $753d: $d8

	ld a, c                                          ; $753e: $79
	ret c                                            ; $753f: $d8

	ld a, h                                          ; $7540: $7c
	ld hl, sp-$10                                    ; $7541: $f8 $f0
	ld c, a                                          ; $7543: $4f
	add sp, $57                                      ; $7544: $e8 $57
	ld [hl], b                                       ; $7546: $70
	ld a, e                                          ; $7547: $7b
	db $fc                                           ; $7548: $fc
	sub a                                            ; $7549: $97
	ld [hl], h                                       ; $754a: $74
	ld l, e                                          ; $754b: $6b
	add sp, $77                                      ; $754c: $e8 $77
	ld [hl], l                                       ; $754e: $75
	ld l, e                                          ; $754f: $6b
	jp hl                                            ; $7550: $e9


	scf                                              ; $7551: $37
	halt                                             ; $7552: $76
	call z, $fc77                                    ; $7553: $cc $77 $fc
	sbc h                                            ; $7556: $9c
	xor d                                            ; $7557: $aa
	add b                                            ; $7558: $80
	ret nz                                           ; $7559: $c0

	sbc $80                                          ; $755a: $de $80
	ld a, [hl]                                       ; $755c: $7e
	ld sp, hl                                        ; $755d: $f9
	sbc d                                            ; $755e: $9a
	cp d                                             ; $755f: $ba
	dec bc                                           ; $7560: $0b
	ld e, [hl]                                       ; $7561: $5e
	ld bc, $bbaa                                     ; $7562: $01 $aa $bb
	ld d, h                                          ; $7565: $54
	and b                                            ; $7566: $a0
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00

jr_045_756a:
	ret nz                                           ; $756a: $c0

	add b                                            ; $756b: $80

jr_045_756c:
	or b                                             ; $756c: $b0
	jr nc, @+$21                                     ; $756d: $30 $1f

	ld l, $1f                                        ; $756f: $2e $1f
	inc h                                            ; $7571: $24
	rra                                              ; $7572: $1f
	inc l                                            ; $7573: $2c
	rra                                              ; $7574: $1f
	inc h                                            ; $7575: $24
	rla                                              ; $7576: $17
	inc [hl]                                         ; $7577: $34
	db $10                                           ; $7578: $10
	inc h                                            ; $7579: $24
	db $10                                           ; $757a: $10
	jr nz, jr_045_75ee                               ; $757b: $20 $71

	ld h, c                                          ; $757d: $61
	ldh a, [$a1]                                     ; $757e: $f0 $a1
	ldh a, [rOCPS]                                   ; $7580: $f0 $6a
	ldh a, [rAUD4LEN]                                ; $7582: $f0 $20
	ldh [rLCDC], a                                   ; $7584: $e0 $40
	ldh [rLCDC], a                                   ; $7586: $e0 $40
	ld h, b                                          ; $7588: $60
	ld b, b                                          ; $7589: $40
	ld b, b                                          ; $758a: $40
	sub a                                            ; $758b: $97
	and c                                            ; $758c: $a1
	jr nz, jr_045_758f                               ; $758d: $20 $00

jr_045_758f:
	jr nz, jr_045_75f1                               ; $758f: $20 $60

	and b                                            ; $7591: $a0
	push de                                          ; $7592: $d5
	ld b, b                                          ; $7593: $40
	db $fd                                           ; $7594: $fd
	db $dd                                           ; $7595: $dd
	ld bc, $8a80                                     ; $7596: $01 $80 $8a
	sub a                                            ; $7599: $97
	add d                                            ; $759a: $82
	sub a                                            ; $759b: $97
	and d                                            ; $759c: $a2
	sub a                                            ; $759d: $97
	adc a                                            ; $759e: $8f
	or a                                             ; $759f: $b7
	sbc [hl]                                         ; $75a0: $9e
	and a                                            ; $75a1: $a7
	add h                                            ; $75a2: $84
	cp a                                             ; $75a3: $bf
	xor c                                            ; $75a4: $a9
	ld a, $38                                        ; $75a5: $3e $38
	rra                                              ; $75a7: $1f
	ld a, $c1                                        ; $75a8: $3e $c1
	ld e, $e1                                        ; $75aa: $1e $e1
	ld e, $e1                                        ; $75ac: $1e $e1
	ld a, $c1                                        ; $75ae: $3e $c1
	ld a, a                                          ; $75b0: $7f
	add c                                            ; $75b1: $81
	di                                               ; $75b2: $f3
	ld bc, $03e1                                     ; $75b3: $01 $e1 $03
	ld h, l                                          ; $75b6: $65
	sub c                                            ; $75b7: $91
	add e                                            ; $75b8: $83
	ld [$5e07], a                                    ; $75b9: $ea $07 $5e
	add e                                            ; $75bc: $83
	ld a, h                                          ; $75bd: $7c
	add e                                            ; $75be: $83
	db $fd                                           ; $75bf: $fd
	inc bc                                           ; $75c0: $03
	rst AddAOntoHL                                          ; $75c1: $ef
	ld bc, $01f3                                     ; $75c2: $01 $f3 $01
	ld a, [$fe7b]                                    ; $75c5: $fa $7b $fe
	add b                                            ; $75c8: $80
	push bc                                          ; $75c9: $c5
	ld c, a                                          ; $75ca: $4f
	jp hl                                            ; $75cb: $e9


	ld b, l                                          ; $75cc: $45
	ret                                              ; $75cd: $c9


	ld h, h                                          ; $75ce: $64
	add sp, $24                                      ; $75cf: $e8 $24
	ldh a, [rAUDVOL]                                 ; $75d1: $f0 $24
	or [hl]                                          ; $75d3: $b6
	jr nc, jr_045_756c                               ; $75d4: $30 $96

	jr nc, jr_045_756a                               ; $75d6: $30 $92

	jr nz, jr_045_75da                               ; $75d8: $20 $00

jr_045_75da:
	ldh [$b0], a                                     ; $75da: $e0 $b0
	ldh [hDisp0_LCDC], a                                     ; $75dc: $e0 $82
	ldh a, [$e7]                                     ; $75de: $f0 $e7
	rst FarCall                                          ; $75e0: $f7
	rst $38                                          ; $75e1: $ff
	ld [hl], a                                       ; $75e2: $77
	db $e3                                           ; $75e3: $e3
	ld [hl], a                                       ; $75e4: $77
	di                                               ; $75e5: $f3
	ld h, a                                          ; $75e6: $67
	rst FarCall                                          ; $75e7: $f7
	sub e                                            ; $75e8: $93
	ld h, a                                          ; $75e9: $67
	rla                                              ; $75ea: $17
	ld [$0e01], sp                                   ; $75eb: $08 $01 $0e

jr_045_75ee:
	nop                                              ; $75ee: $00
	rra                                              ; $75ef: $1f
	ld [hl+], a                                      ; $75f0: $22

jr_045_75f1:
	db $fc                                           ; $75f1: $fc
	rst $38                                          ; $75f2: $ff
	cp $db                                           ; $75f3: $fe $db
	sbc $ff                                          ; $75f5: $de $ff
	add b                                            ; $75f7: $80
	db $dd                                           ; $75f8: $dd
	db $e3                                           ; $75f9: $e3
	rst SubAFromHL                                          ; $75fa: $d7
	inc l                                            ; $75fb: $2c
	add sp, $1e                                      ; $75fc: $e8 $1e
	ld h, c                                          ; $75fe: $61
	sub [hl]                                         ; $75ff: $96
	adc b                                            ; $7600: $88
	halt                                             ; $7601: $76
	ld d, $24                                        ; $7602: $16 $24
	ld d, c                                          ; $7604: $51
	xor h                                            ; $7605: $ac
	add l                                            ; $7606: $85
	ld hl, sp-$7f                                    ; $7607: $f8 $81
	db $fc                                           ; $7609: $fc
	add c                                            ; $760a: $81
	ld a, a                                          ; $760b: $7f
	add b                                            ; $760c: $80
	ld a, a                                          ; $760d: $7f
	cp c                                             ; $760e: $b9
	ld b, [hl]                                       ; $760f: $46
	add h                                            ; $7610: $84
	ld a, d                                          ; $7611: $7a
	rst AddAOntoHL                                          ; $7612: $ef
	cp b                                             ; $7613: $b8
	ld [hl], l                                       ; $7614: $75
	adc e                                            ; $7615: $8b
	dec sp                                           ; $7616: $3b
	add b                                            ; $7617: $80
	push bc                                          ; $7618: $c5
	rra                                              ; $7619: $1f
	ldh [$0b], a                                     ; $761a: $e0 $0b
	db $e4                                           ; $761c: $e4
	xor d                                            ; $761d: $aa
	call z, $4dea                                    ; $761e: $cc $ea $4d
	dec c                                            ; $7621: $0d
	ld [$8853], sp                                   ; $7622: $08 $53 $88

Jump_045_7625:
	ei                                               ; $7625: $fb
	ldh a, [$08]                                     ; $7626: $f0 $08
	ret nc                                           ; $7628: $d0

	db $10                                           ; $7629: $10
	ret nz                                           ; $762a: $c0

	ldh a, [$78]                                     ; $762b: $f0 $78
	ld [hl], c                                       ; $762d: $71
	ld a, b                                          ; $762e: $78
	cp c                                             ; $762f: $b9
	ld hl, sp-$03                                    ; $7630: $f8 $fd
	ld hl, sp-$2c                                    ; $7632: $f8 $d4
	ld l, c                                          ; $7634: $69
	sub b                                            ; $7635: $90
	rrca                                             ; $7636: $0f
	sub l                                            ; $7637: $95
	ld c, $03                                        ; $7638: $0e $03
	ld [bc], a                                       ; $763a: $02
	rlca                                             ; $763b: $07
	ld [hl], b                                       ; $763c: $70
	ldh [rAUD2HIGH], a                               ; $763d: $e0 $19
	cp $81                                           ; $763f: $fe $81
	ld a, a                                          ; $7641: $7f
	cp a                                             ; $7642: $bf
	rst $38                                          ; $7643: $ff
	rst $38                                          ; $7644: $ff
	ld a, [hl]                                       ; $7645: $7e
	adc $80                                          ; $7646: $ce $80
	rlca                                             ; $7648: $07
	ld hl, sp+$0a                                    ; $7649: $f8 $0a
	pop af                                           ; $764b: $f1
	ccf                                              ; $764c: $3f
	rra                                              ; $764d: $1f
	inc bc                                           ; $764e: $03
	ld bc, $c0b0                                     ; $764f: $01 $b0 $c0
	dec sp                                           ; $7652: $3b
	db $fc                                           ; $7653: $fc
	inc bc                                           ; $7654: $03
	rst $38                                          ; $7655: $ff
	ldh [$1f], a                                     ; $7656: $e0 $1f
	add sp, $07                                      ; $7658: $e8 $07
	inc b                                            ; $765a: $04
	di                                               ; $765b: $f3
	and d                                            ; $765c: $a2
	db $fd                                           ; $765d: $fd
	ld c, [hl]                                       ; $765e: $4e
	rst FarCall                                          ; $765f: $f7
	adc a                                            ; $7660: $8f
	xor $4f                                          ; $7661: $ee $4f
	add [hl]                                         ; $7663: $86
	ld b, a                                          ; $7664: $47
	ccf                                              ; $7665: $3f
	ld [bc], a                                       ; $7666: $02
	cp [hl]                                          ; $7667: $be
	add b                                            ; $7668: $80
	ld d, b                                          ; $7669: $50
	ld a, l                                          ; $766a: $7d
	sub l                                            ; $766b: $95
	ld hl, sp+$79                                    ; $766c: $f8 $79
	ldh a, [$f2]                                     ; $766e: $f0 $f2
	ldh [$67], a                                     ; $7670: $e0 $67
	db $10                                           ; $7672: $10
	ld [hl], a                                       ; $7673: $77
	di                                               ; $7674: $f3
	daa                                              ; $7675: $27
	ld [hl], c                                       ; $7676: $71
	ret c                                            ; $7677: $d8

	sub d                                            ; $7678: $92
	ld a, l                                          ; $7679: $7d
	inc hl                                           ; $767a: $23
	ld a, e                                          ; $767b: $7b
	ccf                                              ; $767c: $3f
	cp e                                             ; $767d: $bb
	db $10                                           ; $767e: $10
	ld a, [$ff00]                                    ; $767f: $fa $00 $ff
	ldh a, [rIE]                                     ; $7682: $f0 $ff
	ld a, [$bbdf]                                    ; $7684: $fa $df $bb
	nop                                              ; $7687: $00
	add b                                            ; $7688: $80
	add b                                            ; $7689: $80
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	ld b, d                                          ; $768c: $42
	sbc h                                            ; $768d: $9c
	add b                                            ; $768e: $80
	call nz, $bff8                                   ; $768f: $c4 $f8 $bf
	ldh [rP1], a                                     ; $7692: $e0 $00
	sbc [hl]                                         ; $7694: $9e
	adc d                                            ; $7695: $8a
	cp c                                             ; $7696: $b9
	db $10                                           ; $7697: $10
	xor b                                            ; $7698: $a8
	ld d, b                                          ; $7699: $50
	xor d                                            ; $769a: $aa
	ld d, l                                          ; $769b: $55
	xor d                                            ; $769c: $aa
	ld d, l                                          ; $769d: $55
	ld b, $7d                                        ; $769e: $06 $7d
	ld a, [bc]                                       ; $76a0: $0a
	sub a                                            ; $76a1: $97
	db $10                                           ; $76a2: $10
	ld c, $0c                                        ; $76a3: $0e $0c
	ld a, [bc]                                       ; $76a5: $0a
	inc b                                            ; $76a6: $04
	and h                                            ; $76a7: $a4
	ld [bc], a                                       ; $76a8: $02
	ld d, [hl]                                       ; $76a9: $56
	cp [hl]                                          ; $76aa: $be
	ld [bc], a                                       ; $76ab: $02
	ld [bc], a                                       ; $76ac: $02
	nop                                              ; $76ad: $00
	sbc l                                            ; $76ae: $9d
	ld b, b                                          ; $76af: $40
	ret nz                                           ; $76b0: $c0

	ld a, e                                          ; $76b1: $7b
	cp $95                                           ; $76b2: $fe $95
	add b                                            ; $76b4: $80
	ld b, b                                          ; $76b5: $40
	ldh [c], a                                       ; $76b6: $e2
	ld b, b                                          ; $76b7: $40
	ldh [$60], a                                     ; $76b8: $e0 $60
	ld h, b                                          ; $76ba: $60
	ldh [$c0], a                                     ; $76bb: $e0 $c0
	ldh [$bd], a                                     ; $76bd: $e0 $bd
	ld bc, $0001                                     ; $76bf: $01 $01 $00
	nop                                              ; $76c2: $00
	ld l, h                                          ; $76c3: $6c
	ld b, d                                          ; $76c4: $42
	rst $38                                          ; $76c5: $ff
	sub d                                            ; $76c6: $92
	sbc h                                            ; $76c7: $9c
	rra                                              ; $76c8: $1f
	scf                                              ; $76c9: $37
	rra                                              ; $76ca: $1f
	rla                                              ; $76cb: $17
	rst $38                                          ; $76cc: $ff
	rrca                                             ; $76cd: $0f
	ccf                                              ; $76ce: $3f
	ld c, a                                          ; $76cf: $4f
	rra                                              ; $76d0: $1f
	rrca                                             ; $76d1: $0f
	rra                                              ; $76d2: $1f
	ld e, $7b                                        ; $76d3: $1e $7b
	db $fc                                           ; $76d5: $fc
	sbc c                                            ; $76d6: $99
	add c                                            ; $76d7: $81
	inc bc                                           ; $76d8: $03
	or l                                             ; $76d9: $b5
	jp $ff03                                         ; $76da: $c3 $03 $ff


	ld h, a                                          ; $76dd: $67
	cp $7d                                           ; $76de: $fe $7d
	daa                                              ; $76e0: $27
	sbc c                                            ; $76e1: $99
	nop                                              ; $76e2: $00
	add e                                            ; $76e3: $83
	rla                                              ; $76e4: $17
	adc a                                            ; $76e5: $8f
	pop hl                                           ; $76e6: $e1
	rst $38                                          ; $76e7: $ff
	ld [hl], a                                       ; $76e8: $77
	cp $9c                                           ; $76e9: $fe $9c
	pop bc                                           ; $76eb: $c1
	rst $38                                          ; $76ec: $ff
	ldh [$7b], a                                     ; $76ed: $e0 $7b
	cp $96                                           ; $76ef: $fe $96
	cp e                                             ; $76f1: $bb
	ld [hl], h                                       ; $76f2: $74
	add hl, sp                                       ; $76f3: $39
	db $fc                                           ; $76f4: $fc
	adc c                                            ; $76f5: $89
	halt                                             ; $76f6: $76
	nop                                              ; $76f7: $00
	ld [bc], a                                       ; $76f8: $02
	adc l                                            ; $76f9: $8d
	cp l                                             ; $76fa: $bd
	rrca                                             ; $76fb: $0f
	dec b                                            ; $76fc: $05
	add e                                            ; $76fd: $83
	ld h, a                                          ; $76fe: $67
	rst SubAFromDE                                          ; $76ff: $df
	rlca                                             ; $7700: $07
	add b                                            ; $7701: $80

jr_045_7702:
	add a                                            ; $7702: $87
	sub e                                            ; $7703: $93
	ld b, $83                                        ; $7704: $06 $83

jr_045_7706:
	ld b, e                                          ; $7706: $43
	ld b, c                                          ; $7707: $41
	dec sp                                           ; $7708: $3b
	sub e                                            ; $7709: $93
	inc b                                            ; $770a: $04
	sub b                                            ; $770b: $90
	adc b                                            ; $770c: $88
	sub b                                            ; $770d: $90
	adc b                                            ; $770e: $88
	ld h, h                                          ; $770f: $64
	add c                                            ; $7710: $81
	and h                                            ; $7711: $a4
	ld b, c                                          ; $7712: $41
	ld b, b                                          ; $7713: $40
	ld bc, $8159                                     ; $7714: $01 $59 $81
	rst SubAFromBC                                          ; $7717: $e7
	jp $e708                                         ; $7718: $c3 $08 $e7


	call z, $9420                                    ; $771b: $cc $20 $94
	nop                                              ; $771e: $00
	ldh [c], a                                       ; $771f: $e2
	db $fd                                           ; $7720: $fd
	sbc c                                            ; $7721: $99
	and e                                            ; $7722: $a3
	db $fc                                           ; $7723: $fc
	di                                               ; $7724: $f3
	rst $38                                          ; $7725: $ff
	add e                                            ; $7726: $83
	rst $38                                          ; $7727: $ff
	ld a, e                                          ; $7728: $7b
	ld c, d                                          ; $7729: $4a
	rst SubAFromDE                                          ; $772a: $df
	add b                                            ; $772b: $80
	ld a, [hl]                                       ; $772c: $7e
	ld c, d                                          ; $772d: $4a
	add b                                            ; $772e: $80
	jr nz, @+$25                                     ; $772f: $20 $23

	inc e                                            ; $7731: $1c
	ret z                                            ; $7732: $c8

	rlca                                             ; $7733: $07
	jp nc, $e4e1                                     ; $7734: $d2 $e1 $e4

	ld hl, sp-$7f                                    ; $7737: $f8 $81
	ld a, [hl]                                       ; $7739: $7e
	jr nz, @+$21                                     ; $773a: $20 $1f

Jump_045_773c:
	ld de, $040f                                     ; $773c: $11 $0f $04
	inc bc                                           ; $773f: $03
	jr jr_045_7702                                   ; $7740: $18 $c0

	ld d, b                                          ; $7742: $50
	adc b                                            ; $7743: $88
	jr jr_045_7706                                   ; $7744: $18 $c0

	sbc b                                            ; $7746: $98

jr_045_7747:
	ld b, b                                          ; $7747: $40
	ld h, b                                          ; $7748: $60
	jr @+$32                                         ; $7749: $18 $30

	ret z                                            ; $774b: $c8

	rla                                              ; $774c: $17
	add sp, $7e                                      ; $774d: $e8 $7e
	or b                                             ; $774f: $b0
	ld a, [hl]                                       ; $7750: $7e
	adc $7f                                          ; $7751: $ce $7f
	cp $80                                           ; $7753: $fe $80
	ld b, d                                          ; $7755: $42
	rlca                                             ; $7756: $07
	ldh [c], a                                       ; $7757: $e2
	rlca                                             ; $7758: $07
	jp nz, $0a07                                     ; $7759: $c2 $07 $0a

	rlca                                             ; $775c: $07
	ld [$8c07], sp                                   ; $775d: $08 $07 $8c
	rlca                                             ; $7760: $07
	rlca                                             ; $7761: $07
	ldh a, [$3c]                                     ; $7762: $f0 $3c
	ret nz                                           ; $7764: $c0

	rra                                              ; $7765: $1f
	ret nz                                           ; $7766: $c0

	ld [hl], $c9                                     ; $7767: $36 $c9
	ld d, $81                                        ; $7769: $16 $81
	cp [hl]                                          ; $776b: $be
	ld bc, $827d                                     ; $776c: $01 $7d $82
	ld a, $81                                        ; $776f: $3e $81
	jp z, $fa31                                      ; $7771: $ca $31 $fa

	sub d                                            ; $7774: $92
	ld bc, $013a                                     ; $7775: $01 $3a $01
	and d                                            ; $7778: $a2
	add hl, de                                       ; $7779: $19
	ld [$14f3], sp                                   ; $777a: $08 $f3 $14
	db $e3                                           ; $777d: $e3
	jr z, jr_045_7747                                ; $777e: $28 $c7

	cpl                                              ; $7780: $2f
	ret nz                                           ; $7781: $c0

	ld [hl], a                                       ; $7782: $77
	inc b                                            ; $7783: $04
	ld a, a                                          ; $7784: $7f
	and h                                            ; $7785: $a4
	sbc [hl]                                         ; $7786: $9e
	inc d                                            ; $7787: $14
	or c                                             ; $7788: $b1
	ld a, [bc]                                       ; $7789: $0a
	ld d, l                                          ; $778a: $55
	ld a, [hl+]                                      ; $778b: $2a
	ld d, l                                          ; $778c: $55
	xor d                                            ; $778d: $aa
	ld d, b                                          ; $778e: $50
	adc b                                            ; $778f: $88
	ld d, h                                          ; $7790: $54
	xor d                                            ; $7791: $aa
	ld d, l                                          ; $7792: $55
	xor d                                            ; $7793: $aa
	ld d, l                                          ; $7794: $55
	ld a, [hl+]                                      ; $7795: $2a
	dec b                                            ; $7796: $05
	xor b                                            ; $7797: $a8
	ld h, l                                          ; $7798: $65
	or d                                             ; $7799: $b2
	sbc a                                            ; $779a: $9f
	ld d, [hl]                                       ; $779b: $56
	xor b                                            ; $779c: $a8
	add b                                            ; $779d: $80
	add d                                            ; $779e: $82
	dec b                                            ; $779f: $05
	jp nz, $2a80                                     ; $77a0: $c2 $80 $2a

	ld d, b                                          ; $77a3: $50
	and b                                            ; $77a4: $a0
	ld d, c                                          ; $77a5: $51
	and d                                            ; $77a6: $a2
	ld d, b                                          ; $77a7: $50
	ld [bc], a                                       ; $77a8: $02
	sbc c                                            ; $77a9: $99
	ld bc, $0307                                     ; $77aa: $01 $07 $03
	db $10                                           ; $77ad: $10
	inc bc                                           ; $77ae: $03
	add b                                            ; $77af: $80
	cp [hl]                                          ; $77b0: $be
	inc h                                            ; $77b1: $24
	ld a, [bc]                                       ; $77b2: $0a
	nop                                              ; $77b3: $00
	add a                                            ; $77b4: $87
	inc bc                                           ; $77b5: $03
	sbc d                                            ; $77b6: $9a
	dec b                                            ; $77b7: $05
	ld a, c                                          ; $77b8: $79
	db $fc                                           ; $77b9: $fc
	add h                                            ; $77ba: $84
	ld sp, hl                                        ; $77bb: $f9
	rlca                                             ; $77bc: $07
	rst $38                                          ; $77bd: $ff
	rra                                              ; $77be: $1f
	rra                                              ; $77bf: $1f
	rla                                              ; $77c0: $17
	rrca                                             ; $77c1: $0f
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	and b                                            ; $77c4: $a0
	ret nz                                           ; $77c5: $c0

	ret nc                                           ; $77c6: $d0

	add b                                            ; $77c7: $80
	db $e3                                           ; $77c8: $e3
	db $fc                                           ; $77c9: $fc
	or b                                             ; $77ca: $b0
	rst $38                                          ; $77cb: $ff
	and b                                            ; $77cc: $a0
	ld a, c                                          ; $77cd: $79
	ld d, c                                          ; $77ce: $51
	ld [hl], c                                       ; $77cf: $71
	adc h                                            ; $77d0: $8c
	cp c                                             ; $77d1: $b9
	ld bc, $80d7                                     ; $77d2: $01 $d7 $80
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	dec b                                            ; $77d9: $05
	sub l                                            ; $77da: $95
	ld b, $05                                        ; $77db: $06 $05
	ld b, $fd                                        ; $77dd: $06 $fd
	ld b, $03                                        ; $77df: $06 $03
	ld [bc], a                                       ; $77e1: $02
	inc bc                                           ; $77e2: $03
	ld [bc], a                                       ; $77e3: $02
	ld [bc], a                                       ; $77e4: $02
	sbc $03                                          ; $77e5: $de $03
	sbc c                                            ; $77e7: $99
	ld bc, $ff03                                     ; $77e8: $01 $03 $ff
	rlca                                             ; $77eb: $07
	add a                                            ; $77ec: $87
	ld [bc], a                                       ; $77ed: $02
	ld a, e                                          ; $77ee: $7b
	cp $9b                                           ; $77ef: $fe $9b
	inc bc                                           ; $77f1: $03
	add e                                            ; $77f2: $83
	rlca                                             ; $77f3: $07
	adc a                                            ; $77f4: $8f
	ld a, e                                          ; $77f5: $7b
	cp $96                                           ; $77f6: $fe $96
	rst SubAFromBC                                          ; $77f8: $e7
	adc [hl]                                         ; $77f9: $8e
	cp $82                                           ; $77fa: $fe $82
	add [hl]                                         ; $77fc: $86
	ld [bc], a                                       ; $77fd: $02
	add [hl]                                         ; $77fe: $86

Call_045_77ff:
Jump_045_77ff:
	ld [bc], a                                       ; $77ff: $02
	add h                                            ; $7800: $84
	ld a, e                                          ; $7801: $7b
	cp $98                                           ; $7802: $fe $98
	adc [hl]                                         ; $7804: $8e
	inc b                                            ; $7805: $04
	adc b                                            ; $7806: $88
	inc b                                            ; $7807: $04
	cp b                                             ; $7808: $b8
	ld [$bf01], sp                                   ; $7809: $08 $01 $bf
	xor c                                            ; $780c: $a9
	inc d                                            ; $780d: $14
	sbc l                                            ; $780e: $9d
	ld bc, $bcab                                     ; $780f: $01 $ab $bc
	ld [hl], b                                       ; $7812: $70
	jr nz, jr_045_7865                               ; $7813: $20 $50

	nop                                              ; $7815: $00
	add d                                            ; $7816: $82
	adc a                                            ; $7817: $8f
	add b                                            ; $7818: $80
	ld [bc], a                                       ; $7819: $02
	add d                                            ; $781a: $82
	add h                                            ; $781b: $84
	ld [bc], a                                       ; $781c: $02
	cp b                                             ; $781d: $b8
	jp $e39f                                         ; $781e: $c3 $9f $e3


	halt                                             ; $7821: $76
	jp Jump_045_4b35                                 ; $7822: $c3 $35 $4b


	ld b, $39                                        ; $7825: $06 $39
	pop bc                                           ; $7827: $c1
	cp l                                             ; $7828: $bd
	daa                                              ; $7829: $27
	ld c, e                                          ; $782a: $4b
	sub d                                            ; $782b: $92
	add b                                            ; $782c: $80
	ld a, c                                          ; $782d: $79
	adc $7f                                          ; $782e: $ce $7f
	db $fc                                           ; $7830: $fc
	ld a, [hl]                                       ; $7831: $7e
	ld b, a                                          ; $7832: $47
	adc [hl]                                         ; $7833: $8e
	ld a, [hl+]                                      ; $7834: $2a
	db $10                                           ; $7835: $10
	add c                                            ; $7836: $81
	db $10                                           ; $7837: $10
	ld c, b                                          ; $7838: $48
	sub b                                            ; $7839: $90
	ld b, b                                          ; $783a: $40
	sub b                                            ; $783b: $90
	jp z, $d510                                      ; $783c: $ca $10 $d5

jr_045_783f:
	adc b                                            ; $783f: $88
	add d                                            ; $7840: $82
	ld [$0885], sp                                   ; $7841: $08 $85 $08
	dec bc                                           ; $7844: $0b
	cp c                                             ; $7845: $b9
	ld bc, $5500                                     ; $7846: $01 $00 $55
	xor d                                            ; $7849: $aa
	ld d, l                                          ; $784a: $55
	ld [$0775], a                                    ; $784b: $ea $75 $07
	adc l                                            ; $784e: $8d
	add sp, $37                                      ; $784f: $e8 $37
	ld l, b                                          ; $7851: $68
	cpl                                              ; $7852: $2f
	ld [hl], b                                       ; $7853: $70
	add hl, de                                       ; $7854: $19
	ld h, b                                          ; $7855: $60
	ld a, b                                          ; $7856: $78
	nop                                              ; $7857: $00
	db $10                                           ; $7858: $10
	ld h, b                                          ; $7859: $60
	nop                                              ; $785a: $00
	ld [hl], b                                       ; $785b: $70

jr_045_785c:
	jr nz, jr_045_78ce                               ; $785c: $20 $70

	add h                                            ; $785e: $84
	rlca                                             ; $785f: $07
	add b                                            ; $7860: $80
	ld a, e                                          ; $7861: $7b
	cp $7f                                           ; $7862: $fe $7f
	jp hl                                            ; $7864: $e9


jr_045_7865:
	add b                                            ; $7865: $80
	inc bc                                           ; $7866: $03
	inc b                                            ; $7867: $04
	ld bc, $2104                                     ; $7868: $01 $04 $21
	inc b                                            ; $786b: $04
	add hl, hl                                       ; $786c: $29
	inc b                                            ; $786d: $04
	rst SubAFromHL                                          ; $786e: $d7
	ld [$10af], sp                                   ; $786f: $08 $af $10
	ld [hl], e                                       ; $7872: $73
	add h                                            ; $7873: $84
	jr jr_045_785c                                   ; $7874: $18 $e6

	adc h                                            ; $7876: $8c
	ld [hl], e                                       ; $7877: $73
	rst SubAFromBC                                          ; $7878: $e7
	jr jr_045_78ec                                   ; $7879: $18 $71

	adc $2c                                          ; $787b: $ce $2c
	di                                               ; $787d: $f3
	jp hl                                            ; $787e: $e9


	ld b, $43                                        ; $787f: $06 $43
	or b                                             ; $7881: $b0
	ld [hl], a                                       ; $7882: $77
	adc b                                            ; $7883: $88
	add hl, bc                                       ; $7884: $09
	sbc l                                            ; $7885: $9d
	add [hl]                                         ; $7886: $86
	rst GetHLinHL                                          ; $7887: $cf
	cp a                                             ; $7888: $bf
	or a                                             ; $7889: $b7
	add b                                            ; $788a: $80
	ld a, c                                          ; $788b: $79
	ld l, b                                          ; $788c: $68
	ld a, a                                          ; $788d: $7f
	nop                                              ; $788e: $00
	ld a, a                                          ; $788f: $7f
	cp b                                             ; $7890: $b8
	sbc d                                            ; $7891: $9a
	rra                                              ; $7892: $1f
	nop                                              ; $7893: $00
	scf                                              ; $7894: $37
	ld [$b1d2], sp                                   ; $7895: $08 $d2 $b1
	cp c                                             ; $7898: $b9

jr_045_7899:
	ld a, [$2a55]                                    ; $7899: $fa $55 $2a
	ld d, h                                          ; $789c: $54
	ld l, d                                          ; $789d: $6a
	push af                                          ; $789e: $f5
	ld a, [hl+]                                      ; $789f: $2a
	ld d, l                                          ; $78a0: $55
	xor d                                            ; $78a1: $aa
	ld d, l                                          ; $78a2: $55
	and b                                            ; $78a3: $a0
	ld d, b                                          ; $78a4: $50
	ldh [c], a                                       ; $78a5: $e2
	nop                                              ; $78a6: $00
	add d                                            ; $78a7: $82
	or c                                             ; $78a8: $b1
	inc d                                            ; $78a9: $14
	jr z, @+$56                                      ; $78aa: $28 $54

	nop                                              ; $78ac: $00
	ld d, b                                          ; $78ad: $50
	xor e                                            ; $78ae: $ab
	nop                                              ; $78af: $00
	inc b                                            ; $78b0: $04
	ld a, [bc]                                       ; $78b1: $0a
	db $10                                           ; $78b2: $10
	ld a, [hl+]                                      ; $78b3: $2a
	ld d, l                                          ; $78b4: $55
	ld a, [hl+]                                      ; $78b5: $2a
	ld d, l                                          ; $78b6: $55
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	cp e                                             ; $78b9: $bb
	ld bc, $0000                                     ; $78ba: $01 $00 $00
	jr nz, jr_045_783f                               ; $78bd: $20 $80

	ld b, l                                          ; $78bf: $45
	ld a, a                                          ; $78c0: $7f
	rst SubAFromBC                                          ; $78c1: $e7
	or c                                             ; $78c2: $b1
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	ld bc, $0000                                     ; $78c6: $01 $00 $00
	ld e, d                                          ; $78c9: $5a
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00

jr_045_78ce:
	ld d, l                                          ; $78ce: $55
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	db $db                                           ; $78d1: $db
	ld bc, $00bc                                     ; $78d2: $01 $bc $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	ld d, l                                          ; $78d7: $55
	ld [bc], a                                       ; $78d8: $02
	ld a, d                                          ; $78d9: $7a
	push bc                                          ; $78da: $c5
	sbc c                                            ; $78db: $99
	dec bc                                           ; $78dc: $0b
	ld b, $79                                        ; $78dd: $06 $79
	add [hl]                                         ; $78df: $86
	add l                                            ; $78e0: $85
	ld [bc], a                                       ; $78e1: $02
	ld [hl], a                                       ; $78e2: $77
	cp $97                                           ; $78e3: $fe $97
	call nc, Call_045_4e03                           ; $78e5: $d4 $03 $4e
	adc h                                            ; $78e8: $8c
	adc [hl]                                         ; $78e9: $8e
	inc c                                            ; $78ea: $0c
	adc h                                            ; $78eb: $8c

jr_045_78ec:
	inc b                                            ; $78ec: $04
	halt                                             ; $78ed: $76
	call nc, $8491                                   ; $78ee: $d4 $91 $84
	ld [$048b], sp                                   ; $78f1: $08 $8b $04
	add b                                            ; $78f4: $80
	add hl, bc                                       ; $78f5: $09
	ld [hl], b                                       ; $78f6: $70
	jr jr_045_7899                                   ; $78f7: $18 $a0

	db $10                                           ; $78f9: $10
	ld d, b                                          ; $78fa: $50
	jr nz, jr_045_795c                               ; $78fb: $20 $5f

	jr nz, jr_045_7978                               ; $78fd: $20 $79

	call nz, $0579                                   ; $78ff: $c4 $79 $05
	ld h, [hl]                                       ; $7902: $66
	adc b                                            ; $7903: $88
	ld a, [hl]                                       ; $7904: $7e
	db $e3                                           ; $7905: $e3
	ld h, e                                          ; $7906: $63
	sbc [hl]                                         ; $7907: $9e
	sbc c                                            ; $7908: $99
	ld b, $01                                        ; $7909: $06 $01
	ld [bc], a                                       ; $790b: $02
	ld bc, $fd02                                     ; $790c: $01 $02 $fd
	ld a, e                                          ; $790f: $7b
	db $fc                                           ; $7910: $fc
	sbc [hl]                                         ; $7911: $9e
	dec b                                            ; $7912: $05
	ld a, e                                          ; $7913: $7b
	db $fc                                           ; $7914: $fc
	sbc h                                            ; $7915: $9c
	dec d                                            ; $7916: $15
	ld [bc], a                                       ; $7917: $02
	ldh [$bc], a                                     ; $7918: $e0 $bc
	ldh [$e0], a                                     ; $791a: $e0 $e0
	add b                                            ; $791c: $80
	add b                                            ; $791d: $80
	inc bc                                           ; $791e: $03
	sbc l                                            ; $791f: $9d
	add b                                            ; $7920: $80
	add a                                            ; $7921: $87
	cp a                                             ; $7922: $bf
	and e                                            ; $7923: $a3
	jp z, Jump_045_7090                              ; $7924: $ca $90 $70

	push bc                                          ; $7927: $c5
	db $10                                           ; $7928: $10
	inc de                                           ; $7929: $13
	ld b, b                                          ; $792a: $40
	ld d, e                                          ; $792b: $53
	jr nz, @+$39                                     ; $792c: $20 $37

	ld b, c                                          ; $792e: $41
	scf                                              ; $792f: $37
	ld b, e                                          ; $7930: $43
	dec sp                                           ; $7931: $3b
	ld d, c                                          ; $7932: $51
	ld hl, $7740                                     ; $7933: $21 $40 $77
	inc l                                            ; $7936: $2c
	ld a, a                                          ; $7937: $7f
	jr @-$65                                         ; $7938: $18 $99

	db $fd                                           ; $793a: $fd
	ld h, b                                          ; $793b: $60
	rst $38                                          ; $793c: $ff
	ld hl, sp-$01                                    ; $793d: $f8 $ff
	cp $de                                           ; $793f: $fe $de
	rst $38                                          ; $7941: $ff
	add b                                            ; $7942: $80
	ccf                                              ; $7943: $3f
	and b                                            ; $7944: $a0
	ld [hl], b                                       ; $7945: $70
	adc h                                            ; $7946: $8c
	ld [hl], b                                       ; $7947: $70
	ld h, $d8                                        ; $7948: $26 $d8
	inc [hl]                                         ; $794a: $34
	ret z                                            ; $794b: $c8

	inc e                                            ; $794c: $1c
	ldh [$30], a                                     ; $794d: $e0 $30
	ret nz                                           ; $794f: $c0

	ld d, b                                          ; $7950: $50
	adc a                                            ; $7951: $8f
	ld l, $c1                                        ; $7952: $2e $c1
	ld a, [hl-]                                      ; $7954: $3a
	dec b                                            ; $7955: $05
	add hl, sp                                       ; $7956: $39
	inc b                                            ; $7957: $04
	ld a, b                                          ; $7958: $78
	inc b                                            ; $7959: $04
	ld l, b                                          ; $795a: $68
	inc b                                            ; $795b: $04

jr_045_795c:
	ld c, c                                          ; $795c: $49
	inc b                                            ; $795d: $04
	nop                                              ; $795e: $00
	inc b                                            ; $795f: $04
	ld b, b                                          ; $7960: $40
	cp b                                             ; $7961: $b8
	sub c                                            ; $7962: $91
	sub l                                            ; $7963: $95
	ld [$f897], sp                                   ; $7964: $08 $97 $f8
	dec l                                            ; $7967: $2d
	cp $d5                                           ; $7968: $fe $d5
	ccf                                              ; $796a: $3f
	ld a, [hl+]                                      ; $796b: $2a
	rra                                              ; $796c: $1f
	ld b, l                                          ; $796d: $45
	rrca                                             ; $796e: $0f
	ld h, $03                                        ; $796f: $26 $03
	ld [hl], e                                       ; $7971: $73
	ld c, d                                          ; $7972: $4a
	sub b                                            ; $7973: $90
	rst $38                                          ; $7974: $ff
	ret nz                                           ; $7975: $c0

	ccf                                              ; $7976: $3f
	ld [hl], b                                       ; $7977: $70

jr_045_7978:
	adc a                                            ; $7978: $8f
	call c, Call_045_5fe3                            ; $7979: $dc $e3 $5f
	ldh a, [$af]                                     ; $797c: $f0 $af
	db $fc                                           ; $797e: $fc

Call_045_797f:
	ld d, l                                          ; $797f: $55

Jump_045_7980:
	rst $38                                          ; $7980: $ff
	ld l, d                                          ; $7981: $6a
	ccf                                              ; $7982: $3f
	halt                                             ; $7983: $76
	ret nc                                           ; $7984: $d0

	ld h, l                                          ; $7985: $65
	sub h                                            ; $7986: $94
	ld [hl], l                                       ; $7987: $75
	ld [hl], h                                       ; $7988: $74
	ld a, a                                          ; $7989: $7f
	ldh a, [$9e]                                     ; $798a: $f0 $9e
	sub l                                            ; $798c: $95
	or c                                             ; $798d: $b1
	xor d                                            ; $798e: $aa
	ld d, l                                          ; $798f: $55
	and b                                            ; $7990: $a0
	ld b, b                                          ; $7991: $40
	ret nz                                           ; $7992: $c0

	add b                                            ; $7993: $80
	xor b                                            ; $7994: $a8
	ld d, h                                          ; $7995: $54
	xor b                                            ; $7996: $a8
	ld d, b                                          ; $7997: $50
	jr nz, jr_045_799a                               ; $7998: $20 $00

jr_045_799a:
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	ld d, h                                          ; $799c: $54
	and b                                            ; $799d: $a0
	or h                                             ; $799e: $b4
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00

jr_045_79a3:
	ld bc, $0000                                     ; $79a3: $01 $00 $00
	add b                                            ; $79a6: $80
	ld b, b                                          ; $79a7: $40
	adc b                                            ; $79a8: $88
	ld b, b                                          ; $79a9: $40
	nop                                              ; $79aa: $00
	cp h                                             ; $79ab: $bc
	sbc l                                            ; $79ac: $9d
	inc bc                                           ; $79ad: $03
	nop                                              ; $79ae: $00
	or a                                             ; $79af: $b7
	ld [bc], a                                       ; $79b0: $02
	ld de, $0000                                     ; $79b1: $11 $00 $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00

jr_045_79b6:
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	xor d                                            ; $79b8: $aa
	ld d, l                                          ; $79b9: $55
	sbc e                                            ; $79ba: $9b
	ld a, [bc]                                       ; $79bb: $0a
	xor [hl]                                         ; $79bc: $ae
	ld bc, $bb15                                     ; $79bd: $01 $15 $bb
	ld a, [bc]                                       ; $79c0: $0a
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	xor d                                            ; $79c4: $aa
	ld d, h                                          ; $79c5: $54
	sub l                                            ; $79c6: $95
	xor e                                            ; $79c7: $ab
	adc b                                            ; $79c8: $88
	ld [hl], a                                       ; $79c9: $77
	ld e, b                                          ; $79ca: $58
	rlca                                             ; $79cb: $07
	xor l                                            ; $79cc: $ad
	inc bc                                           ; $79cd: $03
	ld d, [hl]                                       ; $79ce: $56
	ld bc, $bf0a                                     ; $79cf: $01 $0a $bf
	dec b                                            ; $79d2: $05
	xor e                                            ; $79d3: $ab
	add b                                            ; $79d4: $80
	ld bc, $41b1                                     ; $79d5: $01 $b1 $41
	ld b, h                                          ; $79d8: $44
	cp c                                             ; $79d9: $b9
	xor e                                            ; $79da: $ab
	ld d, l                                          ; $79db: $55
	ld d, l                                          ; $79dc: $55
	xor e                                            ; $79dd: $ab
	xor e                                            ; $79de: $ab
	ld d, l                                          ; $79df: $55
	dec [hl]                                         ; $79e0: $35
	ei                                               ; $79e1: $fb
	dec de                                           ; $79e2: $1b
	dec b                                            ; $79e3: $05
	call nc, Call_045_4d09                           ; $79e4: $d4 $09 $4d
	cp b                                             ; $79e7: $b8
	add c                                            ; $79e8: $81
	adc a                                            ; $79e9: $8f
	inc b                                            ; $79ea: $04
	adc c                                            ; $79eb: $89
	ld a, [bc]                                       ; $79ec: $0a
	add a                                            ; $79ed: $87
	ret nz                                           ; $79ee: $c0

	adc b                                            ; $79ef: $88
	jr nz, jr_045_79b6                               ; $79f0: $20 $c4

	ld [$9e96], sp                                   ; $79f2: $08 $96 $9e
	add l                                            ; $79f5: $85
	or h                                             ; $79f6: $b4
	add d                                            ; $79f7: $82
	sub c                                            ; $79f8: $91
	xor d                                            ; $79f9: $aa
	inc d                                            ; $79fa: $14
	ld c, e                                          ; $79fb: $4b
	ld b, c                                          ; $79fc: $41
	call nc, $a840                                   ; $79fd: $d4 $40 $a8
	ld d, l                                          ; $7a00: $55
	xor b                                            ; $7a01: $a8
	rrca                                             ; $7a02: $0f
	rst SubAFromDE                                          ; $7a03: $df
	sbc l                                            ; $7a04: $9d
	rrca                                             ; $7a05: $0f
	rst $38                                          ; $7a06: $ff
	cp a                                             ; $7a07: $bf
	and b                                            ; $7a08: $a0
	add hl, hl                                       ; $7a09: $29
	sbc e                                            ; $7a0a: $9b
	ld [bc], a                                       ; $7a0b: $02
	ld d, l                                          ; $7a0c: $55
	ld [bc], a                                       ; $7a0d: $02
	ld hl, $6279                                     ; $7a0e: $21 $79 $62
	sub [hl]                                         ; $7a11: $96
	ld sp, hl                                        ; $7a12: $f9
	ld b, $f9                                        ; $7a13: $06 $f9
	cp $f8                                           ; $7a15: $fe $f8
	cp $c8                                           ; $7a17: $fe $c8
	ld [hl], a                                       ; $7a19: $77
	and b                                            ; $7a1a: $a0
	cp [hl]                                          ; $7a1b: $be
	sub b                                            ; $7a1c: $90
	cp b                                             ; $7a1d: $b8
	add sp, -$75                                     ; $7a1e: $e8 $8b
	db $10                                           ; $7a20: $10
	jr c, jr_045_79a3                                ; $7a21: $38 $80

	nop                                              ; $7a23: $00
	add c                                            ; $7a24: $81
	ld b, c                                          ; $7a25: $41
	ld a, $a0                                        ; $7a26: $3e $a0
	ld c, c                                          ; $7a28: $49
	jr nz, jr_045_7a6b                               ; $7a29: $20 $40

	nop                                              ; $7a2b: $00
	ld b, b                                          ; $7a2c: $40
	ld c, $40                                        ; $7a2d: $0e $40
	inc l                                            ; $7a2f: $2c
	ld b, d                                          ; $7a30: $42
	sbc $60                                          ; $7a31: $de $60
	ld c, h                                          ; $7a33: $4c
	ld [hl], d                                       ; $7a34: $72
	add e                                            ; $7a35: $83
	sbc h                                            ; $7a36: $9c
	ccf                                              ; $7a37: $3f
	rlca                                             ; $7a38: $07
	rlca                                             ; $7a39: $07
	ld h, [hl]                                       ; $7a3a: $66
	ld b, e                                          ; $7a3b: $43
	cp [hl]                                          ; $7a3c: $be
	nop                                              ; $7a3d: $00
	dec b                                            ; $7a3e: $05
	ld d, [hl]                                       ; $7a3f: $56
	sbc d                                            ; $7a40: $9a
	rst AddAOntoHL                                          ; $7a41: $ef
	or e                                             ; $7a42: $b3
	rst SubAFromDE                                          ; $7a43: $df
	ld sp, hl                                        ; $7a44: $f9
	rlca                                             ; $7a45: $07
	ld a, e                                          ; $7a46: $7b
	ld b, a                                          ; $7a47: $47
	cp l                                             ; $7a48: $bd
	ld [bc], a                                       ; $7a49: $02
	dec b                                            ; $7a4a: $05
	nop                                              ; $7a4b: $00
	or $99                                           ; $7a4c: $f6 $99
	ld [$fc67], sp                                   ; $7a4e: $08 $67 $fc
	or $fc                                           ; $7a51: $f6 $fc
	add b                                            ; $7a53: $80
	or h                                             ; $7a54: $b4
	inc e                                            ; $7a55: $1c
	cp $45                                           ; $7a56: $fe $45
	nop                                              ; $7a58: $00
	add l                                            ; $7a59: $85
	ld b, d                                          ; $7a5a: $42
	and h                                            ; $7a5b: $a4
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	add b                                            ; $7a5e: $80
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	dec d                                            ; $7a61: $15
	sbc l                                            ; $7a62: $9d
	rrca                                             ; $7a63: $0f
	add [hl]                                         ; $7a64: $86
	ld a, b                                          ; $7a65: $78
	reti                                             ; $7a66: $d9


	rst FarCall                                          ; $7a67: $f7
	ld b, c                                          ; $7a68: $41
	nop                                              ; $7a69: $00
	ret c                                            ; $7a6a: $d8

jr_045_7a6b:
	inc sp                                           ; $7a6b: $33
	sbc l                                            ; $7a6c: $9d
	ld b, h                                          ; $7a6d: $44
	ld h, [hl]                                       ; $7a6e: $66
	jp c, $9733                                      ; $7a6f: $da $33 $97

	ld d, e                                          ; $7a72: $53
	ld b, h                                          ; $7a73: $44
	ld d, l                                          ; $7a74: $55
	ld d, l                                          ; $7a75: $55
	ld d, [hl]                                       ; $7a76: $56
	inc sp                                           ; $7a77: $33
	ld [hl], $66                                     ; $7a78: $36 $66
	sbc $55                                          ; $7a7a: $de $55
	ld a, e                                          ; $7a7c: $7b
	or $7f                                           ; $7a7d: $f6 $7f
	db $fc                                           ; $7a7f: $fc
	sbc l                                            ; $7a80: $9d
	ld b, h                                          ; $7a81: $44
	ld b, l                                          ; $7a82: $45
	jp c, $9c55                                      ; $7a83: $da $55 $9c

	ld b, l                                          ; $7a86: $45
	ld [hl], a                                       ; $7a87: $77
	ld [hl], l                                       ; $7a88: $75
	ld a, e                                          ; $7a89: $7b
	ldh a, [c]                                       ; $7a8a: $f2
	call c, Call_045_7b55                            ; $7a8b: $dc $55 $7b
	or $9e                                           ; $7a8e: $f6 $9e
	ld b, l                                          ; $7a90: $45
	ld h, a                                          ; $7a91: $67
	or $9d                                           ; $7a92: $f6 $9d
	ld d, h                                          ; $7a94: $54
	ld b, l                                          ; $7a95: $45
	ld [hl], a                                       ; $7a96: $77
	db $eb                                           ; $7a97: $eb
	ld a, e                                          ; $7a98: $7b
	ei                                               ; $7a99: $fb
	ld a, e                                          ; $7a9a: $7b

Call_045_7a9b:
	sub $db                                          ; $7a9b: $d6 $db
	ld b, h                                          ; $7a9d: $44
	sbc l                                            ; $7a9e: $9d
	ld b, l                                          ; $7a9f: $45
	ld d, h                                          ; $7aa0: $54
	reti                                             ; $7aa1: $d9


	ld b, h                                          ; $7aa2: $44
	ld l, e                                          ; $7aa3: $6b
	rst AddAOntoHL                                          ; $7aa4: $ef
	sbc $44                                          ; $7aa5: $de $44
	ld l, a                                          ; $7aa7: $6f
	db $ed                                           ; $7aa8: $ed
	dec bc                                           ; $7aa9: $0b
	add hl, bc                                       ; $7aaa: $09
	sbc l                                            ; $7aab: $9d
	rst $38                                          ; $7aac: $ff
	nop                                              ; $7aad: $00
	ld e, a                                          ; $7aae: $5f
	cp $9c                                           ; $7aaf: $fe $9c
	xor d                                            ; $7ab1: $aa
	nop                                              ; $7ab2: $00
	ld d, l                                          ; $7ab3: $55
	ld e, e                                          ; $7ab4: $5b
	ldh a, [c]                                       ; $7ab5: $f2
	ld a, a                                          ; $7ab6: $7f
	cp $9e                                           ; $7ab7: $fe $9e
	xor e                                            ; $7ab9: $ab
	ld h, e                                          ; $7aba: $63
	ldh a, [$9a]                                     ; $7abb: $f0 $9a
	db $fd                                           ; $7abd: $fd
	nop                                              ; $7abe: $00
	ld [$f500], a                                    ; $7abf: $ea $00 $f5
	ld e, e                                          ; $7ac2: $5b
	and $7f                                          ; $7ac3: $e6 $7f
	add sp, $7f                                      ; $7ac5: $e8 $7f
	call nc, $9eff                                   ; $7ac7: $d4 $ff $9e
	xor b                                            ; $7aca: $a8
	ld h, e                                          ; $7acb: $63
	db $ec                                           ; $7acc: $ec
	ld l, a                                          ; $7acd: $6f
	ldh a, [rIE]                                     ; $7ace: $f0 $ff
	ld h, a                                          ; $7ad0: $67
	ret nc                                           ; $7ad1: $d0

	sub [hl]                                         ; $7ad2: $96
	ld e, a                                          ; $7ad3: $5f
	nop                                              ; $7ad4: $00
	xor a                                            ; $7ad5: $af
	nop                                              ; $7ad6: $00
	dec d                                            ; $7ad7: $15
	nop                                              ; $7ad8: $00
	ld a, [bc]                                       ; $7ad9: $0a
	nop                                              ; $7ada: $00
	ld b, b                                          ; $7adb: $40
	ld b, e                                          ; $7adc: $43
	call z, $f05f                                    ; $7add: $cc $5f $f0
	ld a, a                                          ; $7ae0: $7f
	call c, $f07f                                    ; $7ae1: $dc $7f $f0
	ld a, a                                          ; $7ae4: $7f
	call c, $9057                                    ; $7ae5: $dc $57 $90
	ld a, a                                          ; $7ae8: $7f
	cp $9e                                           ; $7ae9: $fe $9e
	ld d, a                                          ; $7aeb: $57
	ld c, e                                          ; $7aec: $4b
	ldh a, [$03]                                     ; $7aed: $f0 $03
	cp $4b                                           ; $7aef: $fe $4b
	cp $7f                                           ; $7af1: $fe $7f
	ld e, b                                          ; $7af3: $58
	ld d, a                                          ; $7af4: $57
	ldh a, [c]                                       ; $7af5: $f2
	sbc [hl]                                         ; $7af6: $9e
	cp $4b                                           ; $7af7: $fe $4b
	jr nc, jr_045_7b52                               ; $7af9: $30 $57

	jr nz, jr_045_7b7c                               ; $7afb: $20 $7f

	db $e4                                           ; $7afd: $e4
	ld a, a                                          ; $7afe: $7f
	ld b, h                                          ; $7aff: $44
	ld a, a                                          ; $7b00: $7f
	ld b, b                                          ; $7b01: $40
	ld l, a                                          ; $7b02: $6f
	ld h, b                                          ; $7b03: $60
	sbc d                                            ; $7b04: $9a
	ld a, [$d400]                                    ; $7b05: $fa $00 $d4
	nop                                              ; $7b08: $00
	and b                                            ; $7b09: $a0
	ld a, e                                          ; $7b0a: $7b
	db $f4                                           ; $7b0b: $f4
	db $fd                                           ; $7b0c: $fd
	ld a, a                                          ; $7b0d: $7f
	ldh a, [c]                                       ; $7b0e: $f2
	ld a, a                                          ; $7b0f: $7f
	add sp, $77                                      ; $7b10: $e8 $77
	ld l, b                                          ; $7b12: $68
	sbc [hl]                                         ; $7b13: $9e
	cpl                                              ; $7b14: $2f
	ld a, e                                          ; $7b15: $7b
	call nc, $2a96                                   ; $7b16: $d4 $96 $2a
	nop                                              ; $7b19: $00
	inc d                                            ; $7b1a: $14
	ld c, $ff                                        ; $7b1b: $0e $ff
	nop                                              ; $7b1d: $00
	ld e, e                                          ; $7b1e: $5b
	nop                                              ; $7b1f: $00
	cp a                                             ; $7b20: $bf
	inc sp                                           ; $7b21: $33
	ld d, b                                          ; $7b22: $50
	ld a, a                                          ; $7b23: $7f
	ld d, h                                          ; $7b24: $54
	ld a, a                                          ; $7b25: $7f
	inc e                                            ; $7b26: $1c
	ld a, a                                          ; $7b27: $7f
	ld a, [$fc77]                                    ; $7b28: $fa $77 $fc
	sub a                                            ; $7b2b: $97
	xor d                                            ; $7b2c: $aa
	ld bc, $0750                                     ; $7b2d: $01 $50 $07
	nop                                              ; $7b30: $00
	rrca                                             ; $7b31: $0f
	ret nz                                           ; $7b32: $c0

	rra                                              ; $7b33: $1f
	ld [hl], a                                       ; $7b34: $77
	jp hl                                            ; $7b35: $e9


	ld [hl], a                                       ; $7b36: $77
	and $98                                          ; $7b37: $e6 $98
	dec d                                            ; $7b39: $15
	ret nz                                           ; $7b3a: $c0

	ld a, [bc]                                       ; $7b3b: $0a
	ldh [rSB], a                                     ; $7b3c: $e0 $01
	cp $01                                           ; $7b3e: $fe $01
	ld a, e                                          ; $7b40: $7b
	push af                                          ; $7b41: $f5
	sbc [hl]                                         ; $7b42: $9e
	dec b                                            ; $7b43: $05
	ld a, e                                          ; $7b44: $7b
	ldh a, [$7e]                                     ; $7b45: $f0 $7e
	add $7f                                          ; $7b47: $c6 $7f
	or [hl]                                          ; $7b49: $b6
	ld a, a                                          ; $7b4a: $7f
	and d                                            ; $7b4b: $a2
	rst $38                                          ; $7b4c: $ff
	sbc c                                            ; $7b4d: $99
	ret nz                                           ; $7b4e: $c0

	add b                                            ; $7b4f: $80
	ld c, d                                          ; $7b50: $4a
	add b                                            ; $7b51: $80

jr_045_7b52:
	dec d                                            ; $7b52: $15
	ret nz                                           ; $7b53: $c0

	ld l, a                                          ; $7b54: $6f

Call_045_7b55:
	ld a, d                                          ; $7b55: $7a
	sbc c                                            ; $7b56: $99
	nop                                              ; $7b57: $00
	ld bc, $0104                                ; $7b58: $01 $04 $01
	ld b, e                                          ; $7b5b: $43
	inc a                                            ; $7b5c: $3c
	ld l, a                                          ; $7b5d: $6f
	ret nc                                           ; $7b5e: $d0

	ld a, a                                          ; $7b5f: $7f
	ldh a, [$9d]                                     ; $7b60: $f0 $9d
	ld b, l                                          ; $7b62: $45
	jr jr_045_7bc4                                   ; $7b63: $18 $5f

	xor c                                            ; $7b65: $a9
	ld a, a                                          ; $7b66: $7f
	jp nc, $b59e                                     ; $7b67: $d2 $9e $b5

	ld a, e                                          ; $7b6a: $7b
	push de                                          ; $7b6b: $d5
	sub l                                            ; $7b6c: $95
	ld a, [bc]                                       ; $7b6d: $0a
	ldh a, [rTIMA]                                   ; $7b6e: $f0 $05
	ld hl, sp+$00                                    ; $7b70: $f8 $00
	cp $05                                           ; $7b72: $fe $05
	cp $03                                           ; $7b74: $fe $03
	cp $f7                                           ; $7b76: $fe $f7
	sbc [hl]                                         ; $7b78: $9e
	add d                                            ; $7b79: $82
	ld a, e                                          ; $7b7a: $7b
	add d                                            ; $7b7b: $82

jr_045_7b7c:
	ld a, [hl]                                       ; $7b7c: $7e
	ld l, [hl]                                       ; $7b7d: $6e
	rst FarCall                                          ; $7b7e: $f7
	ld a, a                                          ; $7b7f: $7f
	ret z                                            ; $7b80: $c8

	sbc b                                            ; $7b81: $98
	ld a, b                                          ; $7b82: $78
	rlca                                             ; $7b83: $07
	ldh [$1f], a                                     ; $7b84: $e0 $1f
	xor d                                            ; $7b86: $aa
	nop                                              ; $7b87: $00
	dec b                                            ; $7b88: $05
	ld h, e                                          ; $7b89: $63
	ldh a, [$9a]                                     ; $7b8a: $f0 $9a
	dec c                                            ; $7b8c: $0d
	ldh a, [rTAC]                                    ; $7b8d: $f0 $07
	ld hl, sp-$41                                    ; $7b8f: $f8 $bf
	ld [hl], d                                       ; $7b91: $72
	sbc b                                            ; $7b92: $98
	ld a, a                                          ; $7b93: $7f
	sub $9e                                          ; $7b94: $d6 $9e
	dec bc                                           ; $7b96: $0b
	ld l, e                                          ; $7b97: $6b
	ld c, d                                          ; $7b98: $4a
	ld a, a                                          ; $7b99: $7f
	or b                                             ; $7b9a: $b0
	sbc c                                            ; $7b9b: $99
	ld d, h                                          ; $7b9c: $54
	inc bc                                           ; $7b9d: $03
	xor b                                            ; $7b9e: $a8
	rlca                                             ; $7b9f: $07
	nop                                              ; $7ba0: $00
	ld a, a                                          ; $7ba1: $7f
	ld [hl], a                                       ; $7ba2: $77
	di                                               ; $7ba3: $f3
	sbc e                                            ; $7ba4: $9b
	ld b, b                                          ; $7ba5: $40
	rst $38                                          ; $7ba6: $ff
	add b                                            ; $7ba7: $80
	ld a, a                                          ; $7ba8: $7f
	ld a, e                                          ; $7ba9: $7b
	db $e4                                           ; $7baa: $e4
	sbc b                                            ; $7bab: $98
	ldh [rP1], a                                     ; $7bac: $e0 $00
	ldh a, [$08]                                     ; $7bae: $f0 $08
	rst FarCall                                          ; $7bb0: $f7
	db $10                                           ; $7bb1: $10
	rst AddAOntoHL                                          ; $7bb2: $ef
	ld l, a                                          ; $7bb3: $6f
	sub b                                            ; $7bb4: $90
	ld a, a                                          ; $7bb5: $7f
	ldh a, [rPCM34]                                  ; $7bb6: $f0 $77
	ld [$cc77], sp                                   ; $7bb8: $08 $77 $cc
	sbc c                                            ; $7bbb: $99
	rla                                              ; $7bbc: $17
	ldh [rAUD3HIGH], a                               ; $7bbd: $e0 $1e
	pop hl                                           ; $7bbf: $e1
	adc [hl]                                         ; $7bc0: $8e
	pop af                                           ; $7bc1: $f1
	ld [hl], a                                       ; $7bc2: $77
	ld d, [hl]                                       ; $7bc3: $56

jr_045_7bc4:
	sbc b                                            ; $7bc4: $98
	ld [bc], a                                       ; $7bc5: $02
	nop                                              ; $7bc6: $00
	ld d, h                                          ; $7bc7: $54
	add hl, bc                                       ; $7bc8: $09
	and d                                            ; $7bc9: $a2
	dec e                                            ; $7bca: $1d
	ldh [$73], a                                     ; $7bcb: $e0 $73
	jr nc, jr_045_7c4a                               ; $7bcd: $30 $7b

	ld d, l                                          ; $7bcf: $55
	sbc c                                            ; $7bd0: $99
	ld a, [hl]                                       ; $7bd1: $7e
	sub b                                            ; $7bd2: $90
	ld l, a                                          ; $7bd3: $6f
	nop                                              ; $7bd4: $00
	rst $38                                          ; $7bd5: $ff
	ld [bc], a                                       ; $7bd6: $02
	ld a, e                                          ; $7bd7: $7b
	db $f4                                           ; $7bd8: $f4
	sbc [hl]                                         ; $7bd9: $9e
	ld [$fa77], sp                                   ; $7bda: $08 $77 $fa
	ld a, e                                          ; $7bdd: $7b
	ret nc                                           ; $7bde: $d0

	sub e                                            ; $7bdf: $93
	add b                                            ; $7be0: $80
	jr nz, jr_045_7bf3                               ; $7be1: $20 $10

	ldh [$30], a                                     ; $7be3: $e0 $30
	ret nz                                           ; $7be5: $c0

	nop                                              ; $7be6: $00
	ldh a, [$50]                                     ; $7be7: $f0 $50
	ldh [$30], a                                     ; $7be9: $e0 $30
	call z, $93f9                                    ; $7beb: $cc $f9 $93
	inc b                                            ; $7bee: $04
	inc bc                                           ; $7bef: $03
	nop                                              ; $7bf0: $00
	rrca                                             ; $7bf1: $0f
	ld b, b                                          ; $7bf2: $40

jr_045_7bf3:
	ccf                                              ; $7bf3: $3f
	add b                                            ; $7bf4: $80
	ld a, a                                          ; $7bf5: $7f
	ld b, $0e                                        ; $7bf6: $06 $0e
	ld b, $04                                        ; $7bf8: $06 $04
	ld a, e                                          ; $7bfa: $7b
	ld [hl+], a                                      ; $7bfb: $22
	ld a, a                                          ; $7bfc: $7f
	add b                                            ; $7bfd: $80
	sub a                                            ; $7bfe: $97

Call_045_7bff:
	inc b                                            ; $7bff: $04
	jr jr_045_7c02                                   ; $7c00: $18 $00

jr_045_7c02:
	ld h, c                                          ; $7c02: $61

Call_045_7c03:
	sbc a                                            ; $7c03: $9f
	ld d, e                                          ; $7c04: $53
	xor h                                            ; $7c05: $ac
	ccf                                              ; $7c06: $3f
	ld a, e                                          ; $7c07: $7b
	ld [hl], h                                       ; $7c08: $74
	ld a, d                                          ; $7c09: $7a
	ld [$80de], sp                                   ; $7c0a: $08 $de $80
	ld a, a                                          ; $7c0d: $7f
	db $fc                                           ; $7c0e: $fc
	sbc e                                            ; $7c0f: $9b
	db $fd                                           ; $7c10: $fd
	ld a, h                                          ; $7c11: $7c
	ld d, $9e                                        ; $7c12: $16 $9e
	ld e, l                                          ; $7c14: $5d
	call nc, $e27d                                   ; $7c15: $d4 $7d $e2
	ld a, a                                          ; $7c18: $7f
	or $9e                                           ; $7c19: $f6 $9e
	xor [hl]                                         ; $7c1b: $ae
	ld [hl], c                                       ; $7c1c: $71
	rst AddAOntoHL                                          ; $7c1d: $ef
	ld a, [hl]                                       ; $7c1e: $7e
	jp c, $0b96                                      ; $7c1f: $da $96 $0b

	rst $38                                          ; $7c22: $ff
	ld de, $03ff                                     ; $7c23: $11 $ff $03
	rst $38                                          ; $7c26: $ff
	ld bc, $a0ff                                     ; $7c27: $01 $ff $a0
	ld a, e                                          ; $7c2a: $7b
	sbc [hl]                                         ; $7c2b: $9e
	ld a, a                                          ; $7c2c: $7f
	ldh a, [c]                                       ; $7c2d: $f2
	sbc [hl]                                         ; $7c2e: $9e
	ld d, b                                          ; $7c2f: $50
	ld a, e                                          ; $7c30: $7b
	ld hl, sp+$7e                                    ; $7c31: $f8 $7e
	rst SubAFromHL                                          ; $7c33: $d7
	add e                                            ; $7c34: $83
	sub e                                            ; $7c35: $93
	rst $38                                          ; $7c36: $ff
	ld [hl], l                                       ; $7c37: $75
	rst $38                                          ; $7c38: $ff
	db $eb                                           ; $7c39: $eb
	rst $38                                          ; $7c3a: $ff
	rst GetHLinHL                                          ; $7c3b: $cf
	add b                                            ; $7c3c: $80
	ld d, a                                          ; $7c3d: $57
	add b                                            ; $7c3e: $80
	sbc a                                            ; $7c3f: $9f
	ldh [rAUD2ENV], a                                ; $7c40: $e0 $17
	ld hl, sp-$56                                    ; $7c42: $f8 $aa
	db $fd                                           ; $7c44: $fd
	ld b, d                                          ; $7c45: $42
	db $fd                                           ; $7c46: $fd
	and [hl]                                         ; $7c47: $a6
	ld sp, hl                                        ; $7c48: $f9
	sub a                                            ; $7c49: $97

jr_045_7c4a:
	ld hl, sp+$00                                    ; $7c4a: $f8 $00
	ld a, a                                          ; $7c4c: $7f
	jp nc, Jump_045_603d                             ; $7c4d: $d2 $3d $60

	sbc a                                            ; $7c50: $9f
	ld [hl], a                                       ; $7c51: $77
	jp z, $d67f                                      ; $7c52: $ca $7f $d6

	sbc b                                            ; $7c55: $98
	dec d                                            ; $7c56: $15
	rst $38                                          ; $7c57: $ff
	ldh [c], a                                       ; $7c58: $e2
	ccf                                              ; $7c59: $3f
	nop                                              ; $7c5a: $00
	rst $38                                          ; $7c5b: $ff
	ld b, l                                          ; $7c5c: $45
	ld h, d                                          ; $7c5d: $62
	call nz, $f07f                                   ; $7c5e: $c4 $7f $f0
	add b                                            ; $7c61: $80
	cp d                                             ; $7c62: $ba
	rst $38                                          ; $7c63: $ff
	dec hl                                           ; $7c64: $2b
	db $fc                                           ; $7c65: $fc
	ld [hl], b                                       ; $7c66: $70
	rst $38                                          ; $7c67: $ff
	xor h                                            ; $7c68: $ac
	rst $38                                          ; $7c69: $ff
	ld [hl], c                                       ; $7c6a: $71
	cp $0b                                           ; $7c6b: $fe $0b
	db $fc                                           ; $7c6d: $fc
	ld [bc], a                                       ; $7c6e: $02
	rst $38                                          ; $7c6f: $ff

jr_045_7c70:
	add e                                            ; $7c70: $83
	rst $38                                          ; $7c71: $ff
	adc d                                            ; $7c72: $8a
	rst $38                                          ; $7c73: $ff
	ld e, a                                          ; $7c74: $5f
	nop                                              ; $7c75: $00
	cp h                                             ; $7c76: $bc
	inc bc                                           ; $7c77: $03
	ld a, h                                          ; $7c78: $7c
	inc bc                                           ; $7c79: $03
	db $fc                                           ; $7c7a: $fc
	inc bc                                           ; $7c7b: $03
	ld hl, sp+$07                                    ; $7c7c: $f8 $07
	db $fc                                           ; $7c7e: $fc
	inc bc                                           ; $7c7f: $03

Call_045_7c80:
	ldh a, [$9b]                                     ; $7c80: $f0 $9b
	rrca                                             ; $7c82: $0f
	ld [hl], c                                       ; $7c83: $71
	adc a                                            ; $7c84: $8f
	add b                                            ; $7c85: $80
	ld [hl], d                                       ; $7c86: $72
	or $6f                                           ; $7c87: $f6 $6f
	cp $7f                                           ; $7c89: $fe $7f
	sbc $9e                                          ; $7c8b: $de $9e

jr_045_7c8d:
	inc b                                            ; $7c8d: $04
	ld l, e                                          ; $7c8e: $6b
	or $9e                                           ; $7c8f: $f6 $9e
	ld a, [bc]                                       ; $7c91: $0a
	ld a, e                                          ; $7c92: $7b
	adc d                                            ; $7c93: $8a
	ld a, a                                          ; $7c94: $7f
	ldh a, [c]                                       ; $7c95: $f2
	ld a, a                                          ; $7c96: $7f
	add b                                            ; $7c97: $80
	ld a, a                                          ; $7c98: $7f
	ld e, $96                                        ; $7c99: $1e $96
	ld a, b                                          ; $7c9b: $78
	add a                                            ; $7c9c: $87
	ld a, b                                          ; $7c9d: $78
	add a                                            ; $7c9e: $87
	jr nc, jr_045_7c70                               ; $7c9f: $30 $cf

	nop                                              ; $7ca1: $00
	rst $38                                          ; $7ca2: $ff
	ld b, c                                          ; $7ca3: $41
	ld a, e                                          ; $7ca4: $7b
	ldh a, [$9b]                                     ; $7ca5: $f0 $9b
	ld d, b                                          ; $7ca7: $50
	rst AddAOntoHL                                          ; $7ca8: $ef
	xor [hl]                                         ; $7ca9: $ae
	di                                               ; $7caa: $f3
	ld d, a                                          ; $7cab: $57
	ret nc                                           ; $7cac: $d0

	sbc h                                            ; $7cad: $9c
	db $10                                           ; $7cae: $10
	rst $38                                          ; $7caf: $ff
	cp h                                             ; $7cb0: $bc
	ld a, e                                          ; $7cb1: $7b
	call c, $f87f                                    ; $7cb2: $dc $7f $f8
	ld a, a                                          ; $7cb5: $7f
	ld h, d                                          ; $7cb6: $62
	sbc d                                            ; $7cb7: $9a
	ret nc                                           ; $7cb8: $d0

	rst $38                                          ; $7cb9: $ff
	xor b                                            ; $7cba: $a8
	rst $38                                          ; $7cbb: $ff
	ld d, h                                          ; $7cbc: $54
	ld a, e                                          ; $7cbd: $7b
	jp nc, $c07f                                     ; $7cbe: $d2 $7f $c0

	adc h                                            ; $7cc1: $8c
	ld l, $f1                                        ; $7cc2: $2e $f1
	inc c                                            ; $7cc4: $0c
	di                                               ; $7cc5: $f3
	ld [bc], a                                       ; $7cc6: $02
	db $fd                                           ; $7cc7: $fd
	ld d, e                                          ; $7cc8: $53
	db $fc                                           ; $7cc9: $fc
	ld h, $f9                                        ; $7cca: $26 $f9
	inc c                                            ; $7ccc: $0c
	di                                               ; $7ccd: $f3
	inc h                                            ; $7cce: $24
	ei                                               ; $7ccf: $fb
	jp c, $10e7                                      ; $7cd0: $da $e7 $10

	rst $38                                          ; $7cd3: $ff
	add hl, hl                                       ; $7cd4: $29
	ld a, e                                          ; $7cd5: $7b
	ld b, b                                          ; $7cd6: $40
	sbc e                                            ; $7cd7: $9b
	jr nz, @+$01                                     ; $7cd8: $20 $ff

	ld b, b                                          ; $7cda: $40
	cp a                                             ; $7cdb: $bf
	ld l, a                                          ; $7cdc: $6f
	xor [hl]                                         ; $7cdd: $ae
	halt                                             ; $7cde: $76
	jp z, $8676                                      ; $7cdf: $ca $76 $86

	ld [hl], a                                       ; $7ce2: $77
	xor [hl]                                         ; $7ce3: $ae
	ld a, a                                          ; $7ce4: $7f
	jp z, $aa93                                      ; $7ce5: $ca $93 $aa

	rst $38                                          ; $7ce8: $ff
	ld [bc], a                                       ; $7ce9: $02
	db $fc                                           ; $7cea: $fc
	ld bc, $08fe                                     ; $7ceb: $01 $fe $08
	rst $38                                          ; $7cee: $ff
	inc d                                            ; $7cef: $14
	ei                                               ; $7cf0: $fb
	or h                                             ; $7cf1: $b4
	ei                                               ; $7cf2: $fb
	ld a, e                                          ; $7cf3: $7b
	ret z                                            ; $7cf4: $c8

	sbc h                                            ; $7cf5: $9c
	rst $38                                          ; $7cf6: $ff
	pop af                                           ; $7cf7: $f1
	rst $38                                          ; $7cf8: $ff
	ld l, [hl]                                       ; $7cf9: $6e
	ld h, [hl]                                       ; $7cfa: $66
	ld a, [hl]                                       ; $7cfb: $7e
	jr jr_045_7c8d                                   ; $7cfc: $18 $8f

	ld b, a                                          ; $7cfe: $47
	db $fc                                           ; $7cff: $fc
	ld c, a                                          ; $7d00: $4f
	ld sp, hl                                        ; $7d01: $f9
	rst SubAFromDE                                          ; $7d02: $df
	di                                               ; $7d03: $f3
	cp a                                             ; $7d04: $bf
	rst SubAFromBC                                          ; $7d05: $e7
	ld d, e                                          ; $7d06: $53
	xor l                                            ; $7d07: $ad
	sub $29                                          ; $7d08: $d6 $29
	db $db                                           ; $7d0a: $db
	ld hl, $81d4                                     ; $7d0b: $21 $d4 $81
	db $dd                                           ; $7d0e: $dd
	rst $38                                          ; $7d0f: $ff
	adc e                                            ; $7d10: $8b
	cp $ff                                           ; $7d11: $fe $ff
	adc $ff                                          ; $7d13: $ce $ff
	sub $15                                          ; $7d15: $d6 $15
	push de                                          ; $7d17: $d5

jr_045_7d18:
	ld [hl], $f5                                     ; $7d18: $36 $f5
	rla                                              ; $7d1a: $17
	push af                                          ; $7d1b: $f5
	ld a, [hl+]                                      ; $7d1c: $2a
	ld l, $f7                                        ; $7d1d: $2e $f7
	or [hl]                                          ; $7d1f: $b6
	rst SubAFromHL                                          ; $7d20: $d7
	db $db                                           ; $7d21: $db
	rst FarCall                                          ; $7d22: $f7
	di                                               ; $7d23: $f3
	set 7, h                                         ; $7d24: $cb $fc
	db $dd                                           ; $7d26: $dd
	add b                                            ; $7d27: $80
	rst SubAFromDE                                          ; $7d28: $df
	ld b, b                                          ; $7d29: $40
	ld a, a                                          ; $7d2a: $7f
	db $fd                                           ; $7d2b: $fd
	ld a, [hl]                                       ; $7d2c: $7e
	ld [hl], $80                                     ; $7d2d: $36 $80
	ldh [rLYC], a                                    ; $7d2f: $e0 $45
	rst $38                                          ; $7d31: $ff
	xor e                                            ; $7d32: $ab
	rst $38                                          ; $7d33: $ff
	db $db                                           ; $7d34: $db
	rst $38                                          ; $7d35: $ff
	xor a                                            ; $7d36: $af
	rst $38                                          ; $7d37: $ff
	cp e                                             ; $7d38: $bb
	ld a, a                                          ; $7d39: $7f
	push de                                          ; $7d3a: $d5
	ccf                                              ; $7d3b: $3f
	add $3f                                          ; $7d3c: $c6 $3f
	jp c, Jump_045_5527                              ; $7d3e: $da $27 $55

	rst $38                                          ; $7d41: $ff
	ei                                               ; $7d42: $fb
	rst $38                                          ; $7d43: $ff
	ld [hl], h                                       ; $7d44: $74
	rst $38                                          ; $7d45: $ff
	rst AddAOntoHL                                          ; $7d46: $ef
	rst $38                                          ; $7d47: $ff
	cp l                                             ; $7d48: $bd
	rst $38                                          ; $7d49: $ff
	jr c, @+$01                                      ; $7d4a: $38 $ff

	ld b, $fc                                        ; $7d4c: $06 $fc
	sub c                                            ; $7d4e: $91
	ld [hl], d                                       ; $7d4f: $72
	adc h                                            ; $7d50: $8c
	and a                                            ; $7d51: $a7
	ld hl, sp+$47                                    ; $7d52: $f8 $47
	ld hl, sp+$3f                                    ; $7d54: $f8 $3f
	ret nz                                           ; $7d56: $c0

	ld c, e                                          ; $7d57: $4b
	add b                                            ; $7d58: $80
	cp a                                             ; $7d59: $bf
	ret nz                                           ; $7d5a: $c0

	ld a, a                                          ; $7d5b: $7f
	add b                                            ; $7d5c: $80
	ld [hl], a                                       ; $7d5d: $77
	ld [hl], a                                       ; $7d5e: $77
	adc [hl]                                         ; $7d5f: $8e
	pop bc                                           ; $7d60: $c1
	ccf                                              ; $7d61: $3f
	add d                                            ; $7d62: $82
	ld a, a                                          ; $7d63: $7f
	add a                                            ; $7d64: $87
	ld a, a                                          ; $7d65: $7f
	xor e                                            ; $7d66: $ab
	rra                                              ; $7d67: $1f
	ldh [$1f], a                                     ; $7d68: $e0 $1f
	rst FarCall                                          ; $7d6a: $f7
	jr jr_045_7d18                                   ; $7d6b: $18 $ab

	ld d, h                                          ; $7d6d: $54
	ld d, l                                          ; $7d6e: $55
	xor d                                            ; $7d6f: $aa
	ld d, a                                          ; $7d70: $57
	ld a, d                                          ; $7d71: $7a
	sbc h                                            ; $7d72: $9c
	add b                                            ; $7d73: $80
	or a                                             ; $7d74: $b7
	rst $38                                          ; $7d75: $ff
	jp $37ff                                         ; $7d76: $c3 $ff $37


	rst SubAFromDE                                          ; $7d79: $df
	ld a, c                                          ; $7d7a: $79
	rra                                              ; $7d7b: $1f
	ld d, b                                          ; $7d7c: $50
	ccf                                              ; $7d7d: $3f
	db $fd                                           ; $7d7e: $fd
	ld a, [de]                                       ; $7d7f: $1a
	ld d, c                                          ; $7d80: $51
	rst $38                                          ; $7d81: $ff
	db $eb                                           ; $7d82: $eb
	cp $b6                                           ; $7d83: $fe $b6
	db $fc                                           ; $7d85: $fc
	ld c, a                                          ; $7d86: $4f
	ld hl, sp-$41                                    ; $7d87: $f8 $bf
	ret nz                                           ; $7d89: $c0

	ld c, a                                          ; $7d8a: $4f

jr_045_7d8b:
	and b                                            ; $7d8b: $a0
	cp a                                             ; $7d8c: $bf
	ld b, b                                          ; $7d8d: $40
	ld e, [hl]                                       ; $7d8e: $5e
	and c                                            ; $7d8f: $a1
	ld [hl], b                                       ; $7d90: $70
	adc a                                            ; $7d91: $8f
	db $fd                                           ; $7d92: $fd
	sbc b                                            ; $7d93: $98
	nop                                              ; $7d94: $00
	db $fc                                           ; $7d95: $fc
	inc bc                                           ; $7d96: $03
	call c, $fd03                                    ; $7d97: $dc $03 $fd
	inc bc                                           ; $7d9a: $03
	halt                                             ; $7d9b: $76
	db $fd                                           ; $7d9c: $fd
	sbc h                                            ; $7d9d: $9c

Jump_045_7d9e:
	add c                                            ; $7d9e: $81
	ld a, [hl]                                       ; $7d9f: $7e
	add b                                            ; $7da0: $80
	ld a, e                                          ; $7da1: $7b
	ld a, [hl+]                                      ; $7da2: $2a
	sub d                                            ; $7da3: $92
	inc d                                            ; $7da4: $14
	rst $38                                          ; $7da5: $ff
	ld a, [hl-]                                      ; $7da6: $3a
	rst $38                                          ; $7da7: $ff
	ld e, l                                          ; $7da8: $5d
	rst $38                                          ; $7da9: $ff
	cp e                                             ; $7daa: $bb
	rst $38                                          ; $7dab: $ff
	add hl, bc                                       ; $7dac: $09
	rst FarCall                                          ; $7dad: $f7
	ld d, h                                          ; $7dae: $54
	dec hl                                           ; $7daf: $2b
	ld bc, $f07b                                     ; $7db0: $01 $7b $f0
	sbc [hl]                                         ; $7db3: $9e
	ld l, l                                          ; $7db4: $6d
	ld a, d                                          ; $7db5: $7a
	adc b                                            ; $7db6: $88
	ld a, [hl]                                       ; $7db7: $7e
	ld d, h                                          ; $7db8: $54
	ld a, a                                          ; $7db9: $7f
	inc h                                            ; $7dba: $24
	adc b                                            ; $7dbb: $88
	push af                                          ; $7dbc: $f5
	ld a, [$e05f]                                    ; $7dbd: $fa $5f $e0
	dec b                                            ; $7dc0: $05
	ei                                               ; $7dc1: $fb
	jr c, jr_045_7d8b                                ; $7dc2: $38 $c7

	ld e, a                                          ; $7dc4: $5f
	ldh [$a0], a                                     ; $7dc5: $e0 $a0
	rst $38                                          ; $7dc7: $ff
	ld de, $28ee                                     ; $7dc8: $11 $ee $28
	rst SubAFromHL                                          ; $7dcb: $d7
	push de                                          ; $7dcc: $d5
	ld a, [hl+]                                      ; $7dcd: $2a
	xor d                                            ; $7dce: $aa
	ld d, l                                          ; $7dcf: $55
	ld d, h                                          ; $7dd0: $54
	rst $38                                          ; $7dd1: $ff
	ld b, $7a                                        ; $7dd2: $06 $7a
	ld h, $94                                        ; $7dd4: $26 $94
	cp a                                             ; $7dd6: $bf
	ld a, a                                          ; $7dd7: $7f
	jp nc, $ae3f                                     ; $7dd8: $d2 $3f $ae

	ld d, c                                          ; $7ddb: $51
	dec d                                            ; $7ddc: $15
	ld [$fd02], a                                    ; $7ddd: $ea $02 $fd
	ld a, [hl+]                                      ; $7de0: $2a
	ld a, d                                          ; $7de1: $7a
	ld e, d                                          ; $7de2: $5a
	adc h                                            ; $7de3: $8c
	and d                                            ; $7de4: $a2
	rst $38                                          ; $7de5: $ff
	add $ff                                          ; $7de6: $c6 $ff
	set 7, [hl]                                      ; $7de8: $cb $fe
	ld h, [hl]                                       ; $7dea: $66
	reti                                             ; $7deb: $d9


	ld b, a                                          ; $7dec: $47
	ldh a, [$fa]                                     ; $7ded: $f0 $fa
	ld h, l                                          ; $7def: $65
	and l                                            ; $7df0: $a5
	ei                                               ; $7df1: $fb
	ld a, a                                          ; $7df2: $7f
	ldh a, [$b7]                                     ; $7df3: $f0 $b7
	ldh [$fe], a                                     ; $7df5: $e0 $fe
	ld a, b                                          ; $7df7: $78
	ld [hl], b                                       ; $7df8: $70
	ld a, a                                          ; $7df9: $7f
	cp $7f                                           ; $7dfa: $fe $7f
	ld e, [hl]                                       ; $7dfc: $5e
	sub d                                            ; $7dfd: $92
	xor a                                            ; $7dfe: $af

Call_045_7dff:
	ld d, b                                          ; $7dff: $50
	ld b, e                                          ; $7e00: $43
	cp a                                             ; $7e01: $bf
	add l                                            ; $7e02: $85
	ld a, a                                          ; $7e03: $7f
	jp nz, $f73d                                     ; $7e04: $c2 $3d $f7

	ld [$12ed], sp                                   ; $7e07: $08 $ed $12
	ret nz                                           ; $7e0a: $c0

	ld a, c                                          ; $7e0b: $79
	or d                                             ; $7e0c: $b2
	ld a, a                                          ; $7e0d: $7f
	and h                                            ; $7e0e: $a4
	add b                                            ; $7e0f: $80
	rst SubAFromHL                                          ; $7e10: $d7
	rst $38                                          ; $7e11: $ff
	ld l, d                                          ; $7e12: $6a
	rst $38                                          ; $7e13: $ff
	push af                                          ; $7e14: $f5
	rst $38                                          ; $7e15: $ff
	sbc $3f                                          ; $7e16: $de $3f
	db $db                                           ; $7e18: $db
	inc a                                            ; $7e19: $3c
	rla                                              ; $7e1a: $17
	ld hl, sp+$0f                                    ; $7e1b: $f8 $0f
	ld hl, sp+$07                                    ; $7e1d: $f8 $07
	ld hl, sp-$16                                    ; $7e1f: $f8 $ea
	rst $38                                          ; $7e21: $ff
	ldh a, [rIE]                                     ; $7e22: $f0 $ff
	pop hl                                           ; $7e24: $e1
	pop hl                                           ; $7e25: $e1
	inc bc                                           ; $7e26: $03
	ld [bc], a                                       ; $7e27: $02
	rlca                                             ; $7e28: $07
	inc b                                            ; $7e29: $04
	rrca                                             ; $7e2a: $0f
	add hl, bc                                       ; $7e2b: $09
	rra                                              ; $7e2c: $1f
	inc de                                           ; $7e2d: $13
	ccf                                              ; $7e2e: $3f
	adc e                                            ; $7e2f: $8b
	daa                                              ; $7e30: $27
	ld a, a                                          ; $7e31: $7f
	rst GetHLinHL                                          ; $7e32: $cf
	rst $38                                          ; $7e33: $ff
	sbc a                                            ; $7e34: $9f
	db $fc                                           ; $7e35: $fc
	ccf                                              ; $7e36: $3f
	cp $7f                                           ; $7e37: $fe $7f
	pop af                                           ; $7e39: $f1

jr_045_7e3a:
	rst $38                                          ; $7e3a: $ff
	ldh [c], a                                       ; $7e3b: $e2
	ei                                               ; $7e3c: $fb
	ret nz                                           ; $7e3d: $c0

	rst SubAFromBC                                          ; $7e3e: $e7
	add d                                            ; $7e3f: $82
	rst JumpTable                                          ; $7e40: $c7
	adc h                                            ; $7e41: $8c
	rst $38                                          ; $7e42: $ff
	ld e, $7b                                        ; $7e43: $1e $7b
	ld [hl], b                                       ; $7e45: $70
	ld a, [hl]                                       ; $7e46: $7e
	add $80                                          ; $7e47: $c6 $80
	db $dd                                           ; $7e49: $dd
	cp $2f                                           ; $7e4a: $fe $2f
	call c, $8c7f                                    ; $7e4c: $dc $7f $8c
	cpl                                              ; $7e4f: $2f
	call c, $cf73                                    ; $7e50: $dc $73 $cf
	ld a, a                                          ; $7e53: $7f
	ld hl, $e53f                                     ; $7e54: $21 $3f $e5
	ld a, [hl-]                                      ; $7e57: $3a
	dec h                                            ; $7e58: $25
	add hl, sp                                       ; $7e59: $39
	sub [hl]                                         ; $7e5a: $96
	dec e                                            ; $7e5b: $1d
	adc d                                            ; $7e5c: $8a
	inc c                                            ; $7e5d: $0c
	rst SubAFromHL                                          ; $7e5e: $d7
	inc c                                            ; $7e5f: $0c
	db $db                                           ; $7e60: $db
	jr nz, jr_045_7e3a                               ; $7e61: $20 $d7

	and b                                            ; $7e63: $a0
	ldh a, [$a0]                                     ; $7e64: $f0 $a0
	ret c                                            ; $7e66: $d8

	ldh a, [hDisp1_SCX]                                     ; $7e67: $f0 $91
	ret z                                            ; $7e69: $c8

	ret nc                                           ; $7e6a: $d0

	db $ec                                           ; $7e6b: $ec
	ret z                                            ; $7e6c: $c8

	db $fc                                           ; $7e6d: $fc
	add sp, $77                                      ; $7e6e: $e8 $77
	and b                                            ; $7e70: $a0
	ld a, a                                          ; $7e71: $7f
	rst SubAFromBC                                          ; $7e72: $e7
	rra                                              ; $7e73: $1f
	ld a, [bc]                                       ; $7e74: $0a
	rst $38                                          ; $7e75: $ff
	ld d, a                                          ; $7e76: $57
	ld a, d                                          ; $7e77: $7a
	cp h                                             ; $7e78: $bc
	sbc [hl]                                         ; $7e79: $9e
	ld e, a                                          ; $7e7a: $5f
	ld a, d                                          ; $7e7b: $7a
	ret z                                            ; $7e7c: $c8

	rst SubAFromDE                                          ; $7e7d: $df
	rst $38                                          ; $7e7e: $ff
	ld a, a                                          ; $7e7f: $7f
	db $fc                                           ; $7e80: $fc
	add b                                            ; $7e81: $80
	ld c, a                                          ; $7e82: $4f
	db $fc                                           ; $7e83: $fc
	xor l                                            ; $7e84: $ad
	cp $76                                           ; $7e85: $fe $76
	db $fd                                           ; $7e87: $fd
	db $ed                                           ; $7e88: $ed
	cp $e7                                           ; $7e89: $fe $e7
	db $fc                                           ; $7e8b: $fc
	rst $38                                          ; $7e8c: $ff
	cp $f4                                           ; $7e8d: $fe $f4
	db $fc                                           ; $7e8f: $fc
	db $ec                                           ; $7e90: $ec
	db $fc                                           ; $7e91: $fc
	ld l, $d9                                        ; $7e92: $2e $d9
	ld d, l                                          ; $7e94: $55
	ld [$59ae], a                                    ; $7e95: $ea $ae $59
	ld [hl], c                                       ; $7e98: $71
	jp z, $48b6                                      ; $7e99: $ca $b6 $48

Jump_045_7e9c:
	ld b, h                                          ; $7e9c: $44
	ret z                                            ; $7e9d: $c8

	add h                                            ; $7e9e: $84
	ld c, b                                          ; $7e9f: $48
	ld e, b                                          ; $7ea0: $58
	sub e                                            ; $7ea1: $93
	ret nz                                           ; $7ea2: $c0

	xor e                                            ; $7ea3: $ab
	ld d, h                                          ; $7ea4: $54
	ld d, [hl]                                       ; $7ea5: $56
	xor c                                            ; $7ea6: $a9
	xor b                                            ; $7ea7: $a8
	ld d, a                                          ; $7ea8: $57
	rst $38                                          ; $7ea9: $ff
	nop                                              ; $7eaa: $00
	rla                                              ; $7eab: $17
	ccf                                              ; $7eac: $3f
	ccf                                              ; $7ead: $3f
	db $fc                                           ; $7eae: $fc
	sub h                                            ; $7eaf: $94
	ldh a, [c]                                       ; $7eb0: $f2
	dec e                                            ; $7eb1: $1d
	db $dd                                           ; $7eb2: $dd
	ld a, [hl-]                                      ; $7eb3: $3a
	or $19                                           ; $7eb4: $f6 $19
	ld a, a                                          ; $7eb6: $7f
	jr @+$01                                         ; $7eb7: $18 $ff

	rst $38                                          ; $7eb9: $ff
	add sp, -$04                                     ; $7eba: $e8 $fc
	sub [hl]                                         ; $7ebc: $96
	cp e                                             ; $7ebd: $bb
	ld b, h                                          ; $7ebe: $44
	ld d, [hl]                                       ; $7ebf: $56
	xor c                                            ; $7ec0: $a9
	inc a                                            ; $7ec1: $3c
	jp $836c                                         ; $7ec2: $c3 $6c $83


	db $fc                                           ; $7ec5: $fc
	ld a, b                                          ; $7ec6: $78
	sub $fc                                          ; $7ec7: $d6 $fc
	ld a, c                                          ; $7ec9: $79
	ld h, $7e                                        ; $7eca: $26 $7e
	db $10                                           ; $7ecc: $10
	ld a, [hl]                                       ; $7ecd: $7e
	ld l, d                                          ; $7ece: $6a
	sbc l                                            ; $7ecf: $9d
	ld a, $ff                                        ; $7ed0: $3e $ff
	ld l, a                                          ; $7ed2: $6f
	rst AddAOntoHL                                          ; $7ed3: $ef
	ld a, [hl]                                       ; $7ed4: $7e
	xor $97                                          ; $7ed5: $ee $97
	ld d, b                                          ; $7ed7: $50
	xor a                                            ; $7ed8: $af
	cp e                                             ; $7ed9: $bb
	call nz, $8a15                                   ; $7eda: $c4 $15 $8a
	sbc a                                            ; $7edd: $9f
	rst GetHLinHL                                          ; $7ede: $cf
	ei                                               ; $7edf: $fb
	sbc b                                            ; $7ee0: $98
	ld h, l                                          ; $7ee1: $65
	jp nz, $dfa0                                     ; $7ee2: $c2 $a0 $df

	ld bc, $82ff                                     ; $7ee5: $01 $ff $82
	ld [hl], l                                       ; $7ee8: $75
	ld a, [hl-]                                      ; $7ee9: $3a
	ld a, h                                          ; $7eea: $7c
	sub b                                            ; $7eeb: $90
	cp $93                                           ; $7eec: $fe $93
	ld d, h                                          ; $7eee: $54
	xor e                                            ; $7eef: $ab
	ld [$04f7], sp                                   ; $7ef0: $08 $f7 $04
	ei                                               ; $7ef3: $fb
	ld hl, sp-$79                                    ; $7ef4: $f8 $87
	ld a, b                                          ; $7ef6: $78
	rst $38                                          ; $7ef7: $ff
	ld a, b                                          ; $7ef8: $78
	add b                                            ; $7ef9: $80
	db $fd                                           ; $7efa: $fd
	sub [hl]                                         ; $7efb: $96
	dec b                                            ; $7efc: $05
	cp $21                                           ; $7efd: $fe $21

Call_045_7eff:
	cp $05                                           ; $7eff: $fe $05

Call_045_7f01:
	cp $8a                                           ; $7f01: $fe $8a
	db $fc                                           ; $7f03: $fc
	ld d, a                                          ; $7f04: $57
	ld l, e                                          ; $7f05: $6b
	ret nz                                           ; $7f06: $c0

	sub a                                            ; $7f07: $97
	ld e, l                                          ; $7f08: $5d
	ldh [c], a                                       ; $7f09: $e2
	cp $61                                           ; $7f0a: $fe $61
	ld e, e                                          ; $7f0c: $5b
	db $e4                                           ; $7f0d: $e4
	ld [hl], l                                       ; $7f0e: $75
	ld [$f16b], a                                    ; $7f0f: $ea $6b $f1
	ld a, e                                          ; $7f12: $7b
	ret nc                                           ; $7f13: $d0

	sub a                                            ; $7f14: $97
	cp b                                             ; $7f15: $b8
	ld b, a                                          ; $7f16: $47
	db $fc                                           ; $7f17: $fc
	inc bc                                           ; $7f18: $03
	ld d, b                                          ; $7f19: $50
	and c                                            ; $7f1a: $a1
	and b                                            ; $7f1b: $a0
	ldh a, [$fb]                                     ; $7f1c: $f0 $fb
	ld [hl], l                                       ; $7f1e: $75
	adc [hl]                                         ; $7f1f: $8e
	ld a, l                                          ; $7f20: $7d
	ld a, h                                          ; $7f21: $7c
	ld a, a                                          ; $7f22: $7f
	inc l                                            ; $7f23: $2c
	add b                                            ; $7f24: $80
	rra                                              ; $7f25: $1f
	ld a, a                                          ; $7f26: $7f
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	inc bc                                           ; $7f29: $03
	nop                                              ; $7f2a: $00
	rlca                                             ; $7f2b: $07
	nop                                              ; $7f2c: $00
	dec bc                                           ; $7f2d: $0b
	db $fc                                           ; $7f2e: $fc
	and [hl]                                         ; $7f2f: $a6
	ld sp, hl                                        ; $7f30: $f9
	ld c, e                                          ; $7f31: $4b
	db $fd                                           ; $7f32: $fd
	adc e                                            ; $7f33: $8b
	or $6f                                           ; $7f34: $f6 $6f
	call nz, $091f                                   ; $7f36: $c4 $1f $09
	rst $38                                          ; $7f39: $ff
	inc sp                                           ; $7f3a: $33
	rst $38                                          ; $7f3b: $ff
	rlca                                             ; $7f3c: $07
	rst $38                                          ; $7f3d: $ff
	ld c, a                                          ; $7f3e: $4f
	cp $9f                                           ; $7f3f: $fe $9f
	db $fd                                           ; $7f41: $fd
	ld a, $fd                                        ; $7f42: $3e $fd
	sub l                                            ; $7f44: $95
	ld a, b                                          ; $7f45: $78
	pop af                                           ; $7f46: $f1
	ld hl, sp-$10                                    ; $7f47: $f8 $f0
	ldh [$a0], a                                     ; $7f49: $e0 $a0
	ret nz                                           ; $7f4b: $c0

	ld b, b                                          ; $7f4c: $40
	add b                                            ; $7f4d: $80
	inc bc                                           ; $7f4e: $03
	ld a, d                                          ; $7f4f: $7a
	ld b, b                                          ; $7f50: $40
	sbc h                                            ; $7f51: $9c
	ld hl, $b2ff                                     ; $7f52: $21 $ff $b2
	sbc $ff                                          ; $7f55: $de $ff
	ei                                               ; $7f57: $fb
	sub d                                            ; $7f58: $92
	rst SubAFromDE                                          ; $7f59: $df
	inc l                                            ; $7f5a: $2c
	xor [hl]                                         ; $7f5b: $ae
	ld e, l                                          ; $7f5c: $5d
	rst SubAFromDE                                          ; $7f5d: $df
	inc l                                            ; $7f5e: $2c
	cp $0c                                           ; $7f5f: $fe $0c
	sub $ec                                          ; $7f61: $d6 $ec
	ld b, $0c                                        ; $7f63: $06 $0c
	ld e, $de                                        ; $7f65: $1e $de
	inc c                                            ; $7f67: $0c
	sub l                                            ; $7f68: $95
	db $ed                                           ; $7f69: $ed
	rrca                                             ; $7f6a: $0f
	db $eb                                           ; $7f6b: $eb
	ld b, $05                                        ; $7f6c: $06 $05
	rlca                                             ; $7f6e: $07
	ld [bc], a                                       ; $7f6f: $02
	ld d, a                                          ; $7f70: $57
	ld bc, $77ab                                     ; $7f71: $01 $ab $77
	db $fc                                           ; $7f74: $fc
	ld a, h                                          ; $7f75: $7c
	ld c, l                                          ; $7f76: $4d
	adc a                                            ; $7f77: $8f
	db $fc                                           ; $7f78: $fc
	scf                                              ; $7f79: $37
	ld [hl], h                                       ; $7f7a: $74
	cp e                                             ; $7f7b: $bb
	or $19                                           ; $7f7c: $f6 $19
	rst $38                                          ; $7f7e: $ff
	sbc c                                            ; $7f7f: $99
	cp $5d                                           ; $7f80: $fe $5d
	rst $38                                          ; $7f82: $ff
	inc c                                            ; $7f83: $0c
	rst $38                                          ; $7f84: $ff
	ld c, h                                          ; $7f85: $4c
	db $fc                                           ; $7f86: $fc
	adc a                                            ; $7f87: $8f
	ld l, l                                          ; $7f88: $6d
	ld e, b                                          ; $7f89: $58
	ld a, a                                          ; $7f8a: $7f
	cp $80                                           ; $7f8b: $fe $80
	ld a, [$faff]                                    ; $7f8d: $fa $ff $fa
	rst SubAFromBC                                          ; $7f90: $e7
	or d                                             ; $7f91: $b2
	rst JumpTable                                          ; $7f92: $c7
	xor d                                            ; $7f93: $aa
	rlca                                             ; $7f94: $07
	adc $ec                                          ; $7f95: $ce $ec
	dec c                                            ; $7f97: $0d
	adc h                                            ; $7f98: $8c
	ld e, [hl]                                       ; $7f99: $5e
	inc c                                            ; $7f9a: $0c
	inc l                                            ; $7f9b: $2c
	inc c                                            ; $7f9c: $0c
	ld a, h                                          ; $7f9d: $7c

Call_045_7f9e:
	dec c                                            ; $7f9e: $0d
	ld l, l                                          ; $7f9f: $6d
	rrca                                             ; $7fa0: $0f
	ld a, [hl]                                       ; $7fa1: $7e
	ld c, $68                                        ; $7fa2: $0e $68
	inc b                                            ; $7fa4: $04
	push hl                                          ; $7fa5: $e5
	ret nc                                           ; $7fa6: $d0

	ldh [c], a                                       ; $7fa7: $e2
	ldh a, [$c5]                                     ; $7fa8: $f0 $c5
	ld h, b                                          ; $7faa: $60
	ld a, [bc]                                       ; $7fab: $0a
	sub a                                            ; $7fac: $97
	ret nz                                           ; $7fad: $c0

	rst SubAFromHL                                          ; $7fae: $d7
	add b                                            ; $7faf: $80
	xor d                                            ; $7fb0: $aa
	nop                                              ; $7fb1: $00
	ld d, l                                          ; $7fb2: $55
	nop                                              ; $7fb3: $00
	xor [hl]                                         ; $7fb4: $ae
	ld a, e                                          ; $7fb5: $7b
	db $fc                                           ; $7fb6: $fc
	ld [hl], a                                       ; $7fb7: $77
	ld hl, sp+$7f                                    ; $7fb8: $f8 $7f
	db $fc                                           ; $7fba: $fc
	sbc [hl]                                         ; $7fbb: $9e
	push de                                          ; $7fbc: $d5
	ld l, e                                          ; $7fbd: $6b
	ld hl, sp+$4f                                    ; $7fbe: $f8 $4f
	db $fc                                           ; $7fc0: $fc
	ld a, e                                          ; $7fc1: $7b
	sbc a                                            ; $7fc2: $9f
	ld a, e                                          ; $7fc3: $7b
	ld hl, sp-$62                                    ; $7fc4: $f8 $9e
	ld d, b                                          ; $7fc6: $50
	ld a, e                                          ; $7fc7: $7b
	db $fc                                           ; $7fc8: $fc
	sbc d                                            ; $7fc9: $9a
	ld d, h                                          ; $7fca: $54
	nop                                              ; $7fcb: $00
	and b                                            ; $7fcc: $a0
	nop                                              ; $7fcd: $00
	ld b, b                                          ; $7fce: $40
	ld [hl], e                                       ; $7fcf: $73
	db $ec                                           ; $7fd0: $ec
	ld [hl], a                                       ; $7fd1: $77
	ld hl, sp+$72                                    ; $7fd2: $f8 $72
	push af                                          ; $7fd4: $f5
	cp $77                                           ; $7fd5: $fe $77
	db $f4                                           ; $7fd7: $f4
	ldh [$c5], a                                     ; $7fd8: $e0 $c5
	sbc [hl]                                         ; $7fda: $9e
	ld [bc], a                                       ; $7fdb: $02
	ld d, e                                          ; $7fdc: $53
	or $77                                           ; $7fdd: $f6 $77
	sub h                                            ; $7fdf: $94
	ld sp, hl                                        ; $7fe0: $f9
	sbc [hl]                                         ; $7fe1: $9e
	dec h                                            ; $7fe2: $25
	halt                                             ; $7fe3: $76
	sub h                                            ; $7fe4: $94
	ld [hl], a                                       ; $7fe5: $77
	sbc b                                            ; $7fe6: $98
	ld a, a                                          ; $7fe7: $7f
	inc d                                            ; $7fe8: $14
	ld a, [hl]                                       ; $7fe9: $7e
	ret                                              ; $7fea: $c9


	sbc e                                            ; $7feb: $9b
	nop                                              ; $7fec: $00

Jump_045_7fed:
	ld a, [hl+]                                      ; $7fed: $2a
	nop                                              ; $7fee: $00
	dec d                                            ; $7fef: $15
	ld [hl], e                                       ; $7ff0: $73
	add h                                            ; $7ff1: $84
	ld a, a                                          ; $7ff2: $7f
	jp c, $1f9e                                      ; $7ff3: $da $9e $1f

	ld a, c                                          ; $7ff6: $79

Call_045_7ff7:
	jr z, @+$7c                                      ; $7ff7: $28 $7a

	ld c, d                                          ; $7ff9: $4a
	ld [hl], e                                       ; $7ffa: $73
	ld h, h                                          ; $7ffb: $64
	ld a, h                                          ; $7ffc: $7c
	or $7f                                           ; $7ffd: $f6 $7f

Call_045_7fff:
	ld b, b                                          ; $7fff: $40
