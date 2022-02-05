; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

Jump_048_4000:
	sbc l                                            ; $4000: $9d
	inc bc                                           ; $4001: $03
	ld [bc], a                                       ; $4002: $02
	jp c, $8ffb                                      ; $4003: $da $fb $8f

	xor e                                            ; $4006: $ab
	add b                                            ; $4007: $80
	cp a                                             ; $4008: $bf
	or l                                             ; $4009: $b5
	add d                                            ; $400a: $82
	rst $38                                          ; $400b: $ff
	push af                                          ; $400c: $f5
	call nz, $3f14                                   ; $400d: $c4 $14 $3f
	rra                                              ; $4010: $1f
	ccf                                              ; $4011: $3f
	ld [bc], a                                       ; $4012: $02
	ld a, a                                          ; $4013: $7f
	rra                                              ; $4014: $1f
	call nz, $d17b                                   ; $4015: $c4 $7b $d1
	ld a, l                                          ; $4018: $7d
	sbc [hl]                                         ; $4019: $9e
	ld a, e                                          ; $401a: $7b
	db $fd                                           ; $401b: $fd
	ld [hl], a                                       ; $401c: $77
	ld a, [hl]                                       ; $401d: $7e
	ld a, e                                          ; $401e: $7b
	db $fc                                           ; $401f: $fc
	ld a, a                                          ; $4020: $7f
	ret z                                            ; $4021: $c8

	adc a                                            ; $4022: $8f
	rlca                                             ; $4023: $07
	ld sp, hl                                        ; $4024: $f9
	ld d, c                                          ; $4025: $51
	ld bc, $5ff9                                     ; $4026: $01 $f9 $5f
	ld bc, $f901                                     ; $4029: $01 $01 $f9
	ld hl, sp-$08                                    ; $402c: $f8 $f8
	nop                                              ; $402e: $00
	ld sp, hl                                        ; $402f: $f9
	pop af                                           ; $4030: $f1
	ld de, $4be0                                     ; $4031: $11 $e0 $4b
	ldh [rBGP], a                                    ; $4034: $e0 $47
	ret nc                                           ; $4036: $d0

	ld b, e                                          ; $4037: $43
	ret nz                                           ; $4038: $c0

	ld a, h                                          ; $4039: $7c
	ret c                                            ; $403a: $d8

	sbc e                                            ; $403b: $9b
	ld d, l                                          ; $403c: $55
	ld [bc], a                                       ; $403d: $02
	cp $54                                           ; $403e: $fe $54
	ld [hl], d                                       ; $4040: $72
	ld b, e                                          ; $4041: $43
	ld a, b                                          ; $4042: $78
	call $0194                                       ; $4043: $cd $94 $01
	sub l                                            ; $4046: $95
	jp hl                                            ; $4047: $e9


	push de                                          ; $4048: $d5
	ld l, c                                          ; $4049: $69
	ld d, b                                          ; $404a: $50
	rst AddAOntoHL                                          ; $404b: $ef
	db $e4                                           ; $404c: $e4
	inc h                                            ; $404d: $24
	rra                                              ; $404e: $1f
	ccf                                              ; $404f: $3f
	ld a, c                                          ; $4050: $79
	ld a, e                                          ; $4051: $7b
	adc a                                            ; $4052: $8f
	rra                                              ; $4053: $1f
	rlca                                             ; $4054: $07
	ld b, $be                                        ; $4055: $06 $be
	ld a, [hl]                                       ; $4057: $7e
	ld e, $c3                                        ; $4058: $1e $c3
	cp [hl]                                          ; $405a: $be
	call c, $cccc                                    ; $405b: $dc $cc $cc
	ld [hl], e                                       ; $405e: $73
	adc a                                            ; $405f: $8f
	db $e3                                           ; $4060: $e3
	rst $38                                          ; $4061: $ff
	cp a                                             ; $4062: $bf
	sbc $c7                                          ; $4063: $de $c7
	sbc e                                            ; $4065: $9b
	rrca                                             ; $4066: $0f
	inc de                                           ; $4067: $13
	db $10                                           ; $4068: $10
	ldh a, [$dd]                                     ; $4069: $f0 $dd
	db $10                                           ; $406b: $10
	sbc h                                            ; $406c: $9c
	rlca                                             ; $406d: $07
	rst SubAFromBC                                          ; $406e: $e7
	db $e3                                           ; $406f: $e3
	call c, $9ae0                                    ; $4070: $dc $e0 $9a
	call z, $c631                                    ; $4073: $cc $31 $c6
	ld bc, $7b06                                     ; $4076: $01 $06 $7b
	cp $7d                                           ; $4079: $fe $7d
	inc h                                            ; $407b: $24
	sbc h                                            ; $407c: $9c
	pop bc                                           ; $407d: $c1
	ld [bc], a                                       ; $407e: $02
	ld bc, $fe7b                                     ; $407f: $01 $7b $fe
	ld a, b                                          ; $4082: $78
	ld h, b                                          ; $4083: $60
	ld a, a                                          ; $4084: $7f
	cp $9c                                           ; $4085: $fe $9c
	sbc h                                            ; $4087: $9c
	ld l, e                                          ; $4088: $6b
	add [hl]                                         ; $4089: $86
	db $db                                           ; $408a: $db
	rst $38                                          ; $408b: $ff
	sbc l                                            ; $408c: $9d
	rst FarCall                                          ; $408d: $f7
	db $e3                                           ; $408e: $e3
	ld [hl], e                                       ; $408f: $73
	ldh a, [$7b]                                     ; $4090: $f0 $7b
	cp $d9                                           ; $4092: $fe $d9
	rst $38                                          ; $4094: $ff
	ld b, a                                          ; $4095: $47
	ldh a, [$9c]                                     ; $4096: $f0 $9c
	ld d, d                                          ; $4098: $52
	xor a                                            ; $4099: $af
	ld d, a                                          ; $409a: $57
	ld [hl], e                                       ; $409b: $73
	cp $9e                                           ; $409c: $fe $9e
	ld sp, hl                                        ; $409e: $f9
	ld h, d                                          ; $409f: $62
	pop af                                           ; $40a0: $f1
	ld a, [hl]                                       ; $40a1: $7e
	call $d09b                                       ; $40a2: $cd $9b $d0
	and b                                            ; $40a5: $a0
	ret nc                                           ; $40a6: $d0

	xor b                                            ; $40a7: $a8
	ld h, [hl]                                       ; $40a8: $66
	sbc [hl]                                         ; $40a9: $9e
	ld a, e                                          ; $40aa: $7b
	rst GetHLinHL                                          ; $40ab: $cf
	sbc d                                            ; $40ac: $9a
	ld de, $4180                                     ; $40ad: $11 $80 $41
	ld [$f910], sp                                   ; $40b0: $08 $10 $f9
	ld [hl], a                                       ; $40b3: $77
	cp a                                             ; $40b4: $bf

jr_048_40b5:
	sbc h                                            ; $40b5: $9c
	ld [bc], a                                       ; $40b6: $02
	nop                                              ; $40b7: $00
	ld [bc], a                                       ; $40b8: $02
	ld hl, sp+$77                                    ; $40b9: $f8 $77
	ldh a, [$9e]                                     ; $40bb: $f0 $9e
	jr z, jr_048_40b5                                ; $40bd: $28 $f6

	ld a, a                                          ; $40bf: $7f
	ld c, [hl]                                       ; $40c0: $4e
	rst SubAFromDE                                          ; $40c1: $df
	rlca                                             ; $40c2: $07
	ld a, e                                          ; $40c3: $7b
	db $fd                                           ; $40c4: $fd
	sbc [hl]                                         ; $40c5: $9e
	nop                                              ; $40c6: $00
	sbc $03                                          ; $40c7: $de $03
	ld a, d                                          ; $40c9: $7a
	cp d                                             ; $40ca: $ba
	sub [hl]                                         ; $40cb: $96
	ld b, $00                                        ; $40cc: $06 $00
	ccf                                              ; $40ce: $3f
	ld d, l                                          ; $40cf: $55
	xor d                                            ; $40d0: $aa
	ld [$ffef], sp                                   ; $40d1: $08 $ef $ff
	push de                                          ; $40d4: $d5
	ld [hl], h                                       ; $40d5: $74
	ld [hl], d                                       ; $40d6: $72
	ld a, a                                          ; $40d7: $7f
	cp e                                             ; $40d8: $bb
	sbc [hl]                                         ; $40d9: $9e
	rst FarCall                                          ; $40da: $f7
	ld a, e                                          ; $40db: $7b
	dec c                                            ; $40dc: $0d
	ld a, a                                          ; $40dd: $7f
	ldh a, [$7b]                                     ; $40de: $f0 $7b
	db $f4                                           ; $40e0: $f4
	ld a, h                                          ; $40e1: $7c
	ld h, c                                          ; $40e2: $61
	ld l, [hl]                                       ; $40e3: $6e
	add [hl]                                         ; $40e4: $86
	ld a, a                                          ; $40e5: $7f
	db $fc                                           ; $40e6: $fc
	sub a                                            ; $40e7: $97
	di                                               ; $40e8: $f3
	ld d, e                                          ; $40e9: $53
	and e                                            ; $40ea: $a3
	inc bc                                           ; $40eb: $03
	db $e3                                           ; $40ec: $e3
	db $e3                                           ; $40ed: $e3
	and e                                            ; $40ee: $a3
	inc bc                                           ; $40ef: $03
	sbc $f1                                          ; $40f0: $de $f1
	rst SubAFromDE                                          ; $40f2: $df
	ld de, $fc7b                                     ; $40f3: $11 $7b $fc
	ld a, a                                          ; $40f6: $7f
	or d                                             ; $40f7: $b2
	ld a, e                                          ; $40f8: $7b
	call c, $3b78                                    ; $40f9: $dc $78 $3b
	ld l, a                                          ; $40fc: $6f
	pop hl                                           ; $40fd: $e1
	ld a, a                                          ; $40fe: $7f
	ei                                               ; $40ff: $fb
	ld a, a                                          ; $4100: $7f
	push af                                          ; $4101: $f5
	ld a, e                                          ; $4102: $7b
	db $f4                                           ; $4103: $f4
	ld [hl], e                                       ; $4104: $73
	ldh a, [rPCM34]                                  ; $4105: $f0 $77
	ret z                                            ; $4107: $c8

	ld [hl], a                                       ; $4108: $77
	ldh a, [$7e]                                     ; $4109: $f0 $7e
	call nc, $f06f                                   ; $410b: $d4 $6f $f0
	sbc [hl]                                         ; $410e: $9e
	xor e                                            ; $410f: $ab
	ld l, e                                          ; $4110: $6b
	ldh a, [$7b]                                     ; $4111: $f0 $7b
	ret c                                            ; $4113: $d8

	ld [hl], e                                       ; $4114: $73
	ldh a, [$71]                                     ; $4115: $f0 $71
	db $eb                                           ; $4117: $eb
	ld a, l                                          ; $4118: $7d
	ld e, b                                          ; $4119: $58
	add b                                            ; $411a: $80
	ld b, c                                          ; $411b: $41
	ld h, c                                          ; $411c: $61
	inc bc                                           ; $411d: $03
	and $a5                                          ; $411e: $e6 $a5
	ld a, d                                          ; $4120: $7a
	ld b, $e6                                        ; $4121: $06 $e6
	and $c2                                          ; $4123: $e6 $c2
	ld h, [hl]                                       ; $4125: $66
	push hl                                          ; $4126: $e5
	rst SubAFromBC                                          ; $4127: $e7
	rst FarCall                                          ; $4128: $f7
	dec bc                                           ; $4129: $0b
	sbc h                                            ; $412a: $9c
	ld e, h                                          ; $412b: $5c
	call z, $95f6                                    ; $412c: $cc $f6 $95
	ld d, $59                                        ; $412f: $16 $59
	ld a, [hl-]                                      ; $4131: $3a
	rst GetHLinHL                                          ; $4132: $cf
	rst GetHLinHL                                          ; $4133: $cf
	rst SubAFromDE                                          ; $4134: $df
	call c, $3cbc                                    ; $4135: $dc $bc $3c
	jr c, jr_048_419a                                ; $4138: $38 $60

	sbc $10                                          ; $413a: $de $10
	sbc d                                            ; $413c: $9a
	sub b                                            ; $413d: $90
	ld e, b                                          ; $413e: $58
	sbc h                                            ; $413f: $9c
	ld e, [hl]                                       ; $4140: $5e
	xor a                                            ; $4141: $af
	sbc $e0                                          ; $4142: $de $e0
	rst $38                                          ; $4144: $ff
	sbc h                                            ; $4145: $9c
	ld [$060c], sp                                   ; $4146: $08 $0c $06
	halt                                             ; $4149: $76
	call nz, $fe77                                   ; $414a: $c4 $77 $fe
	halt                                             ; $414d: $76
	call nz, $fe77                                   ; $414e: $c4 $77 $fe
	sub h                                            ; $4151: $94
	ld c, e                                          ; $4152: $4b
	adc d                                            ; $4153: $8a
	ld c, e                                          ; $4154: $4b
	adc e                                            ; $4155: $8b
	ld c, e                                          ; $4156: $4b
	adc d                                            ; $4157: $8a
	ld c, d                                          ; $4158: $4a
	adc d                                            ; $4159: $8a
	rst SubAFromBC                                          ; $415a: $e7
	rst SubAFromBC                                          ; $415b: $e7
	and $dc                                          ; $415c: $e6 $dc
	rst SubAFromBC                                          ; $415e: $e7
	halt                                             ; $415f: $76
	call nc, $d59b                                   ; $4160: $d4 $9b $d5

Jump_048_4163:
	ld [$bc65], a                                    ; $4163: $ea $65 $bc
	call c, $9cff                                    ; $4166: $dc $ff $9c
	cp a                                             ; $4169: $bf
	rst AddAOntoHL                                          ; $416a: $ef
	ld sp, hl                                        ; $416b: $f9
	ld a, e                                          ; $416c: $7b
	ldh a, [$9a]                                     ; $416d: $f0 $9a
	xor [hl]                                         ; $416f: $ae
	ld e, a                                          ; $4170: $5f
	or e                                             ; $4171: $b3
	ld [hl], l                                       ; $4172: $75
	or l                                             ; $4173: $b5
	sbc $ff                                          ; $4174: $de $ff
	sub b                                            ; $4176: $90
	ei                                               ; $4177: $fb
	pop af                                           ; $4178: $f1
	pop af                                           ; $4179: $f1
	db $d3                                           ; $417a: $d3
	ld [hl], e                                       ; $417b: $73
	ld d, a                                          ; $417c: $57
	xor e                                            ; $417d: $ab
	ld d, b                                          ; $417e: $50
	xor b                                            ; $417f: $a8
	ld d, b                                          ; $4180: $50
	xor b                                            ; $4181: $a8
	ld d, a                                          ; $4182: $57
	xor a                                            ; $4183: $af
	rst $38                                          ; $4184: $ff
	rst $38                                          ; $4185: $ff
	sbc $f8                                          ; $4186: $de $f8
	sbc $ff                                          ; $4188: $de $ff
	sbc l                                            ; $418a: $9d
	call nc, $fea8                                   ; $418b: $d4 $a8 $fe
	sbc l                                            ; $418e: $9d
	ldh a, [$fc]                                     ; $418f: $f0 $fc
	ld [hl], e                                       ; $4191: $73
	ld hl, $f777                                     ; $4192: $21 $77 $f7

jr_048_4195:
	sbc [hl]                                         ; $4195: $9e
	inc b                                            ; $4196: $04
	cp $9b                                           ; $4197: $fe $9b
	ld e, b                                          ; $4199: $58

jr_048_419a:
	nop                                              ; $419a: $00
	ld b, b                                          ; $419b: $40
	jr nz, jr_048_4195                               ; $419c: $20 $f7

	sbc c                                            ; $419e: $99
	ld [$1500], sp                                   ; $419f: $08 $00 $15
	ld [bc], a                                       ; $41a2: $02
	dec d                                            ; $41a3: $15
	xor d                                            ; $41a4: $aa
	or $9a                                           ; $41a5: $f6 $9a
	inc b                                            ; $41a7: $04
	ld b, b                                          ; $41a8: $40
	and b                                            ; $41a9: $a0
	db $10                                           ; $41aa: $10
	and b                                            ; $41ab: $a0
	ld sp, hl                                        ; $41ac: $f9
	sbc d                                            ; $41ad: $9a
	dec b                                            ; $41ae: $05
	ld a, [bc]                                       ; $41af: $0a
	sub l                                            ; $41b0: $95
	ld a, [bc]                                       ; $41b1: $0a
	ld bc, $72f6                                     ; $41b2: $01 $f6 $72
	ld d, d                                          ; $41b5: $52
	ld c, a                                          ; $41b6: $4f
	ldh a, [$9e]                                     ; $41b7: $f0 $9e
	xor b                                            ; $41b9: $a8
	ld a, c                                          ; $41ba: $79
	jp nc, $d9f8                                     ; $41bb: $d2 $f8 $d9

	dec b                                            ; $41be: $05
	reti                                             ; $41bf: $d9


	inc de                                           ; $41c0: $13
	sbc h                                            ; $41c1: $9c
	ld [hl+], a                                      ; $41c2: $22
	push bc                                          ; $41c3: $c5
	ld a, [bc]                                       ; $41c4: $0a
	ld [hl], a                                       ; $41c5: $77
	call $199b                                       ; $41c6: $cd $9b $19
	ld [hl], b                                       ; $41c9: $70
	ldh [$80], a                                     ; $41ca: $e0 $80
	db $fd                                           ; $41cc: $fd
	sbc h                                            ; $41cd: $9c
	inc a                                            ; $41ce: $3c
	xor d                                            ; $41cf: $aa
	ld d, c                                          ; $41d0: $51
	ld [hl], a                                       ; $41d1: $77
	cp a                                             ; $41d2: $bf
	ld a, a                                          ; $41d3: $7f
	ld e, l                                          ; $41d4: $5d
	ld sp, hl                                        ; $41d5: $f9
	ld l, [hl]                                       ; $41d6: $6e
	ld bc, $73f7                                     ; $41d7: $01 $f7 $73
	ldh a, [$79]                                     ; $41da: $f0 $79
	ld bc, $f063                                     ; $41dc: $01 $63 $f0
	sbc e                                            ; $41df: $9b
	ld b, h                                          ; $41e0: $44
	xor h                                            ; $41e1: $ac
	ld e, h                                          ; $41e2: $5c
	xor h                                            ; $41e3: $ac
	ld a, b                                          ; $41e4: $78
	push bc                                          ; $41e5: $c5
	add e                                            ; $41e6: $83
	ld b, $0e                                        ; $41e7: $06 $0e
	inc e                                            ; $41e9: $1c
	inc c                                            ; $41ea: $0c
	inc b                                            ; $41eb: $04
	inc bc                                           ; $41ec: $03
	inc bc                                           ; $41ed: $03
	nop                                              ; $41ee: $00
	ld d, l                                          ; $41ef: $55
	ld a, [bc]                                       ; $41f0: $0a
	add l                                            ; $41f1: $85
	add b                                            ; $41f2: $80
	ld h, b                                          ; $41f3: $60
	ldh a, [rP1]                                     ; $41f4: $f0 $00
	nop                                              ; $41f6: $00
	ld b, b                                          ; $41f7: $40
	ret nz                                           ; $41f8: $c0

	add b                                            ; $41f9: $80
	ldh [$f0], a                                     ; $41fa: $e0 $f0
	ld hl, sp-$40                                    ; $41fc: $f8 $c0
	nop                                              ; $41fe: $00
	ld d, e                                          ; $41ff: $53
	xor c                                            ; $4200: $a9
	ld d, h                                          ; $4201: $54
	ld a, [hl+]                                      ; $4202: $2a
	halt                                             ; $4203: $76
	ld [bc], a                                       ; $4204: $02
	sbc l                                            ; $4205: $9d
	rlca                                             ; $4206: $07
	inc bc                                           ; $4207: $03
	ld l, a                                          ; $4208: $6f
	call $068f                                       ; $4209: $cd $8f $06
	add c                                            ; $420c: $81
	add $61                                          ; $420d: $c6 $61
	ld a, [hl-]                                      ; $420f: $3a
	rra                                              ; $4210: $1f
	rrca                                             ; $4211: $0f
	rlca                                             ; $4212: $07
	add c                                            ; $4213: $81
	jp nz, $f2e1                                     ; $4214: $c2 $e1 $f2

	ld a, l                                          ; $4217: $7d
	ld a, $1f                                        ; $4218: $3e $1f
	rrca                                             ; $421a: $0f
	ld a, d                                          ; $421b: $7a
	ret nz                                           ; $421c: $c0

	ld a, e                                          ; $421d: $7b
	cp $df                                           ; $421e: $fe $df
	db $eb                                           ; $4220: $eb
	reti                                             ; $4221: $d9


	rst SubAFromBC                                          ; $4222: $e7
	sbc [hl]                                         ; $4223: $9e
	ld c, a                                          ; $4224: $4f
	ld [hl], a                                       ; $4225: $77
	sbc a                                            ; $4226: $9f
	sub $ff                                          ; $4227: $d6 $ff
	sbc d                                            ; $4229: $9a
	push bc                                          ; $422a: $c5
	and l                                            ; $422b: $a5
	ld b, [hl]                                       ; $422c: $46
	and a                                            ; $422d: $a7
	ld b, l                                          ; $422e: $45
	sbc $e5                                          ; $422f: $de $e5
	sbc h                                            ; $4231: $9c
	di                                               ; $4232: $f3
	pop af                                           ; $4233: $f1
	ldh a, [c]                                       ; $4234: $f2
	call c, $7ef3                                    ; $4235: $dc $f3 $7e
	add $99                                          ; $4238: $c6 $99
	rst SubAFromHL                                          ; $423a: $d7
	ld l, a                                          ; $423b: $6f
	ld [hl], a                                       ; $423c: $77
	xor a                                            ; $423d: $af
	rst AddAOntoHL                                          ; $423e: $ef
	di                                               ; $423f: $f3
	sbc $ff                                          ; $4240: $de $ff
	sbc d                                            ; $4242: $9a
	ld a, a                                          ; $4243: $7f
	cp a                                             ; $4244: $bf
	rst SubAFromDE                                          ; $4245: $df
	rst FarCall                                          ; $4246: $f7
	ei                                               ; $4247: $fb
	db $dd                                           ; $4248: $dd
	rst $38                                          ; $4249: $ff
	sbc l                                            ; $424a: $9d
	db $fc                                           ; $424b: $fc
	ret nz                                           ; $424c: $c0

	ld [hl], d                                       ; $424d: $72
	inc b                                            ; $424e: $04
	ld a, d                                          ; $424f: $7a
	xor l                                            ; $4250: $ad
	ld a, a                                          ; $4251: $7f
	rst FarCall                                          ; $4252: $f7
	sbc b                                            ; $4253: $98
	ld d, c                                          ; $4254: $51
	nop                                              ; $4255: $00
	dec bc                                           ; $4256: $0b
	inc b                                            ; $4257: $04
	inc bc                                           ; $4258: $03
	inc b                                            ; $4259: $04
	inc de                                           ; $425a: $13
	ld hl, sp-$68                                    ; $425b: $f8 $98
	ld d, c                                          ; $425d: $51
	inc h                                            ; $425e: $24
	ld b, c                                          ; $425f: $41
	jr nz, jr_048_4262                               ; $4260: $20 $00

jr_048_4262:
	ld sp, $f80c                                     ; $4262: $31 $0c $f8
	sbc d                                            ; $4265: $9a
	db $10                                           ; $4266: $10
	jr nz, jr_048_4279                               ; $4267: $20 $10

	jr nz, jr_048_427d                               ; $4269: $20 $12

	ld a, e                                          ; $426b: $7b
	ld h, c                                          ; $426c: $61
	db $f4                                           ; $426d: $f4
	sbc l                                            ; $426e: $9d
	ld [$5606], sp                                   ; $426f: $08 $06 $56
	and b                                            ; $4272: $a0
	rst $38                                          ; $4273: $ff
	sbc h                                            ; $4274: $9c
	add b                                            ; $4275: $80
	ld bc, $f385                                     ; $4276: $01 $85 $f3

jr_048_4279:
	sbc [hl]                                         ; $4279: $9e
	db $10                                           ; $427a: $10
	ld a, e                                          ; $427b: $7b
	sbc [hl]                                         ; $427c: $9e

jr_048_427d:
	ld h, [hl]                                       ; $427d: $66
	ret nz                                           ; $427e: $c0

	sbc [hl]                                         ; $427f: $9e
	dec d                                            ; $4280: $15
	db $fc                                           ; $4281: $fc
	rst SubAFromDE                                          ; $4282: $df
	inc de                                           ; $4283: $13
	ld a, e                                          ; $4284: $7b
	dec bc                                           ; $4285: $0b
	halt                                             ; $4286: $76
	ld c, [hl]                                       ; $4287: $4e
	sbc [hl]                                         ; $4288: $9e
	ret nc                                           ; $4289: $d0

	ld l, a                                          ; $428a: $6f
	push hl                                          ; $428b: $e5
	sbc [hl]                                         ; $428c: $9e
	ld hl, sp+$79                                    ; $428d: $f8 $79
	pop hl                                           ; $428f: $e1
	ld h, [hl]                                       ; $4290: $66
	db $ed                                           ; $4291: $ed
	sbc e                                            ; $4292: $9b
	dec d                                            ; $4293: $15
	xor b                                            ; $4294: $a8
	ld d, l                                          ; $4295: $55
	adc b                                            ; $4296: $88
	jp hl                                            ; $4297: $e9


	ld a, e                                          ; $4298: $7b
	add h                                            ; $4299: $84
	ld [hl], a                                       ; $429a: $77
	or e                                             ; $429b: $b3
	sbc [hl]                                         ; $429c: $9e
	dec b                                            ; $429d: $05
	ldh a, [c]                                       ; $429e: $f2
	ld e, [hl]                                       ; $429f: $5e
	dec a                                            ; $42a0: $3d
	sbc b                                            ; $42a1: $98
	ld hl, $0954                                     ; $42a2: $21 $54 $09
	ld d, h                                          ; $42a5: $54
	ld a, [bc]                                       ; $42a6: $0a
	db $10                                           ; $42a7: $10
	ld a, [bc]                                       ; $42a8: $0a
	ld hl, sp-$66                                    ; $42a9: $f8 $9a
	ld b, d                                          ; $42ab: $42
	xor c                                            ; $42ac: $a9
	ld d, d                                          ; $42ad: $52
	and h                                            ; $42ae: $a4
	ld a, [bc]                                       ; $42af: $0a
	ld [hl], l                                       ; $42b0: $75
	ld [$6ff3], a                                    ; $42b1: $ea $f3 $6f
	add d                                            ; $42b4: $82
	rst $38                                          ; $42b5: $ff
	sbc h                                            ; $42b6: $9c
	dec bc                                           ; $42b7: $0b
	ld a, [bc]                                       ; $42b8: $0a
	inc d                                            ; $42b9: $14
	db $fc                                           ; $42ba: $fc
	sbc h                                            ; $42bb: $9c
	rst SubAFromBC                                          ; $42bc: $e7
	rlca                                             ; $42bd: $07
	ld c, $f4                                        ; $42be: $0e $f4
	ld [hl], c                                       ; $42c0: $71
	or c                                             ; $42c1: $b1
	ld [hl], a                                       ; $42c2: $77
	ld d, b                                          ; $42c3: $50
	sbc [hl]                                         ; $42c4: $9e
	dec d                                            ; $42c5: $15
	ld [hl], a                                       ; $42c6: $77
	cp $df                                           ; $42c7: $fe $df
	dec d                                            ; $42c9: $15
	sbc h                                            ; $42ca: $9c
	di                                               ; $42cb: $f3
	inc bc                                           ; $42cc: $03
	inc de                                           ; $42cd: $13
	ld a, e                                          ; $42ce: $7b
	cp $df                                           ; $42cf: $fe $df
	inc bc                                           ; $42d1: $03
	sbc [hl]                                         ; $42d2: $9e
	inc c                                            ; $42d3: $0c
	ld l, a                                          ; $42d4: $6f
	rst JumpTable                                          ; $42d5: $c7
	sbc h                                            ; $42d6: $9c
	inc bc                                           ; $42d7: $03
	db $fd                                           ; $42d8: $fd
	rlca                                             ; $42d9: $07
	ld h, a                                          ; $42da: $67
	inc d                                            ; $42db: $14
	sbc l                                            ; $42dc: $9d
	ld a, b                                          ; $42dd: $78
	rra                                              ; $42de: $1f
	ld [hl], e                                       ; $42df: $73
	ld sp, hl                                        ; $42e0: $f9
	sbc e                                            ; $42e1: $9b
	ldh [$fe], a                                     ; $42e2: $e0 $fe
	ld a, a                                          ; $42e4: $7f
	rrca                                             ; $42e5: $0f
	cp $51                                           ; $42e6: $fe $51
	nop                                              ; $42e8: $00
	ret nc                                           ; $42e9: $d0

	ld d, l                                          ; $42ea: $55
	sbc h                                            ; $42eb: $9c
	ld d, h                                          ; $42ec: $54
	ld b, h                                          ; $42ed: $44
	ld b, h                                          ; $42ee: $44
	jp c, $de33                                      ; $42ef: $da $33 $de

	ld b, h                                          ; $42f2: $44
	add h                                            ; $42f3: $84
	inc sp                                           ; $42f4: $33
	inc [hl]                                         ; $42f5: $34
	ld b, h                                          ; $42f6: $44
	ld [hl], l                                       ; $42f7: $75
	inc sp                                           ; $42f8: $33
	inc sp                                           ; $42f9: $33
	inc [hl]                                         ; $42fa: $34
	ld b, e                                          ; $42fb: $43
	inc sp                                           ; $42fc: $33
	inc sp                                           ; $42fd: $33
	dec [hl]                                         ; $42fe: $35

Jump_048_42ff:
	ld d, h                                          ; $42ff: $54
	ld b, h                                          ; $4300: $44
	ld [hl], h                                       ; $4301: $74
	ld b, e                                          ; $4302: $43
	inc [hl]                                         ; $4303: $34
	ld b, l                                          ; $4304: $45
	ld d, [hl]                                       ; $4305: $56
	ld h, [hl]                                       ; $4306: $66
	ld h, h                                          ; $4307: $64
	inc [hl]                                         ; $4308: $34
	ld b, h                                          ; $4309: $44
	ld b, h                                          ; $430a: $44
	ld [hl], h                                       ; $430b: $74
	ld b, [hl]                                       ; $430c: $46
	ld b, h                                          ; $430d: $44
	ld [hl], a                                       ; $430e: $77
	ld l, e                                          ; $430f: $6b
	or $9a                                           ; $4310: $f6 $9a
	ld b, h                                          ; $4312: $44
	inc [hl]                                         ; $4313: $34
	ld b, h                                          ; $4314: $44
	ld d, [hl]                                       ; $4315: $56
	ld h, [hl]                                       ; $4316: $66
	ld a, e                                          ; $4317: $7b
	rst FarCall                                          ; $4318: $f7
	call c, $7b44                                    ; $4319: $dc $44 $7b
	push de                                          ; $431c: $d5
	sbc l                                            ; $431d: $9d
	ld [hl], a                                       ; $431e: $77
	ld [hl], h                                       ; $431f: $74
	sbc $44                                          ; $4320: $de $44
	sbc l                                            ; $4322: $9d
	ld b, a                                          ; $4323: $47
	inc [hl]                                         ; $4324: $34
	ld [hl], a                                       ; $4325: $77
	or $df                                           ; $4326: $f6 $df
	ld [hl], a                                       ; $4328: $77
	sbc [hl]                                         ; $4329: $9e
	scf                                              ; $432a: $37
	ld a, e                                          ; $432b: $7b
	db $fd                                           ; $432c: $fd
	rst SubAFromDE                                          ; $432d: $df
	inc sp                                           ; $432e: $33
	ld a, e                                          ; $432f: $7b
	ld a, [$779d]                                    ; $4330: $fa $9d $77
	dec [hl]                                         ; $4333: $35
	sbc $77                                          ; $4334: $de $77
	sbc $73                                          ; $4336: $de $73
	scf                                              ; $4338: $37
	ld a, [bc]                                       ; $4339: $0a
	add b                                            ; $433a: $80
	ld hl, $00e1                                     ; $433b: $21 $e1 $00
	ld hl, sp-$80                                    ; $433e: $f8 $80
	ldh a, [$c0]                                     ; $4340: $f0 $c0
	ld [hl], b                                       ; $4342: $70
	ret nz                                           ; $4343: $c0

	ld a, h                                          ; $4344: $7c
	ret nz                                           ; $4345: $c0

	ld a, h                                          ; $4346: $7c
	add sp, $38                                      ; $4347: $e8 $38
	ldh [$3c], a                                     ; $4349: $e0 $3c
	sub l                                            ; $434b: $95
	ld [$754a], a                                    ; $434c: $ea $4a $75
	jr nz, @+$41                                     ; $434f: $20 $3f

	db $10                                           ; $4351: $10
	rra                                              ; $4352: $1f
	ld [$040f], sp                                   ; $4353: $08 $0f $04
	inc b                                            ; $4356: $04
	inc bc                                           ; $4357: $03
	nop                                              ; $4358: $00
	ld [bc], a                                       ; $4359: $02
	add b                                            ; $435a: $80
	ld [bc], a                                       ; $435b: $02
	ld d, l                                          ; $435c: $55
	xor d                                            ; $435d: $aa
	xor d                                            ; $435e: $aa
	ld d, l                                          ; $435f: $55
	ld d, l                                          ; $4360: $55
	xor d                                            ; $4361: $aa
	nop                                              ; $4362: $00
	rst $38                                          ; $4363: $ff
	rra                                              ; $4364: $1f
	ldh [$0e], a                                     ; $4365: $e0 $0e
	ld bc, $07fb                                     ; $4367: $01 $fb $07
	ld a, a                                          ; $436a: $7f
	ld a, a                                          ; $436b: $7f
	ld b, a                                          ; $436c: $47
	cp h                                             ; $436d: $bc
	adc a                                            ; $436e: $8f
	ld a, b                                          ; $436f: $78
	rrca                                             ; $4370: $0f
	ld hl, sp-$61                                    ; $4371: $f8 $9f
	ld [hl], b                                       ; $4373: $70
	ld e, $f1                                        ; $4374: $1e $f1
	rst AddAOntoHL                                          ; $4376: $ef
	pop hl                                           ; $4377: $e1
	rst GetHLinHL                                          ; $4378: $cf
	pop hl                                           ; $4379: $e1
	add b                                            ; $437a: $80
	db $dd                                           ; $437b: $dd
	db $e3                                           ; $437c: $e3
	db $f4                                           ; $437d: $f4
	ld a, b                                          ; $437e: $78
	ld l, [hl]                                       ; $437f: $6e
	ldh a, [$de]                                     ; $4380: $f0 $de
	ldh a, [$d7]                                     ; $4382: $f0 $d7
	ld hl, sp-$09                                    ; $4384: $f8 $f7
	ld hl, sp-$11                                    ; $4386: $f8 $ef
	add sp, -$1d                                     ; $4388: $e8 $e3
	db $e4                                           ; $438a: $e4

jr_048_438b:
	db $e3                                           ; $438b: $e3

jr_048_438c:
	ldh [$7c], a                                     ; $438c: $e0 $7c
	inc bc                                           ; $438e: $03
	ld a, $01                                        ; $438f: $3e $01
	rra                                              ; $4391: $1f
	nop                                              ; $4392: $00
	rrca                                             ; $4393: $0f
	nop                                              ; $4394: $00
	rlca                                             ; $4395: $07
	nop                                              ; $4396: $00
	add e                                            ; $4397: $83
	nop                                              ; $4398: $00
	add e                                            ; $4399: $83
	add b                                            ; $439a: $80
	inc c                                            ; $439b: $0c
	jp $550c                                         ; $439c: $c3 $0c $55


	and b                                            ; $439f: $a0
	ld a, [bc]                                       ; $43a0: $0a
	db $fc                                           ; $43a1: $fc
	jr jr_048_438b                                   ; $43a2: $18 $e7

	dec b                                            ; $43a4: $05
	db $fd                                           ; $43a5: $fd
	add c                                            ; $43a6: $81
	ld a, c                                          ; $43a7: $79
	ret nz                                           ; $43a8: $c0

	jr c, jr_048_438c                                ; $43a9: $38 $e1

	inc e                                            ; $43ab: $1c
	pop hl                                           ; $43ac: $e1
	ld e, $65                                        ; $43ad: $1e $65
	jr nc, jr_048_438b                               ; $43af: $30 $da

	ld h, h                                          ; $43b1: $64
	dec c                                            ; $43b2: $0d
	jp nz, $817e                                     ; $43b3: $c2 $7e $81

	ccf                                              ; $43b6: $3f
	nop                                              ; $43b7: $00
	rst $38                                          ; $43b8: $ff
	ld bc, $ff87                                     ; $43b9: $01 $87 $ff
	inc bc                                           ; $43bc: $03
	cp $06                                           ; $43bd: $fe $06
	ld d, l                                          ; $43bf: $55
	nop                                              ; $43c0: $00
	xor e                                            ; $43c1: $ab
	inc bc                                           ; $43c2: $03
	ld e, h                                          ; $43c3: $5c
	rrca                                             ; $43c4: $0f
	and a                                            ; $43c5: $a7
	jr jr_048_4427                                   ; $43c6: $18 $5f

	nop                                              ; $43c8: $00
	ccf                                              ; $43c9: $3f
	add b                                            ; $43ca: $80
	ld l, a                                          ; $43cb: $6f
	ld [hl], b                                       ; $43cc: $70
	dec bc                                           ; $43cd: $0b
	ld [rRAMG], sp                                   ; $43ce: $08 $00 $00
	add b                                            ; $43d1: $80
	add b                                            ; $43d2: $80

jr_048_43d3:
	ld a, e                                          ; $43d3: $7b

jr_048_43d4:
	db $fd                                           ; $43d4: $fd
	sub [hl]                                         ; $43d5: $96
	ld h, b                                          ; $43d6: $60
	ret nz                                           ; $43d7: $c0

	jr nc, @-$1e                                     ; $43d8: $30 $e0

	jr jr_048_43d4                                   ; $43da: $18 $f8

	inc b                                            ; $43dc: $04
	ld hl, sp+$06                                    ; $43dd: $f8 $06
	db $fd                                           ; $43df: $fd
	rst SubAFromDE                                          ; $43e0: $df
	inc bc                                           ; $43e1: $03
	sub l                                            ; $43e2: $95
	inc e                                            ; $43e3: $1c
	rra                                              ; $43e4: $1f
	inc hl                                           ; $43e5: $23
	ccf                                              ; $43e6: $3f
	rst GetHLinHL                                          ; $43e7: $cf
	rst $38                                          ; $43e8: $ff
	adc l                                            ; $43e9: $8d
	rst $38                                          ; $43ea: $ff
	sbc c                                            ; $43eb: $99
	ld sp, hl                                        ; $43ec: $f9
	db $fd                                           ; $43ed: $fd
	rst SubAFromDE                                          ; $43ee: $df
	ret nz                                           ; $43ef: $c0

	sub l                                            ; $43f0: $95
	jr nz, jr_048_43d3                               ; $43f1: $20 $e0

	ldh a, [$f0]                                     ; $43f3: $f0 $f0
	ld hl, sp-$08                                    ; $43f5: $f8 $f8
	ret c                                            ; $43f7: $d8

	ret c                                            ; $43f8: $d8

jr_048_43f9:
	adc h                                            ; $43f9: $8c
	db $fc                                           ; $43fa: $fc
	ldh [$d8], a                                     ; $43fb: $e0 $d8
	sbc b                                            ; $43fd: $98
	ld bc, $0100                                     ; $43fe: $01 $00 $01
	ld [bc], a                                       ; $4401: $02
	ld bc, $0300                                     ; $4402: $01 $00 $03
	db $fc                                           ; $4405: $fc
	ld a, a                                          ; $4406: $7f
	sbc [hl]                                         ; $4407: $9e
	sub h                                            ; $4408: $94
	ret nz                                           ; $4409: $c0

	ld b, b                                          ; $440a: $40
	and b                                            ; $440b: $a0
	pop de                                           ; $440c: $d1
	jr nc, jr_048_43f9                               ; $440d: $30 $ea

	add hl, de                                       ; $440f: $19
	db $e4                                           ; $4410: $e4
	rra                                              ; $4411: $1f
	nop                                              ; $4412: $00
	jr nc, jr_048_4490                               ; $4413: $30 $7b

	cp $94                                           ; $4415: $fe $94
	ld a, b                                          ; $4417: $78
	add b                                            ; $4418: $80
	ld a, b                                          ; $4419: $78
	nop                                              ; $441a: $00
	ld hl, sp+$21                                    ; $441b: $f8 $21
	ret c                                            ; $441d: $d8

	ld h, d                                          ; $441e: $62
	sbc c                                            ; $441f: $99
	ldh [$1f], a                                     ; $4420: $e0 $1f
	ld h, e                                          ; $4422: $63
	jp nc, $d67f                                     ; $4423: $d2 $7f $d6

	sbc d                                            ; $4426: $9a

jr_048_4427:
	adc a                                            ; $4427: $8f
	nop                                              ; $4428: $00
	rst SubAFromDE                                          ; $4429: $df
	nop                                              ; $442a: $00
	rst $38                                          ; $442b: $ff
	ld [hl], a                                       ; $442c: $77
	or $7e                                           ; $442d: $f6 $7e
	rst FarCall                                          ; $442f: $f7
	sbc e                                            ; $4430: $9b
	ld [$1087], sp                                   ; $4431: $08 $87 $10
	rst GetHLinHL                                          ; $4434: $cf
	ld a, e                                          ; $4435: $7b
	db $f4                                           ; $4436: $f4
	sbc h                                            ; $4437: $9c
	rst $38                                          ; $4438: $ff
	inc b                                            ; $4439: $04
	ei                                               ; $443a: $fb
	ld a, e                                          ; $443b: $7b
	call nz, $fe6f                                   ; $443c: $c4 $6f $fe
	sbc h                                            ; $443f: $9c
	pop bc                                           ; $4440: $c1
	nop                                              ; $4441: $00
	rst JumpTable                                          ; $4442: $c7
	ld [hl], a                                       ; $4443: $77

Call_048_4444:
	ldh [$7e], a                                     ; $4444: $e0 $7e
	adc $97                                          ; $4446: $ce $97
	ldh a, [rAUD3LEVEL]                              ; $4448: $f0 $1c
	ldh a, [rAUD3HIGH]                               ; $444a: $f0 $1e
	ldh a, [$1f]                                     ; $444c: $f0 $1f
	ld hl, sp+$0e                                    ; $444e: $f8 $0e
	ld a, e                                          ; $4450: $7b
	cp $98                                           ; $4451: $fe $98
	rrca                                             ; $4453: $0f
	db $fc                                           ; $4454: $fc
	rlca                                             ; $4455: $07
	nop                                              ; $4456: $00
	dec b                                            ; $4457: $05
	nop                                              ; $4458: $00
	ld [bc], a                                       ; $4459: $02
	ld a, e                                          ; $445a: $7b
	db $fc                                           ; $445b: $fc
	sbc [hl]                                         ; $445c: $9e
	ld a, [bc]                                       ; $445d: $0a
	ld [hl], a                                       ; $445e: $77
	db $fc                                           ; $445f: $fc
	sbc c                                            ; $4460: $99
	inc bc                                           ; $4461: $03
	add e                                            ; $4462: $83
	rlca                                             ; $4463: $07
	ld c, $07                                        ; $4464: $0e $07
	rst $38                                          ; $4466: $ff
	ld a, e                                          ; $4467: $7b
	cp $9e                                           ; $4468: $fe $9e
	ld a, a                                          ; $446a: $7f
	ld [hl], a                                       ; $446b: $77
	db $fc                                           ; $446c: $fc
	add l                                            ; $446d: $85

Jump_048_446e:
	rrca                                             ; $446e: $0f
	cp a                                             ; $446f: $bf
	ld [de], a                                       ; $4470: $12
	ld [hl], e                                       ; $4471: $73
	ld l, $b1                                        ; $4472: $2e $b1
	db $dd                                           ; $4474: $dd
	jp $c3ff                                         ; $4475: $c3 $ff $c3


	dec sp                                           ; $4478: $3b
	jp $87bb                                         ; $4479: $c3 $bb $87


	rst $38                                          ; $447c: $ff
	add a                                            ; $447d: $87
	ld [hl], a                                       ; $447e: $77
	add a                                            ; $447f: $87
	rst FarCall                                          ; $4480: $f7
	rlca                                             ; $4481: $07
	halt                                             ; $4482: $76
	rrca                                             ; $4483: $0f
	pop bc                                           ; $4484: $c1
	jp nz, $c0c1                                     ; $4485: $c2 $c1 $c0

	db $dd                                           ; $4488: $dd
	pop bc                                           ; $4489: $c1
	call c, $8080                                    ; $448a: $dc $80 $80
	add c                                            ; $448d: $81
	add b                                            ; $448e: $80
	add c                                            ; $448f: $81

jr_048_4490:
	rst JumpTable                                          ; $4490: $c7
	ld [$10ef], sp                                   ; $4491: $08 $ef $10
	rst SubAFromDE                                          ; $4494: $df
	jr nz, jr_048_44d6                               ; $4495: $20 $3f

	ret nz                                           ; $4497: $c0

	ld a, $41                                        ; $4498: $3e $41
	ld a, $c1                                        ; $449a: $3e $c1
	ld a, h                                          ; $449c: $7c
	add d                                            ; $449d: $82
	cp b                                             ; $449e: $b8
	ld b, h                                          ; $449f: $44
	ldh a, [rIF]                                     ; $44a0: $f0 $0f
	ld hl, sp+$07                                    ; $44a2: $f8 $07
	ld a, h                                          ; $44a4: $7c
	add e                                            ; $44a5: $83
	inc a                                            ; $44a6: $3c
	add e                                            ; $44a7: $83
	ld e, $01                                        ; $44a8: $1e $01
	rrca                                             ; $44aa: $0f
	db $10                                           ; $44ab: $10
	ld a, [hl]                                       ; $44ac: $7e
	call z, $7f8d                                    ; $44ad: $cc $8d $7f
	nop                                              ; $44b0: $00
	db $fc                                           ; $44b1: $fc
	inc c                                            ; $44b2: $0c
	add sp, $18                                      ; $44b3: $e8 $18
	ld d, b                                          ; $44b5: $50
	or b                                             ; $44b6: $b0
	jr nz, @-$1e                                     ; $44b7: $20 $e0

	nop                                              ; $44b9: $00
	ret nz                                           ; $44ba: $c0

	nop                                              ; $44bb: $00
	ldh [$80], a                                     ; $44bc: $e0 $80
	ld [hl], b                                       ; $44be: $70
	nop                                              ; $44bf: $00
	ld hl, sp-$0f                                    ; $44c0: $f8 $f1
	sbc h                                            ; $44c2: $9c
	cp $01                                           ; $44c3: $fe $01
	ld a, [hl]                                       ; $44c5: $7e
	ld l, d                                          ; $44c6: $6a
	add b                                            ; $44c7: $80
	ld a, a                                          ; $44c8: $7f
	ld b, a                                          ; $44c9: $47
	db $fd                                           ; $44ca: $fd
	adc a                                            ; $44cb: $8f
	sbc h                                            ; $44cc: $9c
	rst $38                                          ; $44cd: $ff
	ld e, h                                          ; $44ce: $5c
	db $fd                                           ; $44cf: $fd
	xor l                                            ; $44d0: $ad
	ld a, [hl]                                       ; $44d1: $7e
	add d                                            ; $44d2: $82
	ld a, a                                          ; $44d3: $7f
	pop hl                                           ; $44d4: $e1
	rra                                              ; $44d5: $1f

jr_048_44d6:
	ldh a, [rIF]                                     ; $44d6: $f0 $0f
	db $fc                                           ; $44d8: $fc
	inc bc                                           ; $44d9: $03
	ld a, [hl]                                       ; $44da: $7e
	ld bc, $7077                                     ; $44db: $01 $77 $70
	sub e                                            ; $44de: $93
	inc bc                                           ; $44df: $03
	rst $38                                          ; $44e0: $ff
	add d                                            ; $44e1: $82
	ld a, a                                          ; $44e2: $7f
	ld [bc], a                                       ; $44e3: $02
	rst $38                                          ; $44e4: $ff
	adc h                                            ; $44e5: $8c
	rst $38                                          ; $44e6: $ff
	ld [hl], e                                       ; $44e7: $73
	rst $38                                          ; $44e8: $ff
	rrca                                             ; $44e9: $0f
	rst $38                                          ; $44ea: $ff
	ld [hl], d                                       ; $44eb: $72
	pop af                                           ; $44ec: $f1
	sbc [hl]                                         ; $44ed: $9e
	add e                                            ; $44ee: $83
	ld [hl], a                                       ; $44ef: $77
	cp $9b                                           ; $44f0: $fe $9b
	ret nz                                           ; $44f2: $c0

	jp $8384                                         ; $44f3: $c3 $84 $83


	ld a, d                                          ; $44f6: $7a
	dec c                                            ; $44f7: $0d
	ei                                               ; $44f8: $fb
	ld a, e                                          ; $44f9: $7b
	and d                                            ; $44fa: $a2
	add b                                            ; $44fb: $80
	nop                                              ; $44fc: $00
	ei                                               ; $44fd: $fb
	ret nz                                           ; $44fe: $c0

	ccf                                              ; $44ff: $3f
	di                                               ; $4500: $f3
	inc c                                            ; $4501: $0c
	dec b                                            ; $4502: $05
	ld [bc], a                                       ; $4503: $02
	ld bc, $0906                                     ; $4504: $01 $06 $09
	ld b, $41                                        ; $4507: $06 $41
	ld a, $43                                        ; $4509: $3e $43
	inc a                                            ; $450b: $3c
	dec de                                           ; $450c: $1b
	ld h, h                                          ; $450d: $64
	rra                                              ; $450e: $1f
	ldh [$bf], a                                     ; $450f: $e0 $bf
	ld b, c                                          ; $4511: $41
	ldh a, [rVBK]                                    ; $4512: $f0 $4f
	ld sp, hl                                        ; $4514: $f9
	ld h, [hl]                                       ; $4515: $66
	rst $38                                          ; $4516: $ff
	ld [hl], b                                       ; $4517: $70
	rst $38                                          ; $4518: $ff
	ld d, b                                          ; $4519: $50
	rst $38                                          ; $451a: $ff
	sbc h                                            ; $451b: $9c
	adc c                                            ; $451c: $89
	rst $38                                          ; $451d: $ff
	sbc e                                            ; $451e: $9b
	ld a, e                                          ; $451f: $7b
	cp $98                                           ; $4520: $fe $98
	ld [de], a                                       ; $4522: $12
	ldh [$1f], a                                     ; $4523: $e0 $1f
	db $e3                                           ; $4525: $e3
	inc e                                            ; $4526: $1c
	rst SubAFromBC                                          ; $4527: $e7
	jr jr_048_45a4                                   ; $4528: $18 $7a

	push hl                                          ; $452a: $e5
	ld a, a                                          ; $452b: $7f
	cp $84                                           ; $452c: $fe $84
	ld h, h                                          ; $452e: $64
	rst $38                                          ; $452f: $ff
	ld a, [hl]                                       ; $4530: $7e
	rst $38                                          ; $4531: $ff
	ld b, e                                          ; $4532: $43
	inc b                                            ; $4533: $04
	ei                                               ; $4534: $fb
	rrca                                             ; $4535: $0f
	ldh a, [$1f]                                     ; $4536: $f0 $1f
	ldh [rIE], a                                     ; $4538: $e0 $ff
	ld [$30ff], sp                                   ; $453a: $08 $ff $30
	rst $38                                          ; $453d: $ff
	ld h, [hl]                                       ; $453e: $66
	rst $38                                          ; $453f: $ff
	call z, $89ff                                    ; $4540: $cc $ff $89
	sbc h                                            ; $4543: $9c
	ld h, e                                          ; $4544: $63
	db $fc                                           ; $4545: $fc
	inc bc                                           ; $4546: $03
	db $fc                                           ; $4547: $fc
	inc bc                                           ; $4548: $03
	ld a, e                                          ; $4549: $7b
	ldh a, [$7f]                                     ; $454a: $f0 $7f
	cp $7f                                           ; $454c: $fe $7f
	jp c, $d07f                                      ; $454e: $da $7f $d0

	add b                                            ; $4551: $80
	sbc a                                            ; $4552: $9f
	inc bc                                           ; $4553: $03
	db $fc                                           ; $4554: $fc
	rrca                                             ; $4555: $0f
	ldh a, [rIE]                                     ; $4556: $f0 $ff
	ld [bc], a                                       ; $4558: $02
	rst $38                                          ; $4559: $ff
	inc b                                            ; $455a: $04
	rst $38                                          ; $455b: $ff
	inc e                                            ; $455c: $1c
	rst $38                                          ; $455d: $ff
	ld a, b                                          ; $455e: $78
	rst $38                                          ; $455f: $ff
	sbc b                                            ; $4560: $98
	rst $38                                          ; $4561: $ff
	rra                                              ; $4562: $1f
	db $fc                                           ; $4563: $fc
	rlca                                             ; $4564: $07
	db $fc                                           ; $4565: $fc
	rlca                                             ; $4566: $07
	cp $03                                           ; $4567: $fe $03
	ld a, [hl]                                       ; $4569: $7e
	add e                                            ; $456a: $83
	ld a, a                                          ; $456b: $7f
	add c                                            ; $456c: $81
	ccf                                              ; $456d: $3f
	add c                                            ; $456e: $81
	ccf                                              ; $456f: $3f
	ld b, c                                          ; $4570: $41
	sub l                                            ; $4571: $95
	ccf                                              ; $4572: $3f
	ld b, b                                          ; $4573: $40
	dec bc                                           ; $4574: $0b
	inc c                                            ; $4575: $0c
	dec bc                                           ; $4576: $0b
	add sp, $0f                                      ; $4577: $e8 $0f
	ret z                                            ; $4579: $c8

	ld e, $98                                        ; $457a: $1e $98
	ld a, e                                          ; $457c: $7b
	add b                                            ; $457d: $80
	ld a, [hl]                                       ; $457e: $7e
	ld a, [de]                                       ; $457f: $1a
	add b                                            ; $4580: $80
	ret nz                                           ; $4581: $c0

	sub b                                            ; $4582: $90
	ldh [$7c], a                                     ; $4583: $e0 $7c
	ld h, e                                          ; $4585: $63
	ld e, h                                          ; $4586: $5c
	db $e3                                           ; $4587: $e3
	ld a, l                                          ; $4588: $7d
	ld h, d                                          ; $4589: $62
	nop                                              ; $458a: $00
	cp [hl]                                          ; $458b: $be
	dec e                                            ; $458c: $1d
	ld a, [hl]                                       ; $458d: $7e
	dec c                                            ; $458e: $0d
	cp [hl]                                          ; $458f: $be
	dec c                                            ; $4590: $0d
	ld a, h                                          ; $4591: $7c
	dec bc                                           ; $4592: $0b
	cp h                                             ; $4593: $bc
	cp $0f                                           ; $4594: $fe $0f
	db $ed                                           ; $4596: $ed
	rrca                                             ; $4597: $0f

Call_048_4598:
	db $ed                                           ; $4598: $ed
	rra                                              ; $4599: $1f
	db $ed                                           ; $459a: $ed
	rra                                              ; $459b: $1f
	db $fd                                           ; $459c: $fd
	rra                                              ; $459d: $1f
	db $db                                           ; $459e: $db
	rra                                              ; $459f: $1f
	sbc e                                            ; $45a0: $9b
	db $db                                           ; $45a1: $db
	ccf                                              ; $45a2: $3f
	ei                                               ; $45a3: $fb

jr_048_45a4:
	ccf                                              ; $45a4: $3f
	ld a, d                                          ; $45a5: $7a
	ld e, b                                          ; $45a6: $58
	ld a, a                                          ; $45a7: $7f
	dec d                                            ; $45a8: $15
	ld a, a                                          ; $45a9: $7f
	cp $7e                                           ; $45aa: $fe $7e
	db $e3                                           ; $45ac: $e3
	adc l                                            ; $45ad: $8d
	rra                                              ; $45ae: $1f
	add b                                            ; $45af: $80

jr_048_45b0:
	sbc a                                            ; $45b0: $9f
	pop bc                                           ; $45b1: $c1
	cp $c0                                           ; $45b2: $fe $c0
	cp $50                                           ; $45b4: $fe $50
	xor b                                            ; $45b6: $a8
	or c                                             ; $45b7: $b1
	ld b, b                                          ; $45b8: $40
	ld d, e                                          ; $45b9: $53
	and b                                            ; $45ba: $a0
	and a                                            ; $45bb: $a7
	ld b, b                                          ; $45bc: $40
	rra                                              ; $45bd: $1f

jr_048_45be:
	add b                                            ; $45be: $80
	cp a                                             ; $45bf: $bf
	ld a, d                                          ; $45c0: $7a
	jp nc, Jump_048_6877                             ; $45c1: $d2 $77 $68

	ld a, l                                          ; $45c4: $7d
	call $f784                                       ; $45c5: $cd $84 $f7
	ld b, $fc                                        ; $45c8: $06 $fc
	inc c                                            ; $45ca: $0c
	ret c                                            ; $45cb: $d8

	jr jr_048_45be                                   ; $45cc: $18 $f0

	jr nc, jr_048_45b0                               ; $45ce: $30 $e0

	ld h, b                                          ; $45d0: $60
	ret nz                                           ; $45d1: $c0

	ret nz                                           ; $45d2: $c0

	add b                                            ; $45d3: $80
	ld a, b                                          ; $45d4: $78
	ldh [$0c], a                                     ; $45d5: $e0 $0c
	ldh a, [$0c]                                     ; $45d7: $f0 $0c
	ldh a, [rIF]                                     ; $45d9: $f0 $0f

jr_048_45db:
	ld a, b                                          ; $45db: $78
	inc bc                                           ; $45dc: $03
	ld a, h                                          ; $45dd: $7c
	ld bc, $013e                                     ; $45de: $01 $3e $01
	ld e, $6e                                        ; $45e1: $1e $6e
	db $db                                           ; $45e3: $db
	ld sp, hl                                        ; $45e4: $f9
	ld a, c                                          ; $45e5: $79

jr_048_45e6:
	add sp, -$0f                                     ; $45e6: $e8 $f1
	ld d, [hl]                                       ; $45e8: $56
	or h                                             ; $45e9: $b4
	db $fd                                           ; $45ea: $fd
	add b                                            ; $45eb: $80

jr_048_45ec:
	jr c, jr_048_45e6                                ; $45ec: $38 $f8

	and c                                            ; $45ee: $a1
	ld h, b                                          ; $45ef: $60
	pop bc                                           ; $45f0: $c1
	jr nc, jr_048_45ec                               ; $45f1: $30 $f9

	ld [$00f1], sp                                   ; $45f3: $08 $f1 $00
	ld a, l                                          ; $45f6: $7d
	nop                                              ; $45f7: $00
	ld a, $01                                        ; $45f8: $3e $01
	rrca                                             ; $45fa: $0f
	nop                                              ; $45fb: $00
	ld hl, sp+$07                                    ; $45fc: $f8 $07
	ld hl, sp+$07                                    ; $45fe: $f8 $07
	ret nz                                           ; $4600: $c0

	ccf                                              ; $4601: $3f
	add b                                            ; $4602: $80
	ld a, a                                          ; $4603: $7f
	add c                                            ; $4604: $81
	ld a, [hl]                                       ; $4605: $7e
	rrca                                             ; $4606: $0f
	ldh a, [rIF]                                     ; $4607: $f0 $0f
	di                                               ; $4609: $f3
	adc a                                            ; $460a: $8f
	sub b                                            ; $460b: $90
	ld [hl], c                                       ; $460c: $71
	dec d                                            ; $460d: $15
	ld b, b                                          ; $460e: $40
	ld a, [hl+]                                      ; $460f: $2a
	ld [hl], b                                       ; $4610: $70
	add hl, sp                                       ; $4611: $39
	ld a, h                                          ; $4612: $7c
	ld e, $67                                        ; $4613: $1e $67
	ld e, $61                                        ; $4615: $1e $61
	ld a, a                                          ; $4617: $7f
	ldh [$df], a                                     ; $4618: $e0 $df
	ldh [$7b], a                                     ; $461a: $e0 $7b
	add b                                            ; $461c: $80
	ld a, l                                          ; $461d: $7d
	ld a, [de]                                       ; $461e: $1a
	ld a, a                                          ; $461f: $7f
	ld a, b                                          ; $4620: $78
	add b                                            ; $4621: $80
	ldh [$be], a                                     ; $4622: $e0 $be
	ld [hl], c                                       ; $4624: $71
	push af                                          ; $4625: $f5
	dec sp                                           ; $4626: $3b
	cp $3f                                           ; $4627: $fe $3f
	ei                                               ; $4629: $fb
	inc a                                            ; $462a: $3c
	rst FarCall                                          ; $462b: $f7
	jr c, @+$11                                      ; $462c: $38 $0f

	nop                                              ; $462e: $00
	daa                                              ; $462f: $27
	ld h, b                                          ; $4630: $60
	ld h, a                                          ; $4631: $67
	ldh a, [$cf]                                     ; $4632: $f0 $cf
	ldh [$9f], a                                     ; $4634: $e0 $9f
	add b                                            ; $4636: $80
	ld a, a                                          ; $4637: $7f
	nop                                              ; $4638: $00
	pop af                                           ; $4639: $f1
	nop                                              ; $463a: $00
	adc [hl]                                         ; $463b: $8e
	ld a, $1e                                        ; $463c: $3e $1e
	ld bc, $6007                                     ; $463e: $01 $07 $60
	add b                                            ; $4641: $80
	or a                                             ; $4642: $b7
	jr nc, jr_048_45db                               ; $4643: $30 $96

	db $10                                           ; $4645: $10
	pop de                                           ; $4646: $d1
	inc de                                           ; $4647: $13
	jp nc, $db1f                                     ; $4648: $d2 $1f $db

	inc e                                            ; $464b: $1c
	db $d3                                           ; $464c: $d3
	db $10                                           ; $464d: $10
	and $00                                          ; $464e: $e6 $00
	jp $3910                                         ; $4650: $c3 $10 $39


	jr c, jr_048_46c8                                ; $4653: $38 $73

	ldh a, [$cf]                                     ; $4655: $f0 $cf
	ret nz                                           ; $4657: $c0

	ld a, h                                          ; $4658: $7c
	nop                                              ; $4659: $00
	ldh [rTMA], a                                    ; $465a: $e0 $06
	adc [hl]                                         ; $465c: $8e
	rra                                              ; $465d: $1f
	ld l, l                                          ; $465e: $6d
	sbc [hl]                                         ; $465f: $9e
	rst AddAOntoHL                                          ; $4660: $ef
	ld l, [hl]                                       ; $4661: $6e
	and d                                            ; $4662: $a2
	sbc e                                            ; $4663: $9b
	nop                                              ; $4664: $00
	ldh a, [rP1]                                     ; $4665: $f0 $00
	ld c, a                                          ; $4667: $4f
	ld a, c                                          ; $4668: $79
	rst $38                                          ; $4669: $ff
	sbc [hl]                                         ; $466a: $9e
	rst SubAFromHL                                          ; $466b: $d7
	ld a, e                                          ; $466c: $7b
	ldh a, [c]                                       ; $466d: $f2
	add d                                            ; $466e: $82

jr_048_466f:
	db $fc                                           ; $466f: $fc
	ld b, $fa                                        ; $4670: $06 $fa
	rlca                                             ; $4672: $07
	ld a, [$0202]                                    ; $4673: $fa $02 $02
	ld b, $c6                                        ; $4676: $06 $c6
	and $04                                          ; $4678: $e6 $04
	add $3f                                          ; $467a: $c6 $3f
	ld b, b                                          ; $467c: $40
	rra                                              ; $467d: $1f
	ldh [$1f], a                                     ; $467e: $e0 $1f
	jr nz, jr_048_4691                               ; $4680: $20 $0f

	and b                                            ; $4682: $a0
	adc a                                            ; $4683: $8f
	ld d, b                                          ; $4684: $50
	rst GetHLinHL                                          ; $4685: $cf
	jr nc, jr_048_466f                               ; $4686: $30 $e7

	db $10                                           ; $4688: $10
	rst FarCall                                          ; $4689: $f7
	ld [$7880], sp                                   ; $468a: $08 $80 $78
	ld [hl-], a                                      ; $468d: $32
	sbc l                                            ; $468e: $9d
	ld b, b                                          ; $468f: $40
	ld [hl], b                                       ; $4690: $70

jr_048_4691:
	ld a, b                                          ; $4691: $78
	jr nc, @-$7e                                     ; $4692: $30 $80

	ld a, b                                          ; $4694: $78
	and [hl]                                         ; $4695: $a6
	ld a, [hl]                                       ; $4696: $7e
	rst SubAFromBC                                          ; $4697: $e7
	ccf                                              ; $4698: $3f
	rst AddAOntoHL                                          ; $4699: $ef
	ccf                                              ; $469a: $3f
	dec bc                                           ; $469b: $0b
	ld a, b                                          ; $469c: $78
	rrca                                             ; $469d: $0f
	cp b                                             ; $469e: $b8
	rlca                                             ; $469f: $07
	ld [hl], b                                       ; $46a0: $70
	rlca                                             ; $46a1: $07
	or b                                             ; $46a2: $b0
	rrca                                             ; $46a3: $0f
	ld [hl], b                                       ; $46a4: $70
	rrca                                             ; $46a5: $0f
	or b                                             ; $46a6: $b0
	rra                                              ; $46a7: $1f
	ld h, b                                          ; $46a8: $60
	sbc $e0                                          ; $46a9: $de $e0
	or e                                             ; $46ab: $b3
	ccf                                              ; $46ac: $3f
	or e                                             ; $46ad: $b3
	ccf                                              ; $46ae: $3f
	di                                               ; $46af: $f3
	ld a, a                                          ; $46b0: $7f
	rst $38                                          ; $46b1: $ff
	ld a, a                                          ; $46b2: $7f
	ld a, e                                          ; $46b3: $7b
	db $fd                                           ; $46b4: $fd
	rst SubAFromDE                                          ; $46b5: $df
	rst $38                                          ; $46b6: $ff
	sub e                                            ; $46b7: $93
	cp $ff                                           ; $46b8: $fe $ff
	cp $c5                                           ; $46ba: $fe $c5
	ld hl, sp-$15                                    ; $46bc: $f8 $eb
	ldh a, [$ef]                                     ; $46be: $f0 $ef
	ldh a, [$df]                                     ; $46c0: $f0 $df
	ret nz                                           ; $46c2: $c0

	cp a                                             ; $46c3: $bf
	ld a, e                                          ; $46c4: $7b
	ld [hl], b                                       ; $46c5: $70
	ld [hl], a                                       ; $46c6: $77
	sbc d                                            ; $46c7: $9a

jr_048_46c8:
	ld a, l                                          ; $46c8: $7d
	ret nz                                           ; $46c9: $c0

	ld a, a                                          ; $46ca: $7f
	ld c, [hl]                                       ; $46cb: $4e
	ld a, [hl]                                       ; $46cc: $7e
	ld [hl], b                                       ; $46cd: $70
	sbc d                                            ; $46ce: $9a
	ld a, [$f406]                                    ; $46cf: $fa $06 $f4
	ld c, $e8                                        ; $46d2: $0e $e8
	ld a, c                                          ; $46d4: $79
	sub [hl]                                         ; $46d5: $96
	sbc e                                            ; $46d6: $9b
	ldh a, [rAUD1SWEEP]                              ; $46d7: $f0 $10
	ret nz                                           ; $46d9: $c0

	ret nz                                           ; $46da: $c0

	ld a, d                                          ; $46db: $7a
	ld [$9df6], a                                    ; $46dc: $ea $f6 $9d
	ld c, $01                                        ; $46df: $0e $01
	halt                                             ; $46e1: $76
	sub c                                            ; $46e2: $91
	ld a, [hl]                                       ; $46e3: $7e
	adc e                                            ; $46e4: $8b
	ld a, b                                          ; $46e5: $78
	or c                                             ; $46e6: $b1
	ei                                               ; $46e7: $fb
	ld a, l                                          ; $46e8: $7d
	ld a, d                                          ; $46e9: $7a
	ld a, [hl]                                       ; $46ea: $7e
	ld e, c                                          ; $46eb: $59
	ld a, b                                          ; $46ec: $78
	ld d, h                                          ; $46ed: $54
	sbc b                                            ; $46ee: $98
	ldh [rAUD3LEVEL], a                              ; $46ef: $e0 $1c
	ldh [rAUD3LEVEL], a                              ; $46f1: $e0 $1c
	ld hl, sp+$02                                    ; $46f3: $f8 $02
	ld a, h                                          ; $46f5: $7c
	ld h, l                                          ; $46f6: $65
	ret nz                                           ; $46f7: $c0

	cp $99                                           ; $46f8: $fe $99
	dec b                                            ; $46fa: $05
	rlca                                             ; $46fb: $07
	dec bc                                           ; $46fc: $0b
	rrca                                             ; $46fd: $0f
	dec c                                            ; $46fe: $0d
	rrca                                             ; $46ff: $0f
	ld sp, hl                                        ; $4700: $f9
	sub a                                            ; $4701: $97
	call nz, $effc                                   ; $4702: $c4 $fc $ef
	rst $38                                          ; $4705: $ff
	dec d                                            ; $4706: $15
	rra                                              ; $4707: $1f
	add $cf                                          ; $4708: $c6 $cf
	halt                                             ; $470a: $76
	or h                                             ; $470b: $b4
	ld h, a                                          ; $470c: $67
	cp $7d                                           ; $470d: $fe $7d
	ld de, $047d                                     ; $470f: $11 $7d $04
	sbc l                                            ; $4712: $9d
	adc a                                            ; $4713: $8f
	ld [hl], b                                       ; $4714: $70
	ld [hl], a                                       ; $4715: $77
	cp $98                                           ; $4716: $fe $98
	jp $c73c                                         ; $4718: $c3 $3c $c7


	add hl, sp                                       ; $471b: $39
	rst AddAOntoHL                                          ; $471c: $ef
	db $10                                           ; $471d: $10
	ldh [$7b], a                                     ; $471e: $e0 $7b
	dec [hl]                                         ; $4720: $35
	add c                                            ; $4721: $81
	rst $38                                          ; $4722: $ff
	add b                                            ; $4723: $80
	ld a, a                                          ; $4724: $7f
	ret nz                                           ; $4725: $c0

	ld a, a                                          ; $4726: $7f
	ret nz                                           ; $4727: $c0

	ld sp, hl                                        ; $4728: $f9
	add [hl]                                         ; $4729: $86
	cp $ff                                           ; $472a: $fe $ff
	ld bc, $f8f3                                     ; $472c: $01 $f3 $f8
	ld sp, hl                                        ; $472f: $f9
	inc a                                            ; $4730: $3c
	call c, $19d8                                    ; $4731: $dc $d8 $19
	rst SubAFromDE                                          ; $4734: $df
	rra                                              ; $4735: $1f
	call c, $e11f                                    ; $4736: $dc $1f $e1
	nop                                              ; $4739: $00
	ret z                                            ; $473a: $c8

	ccf                                              ; $473b: $3f

Jump_048_473c:
	ret nz                                           ; $473c: $c0

	pop af                                           ; $473d: $f1
	ld a, $8c                                        ; $473e: $3e $8c
	ld a, e                                          ; $4740: $7b
	ld c, l                                          ; $4741: $4d
	sbc e                                            ; $4742: $9b
	cp $e1                                           ; $4743: $fe $e1
	ldh a, [$1f]                                     ; $4745: $f0 $1f
	ld a, e                                          ; $4747: $7b
	ld e, b                                          ; $4748: $58
	sub [hl]                                         ; $4749: $96
	push af                                          ; $474a: $f5
	ld c, $12                                        ; $474b: $0e $12
	rst $38                                          ; $474d: $ff
	ld bc, $0421                                     ; $474e: $01 $21 $04
	nop                                              ; $4751: $00
	ret nc                                           ; $4752: $d0

	ld a, e                                          ; $4753: $7b
	ldh [$9c], a                                     ; $4754: $e0 $9c
	call z, $f31e                                    ; $4756: $cc $1e $f3
	ld a, e                                          ; $4759: $7b
	ld c, b                                          ; $475a: $48
	sub l                                            ; $475b: $95
	ei                                               ; $475c: $fb
	rlca                                             ; $475d: $07
	db $fc                                           ; $475e: $fc
	adc [hl]                                         ; $475f: $8e
	ld [hl], b                                       ; $4760: $70
	ld hl, sp-$04                                    ; $4761: $f8 $fc
	cp $c1                                           ; $4763: $fe $c1
	ldh [rPCM34], a                                  ; $4765: $e0 $77
	ld [hl], $97                                     ; $4767: $36 $97
	ld [hl], a                                       ; $4769: $77
	adc h                                            ; $476a: $8c
	rst $38                                          ; $476b: $ff
	adc a                                            ; $476c: $8f
	ld c, b                                          ; $476d: $48
	ld hl, sp+$30                                    ; $476e: $f8 $30
	jr nc, jr_048_47e0                               ; $4770: $30 $6e

	call nz, $fe77                                   ; $4772: $c4 $77 $fe
	add e                                            ; $4775: $83
	cp a                                             ; $4776: $bf
	ret nz                                           ; $4777: $c0

	inc sp                                           ; $4778: $33
	db $fc                                           ; $4779: $fc
	ld b, $0f                                        ; $477a: $06 $0f
	call z, $d80e                                    ; $477c: $cc $0e $d8
	inc e                                            ; $477f: $1c
	cp b                                             ; $4780: $b8
	ld a, c                                          ; $4781: $79
	add $01                                          ; $4782: $c6 $01
	rst SubAFromBC                                          ; $4784: $e7
	nop                                              ; $4785: $00
	adc a                                            ; $4786: $8f
	ld [hl], b                                       ; $4787: $70
	cp d                                             ; $4788: $ba
	ld a, h                                          ; $4789: $7c
	ld d, e                                          ; $478a: $53
	cp a                                             ; $478b: $bf
	rst FarCall                                          ; $478c: $f7
	ld [$08f7], sp                                   ; $478d: $08 $f7 $08
	ei                                               ; $4790: $fb
	inc b                                            ; $4791: $04
	ld [hl], a                                       ; $4792: $77
	cp $80                                           ; $4793: $fe $80

Jump_048_4795:
	db $fd                                           ; $4795: $fd
	ld [bc], a                                       ; $4796: $02
	db $fd                                           ; $4797: $fd
	ld [bc], a                                       ; $4798: $02
	ld a, c                                          ; $4799: $79
	add [hl]                                         ; $479a: $86
	rst SubAFromDE                                          ; $479b: $df
	ccf                                              ; $479c: $3f
	rst FarCall                                          ; $479d: $f7
	rra                                              ; $479e: $1f
	rst $38                                          ; $479f: $ff
	rra                                              ; $47a0: $1f
	rst AddAOntoHL                                          ; $47a1: $ef
	rrca                                             ; $47a2: $0f
	rst $38                                          ; $47a3: $ff
	rrca                                             ; $47a4: $0f
	push af                                          ; $47a5: $f5
	rrca                                             ; $47a6: $0f
	ld sp, hl                                        ; $47a7: $f9
	rlca                                             ; $47a8: $07
	ld b, $ff                                        ; $47a9: $06 $ff
	cp $e1                                           ; $47ab: $fe $e1
	rst $38                                          ; $47ad: $ff
	pop hl                                           ; $47ae: $e1
	db $fd                                           ; $47af: $fd
	pop hl                                           ; $47b0: $e1
	db $fd                                           ; $47b1: $fd
	db $e3                                           ; $47b2: $e3
	db $fd                                           ; $47b3: $fd
	add d                                            ; $47b4: $82
	db $e3                                           ; $47b5: $e3
	rst $38                                          ; $47b6: $ff
	db $e3                                           ; $47b7: $e3
	ei                                               ; $47b8: $fb
	rst SubAFromBC                                          ; $47b9: $e7
	rst $38                                          ; $47ba: $ff
	rst $38                                          ; $47bb: $ff
	db $fd                                           ; $47bc: $fd
	cp $be                                           ; $47bd: $fe $be
	db $fd                                           ; $47bf: $fd
	cp l                                             ; $47c0: $bd
	cp $8e                                           ; $47c1: $fe $8e
	db $fd                                           ; $47c3: $fd
	adc a                                            ; $47c4: $8f
	cp $0e                                           ; $47c5: $fe $0e
	db $fd                                           ; $47c7: $fd
	add hl, sp                                       ; $47c8: $39
	cp $f0                                           ; $47c9: $fe $f0
	rst $38                                          ; $47cb: $ff
	push af                                          ; $47cc: $f5
	ld a, [bc]                                       ; $47cd: $0a
	xor d                                            ; $47ce: $aa
	ld d, l                                          ; $47cf: $55
	ld d, l                                          ; $47d0: $55
	xor d                                            ; $47d1: $aa
	ld l, e                                          ; $47d2: $6b
	db $fc                                           ; $47d3: $fc
	rst SubAFromDE                                          ; $47d4: $df
	xor e                                            ; $47d5: $ab
	sub e                                            ; $47d6: $93
	ld d, a                                          ; $47d7: $57
	ld h, b                                          ; $47d8: $60
	or b                                             ; $47d9: $b0
	and b                                            ; $47da: $a0
	ld h, b                                          ; $47db: $60
	ld d, l                                          ; $47dc: $55
	ret nz                                           ; $47dd: $c0

	xor d                                            ; $47de: $aa
	add b                                            ; $47df: $80

jr_048_47e0:
	push de                                          ; $47e0: $d5
	add b                                            ; $47e1: $80
	ld a, [$8a73]                                    ; $47e2: $fa $73 $8a
	db $fd                                           ; $47e5: $fd
	sbc d                                            ; $47e6: $9a
	ld b, b                                          ; $47e7: $40
	nop                                              ; $47e8: $00
	xor d                                            ; $47e9: $aa
	nop                                              ; $47ea: $00
	ld d, l                                          ; $47eb: $55
	ld [hl], e                                       ; $47ec: $73
	db $fc                                           ; $47ed: $fc
	ld l, a                                          ; $47ee: $6f
	ldh a, [rIE]                                     ; $47ef: $f0 $ff
	sub c                                            ; $47f1: $91
	xor d                                            ; $47f2: $aa
	ld bc, $0750                                     ; $47f3: $01 $50 $07
	and b                                            ; $47f6: $a0
	rra                                              ; $47f7: $1f
	nop                                              ; $47f8: $00
	ld a, a                                          ; $47f9: $7f
	ld bc, $3cff                                     ; $47fa: $01 $ff $3c
	ld bc, $003e                                     ; $47fd: $01 $3e $00
	ld a, b                                          ; $4800: $78
	inc h                                            ; $4801: $24
	ld a, [hl]                                       ; $4802: $7e
	inc hl                                           ; $4803: $23
	ld a, e                                          ; $4804: $7b
	db $d3                                           ; $4805: $d3
	adc [hl]                                         ; $4806: $8e
	jr nz, @+$01                                     ; $4807: $20 $ff

	ld b, b                                          ; $4809: $40
	rst $38                                          ; $480a: $ff
	ld a, [bc]                                       ; $480b: $0a
	rst GetHLinHL                                          ; $480c: $cf
	rla                                              ; $480d: $17
	rst $38                                          ; $480e: $ff
	ld hl, $8fff                                     ; $480f: $21 $ff $8f
	ld h, a                                          ; $4812: $67
	ld d, a                                          ; $4813: $57
	cp a                                             ; $4814: $bf
	ld hl, $08f5                                     ; $4815: $21 $f5 $08
	ld a, e                                          ; $4818: $7b
	db $ec                                           ; $4819: $ec
	add b                                            ; $481a: $80
	xor [hl]                                         ; $481b: $ae
	ld l, a                                          ; $481c: $6f
	cp a                                             ; $481d: $bf
	cp a                                             ; $481e: $bf
	rst SubAFromBC                                          ; $481f: $e7
	xor a                                            ; $4820: $af
	ld b, a                                          ; $4821: $47
	daa                                              ; $4822: $27
	rst AddAOntoHL                                          ; $4823: $ef
	ld l, a                                          ; $4824: $6f
	ret nz                                           ; $4825: $c0

	rst $38                                          ; $4826: $ff
	ld a, [bc]                                       ; $4827: $0a
	rst $38                                          ; $4828: $ff
	ld [hl], l                                       ; $4829: $75
	rst $38                                          ; $482a: $ff
	pop af                                           ; $482b: $f1
	pop af                                           ; $482c: $f1
	db $d3                                           ; $482d: $d3
	ei                                               ; $482e: $fb
	ld a, a                                          ; $482f: $7f
	cp $bf                                           ; $4830: $fe $bf
	cp $e7                                           ; $4832: $fe $e7
	cp $01                                           ; $4834: $fe $01
	cp $a9                                           ; $4836: $fe $a9
	cp $41                                           ; $4838: $fe $41
	ld a, [hl]                                       ; $483a: $7e
	reti                                             ; $483b: $d9


	rst SubAFromDE                                          ; $483c: $df
	rst $38                                          ; $483d: $ff

jr_048_483e:
	ld a, l                                          ; $483e: $7d
	and c                                            ; $483f: $a1
	sub h                                            ; $4840: $94
	ld h, b                                          ; $4841: $60
	ldh a, [rSVBK]                                   ; $4842: $f0 $70
	ret nc                                           ; $4844: $d0

	ld [hl], b                                       ; $4845: $70
	push de                                          ; $4846: $d5
	ld [hl], b                                       ; $4847: $70
	jp c, $9d78                                      ; $4848: $da $78 $9d

	ld a, b                                          ; $484b: $78
	db $dd                                           ; $484c: $dd
	rst $38                                          ; $484d: $ff
	ei                                               ; $484e: $fb
	ld l, a                                          ; $484f: $6f
	adc [hl]                                         ; $4850: $8e
	sbc e                                            ; $4851: $9b
	db $fc                                           ; $4852: $fc
	rst $38                                          ; $4853: $ff
	ld hl, sp-$01                                    ; $4854: $f8 $ff
	ld a, d                                          ; $4856: $7a
	ld d, c                                          ; $4857: $51
	ld a, d                                          ; $4858: $7a
	ld l, b                                          ; $4859: $68
	ld l, a                                          ; $485a: $6f
	ldh a, [$99]                                     ; $485b: $f0 $99
	pop bc                                           ; $485d: $c1
	ld a, $00                                        ; $485e: $3e $00
	di                                               ; $4860: $f3
	nop                                              ; $4861: $00
	pop bc                                           ; $4862: $c1
	ld e, a                                          ; $4863: $5f
	ldh [$9b], a                                     ; $4864: $e0 $9b
	ld a, e                                          ; $4866: $7b
	inc h                                            ; $4867: $24
	ld h, b                                          ; $4868: $60
	sbc a                                            ; $4869: $9f
	ld a, e                                          ; $486a: $7b
	add h                                            ; $486b: $84
	sbc h                                            ; $486c: $9c
	ld c, $a2                                        ; $486d: $0e $a2
	inc c                                            ; $486f: $0c
	ld [hl], a                                       ; $4870: $77
	ldh a, [$7e]                                     ; $4871: $f0 $7e
	add $97                                          ; $4873: $c6 $97
	jr nc, jr_048_483e                               ; $4875: $30 $c7

	db $10                                           ; $4877: $10
	db $ed                                           ; $4878: $ed
	nop                                              ; $4879: $00
	ld hl, sp+$00                                    ; $487a: $f8 $00
	db $10                                           ; $487c: $10
	ld l, a                                          ; $487d: $6f
	ld c, [hl]                                       ; $487e: $4e
	ld a, a                                          ; $487f: $7f
	rst SubAFromBC                                          ; $4880: $e7
	ld a, [hl]                                       ; $4881: $7e
	adc c                                            ; $4882: $89
	ld a, a                                          ; $4883: $7f
	sbc b                                            ; $4884: $98
	ld a, a                                          ; $4885: $7f
	ei                                               ; $4886: $fb
	sbc l                                            ; $4887: $9d
	ld d, h                                          ; $4888: $54
	inc bc                                           ; $4889: $03
	ld h, a                                          ; $488a: $67
	ldh a, [$9d]                                     ; $488b: $f0 $9d
	rst $38                                          ; $488d: $ff
	db $10                                           ; $488e: $10
	ld a, e                                          ; $488f: $7b
	and c                                            ; $4890: $a1
	ld a, a                                          ; $4891: $7f
	db $fd                                           ; $4892: $fd
	sbc h                                            ; $4893: $9c
	db $fd                                           ; $4894: $fd
	add d                                            ; $4895: $82
	jr c, @+$71                                      ; $4896: $38 $6f

	ldh a, [$9c]                                     ; $4898: $f0 $9c
	ld a, l                                          ; $489a: $7d
	jp Jump_048_763f                                 ; $489b: $c3 $3f $76


	ld c, c                                          ; $489e: $49
	sbc c                                            ; $489f: $99
	ldh [rIF], a                                     ; $48a0: $e0 $0f
	rst FarCall                                          ; $48a2: $f7
	rlca                                             ; $48a3: $07
	rst $38                                          ; $48a4: $ff
	inc bc                                           ; $48a5: $03
	ld a, e                                          ; $48a6: $7b
	pop hl                                           ; $48a7: $e1
	ld a, a                                          ; $48a8: $7f
	sub b                                            ; $48a9: $90
	ld a, a                                          ; $48aa: $7f
	db $fc                                           ; $48ab: $fc
	ld a, [hl]                                       ; $48ac: $7e
	or $9d                                           ; $48ad: $f6 $9d
	push de                                          ; $48af: $d5
	ld a, [hl+]                                      ; $48b0: $2a
	reti                                             ; $48b1: $d9


	rst $38                                          ; $48b2: $ff
	ld a, [hl]                                       ; $48b3: $7e
	or e                                             ; $48b4: $b3
	sbc [hl]                                         ; $48b5: $9e
	ld c, $7b                                        ; $48b6: $0e $7b
	xor $9d                                          ; $48b8: $ee $9d
	ld b, b                                          ; $48ba: $40
	cp a                                             ; $48bb: $bf
	reti                                             ; $48bc: $d9


	rst $38                                          ; $48bd: $ff
	ld a, [hl]                                       ; $48be: $7e
	adc $77                                          ; $48bf: $ce $77
	cp e                                             ; $48c1: $bb
	sbc [hl]                                         ; $48c2: $9e
	ld a, [hl]                                       ; $48c3: $7e
	ret c                                            ; $48c4: $d8

	rst $38                                          ; $48c5: $ff
	ld a, a                                          ; $48c6: $7f
	or $9e                                           ; $48c7: $f6 $9e
	inc a                                            ; $48c9: $3c
	ld [hl], h                                       ; $48ca: $74
	db $db                                           ; $48cb: $db
	sbc h                                            ; $48cc: $9c
	cp $f1                                           ; $48cd: $fe $f1
	cp $7b                                           ; $48cf: $fe $7b
	push bc                                          ; $48d1: $c5
	ld a, a                                          ; $48d2: $7f
	cp $74                                           ; $48d3: $fe $74
	adc $73                                          ; $48d5: $ce $73
	cp $9b                                           ; $48d7: $fe $9b
	db $fc                                           ; $48d9: $fc
	inc bc                                           ; $48da: $03
	ldh a, [rIF]                                     ; $48db: $f0 $0f
	ld [hl], a                                       ; $48dd: $77
	and a                                            ; $48de: $a7
	ld [hl], a                                       ; $48df: $77
	ld hl, sp+$7c                                    ; $48e0: $f8 $7c
	and b                                            ; $48e2: $a0
	ld a, [hl]                                       ; $48e3: $7e
	ret c                                            ; $48e4: $d8

	ld a, a                                          ; $48e5: $7f
	inc b                                            ; $48e6: $04
	sbc d                                            ; $48e7: $9a
	dec d                                            ; $48e8: $15
	rst $38                                          ; $48e9: $ff
	ld a, [hl+]                                      ; $48ea: $2a
	rst $38                                          ; $48eb: $ff
	ld d, a                                          ; $48ec: $57
	ld a, e                                          ; $48ed: $7b
	ld hl, sp-$68                                    ; $48ee: $f8 $98
	inc d                                            ; $48f0: $14
	rst $38                                          ; $48f1: $ff
	and b                                            ; $48f2: $a0
	rst $38                                          ; $48f3: $ff
	ld d, b                                          ; $48f4: $50
	rst $38                                          ; $48f5: $ff
	add b                                            ; $48f6: $80
	ld a, d                                          ; $48f7: $7a
	call nc, Call_048_5b7e                           ; $48f8: $d4 $7e $5b
	ld a, e                                          ; $48fb: $7b
	inc d                                            ; $48fc: $14
	ld [hl], e                                       ; $48fd: $73
	cp $7f                                           ; $48fe: $fe $7f
	ldh [$7f], a                                     ; $4900: $e0 $7f
	add d                                            ; $4902: $82
	sbc [hl]                                         ; $4903: $9e
	ccf                                              ; $4904: $3f
	call c, Call_048_7fff                            ; $4905: $dc $ff $7f
	ld hl, sp-$66                                    ; $4908: $f8 $9a
	dec e                                            ; $490a: $1d
	rst $38                                          ; $490b: $ff
	ld a, d                                          ; $490c: $7a
	rst $38                                          ; $490d: $ff
	call nc, $ffd8                                   ; $490e: $d4 $d8 $ff
	sbc [hl]                                         ; $4911: $9e
	xor b                                            ; $4912: $a8
	ld a, e                                          ; $4913: $7b
	ret c                                            ; $4914: $d8

	ld a, a                                          ; $4915: $7f
	ldh [$7f], a                                     ; $4916: $e0 $7f
	ld a, d                                          ; $4918: $7a
	reti                                             ; $4919: $d9


	rst $38                                          ; $491a: $ff
	ld a, a                                          ; $491b: $7f
	sub [hl]                                         ; $491c: $96
	sbc h                                            ; $491d: $9c
	rlca                                             ; $491e: $07
	cp $3f                                           ; $491f: $fe $3f
	ld a, c                                          ; $4921: $79
	ld [$fe67], sp                                   ; $4922: $08 $67 $fe
	sub c                                            ; $4925: $91
	sbc d                                            ; $4926: $9a
	ld a, b                                          ; $4927: $78
	cp a                                             ; $4928: $bf
	ld a, h                                          ; $4929: $7c
	cp a                                             ; $492a: $bf
	ld a, h                                          ; $492b: $7c
	or a                                             ; $492c: $b7
	ld a, h                                          ; $492d: $7c
	add a                                            ; $492e: $87
	ld a, h                                          ; $492f: $7c
	and a                                            ; $4930: $a7
	ld a, b                                          ; $4931: $78
	rst $38                                          ; $4932: $ff
	ld h, b                                          ; $4933: $60
	ld [hl], a                                       ; $4934: $77
	db $d3                                           ; $4935: $d3
	ld a, l                                          ; $4936: $7d
	ldh a, [rPCM12]                                  ; $4937: $f0 $76
	ld [hl-], a                                      ; $4939: $32
	ld a, a                                          ; $493a: $7f
	ld [$3c9a], sp                                   ; $493b: $08 $9a $3c
	jp $c23c                                         ; $493e: $c3 $3c $c2


	cp l                                             ; $4941: $bd
	ld [hl], a                                       ; $4942: $77
	jp $c26d                                         ; $4943: $c3 $6d $c2


	ld a, e                                          ; $4946: $7b
	or $9c                                           ; $4947: $f6 $9c
	ld e, a                                          ; $4949: $5f
	ccf                                              ; $494a: $3f
	nop                                              ; $494b: $00
	ld [hl], e                                       ; $494c: $73
	adc a                                            ; $494d: $8f
	sbc c                                            ; $494e: $99
	cp [hl]                                          ; $494f: $be
	ld b, c                                          ; $4950: $41
	inc b                                            ; $4951: $04
	ei                                               ; $4952: $fb
	db $10                                           ; $4953: $10
	rst AddAOntoHL                                          ; $4954: $ef
	ld a, e                                          ; $4955: $7b
	or $73                                           ; $4956: $f6 $73
	db $fd                                           ; $4958: $fd
	ld a, a                                          ; $4959: $7f
	ld h, b                                          ; $495a: $60
	ld [hl], a                                       ; $495b: $77
	ld b, b                                          ; $495c: $40
	ld l, e                                          ; $495d: $6b
	di                                               ; $495e: $f3
	ld a, a                                          ; $495f: $7f
	sub b                                            ; $4960: $90
	sub [hl]                                         ; $4961: $96
	ld d, a                                          ; $4962: $57
	ld d, b                                          ; $4963: $50
	xor a                                            ; $4964: $af
	xor b                                            ; $4965: $a8
	ld d, a                                          ; $4966: $57
	ld d, h                                          ; $4967: $54
	xor e                                            ; $4968: $ab
	xor d                                            ; $4969: $aa
	ld d, l                                          ; $496a: $55
	ld [hl], a                                       ; $496b: $77
	ldh a, [hDisp1_OBP0]                                     ; $496c: $f0 $93
	dec d                                            ; $496e: $15
	ld [$d728], a                                    ; $496f: $ea $28 $d7
	inc d                                            ; $4972: $14
	db $eb                                           ; $4973: $eb
	ld [$54f7], sp                                   ; $4974: $08 $f7 $54
	xor e                                            ; $4977: $ab
	xor b                                            ; $4978: $a8
	ld d, a                                          ; $4979: $57
	ld [hl], a                                       ; $497a: $77
	ldh a, [rPCM34]                                  ; $497b: $f0 $77
	add sp, $7f                                      ; $497d: $e8 $7f
	db $ec                                           ; $497f: $ec
	sbc l                                            ; $4980: $9d
	ld a, [bc]                                       ; $4981: $0a
	push af                                          ; $4982: $f5
	ld e, a                                          ; $4983: $5f
	ret nc                                           ; $4984: $d0

	ld e, e                                          ; $4985: $5b
	cp $9d                                           ; $4986: $fe $9d
	nop                                              ; $4988: $00
	ld [bc], a                                       ; $4989: $02
	ld a, e                                          ; $498a: $7b
	ld a, [$6a7c]                                    ; $498b: $fa $7c $6a
	ld a, c                                          ; $498e: $79
	add l                                            ; $498f: $85
	sbc [hl]                                         ; $4990: $9e
	adc a                                            ; $4991: $8f
	ld [hl], a                                       ; $4992: $77
	cp $ff                                           ; $4993: $fe $ff
	ld a, l                                          ; $4995: $7d
	add d                                            ; $4996: $82
	sbc [hl]                                         ; $4997: $9e
	inc bc                                           ; $4998: $03
	ld [hl], a                                       ; $4999: $77
	dec e                                            ; $499a: $1d
	sbc c                                            ; $499b: $99
	rst $38                                          ; $499c: $ff
	sbc a                                            ; $499d: $9f
	cp a                                             ; $499e: $bf
	add a                                            ; $499f: $87
	sbc a                                            ; $49a0: $9f
	add e                                            ; $49a1: $83
	ld a, e                                          ; $49a2: $7b
	ldh [$7f], a                                     ; $49a3: $e0 $7f
	inc h                                            ; $49a5: $24
	sbc l                                            ; $49a6: $9d
	add e                                            ; $49a7: $83
	db $d3                                           ; $49a8: $d3
	rst SubAFromHL                                          ; $49a9: $d7
	rst $38                                          ; $49aa: $ff
	ld a, d                                          ; $49ab: $7a
	ld a, c                                          ; $49ac: $79
	sbc d                                            ; $49ad: $9a
	rst $38                                          ; $49ae: $ff
	ei                                               ; $49af: $fb
	ei                                               ; $49b0: $fb
	ret nz                                           ; $49b1: $c0

	rst $38                                          ; $49b2: $ff
	ld l, a                                          ; $49b3: $6f
	cp $7e                                           ; $49b4: $fe $7e
	ldh a, [$78]                                     ; $49b6: $f0 $78
	sbc h                                            ; $49b8: $9c
	ld a, a                                          ; $49b9: $7f
	ld a, [$4375]                                    ; $49ba: $fa $75 $43
	ld a, e                                          ; $49bd: $7b
	cp $7f                                           ; $49be: $fe $7f
	sub $7f                                          ; $49c0: $d6 $7f
	ld a, [de]                                       ; $49c2: $1a
	sbc $0f                                          ; $49c3: $de $0f
	sbc l                                            ; $49c5: $9d
	rst $38                                          ; $49c6: $ff
	inc c                                            ; $49c7: $0c
	ret c                                            ; $49c8: $d8

	rst $38                                          ; $49c9: $ff
	sub h                                            ; $49ca: $94
	ret nz                                           ; $49cb: $c0

	ld h, b                                          ; $49cc: $60
	ldh [$e0], a                                     ; $49cd: $e0 $e0
	jp hl                                            ; $49cf: $e9


	rst $38                                          ; $49d0: $ff
	ld hl, $cfe6                                     ; $49d1: $21 $e6 $cf
	rst $38                                          ; $49d4: $ff
	rst AddAOntoHL                                          ; $49d5: $ef
	ld a, e                                          ; $49d6: $7b
	ldh [$97], a                                     ; $49d7: $e0 $97
	xor [hl]                                         ; $49d9: $ae
	sbc $08                                          ; $49da: $de $08
	jr c, jr_048_4a36                                ; $49dc: $38 $58

	ccf                                              ; $49de: $3f
	ld hl, sp+$07                                    ; $49df: $f8 $07
	ld [hl], a                                       ; $49e1: $77
	ld a, h                                          ; $49e2: $7c
	sbc [hl]                                         ; $49e3: $9e
	db $fd                                           ; $49e4: $fd

Jump_048_49e5:
	halt                                             ; $49e5: $76
	adc e                                            ; $49e6: $8b
	sub [hl]                                         ; $49e7: $96
	cp a                                             ; $49e8: $bf
	nop                                              ; $49e9: $00
	ld bc, $c680                                     ; $49ea: $01 $80 $c6
	pop hl                                           ; $49ed: $e1
	add hl, sp                                       ; $49ee: $39
	and $27                                          ; $49ef: $e6 $27
	db $dd                                           ; $49f1: $dd
	rst $38                                          ; $49f2: $ff
	ld a, h                                          ; $49f3: $7c
	bit 7, e                                         ; $49f4: $cb $7b
	ld h, b                                          ; $49f6: $60
	sbc e                                            ; $49f7: $9b
	add b                                            ; $49f8: $80
	ld b, b                                          ; $49f9: $40
	ld a, a                                          ; $49fa: $7f
	ld b, $7b                                        ; $49fb: $06 $7b
	add sp, $6e                                      ; $49fd: $e8 $6e
	ld l, l                                          ; $49ff: $6d
	ld a, [hl]                                       ; $4a00: $7e
	ld a, b                                          ; $4a01: $78
	cp $6f                                           ; $4a02: $fe $6f
	ld e, d                                          ; $4a04: $5a
	ld a, l                                          ; $4a05: $7d
	db $e4                                           ; $4a06: $e4
	sbc [hl]                                         ; $4a07: $9e
	xor $7b                                          ; $4a08: $ee $7b
	ld a, [$e07f]                                    ; $4a0a: $fa $7f $e0
	ld a, a                                          ; $4a0d: $7f
	rst GetHLinHL                                          ; $4a0e: $cf
	sbc b                                            ; $4a0f: $98
	ld sp, hl                                        ; $4a10: $f9
	ld bc, $01fb                                     ; $4a11: $01 $fb $01
	ei                                               ; $4a14: $fb
	jr nc, jr_048_4a56                               ; $4a15: $30 $3f

	ld [hl], a                                       ; $4a17: $77
	cp $9e                                           ; $4a18: $fe $9e
	jr nz, jr_048_4a83                               ; $4a1a: $20 $67

	cp $9a                                           ; $4a1c: $fe $9a
	dec a                                            ; $4a1e: $3d
	pop af                                           ; $4a1f: $f1
	dec bc                                           ; $4a20: $0b
	ld b, $f3                                        ; $4a21: $06 $f3
	ld a, b                                          ; $4a23: $78
	xor l                                            ; $4a24: $ad
	ld [hl], e                                       ; $4a25: $73
	cp $7e                                           ; $4a26: $fe $7e
	jp c, $ad7c                                      ; $4a28: $da $7c $ad

	ld d, e                                          ; $4a2b: $53
	ld e, $43                                        ; $4a2c: $1e $43
	cp $76                                           ; $4a2e: $fe $76
	ld hl, sp+$57                                    ; $4a30: $f8 $57
	cp $7f                                           ; $4a32: $fe $7f
	sbc b                                            ; $4a34: $98
	ld a, [hl]                                       ; $4a35: $7e

jr_048_4a36:
	db $e4                                           ; $4a36: $e4
	ld [hl], a                                       ; $4a37: $77
	ld hl, sp-$63                                    ; $4a38: $f8 $9d
	ld b, $f9                                        ; $4a3a: $06 $f9
	ld a, b                                          ; $4a3c: $78
	ld [hl], e                                       ; $4a3d: $73
	ld a, e                                          ; $4a3e: $7b
	cp $95                                           ; $4a3f: $fe $95
	inc bc                                           ; $4a41: $03
	db $fc                                           ; $4a42: $fc
	xor b                                            ; $4a43: $a8
	ld d, a                                          ; $4a44: $57
	nop                                              ; $4a45: $00
	rst $38                                          ; $4a46: $ff
	ld d, b                                          ; $4a47: $50
	xor a                                            ; $4a48: $af
	and b                                            ; $4a49: $a0
	ld e, a                                          ; $4a4a: $5f
	cpl                                              ; $4a4b: $2f
	ret nc                                           ; $4a4c: $d0

	sbc e                                            ; $4a4d: $9b
	ld e, d                                          ; $4a4e: $5a
	and l                                            ; $4a4f: $a5
	nop                                              ; $4a50: $00
	ei                                               ; $4a51: $fb
	ld a, e                                          ; $4a52: $7b
	cp $7d                                           ; $4a53: $fe $7d
	ld [hl+], a                                      ; $4a55: $22

jr_048_4a56:
	sub h                                            ; $4a56: $94
	ei                                               ; $4a57: $fb
	add hl, bc                                       ; $4a58: $09
	ld a, e                                          ; $4a59: $7b
	cp c                                             ; $4a5a: $b9
	ld a, e                                          ; $4a5b: $7b
	ld sp, hl                                        ; $4a5c: $f9
	jp $fbf9                                         ; $4a5d: $c3 $f9 $fb


	ld bc, $730b                                     ; $4a60: $01 $0b $73
	cp $94                                           ; $4a63: $fe $94
	inc bc                                           ; $4a65: $03
	add c                                            ; $4a66: $81
	add e                                            ; $4a67: $83
	pop af                                           ; $4a68: $f1
	dec bc                                           ; $4a69: $0b
	ld sp, hl                                        ; $4a6a: $f9
	ld a, e                                          ; $4a6b: $7b
	ld sp, hl                                        ; $4a6c: $f9
	ld a, [$d383]                                    ; $4a6d: $fa $83 $d3
	ld [hl], a                                       ; $4a70: $77
	cp $9d                                           ; $4a71: $fe $9d
	add d                                            ; $4a73: $82
	jp $fe7b                                         ; $4a74: $c3 $7b $fe


	sbc d                                            ; $4a77: $9a
	di                                               ; $4a78: $f3
	and e                                            ; $4a79: $a3
	db $d3                                           ; $4a7a: $d3
	ld sp, hl                                        ; $4a7b: $f9
	ld [bc], a                                       ; $4a7c: $02
	db $d3                                           ; $4a7d: $d3
	ei                                               ; $4a7e: $fb
	sbc e                                            ; $4a7f: $9b
	ld sp, hl                                        ; $4a80: $f9
	dec de                                           ; $4a81: $1b
	add b                                            ; $4a82: $80

jr_048_4a83:
	call nz, $fe7b                                   ; $4a83: $c4 $7b $fe
	sbc b                                            ; $4a86: $98
	and $80                                          ; $4a87: $e6 $80
	rst JumpTable                                          ; $4a89: $c7
	ret nz                                           ; $4a8a: $c0

	or $f3                                           ; $4a8b: $f6 $f3
	rst FarCall                                          ; $4a8d: $f7
	ld [hl], a                                       ; $4a8e: $77
	cp $80                                           ; $4a8f: $fe $80
	ld [de], a                                       ; $4a91: $12
	ld de, $5300                                     ; $4a92: $11 $00 $53
	ld bc, $1972                                     ; $4a95: $01 $72 $19

jr_048_4a98:
	ld sp, hl                                        ; $4a98: $f9
	add hl, de                                       ; $4a99: $19
	ld [$ffd8], sp                                   ; $4a9a: $08 $d8 $ff
	xor $fe                                          ; $4a9d: $ee $fe
	di                                               ; $4a9f: $f3
	rst $38                                          ; $4aa0: $ff
	inc hl                                           ; $4aa1: $23
	ld [hl], h                                       ; $4aa2: $74
	daa                                              ; $4aa3: $27
	db $f4                                           ; $4aa4: $f4
	ld h, l                                          ; $4aa5: $65
	push af                                          ; $4aa6: $f5
	ld [$c47b], a                                    ; $4aa7: $ea $7b $c4
	and $d8                                          ; $4aaa: $e6 $d8
	call c, $fce0                                    ; $4aac: $dc $e0 $fc
	rst SubAFromBC                                          ; $4aaf: $e7
	sbc [hl]                                         ; $4ab0: $9e
	rst FarCall                                          ; $4ab1: $f7
	ld a, e                                          ; $4ab2: $7b
	adc e                                            ; $4ab3: $8b
	add b                                            ; $4ab4: $80
	add c                                            ; $4ab5: $81
	cp $81                                           ; $4ab6: $fe $81
	ld a, [hl]                                       ; $4ab8: $7e
	add c                                            ; $4ab9: $81
	ld a, [$007f]                                    ; $4aba: $fa $7f $00
	ld c, d                                          ; $4abd: $4a
	nop                                              ; $4abe: $00
	ld bc, $8181                                     ; $4abf: $01 $81 $81
	db $fd                                           ; $4ac2: $fd
	cp $31                                           ; $4ac3: $fe $31
	add $00                                          ; $4ac5: $c6 $00
	rst FarCall                                          ; $4ac7: $f7
	ld de, $0ae6                                     ; $4ac8: $11 $e6 $0a
	inc b                                            ; $4acb: $04
	ld a, [bc]                                       ; $4acc: $0a
	inc b                                            ; $4acd: $04
	db $10                                           ; $4ace: $10
	rst SubAFromBC                                          ; $4acf: $e7
	di                                               ; $4ad0: $f3
	rst FarCall                                          ; $4ad1: $f7

jr_048_4ad2:
	push af                                          ; $4ad2: $f5
	ld [bc], a                                       ; $4ad3: $02

jr_048_4ad4:
	sbc b                                            ; $4ad4: $98
	dec h                                            ; $4ad5: $25
	jp nc, $f30e                                     ; $4ad6: $d2 $0e $f3

	push af                                          ; $4ad9: $f5
	ld [bc], a                                       ; $4ada: $02
	inc b                                            ; $4adb: $04
	ld a, e                                          ; $4adc: $7b
	cp $92                                           ; $4add: $fe $92
	inc c                                            ; $4adf: $0c
	ldh a, [c]                                       ; $4ae0: $f2
	rst FarCall                                          ; $4ae1: $f7
	ld a, [$02fd]                                    ; $4ae2: $fa $fd $02
	db $ed                                           ; $4ae5: $ed
	ld [de], a                                       ; $4ae6: $12
	inc c                                            ; $4ae7: $0c
	di                                               ; $4ae8: $f3
	db $fd                                           ; $4ae9: $fd
	ld [bc], a                                       ; $4aea: $02
	dec b                                            ; $4aeb: $05
	ld l, e                                          ; $4aec: $6b
	cp $9a                                           ; $4aed: $fe $9a
	push af                                          ; $4aef: $f5
	dec bc                                           ; $4af0: $0b
	or e                                             ; $4af1: $b3
	ld c, c                                          ; $4af2: $49
	rlca                                             ; $4af3: $07
	ld a, e                                          ; $4af4: $7b
	ld e, c                                          ; $4af5: $59
	sbc [hl]                                         ; $4af6: $9e
	inc bc                                           ; $4af7: $03
	ld l, e                                          ; $4af8: $6b
	cp $94                                           ; $4af9: $fe $94
	cp h                                             ; $4afb: $bc
	inc sp                                           ; $4afc: $33
	cp a                                             ; $4afd: $bf
	jr nc, jr_048_4a98                               ; $4afe: $30 $98

	ld sp, $31ba                                     ; $4b00: $31 $ba $31
	and d                                            ; $4b03: $a2
	ld sp, $7bb2                                     ; $4b04: $31 $b2 $7b
	cp $9b                                           ; $4b07: $fe $9b
	sub d                                            ; $4b09: $92
	ld sp, $18e7                                     ; $4b0a: $31 $e7 $18
	halt                                             ; $4b0d: $76
	daa                                              ; $4b0e: $27

jr_048_4b0f:
	sub e                                            ; $4b0f: $93
	ld a, h                                          ; $4b10: $7c
	add b                                            ; $4b11: $80
	jr nz, jr_048_4ad4                               ; $4b12: $20 $c0

	ld h, b                                          ; $4b14: $60
	ret nz                                           ; $4b15: $c0

	ld b, b                                          ; $4b16: $40
	ret nz                                           ; $4b17: $c0

	nop                                              ; $4b18: $00
	add b                                            ; $4b19: $80
	add b                                            ; $4b1a: $80
	ld a, a                                          ; $4b1b: $7f
	ld [hl], a                                       ; $4b1c: $77
	ldh a, [$9b]                                     ; $4b1d: $f0 $9b
	dec hl                                           ; $4b1f: $2b
	ld b, $07                                        ; $4b20: $06 $07
	ld [bc], a                                       ; $4b22: $02
	ld l, a                                          ; $4b23: $6f
	cp $9d                                           ; $4b24: $fe $9d
	and [hl]                                         ; $4b26: $a6
	ld e, c                                          ; $4b27: $59
	ld [hl], a                                       ; $4b28: $77
	ldh a, [$9e]                                     ; $4b29: $f0 $9e
	ld l, a                                          ; $4b2b: $6f
	ld hl, sp-$63                                    ; $4b2c: $f8 $9d
	jr nz, jr_048_4b0f                               ; $4b2e: $20 $df

	ld [hl], a                                       ; $4b30: $77
	ldh a, [$9e]                                     ; $4b31: $f0 $9e
	rst SubAFromDE                                          ; $4b33: $df
	rst FarCall                                          ; $4b34: $f7
	ld a, [hl]                                       ; $4b35: $7e
	jr nz, jr_048_4ad2                               ; $4b36: $20 $9a

	nop                                              ; $4b38: $00
	ld d, b                                          ; $4b39: $50
	adc a                                            ; $4b3a: $8f
	add h                                            ; $4b3b: $84
	jr jr_048_4bad                                   ; $4b3c: $18 $6f

	cp $9b                                           ; $4b3e: $fe $9b
	inc b                                            ; $4b40: $04
	jr jr_048_4ba1                                   ; $4b41: $18 $5e

	and c                                            ; $4b43: $a1
	ld [hl], b                                       ; $4b44: $70
	ld d, b                                          ; $4b45: $50
	ld hl, sp+$7f                                    ; $4b46: $f8 $7f
	ld [hl], h                                       ; $4b48: $74
	ld c, a                                          ; $4b49: $4f
	ldh a, [$7f]                                     ; $4b4a: $f0 $7f
	ld [hl], l                                       ; $4b4c: $75
	ld a, d                                          ; $4b4d: $7a
	jp c, $ff9e                                      ; $4b4e: $da $9e $ff

	ld a, e                                          ; $4b51: $7b
	cp $9d                                           ; $4b52: $fe $9d
	ei                                               ; $4b54: $fb
	ld hl, sp+$7b                                    ; $4b55: $f8 $7b
	cp $7b                                           ; $4b57: $fe $7b
	ldh a, [c]                                       ; $4b59: $f2
	adc d                                            ; $4b5a: $8a
	ld a, [$fbf9]                                    ; $4b5b: $fa $f9 $fb
	reti                                             ; $4b5e: $d9


	db $e3                                           ; $4b5f: $e3
	ld sp, hl                                        ; $4b60: $f9
	add d                                            ; $4b61: $82
	ld hl, sp+$03                                    ; $4b62: $f8 $03
	ld sp, hl                                        ; $4b64: $f9
	ld [bc], a                                       ; $4b65: $02
	ld sp, hl                                        ; $4b66: $f9
	inc bc                                           ; $4b67: $03
	ld sp, hl                                        ; $4b68: $f9
	jp $00fb                                         ; $4b69: $c3 $fb $00


	ld sp, hl                                        ; $4b6c: $f9
	ld [bc], a                                       ; $4b6d: $02
	ret                                              ; $4b6e: $c9


	ld [hl], d                                       ; $4b6f: $72
	ld [hl], e                                       ; $4b70: $73
	db $f4                                           ; $4b71: $f4
	ld a, a                                          ; $4b72: $7f
	cp $96                                           ; $4b73: $fe $96
	inc de                                           ; $4b75: $13
	ld sp, hl                                        ; $4b76: $f9
	ei                                               ; $4b77: $fb
	ei                                               ; $4b78: $fb
	dec de                                           ; $4b79: $1b
	ei                                               ; $4b7a: $fb
	dec sp                                           ; $4b7b: $3b
	ld bc, $7bfb                                     ; $4b7c: $01 $fb $7b
	db $f4                                           ; $4b7f: $f4
	ld a, a                                          ; $4b80: $7f
	jp z, Jump_048_7b9e                              ; $4b81: $ca $9e $7b

	db $dd                                           ; $4b84: $dd
	ei                                               ; $4b85: $fb
	ld a, d                                          ; $4b86: $7a
	call z, $ff9e                                    ; $4b87: $cc $9e $ff
	ld l, [hl]                                       ; $4b8a: $6e
	add $6f                                          ; $4b8b: $c6 $6f
	cp $8d                                           ; $4b8d: $fe $8d
	rst FarCall                                          ; $4b8f: $f7
	ldh a, [$ef]                                     ; $4b90: $f0 $ef
	ldh a, [rIE]                                     ; $4b92: $f0 $ff
	pop hl                                           ; $4b94: $e1
	xor $e3                                          ; $4b95: $ee $e3
	cp $e3                                           ; $4b97: $fe $e3
	sbc $e3                                          ; $4b99: $de $e3
	rst $38                                          ; $4b9b: $ff
	jp $c3ff                                         ; $4b9c: $c3 $ff $c3


	rst SubAFromBC                                          ; $4b9f: $e7
	rst FarCall                                          ; $4ba0: $f7

jr_048_4ba1:
	ld [hl], a                                       ; $4ba1: $77
	cp $86                                           ; $4ba2: $fe $86
	rlca                                             ; $4ba4: $07
	rla                                              ; $4ba5: $17
	nop                                              ; $4ba6: $00
	inc e                                            ; $4ba7: $1c
	rla                                              ; $4ba8: $17
	ld a, a                                          ; $4ba9: $7f
	rst FarCall                                          ; $4baa: $f7
	rst $38                                          ; $4bab: $ff
	rst FarCall                                          ; $4bac: $f7

jr_048_4bad:
	ccf                                              ; $4bad: $3f
	and c                                            ; $4bae: $a1
	jp $e3f1                                         ; $4baf: $c3 $f1 $e3


	pop af                                           ; $4bb2: $f1
	db $e3                                           ; $4bb3: $e3
	ld hl, $64e2                                     ; $4bb4: $21 $e2 $64
	ld h, d                                          ; $4bb7: $62
	ld h, [hl]                                       ; $4bb8: $66
	db $e3                                           ; $4bb9: $e3
	rst FarCall                                          ; $4bba: $f7
	rst SubAFromBC                                          ; $4bbb: $e7
	di                                               ; $4bbc: $f3
	ld a, d                                          ; $4bbd: $7a
	adc $7f                                          ; $4bbe: $ce $7f
	cp $9d                                           ; $4bc0: $fe $9d
	ld [bc], a                                       ; $4bc2: $02
	db $f4                                           ; $4bc3: $f4
	halt                                             ; $4bc4: $76
	jp nz, $1390                                     ; $4bc5: $c2 $90 $13

	db $e4                                           ; $4bc8: $e4
	db $e3                                           ; $4bc9: $e3
	rst FarCall                                          ; $4bca: $f7
	db $e3                                           ; $4bcb: $e3
	rst FarCall                                          ; $4bcc: $f7
	rst FarCall                                          ; $4bcd: $f7
	ei                                               ; $4bce: $fb
	rst GetHLinHL                                          ; $4bcf: $cf
	ldh a, [c]                                       ; $4bd0: $f2
	inc b                                            ; $4bd1: $04
	ld [bc], a                                       ; $4bd2: $02
	inc [hl]                                         ; $4bd3: $34
	ld [bc], a                                       ; $4bd4: $02
	or h                                             ; $4bd5: $b4
	ld a, d                                          ; $4bd6: $7a
	ret nz                                           ; $4bd7: $c0

	ld a, a                                          ; $4bd8: $7f
	or $7f                                           ; $4bd9: $f6 $7f
	ldh a, [c]                                       ; $4bdb: $f2
	sbc [hl]                                         ; $4bdc: $9e
	add l                                            ; $4bdd: $85
	ld [hl], d                                       ; $4bde: $72
	jp z, Jump_048_659c                              ; $4bdf: $ca $9c $65

	ld [bc], a                                       ; $4be2: $02
	ld d, l                                          ; $4be3: $55
	ld a, e                                          ; $4be4: $7b
	ld a, [$ba7e]                                    ; $4be5: $fa $7e $ba
	ld a, a                                          ; $4be8: $7f
	add b                                            ; $4be9: $80
	ld l, [hl]                                       ; $4bea: $6e
	jp z, $139c                                      ; $4beb: $ca $9c $13

	ld bc, $7663                                     ; $4bee: $01 $63 $76
	dec de                                           ; $4bf1: $1b
	sbc e                                            ; $4bf2: $9b
	ld bc, $fde3                                     ; $4bf3: $01 $e3 $fd
	sub d                                            ; $4bf6: $92
	ld a, d                                          ; $4bf7: $7a
	call z, $fe57                                    ; $4bf8: $cc $57 $fe
	adc h                                            ; $4bfb: $8c
	ld b, b                                          ; $4bfc: $40
	add b                                            ; $4bfd: $80
	ld b, b                                          ; $4bfe: $40
	add b                                            ; $4bff: $80
	ld b, [hl]                                       ; $4c00: $46
	add b                                            ; $4c01: $80
	ld d, b                                          ; $4c02: $50
	add b                                            ; $4c03: $80
	ld b, c                                          ; $4c04: $41
	add b                                            ; $4c05: $80
	ld e, d                                          ; $4c06: $5a

jr_048_4c07:
	add c                                            ; $4c07: $81
	ld b, c                                          ; $4c08: $41
	add e                                            ; $4c09: $83
	ld c, e                                          ; $4c0a: $4b
	add a                                            ; $4c0b: $87
	rlca                                             ; $4c0c: $07
	ld [bc], a                                       ; $4c0d: $02
	daa                                              ; $4c0e: $27
	ld a, d                                          ; $4c0f: $7a
	jp z, Jump_048_4795                              ; $4c10: $ca $95 $47

	dec sp                                           ; $4c13: $3b
	ld a, a                                          ; $4c14: $7f
	ei                                               ; $4c15: $fb
	rst FarCall                                          ; $4c16: $f7
	ei                                               ; $4c17: $fb
	rst FarCall                                          ; $4c18: $f7
	ldh [c], a                                       ; $4c19: $e2
	add a                                            ; $4c1a: $87
	jp nz, $9dfd                                     ; $4c1b: $c2 $fd $9d

	ld b, $01                                        ; $4c1e: $06 $01
	ld [hl], h                                       ; $4c20: $74
	xor c                                            ; $4c21: $a9
	sub h                                            ; $4c22: $94
	or b                                             ; $4c23: $b0
	rst $38                                          ; $4c24: $ff
	ld [hl], b                                       ; $4c25: $70
	jr nz, jr_048_4c67                               ; $4c26: $20 $3f

	ld a, a                                          ; $4c28: $7f
	nop                                              ; $4c29: $00
	nop                                              ; $4c2a: $00
	jr @+$09                                         ; $4c2b: $18 $07

	ld a, a                                          ; $4c2d: $7f
	ld l, h                                          ; $4c2e: $6c
	or b                                             ; $4c2f: $b0
	ld [hl], b                                       ; $4c30: $70
	xor [hl]                                         ; $4c31: $ae
	ld a, [hl]                                       ; $4c32: $7e
	adc $9c                                          ; $4c33: $ce $9c
	ld b, b                                          ; $4c35: $40
	sbc a                                            ; $4c36: $9f
	rst JumpTable                                          ; $4c37: $c7
	ld [hl], e                                       ; $4c38: $73
	cp $7f                                           ; $4c39: $fe $7f
	ld hl, sp-$68                                    ; $4c3b: $f8 $98
	inc h                                            ; $4c3d: $24
	jr jr_048_4c07                                   ; $4c3e: $18 $c7

	sbc a                                            ; $4c40: $9f
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	db $10                                           ; $4c43: $10
	ld h, h                                          ; $4c44: $64
	sub b                                            ; $4c45: $90
	sbc l                                            ; $4c46: $9d
	rst $38                                          ; $4c47: $ff
	ccf                                              ; $4c48: $3f
	ld [hl], h                                       ; $4c49: $74
	ld c, [hl]                                       ; $4c4a: $4e
	ld a, h                                          ; $4c4b: $7c
	ld e, d                                          ; $4c4c: $5a
	sbc l                                            ; $4c4d: $9d
	db $fc                                           ; $4c4e: $fc
	cp $dc                                           ; $4c4f: $fe $dc
	rst $38                                          ; $4c51: $ff
	sbc l                                            ; $4c52: $9d
	rrca                                             ; $4c53: $0f
	ldh a, [$74]                                     ; $4c54: $f0 $74
	jp nz, $c495                                     ; $4c56: $c2 $95 $c4

	ei                                               ; $4c59: $fb
	adc b                                            ; $4c5a: $88
	inc bc                                           ; $4c5b: $03
	rlca                                             ; $4c5c: $07
	ld sp, hl                                        ; $4c5d: $f9
	cp c                                             ; $4c5e: $b9
	jp $02bd                                         ; $4c5f: $c3 $bd $02


	ld [hl], l                                       ; $4c62: $75
	ld [hl], b                                       ; $4c63: $70
	ld a, b                                          ; $4c64: $78
	pop hl                                           ; $4c65: $e1
	sub [hl]                                         ; $4c66: $96

jr_048_4c67:
	inc bc                                           ; $4c67: $03
	ld a, b                                          ; $4c68: $78
	inc bc                                           ; $4c69: $03
	ld b, h                                          ; $4c6a: $44
	ei                                               ; $4c6b: $fb
	cp c                                             ; $4c6c: $b9
	jp $03fc                                         ; $4c6d: $c3 $fc $03


	ld l, a                                          ; $4c70: $6f
	ldh a, [$7e]                                     ; $4c71: $f0 $7e
	sub $7f                                          ; $4c73: $d6 $7f
	xor $9a                                          ; $4c75: $ee $9a
	ld b, l                                          ; $4c77: $45
	ei                                               ; $4c78: $fb
	ld a, h                                          ; $4c79: $7c
	add e                                            ; $4c7a: $83
	db $fd                                           ; $4c7b: $fd
	ld l, e                                          ; $4c7c: $6b
	ldh [$97], a                                     ; $4c7d: $e0 $97
	db $fd                                           ; $4c7f: $fd
	ldh a, [c]                                       ; $4c80: $f2
	db $fd                                           ; $4c81: $fd
	ld [bc], a                                       ; $4c82: $02
	push bc                                          ; $4c83: $c5
	ei                                               ; $4c84: $fb
	ld hl, sp+$03                                    ; $4c85: $f8 $03
	ld h, a                                          ; $4c87: $67
	ldh a, [hDisp1_WY]                                     ; $4c88: $f0 $95
	dec bc                                           ; $4c8a: $0b
	inc b                                            ; $4c8b: $04
	sbc c                                            ; $4c8c: $99
	ld [hl], a                                       ; $4c8d: $77
	set 6, a                                         ; $4c8e: $cb $f7
	ld sp, hl                                        ; $4c90: $f9
	rlca                                             ; $4c91: $07
	ei                                               ; $4c92: $fb
	inc b                                            ; $4c93: $04
	ld [hl], e                                       ; $4c94: $73
	ldh a, [$80]                                     ; $4c95: $f0 $80
	ld bc, $47ff                                     ; $4c97: $01 $ff $47
	ld a, a                                          ; $4c9a: $7f
	add a                                            ; $4c9b: $87
	rst $38                                          ; $4c9c: $ff
	rlca                                             ; $4c9d: $07
	ld a, a                                          ; $4c9e: $7f
	add h                                            ; $4c9f: $84
	rst $38                                          ; $4ca0: $ff
	db $fc                                           ; $4ca1: $fc
	ld a, a                                          ; $4ca2: $7f
	rst $38                                          ; $4ca3: $ff
	pop bc                                           ; $4ca4: $c1
	rst $38                                          ; $4ca5: $ff
	rst $38                                          ; $4ca6: $ff
	pop bc                                           ; $4ca7: $c1
	ldh a, [$bf]                                     ; $4ca8: $f0 $bf
	ld hl, sp-$44                                    ; $4caa: $f8 $bc
	rst $38                                          ; $4cac: $ff

jr_048_4cad:
	cp a                                             ; $4cad: $bf
	db $fc                                           ; $4cae: $fc
	ld e, $f8                                        ; $4caf: $1e $f8
	db $fc                                           ; $4cb1: $fc

jr_048_4cb2:
	nop                                              ; $4cb2: $00
	db $fc                                           ; $4cb3: $fc
	inc e                                            ; $4cb4: $1c
	db $ec                                           ; $4cb5: $ec
	ld a, a                                          ; $4cb6: $7f
	adc e                                            ; $4cb7: $8b
	add l                                            ; $4cb8: $85
	rst AddAOntoHL                                          ; $4cb9: $ef
	rst JumpTable                                          ; $4cba: $c7
	ld c, h                                          ; $4cbb: $4c
	adc a                                            ; $4cbc: $8f
	inc c                                            ; $4cbd: $0c
	sbc a                                            ; $4cbe: $9f
	add hl, bc                                       ; $4cbf: $09
	ld [hl], $53                                     ; $4cc0: $36 $53
	ld l, h                                          ; $4cc2: $6c
	and b                                            ; $4cc3: $a0
	ld e, a                                          ; $4cc4: $5f
	ld h, a                                          ; $4cc5: $67
	sbc b                                            ; $4cc6: $98
	ld l, a                                          ; $4cc7: $6f
	sub b                                            ; $4cc8: $90
	db $e3                                           ; $4cc9: $e3
	rst FarCall                                          ; $4cca: $f7
	inc hl                                           ; $4ccb: $23
	rst FarCall                                          ; $4ccc: $f7
	ld [de], a                                       ; $4ccd: $12
	rst SubAFromBC                                          ; $4cce: $e7
	ld a, [bc]                                       ; $4ccf: $0a
	inc b                                            ; $4cd0: $04
	db $d3                                           ; $4cd1: $d3
	inc l                                            ; $4cd2: $2c
	ld [hl], a                                       ; $4cd3: $77
	or d                                             ; $4cd4: $b2
	ld a, a                                          ; $4cd5: $7f
	cp $7b                                           ; $4cd6: $fe $7b
	ld a, [de]                                       ; $4cd8: $1a
	sbc b                                            ; $4cd9: $98
	ei                                               ; $4cda: $fb
	ld a, $c3                                        ; $4cdb: $3e $c3
	inc b                                            ; $4cdd: $04
	inc bc                                           ; $4cde: $03
	inc bc                                           ; $4cdf: $03
	db $fc                                           ; $4ce0: $fc
	ld l, a                                          ; $4ce1: $6f
	ldh a, [$7a]                                     ; $4ce2: $f0 $7a
	ld l, $9d                                        ; $4ce4: $2e $9d
	ei                                               ; $4ce6: $fb
	add hl, sp                                       ; $4ce7: $39
	ld a, e                                          ; $4ce8: $7b
	ldh a, [$74]                                     ; $4ce9: $f0 $74
	add $70                                          ; $4ceb: $c6 $70
	call $fd96                                       ; $4ced: $cd $96 $fd
	rst $38                                          ; $4cf0: $ff
	db $fd                                           ; $4cf1: $fd
	dec e                                            ; $4cf2: $1d
	pop hl                                           ; $4cf3: $e1
	add c                                            ; $4cf4: $81
	nop                                              ; $4cf5: $00
	add b                                            ; $4cf6: $80
	ld a, a                                          ; $4cf7: $7f
	ld l, a                                          ; $4cf8: $6f
	ldh a, [$9b]                                     ; $4cf9: $f0 $9b
	sbc d                                            ; $4cfb: $9a
	ld sp, $3996                                     ; $4cfc: $31 $96 $39
	ld [hl], a                                       ; $4cff: $77
	db $fc                                           ; $4d00: $fc
	ld [hl], h                                       ; $4d01: $74
	and h                                            ; $4d02: $a4
	ld [hl], a                                       ; $4d03: $77
	ldh a, [hDisp1_WY]                                     ; $4d04: $f0 $95
	ld a, [hl]                                       ; $4d06: $7e
	sbc a                                            ; $4d07: $9f
	ld a, [hl]                                       ; $4d08: $7e
	db $fc                                           ; $4d09: $fc
	ld [hl], l                                       ; $4d0a: $75
	ld hl, sp-$39                                    ; $4d0b: $f8 $c7
	ldh [$5f], a                                     ; $4d0d: $e0 $5f
	add b                                            ; $4d0f: $80
	ld a, e                                          ; $4d10: $7b
	ld [de], a                                       ; $4d11: $12
	ld a, e                                          ; $4d12: $7b
	cp $7f                                           ; $4d13: $fe $7f
	jr z, jr_048_4cb2                                ; $4d15: $28 $9b

	ld a, a                                          ; $4d17: $7f
	inc bc                                           ; $4d18: $03
	db $fc                                           ; $4d19: $fc
	inc bc                                           ; $4d1a: $03
	ld e, b                                          ; $4d1b: $58
	adc c                                            ; $4d1c: $89
	sbc l                                            ; $4d1d: $9d
	ret nz                                           ; $4d1e: $c0

	ld e, a                                          ; $4d1f: $5f
	ld [hl], a                                       ; $4d20: $77
	push bc                                          ; $4d21: $c5
	inc hl                                           ; $4d22: $23
	cp $95                                           ; $4d23: $fe $95
	add l                                            ; $4d25: $85
	jr jr_048_4cad                                   ; $4d26: $18 $85

	dec de                                           ; $4d28: $1b
	adc a                                            ; $4d29: $8f
	rra                                              ; $4d2a: $1f
	call $f51e                                       ; $4d2b: $cd $1e $f5
	ld [$f06f], sp                                   ; $4d2e: $08 $6f $f0
	sbc d                                            ; $4d31: $9a
	cp a                                             ; $4d32: $bf
	nop                                              ; $4d33: $00
	sbc a                                            ; $4d34: $9f
	ret nz                                           ; $4d35: $c0

	ld a, a                                          ; $4d36: $7f
	ld e, e                                          ; $4d37: $5b
	adc $9e                                          ; $4d38: $ce $9e
	db $e4                                           ; $4d3a: $e4
	dec de                                           ; $4d3b: $1b
	call nz, $fe03                                   ; $4d3c: $c4 $03 $fe
	scf                                              ; $4d3f: $37
	cp $7e                                           ; $4d40: $fe $7e
	adc $77                                          ; $4d42: $ce $77
	cp $63                                           ; $4d44: $fe $63
	ldh a, [$99]                                     ; $4d46: $f0 $99
	cp a                                             ; $4d48: $bf
	jp $c3bf                                         ; $4d49: $c3 $bf $c3


	db $fd                                           ; $4d4c: $fd
	add e                                            ; $4d4d: $83
	ld e, a                                          ; $4d4e: $5f
	ldh a, [$9a]                                     ; $4d4f: $f0 $9a
	rst FarCall                                          ; $4d51: $f7
	rrca                                             ; $4d52: $0f
	db $db                                           ; $4d53: $db
	rst SubAFromBC                                          ; $4d54: $e7
	rst AddAOntoHL                                          ; $4d55: $ef
	ld a, c                                          ; $4d56: $79
	inc c                                            ; $4d57: $0c
	ld h, a                                          ; $4d58: $67

jr_048_4d59:
	cp $99                                           ; $4d59: $fe $99
	rst SubAFromDE                                          ; $4d5b: $df
	jr nc, jr_048_4d59                               ; $4d5c: $30 $fb

	db $fc                                           ; $4d5e: $fc
	db $fd                                           ; $4d5f: $fd
	ld a, [hl]                                       ; $4d60: $7e
	inc bc                                           ; $4d61: $03
	xor d                                            ; $4d62: $aa
	inc bc                                           ; $4d63: $03
	cp $03                                           ; $4d64: $fe $03
	cp $03                                           ; $4d66: $fe $03
	cp $03                                           ; $4d68: $fe $03
	cp $03                                           ; $4d6a: $fe $03
	cp $77                                           ; $4d6c: $fe $77
	cp $45                                           ; $4d6e: $fe $45
	nop                                              ; $4d70: $00
	jp c, $9a55                                      ; $4d71: $da $55 $9a

	ld h, [hl]                                       ; $4d74: $66
	ld h, l                                          ; $4d75: $65
	ld h, l                                          ; $4d76: $65
	ld d, a                                          ; $4d77: $57
	ld [hl], l                                       ; $4d78: $75
	ld [hl], e                                       ; $4d79: $73
	rst FarCall                                          ; $4d7a: $f7
	sbc $66                                          ; $4d7b: $de $66
	sbc [hl]                                         ; $4d7d: $9e
	ld d, l                                          ; $4d7e: $55
	ld [hl], e                                       ; $4d7f: $73
	or $df                                           ; $4d80: $f6 $df
	ld h, h                                          ; $4d82: $64
	rst SubAFromDE                                          ; $4d83: $df
	ld b, h                                          ; $4d84: $44
	ld l, e                                          ; $4d85: $6b
	or $de                                           ; $4d86: $f6 $de
	ld b, h                                          ; $4d88: $44
	ld a, a                                          ; $4d89: $7f
	or $9b                                           ; $4d8a: $f6 $9b
	ld d, [hl]                                       ; $4d8c: $56
	ld h, [hl]                                       ; $4d8d: $66
	ld d, l                                          ; $4d8e: $55
	ld d, [hl]                                       ; $4d8f: $56
	db $dd                                           ; $4d90: $dd
	ld h, [hl]                                       ; $4d91: $66
	ld a, a                                          ; $4d92: $7f
	db $ed                                           ; $4d93: $ed
	ld a, e                                          ; $4d94: $7b
	sbc $9d                                          ; $4d95: $de $9d
	ld d, [hl]                                       ; $4d97: $56
	ld h, e                                          ; $4d98: $63
	sbc $33                                          ; $4d99: $de $33
	sbc $44                                          ; $4d9b: $de $44
	sbc e                                            ; $4d9d: $9b
	ld b, l                                          ; $4d9e: $45
	ld b, h                                          ; $4d9f: $44
	ld b, h                                          ; $4da0: $44
	ld b, e                                          ; $4da1: $43
	ld l, a                                          ; $4da2: $6f
	or $9e                                           ; $4da3: $f6 $9e
	ld b, h                                          ; $4da5: $44
	db $db                                           ; $4da6: $db
	inc sp                                           ; $4da7: $33
	sbc $44                                          ; $4da8: $de $44
	ld [hl], a                                       ; $4daa: $77
	rst AddAOntoHL                                          ; $4dab: $ef
	call c, $9e33                                    ; $4dac: $dc $33 $9e
	inc [hl]                                         ; $4daf: $34
	ld h, e                                          ; $4db0: $63
	or $d9                                           ; $4db1: $f6 $d9
	inc sp                                           ; $4db3: $33
	sbc $08                                          ; $4db4: $de $08
	sbc e                                            ; $4db6: $9b
	ld d, l                                          ; $4db7: $55
	xor e                                            ; $4db8: $ab
	xor d                                            ; $4db9: $aa
	ld d, l                                          ; $4dba: $55
	ld d, a                                          ; $4dbb: $57
	db $fc                                           ; $4dbc: $fc
	sub b                                            ; $4dbd: $90
	add b                                            ; $4dbe: $80
	nop                                              ; $4dbf: $00
	add b                                            ; $4dc0: $80
	nop                                              ; $4dc1: $00
	sub b                                            ; $4dc2: $90
	nop                                              ; $4dc3: $00
	adc b                                            ; $4dc4: $88
	nop                                              ; $4dc5: $00
	sub h                                            ; $4dc6: $94
	nop                                              ; $4dc7: $00
	adc d                                            ; $4dc8: $8a
	nop                                              ; $4dc9: $00
	sub l                                            ; $4dca: $95
	nop                                              ; $4dcb: $00
	xor d                                            ; $4dcc: $aa
	db $f4                                           ; $4dcd: $f4
	sbc h                                            ; $4dce: $9c
	ld b, b                                          ; $4dcf: $40
	nop                                              ; $4dd0: $00
	and b                                            ; $4dd1: $a0
	or $87                                           ; $4dd2: $f6 $87
	ld [bc], a                                       ; $4dd4: $02
	nop                                              ; $4dd5: $00
	dec b                                            ; $4dd6: $05
	nop                                              ; $4dd7: $00
	ld a, [bc]                                       ; $4dd8: $0a
	nop                                              ; $4dd9: $00
	push de                                          ; $4dda: $d5
	ld a, [hl+]                                      ; $4ddb: $2a
	ld a, [hl+]                                      ; $4ddc: $2a
	ld d, l                                          ; $4ddd: $55
	ld d, l                                          ; $4dde: $55
	ld a, [hl+]                                      ; $4ddf: $2a

jr_048_4de0:
	ld l, d                                          ; $4de0: $6a
	dec d                                            ; $4de1: $15
	ld d, l                                          ; $4de2: $55
	ld a, [hl+]                                      ; $4de3: $2a
	ld a, [hl+]                                      ; $4de4: $2a
	dec d                                            ; $4de5: $15
	ld [hl], l                                       ; $4de6: $75
	ld a, [bc]                                       ; $4de7: $0a
	xor d                                            ; $4de8: $aa
	dec d                                            ; $4de9: $15
	ld d, l                                          ; $4dea: $55
	xor d                                            ; $4deb: $aa
	ld a, e                                          ; $4dec: $7b
	cp b                                             ; $4ded: $b8
	ld e, e                                          ; $4dee: $5b
	db $fc                                           ; $4def: $fc
	sbc e                                            ; $4df0: $9b
	ld b, b                                          ; $4df1: $40
	cp a                                             ; $4df2: $bf
	and b                                            ; $4df3: $a0
	ld e, a                                          ; $4df4: $5f
	ld [hl], a                                       ; $4df5: $77
	db $fc                                           ; $4df6: $fc
	sbc l                                            ; $4df7: $9d
	ld d, b                                          ; $4df8: $50
	xor a                                            ; $4df9: $af
	ld [hl], a                                       ; $4dfa: $77
	db $fc                                           ; $4dfb: $fc
	add b                                            ; $4dfc: $80
	add b                                            ; $4dfd: $80
	ld a, a                                          ; $4dfe: $7f
	ld a, [hl+]                                      ; $4dff: $2a
	push de                                          ; $4e00: $d5
	inc d                                            ; $4e01: $14
	db $eb                                           ; $4e02: $eb
	ld a, [hl+]                                      ; $4e03: $2a
	push de                                          ; $4e04: $d5
	ld d, h                                          ; $4e05: $54
	xor e                                            ; $4e06: $ab
	jr z, jr_048_4de0                                ; $4e07: $28 $d7

	ld d, b                                          ; $4e09: $50
	xor a                                            ; $4e0a: $af
	nop                                              ; $4e0b: $00
	rst $38                                          ; $4e0c: $ff
	ldh a, [rP1]                                     ; $4e0d: $f0 $00
	ld bc, $02fe                                     ; $4e0f: $01 $fe $02
	db $fd                                           ; $4e12: $fd
	inc bc                                           ; $4e13: $03
	db $fc                                           ; $4e14: $fc
	ld [bc], a                                       ; $4e15: $02
	db $fd                                           ; $4e16: $fd
	ld bc, $00fe                                     ; $4e17: $01 $fe $00
	rst $38                                          ; $4e1a: $ff
	ldh [$fe], a                                     ; $4e1b: $e0 $fe
	ld e, a                                          ; $4e1d: $5f
	call nz, Call_048_709d                           ; $4e1e: $c4 $9d $70
	add b                                            ; $4e21: $80
	db $fd                                           ; $4e22: $fd
	sbc h                                            ; $4e23: $9c
	ld a, a                                          ; $4e24: $7f
	add b                                            ; $4e25: $80
	rst $38                                          ; $4e26: $ff
	ld [hl], e                                       ; $4e27: $73
	db $fc                                           ; $4e28: $fc
	sbc [hl]                                         ; $4e29: $9e
	ld l, d                                          ; $4e2a: $6a
	ld [hl], e                                       ; $4e2b: $73
	ldh a, [c]                                       ; $4e2c: $f2
	rst $38                                          ; $4e2d: $ff
	ld a, a                                          ; $4e2e: $7f
	or $6f                                           ; $4e2f: $f6 $6f
	cp $f9                                           ; $4e31: $fe $f9
	sbc d                                            ; $4e33: $9a
	push af                                          ; $4e34: $f5
	nop                                              ; $4e35: $00
	ld a, [$fd00]                                    ; $4e36: $fa $00 $fd
	ld e, e                                          ; $4e39: $5b
	ldh a, [rIE]                                     ; $4e3a: $f0 $ff
	ld a, a                                          ; $4e3c: $7f
	rst SubAFromHL                                          ; $4e3d: $d7
	sbc [hl]                                         ; $4e3e: $9e
	ld d, c                                          ; $4e3f: $51
	ld a, e                                          ; $4e40: $7b
	db $fc                                           ; $4e41: $fc
	ei                                               ; $4e42: $fb
	sbc b                                            ; $4e43: $98
	rra                                              ; $4e44: $1f
	nop                                              ; $4e45: $00
	ld d, l                                          ; $4e46: $55
	nop                                              ; $4e47: $00
	xor e                                            ; $4e48: $ab
	nop                                              ; $4e49: $00
	ld d, a                                          ; $4e4a: $57
	ld a, [$019e]                                    ; $4e4b: $fa $9e $01
	ld c, e                                          ; $4e4e: $4b
	jp nz, $e47f                                     ; $4e4f: $c2 $7f $e4

	ld a, a                                          ; $4e52: $7f
	or $77                                           ; $4e53: $f6 $77
	sub [hl]                                         ; $4e55: $96
	sbc l                                            ; $4e56: $9d
	ld a, [$fb05]                                    ; $4e57: $fa $05 $fb
	ld a, a                                          ; $4e5a: $7f
	add b                                            ; $4e5b: $80
	sbc b                                            ; $4e5c: $98
	ld a, [$aa04]                                    ; $4e5d: $fa $04 $aa
	ld d, l                                          ; $4e60: $55
	ld d, h                                          ; $4e61: $54
	xor e                                            ; $4e62: $ab
	xor b                                            ; $4e63: $a8
	ld l, e                                          ; $4e64: $6b
	rst GetHLinHL                                          ; $4e65: $cf
	ld a, a                                          ; $4e66: $7f
	jp hl                                            ; $4e67: $e9


	ld a, e                                          ; $4e68: $7b
	nop                                              ; $4e69: $00
	ld h, e                                          ; $4e6a: $63
	rst GetHLinHL                                          ; $4e6b: $cf
	sbc [hl]                                         ; $4e6c: $9e
	ld a, [hl+]                                      ; $4e6d: $2a
	ld a, e                                          ; $4e6e: $7b
	ret nc                                           ; $4e6f: $d0

	sub a                                            ; $4e70: $97
	cp a                                             ; $4e71: $bf
	nop                                              ; $4e72: $00
	dec hl                                           ; $4e73: $2b
	call nc, $aa55                                   ; $4e74: $d4 $55 $aa
	ccf                                              ; $4e77: $3f
	ret nz                                           ; $4e78: $c0

	db $fd                                           ; $4e79: $fd
	ld a, a                                          ; $4e7a: $7f
	xor b                                            ; $4e7b: $a8
	sbc e                                            ; $4e7c: $9b
	db $fc                                           ; $4e7d: $fc
	inc bc                                           ; $4e7e: $03
	nop                                              ; $4e7f: $00
	rst $38                                          ; $4e80: $ff
	ld a, e                                          ; $4e81: $7b
	ld d, h                                          ; $4e82: $54
	ld a, e                                          ; $4e83: $7b
	add sp, $77                                      ; $4e84: $e8 $77
	db $fc                                           ; $4e86: $fc
	sbc [hl]                                         ; $4e87: $9e
	xor b                                            ; $4e88: $a8
	ld a, d                                          ; $4e89: $7a
	ldh [rIE], a                                     ; $4e8a: $e0 $ff
	sub h                                            ; $4e8c: $94
	or l                                             ; $4e8d: $b5
	nop                                              ; $4e8e: $00
	cp d                                             ; $4e8f: $ba
	nop                                              ; $4e90: $00
	dec a                                            ; $4e91: $3d
	nop                                              ; $4e92: $00
	cp [hl]                                          ; $4e93: $be
	nop                                              ; $4e94: $00
	ccf                                              ; $4e95: $3f
	nop                                              ; $4e96: $00
	ld a, a                                          ; $4e97: $7f
	ld [hl], e                                       ; $4e98: $73
	cp $9e                                           ; $4e99: $fe $9e
	ld d, h                                          ; $4e9b: $54
	ld [hl], e                                       ; $4e9c: $73
	db $e4                                           ; $4e9d: $e4
	ld [hl], a                                       ; $4e9e: $77
	db $fc                                           ; $4e9f: $fc
	sbc b                                            ; $4ea0: $98
	rst AddAOntoHL                                          ; $4ea1: $ef
	nop                                              ; $4ea2: $00
	cp $00                                           ; $4ea3: $fe $00
	ret nz                                           ; $4ea5: $c0

	nop                                              ; $4ea6: $00
	dec d                                            ; $4ea7: $15
	ld [hl], e                                       ; $4ea8: $73
	db $f4                                           ; $4ea9: $f4
	ld a, a                                          ; $4eaa: $7f
	call nz, $ad7f                                   ; $4eab: $c4 $7f $ad
	sbc [hl]                                         ; $4eae: $9e
	ld hl, sp-$04                                    ; $4eaf: $f8 $fc
	ld a, [hl]                                       ; $4eb1: $7e
	call z, $ba9b                                    ; $4eb2: $cc $9b $ba
	dec b                                            ; $4eb5: $05
	ld [hl], l                                       ; $4eb6: $75
	ld a, [bc]                                       ; $4eb7: $0a
	ld [hl], a                                       ; $4eb8: $77
	sbc l                                            ; $4eb9: $9d
	sbc [hl]                                         ; $4eba: $9e
	inc d                                            ; $4ebb: $14
	ld a, e                                          ; $4ebc: $7b
	sbc [hl]                                         ; $4ebd: $9e
	sub [hl]                                         ; $4ebe: $96
	rrca                                             ; $4ebf: $0f
	nop                                              ; $4ec0: $00
	ld d, h                                          ; $4ec1: $54
	xor e                                            ; $4ec2: $ab
	xor e                                            ; $4ec3: $ab
	ld d, h                                          ; $4ec4: $54
	ld a, b                                          ; $4ec5: $78
	add b                                            ; $4ec6: $80
	ldh [$73], a                                     ; $4ec7: $e0 $73
	ld a, $7f                                        ; $4ec9: $3e $7f
	call nc, $ea7f                                   ; $4ecb: $d4 $7f $ea
	sbc [hl]                                         ; $4ece: $9e
	ld h, b                                          ; $4ecf: $60
	ld [hl], e                                       ; $4ed0: $73
	dec [hl]                                         ; $4ed1: $35
	ld a, a                                          ; $4ed2: $7f
	add sp, -$69                                     ; $4ed3: $e8 $97
	dec d                                            ; $4ed5: $15
	ld [bc], a                                       ; $4ed6: $02
	cp [hl]                                          ; $4ed7: $be
	ld bc, $0ff0                                     ; $4ed8: $01 $f0 $0f
	pop bc                                           ; $4edb: $c1
	ccf                                              ; $4edc: $3f
	ld sp, hl                                        ; $4edd: $f9
	sub a                                            ; $4ede: $97
	db $10                                           ; $4edf: $10
	ldh [$27], a                                     ; $4ee0: $e0 $27
	ret c                                            ; $4ee2: $d8

	ld d, b                                          ; $4ee3: $50
	cp a                                             ; $4ee4: $bf
	add hl, hl                                       ; $4ee5: $29
	cp $f5                                           ; $4ee6: $fe $f5
	ld a, [hl]                                       ; $4ee8: $7e
	or d                                             ; $4ee9: $b2
	sbc [hl]                                         ; $4eea: $9e
	ld e, a                                          ; $4eeb: $5f
	ld d, [hl]                                       ; $4eec: $56
	ld e, a                                          ; $4eed: $5f
	ldh [$cc], a                                     ; $4eee: $e0 $cc
	sbc e                                            ; $4ef0: $9b
	inc b                                            ; $4ef1: $04
	inc bc                                           ; $4ef2: $03
	ld [bc], a                                       ; $4ef3: $02
	ld bc, $7ef5                                     ; $4ef4: $01 $f5 $7e
	ld e, b                                          ; $4ef7: $58
	sub a                                            ; $4ef8: $97
	sub l                                            ; $4ef9: $95
	ld [$3fed], a                                    ; $4efa: $ea $ed $3f
	ccf                                              ; $4efd: $3f
	rra                                              ; $4efe: $1f
	rra                                              ; $4eff: $1f
	rrca                                             ; $4f00: $0f
	ld a, [$ff9b]                                    ; $4f01: $fa $9b $ff
	ld a, [hl+]                                      ; $4f04: $2a
	rst $38                                          ; $4f05: $ff
	ld d, l                                          ; $4f06: $55
	call c, Call_048_6aff                            ; $4f07: $dc $ff $6a
	call c, $fa9c                                    ; $4f0a: $dc $9c $fa
	xor d                                            ; $4f0d: $aa
	db $fd                                           ; $4f0e: $fd
	ld d, a                                          ; $4f0f: $57
	ldh a, [$9b]                                     ; $4f10: $f0 $9b
	ld d, l                                          ; $4f12: $55
	xor b                                            ; $4f13: $a8
	xor b                                            ; $4f14: $a8
	ld d, a                                          ; $4f15: $57
	ld d, a                                          ; $4f16: $57
	ldh a, [$7d]                                     ; $4f17: $f0 $7d

Jump_048_4f19:
	and $9e                                          ; $4f19: $e6 $9e
	ld [bc], a                                       ; $4f1b: $02
	ld d, e                                          ; $4f1c: $53
	ret nc                                           ; $4f1d: $d0

	ld a, a                                          ; $4f1e: $7f
	ret nz                                           ; $4f1f: $c0

	sbc [hl]                                         ; $4f20: $9e
	xor d                                            ; $4f21: $aa
	ld c, a                                          ; $4f22: $4f
	ldh a, [$72]                                     ; $4f23: $f0 $72
	ld c, [hl]                                       ; $4f25: $4e
	ld a, [hl]                                       ; $4f26: $7e
	or a                                             ; $4f27: $b7
	sub [hl]                                         ; $4f28: $96
	jr c, jr_048_4f32                                ; $4f29: $38 $07

	ret nz                                           ; $4f2b: $c0

	ccf                                              ; $4f2c: $3f
	dec b                                            ; $4f2d: $05
	rst $38                                          ; $4f2e: $ff
	db $fc                                           ; $4f2f: $fc
	rst $38                                          ; $4f30: $ff
	ld a, b                                          ; $4f31: $78

jr_048_4f32:
	ld [hl], e                                       ; $4f32: $73
	ld [de], a                                       ; $4f33: $12
	ld a, l                                          ; $4f34: $7d
	ret c                                            ; $4f35: $d8

	ld a, a                                          ; $4f36: $7f
	ret c                                            ; $4f37: $d8

	sbc e                                            ; $4f38: $9b
	ld a, [hl]                                       ; $4f39: $7e
	rst $38                                          ; $4f3a: $ff
	db $f4                                           ; $4f3b: $f4
	ld hl, sp+$6e                                    ; $4f3c: $f8 $6e
	jr c, @+$81                                      ; $4f3e: $38 $7f

	push de                                          ; $4f40: $d5
	sbc [hl]                                         ; $4f41: $9e
	ld bc, $f27b                                     ; $4f42: $01 $7b $f2
	sbc [hl]                                         ; $4f45: $9e
	jr c, jr_048_4fba                                ; $4f46: $38 $72

	adc d                                            ; $4f48: $8a
	ld a, c                                          ; $4f49: $79
	xor $7b                                          ; $4f4a: $ee $7b
	rst AddAOntoHL                                          ; $4f4c: $ef
	sbc l                                            ; $4f4d: $9d
	ld a, [$6bfc]                                    ; $4f4e: $fa $fc $6b
	di                                               ; $4f51: $f3
	ld a, e                                          ; $4f52: $7b
	db $e4                                           ; $4f53: $e4
	sbc h                                            ; $4f54: $9c
	cp $03                                           ; $4f55: $fe $03
	sbc a                                            ; $4f57: $9f
	ld [hl], l                                       ; $4f58: $75
	rst JumpTable                                          ; $4f59: $c7
	ld a, [$e098]                                    ; $4f5a: $fa $98 $e0
	rra                                              ; $4f5d: $1f
	inc e                                            ; $4f5e: $1c
	rst $38                                          ; $4f5f: $ff
	rst FarCall                                          ; $4f60: $f7
	rrca                                             ; $4f61: $0f
	inc bc                                           ; $4f62: $03
	ld hl, sp-$69                                    ; $4f63: $f8 $97
	inc bc                                           ; $4f65: $03
	rst $38                                          ; $4f66: $ff
	ccf                                              ; $4f67: $3f
	cp $fe                                           ; $4f68: $fe $fe
	db $fd                                           ; $4f6a: $fd
	dec b                                            ; $4f6b: $05
	ei                                               ; $4f6c: $fb
	ld h, a                                          ; $4f6d: $67
	xor $97                                          ; $4f6e: $ee $97
	pop af                                           ; $4f70: $f1
	ld a, [hl]                                       ; $4f71: $7e
	ld l, b                                          ; $4f72: $68
	rst $38                                          ; $4f73: $ff
	call nc, $eaff                                   ; $4f74: $d4 $ff $ea
	rst $38                                          ; $4f77: $ff
	ld h, [hl]                                       ; $4f78: $66
	rst JumpTable                                          ; $4f79: $c7
	ld a, [hl]                                       ; $4f7a: $7e
	db $10                                           ; $4f7b: $10
	ld a, a                                          ; $4f7c: $7f
	ld a, $7d                                        ; $4f7d: $3e $7d
	add d                                            ; $4f7f: $82
	sbc l                                            ; $4f80: $9d
	dec h                                            ; $4f81: $25
	jp c, $ce65                                      ; $4f82: $da $65 $ce

	ld a, a                                          ; $4f85: $7f
	or l                                             ; $4f86: $b5
	sbc d                                            ; $4f87: $9a
	ld [hl], h                                       ; $4f88: $74
	adc b                                            ; $4f89: $88
	add b                                            ; $4f8a: $80
	ld a, [hl]                                       ; $4f8b: $7e
	ld a, h                                          ; $4f8c: $7c
	ld h, a                                          ; $4f8d: $67
	pop af                                           ; $4f8e: $f1
	db $f4                                           ; $4f8f: $f4
	ld a, l                                          ; $4f90: $7d
	ld c, $7e                                        ; $4f91: $0e $7e
	ld b, [hl]                                       ; $4f93: $46
	ld e, a                                          ; $4f94: $5f
	db $f4                                           ; $4f95: $f4
	ld l, [hl]                                       ; $4f96: $6e
	ld [hl], $75                                     ; $4f97: $36 $75
	jp c, $e675                                      ; $4f99: $da $75 $e6

	ld l, [hl]                                       ; $4f9c: $6e
	ld a, [de]                                       ; $4f9d: $1a
	sbc [hl]                                         ; $4f9e: $9e
	ld e, a                                          ; $4f9f: $5f
	ld [hl], c                                       ; $4fa0: $71
	xor d                                            ; $4fa1: $aa
	ld h, [hl]                                       ; $4fa2: $66
	ld c, $76                                        ; $4fa3: $0e $76
	ld a, [de]                                       ; $4fa5: $1a
	ld d, a                                          ; $4fa6: $57
	ldh a, [$65]                                     ; $4fa7: $f0 $65
	add [hl]                                         ; $4fa9: $86
	inc bc                                           ; $4faa: $03
	ldh a, [$33]                                     ; $4fab: $f0 $33
	ldh a, [$5d]                                     ; $4fad: $f0 $5d
	ld b, [hl]                                       ; $4faf: $46
	ld d, a                                          ; $4fb0: $57
	ldh a, [$9d]                                     ; $4fb1: $f0 $9d
	ldh [$f8], a                                     ; $4fb3: $e0 $f8
	ld h, c                                          ; $4fb5: $61
	inc de                                           ; $4fb6: $13
	ldh [$be], a                                     ; $4fb7: $e0 $be
	ld a, a                                          ; $4fb9: $7f

jr_048_4fba:
	inc l                                            ; $4fba: $2c
	ld d, a                                          ; $4fbb: $57
	db $f4                                           ; $4fbc: $f4
	ld l, a                                          ; $4fbd: $6f
	jr nz, jr_048_502c                               ; $4fbe: $20 $6c

	or $77                                           ; $4fc0: $f6 $77
	inc e                                            ; $4fc2: $1c
	ld a, a                                          ; $4fc3: $7f
	jr nc, @+$7c                                     ; $4fc4: $30 $7a

	add h                                            ; $4fc6: $84
	cp $9e                                           ; $4fc7: $fe $9e
	ld a, [bc]                                       ; $4fc9: $0a
	ld d, e                                          ; $4fca: $53
	ld h, b                                          ; $4fcb: $60
	ld e, l                                          ; $4fcc: $5d
	ld l, $77                                        ; $4fcd: $2e $77
	cp $6f                                           ; $4fcf: $fe $6f
	db $e4                                           ; $4fd1: $e4
	ld a, h                                          ; $4fd2: $7c
	cp a                                             ; $4fd3: $bf
	ld l, a                                          ; $4fd4: $6f
	ldh a, [c]                                       ; $4fd5: $f2
	sbc l                                            ; $4fd6: $9d
	ld hl, sp+$07                                    ; $4fd7: $f8 $07
	ld [hl], a                                       ; $4fd9: $77
	db $e4                                           ; $4fda: $e4
	sbc [hl]                                         ; $4fdb: $9e
	xor a                                            ; $4fdc: $af
	ld h, b                                          ; $4fdd: $60
	adc b                                            ; $4fde: $88
	sbc h                                            ; $4fdf: $9c
	inc c                                            ; $4fe0: $0c
	ldh a, [$ae]                                     ; $4fe1: $f0 $ae
	ld h, e                                          ; $4fe3: $63
	db $f4                                           ; $4fe4: $f4
	sbc h                                            ; $4fe5: $9c
	rra                                              ; $4fe6: $1f
	ldh [$c0], a                                     ; $4fe7: $e0 $c0
	ld a, b                                          ; $4fe9: $78
	jp c, $f267                                      ; $4fea: $da $67 $f2

	ld a, l                                          ; $4fed: $7d
	inc h                                            ; $4fee: $24
	ld a, a                                          ; $4fef: $7f
	scf                                              ; $4ff0: $37
	ld a, l                                          ; $4ff1: $7d
	add a                                            ; $4ff2: $87
	ld a, [hl]                                       ; $4ff3: $7e
	ld d, d                                          ; $4ff4: $52
	ld l, a                                          ; $4ff5: $6f
	ldh a, [c]                                       ; $4ff6: $f2

jr_048_4ff7:
	sbc h                                            ; $4ff7: $9c
	rst SubAFromBC                                          ; $4ff8: $e7
	jr jr_048_4ff7                                   ; $4ff9: $18 $fc

	ld a, d                                          ; $4ffb: $7a
	sbc [hl]                                         ; $4ffc: $9e
	sbc [hl]                                         ; $4ffd: $9e
	ld d, h                                          ; $4ffe: $54
	ld a, e                                          ; $4fff: $7b
	pop af                                           ; $5000: $f1
	ld e, h                                          ; $5001: $5c
	ld c, [hl]                                       ; $5002: $4e
	sbc h                                            ; $5003: $9c
	xor d                                            ; $5004: $aa
	ld bc, $71aa                                     ; $5005: $01 $aa $71
	ret                                              ; $5008: $c9


	ld [hl], a                                       ; $5009: $77
	cp $7f                                           ; $500a: $fe $7f
	add $9b                                          ; $500c: $c6 $9b
	ld a, [hl+]                                      ; $500e: $2a
	ld bc, $bf55                                     ; $500f: $01 $55 $bf
	ld l, a                                          ; $5012: $6f
	ldh a, [$9e]                                     ; $5013: $f0 $9e
	push af                                          ; $5015: $f5
	ld a, b                                          ; $5016: $78
	jp nz, $f875                                     ; $5017: $c2 $75 $f8

	ld a, l                                          ; $501a: $7d
	xor d                                            ; $501b: $aa
	ld h, a                                          ; $501c: $67
	ldh [rIE], a                                     ; $501d: $e0 $ff
	ld a, b                                          ; $501f: $78
	reti                                             ; $5020: $d9


	ld a, l                                          ; $5021: $7d
	sbc d                                            ; $5022: $9a
	sbc [hl]                                         ; $5023: $9e
	cp $77                                           ; $5024: $fe $77
	ldh a, [$9d]                                     ; $5026: $f0 $9d
	rst GetHLinHL                                          ; $5028: $cf
	jr nc, jr_048_50a0                               ; $5029: $30 $75

	db $e3                                           ; $502b: $e3

jr_048_502c:
	ld a, l                                          ; $502c: $7d
	ld [$039a], a                                    ; $502d: $ea $9a $03
	db $fc                                           ; $5030: $fc
	ld a, a                                          ; $5031: $7f
	add b                                            ; $5032: $80
	and b                                            ; $5033: $a0
	sbc $ff                                          ; $5034: $de $ff
	sbc l                                            ; $5036: $9d
	db $fd                                           ; $5037: $fd
	ld [bc], a                                       ; $5038: $02
	ld l, l                                          ; $5039: $6d
	ret                                              ; $503a: $c9


	ld a, c                                          ; $503b: $79
	ret z                                            ; $503c: $c8

	sbc [hl]                                         ; $503d: $9e
	ld bc, $a173                                     ; $503e: $01 $73 $a1
	ld hl, sp+$7f                                    ; $5041: $f8 $7f
	add d                                            ; $5043: $82
	ld e, a                                          ; $5044: $5f
	db $10                                           ; $5045: $10
	ld h, a                                          ; $5046: $67
	inc e                                            ; $5047: $1c
	ld a, a                                          ; $5048: $7f
	jr c, jr_048_50b1                                ; $5049: $38 $66

	ld [$f477], sp                                   ; $504b: $08 $77 $f4
	sbc [hl]                                         ; $504e: $9e
	cp a                                             ; $504f: $bf
	ld e, e                                          ; $5050: $5b
	db $10                                           ; $5051: $10
	ld [hl], a                                       ; $5052: $77
	inc l                                            ; $5053: $2c
	ld a, a                                          ; $5054: $7f
	ld e, h                                          ; $5055: $5c
	ld a, a                                          ; $5056: $7f
	ld a, b                                          ; $5057: $78
	ld e, a                                          ; $5058: $5f
	jr nz, @+$7e                                     ; $5059: $20 $7c

	add d                                            ; $505b: $82
	db $fd                                           ; $505c: $fd
	halt                                             ; $505d: $76
	call c, Call_048_6872                            ; $505e: $dc $72 $68
	ld h, c                                          ; $5061: $61
	ld h, b                                          ; $5062: $60
	ld l, a                                          ; $5063: $6f
	ld d, b                                          ; $5064: $50
	ei                                               ; $5065: $fb
	ld a, l                                          ; $5066: $7d
	ld h, $77                                        ; $5067: $26 $77
	ldh a, [c]                                       ; $5069: $f2
	ld h, [hl]                                       ; $506a: $66
	ld c, a                                          ; $506b: $4f
	ld a, a                                          ; $506c: $7f
	ld e, d                                          ; $506d: $5a
	sbc l                                            ; $506e: $9d
	db $fc                                           ; $506f: $fc
	inc bc                                           ; $5070: $03
	ld e, a                                          ; $5071: $5f
	db $e4                                           ; $5072: $e4
	ld a, a                                          ; $5073: $7f
	ret z                                            ; $5074: $c8

	ld a, h                                          ; $5075: $7c
	cp $77                                           ; $5076: $fe $77
	ld l, b                                          ; $5078: $68
	ld h, a                                          ; $5079: $67
	ldh a, [c]                                       ; $507a: $f2
	ld [hl], h                                       ; $507b: $74

Call_048_507c:
	db $fc                                           ; $507c: $fc
	ld h, a                                          ; $507d: $67
	ldh a, [$7d]                                     ; $507e: $f0 $7d
	ld b, d                                          ; $5080: $42
	ld a, e                                          ; $5081: $7b
	ld hl, sp+$73                                    ; $5082: $f8 $73
	or l                                             ; $5084: $b5
	ld l, a                                          ; $5085: $6f
	ldh a, [$73]                                     ; $5086: $f0 $73
	ld a, [de]                                       ; $5088: $1a
	ld a, e                                          ; $5089: $7b
	ei                                               ; $508a: $fb
	ld a, a                                          ; $508b: $7f
	ld a, [hl+]                                      ; $508c: $2a
	ld h, a                                          ; $508d: $67
	ldh a, [$7e]                                     ; $508e: $f0 $7e
	ret nz                                           ; $5090: $c0

	ld l, a                                          ; $5091: $6f
	ldh [c], a                                       ; $5092: $e2
	ld [hl], a                                       ; $5093: $77
	ldh a, [$7f]                                     ; $5094: $f0 $7f
	jp nc, $247f                                     ; $5096: $d2 $7f $24

	ld h, a                                          ; $5099: $67
	jp nc, $067f                                     ; $509a: $d2 $7f $06

	ld [hl], a                                       ; $509d: $77
	ldh [c], a                                       ; $509e: $e2
	ld h, [hl]                                       ; $509f: $66

jr_048_50a0:
	sbc c                                            ; $50a0: $99
	ld a, [hl]                                       ; $50a1: $7e
	ld [hl], b                                       ; $50a2: $70
	ld [hl], a                                       ; $50a3: $77
	di                                               ; $50a4: $f3
	ld h, a                                          ; $50a5: $67
	ldh [c], a                                       ; $50a6: $e2
	ld h, a                                          ; $50a7: $67
	or b                                             ; $50a8: $b0
	ld a, [hl]                                       ; $50a9: $7e
	add [hl]                                         ; $50aa: $86
	ld e, a                                          ; $50ab: $5f
	sbc $7b                                          ; $50ac: $de $7b
	cp b                                             ; $50ae: $b8
	ld [hl], e                                       ; $50af: $73
	or b                                             ; $50b0: $b0

jr_048_50b1:
	ld e, a                                          ; $50b1: $5f
	sbc $6f                                          ; $50b2: $de $6f
	ldh a, [$9e]                                     ; $50b4: $f0 $9e
	rlca                                             ; $50b6: $07
	ld [hl], a                                       ; $50b7: $77
	db $db                                           ; $50b8: $db
	ld a, e                                          ; $50b9: $7b
	cp $9c                                           ; $50ba: $fe $9c
	ld a, a                                          ; $50bc: $7f
	rst $38                                          ; $50bd: $ff
	ld sp, $de7b                                     ; $50be: $31 $7b $de
	ld a, a                                          ; $50c1: $7f
	ld c, h                                          ; $50c2: $4c
	ld h, a                                          ; $50c3: $67
	sbc $66                                          ; $50c4: $de $66
	add sp, $4f                                      ; $50c6: $e8 $4f
	cp $7c                                           ; $50c8: $fe $7c
	and d                                            ; $50ca: $a2
	ld a, a                                          ; $50cb: $7f
	pop de                                           ; $50cc: $d1
	ld a, [hl]                                       ; $50cd: $7e
	ldh a, [$7e]                                     ; $50ce: $f0 $7e
	db $fc                                           ; $50d0: $fc
	sbc [hl]                                         ; $50d1: $9e
	pop bc                                           ; $50d2: $c1
	ld a, e                                          ; $50d3: $7b
	ld hl, sp+$6f                                    ; $50d4: $f8 $6f
	jr nz, jr_048_5157                               ; $50d6: $20 $7f

	adc l                                            ; $50d8: $8d
	sbc d                                            ; $50d9: $9a
	ld b, $01                                        ; $50da: $06 $01
	db $10                                           ; $50dc: $10
	rrca                                             ; $50dd: $0f
	cpl                                              ; $50de: $2f
	ld a, e                                          ; $50df: $7b
	ld [hl], d                                       ; $50e0: $72
	ld l, a                                          ; $50e1: $6f
	ld b, $73                                        ; $50e2: $06 $73
	ret c                                            ; $50e4: $d8

	sbc h                                            ; $50e5: $9c
	ld b, $ff                                        ; $50e6: $06 $ff
	ld b, b                                          ; $50e8: $40
	ld h, [hl]                                       ; $50e9: $66
	db $ec                                           ; $50ea: $ec
	ld l, l                                          ; $50eb: $6d
	jp nc, Jump_048_527f                             ; $50ec: $d2 $7f $52

	ld a, a                                          ; $50ef: $7f
	rst SubAFromDE                                          ; $50f0: $df
	ld h, a                                          ; $50f1: $67
	ldh a, [c]                                       ; $50f2: $f2
	halt                                             ; $50f3: $76
	ldh a, [c]                                       ; $50f4: $f2
	sbc l                                            ; $50f5: $9d
	ld bc, $67fe                                     ; $50f6: $01 $fe $67
	and $77                                          ; $50f9: $e6 $77
	db $f4                                           ; $50fb: $f4
	sbc e                                            ; $50fc: $9b
	cp a                                             ; $50fd: $bf
	ld b, b                                          ; $50fe: $40
	ld a, a                                          ; $50ff: $7f
	add b                                            ; $5100: $80
	ld l, a                                          ; $5101: $6f
	ldh a, [$7f]                                     ; $5102: $f0 $7f
	ld [hl], d                                       ; $5104: $72
	sbc l                                            ; $5105: $9d
	ccf                                              ; $5106: $3f
	ret nz                                           ; $5107: $c0

	ld b, a                                          ; $5108: $47
	adc h                                            ; $5109: $8c
	rrca                                             ; $510a: $0f
	cp $92                                           ; $510b: $fe $92
	rst FarCall                                          ; $510d: $f7
	ld c, $e9                                        ; $510e: $0e $e9
	rra                                              ; $5110: $1f
	ldh a, [rAUD3LOW]                                ; $5111: $f0 $1d
	pop hl                                           ; $5113: $e1
	ld a, [hl-]                                      ; $5114: $3a
	ei                                               ; $5115: $fb
	inc bc                                           ; $5116: $03
	rst $38                                          ; $5117: $ff
	rlca                                             ; $5118: $07
	cp $7b                                           ; $5119: $fe $7b
	cp $77                                           ; $511b: $fe $77
	ld a, [$fd9b]                                    ; $511d: $fa $9b $fd
	rlca                                             ; $5120: $07
	rst SubAFromDE                                          ; $5121: $df
	ld a, $75                                        ; $5122: $3e $75
	call c, $a393                                    ; $5124: $dc $93 $a3
	db $fd                                           ; $5127: $fd
	ld d, a                                          ; $5128: $57
	xor e                                            ; $5129: $ab
	xor a                                            ; $512a: $af
	ld d, e                                          ; $512b: $53
	ld d, h                                          ; $512c: $54
	xor e                                            ; $512d: $ab
	xor b                                            ; $512e: $a8
	ld d, h                                          ; $512f: $54
	ld d, b                                          ; $5130: $50
	xor b                                            ; $5131: $a8
	ld [hl], a                                       ; $5132: $77
	ldh a, [hDisp0_OBP1]                                     ; $5133: $f0 $87
	ldh [$df], a                                     ; $5135: $e0 $df
	or l                                             ; $5137: $b5
	jp z, $952a                                      ; $5138: $ca $2a $95

	ld d, l                                          ; $513b: $55
	ld a, [hl+]                                      ; $513c: $2a
	ld a, [hl-]                                      ; $513d: $3a
	push bc                                          ; $513e: $c5
	dec d                                            ; $513f: $15
	ld l, d                                          ; $5140: $6a
	or $fb                                           ; $5141: $f6 $fb
	db $e3                                           ; $5143: $e3
	db $fd                                           ; $5144: $fd
	add hl, hl                                       ; $5145: $29
	rst $38                                          ; $5146: $ff
	dec b                                            ; $5147: $05
	rst $38                                          ; $5148: $ff
	adc c                                            ; $5149: $89
	ld a, a                                          ; $514a: $7f
	ld h, l                                          ; $514b: $65
	cp a                                             ; $514c: $bf
	ld [hl], a                                       ; $514d: $77
	db $fc                                           ; $514e: $fc
	ld a, d                                          ; $514f: $7a
	adc $de                                          ; $5150: $ce $de
	rst $38                                          ; $5152: $ff
	ld a, [hl]                                       ; $5153: $7e
	adc c                                            ; $5154: $89
	sbc d                                            ; $5155: $9a
	inc b                                            ; $5156: $04

jr_048_5157:
	rst $38                                          ; $5157: $ff
	rst JumpTable                                          ; $5158: $c7
	ccf                                              ; $5159: $3f
	db $fc                                           ; $515a: $fc
	ld a, e                                          ; $515b: $7b
	ld hl, sp+$6f                                    ; $515c: $f8 $6f
	ldh a, [$9e]                                     ; $515e: $f0 $9e
	rrca                                             ; $5160: $0f
	ld a, e                                          ; $5161: $7b
	cp $9e                                           ; $5162: $fe $9e
	ld hl, sp+$7b                                    ; $5164: $f8 $7b
	db $fc                                           ; $5166: $fc
	ld a, [hl]                                       ; $5167: $7e
	ldh [c], a                                       ; $5168: $e2
	adc h                                            ; $5169: $8c
	jp z, $ed15                                      ; $516a: $ca $15 $ed

	jp nz, $cfe0                                     ; $516d: $c2 $e0 $cf

	ldh [$cf], a                                     ; $5170: $e0 $cf
	db $e4                                           ; $5172: $e4
	rst GetHLinHL                                          ; $5173: $cf
	ldh [rVBK], a                                    ; $5174: $e0 $4f
	db $e4                                           ; $5176: $e4
	rst GetHLinHL                                          ; $5177: $cf
	and $cf                                          ; $5178: $e6 $cf
	xor d                                            ; $517a: $aa
	ld d, l                                          ; $517b: $55
	ld d, l                                          ; $517c: $55
	ld a, b                                          ; $517d: $78
	ld d, l                                          ; $517e: $55
	sub l                                            ; $517f: $95
	ld [$04f1], sp                                   ; $5180: $08 $f1 $04
	or $12                                           ; $5183: $f6 $12
	ld hl, sp+$30                                    ; $5185: $f8 $30
	ld a, [$e976]                                    ; $5187: $fa $76 $e9
	ld a, c                                          ; $518a: $79
	ld e, b                                          ; $518b: $58
	sub e                                            ; $518c: $93
	xor d                                            ; $518d: $aa
	ld a, [bc]                                       ; $518e: $0a
	push af                                          ; $518f: $f5
	nop                                              ; $5190: $00
	rst $38                                          ; $5191: $ff
	add b                                            ; $5192: $80
	ld a, a                                          ; $5193: $7f
	call nz, $227f                                   ; $5194: $c4 $7f $22
	ld a, a                                          ; $5197: $7f
	ld b, l                                          ; $5198: $45
	ld l, c                                          ; $5199: $69
	jr nc, jr_048_5214                               ; $519a: $30 $78

	sbc [hl]                                         ; $519c: $9e
	sbc e                                            ; $519d: $9b
	ld hl, sp-$05                                    ; $519e: $f8 $fb
	ld hl, sp+$07                                    ; $51a0: $f8 $07
	ld a, e                                          ; $51a2: $7b
	cp $9e                                           ; $51a3: $fe $9e
	add [hl]                                         ; $51a5: $86
	ld a, d                                          ; $51a6: $7a
	ldh a, [hDisp1_OBP0]                                     ; $51a7: $f0 $93
	ld a, [hl]                                       ; $51a9: $7e
	ld bc, $03fc                                     ; $51aa: $01 $fc $03
	ld hl, sp+$07                                    ; $51ad: $f8 $07
	ret c                                            ; $51af: $d8

	daa                                              ; $51b0: $27
	sbc a                                            ; $51b1: $9f
	ld h, a                                          ; $51b2: $67
	dec a                                            ; $51b3: $3d
	jp nz, $b26d                                     ; $51b4: $c2 $6d $b2

	ld a, [hl]                                       ; $51b7: $7e
	ld c, [hl]                                       ; $51b8: $4e
	ld a, [hl]                                       ; $51b9: $7e
	ld l, b                                          ; $51ba: $68
	ld a, [hl]                                       ; $51bb: $7e
	ldh a, [$9b]                                     ; $51bc: $f0 $9b
	rst $38                                          ; $51be: $ff
	cp $00                                           ; $51bf: $fe $00
	ld a, $76                                        ; $51c1: $3e $76
	db $f4                                           ; $51c3: $f4
	halt                                             ; $51c4: $76
	and $6f                                          ; $51c5: $e6 $6f
	cp $9d                                           ; $51c7: $fe $9d
	add b                                            ; $51c9: $80
	ld a, [hl]                                       ; $51ca: $7e
	ld l, a                                          ; $51cb: $6f
	ld hl, sp+$7e                                    ; $51cc: $f8 $7e
	db $e4                                           ; $51ce: $e4
	ld [hl], a                                       ; $51cf: $77
	cp $7f                                           ; $51d0: $fe $7f
	ld hl, sp-$69                                    ; $51d2: $f8 $97
	ld b, b                                          ; $51d4: $40
	ccf                                              ; $51d5: $3f
	dec bc                                           ; $51d6: $0b
	db $f4                                           ; $51d7: $f4
	ld e, a                                          ; $51d8: $5f
	and b                                            ; $51d9: $a0
	cp a                                             ; $51da: $bf
	ld b, b                                          ; $51db: $40
	ld l, e                                          ; $51dc: $6b
	pop hl                                           ; $51dd: $e1
	sbc h                                            ; $51de: $9c
	ld [hl], b                                       ; $51df: $70
	adc d                                            ; $51e0: $8a
	call $fc56                                       ; $51e1: $cd $56 $fc
	ld a, h                                          ; $51e4: $7c
	sub $7f                                          ; $51e5: $d6 $7f
	ld [hl], d                                       ; $51e7: $72
	ld e, a                                          ; $51e8: $5f
	ldh a, [c]                                       ; $51e9: $f2
	sbc c                                            ; $51ea: $99
	ld [$5515], a                                    ; $51eb: $ea $15 $55
	xor d                                            ; $51ee: $aa
	xor b                                            ; $51ef: $a8
	ld d, a                                          ; $51f0: $57
	ld h, a                                          ; $51f1: $67
	ldh a, [c]                                       ; $51f2: $f2
	sbc d                                            ; $51f3: $9a
	push de                                          ; $51f4: $d5
	ld a, [hl+]                                      ; $51f5: $2a
	xor d                                            ; $51f6: $aa
	ld d, l                                          ; $51f7: $55
	ld b, b                                          ; $51f8: $40
	ld [hl], a                                       ; $51f9: $77
	ld [hl+], a                                      ; $51fa: $22
	ld [hl], e                                       ; $51fb: $73
	ldh a, [c]                                       ; $51fc: $f2
	ld l, a                                          ; $51fd: $6f
	ld c, d                                          ; $51fe: $4a
	ld [hl], a                                       ; $51ff: $77
	cp $80                                           ; $5200: $fe $80
	db $d3                                           ; $5202: $d3
	ld a, h                                          ; $5203: $7c
	xor l                                            ; $5204: $ad
	or $54                                           ; $5205: $f6 $54
	di                                               ; $5207: $f3
	jr nz, @+$55                                     ; $5208: $20 $53

	inc b                                            ; $520a: $04
	inc hl                                           ; $520b: $23
	nop                                              ; $520c: $00
	daa                                              ; $520d: $27
	ld [$0227], sp                                   ; $520e: $08 $27 $02
	db $ed                                           ; $5211: $ed
	or a                                             ; $5212: $b7
	ld a, l                                          ; $5213: $7d

jr_048_5214:
	daa                                              ; $5214: $27
	and $0b                                          ; $5215: $e6 $0b
	push af                                          ; $5217: $f5
	ccf                                              ; $5218: $3f
	xor $f7                                          ; $5219: $ee $f7
	ld l, a                                          ; $521b: $6f
	xor e                                            ; $521c: $ab
	and d                                            ; $521d: $a2
	push af                                          ; $521e: $f5
	and l                                            ; $521f: $a5
	rst AddAOntoHL                                          ; $5220: $ef
	add b                                            ; $5221: $80
	ld h, e                                          ; $5222: $63
	and b                                            ; $5223: $a0
	ld d, b                                          ; $5224: $50
	ld d, b                                          ; $5225: $50
	and b                                            ; $5226: $a0
	add b                                            ; $5227: $80
	ld h, b                                          ; $5228: $60
	or b                                             ; $5229: $b0
	ld b, b                                          ; $522a: $40
	and b                                            ; $522b: $a0
	ld d, b                                          ; $522c: $50
	ld a, $d0                                        ; $522d: $3e $d0
	xor e                                            ; $522f: $ab
	ld e, a                                          ; $5230: $5f
	ret nc                                           ; $5231: $d0

	xor a                                            ; $5232: $af
	ld e, d                                          ; $5233: $5a
	dec h                                            ; $5234: $25
	sbc l                                            ; $5235: $9d
	ld [hl+], a                                      ; $5236: $22
	cp d                                             ; $5237: $ba
	dec b                                            ; $5238: $05
	xor l                                            ; $5239: $ad
	ld [de], a                                       ; $523a: $12
	ld c, $91                                        ; $523b: $0e $91
	ld c, l                                          ; $523d: $4d
	sub d                                            ; $523e: $92
	adc $91                                          ; $523f: $ce $91
	sub a                                            ; $5241: $97
	db $fd                                           ; $5242: $fd
	sub d                                            ; $5243: $92
	adc c                                            ; $5244: $89
	ld a, a                                          ; $5245: $7f
	ld b, l                                          ; $5246: $45
	cp a                                             ; $5247: $bf
	xor c                                            ; $5248: $a9
	ld d, a                                          ; $5249: $57
	ld h, a                                          ; $524a: $67
	db $fc                                           ; $524b: $fc
	sbc l                                            ; $524c: $9d
	ld b, a                                          ; $524d: $47
	cp h                                             ; $524e: $bc
	db $db                                           ; $524f: $db
	rst $38                                          ; $5250: $ff
	sbc h                                            ; $5251: $9c
	ld a, [$d5ff]                                    ; $5252: $fa $ff $d5
	ld a, b                                          ; $5255: $78
	ld d, d                                          ; $5256: $52
	sbc [hl]                                         ; $5257: $9e
	ld d, h                                          ; $5258: $54
	ld a, e                                          ; $5259: $7b
	sub d                                            ; $525a: $92
	sbc h                                            ; $525b: $9c
	jp $c7ff                                         ; $525c: $c3 $ff $c7


	sbc $ff                                          ; $525f: $de $ff
	adc e                                            ; $5261: $8b
	cp a                                             ; $5262: $bf
	rst $38                                          ; $5263: $ff
	ld e, a                                          ; $5264: $5f
	rst $38                                          ; $5265: $ff
	xor e                                            ; $5266: $ab
	rst $38                                          ; $5267: $ff
	db $10                                           ; $5268: $10
	rst $38                                          ; $5269: $ff
	ld e, a                                          ; $526a: $5f
	ldh [$ef], a                                     ; $526b: $e0 $ef
	rst JumpTable                                          ; $526d: $c7
	rst AddAOntoHL                                          ; $526e: $ef
	rst JumpTable                                          ; $526f: $c7
	rst $38                                          ; $5270: $ff
	rst SubAFromDE                                          ; $5271: $df
	rst FarCall                                          ; $5272: $f7
	ret nz                                           ; $5273: $c0

	rst SubAFromBC                                          ; $5274: $e7
	ret z                                            ; $5275: $c8

	ld a, e                                          ; $5276: $7b
	ld hl, sp+$7f                                    ; $5277: $f8 $7f
	cp $85                                           ; $5279: $fe $85
	rlca                                             ; $527b: $07
	call nz, $c0c6                                   ; $527c: $c4 $c6 $c0

Jump_048_527f:
	add b                                            ; $527f: $80
	ldh [$80], a                                     ; $5280: $e0 $80
	inc [hl]                                         ; $5282: $34
	ld hl, $30ff                                     ; $5283: $21 $ff $30
	push hl                                          ; $5286: $e5
	rst $38                                          ; $5287: $ff
	ret z                                            ; $5288: $c8

	rst FarCall                                          ; $5289: $f7
	add $fd                                          ; $528a: $c6 $fd
	ld a, [hl+]                                      ; $528c: $2a
	ccf                                              ; $528d: $3f
	dec d                                            ; $528e: $15
	ccf                                              ; $528f: $3f
	ld a, [hl+]                                      ; $5290: $2a
	rst SubAFromDE                                          ; $5291: $df
	rst $38                                          ; $5292: $ff
	ccf                                              ; $5293: $3f
	ld a, a                                          ; $5294: $7f
	ld a, e                                          ; $5295: $7b
	cp $93                                           ; $5296: $fe $93
	cp a                                             ; $5298: $bf
	ccf                                              ; $5299: $3f
	rst $38                                          ; $529a: $ff
	sbc a                                            ; $529b: $9f
	nop                                              ; $529c: $00
	ld hl, sp+$01                                    ; $529d: $f8 $01
	ld hl, sp+$04                                    ; $529f: $f8 $04
	ld hl, sp+$02                                    ; $52a1: $f8 $02
	db $fc                                           ; $52a3: $fc
	ld l, a                                          ; $52a4: $6f
	ld d, d                                          ; $52a5: $52
	sub c                                            ; $52a6: $91
	ret nz                                           ; $52a7: $c0

	ld a, a                                          ; $52a8: $7f
	add h                                            ; $52a9: $84
	inc bc                                           ; $52aa: $03
	sbc b                                            ; $52ab: $98
	rlca                                             ; $52ac: $07
	db $10                                           ; $52ad: $10
	rrca                                             ; $52ae: $0f
	add b                                            ; $52af: $80
	ccf                                              ; $52b0: $3f
	ld [hl], b                                       ; $52b1: $70
	adc a                                            ; $52b2: $8f
	nop                                              ; $52b3: $00
	ld sp, hl                                        ; $52b4: $f9
	ld a, c                                          ; $52b5: $79
	ld a, c                                          ; $52b6: $79
	ld a, d                                          ; $52b7: $7a
	sbc b                                            ; $52b8: $98
	ld h, a                                          ; $52b9: $67
	rrca                                             ; $52ba: $0f
	sub [hl]                                         ; $52bb: $96
	inc c                                            ; $52bc: $0c
	rst $38                                          ; $52bd: $ff

jr_048_52be:
	ld [bc], a                                       ; $52be: $02
	ccf                                              ; $52bf: $3f
	nop                                              ; $52c0: $00
	add e                                            ; $52c1: $83
	ld bc, $02fe                                     ; $52c2: $01 $fe $02
	ld a, c                                          ; $52c5: $79
	adc c                                            ; $52c6: $89
	add b                                            ; $52c7: $80
	inc c                                            ; $52c8: $0c
	db $fc                                           ; $52c9: $fc
	inc e                                            ; $52ca: $1c
	ld sp, hl                                        ; $52cb: $f9
	jr c, jr_048_52be                                ; $52cc: $38 $f0

	ldh a, [$e0]                                     ; $52ce: $f0 $e0
	ld l, b                                          ; $52d0: $68
	ret nz                                           ; $52d1: $c0

	ld h, b                                          ; $52d2: $60
	cp a                                             ; $52d3: $bf
	inc sp                                           ; $52d4: $33
	ccf                                              ; $52d5: $3f
	ld l, a                                          ; $52d6: $6f
	ccf                                              ; $52d7: $3f
	db $fd                                           ; $52d8: $fd
	cp $f3                                           ; $52d9: $fe $f3
	ld sp, hl                                        ; $52db: $f9
	reti                                             ; $52dc: $d9


	ld [hl], b                                       ; $52dd: $70
	db $f4                                           ; $52de: $f4
	ld l, b                                          ; $52df: $68
	db $f4                                           ; $52e0: $f4
	ld h, [hl]                                       ; $52e1: $66
	dec c                                            ; $52e2: $0d
	sbc d                                            ; $52e3: $9a
	ret z                                            ; $52e4: $c8

	adc a                                            ; $52e5: $8f
	sbc b                                            ; $52e6: $98
	add h                                            ; $52e7: $84
	rst SubAFromDE                                          ; $52e8: $df
	inc e                                            ; $52e9: $1c
	daa                                              ; $52ea: $27
	sbc l                                            ; $52eb: $9d
	rlca                                             ; $52ec: $07
	ld [hl], e                                       ; $52ed: $73
	add a                                            ; $52ee: $87
	rst SubAFromBC                                          ; $52ef: $e7
	ld l, d                                          ; $52f0: $6a
	or d                                             ; $52f1: $b2
	dec c                                            ; $52f2: $0d
	ld d, l                                          ; $52f3: $55
	xor d                                            ; $52f4: $aa
	ld h, b                                          ; $52f5: $60
	rst $38                                          ; $52f6: $ff
	ldh a, [$1f]                                     ; $52f7: $f0 $1f
	ld [hl], b                                       ; $52f9: $70
	ld e, a                                          ; $52fa: $5f
	jr @+$31                                         ; $52fb: $18 $2f

	adc b                                            ; $52fd: $88
	sbc a                                            ; $52fe: $9f
	sbc l                                            ; $52ff: $9d
	rst SubAFromDE                                          ; $5300: $df
	scf                                              ; $5301: $37
	adc a                                            ; $5302: $8f
	ld e, [hl]                                       ; $5303: $5e
	or c                                             ; $5304: $b1
	sbc h                                            ; $5305: $9c
	add d                                            ; $5306: $82
	rst $38                                          ; $5307: $ff
	ld d, l                                          ; $5308: $55
	sbc $ff                                          ; $5309: $de $ff
	ld h, a                                          ; $530b: $67
	ldh a, [c]                                       ; $530c: $f2
	ld a, l                                          ; $530d: $7d
	sbc $7f                                          ; $530e: $de $7f
	jr nc, @+$79                                     ; $5310: $30 $77

	ldh a, [$7a]                                     ; $5312: $f0 $7a
	ld a, d                                          ; $5314: $7a
	add b                                            ; $5315: $80
	cp $14                                           ; $5316: $fe $14
	cp $aa                                           ; $5318: $fe $aa
	rst $38                                          ; $531a: $ff
	ld d, a                                          ; $531b: $57
	rst $38                                          ; $531c: $ff
	xor a                                            ; $531d: $af
	rst $38                                          ; $531e: $ff
	cp $fe                                           ; $531f: $fe $fe
	db $fc                                           ; $5321: $fc
	ld hl, sp-$76                                    ; $5322: $f8 $8a
	sbc l                                            ; $5324: $9d
	rla                                              ; $5325: $17
	inc de                                           ; $5326: $13
	ld c, $0c                                        ; $5327: $0e $0c
	dec sp                                           ; $5329: $3b
	db $10                                           ; $532a: $10
	and $61                                          ; $532b: $e6 $61
	sbc a                                            ; $532d: $9f
	add [hl]                                         ; $532e: $86
	ld a, a                                          ; $532f: $7f
	rra                                              ; $5330: $1f
	rst $38                                          ; $5331: $ff
	ld h, a                                          ; $5332: $67
	rst $38                                          ; $5333: $ff
	jr nz, @-$70                                     ; $5334: $20 $8e

	jr nz, @-$1f                                     ; $5336: $20 $df

	nop                                              ; $5338: $00
	nop                                              ; $5339: $00
	ld c, b                                          ; $533a: $48
	rst GetHLinHL                                          ; $533b: $cf
	jr c, @+$01                                      ; $533c: $38 $ff

	inc h                                            ; $533e: $24
	rst FarCall                                          ; $533f: $f7
	cp e                                             ; $5340: $bb
	ld [hl], b                                       ; $5341: $70
	ld sp, hl                                        ; $5342: $f9
	ld a, [hl+]                                      ; $5343: $2a
	ld [hl], b                                       ; $5344: $70
	ld c, a                                          ; $5345: $4f
	ccf                                              ; $5346: $3f
	halt                                             ; $5347: $76
	ld bc, $ff83                                     ; $5348: $01 $83 $ff
	dec c                                            ; $534b: $0d
	cpl                                              ; $534c: $2f
	add l                                            ; $534d: $85
	ld a, a                                          ; $534e: $7f
	adc e                                            ; $534f: $8b
	ld a, a                                          ; $5350: $7f
	sbc e                                            ; $5351: $9b
	ld a, a                                          ; $5352: $7f
	adc $91                                          ; $5353: $ce $91
	db $dd                                           ; $5355: $dd
	ldh [c], a                                       ; $5356: $e2
	nop                                              ; $5357: $00
	nop                                              ; $5358: $00
	ld a, [hl]                                       ; $5359: $7e
	add c                                            ; $535a: $81
	add b                                            ; $535b: $80
	rst $38                                          ; $535c: $ff
	cp a                                             ; $535d: $bf
	ret nz                                           ; $535e: $c0

	cp [hl]                                          ; $535f: $be
	rst $38                                          ; $5360: $ff
	rst $38                                          ; $5361: $ff
	add c                                            ; $5362: $81
	xor a                                            ; $5363: $af
	ld d, a                                          ; $5364: $57
	ld b, e                                          ; $5365: $43
	ld a, e                                          ; $5366: $7b
	ldh [hDisp1_BGP], a                                     ; $5367: $e0 $92
	db $ed                                           ; $5369: $ed
	ld d, [hl]                                       ; $536a: $56
	rlca                                             ; $536b: $07
	rst $38                                          ; $536c: $ff
	adc a                                            ; $536d: $8f
	ld [hl], a                                       ; $536e: $77
	rst GetHLinHL                                          ; $536f: $cf
	ld [hl], a                                       ; $5370: $77
	add a                                            ; $5371: $87
	ld a, a                                          ; $5372: $7f
	call nc, $a0ff                                   ; $5373: $d4 $ff $a0
	ld a, e                                          ; $5376: $7b
	ldh a, [$78]                                     ; $5377: $f0 $78
	ld hl, sp+$7a                                    ; $5379: $f8 $7a
	cp [hl]                                          ; $537b: $be
	sbc [hl]                                         ; $537c: $9e
	ld [$fc7b], a                                    ; $537d: $ea $7b $fc
	ld a, a                                          ; $5380: $7f
	adc a                                            ; $5381: $8f
	ld a, [hl]                                       ; $5382: $7e
	call c, $ab9c                                    ; $5383: $dc $9c $ab
	nop                                              ; $5386: $00
	dec d                                            ; $5387: $15
	sbc $ff                                          ; $5388: $de $ff
	ld a, a                                          ; $538a: $7f
	add d                                            ; $538b: $82
	ld a, [hl]                                       ; $538c: $7e
	cp [hl]                                          ; $538d: $be
	ld a, a                                          ; $538e: $7f
	db $fc                                           ; $538f: $fc
	sbc c                                            ; $5390: $99
	rst FarCall                                          ; $5391: $f7
	rst AddAOntoHL                                          ; $5392: $ef
	rst FarCall                                          ; $5393: $f7
	rst AddAOntoHL                                          ; $5394: $ef
	ret nz                                           ; $5395: $c0

	ccf                                              ; $5396: $3f
	ld [hl], a                                       ; $5397: $77
	ld hl, sp+$7f                                    ; $5398: $f8 $7f
	sub l                                            ; $539a: $95
	ld a, [hl]                                       ; $539b: $7e
	reti                                             ; $539c: $d9


	sbc c                                            ; $539d: $99
	dec sp                                           ; $539e: $3b
	rst $38                                          ; $539f: $ff
	sub [hl]                                         ; $53a0: $96
	db $ed                                           ; $53a1: $ed
	rst $38                                          ; $53a2: $ff
	pop bc                                           ; $53a3: $c1
	ld [hl], l                                       ; $53a4: $75
	ld e, e                                          ; $53a5: $5b
	sub h                                            ; $53a6: $94
	pop hl                                           ; $53a7: $e1
	set 0, e                                         ; $53a8: $cb $c3
	jp hl                                            ; $53aa: $e9


	jp $d9e9                                         ; $53ab: $c3 $e9 $d9


	pop hl                                           ; $53ae: $e1
	rst GetHLinHL                                          ; $53af: $cf
	sbc a                                            ; $53b0: $9f
	rst GetHLinHL                                          ; $53b1: $cf
	ld a, e                                          ; $53b2: $7b
	ld c, e                                          ; $53b3: $4b
	ld a, a                                          ; $53b4: $7f
	cp d                                             ; $53b5: $ba
	ret c                                            ; $53b6: $d8

	rst $38                                          ; $53b7: $ff
	halt                                             ; $53b8: $76
	ld a, c                                          ; $53b9: $79
	ld h, a                                          ; $53ba: $67
	db $fc                                           ; $53bb: $fc
	sbc b                                            ; $53bc: $98
	ld a, [hl+]                                      ; $53bd: $2a
	rst $38                                          ; $53be: $ff
	ld d, h                                          ; $53bf: $54
	ret nz                                           ; $53c0: $c0

	cp a                                             ; $53c1: $bf
	cp $55                                           ; $53c2: $fe $55
	ld [hl], e                                       ; $53c4: $73
	dec [hl]                                         ; $53c5: $35
	ld l, a                                          ; $53c6: $6f
	db $fc                                           ; $53c7: $fc
	sbc c                                            ; $53c8: $99
	ld e, l                                          ; $53c9: $5d
	rrca                                             ; $53ca: $0f
	ldh a, [rP1]                                     ; $53cb: $f0 $00
	rst $38                                          ; $53cd: $ff
	db $fc                                           ; $53ce: $fc
	ld [hl], a                                       ; $53cf: $77
	and a                                            ; $53d0: $a7
	ld l, e                                          ; $53d1: $6b
	db $ec                                           ; $53d2: $ec
	add b                                            ; $53d3: $80
	ld [hl], e                                       ; $53d4: $73
	adc h                                            ; $53d5: $8c
	db $e3                                           ; $53d6: $e3
	ld c, h                                          ; $53d7: $4c
	ld d, a                                          ; $53d8: $57
	and h                                            ; $53d9: $a4
	pop bc                                           ; $53da: $c1
	ld a, $f5                                        ; $53db: $3e $f5
	xor d                                            ; $53dd: $aa
	rst $38                                          ; $53de: $ff
	ld c, a                                          ; $53df: $4f
	rst $38                                          ; $53e0: $ff
	or l                                             ; $53e1: $b5
	rst $38                                          ; $53e2: $ff
	ld d, [hl]                                       ; $53e3: $56
	or b                                             ; $53e4: $b0
	ld [hl], l                                       ; $53e5: $75
	cp b                                             ; $53e6: $b8
	ld a, h                                          ; $53e7: $7c
	or $5f                                           ; $53e8: $f6 $5f
	db $ec                                           ; $53ea: $ec
	ccf                                              ; $53eb: $3f
	call nc, $ac7f                                   ; $53ec: $d4 $7f $ac
	rst $38                                          ; $53ef: $ff
	call c, $ecff                                    ; $53f0: $dc $ff $ec
	adc e                                            ; $53f3: $8b
	rst $38                                          ; $53f4: $ff
	sbc l                                            ; $53f5: $9d
	inc hl                                           ; $53f6: $23
	dec b                                            ; $53f7: $05
	dec bc                                           ; $53f8: $0b
	db $db                                           ; $53f9: $db
	rst SubAFromBC                                          ; $53fa: $e7
	rra                                              ; $53fb: $1f
	rst AddAOntoHL                                          ; $53fc: $ef
	rrca                                             ; $53fd: $0f
	cp $ce                                           ; $53fe: $fe $ce
	db $fd                                           ; $5400: $fd
	adc h                                            ; $5401: $8c
	cp $8e                                           ; $5402: $fe $8e
	cp $47                                           ; $5404: $fe $47
	rst SubAFromDE                                          ; $5406: $df
	rlca                                             ; $5407: $07
	ld a, d                                          ; $5408: $7a
	or $7e                                           ; $5409: $f6 $7e
	ldh a, [c]                                       ; $540b: $f2
	ld a, a                                          ; $540c: $7f
	cp l                                             ; $540d: $bd
	sbc c                                            ; $540e: $99
	ldh a, [c]                                       ; $540f: $f2
	rrca                                             ; $5410: $0f
	ld [$0007], sp                                   ; $5411: $08 $07 $00
	rrca                                             ; $5414: $0f
	rst SubAFromHL                                          ; $5415: $d7
	rst $38                                          ; $5416: $ff
	ld a, a                                          ; $5417: $7f
	xor $9b                                          ; $5418: $ee $9b
	ld b, $fc                                        ; $541a: $06 $fc
	dec de                                           ; $541c: $1b
	pop af                                           ; $541d: $f1
	call c, $8aff                                    ; $541e: $dc $ff $8a
	cp $f4                                           ; $5421: $fe $f4
	ld sp, hl                                        ; $5423: $f9
	pop de                                           ; $5424: $d1
	rst SubAFromBC                                          ; $5425: $e7
	ld b, a                                          ; $5426: $47
	sbc a                                            ; $5427: $9f
	sbc a                                            ; $5428: $9f
	ld a, a                                          ; $5429: $7f
	ld a, [hl+]                                      ; $542a: $2a
	rst $38                                          ; $542b: $ff
	rst FarCall                                          ; $542c: $f7
	pop hl                                           ; $542d: $e1
	sbc $86                                          ; $542e: $de $86
	ld a, [hl]                                       ; $5430: $7e
	inc e                                            ; $5431: $1c
	ld a, h                                          ; $5432: $7c
	ld hl, sp-$04                                    ; $5433: $f8 $fc
	ld sp, hl                                        ; $5435: $f9
	jp c, $98ff                                      ; $5436: $da $ff $98

	rst FarCall                                          ; $5439: $f7
	ld a, a                                          ; $543a: $7f
	ld c, a                                          ; $543b: $4f
	rst GetHLinHL                                          ; $543c: $cf
	ld b, a                                          ; $543d: $47
	rst GetHLinHL                                          ; $543e: $cf
	rst GetHLinHL                                          ; $543f: $cf
	ld a, e                                          ; $5440: $7b
	inc sp                                           ; $5441: $33
	rst SubAFromDE                                          ; $5442: $df
	rst $38                                          ; $5443: $ff
	sub d                                            ; $5444: $92
	ld hl, sp-$20                                    ; $5445: $f8 $e0
	nop                                              ; $5447: $00
	ld [hl], b                                       ; $5448: $70
	db $db                                           ; $5449: $db
	ld [hl], b                                       ; $544a: $70
	cp a                                             ; $544b: $bf
	ld a, l                                          ; $544c: $7d
	ld a, [$fb7e]                                    ; $544d: $fa $7e $fb
	ld a, b                                          ; $5450: $78
	rst $38                                          ; $5451: $ff
	ld a, d                                          ; $5452: $7a
	ret z                                            ; $5453: $c8

	ld a, d                                          ; $5454: $7a
	or $7e                                           ; $5455: $f6 $7e
	adc $7e                                          ; $5457: $ce $7e
	xor e                                            ; $5459: $ab
	ld a, h                                          ; $545a: $7c
	adc c                                            ; $545b: $89
	sbc b                                            ; $545c: $98
	sbc l                                            ; $545d: $9d
	ld a, e                                          ; $545e: $7b
	db $db                                           ; $545f: $db
	or e                                             ; $5460: $b3
	ld [hl], a                                       ; $5461: $77
	sbc e                                            ; $5462: $9b
	xor d                                            ; $5463: $aa
	ld a, e                                          ; $5464: $7b
	ldh a, [$80]                                     ; $5465: $f0 $80
	cp a                                             ; $5467: $bf
	add c                                            ; $5468: $81
	cp $3f                                           ; $5469: $fe $3f
	and d                                            ; $546b: $a2
	dec e                                            ; $546c: $1d
	ret nz                                           ; $546d: $c0

	rra                                              ; $546e: $1f
	xor d                                            ; $546f: $aa
	add b                                            ; $5470: $80
	ret nc                                           ; $5471: $d0

	xor a                                            ; $5472: $af
	xor a                                            ; $5473: $af
	ldh a, [rIE]                                     ; $5474: $f0 $ff
	nop                                              ; $5476: $00
	ld e, e                                          ; $5477: $5b
	ld b, a                                          ; $5478: $47
	db $f4                                           ; $5479: $f4
	ld e, a                                          ; $547a: $5f
	ld e, h                                          ; $547b: $5c
	ld c, a                                          ; $547c: $4f
	ret                                              ; $547d: $c9


	ld d, a                                          ; $547e: $57
	add hl, hl                                       ; $547f: $29
	ld a, [de]                                       ; $5480: $1a
	jp z, $ae3c                                      ; $5481: $ca $3c $ae

	ld d, l                                          ; $5484: $55
	adc c                                            ; $5485: $89
	sbc [hl]                                         ; $5486: $9e
	ld h, d                                          ; $5487: $62
	ld [hl], a                                       ; $5488: $77
	add hl, de                                       ; $5489: $19
	sbc d                                            ; $548a: $9a
	add sp, -$01                                     ; $548b: $e8 $ff
	add b                                            ; $548d: $80
	ccf                                              ; $548e: $3f
	ld b, b                                          ; $548f: $40
	ld a, b                                          ; $5490: $78
	cp h                                             ; $5491: $bc

jr_048_5492:
	sbc d                                            ; $5492: $9a
	rst AddAOntoHL                                          ; $5493: $ef
	ld a, a                                          ; $5494: $7f
	or b                                             ; $5495: $b0
	ld b, b                                          ; $5496: $40
	add c                                            ; $5497: $81
	ld a, d                                          ; $5498: $7a
	cp a                                             ; $5499: $bf
	halt                                             ; $549a: $76
	ld b, d                                          ; $549b: $42
	add b                                            ; $549c: $80
	ld [$08f8], sp                                   ; $549d: $08 $f8 $08
	ldh a, [$e4]                                     ; $54a0: $f0 $e4
	ldh a, [rAUD1HIGH]                               ; $54a2: $f0 $14
	ld h, b                                          ; $54a4: $60
	dec de                                           ; $54a5: $1b
	rst $38                                          ; $54a6: $ff
	or a                                             ; $54a7: $b7
	rst $38                                          ; $54a8: $ff
	rst AddAOntoHL                                          ; $54a9: $ef
	rst $38                                          ; $54aa: $ff
	ld e, e                                          ; $54ab: $5b
	and a                                            ; $54ac: $a7
	ld bc, $0203                                     ; $54ad: $01 $03 $02
	dec b                                            ; $54b0: $05
	ld l, $01                                        ; $54b1: $2e $01
	ld d, [hl]                                       ; $54b3: $56
	add hl, bc                                       ; $54b4: $09
	jp hl                                            ; $54b5: $e9


	db $f4                                           ; $54b6: $f4
	rst AddAOntoHL                                          ; $54b7: $ef
	db $f4                                           ; $54b8: $f4
	or $ff                                           ; $54b9: $f6 $ff
	db $f4                                           ; $54bb: $f4
	sbc b                                            ; $54bc: $98
	and $ec                                          ; $54bd: $e6 $ec
	add $9f                                          ; $54bf: $c6 $9f
	and $01                                          ; $54c1: $e6 $01
	add b                                            ; $54c3: $80
	halt                                             ; $54c4: $76
	or [hl]                                          ; $54c5: $b6
	ld a, e                                          ; $54c6: $7b
	sub c                                            ; $54c7: $91
	ld a, e                                          ; $54c8: $7b
	db $fd                                           ; $54c9: $fd
	sbc $7f                                          ; $54ca: $de $7f
	sbc l                                            ; $54cc: $9d
	cp a                                             ; $54cd: $bf
	ld d, l                                          ; $54ce: $55
	halt                                             ; $54cf: $76
	rlca                                             ; $54d0: $07
	ld a, d                                          ; $54d1: $7a
	call z, $fc77                                    ; $54d2: $cc $77 $fc
	ld h, h                                          ; $54d5: $64
	add $76                                          ; $54d6: $c6 $76
	call z, $0f7b                                    ; $54d8: $cc $7b $0f
	sbc [hl]                                         ; $54db: $9e
	ld e, a                                          ; $54dc: $5f
	ld e, e                                          ; $54dd: $5b
	ldh a, [$dc]                                     ; $54de: $f0 $dc
	rst $38                                          ; $54e0: $ff
	ld h, a                                          ; $54e1: $67
	ldh a, [$9a]                                     ; $54e2: $f0 $9a
	db $fd                                           ; $54e4: $fd
	xor a                                            ; $54e5: $af
	cp $ff                                           ; $54e6: $fe $ff
	db $fd                                           ; $54e8: $fd
	sbc $ff                                          ; $54e9: $de $ff
	sub a                                            ; $54eb: $97
	inc bc                                           ; $54ec: $03
	rst $38                                          ; $54ed: $ff
	cp $07                                           ; $54ee: $fe $07
	db $f4                                           ; $54f0: $f4
	rrca                                             ; $54f1: $0f
	adc h                                            ; $54f2: $8c
	ld c, a                                          ; $54f3: $4f
	halt                                             ; $54f4: $76
	call z, $d890                                    ; $54f5: $cc $90 $d8
	rst $38                                          ; $54f8: $ff
	cp c                                             ; $54f9: $b9
	rst $38                                          ; $54fa: $ff
	ld sp, hl                                        ; $54fb: $f9
	rlca                                             ; $54fc: $07
	ld d, b                                          ; $54fd: $50
	xor a                                            ; $54fe: $af
	xor c                                            ; $54ff: $a9
	ld e, a                                          ; $5500: $5f
	ld e, c                                          ; $5501: $59
	xor a                                            ; $5502: $af
	call c, $9efe                                    ; $5503: $dc $fe $9e
	ld a, e                                          ; $5506: $7b
	dec d                                            ; $5507: $15
	ld a, h                                          ; $5508: $7c
	ldh a, [$7a]                                     ; $5509: $f0 $7a
	jr nz, jr_048_5492                               ; $550b: $20 $85

	xor e                                            ; $550d: $ab
	db $eb                                           ; $550e: $eb
	push de                                          ; $550f: $d5
	rst SubAFromHL                                          ; $5510: $d7
	ld [$0708], a                                    ; $5511: $ea $08 $07
	adc c                                            ; $5514: $89
	rst $38                                          ; $5515: $ff
	rlca                                             ; $5516: $07
	cp $49                                           ; $5517: $fe $49
	cp [hl]                                          ; $5519: $be
	pop hl                                           ; $551a: $e1
	ld e, $f5                                        ; $551b: $1e $f5
	ld a, [de]                                       ; $551d: $1a
	db $eb                                           ; $551e: $eb
	inc d                                            ; $551f: $14
	push bc                                          ; $5520: $c5
	ld a, [hl-]                                      ; $5521: $3a
	ld l, h                                          ; $5522: $6c
	rst JumpTable                                          ; $5523: $c7
	or b                                             ; $5524: $b0
	rra                                              ; $5525: $1f
	ret nz                                           ; $5526: $c0

	ld a, e                                          ; $5527: $7b
	ld a, a                                          ; $5528: $7f
	ld a, a                                          ; $5529: $7f
	ld [hl], l                                       ; $552a: $75
	sbc c                                            ; $552b: $99
	push de                                          ; $552c: $d5
	xor d                                            ; $552d: $aa
	xor d                                            ; $552e: $aa
	push de                                          ; $552f: $d5
	jp nc, Jump_048_6fac                             ; $5530: $d2 $ac $6f

	sbc e                                            ; $5533: $9b
	add b                                            ; $5534: $80
	cp $f8                                           ; $5535: $fe $f8
	add hl, de                                       ; $5537: $19
	ldh [$64], a                                     ; $5538: $e0 $64
	add e                                            ; $553a: $83
	sub c                                            ; $553b: $91
	ld c, $44                                        ; $553c: $0e $44
	jr c, jr_048_5546                                ; $553e: $38 $06

	ld hl, sp+$32                                    ; $5540: $f8 $32
	pop bc                                           ; $5542: $c1
	ret                                              ; $5543: $c9


	ld b, $44                                        ; $5544: $06 $44

jr_048_5546:
	jr c, jr_048_555b                                ; $5546: $38 $13

	ldh [$cc], a                                     ; $5548: $e0 $cc
	inc bc                                           ; $554a: $03
	jr nz, jr_048_556c                               ; $554b: $20 $1f

	add b                                            ; $554d: $80
	ld a, a                                          ; $554e: $7f
	sbc a                                            ; $554f: $9f
	ld h, b                                          ; $5550: $60
	ld h, l                                          ; $5551: $65
	add a                                            ; $5552: $87
	or b                                             ; $5553: $b0
	sbc l                                            ; $5554: $9d
	rrca                                             ; $5555: $0f
	call nz, $127b                                   ; $5556: $c4 $7b $12
	sbc [hl]                                         ; $5559: $9e
	inc b                                            ; $555a: $04

jr_048_555b:
	ld a, e                                          ; $555b: $7b
	ret c                                            ; $555c: $d8

	ld a, a                                          ; $555d: $7f
	db $fc                                           ; $555e: $fc
	ld a, d                                          ; $555f: $7a
	db $dd                                           ; $5560: $dd

jr_048_5561:
	ld a, c                                          ; $5561: $79
	cp [hl]                                          ; $5562: $be
	sbc [hl]                                         ; $5563: $9e
	ld d, $73                                        ; $5564: $16 $73
	ld a, [bc]                                       ; $5566: $0a
	ld [hl], b                                       ; $5567: $70
	adc $7b                                          ; $5568: $ce $7b
	and $77                                          ; $556a: $e6 $77

jr_048_556c:
	cp $9a                                           ; $556c: $fe $9a
	ld b, b                                          ; $556e: $40
	rst $38                                          ; $556f: $ff
	inc l                                            ; $5570: $2c
	rst $38                                          ; $5571: $ff
	ld [bc], a                                       ; $5572: $02
	ld h, c                                          ; $5573: $61
	ld [hl-], a                                      ; $5574: $32
	ld l, a                                          ; $5575: $6f
	cp $7f                                           ; $5576: $fe $7f
	sbc h                                            ; $5578: $9c
	sub d                                            ; $5579: $92
	ld d, b                                          ; $557a: $50

jr_048_557b:
	rst $38                                          ; $557b: $ff
	ld [bc], a                                       ; $557c: $02
	push af                                          ; $557d: $f5
	add hl, de                                       ; $557e: $19
	pop hl                                           ; $557f: $e1
	ld de, $08e4                                     ; $5580: $11 $e4 $08
	ldh a, [c]                                       ; $5583: $f2
	rrca                                             ; $5584: $0f
	ldh a, [rTAC]                                    ; $5585: $f0 $07
	ld a, e                                          ; $5587: $7b
	call z, $0491                                    ; $5588: $cc $91 $04
	ei                                               ; $558b: $fb
	ret nz                                           ; $558c: $c0

	ccf                                              ; $558d: $3f
	ld l, [hl]                                       ; $558e: $6e
	sbc c                                            ; $558f: $99
	xor b                                            ; $5590: $a8
	add $f0                                          ; $5591: $c6 $f0
	ld h, h                                          ; $5593: $64
	adc l                                            ; $5594: $8d
	ld a, [$fd82]                                    ; $5595: $fa $82 $fd
	ld [hl], h                                       ; $5598: $74
	and d                                            ; $5599: $a2

Jump_048_559a:
	sub h                                            ; $559a: $94
	jr nz, jr_048_5561                               ; $559b: $20 $c4

Jump_048_559d:
	jr z, jr_048_557b                                ; $559d: $28 $dc

	ret c                                            ; $559f: $d8

	inc a                                            ; $55a0: $3c
	ld l, h                                          ; $55a1: $6c
	ld hl, sp-$3c                                    ; $55a2: $f8 $c4
	ld a, a                                          ; $55a4: $7f
	add l                                            ; $55a5: $85
	ld a, e                                          ; $55a6: $7b
	and d                                            ; $55a7: $a2
	ld a, a                                          ; $55a8: $7f
	cp $90                                           ; $55a9: $fe $90
	and [hl]                                         ; $55ab: $a6
	add hl, bc                                       ; $55ac: $09
	ld b, b                                          ; $55ad: $40
	rrca                                             ; $55ae: $0f
	or [hl]                                          ; $55af: $b6
	dec c                                            ; $55b0: $0d
	ld c, [hl]                                       ; $55b1: $4e
	dec a                                            ; $55b2: $3d
	inc [hl]                                         ; $55b3: $34
	rst $38                                          ; $55b4: $ff
	sub [hl]                                         ; $55b5: $96
	db $fd                                           ; $55b6: $fd
	ld d, $fd                                        ; $55b7: $16 $fd
	jp nc, $9073                                     ; $55b9: $d2 $73 $90

	ld e, a                                          ; $55bc: $5f
	cp $7f                                           ; $55bd: $fe $7f
	cp [hl]                                          ; $55bf: $be
	ld e, h                                          ; $55c0: $5c
	ld [hl], b                                       ; $55c1: $70
	ld a, [hl]                                       ; $55c2: $7e
	adc h                                            ; $55c3: $8c
	sbc [hl]                                         ; $55c4: $9e
	jr z, jr_048_5642                                ; $55c5: $28 $7b

	adc d                                            ; $55c7: $8a
	ld [hl], a                                       ; $55c8: $77
	ldh [$75], a                                     ; $55c9: $e0 $75
	and a                                            ; $55cb: $a7
	rst SubAFromDE                                          ; $55cc: $df
	rst $38                                          ; $55cd: $ff
	sbc h                                            ; $55ce: $9c
	db $fc                                           ; $55cf: $fc
	inc bc                                           ; $55d0: $03
	rst $38                                          ; $55d1: $ff
	ld a, b                                          ; $55d2: $78
	ld c, a                                          ; $55d3: $4f
	ld a, a                                          ; $55d4: $7f
	and b                                            ; $55d5: $a0
	ld a, [hl]                                       ; $55d6: $7e
	or e                                             ; $55d7: $b3
	ld l, a                                          ; $55d8: $6f
	ldh a, [$7b]                                     ; $55d9: $f0 $7b
	inc e                                            ; $55db: $1c
	sbc h                                            ; $55dc: $9c
	ld a, a                                          ; $55dd: $7f
	ld hl, sp+$07                                    ; $55de: $f8 $07
	halt                                             ; $55e0: $76
	cp a                                             ; $55e1: $bf
	ld a, a                                          ; $55e2: $7f
	ldh a, [$7e]                                     ; $55e3: $f0 $7e
	xor a                                            ; $55e5: $af
	ld l, [hl]                                       ; $55e6: $6e
	cp h                                             ; $55e7: $bc
	ld a, a                                          ; $55e8: $7f
	cp $9b                                           ; $55e9: $fe $9b
	rla                                              ; $55eb: $17
	ld [$fbb7], a                                    ; $55ec: $ea $b7 $fb
	reti                                             ; $55ef: $d9


	rst $38                                          ; $55f0: $ff
	ld [hl], e                                       ; $55f1: $73
	ld b, $9a                                        ; $55f2: $06 $9a
	inc b                                            ; $55f4: $04
	ldh a, [c]                                       ; $55f5: $f2
	pop hl                                           ; $55f6: $e1
	db $e3                                           ; $55f7: $e3
	rst JumpTable                                          ; $55f8: $c7
	ld e, a                                          ; $55f9: $5f
	ldh a, [$99]                                     ; $55fa: $f0 $99
	ccf                                              ; $55fc: $3f
	ld a, [hl]                                       ; $55fd: $7e
	ld a, $7e                                        ; $55fe: $3e $7e
	db $fc                                           ; $5600: $fc
	cp $6d                                           ; $5601: $fe $6d
	pop bc                                           ; $5603: $c1
	ld [hl], a                                       ; $5604: $77
	ldh a, [hDisp1_OBP1]                                     ; $5605: $f0 $94
	ld e, l                                          ; $5607: $5d
	ld a, $1d                                        ; $5608: $3e $1d
	cp [hl]                                          ; $560a: $be
	sbc l                                            ; $560b: $9d
	cp [hl]                                          ; $560c: $be
	adc h                                            ; $560d: $8c
	sbc [hl]                                         ; $560e: $9e
	sbc l                                            ; $560f: $9d
	cp $fc                                           ; $5610: $fe $fc
	ld [hl], d                                       ; $5612: $72
	cp $8b                                           ; $5613: $fe $8b
	ret                                              ; $5615: $c9


	ldh a, [$a4]                                     ; $5616: $f0 $a4
	jp $8c13                                         ; $5618: $c3 $13 $8c


	ld l, h                                          ; $561b: $6c
	db $10                                           ; $561c: $10
	jp nz, $4831                                     ; $561d: $c2 $31 $48

	add a                                            ; $5620: $87
	ldh [$1f], a                                     ; $5621: $e0 $1f
	ld a, a                                          ; $5623: $7f
	rst $38                                          ; $5624: $ff
	ld [hl-], a                                      ; $5625: $32
	pop bc                                           ; $5626: $c1
	ret z                                            ; $5627: $c8

	rlca                                             ; $5628: $07
	halt                                             ; $5629: $76
	ret c                                            ; $562a: $d8

	ld l, a                                          ; $562b: $6f
	ld l, h                                          ; $562c: $6c
	ld e, h                                          ; $562d: $5c
	jr nc, jr_048_568f                               ; $562e: $30 $5f

	ldh a, [$6e]                                     ; $5630: $f0 $6e
	ret z                                            ; $5632: $c8

	ld l, a                                          ; $5633: $6f
	db $fc                                           ; $5634: $fc
	scf                                              ; $5635: $37
	ldh [$9d], a                                     ; $5636: $e0 $9d
	ld bc, $57fe                                     ; $5638: $01 $fe $57
	ldh a, [$9a]                                     ; $563b: $f0 $9a
	dec bc                                           ; $563d: $0b
	rst $38                                          ; $563e: $ff
	ld d, l                                          ; $563f: $55
	xor d                                            ; $5640: $aa
	xor d                                            ; $5641: $aa

jr_048_5642:
	ld [hl], c                                       ; $5642: $71
	rst SubAFromBC                                          ; $5643: $e7
	ld l, a                                          ; $5644: $6f
	ldh a, [$98]                                     ; $5645: $f0 $98
	rlca                                             ; $5647: $07
	ld hl, sp-$49                                    ; $5648: $f8 $b7
	db $ec                                           ; $564a: $ec
	cp e                                             ; $564b: $bb
	ld e, [hl]                                       ; $564c: $5e
	inc bc                                           ; $564d: $03
	ld a, e                                          ; $564e: $7b
	ld b, $7e                                        ; $564f: $06 $7e
	and d                                            ; $5651: $a2
	ld a, a                                          ; $5652: $7f
	db $fc                                           ; $5653: $fc
	sbc [hl]                                         ; $5654: $9e
	ld a, [$907a]                                    ; $5655: $fa $7a $90
	add b                                            ; $5658: $80
	ret z                                            ; $5659: $c8

	scf                                              ; $565a: $37
	db $e4                                           ; $565b: $e4
	dec de                                           ; $565c: $1b
	ldh [$1f], a                                     ; $565d: $e0 $1f
	db $fc                                           ; $565f: $fc
	adc a                                            ; $5660: $8f
	ldh a, [c]                                       ; $5661: $f2
	rst GetHLinHL                                          ; $5662: $cf
	or l                                             ; $5663: $b5
	rst GetHLinHL                                          ; $5664: $cf
	ld a, [$058f]                                    ; $5665: $fa $8f $05
	rst $38                                          ; $5668: $ff
	ld a, [bc]                                       ; $5669: $0a
	db $fd                                           ; $566a: $fd
	dec c                                            ; $566b: $0d
	ld a, [$f90e]                                    ; $566c: $fa $0e $f9
	dec c                                            ; $566f: $0d
	ei                                               ; $5670: $fb
	adc c                                            ; $5671: $89
	rst $38                                          ; $5672: $ff
	ld a, h                                          ; $5673: $7c
	ei                                               ; $5674: $fb
	cp $fd                                           ; $5675: $fe $fd
	add b                                            ; $5677: $80
	ld a, d                                          ; $5678: $7a
	ld h, d                                          ; $5679: $62
	sbc b                                            ; $567a: $98
	ld b, c                                          ; $567b: $41
	rst $38                                          ; $567c: $ff
	ld b, [hl]                                       ; $567d: $46
	rst $38                                          ; $567e: $ff
	xor b                                            ; $567f: $a8
	rst $38                                          ; $5680: $ff
	ret nz                                           ; $5681: $c0

	ld a, b                                          ; $5682: $78
	ld [hl+], a                                      ; $5683: $22
	ld a, a                                          ; $5684: $7f
	ret nc                                           ; $5685: $d0

	sbc [hl]                                         ; $5686: $9e
	ld b, $72                                        ; $5687: $06 $72
	jp c, $b26f                                      ; $5689: $da $6f $b2

	halt                                             ; $568c: $76
	add sp, $57                                      ; $568d: $e8 $57

jr_048_568f:
	add d                                            ; $568f: $82
	ld [hl], a                                       ; $5690: $77
	ldh a, [$3d]                                     ; $5691: $f0 $3d
	nop                                              ; $5693: $00
	jp $df66                                         ; $5694: $c3 $66 $df


	inc sp                                           ; $5697: $33
	sub $66                                          ; $5698: $d6 $66
	sbc [hl]                                         ; $569a: $9e
	ld h, a                                          ; $569b: $67
	db $db                                           ; $569c: $db
	ld [hl], a                                       ; $569d: $77
	sub h                                            ; $569e: $94
	ld h, [hl]                                       ; $569f: $66
	ld [hl], e                                       ; $56a0: $73
	inc sp                                           ; $56a1: $33
	inc [hl]                                         ; $56a2: $34
	ld b, h                                          ; $56a3: $44
	ld b, h                                          ; $56a4: $44
	ld h, [hl]                                       ; $56a5: $66
	ld d, l                                          ; $56a6: $55
	ld d, a                                          ; $56a7: $57

jr_048_56a8:
	ld [hl], a                                       ; $56a8: $77
	ld [hl], a                                       ; $56a9: $77
	db $dd                                           ; $56aa: $dd
	ld b, h                                          ; $56ab: $44
	sub c                                            ; $56ac: $91
	inc sp                                           ; $56ad: $33
	ld d, l                                          ; $56ae: $55
	ld d, e                                          ; $56af: $53
	inc [hl]                                         ; $56b0: $34
	inc sp                                           ; $56b1: $33
	ld b, h                                          ; $56b2: $44
	ld b, h                                          ; $56b3: $44
	ld [hl], a                                       ; $56b4: $77
	ld [hl], h                                       ; $56b5: $74
	ld b, h                                          ; $56b6: $44
	ld [hl], a                                       ; $56b7: $77
	ld d, l                                          ; $56b8: $55
	ld d, l                                          ; $56b9: $55
	ld h, h                                          ; $56ba: $64
	db $dd                                           ; $56bb: $dd
	ld h, [hl]                                       ; $56bc: $66
	sbc h                                            ; $56bd: $9c
	ld h, h                                          ; $56be: $64
	ld b, h                                          ; $56bf: $44
	ld b, h                                          ; $56c0: $44
	db $dd                                           ; $56c1: $dd
	ld d, l                                          ; $56c2: $55
	sbc $66                                          ; $56c3: $de $66
	sbc [hl]                                         ; $56c5: $9e
	ld d, [hl]                                       ; $56c6: $56
	sbc $66                                          ; $56c7: $de $66
	ld [hl], a                                       ; $56c9: $77
	rst FarCall                                          ; $56ca: $f7
	ld [hl], a                                       ; $56cb: $77
	db $f4                                           ; $56cc: $f4
	call c, $f266                                    ; $56cd: $dc $66 $f2
	dec bc                                           ; $56d0: $0b
	adc h                                            ; $56d1: $8c
	db $10                                           ; $56d2: $10
	pop hl                                           ; $56d3: $e1
	add b                                            ; $56d4: $80
	ld h, b                                          ; $56d5: $60
	ld [$5c04], sp                                   ; $56d6: $08 $04 $5c
	ld a, [hl+]                                      ; $56d9: $2a
	xor d                                            ; $56da: $aa
	ld d, l                                          ; $56db: $55
	ld d, b                                          ; $56dc: $50
	xor h                                            ; $56dd: $ac
	nop                                              ; $56de: $00
	ld [hl], b                                       ; $56df: $70
	ld [bc], a                                       ; $56e0: $02
	ld bc, $8027                                     ; $56e1: $01 $27 $80
	ld b, a                                          ; $56e4: $47
	db $fd                                           ; $56e5: $fd
	sbc [hl]                                         ; $56e6: $9e
	jr nc, jr_048_56a8                               ; $56e7: $30 $bf

	ccf                                              ; $56e9: $3f
	rla                                              ; $56ea: $17
	sbc d                                            ; $56eb: $9a
	ld a, [bc]                                       ; $56ec: $0a
	nop                                              ; $56ed: $00
	inc b                                            ; $56ee: $04
	add b                                            ; $56ef: $80
	push af                                          ; $56f0: $f5
	cp l                                             ; $56f1: $bd
	ret nz                                           ; $56f2: $c0

	nop                                              ; $56f3: $00
	cpl                                              ; $56f4: $2f
	ldh a, [$9b]                                     ; $56f5: $f0 $9b
	dec b                                            ; $56f7: $05
	nop                                              ; $56f8: $00
	jp z, $bd80                                      ; $56f9: $ca $80 $bd

	inc b                                            ; $56fc: $04
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
	ld a, b                                          ; $56ff: $78
	adc a                                            ; $5700: $8f
	ld [bc], a                                       ; $5701: $02
	push af                                          ; $5702: $f5
	ld [$5008], sp                                   ; $5703: $08 $08 $50
	inc bc                                           ; $5706: $03
	and b                                            ; $5707: $a0
	jr @+$09                                         ; $5708: $18 $07

	nop                                              ; $570a: $00
	dec b                                            ; $570b: $05
	dec d                                            ; $570c: $15
	ld [bc], a                                       ; $570d: $02
	ld a, [bc]                                       ; $570e: $0a
	ld bc, $bb05                                     ; $570f: $01 $05 $bb
	adc d                                            ; $5712: $8a
	dec b                                            ; $5713: $05
	add d                                            ; $5714: $82
	ld b, c                                          ; $5715: $41
	add b                                            ; $5716: $80
	ld b, d                                          ; $5717: $42
	sub a                                            ; $5718: $97
	cp a                                             ; $5719: $bf
	and c                                            ; $571a: $a1
	ld e, a                                          ; $571b: $5f
	db $f4                                           ; $571c: $f4
	dec bc                                           ; $571d: $0b
	ld a, [$5f05]                                    ; $571e: $fa $05 $5f
	cp l                                             ; $5721: $bd
	xor a                                            ; $5722: $af
	ld d, l                                          ; $5723: $55
	ld a, [bc]                                       ; $5724: $0a
	rst $38                                          ; $5725: $ff
	sub b                                            ; $5726: $90
	rst $38                                          ; $5727: $ff
	ld e, a                                          ; $5728: $5f
	rst $38                                          ; $5729: $ff
	scf                                              ; $572a: $37
	rst $38                                          ; $572b: $ff
	ld a, [bc]                                       ; $572c: $0a
	rst $38                                          ; $572d: $ff
	ld b, l                                          ; $572e: $45
	cp a                                             ; $572f: $bf
	ret nc                                           ; $5730: $d0

	cpl                                              ; $5731: $2f
	ld [$a515], a                                    ; $5732: $ea $15 $a5
	ld a, [bc]                                       ; $5735: $0a
	db $db                                           ; $5736: $db
	rst $38                                          ; $5737: $ff
	sbc d                                            ; $5738: $9a
	cp [hl]                                          ; $5739: $be
	rst $38                                          ; $573a: $ff
	ld d, l                                          ; $573b: $55
	rst $38                                          ; $573c: $ff
	xor d                                            ; $573d: $aa
	ld a, e                                          ; $573e: $7b
	db $fc                                           ; $573f: $fc
	sbc [hl]                                         ; $5740: $9e
	ld a, [hl+]                                      ; $5741: $2a
	ret c                                            ; $5742: $d8

	rst $38                                          ; $5743: $ff
	sbc [hl]                                         ; $5744: $9e
	ld a, a                                          ; $5745: $7f
	ld [hl], e                                       ; $5746: $73
	ldh a, [$7f]                                     ; $5747: $f0 $7f
	db $fc                                           ; $5749: $fc
	push de                                          ; $574a: $d5
	rst $38                                          ; $574b: $ff
	ld a, a                                          ; $574c: $7f
	ldh a, [$9e]                                     ; $574d: $f0 $9e
	add d                                            ; $574f: $82
	call nc, Call_048_7fff                           ; $5750: $d4 $ff $7f
	call c, $ab9e                                    ; $5753: $dc $9e $ab
	ret z                                            ; $5756: $c8

	rst $38                                          ; $5757: $ff
	sub a                                            ; $5758: $97
	db $fc                                           ; $5759: $fc
	rst $38                                          ; $575a: $ff
	ei                                               ; $575b: $fb
	db $fc                                           ; $575c: $fc
	or $f9                                           ; $575d: $f6 $f9
	pop af                                           ; $575f: $f1
	cp $db                                           ; $5760: $fe $db
	rst $38                                          ; $5762: $ff
	sub l                                            ; $5763: $95
	rra                                              ; $5764: $1f
	rst $38                                          ; $5765: $ff
	rrca                                             ; $5766: $0f
	rst $38                                          ; $5767: $ff
	ld [hl], a                                       ; $5768: $77
	rst GetHLinHL                                          ; $5769: $cf
	dec sp                                           ; $576a: $3b
	rst JumpTable                                          ; $576b: $c7
	db $db                                           ; $576c: $db
	daa                                              ; $576d: $27
	pop bc                                           ; $576e: $c1
	rst $38                                          ; $576f: $ff
	sub d                                            ; $5770: $92
	db $fd                                           ; $5771: $fd
	ld hl, sp-$01                                    ; $5772: $f8 $ff
	db $fc                                           ; $5774: $fc
	or $ff                                           ; $5775: $f6 $ff
	ld a, [$dcff]                                    ; $5777: $fa $ff $dc
	rst $38                                          ; $577a: $ff
	cp $ff                                           ; $577b: $fe $ff
	xor l                                            ; $577d: $ad
	ld a, e                                          ; $577e: $7b
	db $fc                                           ; $577f: $fc
	add b                                            ; $5780: $80
	ld hl, sp-$79                                    ; $5781: $f8 $87
	adc l                                            ; $5783: $8d
	jp nz, $9b24                                     ; $5784: $c2 $24 $9b

	ld h, l                                          ; $5787: $65
	jr c, jr_048_57fe                                ; $5788: $38 $74

	ld h, $12                                        ; $578a: $26 $12
	ld b, $ff                                        ; $578c: $06 $ff
	inc bc                                           ; $578e: $03
	adc a                                            ; $578f: $8f
	di                                               ; $5790: $f3
	rst $38                                          ; $5791: $ff
	rst $38                                          ; $5792: $ff
	cp a                                             ; $5793: $bf
	ld a, a                                          ; $5794: $7f
	add a                                            ; $5795: $87
	ccf                                              ; $5796: $3f
	ld b, e                                          ; $5797: $43
	add a                                            ; $5798: $87
	and e                                            ; $5799: $a3
	add hl, de                                       ; $579a: $19
	ld d, d                                          ; $579b: $52
	dec a                                            ; $579c: $3d
	reti                                             ; $579d: $d9


	inc a                                            ; $579e: $3c

Call_048_579f:
	jp c, $ad80                                      ; $579f: $da $80 $ad

	cp $9f                                           ; $57a2: $fe $9f
	sbc h                                            ; $57a4: $9c
	rst $38                                          ; $57a5: $ff
	db $fd                                           ; $57a6: $fd
	sbc [hl]                                         ; $57a7: $9e

jr_048_57a8:
	pop af                                           ; $57a8: $f1
	sbc [hl]                                         ; $57a9: $9e
	and l                                            ; $57aa: $a5
	ret c                                            ; $57ab: $d8

	xor b                                            ; $57ac: $a8
	push de                                          ; $57ad: $d5
	xor c                                            ; $57ae: $a9
	sub $83                                          ; $57af: $d6 $83
	db $fc                                           ; $57b1: $fc
	dec d                                            ; $57b2: $15
	ld a, [bc]                                       ; $57b3: $0a
	ld a, [de]                                       ; $57b4: $1a
	dec c                                            ; $57b5: $0d
	adc a                                            ; $57b6: $8f
	ld [bc], a                                       ; $57b7: $02
	ret nz                                           ; $57b8: $c0

	nop                                              ; $57b9: $00
	add a                                            ; $57ba: $87
	ld [bc], a                                       ; $57bb: $02
	add d                                            ; $57bc: $82
	ld bc, $00b1                                     ; $57bd: $01 $b1 $00
	sbc h                                            ; $57c0: $9c
	db $10                                           ; $57c1: $10
	inc h                                            ; $57c2: $24
	adc b                                            ; $57c3: $88
	cp h                                             ; $57c4: $bc
	ret nz                                           ; $57c5: $c0

	ret nz                                           ; $57c6: $c0

	ld bc, $c703                                     ; $57c7: $01 $03 $c7
	sbc c                                            ; $57ca: $99
	ld bc, $e283                                     ; $57cb: $01 $83 $e2
	rst JumpTable                                          ; $57ce: $c7
	ld hl, $bf3a                                     ; $57cf: $21 $3a $bf
	ld a, a                                          ; $57d2: $7f
	rst $38                                          ; $57d3: $ff
	add e                                            ; $57d4: $83
	ld a, [hl+]                                      ; $57d5: $2a
	sbc a                                            ; $57d6: $9f
	ld [hl], l                                       ; $57d7: $75
	cp $ab                                           ; $57d8: $fe $ab
	db $fd                                           ; $57da: $fd
	ld d, a                                          ; $57db: $57
	ld a, [$f5af]                                    ; $57dc: $fa $af $f5
	ld e, a                                          ; $57df: $5f
	add b                                            ; $57e0: $80
	ld [bc], a                                       ; $57e1: $02
	ld d, b                                          ; $57e2: $50
	nop                                              ; $57e3: $00
	add sp, -$80                                     ; $57e4: $e8 $80
	jr nc, jr_048_57a8                               ; $57e6: $30 $c0

	add sp, -$80                                     ; $57e8: $e8 $80
	ldh a, [rLCDC]                                   ; $57ea: $f0 $40
	ldh [$80], a                                     ; $57ec: $e0 $80
	ld d, c                                          ; $57ee: $51
	ret nz                                           ; $57ef: $c0

	add b                                            ; $57f0: $80
	cp e                                             ; $57f1: $bb
	ld b, b                                          ; $57f2: $40
	and b                                            ; $57f3: $a0
	ld d, h                                          ; $57f4: $54
	xor d                                            ; $57f5: $aa
	push af                                          ; $57f6: $f5
	cp d                                             ; $57f7: $ba
	sbc e                                            ; $57f8: $9b
	ld b, b                                          ; $57f9: $40
	ld e, a                                          ; $57fa: $5f
	and b                                            ; $57fb: $a0
	dec b                                            ; $57fc: $05
	or c                                             ; $57fd: $b1

jr_048_57fe:
	nop                                              ; $57fe: $00
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	xor d                                            ; $5801: $aa
	ld d, l                                          ; $5802: $55
	ld [$bfff], a                                    ; $5803: $ea $ff $bf
	ld d, a                                          ; $5806: $57
	inc hl                                           ; $5807: $23
	ld bc, $4000                                     ; $5808: $01 $00 $40
	xor b                                            ; $580b: $a8
	push de                                          ; $580c: $d5
	ld b, c                                          ; $580d: $41
	sbc c                                            ; $580e: $99
	cp a                                             ; $580f: $bf
	xor d                                            ; $5810: $aa
	ld d, l                                          ; $5811: $55
	push af                                          ; $5812: $f5
	ld a, [bc]                                       ; $5813: $0a
	ld e, a                                          ; $5814: $5f
	cp h                                             ; $5815: $bc
	dec d                                            ; $5816: $15
	ld [bc], a                                       ; $5817: $02
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	ld b, b                                          ; $581a: $40
	ld a, a                                          ; $581b: $7f
	db $dd                                           ; $581c: $dd
	ld a, [hl]                                       ; $581d: $7e
	jp z, $55df                                      ; $581e: $ca $df $55

	ld a, [hl]                                       ; $5821: $7e
	rst JumpTable                                          ; $5822: $c7
	cp l                                             ; $5823: $bd
	call $00f0                                       ; $5824: $cd $f0 $00
	nop                                              ; $5827: $00
	ld a, e                                          ; $5828: $7b
	ldh a, [$9d]                                     ; $5829: $f0 $9d
	and b                                            ; $582b: $a0
	ld e, a                                          ; $582c: $5f
	ld [hl], a                                       ; $582d: $77
	ldh a, [$7f]                                     ; $582e: $f0 $7f
	ret z                                            ; $5830: $c8

	sbc [hl]                                         ; $5831: $9e
	ld a, [hl+]                                      ; $5832: $2a
	cp a                                             ; $5833: $bf
	nop                                              ; $5834: $00
	ld d, l                                          ; $5835: $55
	sub l                                            ; $5836: $95
	rst $38                                          ; $5837: $ff
	ld [bc], a                                       ; $5838: $02
	rst $38                                          ; $5839: $ff
	ld bc, $80ff                                     ; $583a: $01 $ff $80

jr_048_583d:
	ld a, a                                          ; $583d: $7f
	db $fc                                           ; $583e: $fc
	inc bc                                           ; $583f: $03
	ld d, a                                          ; $5840: $57
	cp [hl]                                          ; $5841: $be
	xor d                                            ; $5842: $aa
	dec d                                            ; $5843: $15
	inc hl                                           ; $5844: $23
	add b                                            ; $5845: $80
	rst SubAFromDE                                          ; $5846: $df
	res 0, a                                         ; $5847: $cb $87
	cpl                                              ; $5849: $2f
	rst JumpTable                                          ; $584a: $c7
	cp e                                             ; $584b: $bb
	rst SubAFromBC                                          ; $584c: $e7
	sbc a                                            ; $584d: $9f
	ld [hl], e                                       ; $584e: $73
	ld c, e                                          ; $584f: $4b
	or c                                             ; $5850: $b1
	add h                                            ; $5851: $84
	ld a, c                                          ; $5852: $79
	call nz, $fa38                                   ; $5853: $c4 $38 $fa
	push af                                          ; $5856: $f5
	rst FarCall                                          ; $5857: $f7
	ld hl, sp-$04                                    ; $5858: $f8 $fc
	ldh a, [$f3]                                     ; $585a: $f0 $f3
	db $fc                                           ; $585c: $fc
	pop af                                           ; $585d: $f1
	cp $ee                                           ; $585e: $fe $ee
	di                                               ; $5860: $f3
	ld e, e                                          ; $5861: $5b
	db $e4                                           ; $5862: $e4
	ld l, a                                          ; $5863: $6f
	ret nz                                           ; $5864: $c0

	adc a                                            ; $5865: $8f
	ld c, l                                          ; $5866: $4d
	inc sp                                           ; $5867: $33
	adc l                                            ; $5868: $8d
	inc sp                                           ; $5869: $33
	inc de                                           ; $586a: $13
	rrca                                             ; $586b: $0f
	rla                                              ; $586c: $17
	rrca                                             ; $586d: $0f
	inc b                                            ; $586e: $04
	rrca                                             ; $586f: $0f
	adc a                                            ; $5870: $8f
	ld b, $4c                                        ; $5871: $06 $4c
	add a                                            ; $5873: $87
	jr nz, jr_048_583d                               ; $5874: $20 $c7

	db $db                                           ; $5876: $db
	rst $38                                          ; $5877: $ff
	ld a, [hl]                                       ; $5878: $7e
	add sp, -$69                                     ; $5879: $e8 $97
	ld [hl], l                                       ; $587b: $75
	rst $38                                          ; $587c: $ff
	xor d                                            ; $587d: $aa
	ld a, a                                          ; $587e: $7f
	push de                                          ; $587f: $d5
	ccf                                              ; $5880: $3f
	jp c, Jump_048_723f                              ; $5881: $da $3f $72

	call z, $546a                                    ; $5884: $cc $6a $54
	sbc h                                            ; $5887: $9c
	ld d, h                                          ; $5888: $54
	rst $38                                          ; $5889: $ff
	and b                                            ; $588a: $a0
	ld a, d                                          ; $588b: $7a
	ld l, h                                          ; $588c: $6c
	rst SubAFromDE                                          ; $588d: $df
	rst $38                                          ; $588e: $ff
	sbc d                                            ; $588f: $9a
	rst FarCall                                          ; $5890: $f7
	rst $38                                          ; $5891: $ff
	ld [$d0ff], a                                    ; $5892: $ea $ff $d0
	ld a, e                                          ; $5895: $7b
	db $f4                                           ; $5896: $f4
	ld a, a                                          ; $5897: $7f
	add [hl]                                         ; $5898: $86
	add b                                            ; $5899: $80
	inc bc                                           ; $589a: $03
	db $fc                                           ; $589b: $fc
	di                                               ; $589c: $f3
	ld hl, sp-$03                                    ; $589d: $f8 $fd
	ld hl, sp+$52                                    ; $589f: $f8 $52
	db $fd                                           ; $58a1: $fd
	and b                                            ; $58a2: $a0
	rst $38                                          ; $58a3: $ff
	inc b                                            ; $58a4: $04
	ei                                               ; $58a5: $fb
	ld [$3ff4], sp                                   ; $58a6: $08 $f4 $3f
	ret nz                                           ; $58a9: $c0

	ret nz                                           ; $58aa: $c0

	nop                                              ; $58ab: $00
	cp b                                             ; $58ac: $b8
	ld b, a                                          ; $58ad: $47
	ld h, d                                          ; $58ae: $62
	sbc l                                            ; $58af: $9d
	dec hl                                           ; $58b0: $2b
	call nc, $e817                                   ; $58b1: $d4 $17 $e8
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	ld a, [de]                                       ; $58b6: $1a
	dec b                                            ; $58b7: $05
	ld h, b                                          ; $58b8: $60
	cp a                                             ; $58b9: $bf
	nop                                              ; $58ba: $00
	ld sp, $c695                                     ; $58bb: $31 $95 $c6
	ld h, d                                          ; $58be: $62
	add l                                            ; $58bf: $85
	nop                                              ; $58c0: $00
	rst $38                                          ; $58c1: $ff
	xor b                                            ; $58c2: $a8
	ld d, h                                          ; $58c3: $54
	inc b                                            ; $58c4: $04
	ld [$7180], sp                                   ; $58c5: $08 $80 $71
	or e                                             ; $58c8: $b3
	adc c                                            ; $58c9: $89
	inc [hl]                                         ; $58ca: $34
	nop                                              ; $58cb: $00
	ld e, d                                          ; $58cc: $5a
	inc l                                            ; $58cd: $2c
	jr z, jr_048_58e7                                ; $58ce: $28 $17

	ld a, [bc]                                       ; $58d0: $0a
	stop                                             ; $58d1: $10 $00
	dec b                                            ; $58d3: $05
	ld [hl], b                                       ; $58d4: $70
	ld bc, $04b8                                     ; $58d5: $01 $b8 $04
	sbc b                                            ; $58d8: $98
	inc b                                            ; $58d9: $04
	ld b, e                                          ; $58da: $43
	ld [bc], a                                       ; $58db: $02
	rlca                                             ; $58dc: $07
	ld bc, $0003                                     ; $58dd: $01 $03 $00
	ld [hl], a                                       ; $58e0: $77
	db $fc                                           ; $58e1: $fc
	ld a, e                                          ; $58e2: $7b
	inc c                                            ; $58e3: $0c
	ld a, d                                          ; $58e4: $7a
	rst SubAFromBC                                          ; $58e5: $e7
	halt                                             ; $58e6: $76

jr_048_58e7:
	call z, $eb98                                    ; $58e7: $cc $98 $eb
	cp [hl]                                          ; $58ea: $be
	rst FarCall                                          ; $58eb: $f7
	ld e, h                                          ; $58ec: $5c
	ld a, [$f4a0]                                    ; $58ed: $fa $a0 $f4
	cp [hl]                                          ; $58f0: $be
	xor b                                            ; $58f1: $a8
	nop                                              ; $58f2: $00
	pop hl                                           ; $58f3: $e1
	sbc l                                            ; $58f4: $9d
	add b                                            ; $58f5: $80
	jp $87ba                                         ; $58f6: $c3 $ba $87


	rrca                                             ; $58f9: $0f
	rra                                              ; $58fa: $1f
	rla                                              ; $58fb: $17
	dec hl                                           ; $58fc: $2b
	ld l, c                                          ; $58fd: $69
	adc d                                            ; $58fe: $8a
	adc b                                            ; $58ff: $88
	ld [hl], l                                       ; $5900: $75
	ld b, l                                          ; $5901: $45
	cp d                                             ; $5902: $ba
	and b                                            ; $5903: $a0
	ld e, a                                          ; $5904: $5f
	ld d, b                                          ; $5905: $50
	xor a                                            ; $5906: $af
	xor d                                            ; $5907: $aa
	ld d, l                                          ; $5908: $55
	push de                                          ; $5909: $d5
	ld a, [hl+]                                      ; $590a: $2a
	ld [$f515], a                                    ; $590b: $ea $15 $f5
	ld a, [bc]                                       ; $590e: $0a
	rst $38                                          ; $590f: $ff
	nop                                              ; $5910: $00
	ld d, l                                          ; $5911: $55
	xor d                                            ; $5912: $aa
	ld a, [bc]                                       ; $5913: $0a
	push af                                          ; $5914: $f5
	dec d                                            ; $5915: $15
	ld [$ec76], a                                    ; $5916: $ea $76 $ec
	ld [hl], a                                       ; $5919: $77
	db $fc                                           ; $591a: $fc
	sbc [hl]                                         ; $591b: $9e
	ld a, [$ffbf]                                    ; $591c: $fa $bf $ff
	cp a                                             ; $591f: $bf
	sbc h                                            ; $5920: $9c
	ld b, b                                          ; $5921: $40
	ld d, a                                          ; $5922: $57
	xor b                                            ; $5923: $a8
	ld h, a                                          ; $5924: $67
	ldh a, [$7e]                                     ; $5925: $f0 $7e
	sub b                                            ; $5927: $90
	ld a, [hl]                                       ; $5928: $7e
	add b                                            ; $5929: $80
	ld a, a                                          ; $592a: $7f
	cp b                                             ; $592b: $b8
	ld a, a                                          ; $592c: $7f
	or h                                             ; $592d: $b4
	ld a, a                                          ; $592e: $7f
	add sp, -$67                                     ; $592f: $e8 $99
	ld a, l                                          ; $5931: $7d
	add b                                            ; $5932: $80
	cp d                                             ; $5933: $ba
	ld b, b                                          ; $5934: $40
	ld e, h                                          ; $5935: $5c
	and b                                            ; $5936: $a0
	db $fd                                           ; $5937: $fd
	ld a, [hl]                                       ; $5938: $7e
	adc h                                            ; $5939: $8c
	ld a, [hl]                                       ; $593a: $7e
	sub $7e                                          ; $593b: $d6 $7e
	ld a, [hl]                                       ; $593d: $7e
	ld a, a                                          ; $593e: $7f
	ld [$519e], a                                    ; $593f: $ea $9e $51
	or c                                             ; $5942: $b1
	and e                                            ; $5943: $a3
	nop                                              ; $5944: $00
	and d                                            ; $5945: $a2
	ld b, l                                          ; $5946: $45
	add b                                            ; $5947: $80
	nop                                              ; $5948: $00
	ld l, d                                          ; $5949: $6a
	rst $38                                          ; $594a: $ff
	rst $38                                          ; $594b: $ff
	ld [bc], a                                       ; $594c: $02
	add b                                            ; $594d: $80
	ld d, b                                          ; $594e: $50
	ld a, [hl+]                                      ; $594f: $2a
	inc d                                            ; $5950: $14
	ld a, [bc]                                       ; $5951: $0a
	ld b, l                                          ; $5952: $45
	cp a                                             ; $5953: $bf
	and d                                            ; $5954: $a2
	ld l, b                                          ; $5955: $68
	add b                                            ; $5956: $80
	inc e                                            ; $5957: $1c
	cp $0c                                           ; $5958: $fe $0c
	dec [hl]                                         ; $595a: $35
	ld c, $1a                                        ; $595b: $0e $1a
	ld b, $07                                        ; $595d: $06 $07
	nop                                              ; $595f: $00
	inc c                                            ; $5960: $0c
	ld [bc], a                                       ; $5961: $02
	ld b, $01                                        ; $5962: $06 $01
	add d                                            ; $5964: $82
	ld bc, $60f8                                     ; $5965: $01 $f8 $60
	ld c, h                                          ; $5968: $4c
	ldh a, [hDisp1_WY]                                     ; $5969: $f0 $95
	ld a, [hl]                                       ; $596b: $7e
	ld e, a                                          ; $596c: $5f
	jr c, @+$70                                      ; $596d: $38 $6e

	inc e                                            ; $596f: $1c
	daa                                              ; $5970: $27
	ld e, $23                                        ; $5971: $1e $23
	rra                                              ; $5973: $1f
	ld sp, $800f                                     ; $5974: $31 $0f $80
	ld d, l                                          ; $5977: $55
	ld [hl+], a                                      ; $5978: $22
	jp $b930                                         ; $5979: $c3 $30 $b9


	ld [hl], b                                       ; $597c: $70
	rla                                              ; $597d: $17
	ld hl, sp+$21                                    ; $597e: $f8 $21
	ld e, [hl]                                       ; $5980: $5e
	call nc, $f43b                                   ; $5981: $d4 $3b $f4
	ei                                               ; $5984: $fb
	pop de                                           ; $5985: $d1
	ld a, [$3f95]                                    ; $5986: $fa $95 $3f
	sbc d                                            ; $5989: $9a
	ccf                                              ; $598a: $3f
	ld [hl], h                                       ; $598b: $74
	rra                                              ; $598c: $1f
	ld l, b                                          ; $598d: $68
	rra                                              ; $598e: $1f
	jr nc, @+$61                                     ; $598f: $30 $5f

	xor c                                            ; $5991: $a9
	ld e, $90                                        ; $5992: $1e $90
	ccf                                              ; $5994: $3f
	add hl, bc                                       ; $5995: $09
	add l                                            ; $5996: $85
	ld a, $40                                        ; $5997: $3e $40
	rst $38                                          ; $5999: $ff
	add l                                            ; $599a: $85
	ld a, [$fd02]                                    ; $599b: $fa $02 $fd
	dec d                                            ; $599e: $15
	ld [$54ab], a                                    ; $599f: $ea $ab $54
	ld d, [hl]                                       ; $59a2: $56
	xor b                                            ; $59a3: $a8
	xor b                                            ; $59a4: $a8
	ld d, b                                          ; $59a5: $50
	ld d, b                                          ; $59a6: $50
	and b                                            ; $59a7: $a0
	dec d                                            ; $59a8: $15
	ld [$d428], a                                    ; $59a9: $ea $28 $d4
	ld c, h                                          ; $59ac: $4c
	and b                                            ; $59ad: $a0
	ld d, d                                          ; $59ae: $52
	add b                                            ; $59af: $80
	push bc                                          ; $59b0: $c5
	cp a                                             ; $59b1: $bf
	adc e                                            ; $59b2: $8b
	inc b                                            ; $59b3: $04
	sbc h                                            ; $59b4: $9c
	inc bc                                           ; $59b5: $03
	add hl, de                                       ; $59b6: $19
	ld b, $77                                        ; $59b7: $06 $77
	dec bc                                           ; $59b9: $0b
	sub h                                            ; $59ba: $94
	ld c, a                                          ; $59bb: $4f
	nop                                              ; $59bc: $00
	cp b                                             ; $59bd: $b8
	rlca                                             ; $59be: $07
	ret nz                                           ; $59bf: $c0

	ccf                                              ; $59c0: $3f
	ld e, $e1                                        ; $59c1: $1e $e1
	rst $38                                          ; $59c3: $ff
	nop                                              ; $59c4: $00
	ld a, [$dc72]                                    ; $59c5: $fa $72 $dc
	ld a, a                                          ; $59c8: $7f
	ld hl, sp+$7f                                    ; $59c9: $f8 $7f
	db $fd                                           ; $59cb: $fd
	sbc b                                            ; $59cc: $98
	cp $01                                           ; $59cd: $fe $01
	ld a, h                                          ; $59cf: $7c
	add e                                            ; $59d0: $83
	ld sp, hl                                        ; $59d1: $f9
	ld b, $1f                                        ; $59d2: $06 $1f
	cp l                                             ; $59d4: $bd
	nop                                              ; $59d5: $00
	rlca                                             ; $59d6: $07
	sub b                                            ; $59d7: $90
	ld a, l                                          ; $59d8: $7d
	sub l                                            ; $59d9: $95
	add b                                            ; $59da: $80
	dec de                                           ; $59db: $1b
	ldh [rIE], a                                     ; $59dc: $e0 $ff
	nop                                              ; $59de: $00
	db $fd                                           ; $59df: $fd
	ld [bc], a                                       ; $59e0: $02
	ld e, a                                          ; $59e1: $5f
	add b                                            ; $59e2: $80
	inc e                                            ; $59e3: $1c
	cp h                                             ; $59e4: $bc
	inc e                                            ; $59e5: $1c
	inc d                                            ; $59e6: $14
	ld [$0910], sp                                   ; $59e7: $08 $10 $09
	sbc d                                            ; $59ea: $9a
	add b                                            ; $59eb: $80
	db $10                                           ; $59ec: $10
	add c                                            ; $59ed: $81
	ld [$bdc0], sp                                   ; $59ee: $08 $c0 $bd
	ld a, d                                          ; $59f1: $7a
	ccf                                              ; $59f2: $3f
	rrca                                             ; $59f3: $0f
	inc bc                                           ; $59f4: $03
	sbc b                                            ; $59f5: $98
	add b                                            ; $59f6: $80
	ldh [$50], a                                     ; $59f7: $e0 $50
	ld hl, sp-$58                                    ; $59f9: $f8 $a8
	cp $f4                                           ; $59fb: $fe $f4
	ld a, e                                          ; $59fd: $7b
	push bc                                          ; $59fe: $c5
	sbc b                                            ; $59ff: $98
	ld bc, $0350                                     ; $5a00: $01 $50 $03
	ldh [rSB], a                                     ; $5a03: $e0 $01
	add b                                            ; $5a05: $80
	rlca                                             ; $5a06: $07
	cp h                                             ; $5a07: $bc
	rrca                                             ; $5a08: $0f
	rla                                              ; $5a09: $17
	dec bc                                           ; $5a0a: $0b
	call c, $82ca                                    ; $5a0b: $dc $ca $82
	inc d                                            ; $5a0e: $14
	ret nc                                           ; $5a0f: $d0

	ld c, $ca                                        ; $5a10: $0e $ca
	dec d                                            ; $5a12: $15
	call nc, $e80a                                   ; $5a13: $d4 $0a $e8
	ld b, $e0                                        ; $5a16: $06 $e0
	inc b                                            ; $5a18: $04
	ldh a, [rP1]                                     ; $5a19: $f0 $00
	ld a, [$7505]                                    ; $5a1b: $fa $05 $75
	ld a, [bc]                                       ; $5a1e: $0a
	ld a, [hl-]                                      ; $5a1f: $3a
	dec b                                            ; $5a20: $05
	dec e                                            ; $5a21: $1d
	ld [bc], a                                       ; $5a22: $02
	ld e, $01                                        ; $5a23: $1e $01
	ld c, l                                          ; $5a25: $4d
	ld [bc], a                                       ; $5a26: $02
	and $01                                          ; $5a27: $e6 $01
	db $e3                                           ; $5a29: $e3
	nop                                              ; $5a2a: $00
	ld h, [hl]                                       ; $5a2b: $66
	ret c                                            ; $5a2c: $d8

	inc hl                                           ; $5a2d: $23
	db $fc                                           ; $5a2e: $fc
	sbc e                                            ; $5a2f: $9b
	ld d, b                                          ; $5a30: $50
	ld e, [hl]                                       ; $5a31: $5e
	and b                                            ; $5a32: $a0
	xor [hl]                                         ; $5a33: $ae
	ld e, e                                          ; $5a34: $5b
	db $fc                                           ; $5a35: $fc
	adc d                                            ; $5a36: $8a
	ld b, a                                          ; $5a37: $47
	nop                                              ; $5a38: $00
	adc [hl]                                         ; $5a39: $8e
	ld bc, $030e                                     ; $5a3a: $01 $0e $03
	dec e                                            ; $5a3d: $1d
	rlca                                             ; $5a3e: $07
	ld a, [de]                                       ; $5a3f: $1a
	rrca                                             ; $5a40: $0f
	dec d                                            ; $5a41: $15
	rrca                                             ; $5a42: $0f
	ld a, [de]                                       ; $5a43: $1a
	rrca                                             ; $5a44: $0f
	dec [hl]                                         ; $5a45: $35
	rrca                                             ; $5a46: $0f
	add e                                            ; $5a47: $83
	ld a, h                                          ; $5a48: $7c
	ld d, c                                          ; $5a49: $51
	cp $a8                                           ; $5a4a: $fe $a8
	ld a, c                                          ; $5a4c: $79
	and $67                                          ; $5a4d: $e6 $67
	db $fc                                           ; $5a4f: $fc
	sbc [hl]                                         ; $5a50: $9e
	pop de                                           ; $5a51: $d1
	cp l                                             ; $5a52: $bd
	ld [$e8f1], a                                    ; $5a53: $ea $f1 $e8
	ld [hl], l                                       ; $5a56: $75
	sub b                                            ; $5a57: $90
	add b                                            ; $5a58: $80
	ld a, d                                          ; $5a59: $7a
	add b                                            ; $5a5a: $80
	ld [hl], l                                       ; $5a5b: $75
	add b                                            ; $5a5c: $80
	ld a, [rRAMB]                                    ; $5a5d: $fa $00 $40
	dec b                                            ; $5a60: $05
	add b                                            ; $5a61: $80
	inc bc                                           ; $5a62: $03
	ld b, b                                          ; $5a63: $40
	ld bc, $02a0                                     ; $5a64: $01 $a0 $02
	ld h, a                                          ; $5a67: $67
	db $fc                                           ; $5a68: $fc
	add b                                            ; $5a69: $80
	ld h, $1b                                        ; $5a6a: $26 $1b
	dec de                                           ; $5a6c: $1b
	rlca                                             ; $5a6d: $07
	dec d                                            ; $5a6e: $15
	ld a, [bc]                                       ; $5a6f: $0a
	sbc d                                            ; $5a70: $9a
	dec b                                            ; $5a71: $05
	call $9632                                       ; $5a72: $cd $32 $96
	ld h, c                                          ; $5a75: $61

jr_048_5a76:
	sbc e                                            ; $5a76: $9b

jr_048_5a77:
	ld h, b                                          ; $5a77: $60
	pop de                                           ; $5a78: $d1
	jr nz, @-$2b                                     ; $5a79: $20 $d3

jr_048_5a7b:
	ld hl, sp-$0e                                    ; $5a7b: $f8 $f2
	ret c                                            ; $5a7d: $d8

	and b                                            ; $5a7e: $a0
	reti                                             ; $5a7f: $d9


	ld h, c                                          ; $5a80: $61
	sbc $9f                                          ; $5a81: $de $9f
	ldh [$af], a                                     ; $5a83: $e0 $af
	ld d, b                                          ; $5a85: $50
	ld e, e                                          ; $5a86: $5b
	and b                                            ; $5a87: $a0
	add [hl]                                         ; $5a88: $86
	adc c                                            ; $5a89: $89
	ld [hl], b                                       ; $5a8a: $70
	inc b                                            ; $5a8b: $04
	rst $38                                          ; $5a8c: $ff
	ld b, b                                          ; $5a8d: $40
	rst AddAOntoHL                                          ; $5a8e: $ef
	jp z, Jump_048_49e5                              ; $5a8f: $ca $e5 $49

	and $a3                                          ; $5a92: $e6 $a3
	ld b, h                                          ; $5a94: $44
	and e                                            ; $5a95: $a3
	ld b, h                                          ; $5a96: $44
	di                                               ; $5a97: $f3
	inc b                                            ; $5a98: $04
	rst SubAFromBC                                          ; $5a99: $e7
	nop                                              ; $5a9a: $00
	and b                                            ; $5a9b: $a0
	ld b, b                                          ; $5a9c: $40
	ld c, [hl]                                       ; $5a9d: $4e
	add b                                            ; $5a9e: $80
	ld h, b                                          ; $5a9f: $60
	cp a                                             ; $5aa0: $bf
	or e                                             ; $5aa1: $b3
	and $80                                          ; $5aa2: $e6 $80
	ld bc, $03ec                                     ; $5aa4: $01 $ec $03
	ld b, [hl]                                       ; $5aa7: $46
	ld bc, $034c                                     ; $5aa8: $01 $4c $03
	inc sp                                           ; $5aab: $33
	inc c                                            ; $5aac: $0c
	ld b, a                                          ; $5aad: $47
	jr c, @-$72                                      ; $5aae: $38 $8c

	ld [hl], b                                       ; $5ab0: $70
	sub c                                            ; $5ab1: $91
	ld h, b                                          ; $5ab2: $60
	jr z, jr_048_5a76                                ; $5ab3: $28 $c1

	ld d, d                                          ; $5ab5: $52
	add c                                            ; $5ab6: $81
	and d                                            ; $5ab7: $a2
	nop                                              ; $5ab8: $00
	push bc                                          ; $5ab9: $c5
	ld [bc], a                                       ; $5aba: $02
	ld a, h                                          ; $5abb: $7c
	inc bc                                           ; $5abc: $03
	add hl, hl                                       ; $5abd: $29
	db $10                                           ; $5abe: $10
	ld d, h                                          ; $5abf: $54
	adc b                                            ; $5ac0: $88
	rst SubAFromBC                                          ; $5ac1: $e7
	ret nz                                           ; $5ac2: $c0

	ld a, h                                          ; $5ac3: $7c
	and e                                            ; $5ac4: $a3
	sub b                                            ; $5ac5: $90
	jr nc, @+$0a                                     ; $5ac6: $30 $08

	inc [hl]                                         ; $5ac8: $34
	rrca                                             ; $5ac9: $0f
	or $0f                                           ; $5aca: $f6 $0f
	cp b                                             ; $5acc: $b8
	nop                                              ; $5acd: $00
	ldh [c], a                                       ; $5ace: $e2
	ld bc, $0204                                     ; $5acf: $01 $04 $02
	ld de, $0008                                     ; $5ad2: $11 $08 $00
	ld a, d                                          ; $5ad5: $7a
	and h                                            ; $5ad6: $a4
	add e                                            ; $5ad7: $83
	jp Jump_048_473c                                 ; $5ad8: $c3 $3c $47


	jr c, jr_048_5a77                                ; $5adb: $38 $9a

	dec b                                            ; $5add: $05
	dec [hl]                                         ; $5ade: $35
	ld a, [bc]                                       ; $5adf: $0a
	jp c, $2b21                                      ; $5ae0: $da $21 $2b

	ret nz                                           ; $5ae3: $c0

	ld b, d                                          ; $5ae4: $42
	add c                                            ; $5ae5: $81
	pop bc                                           ; $5ae6: $c1
	nop                                              ; $5ae7: $00
	ret nz                                           ; $5ae8: $c0

	jr nz, jr_048_5a7b                               ; $5ae9: $20 $90

	ld h, b                                          ; $5aeb: $60
	inc d                                            ; $5aec: $14
	add c                                            ; $5aed: $81
	ld [$1400], sp                                   ; $5aee: $08 $00 $14
	add b                                            ; $5af1: $80
	ld [$7bc0], sp                                   ; $5af2: $08 $c0 $7b
	db $fc                                           ; $5af5: $fc
	cp [hl]                                          ; $5af6: $be
	inc e                                            ; $5af7: $1c
	ld a, [bc]                                       ; $5af8: $0a
	cp $9d                                           ; $5af9: $fe $9d
	cp $7c                                           ; $5afb: $fe $7c
	sbc $fe                                          ; $5afd: $de $fe
	ld a, a                                          ; $5aff: $7f
	db $fc                                           ; $5b00: $fc
	sub [hl]                                         ; $5b01: $96
	ld a, $7e                                        ; $5b02: $3e $7e
	ld a, h                                          ; $5b04: $7c
	ld a, a                                          ; $5b05: $7f
	ld l, $7f                                        ; $5b06: $2e $7f
	ld e, h                                          ; $5b08: $5c
	ld a, a                                          ; $5b09: $7f
	rla                                              ; $5b0a: $17
	or d                                             ; $5b0b: $b2
	cpl                                              ; $5b0c: $2f
	rla                                              ; $5b0d: $17
	cpl                                              ; $5b0e: $2f
	rla                                              ; $5b0f: $17
	cpl                                              ; $5b10: $2f

jr_048_5b11:
	rla                                              ; $5b11: $17
	dec bc                                           ; $5b12: $0b
	db $fc                                           ; $5b13: $fc
	rst $38                                          ; $5b14: $ff
	rst $38                                          ; $5b15: $ff
	rst $38                                          ; $5b16: $ff
	rst $38                                          ; $5b17: $ff
	pop hl                                           ; $5b18: $e1
	reti                                             ; $5b19: $d9


	ret c                                            ; $5b1a: $d8

	sbc l                                            ; $5b1b: $9d
	ld [bc], a                                       ; $5b1c: $02
	ld c, $bf                                        ; $5b1d: $0e $bf
	jr c, jr_048_5b11                                ; $5b1f: $38 $f0

	add l                                            ; $5b21: $85
	inc bc                                           ; $5b22: $03
	pop hl                                           ; $5b23: $e1
	rlca                                             ; $5b24: $07
	ldh [c], a                                       ; $5b25: $e2
	rrca                                             ; $5b26: $0f
	push bc                                          ; $5b27: $c5
	rra                                              ; $5b28: $1f
	jp $c30f                                         ; $5b29: $c3 $0f $c3


	rla                                              ; $5b2c: $17
	rrca                                             ; $5b2d: $0f
	nop                                              ; $5b2e: $00
	rlca                                             ; $5b2f: $07
	ldh [$c7], a                                     ; $5b30: $e0 $c7
	ldh a, [$fe]                                     ; $5b32: $f0 $fe
	pop hl                                           ; $5b34: $e1
	rst SubAFromBC                                          ; $5b35: $e7
	ldh a, [$ee]                                     ; $5b36: $f0 $ee
	pop af                                           ; $5b38: $f1
	rst JumpTable                                          ; $5b39: $c7
	ldh a, [$de]                                     ; $5b3a: $f0 $de
	ld a, d                                          ; $5b3c: $7a
	inc a                                            ; $5b3d: $3c
	sbc [hl]                                         ; $5b3e: $9e
	cp $bf                                           ; $5b3f: $fe $bf
	nop                                              ; $5b41: $00
	sub h                                            ; $5b42: $94
	sub l                                            ; $5b43: $95
	ld a, [hl+]                                      ; $5b44: $2a
	adc d                                            ; $5b45: $8a
	inc d                                            ; $5b46: $14
	add h                                            ; $5b47: $84
	ld c, d                                          ; $5b48: $4a
	ld h, b                                          ; $5b49: $60
	add b                                            ; $5b4a: $80
	cp b                                             ; $5b4b: $b8
	ld b, b                                          ; $5b4c: $40
	cp $bb                                           ; $5b4d: $fe $bb
	xor b                                            ; $5b4f: $a8
	ld b, $3c                                        ; $5b50: $06 $3c
	add hl, sp                                       ; $5b52: $39
	ld [hl], e                                       ; $5b53: $73
	ld b, l                                          ; $5b54: $45
	sub e                                            ; $5b55: $93
	ld [bc], a                                       ; $5b56: $02
	dec bc                                           ; $5b57: $0b
	inc d                                            ; $5b58: $14
	ld a, [de]                                       ; $5b59: $1a
	rrca                                             ; $5b5a: $0f
	dec l                                            ; $5b5b: $2d
	rlca                                             ; $5b5c: $07
	ld d, $03                                        ; $5b5d: $16 $03
	dec hl                                           ; $5b5f: $2b
	ld bc, $bd15                                     ; $5b60: $01 $15 $bd

jr_048_5b63:
	ld a, [bc]                                       ; $5b63: $0a
	ld bc, $a800                                     ; $5b64: $01 $00 $a8

jr_048_5b67:
	sub a                                            ; $5b67: $97
	rst $38                                          ; $5b68: $ff
	ld d, c                                          ; $5b69: $51
	cp $a3                                           ; $5b6a: $fe $a3
	db $fc                                           ; $5b6c: $fc
	ld a, [hl]                                       ; $5b6d: $7e
	ret nc                                           ; $5b6e: $d0

	db $fd                                           ; $5b6f: $fd
	or c                                             ; $5b70: $b1
	cp d                                             ; $5b71: $ba
	ld [hl], h                                       ; $5b72: $74
	ld bc, $a2d1                                     ; $5b73: $01 $d1 $a2
	ld b, a                                          ; $5b76: $47
	adc l                                            ; $5b77: $8d
	rra                                              ; $5b78: $1f
	scf                                              ; $5b79: $37
	ld a, d                                          ; $5b7a: $7a
	db $fc                                           ; $5b7b: $fc
	ld b, a                                          ; $5b7c: $47
	add d                                            ; $5b7d: $82

Call_048_5b7e:
	ld c, l                                          ; $5b7e: $4d
	add a                                            ; $5b7f: $87
	ld e, l                                          ; $5b80: $5d
	ld a, l                                          ; $5b81: $7d
	ld b, $89                                        ; $5b82: $06 $89
	ld bc, $0017                                     ; $5b84: $01 $17 $00
	ld l, $01                                        ; $5b87: $2e $01
	reti                                             ; $5b89: $d9


	jr nz, jr_048_5b67                               ; $5b8a: $20 $db

	jr nz, jr_048_5b63                               ; $5b8c: $20 $d5

	jr nz, jr_048_5b63                               ; $5b8e: $20 $d3

	jr nz, jr_048_5ba6                               ; $5b90: $20 $14

	ldh [rAUD1ENV], a                                ; $5b92: $e0 $12
	ldh [$35], a                                     ; $5b94: $e0 $35
	ret nz                                           ; $5b96: $c0

	ld a, [bc]                                       ; $5b97: $0a
	ldh [$e5], a                                     ; $5b98: $e0 $e5
	or a                                             ; $5b9a: $b7
	ld l, d                                          ; $5b9b: $6a
	ld h, h                                          ; $5b9c: $64
	ld l, d                                          ; $5b9d: $6a
	ld d, h                                          ; $5b9e: $54
	ld a, [hl+]                                      ; $5b9f: $2a
	ld d, h                                          ; $5ba0: $54
	xor d                                            ; $5ba1: $aa
	rst SubAFromBC                                          ; $5ba2: $e7
	ld [hl], h                                       ; $5ba3: $74
	and d                                            ; $5ba4: $a2
	sbc d                                            ; $5ba5: $9a

jr_048_5ba6:
	inc b                                            ; $5ba6: $04
	ld d, l                                          ; $5ba7: $55
	ld [bc], a                                       ; $5ba8: $02
	and d                                            ; $5ba9: $a2
	dec b                                            ; $5baa: $05
	ld a, e                                          ; $5bab: $7b
	db $fc                                           ; $5bac: $fc
	add b                                            ; $5bad: $80
	inc b                                            ; $5bae: $04
	ld d, h                                          ; $5baf: $54
	ld [bc], a                                       ; $5bb0: $02
	ld sp, $bbce                                     ; $5bb1: $31 $ce $bb
	ld b, h                                          ; $5bb4: $44
	cp e                                             ; $5bb5: $bb
	ld b, h                                          ; $5bb6: $44
	or e                                             ; $5bb7: $b3
	inc c                                            ; $5bb8: $0c
	push af                                          ; $5bb9: $f5
	ld c, $14                                        ; $5bba: $0e $14
	adc a                                            ; $5bbc: $8f
	call z, $2c1f                                    ; $5bbd: $cc $1f $2c
	ld e, a                                          ; $5bc0: $5f
	jp z, $8607                                      ; $5bc1: $ca $07 $86

	nop                                              ; $5bc4: $00
	add hl, sp                                       ; $5bc5: $39
	ld [bc], a                                       ; $5bc6: $02
	ld c, a                                          ; $5bc7: $4f
	inc de                                           ; $5bc8: $13
	xor [hl]                                         ; $5bc9: $ae
	ld de, $906b                                     ; $5bca: $11 $6b $90
	adc b                                            ; $5bcd: $88
	swap b                                           ; $5bce: $cb $30
	call c, $f220                                    ; $5bd0: $dc $20 $f2
	rrca                                             ; $5bd3: $0f
	rra                                              ; $5bd4: $1f
	inc bc                                           ; $5bd5: $03
	add hl, bc                                       ; $5bd6: $09
	rlca                                             ; $5bd7: $07
	ld d, [hl]                                       ; $5bd8: $56
	adc a                                            ; $5bd9: $8f
	jp $1cff                                         ; $5bda: $c3 $ff $1c


	db $e3                                           ; $5bdd: $e3
	ret nc                                           ; $5bde: $d0

	daa                                              ; $5bdf: $27
	rst FarCall                                          ; $5be0: $f7
	inc c                                            ; $5be1: $0c
	ld bc, $87ff                                     ; $5be2: $01 $ff $87
	sbc $ff                                          ; $5be5: $de $ff
	add b                                            ; $5be7: $80
	ccf                                              ; $5be8: $3f
	rst $38                                          ; $5be9: $ff
	ld a, $ff                                        ; $5bea: $3e $ff
	dec e                                            ; $5bec: $1d
	cp $19                                           ; $5bed: $fe $19
	ldh [rDMA], a                                    ; $5bef: $e0 $46
	ld sp, hl                                        ; $5bf1: $f9
	add b                                            ; $5bf2: $80
	ldh [$a8], a                                     ; $5bf3: $e0 $a8
	call nz, $9afc                                   ; $5bf5: $c4 $fc $9a
	ld [hl], d                                       ; $5bf8: $72
	sbc l                                            ; $5bf9: $9d
	ldh [$3f], a                                     ; $5bfa: $e0 $3f
	ld [hl], b                                       ; $5bfc: $70
	rst $38                                          ; $5bfd: $ff
	ld [hl], b                                       ; $5bfe: $70
	rst $38                                          ; $5bff: $ff
	ld hl, sp-$01                                    ; $5c00: $f8 $ff
	inc e                                            ; $5c02: $1c
	nop                                              ; $5c03: $00
	ld c, $80                                        ; $5c04: $0e $80
	dec e                                            ; $5c06: $1d
	add b                                            ; $5c07: $80
	nop                                              ; $5c08: $00
	ld e, $80                                        ; $5c09: $1e $80
	inc e                                            ; $5c0b: $1c
	add b                                            ; $5c0c: $80
	rra                                              ; $5c0d: $1f
	nop                                              ; $5c0e: $00
	rra                                              ; $5c0f: $1f
	add b                                            ; $5c10: $80
	rra                                              ; $5c11: $1f
	ld bc, $3f3a                                     ; $5c12: $01 $3a $3f
	ld e, l                                          ; $5c15: $5d
	ld e, a                                          ; $5c16: $5f
	ld a, [hl+]                                      ; $5c17: $2a
	ccf                                              ; $5c18: $3f
	dec d                                            ; $5c19: $15
	rra                                              ; $5c1a: $1f
	ld [$c718], sp                                   ; $5c1b: $08 $18 $c7

jr_048_5c1e:
	nop                                              ; $5c1e: $00
	sub b                                            ; $5c1f: $90
	rrca                                             ; $5c20: $0f
	and c                                            ; $5c21: $a1
	ld e, [hl]                                       ; $5c22: $5e
	dec b                                            ; $5c23: $05
	add b                                            ; $5c24: $80
	ld [bc], a                                       ; $5c25: $02
	add b                                            ; $5c26: $80
	add b                                            ; $5c27: $80
	ld bc, $00c0                                     ; $5c28: $01 $c0 $00
	add b                                            ; $5c2b: $80
	jr z, jr_048_5c2e                                ; $5c2c: $28 $00

jr_048_5c2e:
	ret z                                            ; $5c2e: $c8

	inc [hl]                                         ; $5c2f: $34
	ld e, b                                          ; $5c30: $58
	and b                                            ; $5c31: $a0
	inc sp                                           ; $5c32: $33
	ret nz                                           ; $5c33: $c0

	ld hl, sp+$02                                    ; $5c34: $f8 $02
	ld a, [$7401]                                    ; $5c36: $fa $01 $74
	add hl, bc                                       ; $5c39: $09
	add hl, de                                       ; $5c3a: $19
	inc h                                            ; $5c3b: $24
	ld c, $10                                        ; $5c3c: $0e $10
	ld bc, $c006                                     ; $5c3e: $01 $06 $c0
	ld bc, $00f0                                     ; $5c41: $01 $f0 $00
	ld h, b                                          ; $5c44: $60
	add hl, bc                                       ; $5c45: $09
	jr nz, jr_048_5cc7                               ; $5c46: $20 $7f

	push af                                          ; $5c48: $f5
	adc a                                            ; $5c49: $8f
	add c                                            ; $5c4a: $81
	inc b                                            ; $5c4b: $04
	ldh [$80], a                                     ; $5c4c: $e0 $80
	ld a, b                                          ; $5c4e: $78
	jr nz, jr_048_5c70                               ; $5c4f: $20 $1f

	ret nz                                           ; $5c51: $c0

	rrca                                             ; $5c52: $0f
	ld a, d                                          ; $5c53: $7a
	nop                                              ; $5c54: $00
	xor h                                            ; $5c55: $ac
	jp $022d                                         ; $5c56: $c3 $2d $02


	sbc [hl]                                         ; $5c59: $9e
	cp a                                             ; $5c5a: $bf
	jr c, jr_048_5c1e                                ; $5c5b: $38 $c1

	sbc c                                            ; $5c5d: $99
	inc b                                            ; $5c5e: $04
	dec bc                                           ; $5c5f: $0b
	jr nc, jr_048_5c88                               ; $5c60: $30 $26

	ret nz                                           ; $5c62: $c0

	sbc [hl]                                         ; $5c63: $9e
	ld a, b                                          ; $5c64: $78
	ld [hl-], a                                      ; $5c65: $32
	ld [hl], h                                       ; $5c66: $74
	ld a, [hl+]                                      ; $5c67: $2a
	sbc d                                            ; $5c68: $9a
	ld a, d                                          ; $5c69: $7a
	dec b                                            ; $5c6a: $05
	dec a                                            ; $5c6b: $3d
	ld [bc], a                                       ; $5c6c: $02
	ld a, [hl-]                                      ; $5c6d: $3a
	ld a, c                                          ; $5c6e: $79
	ld d, [hl]                                       ; $5c6f: $56

jr_048_5c70:
	ld a, a                                          ; $5c70: $7f
	db $f4                                           ; $5c71: $f4
	ld a, h                                          ; $5c72: $7c
	jp z, $8a7d                                      ; $5c73: $ca $7d $8a

	ld a, a                                          ; $5c76: $7f
	db $fc                                           ; $5c77: $fc
	sub l                                            ; $5c78: $95
	xor h                                            ; $5c79: $ac
	ld d, b                                          ; $5c7a: $50
	ld e, h                                          ; $5c7b: $5c
	and b                                            ; $5c7c: $a0
	cp b                                             ; $5c7d: $b8
	ld b, b                                          ; $5c7e: $40
	ld [hl], b                                       ; $5c7f: $70
	add b                                            ; $5c80: $80
	ldh [rSB], a                                     ; $5c81: $e0 $01
	cp l                                             ; $5c83: $bd

jr_048_5c84:
	inc c                                            ; $5c84: $0c
	rlca                                             ; $5c85: $07
	nop                                              ; $5c86: $00
	ld a, c                                          ; $5c87: $79

jr_048_5c88:
	sub [hl]                                         ; $5c88: $96
	db $10                                           ; $5c89: $10
	ld a, [hl]                                       ; $5c8a: $7e
	jr z, @+$01                                      ; $5c8b: $28 $ff

	ld d, l                                          ; $5c8d: $55
	rst $38                                          ; $5c8e: $ff
	add hl, hl                                       ; $5c8f: $29
	rst $38                                          ; $5c90: $ff
	rlca                                             ; $5c91: $07
	cp d                                             ; $5c92: $ba
	rst $38                                          ; $5c93: $ff
	cp a                                             ; $5c94: $bf
	dec d                                            ; $5c95: $15
	nop                                              ; $5c96: $00
	jp z, $1fff                                      ; $5c97: $ca $ff $1f

	sbc l                                            ; $5c9a: $9d
	db $f4                                           ; $5c9b: $f4
	ldh a, [$bb]                                     ; $5c9c: $f0 $bb
	ret nc                                           ; $5c9e: $d0

	and c                                            ; $5c9f: $a1
	ld b, d                                          ; $5ca0: $42
	dec d                                            ; $5ca1: $15
	xor e                                            ; $5ca2: $ab
	ld d, l                                          ; $5ca3: $55
	add b                                            ; $5ca4: $80
	ld [bc], a                                       ; $5ca5: $02
	cp d                                             ; $5ca6: $ba
	ld b, l                                          ; $5ca7: $45
	ld e, c                                          ; $5ca8: $59
	ld b, $a9                                        ; $5ca9: $06 $a9
	ld b, $5f                                        ; $5cab: $06 $5f
	nop                                              ; $5cad: $00
	rst SubAFromDE                                          ; $5cae: $df
	jr nz, @-$5f                                     ; $5caf: $20 $9f

	ld h, b                                          ; $5cb1: $60
	cp b                                             ; $5cb2: $b8
	ld b, a                                          ; $5cb3: $47
	ld e, h                                          ; $5cb4: $5c
	and e                                            ; $5cb5: $a3
	cp a                                             ; $5cb6: $bf
	ld b, b                                          ; $5cb7: $40
	ld d, l                                          ; $5cb8: $55
	and b                                            ; $5cb9: $a0
	xor d                                            ; $5cba: $aa
	ld b, b                                          ; $5cbb: $40
	push af                                          ; $5cbc: $f5
	nop                                              ; $5cbd: $00
	inc sp                                           ; $5cbe: $33
	ret nz                                           ; $5cbf: $c0

	or $09                                           ; $5cc0: $f6 $09
	cp c                                             ; $5cc2: $b9
	ld h, [hl]                                       ; $5cc3: $66
	sbc e                                            ; $5cc4: $9b
	or $eb                                           ; $5cc5: $f6 $eb

jr_048_5cc7:
	ld d, $eb                                        ; $5cc7: $16 $eb

jr_048_5cc9:
	halt                                             ; $5cc9: $76
	call z, $ce7e                                    ; $5cca: $cc $7e $ce
	add b                                            ; $5ccd: $80
	rst SubAFromBC                                          ; $5cce: $e7
	jr jr_048_5c84                                   ; $5ccf: $18 $b3

	ld c, [hl]                                       ; $5cd1: $4e
	db $dd                                           ; $5cd2: $dd
	inc hl                                           ; $5cd3: $23
	ld bc, $64fe                                     ; $5cd4: $01 $fe $64
	rst $38                                          ; $5cd7: $ff
	add d                                            ; $5cd8: $82
	inc b                                            ; $5cd9: $04
	ld b, h                                          ; $5cda: $44
	ld [bc], a                                       ; $5cdb: $02
	inc bc                                           ; $5cdc: $03
	inc b                                            ; $5cdd: $04
	db $fd                                           ; $5cde: $fd
	ld [bc], a                                       ; $5cdf: $02
	xor b                                            ; $5ce0: $a8
	ld [hl], h                                       ; $5ce1: $74

jr_048_5ce2:
	adc b                                            ; $5ce2: $88
	ld [hl], h                                       ; $5ce3: $74
	jr nz, jr_048_5ce2                               ; $5ce4: $20 $fc

	xor b                                            ; $5ce6: $a8
	ld [hl], h                                       ; $5ce7: $74
	ld l, h                                          ; $5ce8: $6c
	rra                                              ; $5ce9: $1f
	and b                                            ; $5cea: $a0
	ld e, a                                          ; $5ceb: $5f
	ld [hl-], a                                      ; $5cec: $32
	ld a, l                                          ; $5ced: $7d
	ld d, e                                          ; $5cee: $53
	ld a, e                                          ; $5cef: $7b
	cp $8d                                           ; $5cf0: $fe $8d
	or b                                             ; $5cf2: $b0
	ld c, a                                          ; $5cf3: $4f
	cp b                                             ; $5cf4: $b8
	ld b, a                                          ; $5cf5: $47
	cp h                                             ; $5cf6: $bc
	ld b, a                                          ; $5cf7: $47
	xor d                                            ; $5cf8: $aa
	ld d, h                                          ; $5cf9: $54
	ld d, d                                          ; $5cfa: $52
	xor a                                            ; $5cfb: $af
	xor b                                            ; $5cfc: $a8
	ld d, a                                          ; $5cfd: $57
	ld d, [hl]                                       ; $5cfe: $56
	xor c                                            ; $5cff: $a9
	xor e                                            ; $5d00: $ab
	ld d, h                                          ; $5d01: $54
	db $10                                           ; $5d02: $10
	rst AddAOntoHL                                          ; $5d03: $ef
	cp a                                             ; $5d04: $bf
	rst $38                                          ; $5d05: $ff
	rst $38                                          ; $5d06: $ff
	adc a                                            ; $5d07: $8f
	db $ed                                           ; $5d08: $ed
	jr jr_048_5cc9                                   ; $5d09: $18 $be

	add hl, bc                                       ; $5d0b: $09
	ld [de], a                                       ; $5d0c: $12
	adc l                                            ; $5d0d: $8d
	ld [$45c7], sp                                   ; $5d0e: $08 $c7 $45
	ldh [c], a                                       ; $5d11: $e2
	ld h, b                                          ; $5d12: $60
	ldh a, [$67]                                     ; $5d13: $f0 $67
	ld hl, sp-$5c                                    ; $5d15: $f8 $a4
	db $db                                           ; $5d17: $db
	db $dd                                           ; $5d18: $dd
	rst $38                                          ; $5d19: $ff
	add b                                            ; $5d1a: $80
	ld b, e                                          ; $5d1b: $43
	rst $38                                          ; $5d1c: $ff
	ld b, b                                          ; $5d1d: $40
	rst $38                                          ; $5d1e: $ff
	ldh a, [rIE]                                     ; $5d1f: $f0 $ff
	ld a, l                                          ; $5d21: $7d
	rrca                                             ; $5d22: $0f
	cp a                                             ; $5d23: $bf
	inc bc                                           ; $5d24: $03
	ld [hl], b                                       ; $5d25: $70
	rst $38                                          ; $5d26: $ff
	db $fc                                           ; $5d27: $fc
	rst $38                                          ; $5d28: $ff
	ldh [c], a                                       ; $5d29: $e2
	rst $38                                          ; $5d2a: $ff
	add $ff                                          ; $5d2b: $c6 $ff
	inc c                                            ; $5d2d: $0c
	rst $38                                          ; $5d2e: $ff
	dec bc                                           ; $5d2f: $0b
	rst $38                                          ; $5d30: $ff
	add h                                            ; $5d31: $84
	rst $38                                          ; $5d32: $ff
	set 7, [hl]                                      ; $5d33: $cb $fe
	adc a                                            ; $5d35: $8f
	ld a, a                                          ; $5d36: $7f
	rra                                              ; $5d37: $1f
	ld bc, $7fff                                     ; $5d38: $01 $ff $7f
	cp $bf                                           ; $5d3b: $fe $bf
	inc e                                            ; $5d3d: $1c
	add hl, de                                       ; $5d3e: $19
	ld a, e                                          ; $5d3f: $7b
	sbc d                                            ; $5d40: $9a
	ld a, [hl]                                       ; $5d41: $7e
	xor $86                                          ; $5d42: $ee $86
	inc b                                            ; $5d44: $04
	or e                                             ; $5d45: $b3
	ret nz                                           ; $5d46: $c0

	cp a                                             ; $5d47: $bf
	and e                                            ; $5d48: $a3
	inc e                                            ; $5d49: $1c
	ld [hl-], a                                      ; $5d4a: $32
	ld [$0001], sp                                   ; $5d4b: $08 $01 $00
	adc l                                            ; $5d4e: $8d
	ld b, d                                          ; $5d4f: $42
	ld c, e                                          ; $5d50: $4b
	or h                                             ; $5d51: $b4
	cp [hl]                                          ; $5d52: $be
	ld b, c                                          ; $5d53: $41
	ld d, l                                          ; $5d54: $55
	xor d                                            ; $5d55: $aa
	rst JumpTable                                          ; $5d56: $c7
	nop                                              ; $5d57: $00
	adc l                                            ; $5d58: $8d
	ld [bc], a                                       ; $5d59: $02
	sub c                                            ; $5d5a: $91
	inc b                                            ; $5d5b: $04
	ld a, [hl+]                                      ; $5d5c: $2a
	ld a, d                                          ; $5d5d: $7a
	ld hl, sp+$7c                                    ; $5d5e: $f8 $7c
	ld d, [hl]                                       ; $5d60: $56
	ld [hl], l                                       ; $5d61: $75
	adc d                                            ; $5d62: $8a
	ld [hl], l                                       ; $5d63: $75
	add b                                            ; $5d64: $80
	sbc [hl]                                         ; $5d65: $9e
	ld d, l                                          ; $5d66: $55
	cp a                                             ; $5d67: $bf
	and d                                            ; $5d68: $a2
	ld l, a                                          ; $5d69: $6f
	sbc h                                            ; $5d6a: $9c
	sub b                                            ; $5d6b: $90
	rst FarCall                                          ; $5d6c: $f7
	ld [$f077], sp                                   ; $5d6d: $08 $77 $f0
	sbc [hl]                                         ; $5d70: $9e
	ccf                                              ; $5d71: $3f
	or c                                             ; $5d72: $b1
	dec bc                                           ; $5d73: $0b
	add d                                            ; $5d74: $82
	pop de                                           ; $5d75: $d1
	nop                                              ; $5d76: $00
	ld [rIE], a                                    ; $5d77: $ea $ff $ff
	rst $38                                          ; $5d7a: $ff
	rst $38                                          ; $5d7b: $ff
	rst $38                                          ; $5d7c: $ff
	ld d, a                                          ; $5d7d: $57
	nop                                              ; $5d7e: $00
	xor d                                            ; $5d7f: $aa
	push de                                          ; $5d80: $d5
	rst $38                                          ; $5d81: $ff
	rst FarCall                                          ; $5d82: $f7
	ld a, e                                          ; $5d83: $7b
	jp c, $f89e                                      ; $5d84: $da $9e $f8

	cp h                                             ; $5d87: $bc
	add b                                            ; $5d88: $80
	nop                                              ; $5d89: $00
	xor e                                            ; $5d8a: $ab
	ld e, a                                          ; $5d8b: $5f
	db $fd                                           ; $5d8c: $fd
	sbc h                                            ; $5d8d: $9c
	ld [bc], a                                       ; $5d8e: $02
	ret nz                                           ; $5d8f: $c0

	inc bc                                           ; $5d90: $03
	cp h                                             ; $5d91: $bc
	rlca                                             ; $5d92: $07
	rrca                                             ; $5d93: $0f
	ccf                                              ; $5d94: $3f
	rra                                              ; $5d95: $1f
	rrca                                             ; $5d96: $0f
	add b                                            ; $5d97: $80

Call_048_5d98:
	add b                                            ; $5d98: $80
	rlca                                             ; $5d99: $07
	ret nz                                           ; $5d9a: $c0

	dec bc                                           ; $5d9b: $0b
	cp h                                             ; $5d9c: $bc
	ld b, e                                          ; $5d9d: $43
	add sp, $17                                      ; $5d9e: $e8 $17
	ld d, a                                          ; $5da0: $57
	jr z, @+$62                                      ; $5da1: $28 $60

	rra                                              ; $5da3: $1f
	ld bc, $783f                                     ; $5da4: $01 $3f $78
	rra                                              ; $5da7: $1f
	ld d, b                                          ; $5da8: $50
	cpl                                              ; $5da9: $2f
	ret nz                                           ; $5daa: $c0

	ccf                                              ; $5dab: $3f
	ld a, l                                          ; $5dac: $7d
	add d                                            ; $5dad: $82
	ccf                                              ; $5dae: $3f
	ret nz                                           ; $5daf: $c0

	ld d, l                                          ; $5db0: $55
	xor d                                            ; $5db1: $aa
	cpl                                              ; $5db2: $2f
	ret nc                                           ; $5db3: $d0

	sbc d                                            ; $5db4: $9a
	db $fd                                           ; $5db5: $fd
	db $eb                                           ; $5db6: $eb
	add e                                            ; $5db7: $83
	call c, $fe01                                    ; $5db8: $dc $01 $fe
	ld [bc], a                                       ; $5dbb: $02
	db $fd                                           ; $5dbc: $fd
	ld e, a                                          ; $5dbd: $5f
	and b                                            ; $5dbe: $a0
	sub b                                            ; $5dbf: $90
	ld h, b                                          ; $5dc0: $60
	ld d, b                                          ; $5dc1: $50
	and b                                            ; $5dc2: $a0
	adc [hl]                                         ; $5dc3: $8e
	ld [hl], b                                       ; $5dc4: $70
	sub $29                                          ; $5dc5: $d6 $29
	ld l, d                                          ; $5dc7: $6a
	sub l                                            ; $5dc8: $95
	sbc $21                                          ; $5dc9: $de $21
	add hl, hl                                       ; $5dcb: $29
	sub $ff                                          ; $5dcc: $d6 $ff
	nop                                              ; $5dce: $00
	jr c, jr_048_5dd8                                ; $5dcf: $38 $07

	add hl, de                                       ; $5dd1: $19
	ld b, $18                                        ; $5dd2: $06 $18
	cp a                                             ; $5dd4: $bf
	jr nc, @+$32                                     ; $5dd5: $30 $30

	sub e                                            ; $5dd7: $93

jr_048_5dd8:
	add b                                            ; $5dd8: $80
	ld l, h                                          ; $5dd9: $6c
	add b                                            ; $5dda: $80
	ret nz                                           ; $5ddb: $c0

	nop                                              ; $5ddc: $00
	pop hl                                           ; $5ddd: $e1
	rla                                              ; $5dde: $17
	ld h, l                                          ; $5ddf: $65
	sbc e                                            ; $5de0: $9b
	di                                               ; $5de1: $f3
	rrca                                             ; $5de2: $0f
	ld c, $bc                                        ; $5de3: $0e $bc
	ld h, b                                          ; $5de5: $60
	jp Jump_048_4f19                                 ; $5de6: $c3 $19 $4f


	rlca                                             ; $5de9: $07
	add b                                            ; $5dea: $80
	ld hl, sp-$42                                    ; $5deb: $f8 $be
	jp $e31d                                         ; $5ded: $c3 $1d $e3


	dec bc                                           ; $5df0: $0b
	rlca                                             ; $5df1: $07
	ld h, h                                          ; $5df2: $64
	inc bc                                           ; $5df3: $03
	sbc a                                            ; $5df4: $9f
	nop                                              ; $5df5: $00
	ld h, b                                          ; $5df6: $60
	sbc a                                            ; $5df7: $9f
	nop                                              ; $5df8: $00
	rst $38                                          ; $5df9: $ff
	ld [hl], a                                       ; $5dfa: $77
	ld hl, sp-$1c                                    ; $5dfb: $f8 $e4
	ei                                               ; $5dfd: $fb
	ld [hl], h                                       ; $5dfe: $74
	ei                                               ; $5dff: $fb
	ld hl, sp-$09                                    ; $5e00: $f8 $f7
	ld b, $fd                                        ; $5e02: $06 $fd
	add b                                            ; $5e04: $80
	rrca                                             ; $5e05: $0f
	ld b, $f8                                        ; $5e06: $06 $f8
	xor b                                            ; $5e08: $a8
	rst $38                                          ; $5e09: $ff
	sub b                                            ; $5e0a: $90
	ld a, h                                          ; $5e0b: $7c
	add a                                            ; $5e0c: $87
	ld e, h                                          ; $5e0d: $5c
	and e                                            ; $5e0e: $a3
	ld e, [hl]                                       ; $5e0f: $5e
	and e                                            ; $5e10: $a3
	ld c, [hl]                                       ; $5e11: $4e
	or e                                             ; $5e12: $b3
	ld l, [hl]                                       ; $5e13: $6e
	sub c                                            ; $5e14: $91
	ld h, l                                          ; $5e15: $65
	sbc e                                            ; $5e16: $9b
	dec [hl]                                         ; $5e17: $35
	ld c, d                                          ; $5e18: $4a
	ldh [$7b], a                                     ; $5e19: $e0 $7b
	ld bc, $1288                                     ; $5e1b: $01 $88 $12
	rst $38                                          ; $5e1e: $ff
	ld de, $6ffe                                     ; $5e1f: $11 $fe $6f
	db $10                                           ; $5e22: $10
	ld d, a                                          ; $5e23: $57
	adc b                                            ; $5e24: $88
	db $fc                                           ; $5e25: $fc
	ld hl, sp-$35                                    ; $5e26: $f8 $cb
	db $fc                                           ; $5e28: $fc
	ld b, a                                          ; $5e29: $47
	db $fc                                           ; $5e2a: $fc
	ld [de], a                                       ; $5e2b: $12
	db $ed                                           ; $5e2c: $ed
	ret                                              ; $5e2d: $c9


	ld [hl], $d9                                     ; $5e2e: $36 $d9
	ld h, $7d                                        ; $5e30: $26 $7d
	ld [bc], a                                       ; $5e32: $02
	ld a, a                                          ; $5e33: $7f
	cp a                                             ; $5e34: $bf
	rst $38                                          ; $5e35: $ff
	xor $80                                          ; $5e36: $ee $80
	db $10                                           ; $5e38: $10
	jp z, Jump_048_7e04                              ; $5e39: $ca $04 $7e

	rst $38                                          ; $5e3c: $ff
	sub a                                            ; $5e3d: $97
	ld a, a                                          ; $5e3e: $7f
	ld l, c                                          ; $5e3f: $69
	rra                                              ; $5e40: $1f
	or h                                             ; $5e41: $b4
	rrca                                             ; $5e42: $0f
	ld c, h                                          ; $5e43: $4c
	inc bc                                           ; $5e44: $03
	xor h                                            ; $5e45: $ac
	inc bc                                           ; $5e46: $03
	rla                                              ; $5e47: $17
	nop                                              ; $5e48: $00
	jr z, jr_048_5e4e                                ; $5e49: $28 $03

	ld c, $ff                                        ; $5e4b: $0e $ff
	adc l                                            ; $5e4d: $8d

jr_048_5e4e:
	rst $38                                          ; $5e4e: $ff
	ld [$9ff7], a                                    ; $5e4f: $ea $f7 $9f
	ld sp, hl                                        ; $5e52: $f9
	jp z, $147d                                      ; $5e53: $ca $7d $14

	rst AddAOntoHL                                          ; $5e56: $ef
	sbc e                                            ; $5e57: $9b
	ld a, [bc]                                       ; $5e58: $0a
	add a                                            ; $5e59: $87
	ld l, l                                          ; $5e5a: $6d
	add e                                            ; $5e5b: $83
	cp a                                             ; $5e5c: $bf
	ld sp, hl                                        ; $5e5d: $f9
	and e                                            ; $5e5e: $a3
	adc a                                            ; $5e5f: $8f
	ld b, $85                                        ; $5e60: $06 $85
	dec b                                            ; $5e62: $05
	add a                                            ; $5e63: $87
	ld [bc], a                                       ; $5e64: $02
	ld [de], a                                       ; $5e65: $12
	dec b                                            ; $5e66: $05
	ld bc, $030a                                     ; $5e67: $01 $0a $03
	add hl, bc                                       ; $5e6a: $09
	ld [de], a                                       ; $5e6b: $12
	ld a, [hl+]                                      ; $5e6c: $2a
	push de                                          ; $5e6d: $d5
	ld d, l                                          ; $5e6e: $55
	xor d                                            ; $5e6f: $aa
	ld [hl], a                                       ; $5e70: $77
	db $fc                                           ; $5e71: $fc
	adc c                                            ; $5e72: $89
	xor d                                            ; $5e73: $aa
	ld d, l                                          ; $5e74: $55
	ld d, h                                          ; $5e75: $54
	xor e                                            ; $5e76: $ab
	and b                                            ; $5e77: $a0
	ld e, a                                          ; $5e78: $5f
	ld bc, $aafe                                     ; $5e79: $01 $fe $aa
	ld d, l                                          ; $5e7c: $55
	ld d, l                                          ; $5e7d: $55
	xor d                                            ; $5e7e: $aa
	xor b                                            ; $5e7f: $a8
	ld d, a                                          ; $5e80: $57
	ld d, b                                          ; $5e81: $50
	xor a                                            ; $5e82: $af
	and b                                            ; $5e83: $a0
	ld e, a                                          ; $5e84: $5f
	nop                                              ; $5e85: $00
	rst $38                                          ; $5e86: $ff
	ld a, [bc]                                       ; $5e87: $0a
	push af                                          ; $5e88: $f5
	ld [hl], a                                       ; $5e89: $77
	add sp, $7f                                      ; $5e8a: $e8 $7f
	db $f4                                           ; $5e8c: $f4
	cp [hl]                                          ; $5e8d: $be
	rst $38                                          ; $5e8e: $ff
	rst $38                                          ; $5e8f: $ff
	rst $38                                          ; $5e90: $ff
	sbc e                                            ; $5e91: $9b
	dec b                                            ; $5e92: $05
	ld a, [$ff00]                                    ; $5e93: $fa $00 $ff
	ld l, a                                          ; $5e96: $6f
	ret c                                            ; $5e97: $d8

	cp [hl]                                          ; $5e98: $be
	rst $38                                          ; $5e99: $ff
	rst $38                                          ; $5e9a: $ff
	rst $38                                          ; $5e9b: $ff
	ld [hl], a                                       ; $5e9c: $77
	db $f4                                           ; $5e9d: $f4
	ld l, a                                          ; $5e9e: $6f
	db $fc                                           ; $5e9f: $fc
	ld a, a                                          ; $5ea0: $7f
	ret c                                            ; $5ea1: $d8

	ld a, a                                          ; $5ea2: $7f
	db $e4                                           ; $5ea3: $e4
	ld a, a                                          ; $5ea4: $7f
	ld b, $7f                                        ; $5ea5: $06 $7f
	call nz, $829b                                   ; $5ea7: $c4 $9b $82
	ld a, l                                          ; $5eaa: $7d
	nop                                              ; $5eab: $00
	rst $38                                          ; $5eac: $ff
	ld h, a                                          ; $5ead: $67
	db $ec                                           ; $5eae: $ec
	ld a, a                                          ; $5eaf: $7f
	db $fc                                           ; $5eb0: $fc
	sbc l                                            ; $5eb1: $9d
	ld b, l                                          ; $5eb2: $45
	cp d                                             ; $5eb3: $ba
	ld [hl], a                                       ; $5eb4: $77
	db $ec                                           ; $5eb5: $ec
	sub d                                            ; $5eb6: $92
	ret nz                                           ; $5eb7: $c0

	dec b                                            ; $5eb8: $05
	ld h, b                                          ; $5eb9: $60
	add e                                            ; $5eba: $83
	ret nc                                           ; $5ebb: $d0

	dec b                                            ; $5ebc: $05
	ld h, b                                          ; $5ebd: $60
	add d                                            ; $5ebe: $82
	sub b                                            ; $5ebf: $90
	ld b, l                                          ; $5ec0: $45
	ld h, b                                          ; $5ec1: $60
	add d                                            ; $5ec2: $82
	or b                                             ; $5ec3: $b0
	ld a, e                                          ; $5ec4: $7b
	db $fc                                           ; $5ec5: $fc
	ld a, a                                          ; $5ec6: $7f
	db $10                                           ; $5ec7: $10
	add b                                            ; $5ec8: $80
	dec c                                            ; $5ec9: $0d
	ldh a, [c]                                       ; $5eca: $f2
	sbc [hl]                                         ; $5ecb: $9e
	ld h, e                                          ; $5ecc: $63
	ld a, [hl]                                       ; $5ecd: $7e
	add e                                            ; $5ece: $83
	rst $38                                          ; $5ecf: $ff
	inc bc                                           ; $5ed0: $03
	ld e, e                                          ; $5ed1: $5b
	and a                                            ; $5ed2: $a7
	dec sp                                           ; $5ed3: $3b
	rst JumpTable                                          ; $5ed4: $c7
	sub e                                            ; $5ed5: $93
	ld l, a                                          ; $5ed6: $6f
	sbc a                                            ; $5ed7: $9f
	ld h, b                                          ; $5ed8: $60
	ld a, l                                          ; $5ed9: $7d
	add d                                            ; $5eda: $82
	inc c                                            ; $5edb: $0c
	di                                               ; $5edc: $f3
	dec d                                            ; $5edd: $15
	cp $ff                                           ; $5ede: $fe $ff
	ld a, $f5                                        ; $5ee0: $3e $f5
	ld a, a                                          ; $5ee2: $7f
	pop bc                                           ; $5ee3: $c1
	cp $00                                           ; $5ee4: $fe $00
	rst $38                                          ; $5ee6: $ff
	jp nz, $3d8f                                     ; $5ee7: $c2 $8f $3d

	swap h                                           ; $5eea: $cb $34
	sub $28                                          ; $5eec: $d6 $28
	ld a, $c0                                        ; $5eee: $3e $c0
	db $10                                           ; $5ef0: $10
	db $ec                                           ; $5ef1: $ec
	call nc, $fce8                                   ; $5ef2: $d4 $e8 $fc
	add b                                            ; $5ef5: $80
	ld hl, sp-$1b                                    ; $5ef6: $f8 $e5
	add c                                            ; $5ef8: $81
	cp [hl]                                          ; $5ef9: $be
	ld [bc], a                                       ; $5efa: $02
	rlca                                             ; $5efb: $07
	ld c, $80                                        ; $5efc: $0e $80
	ld bc, $033d                                     ; $5efe: $01 $3d $03
	dec sp                                           ; $5f01: $3b
	rlca                                             ; $5f02: $07
	ld [hl], a                                       ; $5f03: $77
	rrca                                             ; $5f04: $0f
	ld l, a                                          ; $5f05: $6f
	rra                                              ; $5f06: $1f
	ld a, [hl-]                                      ; $5f07: $3a
	rlca                                             ; $5f08: $07
	ld l, l                                          ; $5f09: $6d
	rra                                              ; $5f0a: $1f
	cp d                                             ; $5f0b: $ba
	ld a, a                                          ; $5f0c: $7f
	ld l, e                                          ; $5f0d: $6b
	db $fd                                           ; $5f0e: $fd
	jp $5ef7                                         ; $5f0f: $c3 $f7 $5e


	rst AddAOntoHL                                          ; $5f12: $ef
	cp l                                             ; $5f13: $bd
	rst SubAFromDE                                          ; $5f14: $df
	ld [hl], e                                       ; $5f15: $73
	sbc [hl]                                         ; $5f16: $9e
	nop                                              ; $5f17: $00
	rst $38                                          ; $5f18: $ff
	ld h, [hl]                                       ; $5f19: $66
	add c                                            ; $5f1a: $81
	and b                                            ; $5f1b: $a0
	rst $38                                          ; $5f1c: $ff
	ld a, a                                          ; $5f1d: $7f
	pop bc                                           ; $5f1e: $c1
	sub c                                            ; $5f1f: $91
	ret nc                                           ; $5f20: $d0

	rst $38                                          ; $5f21: $ff
	xor d                                            ; $5f22: $aa
	db $fc                                           ; $5f23: $fc
	dec h                                            ; $5f24: $25
	jp nz, $1fcf                                     ; $5f25: $c2 $cf $1f

	jp $1e3f                                         ; $5f28: $c3 $3f $1e


	add c                                            ; $5f2b: $81

jr_048_5f2c:
	ld b, $f8                                        ; $5f2c: $06 $f8
	cp a                                             ; $5f2e: $bf
	rst $38                                          ; $5f2f: $ff
	rst $38                                          ; $5f30: $ff
	add b                                            ; $5f31: $80
	jr nc, jr_048_5f43                               ; $5f32: $30 $0f

	sub h                                            ; $5f34: $94
	ld h, e                                          ; $5f35: $63
	db $ed                                           ; $5f36: $ed
	ldh a, [$64]                                     ; $5f37: $f0 $64
	sbc e                                            ; $5f39: $9b
	db $eb                                           ; $5f3a: $eb
	db $f4                                           ; $5f3b: $f4
	inc sp                                           ; $5f3c: $33
	ld a, h                                          ; $5f3d: $7c
	add sp, $1f                                      ; $5f3e: $e8 $1f
	ld d, $ef                                        ; $5f40: $16 $ef
	dec bc                                           ; $5f42: $0b

jr_048_5f43:
	rst FarCall                                          ; $5f43: $f7
	and b                                            ; $5f44: $a0
	rst $38                                          ; $5f45: $ff
	ld d, d                                          ; $5f46: $52
	db $fd                                           ; $5f47: $fd
	and [hl]                                         ; $5f48: $a6
	ld a, a                                          ; $5f49: $7f
	jp $f03f                                         ; $5f4a: $c3 $3f $f0


	rra                                              ; $5f4d: $1f
	ret z                                            ; $5f4e: $c8

	rlca                                             ; $5f4f: $07
	ld h, a                                          ; $5f50: $67

jr_048_5f51:
	add b                                            ; $5f51: $80
	add e                                            ; $5f52: $83
	dec de                                           ; $5f53: $1b
	rst SubAFromBC                                          ; $5f54: $e7
	adc b                                            ; $5f55: $88
	pop af                                           ; $5f56: $f1
	jp $cbfc                                         ; $5f57: $c3 $fc $cb


	inc b                                            ; $5f5a: $04
	inc sp                                           ; $5f5b: $33
	ret nz                                           ; $5f5c: $c0

	ld d, c                                          ; $5f5d: $51
	jr nz, jr_048_5fa7                               ; $5f5e: $20 $47

	jr nc, jr_048_5f51                               ; $5f60: $30 $ef

	db $10                                           ; $5f62: $10
	sbc a                                            ; $5f63: $9f
	ldh [$dd], a                                     ; $5f64: $e0 $dd
	ldh [c], a                                       ; $5f66: $e2
	dec a                                            ; $5f67: $3d
	ld [hl], d                                       ; $5f68: $72
	ld h, c                                          ; $5f69: $61
	ld [bc], a                                       ; $5f6a: $02
	rst SubAFromBC                                          ; $5f6b: $e7
	nop                                              ; $5f6c: $00
	ld [$2904], a                                    ; $5f6d: $ea $04 $29
	add $87                                          ; $5f70: $c6 $87
	ld e, l                                          ; $5f72: $5d
	ldh [c], a                                       ; $5f73: $e2
	cp l                                             ; $5f74: $bd
	ld b, d                                          ; $5f75: $42
	xor c                                            ; $5f76: $a9
	ld d, [hl]                                       ; $5f77: $56
	and c                                            ; $5f78: $a1
	ld e, [hl]                                       ; $5f79: $5e
	sub l                                            ; $5f7a: $95
	ld h, d                                          ; $5f7b: $62
	sub d                                            ; $5f7c: $92
	ld h, c                                          ; $5f7d: $61
	sbc a                                            ; $5f7e: $9f
	ld h, b                                          ; $5f7f: $60
	rst SubAFromDE                                          ; $5f80: $df

jr_048_5f81:
	jr nz, jr_048_5f81                               ; $5f81: $20 $fe

	ld bc, $0ad5                                     ; $5f83: $01 $d5 $0a
	ld a, [$2405]                                    ; $5f86: $fa $05 $24
	res 7, c                                         ; $5f89: $cb $b9
	cp c                                             ; $5f8b: $b9
	cp $1f                                           ; $5f8c: $fe $1f
	sbc [hl]                                         ; $5f8e: $9e
	cp $86                                           ; $5f8f: $fe $86
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	sub e                                            ; $5f93: $93
	push de                                          ; $5f94: $d5
	rst $38                                          ; $5f95: $ff
	dec b                                            ; $5f96: $05
	ld b, b                                          ; $5f97: $40
	ld b, d                                          ; $5f98: $42
	ldh [rAUD4ENV], a                                ; $5f99: $e0 $21
	ld [hl], a                                       ; $5f9b: $77
	ld [bc], a                                       ; $5f9c: $02
	rlca                                             ; $5f9d: $07
	ld bc, $bf77                                     ; $5f9e: $01 $77 $bf
	ld a, c                                          ; $5fa1: $79
	dec a                                            ; $5fa2: $3d
	ld a, l                                          ; $5fa3: $7d
	jr jr_048_5f2c                                   ; $5fa4: $18 $86

	ld e, b                                          ; $5fa6: $58

jr_048_5fa7:
	ld [bc], a                                       ; $5fa7: $02
	add b                                            ; $5fa8: $80
	dec b                                            ; $5fa9: $05
	ld d, b                                          ; $5faa: $50
	ld hl, sp-$5e                                    ; $5fab: $f8 $a2
	ldh a, [rBGP]                                    ; $5fad: $f0 $47
	ret nz                                           ; $5faf: $c0

	cpl                                              ; $5fb0: $2f
	add b                                            ; $5fb1: $80
	ld a, l                                          ; $5fb2: $7d
	ld [bc], a                                       ; $5fb3: $02
	cp b                                             ; $5fb4: $b8
	ld b, a                                          ; $5fb5: $47
	adc c                                            ; $5fb6: $89
	jr nz, jr_048_5fb9                               ; $5fb7: $20 $00

jr_048_5fb9:
	ld d, b                                          ; $5fb9: $50
	ld b, h                                          ; $5fba: $44
	rlca                                             ; $5fbb: $07
	xor b                                            ; $5fbc: $a8
	ld bc, $bff4                                     ; $5fbd: $01 $f4 $bf
	cp $5f                                           ; $5fc0: $fe $5f
	ld a, h                                          ; $5fc2: $7c
	jp nz, Jump_048_559a                             ; $5fc3: $c2 $9a $55

	ld b, h                                          ; $5fc6: $44
	inc de                                           ; $5fc7: $13
	adc b                                            ; $5fc8: $88
	daa                                              ; $5fc9: $27
	halt                                             ; $5fca: $76
	call nc, Call_048_4598                           ; $5fcb: $d4 $98 $45
	ld a, [hl-]                                      ; $5fce: $3a
	ld [hl+], a                                      ; $5fcf: $22
	dec e                                            ; $5fd0: $1d
	add c                                            ; $5fd1: $81
	ld c, $80                                        ; $5fd2: $0e $80
	halt                                             ; $5fd4: $76
	ld b, a                                          ; $5fd5: $47
	ld a, e                                          ; $5fd6: $7b
	cp $77                                           ; $5fd7: $fe $77
	ld hl, sp+$7f                                    ; $5fd9: $f8 $7f
	db $fc                                           ; $5fdb: $fc
	sbc e                                            ; $5fdc: $9b
	ld b, c                                          ; $5fdd: $41
	cp [hl]                                          ; $5fde: $be
	add d                                            ; $5fdf: $82
	ld a, l                                          ; $5fe0: $7d
	ld [hl], l                                       ; $5fe1: $75
	cp d                                             ; $5fe2: $ba
	ld [hl], a                                       ; $5fe3: $77
	db $fc                                           ; $5fe4: $fc
	ld a, [hl]                                       ; $5fe5: $7e
	xor h                                            ; $5fe6: $ac
	ld a, a                                          ; $5fe7: $7f
	db $f4                                           ; $5fe8: $f4
	ld a, a                                          ; $5fe9: $7f
	db $fc                                           ; $5fea: $fc
	sbc e                                            ; $5feb: $9b
	pop bc                                           ; $5fec: $c1
	dec b                                            ; $5fed: $05
	pop hl                                           ; $5fee: $e1
	inc bc                                           ; $5fef: $03
	ld [hl], a                                       ; $5ff0: $77
	db $fc                                           ; $5ff1: $fc
	ld a, [hl]                                       ; $5ff2: $7e
	cp b                                             ; $5ff3: $b8
	add b                                            ; $5ff4: $80
	ldh [$03], a                                     ; $5ff5: $e0 $03
	ret nz                                           ; $5ff7: $c0

	rlca                                             ; $5ff8: $07

jr_048_5ff9:
	and b                                            ; $5ff9: $a0
	rlca                                             ; $5ffa: $07
	ei                                               ; $5ffb: $fb
	rlca                                             ; $5ffc: $07
	di                                               ; $5ffd: $f3
	dec c                                            ; $5ffe: $0d
	push af                                          ; $5fff: $f5
	add hl, bc                                       ; $6000: $09
	push af                                          ; $6001: $f5
	add hl, bc                                       ; $6002: $09
	pop hl                                           ; $6003: $e1
	ld e, $0b                                        ; $6004: $1e $0b
	db $f4                                           ; $6006: $f4
	nop                                              ; $6007: $00
	jr c, jr_048_600b                                ; $6008: $38 $01

	nop                                              ; $600a: $00

jr_048_600b:
	ld b, b                                          ; $600b: $40
	cp a                                             ; $600c: $bf
	ld d, b                                          ; $600d: $50
	cp [hl]                                          ; $600e: $be
	ld a, c                                          ; $600f: $79
	ldh [$e1], a                                     ; $6010: $e0 $e1
	ret nz                                           ; $6012: $c0

	ld c, b                                          ; $6013: $48
	add b                                            ; $6014: $80
	add e                                            ; $6015: $83
	rra                                              ; $6016: $1f
	ld b, $1d                                        ; $6017: $06 $1d
	ld a, $15                                        ; $6019: $3e $15
	cp $ce                                           ; $601b: $fe $ce
	ld sp, $1f20                                     ; $601d: $31 $20 $1f
	and c                                            ; $6020: $a1
	ld e, $98                                        ; $6021: $1e $98
	jr nc, jr_048_6055                               ; $6023: $30 $30

	ld a, h                                          ; $6025: $7c
	ld d, b                                          ; $6026: $50
	jr c, jr_048_5ff9                                ; $6027: $38 $d0

	inc a                                            ; $6029: $3c
	ld c, c                                          ; $602a: $49
	or [hl]                                          ; $602b: $b6
	rrca                                             ; $602c: $0f
	rst $38                                          ; $602d: $ff
	ld a, [hl-]                                      ; $602e: $3a
	rst SubAFromDE                                          ; $602f: $df
	sub l                                            ; $6030: $95
	ld a, a                                          ; $6031: $7f
	xor e                                            ; $6032: $ab
	ld a, a                                          ; $6033: $7f
	sbc h                                            ; $6034: $9c
	cp c                                             ; $6035: $b9
	ld a, a                                          ; $6036: $7f
	or e                                             ; $6037: $b3
	ld a, e                                          ; $6038: $7b
	cp $80                                           ; $6039: $fe $80
	db $eb                                           ; $603b: $eb
	ld a, a                                          ; $603c: $7f
	ld d, l                                          ; $603d: $55
	cp $ab                                           ; $603e: $fe $ab
	db $fc                                           ; $6040: $fc
	ld d, c                                          ; $6041: $51
	rst $38                                          ; $6042: $ff
	and d                                            ; $6043: $a2
	rst $38                                          ; $6044: $ff
	ld c, l                                          ; $6045: $4d
	rst FarCall                                          ; $6046: $f7
	sbc e                                            ; $6047: $9b
	and $44                                          ; $6048: $e6 $44
	rst $38                                          ; $604a: $ff
	adc d                                            ; $604b: $8a
	rst $38                                          ; $604c: $ff
	ld hl, sp+$3f                                    ; $604d: $f8 $3f
	jr c, @+$01                                      ; $604f: $38 $ff

	ld b, [hl]                                       ; $6051: $46
	ld sp, hl                                        ; $6052: $f9
	sub d                                            ; $6053: $92
	rst AddAOntoHL                                          ; $6054: $ef

jr_048_6055:
	dec h                                            ; $6055: $25
	rst SubAFromDE                                          ; $6056: $df
	ld a, [bc]                                       ; $6057: $0a
	rst $38                                          ; $6058: $ff
	inc de                                           ; $6059: $13
	add b                                            ; $605a: $80
	db $fc                                           ; $605b: $fc
	ld l, [hl]                                       ; $605c: $6e
	cp c                                             ; $605d: $b9
	ld a, [de]                                       ; $605e: $1a
	db $fc                                           ; $605f: $fc
	inc b                                            ; $6060: $04
	rst $38                                          ; $6061: $ff
	jp z, $dd07                                      ; $6062: $ca $07 $dd

	db $e3                                           ; $6065: $e3
	ld c, l                                          ; $6066: $4d
	di                                               ; $6067: $f3
	and $19                                          ; $6068: $e6 $19
	ld d, d                                          ; $606a: $52
	db $fd                                           ; $606b: $fd
	and $f9                                          ; $606c: $e6 $f9
	cp b                                             ; $606e: $b8
	ld a, a                                          ; $606f: $7f
	call c, $083f                                    ; $6070: $dc $3f $08
	cp a                                             ; $6073: $bf
	ld h, l                                          ; $6074: $65
	sbc [hl]                                         ; $6075: $9e
	ld [$a4df], sp                                   ; $6076: $08 $df $a4
	rst SubAFromDE                                          ; $6079: $df

jr_048_607a:
	ld a, a                                          ; $607a: $7f
	jp nc, $c484                                     ; $607b: $d2 $84 $c4

	rst $38                                          ; $607e: $ff
	ret z                                            ; $607f: $c8

	rst FarCall                                          ; $6080: $f7
	ret c                                            ; $6081: $d8

	rst SubAFromBC                                          ; $6082: $e7
	ld l, d                                          ; $6083: $6a
	pop af                                           ; $6084: $f1
	push hl                                          ; $6085: $e5
	ld a, e                                          ; $6086: $7b
	ld sp, $35ff                                     ; $6087: $31 $ff $35
	ld a, [$fc33]                                    ; $608a: $fa $33 $fc
	ld sp, $dffb                                     ; $608d: $31 $fb $df
	nop                                              ; $6090: $00
	inc sp                                           ; $6091: $33
	ret nz                                           ; $6092: $c0

	rlca                                             ; $6093: $07
	ld hl, sp+$3f                                    ; $6094: $f8 $3f
	ld a, a                                          ; $6096: $7f
	cp a                                             ; $6097: $bf
	ld [hl], e                                       ; $6098: $73
	cp $7f                                           ; $6099: $fe $7f
	inc a                                            ; $609b: $3c
	ld a, h                                          ; $609c: $7c
	push de                                          ; $609d: $d5
	sbc d                                            ; $609e: $9a
	ld hl, sp+$07                                    ; $609f: $f8 $07
	rrca                                             ; $60a1: $0f
	ldh a, [rIE]                                     ; $60a2: $f0 $ff
	db $dd                                           ; $60a4: $dd
	cp $7a                                           ; $60a5: $fe $7a
	ld l, d                                          ; $60a7: $6a
	ld a, a                                          ; $60a8: $7f
	jr c, @+$81                                      ; $60a9: $38 $7f

	ldh a, [c]                                       ; $60ab: $f2
	sub h                                            ; $60ac: $94
	call nz, $013f                  ; $60ad: $c4 $3f $01
	rst $38                                          ; $60b0: $ff
	ld c, l                                          ; $60b1: $4d
	rst $38                                          ; $60b2: $ff
	add hl, bc                                       ; $60b3: $09
	rst $38                                          ; $60b4: $ff
	ld b, c                                          ; $60b5: $41
	rst $38                                          ; $60b6: $ff
	ld c, c                                          ; $60b7: $49
	ld a, e                                          ; $60b8: $7b
	db $fc                                           ; $60b9: $fc
	sbc [hl]                                         ; $60ba: $9e
	jr c, jr_048_607a                                ; $60bb: $38 $bd

	ccf                                              ; $60bd: $3f
	ccf                                              ; $60be: $3f
	ld a, a                                          ; $60bf: $7f
	cp a                                             ; $60c0: $bf
	sbc h                                            ; $60c1: $9c
	ld b, b                                          ; $60c2: $40
	ld e, a                                          ; $60c3: $5f
	jr nz, jr_048_6141                               ; $60c4: $20 $7b

	db $fc                                           ; $60c6: $fc
	sbc d                                            ; $60c7: $9a
	and b                                            ; $60c8: $a0
	db $10                                           ; $60c9: $10
	ld a, [bc]                                       ; $60ca: $0a
	xor c                                            ; $60cb: $a9
	inc b                                            ; $60cc: $04
	ld e, h                                          ; $60cd: $5c
	ld a, b                                          ; $60ce: $78
	ld a, a                                          ; $60cf: $7f
	cp $9b                                           ; $60d0: $fe $9b
	ld [$d515], a                                    ; $60d2: $ea $15 $d5
	ld a, [hl+]                                      ; $60d5: $2a
	ld e, l                                          ; $60d6: $5d
	cp h                                             ; $60d7: $bc
	sbc l                                            ; $60d8: $9d
	ld d, c                                          ; $60d9: $51
	xor [hl]                                         ; $60da: $ae
	ld e, a                                          ; $60db: $5f
	db $f4                                           ; $60dc: $f4
	ld l, a                                          ; $60dd: $6f
	db $fc                                           ; $60de: $fc
	sub c                                            ; $60df: $91
	ldh [rTAC], a                                    ; $60e0: $e0 $07
	ld h, d                                          ; $60e2: $62
	add c                                            ; $60e3: $81
	or d                                             ; $60e4: $b2
	ld b, c                                          ; $60e5: $41
	ld e, b                                          ; $60e6: $58
	and c                                            ; $60e7: $a1
	xor b                                            ; $60e8: $a8
	ld d, c                                          ; $60e9: $51
	ld d, [hl]                                       ; $60ea: $56
	xor c                                            ; $60eb: $a9
	xor b                                            ; $60ec: $a8
	ld d, a                                          ; $60ed: $57
	ld [hl], l                                       ; $60ee: $75
	ld c, h                                          ; $60ef: $4c
	ld a, [hl]                                       ; $60f0: $7e
	call z, $d47e                                    ; $60f1: $cc $7e $d4
	ld a, [hl]                                       ; $60f4: $7e
	ld a, [$fc7f]                                    ; $60f5: $fa $7f $fc
	sbc l                                            ; $60f8: $9d
	inc b                                            ; $60f9: $04
	ei                                               ; $60fa: $fb
	cp a                                             ; $60fb: $bf
	rst $38                                          ; $60fc: $ff
	rst $38                                          ; $60fd: $ff
	add e                                            ; $60fe: $83
	inc bc                                           ; $60ff: $03
	db $fc                                           ; $6100: $fc
	dec b                                            ; $6101: $05
	ld a, [$f40b]                                    ; $6102: $fa $0b $f4
	dec d                                            ; $6105: $15
	ld [$f40b], a                                    ; $6106: $ea $0b $f4
	ld e, $e0                                        ; $6109: $1e $e0
	inc l                                            ; $610b: $2c
	ret nc                                           ; $610c: $d0

	ld e, b                                          ; $610d: $58
	and b                                            ; $610e: $a0
	rlca                                             ; $610f: $07
	rst JumpTable                                          ; $6110: $c7
	inc bc                                           ; $6111: $03
	add h                                            ; $6112: $84
	inc bc                                           ; $6113: $03
	inc c                                            ; $6114: $0c
	ld bc, $0386                                     ; $6115: $01 $86 $03
	inc e                                            ; $6118: $1c
	dec b                                            ; $6119: $05
	ld a, [hl+]                                      ; $611a: $2a
	ld [hl], a                                       ; $611b: $77
	db $fc                                           ; $611c: $fc
	sbc d                                            ; $611d: $9a
	jp $fdff                                         ; $611e: $c3 $ff $fd


	ld a, [hl]                                       ; $6121: $7e
	or l                                             ; $6122: $b5
	cp e                                             ; $6123: $bb
	xor d                                            ; $6124: $aa
	ld d, l                                          ; $6125: $55
	cp a                                             ; $6126: $bf
	ld e, a                                          ; $6127: $5f
	cp a                                             ; $6128: $bf
	ld a, $7f                                        ; $6129: $3e $7f
	ld e, d                                          ; $612b: $5a
	cp d                                             ; $612c: $ba
	ld d, l                                          ; $612d: $55
	rst $38                                          ; $612e: $ff
	rst $38                                          ; $612f: $ff
	rst $38                                          ; $6130: $ff
	rst $38                                          ; $6131: $ff
	rst $38                                          ; $6132: $ff
	add e                                            ; $6133: $83
	sbc e                                            ; $6134: $9b
	ld a, h                                          ; $6135: $7c
	xor [hl]                                         ; $6136: $ae
	inc c                                            ; $6137: $0c
	ld d, h                                          ; $6138: $54
	cp e                                             ; $6139: $bb
	xor d                                            ; $613a: $aa
	push af                                          ; $613b: $f5
	ld a, [$fefd]                                    ; $613c: $fa $fd $fe
	push af                                          ; $613f: $f5
	add b                                            ; $6140: $80

jr_048_6141:
	ld a, e                                          ; $6141: $7b
	xor e                                            ; $6142: $ab
	ld a, a                                          ; $6143: $7f
	or l                                             ; $6144: $b5
	ld a, a                                          ; $6145: $7f
	sbc a                                            ; $6146: $9f
	ld [hl], e                                       ; $6147: $73
	ld d, l                                          ; $6148: $55
	dec sp                                           ; $6149: $3b
	ld c, l                                          ; $614a: $4d
	dec sp                                           ; $614b: $3b
	ld e, e                                          ; $614c: $5b
	dec a                                            ; $614d: $3d
	rrca                                             ; $614e: $0f
	inc a                                            ; $614f: $3c
	ld b, h                                          ; $6150: $44
	rst $38                                          ; $6151: $ff
	adc e                                            ; $6152: $8b
	cp $15                                           ; $6153: $fe $15
	xor $9a                                          ; $6155: $ee $9a
	rst AddAOntoHL                                          ; $6157: $ef
	ld d, l                                          ; $6158: $55
	rst AddAOntoHL                                          ; $6159: $ef
	sbc d                                            ; $615a: $9a
	rst SubAFromBC                                          ; $615b: $e7
	pop de                                           ; $615c: $d1
	rst SubAFromBC                                          ; $615d: $e7
	and h                                            ; $615e: $a4
	ei                                               ; $615f: $fb
	add b                                            ; $6160: $80
	ld d, $f9                                        ; $6161: $16 $f9
	ld l, $f9                                        ; $6163: $2e $f9
	ld d, a                                          ; $6165: $57
	cp h                                             ; $6166: $bc
	adc d                                            ; $6167: $8a
	ccf                                              ; $6168: $3f
	ld b, c                                          ; $6169: $41
	sbc a                                            ; $616a: $9f
	xor b                                            ; $616b: $a8
	rst JumpTable                                          ; $616c: $c7
	ld e, [hl]                                       ; $616d: $5e
	pop hl                                           ; $616e: $e1
	xor c                                            ; $616f: $a9
	cp $e6                                           ; $6170: $fe $e6
	ld sp, hl                                        ; $6172: $f9
	inc c                                            ; $6173: $0c
	di                                               ; $6174: $f3
	ld hl, sp+$07                                    ; $6175: $f8 $07
	and b                                            ; $6177: $a0
	rst SubAFromDE                                          ; $6178: $df
	ld e, b                                          ; $6179: $58
	rst $38                                          ; $617a: $ff
	and c                                            ; $617b: $a1
	cp $0e                                           ; $617c: $fe $0e
	pop af                                           ; $617e: $f1

Jump_048_617f:
	ldh a, [$80]                                     ; $617f: $f0 $80
	rrca                                             ; $6181: $0f
	adc d                                            ; $6182: $8a
	rst $38                                          ; $6183: $ff
	inc b                                            ; $6184: $04
	rst $38                                          ; $6185: $ff
	dec bc                                           ; $6186: $0b
	cp $04                                           ; $6187: $fe $04
	rst $38                                          ; $6189: $ff
	ld c, b                                          ; $618a: $48
	cp a                                             ; $618b: $bf
	inc d                                            ; $618c: $14
	rst $38                                          ; $618d: $ff
	inc h                                            ; $618e: $24
	ei                                               ; $618f: $fb
	sub [hl]                                         ; $6190: $96
	rst AddAOntoHL                                          ; $6191: $ef
	dec h                                            ; $6192: $25
	ei                                               ; $6193: $fb
	ld h, l                                          ; $6194: $65
	ei                                               ; $6195: $fb
	ld [hl], l                                       ; $6196: $75
	ld hl, sp-$20                                    ; $6197: $f8 $e0
	db $fd                                           ; $6199: $fd
	add h                                            ; $619a: $84
	ld sp, hl                                        ; $619b: $f9
	adc c                                            ; $619c: $89
	or $03                                           ; $619d: $f6 $03
	db $fc                                           ; $619f: $fc
	sub l                                            ; $61a0: $95
	add hl, bc                                       ; $61a1: $09
	db $f4                                           ; $61a2: $f4
	xor a                                            ; $61a3: $af
	ld b, b                                          ; $61a4: $40
	ret nz                                           ; $61a5: $c0

	ccf                                              ; $61a6: $3f
	cp a                                             ; $61a7: $bf
	ld a, a                                          ; $61a8: $7f
	ccf                                              ; $61a9: $3f
	rst $38                                          ; $61aa: $ff
	ld l, [hl]                                       ; $61ab: $6e
	ret nz                                           ; $61ac: $c0

	ld a, l                                          ; $61ad: $7d
	cp $7f                                           ; $61ae: $fe $7f
	adc [hl]                                         ; $61b0: $8e
	ld a, [hl]                                       ; $61b1: $7e
	call z, $c77a                                    ; $61b2: $cc $7a $c7
	ld l, e                                          ; $61b5: $6b
	cp $7f                                           ; $61b6: $fe $7f
	db $f4                                           ; $61b8: $f4
	sbc b                                            ; $61b9: $98
	ld c, e                                          ; $61ba: $4b
	rst FarCall                                          ; $61bb: $f7
	sub e                                            ; $61bc: $93
	ld a, a                                          ; $61bd: $7f
	sub e                                            ; $61be: $93
	rst $38                                          ; $61bf: $ff
	add e                                            ; $61c0: $83
	ld [hl], e                                       ; $61c1: $73
	cp $9b                                           ; $61c2: $fe $9b
	ld d, e                                          ; $61c4: $53
	rst AddAOntoHL                                          ; $61c5: $ef
	ld d, c                                          ; $61c6: $51
	rst AddAOntoHL                                          ; $61c7: $ef
	halt                                             ; $61c8: $76
	call z, Call_048_507c                            ; $61c9: $cc $7c $50
	sbc e                                            ; $61cc: $9b
	dec e                                            ; $61cd: $1d
	ldh [c], a                                       ; $61ce: $e2
	ld a, [hl+]                                      ; $61cf: $2a
	push de                                          ; $61d0: $d5
	ld [hl], l                                       ; $61d1: $75
	ret nc                                           ; $61d2: $d0

	ld l, [hl]                                       ; $61d3: $6e
	db $ec                                           ; $61d4: $ec
	sbc e                                            ; $61d5: $9b
	and d                                            ; $61d6: $a2
	ld e, l                                          ; $61d7: $5d
	ld b, b                                          ; $61d8: $40
	cp a                                             ; $61d9: $bf
	cp a                                             ; $61da: $bf
	rst $38                                          ; $61db: $ff
	rst $38                                          ; $61dc: $ff
	ld h, h                                          ; $61dd: $64
	ld c, b                                          ; $61de: $48
	cp e                                             ; $61df: $bb
	rst $38                                          ; $61e0: $ff
	rst $38                                          ; $61e1: $ff
	rst $38                                          ; $61e2: $ff
	rst $38                                          ; $61e3: $ff
	rst $38                                          ; $61e4: $ff
	rst $38                                          ; $61e5: $ff
	ld h, h                                          ; $61e6: $64
	ld h, b                                          ; $61e7: $60
	ld e, a                                          ; $61e8: $5f
	ldh a, [rPCM12]                                  ; $61e9: $f0 $76
	call z, $ffbb                                    ; $61eb: $cc $bb $ff
	rst $38                                          ; $61ee: $ff
	rst $38                                          ; $61ef: $ff
	rst $38                                          ; $61f0: $ff
	rst $38                                          ; $61f1: $ff
	rst $38                                          ; $61f2: $ff
	ld a, a                                          ; $61f3: $7f
	sbc h                                            ; $61f4: $9c
	ld [hl], a                                       ; $61f5: $77
	db $fc                                           ; $61f6: $fc
	ld a, [hl]                                       ; $61f7: $7e
	ret nc                                           ; $61f8: $d0

	add b                                            ; $61f9: $80
	rla                                              ; $61fa: $17
	add sp, $2e                                      ; $61fb: $e8 $2e
	ret nc                                           ; $61fd: $d0

	inc a                                            ; $61fe: $3c
	ret nz                                           ; $61ff: $c0

	cp b                                             ; $6200: $b8
	ld b, b                                          ; $6201: $40
	ld [hl], b                                       ; $6202: $70
	add b                                            ; $6203: $80
	ldh [rSB], a                                     ; $6204: $e0 $01
	ret nz                                           ; $6206: $c0

	ld [bc], a                                       ; $6207: $02
	add b                                            ; $6208: $80
	ld bc, $101c                                     ; $6209: $01 $1c $10
	inc l                                            ; $620c: $2c
	ld a, [hl-]                                      ; $620d: $3a
	ld d, d                                          ; $620e: $52
	ld a, h                                          ; $620f: $7c
	dec bc                                           ; $6210: $0b
	inc d                                            ; $6211: $14
	rlca                                             ; $6212: $07
	cp b                                             ; $6213: $b8
	dec bc                                           ; $6214: $0b
	ld d, h                                          ; $6215: $54
	rlca                                             ; $6216: $07
	cp b                                             ; $6217: $b8
	inc bc                                           ; $6218: $03
	sbc b                                            ; $6219: $98
	ld e, h                                          ; $621a: $5c
	dec b                                            ; $621b: $05
	xor d                                            ; $621c: $aa
	inc bc                                           ; $621d: $03
	ld e, h                                          ; $621e: $5c
	rlca                                             ; $621f: $07
	jr z, jr_048_629c                                ; $6220: $28 $7a

	ld b, [hl]                                       ; $6222: $46
	or c                                             ; $6223: $b1
	ld a, a                                          ; $6224: $7f
	cp a                                             ; $6225: $bf
	ld a, a                                          ; $6226: $7f
	cp a                                             ; $6227: $bf
	ld a, a                                          ; $6228: $7f
	rst $38                                          ; $6229: $ff
	rst $38                                          ; $622a: $ff
	rst $38                                          ; $622b: $ff
	rst $38                                          ; $622c: $ff
	rst $38                                          ; $622d: $ff
	rst $38                                          ; $622e: $ff
	rst $38                                          ; $622f: $ff
	rst $38                                          ; $6230: $ff
	rst $38                                          ; $6231: $ff
	rst FarCall                                          ; $6232: $f7
	ld a, [$f5ba]                                    ; $6233: $fa $ba $f5
	ld a, [rIE]                                    ; $6236: $fa $ff $ff
	rst $38                                          ; $6239: $ff
	rst $38                                          ; $623a: $ff
	dec h                                            ; $623b: $25
	sub e                                            ; $623c: $93
	ld e, $ae                                        ; $623d: $1e $ae
	rra                                              ; $623f: $1f
	ld [hl], a                                       ; $6240: $77
	rrca                                             ; $6241: $0f
	sbc e                                            ; $6242: $9b
	rlca                                             ; $6243: $07
	or c                                             ; $6244: $b1
	ld a, a                                          ; $6245: $7f
	push af                                          ; $6246: $f5
	ld e, $c6                                        ; $6247: $1e $c6
	ld a, e                                          ; $6249: $7b
	ld d, $7d                                        ; $624a: $16 $7d
	xor h                                            ; $624c: $ac
	ld a, a                                          ; $624d: $7f
	cp l                                             ; $624e: $bd
	add [hl]                                         ; $624f: $86
	dec d                                            ; $6250: $15
	ccf                                              ; $6251: $3f
	adc d                                            ; $6252: $8a
	rst $38                                          ; $6253: $ff
	ld d, c                                          ; $6254: $51
	rst AddAOntoHL                                          ; $6255: $ef
	xor h                                            ; $6256: $ac
	di                                               ; $6257: $f3
	or c                                             ; $6258: $b1
	ld a, $04                                        ; $6259: $3e $04
	rst GetHLinHL                                          ; $625b: $cf
	ld d, h                                          ; $625c: $54
	rst $38                                          ; $625d: $ff
	xor d                                            ; $625e: $aa
	ld a, a                                          ; $625f: $7f
	ld [hl], h                                       ; $6260: $74
	adc a                                            ; $6261: $8f
	add e                                            ; $6262: $83
	db $fc                                           ; $6263: $fc
	ld d, a                                          ; $6264: $57
	rst $38                                          ; $6265: $ff
	xor d                                            ; $6266: $aa
	rst $38                                          ; $6267: $ff
	dec d                                            ; $6268: $15
	ld a, e                                          ; $6269: $7b
	rst GetHLinHL                                          ; $626a: $cf
	sub d                                            ; $626b: $92
	add sp, -$01                                     ; $626c: $e8 $ff
	or c                                             ; $626e: $b1
	cp $5a                                           ; $626f: $fe $5a
	push hl                                          ; $6271: $e5
	add a                                            ; $6272: $87
	ld a, a                                          ; $6273: $7f
	rst $38                                          ; $6274: $ff
	rst $38                                          ; $6275: $ff
	cp [hl]                                          ; $6276: $be
	rst $38                                          ; $6277: $ff
	ld d, l                                          ; $6278: $55
	ld a, e                                          ; $6279: $7b
	ld e, $80                                        ; $627a: $1e $80
	ld h, l                                          ; $627c: $65
	sbc a                                            ; $627d: $9f
	cp h                                             ; $627e: $bc
	ld a, a                                          ; $627f: $7f
	ld sp, hl                                        ; $6280: $f9
	cp $e8                                           ; $6281: $fe $e8
	rst $38                                          ; $6283: $ff
	ld d, b                                          ; $6284: $50
	rst $38                                          ; $6285: $ff
	xor c                                            ; $6286: $a9
	cp $44                                           ; $6287: $fe $44
	ld sp, hl                                        ; $6289: $f9
	ld de, $89e7                                     ; $628a: $11 $e7 $89
	ld a, [hl]                                       ; $628d: $7e
	adc d                                            ; $628e: $8a
	ld [hl], a                                       ; $628f: $77
	ld d, $ef                                        ; $6290: $16 $ef
	ld [hl], $cf                                     ; $6292: $36 $cf
	ld h, [hl]                                       ; $6294: $66
	sbc a                                            ; $6295: $9f
	adc $3f                                          ; $6296: $ce $3f
	sub [hl]                                         ; $6298: $96
	ld l, a                                          ; $6299: $6f
	ld h, $9b                                        ; $629a: $26 $9b

jr_048_629c:
	rst $38                                          ; $629c: $ff
	and $00                                          ; $629d: $e6 $00
	add b                                            ; $629f: $80
	ld e, d                                          ; $62a0: $5a
	jp nz, $8e77                                     ; $62a1: $c2 $77 $8e

	ld a, a                                          ; $62a4: $7f
	inc [hl]                                         ; $62a5: $34
	sbc [hl]                                         ; $62a6: $9e
	db $fd                                           ; $62a7: $fd
	ld [hl], e                                       ; $62a8: $73
	cp $9e                                           ; $62a9: $fe $9e
	db $fc                                           ; $62ab: $fc
	ld a, e                                          ; $62ac: $7b
	di                                               ; $62ad: $f3
	ld a, a                                          ; $62ae: $7f
	db $fd                                           ; $62af: $fd
	adc a                                            ; $62b0: $8f
	ld l, e                                          ; $62b1: $6b
	rst FarCall                                          ; $62b2: $f7
	jr nc, @+$01                                     ; $62b3: $30 $ff

	ld a, b                                          ; $62b5: $78
	rst $38                                          ; $62b6: $ff
	jr c, @+$01                                      ; $62b7: $38 $ff

	ld a, h                                          ; $62b9: $7c
	rst $38                                          ; $62ba: $ff
	dec sp                                           ; $62bb: $3b
	db $fc                                           ; $62bc: $fc
	ld l, h                                          ; $62bd: $6c
	di                                               ; $62be: $f3
	ld h, a                                          ; $62bf: $67
	rst $38                                          ; $62c0: $ff
	ld e, e                                          ; $62c1: $5b
	nop                                              ; $62c2: $00
	sbc l                                            ; $62c3: $9d
	ld [hl], a                                       ; $62c4: $77
	inc sp                                           ; $62c5: $33
	db $dd                                           ; $62c6: $dd
	ld b, h                                          ; $62c7: $44
	sbc [hl]                                         ; $62c8: $9e
	ld b, [hl]                                       ; $62c9: $46
	sbc $44                                          ; $62ca: $de $44
	sub l                                            ; $62cc: $95
	ld [hl], e                                       ; $62cd: $73
	inc sp                                           ; $62ce: $33
	inc sp                                           ; $62cf: $33
	ld d, l                                          ; $62d0: $55
	ld d, l                                          ; $62d1: $55
	ld b, h                                          ; $62d2: $44
	ld b, [hl]                                       ; $62d3: $46
	ld h, h                                          ; $62d4: $64
	ld b, h                                          ; $62d5: $44
	ld d, l                                          ; $62d6: $55
	ld a, e                                          ; $62d7: $7b
	or $df                                           ; $62d8: $f6 $df
	inc sp                                           ; $62da: $33
	sbc l                                            ; $62db: $9d
	dec [hl]                                         ; $62dc: $35
	ld h, [hl]                                       ; $62dd: $66
	sbc $44                                          ; $62de: $de $44
	sbc [hl]                                         ; $62e0: $9e
	scf                                              ; $62e1: $37
	call c, $9d33                                    ; $62e2: $dc $33 $9d
	ld h, [hl]                                       ; $62e5: $66
	ld h, l                                          ; $62e6: $65
	ld l, e                                          ; $62e7: $6b
	or $7f                                           ; $62e8: $f6 $7f
	db $ec                                           ; $62ea: $ec
	sbc l                                            ; $62eb: $9d
	ld d, l                                          ; $62ec: $55
	ld h, l                                          ; $62ed: $65
	ld [hl], e                                       ; $62ee: $73
	or $99                                           ; $62ef: $f6 $99
	ld [hl], e                                       ; $62f1: $73
	ld d, [hl]                                       ; $62f2: $56
	ld d, l                                          ; $62f3: $55
	ld b, l                                          ; $62f4: $45
	ld b, [hl]                                       ; $62f5: $46
	ld b, h                                          ; $62f6: $44
	db $dd                                           ; $62f7: $dd
	inc sp                                           ; $62f8: $33
	ld a, a                                          ; $62f9: $7f
	ld hl, sp-$64                                    ; $62fa: $f8 $9c
	ld b, h                                          ; $62fc: $44
	ld h, l                                          ; $62fd: $65
	ld h, [hl]                                       ; $62fe: $66
	ld [hl], e                                       ; $62ff: $73
	or $99                                           ; $6300: $f6 $99
	ld d, [hl]                                       ; $6302: $56
	ld b, l                                          ; $6303: $45
	ld h, [hl]                                       ; $6304: $66
	ld h, [hl]                                       ; $6305: $66
	ld d, [hl]                                       ; $6306: $56
	ld h, [hl]                                       ; $6307: $66
	db $dd                                           ; $6308: $dd
	inc sp                                           ; $6309: $33
	sbc [hl]                                         ; $630a: $9e
	ld d, h                                          ; $630b: $54
	sbc $66                                          ; $630c: $de $66
	sbc l                                            ; $630e: $9d
	ld h, h                                          ; $630f: $64
	ld b, l                                          ; $6310: $45
	sbc $33                                          ; $6311: $de $33
	sbc [hl]                                         ; $6313: $9e
	scf                                              ; $6314: $37
	db $dd                                           ; $6315: $dd
	ld h, [hl]                                       ; $6316: $66
	sbc l                                            ; $6317: $9d
	ld h, h                                          ; $6318: $64
	ld b, [hl]                                       ; $6319: $46
	ld e, a                                          ; $631a: $5f
	or $bc                                           ; $631b: $f6 $bc
	adc c                                            ; $631d: $89
	rst SubAFromDE                                          ; $631e: $df
	rst $38                                          ; $631f: $ff
	db $db                                           ; $6320: $db
	ret nz                                           ; $6321: $c0

	rst SubAFromHL                                          ; $6322: $d7
	rst $38                                          ; $6323: $ff
	ei                                               ; $6324: $fb
	dec hl                                           ; $6325: $2b
	ldh a, [$9e]                                     ; $6326: $f0 $9e
	cp $6f                                           ; $6328: $fe $6f
	ldh a, [$9d]                                     ; $632a: $f0 $9d
	inc bc                                           ; $632c: $03
	rst AddAOntoHL                                          ; $632d: $ef
	db $db                                           ; $632e: $db
	rst $38                                          ; $632f: $ff
	sbc l                                            ; $6330: $9d
	db $fc                                           ; $6331: $fc
	ld [hl], l                                       ; $6332: $75
	ld l, a                                          ; $6333: $6f
	ldh a, [$9e]                                     ; $6334: $f0 $9e
	add b                                            ; $6336: $80
	inc bc                                           ; $6337: $03
	ret nz                                           ; $6338: $c0

	inc bc                                           ; $6339: $03
	ldh a, [$03]                                     ; $633a: $f0 $03
	ldh a, [$03]                                     ; $633c: $f0 $03
	ldh a, [$03]                                     ; $633e: $f0 $03
	ldh a, [$03]                                     ; $6340: $f0 $03
	ldh a, [$03]                                     ; $6342: $f0 $03
	ldh a, [$3f]                                     ; $6344: $f0 $3f
	ldh a, [$d9]                                     ; $6346: $f0 $d9
	ret nz                                           ; $6348: $c0

	db $db                                           ; $6349: $db
	rst $38                                          ; $634a: $ff
	sbc l                                            ; $634b: $9d
	db $fd                                           ; $634c: $fd
	ei                                               ; $634d: $fb
	cp $9e                                           ; $634e: $fe $9e
	rlca                                             ; $6350: $07
	sbc $0f                                          ; $6351: $de $0f
	sbc [hl]                                         ; $6353: $9e
	ld a, a                                          ; $6354: $7f
	sbc $ff                                          ; $6355: $de $ff
	sbc c                                            ; $6357: $99
	ld sp, hl                                        ; $6358: $f9
	di                                               ; $6359: $f3
	or $f2                                           ; $635a: $f6 $f2
	daa                                              ; $635c: $27
	ld [bc], a                                       ; $635d: $02
	ld [hl], e                                       ; $635e: $73
	push af                                          ; $635f: $f5
	ld a, d                                          ; $6360: $7a
	sub $87                                          ; $6361: $d6 $87
	db $f4                                           ; $6363: $f4
	ldh [$f1], a                                     ; $6364: $e0 $f1
	ldh [c], a                                       ; $6366: $e2
	ldh [$e2], a                                     ; $6367: $e0 $e2
	ld h, h                                          ; $6369: $64
	db $ed                                           ; $636a: $ed
	xor a                                            ; $636b: $af
	sub a                                            ; $636c: $97
	rst SubAFromDE                                          ; $636d: $df
	rst AddAOntoHL                                          ; $636e: $ef
	db $fc                                           ; $636f: $fc
	call c, Call_048_72cd                            ; $6370: $dc $cd $72
	push af                                          ; $6373: $f5
	ld h, d                                          ; $6374: $62
	and c                                            ; $6375: $a1
	ld [hl], d                                       ; $6376: $72
	rlca                                             ; $6377: $07
	inc bc                                           ; $6378: $03
	add a                                            ; $6379: $87
	ldh [$dd], a                                     ; $637a: $e0 $dd
	ldh a, [$9e]                                     ; $637c: $f0 $9e
	db $fc                                           ; $637e: $fc
	ret c                                            ; $637f: $d8

	rst $38                                          ; $6380: $ff
	sbc [hl]                                         ; $6381: $9e
	ld a, a                                          ; $6382: $7f
	ld sp, hl                                        ; $6383: $f9
	db $db                                           ; $6384: $db
	rst $38                                          ; $6385: $ff
	sbc [hl]                                         ; $6386: $9e
	cp a                                             ; $6387: $bf
	ld l, e                                          ; $6388: $6b
	sub d                                            ; $6389: $92
	ld h, e                                          ; $638a: $63
	sub b                                            ; $638b: $90
	sbc [hl]                                         ; $638c: $9e
	or $4f                                           ; $638d: $f6 $4f
	ldh a, [$9d]                                     ; $638f: $f0 $9d
	db $fd                                           ; $6391: $fd
	xor d                                            ; $6392: $aa
	ld d, a                                          ; $6393: $57
	ldh a, [$7f]                                     ; $6394: $f0 $7f
	ldh a, [c]                                       ; $6396: $f2
	sbc [hl]                                         ; $6397: $9e
	ld d, l                                          ; $6398: $55
	ld d, a                                          ; $6399: $57
	ldh a, [$9d]                                     ; $639a: $f0 $9d
	ld a, [$5355]                                    ; $639c: $fa $55 $53
	ldh a, [$9d]                                     ; $639f: $f0 $9d
	ld e, a                                          ; $63a1: $5f
	xor [hl]                                         ; $63a2: $ae
	ld d, e                                          ; $63a3: $53
	ldh a, [$9e]                                     ; $63a4: $f0 $9e
	rst AddAOntoHL                                          ; $63a6: $ef
	ld [hl], a                                       ; $63a7: $77
	jp nc, Jump_048_559d                             ; $63a8: $d2 $9d $55

	and d                                            ; $63ab: $a2
	ld e, a                                          ; $63ac: $5f
	ldh [$9e], a                                     ; $63ad: $e0 $9e
	push de                                          ; $63af: $d5
	ld [hl], a                                       ; $63b0: $77
	ldh a, [$5f]                                     ; $63b1: $f0 $5f
	ldh [$9e], a                                     ; $63b3: $e0 $9e
	xor e                                            ; $63b5: $ab
	ld [hl], a                                       ; $63b6: $77
	ldh a, [c]                                       ; $63b7: $f2
	ld e, e                                          ; $63b8: $5b
	ldh a, [$9e]                                     ; $63b9: $f0 $9e
	cp d                                             ; $63bb: $ba
	ld c, a                                          ; $63bc: $4f
	ldh a, [$9e]                                     ; $63bd: $f0 $9e
	rst FarCall                                          ; $63bf: $f7
	ld b, a                                          ; $63c0: $47
	ldh [$9e], a                                     ; $63c1: $e0 $9e
	xor $4b                                          ; $63c3: $ee $4b
	ldh a, [$98]                                     ; $63c5: $f0 $98
	cp $5f                                           ; $63c7: $fe $5f
	xor d                                            ; $63c9: $aa
	ld d, l                                          ; $63ca: $55
	xor b                                            ; $63cb: $a8
	ld d, b                                          ; $63cc: $50
	and b                                            ; $63cd: $a0
	ld h, e                                          ; $63ce: $63
	ldh a, [$9b]                                     ; $63cf: $f0 $9b
	cp [hl]                                          ; $63d1: $be
	ld e, h                                          ; $63d2: $5c
	xor b                                            ; $63d3: $a8
	ld d, b                                          ; $63d4: $50
	or $9c                                           ; $63d5: $f6 $9c
	ld e, a                                          ; $63d7: $5f
	ld a, [bc]                                       ; $63d8: $0a
	ld bc, $8afc                                     ; $63d9: $01 $fc $8a
	dec sp                                           ; $63dc: $3b
	ld c, $28                                        ; $63dd: $0e $28
	dec b                                            ; $63df: $05
	and [hl]                                         ; $63e0: $a6
	jp nc, $f0e5                                     ; $63e1: $d2 $e5 $f0

	ldh [$f0], a                                     ; $63e4: $e0 $f0
	pop af                                           ; $63e6: $f1
	ld hl, sp-$08                                    ; $63e7: $f8 $f8
	db $fd                                           ; $63e9: $fd
	cp $ff                                           ; $63ea: $fe $ff
	db $fd                                           ; $63ec: $fd
	cp $7e                                           ; $63ed: $fe $7e
	cp $eb                                           ; $63ef: $fe $eb
	ld a, c                                          ; $63f1: $79
	and d                                            ; $63f2: $a2
	add b                                            ; $63f3: $80
	daa                                              ; $63f4: $27
	jp $a3c1                                         ; $63f5: $c3 $c1 $a3


	ld de, $54b2                                     ; $63f8: $11 $b2 $54
	add b                                            ; $63fb: $80
	inc b                                            ; $63fc: $04
	ld b, $25                                        ; $63fd: $06 $25
	db $ed                                           ; $63ff: $ed
	db $fd                                           ; $6400: $fd
	rst $38                                          ; $6401: $ff
	rst $38                                          ; $6402: $ff
	rst SubAFromDE                                          ; $6403: $df
	rst $38                                          ; $6404: $ff
	ei                                               ; $6405: $fb
	ret c                                            ; $6406: $d8

	cp b                                             ; $6407: $b8
	ld d, b                                          ; $6408: $50
	jr z, jr_048_645b                                ; $6409: $28 $50

	adc b                                            ; $640b: $88
	ld d, a                                          ; $640c: $57
	adc a                                            ; $640d: $8f
	sub [hl]                                         ; $640e: $96
	rst GetHLinHL                                          ; $640f: $cf
	sbc a                                            ; $6410: $9f
	call z, $8185                                    ; $6411: $cc $85 $81
	adc $82                                          ; $6414: $ce $82
	add b                                            ; $6416: $80
	nop                                              ; $6417: $00
	add b                                            ; $6418: $80
	nop                                              ; $6419: $00
	inc bc                                           ; $641a: $03
	ld b, $00                                        ; $641b: $06 $00
	ei                                               ; $641d: $fb
	cp a                                             ; $641e: $bf
	ld b, a                                          ; $641f: $47
	call $f160                                       ; $6420: $cd $60 $f1
	rst AddAOntoHL                                          ; $6423: $ef
	ld a, a                                          ; $6424: $7f
	ld a, [hl]                                       ; $6425: $7e
	ld a, d                                          ; $6426: $7a
	ccf                                              ; $6427: $3f
	dec sp                                           ; $6428: $3b
	ccf                                              ; $6429: $3f
	sbc a                                            ; $642a: $9f
	ld a, [hl-]                                      ; $642b: $3a
	db $10                                           ; $642c: $10
	ret nz                                           ; $642d: $c0

	ldh [$e0], a                                     ; $642e: $e0 $e0
	ldh a, [$f8]                                     ; $6430: $f0 $f8
	sbc $ff                                          ; $6432: $de $ff
	sub [hl]                                         ; $6434: $96
	adc $75                                          ; $6435: $ce $75
	ld [$feed], a                                    ; $6437: $ea $ed $fe
	ld [hl], a                                       ; $643a: $77
	cpl                                              ; $643b: $2f
	ld a, a                                          ; $643c: $7f
	rlca                                             ; $643d: $07
	ld a, d                                          ; $643e: $7a
	ld [hl], d                                       ; $643f: $72
	sub b                                            ; $6440: $90
	ccf                                              ; $6441: $3f
	rst $38                                          ; $6442: $ff
	rst $38                                          ; $6443: $ff
	db $ed                                           ; $6444: $ed
	and d                                            ; $6445: $a2
	ld d, h                                          ; $6446: $54
	and d                                            ; $6447: $a2
	ld d, c                                          ; $6448: $51
	sub d                                            ; $6449: $92
	push bc                                          ; $644a: $c5
	ret nz                                           ; $644b: $c0

	ret nz                                           ; $644c: $c0

	db $10                                           ; $644d: $10
	ldh a, [$f7]                                     ; $644e: $f0 $f7
	call c, $97ff                                    ; $6450: $dc $ff $97
	db $ed                                           ; $6453: $ed
	ld a, e                                          ; $6454: $7b
	ld sp, hl                                        ; $6455: $f9
	ld a, $1c                                        ; $6456: $3e $1c
	cp h                                             ; $6458: $bc
	ld sp, hl                                        ; $6459: $f9
	pop af                                           ; $645a: $f1

jr_048_645b:
	ld a, c                                          ; $645b: $79
	ld b, h                                          ; $645c: $44
	rst SubAFromDE                                          ; $645d: $df
	ldh a, [$df]                                     ; $645e: $f0 $df
	ldh [$99], a                                     ; $6460: $e0 $99
	db $fc                                           ; $6462: $fc
	ld d, l                                          ; $6463: $55
	xor d                                            ; $6464: $aa
	ld [hl], b                                       ; $6465: $70
	ldh a, [rSVBK]                                   ; $6466: $f0 $70
	sbc $f0                                          ; $6468: $de $f0
	db $fd                                           ; $646a: $fd
	sbc [hl]                                         ; $646b: $9e
	ld bc, $cc7b                                     ; $646c: $01 $7b $cc
	ei                                               ; $646f: $fb
	sbc [hl]                                         ; $6470: $9e
	inc b                                            ; $6471: $04
	ei                                               ; $6472: $fb
	ld a, a                                          ; $6473: $7f
	xor l                                            ; $6474: $ad
	sub [hl]                                         ; $6475: $96
	ldh [rTIMA], a                                   ; $6476: $e0 $05
	nop                                              ; $6478: $00
	ld bc, $0402                                     ; $6479: $01 $02 $04
	nop                                              ; $647c: $00
	ldh a, [rSVBK]                                   ; $647d: $f0 $70
	ei                                               ; $647f: $fb
	sbc e                                            ; $6480: $9b
	inc bc                                           ; $6481: $03
	rlca                                             ; $6482: $07
	nop                                              ; $6483: $00
	add d                                            ; $6484: $82
	ld [hl], e                                       ; $6485: $73
	inc d                                            ; $6486: $14
	ld l, a                                          ; $6487: $6f
	dec sp                                           ; $6488: $3b
	sbc h                                            ; $6489: $9c
	nop                                              ; $648a: $00
	ret nz                                           ; $648b: $c0

	add b                                            ; $648c: $80
	ld l, e                                          ; $648d: $6b
	inc b                                            ; $648e: $04
	sbc [hl]                                         ; $648f: $9e
	ret nz                                           ; $6490: $c0

	ld sp, hl                                        ; $6491: $f9
	ld a, e                                          ; $6492: $7b
	ldh a, [$9e]                                     ; $6493: $f0 $9e
	add d                                            ; $6495: $82
	push af                                          ; $6496: $f5
	ld a, e                                          ; $6497: $7b
	ldh a, [$9e]                                     ; $6498: $f0 $9e
	ld a, [bc]                                       ; $649a: $0a
	ld c, e                                          ; $649b: $4b
	ldh a, [$9e]                                     ; $649c: $f0 $9e
	xor d                                            ; $649e: $aa
	ld l, e                                          ; $649f: $6b
	and d                                            ; $64a0: $a2
	ld l, e                                          ; $64a1: $6b
	ldh a, [$f5]                                     ; $64a2: $f0 $f5
	ld a, l                                          ; $64a4: $7d
	res 3, [hl]                                      ; $64a5: $cb $9e
	ld b, b                                          ; $64a7: $40
	ld l, [hl]                                       ; $64a8: $6e
	add $7f                                          ; $64a9: $c6 $7f
	sbc b                                            ; $64ab: $98
	db $fc                                           ; $64ac: $fc
	sbc l                                            ; $64ad: $9d
	add b                                            ; $64ae: $80
	cp b                                             ; $64af: $b8
	push af                                          ; $64b0: $f5
	sbc [hl]                                         ; $64b1: $9e
	inc bc                                           ; $64b2: $03
	ld a, e                                          ; $64b3: $7b
	dec l                                            ; $64b4: $2d
	ld h, a                                          ; $64b5: $67
	ld h, b                                          ; $64b6: $60
	sbc l                                            ; $64b7: $9d
	ld hl, sp-$04                                    ; $64b8: $f8 $fc
	ld a, d                                          ; $64ba: $7a
	set 2, [hl]                                      ; $64bb: $cb $d6
	rst $38                                          ; $64bd: $ff
	sub e                                            ; $64be: $93
	halt                                             ; $64bf: $76
	jr nz, jr_048_64f2                               ; $64c0: $20 $30

	nop                                              ; $64c2: $00
	ld bc, $5289                                     ; $64c3: $01 $89 $52
	xor d                                            ; $64c6: $aa
	adc c                                            ; $64c7: $89
	rst SubAFromDE                                          ; $64c8: $df
	rst GetHLinHL                                          ; $64c9: $cf
	rst $38                                          ; $64ca: $ff
	db $dd                                           ; $64cb: $dd
	db $fc                                           ; $64cc: $fc
	rst SubAFromDE                                          ; $64cd: $df
	rst SubAFromDE                                          ; $64ce: $df
	adc c                                            ; $64cf: $89
	ld e, a                                          ; $64d0: $5f
	rst SubAFromDE                                          ; $64d1: $df
	rst $38                                          ; $64d2: $ff
	rst $38                                          ; $64d3: $ff
	ld [$04f7], a                                    ; $64d4: $ea $f7 $04
	adc d                                            ; $64d7: $8a
	add h                                            ; $64d8: $84
	adc b                                            ; $64d9: $88
	nop                                              ; $64da: $00
	ld b, h                                          ; $64db: $44
	add d                                            ; $64dc: $82
	nop                                              ; $64dd: $00
	add [hl]                                         ; $64de: $86
	add [hl]                                         ; $64df: $86
	add a                                            ; $64e0: $87
	rla                                              ; $64e1: $17
	cp d                                             ; $64e2: $ba
	ccf                                              ; $64e3: $3f
	cp a                                             ; $64e4: $bf
	scf                                              ; $64e5: $37
	ld [hl], a                                       ; $64e6: $77
	ld b, h                                          ; $64e7: $44
	ld [hl], a                                       ; $64e8: $77
	ld b, e                                          ; $64e9: $43
	add b                                            ; $64ea: $80
	ld [hl], a                                       ; $64eb: $77
	rst FarCall                                          ; $64ec: $f7
	rst FarCall                                          ; $64ed: $f7
	db $fd                                           ; $64ee: $fd
	pop hl                                           ; $64ef: $e1
	sbc a                                            ; $64f0: $9f
	rst $38                                          ; $64f1: $ff

jr_048_64f2:
	rst $38                                          ; $64f2: $ff
	add hl, sp                                       ; $64f3: $39
	inc a                                            ; $64f4: $3c
	ld hl, sp-$02                                    ; $64f5: $f8 $fe
	rst $38                                          ; $64f7: $ff
	ld [$e240], a                                    ; $64f8: $ea $40 $e2
	ret c                                            ; $64fb: $d8

	reti                                             ; $64fc: $d9


	ld sp, hl                                        ; $64fd: $f9
	db $fc                                           ; $64fe: $fc
	ld [$fae4], a                                    ; $64ff: $ea $e4 $fa
	db $fd                                           ; $6502: $fd
	ld h, a                                          ; $6503: $67
	xor [hl]                                         ; $6504: $ae
	ld d, [hl]                                       ; $6505: $56
	xor [hl]                                         ; $6506: $ae
	inc d                                            ; $6507: $14
	inc a                                            ; $6508: $3c
	jr @-$75                                         ; $6509: $18 $89

	jr c, jr_048_652e                                ; $650b: $38 $21

	xor c                                            ; $650d: $a9
	cp a                                             ; $650e: $bf
	rst SubAFromDE                                          ; $650f: $df
	ld a, a                                          ; $6510: $7f
	rst FarCall                                          ; $6511: $f7
	rst GetHLinHL                                          ; $6512: $cf
	sbc l                                            ; $6513: $9d
	ret nz                                           ; $6514: $c0

	ld b, b                                          ; $6515: $40
	ld b, b                                          ; $6516: $40
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	ld [bc], a                                       ; $6519: $02
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	rra                                              ; $651c: $1f
	ld a, [$fefe]                                    ; $651d: $fa $fe $fe
	ld a, l                                          ; $6520: $7d
	ld a, e                                          ; $6521: $7b
	adc l                                            ; $6522: $8d
	add b                                            ; $6523: $80
	rst FarCall                                          ; $6524: $f7
	daa                                              ; $6525: $27
	add a                                            ; $6526: $87
	inc bc                                           ; $6527: $03
	rlca                                             ; $6528: $07
	inc bc                                           ; $6529: $03
	add l                                            ; $652a: $85
	nop                                              ; $652b: $00
	cp b                                             ; $652c: $b8
	di                                               ; $652d: $f3

jr_048_652e:
	db $d3                                           ; $652e: $d3
	rst AddAOntoHL                                          ; $652f: $ef
	ld c, b                                          ; $6530: $48
	ldh [$a6], a                                     ; $6531: $e0 $a6
	sbc $7c                                          ; $6533: $de $7c
	cp h                                             ; $6535: $bc
	ld a, l                                          ; $6536: $7d
	sbc [hl]                                         ; $6537: $9e
	rst $38                                          ; $6538: $ff
	ccf                                              ; $6539: $3f
	dec e                                            ; $653a: $1d
	dec bc                                           ; $653b: $0b
	rst AddAOntoHL                                          ; $653c: $ef
	rst FarCall                                          ; $653d: $f7
	rst SubAFromHL                                          ; $653e: $d7
	rst SubAFromDE                                          ; $653f: $df
	rst SubAFromHL                                          ; $6540: $d7
	rla                                              ; $6541: $17
	rst JumpTable                                          ; $6542: $c7
	add b                                            ; $6543: $80
	pop bc                                           ; $6544: $c1
	db $10                                           ; $6545: $10
	jr c, jr_048_6580                                ; $6546: $38 $38

	or c                                             ; $6548: $b1
	ld a, b                                          ; $6549: $78
	ld sp, hl                                        ; $654a: $f9
	ld a, b                                          ; $654b: $78
	cp a                                             ; $654c: $bf
	cp c                                             ; $654d: $b9
	rst AddAOntoHL                                          ; $654e: $ef
	ld l, b                                          ; $654f: $68
	adc e                                            ; $6550: $8b
	db $eb                                           ; $6551: $eb
	rst $38                                          ; $6552: $ff
	db $f4                                           ; $6553: $f4
	ld h, c                                          ; $6554: $61
	ldh [$75], a                                     ; $6555: $e0 $75
	rst $38                                          ; $6557: $ff
	ld [hl], a                                       ; $6558: $77
	cp a                                             ; $6559: $bf
	ld d, a                                          ; $655a: $57
	xor a                                            ; $655b: $af
	sbc $fc                                          ; $655c: $de $fc
	db $fd                                           ; $655e: $fd
	db $fc                                           ; $655f: $fc
	ld a, a                                          ; $6560: $7f
	rra                                              ; $6561: $1f
	xor a                                            ; $6562: $af
	add l                                            ; $6563: $85
	ld l, a                                          ; $6564: $6f
	cp [hl]                                          ; $6565: $be
	inc bc                                           ; $6566: $03
	jp nz, $c2c3                                     ; $6567: $c2 $c3 $c2

	pop hl                                           ; $656a: $e1
	ldh a, [c]                                       ; $656b: $f2
	pop af                                           ; $656c: $f1
	pop hl                                           ; $656d: $e1
	xor d                                            ; $656e: $aa
	db $dd                                           ; $656f: $dd
	db $fd                                           ; $6570: $fd
	cp d                                             ; $6571: $ba
	cp b                                             ; $6572: $b8
	di                                               ; $6573: $f3
	ld [hl], e                                       ; $6574: $73
	scf                                              ; $6575: $37
	ret nz                                           ; $6576: $c0

	ldh [c], a                                       ; $6577: $e2
	sub $ce                                          ; $6578: $d6 $ce
	ld b, a                                          ; $657a: $47
	adc a                                            ; $657b: $8f
	rst SubAFromDE                                          ; $657c: $df
	set 7, l                                         ; $657d: $cb $fd
	sbc l                                            ; $657f: $9d

jr_048_6580:
	sub c                                            ; $6580: $91
	ld sp, hl                                        ; $6581: $f9
	ld l, b                                          ; $6582: $68
	sbc d                                            ; $6583: $9a
	rst SubAFromDE                                          ; $6584: $df
	or b                                             ; $6585: $b0
	sbc c                                            ; $6586: $99
	cp d                                             ; $6587: $ba
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	inc c                                            ; $658a: $0c
	rra                                              ; $658b: $1f
	cp a                                             ; $658c: $bf
	ld l, h                                          ; $658d: $6c
	adc d                                            ; $658e: $8a
	sbc d                                            ; $658f: $9a
	ld bc, $0041                                     ; $6590: $01 $41 $00
	inc bc                                           ; $6593: $03
	inc bc                                           ; $6594: $03
	halt                                             ; $6595: $76
	di                                               ; $6596: $f3
	sbc h                                            ; $6597: $9c
	ret nz                                           ; $6598: $c0

	pop hl                                           ; $6599: $e1
	di                                               ; $659a: $f3
	ld [hl], a                                       ; $659b: $77

Jump_048_659c:
	ldh a, [$df]                                     ; $659c: $f0 $df
	add b                                            ; $659e: $80
	ld a, e                                          ; $659f: $7b
	rst FarCall                                          ; $65a0: $f7
	ld [hl], e                                       ; $65a1: $73
	jr c, jr_048_6623                                ; $65a2: $38 $7f

	ld [hl], d                                       ; $65a4: $72
	ld l, b                                          ; $65a5: $68
	ret c                                            ; $65a6: $d8

	rst SubAFromDE                                          ; $65a7: $df
	ld hl, sp-$7e                                    ; $65a8: $f8 $82
	ld [hl], b                                       ; $65aa: $70
	ld a, [hl]                                       ; $65ab: $7e
	halt                                             ; $65ac: $76
	or $7e                                           ; $65ad: $f6 $7e
	cp $f6                                           ; $65af: $fe $f6
	and $0f                                          ; $65b1: $e6 $0f
	add hl, bc                                       ; $65b3: $09
	add hl, de                                       ; $65b4: $19
	jp hl                                            ; $65b5: $e9


	ld bc, $1901                                     ; $65b6: $01 $01 $19
	add hl, sp                                       ; $65b9: $39
	ld [$757e], a                                    ; $65ba: $ea $7e $75
	or [hl]                                          ; $65bd: $b6
	cp a                                             ; $65be: $bf
	cp c                                             ; $65bf: $b9
	ld h, b                                          ; $65c0: $60
	ret nz                                           ; $65c1: $c0

	inc a                                            ; $65c2: $3c
	call nc, $dfae                                   ; $65c3: $d4 $ae $df
	rst AddAOntoHL                                          ; $65c6: $ef
	ld a, d                                          ; $65c7: $7a
	or $91                                           ; $65c8: $f6 $91
	ld l, a                                          ; $65ca: $6f
	rra                                              ; $65cb: $1f
	ld a, l                                          ; $65cc: $7d
	db $fc                                           ; $65cd: $fc
	ld sp, hl                                        ; $65ce: $f9
	ld hl, sp+$00                                    ; $65cf: $f8 $00
	inc b                                            ; $65d1: $04
	add hl, sp                                       ; $65d2: $39
	ld [hl], b                                       ; $65d3: $70
	inc hl                                           ; $65d4: $23
	rlca                                             ; $65d5: $07
	adc a                                            ; $65d6: $8f
	ld d, a                                          ; $65d7: $57
	ld a, b                                          ; $65d8: $78
	adc a                                            ; $65d9: $8f
	ld a, a                                          ; $65da: $7f
	ld hl, $a37d                                     ; $65db: $21 $7d $a3
	ld a, h                                          ; $65de: $7c
	ld c, c                                          ; $65df: $49
	ld l, l                                          ; $65e0: $6d
	db $eb                                           ; $65e1: $eb
	sbc $ff                                          ; $65e2: $de $ff
	sbc b                                            ; $65e4: $98
	push de                                          ; $65e5: $d5
	xor c                                            ; $65e6: $a9
	call nc, $d5ea                                   ; $65e7: $d4 $ea $d5
	ld [$7bf5], a                                    ; $65ea: $ea $f5 $7b
	ld a, [de]                                       ; $65ed: $1a
	db $db                                           ; $65ee: $db
	rst $38                                          ; $65ef: $ff
	sub a                                            ; $65f0: $97
	xor $5c                                          ; $65f1: $ee $5c
	ld l, $7d                                        ; $65f3: $2e $7d
	cp $d5                                           ; $65f5: $fe $d5
	ei                                               ; $65f7: $fb
	push af                                          ; $65f8: $f5
	ld [hl], e                                       ; $65f9: $73
	adc b                                            ; $65fa: $88
	ld a, c                                          ; $65fb: $79
	and l                                            ; $65fc: $a5
	sub a                                            ; $65fd: $97
	dec hl                                           ; $65fe: $2b
	ld e, a                                          ; $65ff: $5f
	and e                                            ; $6600: $a3
	jp $038b                                         ; $6601: $c3 $8b $03


	adc a                                            ; $6604: $8f
	rst SubAFromDE                                          ; $6605: $df
	ld a, d                                          ; $6606: $7a
	ld b, $76                                        ; $6607: $06 $76
	pop bc                                           ; $6609: $c1

jr_048_660a:
	add b                                            ; $660a: $80
	ld bc, $dffe                                     ; $660b: $01 $fe $df
	rst $38                                          ; $660e: $ff
	cp $fc                                           ; $660f: $fe $fc
	db $fd                                           ; $6611: $fd
	db $fd                                           ; $6612: $fd
	cp h                                             ; $6613: $bc
	db $e4                                           ; $6614: $e4
	ld h, d                                          ; $6615: $62
	and b                                            ; $6616: $a0
	db $10                                           ; $6617: $10
	adc b                                            ; $6618: $88
	ld b, b                                          ; $6619: $40
	ld [$ee10], sp                                   ; $661a: $08 $10 $ee
	ld a, c                                          ; $661d: $79
	ld a, d                                          ; $661e: $7a
	ld a, c                                          ; $661f: $79
	call c, $b4ce                                    ; $6620: $dc $ce $b4

jr_048_6623:
	sub d                                            ; $6623: $92
	jr jr_048_662e                                   ; $6624: $18 $08

	db $10                                           ; $6626: $10
	jr nz, jr_048_6699                               ; $6627: $20 $70

	jr nc, jr_048_660a                               ; $6629: $30 $df

	ld h, b                                          ; $662b: $60
	sub a                                            ; $662c: $97
	add a                                            ; $662d: $87

jr_048_662e:
	rlca                                             ; $662e: $07
	ld b, $07                                        ; $662f: $06 $07
	rlca                                             ; $6631: $07
	dec b                                            ; $6632: $05
	dec c                                            ; $6633: $0d
	adc l                                            ; $6634: $8d
	cp $7a                                           ; $6635: $fe $7a
	jp nz, $80ff                                     ; $6637: $c2 $ff $80

	cp [hl]                                          ; $663a: $be
	rst SubAFromHL                                          ; $663b: $d7
	adc $d7                                          ; $663c: $ce $d7
	ld l, $9f                                        ; $663e: $2e $9f
	ccf                                              ; $6640: $3f
	rst $38                                          ; $6641: $ff
	db $e4                                           ; $6642: $e4
	ld h, d                                          ; $6643: $62
	ld h, b                                          ; $6644: $60
	ld h, b                                          ; $6645: $60
	ldh [$c2], a                                     ; $6646: $e0 $c2
	ret nz                                           ; $6648: $c0

	add b                                            ; $6649: $80
	and b                                            ; $664a: $a0
	ld h, a                                          ; $664b: $67
	push af                                          ; $664c: $f5
	db $fd                                           ; $664d: $fd
	rst FarCall                                          ; $664e: $f7
	ld [hl], a                                       ; $664f: $77
	rst $38                                          ; $6650: $ff
	rst SubAFromDE                                          ; $6651: $df
	rra                                              ; $6652: $1f
	dec a                                            ; $6653: $3d
	rra                                              ; $6654: $1f
	ld l, $1c                                        ; $6655: $2e $1c
	ld a, [bc]                                       ; $6657: $0a
	inc d                                            ; $6658: $14
	add b                                            ; $6659: $80
	ld [bc], a                                       ; $665a: $02
	pop bc                                           ; $665b: $c1
	rst SubAFromDE                                          ; $665c: $df
	add $fb                                          ; $665d: $c6 $fb
	or e                                             ; $665f: $b3
	rst $38                                          ; $6660: $ff
	ei                                               ; $6661: $fb
	ldh [c], a                                       ; $6662: $e2
	ld a, [hl]                                       ; $6663: $7e
	push af                                          ; $6664: $f5
	ei                                               ; $6665: $fb
	db $fc                                           ; $6666: $fc
	ld c, [hl]                                       ; $6667: $4e
	inc b                                            ; $6668: $04
	ld c, $3d                                        ; $6669: $0e $3d
	or e                                             ; $666b: $b3
	cp b                                             ; $666c: $b8
	ld h, a                                          ; $666d: $67
	scf                                              ; $666e: $37
	rst SubAFromBC                                          ; $666f: $e7
	add e                                            ; $6670: $83
	ret nz                                           ; $6671: $c0

	ld [$7ffe], a                                    ; $6672: $ea $fe $7f
	rst $38                                          ; $6675: $ff
	rst SubAFromDE                                          ; $6676: $df
	ccf                                              ; $6677: $3f
	ld a, a                                          ; $6678: $7f
	add h                                            ; $6679: $84
	cp a                                             ; $667a: $bf
	rra                                              ; $667b: $1f
	rst SubAFromDE                                          ; $667c: $df
	ccf                                              ; $667d: $3f
	rst $38                                          ; $667e: $ff
	sbc $1e                                          ; $667f: $de $1e
	inc bc                                           ; $6681: $03
	inc bc                                           ; $6682: $03
	scf                                              ; $6683: $37
	ld h, b                                          ; $6684: $60
	ldh a, [$e0]                                     ; $6685: $f0 $e0
	db $e3                                           ; $6687: $e3
	pop af                                           ; $6688: $f1
	rst $38                                          ; $6689: $ff
	rst $38                                          ; $668a: $ff
	rst GetHLinHL                                          ; $668b: $cf
	ld a, $8e                                        ; $668c: $3e $8e
	xor [hl]                                         ; $668e: $ae
	cp [hl]                                          ; $668f: $be
	ccf                                              ; $6690: $3f
	rra                                              ; $6691: $1f
	rra                                              ; $6692: $1f
	ld c, $d7                                        ; $6693: $0e $d7
	sbc $7f                                          ; $6695: $de $7f
	db $dd                                           ; $6697: $dd
	rst $38                                          ; $6698: $ff

jr_048_6699:
	add b                                            ; $6699: $80
	rst SubAFromHL                                          ; $669a: $d7
	ld [hl], a                                       ; $669b: $77
	ld [de], a                                       ; $669c: $12
	ld c, $86                                        ; $669d: $0e $86
	dec e                                            ; $669f: $1d
	rra                                              ; $66a0: $1f
	cpl                                              ; $66a1: $2f
	cp d                                             ; $66a2: $ba
	ret c                                            ; $66a3: $d8

	ld sp, hl                                        ; $66a4: $f9
	pop af                                           ; $66a5: $f1
	ei                                               ; $66a6: $fb
	rst $38                                          ; $66a7: $ff
	ld a, [$f8fa]                                    ; $66a8: $fa $fa $f8
	ld hl, sp-$10                                    ; $66ab: $f8 $f0
	jp nc, $fede                                     ; $66ad: $d2 $de $fe

	sbc $d2                                          ; $66b0: $de $d2
	rrca                                             ; $66b2: $0f
	ld b, a                                          ; $66b3: $47
	xor a                                            ; $66b4: $af
	ld a, a                                          ; $66b5: $7f
	cp a                                             ; $66b6: $bf
	ld a, a                                          ; $66b7: $7f
	ccf                                              ; $66b8: $3f
	add b                                            ; $66b9: $80
	ld a, a                                          ; $66ba: $7f
	ld [bc], a                                       ; $66bb: $02
	ld h, b                                          ; $66bc: $60
	ldh a, [$c0]                                     ; $66bd: $f0 $c0
	add b                                            ; $66bf: $80
	sbc d                                            ; $66c0: $9a
	ld b, a                                          ; $66c1: $47
	dec de                                           ; $66c2: $1b
	rst $38                                          ; $66c3: $ff
	sbc a                                            ; $66c4: $9f
	xor a                                            ; $66c5: $af
	ld a, a                                          ; $66c6: $7f
	rst $38                                          ; $66c7: $ff
	ld l, a                                          ; $66c8: $6f
	db $fd                                           ; $66c9: $fd
	cp $fd                                           ; $66ca: $fe $fd
	ld a, h                                          ; $66cc: $7c
	dec sp                                           ; $66cd: $3b
	ld [hl], a                                       ; $66ce: $77
	rst $38                                          ; $66cf: $ff
	db $fd                                           ; $66d0: $fd
	cp d                                             ; $66d1: $ba
	db $e4                                           ; $66d2: $e4
	ld hl, sp-$02                                    ; $66d3: $f8 $fe
	rst GetHLinHL                                          ; $66d5: $cf
	adc a                                            ; $66d6: $8f
	ld b, a                                          ; $66d7: $47
	add a                                            ; $66d8: $87
	add [hl]                                         ; $66d9: $86
	ld a, l                                          ; $66da: $7d
	ld a, c                                          ; $66db: $79
	jp $f5fb                                         ; $66dc: $c3 $fb $f5


	ld e, [hl]                                       ; $66df: $5e
	sbc a                                            ; $66e0: $9f
	rst $38                                          ; $66e1: $ff
	db $ed                                           ; $66e2: $ed
	ret                                              ; $66e3: $c9


	ccf                                              ; $66e4: $3f
	rra                                              ; $66e5: $1f
	cp $3c                                           ; $66e6: $fe $3c
	ld a, h                                          ; $66e8: $7c
	ld hl, sp-$01                                    ; $66e9: $f8 $ff
	rst AddAOntoHL                                          ; $66eb: $ef
	ret c                                            ; $66ec: $d8

	db $10                                           ; $66ed: $10
	ret nc                                           ; $66ee: $d0

	jp c, $e7ff                                      ; $66ef: $da $ff $e7

	xor a                                            ; $66f2: $af
	ld a, d                                          ; $66f3: $7a
	add $90                                          ; $66f4: $c6 $90
	ccf                                              ; $66f6: $3f
	scf                                              ; $66f7: $37
	xor a                                            ; $66f8: $af
	ld e, a                                          ; $66f9: $5f
	rst $38                                          ; $66fa: $ff
	rst $38                                          ; $66fb: $ff
	inc c                                            ; $66fc: $0c
	inc b                                            ; $66fd: $04
	nop                                              ; $66fe: $00
	ld b, d                                          ; $66ff: $42
	jp nz, $f3cf                                     ; $6700: $c2 $cf $f3

	push de                                          ; $6703: $d5
	ei                                               ; $6704: $fb
	call c, $85ff                                    ; $6705: $dc $ff $85
	cp $ef                                           ; $6708: $fe $ef
	db $db                                           ; $670a: $db
	cp l                                             ; $670b: $bd
	ld d, e                                          ; $670c: $53
	and a                                            ; $670d: $a7
	ld l, c                                          ; $670e: $69
	ld hl, sp+$72                                    ; $670f: $f8 $72
	dec [hl]                                         ; $6711: $35
	rst $38                                          ; $6712: $ff
	rst $38                                          ; $6713: $ff
	rst SubAFromBC                                          ; $6714: $e7
	rst SubAFromBC                                          ; $6715: $e7
	rst $38                                          ; $6716: $ff
	rst JumpTable                                          ; $6717: $c7
	adc [hl]                                         ; $6718: $8e
	adc $fd                                          ; $6719: $ce $fd
	cp $dd                                           ; $671b: $fe $dd
	xor [hl]                                         ; $671d: $ae
	rst SubAFromHL                                          ; $671e: $d7
	adc a                                            ; $671f: $8f
	dec bc                                           ; $6720: $0b
	db $10                                           ; $6721: $10
	call c, Call_048_7fff                            ; $6722: $dc $ff $7f
	jp z, Jump_048_7795                              ; $6725: $ca $95 $77

Call_048_6728:
	ld d, e                                          ; $6728: $53
	and c                                            ; $6729: $a1
	ld d, l                                          ; $672a: $55
	xor b                                            ; $672b: $a8
	ld d, b                                          ; $672c: $50
	xor b                                            ; $672d: $a8
	ld b, d                                          ; $672e: $42
	nop                                              ; $672f: $00
	db $fc                                           ; $6730: $fc
	ld h, [hl]                                       ; $6731: $66
	xor a                                            ; $6732: $af
	rst SubAFromDE                                          ; $6733: $df
	rst $38                                          ; $6734: $ff
	sbc d                                            ; $6735: $9a
	cp e                                             ; $6736: $bb
	rst FarCall                                          ; $6737: $f7
	ei                                               ; $6738: $fb
	ld a, a                                          ; $6739: $7f
	cp a                                             ; $673a: $bf
	ld l, h                                          ; $673b: $6c
	add $7e                                          ; $673c: $c6 $7e
	xor l                                            ; $673e: $ad
	ld a, c                                          ; $673f: $79
	or l                                             ; $6740: $b5
	ld [hl], a                                       ; $6741: $77
	cp $9d                                           ; $6742: $fe $9d
	jp c, $fa88                                      ; $6744: $da $88 $fa

	sub a                                            ; $6747: $97
	push hl                                          ; $6748: $e5
	ld [$bb75], a                                    ; $6749: $ea $75 $bb
	ld [hl], a                                       ; $674c: $77
	cp d                                             ; $674d: $ba
	ld [hl], c                                       ; $674e: $71
	xor d                                            ; $674f: $aa
	ld a, c                                          ; $6750: $79
	sub d                                            ; $6751: $92
	db $fc                                           ; $6752: $fc
	sub a                                            ; $6753: $97
	ld d, c                                          ; $6754: $51
	xor c                                            ; $6755: $a9
	push de                                          ; $6756: $d5
	xor a                                            ; $6757: $af
	ld d, a                                          ; $6758: $57
	xor d                                            ; $6759: $aa
	push de                                          ; $675a: $d5
	ld [$dbf9], a                                    ; $675b: $ea $f9 $db
	rst $38                                          ; $675e: $ff
	ld a, [hl]                                       ; $675f: $7e
	ld l, l                                          ; $6760: $6d
	sbc l                                            ; $6761: $9d
	ld b, b                                          ; $6762: $40
	add b                                            ; $6763: $80
	ld l, a                                          ; $6764: $6f
	sbc $92                                          ; $6765: $de $92
	rst AddAOntoHL                                          ; $6767: $ef
	ld e, e                                          ; $6768: $5b
	rst $38                                          ; $6769: $ff
	db $fd                                           ; $676a: $fd
	rst $38                                          ; $676b: $ff
	cp $d5                                           ; $676c: $fe $d5
	ld a, [$0e05]                                    ; $676e: $fa $05 $0e
	sub l                                            ; $6771: $95
	ld [bc], a                                       ; $6772: $02
	ld b, h                                          ; $6773: $44
	cp $80                                           ; $6774: $fe $80
	ldh a, [c]                                       ; $6776: $f2
	push af                                          ; $6777: $f5
	ei                                               ; $6778: $fb
	rst $38                                          ; $6779: $ff
	ld a, l                                          ; $677a: $7d
	cp e                                             ; $677b: $bb
	ld [hl], a                                       ; $677c: $77
	rst $38                                          ; $677d: $ff
	rra                                              ; $677e: $1f
	cpl                                              ; $677f: $2f

Jump_048_6780:
	ld d, $28                                        ; $6780: $16 $28
	db $10                                           ; $6782: $10
	ld bc, $0102                                     ; $6783: $01 $02 $01
	db $eb                                           ; $6786: $eb
	and $ed                                          ; $6787: $e6 $ed
	call $cde5                                       ; $6789: $cd $e5 $cd
	jp c, $3cf5                                      ; $678c: $da $f5 $3c

	ld e, b                                          ; $678f: $58
	cp b                                             ; $6790: $b8
	ld a, b                                          ; $6791: $78
	sbc b                                            ; $6792: $98
	ld [hl], b                                       ; $6793: $70
	and b                                            ; $6794: $a0
	adc c                                            ; $6795: $89
	ld b, b                                          ; $6796: $40
	or $ae                                           ; $6797: $f6 $ae
	adc c                                            ; $6799: $89
	db $e3                                           ; $679a: $e3
	rst $38                                          ; $679b: $ff
	ld [$fefd], a                                    ; $679c: $ea $fd $fe
	ld c, a                                          ; $679f: $4f
	rst FarCall                                          ; $67a0: $f7
	ld [hl], a                                       ; $67a1: $77
	ccf                                              ; $67a2: $3f
	rra                                              ; $67a3: $1f
	ccf                                              ; $67a4: $3f
	jr jr_048_67a8                                   ; $67a5: $18 $01

	ld e, h                                          ; $67a7: $5c

jr_048_67a8:
	cp $3f                                           ; $67a8: $fe $3f
	ld a, $9b                                        ; $67aa: $3e $9b
	ld a, d                                          ; $67ac: $7a
	ccf                                              ; $67ad: $3f
	rst SubAFromDE                                          ; $67ae: $df
	rst $38                                          ; $67af: $ff
	ld a, [hl]                                       ; $67b0: $7e
	or d                                             ; $67b1: $b2
	ld a, l                                          ; $67b2: $7d
	xor d                                            ; $67b3: $aa
	ld a, a                                          ; $67b4: $7f
	rst FarCall                                          ; $67b5: $f7
	sbc d                                            ; $67b6: $9a
	ld c, a                                          ; $67b7: $4f
	rst SubAFromDE                                          ; $67b8: $df
	rst SubAFromDE                                          ; $67b9: $df
	cp l                                             ; $67ba: $bd
	ld a, h                                          ; $67bb: $7c
	ld a, b                                          ; $67bc: $78
	ret                                              ; $67bd: $c9


	sbc h                                            ; $67be: $9c
	ld a, [$eefb]                                    ; $67bf: $fa $fb $ee
	ld a, e                                          ; $67c2: $7b
	inc c                                            ; $67c3: $0c
	sub l                                            ; $67c4: $95
	rst AddAOntoHL                                          ; $67c5: $ef
	rst JumpTable                                          ; $67c6: $c7
	inc de                                           ; $67c7: $13
	jr c, jr_048_6830                                ; $67c8: $38 $66

	add a                                            ; $67ca: $87
	xor h                                            ; $67cb: $ac
	inc c                                            ; $67cc: $0c
	inc d                                            ; $67cd: $14
	inc d                                            ; $67ce: $14
	ld [hl], a                                       ; $67cf: $77
	db $10                                           ; $67d0: $10
	add b                                            ; $67d1: $80
	rst SubAFromDE                                          ; $67d2: $df
	cp $ee                                           ; $67d3: $fe $ee
	xor $dc                                          ; $67d5: $ee $dc
	rst $38                                          ; $67d7: $ff
	ld b, $e1                                        ; $67d8: $06 $e1
	sbc h                                            ; $67da: $9c
	nop                                              ; $67db: $00
	ld b, b                                          ; $67dc: $40
	ld h, b                                          ; $67dd: $60
	rst AddAOntoHL                                          ; $67de: $ef
	rst $38                                          ; $67df: $ff
	ld c, $ff                                        ; $67e0: $0e $ff
	rst $38                                          ; $67e2: $ff
	ret nz                                           ; $67e3: $c0

	xor $60                                          ; $67e4: $ee $60
	ld a, a                                          ; $67e6: $7f
	rlca                                             ; $67e7: $07
	ld a, [hl-]                                      ; $67e8: $3a
	ld a, [$c0c8]                                    ; $67e9: $fa $c8 $c0
	ld b, a                                          ; $67ec: $47
	ld b, h                                          ; $67ed: $44
	db $fc                                           ; $67ee: $fc
	call c, $dffb                                    ; $67ef: $dc $fb $df
	ld hl, sp-$80                                    ; $67f2: $f8 $80
	db $ec                                           ; $67f4: $ec
	rst AddAOntoHL                                          ; $67f5: $ef
	ld l, [hl]                                       ; $67f6: $6e
	xor d                                            ; $67f7: $aa
	call c, Call_048_579f                            ; $67f8: $dc $9f $57
	ld b, $0c                                        ; $67fb: $06 $0c
	ld e, h                                          ; $67fd: $5c
	call c, $0b4f                                    ; $67fe: $dc $4f $0b
	inc sp                                           ; $6801: $33
	rst JumpTable                                          ; $6802: $c7
	rrca                                             ; $6803: $0f
	ld e, $3c                                        ; $6804: $1e $3c
	inc e                                            ; $6806: $1c
	ld a, a                                          ; $6807: $7f
	rrca                                             ; $6808: $0f
	ret nz                                           ; $6809: $c0

	rst $38                                          ; $680a: $ff
	inc c                                            ; $680b: $0c
	ld [$1808], sp                                   ; $680c: $08 $08 $18
	rst $38                                          ; $680f: $ff
	sbc a                                            ; $6810: $9f
	pop hl                                           ; $6811: $e1
	rst $38                                          ; $6812: $ff
	sbc [hl]                                         ; $6813: $9e
	rst $38                                          ; $6814: $ff
	sbc $1c                                          ; $6815: $de $1c
	sub a                                            ; $6817: $97
	jp hl                                            ; $6818: $e9


	sbc [hl]                                         ; $6819: $9e
	ld a, $cb                                        ; $681a: $3e $cb
	dec bc                                           ; $681c: $0b
	inc de                                           ; $681d: $13
	ld de, $7b11                                     ; $681e: $11 $11 $7b
	adc a                                            ; $6821: $8f
	ld a, a                                          ; $6822: $7f
	db $ed                                           ; $6823: $ed
	add h                                            ; $6824: $84
	dec sp                                           ; $6825: $3b
	cp e                                             ; $6826: $bb
	dec sp                                           ; $6827: $3b
	jp c, Jump_048_446e                              ; $6828: $da $6e $44

	sub l                                            ; $682b: $95
	xor [hl]                                         ; $682c: $ae
	cp a                                             ; $682d: $bf
	or [hl]                                          ; $682e: $b6
	or a                                             ; $682f: $b7

jr_048_6830:
	push hl                                          ; $6830: $e5
	pop af                                           ; $6831: $f1
	rst $38                                          ; $6832: $ff
	db $eb                                           ; $6833: $eb
	pop de                                           ; $6834: $d1
	pop de                                           ; $6835: $d1
	reti                                             ; $6836: $d9


	rst $38                                          ; $6837: $ff
	ld a, [hl+]                                      ; $6838: $2a
	ld [hl], l                                       ; $6839: $75
	rst FarCall                                          ; $683a: $f7
	push af                                          ; $683b: $f5
	push af                                          ; $683c: $f5
	rst FarCall                                          ; $683d: $f7
	rst FarCall                                          ; $683e: $f7
	push af                                          ; $683f: $f5
	ld h, l                                          ; $6840: $65
	ld l, a                                          ; $6841: $6f
	sub a                                            ; $6842: $97
	xor d                                            ; $6843: $aa
	ld e, b                                          ; $6844: $58
	xor [hl]                                         ; $6845: $ae
	call nc, $d4ba                                   ; $6846: $d4 $ba $d4
	jp nz, $d944                                     ; $6849: $c2 $44 $d9

	rst $38                                          ; $684c: $ff
	sub a                                            ; $684d: $97
	rra                                              ; $684e: $1f
	rrca                                             ; $684f: $0f
	add a                                            ; $6850: $87
	ld b, e                                          ; $6851: $43
	ld bc, $a841                                     ; $6852: $01 $41 $a8
	ld d, b                                          ; $6855: $50
	ld a, c                                          ; $6856: $79
	ld [hl], l                                       ; $6857: $75
	ld [hl], d                                       ; $6858: $72
	xor l                                            ; $6859: $ad
	sub a                                            ; $685a: $97
	xor a                                            ; $685b: $af
	jp c, $d2ad                                      ; $685c: $da $ad $d2

	rst SubAFromBC                                          ; $685f: $e7
	ld d, e                                          ; $6860: $53
	db $fd                                           ; $6861: $fd
	xor e                                            ; $6862: $ab
	ld sp, hl                                        ; $6863: $f9
	sbc c                                            ; $6864: $99
	ld d, l                                          ; $6865: $55
	xor e                                            ; $6866: $ab
	ld d, a                                          ; $6867: $57
	rst AddAOntoHL                                          ; $6868: $ef
	rst FarCall                                          ; $6869: $f7
	rst AddAOntoHL                                          ; $686a: $ef
	ld l, b                                          ; $686b: $68
	ret nz                                           ; $686c: $c0

	cp $7d                                           ; $686d: $fe $7d
	ld [hl], $db                                     ; $686f: $36 $db
	rst $38                                          ; $6871: $ff

Call_048_6872:
	ld sp, hl                                        ; $6872: $f9
	ld a, [hl]                                       ; $6873: $7e
	dec bc                                           ; $6874: $0b
	sbc [hl]                                         ; $6875: $9e
	ld e, a                                          ; $6876: $5f

Jump_048_6877:
	ld a, c                                          ; $6877: $79
	ld c, $5f                                        ; $6878: $0e $5f
	ldh a, [$9e]                                     ; $687a: $f0 $9e
	push de                                          ; $687c: $d5
	ld a, e                                          ; $687d: $7b
	call nc, $e053                                   ; $687e: $d4 $53 $e0
	ld a, c                                          ; $6881: $79
	cpl                                              ; $6882: $2f
	ld [hl], e                                       ; $6883: $73
	ldh a, [$72]                                     ; $6884: $f0 $72
	ld h, b                                          ; $6886: $60

jr_048_6887:
	rst $38                                          ; $6887: $ff
	sbc [hl]                                         ; $6888: $9e
	dec hl                                           ; $6889: $2b
	ld a, c                                          ; $688a: $79
	xor d                                            ; $688b: $aa
	sbc b                                            ; $688c: $98
	ld a, [$fafd]                                    ; $688d: $fa $fd $fa
	db $fd                                           ; $6890: $fd
	ldh [$c0], a                                     ; $6891: $e0 $c0
	add b                                            ; $6893: $80
	db $fc                                           ; $6894: $fc
	sub e                                            ; $6895: $93
	ei                                               ; $6896: $fb
	db $d3                                           ; $6897: $d3
	db $ed                                           ; $6898: $ed
	ret c                                            ; $6899: $d8

	rst AddAOntoHL                                          ; $689a: $ef
	ld e, l                                          ; $689b: $5d
	xor d                                            ; $689c: $aa
	ld d, l                                          ; $689d: $55
	inc bc                                           ; $689e: $03
	rlca                                             ; $689f: $07
	inc b                                            ; $68a0: $04
	rlca                                             ; $68a1: $07
	ld [hl], e                                       ; $68a2: $73
	ldh a, [$7a]                                     ; $68a3: $f0 $7a
	rst SubAFromBC                                          ; $68a5: $e7
	add d                                            ; $68a6: $82
	ld a, a                                          ; $68a7: $7f
	db $dd                                           ; $68a8: $dd
	rst $38                                          ; $68a9: $ff
	ld a, a                                          ; $68aa: $7f
	ld sp, hl                                        ; $68ab: $f9
	di                                               ; $68ac: $f3
	or a                                             ; $68ad: $b7
	cpl                                              ; $68ae: $2f
	ccf                                              ; $68af: $3f
	dec sp                                           ; $68b0: $3b
	ccf                                              ; $68b1: $3f
	ld a, a                                          ; $68b2: $7f
	sbc a                                            ; $68b3: $9f
	ei                                               ; $68b4: $fb
	ld hl, sp-$17                                    ; $68b5: $f8 $e9
	pop af                                           ; $68b7: $f1
	ld a, [$ffbf]                                    ; $68b8: $fa $bf $ff
	rst GetHLinHL                                          ; $68bb: $cf
	add a                                            ; $68bc: $87
	add a                                            ; $68bd: $87
	add [hl]                                         ; $68be: $86
	adc a                                            ; $68bf: $8f
	add a                                            ; $68c0: $87
	ret nz                                           ; $68c1: $c0

	ret nz                                           ; $68c2: $c0

	sbc h                                            ; $68c3: $9c
	db $dd                                           ; $68c4: $dd
	inc a                                            ; $68c5: $3c
	sbc e                                            ; $68c6: $9b
	db $fc                                           ; $68c7: $fc
	db $f4                                           ; $68c8: $f4
	db $f4                                           ; $68c9: $f4
	xor $dd                                          ; $68ca: $ee $dd
	adc $80                                          ; $68cc: $ce $80
	inc c                                            ; $68ce: $0c
	dec c                                            ; $68cf: $0d
	dec c                                            ; $68d0: $0d
	jr nz, jr_048_68e3                               ; $68d1: $20 $10

	db $10                                           ; $68d3: $10
	ld a, b                                          ; $68d4: $78
	ld l, h                                          ; $68d5: $6c
	add $c2                                          ; $68d6: $c6 $c2
	add e                                            ; $68d8: $83
	ld [hl], c                                       ; $68d9: $71
	add hl, sp                                       ; $68da: $39
	ld a, c                                          ; $68db: $79
	ld a, l                                          ; $68dc: $7d
	cp $ee                                           ; $68dd: $fe $ee
	rst SubAFromBC                                          ; $68df: $e7
	jp $2b23                                         ; $68e0: $c3 $23 $2b


jr_048_68e3:
	daa                                              ; $68e3: $27
	ld a, [bc]                                       ; $68e4: $0a
	ld a, [bc]                                       ; $68e5: $0a
	inc d                                            ; $68e6: $14
	dec d                                            ; $68e7: $15
	ld de, $6868                                     ; $68e8: $11 $68 $68
	ld l, h                                          ; $68eb: $6c
	ld l, b                                          ; $68ec: $68
	adc c                                            ; $68ed: $89
	adc c                                            ; $68ee: $89
	add hl, de                                       ; $68ef: $19
	add hl, de                                       ; $68f0: $19
	dec de                                           ; $68f1: $1b
	adc h                                            ; $68f2: $8c
	call nz, $0fc6                                   ; $68f3: $c4 $c6 $0f
	rst JumpTable                                          ; $68f6: $c7
	db $e3                                           ; $68f7: $e3
	xor e                                            ; $68f8: $ab

jr_048_68f9:
	ld l, e                                          ; $68f9: $6b
	ld c, $0e                                        ; $68fa: $0e $0e
	rrca                                             ; $68fc: $0f
	rrca                                             ; $68fd: $0f
	rst AddAOntoHL                                          ; $68fe: $ef
	rst SubAFromBC                                          ; $68ff: $e7
	rst SubAFromBC                                          ; $6900: $e7
	or a                                             ; $6901: $b7
	db $10                                           ; $6902: $10
	jr nz, jr_048_6977                               ; $6903: $20 $72

	jr jr_048_6887                                   ; $6905: $18 $80

	add c                                            ; $6907: $81
	jr c, jr_048_697b                                ; $6908: $38 $71

	ldh [$c0], a                                     ; $690a: $e0 $c0
	nop                                              ; $690c: $00
	ld bc, $cb81                                     ; $690d: $01 $81 $cb
	ld sp, $2121                                     ; $6910: $31 $21 $21
	ld b, c                                          ; $6913: $41
	ld [hl], c                                       ; $6914: $71
	pop af                                           ; $6915: $f1
	pop bc                                           ; $6916: $c1
	add c                                            ; $6917: $81
	dec sp                                           ; $6918: $3b
	ld a, e                                          ; $6919: $7b
	ld [hl], c                                       ; $691a: $71
	pop hl                                           ; $691b: $e1
	ld sp, hl                                        ; $691c: $f9
	ld sp, hl                                        ; $691d: $f9
	reti                                             ; $691e: $d9


	rst SubAFromDE                                          ; $691f: $df
	ld h, l                                          ; $6920: $65
	add c                                            ; $6921: $81
	ld b, c                                          ; $6922: $41
	and e                                            ; $6923: $a3
	rst SubAFromBC                                          ; $6924: $e7
	ret nz                                           ; $6925: $c0

	sbc l                                            ; $6926: $9d
	sub c                                            ; $6927: $91
	db $dd                                           ; $6928: $dd
	call c, $94cb                                    ; $6929: $dc $cb $94
	db $eb                                           ; $692c: $eb
	res 2, e                                         ; $692d: $cb $93
	or $f7                                           ; $692f: $f6 $f7
	or $f4                                           ; $6931: $f6 $f4
	db $f4                                           ; $6933: $f4
	push af                                          ; $6934: $f5
	pop af                                           ; $6935: $f1
	db $f4                                           ; $6936: $f4
	reti                                             ; $6937: $d9


	rst $38                                          ; $6938: $ff
	sub a                                            ; $6939: $97
	jp nz, $8af4                                     ; $693a: $c2 $f4 $8a

	ld d, h                                          ; $693d: $54
	cp d                                             ; $693e: $ba
	inc e                                            ; $693f: $1c
	ld h, $cc                                        ; $6940: $26 $cc
	reti                                             ; $6942: $d9


	rst $38                                          ; $6943: $ff
	sub a                                            ; $6944: $97
	and b                                            ; $6945: $a0
	ldh a, [$e8]                                     ; $6946: $f0 $e8
	db $fd                                           ; $6948: $fd
	ld a, [$e8f4]                                    ; $6949: $fa $f4 $e8
	ld d, b                                          ; $694c: $50
	reti                                             ; $694d: $d9


	rst $38                                          ; $694e: $ff
	ld a, l                                          ; $694f: $7d
	and h                                            ; $6950: $a4
	ld a, [hl]                                       ; $6951: $7e
	ld h, b                                          ; $6952: $60
	sbc c                                            ; $6953: $99
	push hl                                          ; $6954: $e5
	ld a, [bc]                                       ; $6955: $0a
	ld d, l                                          ; $6956: $55
	dec hl                                           ; $6957: $2b
	add b                                            ; $6958: $80
	ret nz                                           ; $6959: $c0

	ld a, e                                          ; $695a: $7b
	jr jr_048_68f9                                   ; $695b: $18 $9c

	push af                                          ; $695d: $f5
	xor d                                            ; $695e: $aa
	call nc, $067b                                   ; $695f: $d4 $7b $06
	sbc h                                            ; $6962: $9c
	rst $38                                          ; $6963: $ff
	ld d, l                                          ; $6964: $55
	xor a                                            ; $6965: $af
	halt                                             ; $6966: $76
	ldh a, [$7a]                                     ; $6967: $f0 $7a
	add h                                            ; $6969: $84
	sbc [hl]                                         ; $696a: $9e
	ld d, b                                          ; $696b: $50
	ld [hl], a                                       ; $696c: $77
	ld a, [$fd7f]                                    ; $696d: $fa $7f $fd
	sbc [hl]                                         ; $6970: $9e
	ld d, a                                          ; $6971: $57
	ld [hl], d                                       ; $6972: $72
	ldh [$df], a                                     ; $6973: $e0 $df
	rst $38                                          ; $6975: $ff
	sbc [hl]                                         ; $6976: $9e

jr_048_6977:
	xor b                                            ; $6977: $a8
	ld [hl], l                                       ; $6978: $75
	add b                                            ; $6979: $80
	sbc [hl]                                         ; $697a: $9e

jr_048_697b:
	db $ed                                           ; $697b: $ed
	ld l, l                                          ; $697c: $6d

Call_048_697d:
	ld a, l                                          ; $697d: $7d
	ld [hl], e                                       ; $697e: $73
	and $77                                          ; $697f: $e6 $77
	ldh a, [$9e]                                     ; $6981: $f0 $9e
	ld d, [hl]                                       ; $6983: $56
	ld [hl], e                                       ; $6984: $73
	ldh a, [$9e]                                     ; $6985: $f0 $9e
	xor d                                            ; $6987: $aa
	ld h, e                                          ; $6988: $63
	ldh a, [$9e]                                     ; $6989: $f0 $9e
	rst SubAFromHL                                          ; $698b: $d7
	ld c, a                                          ; $698c: $4f
	ldh a, [$7d]                                     ; $698d: $f0 $7d
	ld h, l                                          ; $698f: $65
	ld [hl], a                                       ; $6990: $77
	ldh a, [$9e]                                     ; $6991: $f0 $9e
	db $fd                                           ; $6993: $fd
	ld h, e                                          ; $6994: $63
	ldh a, [$7e]                                     ; $6995: $f0 $7e
	add $7f                                          ; $6997: $c6 $7f
	rst FarCall                                          ; $6999: $f7
	ld a, [hl]                                       ; $699a: $7e
	inc b                                            ; $699b: $04
	ld a, [hl]                                       ; $699c: $7e
	ld e, d                                          ; $699d: $5a
	ld [hl], a                                       ; $699e: $77
	ldh a, [$de]                                     ; $699f: $f0 $de
	ld bc, $0396                                     ; $69a1: $01 $96 $03
	rst $38                                          ; $69a4: $ff
	ei                                               ; $69a5: $fb
	pop af                                           ; $69a6: $f1
	xor $ff                                          ; $69a7: $ee $ff
	rst $38                                          ; $69a9: $ff
	push de                                          ; $69aa: $d5
	ld [$4374], a                                    ; $69ab: $ea $74 $43
	db $dd                                           ; $69ae: $dd
	ret nz                                           ; $69af: $c0

	ld a, l                                          ; $69b0: $7d
	add a                                            ; $69b1: $87
	sbc [hl]                                         ; $69b2: $9e
	ldh a, [$75]                                     ; $69b3: $f0 $75
	jr nz, @-$6b                                     ; $69b5: $20 $93

	cp [hl]                                          ; $69b7: $be
	ldh [$e0], a                                     ; $69b8: $e0 $e0
	rst $38                                          ; $69ba: $ff
	rst $38                                          ; $69bb: $ff
	ld a, b                                          ; $69bc: $78
	jr c, jr_048_69fb                                ; $69bd: $38 $3c

	inc e                                            ; $69bf: $1c
	db $fc                                           ; $69c0: $fc
	db $fd                                           ; $69c1: $fd
	inc bc                                           ; $69c2: $03
	ld a, d                                          ; $69c3: $7a
	ld a, [de]                                       ; $69c4: $1a
	sub h                                            ; $69c5: $94
	ld d, h                                          ; $69c6: $54
	xor e                                            ; $69c7: $ab
	rlca                                             ; $69c8: $07
	ld b, $fe                                        ; $69c9: $06 $fe
	rst $38                                          ; $69cb: $ff
	inc bc                                           ; $69cc: $03
	ld bc, $0001                                     ; $69cd: $01 $01 $00
	add c                                            ; $69d0: $81
	cp $80                                           ; $69d1: $fe $80
	ld b, $0b                                        ; $69d3: $06 $0b
	sub a                                            ; $69d5: $97
	sub a                                            ; $69d6: $97
	adc e                                            ; $69d7: $8b
	pop bc                                           ; $69d8: $c1
	ret nz                                           ; $69d9: $c0

	rlca                                             ; $69da: $07
	rrca                                             ; $69db: $0f
	sbc b                                            ; $69dc: $98
	sbc b                                            ; $69dd: $98
	ret nc                                           ; $69de: $d0

	ld de, $5795                                     ; $69df: $11 $95 $57
	ld l, c                                          ; $69e2: $69
	add sp, -$64                                     ; $69e3: $e8 $9c
	jp hl                                            ; $69e5: $e9


	db $fd                                           ; $69e6: $fd
	sbc e                                            ; $69e7: $9b
	pop de                                           ; $69e8: $d1
	ld sp, hl                                        ; $69e9: $f9
	jp hl                                            ; $69ea: $e9


	ld sp, hl                                        ; $69eb: $f9
	add hl, sp                                       ; $69ec: $39
	dec c                                            ; $69ed: $0d
	dec b                                            ; $69ee: $05
	ld d, e                                          ; $69ef: $53
	ld [hl], l                                       ; $69f0: $75
	dec e                                            ; $69f1: $1d
	add b                                            ; $69f2: $80
	jp hl                                            ; $69f3: $e9


	or h                                             ; $69f4: $b4
	xor d                                            ; $69f5: $aa
	ld a, [hl]                                       ; $69f6: $7e
	ld a, l                                          ; $69f7: $7d
	or e                                             ; $69f8: $b3
	sub e                                            ; $69f9: $93
	ei                                               ; $69fa: $fb

jr_048_69fb:
	db $fd                                           ; $69fb: $fd
	adc l                                            ; $69fc: $8d
	add [hl]                                         ; $69fd: $86
	add e                                            ; $69fe: $83
	inc bc                                           ; $69ff: $03
	pop bc                                           ; $6a00: $c1
	ld [bc], a                                       ; $6a01: $02
	ld b, $8d                                        ; $6a02: $06 $8d
	adc $f9                                          ; $6a04: $ce $f9
	cp a                                             ; $6a06: $bf
	cp a                                             ; $6a07: $bf
	db $e3                                           ; $6a08: $e3
	rst SubAFromBC                                          ; $6a09: $e7
	add [hl]                                         ; $6a0a: $86
	rst GetHLinHL                                          ; $6a0b: $cf
	rst $38                                          ; $6a0c: $ff
	db $fc                                           ; $6a0d: $fc
	ldh a, [$c0]                                     ; $6a0e: $f0 $c0
	dec b                                            ; $6a10: $05
	ld bc, $0384                                     ; $6a11: $01 $84 $03
	add e                                            ; $6a14: $83
	ld b, e                                          ; $6a15: $43
	and d                                            ; $6a16: $a2
	rst FarCall                                          ; $6a17: $f7
	push de                                          ; $6a18: $d5
	xor a                                            ; $6a19: $af
	ld c, a                                          ; $6a1a: $4f
	rrca                                             ; $6a1b: $0f
	rst GetHLinHL                                          ; $6a1c: $cf
	rst SubAFromBC                                          ; $6a1d: $e7
	ld [hl], a                                       ; $6a1e: $77
	ld [hl], $1e                                     ; $6a1f: $36 $1e
	xor d                                            ; $6a21: $aa
	cp e                                             ; $6a22: $bb
	ld e, d                                          ; $6a23: $5a
	bit 2, h                                         ; $6a24: $cb $54
	dec h                                            ; $6a26: $25
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	rst SubAFromHL                                          ; $6a29: $d7
	rst SubAFromHL                                          ; $6a2a: $d7
	or a                                             ; $6a2b: $b7
	or a                                             ; $6a2c: $b7
	cp e                                             ; $6a2d: $bb
	sbc $ff                                          ; $6a2e: $de $ff
	ld a, h                                          ; $6a30: $7c
	ret nz                                           ; $6a31: $c0

	sbc l                                            ; $6a32: $9d
	ldh a, [c]                                       ; $6a33: $f2
	ld [hl], l                                       ; $6a34: $75
	ld e, h                                          ; $6a35: $5c
	sbc b                                            ; $6a36: $98
	rst SubAFromDE                                          ; $6a37: $df
	rst $38                                          ; $6a38: $ff
	sub a                                            ; $6a39: $97
	ld a, [hl+]                                      ; $6a3a: $2a
	inc d                                            ; $6a3b: $14
	xor d                                            ; $6a3c: $aa
	ld e, [hl]                                       ; $6a3d: $5e
	add e                                            ; $6a3e: $83
	rst AddAOntoHL                                          ; $6a3f: $ef
	rst SubAFromDE                                          ; $6a40: $df
	ld a, [hl]                                       ; $6a41: $7e
	call c, $99ff                                    ; $6a42: $dc $ff $99
	sub a                                            ; $6a45: $97
	rst $38                                          ; $6a46: $ff
	rst $38                                          ; $6a47: $ff
	pop hl                                           ; $6a48: $e1
	jp z, Jump_048_7ad7                              ; $6a49: $ca $d7 $7a

	ldh [c], a                                       ; $6a4c: $e2
	ld a, b                                          ; $6a4d: $78
	adc l                                            ; $6a4e: $8d
	sbc e                                            ; $6a4f: $9b
	push af                                          ; $6a50: $f5
	xor b                                            ; $6a51: $a8
	ld d, b                                          ; $6a52: $50
	add b                                            ; $6a53: $80
	ld a, c                                          ; $6a54: $79
	db $ed                                           ; $6a55: $ed
	ld [hl], a                                       ; $6a56: $77
	ld c, b                                          ; $6a57: $48
	ld a, a                                          ; $6a58: $7f
	di                                               ; $6a59: $f3
	sbc l                                            ; $6a5a: $9d
	ld d, l                                          ; $6a5b: $55
	rst $38                                          ; $6a5c: $ff
	ld l, l                                          ; $6a5d: $6d
	ldh [c], a                                       ; $6a5e: $e2
	ld [hl], e                                       ; $6a5f: $73
	ret z                                            ; $6a60: $c8

	sbc e                                            ; $6a61: $9b
	ld a, [$aad5]                                    ; $6a62: $fa $d5 $aa
	ld b, b                                          ; $6a65: $40
	ld h, c                                          ; $6a66: $61
	or b                                             ; $6a67: $b0
	ld a, b                                          ; $6a68: $78
	ld h, h                                          ; $6a69: $64
	sbc d                                            ; $6a6a: $9a
	xor d                                            ; $6a6b: $aa
	ld d, a                                          ; $6a6c: $57
	cp a                                             ; $6a6d: $bf
	dec a                                            ; $6a6e: $3d
	ld a, a                                          ; $6a6f: $7f
	db $fd                                           ; $6a70: $fd
	sub h                                            ; $6a71: $94
	rlca                                             ; $6a72: $07
	rra                                              ; $6a73: $1f
	add hl, sp                                       ; $6a74: $39
	inc a                                            ; $6a75: $3c
	db $fd                                           ; $6a76: $fd
	xor d                                            ; $6a77: $aa
	ld d, l                                          ; $6a78: $55
	xor b                                            ; $6a79: $a8
	ldh [$f0], a                                     ; $6a7a: $e0 $f0
	ldh a, [$73]                                     ; $6a7c: $f0 $73
	ldh [$99], a                                     ; $6a7e: $e0 $99
	ret nz                                           ; $6a80: $c0

	ldh [$e0], a                                     ; $6a81: $e0 $e0
	ld [hl], b                                       ; $6a83: $70
	ld d, l                                          ; $6a84: $55
	and b                                            ; $6a85: $a0
	ld l, a                                          ; $6a86: $6f
	reti                                             ; $6a87: $d9


	ld a, [$0c9d]                                    ; $6a88: $fa $9d $0c
	ld d, l                                          ; $6a8b: $55
	ld l, e                                          ; $6a8c: $6b
	ret                                              ; $6a8d: $c9


	ld h, c                                          ; $6a8e: $61
	jr nc, jr_048_6adc                               ; $6a8f: $30 $4b

	ldh a, [$97]                                     ; $6a91: $f0 $97
	ld b, e                                          ; $6a93: $43
	inc bc                                           ; $6a94: $03
	rlca                                             ; $6a95: $07
	rra                                              ; $6a96: $1f
	rra                                              ; $6a97: $1f
	daa                                              ; $6a98: $27
	nop                                              ; $6a99: $00
	rst $38                                          ; $6a9a: $ff
	sbc $03                                          ; $6a9b: $de $03
	sbc h                                            ; $6a9d: $9c
	rrca                                             ; $6a9e: $0f
	rra                                              ; $6a9f: $1f
	inc e                                            ; $6aa0: $1c
	ld a, e                                          ; $6aa1: $7b
	cp h                                             ; $6aa2: $bc
	ld a, l                                          ; $6aa3: $7d
	ld [$f89e], a                                    ; $6aa4: $ea $9e $f8
	halt                                             ; $6aa7: $76
	sbc h                                            ; $6aa8: $9c
	ld a, l                                          ; $6aa9: $7d
	ld h, c                                          ; $6aaa: $61
	ld a, a                                          ; $6aab: $7f
	ld a, [hl]                                       ; $6aac: $7e
	adc [hl]                                         ; $6aad: $8e
	rst $38                                          ; $6aae: $ff
	ccf                                              ; $6aaf: $3f
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	ld e, $0f                                        ; $6ab2: $1e $0f
	rrca                                             ; $6ab4: $0f
	rlca                                             ; $6ab5: $07
	rst SubAFromHL                                          ; $6ab6: $d7
	ei                                               ; $6ab7: $fb
	rrca                                             ; $6ab8: $0f
	rst $38                                          ; $6ab9: $ff
	ld e, $0e                                        ; $6aba: $1e $0e
	rlca                                             ; $6abc: $07
	rlca                                             ; $6abd: $07
	inc bc                                           ; $6abe: $03
	ld l, a                                          ; $6abf: $6f
	jp z, $257e                                      ; $6ac0: $ca $7e $25

	ld a, a                                          ; $6ac3: $7f
	db $e3                                           ; $6ac4: $e3
	ld [hl], e                                       ; $6ac5: $73
	or $77                                           ; $6ac6: $f6 $77
	ld d, b                                          ; $6ac8: $50
	sbc d                                            ; $6ac9: $9a
	ret c                                            ; $6aca: $d8

	jr c, jr_048_6add                                ; $6acb: $38 $10

	ld a, [hl+]                                      ; $6acd: $2a
	dec [hl]                                         ; $6ace: $35
	ld a, e                                          ; $6acf: $7b
	or b                                             ; $6ad0: $b0
	rst SubAFromDE                                          ; $6ad1: $df
	ld [hl], b                                       ; $6ad2: $70
	sbc h                                            ; $6ad3: $9c
	jr nc, jr_048_6af5                               ; $6ad4: $30 $1f

	rrca                                             ; $6ad6: $0f
	cp $9a                                           ; $6ad7: $fe $9a
	adc a                                            ; $6ad9: $8f
	add hl, bc                                       ; $6ada: $09
	ld [hl], l                                       ; $6adb: $75

jr_048_6adc:
	db $fd                                           ; $6adc: $fd

jr_048_6add:
	add hl, bc                                       ; $6add: $09
	ld a, e                                          ; $6ade: $7b
	ldh a, [$9b]                                     ; $6adf: $f0 $9b
	dec b                                            ; $6ae1: $05
	dec c                                            ; $6ae2: $0d
	dec de                                           ; $6ae3: $1b
	cp $77                                           ; $6ae4: $fe $77
	db $db                                           ; $6ae6: $db
	rst SubAFromDE                                          ; $6ae7: $df
	add e                                            ; $6ae8: $83
	ld a, a                                          ; $6ae9: $7f
	call nc, $2376                                   ; $6aea: $d4 $76 $23
	db $dd                                           ; $6aed: $dd
	ld bc, $f077                                     ; $6aee: $01 $77 $f0
	rst SubAFromDE                                          ; $6af1: $df
	ld h, b                                          ; $6af2: $60
	sub h                                            ; $6af3: $94
	or b                                             ; $6af4: $b0

jr_048_6af5:
	ldh a, [rLCDC]                                   ; $6af5: $f0 $40
	nop                                              ; $6af7: $00
	rlca                                             ; $6af8: $07
	rst $38                                          ; $6af9: $ff
	ret nz                                           ; $6afa: $c0

	ld b, b                                          ; $6afb: $40
	ld h, b                                          ; $6afc: $60
	ldh a, [$e0]                                     ; $6afd: $f0 $e0

Call_048_6aff:
	ld a, e                                          ; $6aff: $7b
	ld a, $8e                                        ; $6b00: $3e $8e
	ld a, $0c                                        ; $6b02: $3e $0c
	inc e                                            ; $6b04: $1c
	rra                                              ; $6b05: $1f
	cpl                                              ; $6b06: $2f
	rra                                              ; $6b07: $1f
	ret nz                                           ; $6b08: $c0

	rst $38                                          ; $6b09: $ff
	inc e                                            ; $6b0a: $1c
	jr jr_048_6b15                                   ; $6b0b: $18 $08

	nop                                              ; $6b0d: $00
	rra                                              ; $6b0e: $1f
	nop                                              ; $6b0f: $00
	ret nz                                           ; $6b10: $c0

	cp $03                                           ; $6b11: $fe $03
	ld a, b                                          ; $6b13: $78
	ld a, e                                          ; $6b14: $7b

jr_048_6b15:
	sbc e                                            ; $6b15: $9b
	rst SubAFromDE                                          ; $6b16: $df
	db $e4                                           ; $6b17: $e4
	inc [hl]                                         ; $6b18: $34
	call c, $ffdc                                    ; $6b19: $dc $dc $ff
	sbc l                                            ; $6b1c: $9d
	cp h                                             ; $6b1d: $bc
	adc b                                            ; $6b1e: $88
	ld [hl], d                                       ; $6b1f: $72
	ret z                                            ; $6b20: $c8

	sub b                                            ; $6b21: $90
	ld hl, sp+$10                                    ; $6b22: $f8 $10
	db $10                                           ; $6b24: $10
	jr nz, @+$01                                     ; $6b25: $20 $ff

	ccf                                              ; $6b27: $3f
	ccf                                              ; $6b28: $3f
	rst $38                                          ; $6b29: $ff
	cp $ff                                           ; $6b2a: $fe $ff
	cp d                                             ; $6b2c: $ba
	ld l, l                                          ; $6b2d: $6d
	rst $38                                          ; $6b2e: $ff
	rst $38                                          ; $6b2f: $ff
	rst AddAOntoHL                                          ; $6b30: $ef
	ld l, a                                          ; $6b31: $6f

jr_048_6b32:
	ccf                                              ; $6b32: $3f
	sbc [hl]                                         ; $6b33: $9e
	ld sp, hl                                        ; $6b34: $f9
	ld a, d                                          ; $6b35: $7a
	jp z, $ea94                                      ; $6b36: $ca $94 $ea

	push de                                          ; $6b39: $d5
	rst AddAOntoHL                                          ; $6b3a: $ef
	nop                                              ; $6b3b: $00
	rst $38                                          ; $6b3c: $ff
	rrca                                             ; $6b3d: $0f
	di                                               ; $6b3e: $f3
	or e                                             ; $6b3f: $b3
	sbc a                                            ; $6b40: $9f
	adc a                                            ; $6b41: $8f
	sub [hl]                                         ; $6b42: $96
	ld l, h                                          ; $6b43: $6c
	inc [hl]                                         ; $6b44: $34
	sub l                                            ; $6b45: $95
	rrca                                             ; $6b46: $0f
	ld bc, $ff00                                     ; $6b47: $01 $00 $ff
	sbc l                                            ; $6b4a: $9d
	sbc b                                            ; $6b4b: $98
	and a                                            ; $6b4c: $a7
	cp $50                                           ; $6b4d: $fe $50
	ld de, $ffdc                                     ; $6b4f: $11 $dc $ff
	sub l                                            ; $6b52: $95
	dec h                                            ; $6b53: $25
	xor b                                            ; $6b54: $a8
	add sp, $0f                                      ; $6b55: $e8 $0f
	rst $38                                          ; $6b57: $ff
	sbc e                                            ; $6b58: $9b
	sbc a                                            ; $6b59: $9f
	adc $1f                                          ; $6b5a: $ce $1f
	ld [$aa78], a                                    ; $6b5c: $ea $78 $aa
	db $dd                                           ; $6b5f: $dd
	rst $38                                          ; $6b60: $ff
	sub l                                            ; $6b61: $95
	dec [hl]                                         ; $6b62: $35
	dec h                                            ; $6b63: $25
	sbc b                                            ; $6b64: $98
	rst $38                                          ; $6b65: $ff
	call c, Call_048_7f9e                            ; $6b66: $dc $9e $7f
	reti                                             ; $6b69: $d9


	jr nz, jr_048_6b32                               ; $6b6a: $20 $c6

	call c, Call_048_7cff                            ; $6b6c: $dc $ff $7c
	db $fd                                           ; $6b6f: $fd
	sub [hl]                                         ; $6b70: $96
	jr nz, jr_048_6be3                               ; $6b71: $20 $70

	rst $38                                          ; $6b73: $ff
	rst SubAFromDE                                          ; $6b74: $df
	rst SubAFromDE                                          ; $6b75: $df
	rst AddAOntoHL                                          ; $6b76: $ef
	rlca                                             ; $6b77: $07
	rst SubAFromHL                                          ; $6b78: $d7
	adc a                                            ; $6b79: $8f
	call c, $95ff                                    ; $6b7a: $dc $ff $95
	jp Jump_048_4000                                 ; $6b7d: $c3 $00 $40


	ccf                                              ; $6b80: $3f
	rst SubAFromBC                                          ; $6b81: $e7
	db $e3                                           ; $6b82: $e3
	ld a, a                                          ; $6b83: $7f
	cp a                                             ; $6b84: $bf
	ld a, [hl]                                       ; $6b85: $7e
	scf                                              ; $6b86: $37
	ld a, e                                          ; $6b87: $7b
	ld c, e                                          ; $6b88: $4b
	sub c                                            ; $6b89: $91
	rst $38                                          ; $6b8a: $ff
	cp a                                             ; $6b8b: $bf
	rra                                              ; $6b8c: $1f
	sbc a                                            ; $6b8d: $9f
	ret z                                            ; $6b8e: $c8

	add b                                            ; $6b8f: $80
	ld c, $ff                                        ; $6b90: $0e $ff
	or c                                             ; $6b92: $b1
	rra                                              ; $6b93: $1f
	rra                                              ; $6b94: $1f
	xor $e1                                          ; $6b95: $ee $e1
	inc sp                                           ; $6b97: $33
	db $db                                           ; $6b98: $db
	rst $38                                          ; $6b99: $ff
	sbc l                                            ; $6b9a: $9d
	ld a, $1c                                        ; $6b9b: $3e $1c
	halt                                             ; $6b9d: $76
	add $9b                                          ; $6b9e: $c6 $9b
	add b                                            ; $6ba0: $80
	ld b, b                                          ; $6ba1: $40
	jr nz, @+$12                                     ; $6ba2: $20 $10

	reti                                             ; $6ba4: $d9


	rst $38                                          ; $6ba5: $ff
	ld h, [hl]                                       ; $6ba6: $66
	or [hl]                                          ; $6ba7: $b6
	inc bc                                           ; $6ba8: $03
	ldh a, [$03]                                     ; $6ba9: $f0 $03
	ldh a, [rHDMA3]                                  ; $6bab: $f0 $53
	ldh a, [$7e]                                     ; $6bad: $f0 $7e
	call nc, $ffdb                                   ; $6baf: $d4 $db $ff
	sbc [hl]                                         ; $6bb2: $9e
	cp $7a                                           ; $6bb3: $fe $7a
	ld a, e                                          ; $6bb5: $7b
	sbc d                                            ; $6bb6: $9a
	ld [hl+], a                                      ; $6bb7: $22
	rra                                              ; $6bb8: $1f
	rra                                              ; $6bb9: $1f
	and a                                            ; $6bba: $a7
	dec de                                           ; $6bbb: $1b
	sbc $ff                                          ; $6bbc: $de $ff
	sub d                                            ; $6bbe: $92
	pop de                                           ; $6bbf: $d1
	ldh a, [$ef]                                     ; $6bc0: $f0 $ef
	ld a, a                                          ; $6bc2: $7f
	ld h, b                                          ; $6bc3: $60
	add hl, de                                       ; $6bc4: $19
	ld hl, sp+$58                                    ; $6bc5: $f8 $58
	xor a                                            ; $6bc7: $af
	and a                                            ; $6bc8: $a7
	scf                                              ; $6bc9: $37
	sbc a                                            ; $6bca: $9f
	or a                                             ; $6bcb: $b7
	ld a, d                                          ; $6bcc: $7a
	ld hl, sp-$6e                                    ; $6bcd: $f8 $92
	rst GetHLinHL                                          ; $6bcf: $cf
	adc a                                            ; $6bd0: $8f
	adc a                                            ; $6bd1: $8f
	ccf                                              ; $6bd2: $3f
	ld h, e                                          ; $6bd3: $63
	sbc a                                            ; $6bd4: $9f
	dec de                                           ; $6bd5: $1b
	rra                                              ; $6bd6: $1f
	rst $38                                          ; $6bd7: $ff
	ld sp, hl                                        ; $6bd8: $f9
	ldh a, [$f8]                                     ; $6bd9: $f0 $f8
	or $dc                                           ; $6bdb: $f6 $dc
	rst $38                                          ; $6bdd: $ff
	adc b                                            ; $6bde: $88
	ld hl, sp-$04                                    ; $6bdf: $f8 $fc
	cp $b4                                           ; $6be1: $fe $b4

jr_048_6be3:
	ret nz                                           ; $6be3: $c0

	inc h                                            ; $6be4: $24
	add e                                            ; $6be5: $83
	xor e                                            ; $6be6: $ab
	ld h, b                                          ; $6be7: $60
	ld d, $35                                        ; $6be8: $16 $35
	ld b, b                                          ; $6bea: $40
	jr nc, jr_048_6c05                               ; $6beb: $30 $18

	ld b, $c7                                        ; $6bed: $06 $c7
	dec a                                            ; $6bef: $3d
	ld hl, $006b                                     ; $6bf0: $21 $6b $00
	ld b, b                                          ; $6bf3: $40
	adc b                                            ; $6bf4: $88
	ld [$10de], sp                                   ; $6bf5: $08 $de $10
	sub a                                            ; $6bf8: $97
	adc b                                            ; $6bf9: $88
	jp z, $cfcd                                      ; $6bfa: $ca $cd $cf

	adc a                                            ; $6bfd: $8f
	rra                                              ; $6bfe: $1f
	rra                                              ; $6bff: $1f
	sbc a                                            ; $6c00: $9f
	ld a, e                                          ; $6c01: $7b
	and d                                            ; $6c02: $a2
	ld a, [hl]                                       ; $6c03: $7e
	db $dd                                           ; $6c04: $dd

jr_048_6c05:
	ld [hl], a                                       ; $6c05: $77
	db $fd                                           ; $6c06: $fd
	ld a, l                                          ; $6c07: $7d
	adc d                                            ; $6c08: $8a
	add b                                            ; $6c09: $80
	ld e, a                                          ; $6c0a: $5f
	cp c                                             ; $6c0b: $b9
	ld e, a                                          ; $6c0c: $5f
	cp a                                             ; $6c0d: $bf
	rst $38                                          ; $6c0e: $ff
	rst $38                                          ; $6c0f: $ff
	jr jr_048_6c1f                                   ; $6c10: $18 $0d

	jp nz, $b001                                     ; $6c12: $c2 $01 $b0

	ldh a, [$f9]                                     ; $6c15: $f0 $f9
	xor $04                                          ; $6c17: $ee $04
	ld [bc], a                                       ; $6c19: $02
	ld bc, $c080                                     ; $6c1a: $01 $80 $c0
	jr nz, jr_048_6c1f                               ; $6c1d: $20 $00

jr_048_6c1f:
	reti                                             ; $6c1f: $d9


	or l                                             ; $6c20: $b5
	ret nz                                           ; $6c21: $c0

	and a                                            ; $6c22: $a7
	rlca                                             ; $6c23: $07
	rrca                                             ; $6c24: $0f
	adc a                                            ; $6c25: $8f
	rst SubAFromDE                                          ; $6c26: $df
	ld h, c                                          ; $6c27: $61
	ld [$6780], sp                                   ; $6c28: $08 $80 $67
	ld b, e                                          ; $6c2b: $43
	ld hl, sp-$10                                    ; $6c2c: $f8 $f0
	or b                                             ; $6c2e: $b0
	and b                                            ; $6c2f: $a0
	cp [hl]                                          ; $6c30: $be
	cp c                                             ; $6c31: $b9
	ei                                               ; $6c32: $fb
	db $db                                           ; $6c33: $db
	set 5, h                                         ; $6c34: $cb $ec
	cp [hl]                                          ; $6c36: $be
	add c                                            ; $6c37: $81
	ld h, e                                          ; $6c38: $63
	ld h, a                                          ; $6c39: $67
	and $e6                                          ; $6c3a: $e6 $e6
	ld [hl], $1e                                     ; $6c3c: $36 $1e
	ld h, b                                          ; $6c3e: $60
	ld [hl], b                                       ; $6c3f: $70
	pop af                                           ; $6c40: $f1
	cp $cb                                           ; $6c41: $fe $cb
	sub $7f                                          ; $6c43: $d6 $7f

jr_048_6c45:
	ld a, a                                          ; $6c45: $7f
	db $fd                                           ; $6c46: $fd
	cp l                                             ; $6c47: $bd
	sbc a                                            ; $6c48: $9f
	sub a                                            ; $6c49: $97
	nop                                              ; $6c4a: $00
	jr nc, jr_048_6c7d                               ; $6c4b: $30 $30

	jr nz, jr_048_6c6f                               ; $6c4d: $20 $20

	ld b, b                                          ; $6c4f: $40
	ret nz                                           ; $6c50: $c0

jr_048_6c51:
	ld h, b                                          ; $6c51: $60
	ld [hl], d                                       ; $6c52: $72
	and a                                            ; $6c53: $a7
	sbc h                                            ; $6c54: $9c
	cp $f4                                           ; $6c55: $fe $f4
	ei                                               ; $6c57: $fb
	db $db                                           ; $6c58: $db
	inc b                                            ; $6c59: $04
	rst SubAFromDE                                          ; $6c5a: $df
	rlca                                             ; $6c5b: $07
	sub a                                            ; $6c5c: $97
	nop                                              ; $6c5d: $00
	ld c, c                                          ; $6c5e: $49
	ld c, c                                          ; $6c5f: $49
	ret nz                                           ; $6c60: $c0

	ldh [rAUD4ENV], a                                ; $6c61: $e0 $21
	adc a                                            ; $6c63: $8f
	ret nc                                           ; $6c64: $d0

	sbc $80                                          ; $6c65: $de $80
	rst $38                                          ; $6c67: $ff
	ld a, a                                          ; $6c68: $7f
	ldh [$80], a                                     ; $6c69: $e0 $80
	add b                                            ; $6c6b: $80
	ld [bc], a                                       ; $6c6c: $02
	ret z                                            ; $6c6d: $c8

	adc b                                            ; $6c6e: $88

jr_048_6c6f:
	ld b, [hl]                                       ; $6c6f: $46
	or [hl]                                          ; $6c70: $b6
	xor $98                                          ; $6c71: $ee $98
	ld a, [$0f0d]                                    ; $6c73: $fa $0d $0f
	rst GetHLinHL                                          ; $6c76: $cf
	db $e4                                           ; $6c77: $e4
	ld h, h                                          ; $6c78: $64
	inc d                                            ; $6c79: $14
	jr @+$13                                         ; $6c7a: $18 $11

	xor l                                            ; $6c7c: $ad

jr_048_6c7d:
	ld d, a                                          ; $6c7d: $57
	jr nc, @-$54                                     ; $6c7e: $30 $aa

	ld c, $de                                        ; $6c80: $0e $de
	db $e4                                           ; $6c82: $e4

jr_048_6c83:
	adc [hl]                                         ; $6c83: $8e
	sbc $ea                                          ; $6c84: $de $ea
	rst $38                                          ; $6c86: $ff
	ld b, a                                          ; $6c87: $47
	ld b, l                                          ; $6c88: $45
	ld a, c                                          ; $6c89: $79
	sbc l                                            ; $6c8a: $9d
	ld b, d                                          ; $6c8b: $42
	jp $2578                                         ; $6c8c: $c3 $78 $25


	sbc [hl]                                         ; $6c8f: $9e
	ld d, l                                          ; $6c90: $55
	ld [hl], a                                       ; $6c91: $77
	cp $61                                           ; $6c92: $fe $61
	jr nz, @+$05                                     ; $6c94: $20 $03

	ldh a, [rIF]                                     ; $6c96: $f0 $0f
	ldh a, [$df]                                     ; $6c98: $f0 $df
	cp $99                                           ; $6c9a: $fe $99
	xor e                                            ; $6c9c: $ab
	ld d, h                                          ; $6c9d: $54
	add b                                            ; $6c9e: $80
	jr nz, jr_048_6c51                               ; $6c9f: $20 $b0

	ld c, h                                          ; $6ca1: $4c
	db $dd                                           ; $6ca2: $dd
	ld bc, $7f80                                     ; $6ca3: $01 $80 $7f
	ld b, b                                          ; $6ca6: $40
	ld b, b                                          ; $6ca7: $40
	jr nc, jr_048_6c83                               ; $6ca8: $30 $d9

	ld sp, hl                                        ; $6caa: $f9
	db $fd                                           ; $6cab: $fd
	rst AddAOntoHL                                          ; $6cac: $ef
	ld a, e                                          ; $6cad: $7b
	scf                                              ; $6cae: $37
	rlca                                             ; $6caf: $07
	rlca                                             ; $6cb0: $07
	add b                                            ; $6cb1: $80
	nop                                              ; $6cb2: $00
	jr nz, jr_048_6c45                               ; $6cb3: $20 $90

	rst $38                                          ; $6cb5: $ff
	rra                                              ; $6cb6: $1f
	inc bc                                           ; $6cb7: $03
	inc bc                                           ; $6cb8: $03
	jp $c1e3                                         ; $6cb9: $c3 $e3 $c1


	ret z                                            ; $6cbc: $c8

	call z, $cdcc                                    ; $6cbd: $cc $cc $cd
	jp nz, Jump_048_4163                             ; $6cc0: $c2 $63 $41

	ld b, b                                          ; $6cc3: $40
	sbc [hl]                                         ; $6cc4: $9e
	ld b, h                                          ; $6cc5: $44
	sbc $c0                                          ; $6cc6: $de $c0
	sub d                                            ; $6cc8: $92
	call $f0f9                                       ; $6cc9: $cd $f9 $f0
	pop af                                           ; $6ccc: $f1
	call nz, $0d00                                   ; $6ccd: $c4 $00 $0d
	dec c                                            ; $6cd0: $0d
	rrca                                             ; $6cd1: $0f
	di                                               ; $6cd2: $f3
	pop af                                           ; $6cd3: $f1
	ldh [rP1], a                                     ; $6cd4: $e0 $00
	db $dd                                           ; $6cd6: $dd
	inc b                                            ; $6cd7: $04
	dec [hl]                                         ; $6cd8: $35
	nop                                              ; $6cd9: $00
	sub $33                                          ; $6cda: $d6 $33
	sbc [hl]                                         ; $6cdc: $9e
	inc [hl]                                         ; $6cdd: $34
	reti                                             ; $6cde: $d9


	inc sp                                           ; $6cdf: $33
	sbc h                                            ; $6ce0: $9c
	ld h, h                                          ; $6ce1: $64
	ld b, h                                          ; $6ce2: $44
	ld b, e                                          ; $6ce3: $43
	jp c, $9e33                                      ; $6ce4: $da $33 $9e

	ld h, [hl]                                       ; $6ce7: $66
	call c, Call_048_7f44                            ; $6ce8: $dc $44 $7f
	ldh a, [c]                                       ; $6ceb: $f2
	sbc l                                            ; $6cec: $9d
	inc [hl]                                         ; $6ced: $34
	ld b, h                                          ; $6cee: $44
	ld l, a                                          ; $6cef: $6f
	or $dd                                           ; $6cf0: $f6 $dd
	ld b, h                                          ; $6cf2: $44
	sbc l                                            ; $6cf3: $9d
	ld h, [hl]                                       ; $6cf4: $66
	ld h, h                                          ; $6cf5: $64
	call c, $de44                                    ; $6cf6: $dc $44 $de
	ld d, l                                          ; $6cf9: $55
	rst SubAFromDE                                          ; $6cfa: $df
	ld h, [hl]                                       ; $6cfb: $66
	ld c, e                                          ; $6cfc: $4b
	or $9e                                           ; $6cfd: $f6 $9e
	ld b, l                                          ; $6cff: $45
	ld a, e                                          ; $6d00: $7b
	or $6f                                           ; $6d01: $f6 $6f
	ldh [c], a                                       ; $6d03: $e2
	sbc $44                                          ; $6d04: $de $44
	sbc l                                            ; $6d06: $9d
	ld [hl], e                                       ; $6d07: $73
	scf                                              ; $6d08: $37
	reti                                             ; $6d09: $d9


	ld [hl], a                                       ; $6d0a: $77
	ld e, a                                          ; $6d0b: $5f
	or $73                                           ; $6d0c: $f6 $73
	ld a, [bc]                                       ; $6d0e: $0a
	sbc e                                            ; $6d0f: $9b
	dec b                                            ; $6d10: $05
	nop                                              ; $6d11: $00
	inc bc                                           ; $6d12: $03
	nop                                              ; $6d13: $00
	ld d, a                                          ; $6d14: $57
	db $fc                                           ; $6d15: $fc
	sbc e                                            ; $6d16: $9b
	add sp, $14                                      ; $6d17: $e8 $14
	call nc, Call_048_6728                           ; $6d19: $d4 $28 $67
	db $fc                                           ; $6d1c: $fc
	sbc e                                            ; $6d1d: $9b
	ld [$d015], a                                    ; $6d1e: $ea $15 $d0
	ld l, $f9                                        ; $6d21: $2e $f9
	rst SubAFromDE                                          ; $6d23: $df
	rlca                                             ; $6d24: $07
	add b                                            ; $6d25: $80
	ld a, h                                          ; $6d26: $7c
	ld c, $c9                                        ; $6d27: $0e $c9
	ld c, $3a                                        ; $6d29: $0e $3a
	inc e                                            ; $6d2b: $1c
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	ld bc, $0e00                                     ; $6d2e: $01 $00 $0e
	rrca                                             ; $6d31: $0f
	ld e, a                                          ; $6d32: $5f
	ld h, d                                          ; $6d33: $62
	add $e3                                          ; $6d34: $c6 $e3
	rst SubAFromDE                                          ; $6d36: $df
	ld h, d                                          ; $6d37: $62
	rst SubAFromBC                                          ; $6d38: $e7
	ld [bc], a                                       ; $6d39: $02
	ld c, $03                                        ; $6d3a: $0e $03
	rra                                              ; $6d3c: $1f
	nop                                              ; $6d3d: $00
	cp b                                             ; $6d3e: $b8
	ld [hl], b                                       ; $6d3f: $70
	cp e                                             ; $6d40: $bb
	jr nc, jr_048_6d7d                               ; $6d41: $30 $3a

	inc l                                            ; $6d43: $2c
	and [hl]                                         ; $6d44: $a6
	add b                                            ; $6d45: $80
	inc [hl]                                         ; $6d46: $34

jr_048_6d47:
	ld h, $33                                        ; $6d47: $26 $33
	db $ed                                           ; $6d49: $ed
	ld sp, $30a7                                     ; $6d4a: $31 $a7 $30
	add $64                                          ; $6d4d: $c6 $64
	ld e, [hl]                                       ; $6d4f: $5e
	ld l, h                                          ; $6d50: $6c
	rst GetHLinHL                                          ; $6d51: $cf
	ld h, a                                          ; $6d52: $67
	ld l, h                                          ; $6d53: $6c
	ld b, a                                          ; $6d54: $47
	ld e, h                                          ; $6d55: $5c
	ld h, [hl]                                       ; $6d56: $66
	adc $64                                          ; $6d57: $ce $64
	db $dd                                           ; $6d59: $dd
	ld l, a                                          ; $6d5a: $6f
	rst SubAFromDE                                          ; $6d5b: $df
	ldh [$7f], a                                     ; $6d5c: $e0 $7f
	ld b, $17                                        ; $6d5e: $06 $17
	ld [bc], a                                       ; $6d60: $02
	or $eb                                           ; $6d61: $f6 $eb
	rrca                                             ; $6d63: $0f
	ldh a, [c]                                       ; $6d64: $f2

jr_048_6d65:
	add b                                            ; $6d65: $80
	ld b, $03                                        ; $6d66: $06 $03
	halt                                             ; $6d68: $76
	dec bc                                           ; $6d69: $0b
	ccf                                              ; $6d6a: $3f
	ldh a, [$f8]                                     ; $6d6b: $f0 $f8
	rlca                                             ; $6d6d: $07
	sub e                                            ; $6d6e: $93
	sbc d                                            ; $6d6f: $9a
	or $99                                           ; $6d70: $f6 $99
	rst AddAOntoHL                                          ; $6d72: $ef
	ld [hl], d                                       ; $6d73: $72
	inc sp                                           ; $6d74: $33
	jr nz, jr_048_6d65                               ; $6d75: $20 $ee

	inc de                                           ; $6d77: $13
	add l                                            ; $6d78: $85
	ld [bc], a                                       ; $6d79: $02
	db $10                                           ; $6d7a: $10
	rrca                                             ; $6d7b: $0f
	nop                                              ; $6d7c: $00

jr_048_6d7d:
	rst $38                                          ; $6d7d: $ff
	ccf                                              ; $6d7e: $3f
	ld [hl-], a                                      ; $6d7f: $32
	db $eb                                           ; $6d80: $eb
	ld [hl], c                                       ; $6d81: $71
	ld d, c                                          ; $6d82: $51
	ld h, c                                          ; $6d83: $61
	rst SubAFromDE                                          ; $6d84: $df
	adc h                                            ; $6d85: $8c
	ld h, b                                          ; $6d86: $60
	ldh [rLCDC], a                                   ; $6d87: $e0 $40
	pop hl                                           ; $6d89: $e1
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	rst $38                                          ; $6d8c: $ff
	nop                                              ; $6d8d: $00
	rst $38                                          ; $6d8e: $ff
	rst $38                                          ; $6d8f: $ff
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	add b                                            ; $6d92: $80
	add b                                            ; $6d93: $80
	nop                                              ; $6d94: $00
	cp a                                             ; $6d95: $bf
	ret nz                                           ; $6d96: $c0

	add b                                            ; $6d97: $80
	ld b, b                                          ; $6d98: $40
	ld [hl], a                                       ; $6d99: $77
	ldh a, [c]                                       ; $6d9a: $f2
	ld a, a                                          ; $6d9b: $7f
	cp $96                                           ; $6d9c: $fe $96
	db $dd                                           ; $6d9e: $dd
	ld [hl], $30                                     ; $6d9f: $36 $30

jr_048_6da1:
	db $10                                           ; $6da1: $10
	jr nc, jr_048_6db4                               ; $6da2: $30 $10

	rst SubAFromDE                                          ; $6da4: $df
	jr nc, jr_048_6dd7                               ; $6da5: $30 $30

	ld [hl], e                                       ; $6da7: $73
	ldh [c], a                                       ; $6da8: $e2
	ld a, a                                          ; $6da9: $7f
	cp $93                                           ; $6daa: $fe $93
	pop af                                           ; $6dac: $f1
	rra                                              ; $6dad: $1f
	dec sp                                           ; $6dae: $3b
	ld hl, $2171                                     ; $6daf: $21 $71 $21
	xor $51                                          ; $6db2: $ee $51

jr_048_6db4:
	pop hl                                           ; $6db4: $e1
	ld b, c                                          ; $6db5: $41
	ld [de], a                                       ; $6db6: $12
	pop hl                                           ; $6db7: $e1
	ld [hl], a                                       ; $6db8: $77
	ldh a, [$80]                                     ; $6db9: $f0 $80
	ccf                                              ; $6dbb: $3f
	ld de, $1efb                                     ; $6dbc: $11 $fb $1e
	inc sp                                           ; $6dbf: $33
	ld sp, $11f8                                     ; $6dc0: $31 $f8 $11
	cp [hl]                                          ; $6dc3: $be
	sub c                                            ; $6dc4: $91
	jr c, jr_048_6d47                                ; $6dc5: $38 $80

	ld b, $f8                                        ; $6dc7: $06 $f8
	nop                                              ; $6dc9: $00
	rst $38                                          ; $6dca: $ff
	adc a                                            ; $6dcb: $8f
	dec bc                                           ; $6dcc: $0b
	sbc e                                            ; $6dcd: $9b
	dec bc                                           ; $6dce: $0b
	db $e3                                           ; $6dcf: $e3
	dec e                                            ; $6dd0: $1d
	cp c                                             ; $6dd1: $b9
	sub c                                            ; $6dd2: $91
	or c                                             ; $6dd3: $b1
	or b                                             ; $6dd4: $b0
	ld a, [hl]                                       ; $6dd5: $7e
	pop hl                                           ; $6dd6: $e1

jr_048_6dd7:
	pop af                                           ; $6dd7: $f1
	nop                                              ; $6dd8: $00
	ld [bc], a                                       ; $6dd9: $02
	add b                                            ; $6dda: $80
	ld sp, hl                                        ; $6ddb: $f9
	di                                               ; $6ddc: $f3
	ld [hl+], a                                      ; $6ddd: $22
	dec sp                                           ; $6dde: $3b
	ld hl, $2133                                     ; $6ddf: $21 $33 $21
	ei                                               ; $6de2: $fb
	jr nz, jr_048_6da1                               ; $6de3: $20 $bc

	and e                                            ; $6de5: $a3
	db $d3                                           ; $6de6: $d3
	and c                                            ; $6de7: $a1
	rst $38                                          ; $6de8: $ff
	and d                                            ; $6de9: $a2
	rst $38                                          ; $6dea: $ff
	inc a                                            ; $6deb: $3c
	ld e, $18                                        ; $6dec: $1e $18
	cp b                                             ; $6dee: $b8
	db $10                                           ; $6def: $10
	ld [hl], b                                       ; $6df0: $70
	jr jr_048_6e22                                   ; $6df1: $18 $2f

	jr z, @-$06                                      ; $6df3: $28 $f8

	ld l, b                                          ; $6df5: $68
	ld d, h                                          ; $6df6: $54
	ld a, h                                          ; $6df7: $7c
	rst GetHLinHL                                          ; $6df8: $cf
	ld b, h                                          ; $6df9: $44
	adc l                                            ; $6dfa: $8d
	db $ec                                           ; $6dfb: $ec
	add h                                            ; $6dfc: $84
	add b                                            ; $6dfd: $80
	nop                                              ; $6dfe: $00
	ld b, b                                          ; $6dff: $40
	ldh [$fc], a                                     ; $6e00: $e0 $fc
	ld b, b                                          ; $6e02: $40
	bit 0, a                                         ; $6e03: $cb $47
	db $fd                                           ; $6e05: $fd
	ld c, b                                          ; $6e06: $48
	sbc $48                                          ; $6e07: $de $48
	xor l                                            ; $6e09: $ad
	ld c, b                                          ; $6e0a: $48
	ld hl, sp+$44                                    ; $6e0b: $f8 $44
	ei                                               ; $6e0d: $fb
	sub e                                            ; $6e0e: $93
	ret nz                                           ; $6e0f: $c0

	nop                                              ; $6e10: $00
	ldh [$80], a                                     ; $6e11: $e0 $80
	sbc h                                            ; $6e13: $9c
	cp h                                             ; $6e14: $bc
	cp c                                             ; $6e15: $b9
	ld d, a                                          ; $6e16: $57
	dec de                                           ; $6e17: $1b
	jr nc, jr_048_6e26                               ; $6e18: $30 $0c

	nop                                              ; $6e1a: $00
	ld d, a                                          ; $6e1b: $57
	cp $9e                                           ; $6e1c: $fe $9e
	adc h                                            ; $6e1e: $8c
	ld a, e                                          ; $6e1f: $7b
	ld [bc], a                                       ; $6e20: $02
	sbc [hl]                                         ; $6e21: $9e

jr_048_6e22:
	ld [bc], a                                       ; $6e22: $02
	ld d, e                                          ; $6e23: $53
	db $fc                                           ; $6e24: $fc
	ld b, [hl]                                       ; $6e25: $46

jr_048_6e26:
	ret nz                                           ; $6e26: $c0

	sbc b                                            ; $6e27: $98
	db $ed                                           ; $6e28: $ed
	db $10                                           ; $6e29: $10
	jp c, $e025                                      ; $6e2a: $da $25 $e0

	inc e                                            ; $6e2d: $1c
	push de                                          ; $6e2e: $d5
	halt                                             ; $6e2f: $76
	call nz, $2c80                                   ; $6e30: $c4 $80 $2c
	db $ec                                           ; $6e33: $ec
	ld de, $26d9                                     ; $6e34: $11 $d9 $26

jr_048_6e37:
	ld a, h                                          ; $6e37: $7c
	sbc b                                            ; $6e38: $98
	dec de                                           ; $6e39: $1b
	inc e                                            ; $6e3a: $1c
	jr c, jr_048_6e59                                ; $6e3b: $38 $1c

	ld sp, hl                                        ; $6e3d: $f9
	inc e                                            ; $6e3e: $1c
	dec c                                            ; $6e3f: $0d
	ld c, $4f                                        ; $6e40: $0e $4f
	scf                                              ; $6e42: $37
	ld h, h                                          ; $6e43: $64
	add e                                            ; $6e44: $83
	db $10                                           ; $6e45: $10
	rrca                                             ; $6e46: $0f
	ld [hl], a                                       ; $6e47: $77
	ld [bc], a                                       ; $6e48: $02
	and $03                                          ; $6e49: $e6 $03
	cpl                                              ; $6e4b: $2f
	ld [hl], $d4                                     ; $6e4c: $36 $d4
	ld h, e                                          ; $6e4e: $63
	ret z                                            ; $6e4f: $c8

	rst SubAFromBC                                          ; $6e50: $e7
	ld l, a                                          ; $6e51: $6f
	jr nc, @-$65                                     ; $6e52: $30 $99

	ld h, [hl]                                       ; $6e54: $66
	jr c, jr_048_6e37                                ; $6e55: $38 $e0

	jr nc, jr_048_6eb9                               ; $6e57: $30 $60

jr_048_6e59:
	rra                                              ; $6e59: $1f
	ld l, a                                          ; $6e5a: $6f
	db $f4                                           ; $6e5b: $f4
	ld [hl], a                                       ; $6e5c: $77
	cp $9d                                           ; $6e5d: $fe $9d
	xor $01                                          ; $6e5f: $ee $01
	ld e, a                                          ; $6e61: $5f
	db $f4                                           ; $6e62: $f4
	ld [hl], a                                       ; $6e63: $77
	cp $9c                                           ; $6e64: $fe $9c
	ld a, a                                          ; $6e66: $7f
	rst $38                                          ; $6e67: $ff
	ret nz                                           ; $6e68: $c0

	ld a, e                                          ; $6e69: $7b
	ld a, [$0295]                                    ; $6e6a: $fa $95 $02
	db $fd                                           ; $6e6d: $fd
	inc d                                            ; $6e6e: $14
	db $eb                                           ; $6e6f: $eb
	xor c                                            ; $6e70: $a9
	ld d, a                                          ; $6e71: $57
	ld d, l                                          ; $6e72: $55
	xor d                                            ; $6e73: $aa
	xor e                                            ; $6e74: $ab
	ld d, h                                          ; $6e75: $54
	ld [hl], a                                       ; $6e76: $77
	ldh a, [c]                                       ; $6e77: $f2
	sub l                                            ; $6e78: $95
	dec d                                            ; $6e79: $15
	ld [$758a], a                                    ; $6e7a: $ea $8a $75
	or l                                             ; $6e7d: $b5
	ld c, d                                          ; $6e7e: $4a
	ld h, b                                          ; $6e7f: $60
	add a                                            ; $6e80: $87

jr_048_6e81:
	dec d                                            ; $6e81: $15
	ld [$d27a], a                                    ; $6e82: $ea $7a $d2
	ld a, e                                          ; $6e85: $7b
	ldh a, [$7f]                                     ; $6e86: $f0 $7f
	add sp, -$63                                     ; $6e88: $e8 $9d
	xor d                                            ; $6e8a: $aa
	ld d, l                                          ; $6e8b: $55
	ld [hl], a                                       ; $6e8c: $77
	db $fc                                           ; $6e8d: $fc
	ld [hl], a                                       ; $6e8e: $77
	rst GetHLinHL                                          ; $6e8f: $cf
	ld [hl], a                                       ; $6e90: $77
	ldh a, [$97]                                     ; $6e91: $f0 $97
	ld d, b                                          ; $6e93: $50
	xor a                                            ; $6e94: $af
	and d                                            ; $6e95: $a2
	ld e, h                                          ; $6e96: $5c
	ld b, l                                          ; $6e97: $45
	cp d                                             ; $6e98: $ba
	cp a                                             ; $6e99: $bf
	ld b, b                                          ; $6e9a: $40
	ld h, a                                          ; $6e9b: $67
	ldh a, [hDisp1_OBP0]                                     ; $6e9c: $f0 $93
	inc b                                            ; $6e9e: $04
	ei                                               ; $6e9f: $fb
	ld [hl-], a                                      ; $6ea0: $32
	dec c                                            ; $6ea1: $0d
	jp hl                                            ; $6ea2: $e9


	ld e, $fa                                        ; $6ea3: $1e $fa
	dec b                                            ; $6ea5: $05
	rst $38                                          ; $6ea6: $ff
	nop                                              ; $6ea7: $00
	ld a, [$7705]                                    ; $6ea8: $fa $05 $77
	ldh a, [$9d]                                     ; $6eab: $f0 $9d
	db $10                                           ; $6ead: $10
	rst AddAOntoHL                                          ; $6eae: $ef
	ld l, a                                          ; $6eaf: $6f
	ret nc                                           ; $6eb0: $d0

	ld [hl], a                                       ; $6eb1: $77
	db $fc                                           ; $6eb2: $fc
	ld l, a                                          ; $6eb3: $6f
	sbc d                                            ; $6eb4: $9a
	sbc d                                            ; $6eb5: $9a
	and b                                            ; $6eb6: $a0
	ld e, a                                          ; $6eb7: $5f
	ld d, c                                          ; $6eb8: $51

jr_048_6eb9:
	xor [hl]                                         ; $6eb9: $ae
	xor b                                            ; $6eba: $a8
	ld a, e                                          ; $6ebb: $7b
	and b                                            ; $6ebc: $a0
	ld a, a                                          ; $6ebd: $7f
	ldh a, [$9e]                                     ; $6ebe: $f0 $9e
	db $fc                                           ; $6ec0: $fc
	ld l, e                                          ; $6ec1: $6b
	adc b                                            ; $6ec2: $88
	sub l                                            ; $6ec3: $95
	ld h, b                                          ; $6ec4: $60

jr_048_6ec5:
	sbc a                                            ; $6ec5: $9f
	sbc b                                            ; $6ec6: $98
	rrca                                             ; $6ec7: $0f
	ld b, h                                          ; $6ec8: $44
	cp e                                             ; $6ec9: $bb
	xor b                                            ; $6eca: $a8
	ld d, a                                          ; $6ecb: $57
	add hl, bc                                       ; $6ecc: $09
	pop af                                           ; $6ecd: $f1
	ld c, a                                          ; $6ece: $4f
	ld [hl], b                                       ; $6ecf: $70
	sbc c                                            ; $6ed0: $99
	jp c, $0684                                      ; $6ed1: $da $84 $06

	add $03                                          ; $6ed4: $c6 $03
	db $fd                                           ; $6ed6: $fd
	ld e, a                                          ; $6ed7: $5f
	ldh a, [hDisp1_OBP0]                                     ; $6ed8: $f0 $93
	push de                                          ; $6eda: $d5
	ld b, d                                          ; $6edb: $42
	db $d3                                           ; $6edc: $d3
	ld h, c                                          ; $6edd: $61
	ld a, [hl]                                       ; $6ede: $7e
	reti                                             ; $6edf: $d9


	rra                                              ; $6ee0: $1f
	rst JumpTable                                          ; $6ee1: $c7
	ld [bc], a                                       ; $6ee2: $02
	db $fd                                           ; $6ee3: $fd
	ld bc, $77fe                                     ; $6ee4: $01 $fe $77
	ldh a, [$8a]                                     ; $6ee7: $f0 $8a
	dec e                                            ; $6ee9: $1d
	jr nc, jr_048_6ec5                               ; $6eea: $30 $d9

	jr c, jr_048_6e81                                ; $6eec: $38 $93

	cp a                                             ; $6eee: $bf
	sub h                                            ; $6eef: $94
	inc sp                                           ; $6ef0: $33
	sub c                                            ; $6ef1: $91
	ld [hl], b                                       ; $6ef2: $70
	cp d                                             ; $6ef3: $ba
	ld [hl], h                                       ; $6ef4: $74
	rra                                              ; $6ef5: $1f
	rst AddAOntoHL                                          ; $6ef6: $ef
	ld bc, $8cff                                     ; $6ef7: $01 $ff $8c
	nop                                              ; $6efa: $00
	db $ec                                           ; $6efb: $ec
	nop                                              ; $6efc: $00
	inc a                                            ; $6efd: $3c
	ld a, d                                          ; $6efe: $7a
	add $9e                                          ; $6eff: $c6 $9e
	call z, $fa7b                                    ; $6f01: $cc $7b $fa
	ld [hl], a                                       ; $6f04: $77
	db $f4                                           ; $6f05: $f4
	ld b, $c0                                        ; $6f06: $06 $c0
	ld a, [hl]                                       ; $6f08: $7e
	call nz, $dc8e                                   ; $6f09: $c4 $8e $dc
	inc hl                                           ; $6f0c: $23
	db $ec                                           ; $6f0d: $ec
	rla                                              ; $6f0e: $17
	rst $38                                          ; $6f0f: $ff
	rra                                              ; $6f10: $1f
	ld a, [$d51f]                                    ; $6f11: $fa $1f $d5
	ccf                                              ; $6f14: $3f
	ld a, [$df1f]                                    ; $6f15: $fa $1f $df
	ccf                                              ; $6f18: $3f
	ld a, b                                          ; $6f19: $78
	ccf                                              ; $6f1a: $3f
	ldh [$75], a                                     ; $6f1b: $e0 $75
	ld [$ff9b], a                                    ; $6f1d: $ea $9b $ff
	xor d                                            ; $6f20: $aa
	rst $38                                          ; $6f21: $ff
	ld d, l                                          ; $6f22: $55
	ld a, e                                          ; $6f23: $7b
	db $fc                                           ; $6f24: $fc
	ld a, c                                          ; $6f25: $79
	pop hl                                           ; $6f26: $e1
	sub e                                            ; $6f27: $93
	rst $38                                          ; $6f28: $ff
	ld sp, $09ff                                     ; $6f29: $31 $ff $09
	rst $38                                          ; $6f2c: $ff
	db $fc                                           ; $6f2d: $fc
	rst $38                                          ; $6f2e: $ff
	cp h                                             ; $6f2f: $bc
	rst $38                                          ; $6f30: $ff
	ld e, [hl]                                       ; $6f31: $5e
	rst $38                                          ; $6f32: $ff
	cp a                                             ; $6f33: $bf
	ld [hl], e                                       ; $6f34: $73
	ldh a, [$97]                                     ; $6f35: $f0 $97
	ld a, b                                          ; $6f37: $78
	add a                                            ; $6f38: $87
	ld [$fcc7], sp                                   ; $6f39: $08 $c7 $fc
	inc bc                                           ; $6f3c: $03
	ld a, b                                          ; $6f3d: $78
	add a                                            ; $6f3e: $87
	ld [hl], a                                       ; $6f3f: $77
	add d                                            ; $6f40: $82
	sbc [hl]                                         ; $6f41: $9e
	add b                                            ; $6f42: $80
	ld a, d                                          ; $6f43: $7a
	db $e4                                           ; $6f44: $e4
	sbc l                                            ; $6f45: $9d
	ld a, [bc]                                       ; $6f46: $0a
	push af                                          ; $6f47: $f5
	ld l, a                                          ; $6f48: $6f
	halt                                             ; $6f49: $76
	ld l, a                                          ; $6f4a: $6f
	cp $93                                           ; $6f4b: $fe $93
	ld d, a                                          ; $6f4d: $57
	xor b                                            ; $6f4e: $a8
	xor e                                            ; $6f4f: $ab
	ld d, h                                          ; $6f50: $54
	ld d, l                                          ; $6f51: $55
	xor d                                            ; $6f52: $aa
	ld a, [hl+]                                      ; $6f53: $2a
	push de                                          ; $6f54: $d5
	dec b                                            ; $6f55: $05
	ld a, [$ff00]                                    ; $6f56: $fa $00 $ff
	ld [hl], a                                       ; $6f59: $77
	add sp, $7f                                      ; $6f5a: $e8 $7f
	db $ed                                           ; $6f5c: $ed
	sub a                                            ; $6f5d: $97
	cp $01                                           ; $6f5e: $fe $01
	db $fd                                           ; $6f60: $fd
	ld [bc], a                                       ; $6f61: $02
	ld a, [$7505]                                    ; $6f62: $fa $05 $75
	adc d                                            ; $6f65: $8a
	ld l, a                                          ; $6f66: $6f
	nop                                              ; $6f67: $00
	sbc l                                            ; $6f68: $9d
	push af                                          ; $6f69: $f5
	ld a, [bc]                                       ; $6f6a: $0a
	ld e, [hl]                                       ; $6f6b: $5e
	db $f4                                           ; $6f6c: $f4
	ld [hl], a                                       ; $6f6d: $77
	db $fc                                           ; $6f6e: $fc
	add b                                            ; $6f6f: $80
	ld a, a                                          ; $6f70: $7f
	add b                                            ; $6f71: $80
	cp a                                             ; $6f72: $bf
	ld b, b                                          ; $6f73: $40
	ld a, l                                          ; $6f74: $7d
	add e                                            ; $6f75: $83
	xor d                                            ; $6f76: $aa
	ld d, h                                          ; $6f77: $54
	ld d, c                                          ; $6f78: $51
	xor b                                            ; $6f79: $a8
	ldh [c], a                                       ; $6f7a: $e2
	db $10                                           ; $6f7b: $10
	ld l, c                                          ; $6f7c: $69
	sub b                                            ; $6f7d: $90
	xor [hl]                                         ; $6f7e: $ae
	ld d, b                                          ; $6f7f: $50
	push af                                          ; $6f80: $f5
	ld a, [bc]                                       ; $6f81: $0a
	adc d                                            ; $6f82: $8a
	ld [hl], l                                       ; $6f83: $75
	ld sp, hl                                        ; $6f84: $f9
	cp $f6                                           ; $6f85: $fe $f6
	rrca                                             ; $6f87: $0f
	ld e, l                                          ; $6f88: $5d
	inc bc                                           ; $6f89: $03
	xor b                                            ; $6f8a: $a8
	ld bc, $0053                                     ; $6f8b: $01 $53 $00
	ld l, [hl]                                       ; $6f8e: $6e
	sbc [hl]                                         ; $6f8f: $9e
	ld bc, $d867                                     ; $6f90: $01 $67 $d8
	sbc c                                            ; $6f93: $99
	sub l                                            ; $6f94: $95
	ld l, d                                          ; $6f95: $6a
	ld h, b                                          ; $6f96: $60
	sbc a                                            ; $6f97: $9f
	dec d                                            ; $6f98: $15
	ld [$c85f], a                                    ; $6f99: $ea $5f $c8
	ld [hl], a                                       ; $6f9c: $77
	adc b                                            ; $6f9d: $88
	ld [hl], a                                       ; $6f9e: $77
	ld hl, sp-$65                                    ; $6f9f: $f8 $9b
	ld d, h                                          ; $6fa1: $54
	xor e                                            ; $6fa2: $ab
	xor b                                            ; $6fa3: $a8
	ld d, a                                          ; $6fa4: $57
	ld [hl], a                                       ; $6fa5: $77
	db $fc                                           ; $6fa6: $fc
	ld a, [hl]                                       ; $6fa7: $7e
	ld a, h                                          ; $6fa8: $7c
	ld a, [hl]                                       ; $6fa9: $7e
	xor h                                            ; $6faa: $ac
	ld [hl], a                                       ; $6fab: $77

Jump_048_6fac:
	db $fc                                           ; $6fac: $fc
	ld c, [hl]                                       ; $6fad: $4e
	jp nz, $fe77                                     ; $6fae: $c2 $77 $fe

	sub a                                            ; $6fb1: $97
	rlca                                             ; $6fb2: $07
	ld hl, sp+$00                                    ; $6fb3: $f8 $00
	db $fc                                           ; $6fb5: $fc
	add hl, de                                       ; $6fb6: $19
	and $0f                                          ; $6fb7: $e6 $0f
	ldh a, [$67]                                     ; $6fb9: $f0 $67
	ldh a, [hDisp1_OBP1]                                     ; $6fbb: $f0 $94
	add b                                            ; $6fbd: $80
	ld a, a                                          ; $6fbe: $7f
	add b                                            ; $6fbf: $80
	ld a, a                                          ; $6fc0: $7f
	ld hl, $c7df                                     ; $6fc1: $21 $df $c7
	ccf                                              ; $6fc4: $3f
	rrca                                             ; $6fc5: $0f
	rst $38                                          ; $6fc6: $ff
	rra                                              ; $6fc7: $1f
	ld a, e                                          ; $6fc8: $7b
	cp $9c                                           ; $6fc9: $fe $9c
	jr @+$01                                         ; $6fcb: $18 $ff

	inc bc                                           ; $6fcd: $03
	ld a, e                                          ; $6fce: $7b
	db $fc                                           ; $6fcf: $fc
	rst SubAFromDE                                          ; $6fd0: $df
	rst $38                                          ; $6fd1: $ff
	sbc [hl]                                         ; $6fd2: $9e
	push de                                          ; $6fd3: $d5
	ld a, e                                          ; $6fd4: $7b
	ld [de], a                                       ; $6fd5: $12
	sbc [hl]                                         ; $6fd6: $9e
	ld e, l                                          ; $6fd7: $5d
	ld a, e                                          ; $6fd8: $7b
	db $fc                                           ; $6fd9: $fc
	adc a                                            ; $6fda: $8f
	sbc h                                            ; $6fdb: $9c
	nop                                              ; $6fdc: $00
	ld l, h                                          ; $6fdd: $6c
	add b                                            ; $6fde: $80
	db $fc                                           ; $6fdf: $fc
	ldh [$fc], a                                     ; $6fe0: $e0 $fc
	ld hl, sp+$5c                                    ; $6fe2: $f8 $5c
	ld hl, sp-$44                                    ; $6fe4: $f8 $bc
	ld hl, sp-$24                                    ; $6fe6: $f8 $dc
	ld hl, sp-$04                                    ; $6fe8: $f8 $fc
	ld hl, sp+$06                                    ; $6fea: $f8 $06
	ret nz                                           ; $6fec: $c0

	ld a, l                                          ; $6fed: $7d
	adc b                                            ; $6fee: $88
	sbc l                                            ; $6fef: $9d
	push bc                                          ; $6ff0: $c5
	ld a, [hl-]                                      ; $6ff1: $3a
	ld l, a                                          ; $6ff2: $6f
	db $fc                                           ; $6ff3: $fc
	adc a                                            ; $6ff4: $8f
	pop bc                                           ; $6ff5: $c1
	ld a, $e8                                        ; $6ff6: $3e $e8
	rla                                              ; $6ff8: $17
	pop bc                                           ; $6ff9: $c1
	ld a, $5f                                        ; $6ffa: $3e $5f
	and b                                            ; $6ffc: $a0
	rst $38                                          ; $6ffd: $ff
	nop                                              ; $6ffe: $00
	cp e                                             ; $6fff: $bb
	ld b, h                                          ; $7000: $44
	ld d, l                                          ; $7001: $55
	xor d                                            ; $7002: $aa
	xor [hl]                                         ; $7003: $ae
	ld d, c                                          ; $7004: $51
	ld [hl], l                                       ; $7005: $75
	jp nz, $f27e                                     ; $7006: $c2 $7e $f2

	ld a, [hl]                                       ; $7009: $7e
	xor [hl]                                         ; $700a: $ae
	ld a, a                                          ; $700b: $7f
	sub [hl]                                         ; $700c: $96
	sub e                                            ; $700d: $93
	ret                                              ; $700e: $c9


	scf                                              ; $700f: $37
	jp nz, $813d                                     ; $7010: $c2 $3d $81

	ld a, [hl]                                       ; $7013: $7e
	add b                                            ; $7014: $80
	ld a, a                                          ; $7015: $7f
	ret nz                                           ; $7016: $c0

	ccf                                              ; $7017: $3f
	jp nz, Jump_048_7b3d                             ; $7018: $c2 $3d $7b

	sub a                                            ; $701b: $97
	sbc [hl]                                         ; $701c: $9e
	ld a, [$ffdc]                                    ; $701d: $fa $dc $ff
	sbc b                                            ; $7020: $98
	ccf                                              ; $7021: $3f
	rst $38                                          ; $7022: $ff
	sub b                                            ; $7023: $90
	cp $0b                                           ; $7024: $fe $0b
	cp $13                                           ; $7026: $fe $13
	ld l, d                                          ; $7028: $6a
	sbc c                                            ; $7029: $99

jr_048_702a:
	db $dd                                           ; $702a: $dd
	rst $38                                          ; $702b: $ff
	ld l, h                                          ; $702c: $6c
	ld [hl], b                                       ; $702d: $70
	sbc [hl]                                         ; $702e: $9e
	ld d, h                                          ; $702f: $54
	ld c, e                                          ; $7030: $4b
	ldh a, [$9c]                                     ; $7031: $f0 $9c
	ld [bc], a                                       ; $7033: $02
	rst $38                                          ; $7034: $ff
	dec b                                            ; $7035: $05
	ld h, a                                          ; $7036: $67
	ldh a, [$7c]                                     ; $7037: $f0 $7c
	ld e, d                                          ; $7039: $5a
	sbc l                                            ; $703a: $9d
	ld [hl], b                                       ; $703b: $70
	rst GetHLinHL                                          ; $703c: $cf
	ld [hl], d                                       ; $703d: $72
	ld h, a                                          ; $703e: $67
	call c, Call_048_7fff                            ; $703f: $dc $ff $7f
	and d                                            ; $7042: $a2
	ld [hl], a                                       ; $7043: $77
	sbc $7a                                          ; $7044: $de $7a
	ld a, l                                          ; $7046: $7d
	ld a, l                                          ; $7047: $7d
	adc b                                            ; $7048: $88
	call c, $9dff                                    ; $7049: $dc $ff $9d
	rst AddAOntoHL                                          ; $704c: $ef
	db $10                                           ; $704d: $10
	ld [hl], e                                       ; $704e: $73
	ldh a, [$73]                                     ; $704f: $f0 $73
	set 3, l                                         ; $7051: $cb $dd
	rst $38                                          ; $7053: $ff
	ld a, l                                          ; $7054: $7d
	ld c, [hl]                                       ; $7055: $4e
	ld a, a                                          ; $7056: $7f
	or $9d                                           ; $7057: $f6 $9d
	jr nc, jr_048_702a                               ; $7059: $30 $cf

	ld e, a                                          ; $705b: $5f
	ldh a, [$9d]                                     ; $705c: $f0 $9d
	halt                                             ; $705e: $76
	adc c                                            ; $705f: $89
	ld [hl], e                                       ; $7060: $73
	ldh [$7f], a                                     ; $7061: $e0 $7f
	jp nc, $a06b                                     ; $7063: $d2 $6b $a0

	ld [hl], l                                       ; $7066: $75
	ld d, b                                          ; $7067: $50
	ld a, e                                          ; $7068: $7b
	ldh a, [$9e]                                     ; $7069: $f0 $9e
	dec d                                            ; $706b: $15
	ld h, e                                          ; $706c: $63
	ldh a, [$9c]                                     ; $706d: $f0 $9c
	ld d, b                                          ; $706f: $50
	ldh a, [rIF]                                     ; $7070: $f0 $0f
	ld a, e                                          ; $7072: $7b
	ret nc                                           ; $7073: $d0

	ld b, a                                          ; $7074: $47
	ld [hl], b                                       ; $7075: $70
	ld e, e                                          ; $7076: $5b
	ldh a, [$7e]                                     ; $7077: $f0 $7e
	jr nc, jr_048_70fa                               ; $7079: $30 $7f

	cp $7f                                           ; $707b: $fe $7f
	ld c, c                                          ; $707d: $49
	ld a, h                                          ; $707e: $7c
	sbc $8d                                          ; $707f: $de $8d
	call z, $f8ff                                    ; $7081: $cc $ff $f8
	rst $38                                          ; $7084: $ff
	add sp, -$09                                     ; $7085: $e8 $f7
	ld de, $a1ef                                     ; $7087: $11 $ef $a1
	ld e, a                                          ; $708a: $5f
	sub c                                            ; $708b: $91
	ld l, a                                          ; $708c: $6f
	add b                                            ; $708d: $80
	rst $38                                          ; $708e: $ff
	dec hl                                           ; $708f: $2b
	call nc, $ea15                                   ; $7090: $d4 $15 $ea
	ld [hl], a                                       ; $7093: $77
	db $fc                                           ; $7094: $fc
	sbc h                                            ; $7095: $9c
	xor e                                            ; $7096: $ab
	call nc, Call_048_7b95                           ; $7097: $d4 $95 $7b
	db $fc                                           ; $709a: $fc
	sub a                                            ; $709b: $97
	inc b                                            ; $709c: $04

Call_048_709d:
	ld hl, sp-$0c                                    ; $709d: $f8 $f4
	ld [$50ac], sp                                   ; $709f: $08 $ac $50
	call nc, Call_048_6728                           ; $70a2: $d4 $28 $67
	db $fc                                           ; $70a5: $fc
	ld bc, $9c80                                     ; $70a6: $01 $80 $9c
	rra                                              ; $70a9: $1f
	pop bc                                           ; $70aa: $c1
	ld a, $67                                        ; $70ab: $3e $67
	db $fc                                           ; $70ad: $fc
	halt                                             ; $70ae: $76
	cp b                                             ; $70af: $b8
	sbc c                                            ; $70b0: $99
	xor a                                            ; $70b1: $af
	ld d, b                                          ; $70b2: $50
	ld e, a                                          ; $70b3: $5f
	and b                                            ; $70b4: $a0
	cp a                                             ; $70b5: $bf
	ld b, b                                          ; $70b6: $40
	ld h, a                                          ; $70b7: $67
	db $fc                                           ; $70b8: $fc
	ld a, [hl]                                       ; $70b9: $7e
	ld d, l                                          ; $70ba: $55
	adc a                                            ; $70bb: $8f
	call nz, $c23b                                   ; $70bc: $c4 $3b $c2
	dec a                                            ; $70bf: $3d
	call nz, $c03b                                   ; $70c0: $c4 $3b $c0
	ccf                                              ; $70c3: $3f
	ret z                                            ; $70c4: $c8

	scf                                              ; $70c5: $37
	push bc                                          ; $70c6: $c5
	ld a, [hl-]                                      ; $70c7: $3a
	ret nz                                           ; $70c8: $c0

	ccf                                              ; $70c9: $3f
	ret nz                                           ; $70ca: $c0

	ccf                                              ; $70cb: $3f
	halt                                             ; $70cc: $76
	call z, $fc7b                                    ; $70cd: $cc $7b $fc
	sub a                                            ; $70d0: $97

jr_048_70d1:
	inc bc                                           ; $70d1: $03
	cp $09                                           ; $70d2: $fe $09
	rst $38                                          ; $70d4: $ff
	inc de                                           ; $70d5: $13
	rst $38                                          ; $70d6: $ff
	rrca                                             ; $70d7: $0f
	db $fd                                           ; $70d8: $fd
	ld e, b                                          ; $70d9: $58
	ld [hl], $df                                     ; $70da: $36 $df

Call_048_70dc:
	rst $38                                          ; $70dc: $ff
	ld a, l                                          ; $70dd: $7d
	ld e, d                                          ; $70de: $5a
	sbc [hl]                                         ; $70df: $9e
	ld l, l                                          ; $70e0: $6d
	ld e, c                                          ; $70e1: $59
	halt                                             ; $70e2: $76
	halt                                             ; $70e3: $76
	push af                                          ; $70e4: $f5
	ld a, a                                          ; $70e5: $7f
	db $fd                                           ; $70e6: $fd
	sbc e                                            ; $70e7: $9b
	cp c                                             ; $70e8: $b9
	rst AddAOntoHL                                          ; $70e9: $ef
	ld [hl], d                                       ; $70ea: $72
	rst AddAOntoHL                                          ; $70eb: $ef
	ld l, a                                          ; $70ec: $6f
	db $fc                                           ; $70ed: $fc
	sbc c                                            ; $70ee: $99
	ldh a, [c]                                       ; $70ef: $f2
	rst AddAOntoHL                                          ; $70f0: $ef
	ld sp, hl                                        ; $70f1: $f9
	rst AddAOntoHL                                          ; $70f2: $ef
	or b                                             ; $70f3: $b0
	rst AddAOntoHL                                          ; $70f4: $ef
	ld [hl], a                                       ; $70f5: $77
	ld sp, $fc57                                     ; $70f6: $31 $57 $fc
	halt                                             ; $70f9: $76

jr_048_70fa:
	sub c                                            ; $70fa: $91
	ld d, a                                          ; $70fb: $57
	db $fc                                           ; $70fc: $fc
	sub h                                            ; $70fd: $94
	jr c, @-$2f                                      ; $70fe: $38 $cf

	jr nc, jr_048_70d1                               ; $7100: $30 $cf

	add hl, sp                                       ; $7102: $39
	rst AddAOntoHL                                          ; $7103: $ef
	ld [hl-], a                                      ; $7104: $32
	rst $38                                          ; $7105: $ff
	add hl, sp                                       ; $7106: $39
	rst $38                                          ; $7107: $ff
	jr nc, @+$7d                                     ; $7108: $30 $7b

	db $fc                                           ; $710a: $fc
	ld a, a                                          ; $710b: $7f
	ld hl, sp+$76                                    ; $710c: $f8 $76
	pop hl                                           ; $710e: $e1
	ld l, a                                          ; $710f: $6f
	call nc, $ab9e                                   ; $7110: $d4 $9e $ab
	ld [hl], e                                       ; $7113: $73
	db $fc                                           ; $7114: $fc
	ld [hl], a                                       ; $7115: $77
	call c, $f06f                                    ; $7116: $dc $6f $f0
	ld l, l                                          ; $7119: $6d
	call z, $129a                                    ; $711a: $cc $9a $12
	rst AddAOntoHL                                          ; $711d: $ef
	dec d                                            ; $711e: $15
	rst AddAOntoHL                                          ; $711f: $ef
	ld a, [de]                                       ; $7120: $1a
	ld a, e                                          ; $7121: $7b
	db $fc                                           ; $7122: $fc
	sub a                                            ; $7123: $97
	inc de                                           ; $7124: $13
	rst AddAOntoHL                                          ; $7125: $ef
	cp [hl]                                          ; $7126: $be
	rst AddAOntoHL                                          ; $7127: $ef
	ld d, $ef                                        ; $7128: $16 $ef
	ld e, $ef                                        ; $712a: $1e $ef
	ld h, a                                          ; $712c: $67
	add h                                            ; $712d: $84
	sbc b                                            ; $712e: $98
	ld [hl], c                                       ; $712f: $71
	rst $38                                          ; $7130: $ff
	and l                                            ; $7131: $a5
	ld [hl], e                                       ; $7132: $73
	inc de                                           ; $7133: $13
	rrca                                             ; $7134: $0f
	ld e, [hl]                                       ; $7135: $5e
	ld a, e                                          ; $7136: $7b
	adc $9e                                          ; $7137: $ce $9e
	ld d, c                                          ; $7139: $51
	ld [hl], e                                       ; $713a: $73
	db $fc                                           ; $713b: $fc
	ld a, [hl]                                       ; $713c: $7e
	ret c                                            ; $713d: $d8

	rst SubAFromDE                                          ; $713e: $df
	rst $38                                          ; $713f: $ff
	add b                                            ; $7140: $80
	db $eb                                           ; $7141: $eb
	rst $38                                          ; $7142: $ff
	pop de                                           ; $7143: $d1
	rst $38                                          ; $7144: $ff
	and b                                            ; $7145: $a0
	ld e, a                                          ; $7146: $5f
	sub b                                            ; $7147: $90
	ld l, a                                          ; $7148: $6f
	and b                                            ; $7149: $a0
	ld e, a                                          ; $714a: $5f
	add b                                            ; $714b: $80
	ld a, a                                          ; $714c: $7f
	and b                                            ; $714d: $a0
	ld e, a                                          ; $714e: $5f
	add h                                            ; $714f: $84
	ld a, e                                          ; $7150: $7b
	cp h                                             ; $7151: $bc
	ld b, e                                          ; $7152: $43
	sbc b                                            ; $7153: $98
	ld h, a                                          ; $7154: $67
	rla                                              ; $7155: $17
	add sp, $2b                                      ; $7156: $e8 $2b
	call nc, $a857                                   ; $7158: $d4 $57 $a8
	cpl                                              ; $715b: $2f
	ret nc                                           ; $715c: $d0

	rra                                              ; $715d: $1f
	ldh [$2e], a                                     ; $715e: $e0 $2e
	sbc b                                            ; $7160: $98
	pop de                                           ; $7161: $d1
	dec a                                            ; $7162: $3d
	jp nz, $c03f                                     ; $7163: $c2 $3f $c0

	db $fc                                           ; $7166: $fc
	nop                                              ; $7167: $00
	ld h, a                                          ; $7168: $67
	cp $99                                           ; $7169: $fe $99
	ld a, b                                          ; $716b: $78
	db $fc                                           ; $716c: $fc
	ld [bc], a                                       ; $716d: $02
	rst $38                                          ; $716e: $ff
	ld bc, $4eff                                     ; $716f: $01 $ff $4e
	ret nz                                           ; $7172: $c0

	sbc [hl]                                         ; $7173: $9e
	add d                                            ; $7174: $82
	ld de, $9680                                     ; $7175: $11 $80 $96
	ldh [c], a                                       ; $7178: $e2
	dec e                                            ; $7179: $1d
	pop bc                                           ; $717a: $c1
	ld a, $bf                                        ; $717b: $3e $bf
	ld b, b                                          ; $717d: $40
	ld a, h                                          ; $717e: $7c
	add b                                            ; $717f: $80
	cp h                                             ; $7180: $bc
	ld e, e                                          ; $7181: $5b
	db $fc                                           ; $7182: $fc
	ld a, [hl]                                       ; $7183: $7e
	adc $80                                          ; $7184: $ce $80
	nop                                              ; $7186: $00
	ccf                                              ; $7187: $3f
	rlca                                             ; $7188: $07
	jr c, jr_048_718e                                ; $7189: $38 $03

	inc a                                            ; $718b: $3c
	dec h                                            ; $718c: $25
	ld a, [hl-]                                      ; $718d: $3a

jr_048_718e:
	nop                                              ; $718e: $00
	ccf                                              ; $718f: $3f
	dec h                                            ; $7190: $25
	ld a, [hl-]                                      ; $7191: $3a
	ld h, $39                                        ; $7192: $26 $39
	pop hl                                           ; $7194: $e1
	ccf                                              ; $7195: $3f
	jp hl                                            ; $7196: $e9


	rst $38                                          ; $7197: $ff
	cp $3f                                           ; $7198: $fe $3f
	ld hl, sp+$1c                                    ; $719a: $f8 $1c
	ld hl, sp+$0e                                    ; $719c: $f8 $0e
	ld hl, sp+$0c                                    ; $719e: $f8 $0c
	db $fc                                           ; $71a0: $fc
	inc c                                            ; $71a1: $0c
	cp $1e                                           ; $71a2: $fe $1e
	daa                                              ; $71a4: $27
	sbc l                                            ; $71a5: $9d
	rst $38                                          ; $71a6: $ff
	ld h, [hl]                                       ; $71a7: $66
	ld [hl], l                                       ; $71a8: $75
	call nz, $1f85                                   ; $71a9: $c4 $85 $1f
	ld c, e                                          ; $71ac: $4b
	ccf                                              ; $71ad: $3f
	db $db                                           ; $71ae: $db
	daa                                              ; $71af: $27
	rst SubAFromHL                                          ; $71b0: $d7
	rrca                                             ; $71b1: $0f
	rst AddAOntoHL                                          ; $71b2: $ef
	rra                                              ; $71b3: $1f
	ld [hl], $c9                                     ; $71b4: $36 $c9
	db $fc                                           ; $71b6: $fc
	inc bc                                           ; $71b7: $03
	ldh a, [c]                                       ; $71b8: $f2
	dec c                                            ; $71b9: $0d
	cp $01                                           ; $71ba: $fe $01
	ld e, $e1                                        ; $71bc: $1e $e1
	ld e, $e1                                        ; $71be: $1e $e1
	sbc [hl]                                         ; $71c0: $9e
	ld h, c                                          ; $71c1: $61
	adc [hl]                                         ; $71c2: $8e
	ld [hl], c                                       ; $71c3: $71
	ret c                                            ; $71c4: $d8

	ld a, d                                          ; $71c5: $7a
	call z, $fc57                                    ; $71c6: $cc $57 $fc
	ld a, a                                          ; $71c9: $7f
	ld [$0a9e], sp                                   ; $71ca: $08 $9e $0a
	ld a, c                                          ; $71cd: $79
	ld l, a                                          ; $71ce: $6f
	ld [hl], a                                       ; $71cf: $77
	ld h, [hl]                                       ; $71d0: $66
	ld a, a                                          ; $71d1: $7f
	db $fc                                           ; $71d2: $fc
	ld [hl], a                                       ; $71d3: $77
	ld d, $7e                                        ; $71d4: $16 $7e
	ldh a, [$9e]                                     ; $71d6: $f0 $9e
	xor b                                            ; $71d8: $a8
	ld [hl], e                                       ; $71d9: $73
	db $fc                                           ; $71da: $fc
	ld a, l                                          ; $71db: $7d
	or e                                             ; $71dc: $b3
	ld a, a                                          ; $71dd: $7f
	db $fc                                           ; $71de: $fc
	sbc h                                            ; $71df: $9c
	ld [hl], b                                       ; $71e0: $70
	rst $38                                          ; $71e1: $ff
	cp b                                             ; $71e2: $b8
	ld [hl], d                                       ; $71e3: $72
	call z, $c466                                    ; $71e4: $cc $66 $c4
	sbc b                                            ; $71e7: $98
	ld sp, $1aff                                     ; $71e8: $31 $ff $1a
	rst $38                                          ; $71eb: $ff
	ld b, l                                          ; $71ec: $45
	rst $38                                          ; $71ed: $ff
	adc e                                            ; $71ee: $8b
	ld a, e                                          ; $71ef: $7b
	db $fc                                           ; $71f0: $fc
	sbc h                                            ; $71f1: $9c
	add e                                            ; $71f2: $83
	rst $38                                          ; $71f3: $ff
	ld b, c                                          ; $71f4: $41
	ld l, e                                          ; $71f5: $6b
	db $fc                                           ; $71f6: $fc
	ld a, a                                          ; $71f7: $7f
	ret nz                                           ; $71f8: $c0

	sbc [hl]                                         ; $71f9: $9e
	ld [$8462], a                                    ; $71fa: $ea $62 $84
	sbc [hl]                                         ; $71fd: $9e
	ld [hl], l                                       ; $71fe: $75
	ld a, e                                          ; $71ff: $7b
	db $fc                                           ; $7200: $fc
	ld a, [hl]                                       ; $7201: $7e
	call z, $179e                                    ; $7202: $cc $9e $17
	ld a, d                                          ; $7205: $7a
	call nz, $fe7f                                   ; $7206: $c4 $7f $fe
	halt                                             ; $7209: $76
	cp d                                             ; $720a: $ba
	ld a, a                                          ; $720b: $7f
	db $f4                                           ; $720c: $f4
	sbc d                                            ; $720d: $9a
	dec de                                           ; $720e: $1b
	rst AddAOntoHL                                          ; $720f: $ef
	ld a, a                                          ; $7210: $7f
	rst $38                                          ; $7211: $ff
	cp $79                                           ; $7212: $fe $79
	and d                                            ; $7214: $a2
	sub h                                            ; $7215: $94
	rst $38                                          ; $7216: $ff
	ld sp, hl                                        ; $7217: $f9
	db $ed                                           ; $7218: $ed
	di                                               ; $7219: $f3
	ld de, $96ef                                     ; $721a: $11 $ef $96
	rrca                                             ; $721d: $0f
	and l                                            ; $721e: $a5
	ld c, a                                          ; $721f: $4f
	xor e                                            ; $7220: $ab
	ld a, d                                          ; $7221: $7a
	sbc d                                            ; $7222: $9a
	ld h, [hl]                                       ; $7223: $66
	cp h                                             ; $7224: $bc
	sbc [hl]                                         ; $7225: $9e
	xor c                                            ; $7226: $a9
	ld a, e                                          ; $7227: $7b
	db $fc                                           ; $7228: $fc
	add a                                            ; $7229: $87
	ld a, a                                          ; $722a: $7f
	pop bc                                           ; $722b: $c1
	rst $38                                          ; $722c: $ff
	ld c, c                                          ; $722d: $49
	ld a, a                                          ; $722e: $7f
	jp z, Jump_048_42ff                              ; $722f: $ca $ff $42

	ld a, [hl]                                       ; $7232: $7e
	push bc                                          ; $7233: $c5
	db $fc                                           ; $7234: $fc
	ld c, [hl]                                       ; $7235: $4e
	ld a, h                                          ; $7236: $7c
	ret                                              ; $7237: $c9


	db $fc                                           ; $7238: $fc
	ld c, d                                          ; $7239: $4a
	rst AddAOntoHL                                          ; $723a: $ef
	rst $38                                          ; $723b: $ff
	add d                                            ; $723c: $82
	add a                                            ; $723d: $87
	ld b, c                                          ; $723e: $41

Jump_048_723f:
	add e                                            ; $723f: $83
	ld b, b                                          ; $7240: $40
	add d                                            ; $7241: $82
	ld a, e                                          ; $7242: $7b
	cp $92                                           ; $7243: $fe $92
	add c                                            ; $7245: $81
	ret nz                                           ; $7246: $c0

	nop                                              ; $7247: $00
	ld b, [hl]                                       ; $7248: $46
	add c                                            ; $7249: $81
	pop bc                                           ; $724a: $c1
	rst $38                                          ; $724b: $ff
	ldh [rIE], a                                     ; $724c: $e0 $ff
	db $eb                                           ; $724e: $eb
	ld a, a                                          ; $724f: $7f
	sbc a                                            ; $7250: $9f
	ld a, a                                          ; $7251: $7f
	ld a, c                                          ; $7252: $79
	ld e, c                                          ; $7253: $59
	rst SubAFromDE                                          ; $7254: $df
	rst SubAFromDE                                          ; $7255: $df
	rst SubAFromDE                                          ; $7256: $df
	rst $38                                          ; $7257: $ff
	sbc d                                            ; $7258: $9a
	rst SubAFromDE                                          ; $7259: $df
	pop bc                                           ; $725a: $c1
	add b                                            ; $725b: $80
	jp nz, Jump_048_6780                             ; $725c: $c2 $80 $67

	db $fc                                           ; $725f: $fc
	sbc e                                            ; $7260: $9b
	add c                                            ; $7261: $81
	add b                                            ; $7262: $80
	and d                                            ; $7263: $a2
	ret nz                                           ; $7264: $c0

	ld a, $c0                                        ; $7265: $3e $c0
	ld l, l                                          ; $7267: $6d
	adc b                                            ; $7268: $88
	ld h, a                                          ; $7269: $67
	db $fc                                           ; $726a: $fc
	ld a, [hl]                                       ; $726b: $7e
	adc b                                            ; $726c: $88
	ld c, [hl]                                       ; $726d: $4e
	ret nz                                           ; $726e: $c0

	ld a, [hl]                                       ; $726f: $7e
	call z, $209a                                    ; $7270: $cc $9a $20
	ccf                                              ; $7273: $3f
	inc h                                            ; $7274: $24
	dec sp                                           ; $7275: $3b
	jr nz, jr_048_72f2                               ; $7276: $20 $7a

	call nz, $228d                                   ; $7278: $c4 $8d $22
	dec a                                            ; $727b: $3d
	jr nz, jr_048_72bd                               ; $727c: $20 $3f

	jr nz, jr_048_72bf                               ; $727e: $20 $3f

	db $fd                                           ; $7280: $fd
	ccf                                              ; $7281: $3f
	ldh a, [$33]                                     ; $7282: $f0 $33
	ldh [$63], a                                     ; $7284: $e0 $63
	ret nz                                           ; $7286: $c0

	ld h, c                                          ; $7287: $61
	ret nz                                           ; $7288: $c0

	ld h, b                                          ; $7289: $60
	ret nz                                           ; $728a: $c0

	ld b, c                                          ; $728b: $41
	ld a, e                                          ; $728c: $7b
	xor e                                            ; $728d: $ab
	sub h                                            ; $728e: $94

jr_048_728f:
	jp $9e2f                                         ; $728f: $c3 $2f $9e


	dec b                                            ; $7292: $05
	sbc [hl]                                         ; $7293: $9e
	inc a                                            ; $7294: $3c
	rst $38                                          ; $7295: $ff
	ld [$09ff], sp                                   ; $7296: $08 $ff $09
	add hl, de                                       ; $7299: $19
	ld a, d                                          ; $729a: $7a
	ld h, c                                          ; $729b: $61
	cp $99                                           ; $729c: $fe $99
	ld c, $f1                                        ; $729e: $0e $f1
	adc [hl]                                         ; $72a0: $8e
	ld [hl], c                                       ; $72a1: $71
	ld c, $f1                                        ; $72a2: $0e $f1
	ld [hl], a                                       ; $72a4: $77
	ld a, [$c07e]                                    ; $72a5: $fa $7e $c0
	ld [hl], a                                       ; $72a8: $77
	ld hl, sp-$65                                    ; $72a9: $f8 $9b
	ret c                                            ; $72ab: $d8

	rst $38                                          ; $72ac: $ff
	or b                                             ; $72ad: $b0
	rst $38                                          ; $72ae: $ff
	ld h, a                                          ; $72af: $67
	db $fc                                           ; $72b0: $fc
	sbc e                                            ; $72b1: $9b
	sbc b                                            ; $72b2: $98
	rst $38                                          ; $72b3: $ff
	or e                                             ; $72b4: $b3
	db $fc                                           ; $72b5: $fc
	ld e, l                                          ; $72b6: $5d
	ld h, b                                          ; $72b7: $60
	sbc b                                            ; $72b8: $98
	jr z, @+$01                                      ; $72b9: $28 $ff

	ld c, $f0                                        ; $72bb: $0e $f0

jr_048_72bd:
	ld e, a                                          ; $72bd: $5f
	nop                                              ; $72be: $00

jr_048_72bf:
	ld a, h                                          ; $72bf: $7c
	ld a, d                                          ; $72c0: $7a
	ret z                                            ; $72c1: $c8

	ld a, a                                          ; $72c2: $7f
	ret nz                                           ; $72c3: $c0

	sbc [hl]                                         ; $72c4: $9e
	jr c, jr_048_7341                                ; $72c5: $38 $7a

	call nz, Call_048_5d98                           ; $72c7: $c4 $98 $5d
	and b                                            ; $72ca: $a0
	rst $38                                          ; $72cb: $ff
	nop                                              ; $72cc: $00

Call_048_72cd:
	di                                               ; $72cd: $f3
	inc c                                            ; $72ce: $0c

jr_048_72cf:
	dec [hl]                                         ; $72cf: $35
	ld a, d                                          ; $72d0: $7a
	call z, $c876                                    ; $72d1: $cc $76 $c8
	sub h                                            ; $72d4: $94
	ld hl, $27ff                                     ; $72d5: $21 $ff $27
	sbc b                                            ; $72d8: $98
	rst JumpTable                                          ; $72d9: $c7
	jr jr_048_7303                                   ; $72da: $18 $27

	adc b                                            ; $72dc: $88
	ld b, c                                          ; $72dd: $41

jr_048_72de:
	rst $38                                          ; $72de: $ff
	add d                                            ; $72df: $82
	ld a, d                                          ; $72e0: $7a
	ret z                                            ; $72e1: $c8

	ld a, a                                          ; $72e2: $7f
	db $fc                                           ; $72e3: $fc
	ld a, [hl]                                       ; $72e4: $7e
	and b                                            ; $72e5: $a0
	ld a, l                                          ; $72e6: $7d
	sbc $7e                                          ; $72e7: $de $7e
	inc h                                            ; $72e9: $24
	sbc l                                            ; $72ea: $9d
	ld a, $c1                                        ; $72eb: $3e $c1
	ld h, [hl]                                       ; $72ed: $66
	call nz, $049e                                   ; $72ee: $c4 $9e $04
	ld a, c                                          ; $72f1: $79

jr_048_72f2:
	inc h                                            ; $72f2: $24
	ld a, l                                          ; $72f3: $7d
	inc de                                           ; $72f4: $13
	ld a, a                                          ; $72f5: $7f
	xor $80                                          ; $72f6: $ee $80
	ldh a, [$1f]                                     ; $72f8: $f0 $1f
	xor $11                                          ; $72fa: $ee $11
	rst SubAFromDE                                          ; $72fc: $df
	jr nz, jr_048_72de                               ; $72fd: $20 $df

	jr nz, jr_048_728f                               ; $72ff: $20 $8e

	ld [hl], c                                       ; $7301: $71
	sbc [hl]                                         ; $7302: $9e

jr_048_7303:
	ld h, c                                          ; $7303: $61
	inc e                                            ; $7304: $1c
	db $e3                                           ; $7305: $e3
	jr c, jr_048_72cf                                ; $7306: $38 $c7

	rra                                              ; $7308: $1f
	db $e4                                           ; $7309: $e4
	ld l, a                                          ; $730a: $6f
	sub [hl]                                         ; $730b: $96
	sub a                                            ; $730c: $97
	ld l, d                                          ; $730d: $6a
	adc e                                            ; $730e: $8b
	ld [hl], a                                       ; $730f: $77
	rla                                              ; $7310: $17
	db $eb                                           ; $7311: $eb
	add hl, bc                                       ; $7312: $09
	rst FarCall                                          ; $7313: $f7
	ld bc, $29ff                                     ; $7314: $01 $ff $29
	sbc [hl]                                         ; $7317: $9e
	rst SubAFromHL                                          ; $7318: $d7
	halt                                             ; $7319: $76
	call z, $fc6f                                    ; $731a: $cc $6f $fc
	ld a, l                                          ; $731d: $7d
	add h                                            ; $731e: $84
	add b                                            ; $731f: $80
	and c                                            ; $7320: $a1
	rst $38                                          ; $7321: $ff
	add c                                            ; $7322: $81
	rst $38                                          ; $7323: $ff
	ld hl, sp+$4d                                    ; $7324: $f8 $4d
	db $fc                                           ; $7326: $fc
	ld c, d                                          ; $7327: $4a
	ldh [rHDMA5], a                                  ; $7328: $e0 $55
	ldh [rWY], a                                     ; $732a: $e0 $4a
	ret nz                                           ; $732c: $c0

	push de                                          ; $732d: $d5
	ret nz                                           ; $732e: $c0

	ld a, [hl+]                                      ; $732f: $2a
	ret nz                                           ; $7330: $c0

	sub l                                            ; $7331: $95
	ret nz                                           ; $7332: $c0

	xor d                                            ; $7333: $aa
	db $d3                                           ; $7334: $d3
	inc c                                            ; $7335: $0c
	ld c, a                                          ; $7336: $4f
	sub b                                            ; $7337: $90
	rst AddAOntoHL                                          ; $7338: $ef

jr_048_7339:
	db $10                                           ; $7339: $10

jr_048_733a:
	ld [hl], e                                       ; $733a: $73
	sbc h                                            ; $733b: $9c
	db $dd                                           ; $733c: $dd
	ld [hl-], a                                      ; $733d: $32
	ld c, h                                          ; $733e: $4c
	sbc b                                            ; $733f: $98
	or e                                             ; $7340: $b3

jr_048_7341:
	push bc                                          ; $7341: $c5
	dec sp                                           ; $7342: $3b
	dec e                                            ; $7343: $1d
	and e                                            ; $7344: $a3
	rst $38                                          ; $7345: $ff
	rrca                                             ; $7346: $0f
	ld a, b                                          ; $7347: $78
	xor d                                            ; $7348: $aa
	sbc h                                            ; $7349: $9c
	rlca                                             ; $734a: $07
	ei                                               ; $734b: $fb
	inc b                                            ; $734c: $04
	ld [hl], a                                       ; $734d: $77
	ld e, l                                          ; $734e: $5d
	ld a, a                                          ; $734f: $7f
	ld a, [$fe7f]                                    ; $7350: $fa $7f $fe
	adc a                                            ; $7353: $8f
	pop de                                           ; $7354: $d1
	jr nz, jr_048_7339                               ; $7355: $20 $e2

	jr jr_048_733a                                   ; $7357: $18 $e1

	inc e                                            ; $7359: $1c
	ld [$e914], a                                    ; $735a: $ea $14 $e9
	ld d, $c8                                        ; $735d: $16 $c8
	ld [hl], $c9                                     ; $735f: $36 $c9
	ld [hl], $c8                                     ; $7361: $36 $c8
	ld [hl], $46                                     ; $7363: $36 $46
	ret nz                                           ; $7365: $c0

	sbc [hl]                                         ; $7366: $9e
	db $eb                                           ; $7367: $eb
	ld a, d                                          ; $7368: $7a
	call z, $887d                                    ; $7369: $cc $7d $88
	ld l, [hl]                                       ; $736c: $6e
	call nz, $f877                                   ; $736d: $c4 $77 $f8

jr_048_7370:
	ld a, [hl]                                       ; $7370: $7e
	call z, $fc9d                                    ; $7371: $cc $9d $fc
	ret nz                                           ; $7374: $c0

	ld d, [hl]                                       ; $7375: $56
	ret nz                                           ; $7376: $c0

	add b                                            ; $7377: $80
	dec sp                                           ; $7378: $3b
	inc h                                            ; $7379: $24
	ccf                                              ; $737a: $3f
	inc a                                            ; $737b: $3c
	dec sp                                           ; $737c: $3b
	dec b                                            ; $737d: $05
	scf                                              ; $737e: $37
	add hl, bc                                       ; $737f: $09
	ld a, [hl-]                                      ; $7380: $3a
	dec b                                            ; $7381: $05
	ld [hl], $09                                     ; $7382: $36 $09
	ld a, $03                                        ; $7384: $3e $03
	ld [hl], $0b                                     ; $7386: $36 $0b
	add b                                            ; $7388: $80
	add a                                            ; $7389: $87
	nop                                              ; $738a: $00
	add [hl]                                         ; $738b: $86
	nop                                              ; $738c: $00

jr_048_738d:
	ld b, $00                                        ; $738d: $06 $00
	inc e                                            ; $738f: $1c
	nop                                              ; $7390: $00

jr_048_7391:
	ld [$0b00], sp                                   ; $7391: $08 $00 $0b
	nop                                              ; $7394: $00
	db $10                                           ; $7395: $10
	dec de                                           ; $7396: $1b
	ld a, h                                          ; $7397: $7c
	ld b, b                                          ; $7398: $40
	rst $38                                          ; $7399: $ff
	rst SubAFromDE                                          ; $739a: $df
	ld bc, $f67f                                     ; $739b: $01 $7f $f6
	add b                                            ; $739e: $80
	inc sp                                           ; $739f: $33
	nop                                              ; $73a0: $00
	rst JumpTable                                          ; $73a1: $c7
	nop                                              ; $73a2: $00
	rlca                                             ; $73a3: $07
	nop                                              ; $73a4: $00
	rlca                                             ; $73a5: $07
	inc e                                            ; $73a6: $1c
	db $fd                                           ; $73a7: $fd
	adc [hl]                                         ; $73a8: $8e
	ld [hl], c                                       ; $73a9: $71
	cp $00                                           ; $73aa: $fe $00
	ld hl, sp+$00                                    ; $73ac: $f8 $00
	jr c, jr_048_7370                                ; $73ae: $38 $c0

	add sp, $10                                      ; $73b0: $e8 $10
	rla                                              ; $73b2: $17
	ld hl, sp-$08                                    ; $73b3: $f8 $f8
	nop                                              ; $73b5: $00
	ld e, b                                          ; $73b6: $58
	add b                                            ; $73b7: $80
	adc e                                            ; $73b8: $8b
	ldh a, [$c7]                                     ; $73b9: $f0 $c7
	jr c, jr_048_7404                                ; $73bb: $38 $47

	jr c, jr_048_743a                                ; $73bd: $38 $7b

	db $fc                                           ; $73bf: $fc
	sbc b                                            ; $73c0: $98
	cp b                                             ; $73c1: $b8
	inc b                                            ; $73c2: $04
	ei                                               ; $73c3: $fb
	call nz, $843b                                   ; $73c4: $c4 $3b $84
	ld a, e                                          ; $73c7: $7b
	ld [hl], a                                       ; $73c8: $77
	ld l, b                                          ; $73c9: $68
	adc e                                            ; $73ca: $8b
	and d                                            ; $73cb: $a2
	ld e, l                                          ; $73cc: $5d
	inc b                                            ; $73cd: $04
	ei                                               ; $73ce: $fb
	nop                                              ; $73cf: $00
	rst $38                                          ; $73d0: $ff
	inc c                                            ; $73d1: $0c
	di                                               ; $73d2: $f3
	ld [$6cf7], sp                                   ; $73d3: $08 $f7 $6c
	sub e                                            ; $73d6: $93
	jr z, jr_048_73ee                                ; $73d7: $28 $15

	ld d, l                                          ; $73d9: $55
	ld a, [hl+]                                      ; $73da: $2a
	xor d                                            ; $73db: $aa
	ld d, l                                          ; $73dc: $55
	ld d, l                                          ; $73dd: $55
	xor d                                            ; $73de: $aa
	ld a, e                                          ; $73df: $7b
	jp hl                                            ; $73e0: $e9


	ld a, a                                          ; $73e1: $7f
	db $fc                                           ; $73e2: $fc
	add a                                            ; $73e3: $87
	ld d, l                                          ; $73e4: $55

jr_048_73e5:
	nop                                              ; $73e5: $00
	xor d                                            ; $73e6: $aa
	add l                                            ; $73e7: $85
	ld a, [bc]                                       ; $73e8: $0a
	ld a, [bc]                                       ; $73e9: $0a
	ld de, $2a95                                     ; $73ea: $11 $95 $2a
	ld a, [hl+]                                      ; $73ed: $2a

jr_048_73ee:
	sub l                                            ; $73ee: $95
	db $10                                           ; $73ef: $10
	xor a                                            ; $73f0: $af
	jr nz, jr_048_738d                               ; $73f1: $20 $9a

	nop                                              ; $73f3: $00
	dec a                                            ; $73f4: $3d
	jr nz, jr_048_7391                               ; $73f5: $20 $9a

	ld d, l                                          ; $73f7: $55
	xor d                                            ; $73f8: $aa
	xor d                                            ; $73f9: $aa
	ld d, l                                          ; $73fa: $55
	db $10                                           ; $73fb: $10
	ld l, h                                          ; $73fc: $6c
	ld l, d                                          ; $73fd: $6a
	sub c                                            ; $73fe: $91
	xor e                                            ; $73ff: $ab
	nop                                              ; $7400: $00
	ld d, a                                          ; $7401: $57
	nop                                              ; $7402: $00
	xor e                                            ; $7403: $ab

jr_048_7404:
	ld d, h                                          ; $7404: $54
	xor c                                            ; $7405: $a9
	xor e                                            ; $7406: $ab
	ld d, l                                          ; $7407: $55
	dec d                                            ; $7408: $15
	db $eb                                           ; $7409: $eb
	ld bc, $01fe                                     ; $740a: $01 $fe $01
	ld [hl], d                                       ; $740d: $72
	ld a, h                                          ; $740e: $7c
	ld a, a                                          ; $740f: $7f
	ld a, [$7280]                                    ; $7410: $fa $80 $72
	adc l                                            ; $7413: $8d
	ld a, h                                          ; $7414: $7c
	add e                                            ; $7415: $83
	ldh a, [c]                                       ; $7416: $f2
	rrca                                             ; $7417: $0f
	db $e4                                           ; $7418: $e4
	rra                                              ; $7419: $1f
	ldh a, [rIF]                                     ; $741a: $f0 $0f
	jr c, jr_048_73e5                                ; $741c: $38 $c7

	inc e                                            ; $741e: $1c
	db $e3                                           ; $741f: $e3
	ld c, $f1                                        ; $7420: $0e $f1
	ld h, c                                          ; $7422: $61
	sbc a                                            ; $7423: $9f
	ld h, e                                          ; $7424: $63
	sbc l                                            ; $7425: $9d
	ld d, l                                          ; $7426: $55
	xor c                                            ; $7427: $a9
	and c                                            ; $7428: $a1
	ld e, c                                          ; $7429: $59
	add hl, bc                                       ; $742a: $09
	pop af                                           ; $742b: $f1
	ld bc, $01f1                                     ; $742c: $01 $f1 $01
	pop hl                                           ; $742f: $e1
	and b                                            ; $7430: $a0
	adc b                                            ; $7431: $88
	rst SubAFromDE                                          ; $7432: $df
	call nc, $ea83                                   ; $7433: $d4 $83 $ea
	add c                                            ; $7436: $81
	sub [hl]                                         ; $7437: $96
	pop bc                                           ; $7438: $c1
	xor b                                            ; $7439: $a8

jr_048_743a:
	jp $c3bc                                         ; $743a: $c3 $bc $c3


	sbc h                                            ; $743d: $9c
	db $e3                                           ; $743e: $e3
	sbc h                                            ; $743f: $9c
	db $e3                                           ; $7440: $e3
	adc h                                            ; $7441: $8c
	di                                               ; $7442: $f3
	ld b, b                                          ; $7443: $40
	push de                                          ; $7444: $d5
	pop bc                                           ; $7445: $c1
	ld l, d                                          ; $7446: $6a
	ret nz                                           ; $7447: $c0

	ld d, l                                          ; $7448: $55
	ld [hl], a                                       ; $7449: $77
	db $fc                                           ; $744a: $fc
	sbc [hl]                                         ; $744b: $9e
	ret nz                                           ; $744c: $c0

	ld [hl], e                                       ; $744d: $73
	db $fc                                           ; $744e: $fc
	add b                                            ; $744f: $80
	db $dd                                           ; $7450: $dd
	inc hl                                           ; $7451: $23
	ld e, l                                          ; $7452: $5d
	and e                                            ; $7453: $a3
	rst SubAFromDE                                          ; $7454: $df
	inc hl                                           ; $7455: $23
	ld l, $f3                                        ; $7456: $2e $f3
	cp [hl]                                          ; $7458: $be
	ld h, e                                          ; $7459: $63
	ld a, [hl]                                       ; $745a: $7e
	jp $cf33                                         ; $745b: $c3 $33 $cf


	ld [hl], $cf                                     ; $745e: $36 $cf
	ld [hl], e                                       ; $7460: $73
	adc h                                            ; $7461: $8c
	add hl, sp                                       ; $7462: $39
	add $31                                          ; $7463: $c6 $31
	adc $f5                                          ; $7465: $ce $f5
	ld a, [bc]                                       ; $7467: $0a
	rst $38                                          ; $7468: $ff
	nop                                              ; $7469: $00
	push af                                          ; $746a: $f5
	ld c, $04                                        ; $746b: $0e $04
	ei                                               ; $746d: $fb
	rst $38                                          ; $746e: $ff
	adc [hl]                                         ; $746f: $8e
	nop                                              ; $7470: $00
	cp l                                             ; $7471: $bd
	ld h, d                                          ; $7472: $62
	cp h                                             ; $7473: $bc
	ld h, d                                          ; $7474: $62
	db $dd                                           ; $7475: $dd
	ld h, d                                          ; $7476: $62
	ld e, h                                          ; $7477: $5c
	ldh [c], a                                       ; $7478: $e2
	sbc c                                            ; $7479: $99
	ld h, [hl]                                       ; $747a: $66
	or h                                             ; $747b: $b4
	ld l, [hl]                                       ; $747c: $6e
	ld d, c                                          ; $747d: $51
	db $ec                                           ; $747e: $ec
	ld [$4678], a                                    ; $747f: $ea $78 $46
	ret nz                                           ; $7482: $c0

	ld a, a                                          ; $7483: $7f
	inc [hl]                                         ; $7484: $34
	sbc c                                            ; $7485: $99
	push hl                                          ; $7486: $e5
	ld a, [de]                                       ; $7487: $1a
	jp z, $a535                                      ; $7488: $ca $35 $a5

	ld e, d                                          ; $748b: $5a
	ld h, a                                          ; $748c: $67

jr_048_748d:
	db $fc                                           ; $748d: $fc
	ld a, l                                          ; $748e: $7d
	rst SubAFromDE                                          ; $748f: $df
	ld a, a                                          ; $7490: $7f
	halt                                             ; $7491: $76
	add b                                            ; $7492: $80
	ldh [$39], a                                     ; $7493: $e0 $39
	ret nz                                           ; $7495: $c0

	ld h, a                                          ; $7496: $67
	pop bc                                           ; $7497: $c1
	ld l, a                                          ; $7498: $6f
	add d                                            ; $7499: $82
	ld a, a                                          ; $749a: $7f
	add [hl]                                         ; $749b: $86
	ld a, a                                          ; $749c: $7f
	call z, $037c                                    ; $749d: $cc $7c $03
	ld a, $c1                                        ; $74a0: $3e $c1
	cp a                                             ; $74a2: $bf
	rst SubAFromBC                                          ; $74a3: $e7
	ret c                                            ; $74a4: $d8

	inc h                                            ; $74a5: $24
	ld hl, sp-$3a                                    ; $74a6: $f8 $c6
	jr c, jr_048_748d                                ; $74a8: $38 $e3

	inc e                                            ; $74aa: $1c
	ld h, $19                                        ; $74ab: $26 $19
	jr nz, jr_048_74e8                               ; $74ad: $20 $39

	pop bc                                           ; $74af: $c1
	ld [hl], $c4                                     ; $74b0: $36 $c4
	add b                                            ; $74b2: $80
	jr c, jr_048_74d5                                ; $74b3: $38 $20

	ret c                                            ; $74b5: $d8

	inc de                                           ; $74b6: $13
	ld b, b                                          ; $74b7: $40
	and b                                            ; $74b8: $a0
	ld b, b                                          ; $74b9: $40
	sub b                                            ; $74ba: $90
	ret nz                                           ; $74bb: $c0

	ret nc                                           ; $74bc: $d0

	ret nz                                           ; $74bd: $c0

	ld [hl], b                                       ; $74be: $70
	ret nz                                           ; $74bf: $c0

	ld [$2b17], sp                                   ; $74c0: $08 $17 $2b
	inc de                                           ; $74c3: $13
	ld e, a                                          ; $74c4: $5f
	inc sp                                           ; $74c5: $33
	xor e                                            ; $74c6: $ab
	rla                                              ; $74c7: $17
	adc e                                            ; $74c8: $8b
	ld [hl], a                                       ; $74c9: $77
	and e                                            ; $74ca: $a3
	ld [hl], l                                       ; $74cb: $75
	jr nz, jr_048_7543                               ; $74cc: $20 $75

	ld h, e                                          ; $74ce: $63
	dec [hl]                                         ; $74cf: $35
	rlca                                             ; $74d0: $07
	ld hl, sp+$7e                                    ; $74d1: $f8 $7e
	sub $90                                          ; $74d3: $d6 $90

jr_048_74d5:
	ld h, a                                          ; $74d5: $67
	sbc b                                            ; $74d6: $98
	rrca                                             ; $74d7: $0f
	ldh a, [$1f]                                     ; $74d8: $f0 $1f
	ldh [rIF], a                                     ; $74da: $e0 $0f
	ldh a, [$e7]                                     ; $74dc: $f0 $e7
	sbc b                                            ; $74de: $98
	and a                                            ; $74df: $a7
	ret c                                            ; $74e0: $d8

	ld [hl], d                                       ; $74e1: $72
	ld [$7bf0], sp                                   ; $74e2: $08 $f0 $7b
	cp $9e                                           ; $74e5: $fe $9e
	ld [hl], b                                       ; $74e7: $70

jr_048_74e8:
	ld h, e                                          ; $74e8: $63
	cp $6d                                           ; $74e9: $fe $6d
	ld e, d                                          ; $74eb: $5a
	or $7a                                           ; $74ec: $f6 $7a
	call z, $009d                                    ; $74ee: $cc $9d $00
	ld d, b                                          ; $74f1: $50
	or $96                                           ; $74f2: $f6 $96
	cp l                                             ; $74f4: $bd
	jr nz, jr_048_7511                               ; $74f5: $20 $1a

	db $10                                           ; $74f7: $10
	add hl, hl                                       ; $74f8: $29
	jr nz, jr_048_7513                               ; $74f9: $20 $18

	db $10                                           ; $74fb: $10
	jr z, @+$71                                      ; $74fc: $28 $6f

	db $fc                                           ; $74fe: $fc
	halt                                             ; $74ff: $76
	call z, $fc7b                                    ; $7500: $cc $7b $fc
	ld a, [hl]                                       ; $7503: $7e
	ld e, [hl]                                       ; $7504: $5e
	sbc [hl]                                         ; $7505: $9e
	rla                                              ; $7506: $17
	ld [hl], e                                       ; $7507: $73
	db $fc                                           ; $7508: $fc
	sub a                                            ; $7509: $97
	dec hl                                           ; $750a: $2b
	ld bc, $03fe                                     ; $750b: $01 $fe $03
	cp $03                                           ; $750e: $fe $03
	db $fc                                           ; $7510: $fc

jr_048_7511:
	rlca                                             ; $7511: $07
	ld a, e                                          ; $7512: $7b

jr_048_7513:
	cp $7f                                           ; $7513: $fe $7f
	ld hl, sp+$76                                    ; $7515: $f8 $76
	cp h                                             ; $7517: $bc
	add b                                            ; $7518: $80
	ld h, $d9                                        ; $7519: $26 $d9

jr_048_751b:
	sbc [hl]                                         ; $751b: $9e
	ld h, c                                          ; $751c: $61
	call z, $e033                                    ; $751d: $cc $33 $e0
	rra                                              ; $7520: $1f
	pop hl                                           ; $7521: $e1
	ld e, $e3                                        ; $7522: $1e $e3
	inc e                                            ; $7524: $1c
	ld h, a                                          ; $7525: $67
	sbc b                                            ; $7526: $98
	inc bc                                           ; $7527: $03
	db $fc                                           ; $7528: $fc
	ld bc, $61ff                                     ; $7529: $01 $ff $61
	sbc a                                            ; $752c: $9f
	ld d, l                                          ; $752d: $55
	xor e                                            ; $752e: $ab
	pop hl                                           ; $752f: $e1
	rra                                              ; $7530: $1f
	push de                                          ; $7531: $d5
	dec hl                                           ; $7532: $2b
	and c                                            ; $7533: $a1
	ld e, a                                          ; $7534: $5f
	pop af                                           ; $7535: $f1
	rrca                                             ; $7536: $0f
	and b                                            ; $7537: $a0

jr_048_7538:
	sbc b                                            ; $7538: $98
	ld e, a                                          ; $7539: $5f
	ld b, $fb                                        ; $753a: $06 $fb
	add b                                            ; $753c: $80
	rst $38                                          ; $753d: $ff
	ld b, d                                          ; $753e: $42
	rst $38                                          ; $753f: $ff
	ld [hl], a                                       ; $7540: $77
	db $fc                                           ; $7541: $fc
	ld a, l                                          ; $7542: $7d

jr_048_7543:
	ld hl, $c29e                                     ; $7543: $21 $9e $c2
	ld a, e                                          ; $7546: $7b
	db $fc                                           ; $7547: $fc
	ld l, [hl]                                       ; $7548: $6e
	ret z                                            ; $7549: $c8

	ld a, [hl]                                       ; $754a: $7e
	ret nz                                           ; $754b: $c0

	add a                                            ; $754c: $87
	pop bc                                           ; $754d: $c1
	ld d, h                                          ; $754e: $54

jr_048_754f:
	ret nz                                           ; $754f: $c0

	ld l, e                                          ; $7550: $6b
	pop bc                                           ; $7551: $c1
	ld d, l                                          ; $7552: $55
	pop bc                                           ; $7553: $c1
	ld l, e                                          ; $7554: $6b
	ld a, a                                          ; $7555: $7f
	call z, $fc5b                                    ; $7556: $cc $5b $fc
	dec hl                                           ; $7559: $2b
	call c, $988f                                    ; $755a: $dc $8f $98
	cp e                                             ; $755d: $bb
	sbc h                                            ; $755e: $9c
	or e                                             ; $755f: $b3
	db $fc                                           ; $7560: $fc
	sub e                                            ; $7561: $93
	cp h                                             ; $7562: $bc
	or e                                             ; $7563: $b3
	cp h                                             ; $7564: $bc
	ld l, h                                          ; $7565: $6c
	db $e3                                           ; $7566: $e3
	sbc d                                            ; $7567: $9a
	ld sp, hl                                        ; $7568: $f9
	ld b, $e0                                        ; $7569: $06 $e0
	rra                                              ; $756b: $1f
	ldh [$7a], a                                     ; $756c: $e0 $7a
	ld l, h                                          ; $756e: $6c
	ld a, h                                          ; $756f: $7c
	cp a                                             ; $7570: $bf
	adc a                                            ; $7571: $8f
	push af                                          ; $7572: $f5
	jr c, jr_048_754f                                ; $7573: $38 $da

	jr nc, jr_048_7538                               ; $7575: $30 $c1

	jr nc, jr_048_751b                               ; $7577: $30 $a2

	ld [hl], b                                       ; $7579: $70
	ld hl, $22f0                                     ; $757a: $21 $f0 $22
	ldh a, [$35]                                     ; $757d: $f0 $35
	ldh [$62], a                                     ; $757f: $e0 $62
	ldh [rDMA], a                                    ; $7581: $e0 $46
	ret nz                                           ; $7583: $c0

	ld h, [hl]                                       ; $7584: $66
	ret z                                            ; $7585: $c8

	add b                                            ; $7586: $80
	swap h                                           ; $7587: $cb $34
	and l                                            ; $7589: $a5
	ld e, d                                          ; $758a: $5a
	ret nz                                           ; $758b: $c0

	ccf                                              ; $758c: $3f
	and b                                            ; $758d: $a0
	ld e, a                                          ; $758e: $5f
	ld [hl+], a                                      ; $758f: $22
	db $fc                                           ; $7590: $fc
	dec d                                            ; $7591: $15
	ld a, [$f00f]                                    ; $7592: $fa $0f $f0
	ld e, $e4                                        ; $7595: $1e $e4
	daa                                              ; $7597: $27
	jp $8143                                         ; $7598: $c3 $43 $81


	cpl                                              ; $759b: $2f
	jp $a957                                         ; $759c: $c3 $57 $a9


	jr z, @+$13                                      ; $759f: $28 $11

	ld l, b                                          ; $75a1: $68
	ld de, $01fa                                     ; $75a2: $11 $fa $01
	cp h                                             ; $75a5: $bc
	add l                                            ; $75a6: $85
	ld h, e                                          ; $75a7: $63
	ret c                                            ; $75a8: $d8

	scf                                              ; $75a9: $37
	jr nc, jr_048_75eb                               ; $75aa: $30 $3f

	cp b                                             ; $75ac: $b8
	rla                                              ; $75ad: $17
	cp b                                             ; $75ae: $b8
	rra                                              ; $75af: $1f
	ld c, b                                          ; $75b0: $48
	ldh [rOBP0], a                                   ; $75b1: $e0 $48
	ldh [$78], a                                     ; $75b3: $e0 $78
	ldh [$ac], a                                     ; $75b5: $e0 $ac
	ldh a, [$f4]                                     ; $75b7: $f0 $f4
	ld sp, hl                                        ; $75b9: $f9
	ld [hl], h                                       ; $75ba: $74
	ld a, [$fce8]                                    ; $75bb: $fa $e8 $fc
	ret nz                                           ; $75be: $c0

	xor $5f                                          ; $75bf: $ee $5f
	sbc $3f                                          ; $75c1: $de $3f
	sbc [hl]                                         ; $75c3: $9e
	cpl                                              ; $75c4: $2f
	ld a, e                                          ; $75c5: $7b
	cp $dc                                           ; $75c6: $fe $dc
	ccf                                              ; $75c8: $3f
	add h                                            ; $75c9: $84
	rra                                              ; $75ca: $1f
	rla                                              ; $75cb: $17
	rra                                              ; $75cc: $1f
	add a                                            ; $75cd: $87
	ld hl, sp-$6e                                    ; $75ce: $f8 $92
	ld hl, sp+$78                                    ; $75d0: $f8 $78

jr_048_75d2:
	rst $38                                          ; $75d2: $ff
	rst GetHLinHL                                          ; $75d3: $cf
	ldh a, [$7f]                                     ; $75d4: $f0 $7f
	ret nz                                           ; $75d6: $c0

	rst SubAFromDE                                          ; $75d7: $df
	ldh [$7f], a                                     ; $75d8: $e0 $7f
	ret nz                                           ; $75da: $c0

	cp a                                             ; $75db: $bf
	ret nz                                           ; $75dc: $c0

	ld [hl], b                                       ; $75dd: $70
	ld a, [bc]                                       ; $75de: $0a
	db $10                                           ; $75df: $10

jr_048_75e0:
	rrca                                             ; $75e0: $0f
	ld hl, sp+$00                                    ; $75e1: $f8 $00
	jr nc, jr_048_75ed                               ; $75e3: $30 $08

	ld h, a                                          ; $75e5: $67
	cp $7a                                           ; $75e6: $fe $7a
	jp nc, Jump_048_617f                             ; $75e8: $d2 $7f $61

jr_048_75eb:
	push af                                          ; $75eb: $f5
	ld c, e                                          ; $75ec: $4b

jr_048_75ed:
	ldh a, [$9b]                                     ; $75ed: $f0 $9b
	db $10                                           ; $75ef: $10
	xor l                                            ; $75f0: $ad
	jr nz, jr_048_75d2                               ; $75f1: $20 $df

	ld h, [hl]                                       ; $75f3: $66
	call nz, $c06a                                   ; $75f4: $c4 $6a $c0
	ld c, a                                          ; $75f7: $4f
	ret nc                                           ; $75f8: $d0

	sbc h                                            ; $75f9: $9c
	rst $38                                          ; $75fa: $ff
	ld [bc], a                                       ; $75fb: $02
	db $fd                                           ; $75fc: $fd
	push af                                          ; $75fd: $f5
	add b                                            ; $75fe: $80
	set 6, h                                         ; $75ff: $cb $f4
	ld d, l                                          ; $7601: $55
	ld [$45ba], a                                    ; $7602: $ea $ba $45
	sbc a                                            ; $7605: $9f
	ld h, b                                          ; $7606: $60
	cp a                                             ; $7607: $bf
	ld b, b                                          ; $7608: $40
	cp e                                             ; $7609: $bb
	ld b, h                                          ; $760a: $44
	or e                                             ; $760b: $b3
	ld c, h                                          ; $760c: $4c
	sub e                                            ; $760d: $93
	ld l, h                                          ; $760e: $6c
	jr nc, jr_048_75e0                               ; $760f: $30 $cf

	ld h, b                                          ; $7611: $60
	sbc a                                            ; $7612: $9f
	ld b, b                                          ; $7613: $40
	cp a                                             ; $7614: $bf
	jp nz, $843d                                     ; $7615: $c2 $3d $84

	ld a, e                                          ; $7618: $7b
	add b                                            ; $7619: $80
	ld a, a                                          ; $761a: $7f
	add d                                            ; $761b: $82
	ld a, l                                          ; $761c: $7d
	ld [bc], a                                       ; $761d: $02
	add b                                            ; $761e: $80
	db $fd                                           ; $761f: $fd
	add c                                            ; $7620: $81
	cp $6c                                           ; $7621: $fe $6c
	add b                                            ; $7623: $80
	or d                                             ; $7624: $b2
	call z, $fe80                                    ; $7625: $cc $80 $fe
	add b                                            ; $7628: $80
	cp $82                                           ; $7629: $fe $82
	db $fc                                           ; $762b: $fc
	add [hl]                                         ; $762c: $86
	ld hl, sp+$06                                    ; $762d: $f8 $06
	add b                                            ; $762f: $80
	jp $c354                                         ; $7630: $c3 $54 $c3


	ld l, h                                          ; $7633: $6c
	jp $d857                                         ; $7634: $c3 $57 $d8


	ld h, a                                          ; $7637: $67
	di                                               ; $7638: $f3
	ld a, h                                          ; $7639: $7c
	rst $38                                          ; $763a: $ff
	ld a, h                                          ; $763b: $7c
	rst $38                                          ; $763c: $ff
	ld a, a                                          ; $763d: $7f
	add h                                            ; $763e: $84

Jump_048_763f:
	db $fd                                           ; $763f: $fd
	ld a, a                                          ; $7640: $7f
	db $db                                           ; $7641: $db
	inc a                                            ; $7642: $3c
	sub e                                            ; $7643: $93
	ld a, h                                          ; $7644: $7c
	pop af                                           ; $7645: $f1
	cp $11                                           ; $7646: $fe $11
	cp $97                                           ; $7648: $fe $97
	ld a, d                                          ; $764a: $7a
	sub e                                            ; $764b: $93
	ld a, d                                          ; $764c: $7a
	ld a, [$3eff]                                    ; $764d: $fa $ff $3e
	rst $38                                          ; $7650: $ff
	pop af                                           ; $7651: $f1
	ld c, $f3                                        ; $7652: $0e $f3
	inc c                                            ; $7654: $0c
	ld a, [$fa05]                                    ; $7655: $fa $05 $fa
	dec b                                            ; $7658: $05
	cp $79                                           ; $7659: $fe $79
	dec e                                            ; $765b: $1d
	adc e                                            ; $765c: $8b
	or $09                                           ; $765d: $f6 $09
	ld a, [$450d]                                    ; $765f: $fa $0d $45
	ldh [rSCY], a                                    ; $7662: $e0 $42
	ret nz                                           ; $7664: $c0

	ld b, l                                          ; $7665: $45
	ret nz                                           ; $7666: $c0

	add d                                            ; $7667: $82
	ret nz                                           ; $7668: $c0

	push bc                                          ; $7669: $c5
	add b                                            ; $766a: $80
	add d                                            ; $766b: $82
	add b                                            ; $766c: $80
	add l                                            ; $766d: $85
	add b                                            ; $766e: $80
	ld [bc], a                                       ; $766f: $02
	add b                                            ; $7670: $80
	ld c, [hl]                                       ; $7671: $4e
	ret nz                                           ; $7672: $c0

	sub d                                            ; $7673: $92
	ld [bc], a                                       ; $7674: $02
	ld bc, $3fdb                                     ; $7675: $01 $db $3f
	or e                                             ; $7678: $b3
	ld e, a                                          ; $7679: $5f
	rst GetHLinHL                                          ; $767a: $cf
	ccf                                              ; $767b: $3f
	sbc a                                            ; $767c: $9f
	ld a, a                                          ; $767d: $7f
	sbc a                                            ; $767e: $9f
	ld a, a                                          ; $767f: $7f
	cp a                                             ; $7680: $bf
	ld a, e                                          ; $7681: $7b
	ld hl, sp-$7b                                    ; $7682: $f8 $85
	adc l                                            ; $7684: $8d
	ld [hl], d                                       ; $7685: $72
	adc l                                            ; $7686: $8d
	ld de, $1189                                     ; $7687: $11 $89 $11
	add a                                            ; $768a: $87
	add hl, de                                       ; $768b: $19
	sbc a                                            ; $768c: $9f
	rrca                                             ; $768d: $0f
	ld e, a                                          ; $768e: $5f
	sbc a                                            ; $768f: $9f
	ld a, $9f                                        ; $7690: $3e $9f
	cp [hl]                                          ; $7692: $be
	rra                                              ; $7693: $1f
	ld e, $3f                                        ; $7694: $1e $3f
	xor b                                            ; $7696: $a8
	rra                                              ; $7697: $1f
	cp b                                             ; $7698: $b8
	rra                                              ; $7699: $1f
	ld hl, sp-$41                                    ; $769a: $f8 $bf
	ld hl, sp-$01                                    ; $769c: $f8 $ff
	ld [hl], a                                       ; $769e: $77
	cp $80                                           ; $769f: $fe $80
	ld sp, hl                                        ; $76a1: $f9
	cp $fa                                           ; $76a2: $fe $fa
	db $fd                                           ; $76a4: $fd
	db $e4                                           ; $76a5: $e4
	adc $8c                                          ; $76a6: $ce $8c
	add $a1                                          ; $76a8: $c6 $a1
	add $c8                                          ; $76aa: $c6 $c8
	add a                                            ; $76ac: $87
	xor c                                            ; $76ad: $a9
	add [hl]                                         ; $76ae: $86
	ld h, h                                          ; $76af: $64
	adc [hl]                                         ; $76b0: $8e
	ld [bc], a                                       ; $76b1: $02
	adc h                                            ; $76b2: $8c
	ret nc                                           ; $76b3: $d0

	inc c                                            ; $76b4: $0c
	rrca                                             ; $76b5: $0f
	rra                                              ; $76b6: $1f
	ld a, [bc]                                       ; $76b7: $0a
	rra                                              ; $76b8: $1f
	dec l                                            ; $76b9: $2d
	rra                                              ; $76ba: $1f
	ld c, d                                          ; $76bb: $4a
	dec a                                            ; $76bc: $3d
	inc b                                            ; $76bd: $04
	jr nc, jr_048_76e6                               ; $76be: $30 $26

	sub e                                            ; $76c0: $93
	jr jr_048_76e3                                   ; $76c1: $18 $20

	db $10                                           ; $76c3: $10
	ld a, [hl+]                                      ; $76c4: $2a
	dec d                                            ; $76c5: $15
	ret nc                                           ; $76c6: $d0

	nop                                              ; $76c7: $00
	ret z                                            ; $76c8: $c8

	jr nc, @+$21                                     ; $76c9: $30 $1f

	ldh [$e0], a                                     ; $76cb: $e0 $e0
	cp $7c                                           ; $76cd: $fe $7c
	ld e, l                                          ; $76cf: $5d
	ld a, e                                          ; $76d0: $7b
	inc de                                           ; $76d1: $13
	sbc e                                            ; $76d2: $9b
	nop                                              ; $76d3: $00
	ld a, a                                          ; $76d4: $7f
	nop                                              ; $76d5: $00
	add hl, bc                                       ; $76d6: $09
	ld a, e                                          ; $76d7: $7b
	ld a, [$109e]                                    ; $76d8: $fa $9e $10
	ld [hl], l                                       ; $76db: $75
	and a                                            ; $76dc: $a7
	sbc l                                            ; $76dd: $9d
	nop                                              ; $76de: $00
	ld b, b                                          ; $76df: $40
	ld [hl], d                                       ; $76e0: $72
	inc h                                            ; $76e1: $24
	ld [hl], a                                       ; $76e2: $77

jr_048_76e3:
	cp $ff                                           ; $76e3: $fe $ff
	sbc [hl]                                         ; $76e5: $9e

jr_048_76e6:
	jr nz, jr_048_7763                               ; $76e6: $20 $7b

	ld a, [$f057]                                    ; $76e8: $fa $57 $f0
	ld a, a                                          ; $76eb: $7f
	db $f4                                           ; $76ec: $f4
	ld a, a                                          ; $76ed: $7f
	ret nc                                           ; $76ee: $d0

	sbc [hl]                                         ; $76ef: $9e
	add b                                            ; $76f0: $80
	ld [hl], e                                       ; $76f1: $73
	db $f4                                           ; $76f2: $f4
	sbc d                                            ; $76f3: $9a
	rst SubAFromDE                                          ; $76f4: $df
	jr nz, @+$01                                     ; $76f5: $20 $ff

	nop                                              ; $76f7: $00
	add c                                            ; $76f8: $81
	ld a, e                                          ; $76f9: $7b
	db $f4                                           ; $76fa: $f4

jr_048_76fb:
	sbc [hl]                                         ; $76fb: $9e
	call $f06b                                       ; $76fc: $cd $6b $f0
	ld [hl], a                                       ; $76ff: $77
	cp $9e                                           ; $7700: $fe $9e
	ld [bc], a                                       ; $7702: $02
	cp $9e                                           ; $7703: $fe $9e

jr_048_7705:
	dec sp                                           ; $7705: $3b
	ld [hl], e                                       ; $7706: $73
	or b                                             ; $7707: $b0
	ld l, a                                          ; $7708: $6f
	cp $9e                                           ; $7709: $fe $9e
	inc b                                            ; $770b: $04
	ld a, e                                          ; $770c: $7b
	ld b, h                                          ; $770d: $44
	add b                                            ; $770e: $80
	add hl, hl                                       ; $770f: $29
	nop                                              ; $7710: $00
	inc b                                            ; $7711: $04
	ld bc, $03fc                                     ; $7712: $01 $fc $03
	and a                                            ; $7715: $a7
	ld e, b                                          ; $7716: $58
	ld c, $f1                                        ; $7717: $0e $f1

jr_048_7719:
	ld e, $e1                                        ; $7719: $1e $e1
	dec a                                            ; $771b: $3d
	jp nz, $857a                                     ; $771c: $c2 $7a $85

	ld [hl], l                                       ; $771f: $75
	adc d                                            ; $7720: $8a
	ld a, [$ed05]                                    ; $7721: $fa $05 $ed
	ld [de], a                                       ; $7724: $12
	ld b, $f9                                        ; $7725: $06 $f9
	ld b, $f9                                        ; $7727: $06 $f9
	add h                                            ; $7729: $84
	ld a, e                                          ; $772a: $7b
	inc c                                            ; $772b: $0c
	di                                               ; $772c: $f3
	sbc h                                            ; $772d: $9c
	sub e                                            ; $772e: $93
	ld h, e                                          ; $772f: $63
	jr jr_048_7719                                   ; $7730: $18 $e7

	jr c, jr_048_76fb                                ; $7732: $38 $c7

	jr nc, jr_048_7705                               ; $7734: $30 $cf

	sbc [hl]                                         ; $7736: $9e
	nop                                              ; $7737: $00
	ld a, [$be00]                                    ; $7738: $fa $00 $be
	ld a, e                                          ; $773b: $7b
	add b                                            ; $773c: $80
	ld a, [hl]                                       ; $773d: $7e
	ld b, a                                          ; $773e: $47
	sbc [hl]                                         ; $773f: $9e
	ld d, [hl]                                       ; $7740: $56
	ld [hl], e                                       ; $7741: $73
	ret nz                                           ; $7742: $c0

	sub e                                            ; $7743: $93
	ld a, [$f57f]                                    ; $7744: $fa $7f $f5
	ld a, a                                          ; $7747: $7f
	ld l, d                                          ; $7748: $6a
	rst $38                                          ; $7749: $ff
	dec a                                            ; $774a: $3d
	rra                                              ; $774b: $1f
	ld b, [hl]                                       ; $774c: $46
	rrca                                             ; $774d: $0f
	rst FarCall                                          ; $774e: $f7
	inc bc                                           ; $774f: $03
	ld a, b                                          ; $7750: $78
	push af                                          ; $7751: $f5
	sbc e                                            ; $7752: $9b
	rst $38                                          ; $7753: $ff
	ld [hl], $ff                                     ; $7754: $36 $ff
	ld [hl+], a                                      ; $7756: $22
	ld a, e                                          ; $7757: $7b
	db $fc                                           ; $7758: $fc
	sbc d                                            ; $7759: $9a
	ld a, [hl+]                                      ; $775a: $2a
	rst $38                                          ; $775b: $ff
	ld h, $ff                                        ; $775c: $26 $ff
	xor d                                            ; $775e: $aa
	ld a, e                                          ; $775f: $7b
	ld hl, sp-$74                                    ; $7760: $f8 $8c
	ccf                                              ; $7762: $3f

jr_048_7763:
	rst $38                                          ; $7763: $ff
	ld a, [$fe0d]                                    ; $7764: $fa $0d $fe
	dec c                                            ; $7767: $0d
	db $fd                                           ; $7768: $fd
	rrca                                             ; $7769: $0f
	sub d                                            ; $776a: $92
	ld a, a                                          ; $776b: $7f
	ld a, [hl+]                                      ; $776c: $2a
	ld e, $6a                                        ; $776d: $1e $6a
	ld e, $5f                                        ; $776f: $1e $5f
	ld c, $96                                        ; $7771: $0e $96
	rrca                                             ; $7773: $0f
	dec b                                            ; $7774: $05
	halt                                             ; $7775: $76
	call z, $fc7f                                    ; $7776: $cc $7f $fc
	halt                                             ; $7779: $76
	call nc, $fc7b                                   ; $777a: $d4 $7b $fc
	sbc l                                            ; $777d: $9d
	xor [hl]                                         ; $777e: $ae
	nop                                              ; $777f: $00
	ld d, d                                          ; $7780: $52
	nop                                              ; $7781: $00
	sbc [hl]                                         ; $7782: $9e
	ld b, h                                          ; $7783: $44
	reti                                             ; $7784: $d9


	inc sp                                           ; $7785: $33
	sbc [hl]                                         ; $7786: $9e
	ld b, l                                          ; $7787: $45
	ld a, e                                          ; $7788: $7b
	or $dd                                           ; $7789: $f6 $dd
	ld b, h                                          ; $778b: $44
	ld [hl], a                                       ; $778c: $77
	or $d9                                           ; $778d: $f6 $d9
	ld b, h                                          ; $778f: $44
	ld a, e                                          ; $7790: $7b
	or $db                                           ; $7791: $f6 $db
	ld h, [hl]                                       ; $7793: $66
	ld [hl], e                                       ; $7794: $73

Jump_048_7795:
	or $9e                                           ; $7795: $f6 $9e
	ld h, a                                          ; $7797: $67
	sbc $77                                          ; $7798: $de $77
	sbc b                                            ; $779a: $98
	ld h, l                                          ; $779b: $65
	ld b, h                                          ; $779c: $44
	ld [hl], l                                       ; $779d: $75
	ld b, h                                          ; $779e: $44
	ld b, h                                          ; $779f: $44
	ld h, l                                          ; $77a0: $65
	ld b, a                                          ; $77a1: $47
	sbc $77                                          ; $77a2: $de $77
	sbc h                                            ; $77a4: $9c
	ld d, l                                          ; $77a5: $55
	ld [hl], l                                       ; $77a6: $75
	ld d, l                                          ; $77a7: $55
	ld a, e                                          ; $77a8: $7b
	db $ec                                           ; $77a9: $ec
	sbc d                                            ; $77aa: $9a
	ld b, l                                          ; $77ab: $45
	ld d, l                                          ; $77ac: $55
	ld d, l                                          ; $77ad: $55
	ld d, h                                          ; $77ae: $54
	ld b, l                                          ; $77af: $45
	ld a, e                                          ; $77b0: $7b
	or $99                                           ; $77b1: $f6 $99
	ld b, a                                          ; $77b3: $47
	ld h, [hl]                                       ; $77b4: $66
	ld b, l                                          ; $77b5: $45
	ld d, [hl]                                       ; $77b6: $56
	ld h, [hl]                                       ; $77b7: $66
	ld h, h                                          ; $77b8: $64
	ld a, e                                          ; $77b9: $7b
	ldh a, [c]                                       ; $77ba: $f2
	sbc d                                            ; $77bb: $9a
	ld b, h                                          ; $77bc: $44
	ld [hl], e                                       ; $77bd: $73
	ld d, l                                          ; $77be: $55
	ld d, [hl]                                       ; $77bf: $56
	ld h, [hl]                                       ; $77c0: $66
	ld l, a                                          ; $77c1: $6f
	or $9d                                           ; $77c2: $f6 $9d
	inc sp                                           ; $77c4: $33
	ld d, e                                          ; $77c5: $53
	ld [hl], a                                       ; $77c6: $77
	or $9e                                           ; $77c7: $f6 $9e
	ld b, [hl]                                       ; $77c9: $46
	ld [hl], a                                       ; $77ca: $77
	or $7b                                           ; $77cb: $f6 $7b
	push de                                          ; $77cd: $d5
	sbc $44                                          ; $77ce: $de $44
	rst SubAFromDE                                          ; $77d0: $df
	ld d, l                                          ; $77d1: $55
	and h                                            ; $77d2: $a4
	adc d                                            ; $77d3: $8a
	sbc [hl]                                         ; $77d4: $9e
	nop                                              ; $77d5: $00
	sbc $ff                                          ; $77d6: $de $ff
	sbc h                                            ; $77d8: $9c
	nop                                              ; $77d9: $00
	rst FarCall                                          ; $77da: $f7
	sbc a                                            ; $77db: $9f
	db $db                                           ; $77dc: $db
	rst $38                                          ; $77dd: $ff
	sbc [hl]                                         ; $77de: $9e
	ld [$77fe], sp                                   ; $77df: $08 $fe $77
	ldh a, [$9c]                                     ; $77e2: $f0 $9c
	rst SubAFromBC                                          ; $77e4: $e7
	dec hl                                           ; $77e5: $2b
	and a                                            ; $77e6: $a7
	call c, $9cff                                    ; $77e7: $dc $ff $9c
	jr jr_048_77fc                                   ; $77ea: $18 $10

	jr @+$75                                         ; $77ec: $18 $73

	ldh a, [$9c]                                     ; $77ee: $f0 $9c
	db $fd                                           ; $77f0: $fd
	inc [hl]                                         ; $77f1: $34
	ldh a, [$dc]                                     ; $77f2: $f0 $dc
	rst $38                                          ; $77f4: $ff
	rst SubAFromDE                                          ; $77f5: $df
	ld [bc], a                                       ; $77f6: $02
	sbc [hl]                                         ; $77f7: $9e
	ld b, $73                                        ; $77f8: $06 $73
	ldh a, [$9c]                                     ; $77fa: $f0 $9c

jr_048_77fc:
	ld c, e                                          ; $77fc: $4b
	ld d, [hl]                                       ; $77fd: $56
	ld b, a                                          ; $77fe: $47
	call c, $9cff                                    ; $77ff: $dc $ff $9c
	inc [hl]                                         ; $7802: $34
	jr nz, jr_048_7835                               ; $7803: $20 $30

	ld [hl], e                                       ; $7805: $73
	ldh a, [$9c]                                     ; $7806: $f0 $9c
	rst JumpTable                                          ; $7808: $c7
	ld c, c                                          ; $7809: $49
	ret                                              ; $780a: $c9


	call c, $9dff                                    ; $780b: $dc $ff $9d
	jr c, @+$32                                      ; $780e: $38 $30

	ld l, a                                          ; $7810: $6f
	ldh a, [$9c]                                     ; $7811: $f0 $9c
	adc e                                            ; $7813: $8b
	ld d, l                                          ; $7814: $55
	sbc l                                            ; $7815: $9d
	call c, $9cff                                    ; $7816: $dc $ff $9c
	ld [hl], h                                       ; $7819: $74
	jr nz, jr_048_787c                               ; $781a: $20 $60

	ld l, a                                          ; $781c: $6f
	or b                                             ; $781d: $b0
	sbc l                                            ; $781e: $9d
	inc h                                            ; $781f: $24
	add a                                            ; $7820: $87
	ld l, a                                          ; $7821: $6f
	or b                                             ; $7822: $b0
	sbc l                                            ; $7823: $9d
	jr jr_048_785e                                   ; $7824: $18 $38

	ld [hl], e                                       ; $7826: $73
	ldh a, [$9c]                                     ; $7827: $f0 $9c
	cp a                                             ; $7829: $bf
	ld a, [$dcfe]                                    ; $782a: $fa $fe $dc
	rst $38                                          ; $782d: $ff
	sbc h                                            ; $782e: $9c
	ld b, b                                          ; $782f: $40
	ld bc, $7301                                     ; $7830: $01 $01 $73
	ldh a, [$9c]                                     ; $7833: $f0 $9c

jr_048_7835:
	sbc $bb                                          ; $7835: $de $bb
	sbc [hl]                                         ; $7837: $9e
	call c, $9cff                                    ; $7838: $dc $ff $9c
	ld hl, $2100                                     ; $783b: $21 $00 $21
	ld [hl], e                                       ; $783e: $73
	ldh a, [$9c]                                     ; $783f: $f0 $9c
	rst $38                                          ; $7841: $ff
	call $dc49                                       ; $7842: $cd $49 $dc
	rst $38                                          ; $7845: $ff
	rst $38                                          ; $7846: $ff
	sbc [hl]                                         ; $7847: $9e
	add h                                            ; $7848: $84
	ld [hl], e                                       ; $7849: $73
	ldh a, [$9c]                                     ; $784a: $f0 $9c
	ld [hl], a                                       ; $784c: $77
	cp c                                             ; $784d: $b9
	sbc d                                            ; $784e: $9a
	call c, $9eff                                    ; $784f: $dc $ff $9e
	adc b                                            ; $7852: $88
	ld l, e                                          ; $7853: $6b
	ldh [$df], a                                     ; $7854: $e0 $df
	ld e, [hl]                                       ; $7856: $5e
	sbc [hl]                                         ; $7857: $9e
	ld d, h                                          ; $7858: $54
	call c, $dfff                                    ; $7859: $dc $ff $df
	add c                                            ; $785c: $81
	sbc [hl]                                         ; $785d: $9e

jr_048_785e:
	adc e                                            ; $785e: $8b
	ld [hl], e                                       ; $785f: $73
	ldh a, [$9c]                                     ; $7860: $f0 $9c
	cp $de                                           ; $7862: $fe $de
	ld e, h                                          ; $7864: $5c
	call c, $dfff                                    ; $7865: $dc $ff $df
	ld bc, $839e                                     ; $7868: $01 $9e $83
	ld [hl], e                                       ; $786b: $73
	ldh a, [$9c]                                     ; $786c: $f0 $9c
	ld a, a                                          ; $786e: $7f
	ld e, l                                          ; $786f: $5d
	ld e, l                                          ; $7870: $5d
	call c, $9cff                                    ; $7871: $dc $ff $9c
	add b                                            ; $7874: $80
	add d                                            ; $7875: $82
	add d                                            ; $7876: $82
	ld [hl], e                                       ; $7877: $73
	ldh a, [$9c]                                     ; $7878: $f0 $9c
	rlc h                                            ; $787a: $cb $04

jr_048_787c:
	ld d, b                                          ; $787c: $50
	call c, $9cff                                    ; $787d: $dc $ff $9c
	inc b                                            ; $7880: $04
	ld [$730c], sp                                   ; $7881: $08 $0c $73
	ldh a, [$9c]                                     ; $7884: $f0 $9c
	or e                                             ; $7886: $b3
	ld [hl], e                                       ; $7887: $73
	ld [de], a                                       ; $7888: $12
	ld l, a                                          ; $7889: $6f
	add b                                            ; $788a: $80
	sbc l                                            ; $788b: $9d
	nop                                              ; $788c: $00
	ld h, c                                          ; $788d: $61
	ld [hl], e                                       ; $788e: $73
	ldh a, [$9c]                                     ; $788f: $f0 $9c
	and e                                            ; $7891: $a3
	inc hl                                           ; $7892: $23
	ld d, d                                          ; $7893: $52
	ld l, e                                          ; $7894: $6b
	sub b                                            ; $7895: $90
	ld l, a                                          ; $7896: $6f
	and b                                            ; $7897: $a0
	sbc l                                            ; $7898: $9d
	ld [$6b91], sp                                   ; $7899: $08 $91 $6b
	ldh a, [$9d]                                     ; $789c: $f0 $9d
	ld [$6f89], sp                                   ; $789e: $08 $89 $6f
	ldh [$9d], a                                     ; $78a1: $e0 $9d

jr_048_78a3:
	inc h                                            ; $78a3: $24
	dec h                                            ; $78a4: $25
	call c, $9cff                                    ; $78a5: $dc $ff $9c
	db $10                                           ; $78a8: $10
	sub d                                            ; $78a9: $92
	sub d                                            ; $78aa: $92
	ld [hl], e                                       ; $78ab: $73
	ldh a, [$df]                                     ; $78ac: $f0 $df
	db $f4                                           ; $78ae: $f4
	sbc [hl]                                         ; $78af: $9e
	sub h                                            ; $78b0: $94
	ld l, [hl]                                       ; $78b1: $6e
	ret nc                                           ; $78b2: $d0

	adc h                                            ; $78b3: $8c
	ld [$3468], sp                                   ; $78b4: $08 $68 $34
	ld h, h                                          ; $78b7: $64
	rst $38                                          ; $78b8: $ff
	rst $38                                          ; $78b9: $ff
	rst SubAFromDE                                          ; $78ba: $df
	sub l                                            ; $78bb: $95
	jp nc, $dbd7                                     ; $78bc: $d2 $d7 $db

	sbc e                                            ; $78bf: $9b
	rst $38                                          ; $78c0: $ff
	rst $38                                          ; $78c1: $ff
	jr nc, jr_048_793e                               ; $78c2: $30 $7a

	dec a                                            ; $78c4: $3d
	jr c, jr_048_78a3                                ; $78c5: $38 $dc

	ld a, e                                          ; $78c7: $7b
	ld h, $89                                        ; $78c8: $26 $89
	push af                                          ; $78ca: $f5
	reti                                             ; $78cb: $d9


	sbc c                                            ; $78cc: $99
	ld e, c                                          ; $78cd: $59
	dec sp                                           ; $78ce: $3b
	add hl, de                                       ; $78cf: $19
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	ld a, [de]                                       ; $78d2: $1a
	ld a, $7e                                        ; $78d3: $3e $7e
	cp [hl]                                          ; $78d5: $be
	add [hl]                                         ; $78d6: $86
	rst AddAOntoHL                                          ; $78d7: $ef
	rst $38                                          ; $78d8: $ff
	rst $38                                          ; $78d9: $ff
	db $fd                                           ; $78da: $fd
	ld c, c                                          ; $78db: $49
	ret nc                                           ; $78dc: $d0

	ld c, c                                          ; $78dd: $49
	ld a, a                                          ; $78de: $7f
	ld d, $7a                                        ; $78df: $16 $7a
	pop bc                                           ; $78e1: $c1
	sbc d                                            ; $78e2: $9a
	or [hl]                                          ; $78e3: $b6
	cpl                                              ; $78e4: $2f
	or [hl]                                          ; $78e5: $b6
	cp c                                             ; $78e6: $b9
	cp h                                             ; $78e7: $bc
	sbc $ff                                          ; $78e8: $de $ff
	sbc d                                            ; $78ea: $9a
	cp a                                             ; $78eb: $bf
	cp l                                             ; $78ec: $bd
	dec sp                                           ; $78ed: $3b
	halt                                             ; $78ee: $76
	ld [hl], e                                       ; $78ef: $73
	ld a, e                                          ; $78f0: $7b
	ret nc                                           ; $78f1: $d0

	sbc d                                            ; $78f2: $9a
	ld [hl], b                                       ; $78f3: $70
	ld [hl], d                                       ; $78f4: $72
	db $f4                                           ; $78f5: $f4
	scf                                              ; $78f6: $37
	or [hl]                                          ; $78f7: $b6
	sbc $ff                                          ; $78f8: $de $ff
	sbc d                                            ; $78fa: $9a
	cp d                                             ; $78fb: $ba
	rst FarCall                                          ; $78fc: $f7
	cp d                                             ; $78fd: $ba
	ld sp, hl                                        ; $78fe: $f9
	ld a, c                                          ; $78ff: $79
	ld a, e                                          ; $7900: $7b
	ldh a, [$80]                                     ; $7901: $f0 $80
	ld [hl], l                                       ; $7903: $75
	jr c, jr_048_797b                                ; $7904: $38 $75

	ld h, c                                          ; $7906: $61
	db $eb                                           ; $7907: $eb
	rst $38                                          ; $7908: $ff
	rst $38                                          ; $7909: $ff
	di                                               ; $790a: $f3
	ei                                               ; $790b: $fb
	ld [hl], e                                       ; $790c: $73
	ei                                               ; $790d: $fb
	rst $38                                          ; $790e: $ff
	ld [hl], l                                       ; $790f: $75
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	ld l, l                                          ; $7912: $6d
	ld h, l                                          ; $7913: $65
	db $ed                                           ; $7914: $ed
	ld h, l                                          ; $7915: $65
	ld a, c                                          ; $7916: $79
	cp l                                             ; $7917: $bd
	rst $38                                          ; $7918: $ff
	rst $38                                          ; $7919: $ff
	ld e, e                                          ; $791a: $5b
	ld c, $0b                                        ; $791b: $0e $0b
	ld a, [bc]                                       ; $791d: $0a
	cp a                                             ; $791e: $bf
	ld a, e                                          ; $791f: $7b
	rst $38                                          ; $7920: $ff
	rst $38                                          ; $7921: $ff
	sbc c                                            ; $7922: $99
	xor h                                            ; $7923: $ac
	db $fd                                           ; $7924: $fd
	db $fc                                           ; $7925: $fc
	db $fd                                           ; $7926: $fd
	inc hl                                           ; $7927: $23
	dec hl                                           ; $7928: $2b
	sbc $ff                                          ; $7929: $de $ff
	add d                                            ; $792b: $82
	xor c                                            ; $792c: $a9
	ld a, l                                          ; $792d: $7d
	add hl, hl                                       ; $792e: $29
	rst $38                                          ; $792f: $ff
	rst FarCall                                          ; $7930: $f7
	rst $38                                          ; $7931: $ff
	rst $38                                          ; $7932: $ff
	adc c                                            ; $7933: $89
	rst SubAFromDE                                          ; $7934: $df
	adc e                                            ; $7935: $8b
	rst SubAFromDE                                          ; $7936: $df
	ld [hl], l                                       ; $7937: $75
	db $fd                                           ; $7938: $fd
	rst $38                                          ; $7939: $ff
	rst $38                                          ; $793a: $ff
	ei                                               ; $793b: $fb
	ld h, [hl]                                       ; $793c: $66
	ld [hl], a                                       ; $793d: $77

jr_048_793e:
	xor $bb                                          ; $793e: $ee $bb
	inc sp                                           ; $7940: $33
	rst $38                                          ; $7941: $ff
	rst $38                                          ; $7942: $ff
	ld b, $9f                                        ; $7943: $06 $9f
	adc [hl]                                         ; $7945: $8e
	rla                                              ; $7946: $17
	or [hl]                                          ; $7947: $b6
	rst GetHLinHL                                          ; $7948: $cf
	sbc $ff                                          ; $7949: $de $ff
	sub d                                            ; $794b: $92
	sbc $6b                                          ; $794c: $de $6b
	sbc $cd                                          ; $794e: $de $cd
	call nz, rIE                                   ; $7950: $c4 $ff $ff
	ld b, d                                          ; $7953: $42
	ld h, e                                          ; $7954: $63
	sub $63                                          ; $7955: $d6 $63
	and a                                            ; $7957: $a7
	rst JumpTable                                          ; $7958: $c7
	ld a, e                                          ; $7959: $7b
	ld h, b                                          ; $795a: $60
	sbc d                                            ; $795b: $9a
	cp c                                             ; $795c: $b9
	dec l                                            ; $795d: $2d
	cp c                                             ; $795e: $b9
	ld sp, hl                                        ; $795f: $f9
	cp c                                             ; $7960: $b9
	ld a, d                                          ; $7961: $7a
	and c                                            ; $7962: $a1
	sbc d                                            ; $7963: $9a
	ld h, a                                          ; $7964: $67
	di                                               ; $7965: $f3
	ld h, a                                          ; $7966: $67
	xor c                                            ; $7967: $a9
	jp hl                                            ; $7968: $e9


	ld a, e                                          ; $7969: $7b
	ld [hl], b                                       ; $796a: $70
	sbc e                                            ; $796b: $9b
	ld a, b                                          ; $796c: $78
	db $f4                                           ; $796d: $f4
	ld l, b                                          ; $796e: $68
	rst SubAFromDE                                          ; $796f: $df
	ld a, d                                          ; $7970: $7a
	dec c                                            ; $7971: $0d
	sub d                                            ; $7972: $92
	ld [bc], a                                       ; $7973: $02
	add a                                            ; $7974: $87
	dec bc                                           ; $7975: $0b
	sub a                                            ; $7976: $97
	xor e                                            ; $7977: $ab
	ld h, l                                          ; $7978: $65
	rst $38                                          ; $7979: $ff
	cp a                                             ; $797a: $bf

jr_048_797b:
	ld a, h                                          ; $797b: $7c
	xor c                                            ; $797c: $a9
	ld e, c                                          ; $797d: $59
	xor c                                            ; $797e: $a9
	rst SubAFromDE                                          ; $797f: $df
	ld a, e                                          ; $7980: $7b
	ld b, b                                          ; $7981: $40
	add b                                            ; $7982: $80
	dec bc                                           ; $7983: $0b
	ld e, a                                          ; $7984: $5f
	xor a                                            ; $7985: $af
	ld e, a                                          ; $7986: $5f
	and [hl]                                         ; $7987: $a6
	ld [$efff], a                                    ; $7988: $ea $ff $ef
	cp d                                             ; $798b: $ba
	ld d, b                                          ; $798c: $50
	jp c, $df50                                      ; $798d: $da $50 $df

	rla                                              ; $7990: $17
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	ld b, l                                          ; $7993: $45
	rst AddAOntoHL                                          ; $7994: $ef
	ld h, l                                          ; $7995: $65
	rst AddAOntoHL                                          ; $7996: $ef
	rst AddAOntoHL                                          ; $7997: $ef
	ld [rIE], a                                    ; $7998: $ea $ff $ff
	rst SubAFromBC                                          ; $799b: $e7
	ld e, a                                          ; $799c: $5f
	sbc a                                            ; $799d: $9f
	rra                                              ; $799e: $1f
	inc e                                            ; $799f: $1c

jr_048_79a0:
	dec e                                            ; $79a0: $1d
	rst $38                                          ; $79a1: $ff
	adc c                                            ; $79a2: $89
	rst $38                                          ; $79a3: $ff
	inc c                                            ; $79a4: $0c
	adc h                                            ; $79a5: $8c
	ld c, h                                          ; $79a6: $4c
	call z, $beed                                    ; $79a7: $cc $ed $be
	rst $38                                          ; $79aa: $ff
	rst FarCall                                          ; $79ab: $f7
	and c                                            ; $79ac: $a1
	xor b                                            ; $79ad: $a8
	jp hl                                            ; $79ae: $e9


	xor b                                            ; $79af: $a8
	ld [hl], e                                       ; $79b0: $73
	ld h, c                                          ; $79b1: $61
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff
	ld [hl], $77                                     ; $79b4: $36 $77
	ld [hl], $77                                     ; $79b6: $36 $77
	ld l, l                                          ; $79b8: $6d
	ld a, e                                          ; $79b9: $7b
	pop hl                                           ; $79ba: $e1
	sbc d                                            ; $79bb: $9a
	ld e, l                                          ; $79bc: $5d
	xor a                                            ; $79bd: $af
	ld e, l                                          ; $79be: $5d
	cp a                                             ; $79bf: $bf
	or e                                             ; $79c0: $b3
	ld a, e                                          ; $79c1: $7b
	ldh a, [$80]                                     ; $79c2: $f0 $80
	and e                                            ; $79c4: $a3
	ld d, c                                          ; $79c5: $51
	and e                                            ; $79c6: $a3
	ld b, c                                          ; $79c7: $41
	xor c                                            ; $79c8: $a9
	rst AddAOntoHL                                          ; $79c9: $ef
	rst $38                                          ; $79ca: $ff
	cp a                                             ; $79cb: $bf
	xor $5b                                          ; $79cc: $ee $5b
	ld l, d                                          ; $79ce: $6a
	ld e, e                                          ; $79cf: $5b
	rst SubAFromDE                                          ; $79d0: $df
	sbc c                                            ; $79d1: $99
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	add hl, de                                       ; $79d4: $19
	xor h                                            ; $79d5: $ac
	sbc l                                            ; $79d6: $9d
	xor h                                            ; $79d7: $ac
	cp e                                             ; $79d8: $bb
	rst SubAFromDE                                          ; $79d9: $df
	rst $38                                          ; $79da: $ff
	ldh [$bd], a                                     ; $79db: $e0 $bd
	ld a, [hl+]                                      ; $79dd: $2a
	cp l                                             ; $79de: $bd
	ld a, [hl+]                                      ; $79df: $2a
	or $b2                                           ; $79e0: $f6 $b2
	rst $38                                          ; $79e2: $ff
	add b                                            ; $79e3: $80
	rst $38                                          ; $79e4: $ff
	ld h, d                                          ; $79e5: $62
	push af                                          ; $79e6: $f5
	ld h, d                                          ; $79e7: $62
	push af                                          ; $79e8: $f5
	ld l, c                                          ; $79e9: $69
	adc e                                            ; $79ea: $8b

jr_048_79eb:
	rst $38                                          ; $79eb: $ff
	ld hl, sp-$61                                    ; $79ec: $f8 $9f
	cp [hl]                                          ; $79ee: $be
	rra                                              ; $79ef: $1f
	sbc e                                            ; $79f0: $9b
	cp $7c                                           ; $79f1: $fe $7c
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	ld a, b                                          ; $79f5: $78
	ld e, c                                          ; $79f6: $59
	ld hl, sp+$7c                                    ; $79f7: $f8 $7c
	or e                                             ; $79f9: $b3
	or a                                             ; $79fa: $b7
	ld a, [$e3a7]                                    ; $79fb: $fa $a7 $e3
	and a                                            ; $79fe: $a7
	ld h, e                                          ; $79ff: $63
	and a                                            ; $7a00: $a7
	inc a                                            ; $7a01: $3c
	jr c, jr_048_79a0                                ; $7a02: $38 $9c

	dec [hl]                                         ; $7a04: $35
	ld a, b                                          ; $7a05: $78
	inc a                                            ; $7a06: $3c
	ld a, e                                          ; $7a07: $7b
	cp $7e                                           ; $7a08: $fe $7e
	add $80                                          ; $7a0a: $c6 $80
	sub l                                            ; $7a0c: $95
	ld d, c                                          ; $7a0d: $51
	sub l                                            ; $7a0e: $95
	ld d, l                                          ; $7a0f: $55
	sub l                                            ; $7a10: $95
	ld e, h                                          ; $7a11: $5c
	ld a, [hl]                                       ; $7a12: $7e
	cp [hl]                                          ; $7a13: $be
	ld a, d                                          ; $7a14: $7a
	cp [hl]                                          ; $7a15: $be
	ld a, d                                          ; $7a16: $7a
	cp d                                             ; $7a17: $ba
	ld a, d                                          ; $7a18: $7a
	or e                                             ; $7a19: $b3
	ld b, b                                          ; $7a1a: $40
	ld c, c                                          ; $7a1b: $49
	pop bc                                           ; $7a1c: $c1
	ld c, c                                          ; $7a1d: $49
	ld d, b                                          ; $7a1e: $50
	ret                                              ; $7a1f: $c9


	ld d, c                                          ; $7a20: $51
	rst AddAOntoHL                                          ; $7a21: $ef
	cp a                                             ; $7a22: $bf
	or [hl]                                          ; $7a23: $b6
	ld a, $b6                                        ; $7a24: $3e $b6
	xor a                                            ; $7a26: $af
	ld [hl], $ae                                     ; $7a27: $36 $ae
	inc d                                            ; $7a29: $14
	cp l                                             ; $7a2a: $bd
	add b                                            ; $7a2b: $80
	ld a, $bf                                        ; $7a2c: $3e $bf
	ld a, $bd                                        ; $7a2e: $3e $bd
	ccf                                              ; $7a30: $3f
	rst $38                                          ; $7a31: $ff
	ccf                                              ; $7a32: $3f
	ld [hl], d                                       ; $7a33: $72
	pop af                                           ; $7a34: $f1
	ld [hl], b                                       ; $7a35: $70
	pop af                                           ; $7a36: $f1
	ld [hl], d                                       ; $7a37: $72
	ldh a, [rSVBK]                                   ; $7a38: $f0 $70
	ldh a, [$35]                                     ; $7a3a: $f0 $35
	cp e                                             ; $7a3c: $bb
	dec h                                            ; $7a3d: $25
	xor d                                            ; $7a3e: $aa
	daa                                              ; $7a3f: $27
	xor e                                            ; $7a40: $ab
	dec [hl]                                         ; $7a41: $35
	and e                                            ; $7a42: $a3
	ld a, [$fa74]                                    ; $7a43: $fa $74 $fa
	ld [hl], l                                       ; $7a46: $75
	ld hl, sp+$74                                    ; $7a47: $f8 $74
	ld [$957c], a                                    ; $7a49: $ea $7c $95
	ld d, l                                          ; $7a4c: $55
	ld e, e                                          ; $7a4d: $5b
	ld d, l                                          ; $7a4e: $55
	ld e, e                                          ; $7a4f: $5b
	ld d, h                                          ; $7a50: $54
	ld e, e                                          ; $7a51: $5b
	ld d, l                                          ; $7a52: $55
	ld e, d                                          ; $7a53: $5a
	db $eb                                           ; $7a54: $eb
	push hl                                          ; $7a55: $e5
	ld l, a                                          ; $7a56: $6f
	cp $82                                           ; $7a57: $fe $82
	ld a, [bc]                                       ; $7a59: $0a
	sbc d                                            ; $7a5a: $9a
	ld [$289a], sp                                   ; $7a5b: $08 $9a $28
	adc d                                            ; $7a5e: $8a
	jr z, jr_048_79eb                                ; $7a5f: $28 $8a

	db $fd                                           ; $7a61: $fd
	ld l, l                                          ; $7a62: $6d
	rst $38                                          ; $7a63: $ff
	ld l, l                                          ; $7a64: $6d
	rst SubAFromDE                                          ; $7a65: $df
	ld a, l                                          ; $7a66: $7d
	rst SubAFromDE                                          ; $7a67: $df
	ld a, l                                          ; $7a68: $7d
	ld a, a                                          ; $7a69: $7f
	ld l, e                                          ; $7a6a: $6b
	dec sp                                           ; $7a6b: $3b
	ld l, e                                          ; $7a6c: $6b
	ld a, a                                          ; $7a6d: $7f
	ld l, e                                          ; $7a6e: $6b
	ld a, a                                          ; $7a6f: $7f
	ld h, e                                          ; $7a70: $63
	adc e                                            ; $7a71: $8b
	sbc a                                            ; $7a72: $9f
	rst GetHLinHL                                          ; $7a73: $cf
	sbc a                                            ; $7a74: $9f
	adc e                                            ; $7a75: $8b
	ld a, e                                          ; $7a76: $7b
	cp $86                                           ; $7a77: $fe $86
	or $ee                                           ; $7a79: $f6 $ee
	sub $e2                                          ; $7a7b: $d6 $e2
	di                                               ; $7a7d: $f3
	ldh [c], a                                       ; $7a7e: $e2
	di                                               ; $7a7f: $f3
	or $0f                                           ; $7a80: $f6 $0f
	rla                                              ; $7a82: $17
	cpl                                              ; $7a83: $2f
	rla                                              ; $7a84: $17
	ld b, $17                                        ; $7a85: $06 $17
	ld b, $07                                        ; $7a87: $06 $07
	ld l, e                                          ; $7a89: $6b
	sbc $6b                                          ; $7a8a: $de $6b
	sub $53                                          ; $7a8c: $d6 $53
	rst SubAFromHL                                          ; $7a8e: $d7
	ld d, c                                          ; $7a8f: $51
	ld d, [hl]                                       ; $7a90: $56
	sub $7a                                          ; $7a91: $d6 $7a
	call nz, $e699                                   ; $7a93: $c4 $99 $e6
	ld h, d                                          ; $7a96: $62
	and $e3                                          ; $7a97: $e6 $e3
	dec a                                            ; $7a99: $3d
	xor c                                            ; $7a9a: $a9
	ld l, a                                          ; $7a9b: $6f
	cp $9d                                           ; $7a9c: $fe $9d
	db $e3                                           ; $7a9e: $e3
	ld [hl], a                                       ; $7a9f: $77
	ld l, a                                          ; $7aa0: $6f
	cp $82                                           ; $7aa1: $fe $82
	db $f4                                           ; $7aa3: $f4
	ld a, d                                          ; $7aa4: $7a
	db $fc                                           ; $7aa5: $fc
	ld a, d                                          ; $7aa6: $7a
	db $fc                                           ; $7aa7: $fc
	ld l, d                                          ; $7aa8: $6a
	cp h                                             ; $7aa9: $bc
	ld [hl+], a                                      ; $7aaa: $22
	dec bc                                           ; $7aab: $0b
	add l                                            ; $7aac: $85
	inc bc                                           ; $7aad: $03
	add l                                            ; $7aae: $85
	inc bc                                           ; $7aaf: $03
	sub l                                            ; $7ab0: $95
	inc bc                                           ; $7ab1: $03
	sub l                                            ; $7ab2: $95
	ld e, c                                          ; $7ab3: $59
	xor c                                            ; $7ab4: $a9
	ld c, c                                          ; $7ab5: $49
	add hl, hl                                       ; $7ab6: $29
	ld sp, hl                                        ; $7ab7: $f9
	xor c                                            ; $7ab8: $a9
	ld sp, hl                                        ; $7ab9: $f9
	xor e                                            ; $7aba: $ab
	xor a                                            ; $7abb: $af
	ld e, a                                          ; $7abc: $5f
	cp a                                             ; $7abd: $bf
	rst SubAFromDE                                          ; $7abe: $df
	adc a                                            ; $7abf: $8f
	ld a, e                                          ; $7ac0: $7b
	cp $8a                                           ; $7ac1: $fe $8a
	jp c, $9a54                                      ; $7ac3: $da $54 $9a

	sub h                                            ; $7ac6: $94
	adc d                                            ; $7ac7: $8a
	sub l                                            ; $7ac8: $95
	adc d                                            ; $7ac9: $8a
	sub h                                            ; $7aca: $94
	ld h, l                                          ; $7acb: $65
	db $eb                                           ; $7acc: $eb
	ld h, l                                          ; $7acd: $65
	ld l, e                                          ; $7ace: $6b
	ld [hl], l                                       ; $7acf: $75
	ld l, d                                          ; $7ad0: $6a
	ld [hl], l                                       ; $7ad1: $75
	ld l, e                                          ; $7ad2: $6b
	sub a                                            ; $7ad3: $97
	ld e, a                                          ; $7ad4: $5f
	dec de                                           ; $7ad5: $1b
	ld e, a                                          ; $7ad6: $5f

Jump_048_7ad7:
	adc a                                            ; $7ad7: $8f
	sbc $07                                          ; $7ad8: $de $07
	sbc h                                            ; $7ada: $9c
	ld c, h                                          ; $7adb: $4c
	adc h                                            ; $7adc: $8c
	call z, $c27a                                    ; $7add: $cc $7a $c2
	rst SubAFromDE                                          ; $7ae0: $df
	call z, $e99c                                    ; $7ae1: $cc $9c $e9
	xor d                                            ; $7ae4: $aa
	ld l, c                                          ; $7ae5: $69
	ld a, e                                          ; $7ae6: $7b
	cp $9a                                           ; $7ae7: $fe $9a
	db $ed                                           ; $7ae9: $ed
	xor d                                            ; $7aea: $aa
	ld [hl], $75                                     ; $7aeb: $36 $75
	or [hl]                                          ; $7aed: $b6
	ld a, e                                          ; $7aee: $7b
	cp $80                                           ; $7aef: $fe $80
	ld [hl-], a                                      ; $7af1: $32
	ld [hl], l                                       ; $7af2: $75
	dec d                                            ; $7af3: $15
	rra                                              ; $7af4: $1f
	dec d                                            ; $7af5: $15
	ld c, c                                          ; $7af6: $49
	ld [hl], l                                       ; $7af7: $75
	ld d, c                                          ; $7af8: $51
	ld [hl], l                                       ; $7af9: $75
	ld d, c                                          ; $7afa: $51
	db $eb                                           ; $7afb: $eb
	pop hl                                           ; $7afc: $e1
	db $eb                                           ; $7afd: $eb
	rst FarCall                                          ; $7afe: $f7
	set 5, a                                         ; $7aff: $cb $ef
	set 5, a                                         ; $7b01: $cb $ef
	ld l, d                                          ; $7b03: $6a
	ld e, e                                          ; $7b04: $5b
	ld l, d                                          ; $7b05: $6a
	ld c, a                                          ; $7b06: $4f
	ld l, d                                          ; $7b07: $6a
	ld c, e                                          ; $7b08: $4b
	ld l, d                                          ; $7b09: $6a
	ld l, e                                          ; $7b0a: $6b
	sbc l                                            ; $7b0b: $9d
	xor h                                            ; $7b0c: $ac
	sbc l                                            ; $7b0d: $9d
	cp b                                             ; $7b0e: $b8
	sbc l                                            ; $7b0f: $9d
	sbc d                                            ; $7b10: $9a
	cp h                                             ; $7b11: $bc
	sbc l                                            ; $7b12: $9d
	sbc h                                            ; $7b13: $9c
	cp l                                             ; $7b14: $bd
	add hl, hl                                       ; $7b15: $29
	ld a, d                                          ; $7b16: $7a
	jp nz, $fc7f                                     ; $7b17: $c2 $7f $fc

	sbc h                                            ; $7b1a: $9c
	jr z, jr_048_7b7f                                ; $7b1b: $28 $62

	or $7a                                           ; $7b1d: $f6 $7a
	jp nz, $fc7f                                     ; $7b1f: $c2 $7f $fc

	adc c                                            ; $7b22: $89
	rst FarCall                                          ; $7b23: $f7

jr_048_7b24:
	rra                                              ; $7b24: $1f
	sbc a                                            ; $7b25: $9f
	ld e, $9f                                        ; $7b26: $1e $9f
	ld e, $83                                        ; $7b28: $1e $83
	rra                                              ; $7b2a: $1f
	sub d                                            ; $7b2b: $92
	ld hl, sp+$78                                    ; $7b2c: $f8 $78
	ld sp, hl                                        ; $7b2e: $f9
	ld a, b                                          ; $7b2f: $78
	ld sp, hl                                        ; $7b30: $f9
	ld a, h                                          ; $7b31: $7c
	ld hl, sp+$7d                                    ; $7b32: $f8 $7d
	xor e                                            ; $7b34: $ab
	daa                                              ; $7b35: $27
	cpl                                              ; $7b36: $2f
	inc a                                            ; $7b37: $3c
	inc h                                            ; $7b38: $24
	sbc $64                                          ; $7b39: $de $64
	sbc h                                            ; $7b3b: $9c
	ld [hl], h                                       ; $7b3c: $74

Jump_048_7b3d:
	ld a, b                                          ; $7b3d: $78
	ld [hl], b                                       ; $7b3e: $70
	call c, $8060                                    ; $7b3f: $dc $60 $80
	push de                                          ; $7b42: $d5
	call c, $d595                                    ; $7b43: $dc $95 $d5
	sub l                                            ; $7b46: $95
	ld b, h                                          ; $7b47: $44
	ld h, h                                          ; $7b48: $64
	ld b, d                                          ; $7b49: $42
	ld a, [hl-]                                      ; $7b4a: $3a
	inc sp                                           ; $7b4b: $33
	ld a, d                                          ; $7b4c: $7a
	ld [hl-], a                                      ; $7b4d: $32
	ld [hl], d                                       ; $7b4e: $72
	ld [hl-], a                                      ; $7b4f: $32
	ld [de], a                                       ; $7b50: $12
	jr nc, jr_048_7b24                               ; $7b51: $30 $d1

	db $eb                                           ; $7b53: $eb
	ld d, c                                          ; $7b54: $51
	jp hl                                            ; $7b55: $e9


	ld de, $00a8                                     ; $7b56: $11 $a8 $00
	inc l                                            ; $7b59: $2c
	ld l, $14                                        ; $7b5a: $2e $14
	xor [hl]                                         ; $7b5c: $ae
	ld d, $ae                                        ; $7b5d: $16 $ae
	ld d, $be                                        ; $7b5f: $16 $be
	sub l                                            ; $7b61: $95
	ld d, $bf                                        ; $7b62: $16 $bf
	ccf                                              ; $7b64: $3f
	xor a                                            ; $7b65: $af
	cpl                                              ; $7b66: $2f
	xor a                                            ; $7b67: $af
	dec l                                            ; $7b68: $2d
	xor h                                            ; $7b69: $ac
	cp b                                             ; $7b6a: $b8
	ld [hl], b                                       ; $7b6b: $70
	ld a, d                                          ; $7b6c: $7a
	call nz, $fe7b                                   ; $7b6d: $c4 $7b $fe
	add b                                            ; $7b70: $80
	ld h, b                                          ; $7b71: $60
	ld h, a                                          ; $7b72: $67
	di                                               ; $7b73: $f3
	ld h, l                                          ; $7b74: $65
	db $eb                                           ; $7b75: $eb
	ld h, a                                          ; $7b76: $67
	xor b                                            ; $7b77: $a8
	ld d, h                                          ; $7b78: $54
	call z, $6cf8                                    ; $7b79: $cc $f8 $6c
	ld a, [$f874]                                    ; $7b7c: $fa $74 $f8

jr_048_7b7f:
	ld [hl], h                                       ; $7b7f: $74
	add sp, $70                                      ; $7b80: $e8 $70
	ld d, h                                          ; $7b82: $54
	ld e, d                                          ; $7b83: $5a
	ld [hl], l                                       ; $7b84: $75
	ld c, [hl]                                       ; $7b85: $4e
	ld h, a                                          ; $7b86: $67
	ld [bc], a                                       ; $7b87: $02
	ld bc, $eb00                                     ; $7b88: $01 $00 $eb
	push hl                                          ; $7b8b: $e5
	jp z, $c0e1                                      ; $7b8c: $ca $e1 $c0

	pop bc                                           ; $7b8f: $c1
	rst SubAFromDE                                          ; $7b90: $df
	ret nz                                           ; $7b91: $c0

	sub h                                            ; $7b92: $94
	ld l, $9b                                        ; $7b93: $2e $9b

Call_048_7b95:
	and a                                            ; $7b95: $a7
	sbc e                                            ; $7b96: $9b
	xor l                                            ; $7b97: $ad
	reti                                             ; $7b98: $d9


	ld a, l                                          ; $7b99: $7d
	ld e, e                                          ; $7b9a: $5b
	reti                                             ; $7b9b: $d9


	ld l, l                                          ; $7b9c: $6d
	ld e, c                                          ; $7b9d: $59

Jump_048_7b9e:
	ld a, e                                          ; $7b9e: $7b
	cp $93                                           ; $7b9f: $fe $93
	ld c, c                                          ; $7ba1: $49
	ld c, l                                          ; $7ba2: $4d
	rst FarCall                                          ; $7ba3: $f7
	inc bc                                           ; $7ba4: $03
	or a                                             ; $7ba5: $b7
	inc bc                                           ; $7ba6: $03
	sub a                                            ; $7ba7: $97
	inc bc                                           ; $7ba8: $03
	rla                                              ; $7ba9: $17
	dec bc                                           ; $7baa: $0b
	dec bc                                           ; $7bab: $0b
	sbc a                                            ; $7bac: $9f
	ld [hl], e                                       ; $7bad: $73
	cp $94                                           ; $7bae: $fe $94
	rla                                              ; $7bb0: $17
	rst SubAFromBC                                          ; $7bb1: $e7
	and $e7                                          ; $7bb2: $e6 $e7
	and [hl]                                         ; $7bb4: $a6
	and e                                            ; $7bb5: $a3
	and d                                            ; $7bb6: $a2
	and e                                            ; $7bb7: $a3
	ld [hl+], a                                      ; $7bb8: $22
	ld b, $07                                        ; $7bb9: $06 $07
	ld l, a                                          ; $7bbb: $6f
	cp $83                                           ; $7bbc: $fe $83
	ld [hl], e                                       ; $7bbe: $73
	sub $53                                          ; $7bbf: $d6 $53
	and $43                                          ; $7bc1: $e6 $43
	rst SubAFromBC                                          ; $7bc3: $e7
	ld b, d                                          ; $7bc4: $42
	add $c6                                          ; $7bc5: $c6 $c6
	ld h, e                                          ; $7bc7: $63
	and $43                                          ; $7bc8: $e6 $43
	and $42                                          ; $7bca: $e6 $42
	and $62                                          ; $7bcc: $e6 $62
	cp l                                             ; $7bce: $bd
	xor c                                            ; $7bcf: $a9

jr_048_7bd0:
	cp l                                             ; $7bd0: $bd
	cp e                                             ; $7bd1: $bb
	cp l                                             ; $7bd2: $bd
	add hl, sp                                       ; $7bd3: $39
	dec a                                            ; $7bd4: $3d
	ld l, e                                          ; $7bd5: $6b
	ld h, e                                          ; $7bd6: $63
	ld [hl], a                                       ; $7bd7: $77
	ld h, e                                          ; $7bd8: $63
	ld h, a                                          ; $7bd9: $67
	ld [hl], a                                       ; $7bda: $77
	cp $87                                           ; $7bdb: $fe $87
	sub l                                            ; $7bdd: $95
	ld [hl+], a                                      ; $7bde: $22
	sub h                                            ; $7bdf: $94
	ld [hl+], a                                      ; $7be0: $22
	add h                                            ; $7be1: $84
	ld [hl+], a                                      ; $7be2: $22
	inc b                                            ; $7be3: $04
	ld [hl+], a                                      ; $7be4: $22
	ld [hl+], a                                      ; $7be5: $22
	sub l                                            ; $7be6: $95
	inc hl                                           ; $7be7: $23
	add l                                            ; $7be8: $85
	inc hl                                           ; $7be9: $23
	dec b                                            ; $7bea: $05
	inc bc                                           ; $7beb: $03
	dec b                                            ; $7bec: $05
	ei                                               ; $7bed: $fb
	xor e                                            ; $7bee: $ab
	ei                                               ; $7bef: $fb
	xor e                                            ; $7bf0: $ab
	sub d                                            ; $7bf1: $92
	adc d                                            ; $7bf2: $8a
	sbc [hl]                                         ; $7bf3: $9e
	adc d                                            ; $7bf4: $8a
	halt                                             ; $7bf5: $76
	call nz, $8f9e                                   ; $7bf6: $c4 $9e $8f
	ld a, d                                          ; $7bf9: $7a

jr_048_7bfa:
	ld [hl], b                                       ; $7bfa: $70
	adc l                                            ; $7bfb: $8d
	add d                                            ; $7bfc: $82
	sub [hl]                                         ; $7bfd: $96
	adc e                                            ; $7bfe: $8b
	sub d                                            ; $7bff: $92
	add d                                            ; $7c00: $82
	push de                                          ; $7c01: $d5
	add b                                            ; $7c02: $80
	call nc, Call_048_697d                           ; $7c03: $d4 $7d $69
	ld [hl], h                                       ; $7c06: $74
	ld l, l                                          ; $7c07: $6d
	ld a, l                                          ; $7c08: $7d
	jr z, jr_048_7c88                                ; $7c09: $28 $7d

	add hl, hl                                       ; $7c0b: $29
	rlca                                             ; $7c0c: $07
	rlca                                             ; $7c0d: $07
	sbc $47                                          ; $7c0e: $de $47
	sbc h                                            ; $7c10: $9c
	ld c, a                                          ; $7c11: $4f
	ld b, a                                          ; $7c12: $47
	ld c, a                                          ; $7c13: $4f
	call c, $91cc                                    ; $7c14: $dc $cc $91
	call nz, $c4cc                                   ; $7c17: $c4 $cc $c4
	ld l, l                                          ; $7c1a: $6d
	xor d                                            ; $7c1b: $aa
	ld l, l                                          ; $7c1c: $6d
	xor d                                            ; $7c1d: $aa
	db $ed                                           ; $7c1e: $ed
	and d                                            ; $7c1f: $a2
	push hl                                          ; $7c20: $e5

jr_048_7c21:
	or d                                             ; $7c21: $b2
	or d                                             ; $7c22: $b2
	ld [hl], l                                       ; $7c23: $75
	or d                                             ; $7c24: $b2
	ld a, d                                          ; $7c25: $7a
	jp nz, $3299                                     ; $7c26: $c2 $99 $32

	ld h, l                                          ; $7c29: $65
	ld [hl], l                                       ; $7c2a: $75
	ld e, c                                          ; $7c2b: $59
	ld d, l                                          ; $7c2c: $55
	pop de                                           ; $7c2d: $d1
	halt                                             ; $7c2e: $76
	ret nz                                           ; $7c2f: $c0

	sbc h                                            ; $7c30: $9c
	set 4, a                                         ; $7c31: $cb $e7
	db $eb                                           ; $7c33: $eb
	ld a, d                                          ; $7c34: $7a
	jp nz, $c07a                                     ; $7c35: $c2 $7a $c0

	add b                                            ; $7c38: $80
	ld l, e                                          ; $7c39: $6b
	ld l, a                                          ; $7c3a: $6f
	ld l, e                                          ; $7c3b: $6b
	ld l, l                                          ; $7c3c: $6d
	ld a, c                                          ; $7c3d: $79
	jp hl                                            ; $7c3e: $e9


	ld a, c                                          ; $7c3f: $79
	sbc l                                            ; $7c40: $9d
	sbc h                                            ; $7c41: $9c
	sbc b                                            ; $7c42: $98
	sbc h                                            ; $7c43: $9c
	sbc b                                            ; $7c44: $98
	adc b                                            ; $7c45: $88
	jr jr_048_7bd0                                   ; $7c46: $18 $88

	cp l                                             ; $7c48: $bd
	ld a, [hl-]                                      ; $7c49: $3a
	xor l                                            ; $7c4a: $ad
	jr c, jr_048_7bfa                                ; $7c4b: $38 $ad

	ld a, [hl-]                                      ; $7c4d: $3a
	xor a                                            ; $7c4e: $af
	ld a, [hl-]                                      ; $7c4f: $3a
	ld h, d                                          ; $7c50: $62
	push hl                                          ; $7c51: $e5
	ld [hl], d                                       ; $7c52: $72
	rst SubAFromBC                                          ; $7c53: $e7

jr_048_7c54:
	ld [hl], d                                       ; $7c54: $72
	push hl                                          ; $7c55: $e5
	ld [hl], b                                       ; $7c56: $70
	push hl                                          ; $7c57: $e5
	sub a                                            ; $7c58: $97
	rla                                              ; $7c59: $17
	sub a                                            ; $7c5a: $97
	ld d, $97                                        ; $7c5b: $16 $97
	sub $97                                          ; $7c5d: $d6 $97
	call nc, $7695                                   ; $7c5f: $d4 $95 $76
	ret nz                                           ; $7c62: $c0

	sbc [hl]                                         ; $7c63: $9e
	add hl, sp                                       ; $7c64: $39
	ld a, e                                          ; $7c65: $7b
	cp $df                                           ; $7c66: $fe $df
	ld h, b                                          ; $7c68: $60
	sbc h                                            ; $7c69: $9c
	ld b, b                                          ; $7c6a: $40
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	sbc $20                                          ; $7c6d: $de $20
	reti                                             ; $7c6f: $d9


	ld h, b                                          ; $7c70: $60
	ei                                               ; $7c71: $fb
	rst SubAFromDE                                          ; $7c72: $df
	jr nz, jr_048_7c54                               ; $7c73: $20 $df

	ld [hl-], a                                      ; $7c75: $32
	sbc l                                            ; $7c76: $9d
	ld [hl], $26                                     ; $7c77: $36 $26
	db $dd                                           ; $7c79: $dd
	ld h, [hl]                                       ; $7c7a: $66
	sbc l                                            ; $7c7b: $9d
	inc b                                            ; $7c7c: $04
	nop                                              ; $7c7d: $00
	db $db                                           ; $7c7e: $db
	inc b                                            ; $7c7f: $04
	reti                                             ; $7c80: $d9


	ld a, $dc                                        ; $7c81: $3e $dc
	jr nz, jr_048_7c21                               ; $7c83: $20 $9c

	ld h, b                                          ; $7c85: $60
	jr nz, jr_048_7ce8                               ; $7c86: $20 $60

jr_048_7c88:
	ld a, d                                          ; $7c88: $7a
	call nz, Call_048_70dc                           ; $7c89: $c4 $dc $70
	sbc [hl]                                         ; $7c8c: $9e
	nop                                              ; $7c8d: $00
	jp c, $dc40                                      ; $7c8e: $da $40 $dc

	ldh a, [$de]                                     ; $7c91: $f0 $de
	ldh a, [c]                                       ; $7c93: $f2
	ld sp, hl                                        ; $7c94: $f9

jr_048_7c95:
	db $dd                                           ; $7c95: $dd
	ret nz                                           ; $7c96: $c0

jr_048_7c97:
	sbc [hl]                                         ; $7c97: $9e
	call nz, $c6de                                   ; $7c98: $c4 $de $c6
	db $dd                                           ; $7c9b: $dd
	ld c, c                                          ; $7c9c: $49
	db $dd                                           ; $7c9d: $dd
	add hl, bc                                       ; $7c9e: $09
	db $dd                                           ; $7c9f: $dd
	ld c, l                                          ; $7ca0: $4d
	db $dd                                           ; $7ca1: $dd
	ld e, l                                          ; $7ca2: $5d
	call c, $de03                                    ; $7ca3: $dc $03 $de
	inc de                                           ; $7ca6: $13
	reti                                             ; $7ca7: $d9


	rra                                              ; $7ca8: $1f
	db $dd                                           ; $7ca9: $dd
	ld [bc], a                                       ; $7caa: $02
	sbc [hl]                                         ; $7cab: $9e
	ld b, $fe                                        ; $7cac: $06 $fe
	rst SubAFromDE                                          ; $7cae: $df
	rlca                                             ; $7caf: $07
	db $db                                           ; $7cb0: $db
	ld b, $9b                                        ; $7cb1: $06 $9b
	ld b, d                                          ; $7cb3: $42
	ld [bc], a                                       ; $7cb4: $02
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	sbc $02                                          ; $7cb7: $de $02
	sbc [hl]                                         ; $7cb9: $9e
	nop                                              ; $7cba: $00
	call c, $dee6                                    ; $7cbb: $dc $e6 $de
	add $9c                                          ; $7cbe: $c6 $9c
	ld h, c                                          ; $7cc0: $61
	ld bc, $7300                                     ; $7cc1: $01 $00 $73
	sbc l                                            ; $7cc4: $9d
	reti                                             ; $7cc5: $d9


	ld h, a                                          ; $7cc6: $67
	ld sp, hl                                        ; $7cc7: $f9
	jp c, $9e07                                      ; $7cc8: $da $07 $9e

	daa                                              ; $7ccb: $27
	jp c, $9e0a                                      ; $7ccc: $da $0a $9e

	ld [bc], a                                       ; $7ccf: $02
	reti                                             ; $7cd0: $d9


	sbc a                                            ; $7cd1: $9f
	ld sp, hl                                        ; $7cd2: $f9
	db $db                                           ; $7cd3: $db
	ld a, l                                          ; $7cd4: $7d
	rst SubAFromDE                                          ; $7cd5: $df
	ld e, l                                          ; $7cd6: $5d
	sbc [hl]                                         ; $7cd7: $9e
	ld b, h                                          ; $7cd8: $44
	sbc $04                                          ; $7cd9: $de $04
	db $fd                                           ; $7cdb: $fd
	reti                                             ; $7cdc: $d9


	call z, $20d9                                    ; $7cdd: $cc $d9 $20
	rst SubAFromDE                                          ; $7ce0: $df
	rst FarCall                                          ; $7ce1: $f7
	db $db                                           ; $7ce2: $db
	db $e3                                           ; $7ce3: $e3
	sbc d                                            ; $7ce4: $9a
	push af                                          ; $7ce5: $f5
	pop bc                                           ; $7ce6: $c1
	push hl                                          ; $7ce7: $e5

jr_048_7ce8:
	pop bc                                           ; $7ce8: $c1
	push bc                                          ; $7ce9: $c5
	ld a, e                                          ; $7cea: $7b
	cp $7a                                           ; $7ceb: $fe $7a
	call nz, $cf9e                                   ; $7ced: $c4 $9e $cf
	ld [hl], a                                       ; $7cf0: $77
	cp $80                                           ; $7cf1: $fe $80
	xor c                                            ; $7cf3: $a9
	add hl, hl                                       ; $7cf4: $29
	sbc b                                            ; $7cf5: $98
	jr z, @+$22                                      ; $7cf6: $28 $20

	jr z, @-$5e                                      ; $7cf8: $28 $a0

	db $10                                           ; $7cfa: $10
	jr jr_048_7c95                                   ; $7cfb: $18 $98

	jr z, jr_048_7c97                                ; $7cfd: $28 $98

Call_048_7cff:
	jr @-$66                                         ; $7cff: $18 $98

	jr @-$76                                         ; $7d01: $18 $88

	xor h                                            ; $7d03: $ac
	ld a, [hl-]                                      ; $7d04: $3a
	xor h                                            ; $7d05: $ac
	ld a, [hl-]                                      ; $7d06: $3a
	cp h                                             ; $7d07: $bc
	jr nc, @-$46                                     ; $7d08: $30 $b8

	ld [hl], d                                       ; $7d0a: $72
	ld [hl], d                                       ; $7d0b: $72
	db $e4                                           ; $7d0c: $e4
	ld [hl], d                                       ; $7d0d: $72
	db $e4                                           ; $7d0e: $e4
	ld h, d                                          ; $7d0f: $62
	db $e4                                           ; $7d10: $e4
	ld h, d                                          ; $7d11: $62
	sub c                                            ; $7d12: $91
	ldh [rAUD1LEN], a                                ; $7d13: $e0 $11
	ld d, c                                          ; $7d15: $51
	ld sp, $3050                                     ; $7d16: $31 $50 $30
	ld d, b                                          ; $7d19: $50
	db $10                                           ; $7d1a: $10
	db $10                                           ; $7d1b: $10
	ld a, b                                          ; $7d1c: $78
	jr c, jr_048_7d77                                ; $7d1d: $38 $58

	jr c, jr_048_7d79                                ; $7d1f: $38 $58

	sbc $18                                          ; $7d21: $de $18
	jp c, $9e20                                      ; $7d23: $da $20 $9e

	nop                                              ; $7d26: $00
	sbc $60                                          ; $7d27: $de $60
	sbc $70                                          ; $7d29: $de $70
	rst SubAFromDE                                          ; $7d2b: $df
	ld a, h                                          ; $7d2c: $7c
	ld [hl], a                                       ; $7d2d: $77
	db $f4                                           ; $7d2e: $f4
	ld a, [hl]                                       ; $7d2f: $7e
	pop bc                                           ; $7d30: $c1
	rst $38                                          ; $7d31: $ff
	sbc $66                                          ; $7d32: $de $66
	db $dd                                           ; $7d34: $dd
	or $9e                                           ; $7d35: $f6 $9e
	cp $73                                           ; $7d37: $fe $73
	add e                                            ; $7d39: $83
	cp $dd                                           ; $7d3a: $fe $dd
	ld a, $9b                                        ; $7d3c: $3e $9b
	cp [hl]                                          ; $7d3e: $be
	cp a                                             ; $7d3f: $bf
	cp a                                             ; $7d40: $bf
	rst $38                                          ; $7d41: $ff
	reti                                             ; $7d42: $d9


	jr nz, @-$1f                                     ; $7d43: $20 $df

	ldh a, [$9d]                                     ; $7d45: $f0 $9d
	ldh [$e2], a                                     ; $7d47: $e0 $e2
	db $dd                                           ; $7d49: $dd
	and $d9                                          ; $7d4a: $e6 $d9
	ld b, b                                          ; $7d4c: $40
	sbc $f2                                          ; $7d4d: $de $f2
	ld a, e                                          ; $7d4f: $7b
	jp nc, $f699                                     ; $7d50: $d2 $99 $f6

	rst FarCall                                          ; $7d53: $f7
	add b                                            ; $7d54: $80
	add b                                            ; $7d55: $80
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	sbc $80                                          ; $7d58: $de $80
	sbc d                                            ; $7d5a: $9a
	ret nz                                           ; $7d5b: $c0

	add $c7                                          ; $7d5c: $c6 $c7
	rst JumpTable                                          ; $7d5e: $c7
	rst SubAFromBC                                          ; $7d5f: $e7
	db $dd                                           ; $7d60: $dd
	rst AddAOntoHL                                          ; $7d61: $ef
	reti                                             ; $7d62: $d9


	add hl, bc                                       ; $7d63: $09
	db $db                                           ; $7d64: $db
	ld e, l                                          ; $7d65: $5d
	rst SubAFromDE                                          ; $7d66: $df
	db $dd                                           ; $7d67: $dd
	rst SubAFromDE                                          ; $7d68: $df
	inc de                                           ; $7d69: $13
	db $db                                           ; $7d6a: $db
	ld [de], a                                       ; $7d6b: $12
	rst SubAFromDE                                          ; $7d6c: $df
	sbc a                                            ; $7d6d: $9f
	db $db                                           ; $7d6e: $db
	sub a                                            ; $7d6f: $97
	ld sp, hl                                        ; $7d70: $f9
	call c, $de06                                    ; $7d71: $dc $06 $de
	ld d, $fe                                        ; $7d74: $16 $fe
	db $dd                                           ; $7d76: $dd

jr_048_7d77:
	ld b, h                                          ; $7d77: $44
	sbc l                                            ; $7d78: $9d

jr_048_7d79:
	ld b, b                                          ; $7d79: $40
	ld b, [hl]                                       ; $7d7a: $46
	jp c, $da66                                      ; $7d7b: $da $66 $da

	ld b, b                                          ; $7d7e: $40
	sbc [hl]                                         ; $7d7f: $9e
	ld b, h                                          ; $7d80: $44
	ld e, d                                          ; $7d81: $5a
	ret nz                                           ; $7d82: $c0

	call c, $dd20                                    ; $7d83: $dc $20 $dd
	daa                                              ; $7d86: $27
	db $dd                                           ; $7d87: $dd
	ld h, $76                                        ; $7d88: $26 $76
	call nz, $fe7b                                   ; $7d8a: $c4 $7b $fe
	sbc [hl]                                         ; $7d8d: $9e
	add d                                            ; $7d8e: $82
	reti                                             ; $7d8f: $d9


	sbc e                                            ; $7d90: $9b
	ld sp, hl                                        ; $7d91: $f9
	rst SubAFromDE                                          ; $7d92: $df
	ld e, l                                          ; $7d93: $5d
	sbc [hl]                                         ; $7d94: $9e
	ld a, h                                          ; $7d95: $7c
	db $dd                                           ; $7d96: $dd
	ld e, h                                          ; $7d97: $5c
	sbc [hl]                                         ; $7d98: $9e
	ld e, l                                          ; $7d99: $5d
	halt                                             ; $7d9a: $76
	add e                                            ; $7d9b: $83
	ld a, a                                          ; $7d9c: $7f
	db $fc                                           ; $7d9d: $fc
	ld l, d                                          ; $7d9e: $6a
	ret nz                                           ; $7d9f: $c0

	rst SubAFromDE                                          ; $7da0: $df
	db $ec                                           ; $7da1: $ec
	ld a, d                                          ; $7da2: $7a
	ret nz                                           ; $7da3: $c0

	ei                                               ; $7da4: $fb
	db $dd                                           ; $7da5: $dd
	db $e3                                           ; $7da6: $e3
	sbc $e7                                          ; $7da7: $de $e7
	sbc h                                            ; $7da9: $9c
	rst FarCall                                          ; $7daa: $f7
	rst JumpTable                                          ; $7dab: $c7
	rst JumpTable                                          ; $7dac: $c7
	db $dd                                           ; $7dad: $dd
	rst SubAFromHL                                          ; $7dae: $d7
	ld a, h                                          ; $7daf: $7c
	cp d                                             ; $7db0: $ba
	db $db                                           ; $7db1: $db
	res 2, l                                         ; $7db2: $cb $95
	db $db                                           ; $7db4: $db
	res 4, b                                         ; $7db5: $cb $a0
	jr nz, @-$5e                                     ; $7db7: $20 $a0

	nop                                              ; $7db9: $00
	and b                                            ; $7dba: $a0
	jr nz, @-$7e                                     ; $7dbb: $20 $80

	ld h, b                                          ; $7dbd: $60
	ld a, d                                          ; $7dbe: $7a
	call nz, $fe77                                   ; $7dbf: $c4 $77 $fe
	sub l                                            ; $7dc2: $95
	sbc d                                            ; $7dc3: $9a
	or b                                             ; $7dc4: $b0
	ld [bc], a                                       ; $7dc5: $02
	ldh [$62], a                                     ; $7dc6: $e0 $62
	ldh [$e2], a                                     ; $7dc8: $e0 $e2
	ldh [$60], a                                     ; $7dca: $e0 $60
	ld h, d                                          ; $7dcc: $62
	ld a, e                                          ; $7dcd: $7b
	ld sp, hl                                        ; $7dce: $f9
	sbc [hl]                                         ; $7dcf: $9e
	ld h, d                                          ; $7dd0: $62
	ld a, e                                          ; $7dd1: $7b
	ld a, [$10da]                                    ; $7dd2: $fa $da $10
	sbc [hl]                                         ; $7dd5: $9e
	ld de, $18d9                                     ; $7dd6: $11 $d9 $18
	sub l                                            ; $7dd9: $95
	rst JumpTable                                          ; $7dda: $c7
	pop hl                                           ; $7ddb: $e1
	rst SubAFromBC                                          ; $7ddc: $e7
	db $e3                                           ; $7ddd: $e3
	rst FarCall                                          ; $7dde: $f7
	di                                               ; $7ddf: $f3
	ld [hl], a                                       ; $7de0: $77
	di                                               ; $7de1: $f3
	ld a, b                                          ; $7de2: $78
	ld a, h                                          ; $7de3: $7c
	ld [hl], a                                       ; $7de4: $77
	cp $80                                           ; $7de5: $fe $80
	ld hl, sp+$7c                                    ; $7de7: $f8 $7c
	add e                                            ; $7de9: $83
	ld bc, $45c3                                     ; $7dea: $01 $c3 $45
	rlca                                             ; $7ded: $07
	inc bc                                           ; $7dee: $03
	ld h, [hl]                                       ; $7def: $66
	dec h                                            ; $7df0: $25
	ld a, h                                          ; $7df1: $7c
	cp $7c                                           ; $7df2: $fe $7c
	cp $fc                                           ; $7df4: $fe $fc
	db $fc                                           ; $7df6: $fc
	db $fd                                           ; $7df7: $fd
	cp $81                                           ; $7df8: $fe $81
	ld c, b                                          ; $7dfa: $48
	sub b                                            ; $7dfb: $90
	ld c, b                                          ; $7dfc: $48
	sbc c                                            ; $7dfd: $99
	ld c, h                                          ; $7dfe: $4c
	sbc l                                            ; $7dff: $9d
	inc c                                            ; $7e00: $0c
	ld a, [hl]                                       ; $7e01: $7e
	or a                                             ; $7e02: $b7
	ld l, a                                          ; $7e03: $6f

Jump_048_7e04:
	or a                                             ; $7e04: $b7
	ld h, [hl]                                       ; $7e05: $66
	ld a, a                                          ; $7e06: $7f
	cp $9c                                           ; $7e07: $fe $9c
	rst FarCall                                          ; $7e09: $f7
	dec sp                                           ; $7e0a: $3b
	dec hl                                           ; $7e0b: $2b
	ld a, e                                          ; $7e0c: $7b
	cp $9a                                           ; $7e0d: $fe $9a
	xor e                                            ; $7e0f: $ab
	inc sp                                           ; $7e10: $33
	dec hl                                           ; $7e11: $2b
	db $e4                                           ; $7e12: $e4
	db $f4                                           ; $7e13: $f4
	ld [hl], a                                       ; $7e14: $77
	cp $8c                                           ; $7e15: $fe $8c
	db $ec                                           ; $7e17: $ec
	db $f4                                           ; $7e18: $f4
	ld e, d                                          ; $7e19: $5a
	ret z                                            ; $7e1a: $c8

	ld e, b                                          ; $7e1b: $58
	reti                                             ; $7e1c: $d9


	ld e, c                                          ; $7e1d: $59
	ld e, c                                          ; $7e1e: $59
	ld l, c                                          ; $7e1f: $69
	ld a, d                                          ; $7e20: $7a
	db $e4                                           ; $7e21: $e4
	halt                                             ; $7e22: $76
	rst SubAFromBC                                          ; $7e23: $e7
	ld h, [hl]                                       ; $7e24: $66
	and $e6                                          ; $7e25: $e6 $e6
	or $e7                                           ; $7e27: $f6 $e7
	ld d, b                                          ; $7e29: $50
	db $dd                                           ; $7e2a: $dd
	ld b, b                                          ; $7e2b: $40
	sbc e                                            ; $7e2c: $9b
	ld b, c                                          ; $7e2d: $41
	ld b, d                                          ; $7e2e: $42
	ld b, c                                          ; $7e2f: $41
	rst AddAOntoHL                                          ; $7e30: $ef
	call c, $84ff                                    ; $7e31: $dc $ff $84
	db $fd                                           ; $7e34: $fd
	rst $38                                          ; $7e35: $ff
	rrca                                             ; $7e36: $0f
	xor e                                            ; $7e37: $ab
	dec bc                                           ; $7e38: $0b
	adc e                                            ; $7e39: $8b
	dec bc                                           ; $7e3a: $0b
	add hl, de                                       ; $7e3b: $19
	dec sp                                           ; $7e3c: $3b
	cp c                                             ; $7e3d: $b9
	reti                                             ; $7e3e: $d9


	ld e, l                                          ; $7e3f: $5d
	db $dd                                           ; $7e40: $dd
	ld e, l                                          ; $7e41: $5d
	db $dd                                           ; $7e42: $dd
	rst SubAFromDE                                          ; $7e43: $df
	db $dd                                           ; $7e44: $dd
	ld e, a                                          ; $7e45: $5f
	sbc e                                            ; $7e46: $9b
	ld [hl-], a                                      ; $7e47: $32
	cp e                                             ; $7e48: $bb
	ld a, [hl-]                                      ; $7e49: $3a
	and a                                            ; $7e4a: $a7
	ld a, $97                                        ; $7e4b: $3e $97
	ld a, $16                                        ; $7e4d: $3e $16
	ld a, b                                          ; $7e4f: $78
	ld hl, sp-$78                                    ; $7e50: $f8 $88
	ld e, $97                                        ; $7e52: $1e $97
	ld a, $97                                        ; $7e54: $3e $97
	db $e4                                           ; $7e56: $e4
	ldh [c], a                                       ; $7e57: $e2
	db $f4                                           ; $7e58: $f4
	ldh [$c4], a                                     ; $7e59: $e0 $c4
	ldh [c], a                                       ; $7e5b: $e2
	db $e4                                           ; $7e5c: $e4
	ldh [rAUD1ENV], a                                ; $7e5d: $e0 $12
	inc d                                            ; $7e5f: $14
	ld [bc], a                                       ; $7e60: $02
	ld d, $12                                        ; $7e61: $16 $12
	inc d                                            ; $7e63: $14
	ld [de], a                                       ; $7e64: $12
	ld d, $c4                                        ; $7e65: $16 $c4
	xor $4c                                          ; $7e67: $ee $4c
	ld [hl], e                                       ; $7e69: $73
	cp $9c                                           ; $7e6a: $fe $9c
	ld h, [hl]                                       ; $7e6c: $66
	ld b, h                                          ; $7e6d: $44
	and $73                                          ; $7e6e: $e6 $73
	cp $95                                           ; $7e70: $fe $95
	ld h, l                                          ; $7e72: $65
	ld b, d                                          ; $7e73: $42
	ld h, l                                          ; $7e74: $65
	add $e5                                          ; $7e75: $c6 $e5
	add $e4                                          ; $7e77: $c6 $e4
	add $46                                          ; $7e79: $c6 $46
	ld h, l                                          ; $7e7b: $65
	ld [hl], a                                       ; $7e7c: $77
	cp $92                                           ; $7e7d: $fe $92
	ld b, a                                          ; $7e7f: $47
	ld h, l                                          ; $7e80: $65
	ld hl, $2123                                     ; $7e81: $21 $23 $21
	inc h                                            ; $7e84: $24
	inc h                                            ; $7e85: $24
	ld h, c                                          ; $7e86: $61
	ld l, c                                          ; $7e87: $69
	ld l, c                                          ; $7e88: $69
	ld h, $24                                        ; $7e89: $26 $24

jr_048_7e8b:
	ld h, $dc                                        ; $7e8b: $26 $dc
	inc h                                            ; $7e8d: $24
	sub l                                            ; $7e8e: $95
	sub d                                            ; $7e8f: $92
	jp $c3d2                                         ; $7e90: $c3 $d2 $c3


	ld d, d                                          ; $7e93: $52
	ld b, b                                          ; $7e94: $40
	ld d, d                                          ; $7e95: $52
	ld b, c                                          ; $7e96: $41
	adc e                                            ; $7e97: $8b
	sbc d                                            ; $7e98: $9a
	ld a, e                                          ; $7e99: $7b
	cp $80                                           ; $7e9a: $fe $80
	sbc e                                            ; $7e9c: $9b
	adc e                                            ; $7e9d: $8b
	sbc d                                            ; $7e9e: $9a
	add hl, bc                                       ; $7e9f: $09
	dec d                                            ; $7ea0: $15
	dec b                                            ; $7ea1: $05
	ld bc, $2501                                     ; $7ea2: $01 $01 $25
	ld bc, $5441                                     ; $7ea5: $01 $41 $54
	ld c, b                                          ; $7ea8: $48
	ld e, b                                          ; $7ea9: $58
	ld e, b                                          ; $7eaa: $58
	ld e, h                                          ; $7eab: $5c
	ld e, b                                          ; $7eac: $58
	ld e, h                                          ; $7ead: $5c
	jr jr_048_7eda                                   ; $7eae: $18 $2a

	rst JumpTable                                          ; $7eb0: $c7
	ld l, e                                          ; $7eb1: $6b
	adc $eb                                          ; $7eb2: $ce $eb
	jp z, $ce4b                                      ; $7eb4: $ca $4b $ce

	call nz, $c468                                   ; $7eb7: $c4 $68 $c4
	ld h, c                                          ; $7eba: $61
	ld a, a                                          ; $7ebb: $7f
	or e                                             ; $7ebc: $b3
	adc h                                            ; $7ebd: $8c
	db $e4                                           ; $7ebe: $e4
	ld h, c                                          ; $7ebf: $61
	dec b                                            ; $7ec0: $05
	sub b                                            ; $7ec1: $90
	ld b, l                                          ; $7ec2: $45
	sbc b                                            ; $7ec3: $98
	dec c                                            ; $7ec4: $0d
	sbc b                                            ; $7ec5: $98
	dec l                                            ; $7ec6: $2d
	adc b                                            ; $7ec7: $88
	ldh a, [c]                                       ; $7ec8: $f2
	ld h, a                                          ; $7ec9: $67
	or d                                             ; $7eca: $b2
	ld h, a                                          ; $7ecb: $67
	ldh a, [c]                                       ; $7ecc: $f2
	ld h, a                                          ; $7ecd: $67
	jp nc, $e777                                     ; $7ece: $d2 $77 $e7

	halt                                             ; $7ed1: $76
	cp c                                             ; $7ed2: $b9
	sbc $e6                                          ; $7ed3: $de $e6
	reti                                             ; $7ed5: $d9


	db $db                                           ; $7ed6: $db
	sub d                                            ; $7ed7: $92
	and d                                            ; $7ed8: $a2
	ld h, h                                          ; $7ed9: $64

jr_048_7eda:
	and e                                            ; $7eda: $a3
	ld b, l                                          ; $7edb: $45
	ldh [c], a                                       ; $7edc: $e2
	ld d, l                                          ; $7edd: $55
	sub d                                            ; $7ede: $92
	dec d                                            ; $7edf: $15
	ld e, b                                          ; $7ee0: $58
	sbc d                                            ; $7ee1: $9a
	inc e                                            ; $7ee2: $1c
	sbc d                                            ; $7ee3: $9a
	dec e                                            ; $7ee4: $1d
	ld a, e                                          ; $7ee5: $7b
	cp $7a                                           ; $7ee6: $fe $7a
	ret                                              ; $7ee8: $c9


	sbc [hl]                                         ; $7ee9: $9e
	ld h, [hl]                                       ; $7eea: $66
	ld a, c                                          ; $7eeb: $79
	add a                                            ; $7eec: $87
	ld l, [hl]                                       ; $7eed: $6e
	ret nz                                           ; $7eee: $c0

	ld a, a                                          ; $7eef: $7f
	rst FarCall                                          ; $7ef0: $f7
	add b                                            ; $7ef1: $80
	and $10                                          ; $7ef2: $e6 $10
	ld de, $1110                                     ; $7ef4: $11 $10 $11
	jr nc, jr_048_7f4a                               ; $7ef7: $30 $51

	ld a, [hl-]                                      ; $7ef9: $3a
	ld d, e                                          ; $7efa: $53
	add hl, de                                       ; $7efb: $19
	jr @+$1b                                         ; $7efc: $18 $19

	jr c, jr_048_7f19                                ; $7efe: $38 $19

	jr c, jr_048_7f53                                ; $7f00: $38 $51

	jr c, jr_048_7e8b                                ; $7f02: $38 $87

	inc de                                           ; $7f04: $13
	add a                                            ; $7f05: $87
	ld b, e                                          ; $7f06: $43
	rst SubAFromBC                                          ; $7f07: $e7
	db $e3                                           ; $7f08: $e3
	ld h, a                                          ; $7f09: $67
	ld b, e                                          ; $7f0a: $43
	ld a, b                                          ; $7f0b: $78
	db $ec                                           ; $7f0c: $ec

jr_048_7f0d:
	ld a, b                                          ; $7f0d: $78
	inc a                                            ; $7f0e: $3c
	jr c, jr_048_7f0d                                ; $7f0f: $38 $fc

	sub d                                            ; $7f11: $92
	cp b                                             ; $7f12: $b8
	inc a                                            ; $7f13: $3c
	ld h, $25                                        ; $7f14: $26 $25
	ld h, $64                                        ; $7f16: $26 $64
	ld h, [hl]                                       ; $7f18: $66

jr_048_7f19:
	ld l, h                                          ; $7f19: $6c
	ld l, [hl]                                       ; $7f1a: $6e
	ld l, h                                          ; $7f1b: $6c
	db $fd                                           ; $7f1c: $fd
	cp $fd                                           ; $7f1d: $fe $fd
	ld a, e                                          ; $7f1f: $7b
	ld [bc], a                                       ; $7f20: $02
	ld a, a                                          ; $7f21: $7f
	cp $82                                           ; $7f22: $fe $82
	sbc h                                            ; $7f24: $9c
	inc l                                            ; $7f25: $2c
	sub h                                            ; $7f26: $94
	inc l                                            ; $7f27: $2c
	inc [hl]                                         ; $7f28: $34
	inc l                                            ; $7f29: $2c
	ld h, $2c                                        ; $7f2a: $26 $2c
	ld h, a                                          ; $7f2c: $67
	rst FarCall                                          ; $7f2d: $f7
	ld l, a                                          ; $7f2e: $6f
	rst FarCall                                          ; $7f2f: $f7
	rst AddAOntoHL                                          ; $7f30: $ef
	rst FarCall                                          ; $7f31: $f7
	rst $38                                          ; $7f32: $ff
	rst FarCall                                          ; $7f33: $f7
	dec de                                           ; $7f34: $1b
	dec d                                            ; $7f35: $15
	ld [$7f1c], sp                                   ; $7f36: $08 $1c $7f
	ld a, a                                          ; $7f39: $7f
	rst $38                                          ; $7f3a: $ff
	ld a, a                                          ; $7f3b: $7f
	db $e4                                           ; $7f3c: $e4
	ld [$e0f0], a                                    ; $7f3d: $ea $f0 $e0
	rst SubAFromDE                                          ; $7f40: $df
	sbc $ff                                          ; $7f41: $de $ff
	rst SubAFromDE                                          ; $7f43: $df

Call_048_7f44:
	add hl, de                                       ; $7f44: $19
	adc c                                            ; $7f45: $89
	add hl, hl                                       ; $7f46: $29
	add hl, de                                       ; $7f47: $19
	and l                                            ; $7f48: $a5
	db $ed                                           ; $7f49: $ed

jr_048_7f4a:
	db $fd                                           ; $7f4a: $fd
	ld hl, sp-$1a                                    ; $7f4b: $f8 $e6
	and $16                                          ; $7f4d: $e6 $16
	ld c, $4e                                        ; $7f4f: $0e $4e
	or $fe                                           ; $7f51: $f6 $fe

jr_048_7f53:
	rst $38                                          ; $7f53: $ff
	pop bc                                           ; $7f54: $c1
	ld b, c                                          ; $7f55: $41
	ld b, c                                          ; $7f56: $41
	ld b, l                                          ; $7f57: $45
	ld c, c                                          ; $7f58: $49
	ld c, l                                          ; $7f59: $4d
	ret                                              ; $7f5a: $c9


	call $ffde                                       ; $7f5b: $cd $de $ff
	sbc [hl]                                         ; $7f5e: $9e
	ei                                               ; $7f5f: $fb
	ld [hl], a                                       ; $7f60: $77
	cp $80                                           ; $7f61: $fe $80
	ld a, e                                          ; $7f63: $7b
	ld a, l                                          ; $7f64: $7d
	ld e, e                                          ; $7f65: $5b
	ld l, c                                          ; $7f66: $69
	reti                                             ; $7f67: $d9


	ld a, c                                          ; $7f68: $79
	ld e, c                                          ; $7f69: $59
	db $dd                                           ; $7f6a: $dd
	db $dd                                           ; $7f6b: $dd
	db $db                                           ; $7f6c: $db
	db $fd                                           ; $7f6d: $fd
	rst SubAFromDE                                          ; $7f6e: $df
	ld a, a                                          ; $7f6f: $7f
	rst SubAFromDE                                          ; $7f70: $df
	rst $38                                          ; $7f71: $ff
	ld a, e                                          ; $7f72: $7b
	sub a                                            ; $7f73: $97
	ld a, $17                                        ; $7f74: $3e $17
	ld a, $17                                        ; $7f76: $3e $17
	cp $57                                           ; $7f78: $fe $57
	cp $3e                                           ; $7f7a: $fe $3e
	sub a                                            ; $7f7c: $97
	cp [hl]                                          ; $7f7d: $be
	sub a                                            ; $7f7e: $97
	cp [hl]                                          ; $7f7f: $be
	rla                                              ; $7f80: $17
	cp [hl]                                          ; $7f81: $be
	sbc e                                            ; $7f82: $9b
	scf                                              ; $7f83: $37
	jp nz, $d2e4                                     ; $7f84: $c2 $e4 $d2

	sbc $f4                                          ; $7f87: $de $f4
	sbc d                                            ; $7f89: $9a
	db $fc                                           ; $7f8a: $fc
	call c, $1614                                    ; $7f8b: $dc $14 $16
	inc d                                            ; $7f8e: $14
	db $dd                                           ; $7f8f: $dd
	ld d, $81                                        ; $7f90: $16 $81
	ld [hl], $04                                     ; $7f92: $36 $04
	xor $44                                          ; $7f94: $ee $44
	rst AddAOntoHL                                          ; $7f96: $ef
	ld b, h                                          ; $7f97: $44
	adc $65                                          ; $7f98: $ce $65
	ld c, a                                          ; $7f9a: $4f
	xor $44                                          ; $7f9b: $ee $44
	db $ec                                           ; $7f9d: $ec

Call_048_7f9e:
	ld b, h                                          ; $7f9e: $44
	xor $64                                          ; $7f9f: $ee $64
	adc $e4                                          ; $7fa1: $ce $e4
	push hl                                          ; $7fa3: $e5
	ld b, h                                          ; $7fa4: $44
	push bc                                          ; $7fa5: $c5
	ld b, h                                          ; $7fa6: $44
	ld h, h                                          ; $7fa7: $64
	ld b, h                                          ; $7fa8: $44
	ld l, h                                          ; $7fa9: $6c
	ld c, h                                          ; $7faa: $4c
	ld b, h                                          ; $7fab: $44
	push hl                                          ; $7fac: $e5
	ld h, h                                          ; $7fad: $64
	push hl                                          ; $7fae: $e5
	push bc                                          ; $7faf: $c5
	ld a, e                                          ; $7fb0: $7b
	cp $86                                           ; $7fb1: $fe $86
	dec l                                            ; $7fb3: $2d
	ld l, l                                          ; $7fb4: $6d
	dec c                                            ; $7fb5: $0d
	inc b                                            ; $7fb6: $04
	dec c                                            ; $7fb7: $0d
	jr nz, @-$3d                                     ; $7fb8: $20 $c1

	ldh a, [$64]                                     ; $7fba: $f0 $64
	inc h                                            ; $7fbc: $24
	ld h, h                                          ; $7fbd: $64
	ld l, l                                          ; $7fbe: $6d
	ld h, h                                          ; $7fbf: $64
	ld c, l                                          ; $7fc0: $4d
	ld l, h                                          ; $7fc1: $6c
	ld c, l                                          ; $7fc2: $4d
	ld d, h                                          ; $7fc3: $54
	call nz, Call_048_4444                           ; $7fc4: $c4 $44 $44
	ld c, a                                          ; $7fc7: $4f
	ld b, d                                          ; $7fc8: $42
	ld b, a                                          ; $7fc9: $47
	ld b, d                                          ; $7fca: $42
	adc e                                            ; $7fcb: $8b
	sbc $9b                                          ; $7fcc: $de $9b
	sub b                                            ; $7fce: $90
	sbc d                                            ; $7fcf: $9a
	sbc a                                            ; $7fd0: $9f
	sbc d                                            ; $7fd1: $9a
	sbc a                                            ; $7fd2: $9f
	sub c                                            ; $7fd3: $91
	ld bc, $3551                                     ; $7fd4: $01 $51 $35
	ld d, c                                          ; $7fd7: $51
	dec d                                            ; $7fd8: $15
	ld d, c                                          ; $7fd9: $51
	sub c                                            ; $7fda: $91
	ld e, b                                          ; $7fdb: $58
	ld e, b                                          ; $7fdc: $58
	inc e                                            ; $7fdd: $1c
	ld [hl], a                                       ; $7fde: $77
	cp $91                                           ; $7fdf: $fe $91
	ld e, h                                          ; $7fe1: $5c
	jp z, $cbce                                      ; $7fe2: $ca $ce $cb

	adc $ef                                          ; $7fe5: $ce $ef
	cp $df                                           ; $7fe7: $fe $df
	cp $65                                           ; $7fe9: $fe $65
	ld h, c                                          ; $7feb: $61
	ld h, h                                          ; $7fec: $64
	ld h, c                                          ; $7fed: $61
	ld h, b                                          ; $7fee: $60
	ld a, e                                          ; $7fef: $7b
	cp $83                                           ; $7ff0: $fe $83
	add hl, bc                                       ; $7ff2: $09
	and d                                            ; $7ff3: $a2
	ld c, l                                          ; $7ff4: $4d
	rla                                              ; $7ff5: $17
	scf                                              ; $7ff6: $37
	ld l, a                                          ; $7ff7: $6f
	ld a, a                                          ; $7ff8: $7f
	ccf                                              ; $7ff9: $3f
	or $5d                                           ; $7ffa: $f6 $5d
	or e                                             ; $7ffc: $b3
	db $e3                                           ; $7ffd: $e3
	rst GetHLinHL                                          ; $7ffe: $cf

Call_048_7fff:
	sbc a                                            ; $7fff: $9f
