; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

	ld [hl], b                                       ; $4000: $70
	inc bc                                           ; $4001: $03
	rst $38                                          ; $4002: $ff
	rst SubAFromDE                                          ; $4003: $df
	dec a                                            ; $4004: $3d
	add b                                            ; $4005: $80
	inc de                                           ; $4006: $13
	rra                                              ; $4007: $1f
	ld sp, hl                                        ; $4008: $f9
	rst $38                                          ; $4009: $ff
	ld b, a                                          ; $400a: $47
	ld a, a                                          ; $400b: $7f
	ld [hl-], a                                      ; $400c: $32
	ccf                                              ; $400d: $3f
	dec h                                            ; $400e: $25
	ccf                                              ; $400f: $3f
	ld b, h                                          ; $4010: $44
	ld a, a                                          ; $4011: $7f
	ld c, h                                          ; $4012: $4c
	ld a, a                                          ; $4013: $7f
	ld c, [hl]                                       ; $4014: $4e
	ld a, e                                          ; $4015: $7b
	ccf                                              ; $4016: $3f
	dec a                                            ; $4017: $3d
	dec l                                            ; $4018: $2d
	ld [hl], $3f                                     ; $4019: $36 $3f
	ld h, $1f                                        ; $401b: $26 $1f
	ld d, $0f                                        ; $401d: $16 $0f

Jump_01b_401f:
	add hl, bc                                       ; $401f: $09
	rlca                                             ; $4020: $07
	inc b                                            ; $4021: $04
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	ret nz                                           ; $4024: $c0

	add b                                            ; $4025: $80
	ret nz                                           ; $4026: $c0

	inc [hl]                                         ; $4027: $34
	db $f4                                           ; $4028: $f4
	adc [hl]                                         ; $4029: $8e
	cp $fc                                           ; $402a: $fe $fc
	db $fc                                           ; $402c: $fc
	adc d                                            ; $402d: $8a
	cp $26                                           ; $402e: $fe $26
	cp $96                                           ; $4030: $fe $96
	cp $d5                                           ; $4032: $fe $d5
	rst $38                                          ; $4034: $ff
	db $fd                                           ; $4035: $fd
	cp a                                             ; $4036: $bf
	ld a, [$de6e]                                    ; $4037: $fa $6e $de
	ld [hl], d                                       ; $403a: $72
	cp $62                                           ; $403b: $fe $62
	db $fc                                           ; $403d: $fc
	ld l, h                                          ; $403e: $6c
	ld hl, sp-$78                                    ; $403f: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $4041: $f0 $10
	rla                                              ; $4043: $17
	rra                                              ; $4044: $1f
	sub h                                            ; $4045: $94
	ld l, $3f                                        ; $4046: $2e $3f
	dec a                                            ; $4048: $3d
	ccf                                              ; $4049: $3f
	ld a, [hl-]                                      ; $404a: $3a
	cpl                                              ; $404b: $2f
	dec e                                            ; $404c: $1d
	rra                                              ; $404d: $1f
	ld a, [bc]                                       ; $404e: $0a
	rrca                                             ; $404f: $0f
	dec c                                            ; $4050: $0d
	sbc $0f                                          ; $4051: $de $0f
	rst SubAFromDE                                          ; $4053: $df
	ld c, $9a                                        ; $4054: $0e $9a
	inc e                                            ; $4056: $1c
	inc d                                            ; $4057: $14
	inc e                                            ; $4058: $1c
	inc e                                            ; $4059: $1c
	inc h                                            ; $405a: $24
	sbc $3c                                          ; $405b: $de $3c
	add h                                            ; $405d: $84
	ld b, h                                          ; $405e: $44
	ld a, h                                          ; $405f: $7c
	rst $38                                          ; $4060: $ff
	rst $38                                          ; $4061: $ff
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	add sp, -$08                                     ; $4064: $e8 $f8
	call nz, $dcfc                                   ; $4066: $c4 $fc $dc
	db $fc                                           ; $4069: $fc
	call c, $fcf4                                    ; $406a: $dc $f4 $fc
	db $e4                                           ; $406d: $e4
	ld hl, sp-$38                                    ; $406e: $f8 $c8
	ld hl, sp-$68                                    ; $4070: $f8 $98
	add sp, -$08                                     ; $4072: $e8 $f8
	ld [hl], b                                       ; $4074: $70
	ld [hl], b                                       ; $4075: $70
	ld a, b                                          ; $4076: $78
	ld c, b                                          ; $4077: $48
	ld a, b                                          ; $4078: $78
	ld [hl], a                                       ; $4079: $77
	db $fd                                           ; $407a: $fd
	sbc d                                            ; $407b: $9a
	ld a, b                                          ; $407c: $78
	ld b, h                                          ; $407d: $44
	ld a, h                                          ; $407e: $7c
	cp $fe                                           ; $407f: $fe $fe
	db $fd                                           ; $4081: $fd
	rst SubAFromDE                                          ; $4082: $df
	inc bc                                           ; $4083: $03
	rst SubAFromDE                                          ; $4084: $df
	ld bc, $0fdf                                     ; $4085: $01 $df $0f
	sub a                                            ; $4088: $97
	inc b                                            ; $4089: $04
	rlca                                             ; $408a: $07
	inc bc                                           ; $408b: $03
	inc bc                                           ; $408c: $03
	ld [bc], a                                       ; $408d: $02
	inc bc                                           ; $408e: $03
	inc b                                            ; $408f: $04
	rlca                                             ; $4090: $07
	ld [hl], a                                       ; $4091: $77
	cp $77                                           ; $4092: $fe $77
	or $7f                                           ; $4094: $f6 $7f
	db $fd                                           ; $4096: $fd
	rst SubAFromDE                                          ; $4097: $df
	ld bc, $dffb                                     ; $4098: $01 $fb $df
	call c, $3389                                    ; $409b: $dc $89 $33
	rst $38                                          ; $409e: $ff
	sbc b                                            ; $409f: $98
	rst $38                                          ; $40a0: $ff
	ld a, a                                          ; $40a1: $7f
	rst $38                                          ; $40a2: $ff
	jr z, @+$01                                      ; $40a3: $28 $ff

	ld d, d                                          ; $40a5: $52
	rst $38                                          ; $40a6: $ff
	ld c, c                                          ; $40a7: $49
	rst $38                                          ; $40a8: $ff
	call $efff                                       ; $40a9: $cd $ff $ef
	cp e                                             ; $40ac: $bb
	rst $38                                          ; $40ad: $ff
	sub $dd                                          ; $40ae: $d6 $dd
	ld h, a                                          ; $40b0: $67
	rst $38                                          ; $40b1: $ff
	ld h, [hl]                                       ; $40b2: $66
	ld a, e                                          ; $40b3: $7b
	cp $9c                                           ; $40b4: $fe $9c
	sbc b                                            ; $40b6: $98

jr_01b_40b7:
	ld l, a                                          ; $40b7: $6f
	ld e, c                                          ; $40b8: $59
	db $fd                                           ; $40b9: $fd
	rst SubAFromDE                                          ; $40ba: $df
	ld b, b                                          ; $40bb: $40
	rst SubAFromDE                                          ; $40bc: $df
	ldh [$df], a                                     ; $40bd: $e0 $df
	ret nz                                           ; $40bf: $c0

	sbc h                                            ; $40c0: $9c
	and b                                            ; $40c1: $a0
	ldh [$60], a                                     ; $40c2: $e0 $60
	ld a, e                                          ; $40c4: $7b
	cp $8f                                           ; $40c5: $fe $8f
	ld d, b                                          ; $40c7: $50
	ldh a, [$d0]                                     ; $40c8: $f0 $d0
	ldh a, [$a0]                                     ; $40ca: $f0 $a0
	ldh [$e0], a                                     ; $40cc: $e0 $e0
	jr nz, jr_01b_40b7                               ; $40ce: $20 $e7

	daa                                              ; $40d0: $27
	db $db                                           ; $40d1: $db
	db $db                                           ; $40d2: $db
	or l                                             ; $40d3: $b5
	or l                                             ; $40d4: $b5
	ld l, e                                          ; $40d5: $6b
	ld l, e                                          ; $40d6: $6b
	ei                                               ; $40d7: $fb
	rst SubAFromDE                                          ; $40d8: $df
	ld a, h                                          ; $40d9: $7c
	rst SubAFromDE                                          ; $40da: $df
	sub $df                                          ; $40db: $d6 $df
	xor e                                            ; $40dd: $ab
	rst SubAFromDE                                          ; $40de: $df
	rst SubAFromHL                                          ; $40df: $d7
	rst SubAFromDE                                          ; $40e0: $df
	xor d                                            ; $40e1: $aa
	rst SubAFromDE                                          ; $40e2: $df
	ld a, h                                          ; $40e3: $7c
	ld sp, hl                                        ; $40e4: $f9
	rst SubAFromDE                                          ; $40e5: $df
	rrca                                             ; $40e6: $0f
	ld l, a                                          ; $40e7: $6f
	ld a, [$158b]                                    ; $40e8: $fa $8b $15
	rra                                              ; $40eb: $1f
	ld e, $1f                                        ; $40ec: $1e $1f
	inc a                                            ; $40ee: $3c
	scf                                              ; $40ef: $37
	ld a, h                                          ; $40f0: $7c
	ld b, a                                          ; $40f1: $47
	rst $38                                          ; $40f2: $ff
	adc a                                            ; $40f3: $8f
	ld hl, sp-$21                                    ; $40f4: $f8 $df
	jr z, @+$31                                      ; $40f6: $28 $2f

	rlca                                             ; $40f8: $07
	rlca                                             ; $40f9: $07
	ld c, $0a                                        ; $40fa: $0e $0a
	ld d, $1a                                        ; $40fc: $16 $1a
	ld h, a                                          ; $40fe: $67
	ld b, d                                          ; $40ff: $42
	ld [hl], a                                       ; $4100: $77
	ld b, b                                          ; $4101: $40
	sub h                                            ; $4102: $94

jr_01b_4103:
	ld e, h                                          ; $4103: $5c
	db $f4                                           ; $4104: $f4
	sbc h                                            ; $4105: $9c
	db $f4                                           ; $4106: $f4
	inc a                                            ; $4107: $3c
	db $e4                                           ; $4108: $e4
	jr c, jr_01b_4103                                ; $4109: $38 $f8

	ret nz                                           ; $410b: $c0

	ret nz                                           ; $410c: $c0

	jr nz, @-$20                                     ; $410d: $20 $de

	ldh [hDisp1_WY], a                                     ; $410f: $e0 $95
	ldh a, [hDisp1_SCY]                                     ; $4111: $f0 $90
	ld [hl], b                                       ; $4113: $70
	ld d, b                                          ; $4114: $50
	jr z, jr_01b_414f                                ; $4115: $28 $38

	inc a                                            ; $4117: $3c
	inc a                                            ; $4118: $3c
	ld [hl+], a                                      ; $4119: $22
	ld a, $6f                                        ; $411a: $3e $6f
	ld b, d                                          ; $411c: $42
	rst AddAOntoHL                                          ; $411d: $ef
	rst SubAFromDE                                          ; $411e: $df
	ld bc, $427f                                     ; $411f: $01 $7f $42
	rst SubAFromDE                                          ; $4122: $df
	rlca                                             ; $4123: $07
	sbc e                                            ; $4124: $9b
	ld [$1f0f], sp                                   ; $4125: $08 $0f $1f
	rra                                              ; $4128: $1f
	db $fd                                           ; $4129: $fd
	rst SubAFromDE                                          ; $412a: $df
	cp $87                                           ; $412b: $fe $87
	and [hl]                                         ; $412d: $a6
	cp $ff                                           ; $412e: $fe $ff
	reti                                             ; $4130: $d9


	ld a, a                                          ; $4131: $7f
	ld b, c                                          ; $4132: $41
	ld a, a                                          ; $4133: $7f
	ld h, a                                          ; $4134: $67
	ld a, h                                          ; $4135: $7c
	ld a, h                                          ; $4136: $7c
	jp nz, $86fe                                     ; $4137: $c2 $fe $86

	cp $ff                                           ; $413a: $fe $ff
	ld sp, hl                                        ; $413c: $f9
	rst AddAOntoHL                                          ; $413d: $ef
	dec l                                            ; $413e: $2d
	push bc                                          ; $413f: $c5
	ld b, a                                          ; $4140: $47
	add a                                            ; $4141: $87
	add a                                            ; $4142: $87
	add h                                            ; $4143: $84
	add a                                            ; $4144: $87
	ld l, a                                          ; $4145: $6f
	and b                                            ; $4146: $a0
	rst SubAFromDE                                          ; $4147: $df
	ld d, [hl]                                       ; $4148: $56
	rst SubAFromDE                                          ; $4149: $df
	ld hl, sp-$21                                    ; $414a: $f8 $df
	ret nz                                           ; $414c: $c0

	rst SubAFromDE                                          ; $414d: $df
	add b                                            ; $414e: $80

jr_01b_414f:
	di                                               ; $414f: $f3
	rst SubAFromDE                                          ; $4150: $df
	add b                                            ; $4151: $80
	sbc l                                            ; $4152: $9d
	ld b, b                                          ; $4153: $40
	ret nz                                           ; $4154: $c0

	ld l, a                                          ; $4155: $6f
	ldh [$eb], a                                     ; $4156: $e0 $eb
	ld e, a                                          ; $4158: $5f
	ldh [$df], a                                     ; $4159: $e0 $df
	rlca                                             ; $415b: $07
	sub e                                            ; $415c: $93
	rrca                                             ; $415d: $0f
	dec bc                                           ; $415e: $0b
	ld e, $16                                        ; $415f: $1e $16
	dec a                                            ; $4161: $3d
	dec [hl]                                         ; $4162: $35
	ld a, $26                                        ; $4163: $3e $26
	dec a                                            ; $4165: $3d
	dec l                                            ; $4166: $2d
	ld a, [hl-]                                      ; $4167: $3a
	ld a, [hl+]                                      ; $4168: $2a
	ld h, e                                          ; $4169: $63
	db $fc                                           ; $416a: $fc
	ld a, a                                          ; $416b: $7f
	ldh a, [$98]                                     ; $416c: $f0 $98
	ld [hl], $1d                                     ; $416e: $36 $1d
	dec e                                            ; $4170: $1d
	rrca                                             ; $4171: $0f
	rrca                                             ; $4172: $0f
	rlca                                             ; $4173: $07
	rlca                                             ; $4174: $07
	ld [hl], a                                       ; $4175: $77
	call nc, $c0df                                   ; $4176: $d4 $df $c0
	halt                                             ; $4179: $76
	sbc $df                                          ; $417a: $de $df
	ld h, b                                          ; $417c: $60
	rst SubAFromDE                                          ; $417d: $df
	or b                                             ; $417e: $b0
	rst SubAFromDE                                          ; $417f: $df
	ld a, b                                          ; $4180: $78
	sub a                                            ; $4181: $97
	cp b                                             ; $4182: $b8
	xor b                                            ; $4183: $a8
	ld a, b                                          ; $4184: $78
	ld l, b                                          ; $4185: $68
	ld hl, sp-$08                                    ; $4186: $f8 $f8
	ld h, b                                          ; $4188: $60
	ld h, b                                          ; $4189: $60
	db $dd                                           ; $418a: $dd
	ret nz                                           ; $418b: $c0

	ld [hl], a                                       ; $418c: $77
	adc d                                            ; $418d: $8a
	rst SubAFromDE                                          ; $418e: $df
	rlca                                             ; $418f: $07
	sbc $03                                          ; $4190: $de $03
	ld a, a                                          ; $4192: $7f
	ld c, a                                          ; $4193: $4f
	ld h, d                                          ; $4194: $62
	sub d                                            ; $4195: $92
	rst FarCall                                          ; $4196: $f7
	ld l, [hl]                                       ; $4197: $6e
	ldh [$df], a                                     ; $4198: $e0 $df
	adc a                                            ; $419a: $8f
	sub d                                            ; $419b: $92
	push de                                          ; $419c: $d5
	rst SubAFromDE                                          ; $419d: $df
	cp $7f                                           ; $419e: $fe $7f
	db $fc                                           ; $41a0: $fc
	daa                                              ; $41a1: $27
	db $fc                                           ; $41a2: $fc
	rst GetHLinHL                                          ; $41a3: $cf
	ccf                                              ; $41a4: $3f
	ccf                                              ; $41a5: $3f
	ld [$110f], sp                                   ; $41a6: $08 $0f $11
	sbc $1f                                          ; $41a9: $de $1f
	sub a                                            ; $41ab: $97
	ld e, $12                                        ; $41ac: $1e $12
	ld a, [bc]                                       ; $41ae: $0a
	ld c, $1e                                        ; $41af: $0e $1e
	ld e, $22                                        ; $41b1: $1e $22
	ld a, $6f                                        ; $41b3: $3e $6f
	add b                                            ; $41b5: $80
	ld a, [hl]                                       ; $41b6: $7e
	sub d                                            ; $41b7: $92
	sub d                                            ; $41b8: $92
	ld c, b                                          ; $41b9: $48
	ld hl, sp-$68                                    ; $41ba: $f8 $98
	ld hl, sp+$7c                                    ; $41bc: $f8 $7c
	db $e4                                           ; $41be: $e4
	db $fc                                           ; $41bf: $fc
	sub h                                            ; $41c0: $94
	ld hl, sp-$78                                    ; $41c1: $f8 $88
	ld [hl], b                                       ; $41c3: $70
	ldh a, [rAUD4LEN]                                ; $41c4: $f0 $20
	ld a, d                                          ; $41c6: $7a
	ld a, [hl]                                       ; $41c7: $7e
	ld a, [hl]                                       ; $41c8: $7e
	sbc $99                                          ; $41c9: $de $99
	ld a, b                                          ; $41cb: $78
	ld e, b                                          ; $41cc: $58
	inc h                                            ; $41cd: $24
	inc a                                            ; $41ce: $3c
	ld [de], a                                       ; $41cf: $12
	ld e, $27                                        ; $41d0: $1e $27
	ld b, b                                          ; $41d2: $40
	rst SubAFromDE                                          ; $41d3: $df
	ld a, b                                          ; $41d4: $78
	rst SubAFromDE                                          ; $41d5: $df
	xor h                                            ; $41d6: $ac
	rst SubAFromDE                                          ; $41d7: $df
	sub $df                                          ; $41d8: $d6 $df
	xor d                                            ; $41da: $aa
	rst SubAFromDE                                          ; $41db: $df
	sub $df                                          ; $41dc: $d6 $df
	ld l, d                                          ; $41de: $6a
	rst SubAFromDE                                          ; $41df: $df
	ccf                                              ; $41e0: $3f
	ld [bc], a                                       ; $41e1: $02
	nop                                              ; $41e2: $00
	ld a, $00                                        ; $41e3: $3e $00
	sbc b                                            ; $41e5: $98
	cp d                                             ; $41e6: $ba
	rst $38                                          ; $41e7: $ff
	jr nc, @+$01                                     ; $41e8: $30 $ff

	ld b, d                                          ; $41ea: $42
	rst $38                                          ; $41eb: $ff
	and l                                            ; $41ec: $a5
	ld a, e                                          ; $41ed: $7b
	db $fc                                           ; $41ee: $fc
	sbc l                                            ; $41ef: $9d
	sbc b                                            ; $41f0: $98
	ld a, a                                          ; $41f1: $7f
	ld [hl+], a                                      ; $41f2: $22
	nop                                              ; $41f3: $00
	ld a, a                                          ; $41f4: $7f
	cp $56                                           ; $41f5: $fe $56
	xor d                                            ; $41f7: $aa
	halt                                             ; $41f8: $76
	nop                                              ; $41f9: $00
	sbc c                                            ; $41fa: $99
	cp e                                             ; $41fb: $bb
	adc e                                            ; $41fc: $8b
	rst $38                                          ; $41fd: $ff
	rst GetHLinHL                                          ; $41fe: $cf
	cp d                                             ; $41ff: $ba
	cp d                                             ; $4200: $ba
	ld b, [hl]                                       ; $4201: $46
	nop                                              ; $4202: $00
	ld l, [hl]                                       ; $4203: $6e
	cp h                                             ; $4204: $bc
	add l                                            ; $4205: $85
	jr @+$21                                         ; $4206: $18 $1f

	daa                                              ; $4208: $27
	jr c, jr_01b_425a                                ; $4209: $38 $4f

	ld [hl], a                                       ; $420b: $77
	ld c, b                                          ; $420c: $48
	ld a, a                                          ; $420d: $7f
	sub l                                            ; $420e: $95
	rst $38                                          ; $420f: $ff
	push hl                                          ; $4210: $e5
	rst $38                                          ; $4211: $ff
	xor l                                            ; $4212: $ad
	cp d                                             ; $4213: $ba
	rra                                              ; $4214: $1f
	ld d, $0b                                        ; $4215: $16 $0b
	ld e, $2f                                        ; $4217: $1e $2f
	ld [hl], $2f                                     ; $4219: $36 $2f
	ld a, $2f                                        ; $421b: $3e $2f
	add hl, sp                                       ; $421d: $39
	scf                                              ; $421e: $37
	inc a                                            ; $421f: $3c
	ld l, a                                          ; $4220: $6f
	ld c, [hl]                                       ; $4221: $4e
	add [hl]                                         ; $4222: $86
	add h                                            ; $4223: $84
	db $fc                                           ; $4224: $fc
	ldh [c], a                                       ; $4225: $e2
	ld e, $f2                                        ; $4226: $1e $f2
	xor $19                                          ; $4228: $ee $19
	rst FarCall                                          ; $422a: $f7
	add hl, hl                                       ; $422b: $29
	rst $38                                          ; $422c: $ff
	dec h                                            ; $422d: $25
	rst $38                                          ; $422e: $ff
	or l                                             ; $422f: $b5
	rst SubAFromDE                                          ; $4230: $df
	ld sp, hl                                        ; $4231: $f9
	ld l, a                                          ; $4232: $6f
	cp l                                             ; $4233: $bd
	ld [hl], a                                       ; $4234: $77
	db $fd                                           ; $4235: $fd
	ld h, a                                          ; $4236: $67
	db $fd                                           ; $4237: $fd
	ld h, a                                          ; $4238: $67
	ld sp, hl                                        ; $4239: $f9
	adc a                                            ; $423a: $8f
	pop af                                           ; $423b: $f1
	ld [hl], d                                       ; $423c: $72
	inc e                                            ; $423d: $1c
	dec de                                           ; $423e: $1b
	ret nz                                           ; $423f: $c0

	sbc [hl]                                         ; $4240: $9e
	dec a                                            ; $4241: $3d
	dec bc                                           ; $4242: $0b
	ret nz                                           ; $4243: $c0

	sbc [hl]                                         ; $4244: $9e
	sbc a                                            ; $4245: $9f
	inc sp                                           ; $4246: $33
	ret nz                                           ; $4247: $c0

	sbc h                                            ; $4248: $9c
	db $10                                           ; $4249: $10
	rrca                                             ; $424a: $0f
	ld d, $7b                                        ; $424b: $16 $7b
	jp nz, $ab7c                                     ; $424d: $c2 $7c $ab

	daa                                              ; $4250: $27
	add b                                            ; $4251: $80
	sbc [hl]                                         ; $4252: $9e
	rrca                                             ; $4253: $0f
	ld a, e                                          ; $4254: $7b
	jp nz, $be7f                                     ; $4255: $c2 $7f $be

	sbc e                                            ; $4258: $9b
	ld d, a                                          ; $4259: $57

jr_01b_425a:
	ld sp, hl                                        ; $425a: $f9
	adc a                                            ; $425b: $8f
	rst $38                                          ; $425c: $ff
	cpl                                              ; $425d: $2f
	ret nz                                           ; $425e: $c0

	sbc h                                            ; $425f: $9c
	ld [de], a                                       ; $4260: $12
	rrca                                             ; $4261: $0f
	db $10                                           ; $4262: $10
	ld a, e                                          ; $4263: $7b
	jp nz, Jump_01b_401f                             ; $4264: $c2 $1f $40

	sbc d                                            ; $4267: $9a
	ld c, a                                          ; $4268: $4f
	db $fd                                           ; $4269: $fd
	rlca                                             ; $426a: $07
	db $fd                                           ; $426b: $fd
	ld d, a                                          ; $426c: $57
	ld l, a                                          ; $426d: $6f
	ld b, b                                          ; $426e: $40
	halt                                             ; $426f: $76
	add d                                            ; $4270: $82
	db $db                                           ; $4271: $db
	ld bc, $383d                                     ; $4272: $01 $3d $38
	halt                                             ; $4275: $76
	sbc $df                                          ; $4276: $de $df
	rst $38                                          ; $4278: $ff
	sub c                                            ; $4279: $91
	ld d, l                                          ; $427a: $55
	rst $38                                          ; $427b: $ff
	add hl, hl                                       ; $427c: $29
	rst $38                                          ; $427d: $ff
	jp rIE                                         ; $427e: $c3 $ff $ff


	ld a, l                                          ; $4281: $7d
	rst JumpTable                                          ; $4282: $c7
	rst $38                                          ; $4283: $ff
	add d                                            ; $4284: $82
	cp $84                                           ; $4285: $fe $84
	db $fc                                           ; $4287: $fc
	sbc $7c                                          ; $4288: $de $7c
	sbc [hl]                                         ; $428a: $9e
	ld d, h                                          ; $428b: $54
	ld [hl], a                                       ; $428c: $77
	db $fd                                           ; $428d: $fd
	rst SubAFromDE                                          ; $428e: $df
	cp $9e                                           ; $428f: $fe $9e
	ld de, $ffde                                     ; $4291: $11 $de $ff
	rst $38                                          ; $4294: $ff
	ld a, d                                          ; $4295: $7a
	sub a                                            ; $4296: $97
	sbc b                                            ; $4297: $98
	ldh [$7e], a                                     ; $4298: $e0 $7e
	cp $eb                                           ; $429a: $fe $eb
	db $eb                                           ; $429c: $eb
	push de                                          ; $429d: $d5
	push de                                          ; $429e: $d5
	ld [hl], h                                       ; $429f: $74
	and b                                            ; $42a0: $a0
	rst SubAFromDE                                          ; $42a1: $df
	ld a, [hl]                                       ; $42a2: $7e
	push af                                          ; $42a3: $f5
	ld [hl], a                                       ; $42a4: $77
	ldh [$99], a                                     ; $42a5: $e0 $99
	rrca                                             ; $42a7: $0f
	add hl, bc                                       ; $42a8: $09
	rrca                                             ; $42a9: $0f
	ld [$0607], sp                                   ; $42aa: $08 $07 $06
	dec [hl]                                         ; $42ad: $35
	and b                                            ; $42ae: $a0
	ld h, a                                          ; $42af: $67
	and b                                            ; $42b0: $a0
	sub h                                            ; $42b1: $94
	push de                                          ; $42b2: $d5
	rst $38                                          ; $42b3: $ff
	xor c                                            ; $42b4: $a9
	rst $38                                          ; $42b5: $ff
	jp $fffe                                         ; $42b6: $c3 $fe $ff


	rst $38                                          ; $42b9: $ff
	ld b, a                                          ; $42ba: $47
	ld a, a                                          ; $42bb: $7f
	add d                                            ; $42bc: $82
	ld a, b                                          ; $42bd: $78
	ldh [rBGP], a                                    ; $42be: $e0 $47
	and b                                            ; $42c0: $a0
	halt                                             ; $42c1: $76
	ld [hl], $7e                                     ; $42c2: $36 $7e
	add hl, hl                                       ; $42c4: $29
	ld a, l                                          ; $42c5: $7d
	ccf                                              ; $42c6: $3f
	ld b, h                                          ; $42c7: $44
	sbc $fd                                          ; $42c8: $de $fd
	rst SubAFromDE                                          ; $42ca: $df
	ldh [$f5], a                                     ; $42cb: $e0 $f5
	rst SubAFromDE                                          ; $42cd: $df
	inc a                                            ; $42ce: $3c
	sub d                                            ; $42cf: $92
	ld a, [hl]                                       ; $42d0: $7e
	ld b, d                                          ; $42d1: $42
	rst $38                                          ; $42d2: $ff
	or c                                             ; $42d3: $b1
	rst $38                                          ; $42d4: $ff
	adc c                                            ; $42d5: $89
	rst $38                                          ; $42d6: $ff
	add l                                            ; $42d7: $85
	rst $38                                          ; $42d8: $ff
	add l                                            ; $42d9: $85
	ld a, [hl]                                       ; $42da: $7e
	ld c, d                                          ; $42db: $4a
	inc a                                            ; $42dc: $3c
	ld [hl], e                                       ; $42dd: $73
	ld b, $fd                                        ; $42de: $06 $fd
	rst SubAFromDE                                          ; $42e0: $df
	inc bc                                           ; $42e1: $03
	sbc b                                            ; $42e2: $98
	inc c                                            ; $42e3: $0c
	rrca                                             ; $42e4: $0f
	db $10                                           ; $42e5: $10
	rra                                              ; $42e6: $1f
	ld hl, $403f                                     ; $42e7: $21 $3f $40
	ld a, b                                          ; $42ea: $78
	ld a, e                                          ; $42eb: $7b
	sbc h                                            ; $42ec: $9c
	add b                                            ; $42ed: $80
	rst $38                                          ; $42ee: $ff
	add c                                            ; $42ef: $81
	ld a, e                                          ; $42f0: $7b
	cp $9b                                           ; $42f1: $fe $9b

jr_01b_42f3:
	ld b, e                                          ; $42f3: $43
	ld a, [hl]                                       ; $42f4: $7e
	ld b, e                                          ; $42f5: $43
	ld a, [hl]                                       ; $42f6: $7e
	ld [hl], a                                       ; $42f7: $77
	ldh a, [$9b]                                     ; $42f8: $f0 $9b
	sbc h                                            ; $42fa: $9c
	rst $38                                          ; $42fb: $ff
	db $e3                                           ; $42fc: $e3
	db $e3                                           ; $42fd: $e3
	ld [hl], h                                       ; $42fe: $74
	ldh [$7d], a                                     ; $42ff: $e0 $7d
	jp z, $1095                                      ; $4301: $ca $95 $10

	ldh a, [$08]                                     ; $4304: $f0 $08
	ld hl, sp+$04                                    ; $4306: $f8 $04
	db $fc                                           ; $4308: $fc
	inc b                                            ; $4309: $04
	db $fc                                           ; $430a: $fc
	ld [bc], a                                       ; $430b: $02
	cp $77                                           ; $430c: $fe $77
	cp $7f                                           ; $430e: $fe $7f
	ld a, [de]                                       ; $4310: $1a
	ld a, a                                          ; $4311: $7f
	cp $7f                                           ; $4312: $fe $7f
	ldh a, [$7f]                                     ; $4314: $f0 $7f
	db $ec                                           ; $4316: $ec
	ld a, a                                          ; $4317: $7f
	add sp, -$21                                     ; $4318: $e8 $df
	add b                                            ; $431a: $80
	ld l, a                                          ; $431b: $6f
	jp nz, $2082                                     ; $431c: $c2 $82 $20

	ccf                                              ; $431f: $3f
	ld b, c                                          ; $4320: $41
	ld a, a                                          ; $4321: $7f
	ld b, e                                          ; $4322: $43
	ld a, [hl]                                       ; $4323: $7e
	add e                                            ; $4324: $83
	cp $87                                           ; $4325: $fe $87
	db $fd                                           ; $4327: $fd
	adc a                                            ; $4328: $8f
	ld a, [$fd87]                                    ; $4329: $fa $87 $fd
	ld b, e                                          ; $432c: $43
	ld a, [hl]                                       ; $432d: $7e
	ld b, c                                          ; $432e: $41
	ld a, a                                          ; $432f: $7f
	jr nz, jr_01b_4371                               ; $4330: $20 $3f

	jr jr_01b_4353                                   ; $4332: $18 $1f

	ld b, $07                                        ; $4334: $06 $07
	ld bc, $c001                                     ; $4336: $01 $01 $c0
	ret nz                                           ; $4339: $c0

	jr nc, jr_01b_43af                               ; $433a: $30 $73

	call nz, Call_01b_448f                           ; $433c: $c4 $8f $44
	db $fc                                           ; $433f: $fc
	ldh [c], a                                       ; $4340: $e2
	cp [hl]                                          ; $4341: $be
	ldh [c], a                                       ; $4342: $e2
	cp [hl]                                          ; $4343: $be
	pop hl                                           ; $4344: $e1
	ccf                                              ; $4345: $3f
	pop hl                                           ; $4346: $e1
	rst $38                                          ; $4347: $ff
	pop hl                                           ; $4348: $e1
	ccf                                              ; $4349: $3f
	ldh [c], a                                       ; $434a: $e2
	ld a, $c2                                        ; $434b: $3e $c2
	cp $77                                           ; $434d: $fe $77
	or h                                             ; $434f: $b4
	sbc e                                            ; $4350: $9b
	add hl, de                                       ; $4351: $19
	rst $38                                          ; $4352: $ff

jr_01b_4353:
	rst SubAFromBC                                          ; $4353: $e7
	rst SubAFromBC                                          ; $4354: $e7
	db $fd                                           ; $4355: $fd
	rst SubAFromDE                                          ; $4356: $df
	jr jr_01b_42f3                                   ; $4357: $18 $9a

	ld [hl], $3e                                     ; $4359: $36 $3e
	ld b, e                                          ; $435b: $43
	ld a, a                                          ; $435c: $7f
	add c                                            ; $435d: $81
	ld a, d                                          ; $435e: $7a
	ret nz                                           ; $435f: $c0

	sbc [hl]                                         ; $4360: $9e
	ld h, l                                          ; $4361: $65
	ld a, e                                          ; $4362: $7b
	ld a, h                                          ; $4363: $7c
	ld a, a                                          ; $4364: $7f
	cp $97                                           ; $4365: $fe $97
	ld [hl-], a                                      ; $4367: $32
	ld a, $0a                                        ; $4368: $3e $0a
	ld c, $05                                        ; $436a: $0e $05
	rlca                                             ; $436c: $07
	ld [bc], a                                       ; $436d: $02
	ld [bc], a                                       ; $436e: $02
	db $fd                                           ; $436f: $fd
	ld c, h                                          ; $4370: $4c

jr_01b_4371:
	inc bc                                           ; $4371: $03
	rst $38                                          ; $4372: $ff
	rst SubAFromDE                                          ; $4373: $df
	dec a                                            ; $4374: $3d
	add b                                            ; $4375: $80
	inc de                                           ; $4376: $13
	rra                                              ; $4377: $1f
	ld sp, hl                                        ; $4378: $f9
	rst $38                                          ; $4379: $ff
	ld b, a                                          ; $437a: $47
	ld a, a                                          ; $437b: $7f
	ld [hl-], a                                      ; $437c: $32
	ccf                                              ; $437d: $3f
	dec h                                            ; $437e: $25
	ccf                                              ; $437f: $3f
	ld b, h                                          ; $4380: $44
	ld a, a                                          ; $4381: $7f
	ld c, h                                          ; $4382: $4c
	ld a, a                                          ; $4383: $7f
	ld c, [hl]                                       ; $4384: $4e
	ld a, e                                          ; $4385: $7b
	ccf                                              ; $4386: $3f
	dec a                                            ; $4387: $3d
	dec l                                            ; $4388: $2d
	ld [hl], $3f                                     ; $4389: $36 $3f
	ld h, $1f                                        ; $438b: $26 $1f
	ld d, $0f                                        ; $438d: $16 $0f
	add hl, bc                                       ; $438f: $09
	rlca                                             ; $4390: $07
	inc b                                            ; $4391: $04
	nop                                              ; $4392: $00
	nop                                              ; $4393: $00
	ret nz                                           ; $4394: $c0

	add b                                            ; $4395: $80
	ret nz                                           ; $4396: $c0

	inc [hl]                                         ; $4397: $34
	db $f4                                           ; $4398: $f4
	adc [hl]                                         ; $4399: $8e
	cp $fc                                           ; $439a: $fe $fc
	db $fc                                           ; $439c: $fc
	adc d                                            ; $439d: $8a
	cp $26                                           ; $439e: $fe $26
	cp $96                                           ; $43a0: $fe $96
	cp $d5                                           ; $43a2: $fe $d5
	rst $38                                          ; $43a4: $ff
	db $fd                                           ; $43a5: $fd
	cp a                                             ; $43a6: $bf
	ld a, [$de6e]                                    ; $43a7: $fa $6e $de
	ld [hl], d                                       ; $43aa: $72
	cp $62                                           ; $43ab: $fe $62
	db $fc                                           ; $43ad: $fc
	ld l, h                                          ; $43ae: $6c

jr_01b_43af:
	ld hl, sp-$78                                    ; $43af: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $43b1: $f0 $10
	rla                                              ; $43b3: $17
	rra                                              ; $43b4: $1f
	sub h                                            ; $43b5: $94
	ld l, $3f                                        ; $43b6: $2e $3f
	dec a                                            ; $43b8: $3d
	ccf                                              ; $43b9: $3f
	ld a, [hl-]                                      ; $43ba: $3a
	cpl                                              ; $43bb: $2f
	dec e                                            ; $43bc: $1d
	rra                                              ; $43bd: $1f
	ld a, [bc]                                       ; $43be: $0a
	rrca                                             ; $43bf: $0f
	dec c                                            ; $43c0: $0d
	sbc $0f                                          ; $43c1: $de $0f
	rst SubAFromDE                                          ; $43c3: $df
	ld c, $9a                                        ; $43c4: $0e $9a
	inc e                                            ; $43c6: $1c
	inc d                                            ; $43c7: $14
	inc e                                            ; $43c8: $1c
	inc e                                            ; $43c9: $1c
	inc h                                            ; $43ca: $24
	sbc $3c                                          ; $43cb: $de $3c
	add h                                            ; $43cd: $84
	ld b, h                                          ; $43ce: $44
	ld a, h                                          ; $43cf: $7c
	rst $38                                          ; $43d0: $ff
	rst $38                                          ; $43d1: $ff
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	add sp, -$08                                     ; $43d4: $e8 $f8
	call nz, $dcfc                                   ; $43d6: $c4 $fc $dc
	db $fc                                           ; $43d9: $fc
	call c, $fcf4                                    ; $43da: $dc $f4 $fc
	db $e4                                           ; $43dd: $e4
	ld hl, sp-$38                                    ; $43de: $f8 $c8
	ld hl, sp-$68                                    ; $43e0: $f8 $98
	add sp, -$08                                     ; $43e2: $e8 $f8
	ld [hl], b                                       ; $43e4: $70
	ld [hl], b                                       ; $43e5: $70
	ld a, b                                          ; $43e6: $78
	ld c, b                                          ; $43e7: $48
	ld a, b                                          ; $43e8: $78
	ld [hl], a                                       ; $43e9: $77
	db $fd                                           ; $43ea: $fd
	sbc d                                            ; $43eb: $9a
	ld a, b                                          ; $43ec: $78
	ld b, h                                          ; $43ed: $44
	ld a, h                                          ; $43ee: $7c
	cp $fe                                           ; $43ef: $fe $fe
	db $fd                                           ; $43f1: $fd
	rst SubAFromDE                                          ; $43f2: $df
	inc bc                                           ; $43f3: $03
	rst SubAFromDE                                          ; $43f4: $df
	ld de, $0fdf                                     ; $43f5: $11 $df $0f
	sub a                                            ; $43f8: $97
	inc b                                            ; $43f9: $04
	rlca                                             ; $43fa: $07
	inc bc                                           ; $43fb: $03
	inc bc                                           ; $43fc: $03
	ld [bc], a                                       ; $43fd: $02
	inc bc                                           ; $43fe: $03
	inc b                                            ; $43ff: $04
	rlca                                             ; $4400: $07
	ld [hl], a                                       ; $4401: $77
	cp $77                                           ; $4402: $fe $77
	or $7f                                           ; $4404: $f6 $7f
	db $fd                                           ; $4406: $fd
	rst SubAFromDE                                          ; $4407: $df
	ld bc, $dffb                                     ; $4408: $01 $fb $df
	call c, $3389                                    ; $440b: $dc $89 $33
	rst $38                                          ; $440e: $ff
	sbc b                                            ; $440f: $98
	rst $38                                          ; $4410: $ff
	ld a, a                                          ; $4411: $7f
	rst $38                                          ; $4412: $ff
	jr z, @+$01                                      ; $4413: $28 $ff

	ld d, d                                          ; $4415: $52
	rst $38                                          ; $4416: $ff
	ld c, c                                          ; $4417: $49
	rst $38                                          ; $4418: $ff
	call $efff                                       ; $4419: $cd $ff $ef
	cp e                                             ; $441c: $bb
	rst $38                                          ; $441d: $ff
	sub $dd                                          ; $441e: $d6 $dd
	ld h, a                                          ; $4420: $67
	rst $38                                          ; $4421: $ff
	ld h, [hl]                                       ; $4422: $66
	ld a, e                                          ; $4423: $7b
	cp $9c                                           ; $4424: $fe $9c
	sbc b                                            ; $4426: $98

jr_01b_4427:
	ld l, a                                          ; $4427: $6f
	ld e, c                                          ; $4428: $59
	db $fd                                           ; $4429: $fd
	rst SubAFromDE                                          ; $442a: $df
	ld b, b                                          ; $442b: $40
	rst SubAFromDE                                          ; $442c: $df
	ldh [$df], a                                     ; $442d: $e0 $df
	ret nz                                           ; $442f: $c0

	sbc h                                            ; $4430: $9c
	and b                                            ; $4431: $a0
	ldh [$60], a                                     ; $4432: $e0 $60
	ld a, e                                          ; $4434: $7b
	cp $8f                                           ; $4435: $fe $8f
	ld d, b                                          ; $4437: $50
	ldh a, [$d0]                                     ; $4438: $f0 $d0
	ldh a, [$a0]                                     ; $443a: $f0 $a0
	ldh [$e0], a                                     ; $443c: $e0 $e0
	jr nz, jr_01b_4427                               ; $443e: $20 $e7

	daa                                              ; $4440: $27
	db $db                                           ; $4441: $db
	db $db                                           ; $4442: $db
	or l                                             ; $4443: $b5
	or l                                             ; $4444: $b5
	ld l, e                                          ; $4445: $6b
	ld l, e                                          ; $4446: $6b
	ei                                               ; $4447: $fb
	rst SubAFromDE                                          ; $4448: $df
	ld a, h                                          ; $4449: $7c
	rst SubAFromDE                                          ; $444a: $df
	sub $df                                          ; $444b: $d6 $df
	xor e                                            ; $444d: $ab
	rst SubAFromDE                                          ; $444e: $df
	rst SubAFromHL                                          ; $444f: $d7
	rst SubAFromDE                                          ; $4450: $df
	xor d                                            ; $4451: $aa
	rst SubAFromDE                                          ; $4452: $df
	ld a, h                                          ; $4453: $7c
	ld sp, hl                                        ; $4454: $f9
	rst SubAFromDE                                          ; $4455: $df
	rrca                                             ; $4456: $0f
	ld l, a                                          ; $4457: $6f
	ld a, [$158b]                                    ; $4458: $fa $8b $15
	rra                                              ; $445b: $1f
	ld e, $1f                                        ; $445c: $1e $1f
	inc a                                            ; $445e: $3c
	scf                                              ; $445f: $37
	ld a, h                                          ; $4460: $7c
	ld b, a                                          ; $4461: $47
	rst $38                                          ; $4462: $ff
	adc a                                            ; $4463: $8f
	ld hl, sp-$21                                    ; $4464: $f8 $df
	jr z, @+$31                                      ; $4466: $28 $2f

	rlca                                             ; $4468: $07
	rlca                                             ; $4469: $07
	ld c, $0a                                        ; $446a: $0e $0a
	ld d, $1a                                        ; $446c: $16 $1a
	ld h, a                                          ; $446e: $67
	ld b, d                                          ; $446f: $42
	ld [hl], a                                       ; $4470: $77
	ld b, b                                          ; $4471: $40
	sub h                                            ; $4472: $94

jr_01b_4473:
	ld e, h                                          ; $4473: $5c
	db $f4                                           ; $4474: $f4
	sbc h                                            ; $4475: $9c
	db $f4                                           ; $4476: $f4
	inc a                                            ; $4477: $3c
	db $e4                                           ; $4478: $e4
	jr c, jr_01b_4473                                ; $4479: $38 $f8

	ret nz                                           ; $447b: $c0

	ret nz                                           ; $447c: $c0

	jr nz, @-$20                                     ; $447d: $20 $de

	ldh [hDisp1_WY], a                                     ; $447f: $e0 $95
	ldh a, [hDisp1_SCY]                                     ; $4481: $f0 $90
	ld [hl], b                                       ; $4483: $70
	ld d, b                                          ; $4484: $50
	jr z, jr_01b_44bf                                ; $4485: $28 $38

	inc a                                            ; $4487: $3c
	inc a                                            ; $4488: $3c
	ld [hl+], a                                      ; $4489: $22
	ld a, $6f                                        ; $448a: $3e $6f
	ld b, d                                          ; $448c: $42
	rst AddAOntoHL                                          ; $448d: $ef
	rst SubAFromDE                                          ; $448e: $df

Call_01b_448f:
	ld bc, $427f                                     ; $448f: $01 $7f $42
	rst SubAFromDE                                          ; $4492: $df
	rlca                                             ; $4493: $07
	sbc e                                            ; $4494: $9b
	ld [$1f0f], sp                                   ; $4495: $08 $0f $1f
	rra                                              ; $4498: $1f
	db $fd                                           ; $4499: $fd
	rst SubAFromDE                                          ; $449a: $df
	cp $87                                           ; $449b: $fe $87
	and [hl]                                         ; $449d: $a6
	cp $ff                                           ; $449e: $fe $ff
	reti                                             ; $44a0: $d9


	ld a, a                                          ; $44a1: $7f
	ld b, c                                          ; $44a2: $41
	ld a, a                                          ; $44a3: $7f
	ld h, a                                          ; $44a4: $67
	ld a, h                                          ; $44a5: $7c
	ld a, h                                          ; $44a6: $7c
	jp nz, $86fe                                     ; $44a7: $c2 $fe $86

	cp $ff                                           ; $44aa: $fe $ff
	ld sp, hl                                        ; $44ac: $f9
	rst AddAOntoHL                                          ; $44ad: $ef
	dec l                                            ; $44ae: $2d
	push bc                                          ; $44af: $c5
	ld b, a                                          ; $44b0: $47
	add a                                            ; $44b1: $87
	add a                                            ; $44b2: $87
	add h                                            ; $44b3: $84
	add a                                            ; $44b4: $87
	ld l, a                                          ; $44b5: $6f
	and b                                            ; $44b6: $a0
	rst SubAFromDE                                          ; $44b7: $df
	ld d, [hl]                                       ; $44b8: $56
	rst SubAFromDE                                          ; $44b9: $df
	ld hl, sp-$21                                    ; $44ba: $f8 $df
	ret nz                                           ; $44bc: $c0

	rst SubAFromDE                                          ; $44bd: $df
	add b                                            ; $44be: $80

jr_01b_44bf:
	di                                               ; $44bf: $f3
	rst SubAFromDE                                          ; $44c0: $df
	add b                                            ; $44c1: $80
	sbc l                                            ; $44c2: $9d
	ld b, b                                          ; $44c3: $40
	ret nz                                           ; $44c4: $c0

	ld l, a                                          ; $44c5: $6f
	ldh [$eb], a                                     ; $44c6: $e0 $eb
	ld e, a                                          ; $44c8: $5f
	ldh [$df], a                                     ; $44c9: $e0 $df
	rlca                                             ; $44cb: $07
	sub e                                            ; $44cc: $93
	rrca                                             ; $44cd: $0f
	dec bc                                           ; $44ce: $0b
	ld e, $16                                        ; $44cf: $1e $16
	dec a                                            ; $44d1: $3d
	dec [hl]                                         ; $44d2: $35
	ld a, $26                                        ; $44d3: $3e $26
	dec a                                            ; $44d5: $3d
	dec l                                            ; $44d6: $2d
	ld a, [hl-]                                      ; $44d7: $3a
	ld a, [hl+]                                      ; $44d8: $2a
	ld h, e                                          ; $44d9: $63
	db $fc                                           ; $44da: $fc
	ld a, a                                          ; $44db: $7f
	ldh a, [$98]                                     ; $44dc: $f0 $98
	ld [hl], $1d                                     ; $44de: $36 $1d
	dec e                                            ; $44e0: $1d
	rrca                                             ; $44e1: $0f
	rrca                                             ; $44e2: $0f
	rlca                                             ; $44e3: $07
	rlca                                             ; $44e4: $07
	ld [hl], a                                       ; $44e5: $77
	call nc, $c0df                                   ; $44e6: $d4 $df $c0
	halt                                             ; $44e9: $76
	sbc $df                                          ; $44ea: $de $df
	ld h, b                                          ; $44ec: $60
	rst SubAFromDE                                          ; $44ed: $df
	or b                                             ; $44ee: $b0
	rst SubAFromDE                                          ; $44ef: $df
	ld a, b                                          ; $44f0: $78
	sub a                                            ; $44f1: $97
	cp b                                             ; $44f2: $b8
	xor b                                            ; $44f3: $a8
	ld a, b                                          ; $44f4: $78
	ld l, b                                          ; $44f5: $68
	ld hl, sp-$08                                    ; $44f6: $f8 $f8
	ld h, b                                          ; $44f8: $60
	ld h, b                                          ; $44f9: $60
	db $dd                                           ; $44fa: $dd
	ret nz                                           ; $44fb: $c0

	ld [hl], a                                       ; $44fc: $77
	adc d                                            ; $44fd: $8a
	rst SubAFromDE                                          ; $44fe: $df
	rlca                                             ; $44ff: $07
	sbc $03                                          ; $4500: $de $03
	ld a, a                                          ; $4502: $7f
	ld c, a                                          ; $4503: $4f
	ld h, d                                          ; $4504: $62
	sub d                                            ; $4505: $92
	rst FarCall                                          ; $4506: $f7
	ld l, [hl]                                       ; $4507: $6e
	ldh [$df], a                                     ; $4508: $e0 $df
	adc a                                            ; $450a: $8f
	sub d                                            ; $450b: $92
	push de                                          ; $450c: $d5
	rst SubAFromDE                                          ; $450d: $df
	cp $7f                                           ; $450e: $fe $7f
	db $fc                                           ; $4510: $fc
	daa                                              ; $4511: $27
	db $fc                                           ; $4512: $fc
	rst GetHLinHL                                          ; $4513: $cf
	ccf                                              ; $4514: $3f
	ccf                                              ; $4515: $3f
	ld [$110f], sp                                   ; $4516: $08 $0f $11
	sbc $1f                                          ; $4519: $de $1f
	sub a                                            ; $451b: $97
	ld e, $12                                        ; $451c: $1e $12
	ld a, [bc]                                       ; $451e: $0a
	ld c, $1e                                        ; $451f: $0e $1e
	ld e, $22                                        ; $4521: $1e $22
	ld a, $6f                                        ; $4523: $3e $6f
	add b                                            ; $4525: $80
	ld a, [hl]                                       ; $4526: $7e
	sub d                                            ; $4527: $92
	sub d                                            ; $4528: $92
	ld c, b                                          ; $4529: $48
	ld hl, sp-$68                                    ; $452a: $f8 $98
	ld hl, sp+$7c                                    ; $452c: $f8 $7c
	db $e4                                           ; $452e: $e4
	db $fc                                           ; $452f: $fc
	sub h                                            ; $4530: $94
	ld hl, sp-$78                                    ; $4531: $f8 $88
	ld [hl], b                                       ; $4533: $70
	ldh a, [rAUD4LEN]                                ; $4534: $f0 $20
	ld a, d                                          ; $4536: $7a
	ld a, [hl]                                       ; $4537: $7e
	ld a, [hl]                                       ; $4538: $7e
	sbc $99                                          ; $4539: $de $99
	ld a, b                                          ; $453b: $78
	ld e, b                                          ; $453c: $58
	inc h                                            ; $453d: $24
	inc a                                            ; $453e: $3c
	ld [de], a                                       ; $453f: $12
	ld e, $27                                        ; $4540: $1e $27
	ld b, b                                          ; $4542: $40
	rst SubAFromDE                                          ; $4543: $df
	ld a, b                                          ; $4544: $78
	rst SubAFromDE                                          ; $4545: $df
	xor h                                            ; $4546: $ac
	rst SubAFromDE                                          ; $4547: $df
	sub $df                                          ; $4548: $d6 $df
	xor d                                            ; $454a: $aa
	rst SubAFromDE                                          ; $454b: $df
	sub $df                                          ; $454c: $d6 $df
	ld l, d                                          ; $454e: $6a
	rst SubAFromDE                                          ; $454f: $df
	ccf                                              ; $4550: $3f
	ld [bc], a                                       ; $4551: $02
	nop                                              ; $4552: $00
	ld a, $00                                        ; $4553: $3e $00
	sbc b                                            ; $4555: $98
	cp d                                             ; $4556: $ba
	rst $38                                          ; $4557: $ff
	jr nc, @+$01                                     ; $4558: $30 $ff

	ld b, d                                          ; $455a: $42
	rst $38                                          ; $455b: $ff
	and l                                            ; $455c: $a5
	ld a, e                                          ; $455d: $7b
	db $fc                                           ; $455e: $fc
	sbc l                                            ; $455f: $9d
	sbc b                                            ; $4560: $98
	ld a, a                                          ; $4561: $7f
	ld [hl+], a                                      ; $4562: $22
	nop                                              ; $4563: $00
	ld a, a                                          ; $4564: $7f
	cp $56                                           ; $4565: $fe $56
	xor d                                            ; $4567: $aa
	halt                                             ; $4568: $76
	nop                                              ; $4569: $00
	sbc c                                            ; $456a: $99
	cp e                                             ; $456b: $bb
	adc e                                            ; $456c: $8b
	rst $38                                          ; $456d: $ff
	rst GetHLinHL                                          ; $456e: $cf
	cp d                                             ; $456f: $ba
	cp d                                             ; $4570: $ba
	ld b, [hl]                                       ; $4571: $46
	nop                                              ; $4572: $00
	ld e, [hl]                                       ; $4573: $5e
	ld c, h                                          ; $4574: $4c
	ld a, a                                          ; $4575: $7f
	adc b                                            ; $4576: $88
	sub e                                            ; $4577: $93
	dec b                                            ; $4578: $05
	rlca                                             ; $4579: $07
	ld b, $07                                        ; $457a: $06 $07
	inc c                                            ; $457c: $0c
	rrca                                             ; $457d: $0f
	ld [$130f], sp                                   ; $457e: $08 $0f $13
	rra                                              ; $4581: $1f
	rrca                                             ; $4582: $0f
	ld c, $7a                                        ; $4583: $0e $7a
	add sp, -$66                                     ; $4585: $e8 $9a
	ld [bc], a                                       ; $4587: $02
	dec b                                            ; $4588: $05
	rlca                                             ; $4589: $07
	ld [bc], a                                       ; $458a: $02
	inc bc                                           ; $458b: $03
	db $fd                                           ; $458c: $fd
	rst SubAFromDE                                          ; $458d: $df
	rst AddAOntoHL                                          ; $458e: $ef
	add l                                            ; $458f: $85
	db $10                                           ; $4590: $10
	rst $38                                          ; $4591: $ff
	nop                                              ; $4592: $00
	rst $38                                          ; $4593: $ff
	adc $ff                                          ; $4594: $ce $ff
	ld sp, $20ff                                     ; $4596: $31 $ff $20
	rst $38                                          ; $4599: $ff
	ld [hl], b                                       ; $459a: $70
	rst SubAFromDE                                          ; $459b: $df
	db $fc                                           ; $459c: $fc
	adc a                                            ; $459d: $8f
	rst $38                                          ; $459e: $ff
	inc bc                                           ; $459f: $03
	rst $38                                          ; $45a0: $ff
	call z, $ce77                                    ; $45a1: $cc $77 $ce
	rst $38                                          ; $45a4: $ff

jr_01b_45a5:
	call z, $31ff                                    ; $45a5: $cc $ff $31
	cp $83                                           ; $45a8: $fe $83
	ld e, [hl]                                       ; $45aa: $5e
	ld [hl], b                                       ; $45ab: $70
	ld a, a                                          ; $45ac: $7f
	cp $7f                                           ; $45ad: $fe $7f
	adc e                                            ; $45af: $8b
	ld [hl], a                                       ; $45b0: $77
	ld a, h                                          ; $45b1: $7c
	sbc d                                            ; $45b2: $9a
	jr nc, jr_01b_45a5                               ; $45b3: $30 $f0

	ld [$f0f8], sp                                   ; $45b5: $08 $f8 $f0
	ld a, e                                          ; $45b8: $7b
	ld a, h                                          ; $45b9: $7c
	ld a, a                                          ; $45ba: $7f
	cp $7f                                           ; $45bb: $fe $7f
	xor $7f                                          ; $45bd: $ee $7f
	db $fc                                           ; $45bf: $fc
	inc hl                                           ; $45c0: $23
	and b                                            ; $45c1: $a0
	sbc h                                            ; $45c2: $9c
	ld b, $03                                        ; $45c3: $06 $03
	inc bc                                           ; $45c5: $03
	dec de                                           ; $45c6: $1b
	and b                                            ; $45c7: $a0
	ld a, a                                          ; $45c8: $7f
	pop af                                           ; $45c9: $f1
	ld a, a                                          ; $45ca: $7f
	and d                                            ; $45cb: $a2
	ld a, e                                          ; $45cc: $7b
	rst AddAOntoHL                                          ; $45cd: $ef
	ld l, a                                          ; $45ce: $6f
	and b                                            ; $45cf: $a0
	scf                                              ; $45d0: $37
	add b                                            ; $45d1: $80
	ld a, e                                          ; $45d2: $7b
	pop af                                           ; $45d3: $f1
	sbc [hl]                                         ; $45d4: $9e
	ld c, d                                          ; $45d5: $4a
	rla                                              ; $45d6: $17
	ldh [rOCPD], a                                   ; $45d7: $e0 $6b
	ld h, b                                          ; $45d9: $60
	sbc [hl]                                         ; $45da: $9e
	or e                                             ; $45db: $b3
	reti                                             ; $45dc: $d9


	ld bc, $07dd                                     ; $45dd: $01 $dd $07
	ld c, [hl]                                       ; $45e0: $4e
	inc e                                            ; $45e1: $1c
	rst SubAFromDE                                          ; $45e2: $df
	ld bc, $fe76                                     ; $45e3: $01 $76 $fe
	rst SubAFromDE                                          ; $45e6: $df
	rst $38                                          ; $45e7: $ff
	adc h                                            ; $45e8: $8c
	ld d, l                                          ; $45e9: $55
	rst $38                                          ; $45ea: $ff
	add hl, hl                                       ; $45eb: $29
	rst $38                                          ; $45ec: $ff
	jp $dfff                                         ; $45ed: $c3 $ff $df


	ld a, l                                          ; $45f0: $7d
	rst $38                                          ; $45f1: $ff
	ld hl, $e7ff                                     ; $45f2: $21 $ff $e7
	ld a, [de]                                       ; $45f5: $1a
	cp $fc                                           ; $45f6: $fe $fc
	db $fc                                           ; $45f8: $fc
	ld a, h                                          ; $45f9: $7c
	ld d, h                                          ; $45fa: $54
	ld a, h                                          ; $45fb: $7c
	ld a, e                                          ; $45fc: $7b
	db $fd                                           ; $45fd: $fd
	rst SubAFromDE                                          ; $45fe: $df
	cp $9e                                           ; $45ff: $fe $9e
	ld de, $ffde                                     ; $4601: $11 $de $ff
	rst $38                                          ; $4604: $ff
	sub l                                            ; $4605: $95
	ld d, b                                          ; $4606: $50
	ld [hl], b                                       ; $4607: $70
	jr nz, jr_01b_462a                               ; $4608: $20 $20

	ld a, [hl]                                       ; $460a: $7e
	ld a, [hl]                                       ; $460b: $7e
	db $eb                                           ; $460c: $eb
	db $eb                                           ; $460d: $eb
	push de                                          ; $460e: $d5
	push de                                          ; $460f: $d5
	ld [hl], h                                       ; $4610: $74
	ret nz                                           ; $4611: $c0

	rst SubAFromDE                                          ; $4612: $df
	ld a, [hl]                                       ; $4613: $7e
	push af                                          ; $4614: $f5
	dec d                                            ; $4615: $15
	ld e, [hl]                                       ; $4616: $5e
	ldh [hDisp1_LCDC], a                                     ; $4617: $e0 $8f
	rst SubAFromDE                                          ; $4619: $df
	inc a                                            ; $461a: $3c
	sub c                                            ; $461b: $91
	ld a, [hl]                                       ; $461c: $7e
	ld b, d                                          ; $461d: $42
	rst $38                                          ; $461e: $ff
	or c                                             ; $461f: $b1
	rst $38                                          ; $4620: $ff
	adc c                                            ; $4621: $89
	rst $38                                          ; $4622: $ff
	add l                                            ; $4623: $85
	rst $38                                          ; $4624: $ff
	add l                                            ; $4625: $85
	ld a, [hl]                                       ; $4626: $7e
	ld c, d                                          ; $4627: $4a
	inc a                                            ; $4628: $3c
	inc a                                            ; $4629: $3c

jr_01b_462a:
	ld sp, hl                                        ; $462a: $f9
	rst SubAFromDE                                          ; $462b: $df
	inc bc                                           ; $462c: $03
	ld a, [hl]                                       ; $462d: $7e
	adc h                                            ; $462e: $8c
	sbc d                                            ; $462f: $9a
	db $10                                           ; $4630: $10
	rra                                              ; $4631: $1f
	ld hl, $403f                                     ; $4632: $21 $3f $40
	ld a, b                                          ; $4635: $78
	ld a, e                                          ; $4636: $7b
	sbc h                                            ; $4637: $9c
	add b                                            ; $4638: $80
	rst $38                                          ; $4639: $ff
	add c                                            ; $463a: $81

jr_01b_463b:
	ld a, e                                          ; $463b: $7b
	cp $9b                                           ; $463c: $fe $9b
	ld b, e                                          ; $463e: $43
	ld a, [hl]                                       ; $463f: $7e
	ld b, e                                          ; $4640: $43
	ld a, [hl]                                       ; $4641: $7e
	ld [hl], a                                       ; $4642: $77
	ldh a, [$9b]                                     ; $4643: $f0 $9b
	sbc h                                            ; $4645: $9c
	rst $38                                          ; $4646: $ff
	db $e3                                           ; $4647: $e3
	db $e3                                           ; $4648: $e3
	halt                                             ; $4649: $76
	ld b, h                                          ; $464a: $44
	ld a, [hl]                                       ; $464b: $7e
	ld c, h                                          ; $464c: $4c
	sbc [hl]                                         ; $464d: $9e
	db $10                                           ; $464e: $10
	ld a, d                                          ; $464f: $7a
	ld c, h                                          ; $4650: $4c
	sbc c                                            ; $4651: $99
	inc b                                            ; $4652: $04
	db $fc                                           ; $4653: $fc
	inc b                                            ; $4654: $04
	db $fc                                           ; $4655: $fc
	ld [bc], a                                       ; $4656: $02
	cp $77                                           ; $4657: $fe $77
	cp $93                                           ; $4659: $fe $93
	add h                                            ; $465b: $84
	db $fc                                           ; $465c: $fc
	add h                                            ; $465d: $84
	db $fc                                           ; $465e: $fc
	ld [$10f8], sp                                   ; $465f: $08 $f8 $10
	ldh a, [$60]                                     ; $4662: $f0 $60
	ldh [$80], a                                     ; $4664: $e0 $80
	add b                                            ; $4666: $80
	ld l, a                                          ; $4667: $6f
	jp nz, $2088                                     ; $4668: $c2 $88 $20

	ccf                                              ; $466b: $3f
	ld b, c                                          ; $466c: $41
	ld a, a                                          ; $466d: $7f
	ld b, e                                          ; $466e: $43
	ld a, [hl]                                       ; $466f: $7e
	add e                                            ; $4670: $83
	cp $87                                           ; $4671: $fe $87
	db $fd                                           ; $4673: $fd
	adc a                                            ; $4674: $8f
	ld a, [$fd87]                                    ; $4675: $fa $87 $fd
	ld b, e                                          ; $4678: $43
	ld a, [hl]                                       ; $4679: $7e
	ld b, c                                          ; $467a: $41
	ld a, a                                          ; $467b: $7f
	jr nz, jr_01b_46bd                               ; $467c: $20 $3f

	jr jr_01b_469f                                   ; $467e: $18 $1f

	ld b, $7a                                        ; $4680: $06 $7a
	xor [hl]                                         ; $4682: $ae
	rst SubAFromDE                                          ; $4683: $df
	ret nz                                           ; $4684: $c0

	halt                                             ; $4685: $76
	db $10                                           ; $4686: $10
	ld a, a                                          ; $4687: $7f
	add $8f                                          ; $4688: $c6 $8f
	ld b, h                                          ; $468a: $44
	db $fc                                           ; $468b: $fc
	ldh [c], a                                       ; $468c: $e2
	cp [hl]                                          ; $468d: $be
	ldh [c], a                                       ; $468e: $e2
	cp [hl]                                          ; $468f: $be
	pop hl                                           ; $4690: $e1
	ccf                                              ; $4691: $3f
	pop hl                                           ; $4692: $e1
	rst $38                                          ; $4693: $ff
	pop hl                                           ; $4694: $e1
	ccf                                              ; $4695: $3f
	ldh [c], a                                       ; $4696: $e2
	ld a, $c2                                        ; $4697: $3e $c2
	cp $77                                           ; $4699: $fe $77
	or h                                             ; $469b: $b4
	sbc e                                            ; $469c: $9b
	add hl, de                                       ; $469d: $19
	rst $38                                          ; $469e: $ff

jr_01b_469f:
	rst SubAFromBC                                          ; $469f: $e7
	rst SubAFromBC                                          ; $46a0: $e7
	db $fd                                           ; $46a1: $fd
	rst SubAFromDE                                          ; $46a2: $df
	jr jr_01b_463b                                   ; $46a3: $18 $96

	ld [hl], $3e                                     ; $46a5: $36 $3e
	ld b, e                                          ; $46a7: $43
	ld a, a                                          ; $46a8: $7f
	add c                                            ; $46a9: $81
	rst $38                                          ; $46aa: $ff
	add d                                            ; $46ab: $82
	cp $65                                           ; $46ac: $fe $65
	ld a, e                                          ; $46ae: $7b
	ld a, h                                          ; $46af: $7c
	ld a, a                                          ; $46b0: $7f
	cp $9b                                           ; $46b1: $fe $9b
	ld [hl-], a                                      ; $46b3: $32
	ld a, $0a                                        ; $46b4: $3e $0a
	ld c, $7a                                        ; $46b6: $0e $7a
	inc b                                            ; $46b8: $04
	sbc [hl]                                         ; $46b9: $9e
	ld [bc], a                                       ; $46ba: $02
	db $fd                                           ; $46bb: $fd
	pop de                                           ; $46bc: $d1

jr_01b_46bd:
	inc bc                                           ; $46bd: $03
	rst $38                                          ; $46be: $ff
	rst SubAFromDE                                          ; $46bf: $df
	inc de                                           ; $46c0: $13
	add b                                            ; $46c1: $80
	inc l                                            ; $46c2: $2c
	ccf                                              ; $46c3: $3f
	ld [hl+], a                                      ; $46c4: $22
	ccf                                              ; $46c5: $3f
	ld d, c                                          ; $46c6: $51
	ld a, a                                          ; $46c7: $7f
	xor c                                            ; $46c8: $a9
	rst $38                                          ; $46c9: $ff
	rst SubAFromHL                                          ; $46ca: $d7
	rst $38                                          ; $46cb: $ff
	sub d                                            ; $46cc: $92
	rst $38                                          ; $46cd: $ff
	or c                                             ; $46ce: $b1
	rst $38                                          ; $46cf: $ff
	cp h                                             ; $46d0: $bc
	rst AddAOntoHL                                          ; $46d1: $ef
	ld a, [hl]                                       ; $46d2: $7e
	ld l, e                                          ; $46d3: $6b
	ld a, $3d                                        ; $46d4: $3e $3d
	ld [hl], a                                       ; $46d6: $77
	ld c, l                                          ; $46d7: $4d
	ld a, a                                          ; $46d8: $7f
	ld c, b                                          ; $46d9: $48
	ccf                                              ; $46da: $3f
	jr nz, jr_01b_46fc                               ; $46db: $20 $1f

	stop                                             ; $46dd: $10 $00
	nop                                              ; $46df: $00
	and b                                            ; $46e0: $a0
	sbc c                                            ; $46e1: $99
	and b                                            ; $46e2: $a0
	ld d, b                                          ; $46e3: $50
	ldh a, [$28]                                     ; $46e4: $f0 $28
	ld hl, sp+$08                                    ; $46e6: $f8 $08
	sbc $f8                                          ; $46e8: $de $f8
	adc e                                            ; $46ea: $8b
	inc c                                            ; $46eb: $0c
	db $fc                                           ; $46ec: $fc
	ld [bc], a                                       ; $46ed: $02
	cp $89                                           ; $46ee: $fe $89
	rst $38                                          ; $46f0: $ff
	ld b, [hl]                                       ; $46f1: $46
	cp $24                                           ; $46f2: $fe $24
	db $fc                                           ; $46f4: $fc
	ld h, h                                          ; $46f5: $64
	db $fc                                           ; $46f6: $fc
	db $e4                                           ; $46f7: $e4
	cp h                                             ; $46f8: $bc
	add sp, $38                                      ; $46f9: $e8 $38
	ret nc                                           ; $46fb: $d0

jr_01b_46fc:
	ld [hl], b                                       ; $46fc: $70
	ldh [$e0], a                                     ; $46fd: $e0 $e0
	db $fd                                           ; $46ff: $fd
	rst SubAFromDE                                          ; $4700: $df
	inc bc                                           ; $4701: $03
	sbc c                                            ; $4702: $99
	rlca                                             ; $4703: $07
	inc b                                            ; $4704: $04
	inc bc                                           ; $4705: $03
	inc bc                                           ; $4706: $03
	inc b                                            ; $4707: $04
	rlca                                             ; $4708: $07
	ld [hl], a                                       ; $4709: $77
	cp $9b                                           ; $470a: $fe $9b
	ld [bc], a                                       ; $470c: $02
	inc bc                                           ; $470d: $03
	ld bc, $f901                                     ; $470e: $01 $01 $f9
	rst SubAFromDE                                          ; $4711: $df
	rlca                                             ; $4712: $07
	rst $38                                          ; $4713: $ff
	rst SubAFromDE                                          ; $4714: $df
	rrca                                             ; $4715: $0f
	adc h                                            ; $4716: $8c
	rst $38                                          ; $4717: $ff
	db $fd                                           ; $4718: $fd
	rst $38                                          ; $4719: $ff
	ld bc, $9fff                                     ; $471a: $01 $ff $9f
	pop hl                                           ; $471d: $e1
	and c                                            ; $471e: $a1
	ld d, d                                          ; $471f: $52
	di                                               ; $4720: $f3
	inc d                                            ; $4721: $14
	rst FarCall                                          ; $4722: $f7
	rla                                              ; $4723: $17
	rst FarCall                                          ; $4724: $f7
	daa                                              ; $4725: $27
	db $e4                                           ; $4726: $e4
	jp $03c2                                         ; $4727: $c3 $c2 $03


	ld a, e                                          ; $472a: $7b
	call c, $03df                                    ; $472b: $dc $df $03
	ld a, a                                          ; $472e: $7f
	sub $df                                          ; $472f: $d6 $df
	rst AddAOntoHL                                          ; $4731: $ef
	rst $38                                          ; $4732: $ff
	add [hl]                                         ; $4733: $86
	ldh a, [rAUD1SWEEP]                              ; $4734: $f0 $10
	ld hl, sp+$08                                    ; $4736: $f8 $08
	db $fc                                           ; $4738: $fc
	call nz, $f47c                                   ; $4739: $c4 $7c $f4
	db $fc                                           ; $473c: $fc
	add h                                            ; $473d: $84
	ld hl, sp-$78                                    ; $473e: $f8 $88
	ld [hl], b                                       ; $4740: $70
	ldh a, [rAUD4LEN]                                ; $4741: $f0 $20
	ldh [$f0], a                                     ; $4743: $e0 $f0
	ldh a, [$f8]                                     ; $4745: $f0 $f8
	ld a, b                                          ; $4747: $78
	ldh a, [rSVBK]                                   ; $4748: $f0 $70
	and b                                            ; $474a: $a0
	ldh [rAUD1SWEEP], a                              ; $474b: $e0 $10
	ld a, e                                          ; $474d: $7b
	db $f4                                           ; $474e: $f4
	rst SubAFromDE                                          ; $474f: $df
	cp $fb                                           ; $4750: $fe $fb
	rst SubAFromDE                                          ; $4752: $df
	rrca                                             ; $4753: $0f
	ld a, a                                          ; $4754: $7f
	ld a, b                                          ; $4755: $78
	add b                                            ; $4756: $80
	rrca                                             ; $4757: $0f
	dec c                                            ; $4758: $0d
	inc bc                                           ; $4759: $03
	inc bc                                           ; $475a: $03
	nop                                              ; $475b: $00
	nop                                              ; $475c: $00
	ld c, $0e                                        ; $475d: $0e $0e
	ld de, $2f1f                                     ; $475f: $11 $1f $2f
	ccf                                              ; $4762: $3f
	jr z, jr_01b_47a4                                ; $4763: $28 $3f

	inc h                                            ; $4765: $24
	ccf                                              ; $4766: $3f
	ld [de], a                                       ; $4767: $12
	rra                                              ; $4768: $1f
	rrca                                             ; $4769: $0f
	rrca                                             ; $476a: $0f
	ccf                                              ; $476b: $3f
	ccf                                              ; $476c: $3f
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	ccf                                              ; $476f: $3f
	inc [hl]                                         ; $4770: $34
	ld [hl], a                                       ; $4771: $77
	ld e, h                                          ; $4772: $5c
	di                                               ; $4773: $f3
	sbc a                                            ; $4774: $9f
	pop af                                           ; $4775: $f1
	add b                                            ; $4776: $80
	ccf                                              ; $4777: $3f
	jp nc, $1ede                                     ; $4778: $d2 $de $1e

	ld e, $21                                        ; $477b: $1e $21
	ccf                                              ; $477d: $3f
	ld h, e                                          ; $477e: $63
	ld a, a                                          ; $477f: $7f
	rst $38                                          ; $4780: $ff
	sbc [hl]                                         ; $4781: $9e
	rst SubAFromBC                                          ; $4782: $e7
	inc h                                            ; $4783: $24
	jp $40c3                                         ; $4784: $c3 $c3 $40


	ret nz                                           ; $4787: $c0

	add b                                            ; $4788: $80
	add b                                            ; $4789: $80
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	rst $38                                          ; $478c: $ff
	rst $38                                          ; $478d: $ff
	nop                                              ; $478e: $00

jr_01b_478f:
	nop                                              ; $478f: $00
	ret nz                                           ; $4790: $c0

	ret nz                                           ; $4791: $c0

	ldh [rAUD4LEN], a                                ; $4792: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $4794: $f0 $90
	sbc l                                            ; $4796: $9d
	ldh a, [$d0]                                     ; $4797: $f0 $d0
	ld a, e                                          ; $4799: $7b
	db $fc                                           ; $479a: $fc
	sub d                                            ; $479b: $92
	sub b                                            ; $479c: $90
	ld h, b                                          ; $479d: $60
	ld h, b                                          ; $479e: $60
	ldh a, [$f0]                                     ; $479f: $f0 $f0
	adc b                                            ; $47a1: $88
	ld hl, sp-$78                                    ; $47a2: $f8 $88

jr_01b_47a4:
	ld hl, sp-$38                                    ; $47a4: $f8 $c8
	ld hl, sp+$30                                    ; $47a6: $f8 $30
	jr nc, @-$01                                     ; $47a8: $30 $fd

	rst SubAFromDE                                          ; $47aa: $df
	ldh a, [$fb]                                     ; $47ab: $f0 $fb
	ld a, e                                          ; $47ad: $7b
	ld [hl], d                                       ; $47ae: $72
	sbc [hl]                                         ; $47af: $9e
	ld [bc], a                                       ; $47b0: $02
	ld l, a                                          ; $47b1: $6f
	ld c, d                                          ; $47b2: $4a
	rst SubAFromDE                                          ; $47b3: $df
	rlca                                             ; $47b4: $07
	sbc d                                            ; $47b5: $9a
	ld [$100f], sp                                   ; $47b6: $08 $0f $10
	rra                                              ; $47b9: $1f
	ld de, $fe7b                                     ; $47ba: $11 $7b $fe
	ld a, a                                          ; $47bd: $7f
	ld hl, sp-$21                                    ; $47be: $f8 $df
	rlca                                             ; $47c0: $07
	rst SubAFromDE                                          ; $47c1: $df
	rra                                              ; $47c2: $1f
	rst $38                                          ; $47c3: $ff
	rst SubAFromDE                                          ; $47c4: $df
	ld a, a                                          ; $47c5: $7f
	adc d                                            ; $47c6: $8a
	rst $38                                          ; $47c7: $ff
	xor h                                            ; $47c8: $ac
	rst $38                                          ; $47c9: $ff
	adc b                                            ; $47ca: $88
	rst $38                                          ; $47cb: $ff
	ld b, c                                          ; $47cc: $41
	cp $23                                           ; $47cd: $fe $23
	rst SubAFromDE                                          ; $47cf: $df
	rst SubAFromDE                                          ; $47d0: $df
	inc b                                            ; $47d1: $04
	rlca                                             ; $47d2: $07
	ld c, $0f                                        ; $47d3: $0e $0f
	sbc a                                            ; $47d5: $9f
	sub e                                            ; $47d6: $93
	db $fd                                           ; $47d7: $fd
	push af                                          ; $47d8: $f5
	ld c, b                                          ; $47d9: $48
	ld hl, sp+$10                                    ; $47da: $f8 $10
	ld a, e                                          ; $47dc: $7b
	or c                                             ; $47dd: $b1
	rst SubAFromDE                                          ; $47de: $df
	ld h, b                                          ; $47df: $60
	ld [hl], a                                       ; $47e0: $77
	and b                                            ; $47e1: $a0
	db $dd                                           ; $47e2: $dd
	add b                                            ; $47e3: $80
	ld a, a                                          ; $47e4: $7f
	sub d                                            ; $47e5: $92
	ld [hl], a                                       ; $47e6: $77
	sub b                                            ; $47e7: $90
	rst SubAFromDE                                          ; $47e8: $df
	add b                                            ; $47e9: $80
	sub l                                            ; $47ea: $95
	ld c, h                                          ; $47eb: $4c
	call z, $feb2                                    ; $47ec: $cc $b2 $fe
	pop af                                           ; $47ef: $f1
	rst SubAFromDE                                          ; $47f0: $df
	ld sp, hl                                        ; $47f1: $f9
	rra                                              ; $47f2: $1f
	and $e6                                          ; $47f3: $e6 $e6
	ei                                               ; $47f5: $fb
	rst SubAFromDE                                          ; $47f6: $df
	db $fc                                           ; $47f7: $fc
	ld sp, hl                                        ; $47f8: $f9
	rst SubAFromDE                                          ; $47f9: $df
	jr nc, jr_01b_478f                               ; $47fa: $30 $93

	jr c, jr_01b_4826                                ; $47fc: $38 $28

	inc a                                            ; $47fe: $3c
	inc h                                            ; $47ff: $24
	ld a, h                                          ; $4800: $7c
	ld b, h                                          ; $4801: $44
	ld a, h                                          ; $4802: $7c
	ld b, h                                          ; $4803: $44
	inc a                                            ; $4804: $3c
	inc h                                            ; $4805: $24
	ld a, $22                                        ; $4806: $3e $22
	ld a, e                                          ; $4808: $7b
	and c                                            ; $4809: $a1
	sbc h                                            ; $480a: $9c
	inc de                                           ; $480b: $13
	rrca                                             ; $480c: $0f
	inc c                                            ; $480d: $0c
	ld a, d                                          ; $480e: $7a
	call z, $8a73                                    ; $480f: $cc $73 $8a
	rst SubAFromDE                                          ; $4812: $df
	ld [bc], a                                       ; $4813: $02
	sbc [hl]                                         ; $4814: $9e
	dec b                                            ; $4815: $05
	ld a, d                                          ; $4816: $7a
	ret z                                            ; $4817: $c8

	ld a, a                                          ; $4818: $7f
	and [hl]                                         ; $4819: $a6
	ld a, a                                          ; $481a: $7f
	db $eb                                           ; $481b: $eb
	adc e                                            ; $481c: $8b
	jr nz, jr_01b_485e                               ; $481d: $20 $3f

	ld l, $3f                                        ; $481f: $2e $3f
	inc a                                            ; $4821: $3c
	scf                                              ; $4822: $37
	ld hl, sp-$31                                    ; $4823: $f8 $cf
	reti                                             ; $4825: $d9


jr_01b_4826:
	cp a                                             ; $4826: $bf
	db $fd                                           ; $4827: $fd
	scf                                              ; $4828: $37
	cp $c3                                           ; $4829: $fe $c3
	cp $23                                           ; $482b: $fe $23
	db $fc                                           ; $482d: $fc
	ld c, a                                          ; $482e: $4f
	rst $38                                          ; $482f: $ff
	ld [hl], e                                       ; $4830: $73
	db $fd                                           ; $4831: $fd
	rst SubAFromDE                                          ; $4832: $df
	jr nz, jr_01b_48b4                               ; $4833: $20 $7f

	ld b, c                                          ; $4835: $41
	ld a, [hl]                                       ; $4836: $7e
	ld a, h                                          ; $4837: $7c
	sbc h                                            ; $4838: $9c
	ret c                                            ; $4839: $d8

	ld hl, sp+$54                                    ; $483a: $f8 $54
	ld a, d                                          ; $483c: $7a
	adc b                                            ; $483d: $88
	sub [hl]                                         ; $483e: $96
	and h                                            ; $483f: $a4
	db $fc                                           ; $4840: $fc
	cp d                                             ; $4841: $ba
	ld a, [$fc24]                                    ; $4842: $fa $24 $fc
	ld a, [hl+]                                      ; $4845: $2a
	ld a, [$7b48]                                    ; $4846: $fa $48 $7b
	jr c, jr_01b_48ca                                ; $4849: $38 $7f

	ld a, d                                          ; $484b: $7a
	rst SubAFromDE                                          ; $484c: $df
	ldh [$8b], a                                     ; $484d: $e0 $8b
	rst $38                                          ; $484f: $ff
	and e                                            ; $4850: $a3
	db $fd                                           ; $4851: $fd
	add a                                            ; $4852: $87
	ld a, c                                          ; $4853: $79
	ld c, a                                          ; $4854: $4f
	inc sp                                           ; $4855: $33
	ccf                                              ; $4856: $3f
	inc c                                            ; $4857: $0c
	rrca                                             ; $4858: $0f
	ld [$1d0f], sp                                   ; $4859: $08 $0f $1d
	rla                                              ; $485c: $17
	ccf                                              ; $485d: $3f

jr_01b_485e:
	inc hl                                           ; $485e: $23
	inc a                                            ; $485f: $3c
	daa                                              ; $4860: $27
	ld e, $1f                                        ; $4861: $1e $1f

jr_01b_4863:
	ld h, [hl]                                       ; $4863: $66
	ld a, [hl]                                       ; $4864: $7e
	ld [hl], a                                       ; $4865: $77
	ld h, b                                          ; $4866: $60
	ld sp, hl                                        ; $4867: $f9
	ld l, a                                          ; $4868: $6f
	ld e, b                                          ; $4869: $58
	rst SubAFromDE                                          ; $486a: $df
	ret nz                                           ; $486b: $c0

	ld a, a                                          ; $486c: $7f
	db $fc                                           ; $486d: $fc
	ld a, [hl]                                       ; $486e: $7e
	xor b                                            ; $486f: $a8
	sbc d                                            ; $4870: $9a
	jr nc, jr_01b_4863                               ; $4871: $30 $f0

	ret z                                            ; $4873: $c8

	ld hl, sp+$64                                    ; $4874: $f8 $64
	ld a, e                                          ; $4876: $7b

jr_01b_4877:
	ld [hl], e                                       ; $4877: $73
	ld e, a                                          ; $4878: $5f
	ldh [$df], a                                     ; $4879: $e0 $df
	ld bc, $068a                                     ; $487b: $01 $8a $06
	rlca                                             ; $487e: $07
	add hl, bc                                       ; $487f: $09
	rrca                                             ; $4880: $0f
	ld [hl], $3f                                     ; $4881: $36 $3f
	ld c, h                                          ; $4883: $4c
	ld a, a                                          ; $4884: $7f
	dec sp                                           ; $4885: $3b
	ccf                                              ; $4886: $3f
	ld c, b                                          ; $4887: $48
	ld a, a                                          ; $4888: $7f
	ld d, b                                          ; $4889: $50
	ld a, a                                          ; $488a: $7f
	sub d                                            ; $488b: $92
	rst $38                                          ; $488c: $ff
	ld [hl], e                                       ; $488d: $73
	ld a, a                                          ; $488e: $7f
	inc de                                           ; $488f: $13
	ld e, $09                                        ; $4890: $1e $09
	ld a, d                                          ; $4892: $7a
	db $fc                                           ; $4893: $fc

jr_01b_4894:
	db $fd                                           ; $4894: $fd
	rst SubAFromDE                                          ; $4895: $df
	jr z, jr_01b_4877                                ; $4896: $28 $df

	ldh a, [$98]                                     ; $4898: $f0 $98
	jr c, jr_01b_4894                                ; $489a: $38 $f8

	add h                                            ; $489c: $84
	db $fc                                           ; $489d: $fc
	ldh [c], a                                       ; $489e: $e2
	cp $12                                           ; $489f: $fe $12
	ld a, d                                          ; $48a1: $7a
	nop                                              ; $48a2: $00
	sub c                                            ; $48a3: $91
	ld h, l                                          ; $48a4: $65
	rst $38                                          ; $48a5: $ff
	dec d                                            ; $48a6: $15
	rst $38                                          ; $48a7: $ff
	ccf                                              ; $48a8: $3f
	db $eb                                           ; $48a9: $eb
	rst $38                                          ; $48aa: $ff
	jp $62fe                                         ; $48ab: $c3 $fe $62


	cp [hl]                                          ; $48ae: $be
	ld h, d                                          ; $48af: $62
	cp $06                                           ; $48b0: $fe $06
	ld [hl], a                                       ; $48b2: $77
	sub h                                            ; $48b3: $94

jr_01b_48b4:
	halt                                             ; $48b4: $76
	ret nz                                           ; $48b5: $c0

	ld h, [hl]                                       ; $48b6: $66
	cp [hl]                                          ; $48b7: $be
	db $fd                                           ; $48b8: $fd
	rst SubAFromDE                                          ; $48b9: $df
	dec c                                            ; $48ba: $0d
	sbc [hl]                                         ; $48bb: $9e
	dec bc                                           ; $48bc: $0b
	ld a, e                                          ; $48bd: $7b
	ld [hl], d                                       ; $48be: $72
	ld a, a                                          ; $48bf: $7f
	inc l                                            ; $48c0: $2c
	rst SubAFromDE                                          ; $48c1: $df
	ld a, a                                          ; $48c2: $7f
	rst $38                                          ; $48c3: $ff
	add e                                            ; $48c4: $83
	cp $8a                                           ; $48c5: $fe $8a
	rst $38                                          ; $48c7: $ff
	ld sp, hl                                        ; $48c8: $f9
	rst $38                                          ; $48c9: $ff

jr_01b_48ca:
	sbc l                                            ; $48ca: $9d
	rst $38                                          ; $48cb: $ff
	add hl, hl                                       ; $48cc: $29
	cp $42                                           ; $48cd: $fe $42
	db $fd                                           ; $48cf: $fd
	rst SubAFromBC                                          ; $48d0: $e7
	add hl, sp                                       ; $48d1: $39
	ccf                                              ; $48d2: $3f
	ld e, l                                          ; $48d3: $5d
	ld a, a                                          ; $48d4: $7f
	ld a, [hl]                                       ; $48d5: $7e
	halt                                             ; $48d6: $76
	cp $92                                           ; $48d7: $fe $92
	xor $2a                                          ; $48d9: $ee $2a
	call $d94f                                       ; $48db: $cd $4f $d9
	rst SubAFromDE                                          ; $48de: $df
	sub d                                            ; $48df: $92
	sbc [hl]                                         ; $48e0: $9e
	ld h, a                                          ; $48e1: $67
	add b                                            ; $48e2: $80
	rst SubAFromDE                                          ; $48e3: $df
	rlca                                             ; $48e4: $07
	add l                                            ; $48e5: $85
	jr @+$21                                         ; $48e6: $18 $1f

	daa                                              ; $48e8: $27
	jr c, jr_01b_493a                                ; $48e9: $38 $4f

	ld [hl], a                                       ; $48eb: $77
	ld c, b                                          ; $48ec: $48
	ld a, a                                          ; $48ed: $7f
	sub l                                            ; $48ee: $95
	rst $38                                          ; $48ef: $ff
	push hl                                          ; $48f0: $e5
	rst $38                                          ; $48f1: $ff
	xor l                                            ; $48f2: $ad
	cp d                                             ; $48f3: $ba
	rra                                              ; $48f4: $1f
	ld d, $0b                                        ; $48f5: $16 $0b
	ld e, $2f                                        ; $48f7: $1e $2f
	ld [hl], $2f                                     ; $48f9: $36 $2f
	ld a, $2f                                        ; $48fb: $3e $2f
	add hl, sp                                       ; $48fd: $39
	ld h, $3d                                        ; $48fe: $26 $3d
	db $fd                                           ; $4900: $fd
	rst SubAFromDE                                          ; $4901: $df
	ld a, b                                          ; $4902: $78
	ld a, e                                          ; $4903: $7b
	add h                                            ; $4904: $84
	sub b                                            ; $4905: $90
	ld e, $f2                                        ; $4906: $1e $f2
	xor $19                                          ; $4908: $ee $19
	rst FarCall                                          ; $490a: $f7
	add hl, hl                                       ; $490b: $29
	rst $38                                          ; $490c: $ff
	dec h                                            ; $490d: $25
	rst $38                                          ; $490e: $ff
	or h                                             ; $490f: $b4
	sbc $f8                                          ; $4910: $de $f8
	ld l, h                                          ; $4912: $6c
	cp h                                             ; $4913: $bc
	ld [hl], h                                       ; $4914: $74
	ld a, d                                          ; $4915: $7a
	push af                                          ; $4916: $f5
	sub a                                            ; $4917: $97
	ld h, h                                          ; $4918: $64
	ld hl, sp-$72                                    ; $4919: $f8 $8e
	pop af                                           ; $491b: $f1
	sbc a                                            ; $491c: $9f
	inc b                                            ; $491d: $04
	rlca                                             ; $491e: $07
	dec b                                            ; $491f: $05
	sbc $07                                          ; $4920: $de $07
	ld c, a                                          ; $4922: $4f
	add b                                            ; $4923: $80
	ld h, a                                          ; $4924: $67
	inc l                                            ; $4925: $2c
	ld [hl], a                                       ; $4926: $77
	ld b, d                                          ; $4927: $42
	rst SubAFromDE                                          ; $4928: $df
	rst $38                                          ; $4929: $ff
	sub e                                            ; $492a: $93
	ld d, l                                          ; $492b: $55
	rst $38                                          ; $492c: $ff
	xor e                                            ; $492d: $ab
	rst $38                                          ; $492e: $ff
	add e                                            ; $492f: $83
	rst $38                                          ; $4930: $ff
	cp $7e                                           ; $4931: $fe $7e
	jp nz, $927e                                     ; $4933: $c2 $7e $92

	cp $de                                           ; $4936: $fe $de
	ld a, h                                          ; $4938: $7c
	adc d                                            ; $4939: $8a

jr_01b_493a:
	ld d, h                                          ; $493a: $54
	ld a, h                                          ; $493b: $7c
	ld d, h                                          ; $493c: $54
	ld a, [hl]                                       ; $493d: $7e
	ld d, d                                          ; $493e: $52
	cp $fe                                           ; $493f: $fe $fe
	sub d                                            ; $4941: $92
	cp $11                                           ; $4942: $fe $11
	rst $38                                          ; $4944: $ff
	pop af                                           ; $4945: $f1
	rst $38                                          ; $4946: $ff
	rra                                              ; $4947: $1f
	rra                                              ; $4948: $1f
	xor b                                            ; $4949: $a8
	add sp, -$04                                     ; $494a: $e8 $fc
	ld [hl], h                                       ; $494c: $74
	db $fc                                           ; $494d: $fc
	ld b, h                                          ; $494e: $44
	ld a, c                                          ; $494f: $79
	add h                                            ; $4950: $84
	sbc [hl]                                         ; $4951: $9e
	ld [hl], b                                       ; $4952: $70
	db $ed                                           ; $4953: $ed
	ld l, l                                          ; $4954: $6d
	jr nz, jr_01b_49cc                               ; $4955: $20 $75

	and [hl]                                         ; $4957: $a6
	add a                                            ; $4958: $87
	ld b, a                                          ; $4959: $47
	ld a, b                                          ; $495a: $78
	ld c, a                                          ; $495b: $4f
	ld [hl], a                                       ; $495c: $77
	sbc b                                            ; $495d: $98
	rst AddAOntoHL                                          ; $495e: $ef
	sub h                                            ; $495f: $94
	rst $38                                          ; $4960: $ff
	and h                                            ; $4961: $a4
	rst $38                                          ; $4962: $ff
	xor l                                            ; $4963: $ad
	ei                                               ; $4964: $fb
	sbc a                                            ; $4965: $9f
	or $bd                                           ; $4966: $f6 $bd
	xor $bf                                          ; $4968: $ee $bf
	and $bf                                          ; $496a: $e6 $bf
	and $9f                                          ; $496c: $e6 $9f
	ldh a, [hDisp1_LCDC]                                     ; $496e: $f0 $8f
	ld sp, hl                                        ; $4970: $f9
	ld l, a                                          ; $4971: $6f
	jp c, $1884                                      ; $4972: $da $84 $18

	ld hl, sp-$1c                                    ; $4975: $f8 $e4
	inc e                                            ; $4977: $1c
	ldh a, [c]                                       ; $4978: $f2
	xor $12                                          ; $4979: $ee $12
	cp $a9                                           ; $497b: $fe $a9
	rst $38                                          ; $497d: $ff
	and a                                            ; $497e: $a7
	rst $38                                          ; $497f: $ff
	or l                                             ; $4980: $b5
	ld e, l                                          ; $4981: $5d
	ld hl, sp+$68                                    ; $4982: $f8 $68
	ret nc                                           ; $4984: $d0

	ld a, b                                          ; $4985: $78
	db $f4                                           ; $4986: $f4
	ld l, h                                          ; $4987: $6c
	db $f4                                           ; $4988: $f4
	ld a, h                                          ; $4989: $7c
	db $f4                                           ; $498a: $f4
	sbc h                                            ; $498b: $9c
	db $e4                                           ; $498c: $e4
	cp h                                             ; $498d: $bc
	db $fd                                           ; $498e: $fd
	ld l, e                                          ; $498f: $6b
	add b                                            ; $4990: $80
	sbc l                                            ; $4991: $9d
	rst $38                                          ; $4992: $ff
	ld a, a                                          ; $4993: $7f
	cpl                                              ; $4994: $2f
	add b                                            ; $4995: $80
	sbc c                                            ; $4996: $99
	ldh [$60], a                                     ; $4997: $e0 $60
	and b                                            ; $4999: $a0
	ldh [rAUD4LEN], a                                ; $499a: $e0 $20
	ldh [$6d], a                                     ; $499c: $e0 $6d
	ld d, b                                          ; $499e: $50
	daa                                              ; $499f: $27
	add b                                            ; $49a0: $80
	ld b, d                                          ; $49a1: $42
	ldh [$7c], a                                     ; $49a2: $e0 $7c
	ldh a, [c]                                       ; $49a4: $f2
	sbc [hl]                                         ; $49a5: $9e
	ld d, $7a                                        ; $49a6: $16 $7a
	ldh [c], a                                       ; $49a8: $e2
	sbc [hl]                                         ; $49a9: $9e
	ld a, [hl-]                                      ; $49aa: $3a
	ld l, $e0                                        ; $49ab: $2e $e0
	sub c                                            ; $49ad: $91
	or l                                             ; $49ae: $b5
	rst SubAFromDE                                          ; $49af: $df
	ld sp, hl                                        ; $49b0: $f9
	rrca                                             ; $49b1: $0f
	db $fd                                           ; $49b2: $fd
	ld h, a                                          ; $49b3: $67
	db $fd                                           ; $49b4: $fd
	ld [hl], a                                       ; $49b5: $77
	rst $38                                          ; $49b6: $ff
	ld d, [hl]                                       ; $49b7: $56
	rst $38                                          ; $49b8: $ff
	adc h                                            ; $49b9: $8c
	rst $38                                          ; $49ba: $ff
	sbc c                                            ; $49bb: $99
	db $eb                                           ; $49bc: $eb
	rst SubAFromDE                                          ; $49bd: $df
	or b                                             ; $49be: $b0
	ld a, l                                          ; $49bf: $7d
	xor a                                            ; $49c0: $af
	ld a, a                                          ; $49c1: $7f
	adc c                                            ; $49c2: $89
	rst SubAFromDE                                          ; $49c3: $df
	ret nz                                           ; $49c4: $c0

	ld [hl], h                                       ; $49c5: $74
	ld b, h                                          ; $49c6: $44
	ld a, l                                          ; $49c7: $7d
	add $7d                                          ; $49c8: $c6 $7d
	ld c, $7d                                        ; $49ca: $0e $7d

jr_01b_49cc:
	add [hl]                                         ; $49cc: $86
	add b                                            ; $49cd: $80
	ld [hl+], a                                      ; $49ce: $22
	ccf                                              ; $49cf: $3f
	ld b, a                                          ; $49d0: $47
	ld a, l                                          ; $49d1: $7d
	ld b, a                                          ; $49d2: $47
	ld a, l                                          ; $49d3: $7d
	add a                                            ; $49d4: $87

jr_01b_49d5:
	db $fc                                           ; $49d5: $fc
	add a                                            ; $49d6: $87
	rst $38                                          ; $49d7: $ff
	add a                                            ; $49d8: $87
	db $fc                                           ; $49d9: $fc

jr_01b_49da:
	ld b, a                                          ; $49da: $47
	ld a, h                                          ; $49db: $7c
	ld b, e                                          ; $49dc: $43
	ld a, a                                          ; $49dd: $7f
	jr nz, jr_01b_4a1f                               ; $49de: $20 $3f

	ld b, b                                          ; $49e0: $40
	ld a, a                                          ; $49e1: $7f
	sbc b                                            ; $49e2: $98
	rst $38                                          ; $49e3: $ff
	rst SubAFromBC                                          ; $49e4: $e7
	rst SubAFromBC                                          ; $49e5: $e7
	ret nz                                           ; $49e6: $c0

	ret nz                                           ; $49e7: $c0

	jr nc, jr_01b_49da                               ; $49e8: $30 $f0

	ld [$04f8], sp                                   ; $49ea: $08 $f8 $04
	adc b                                            ; $49ed: $88
	db $fc                                           ; $49ee: $fc
	add d                                            ; $49ef: $82
	cp $c2                                           ; $49f0: $fe $c2
	ld a, [hl]                                       ; $49f2: $7e
	pop bc                                           ; $49f3: $c1
	ld a, a                                          ; $49f4: $7f
	pop hl                                           ; $49f5: $e1
	cp a                                             ; $49f6: $bf
	pop af                                           ; $49f7: $f1
	ld e, a                                          ; $49f8: $5f
	pop hl                                           ; $49f9: $e1
	cp a                                             ; $49fa: $bf

jr_01b_49fb:
	jp nz, $827e                                     ; $49fb: $c2 $7e $82

	cp $04                                           ; $49fe: $fe $04
	db $fc                                           ; $4a00: $fc
	jr jr_01b_49fb                                   ; $4a01: $18 $f8

	ld h, b                                          ; $4a03: $60
	ldh [rPCM34], a                                  ; $4a04: $e0 $77
	ld c, d                                          ; $4a06: $4a
	ld [hl], l                                       ; $4a07: $75
	call nz, $ca74                                   ; $4a08: $c4 $74 $ca
	ld a, a                                          ; $4a0b: $7f
	adc $77                                          ; $4a0c: $ce $77
	call z, $fe77                                    ; $4a0e: $cc $77 $fe
	ld a, [hl]                                       ; $4a11: $7e
	jp nc, $fe7f                                     ; $4a12: $d2 $7f $fe

	ld a, a                                          ; $4a15: $7f
	ldh a, [$7f]                                     ; $4a16: $f0 $7f
	db $ec                                           ; $4a18: $ec
	ld a, a                                          ; $4a19: $7f
	add sp, $76                                      ; $4a1a: $e8 $76
	ld l, h                                          ; $4a1c: $6c
	ld l, a                                          ; $4a1d: $6f
	cp [hl]                                          ; $4a1e: $be

jr_01b_4a1f:
	ld a, a                                          ; $4a1f: $7f
	ld e, [hl]                                       ; $4a20: $5e
	sbc b                                            ; $4a21: $98
	ld [bc], a                                       ; $4a22: $02
	cp $82                                           ; $4a23: $fe $82
	cp $01                                           ; $4a25: $fe $01
	rst $38                                          ; $4a27: $ff
	add c                                            ; $4a28: $81
	ld a, e                                          ; $4a29: $7b
	cp $7f                                           ; $4a2a: $fe $7f
	ret nz                                           ; $4a2c: $c0

	ld a, a                                          ; $4a2d: $7f
	cp $77                                           ; $4a2e: $fe $77
	ldh a, [$9b]                                     ; $4a30: $f0 $9b
	add hl, sp                                       ; $4a32: $39
	rst $38                                          ; $4a33: $ff
	rst JumpTable                                          ; $4a34: $c7
	rst JumpTable                                          ; $4a35: $c7
	db $fd                                           ; $4a36: $fd
	rst SubAFromDE                                          ; $4a37: $df
	jr jr_01b_49d5                                   ; $4a38: $18 $9b

	ld a, $36                                        ; $4a3a: $3e $36
	ld a, a                                          ; $4a3c: $7f
	ld b, e                                          ; $4a3d: $43
	ld a, e                                          ; $4a3e: $7b
	rst SubAFromBC                                          ; $4a3f: $e7
	sub b                                            ; $4a40: $90
	add e                                            ; $4a41: $83
	ld a, a                                          ; $4a42: $7f
	ld h, l                                          ; $4a43: $65
	ld a, a                                          ; $4a44: $7f
	ld b, c                                          ; $4a45: $41
	ld a, a                                          ; $4a46: $7f
	ld b, c                                          ; $4a47: $41
	ld a, $32                                        ; $4a48: $3e $32
	ld c, $0a                                        ; $4a4a: $0e $0a
	rlca                                             ; $4a4c: $07
	dec b                                            ; $4a4d: $05
	ld [bc], a                                       ; $4a4e: $02
	ld [bc], a                                       ; $4a4f: $02
	db $fd                                           ; $4a50: $fd
	rst SubAFromDE                                          ; $4a51: $df
	inc a                                            ; $4a52: $3c
	sub c                                            ; $4a53: $91
	ld d, d                                          ; $4a54: $52
	ld a, [hl]                                       ; $4a55: $7e
	sbc a                                            ; $4a56: $9f
	rst $38                                          ; $4a57: $ff
	or c                                             ; $4a58: $b1
	rst $38                                          ; $4a59: $ff
	rst GetHLinHL                                          ; $4a5a: $cf
	rst $38                                          ; $4a5b: $ff
	sbc c                                            ; $4a5c: $99
	rst $38                                          ; $4a5d: $ff
	ld l, d                                          ; $4a5e: $6a
	ld a, [hl]                                       ; $4a5f: $7e
	inc a                                            ; $4a60: $3c
	inc a                                            ; $4a61: $3c
	pop af                                           ; $4a62: $f1
	rst SubAFromDE                                          ; $4a63: $df
	inc a                                            ; $4a64: $3c
	sbc d                                            ; $4a65: $9a
	ld c, d                                          ; $4a66: $4a
	ld a, [hl]                                       ; $4a67: $7e
	or c                                             ; $4a68: $b1
	rst $38                                          ; $4a69: $ff
	rst AddAOntoHL                                          ; $4a6a: $ef
	ld a, e                                          ; $4a6b: $7b
	ldh [c], a                                       ; $4a6c: $e2
	sbc h                                            ; $4a6d: $9c
	and l                                            ; $4a6e: $a5
	rst $38                                          ; $4a6f: $ff
	ld h, d                                          ; $4a70: $62
	inc sp                                           ; $4a71: $33
	ldh [hDisp1_OBP1], a                                     ; $4a72: $e0 $94
	ld b, d                                          ; $4a74: $42
	ld a, [hl]                                       ; $4a75: $7e
	and c                                            ; $4a76: $a1
	rst $38                                          ; $4a77: $ff
	sub c                                            ; $4a78: $91
	rst $38                                          ; $4a79: $ff
	pop bc                                           ; $4a7a: $c1
	rst $38                                          ; $4a7b: $ff
	and c                                            ; $4a7c: $a1
	rst $38                                          ; $4a7d: $ff
	ld b, d                                          ; $4a7e: $42
	dec hl                                           ; $4a7f: $2b
	ldh [$7f], a                                     ; $4a80: $e0 $7f
	add a                                            ; $4a82: $87
	ld a, a                                          ; $4a83: $7f
	jp nz, $fc77                                     ; $4a84: $c2 $77 $fc

	daa                                              ; $4a87: $27
	ldh [rAUD2ENV], a                                ; $4a88: $e0 $17
	ret nz                                           ; $4a8a: $c0

	ldh [$c1], a                                     ; $4a8b: $e0 $c1
	ld hl, sp+$03                                    ; $4a8d: $f8 $03
	rst $38                                          ; $4a8f: $ff
	rst SubAFromDE                                          ; $4a90: $df
	inc de                                           ; $4a91: $13
	add b                                            ; $4a92: $80
	inc l                                            ; $4a93: $2c
	ccf                                              ; $4a94: $3f
	ld [hl+], a                                      ; $4a95: $22
	ccf                                              ; $4a96: $3f
	ld d, c                                          ; $4a97: $51
	ld a, a                                          ; $4a98: $7f
	xor c                                            ; $4a99: $a9
	rst $38                                          ; $4a9a: $ff
	rst SubAFromHL                                          ; $4a9b: $d7
	rst $38                                          ; $4a9c: $ff
	sub d                                            ; $4a9d: $92
	rst $38                                          ; $4a9e: $ff
	or c                                             ; $4a9f: $b1
	rst $38                                          ; $4aa0: $ff
	cp h                                             ; $4aa1: $bc
	rst AddAOntoHL                                          ; $4aa2: $ef
	ld a, [hl]                                       ; $4aa3: $7e
	ld l, e                                          ; $4aa4: $6b
	ld a, $3d                                        ; $4aa5: $3e $3d
	ld [hl], a                                       ; $4aa7: $77
	ld c, l                                          ; $4aa8: $4d
	ld a, a                                          ; $4aa9: $7f
	ld c, b                                          ; $4aaa: $48
	ccf                                              ; $4aab: $3f
	jr nz, jr_01b_4acd                               ; $4aac: $20 $1f

	stop                                             ; $4aae: $10 $00
	nop                                              ; $4ab0: $00
	and b                                            ; $4ab1: $a0
	sbc c                                            ; $4ab2: $99
	and b                                            ; $4ab3: $a0
	ld d, b                                          ; $4ab4: $50
	ldh a, [$28]                                     ; $4ab5: $f0 $28
	ld hl, sp+$08                                    ; $4ab7: $f8 $08
	sbc $f8                                          ; $4ab9: $de $f8
	adc e                                            ; $4abb: $8b
	inc c                                            ; $4abc: $0c
	db $fc                                           ; $4abd: $fc
	ld [bc], a                                       ; $4abe: $02
	cp $89                                           ; $4abf: $fe $89
	rst $38                                          ; $4ac1: $ff
	ld b, [hl]                                       ; $4ac2: $46
	cp $24                                           ; $4ac3: $fe $24
	db $fc                                           ; $4ac5: $fc
	ld h, h                                          ; $4ac6: $64
	db $fc                                           ; $4ac7: $fc
	db $e4                                           ; $4ac8: $e4
	cp h                                             ; $4ac9: $bc
	add sp, $38                                      ; $4aca: $e8 $38
	ret nc                                           ; $4acc: $d0

jr_01b_4acd:
	ld [hl], b                                       ; $4acd: $70
	ldh [$e0], a                                     ; $4ace: $e0 $e0
	db $fd                                           ; $4ad0: $fd
	rst SubAFromDE                                          ; $4ad1: $df
	inc bc                                           ; $4ad2: $03
	sbc c                                            ; $4ad3: $99
	rlca                                             ; $4ad4: $07
	inc b                                            ; $4ad5: $04
	inc bc                                           ; $4ad6: $03
	inc bc                                           ; $4ad7: $03
	inc b                                            ; $4ad8: $04
	rlca                                             ; $4ad9: $07
	ld [hl], a                                       ; $4ada: $77
	cp $9b                                           ; $4adb: $fe $9b
	ld [bc], a                                       ; $4add: $02
	inc bc                                           ; $4ade: $03
	ld bc, $f901                                     ; $4adf: $01 $01 $f9
	rst SubAFromDE                                          ; $4ae2: $df
	rlca                                             ; $4ae3: $07
	rst $38                                          ; $4ae4: $ff
	rst SubAFromDE                                          ; $4ae5: $df
	rrca                                             ; $4ae6: $0f
	adc h                                            ; $4ae7: $8c
	rst $38                                          ; $4ae8: $ff
	db $fd                                           ; $4ae9: $fd
	rst $38                                          ; $4aea: $ff
	ld bc, $9fff                                     ; $4aeb: $01 $ff $9f
	pop hl                                           ; $4aee: $e1
	and c                                            ; $4aef: $a1
	ld d, d                                          ; $4af0: $52
	di                                               ; $4af1: $f3
	inc d                                            ; $4af2: $14
	rst FarCall                                          ; $4af3: $f7
	rla                                              ; $4af4: $17
	rst FarCall                                          ; $4af5: $f7
	daa                                              ; $4af6: $27
	db $e4                                           ; $4af7: $e4
	jp $03c2                                         ; $4af8: $c3 $c2 $03


	ld a, e                                          ; $4afb: $7b
	call c, $03df                                    ; $4afc: $dc $df $03
	ld a, a                                          ; $4aff: $7f
	sub $df                                          ; $4b00: $d6 $df
	rst AddAOntoHL                                          ; $4b02: $ef
	rst $38                                          ; $4b03: $ff
	add [hl]                                         ; $4b04: $86
	ldh a, [rAUD1SWEEP]                              ; $4b05: $f0 $10
	ld hl, sp+$08                                    ; $4b07: $f8 $08
	db $fc                                           ; $4b09: $fc
	call nz, $f47c                                   ; $4b0a: $c4 $7c $f4
	db $fc                                           ; $4b0d: $fc
	add h                                            ; $4b0e: $84
	ld hl, sp-$78                                    ; $4b0f: $f8 $88
	ld [hl], b                                       ; $4b11: $70
	ldh a, [rAUD4LEN]                                ; $4b12: $f0 $20
	ldh [$f0], a                                     ; $4b14: $e0 $f0
	ldh a, [$f8]                                     ; $4b16: $f0 $f8
	ld a, b                                          ; $4b18: $78
	ldh a, [rSVBK]                                   ; $4b19: $f0 $70
	and b                                            ; $4b1b: $a0
	ldh [rAUD1SWEEP], a                              ; $4b1c: $e0 $10
	ld a, e                                          ; $4b1e: $7b
	db $f4                                           ; $4b1f: $f4
	rst SubAFromDE                                          ; $4b20: $df
	cp $fb                                           ; $4b21: $fe $fb
	rst SubAFromDE                                          ; $4b23: $df
	rrca                                             ; $4b24: $0f
	ld a, a                                          ; $4b25: $7f
	ld a, b                                          ; $4b26: $78
	add b                                            ; $4b27: $80
	rrca                                             ; $4b28: $0f
	dec c                                            ; $4b29: $0d
	inc bc                                           ; $4b2a: $03
	inc bc                                           ; $4b2b: $03
	nop                                              ; $4b2c: $00
	nop                                              ; $4b2d: $00
	ld c, $0e                                        ; $4b2e: $0e $0e
	ld de, $2f1f                                     ; $4b30: $11 $1f $2f
	ccf                                              ; $4b33: $3f
	jr z, jr_01b_4b75                                ; $4b34: $28 $3f

	inc h                                            ; $4b36: $24
	ccf                                              ; $4b37: $3f
	ld [de], a                                       ; $4b38: $12
	rra                                              ; $4b39: $1f
	rrca                                             ; $4b3a: $0f
	rrca                                             ; $4b3b: $0f
	ccf                                              ; $4b3c: $3f
	ccf                                              ; $4b3d: $3f
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	ccf                                              ; $4b40: $3f
	inc [hl]                                         ; $4b41: $34
	ld [hl], a                                       ; $4b42: $77
	ld e, h                                          ; $4b43: $5c
	di                                               ; $4b44: $f3
	sbc a                                            ; $4b45: $9f
	pop af                                           ; $4b46: $f1
	add b                                            ; $4b47: $80
	ccf                                              ; $4b48: $3f
	jp nc, $1ede                                     ; $4b49: $d2 $de $1e

	ld e, $21                                        ; $4b4c: $1e $21
	ccf                                              ; $4b4e: $3f
	ld h, e                                          ; $4b4f: $63
	ld a, a                                          ; $4b50: $7f
	rst $38                                          ; $4b51: $ff
	sbc [hl]                                         ; $4b52: $9e
	rst SubAFromBC                                          ; $4b53: $e7
	inc h                                            ; $4b54: $24
	jp $40c3                                         ; $4b55: $c3 $c3 $40


	ret nz                                           ; $4b58: $c0

	add b                                            ; $4b59: $80
	add b                                            ; $4b5a: $80
	nop                                              ; $4b5b: $00
	nop                                              ; $4b5c: $00
	rst $38                                          ; $4b5d: $ff
	rst $38                                          ; $4b5e: $ff
	nop                                              ; $4b5f: $00

jr_01b_4b60:
	nop                                              ; $4b60: $00
	ret nz                                           ; $4b61: $c0

	ret nz                                           ; $4b62: $c0

	ldh [rAUD4LEN], a                                ; $4b63: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $4b65: $f0 $90
	sbc l                                            ; $4b67: $9d
	ldh a, [$d0]                                     ; $4b68: $f0 $d0
	ld a, e                                          ; $4b6a: $7b
	db $fc                                           ; $4b6b: $fc
	sub d                                            ; $4b6c: $92
	sub b                                            ; $4b6d: $90
	ld h, b                                          ; $4b6e: $60
	ld h, b                                          ; $4b6f: $60
	ldh a, [$f0]                                     ; $4b70: $f0 $f0
	adc b                                            ; $4b72: $88
	ld hl, sp-$78                                    ; $4b73: $f8 $88

jr_01b_4b75:
	ld hl, sp-$38                                    ; $4b75: $f8 $c8
	ld hl, sp+$30                                    ; $4b77: $f8 $30
	jr nc, @-$01                                     ; $4b79: $30 $fd

	rst SubAFromDE                                          ; $4b7b: $df
	ldh a, [$fb]                                     ; $4b7c: $f0 $fb
	ld a, e                                          ; $4b7e: $7b
	ld [hl], d                                       ; $4b7f: $72
	sbc [hl]                                         ; $4b80: $9e
	ld [bc], a                                       ; $4b81: $02
	ld l, a                                          ; $4b82: $6f
	ld c, d                                          ; $4b83: $4a
	rst SubAFromDE                                          ; $4b84: $df
	rlca                                             ; $4b85: $07
	sbc d                                            ; $4b86: $9a
	ld [$100f], sp                                   ; $4b87: $08 $0f $10
	rra                                              ; $4b8a: $1f
	ld de, $fe7b                                     ; $4b8b: $11 $7b $fe
	ld a, a                                          ; $4b8e: $7f
	ld hl, sp-$21                                    ; $4b8f: $f8 $df
	rlca                                             ; $4b91: $07
	rst SubAFromDE                                          ; $4b92: $df
	rra                                              ; $4b93: $1f
	rst $38                                          ; $4b94: $ff
	rst SubAFromDE                                          ; $4b95: $df
	ld a, a                                          ; $4b96: $7f
	adc d                                            ; $4b97: $8a
	rst $38                                          ; $4b98: $ff
	xor h                                            ; $4b99: $ac
	rst $38                                          ; $4b9a: $ff
	adc b                                            ; $4b9b: $88
	rst $38                                          ; $4b9c: $ff
	ld b, c                                          ; $4b9d: $41
	cp $23                                           ; $4b9e: $fe $23
	rst SubAFromDE                                          ; $4ba0: $df
	rst SubAFromDE                                          ; $4ba1: $df
	inc b                                            ; $4ba2: $04
	rlca                                             ; $4ba3: $07
	ld c, $0f                                        ; $4ba4: $0e $0f
	sbc a                                            ; $4ba6: $9f
	sub e                                            ; $4ba7: $93
	db $fd                                           ; $4ba8: $fd
	push af                                          ; $4ba9: $f5
	ld c, b                                          ; $4baa: $48
	ld hl, sp+$10                                    ; $4bab: $f8 $10
	ld a, e                                          ; $4bad: $7b
	or c                                             ; $4bae: $b1
	rst SubAFromDE                                          ; $4baf: $df
	ld h, b                                          ; $4bb0: $60
	ld [hl], a                                       ; $4bb1: $77
	and b                                            ; $4bb2: $a0
	db $dd                                           ; $4bb3: $dd
	add b                                            ; $4bb4: $80
	ld a, a                                          ; $4bb5: $7f
	sub d                                            ; $4bb6: $92
	ld [hl], a                                       ; $4bb7: $77
	sub b                                            ; $4bb8: $90
	rst SubAFromDE                                          ; $4bb9: $df
	add b                                            ; $4bba: $80
	sub l                                            ; $4bbb: $95
	ld c, h                                          ; $4bbc: $4c
	call z, $feb2                                    ; $4bbd: $cc $b2 $fe
	pop af                                           ; $4bc0: $f1
	rst SubAFromDE                                          ; $4bc1: $df
	ld sp, hl                                        ; $4bc2: $f9
	rra                                              ; $4bc3: $1f
	and $e6                                          ; $4bc4: $e6 $e6
	ei                                               ; $4bc6: $fb
	rst SubAFromDE                                          ; $4bc7: $df
	db $fc                                           ; $4bc8: $fc
	ld sp, hl                                        ; $4bc9: $f9
	rst SubAFromDE                                          ; $4bca: $df
	jr nc, jr_01b_4b60                               ; $4bcb: $30 $93

	jr c, jr_01b_4bf7                                ; $4bcd: $38 $28

	inc a                                            ; $4bcf: $3c
	inc h                                            ; $4bd0: $24
	ld a, h                                          ; $4bd1: $7c
	ld b, h                                          ; $4bd2: $44
	ld a, h                                          ; $4bd3: $7c
	ld b, h                                          ; $4bd4: $44
	inc a                                            ; $4bd5: $3c
	inc h                                            ; $4bd6: $24
	ld a, $22                                        ; $4bd7: $3e $22
	ld a, e                                          ; $4bd9: $7b
	and c                                            ; $4bda: $a1
	sbc h                                            ; $4bdb: $9c
	inc de                                           ; $4bdc: $13
	rrca                                             ; $4bdd: $0f
	inc c                                            ; $4bde: $0c
	ld a, d                                          ; $4bdf: $7a
	call z, $8a73                                    ; $4be0: $cc $73 $8a
	rst SubAFromDE                                          ; $4be3: $df
	ld [bc], a                                       ; $4be4: $02
	sbc [hl]                                         ; $4be5: $9e
	dec b                                            ; $4be6: $05
	ld a, d                                          ; $4be7: $7a
	ret z                                            ; $4be8: $c8

	ld a, a                                          ; $4be9: $7f
	and [hl]                                         ; $4bea: $a6
	ld a, a                                          ; $4beb: $7f
	db $eb                                           ; $4bec: $eb
	adc e                                            ; $4bed: $8b
	jr nz, jr_01b_4c2f                               ; $4bee: $20 $3f

	ld l, $3f                                        ; $4bf0: $2e $3f
	inc a                                            ; $4bf2: $3c
	scf                                              ; $4bf3: $37
	ld hl, sp-$31                                    ; $4bf4: $f8 $cf
	reti                                             ; $4bf6: $d9


jr_01b_4bf7:
	cp a                                             ; $4bf7: $bf
	db $fd                                           ; $4bf8: $fd
	scf                                              ; $4bf9: $37
	cp $c3                                           ; $4bfa: $fe $c3
	cp $23                                           ; $4bfc: $fe $23
	db $fc                                           ; $4bfe: $fc
	ld c, a                                          ; $4bff: $4f
	rst $38                                          ; $4c00: $ff
	ld [hl], e                                       ; $4c01: $73
	db $fd                                           ; $4c02: $fd
	rst SubAFromDE                                          ; $4c03: $df
	jr nz, jr_01b_4c85                               ; $4c04: $20 $7f

	ld b, c                                          ; $4c06: $41
	ld a, [hl]                                       ; $4c07: $7e
	ld a, h                                          ; $4c08: $7c
	sbc h                                            ; $4c09: $9c
	ret c                                            ; $4c0a: $d8

	ld hl, sp+$54                                    ; $4c0b: $f8 $54
	ld a, d                                          ; $4c0d: $7a
	adc b                                            ; $4c0e: $88
	sub [hl]                                         ; $4c0f: $96
	and h                                            ; $4c10: $a4
	db $fc                                           ; $4c11: $fc
	cp d                                             ; $4c12: $ba
	ld a, [$fc24]                                    ; $4c13: $fa $24 $fc
	ld a, [hl+]                                      ; $4c16: $2a
	ld a, [$7b48]                                    ; $4c17: $fa $48 $7b
	jr c, jr_01b_4c9b                                ; $4c1a: $38 $7f

	ld a, d                                          ; $4c1c: $7a
	rst SubAFromDE                                          ; $4c1d: $df
	ldh [$8b], a                                     ; $4c1e: $e0 $8b
	rst $38                                          ; $4c20: $ff
	and e                                            ; $4c21: $a3
	db $fd                                           ; $4c22: $fd
	add a                                            ; $4c23: $87
	ld a, c                                          ; $4c24: $79
	ld c, a                                          ; $4c25: $4f
	inc sp                                           ; $4c26: $33
	ccf                                              ; $4c27: $3f
	inc c                                            ; $4c28: $0c
	rrca                                             ; $4c29: $0f
	ld [$1d0f], sp                                   ; $4c2a: $08 $0f $1d
	rla                                              ; $4c2d: $17
	ccf                                              ; $4c2e: $3f

jr_01b_4c2f:
	inc hl                                           ; $4c2f: $23
	inc a                                            ; $4c30: $3c
	daa                                              ; $4c31: $27
	ld e, $1f                                        ; $4c32: $1e $1f

jr_01b_4c34:
	ld h, [hl]                                       ; $4c34: $66
	ld a, [hl]                                       ; $4c35: $7e
	ld [hl], a                                       ; $4c36: $77
	ld h, b                                          ; $4c37: $60
	ld sp, hl                                        ; $4c38: $f9
	ld l, a                                          ; $4c39: $6f
	ld e, b                                          ; $4c3a: $58
	rst SubAFromDE                                          ; $4c3b: $df
	ret nz                                           ; $4c3c: $c0

	ld a, a                                          ; $4c3d: $7f
	db $fc                                           ; $4c3e: $fc
	ld a, [hl]                                       ; $4c3f: $7e
	xor b                                            ; $4c40: $a8
	sbc d                                            ; $4c41: $9a
	jr nc, jr_01b_4c34                               ; $4c42: $30 $f0

	ret z                                            ; $4c44: $c8

	ld hl, sp+$64                                    ; $4c45: $f8 $64
	ld a, e                                          ; $4c47: $7b

jr_01b_4c48:
	ld [hl], e                                       ; $4c48: $73
	ld e, a                                          ; $4c49: $5f
	ldh [$df], a                                     ; $4c4a: $e0 $df
	ld bc, $068a                                     ; $4c4c: $01 $8a $06
	rlca                                             ; $4c4f: $07
	add hl, bc                                       ; $4c50: $09
	rrca                                             ; $4c51: $0f
	ld [hl], $3f                                     ; $4c52: $36 $3f
	ld c, h                                          ; $4c54: $4c
	ld a, a                                          ; $4c55: $7f
	dec sp                                           ; $4c56: $3b
	ccf                                              ; $4c57: $3f
	ld c, b                                          ; $4c58: $48
	ld a, a                                          ; $4c59: $7f
	ld d, b                                          ; $4c5a: $50
	ld a, a                                          ; $4c5b: $7f
	sub d                                            ; $4c5c: $92
	rst $38                                          ; $4c5d: $ff
	ld [hl], e                                       ; $4c5e: $73
	ld a, a                                          ; $4c5f: $7f
	inc de                                           ; $4c60: $13
	ld e, $09                                        ; $4c61: $1e $09
	ld a, d                                          ; $4c63: $7a
	db $fc                                           ; $4c64: $fc

jr_01b_4c65:
	db $fd                                           ; $4c65: $fd
	rst SubAFromDE                                          ; $4c66: $df
	jr z, jr_01b_4c48                                ; $4c67: $28 $df

	ldh a, [$98]                                     ; $4c69: $f0 $98
	jr c, jr_01b_4c65                                ; $4c6b: $38 $f8

	add h                                            ; $4c6d: $84
	db $fc                                           ; $4c6e: $fc
	ldh [c], a                                       ; $4c6f: $e2
	cp $12                                           ; $4c70: $fe $12
	ld a, d                                          ; $4c72: $7a
	nop                                              ; $4c73: $00
	sub c                                            ; $4c74: $91
	ld h, l                                          ; $4c75: $65
	rst $38                                          ; $4c76: $ff
	dec d                                            ; $4c77: $15
	rst $38                                          ; $4c78: $ff
	ccf                                              ; $4c79: $3f
	db $eb                                           ; $4c7a: $eb
	rst $38                                          ; $4c7b: $ff
	jp $62fe                                         ; $4c7c: $c3 $fe $62


	cp [hl]                                          ; $4c7f: $be
	ld h, d                                          ; $4c80: $62
	cp $06                                           ; $4c81: $fe $06
	ld [hl], a                                       ; $4c83: $77
	sub h                                            ; $4c84: $94

jr_01b_4c85:
	halt                                             ; $4c85: $76
	ret nz                                           ; $4c86: $c0

	ld h, [hl]                                       ; $4c87: $66
	cp [hl]                                          ; $4c88: $be
	db $fd                                           ; $4c89: $fd
	rst SubAFromDE                                          ; $4c8a: $df
	dec c                                            ; $4c8b: $0d
	sbc [hl]                                         ; $4c8c: $9e
	dec bc                                           ; $4c8d: $0b
	ld a, e                                          ; $4c8e: $7b
	ld [hl], d                                       ; $4c8f: $72
	ld a, a                                          ; $4c90: $7f
	inc l                                            ; $4c91: $2c
	rst SubAFromDE                                          ; $4c92: $df
	ld a, a                                          ; $4c93: $7f
	rst $38                                          ; $4c94: $ff
	add e                                            ; $4c95: $83
	cp $8a                                           ; $4c96: $fe $8a
	rst $38                                          ; $4c98: $ff
	ld sp, hl                                        ; $4c99: $f9
	rst $38                                          ; $4c9a: $ff

jr_01b_4c9b:
	sbc l                                            ; $4c9b: $9d
	rst $38                                          ; $4c9c: $ff
	add hl, hl                                       ; $4c9d: $29
	cp $42                                           ; $4c9e: $fe $42
	db $fd                                           ; $4ca0: $fd
	rst SubAFromBC                                          ; $4ca1: $e7
	add hl, sp                                       ; $4ca2: $39
	ccf                                              ; $4ca3: $3f
	ld e, l                                          ; $4ca4: $5d
	ld a, a                                          ; $4ca5: $7f
	ld a, [hl]                                       ; $4ca6: $7e
	halt                                             ; $4ca7: $76
	cp $92                                           ; $4ca8: $fe $92
	xor $2a                                          ; $4caa: $ee $2a
	call $d94f                                       ; $4cac: $cd $4f $d9
	rst SubAFromDE                                          ; $4caf: $df
	sub d                                            ; $4cb0: $92
	sbc [hl]                                         ; $4cb1: $9e
	ld [hl], a                                       ; $4cb2: $77
	add b                                            ; $4cb3: $80
	rst SubAFromDE                                          ; $4cb4: $df
	ld b, $80                                        ; $4cb5: $06 $80
	rrca                                             ; $4cb7: $0f
	add hl, bc                                       ; $4cb8: $09
	rrca                                             ; $4cb9: $0f
	rrca                                             ; $4cba: $0f
	dec sp                                           ; $4cbb: $3b
	ccf                                              ; $4cbc: $3f
	ld c, d                                          ; $4cbd: $4a
	ld a, a                                          ; $4cbe: $7f
	ld h, a                                          ; $4cbf: $67
	ld a, a                                          ; $4cc0: $7f
	sbc l                                            ; $4cc1: $9d
	rst $38                                          ; $4cc2: $ff
	ei                                               ; $4cc3: $fb
	xor $7f                                          ; $4cc4: $ee $7f
	call z, $c4ff                                    ; $4cc6: $cc $ff $c4
	ld a, a                                          ; $4cc9: $7f
	ld e, c                                          ; $4cca: $59
	halt                                             ; $4ccb: $76
	ld a, c                                          ; $4ccc: $79
	ld a, a                                          ; $4ccd: $7f
	ld e, c                                          ; $4cce: $59
	ld a, a                                          ; $4ccf: $7f
	ld e, c                                          ; $4cd0: $59
	ccf                                              ; $4cd1: $3f
	ld h, $3b                                        ; $4cd2: $26 $3b
	ld [hl], $c0                                     ; $4cd4: $36 $c0
	add b                                            ; $4cd6: $80
	ret nz                                           ; $4cd7: $c0

	ld hl, sp+$38                                    ; $4cd8: $f8 $38
	db $e4                                           ; $4cda: $e4
	cp h                                             ; $4cdb: $bc
	ld h, d                                          ; $4cdc: $62
	cp $32                                           ; $4cdd: $fe $32
	cp $c9                                           ; $4cdf: $fe $c9
	rst $38                                          ; $4ce1: $ff
	dec h                                            ; $4ce2: $25
	rst $38                                          ; $4ce3: $ff
	sub l                                            ; $4ce4: $95
	rst $38                                          ; $4ce5: $ff
	push de                                          ; $4ce6: $d5
	ld a, a                                          ; $4ce7: $7f
	push af                                          ; $4ce8: $f5
	ccf                                              ; $4ce9: $3f
	db $ed                                           ; $4cea: $ed
	cp a                                             ; $4ceb: $bf
	db $fd                                           ; $4cec: $fd
	rst SubAFromDE                                          ; $4ced: $df
	db $fd                                           ; $4cee: $fd
	sub a                                            ; $4cef: $97
	cp $96                                           ; $4cf0: $fe $96
	ld a, [$f13e]                                    ; $4cf2: $fa $3e $f1
	ld a, a                                          ; $4cf5: $7f
	rst SubAFromDE                                          ; $4cf6: $df
	rra                                              ; $4cf7: $1f
	adc a                                            ; $4cf8: $8f
	ld a, [hl+]                                      ; $4cf9: $2a
	ccf                                              ; $4cfa: $3f
	dec [hl]                                         ; $4cfb: $35
	ccf                                              ; $4cfc: $3f
	ld [hl], b                                       ; $4cfd: $70
	ld e, a                                          ; $4cfe: $5f
	ld a, a                                          ; $4cff: $7f
	ld e, a                                          ; $4d00: $5f
	ld hl, sp-$41                                    ; $4d01: $f8 $bf
	ldh a, [c]                                       ; $4d03: $f2
	sbc a                                            ; $4d04: $9f
	ld l, a                                          ; $4d05: $6f
	ld l, a                                          ; $4d06: $6f
	rrca                                             ; $4d07: $0f
	dec bc                                           ; $4d08: $0b
	ld a, e                                          ; $4d09: $7b
	cp $9d                                           ; $4d0a: $fe $9d
	add hl, bc                                       ; $4d0c: $09
	rra                                              ; $4d0d: $1f
	ld a, d                                          ; $4d0e: $7a
	sbc l                                            ; $4d0f: $9d
	add d                                            ; $4d10: $82
	inc hl                                           ; $4d11: $23
	ccf                                              ; $4d12: $3f
	cp $ff                                           ; $4d13: $fe $ff
	rlca                                             ; $4d15: $07
	rlca                                             ; $4d16: $07
	rst SubAFromDE                                          ; $4d17: $df
	rst SubAFromDE                                          ; $4d18: $df
	xor h                                            ; $4d19: $ac
	db $ec                                           ; $4d1a: $ec
	ld [hl], b                                       ; $4d1b: $70
	ret nc                                           ; $4d1c: $d0

	ld a, b                                          ; $4d1d: $78
	ret z                                            ; $4d1e: $c8

	db $fc                                           ; $4d1f: $fc
	db $ec                                           ; $4d20: $ec
	ld e, [hl]                                       ; $4d21: $5e
	jp nc, $e27e                                     ; $4d22: $d2 $7e $e2

	call c, $c8d4                                    ; $4d25: $dc $d4 $c8
	ld c, b                                          ; $4d28: $48
	ret nz                                           ; $4d29: $c0

	ld b, b                                          ; $4d2a: $40
	ldh [rAUD4LEN], a                                ; $4d2b: $e0 $20
	ldh [$7b], a                                     ; $4d2d: $e0 $7b
	db $fd                                           ; $4d2f: $fd
	ld [hl], a                                       ; $4d30: $77
	cp $df                                           ; $4d31: $fe $df
	db $fc                                           ; $4d33: $fc
	inc sp                                           ; $4d34: $33
	add b                                            ; $4d35: $80
	sub h                                            ; $4d36: $94
	ld b, b                                          ; $4d37: $40
	ld a, a                                          ; $4d38: $7f
	ld e, l                                          ; $4d39: $5d
	ld l, [hl]                                       ; $4d3a: $6e
	ld e, c                                          ; $4d3b: $59
	ld a, a                                          ; $4d3c: $7f
	ld a, c                                          ; $4d3d: $79
	ccf                                              ; $4d3e: $3f
	ld h, $3f                                        ; $4d3f: $26 $3f
	jr nc, jr_01b_4d76                               ; $4d41: $30 $33

	add b                                            ; $4d43: $80
	sbc [hl]                                         ; $4d44: $9e
	ccf                                              ; $4d45: $3f
	ld c, a                                          ; $4d46: $4f
	add b                                            ; $4d47: $80
	sub a                                            ; $4d48: $97
	ld d, l                                          ; $4d49: $55
	ld a, a                                          ; $4d4a: $7f
	ld [hl], b                                       ; $4d4b: $70
	ld a, a                                          ; $4d4c: $7f
	ld a, a                                          ; $4d4d: $7f
	ld c, a                                          ; $4d4e: $4f
	jr c, @+$31                                      ; $4d4f: $38 $2f

	ld [hl], l                                       ; $4d51: $75
	ld l, h                                          ; $4d52: $6c
	ld b, a                                          ; $4d53: $47
	add b                                            ; $4d54: $80
	rst SubAFromDE                                          ; $4d55: $df
	sbc $73                                          ; $4d56: $de $73
	add b                                            ; $4d58: $80
	sbc b                                            ; $4d59: $98
	add sp, -$08                                     ; $4d5a: $e8 $f8
	ret z                                            ; $4d5c: $c8

	ld [hl], b                                       ; $4d5d: $70
	ret nc                                           ; $4d5e: $d0

	ld h, b                                          ; $4d5f: $60
	ldh [$72], a                                     ; $4d60: $e0 $72
	ld a, a                                          ; $4d62: $7f
	dec hl                                           ; $4d63: $2b
	add b                                            ; $4d64: $80
	sbc [hl]                                         ; $4d65: $9e
	rst SubAFromBC                                          ; $4d66: $e7
	ld a, d                                          ; $4d67: $7a
	reti                                             ; $4d68: $d9


	ld h, e                                          ; $4d69: $63
	add b                                            ; $4d6a: $80
	ld a, e                                          ; $4d6b: $7b
	add d                                            ; $4d6c: $82
	sbc c                                            ; $4d6d: $99
	ld a, a                                          ; $4d6e: $7f
	ld l, c                                          ; $4d6f: $69
	ld a, a                                          ; $4d70: $7f
	ld h, [hl]                                       ; $4d71: $66
	ei                                               ; $4d72: $fb
	sub [hl]                                         ; $4d73: $96
	ld h, a                                          ; $4d74: $67
	add b                                            ; $4d75: $80

jr_01b_4d76:
	sbc l                                            ; $4d76: $9d
	ld sp, $53ff                                     ; $4d77: $31 $ff $53
	add b                                            ; $4d7a: $80
	adc c                                            ; $4d7b: $89
	sbc a                                            ; $4d7c: $9f
	cp $d6                                           ; $4d7d: $fe $d6
	cp $56                                           ; $4d7f: $fe $56
	ld a, [$f11e]                                    ; $4d81: $fa $1e $f1
	ld a, a                                          ; $4d84: $7f
	rst $38                                          ; $4d85: $ff
	sbc a                                            ; $4d86: $9f
	ld a, [$758f]                                    ; $4d87: $fa $8f $75
	ld e, a                                          ; $4d8a: $5f
	ld [hl], b                                       ; $4d8b: $70
	ld e, a                                          ; $4d8c: $5f
	ccf                                              ; $4d8d: $3f
	ccf                                              ; $4d8e: $3f
	ld [$0a0f], sp                                   ; $4d8f: $08 $0f $0a
	sbc $0f                                          ; $4d92: $de $0f
	sub l                                            ; $4d94: $95
	rra                                              ; $4d95: $1f
	ld a, [de]                                       ; $4d96: $1a
	cpl                                              ; $4d97: $2f
	ld a, [hl-]                                      ; $4d98: $3a
	dec l                                            ; $4d99: $2d
	dec a                                            ; $4d9a: $3d
	inc h                                            ; $4d9b: $24
	inc a                                            ; $4d9c: $3c
	jr jr_01b_4db7                                   ; $4d9d: $18 $18

	db $fd                                           ; $4d9f: $fd
	rst SubAFromDE                                          ; $4da0: $df
	ccf                                              ; $4da1: $3f
	sub l                                            ; $4da2: $95
	cp $9e                                           ; $4da3: $fe $9e
	ld hl, sp-$78                                    ; $4da5: $f8 $88
	ld a, b                                          ; $4da7: $78
	ret c                                            ; $4da8: $d8

	ld a, b                                          ; $4da9: $78
	ret z                                            ; $4daa: $c8

	ldh a, [$f0]                                     ; $4dab: $f0 $f0
	ld [hl], l                                       ; $4dad: $75
	ld e, d                                          ; $4dae: $5a
	rst SubAFromDE                                          ; $4daf: $df
	db $fc                                           ; $4db0: $fc
	sub a                                            ; $4db1: $97
	ldh [c], a                                       ; $4db2: $e2
	cp [hl]                                          ; $4db3: $be
	ldh [c], a                                       ; $4db4: $e2
	ld a, $fa                                        ; $4db5: $3e $fa

jr_01b_4db7:
	cp $04                                           ; $4db7: $fe $04
	inc b                                            ; $4db9: $04
	ei                                               ; $4dba: $fb
	rst SubAFromDE                                          ; $4dbb: $df
	cp $df                                           ; $4dbc: $fe $df
	inc bc                                           ; $4dbe: $03
	ld a, l                                          ; $4dbf: $7d
	add $7d                                          ; $4dc0: $c6 $7d
	ld c, $7d                                        ; $4dc2: $0e $7d
	add [hl]                                         ; $4dc4: $86
	add b                                            ; $4dc5: $80
	ld [hl+], a                                      ; $4dc6: $22
	ccf                                              ; $4dc7: $3f
	ld b, a                                          ; $4dc8: $47
	ld a, l                                          ; $4dc9: $7d
	ld b, a                                          ; $4dca: $47
	ld a, l                                          ; $4dcb: $7d
	add a                                            ; $4dcc: $87

jr_01b_4dcd:
	db $fc                                           ; $4dcd: $fc
	add a                                            ; $4dce: $87
	rst $38                                          ; $4dcf: $ff
	add a                                            ; $4dd0: $87
	db $fc                                           ; $4dd1: $fc

jr_01b_4dd2:
	ld b, a                                          ; $4dd2: $47
	ld a, h                                          ; $4dd3: $7c
	ld b, e                                          ; $4dd4: $43
	ld a, a                                          ; $4dd5: $7f
	jr nz, jr_01b_4e17                               ; $4dd6: $20 $3f

	ld b, b                                          ; $4dd8: $40
	ld a, a                                          ; $4dd9: $7f
	sbc b                                            ; $4dda: $98
	rst $38                                          ; $4ddb: $ff
	rst SubAFromBC                                          ; $4ddc: $e7
	rst SubAFromBC                                          ; $4ddd: $e7
	ret nz                                           ; $4dde: $c0

	ret nz                                           ; $4ddf: $c0

	jr nc, jr_01b_4dd2                               ; $4de0: $30 $f0

	ld [$04f8], sp                                   ; $4de2: $08 $f8 $04
	adc b                                            ; $4de5: $88
	db $fc                                           ; $4de6: $fc
	add d                                            ; $4de7: $82
	cp $c2                                           ; $4de8: $fe $c2
	ld a, [hl]                                       ; $4dea: $7e
	pop bc                                           ; $4deb: $c1
	ld a, a                                          ; $4dec: $7f
	pop hl                                           ; $4ded: $e1
	cp a                                             ; $4dee: $bf
	pop af                                           ; $4def: $f1
	ld e, a                                          ; $4df0: $5f
	pop hl                                           ; $4df1: $e1
	cp a                                             ; $4df2: $bf

jr_01b_4df3:
	jp nz, $827e                                     ; $4df3: $c2 $7e $82

	cp $04                                           ; $4df6: $fe $04
	db $fc                                           ; $4df8: $fc
	jr jr_01b_4df3                                   ; $4df9: $18 $f8

	ld h, b                                          ; $4dfb: $60
	ldh [$74], a                                     ; $4dfc: $e0 $74
	sbc d                                            ; $4dfe: $9a
	ld [hl], l                                       ; $4dff: $75
	call nz, $ca74                                   ; $4e00: $c4 $74 $ca
	ld a, a                                          ; $4e03: $7f
	adc $77                                          ; $4e04: $ce $77
	call z, $fe77                                    ; $4e06: $cc $77 $fe
	ld a, h                                          ; $4e09: $7c
	ld a, b                                          ; $4e0a: $78
	ld a, a                                          ; $4e0b: $7f
	cp $7f                                           ; $4e0c: $fe $7f
	ldh a, [$7f]                                     ; $4e0e: $f0 $7f
	db $ec                                           ; $4e10: $ec
	ld a, a                                          ; $4e11: $7f
	add sp, $75                                      ; $4e12: $e8 $75
	db $ec                                           ; $4e14: $ec
	ld l, a                                          ; $4e15: $6f
	cp [hl]                                          ; $4e16: $be

jr_01b_4e17:
	ld a, l                                          ; $4e17: $7d
	jp nz, $0298                                     ; $4e18: $c2 $98 $02

	cp $82                                           ; $4e1b: $fe $82
	cp $01                                           ; $4e1d: $fe $01
	rst $38                                          ; $4e1f: $ff
	add c                                            ; $4e20: $81
	ld a, e                                          ; $4e21: $7b
	cp $7f                                           ; $4e22: $fe $7f
	ret nz                                           ; $4e24: $c0

	ld a, a                                          ; $4e25: $7f
	cp $77                                           ; $4e26: $fe $77
	ldh a, [$9b]                                     ; $4e28: $f0 $9b
	add hl, sp                                       ; $4e2a: $39
	rst $38                                          ; $4e2b: $ff
	rst JumpTable                                          ; $4e2c: $c7
	rst JumpTable                                          ; $4e2d: $c7
	db $fd                                           ; $4e2e: $fd
	rst SubAFromDE                                          ; $4e2f: $df
	jr jr_01b_4dcd                                   ; $4e30: $18 $9b

	ld a, $36                                        ; $4e32: $3e $36
	ld a, a                                          ; $4e34: $7f
	ld b, e                                          ; $4e35: $43
	ld a, e                                          ; $4e36: $7b
	rst SubAFromBC                                          ; $4e37: $e7
	sub b                                            ; $4e38: $90
	add e                                            ; $4e39: $83
	ld a, a                                          ; $4e3a: $7f
	ld h, l                                          ; $4e3b: $65
	ld a, a                                          ; $4e3c: $7f
	ld b, c                                          ; $4e3d: $41
	ld a, a                                          ; $4e3e: $7f
	ld b, c                                          ; $4e3f: $41
	ld a, $32                                        ; $4e40: $3e $32
	ld c, $0a                                        ; $4e42: $0e $0a
	rlca                                             ; $4e44: $07
	dec b                                            ; $4e45: $05
	ld [bc], a                                       ; $4e46: $02
	ld [bc], a                                       ; $4e47: $02
	db $fd                                           ; $4e48: $fd
	rst SubAFromDE                                          ; $4e49: $df
	inc a                                            ; $4e4a: $3c
	sub c                                            ; $4e4b: $91
	ld d, d                                          ; $4e4c: $52
	ld a, [hl]                                       ; $4e4d: $7e
	sbc a                                            ; $4e4e: $9f
	rst $38                                          ; $4e4f: $ff
	or c                                             ; $4e50: $b1
	rst $38                                          ; $4e51: $ff
	rst GetHLinHL                                          ; $4e52: $cf
	rst $38                                          ; $4e53: $ff
	sbc c                                            ; $4e54: $99
	rst $38                                          ; $4e55: $ff
	ld l, d                                          ; $4e56: $6a
	ld a, [hl]                                       ; $4e57: $7e
	inc a                                            ; $4e58: $3c
	inc a                                            ; $4e59: $3c
	pop af                                           ; $4e5a: $f1
	rst SubAFromDE                                          ; $4e5b: $df
	inc a                                            ; $4e5c: $3c
	sbc d                                            ; $4e5d: $9a
	ld c, d                                          ; $4e5e: $4a
	ld a, [hl]                                       ; $4e5f: $7e
	or c                                             ; $4e60: $b1
	rst $38                                          ; $4e61: $ff
	rst AddAOntoHL                                          ; $4e62: $ef
	ld a, e                                          ; $4e63: $7b
	ldh [c], a                                       ; $4e64: $e2
	sbc h                                            ; $4e65: $9c
	and l                                            ; $4e66: $a5
	rst $38                                          ; $4e67: $ff
	ld h, d                                          ; $4e68: $62
	inc sp                                           ; $4e69: $33
	ldh [hDisp1_OBP1], a                                     ; $4e6a: $e0 $94
	ld b, d                                          ; $4e6c: $42
	ld a, [hl]                                       ; $4e6d: $7e
	and c                                            ; $4e6e: $a1
	rst $38                                          ; $4e6f: $ff
	sub c                                            ; $4e70: $91
	rst $38                                          ; $4e71: $ff
	pop bc                                           ; $4e72: $c1
	rst $38                                          ; $4e73: $ff
	and c                                            ; $4e74: $a1
	rst $38                                          ; $4e75: $ff
	ld b, d                                          ; $4e76: $42
	dec hl                                           ; $4e77: $2b
	ldh [$7f], a                                     ; $4e78: $e0 $7f
	add a                                            ; $4e7a: $87
	ld a, a                                          ; $4e7b: $7f
	jp nz, $fc77                                     ; $4e7c: $c2 $77 $fc

	daa                                              ; $4e7f: $27
	ldh [rAUD2ENV], a                                ; $4e80: $e0 $17
	ret nz                                           ; $4e82: $c0

	ldh [$c1], a                                     ; $4e83: $e0 $c1
	call z, $ff02                                    ; $4e85: $cc $02 $ff
	rst SubAFromDE                                          ; $4e88: $df
	inc b                                            ; $4e89: $04
	add b                                            ; $4e8a: $80
	dec bc                                           ; $4e8b: $0b
	rrca                                             ; $4e8c: $0f
	ld [$140f], sp                                   ; $4e8d: $08 $0f $14
	rra                                              ; $4e90: $1f
	ld a, [hl+]                                      ; $4e91: $2a
	ccf                                              ; $4e92: $3f
	dec [hl]                                         ; $4e93: $35
	ccf                                              ; $4e94: $3f
	inc h                                            ; $4e95: $24
	ccf                                              ; $4e96: $3f
	inc l                                            ; $4e97: $2c
	ccf                                              ; $4e98: $3f
	cpl                                              ; $4e99: $2f
	dec sp                                           ; $4e9a: $3b
	rra                                              ; $4e9b: $1f
	ld a, [de]                                       ; $4e9c: $1a
	rrca                                             ; $4e9d: $0f
	rrca                                             ; $4e9e: $0f
	dec e                                            ; $4e9f: $1d
	inc de                                           ; $4ea0: $13
	rra                                              ; $4ea1: $1f
	ld [de], a                                       ; $4ea2: $12
	rrca                                             ; $4ea3: $0f
	ld [$0407], sp                                   ; $4ea4: $08 $07 $04
	nop                                              ; $4ea7: $00
	nop                                              ; $4ea8: $00
	ret nc                                           ; $4ea9: $d0

	add d                                            ; $4eaa: $82
	ret nc                                           ; $4eab: $d0

	jr z, @-$06                                      ; $4eac: $28 $f8

	sub h                                            ; $4eae: $94
	db $fc                                           ; $4eaf: $fc
	ld b, h                                          ; $4eb0: $44
	db $fc                                           ; $4eb1: $fc
	ld a, h                                          ; $4eb2: $7c
	db $fc                                           ; $4eb3: $fc
	add $fe                                          ; $4eb4: $c6 $fe
	add c                                            ; $4eb6: $81
	rst $38                                          ; $4eb7: $ff
	ld b, h                                          ; $4eb8: $44
	rst $38                                          ; $4eb9: $ff
	inc hl                                           ; $4eba: $23
	rst $38                                          ; $4ebb: $ff
	sub d                                            ; $4ebc: $92
	cp $b2                                           ; $4ebd: $fe $b2
	ld a, [hl]                                       ; $4ebf: $7e
	ldh a, [c]                                       ; $4ec0: $f2
	ld e, [hl]                                       ; $4ec1: $5e
	db $f4                                           ; $4ec2: $f4
	inc e                                            ; $4ec3: $1c
	add sp, $38                                      ; $4ec4: $e8 $38
	ldh a, [$30]                                     ; $4ec6: $f0 $30
	inc sp                                           ; $4ec8: $33
	ret nz                                           ; $4ec9: $c0

	sbc d                                            ; $4eca: $9a
	jr jr_01b_4edc                                   ; $4ecb: $18 $0f

	ld a, [bc]                                       ; $4ecd: $0a
	rra                                              ; $4ece: $1f
	dec d                                            ; $4ecf: $15
	ld l, a                                          ; $4ed0: $6f
	ret nz                                           ; $4ed1: $c0

	rst SubAFromDE                                          ; $4ed2: $df
	inc bc                                           ; $4ed3: $03
	sub l                                            ; $4ed4: $95
	ld [bc], a                                       ; $4ed5: $02
	inc bc                                           ; $4ed6: $03
	ld c, $0f                                        ; $4ed7: $0e $0f
	rra                                              ; $4ed9: $1f
	inc de                                           ; $4eda: $13
	rra                                              ; $4edb: $1f

jr_01b_4edc:
	inc de                                           ; $4edc: $13
	rrca                                             ; $4edd: $0f
	ld c, $de                                        ; $4ede: $0e $de
	rlca                                             ; $4ee0: $07
	sbc e                                            ; $4ee1: $9b
	dec b                                            ; $4ee2: $05
	ld b, $07                                        ; $4ee3: $06 $07
	ld [bc], a                                       ; $4ee5: $02
	sbc $03                                          ; $4ee6: $de $03
	ld [hl], a                                       ; $4ee8: $77
	db $fc                                           ; $4ee9: $fc
	rst SubAFromDE                                          ; $4eea: $df
	rlca                                             ; $4eeb: $07
	rst SubAFromDE                                          ; $4eec: $df
	ld a, a                                          ; $4eed: $7f
	rst $38                                          ; $4eee: $ff
	rst SubAFromDE                                          ; $4eef: $df
	ldh [$8e], a                                     ; $4ef0: $e0 $8e
	sub b                                            ; $4ef2: $90
	ldh a, [rOBP0]                                   ; $4ef3: $f0 $48
	ld hl, sp-$38                                    ; $4ef5: $f8 $c8
	ld hl, sp-$30                                    ; $4ef7: $f8 $d0
	ld [hl], b                                       ; $4ef9: $70
	ldh [rAUD4LEN], a                                ; $4efa: $e0 $20
	ldh [$60], a                                     ; $4efc: $e0 $60
	add b                                            ; $4efe: $80
	add b                                            ; $4eff: $80
	ret nz                                           ; $4f00: $c0

	ret nz                                           ; $4f01: $c0

	ld h, b                                          ; $4f02: $60
	call c, $dfe0                                    ; $4f03: $dc $e0 $df
	ret nz                                           ; $4f06: $c0

	rst SubAFromDE                                          ; $4f07: $df
	add b                                            ; $4f08: $80
	rst SubAFromDE                                          ; $4f09: $df
	db $fc                                           ; $4f0a: $fc
	rst $38                                          ; $4f0b: $ff
	rst SubAFromDE                                          ; $4f0c: $df
	rlca                                             ; $4f0d: $07
	ld a, a                                          ; $4f0e: $7f
	or h                                             ; $4f0f: $b4
	ld a, e                                          ; $4f10: $7b
	and c                                            ; $4f11: $a1
	sbc d                                            ; $4f12: $9a
	add hl, bc                                       ; $4f13: $09
	ld b, $07                                        ; $4f14: $06 $07
	ld bc, $fd01                                     ; $4f16: $01 $01 $fd
	rst SubAFromDE                                          ; $4f19: $df
	ld bc, $1bdf                                     ; $4f1a: $01 $df $1b
	adc c                                            ; $4f1d: $89
	inc e                                            ; $4f1e: $1c
	rra                                              ; $4f1f: $1f
	dec e                                            ; $4f20: $1d
	rra                                              ; $4f21: $1f
	ld c, $0e                                        ; $4f22: $0e $0e
	nop                                              ; $4f24: $00
	nop                                              ; $4f25: $00
	ccf                                              ; $4f26: $3f
	ccf                                              ; $4f27: $3f
	nop                                              ; $4f28: $00
	nop                                              ; $4f29: $00
	ld a, h                                          ; $4f2a: $7c
	ld a, h                                          ; $4f2b: $7c
	and [hl]                                         ; $4f2c: $a6
	cp [hl]                                          ; $4f2d: $be
	call $15ff                                       ; $4f2e: $cd $ff $15
	rst $38                                          ; $4f31: $ff
	ld l, $fe                                        ; $4f32: $2e $fe
	db $dd                                           ; $4f34: $dd
	db $fc                                           ; $4f35: $fc
	rst SubAFromDE                                          ; $4f36: $df
	rst $38                                          ; $4f37: $ff
	sbc c                                            ; $4f38: $99
	cp $3b                                           ; $4f39: $fe $3b
	sbc $53                                          ; $4f3b: $de $53
	adc a                                            ; $4f3d: $8f
	adc a                                            ; $4f3e: $8f
	ei                                               ; $4f3f: $fb
	rst SubAFromDE                                          ; $4f40: $df
	rst $38                                          ; $4f41: $ff
	di                                               ; $4f42: $f3
	rst SubAFromDE                                          ; $4f43: $df
	ret nz                                           ; $4f44: $c0

	rst SubAFromDE                                          ; $4f45: $df
	ldh [$7f], a                                     ; $4f46: $e0 $7f
	and d                                            ; $4f48: $a2
	rst SubAFromDE                                          ; $4f49: $df
	ldh a, [$df]                                     ; $4f4a: $f0 $df
	jr nc, jr_01b_4fb5                               ; $4f4c: $30 $67

	ldh a, [rIE]                                     ; $4f4e: $f0 $ff
	rst SubAFromDE                                          ; $4f50: $df
	ld b, $7f                                        ; $4f51: $06 $7f
	and h                                            ; $4f53: $a4
	ld d, a                                          ; $4f54: $57
	and d                                            ; $4f55: $a2
	rst SubAFromDE                                          ; $4f56: $df
	inc bc                                           ; $4f57: $03
	sbc e                                            ; $4f58: $9b
	ld [hl], $37                                     ; $4f59: $36 $37
	inc a                                            ; $4f5b: $3c
	ccf                                              ; $4f5c: $3f
	ld d, a                                          ; $4f5d: $57
	and b                                            ; $4f5e: $a0
	sbc d                                            ; $4f5f: $9a
	ld d, d                                          ; $4f60: $52
	ld a, [hl]                                       ; $4f61: $7e
	ret                                              ; $4f62: $c9


	rst $38                                          ; $4f63: $ff
	ld c, l                                          ; $4f64: $4d
	ld a, e                                          ; $4f65: $7b
	cp $93                                           ; $4f66: $fe $93
	cp $f2                                           ; $4f68: $fe $f2
	rst $38                                          ; $4f6a: $ff
	di                                               ; $4f6b: $f3
	cp $7f                                           ; $4f6c: $fe $7f
	db $fc                                           ; $4f6e: $fc
	ld h, a                                          ; $4f6f: $67
	sbc l                                            ; $4f70: $9d
	sub a                                            ; $4f71: $97
	adc [hl]                                         ; $4f72: $8e
	adc [hl]                                         ; $4f73: $8e
	cpl                                              ; $4f74: $2f
	and b                                            ; $4f75: $a0
	ld [hl], a                                       ; $4f76: $77
	ld b, d                                          ; $4f77: $42
	ld [hl], e                                       ; $4f78: $73
	sbc h                                            ; $4f79: $9c
	sbc [hl]                                         ; $4f7a: $9e
	ld h, b                                          ; $4f7b: $60
	ld e, a                                          ; $4f7c: $5f
	and b                                            ; $4f7d: $a0
	ld c, a                                          ; $4f7e: $4f
	ld b, b                                          ; $4f7f: $40
	rst SubAFromDE                                          ; $4f80: $df
	ld h, e                                          ; $4f81: $63
	sub a                                            ; $4f82: $97
	ld a, a                                          ; $4f83: $7f
	ld a, h                                          ; $4f84: $7c
	ld [hl], e                                       ; $4f85: $73
	ld a, a                                          ; $4f86: $7f
	ld a, $3e                                        ; $4f87: $3e $3e
	jr jr_01b_4fa3                                   ; $4f89: $18 $18

	db $fd                                           ; $4f8b: $fd
	ccf                                              ; $4f8c: $3f
	ld b, b                                          ; $4f8d: $40
	ld a, e                                          ; $4f8e: $7b
	ld a, $9a                                        ; $4f8f: $3e $9a
	rst FarCall                                          ; $4f91: $f7
	sbc [hl]                                         ; $4f92: $9e
	sub e                                            ; $4f93: $93
	rrca                                             ; $4f94: $0f
	rrca                                             ; $4f95: $0f
	ld [hl], a                                       ; $4f96: $77
	call nc, $01df                                   ; $4f97: $d4 $df $01
	ld b, a                                          ; $4f9a: $47
	and b                                            ; $4f9b: $a0
	db $fd                                           ; $4f9c: $fd
	rst SubAFromDE                                          ; $4f9d: $df
	ldh [$9b], a                                     ; $4f9e: $e0 $9b
	ld [hl], b                                       ; $4fa0: $70
	ldh a, [rSVBK]                                   ; $4fa1: $f0 $70

jr_01b_4fa3:
	ldh a, [$6e]                                     ; $4fa3: $f0 $6e
	sbc $df                                          ; $4fa5: $de $df
	ldh a, [$fb]                                     ; $4fa7: $f0 $fb
	rst SubAFromDE                                          ; $4fa9: $df
	rlca                                             ; $4faa: $07
	add l                                            ; $4fab: $85
	jr jr_01b_4fcd                                   ; $4fac: $18 $1f

	daa                                              ; $4fae: $27
	jr c, jr_01b_5000                                ; $4faf: $38 $4f

	ld [hl], a                                       ; $4fb1: $77
	ld c, b                                          ; $4fb2: $48
	ld a, a                                          ; $4fb3: $7f
	sub l                                            ; $4fb4: $95

jr_01b_4fb5:
	rst $38                                          ; $4fb5: $ff
	push hl                                          ; $4fb6: $e5
	rst $38                                          ; $4fb7: $ff
	xor l                                            ; $4fb8: $ad
	cp d                                             ; $4fb9: $ba
	rra                                              ; $4fba: $1f
	ld d, $0b                                        ; $4fbb: $16 $0b
	ld e, $2f                                        ; $4fbd: $1e $2f
	ld [hl], $2f                                     ; $4fbf: $36 $2f
	ld a, $2f                                        ; $4fc1: $3e $2f
	add hl, sp                                       ; $4fc3: $39
	rlca                                             ; $4fc4: $07
	inc e                                            ; $4fc5: $1c
	db $fd                                           ; $4fc6: $fd
	rst SubAFromDE                                          ; $4fc7: $df
	ld a, b                                          ; $4fc8: $78
	add l                                            ; $4fc9: $85
	add h                                            ; $4fca: $84
	db $fc                                           ; $4fcb: $fc
	ldh [c], a                                       ; $4fcc: $e2

jr_01b_4fcd:
	ld e, $f2                                        ; $4fcd: $1e $f2
	xor $19                                          ; $4fcf: $ee $19
	rst FarCall                                          ; $4fd1: $f7
	add hl, hl                                       ; $4fd2: $29
	rst $38                                          ; $4fd3: $ff
	dec h                                            ; $4fd4: $25
	rst $38                                          ; $4fd5: $ff
	or l                                             ; $4fd6: $b5
	rst SubAFromDE                                          ; $4fd7: $df
	ld sp, hl                                        ; $4fd8: $f9
	ld l, a                                          ; $4fd9: $6f
	cp l                                             ; $4fda: $bd
	ld [hl], a                                       ; $4fdb: $77
	db $fd                                           ; $4fdc: $fd
	ld h, a                                          ; $4fdd: $67
	db $fd                                           ; $4fde: $fd
	ld h, a                                          ; $4fdf: $67
	rst $38                                          ; $4fe0: $ff
	adc a                                            ; $4fe1: $8f
	rst $38                                          ; $4fe2: $ff
	add hl, de                                       ; $4fe3: $19
	rrca                                             ; $4fe4: $0f
	ret nz                                           ; $4fe5: $c0

	sbc l                                            ; $4fe6: $9d
	ld b, $1d                                        ; $4fe7: $06 $1d
	dec bc                                           ; $4fe9: $0b
	ret nz                                           ; $4fea: $c0

	sbc [hl]                                         ; $4feb: $9e
	sbc c                                            ; $4fec: $99
	inc sp                                           ; $4fed: $33
	ret nz                                           ; $4fee: $c0

	sbc h                                            ; $4fef: $9c
	db $10                                           ; $4ff0: $10
	rrca                                             ; $4ff1: $0f
	ld d, $7b                                        ; $4ff2: $16 $7b
	jp nz, $3a9a                                     ; $4ff4: $c2 $9a $3a

	ccf                                              ; $4ff7: $3f
	add hl, sp                                       ; $4ff8: $39
	ccf                                              ; $4ff9: $3f
	inc h                                            ; $4ffa: $24
	inc sp                                           ; $4ffb: $33
	ret nz                                           ; $4ffc: $c0

	sbc [hl]                                         ; $4ffd: $9e
	rrca                                             ; $4ffe: $0f
	ld a, e                                          ; $4fff: $7b

jr_01b_5000:
	jp nz, $be7f                                     ; $5000: $c2 $7f $be

	sbc [hl]                                         ; $5003: $9e
	ld d, a                                          ; $5004: $57
	dec de                                           ; $5005: $1b
	ret nz                                           ; $5006: $c0

	sbc e                                            ; $5007: $9b
	db $10                                           ; $5008: $10
	cpl                                              ; $5009: $2f
	scf                                              ; $500a: $37
	dec hl                                           ; $500b: $2b
	rra                                              ; $500c: $1f
	ld b, b                                          ; $500d: $40
	ld a, a                                          ; $500e: $7f
	ret nz                                           ; $500f: $c0

	sub [hl]                                         ; $5010: $96
	rlca                                             ; $5011: $07
	db $fd                                           ; $5012: $fd
	ld [hl], a                                       ; $5013: $77
	cp l                                             ; $5014: $bd
	ld h, a                                          ; $5015: $67
	ld sp, hl                                        ; $5016: $f9
	adc a                                            ; $5017: $8f
	ld sp, hl                                        ; $5018: $f9
	rra                                              ; $5019: $1f
	ld a, c                                          ; $501a: $79
	sbc [hl]                                         ; $501b: $9e
	ld a, l                                          ; $501c: $7d
	or e                                             ; $501d: $b3
	sbc [hl]                                         ; $501e: $9e
	ld [bc], a                                       ; $501f: $02
	ld l, [hl]                                       ; $5020: $6e
	ld b, d                                          ; $5021: $42
	push af                                          ; $5022: $f5
	rst SubAFromDE                                          ; $5023: $df
	ld bc, $0fdf                                     ; $5024: $01 $df $0f
	ld [hl], d                                       ; $5027: $72
	ld e, h                                          ; $5028: $5c
	add d                                            ; $5029: $82
	rst AddAOntoHL                                          ; $502a: $ef
	rst $38                                          ; $502b: $ff
	pop bc                                           ; $502c: $c1
	rst $38                                          ; $502d: $ff
	add c                                            ; $502e: $81
	rst $38                                          ; $502f: $ff
	jp rIE                                         ; $5030: $c3 $ff $ff


	ld b, d                                          ; $5033: $42
	ld a, [hl]                                       ; $5034: $7e
	ld h, d                                          ; $5035: $62
	ld a, [hl]                                       ; $5036: $7e
	ld d, d                                          ; $5037: $52
	ld a, [hl]                                       ; $5038: $7e
	add hl, hl                                       ; $5039: $29
	ccf                                              ; $503a: $3f
	add hl, hl                                       ; $503b: $29
	ccf                                              ; $503c: $3f
	cpl                                              ; $503d: $2f
	ccf                                              ; $503e: $3f
	ld sp, hl                                        ; $503f: $f9
	rst $38                                          ; $5040: $ff
	jr @+$01                                         ; $5041: $18 $ff

	db $fc                                           ; $5043: $fc
	rst $38                                          ; $5044: $ff
	rlca                                             ; $5045: $07
	rlca                                             ; $5046: $07
	ld a, d                                          ; $5047: $7a
	or b                                             ; $5048: $b0
	ld a, c                                          ; $5049: $79
	adc d                                            ; $504a: $8a
	ld a, a                                          ; $504b: $7f
	db $fc                                           ; $504c: $fc
	sbc e                                            ; $504d: $9b
	ret nz                                           ; $504e: $c0

	ld b, b                                          ; $504f: $40
	add b                                            ; $5050: $80
	add b                                            ; $5051: $80
	ld b, [hl]                                       ; $5052: $46
	inc [hl]                                         ; $5053: $34
	rst SubAFromDE                                          ; $5054: $df
	add b                                            ; $5055: $80
	rst SubAFromDE                                          ; $5056: $df
	ldh [rAUD2LEN], a                                ; $5057: $e0 $16
	and b                                            ; $5059: $a0
	sbc c                                            ; $505a: $99
	ccf                                              ; $505b: $3f
	ld a, $3f                                        ; $505c: $3e $3f
	add hl, hl                                       ; $505e: $29
	ld a, a                                          ; $505f: $7f
	ld c, h                                          ; $5060: $4c
	rrca                                             ; $5061: $0f
	ldh [$9d], a                                     ; $5062: $e0 $9d
	ld a, [hl]                                       ; $5064: $7e
	ld c, l                                          ; $5065: $4d
	ld a, b                                          ; $5066: $78
	db $fc                                           ; $5067: $fc
	sbc [hl]                                         ; $5068: $9e
	dec b                                            ; $5069: $05
	ld [hl], h                                       ; $506a: $74
	ld a, [$603f]                                    ; $506b: $fa $3f $60
	ld [hl], a                                       ; $506e: $77
	add d                                            ; $506f: $82
	inc bc                                           ; $5070: $03
	ld h, b                                          ; $5071: $60
	ld a, a                                          ; $5072: $7f
	ld h, b                                          ; $5073: $60
	sbc [hl]                                         ; $5074: $9e
	and b                                            ; $5075: $a0
	ld a, e                                          ; $5076: $7b
	ld e, [hl]                                       ; $5077: $5e
	ld a, e                                          ; $5078: $7b
	ld h, b                                          ; $5079: $60
	ld [hl], l                                       ; $507a: $75
	or h                                             ; $507b: $b4
	scf                                              ; $507c: $37
	ld h, b                                          ; $507d: $60
	ld a, a                                          ; $507e: $7f
	and h                                            ; $507f: $a4
	ld a, e                                          ; $5080: $7b
	and b                                            ; $5081: $a0
	sbc [hl]                                         ; $5082: $9e
	ld b, $03                                        ; $5083: $06 $03
	and b                                            ; $5085: $a0
	sbc h                                            ; $5086: $9c
	jp Jump_01b_7e7e                                 ; $5087: $c3 $7e $7e


	cpl                                              ; $508a: $2f
	and b                                            ; $508b: $a0
	ld a, a                                          ; $508c: $7f
	rst SubAFromHL                                          ; $508d: $d7
	db $eb                                           ; $508e: $eb
	ld h, a                                          ; $508f: $67
	ret nz                                           ; $5090: $c0

	rlca                                             ; $5091: $07
	ldh [rTAC], a                                    ; $5092: $e0 $07
	ld b, b                                          ; $5094: $40
	ld a, [hl]                                       ; $5095: $7e
	and e                                            ; $5096: $a3
	ld a, a                                          ; $5097: $7f
	ld b, l                                          ; $5098: $45
	db $dd                                           ; $5099: $dd
	add b                                            ; $509a: $80
	pop af                                           ; $509b: $f1
	ld h, a                                          ; $509c: $67
	ld b, b                                          ; $509d: $40
	rst SubAFromDE                                          ; $509e: $df
	inc a                                            ; $509f: $3c
	sbc e                                            ; $50a0: $9b
	ld a, [hl]                                       ; $50a1: $7e
	ld b, [hl]                                       ; $50a2: $46
	rst $38                                          ; $50a3: $ff
	cp c                                             ; $50a4: $b9
	ld a, e                                          ; $50a5: $7b
	cp $98                                           ; $50a6: $fe $98
	push de                                          ; $50a8: $d5
	rst $38                                          ; $50a9: $ff
	sub e                                            ; $50aa: $93
	ld a, [hl]                                       ; $50ab: $7e
	ld a, d                                          ; $50ac: $7a
	inc a                                            ; $50ad: $3c
	inc a                                            ; $50ae: $3c
	pop af                                           ; $50af: $f1
	ld a, e                                          ; $50b0: $7b
	ldh [hDisp1_OBP1], a                                     ; $50b1: $e0 $94
	ld e, [hl]                                       ; $50b3: $5e
	rst $38                                          ; $50b4: $ff
	ret                                              ; $50b5: $c9


	rst $38                                          ; $50b6: $ff
	xor e                                            ; $50b7: $ab
	rst $38                                          ; $50b8: $ff
	sbc l                                            ; $50b9: $9d
	rst $38                                          ; $50ba: $ff
	sbc l                                            ; $50bb: $9d
	ld a, [hl]                                       ; $50bc: $7e
	ld h, d                                          ; $50bd: $62
	ccf                                              ; $50be: $3f
	ldh [rIE], a                                     ; $50bf: $e0 $ff
	rst SubAFromDE                                          ; $50c1: $df
	inc bc                                           ; $50c2: $03
	sub h                                            ; $50c3: $94
	inc c                                            ; $50c4: $0c
	rrca                                             ; $50c5: $0f
	db $10                                           ; $50c6: $10
	rra                                              ; $50c7: $1f
	ld hl, $403f                                     ; $50c8: $21 $3f $40
	ld a, a                                          ; $50cb: $7f
	ld b, c                                          ; $50cc: $41
	ld a, a                                          ; $50cd: $7f
	add b                                            ; $50ce: $80
	ld a, e                                          ; $50cf: $7b
	ld [hl], l                                       ; $50d0: $75
	ld a, a                                          ; $50d1: $7f
	cp $9b                                           ; $50d2: $fe $9b

jr_01b_50d4:
	ld b, e                                          ; $50d4: $43
	ld a, [hl]                                       ; $50d5: $7e
	ld b, e                                          ; $50d6: $43
	ld a, [hl]                                       ; $50d7: $7e
	ld [hl], a                                       ; $50d8: $77
	ldh a, [$9b]                                     ; $50d9: $f0 $9b
	sbc h                                            ; $50db: $9c
	rst $38                                          ; $50dc: $ff
	db $e3                                           ; $50dd: $e3
	db $e3                                           ; $50de: $e3
	ld [hl], a                                       ; $50df: $77
	sub [hl]                                         ; $50e0: $96
	ld a, a                                          ; $50e1: $7f
	ld a, h                                          ; $50e2: $7c
	sub l                                            ; $50e3: $95
	db $10                                           ; $50e4: $10
	ldh a, [$08]                                     ; $50e5: $f0 $08
	ld hl, sp+$04                                    ; $50e7: $f8 $04
	db $fc                                           ; $50e9: $fc
	inc b                                            ; $50ea: $04
	db $fc                                           ; $50eb: $fc
	ld [bc], a                                       ; $50ec: $02
	cp $77                                           ; $50ed: $fe $77
	cp $7d                                           ; $50ef: $fe $7d
	or d                                             ; $50f1: $b2
	ld a, a                                          ; $50f2: $7f
	cp $7f                                           ; $50f3: $fe $7f
	ldh a, [$7f]                                     ; $50f5: $f0 $7f
	db $ec                                           ; $50f7: $ec
	ld a, a                                          ; $50f8: $7f
	add sp, -$21                                     ; $50f9: $e8 $df
	add b                                            ; $50fb: $80
	ld l, a                                          ; $50fc: $6f
	jp nz, $208c                                     ; $50fd: $c2 $8c $20

	ccf                                              ; $5100: $3f
	ld [hl+], a                                      ; $5101: $22
	ccf                                              ; $5102: $3f
	ld b, a                                          ; $5103: $47
	ld a, l                                          ; $5104: $7d
	ld b, a                                          ; $5105: $47
	ld a, l                                          ; $5106: $7d
	add a                                            ; $5107: $87
	db $fc                                           ; $5108: $fc
	add a                                            ; $5109: $87
	rst $38                                          ; $510a: $ff
	add a                                            ; $510b: $87
	db $fc                                           ; $510c: $fc
	ld b, a                                          ; $510d: $47
	ld a, h                                          ; $510e: $7c
	ld b, e                                          ; $510f: $43
	ld a, a                                          ; $5110: $7f
	jr nz, jr_01b_518e                               ; $5111: $20 $7b

	ret nz                                           ; $5113: $c0

	sbc b                                            ; $5114: $98
	sbc b                                            ; $5115: $98
	rst $38                                          ; $5116: $ff
	rst SubAFromBC                                          ; $5117: $e7
	rst SubAFromBC                                          ; $5118: $e7
	ret nz                                           ; $5119: $c0

	ret nz                                           ; $511a: $c0

	jr nc, jr_01b_5190                               ; $511b: $30 $73

	call nz, $828b                                   ; $511d: $c4 $8b $82
	cp $c2                                           ; $5120: $fe $c2
	ld a, [hl]                                       ; $5122: $7e
	pop bc                                           ; $5123: $c1
	ld a, a                                          ; $5124: $7f
	pop hl                                           ; $5125: $e1
	cp a                                             ; $5126: $bf
	pop af                                           ; $5127: $f1
	ld e, a                                          ; $5128: $5f
	pop hl                                           ; $5129: $e1
	cp a                                             ; $512a: $bf

jr_01b_512b:
	jp nz, $827e                                     ; $512b: $c2 $7e $82

	cp $04                                           ; $512e: $fe $04
	db $fc                                           ; $5130: $fc
	jr jr_01b_512b                                   ; $5131: $18 $f8

	ld [hl], a                                       ; $5133: $77
	ret nz                                           ; $5134: $c0

	db $fd                                           ; $5135: $fd
	rst SubAFromDE                                          ; $5136: $df
	jr jr_01b_50d4                                   ; $5137: $18 $9b

	ld a, $36                                        ; $5139: $3e $36
	ld a, a                                          ; $513b: $7f
	ld b, e                                          ; $513c: $43
	ld a, e                                          ; $513d: $7b
	add a                                            ; $513e: $87
	sbc h                                            ; $513f: $9c
	add e                                            ; $5140: $83
	ld a, a                                          ; $5141: $7f
	ld h, l                                          ; $5142: $65
	ld a, e                                          ; $5143: $7b
	ld a, e                                          ; $5144: $7b
	sub [hl]                                         ; $5145: $96
	ld b, c                                          ; $5146: $41
	ld a, $32                                        ; $5147: $3e $32
	ld c, $0a                                        ; $5149: $0e $0a
	rlca                                             ; $514b: $07
	dec b                                            ; $514c: $05
	ld [bc], a                                       ; $514d: $02
	ld [bc], a                                       ; $514e: $02
	ldh [$dd], a                                     ; $514f: $e0 $dd
	nop                                              ; $5151: $00
	inc bc                                           ; $5152: $03
	rst $38                                          ; $5153: $ff
	rst SubAFromDE                                          ; $5154: $df
	inc b                                            ; $5155: $04
	add b                                            ; $5156: $80
	dec bc                                           ; $5157: $0b
	rrca                                             ; $5158: $0f
	ld [$140f], sp                                   ; $5159: $08 $0f $14
	rra                                              ; $515c: $1f
	ld a, [hl+]                                      ; $515d: $2a
	ccf                                              ; $515e: $3f
	dec [hl]                                         ; $515f: $35
	ccf                                              ; $5160: $3f
	inc h                                            ; $5161: $24
	ccf                                              ; $5162: $3f
	inc l                                            ; $5163: $2c
	ccf                                              ; $5164: $3f
	cpl                                              ; $5165: $2f
	dec sp                                           ; $5166: $3b
	rra                                              ; $5167: $1f
	ld a, [de]                                       ; $5168: $1a
	rrca                                             ; $5169: $0f
	rrca                                             ; $516a: $0f
	dec e                                            ; $516b: $1d
	inc de                                           ; $516c: $13
	rra                                              ; $516d: $1f
	ld [de], a                                       ; $516e: $12
	rrca                                             ; $516f: $0f
	ld [$0407], sp                                   ; $5170: $08 $07 $04
	nop                                              ; $5173: $00
	nop                                              ; $5174: $00
	ret nc                                           ; $5175: $d0

	add d                                            ; $5176: $82
	ret nc                                           ; $5177: $d0

	jr z, @-$06                                      ; $5178: $28 $f8

	sub h                                            ; $517a: $94
	db $fc                                           ; $517b: $fc
	ld b, h                                          ; $517c: $44
	db $fc                                           ; $517d: $fc
	ld a, h                                          ; $517e: $7c
	db $fc                                           ; $517f: $fc
	add $fe                                          ; $5180: $c6 $fe
	add c                                            ; $5182: $81
	rst $38                                          ; $5183: $ff
	ld b, h                                          ; $5184: $44
	rst $38                                          ; $5185: $ff
	inc hl                                           ; $5186: $23
	rst $38                                          ; $5187: $ff
	sub d                                            ; $5188: $92
	cp $b2                                           ; $5189: $fe $b2
	ld a, [hl]                                       ; $518b: $7e
	ldh a, [c]                                       ; $518c: $f2
	ld e, [hl]                                       ; $518d: $5e

jr_01b_518e:
	db $f4                                           ; $518e: $f4
	inc e                                            ; $518f: $1c

jr_01b_5190:
	add sp, $38                                      ; $5190: $e8 $38
	ldh a, [$30]                                     ; $5192: $f0 $30
	inc sp                                           ; $5194: $33
	ret nz                                           ; $5195: $c0

	sbc d                                            ; $5196: $9a
	jr jr_01b_51a8                                   ; $5197: $18 $0f

	ld a, [bc]                                       ; $5199: $0a
	rra                                              ; $519a: $1f
	dec d                                            ; $519b: $15
	ld l, a                                          ; $519c: $6f
	ret nz                                           ; $519d: $c0

	rst SubAFromDE                                          ; $519e: $df
	inc bc                                           ; $519f: $03
	sub l                                            ; $51a0: $95
	ld [bc], a                                       ; $51a1: $02
	inc bc                                           ; $51a2: $03
	ld c, $0f                                        ; $51a3: $0e $0f
	rra                                              ; $51a5: $1f
	inc de                                           ; $51a6: $13
	rra                                              ; $51a7: $1f

jr_01b_51a8:
	inc de                                           ; $51a8: $13
	rrca                                             ; $51a9: $0f
	ld c, $de                                        ; $51aa: $0e $de
	rlca                                             ; $51ac: $07
	sbc e                                            ; $51ad: $9b
	dec b                                            ; $51ae: $05
	ld b, $07                                        ; $51af: $06 $07
	ld [bc], a                                       ; $51b1: $02
	sbc $03                                          ; $51b2: $de $03
	ld [hl], a                                       ; $51b4: $77
	db $fc                                           ; $51b5: $fc
	rst SubAFromDE                                          ; $51b6: $df
	rlca                                             ; $51b7: $07
	rst SubAFromDE                                          ; $51b8: $df
	ld a, a                                          ; $51b9: $7f
	rst $38                                          ; $51ba: $ff
	rst SubAFromDE                                          ; $51bb: $df
	ldh [$8e], a                                     ; $51bc: $e0 $8e
	sub b                                            ; $51be: $90
	ldh a, [rOBP0]                                   ; $51bf: $f0 $48
	ld hl, sp-$38                                    ; $51c1: $f8 $c8
	ld hl, sp-$30                                    ; $51c3: $f8 $d0
	ld [hl], b                                       ; $51c5: $70
	ldh [rAUD4LEN], a                                ; $51c6: $e0 $20
	ldh [$60], a                                     ; $51c8: $e0 $60
	add b                                            ; $51ca: $80
	add b                                            ; $51cb: $80
	ret nz                                           ; $51cc: $c0

	ret nz                                           ; $51cd: $c0

	ld h, b                                          ; $51ce: $60
	call c, $dfe0                                    ; $51cf: $dc $e0 $df
	ret nz                                           ; $51d2: $c0

	rst SubAFromDE                                          ; $51d3: $df
	add b                                            ; $51d4: $80
	rst SubAFromDE                                          ; $51d5: $df
	db $fc                                           ; $51d6: $fc
	rst $38                                          ; $51d7: $ff
	rst SubAFromDE                                          ; $51d8: $df
	rlca                                             ; $51d9: $07
	ld a, a                                          ; $51da: $7f
	or h                                             ; $51db: $b4
	ld a, e                                          ; $51dc: $7b
	and c                                            ; $51dd: $a1
	sbc d                                            ; $51de: $9a
	add hl, bc                                       ; $51df: $09
	ld b, $07                                        ; $51e0: $06 $07
	ld bc, $fd01                                     ; $51e2: $01 $01 $fd
	rst SubAFromDE                                          ; $51e5: $df
	ld bc, $1bdf                                     ; $51e6: $01 $df $1b
	adc c                                            ; $51e9: $89
	inc e                                            ; $51ea: $1c
	rra                                              ; $51eb: $1f
	dec e                                            ; $51ec: $1d
	rra                                              ; $51ed: $1f
	ld c, $0e                                        ; $51ee: $0e $0e
	nop                                              ; $51f0: $00
	nop                                              ; $51f1: $00
	ccf                                              ; $51f2: $3f
	ccf                                              ; $51f3: $3f
	nop                                              ; $51f4: $00
	nop                                              ; $51f5: $00
	ld a, h                                          ; $51f6: $7c
	ld a, h                                          ; $51f7: $7c
	and [hl]                                         ; $51f8: $a6
	cp [hl]                                          ; $51f9: $be
	call $15ff                                       ; $51fa: $cd $ff $15
	rst $38                                          ; $51fd: $ff
	ld l, $fe                                        ; $51fe: $2e $fe
	db $dd                                           ; $5200: $dd
	db $fc                                           ; $5201: $fc
	rst SubAFromDE                                          ; $5202: $df
	rst $38                                          ; $5203: $ff
	sbc c                                            ; $5204: $99
	cp $3b                                           ; $5205: $fe $3b
	sbc $53                                          ; $5207: $de $53
	adc a                                            ; $5209: $8f
	adc a                                            ; $520a: $8f
	ei                                               ; $520b: $fb
	rst SubAFromDE                                          ; $520c: $df
	rst $38                                          ; $520d: $ff
	di                                               ; $520e: $f3
	rst SubAFromDE                                          ; $520f: $df
	ret nz                                           ; $5210: $c0

	rst SubAFromDE                                          ; $5211: $df
	ldh [$7f], a                                     ; $5212: $e0 $7f
	and d                                            ; $5214: $a2
	rst SubAFromDE                                          ; $5215: $df
	ldh a, [$df]                                     ; $5216: $f0 $df
	jr nc, @+$69                                     ; $5218: $30 $67

	ldh a, [rIE]                                     ; $521a: $f0 $ff
	rst SubAFromDE                                          ; $521c: $df
	ld b, $7f                                        ; $521d: $06 $7f
	and h                                            ; $521f: $a4
	ld d, a                                          ; $5220: $57
	and d                                            ; $5221: $a2
	rst SubAFromDE                                          ; $5222: $df
	inc bc                                           ; $5223: $03
	sbc e                                            ; $5224: $9b
	ld [hl], $37                                     ; $5225: $36 $37
	inc a                                            ; $5227: $3c
	ccf                                              ; $5228: $3f
	ld d, a                                          ; $5229: $57
	and b                                            ; $522a: $a0
	sbc d                                            ; $522b: $9a
	ld d, d                                          ; $522c: $52
	ld a, [hl]                                       ; $522d: $7e
	ret                                              ; $522e: $c9


	rst $38                                          ; $522f: $ff
	ld c, l                                          ; $5230: $4d
	ld a, e                                          ; $5231: $7b
	cp $93                                           ; $5232: $fe $93
	cp $f2                                           ; $5234: $fe $f2
	rst $38                                          ; $5236: $ff
	di                                               ; $5237: $f3
	cp $7f                                           ; $5238: $fe $7f
	db $fc                                           ; $523a: $fc
	ld h, a                                          ; $523b: $67
	sbc l                                            ; $523c: $9d
	sub a                                            ; $523d: $97
	adc [hl]                                         ; $523e: $8e
	adc [hl]                                         ; $523f: $8e
	cpl                                              ; $5240: $2f
	and b                                            ; $5241: $a0
	ld [hl], a                                       ; $5242: $77
	ld b, d                                          ; $5243: $42
	ld [hl], e                                       ; $5244: $73
	sbc h                                            ; $5245: $9c
	sbc [hl]                                         ; $5246: $9e
	ld h, b                                          ; $5247: $60
	ld e, a                                          ; $5248: $5f
	and b                                            ; $5249: $a0
	ld c, a                                          ; $524a: $4f
	ld b, b                                          ; $524b: $40
	rst SubAFromDE                                          ; $524c: $df
	ld h, e                                          ; $524d: $63
	sub a                                            ; $524e: $97
	ld a, a                                          ; $524f: $7f
	ld a, h                                          ; $5250: $7c
	ld [hl], e                                       ; $5251: $73
	ld a, a                                          ; $5252: $7f
	ld a, $3e                                        ; $5253: $3e $3e
	jr jr_01b_526f                                   ; $5255: $18 $18

	db $fd                                           ; $5257: $fd
	ccf                                              ; $5258: $3f
	ld b, b                                          ; $5259: $40
	ld a, e                                          ; $525a: $7b
	ld a, $9a                                        ; $525b: $3e $9a
	rst FarCall                                          ; $525d: $f7
	sbc [hl]                                         ; $525e: $9e
	sub e                                            ; $525f: $93
	rrca                                             ; $5260: $0f
	rrca                                             ; $5261: $0f
	ld [hl], a                                       ; $5262: $77
	call nc, $01df                                   ; $5263: $d4 $df $01
	ld b, a                                          ; $5266: $47
	and b                                            ; $5267: $a0
	db $fd                                           ; $5268: $fd
	rst SubAFromDE                                          ; $5269: $df
	ldh [$9b], a                                     ; $526a: $e0 $9b
	ld [hl], b                                       ; $526c: $70
	ldh a, [rSVBK]                                   ; $526d: $f0 $70

jr_01b_526f:
	ldh a, [$6e]                                     ; $526f: $f0 $6e
	sbc $df                                          ; $5271: $de $df
	ldh a, [$fd]                                     ; $5273: $f0 $fd
	rst SubAFromDE                                          ; $5275: $df
	ld b, $89                                        ; $5276: $06 $89
	ld bc, $0007                                     ; $5278: $01 $07 $00
	inc bc                                           ; $527b: $03
	inc c                                            ; $527c: $0c
	rrca                                             ; $527d: $0f
	db $10                                           ; $527e: $10
	rra                                              ; $527f: $1f
	ld [$120f], sp                                   ; $5280: $08 $0f $12
	rra                                              ; $5283: $1f
	inc d                                            ; $5284: $14
	rra                                              ; $5285: $1f
	add hl, bc                                       ; $5286: $09
	rrca                                             ; $5287: $0f
	dec bc                                           ; $5288: $0b
	ld c, $07                                        ; $5289: $0e $07
	ld b, $03                                        ; $528b: $06 $03
	inc bc                                           ; $528d: $03
	db $dd                                           ; $528e: $dd
	ld bc, $dffb                                     ; $528f: $01 $fb $df
	rst AddAOntoHL                                          ; $5292: $ef
	add l                                            ; $5293: $85
	db $10                                           ; $5294: $10

jr_01b_5295:
	rst $38                                          ; $5295: $ff
	nop                                              ; $5296: $00
	rst $38                                          ; $5297: $ff
	ld b, $ff                                        ; $5298: $06 $ff
	ld bc, $54ff                                     ; $529a: $01 $ff $54
	rst $38                                          ; $529d: $ff
	call nc, $d6ff                                   ; $529e: $d4 $ff $d6
	dec hl                                           ; $52a1: $2b
	rst SubAFromDE                                          ; $52a2: $df
	ld hl, $cdfe                                     ; $52a3: $21 $fe $cd
	or [hl]                                          ; $52a6: $b6
	rst GetHLinHL                                          ; $52a7: $cf
	cp $cd                                           ; $52a8: $fe $cd
	rst $38                                          ; $52aa: $ff
	ld sp, $b3de                                     ; $52ab: $31 $de $b3
	ld h, a                                          ; $52ae: $67
	ld b, [hl]                                       ; $52af: $46
	sbc b                                            ; $52b0: $98
	ld b, b                                          ; $52b1: $40
	ret nz                                           ; $52b2: $c0

	jr nz, jr_01b_5295                               ; $52b3: $20 $e0

	db $10                                           ; $52b5: $10
	ldh a, [hDisp1_SCY]                                     ; $52b6: $f0 $90
	ld [hl], e                                       ; $52b8: $73
	cp $7f                                           ; $52b9: $fe $7f
	or $98                                           ; $52bb: $f6 $98
	and b                                            ; $52bd: $a0
	ld h, b                                          ; $52be: $60
	and b                                            ; $52bf: $a0
	ld h, b                                          ; $52c0: $60
	ret nz                                           ; $52c1: $c0

	ret nz                                           ; $52c2: $c0

	ld b, b                                          ; $52c3: $40
	ld a, d                                          ; $52c4: $7a
	ld a, h                                          ; $52c5: $7c
	ld a, [hl]                                       ; $52c6: $7e
	ld a, $7a                                        ; $52c7: $3e $7a
	inc a                                            ; $52c9: $3c
	ld a, d                                          ; $52ca: $7a
	ld d, c                                          ; $52cb: $51
	ld h, a                                          ; $52cc: $67
	or h                                             ; $52cd: $b4
	ld sp, hl                                        ; $52ce: $f9
	rst SubAFromDE                                          ; $52cf: $df
	ld bc, $0fdf                                     ; $52d0: $01 $df $0f
	ld [hl], d                                       ; $52d3: $72
	db $fc                                           ; $52d4: $fc
	add h                                            ; $52d5: $84
	rst AddAOntoHL                                          ; $52d6: $ef
	rst $38                                          ; $52d7: $ff
	ret nz                                           ; $52d8: $c0

	rst $38                                          ; $52d9: $ff
	add c                                            ; $52da: $81
	rst $38                                          ; $52db: $ff
	jp $fefe                                         ; $52dc: $c3 $fe $fe


	ld b, d                                          ; $52df: $42
	ld a, [hl]                                       ; $52e0: $7e
	ld h, d                                          ; $52e1: $62
	ld a, [hl]                                       ; $52e2: $7e
	ld d, d                                          ; $52e3: $52
	ld a, [hl]                                       ; $52e4: $7e
	ld d, c                                          ; $52e5: $51
	ld a, a                                          ; $52e6: $7f
	add hl, hl                                       ; $52e7: $29
	ccf                                              ; $52e8: $3f
	add hl, hl                                       ; $52e9: $29
	ccf                                              ; $52ea: $3f
	rst $38                                          ; $52eb: $ff
	rst $38                                          ; $52ec: $ff
	add hl, de                                       ; $52ed: $19
	rst $38                                          ; $52ee: $ff
	ld hl, sp-$01                                    ; $52ef: $f8 $ff
	ld [hl], a                                       ; $52f1: $77
	sbc $df                                          ; $52f2: $de $df
	sbc b                                            ; $52f4: $98
	sub a                                            ; $52f5: $97
	db $fc                                           ; $52f6: $fc
	ld h, h                                          ; $52f7: $64
	db $fc                                           ; $52f8: $fc
	inc h                                            ; $52f9: $24
	db $fc                                           ; $52fa: $fc
	adc h                                            ; $52fb: $8c
	ld [hl], b                                       ; $52fc: $70
	ld [hl], b                                       ; $52fd: $70
	ld b, [hl]                                       ; $52fe: $46
	call nc, $80df                                   ; $52ff: $d4 $df $80
	rst SubAFromDE                                          ; $5302: $df
	ldh [$03], a                                     ; $5303: $e0 $03
	ld b, b                                          ; $5305: $40
	dec bc                                           ; $5306: $0b
	ld b, b                                          ; $5307: $40
	sbc l                                            ; $5308: $9d
	cp $83                                           ; $5309: $fe $83
	ldh [$dd], a                                     ; $530b: $e0 $dd
	ld e, a                                          ; $530d: $5f
	or [hl]                                          ; $530e: $b6
	ccf                                              ; $530f: $3f
	ld b, b                                          ; $5310: $40
	rst SubAFromDE                                          ; $5311: $df
	ld a, a                                          ; $5312: $7f
	sub a                                            ; $5313: $97
	cp $d2                                           ; $5314: $fe $d2
	rst $38                                          ; $5316: $ff
	sub e                                            ; $5317: $93
	rst $38                                          ; $5318: $ff
	add hl, sp                                       ; $5319: $39
	rst $38                                          ; $531a: $ff
	rst $38                                          ; $531b: $ff
	ld [hl], a                                       ; $531c: $77
	ld b, b                                          ; $531d: $40
	sbc [hl]                                         ; $531e: $9e
	ld [de], a                                       ; $531f: $12
	ld e, e                                          ; $5320: $5b
	ld b, b                                          ; $5321: $40
	sbc e                                            ; $5322: $9b
	pop af                                           ; $5323: $f1
	rst $38                                          ; $5324: $ff
	rra                                              ; $5325: $1f
	rra                                              ; $5326: $1f
	rla                                              ; $5327: $17
	xor h                                            ; $5328: $ac
	ld h, e                                          ; $5329: $63
	nop                                              ; $532a: $00
	sub [hl]                                         ; $532b: $96
	pop bc                                           ; $532c: $c1
	rst $38                                          ; $532d: $ff
	add b                                            ; $532e: $80
	rst $38                                          ; $532f: $ff
	jp Jump_01b_7f7f                                 ; $5330: $c3 $7f $7f


	ld b, e                                          ; $5333: $43
	ld a, a                                          ; $5334: $7f
	scf                                              ; $5335: $37
	nop                                              ; $5336: $00
	jp hl                                            ; $5337: $e9


	ld e, a                                          ; $5338: $5f
	nop                                              ; $5339: $00
	ld h, a                                          ; $533a: $67
	or b                                             ; $533b: $b0
	ld a, d                                          ; $533c: $7a
	sbc d                                            ; $533d: $9a
	sbc [hl]                                         ; $533e: $9e
	ld [bc], a                                       ; $533f: $02
	ld e, a                                          ; $5340: $5f
	ld e, b                                          ; $5341: $58
	ld a, $a0                                        ; $5342: $3e $a0
	sbc c                                            ; $5344: $99
	jp $e3ff                                         ; $5345: $c3 $ff $e3


	rst $38                                          ; $5348: $ff
	ld d, e                                          ; $5349: $53
	ld a, a                                          ; $534a: $7f
	ccf                                              ; $534b: $3f
	and b                                            ; $534c: $a0
	ld a, c                                          ; $534d: $79
	adc d                                            ; $534e: $8a
	sbc [hl]                                         ; $534f: $9e
	ld b, b                                          ; $5350: $40
	ld a, b                                          ; $5351: $78
	call nz, $a09e                                   ; $5352: $c4 $9e $a0
	ld a, e                                          ; $5355: $7b
	db $fc                                           ; $5356: $fc
	sbc [hl]                                         ; $5357: $9e
	jr nz, jr_01b_53cf                               ; $5358: $20 $75

	adc [hl]                                         ; $535a: $8e
	ccf                                              ; $535b: $3f
	and b                                            ; $535c: $a0
	ld b, d                                          ; $535d: $42
	ret nz                                           ; $535e: $c0

	sbc b                                            ; $535f: $98
	dec h                                            ; $5360: $25
	rst $38                                          ; $5361: $ff
	call c, $ceb7                                    ; $5362: $dc $b7 $ce
	rst $38                                          ; $5365: $ff
	call z, $c076                                    ; $5366: $cc $76 $c0
	ld a, e                                          ; $5369: $7b
	nop                                              ; $536a: $00
	ld a, a                                          ; $536b: $7f
	or $7f                                           ; $536c: $f6 $7f
	ldh a, [$9e]                                     ; $536e: $f0 $9e
	ld de, $403e                                     ; $5370: $11 $3e $40
	ld e, a                                          ; $5373: $5f
	nop                                              ; $5374: $00
	rst SubAFromDE                                          ; $5375: $df
	rst FarCall                                          ; $5376: $f7
	sbc [hl]                                         ; $5377: $9e
	ld [$c07b], sp                                   ; $5378: $08 $7b $c0
	sbc [hl]                                         ; $537b: $9e
	ld h, b                                          ; $537c: $60
	ld a, e                                          ; $537d: $7b
	add hl, de                                       ; $537e: $19
	sub a                                            ; $537f: $97
	ld a, [hl+]                                      ; $5380: $2a
	rst $38                                          ; $5381: $ff
	dec hl                                           ; $5382: $2b
	rst $38                                          ; $5383: $ff
	ld l, e                                          ; $5384: $6b
	call nc, $84fb                                   ; $5385: $d4 $fb $84
	ld a, e                                          ; $5388: $7b
	pop af                                           ; $5389: $f1
	sbc b                                            ; $538a: $98
	ld d, d                                          ; $538b: $52
	rst $38                                          ; $538c: $ff
	inc sp                                           ; $538d: $33
	rst $38                                          ; $538e: $ff
	adc h                                            ; $538f: $8c
	ld a, a                                          ; $5390: $7f
	pop bc                                           ; $5391: $c1
	ld c, $40                                        ; $5392: $0e $40
	rst SubAFromDE                                          ; $5394: $df
	inc bc                                           ; $5395: $03
	ld h, $40                                        ; $5396: $26 $40
	sbc e                                            ; $5398: $9b
	cp $cf                                           ; $5399: $fe $cf
	cp $4b                                           ; $539b: $fe $4b
	ld [hl], l                                       ; $539d: $75
	add b                                            ; $539e: $80
	rst SubAFromDE                                          ; $539f: $df
	inc a                                            ; $53a0: $3c
	sbc e                                            ; $53a1: $9b
	ld a, [hl]                                       ; $53a2: $7e
	ld b, [hl]                                       ; $53a3: $46
	rst $38                                          ; $53a4: $ff
	cp c                                             ; $53a5: $b9
	ld a, e                                          ; $53a6: $7b
	cp $98                                           ; $53a7: $fe $98
	push de                                          ; $53a9: $d5
	rst $38                                          ; $53aa: $ff
	sub e                                            ; $53ab: $93
	ld a, [hl]                                       ; $53ac: $7e
	ld a, d                                          ; $53ad: $7a
	inc a                                            ; $53ae: $3c
	inc a                                            ; $53af: $3c
	pop af                                           ; $53b0: $f1
	ld a, e                                          ; $53b1: $7b
	ldh [hDisp1_OBP1], a                                     ; $53b2: $e0 $94
	ld e, [hl]                                       ; $53b4: $5e
	rst $38                                          ; $53b5: $ff
	ret                                              ; $53b6: $c9


	rst $38                                          ; $53b7: $ff
	xor e                                            ; $53b8: $ab
	rst $38                                          ; $53b9: $ff
	sbc l                                            ; $53ba: $9d
	rst $38                                          ; $53bb: $ff
	sbc l                                            ; $53bc: $9d
	ld a, [hl]                                       ; $53bd: $7e
	ld h, d                                          ; $53be: $62
	ccf                                              ; $53bf: $3f
	ldh [rIE], a                                     ; $53c0: $e0 $ff
	rst SubAFromDE                                          ; $53c2: $df
	inc bc                                           ; $53c3: $03
	ld [hl], a                                       ; $53c4: $77
	add h                                            ; $53c5: $84
	sbc b                                            ; $53c6: $98
	ld hl, $403f                                     ; $53c7: $21 $3f $40
	ld a, a                                          ; $53ca: $7f
	ld b, c                                          ; $53cb: $41
	ld a, a                                          ; $53cc: $7f
	add b                                            ; $53cd: $80
	ld a, d                                          ; $53ce: $7a

jr_01b_53cf:
	push de                                          ; $53cf: $d5
	ld a, a                                          ; $53d0: $7f
	cp $9b                                           ; $53d1: $fe $9b
	ld b, e                                          ; $53d3: $43

jr_01b_53d4:
	ld a, [hl]                                       ; $53d4: $7e
	ld b, e                                          ; $53d5: $43
	ld a, [hl]                                       ; $53d6: $7e
	ld [hl], a                                       ; $53d7: $77
	ldh a, [$9b]                                     ; $53d8: $f0 $9b
	sbc h                                            ; $53da: $9c
	rst $38                                          ; $53db: $ff
	db $e3                                           ; $53dc: $e3
	db $e3                                           ; $53dd: $e3
	halt                                             ; $53de: $76
	or $9e                                           ; $53df: $f6 $9e
	ld h, b                                          ; $53e1: $60
	ld a, c                                          ; $53e2: $79
	ld h, $97                                        ; $53e3: $26 $97
	ld [$04f8], sp                                   ; $53e5: $08 $f8 $04
	db $fc                                           ; $53e8: $fc
	inc b                                            ; $53e9: $04
	db $fc                                           ; $53ea: $fc
	ld [bc], a                                       ; $53eb: $02
	cp $77                                           ; $53ec: $fe $77
	cp $93                                           ; $53ee: $fe $93
	add h                                            ; $53f0: $84
	db $fc                                           ; $53f1: $fc
	add h                                            ; $53f2: $84
	db $fc                                           ; $53f3: $fc
	ld [$10f8], sp                                   ; $53f4: $08 $f8 $10
	ldh a, [$60]                                     ; $53f7: $f0 $60
	ldh [$80], a                                     ; $53f9: $e0 $80
	add b                                            ; $53fb: $80
	ld l, a                                          ; $53fc: $6f
	jp nz, $208c                                     ; $53fd: $c2 $8c $20

	ccf                                              ; $5400: $3f
	ld [hl+], a                                      ; $5401: $22
	ccf                                              ; $5402: $3f
	ld b, a                                          ; $5403: $47
	ld a, l                                          ; $5404: $7d
	ld b, a                                          ; $5405: $47
	ld a, l                                          ; $5406: $7d
	add a                                            ; $5407: $87
	db $fc                                           ; $5408: $fc
	add a                                            ; $5409: $87
	rst $38                                          ; $540a: $ff
	add a                                            ; $540b: $87
	db $fc                                           ; $540c: $fc
	ld b, a                                          ; $540d: $47
	ld a, h                                          ; $540e: $7c
	ld b, e                                          ; $540f: $43
	ld a, a                                          ; $5410: $7f
	jr nz, jr_01b_548e                               ; $5411: $20 $7b

	ret nz                                           ; $5413: $c0

	sbc b                                            ; $5414: $98
	sbc b                                            ; $5415: $98
	rst $38                                          ; $5416: $ff
	rst SubAFromBC                                          ; $5417: $e7
	rst SubAFromBC                                          ; $5418: $e7
	ret nz                                           ; $5419: $c0

	ret nz                                           ; $541a: $c0

	jr nc, jr_01b_5490                               ; $541b: $30 $73

	call nz, $828b                                   ; $541d: $c4 $8b $82
	cp $c2                                           ; $5420: $fe $c2
	ld a, [hl]                                       ; $5422: $7e
	pop bc                                           ; $5423: $c1
	ld a, a                                          ; $5424: $7f
	pop hl                                           ; $5425: $e1
	cp a                                             ; $5426: $bf
	pop af                                           ; $5427: $f1
	ld e, a                                          ; $5428: $5f
	pop hl                                           ; $5429: $e1
	cp a                                             ; $542a: $bf

jr_01b_542b:
	jp nz, $827e                                     ; $542b: $c2 $7e $82

	cp $04                                           ; $542e: $fe $04
	db $fc                                           ; $5430: $fc
	jr jr_01b_542b                                   ; $5431: $18 $f8

	ld [hl], a                                       ; $5433: $77
	ret nz                                           ; $5434: $c0

	db $fd                                           ; $5435: $fd
	rst SubAFromDE                                          ; $5436: $df
	jr jr_01b_53d4                                   ; $5437: $18 $9b

	ld a, $36                                        ; $5439: $3e $36
	ld a, a                                          ; $543b: $7f
	ld b, e                                          ; $543c: $43
	ld a, e                                          ; $543d: $7b
	add a                                            ; $543e: $87
	ld a, [hl]                                       ; $543f: $7e
	or d                                             ; $5440: $b2
	sbc [hl]                                         ; $5441: $9e
	ld h, l                                          ; $5442: $65
	ld a, e                                          ; $5443: $7b
	ld a, e                                          ; $5444: $7b
	sub [hl]                                         ; $5445: $96
	ld b, c                                          ; $5446: $41
	ld a, $32                                        ; $5447: $3e $32
	ld c, $0a                                        ; $5449: $0e $0a
	rlca                                             ; $544b: $07
	dec b                                            ; $544c: $05
	ld [bc], a                                       ; $544d: $02
	ld [bc], a                                       ; $544e: $02
	ldh [$dd], a                                     ; $544f: $e0 $dd
	ld d, d                                          ; $5451: $52
	inc bc                                           ; $5452: $03
	rst $38                                          ; $5453: $ff
	rst SubAFromDE                                          ; $5454: $df
	ld [hl], c                                       ; $5455: $71
	add b                                            ; $5456: $80
	rst $38                                          ; $5457: $ff
	sbc a                                            ; $5458: $9f
	db $fc                                           ; $5459: $fc
	adc a                                            ; $545a: $8f
	ld hl, sp-$71                                    ; $545b: $f8 $8f
	rst $38                                          ; $545d: $ff
	sbc a                                            ; $545e: $9f
	ldh a, [$9f]                                     ; $545f: $f0 $9f
	rst AddAOntoHL                                          ; $5461: $ef
	cp a                                             ; $5462: $bf
	or $bf                                           ; $5463: $f6 $bf
	rst SubAFromBC                                          ; $5465: $e7
	cp l                                             ; $5466: $bd
	rst $38                                          ; $5467: $ff
	sbc [hl]                                         ; $5468: $9e
	halt                                             ; $5469: $76
	ld e, e                                          ; $546a: $5b
	ld a, a                                          ; $546b: $7f
	ld d, e                                          ; $546c: $53
	ld a, a                                          ; $546d: $7f
	ld a, e                                          ; $546e: $7b
	rst FarCall                                          ; $546f: $f7
	call nc, $8afb                                   ; $5470: $d4 $fb $8a
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	ldh a, [$80]                                     ; $5475: $f0 $80
	ldh a, [$0c]                                     ; $5477: $f0 $0c
	db $fc                                           ; $5479: $fc
	add $3e                                          ; $547a: $c6 $3e

Call_01b_547c:
	add d                                            ; $547c: $82
	ld a, [hl]                                       ; $547d: $7e
	pop hl                                           ; $547e: $e1
	rst $38                                          ; $547f: $ff
	ld de, $89ff                                     ; $5480: $11 $ff $89
	rst $38                                          ; $5483: $ff
	ld h, l                                          ; $5484: $65
	rst $38                                          ; $5485: $ff
	ld a, e                                          ; $5486: $7b
	rst SubAFromDE                                          ; $5487: $df
	db $fd                                           ; $5488: $fd
	or a                                             ; $5489: $b7
	db $ed                                           ; $548a: $ed
	ccf                                              ; $548b: $3f
	db $fd                                           ; $548c: $fd
	scf                                              ; $548d: $37

jr_01b_548e:
	cp $32                                           ; $548e: $fe $32

jr_01b_5490:
	db $fc                                           ; $5490: $fc
	call nz, $08f8                                   ; $5491: $c4 $f8 $08
	ld sp, hl                                        ; $5494: $f9
	sbc c                                            ; $5495: $99
	sub e                                            ; $5496: $93
	rst $38                                          ; $5497: $ff
	rst SubAFromBC                                          ; $5498: $e7
	ld a, a                                          ; $5499: $7f
	ld b, e                                          ; $549a: $43
	ld a, a                                          ; $549b: $7f
	ld b, e                                          ; $549c: $43
	ccf                                              ; $549d: $3f
	ccf                                              ; $549e: $3f
	dec sp                                           ; $549f: $3b
	dec hl                                           ; $54a0: $2b
	ld a, a                                          ; $54a1: $7f
	ld a, a                                          ; $54a2: $7f
	db $db                                           ; $54a3: $db
	inc bc                                           ; $54a4: $03
	sbc $07                                          ; $54a5: $de $07
	sbc d                                            ; $54a7: $9a
	ld b, $0f                                        ; $54a8: $06 $0f
	rrca                                             ; $54aa: $0f
	rst $38                                          ; $54ab: $ff
	rst $38                                          ; $54ac: $ff
	db $fd                                           ; $54ad: $fd
	sbc $f8                                          ; $54ae: $de $f8
	sbc h                                            ; $54b0: $9c
	adc b                                            ; $54b1: $88
	ld hl, sp-$38                                    ; $54b2: $f8 $c8
	sbc $f0                                          ; $54b4: $de $f0
	adc d                                            ; $54b6: $8a
	or b                                             ; $54b7: $b0
	ld hl, sp+$18                                    ; $54b8: $f8 $18
	ld hl, sp+$08                                    ; $54ba: $f8 $08
	db $fc                                           ; $54bc: $fc
	adc h                                            ; $54bd: $8c
	db $fc                                           ; $54be: $fc
	add h                                            ; $54bf: $84
	db $fc                                           ; $54c0: $fc
	ld b, h                                          ; $54c1: $44
	db $fc                                           ; $54c2: $fc
	db $fc                                           ; $54c3: $fc
	cp h                                             ; $54c4: $bc
	or h                                             ; $54c5: $b4
	cp h                                             ; $54c6: $bc
	cp h                                             ; $54c7: $bc
	cp $fe                                           ; $54c8: $fe $fe
	ld a, [hl]                                       ; $54ca: $7e
	ld a, [hl]                                       ; $54cb: $7e
	db $fd                                           ; $54cc: $fd
	rst SubAFromDE                                          ; $54cd: $df
	inc bc                                           ; $54ce: $03
	add e                                            ; $54cf: $83
	ld c, $0f                                        ; $54d0: $0e $0f
	add hl, de                                       ; $54d2: $19
	ld e, $11                                        ; $54d3: $1e $11
	ld e, $3f                                        ; $54d5: $1e $3f
	ccf                                              ; $54d7: $3f
	jr nz, jr_01b_5519                               ; $54d8: $20 $3f

	ld e, a                                          ; $54da: $5f
	ld a, a                                          ; $54db: $7f
	ld l, h                                          ; $54dc: $6c
	ld a, a                                          ; $54dd: $7f
	ld c, [hl]                                       ; $54de: $4e
	ld a, e                                          ; $54df: $7b
	ccf                                              ; $54e0: $3f
	dec a                                            ; $54e1: $3d
	dec l                                            ; $54e2: $2d
	ld [hl], $3f                                     ; $54e3: $36 $3f
	ld h, $1f                                        ; $54e5: $26 $1f
	ld d, $0f                                        ; $54e7: $16 $0f
	add hl, bc                                       ; $54e9: $09
	rlca                                             ; $54ea: $07
	dec b                                            ; $54eb: $05
	ld [hl], a                                       ; $54ec: $77
	add b                                            ; $54ed: $80
	ld a, a                                          ; $54ee: $7f
	rst JumpTable                                          ; $54ef: $c7
	sbc b                                            ; $54f0: $98
	add h                                            ; $54f1: $84
	ld a, h                                          ; $54f2: $7c
	ld [bc], a                                       ; $54f3: $02
	cp $c2                                           ; $54f4: $fe $c2
	cp $21                                           ; $54f6: $fe $21
	ld a, e                                          ; $54f8: $7b
	ld a, [hl]                                       ; $54f9: $7e
	add e                                            ; $54fa: $83
	ret                                              ; $54fb: $c9


	rst $38                                          ; $54fc: $ff
	or $be                                           ; $54fd: $f6 $be
	ei                                               ; $54ff: $fb
	ld l, a                                          ; $5500: $6f
	reti                                             ; $5501: $d9


	ld a, a                                          ; $5502: $7f
	ld a, [$fc6e]                                    ; $5503: $fa $6e $fc
	ld h, h                                          ; $5506: $64
	ld hl, sp-$78                                    ; $5507: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $5509: $f0 $90
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	inc a                                            ; $550d: $3c
	inc a                                            ; $550e: $3c
	ld a, a                                          ; $550f: $7f
	ld b, e                                          ; $5510: $43
	rst $38                                          ; $5511: $ff
	add b                                            ; $5512: $80
	rst $38                                          ; $5513: $ff
	ret nz                                           ; $5514: $c0

	ccf                                              ; $5515: $3f
	ccf                                              ; $5516: $3f
	di                                               ; $5517: $f3
	rst SubAFromDE                                          ; $5518: $df

jr_01b_5519:
	rrca                                             ; $5519: $0f
	ei                                               ; $551a: $fb
	rst SubAFromDE                                          ; $551b: $df
	dec c                                            ; $551c: $0d
	sub l                                            ; $551d: $95
	rst $38                                          ; $551e: $ff
	rst FarCall                                          ; $551f: $f7
	rst $38                                          ; $5520: $ff
	inc de                                           ; $5521: $13
	rst $38                                          ; $5522: $ff
	ld a, [hl+]                                      ; $5523: $2a
	rst $38                                          ; $5524: $ff
	rst JumpTable                                          ; $5525: $c7
	add hl, sp                                       ; $5526: $39
	add hl, sp                                       ; $5527: $39
	db $dd                                           ; $5528: $dd
	inc bc                                           ; $5529: $03
	rst SubAFromDE                                          ; $552a: $df
	ld bc, $03dd                                     ; $552b: $01 $dd $03
	rst SubAFromDE                                          ; $552e: $df
	rrca                                             ; $552f: $0f
	rst SubAFromDE                                          ; $5530: $df
	db $fc                                           ; $5531: $fc
	db $fd                                           ; $5532: $fd
	sbc $fc                                          ; $5533: $de $fc
	sub h                                            ; $5535: $94
	inc h                                            ; $5536: $24
	cp $e2                                           ; $5537: $fe $e2
	db $fc                                           ; $5539: $fc
	db $fc                                           ; $553a: $fc
	cp $e6                                           ; $553b: $fe $e6
	cp $e2                                           ; $553d: $fe $e2
	rst $38                                          ; $553f: $ff
	sub c                                            ; $5540: $91
	ld a, e                                          ; $5541: $7b
	sbc a                                            ; $5542: $9f
	sbc [hl]                                         ; $5543: $9e
	or c                                             ; $5544: $b1
	sbc $de                                          ; $5545: $de $de
	sbc b                                            ; $5547: $98
	ld e, d                                          ; $5548: $5a
	rst SubAFromDE                                          ; $5549: $df
	rst SubAFromDE                                          ; $554a: $df
	rst $38                                          ; $554b: $ff
	rst $38                                          ; $554c: $ff
	rra                                              ; $554d: $1f
	rra                                              ; $554e: $1f
	db $fd                                           ; $554f: $fd
	rst SubAFromDE                                          ; $5550: $df
	ld b, $99                                        ; $5551: $06 $99
	ccf                                              ; $5553: $3f
	add hl, sp                                       ; $5554: $39
	ld a, a                                          ; $5555: $7f
	ld c, c                                          ; $5556: $49
	rst $38                                          ; $5557: $ff
	add [hl]                                         ; $5558: $86
	rra                                              ; $5559: $1f
	and b                                            ; $555a: $a0
	ld [hl], a                                       ; $555b: $77
	ld a, $8d                                        ; $555c: $3e $8d
	ld b, $07                                        ; $555e: $06 $07
	inc b                                            ; $5560: $04
	rlca                                             ; $5561: $07
	rrca                                             ; $5562: $0f
	rrca                                             ; $5563: $0f
	ld [$170f], sp                                   ; $5564: $08 $0f $17
	rra                                              ; $5567: $1f
	dec de                                           ; $5568: $1b
	rra                                              ; $5569: $1f
	inc de                                           ; $556a: $13
	ld e, $0f                                        ; $556b: $1e $0f
	rrca                                             ; $556d: $0f
	dec bc                                           ; $556e: $0b
	dec c                                            ; $556f: $0d
	ld [hl], a                                       ; $5570: $77
	ld b, h                                          ; $5571: $44
	sbc e                                            ; $5572: $9b
	inc bc                                           ; $5573: $03
	ld [bc], a                                       ; $5574: $02
	ld bc, $7701                                     ; $5575: $01 $01 $77
	sbc [hl]                                         ; $5578: $9e
	add e                                            ; $5579: $83
	add [hl]                                         ; $557a: $86
	cp $61                                           ; $557b: $fe $61
	sbc a                                            ; $557d: $9f
	ld b, b                                          ; $557e: $40
	cp a                                             ; $557f: $bf
	ldh a, [rIE]                                     ; $5580: $f0 $ff
	ld [$c4ff], sp                                   ; $5582: $08 $ff $c4
	rst $38                                          ; $5585: $ff
	ld [hl-], a                                      ; $5586: $32
	rst $38                                          ; $5587: $ff
	cp l                                             ; $5588: $bd
	rst AddAOntoHL                                          ; $5589: $ef
	cp $5b                                           ; $558a: $fe $5b
	halt                                             ; $558c: $76
	sbc a                                            ; $558d: $9f
	cp $9b                                           ; $558e: $fe $9b
	rst $38                                          ; $5590: $ff
	sbc c                                            ; $5591: $99
	rst $38                                          ; $5592: $ff
	ld h, e                                          ; $5593: $63
	rst $38                                          ; $5594: $ff
	ld l, h                                          ; $5595: $6c
	ld sp, hl                                        ; $5596: $f9
	db $dd                                           ; $5597: $dd
	add b                                            ; $5598: $80
	sbc l                                            ; $5599: $9d
	ld b, b                                          ; $559a: $40
	ret nz                                           ; $559b: $c0

	ld [hl], a                                       ; $559c: $77
	cp $df                                           ; $559d: $fe $df
	adc [hl]                                         ; $559f: $8e
	sub e                                            ; $55a0: $93
	rst SubAFromDE                                          ; $55a1: $df
	pop de                                           ; $55a2: $d1
	ld e, a                                          ; $55a3: $5f

jr_01b_55a4:
	pop de                                           ; $55a4: $d1
	cp [hl]                                          ; $55a5: $be
	and d                                            ; $55a6: $a2
	cp $fa                                           ; $55a7: $fe $fa
	db $fc                                           ; $55a9: $fc
	inc h                                            ; $55aa: $24
	db $fc                                           ; $55ab: $fc
	db $f4                                           ; $55ac: $f4
	di                                               ; $55ad: $f3
	db $db                                           ; $55ae: $db
	ld bc, $9c6e                                     ; $55af: $01 $6e $9c
	ei                                               ; $55b2: $fb
	sbc $ff                                          ; $55b3: $de $ff
	ld a, [hl]                                       ; $55b5: $7e
	ld b, [hl]                                       ; $55b6: $46
	sub d                                            ; $55b7: $92
	sbc c                                            ; $55b8: $99
	ld a, a                                          ; $55b9: $7f
	ld [hl], c                                       ; $55ba: $71
	ld a, a                                          ; $55bb: $7f
	ld l, e                                          ; $55bc: $6b
	ld a, a                                          ; $55bd: $7f
	ld h, c                                          ; $55be: $61
	rst $38                                          ; $55bf: $ff
	db $fc                                           ; $55c0: $fc
	rst $38                                          ; $55c1: $ff
	sbc b                                            ; $55c2: $98
	rst $38                                          ; $55c3: $ff
	jr c, jr_01b_55a4                                ; $55c4: $38 $de

	rst AddAOntoHL                                          ; $55c6: $ef
	sbc [hl]                                         ; $55c7: $9e
	ld l, e                                          ; $55c8: $6b
	db $dd                                           ; $55c9: $dd
	rst $38                                          ; $55ca: $ff
	ld l, a                                          ; $55cb: $6f
	ld b, b                                          ; $55cc: $40
	sub a                                            ; $55cd: $97
	db $fc                                           ; $55ce: $fc
	sub h                                            ; $55cf: $94
	ld hl, sp-$08                                    ; $55d0: $f8 $f8
	ldh a, [$30]                                     ; $55d2: $f0 $30
	ret nz                                           ; $55d4: $c0

	ret nz                                           ; $55d5: $c0

	ld h, a                                          ; $55d6: $67
	sbc h                                            ; $55d7: $9c
	db $dd                                           ; $55d8: $dd
	add b                                            ; $55d9: $80
	db $fd                                           ; $55da: $fd
	rst SubAFromDE                                          ; $55db: $df
	sbc a                                            ; $55dc: $9f
	rst SubAFromDE                                          ; $55dd: $df
	ldh [rAUD4GO], a                                 ; $55de: $e0 $23
	ld b, b                                          ; $55e0: $40
	sbc [hl]                                         ; $55e1: $9e
	inc c                                            ; $55e2: $0c
	ld a, e                                          ; $55e3: $7b
	ld b, b                                          ; $55e4: $40
	sbc [hl]                                         ; $55e5: $9e
	ld a, [bc]                                       ; $55e6: $0a
	dec de                                           ; $55e7: $1b
	ld b, b                                          ; $55e8: $40
	sbc b                                            ; $55e9: $98
	ld b, e                                          ; $55ea: $43
	cp $0b                                           ; $55eb: $fe $0b
	cp $97                                           ; $55ed: $fe $97
	rst $38                                          ; $55ef: $ff
	add hl, bc                                       ; $55f0: $09
	ld h, a                                          ; $55f1: $67
	ld b, b                                          ; $55f2: $40
	rst SubAFromDE                                          ; $55f3: $df
	rlca                                             ; $55f4: $07
	add l                                            ; $55f5: $85
	jr jr_01b_5617                                   ; $55f6: $18 $1f

	daa                                              ; $55f8: $27
	jr c, jr_01b_564a                                ; $55f9: $38 $4f

	ld [hl], a                                       ; $55fb: $77
	ld c, b                                          ; $55fc: $48
	ld a, a                                          ; $55fd: $7f

Jump_01b_55fe:
	sub l                                            ; $55fe: $95
	rst $38                                          ; $55ff: $ff
	push hl                                          ; $5600: $e5
	rst $38                                          ; $5601: $ff
	xor l                                            ; $5602: $ad
	cp d                                             ; $5603: $ba
	rra                                              ; $5604: $1f
	ld d, $0b                                        ; $5605: $16 $0b
	ld e, $2f                                        ; $5607: $1e $2f
	ld [hl], $2f                                     ; $5609: $36 $2f
	ld a, $7f                                        ; $560b: $3e $7f
	ld e, c                                          ; $560d: $59
	ld a, [hl]                                       ; $560e: $7e
	ld c, l                                          ; $560f: $4d
	db $fd                                           ; $5610: $fd
	rst SubAFromDE                                          ; $5611: $df
	ld a, b                                          ; $5612: $78
	ld a, [hl]                                       ; $5613: $7e
	dec bc                                           ; $5614: $0b
	add b                                            ; $5615: $80
	ldh [c], a                                       ; $5616: $e2

jr_01b_5617:
	ld e, $f2                                        ; $5617: $1e $f2
	xor $19                                          ; $5619: $ee $19
	rst FarCall                                          ; $561b: $f7
	add hl, hl                                       ; $561c: $29
	rst $38                                          ; $561d: $ff
	dec h                                            ; $561e: $25
	rst $38                                          ; $561f: $ff
	or l                                             ; $5620: $b5
	rst SubAFromDE                                          ; $5621: $df
	ld sp, hl                                        ; $5622: $f9
	ld l, a                                          ; $5623: $6f
	cp l                                             ; $5624: $bd
	ld [hl], a                                       ; $5625: $77
	db $fd                                           ; $5626: $fd
	ld h, a                                          ; $5627: $67
	db $fd                                           ; $5628: $fd
	ld h, a                                          ; $5629: $67
	ld sp, hl                                        ; $562a: $f9
	adc a                                            ; $562b: $8f
	pop af                                           ; $562c: $f1
	sbc a                                            ; $562d: $9f
	rrca                                             ; $562e: $0f
	ld [$0507], sp                                   ; $562f: $08 $07 $05
	rlca                                             ; $5632: $07
	inc b                                            ; $5633: $04
	inc bc                                           ; $5634: $03
	sbc [hl]                                         ; $5635: $9e
	inc bc                                           ; $5636: $03
	pop af                                           ; $5637: $f1
	rst SubAFromDE                                          ; $5638: $df
	ld bc, $1e6f                                     ; $5639: $01 $6f $1e
	sbc e                                            ; $563c: $9b
	rst $38                                          ; $563d: $ff
	rst AddAOntoHL                                          ; $563e: $ef
	rst $38                                          ; $563f: $ff
	pop bc                                           ; $5640: $c1
	ld a, d                                          ; $5641: $7a
	ld [hl+], a                                      ; $5642: $22
	adc l                                            ; $5643: $8d
	jp Jump_01b_7f7f                                 ; $5644: $c3 $7f $7f


	ld b, d                                          ; $5647: $42
	ld a, [hl]                                       ; $5648: $7e
	ld h, d                                          ; $5649: $62

jr_01b_564a:
	ld a, [hl]                                       ; $564a: $7e
	ld d, d                                          ; $564b: $52
	ld a, [hl]                                       ; $564c: $7e
	add hl, hl                                       ; $564d: $29
	ccf                                              ; $564e: $3f
	add hl, hl                                       ; $564f: $29
	ccf                                              ; $5650: $3f
	cpl                                              ; $5651: $2f
	ccf                                              ; $5652: $3f
	ld sp, hl                                        ; $5653: $f9
	rst $38                                          ; $5654: $ff
	jr jr_01b_56d2                                   ; $5655: $18 $7b

	inc de                                           ; $5657: $13
	ld [hl], a                                       ; $5658: $77
	sbc $99                                          ; $5659: $de $99
	ldh [$a0], a                                     ; $565b: $e0 $a0
	ldh [rAUD4LEN], a                                ; $565d: $e0 $20
	ldh [rAUD4LEN], a                                ; $565f: $e0 $20
	ld a, d                                          ; $5661: $7a
	ret                                              ; $5662: $c9


	ld [hl], e                                       ; $5663: $73
	ld e, $f7                                        ; $5664: $1e $f7
	db $dd                                           ; $5666: $dd
	add b                                            ; $5667: $80
	ld h, a                                          ; $5668: $67
	ld e, $1f                                        ; $5669: $1e $1f
	ld h, b                                          ; $566b: $60
	sbc l                                            ; $566c: $9d
	ld a, a                                          ; $566d: $7f
	ld c, h                                          ; $566e: $4c
	dec bc                                           ; $566f: $0b
	ld h, b                                          ; $5670: $60
	ld [hl], d                                       ; $5671: $72

jr_01b_5672:
	cp h                                             ; $5672: $bc
	ld b, e                                          ; $5673: $43
	ret nz                                           ; $5674: $c0

	sbc l                                            ; $5675: $9d
	db $10                                           ; $5676: $10
	rrca                                             ; $5677: $0f

jr_01b_5678:
	ld [hl], a                                       ; $5678: $77
	ret nz                                           ; $5679: $c0

	sbc d                                            ; $567a: $9a
	ld a, [hl-]                                      ; $567b: $3a
	cpl                                              ; $567c: $2f
	add hl, sp                                       ; $567d: $39

jr_01b_567e:
	ld b, $1d                                        ; $567e: $06 $1d
	inc sp                                           ; $5680: $33
	ret nz                                           ; $5681: $c0

	sbc [hl]                                         ; $5682: $9e

jr_01b_5683:
	rrca                                             ; $5683: $0f
	ld a, e                                          ; $5684: $7b
	jp nz, $be7f                                     ; $5685: $c2 $7f $be

	sbc d                                            ; $5688: $9a
	ld d, a                                          ; $5689: $57
	ld sp, hl                                        ; $568a: $f9
	adc a                                            ; $568b: $8f
	ld sp, hl                                        ; $568c: $f9
	sbc a                                            ; $568d: $9f
	ld a, d                                          ; $568e: $7a
	and a                                            ; $568f: $a7
	ld a, a                                          ; $5690: $7f
	ld [hl+], a                                      ; $5691: $22
	sbc [hl]                                         ; $5692: $9e
	ld [bc], a                                       ; $5693: $02
	ld [hl], l                                       ; $5694: $75
	adc d                                            ; $5695: $8a
	rrca                                             ; $5696: $0f
	jr nz, jr_01b_5678                               ; $5697: $20 $df

	rst $38                                          ; $5699: $ff
	inc bc                                           ; $569a: $03
	jr nz, jr_01b_56c0                               ; $569b: $20 $23

	jr nz, jr_01b_567e                               ; $569d: $20 $df

	ld e, $85                                        ; $569f: $1e $85
	ld hl, $473f                                     ; $56a1: $21 $3f $47
	ld a, b                                          ; $56a4: $78
	ld c, a                                          ; $56a5: $4f
	ld [hl], a                                       ; $56a6: $77
	sbc b                                            ; $56a7: $98
	rst AddAOntoHL                                          ; $56a8: $ef
	sub h                                            ; $56a9: $94
	rst $38                                          ; $56aa: $ff
	and h                                            ; $56ab: $a4
	rst $38                                          ; $56ac: $ff
	xor l                                            ; $56ad: $ad
	ei                                               ; $56ae: $fb
	sbc a                                            ; $56af: $9f
	ld hl, sp-$41                                    ; $56b0: $f8 $bf
	xor $b7                                          ; $56b2: $ee $b7
	db $ec                                           ; $56b4: $ec
	cp a                                             ; $56b5: $bf
	db $ec                                           ; $56b6: $ec
	sbc a                                            ; $56b7: $9f
	di                                               ; $56b8: $f3
	sbc a                                            ; $56b9: $9f
	ld hl, sp-$03                                    ; $56ba: $f8 $fd
	rst SubAFromDE                                          ; $56bc: $df
	ldh [$7c], a                                     ; $56bd: $e0 $7c
	cp [hl]                                          ; $56bf: $be

jr_01b_56c0:
	add a                                            ; $56c0: $87
	db $e4                                           ; $56c1: $e4
	inc e                                            ; $56c2: $1c
	ldh a, [c]                                       ; $56c3: $f2
	xor $12                                          ; $56c4: $ee $12
	cp $a9                                           ; $56c6: $fe $a9
	rst $38                                          ; $56c8: $ff
	and a                                            ; $56c9: $a7
	rst $38                                          ; $56ca: $ff
	or l                                             ; $56cb: $b5
	ld e, l                                          ; $56cc: $5d
	ld hl, sp+$08                                    ; $56cd: $f8 $08
	ldh a, [$f8]                                     ; $56cf: $f0 $f8
	ld [hl], h                                       ; $56d1: $74

jr_01b_56d2:
	call z, $dcf4                                    ; $56d2: $cc $f4 $dc
	db $f4                                           ; $56d5: $f4
	sbc h                                            ; $56d6: $9c
	ldh [$38], a                                     ; $56d7: $e0 $38
	dec hl                                           ; $56d9: $2b
	jr nz, jr_01b_5672                               ; $56da: $20 $96

	db $10                                           ; $56dc: $10
	cpl                                              ; $56dd: $2f
	scf                                              ; $56de: $37
	dec hl                                           ; $56df: $2b
	ld a, $2f                                        ; $56e0: $3e $2f
	add hl, sp                                       ; $56e2: $39
	rlca                                             ; $56e3: $07
	inc e                                            ; $56e4: $1c
	dec hl                                           ; $56e5: $2b
	jr nz, jr_01b_5683                               ; $56e6: $20 $9b

	rlca                                             ; $56e8: $07
	db $fd                                           ; $56e9: $fd
	ld [hl], a                                       ; $56ea: $77
	cp l                                             ; $56eb: $bd
	ld a, d                                          ; $56ec: $7a
	ldh [$9e], a                                     ; $56ed: $e0 $9e
	ld sp, hl                                        ; $56ef: $f9
	ld [hl], d                                       ; $56f0: $72
	ldh [$e4], a                                     ; $56f1: $e0 $e4
	ld c, e                                          ; $56f3: $4b
	ld [$0033], sp                                   ; $56f4: $08 $33 $00
	sbc [hl]                                         ; $56f7: $9e
	add c                                            ; $56f8: $81
	rra                                              ; $56f9: $1f
	nop                                              ; $56fa: $00
	sbc e                                            ; $56fb: $9b
	ld h, b                                          ; $56fc: $60
	ldh [rLCDC], a                                   ; $56fd: $e0 $40
	ret nz                                           ; $56ff: $c0

	ld h, l                                          ; $5700: $65
	ld c, h                                          ; $5701: $4c
	scf                                              ; $5702: $37
	nop                                              ; $5703: $00
	rst SubAFromDE                                          ; $5704: $df
	inc bc                                           ; $5705: $03
	add b                                            ; $5706: $80
	inc c                                            ; $5707: $0c
	rrca                                             ; $5708: $0f
	db $10                                           ; $5709: $10
	rra                                              ; $570a: $1f
	jr nz, @+$41                                     ; $570b: $20 $3f

	ld [hl+], a                                      ; $570d: $22
	ccf                                              ; $570e: $3f
	ld b, a                                          ; $570f: $47
	ld a, l                                          ; $5710: $7d
	ld b, a                                          ; $5711: $47
	ld a, l                                          ; $5712: $7d
	add a                                            ; $5713: $87
	db $fc                                           ; $5714: $fc
	add a                                            ; $5715: $87

jr_01b_5716:
	rst $38                                          ; $5716: $ff
	add a                                            ; $5717: $87
	db $fc                                           ; $5718: $fc
	ld b, a                                          ; $5719: $47

jr_01b_571a:
	ld a, h                                          ; $571a: $7c
	ld b, e                                          ; $571b: $43
	ld a, a                                          ; $571c: $7f
	jr nz, jr_01b_575e                               ; $571d: $20 $3f

	ld b, b                                          ; $571f: $40
	ld a, a                                          ; $5720: $7f
	sbc b                                            ; $5721: $98
	rst $38                                          ; $5722: $ff
	rst SubAFromBC                                          ; $5723: $e7
	rst SubAFromBC                                          ; $5724: $e7
	ret nz                                           ; $5725: $c0

	add d                                            ; $5726: $82
	ret nz                                           ; $5727: $c0

	jr nc, jr_01b_571a                               ; $5728: $30 $f0

	ld [$04f8], sp                                   ; $572a: $08 $f8 $04
	db $fc                                           ; $572d: $fc
	add d                                            ; $572e: $82
	cp $c2                                           ; $572f: $fe $c2
	ld a, [hl]                                       ; $5731: $7e
	pop bc                                           ; $5732: $c1
	ld a, a                                          ; $5733: $7f
	pop hl                                           ; $5734: $e1
	cp a                                             ; $5735: $bf
	pop af                                           ; $5736: $f1
	ld e, a                                          ; $5737: $5f
	pop hl                                           ; $5738: $e1
	cp a                                             ; $5739: $bf

jr_01b_573a:
	jp nz, $827e                                     ; $573a: $c2 $7e $82

	cp $04                                           ; $573d: $fe $04
	db $fc                                           ; $573f: $fc
	jr jr_01b_573a                                   ; $5740: $18 $f8

	ld h, b                                          ; $5742: $60
	ldh [rPCM34], a                                  ; $5743: $e0 $77
	xor b                                            ; $5745: $a8
	rst SubAFromDE                                          ; $5746: $df
	ld bc, $027d                                     ; $5747: $01 $7d $02
	ld a, l                                          ; $574a: $7d
	ld b, $77                                        ; $574b: $06 $77
	cp h                                             ; $574d: $bc
	ld [hl], a                                       ; $574e: $77
	call z, $fe77                                    ; $574f: $cc $77 $fe
	ld a, [hl]                                       ; $5752: $7e
	or d                                             ; $5753: $b2
	ld a, a                                          ; $5754: $7f
	cp $7f                                           ; $5755: $fe $7f
	ldh a, [$7f]                                     ; $5757: $f0 $7f
	db $ec                                           ; $5759: $ec
	ld a, a                                          ; $575a: $7f
	add sp, $76                                      ; $575b: $e8 $76
	ld c, d                                          ; $575d: $4a

jr_01b_575e:
	ld l, a                                          ; $575e: $6f
	cp [hl]                                          ; $575f: $be
	ld a, [hl]                                       ; $5760: $7e
	cp $9a                                           ; $5761: $fe $9a
	ld [bc], a                                       ; $5763: $02
	cp $82                                           ; $5764: $fe $82
	cp $01                                           ; $5766: $fe $01
	ld a, e                                          ; $5768: $7b
	ld d, l                                          ; $5769: $55
	ld a, a                                          ; $576a: $7f
	cp $7f                                           ; $576b: $fe $7f
	ret nz                                           ; $576d: $c0

	ld a, a                                          ; $576e: $7f
	cp $77                                           ; $576f: $fe $77
	ldh a, [$9b]                                     ; $5771: $f0 $9b
	add hl, sp                                       ; $5773: $39
	rst $38                                          ; $5774: $ff
	rst JumpTable                                          ; $5775: $c7
	rst JumpTable                                          ; $5776: $c7
	db $fd                                           ; $5777: $fd
	rst SubAFromDE                                          ; $5778: $df
	jr jr_01b_5716                                   ; $5779: $18 $9b

	ld a, $36                                        ; $577b: $3e $36
	ld a, a                                          ; $577d: $7f
	ld b, e                                          ; $577e: $43
	ld a, e                                          ; $577f: $7b
	rst SubAFromBC                                          ; $5780: $e7
	sub l                                            ; $5781: $95
	add e                                            ; $5782: $83
	ld a, a                                          ; $5783: $7f
	ld h, l                                          ; $5784: $65
	ld a, a                                          ; $5785: $7f
	ld b, c                                          ; $5786: $41
	ld a, a                                          ; $5787: $7f
	ld b, c                                          ; $5788: $41
	ld a, $32                                        ; $5789: $3e $32
	ld c, $78                                        ; $578b: $0e $78
	jp nz, $02df                                     ; $578d: $c2 $df $02

	di                                               ; $5790: $f3
	rst SubAFromDE                                          ; $5791: $df
	inc a                                            ; $5792: $3c
	sbc c                                            ; $5793: $99
	ld a, [hl]                                       ; $5794: $7e
	ld b, d                                          ; $5795: $42
	rst $38                                          ; $5796: $ff
	and l                                            ; $5797: $a5
	rst $38                                          ; $5798: $ff
	sub l                                            ; $5799: $95
	ld a, e                                          ; $579a: $7b
	cp $9a                                           ; $579b: $fe $9a
	db $e3                                           ; $579d: $e3
	ld a, [hl]                                       ; $579e: $7e
	ld b, d                                          ; $579f: $42
	inc a                                            ; $57a0: $3c
	inc a                                            ; $57a1: $3c
	ei                                               ; $57a2: $fb
	ld b, d                                          ; $57a3: $42
	inc bc                                           ; $57a4: $03
	rst $38                                          ; $57a5: $ff
	rst SubAFromDE                                          ; $57a6: $df
	ld [hl], c                                       ; $57a7: $71
	add b                                            ; $57a8: $80
	rst $38                                          ; $57a9: $ff
	sbc a                                            ; $57aa: $9f
	db $fc                                           ; $57ab: $fc
	adc a                                            ; $57ac: $8f
	ld hl, sp-$71                                    ; $57ad: $f8 $8f
	rst $38                                          ; $57af: $ff
	sbc a                                            ; $57b0: $9f
	ldh a, [$9f]                                     ; $57b1: $f0 $9f
	rst AddAOntoHL                                          ; $57b3: $ef
	cp a                                             ; $57b4: $bf
	or $bf                                           ; $57b5: $f6 $bf
	rst SubAFromBC                                          ; $57b7: $e7
	cp l                                             ; $57b8: $bd
	rst $38                                          ; $57b9: $ff
	sbc [hl]                                         ; $57ba: $9e
	halt                                             ; $57bb: $76
	ld e, e                                          ; $57bc: $5b
	ld a, a                                          ; $57bd: $7f
	ld d, e                                          ; $57be: $53
	ld a, a                                          ; $57bf: $7f
	ld a, e                                          ; $57c0: $7b
	rst FarCall                                          ; $57c1: $f7
	call nc, $8afb                                   ; $57c2: $d4 $fb $8a
	nop                                              ; $57c5: $00
	nop                                              ; $57c6: $00
	ldh a, [$80]                                     ; $57c7: $f0 $80
	ldh a, [$0c]                                     ; $57c9: $f0 $0c
	db $fc                                           ; $57cb: $fc
	add $3e                                          ; $57cc: $c6 $3e
	add d                                            ; $57ce: $82
	ld a, [hl]                                       ; $57cf: $7e
	pop hl                                           ; $57d0: $e1
	rst $38                                          ; $57d1: $ff
	ld de, $89ff                                     ; $57d2: $11 $ff $89
	rst $38                                          ; $57d5: $ff
	ld h, l                                          ; $57d6: $65
	rst $38                                          ; $57d7: $ff
	ld a, e                                          ; $57d8: $7b
	rst SubAFromDE                                          ; $57d9: $df
	db $fd                                           ; $57da: $fd
	or a                                             ; $57db: $b7
	db $ed                                           ; $57dc: $ed
	ccf                                              ; $57dd: $3f
	db $fd                                           ; $57de: $fd
	scf                                              ; $57df: $37
	cp $32                                           ; $57e0: $fe $32
	db $fc                                           ; $57e2: $fc
	call nz, $08f8                                   ; $57e3: $c4 $f8 $08
	ld sp, hl                                        ; $57e6: $f9
	sbc c                                            ; $57e7: $99
	sub e                                            ; $57e8: $93
	rst $38                                          ; $57e9: $ff
	rst SubAFromBC                                          ; $57ea: $e7
	ld a, a                                          ; $57eb: $7f
	ld b, e                                          ; $57ec: $43
	ld a, a                                          ; $57ed: $7f
	ld b, e                                          ; $57ee: $43
	ccf                                              ; $57ef: $3f
	ccf                                              ; $57f0: $3f
	dec sp                                           ; $57f1: $3b
	dec hl                                           ; $57f2: $2b
	ld a, a                                          ; $57f3: $7f
	ld a, a                                          ; $57f4: $7f
	db $db                                           ; $57f5: $db
	inc bc                                           ; $57f6: $03
	sbc $07                                          ; $57f7: $de $07
	sbc d                                            ; $57f9: $9a
	ld b, $0f                                        ; $57fa: $06 $0f
	rrca                                             ; $57fc: $0f
	rst $38                                          ; $57fd: $ff
	rst $38                                          ; $57fe: $ff
	db $fd                                           ; $57ff: $fd
	sbc $f8                                          ; $5800: $de $f8
	sbc h                                            ; $5802: $9c
	adc b                                            ; $5803: $88
	ld hl, sp-$38                                    ; $5804: $f8 $c8
	sbc $f0                                          ; $5806: $de $f0
	adc d                                            ; $5808: $8a
	or b                                             ; $5809: $b0
	ld hl, sp+$18                                    ; $580a: $f8 $18
	ld hl, sp+$08                                    ; $580c: $f8 $08
	db $fc                                           ; $580e: $fc
	adc h                                            ; $580f: $8c
	db $fc                                           ; $5810: $fc
	add h                                            ; $5811: $84
	db $fc                                           ; $5812: $fc
	ld b, h                                          ; $5813: $44
	db $fc                                           ; $5814: $fc
	db $fc                                           ; $5815: $fc
	cp h                                             ; $5816: $bc
	or h                                             ; $5817: $b4
	cp h                                             ; $5818: $bc
	cp h                                             ; $5819: $bc
	cp $fe                                           ; $581a: $fe $fe
	ld a, [hl]                                       ; $581c: $7e
	ld a, [hl]                                       ; $581d: $7e
	db $fd                                           ; $581e: $fd
	rst SubAFromDE                                          ; $581f: $df
	inc bc                                           ; $5820: $03
	add e                                            ; $5821: $83
	ld c, $0f                                        ; $5822: $0e $0f
	add hl, de                                       ; $5824: $19
	ld e, $11                                        ; $5825: $1e $11
	ld e, $3f                                        ; $5827: $1e $3f
	ccf                                              ; $5829: $3f
	jr nz, jr_01b_586b                               ; $582a: $20 $3f

	ld e, a                                          ; $582c: $5f
	ld a, a                                          ; $582d: $7f
	ld l, h                                          ; $582e: $6c
	ld a, a                                          ; $582f: $7f
	ld c, [hl]                                       ; $5830: $4e
	ld a, e                                          ; $5831: $7b
	ccf                                              ; $5832: $3f
	dec a                                            ; $5833: $3d
	dec l                                            ; $5834: $2d
	ld [hl], $3f                                     ; $5835: $36 $3f
	ld h, $1f                                        ; $5837: $26 $1f
	ld d, $0f                                        ; $5839: $16 $0f
	add hl, bc                                       ; $583b: $09
	rlca                                             ; $583c: $07
	dec b                                            ; $583d: $05
	ld [hl], a                                       ; $583e: $77
	add b                                            ; $583f: $80
	ld a, a                                          ; $5840: $7f
	rst JumpTable                                          ; $5841: $c7
	sbc b                                            ; $5842: $98
	add h                                            ; $5843: $84
	ld a, h                                          ; $5844: $7c
	ld [bc], a                                       ; $5845: $02
	cp $c2                                           ; $5846: $fe $c2
	cp $21                                           ; $5848: $fe $21
	ld a, e                                          ; $584a: $7b
	ld a, [hl]                                       ; $584b: $7e
	add e                                            ; $584c: $83
	ret                                              ; $584d: $c9


	rst $38                                          ; $584e: $ff
	or $be                                           ; $584f: $f6 $be
	ei                                               ; $5851: $fb
	ld l, a                                          ; $5852: $6f
	reti                                             ; $5853: $d9


	ld a, a                                          ; $5854: $7f
	ld a, [$fc6e]                                    ; $5855: $fa $6e $fc
	ld h, h                                          ; $5858: $64
	ld hl, sp-$78                                    ; $5859: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $585b: $f0 $90
	nop                                              ; $585d: $00
	nop                                              ; $585e: $00
	inc a                                            ; $585f: $3c
	inc a                                            ; $5860: $3c
	ld a, a                                          ; $5861: $7f
	ld b, e                                          ; $5862: $43
	rst $38                                          ; $5863: $ff
	add b                                            ; $5864: $80
	rst $38                                          ; $5865: $ff
	ret nz                                           ; $5866: $c0

	ccf                                              ; $5867: $3f
	ccf                                              ; $5868: $3f
	di                                               ; $5869: $f3
	rst SubAFromDE                                          ; $586a: $df

jr_01b_586b:
	rrca                                             ; $586b: $0f
	ei                                               ; $586c: $fb
	rst SubAFromDE                                          ; $586d: $df
	dec c                                            ; $586e: $0d
	sub l                                            ; $586f: $95
	rst $38                                          ; $5870: $ff
	rst FarCall                                          ; $5871: $f7
	rst $38                                          ; $5872: $ff
	inc de                                           ; $5873: $13
	rst $38                                          ; $5874: $ff
	ld a, [hl+]                                      ; $5875: $2a
	rst $38                                          ; $5876: $ff
	rst JumpTable                                          ; $5877: $c7
	add hl, sp                                       ; $5878: $39
	add hl, sp                                       ; $5879: $39
	db $dd                                           ; $587a: $dd
	inc bc                                           ; $587b: $03
	rst SubAFromDE                                          ; $587c: $df
	ld bc, $03dd                                     ; $587d: $01 $dd $03
	rst SubAFromDE                                          ; $5880: $df
	rrca                                             ; $5881: $0f
	rst SubAFromDE                                          ; $5882: $df
	db $fc                                           ; $5883: $fc
	db $fd                                           ; $5884: $fd
	sbc $fc                                          ; $5885: $de $fc
	sub h                                            ; $5887: $94
	inc h                                            ; $5888: $24
	cp $e2                                           ; $5889: $fe $e2
	db $fc                                           ; $588b: $fc
	db $fc                                           ; $588c: $fc
	cp $e6                                           ; $588d: $fe $e6
	cp $e2                                           ; $588f: $fe $e2
	rst $38                                          ; $5891: $ff
	sub c                                            ; $5892: $91
	ld a, e                                          ; $5893: $7b
	sbc a                                            ; $5894: $9f
	sbc [hl]                                         ; $5895: $9e
	or c                                             ; $5896: $b1
	sbc $de                                          ; $5897: $de $de
	sbc b                                            ; $5899: $98
	ld e, d                                          ; $589a: $5a
	rst SubAFromDE                                          ; $589b: $df
	rst SubAFromDE                                          ; $589c: $df
	rst $38                                          ; $589d: $ff
	rst $38                                          ; $589e: $ff
	rra                                              ; $589f: $1f
	rra                                              ; $58a0: $1f
	db $fd                                           ; $58a1: $fd
	rst SubAFromDE                                          ; $58a2: $df
	ld b, $99                                        ; $58a3: $06 $99
	ccf                                              ; $58a5: $3f
	add hl, sp                                       ; $58a6: $39
	ld a, a                                          ; $58a7: $7f
	ld c, c                                          ; $58a8: $49
	rst $38                                          ; $58a9: $ff
	add [hl]                                         ; $58aa: $86
	rra                                              ; $58ab: $1f
	and b                                            ; $58ac: $a0
	ld [hl], a                                       ; $58ad: $77
	ld a, $8d                                        ; $58ae: $3e $8d
	ld b, $07                                        ; $58b0: $06 $07
	inc b                                            ; $58b2: $04
	rlca                                             ; $58b3: $07
	rrca                                             ; $58b4: $0f
	rrca                                             ; $58b5: $0f
	ld [$170f], sp                                   ; $58b6: $08 $0f $17
	rra                                              ; $58b9: $1f
	dec de                                           ; $58ba: $1b
	rra                                              ; $58bb: $1f
	inc de                                           ; $58bc: $13
	ld e, $0f                                        ; $58bd: $1e $0f
	rrca                                             ; $58bf: $0f
	dec bc                                           ; $58c0: $0b
	dec c                                            ; $58c1: $0d
	ld [hl], a                                       ; $58c2: $77
	ld b, h                                          ; $58c3: $44
	sbc e                                            ; $58c4: $9b
	inc bc                                           ; $58c5: $03
	ld [bc], a                                       ; $58c6: $02
	ld bc, $7701                                     ; $58c7: $01 $01 $77
	sbc [hl]                                         ; $58ca: $9e
	add e                                            ; $58cb: $83
	add [hl]                                         ; $58cc: $86
	cp $61                                           ; $58cd: $fe $61
	sbc a                                            ; $58cf: $9f
	ld b, b                                          ; $58d0: $40
	cp a                                             ; $58d1: $bf
	ldh a, [rIE]                                     ; $58d2: $f0 $ff
	ld [$c4ff], sp                                   ; $58d4: $08 $ff $c4
	rst $38                                          ; $58d7: $ff
	ld [hl-], a                                      ; $58d8: $32
	rst $38                                          ; $58d9: $ff
	cp l                                             ; $58da: $bd
	rst AddAOntoHL                                          ; $58db: $ef
	cp $5b                                           ; $58dc: $fe $5b
	halt                                             ; $58de: $76
	sbc a                                            ; $58df: $9f
	cp $9b                                           ; $58e0: $fe $9b
	rst $38                                          ; $58e2: $ff
	sbc c                                            ; $58e3: $99
	rst $38                                          ; $58e4: $ff
	ld h, e                                          ; $58e5: $63
	rst $38                                          ; $58e6: $ff
	ld l, h                                          ; $58e7: $6c
	ld sp, hl                                        ; $58e8: $f9
	db $dd                                           ; $58e9: $dd
	add b                                            ; $58ea: $80
	sbc l                                            ; $58eb: $9d
	ld b, b                                          ; $58ec: $40
	ret nz                                           ; $58ed: $c0

	ld [hl], a                                       ; $58ee: $77
	cp $df                                           ; $58ef: $fe $df
	adc [hl]                                         ; $58f1: $8e
	sub e                                            ; $58f2: $93
	rst SubAFromDE                                          ; $58f3: $df
	pop de                                           ; $58f4: $d1
	ld e, a                                          ; $58f5: $5f

jr_01b_58f6:
	pop de                                           ; $58f6: $d1
	cp [hl]                                          ; $58f7: $be
	and d                                            ; $58f8: $a2
	cp $fa                                           ; $58f9: $fe $fa
	db $fc                                           ; $58fb: $fc
	inc h                                            ; $58fc: $24
	db $fc                                           ; $58fd: $fc
	db $f4                                           ; $58fe: $f4
	di                                               ; $58ff: $f3
	db $db                                           ; $5900: $db
	ld bc, $9c6e                                     ; $5901: $01 $6e $9c
	ei                                               ; $5904: $fb
	sbc $ff                                          ; $5905: $de $ff
	ld a, [hl]                                       ; $5907: $7e
	ld b, [hl]                                       ; $5908: $46
	sub d                                            ; $5909: $92
	sbc c                                            ; $590a: $99
	ld a, a                                          ; $590b: $7f
	ld [hl], c                                       ; $590c: $71
	ld a, a                                          ; $590d: $7f
	ld l, e                                          ; $590e: $6b
	ld a, a                                          ; $590f: $7f
	ld h, c                                          ; $5910: $61
	rst $38                                          ; $5911: $ff
	db $fc                                           ; $5912: $fc
	rst $38                                          ; $5913: $ff
	sbc b                                            ; $5914: $98
	rst $38                                          ; $5915: $ff
	jr c, jr_01b_58f6                                ; $5916: $38 $de

	rst AddAOntoHL                                          ; $5918: $ef
	sbc [hl]                                         ; $5919: $9e
	ld l, e                                          ; $591a: $6b
	db $dd                                           ; $591b: $dd
	rst $38                                          ; $591c: $ff
	ld l, a                                          ; $591d: $6f
	ld b, b                                          ; $591e: $40
	sub a                                            ; $591f: $97
	db $fc                                           ; $5920: $fc
	sub h                                            ; $5921: $94
	ld hl, sp-$08                                    ; $5922: $f8 $f8
	ldh a, [$30]                                     ; $5924: $f0 $30
	ret nz                                           ; $5926: $c0

	ret nz                                           ; $5927: $c0

	ld h, a                                          ; $5928: $67
	sbc h                                            ; $5929: $9c
	db $dd                                           ; $592a: $dd
	add b                                            ; $592b: $80
	db $fd                                           ; $592c: $fd
	rst SubAFromDE                                          ; $592d: $df
	sbc a                                            ; $592e: $9f
	rst SubAFromDE                                          ; $592f: $df
	ldh [rAUD4GO], a                                 ; $5930: $e0 $23
	ld b, b                                          ; $5932: $40
	sbc [hl]                                         ; $5933: $9e
	inc c                                            ; $5934: $0c
	ld a, e                                          ; $5935: $7b
	ld b, b                                          ; $5936: $40
	sbc [hl]                                         ; $5937: $9e
	ld a, [bc]                                       ; $5938: $0a
	dec de                                           ; $5939: $1b
	ld b, b                                          ; $593a: $40
	sbc b                                            ; $593b: $98
	ld b, e                                          ; $593c: $43
	cp $0b                                           ; $593d: $fe $0b
	cp $97                                           ; $593f: $fe $97
	rst $38                                          ; $5941: $ff
	add hl, bc                                       ; $5942: $09
	ld l, a                                          ; $5943: $6f
	ld b, b                                          ; $5944: $40
	rst SubAFromDE                                          ; $5945: $df
	ld b, $8b                                        ; $5946: $06 $8b
	ld bc, $0007                                     ; $5948: $01 $07 $00
	inc bc                                           ; $594b: $03
	inc c                                            ; $594c: $0c
	rrca                                             ; $594d: $0f
	db $10                                           ; $594e: $10
	rra                                              ; $594f: $1f
	ld [$120f], sp                                   ; $5950: $08 $0f $12
	rra                                              ; $5953: $1f
	inc d                                            ; $5954: $14
	rra                                              ; $5955: $1f
	add hl, bc                                       ; $5956: $09
	rrca                                             ; $5957: $0f
	dec bc                                           ; $5958: $0b
	ld c, $07                                        ; $5959: $0e $07
	ld b, $76                                        ; $595b: $06 $76
	sbc b                                            ; $595d: $98
	ld [hl], a                                       ; $595e: $77
	jp nz, $dffd                                     ; $595f: $c2 $fd $df

	rst AddAOntoHL                                          ; $5962: $ef
	add l                                            ; $5963: $85
	db $10                                           ; $5964: $10
	rst $38                                          ; $5965: $ff
	nop                                              ; $5966: $00
	rst $38                                          ; $5967: $ff
	ld b, $ff                                        ; $5968: $06 $ff
	ld bc, $54ff                                     ; $596a: $01 $ff $54
	rst $38                                          ; $596d: $ff
	call nc, $d6ff                                   ; $596e: $d4 $ff $d6
	dec hl                                           ; $5971: $2b
	rst SubAFromDE                                          ; $5972: $df
	ld hl, $cdfe                                     ; $5973: $21 $fe $cd
	or [hl]                                          ; $5976: $b6
	rst GetHLinHL                                          ; $5977: $cf
	cp $cd                                           ; $5978: $fe $cd
	rst $38                                          ; $597a: $ff
	ld sp, $b3de                                     ; $597b: $31 $de $b3
	ld h, a                                          ; $597e: $67
	ld [bc], a                                       ; $597f: $02
	ld a, a                                          ; $5980: $7f
	ld [$209a], sp                                   ; $5981: $08 $9a $20
	ldh [rAUD1SWEEP], a                              ; $5984: $e0 $10
	ldh a, [hDisp1_SCY]                                     ; $5986: $f0 $90
	ld [hl], e                                       ; $5988: $73
	cp $7f                                           ; $5989: $fe $7f
	or $9a                                           ; $598b: $f6 $9a
	and b                                            ; $598d: $a0
	ld h, b                                          ; $598e: $60
	and b                                            ; $598f: $a0
	ld h, b                                          ; $5990: $60
	ret nz                                           ; $5991: $c0

	ld a, d                                          ; $5992: $7a
	db $f4                                           ; $5993: $f4
	rst SubAFromDE                                          ; $5994: $df
	add b                                            ; $5995: $80
	ld a, e                                          ; $5996: $7b
	ld h, a                                          ; $5997: $67
	sbc h                                            ; $5998: $9c
	inc b                                            ; $5999: $04
	inc bc                                           ; $599a: $03
	ld [bc], a                                       ; $599b: $02
	ld [hl], a                                       ; $599c: $77
	or d                                             ; $599d: $b2
	ld b, [hl]                                       ; $599e: $46
	or $6e                                           ; $599f: $f6 $6e
	add b                                            ; $59a1: $80
	add e                                            ; $59a2: $83
	rst $38                                          ; $59a3: $ff
	rst AddAOntoHL                                          ; $59a4: $ef
	rst $38                                          ; $59a5: $ff
	ret nz                                           ; $59a6: $c0

	rst $38                                          ; $59a7: $ff
	add c                                            ; $59a8: $81
	rst $38                                          ; $59a9: $ff
	jp $fefe                                         ; $59aa: $c3 $fe $fe


	ld b, d                                          ; $59ad: $42
	ld a, [hl]                                       ; $59ae: $7e
	ld h, d                                          ; $59af: $62
	ld a, [hl]                                       ; $59b0: $7e
	ld d, d                                          ; $59b1: $52
	ld a, [hl]                                       ; $59b2: $7e
	ld d, c                                          ; $59b3: $51
	ld a, a                                          ; $59b4: $7f
	add hl, hl                                       ; $59b5: $29
	ccf                                              ; $59b6: $3f
	add hl, hl                                       ; $59b7: $29
	ccf                                              ; $59b8: $3f
	rst $38                                          ; $59b9: $ff
	rst $38                                          ; $59ba: $ff
	add hl, de                                       ; $59bb: $19
	rst $38                                          ; $59bc: $ff
	ld hl, sp-$01                                    ; $59bd: $f8 $ff
	ld [hl], a                                       ; $59bf: $77
	sbc $df                                          ; $59c0: $de $df
	sbc b                                            ; $59c2: $98
	ld a, l                                          ; $59c3: $7d
	ret c                                            ; $59c4: $d8

	ld a, d                                          ; $59c5: $7a
	cp b                                             ; $59c6: $b8
	sbc h                                            ; $59c7: $9c
	adc h                                            ; $59c8: $8c
	ld [hl], b                                       ; $59c9: $70
	ld [hl], b                                       ; $59ca: $70
	di                                               ; $59cb: $f3
	db $dd                                           ; $59cc: $dd
	add b                                            ; $59cd: $80
	ld h, [hl]                                       ; $59ce: $66
	cp $43                                           ; $59cf: $fe $43
	ld h, b                                          ; $59d1: $60
	adc h                                            ; $59d2: $8c
	dec h                                            ; $59d3: $25
	rst $38                                          ; $59d4: $ff
	call c, $ceb7                                    ; $59d5: $dc $b7 $ce
	rst $38                                          ; $59d8: $ff
	call z, $31ff                                    ; $59d9: $cc $ff $31
	cp $83                                           ; $59dc: $fe $83
	ld a, a                                          ; $59de: $7f
	ld a, a                                          ; $59df: $7f
	cp $ce                                           ; $59e0: $fe $ce
	rst $38                                          ; $59e2: $ff
	dec h                                            ; $59e3: $25
	rst $38                                          ; $59e4: $ff
	ld de, $a03f                                     ; $59e5: $11 $3f $a0
	sbc [hl]                                         ; $59e8: $9e
	pop af                                           ; $59e9: $f1
	ld l, d                                          ; $59ea: $6a
	sbc [hl]                                         ; $59eb: $9e
	ld l, [hl]                                       ; $59ec: $6e
	ld l, d                                          ; $59ed: $6a
	pop af                                           ; $59ee: $f1
	ld h, a                                          ; $59ef: $67
	ld h, b                                          ; $59f0: $60
	ld a, e                                          ; $59f1: $7b
	ret nz                                           ; $59f2: $c0

	sbc b                                            ; $59f3: $98
	jp nc, $93ff                                     ; $59f4: $d2 $ff $93

	rst $38                                          ; $59f7: $ff
	add hl, sp                                       ; $59f8: $39
	rst $38                                          ; $59f9: $ff
	rst $38                                          ; $59fa: $ff
	ld [hl], a                                       ; $59fb: $77
	ret nz                                           ; $59fc: $c0

	sbc [hl]                                         ; $59fd: $9e
	ld [de], a                                       ; $59fe: $12
	inc sp                                           ; $59ff: $33
	ret nz                                           ; $5a00: $c0

	rst SubAFromDE                                          ; $5a01: $df
	rst FarCall                                          ; $5a02: $f7
	ld a, [hl]                                       ; $5a03: $7e
	and [hl]                                         ; $5a04: $a6
	ld a, a                                          ; $5a05: $7f
	add b                                            ; $5a06: $80
	sbc [hl]                                         ; $5a07: $9e
	ld h, b                                          ; $5a08: $60
	ld a, c                                          ; $5a09: $79
	dec sp                                           ; $5a0a: $3b
	ld a, l                                          ; $5a0b: $7d
	ld e, e                                          ; $5a0c: $5b
	sbc c                                            ; $5a0d: $99
	dec hl                                           ; $5a0e: $2b
	rst $38                                          ; $5a0f: $ff
	ld l, e                                          ; $5a10: $6b
	call nc, $84fb                                   ; $5a11: $d4 $fb $84
	ld a, e                                          ; $5a14: $7b
	pop af                                           ; $5a15: $f1
	adc h                                            ; $5a16: $8c
	ld d, d                                          ; $5a17: $52
	rst $38                                          ; $5a18: $ff
	inc sp                                           ; $5a19: $33
	rst $38                                          ; $5a1a: $ff
	adc h                                            ; $5a1b: $8c
	ld a, a                                          ; $5a1c: $7f
	pop bc                                           ; $5a1d: $c1
	jr nc, @+$32                                     ; $5a1e: $30 $30

	ld hl, sp-$38                                    ; $5a20: $f8 $c8
	ld hl, sp+$48                                    ; $5a22: $f8 $48
	ldh a, [rAUD1SWEEP]                              ; $5a24: $f0 $10
	ldh [$a0], a                                     ; $5a26: $e0 $a0
	ld b, b                                          ; $5a28: $40
	ld b, b                                          ; $5a29: $40
	daa                                              ; $5a2a: $27
	ld b, b                                          ; $5a2b: $40
	jp hl                                            ; $5a2c: $e9


	ld l, [hl]                                       ; $5a2d: $6e
	ld a, [bc]                                       ; $5a2e: $0a
	pop hl                                           ; $5a2f: $e1
	ld d, $40                                        ; $5a30: $16 $40
	rst SubAFromDE                                          ; $5a32: $df
	inc bc                                           ; $5a33: $03
	ld c, $40                                        ; $5a34: $0e $40
	ld a, [hl]                                       ; $5a36: $7e
	ldh [rSC], a                                     ; $5a37: $e0 $02
	nop                                              ; $5a39: $00
	cpl                                              ; $5a3a: $2f
	ret nz                                           ; $5a3b: $c0

	sbc l                                            ; $5a3c: $9d
	dec c                                            ; $5a3d: $0d
	or $6a                                           ; $5a3e: $f6 $6a
	nop                                              ; $5a40: $00
	ld b, $40                                        ; $5a41: $06 $40
	ld l, a                                          ; $5a43: $6f
	nop                                              ; $5a44: $00
	sbc l                                            ; $5a45: $9d
	ld hl, sp+$18                                    ; $5a46: $f8 $18
	daa                                              ; $5a48: $27
	nop                                              ; $5a49: $00
	rst SubAFromDE                                          ; $5a4a: $df
	inc bc                                           ; $5a4b: $03
	ld [hl], a                                       ; $5a4c: $77
	add [hl]                                         ; $5a4d: $86
	add b                                            ; $5a4e: $80
	jr nz, jr_01b_5a90                               ; $5a4f: $20 $3f

	ld [hl+], a                                      ; $5a51: $22
	ccf                                              ; $5a52: $3f
	ld b, a                                          ; $5a53: $47
	ld a, l                                          ; $5a54: $7d
	ld b, a                                          ; $5a55: $47
	ld a, l                                          ; $5a56: $7d
	add a                                            ; $5a57: $87

jr_01b_5a58:
	db $fc                                           ; $5a58: $fc
	add a                                            ; $5a59: $87
	rst $38                                          ; $5a5a: $ff
	add a                                            ; $5a5b: $87
	db $fc                                           ; $5a5c: $fc

jr_01b_5a5d:
	ld b, a                                          ; $5a5d: $47
	ld a, h                                          ; $5a5e: $7c
	ld b, e                                          ; $5a5f: $43
	ld a, a                                          ; $5a60: $7f
	jr nz, jr_01b_5aa2                               ; $5a61: $20 $3f

	ld b, b                                          ; $5a63: $40
	ld a, a                                          ; $5a64: $7f
	sbc b                                            ; $5a65: $98
	rst $38                                          ; $5a66: $ff
	rst SubAFromBC                                          ; $5a67: $e7
	rst SubAFromBC                                          ; $5a68: $e7
	ret nz                                           ; $5a69: $c0

	ret nz                                           ; $5a6a: $c0

	jr nc, jr_01b_5a5d                               ; $5a6b: $30 $f0

	ld [$f886], sp                                   ; $5a6d: $08 $86 $f8
	inc b                                            ; $5a70: $04
	db $fc                                           ; $5a71: $fc
	add d                                            ; $5a72: $82
	cp $c2                                           ; $5a73: $fe $c2
	ld a, [hl]                                       ; $5a75: $7e
	pop bc                                           ; $5a76: $c1
	ld a, a                                          ; $5a77: $7f
	pop hl                                           ; $5a78: $e1
	cp a                                             ; $5a79: $bf
	pop af                                           ; $5a7a: $f1
	ld e, a                                          ; $5a7b: $5f
	pop hl                                           ; $5a7c: $e1
	cp a                                             ; $5a7d: $bf

jr_01b_5a7e:
	jp nz, $827e                                     ; $5a7e: $c2 $7e $82

	cp $04                                           ; $5a81: $fe $04
	db $fc                                           ; $5a83: $fc
	jr jr_01b_5a7e                                   ; $5a84: $18 $f8

	ld h, b                                          ; $5a86: $60
	ldh [$74], a                                     ; $5a87: $e0 $74
	db $f4                                           ; $5a89: $f4
	rst SubAFromDE                                          ; $5a8a: $df
	ld bc, $027d                                     ; $5a8b: $01 $7d $02
	ld a, a                                          ; $5a8e: $7f
	ld b, [hl]                                       ; $5a8f: $46

jr_01b_5a90:
	ld [hl], a                                       ; $5a90: $77
	cp h                                             ; $5a91: $bc
	ld [hl], a                                       ; $5a92: $77
	call z, $fe77                                    ; $5a93: $cc $77 $fe
	sbc e                                            ; $5a96: $9b
	ld hl, $213f                                     ; $5a97: $21 $3f $21
	ccf                                              ; $5a9a: $3f
	ld [hl], a                                       ; $5a9b: $77
	ld [hl-], a                                      ; $5a9c: $32
	ld a, a                                          ; $5a9d: $7f
	add sp, $77                                      ; $5a9e: $e8 $77
	ld a, $6f                                        ; $5aa0: $3e $6f

jr_01b_5aa2:
	cp [hl]                                          ; $5aa2: $be
	sbc b                                            ; $5aa3: $98
	add h                                            ; $5aa4: $84
	db $fc                                           ; $5aa5: $fc
	ld [bc], a                                       ; $5aa6: $02
	cp $82                                           ; $5aa7: $fe $82
	cp $01                                           ; $5aa9: $fe $01
	ld a, e                                          ; $5aab: $7b
	ld d, l                                          ; $5aac: $55
	ld a, a                                          ; $5aad: $7f
	cp $7f                                           ; $5aae: $fe $7f
	ret nz                                           ; $5ab0: $c0

	ld a, a                                          ; $5ab1: $7f
	cp $77                                           ; $5ab2: $fe $77
	ldh a, [$7e]                                     ; $5ab4: $f0 $7e
	dec hl                                           ; $5ab6: $2b
	rst SubAFromDE                                          ; $5ab7: $df
	rst JumpTable                                          ; $5ab8: $c7
	db $fd                                           ; $5ab9: $fd
	rst SubAFromDE                                          ; $5aba: $df
	jr jr_01b_5a58                                   ; $5abb: $18 $9b

	ld a, $36                                        ; $5abd: $3e $36
	ld a, a                                          ; $5abf: $7f
	ld b, e                                          ; $5ac0: $43
	ld a, e                                          ; $5ac1: $7b
	rst SubAFromBC                                          ; $5ac2: $e7
	ld a, l                                          ; $5ac3: $7d
	jp nc, Jump_01b_6597                             ; $5ac4: $d2 $97 $65

	ld a, a                                          ; $5ac7: $7f
	ld b, c                                          ; $5ac8: $41
	ld a, a                                          ; $5ac9: $7f
	ld b, c                                          ; $5aca: $41
	ld a, $32                                        ; $5acb: $3e $32
	ld c, $78                                        ; $5acd: $0e $78
	jp nz, $02df                                     ; $5acf: $c2 $df $02

	di                                               ; $5ad2: $f3
	rst SubAFromDE                                          ; $5ad3: $df
	inc a                                            ; $5ad4: $3c
	sbc c                                            ; $5ad5: $99
	ld a, [hl]                                       ; $5ad6: $7e
	ld b, d                                          ; $5ad7: $42
	rst $38                                          ; $5ad8: $ff
	and l                                            ; $5ad9: $a5
	rst $38                                          ; $5ada: $ff
	sub l                                            ; $5adb: $95
	ld a, e                                          ; $5adc: $7b
	cp $9a                                           ; $5add: $fe $9a
	db $e3                                           ; $5adf: $e3
	ld a, [hl]                                       ; $5ae0: $7e
	ld b, d                                          ; $5ae1: $42
	inc a                                            ; $5ae2: $3c
	inc a                                            ; $5ae3: $3c
	ei                                               ; $5ae4: $fb
	inc d                                            ; $5ae5: $14
	inc bc                                           ; $5ae6: $03
	db $ed                                           ; $5ae7: $ed
	rst SubAFromDE                                          ; $5ae8: $df
	ld e, $95                                        ; $5ae9: $1e $95
	ccf                                              ; $5aeb: $3f
	ld hl, $407f                                     ; $5aec: $21 $7f $40

jr_01b_5aef:
	rst $38                                          ; $5aef: $ff
	adc b                                            ; $5af0: $88
	rst $38                                          ; $5af1: $ff
	inc d                                            ; $5af2: $14
	rst $38                                          ; $5af3: $ff
	jr nz, jr_01b_5aef                               ; $5af4: $20 $f9

	rst SubAFromDE                                          ; $5af6: $df
	ld a, [bc]                                       ; $5af7: $0a
	rst SubAFromDE                                          ; $5af8: $df
	dec b                                            ; $5af9: $05
	adc e                                            ; $5afa: $8b
	ld e, $1f                                        ; $5afb: $1e $1f
	jr nz, jr_01b_5b3e                               ; $5afd: $20 $3f

	ld h, b                                          ; $5aff: $60
	ld a, a                                          ; $5b00: $7f
	sbc $bf                                          ; $5b01: $de $bf
	rst $38                                          ; $5b03: $ff
	sub l                                            ; $5b04: $95
	db $eb                                           ; $5b05: $eb
	or a                                             ; $5b06: $b7
	rst FarCall                                          ; $5b07: $f7
	cp a                                             ; $5b08: $bf
	cp $9f                                           ; $5b09: $fe $9f
	rst $38                                          ; $5b0b: $ff
	add a                                            ; $5b0c: $87

jr_01b_5b0d:
	db $fd                                           ; $5b0d: $fd
	ld d, [hl]                                       ; $5b0e: $56
	rst FarCall                                          ; $5b0f: $f7
	rst SubAFromDE                                          ; $5b10: $df
	ldh [$8b], a                                     ; $5b11: $e0 $8b
	jr jr_01b_5b0d                                   ; $5b13: $18 $f8

	and b                                            ; $5b15: $a0
	ldh [$78], a                                     ; $5b16: $e0 $78
	ld hl, sp+$24                                    ; $5b18: $f8 $24
	db $fc                                           ; $5b1a: $fc
	ld [bc], a                                       ; $5b1b: $02
	cp $2d                                           ; $5b1c: $fe $2d
	rst $38                                          ; $5b1e: $ff
	inc h                                            ; $5b1f: $24
	db $fc                                           ; $5b20: $fc
	ld b, h                                          ; $5b21: $44
	db $fc                                           ; $5b22: $fc
	call nz, $48fc                                   ; $5b23: $c4 $fc $48
	ld hl, sp-$09                                    ; $5b26: $f8 $f7
	db $dd                                           ; $5b28: $dd
	ld bc, $039d                                     ; $5b29: $01 $9d $03
	ld [bc], a                                       ; $5b2c: $02
	ld h, a                                          ; $5b2d: $67
	cp $97                                           ; $5b2e: $fe $97
	rlca                                             ; $5b30: $07
	inc b                                            ; $5b31: $04
	rrca                                             ; $5b32: $0f
	ld [$080f], sp                                   ; $5b33: $08 $0f $08
	rra                                              ; $5b36: $1f
	db $10                                           ; $5b37: $10
	ld [hl], a                                       ; $5b38: $77
	add sp, -$21                                     ; $5b39: $e8 $df
	inc a                                            ; $5b3b: $3c
	add b                                            ; $5b3c: $80
	ld a, a                                          ; $5b3d: $7f

jr_01b_5b3e:
	ld b, e                                          ; $5b3e: $43
	rst $38                                          ; $5b3f: $ff
	add b                                            ; $5b40: $80
	rst $38                                          ; $5b41: $ff
	db $10                                           ; $5b42: $10
	rst $38                                          ; $5b43: $ff
	ld a, [hl-]                                      ; $5b44: $3a
	rst SubAFromDE                                          ; $5b45: $df
	ld l, a                                          ; $5b46: $6f
	rst $38                                          ; $5b47: $ff
	ld [hl], h                                       ; $5b48: $74
	db $eb                                           ; $5b49: $eb
	ld [hl], a                                       ; $5b4a: $77
	or $7f                                           ; $5b4b: $f6 $7f
	rst $38                                          ; $5b4d: $ff
	ld e, a                                          ; $5b4e: $5f
	rst $38                                          ; $5b4f: $ff
	ld b, e                                          ; $5b50: $43
	cp $5b                                           ; $5b51: $fe $5b
	rst $38                                          ; $5b53: $ff
	dec hl                                           ; $5b54: $2b
	rst $38                                          ; $5b55: $ff
	ld de, $0000                                     ; $5b56: $11 $00 $00
	ld b, b                                          ; $5b59: $40
	ld b, b                                          ; $5b5a: $40
	add b                                            ; $5b5b: $80
	add h                                            ; $5b5c: $84
	add b                                            ; $5b5d: $80
	ldh [$e0], a                                     ; $5b5e: $e0 $e0
	sbc h                                            ; $5b60: $9c
	db $fc                                           ; $5b61: $fc
	add d                                            ; $5b62: $82
	cp $88                                           ; $5b63: $fe $88
	cp $06                                           ; $5b65: $fe $06
	cp $94                                           ; $5b67: $fe $94
	db $fc                                           ; $5b69: $fc
	ld [de], a                                       ; $5b6a: $12
	cp $61                                           ; $5b6b: $fe $61
	rst $38                                          ; $5b6d: $ff
	ret                                              ; $5b6e: $c9


	rst $38                                          ; $5b6f: $ff
	jp hl                                            ; $5b70: $e9


	ld a, a                                          ; $5b71: $7f
	cp d                                             ; $5b72: $ba
	ld a, [hl]                                       ; $5b73: $7e
	ld l, d                                          ; $5b74: $6a
	xor $c4                                          ; $5b75: $ee $c4
	call nz, $dfed                                   ; $5b77: $c4 $ed $df
	inc e                                            ; $5b7a: $1c
	sub l                                            ; $5b7b: $95
	ccf                                              ; $5b7c: $3f
	inc hl                                           ; $5b7d: $23
	ld a, a                                          ; $5b7e: $7f
	ld b, b                                          ; $5b7f: $40
	ld a, a                                          ; $5b80: $7f
	ld b, d                                          ; $5b81: $42
	rst $38                                          ; $5b82: $ff
	add h                                            ; $5b83: $84
	rst $38                                          ; $5b84: $ff
	sbc b                                            ; $5b85: $98
	ei                                               ; $5b86: $fb
	rst SubAFromDE                                          ; $5b87: $df
	dec b                                            ; $5b88: $05
	rst SubAFromDE                                          ; $5b89: $df
	ld [bc], a                                       ; $5b8a: $02
	rst SubAFromDE                                          ; $5b8b: $df
	rrca                                             ; $5b8c: $0f
	adc h                                            ; $5b8d: $8c
	ld [hl], d                                       ; $5b8e: $72
	ld a, a                                          ; $5b8f: $7f
	jr nz, @+$41                                     ; $5b90: $20 $3f

	ld b, b                                          ; $5b92: $40
	ld a, a                                          ; $5b93: $7f
	ld d, b                                          ; $5b94: $50
	ld a, a                                          ; $5b95: $7f
	and b                                            ; $5b96: $a0

jr_01b_5b97:
	rst $38                                          ; $5b97: $ff
	ldh [rIE], a                                     ; $5b98: $e0 $ff
	ldh a, [rIE]                                     ; $5b9a: $f0 $ff
	rst $38                                          ; $5b9c: $ff
	rrca                                             ; $5b9d: $0f
	rst $38                                          ; $5b9e: $ff
	nop                                              ; $5b9f: $00
	rst $38                                          ; $5ba0: $ff
	or $df                                           ; $5ba1: $f6 $df
	ret nz                                           ; $5ba3: $c0

	adc e                                            ; $5ba4: $8b
	jr nc, jr_01b_5b97                               ; $5ba5: $30 $f0

	inc c                                            ; $5ba7: $0c
	db $fc                                           ; $5ba8: $fc
	ld [hl+], a                                      ; $5ba9: $22
	cp $1c                                           ; $5baa: $fe $1c
	db $fc                                           ; $5bac: $fc
	ld [$04f8], sp                                   ; $5bad: $08 $f8 $04
	db $fc                                           ; $5bb0: $fc
	inc h                                            ; $5bb1: $24
	db $fc                                           ; $5bb2: $fc
	ld a, [de]                                       ; $5bb3: $1a
	cp $f4                                           ; $5bb4: $fe $f4
	db $fc                                           ; $5bb6: $fc
	db $fc                                           ; $5bb7: $fc
	inc c                                            ; $5bb8: $0c
	daa                                              ; $5bb9: $27
	ldh [$99], a                                     ; $5bba: $e0 $99
	dec h                                            ; $5bbc: $25
	db $fd                                           ; $5bbd: $fd
	rra                                              ; $5bbe: $1f
	rst $38                                          ; $5bbf: $ff
	rst $38                                          ; $5bc0: $ff
	db $fc                                           ; $5bc1: $fc
	ld h, a                                          ; $5bc2: $67
	ret nz                                           ; $5bc3: $c0

	rst SubAFromDE                                          ; $5bc4: $df
	rlca                                             ; $5bc5: $07
	sub a                                            ; $5bc6: $97
	jr jr_01b_5be8                                   ; $5bc7: $18 $1f

	ld h, a                                          ; $5bc9: $67
	ld a, b                                          ; $5bca: $78
	sbc a                                            ; $5bcb: $9f
	ldh [$bf], a                                     ; $5bcc: $e0 $bf
	ret nz                                           ; $5bce: $c0

	ld [hl], a                                       ; $5bcf: $77
	cp $93                                           ; $5bd0: $fe $93
	rst $38                                          ; $5bd2: $ff
	ret c                                            ; $5bd3: $d8

	rst $38                                          ; $5bd4: $ff
	and h                                            ; $5bd5: $a4
	rst $38                                          ; $5bd6: $ff
	inc b                                            ; $5bd7: $04
	rst $38                                          ; $5bd8: $ff
	inc b                                            ; $5bd9: $04
	ld hl, sp+$0f                                    ; $5bda: $f8 $0f
	rst $38                                          ; $5bdc: $ff
	ccf                                              ; $5bdd: $3f
	ei                                               ; $5bde: $fb
	rst SubAFromDE                                          ; $5bdf: $df
	inc c                                            ; $5be0: $0c
	adc l                                            ; $5be1: $8d
	ld e, $12                                        ; $5be2: $1e $12
	ld a, $26                                        ; $5be4: $3e $26
	ld a, h                                          ; $5be6: $7c
	ld b, h                                          ; $5be7: $44

jr_01b_5be8:
	ld hl, sp-$78                                    ; $5be8: $f8 $88
	ld hl, sp-$78                                    ; $5bea: $f8 $88
	ld a, b                                          ; $5bec: $78
	ld c, b                                          ; $5bed: $48
	ld a, h                                          ; $5bee: $7c
	ld b, h                                          ; $5bef: $44
	ld a, $22                                        ; $5bf0: $3e $22
	rra                                              ; $5bf2: $1f
	ld de, $fe77                                     ; $5bf3: $11 $77 $fe
	sbc l                                            ; $5bf6: $9d
	rrca                                             ; $5bf7: $0f
	add hl, bc                                       ; $5bf8: $09
	db $fd                                           ; $5bf9: $fd
	rst SubAFromDE                                          ; $5bfa: $df
	ld [$1c97], sp                                   ; $5bfb: $08 $97 $1c
	inc d                                            ; $5bfe: $14
	inc a                                            ; $5bff: $3c
	inc h                                            ; $5c00: $24
	inc a                                            ; $5c01: $3c
	inc h                                            ; $5c02: $24
	ld a, b                                          ; $5c03: $78
	ld c, b                                          ; $5c04: $48
	ld [hl], a                                       ; $5c05: $77
	ldh [$7f], a                                     ; $5c06: $e0 $7f
	ldh [c], a                                       ; $5c08: $e2
	ld a, a                                          ; $5c09: $7f
	or $4f                                           ; $5c0a: $f6 $4f
	ldh [$df], a                                     ; $5c0c: $e0 $df
	inc h                                            ; $5c0e: $24
	rst SubAFromDE                                          ; $5c0f: $df
	ld [de], a                                       ; $5c10: $12
	ld l, a                                          ; $5c11: $6f
	db $fc                                           ; $5c12: $fc
	rst AddAOntoHL                                          ; $5c13: $ef
	rst SubAFromDE                                          ; $5c14: $df
	scf                                              ; $5c15: $37
	add l                                            ; $5c16: $85
	inc c                                            ; $5c17: $0c
	ccf                                              ; $5c18: $3f
	inc hl                                           ; $5c19: $23
	ccf                                              ; $5c1a: $3f
	dec e                                            ; $5c1b: $1d
	rra                                              ; $5c1c: $1f
	inc h                                            ; $5c1d: $24
	ccf                                              ; $5c1e: $3f
	inc l                                            ; $5c1f: $2c
	ccf                                              ; $5c20: $3f
	cpl                                              ; $5c21: $2f
	dec sp                                           ; $5c22: $3b
	rra                                              ; $5c23: $1f
	jr jr_01b_5c35                                   ; $5c24: $18 $0f

	dec bc                                           ; $5c26: $0b
	dec e                                            ; $5c27: $1d
	inc de                                           ; $5c28: $13
	rra                                              ; $5c29: $1f
	ld [de], a                                       ; $5c2a: $12
	rrca                                             ; $5c2b: $0f
	inc c                                            ; $5c2c: $0c
	rlca                                             ; $5c2d: $07
	inc b                                            ; $5c2e: $04
	rlca                                             ; $5c2f: $07
	ld b, $76                                        ; $5c30: $06 $76
	sbc d                                            ; $5c32: $9a
	add b                                            ; $5c33: $80
	sub b                                            ; $5c34: $90

jr_01b_5c35:
	or b                                             ; $5c35: $b0
	ret z                                            ; $5c36: $c8

	ld hl, sp-$44                                    ; $5c37: $f8 $bc
	db $fc                                           ; $5c39: $fc
	ld a, $e2                                        ; $5c3a: $3e $e2

Call_01b_5c3c:
	rst $38                                          ; $5c3c: $ff
	pop hl                                           ; $5c3d: $e1
	ccf                                              ; $5c3e: $3f
	jp hl                                            ; $5c3f: $e9


	rra                                              ; $5c40: $1f
	pop af                                           ; $5c41: $f1
	sbc a                                            ; $5c42: $9f
	ld sp, hl                                        ; $5c43: $f9
	cp a                                             ; $5c44: $bf
	ld a, c                                          ; $5c45: $79
	rst $38                                          ; $5c46: $ff
	ld e, c                                          ; $5c47: $59
	cp $12                                           ; $5c48: $fe $12
	cp $22                                           ; $5c4a: $fe $22
	db $fc                                           ; $5c4c: $fc
	ld b, h                                          ; $5c4d: $44
	ld hl, sp+$08                                    ; $5c4e: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5c50: $f0 $10
	ldh a, [$7a]                                     ; $5c52: $f0 $7a
	add b                                            ; $5c54: $80
	ld l, a                                          ; $5c55: $6f
	ld b, d                                          ; $5c56: $42
	add a                                            ; $5c57: $87
	daa                                              ; $5c58: $27
	jr c, jr_01b_5caa                                ; $5c59: $38 $4f

	ld [hl], a                                       ; $5c5b: $77
	ld c, b                                          ; $5c5c: $48
	ld a, a                                          ; $5c5d: $7f
	sub l                                            ; $5c5e: $95
	rst $38                                          ; $5c5f: $ff
	push hl                                          ; $5c60: $e5
	rst $38                                          ; $5c61: $ff
	xor l                                            ; $5c62: $ad
	cp d                                             ; $5c63: $ba
	rra                                              ; $5c64: $1f
	ld d, $0b                                        ; $5c65: $16 $0b
	ld e, $2f                                        ; $5c67: $1e $2f
	ld [hl], $2f                                     ; $5c69: $36 $2f
	ld a, $2f                                        ; $5c6b: $3e $2f
	add hl, sp                                       ; $5c6d: $39
	daa                                              ; $5c6e: $27
	inc a                                            ; $5c6f: $3c
	db $fd                                           ; $5c70: $fd
	rst SubAFromDE                                          ; $5c71: $df
	ld a, b                                          ; $5c72: $78
	add c                                            ; $5c73: $81

jr_01b_5c74:
	add h                                            ; $5c74: $84
	db $fc                                           ; $5c75: $fc
	ldh [c], a                                       ; $5c76: $e2
	ld e, $f2                                        ; $5c77: $1e $f2
	xor $19                                          ; $5c79: $ee $19
	rst FarCall                                          ; $5c7b: $f7
	add hl, hl                                       ; $5c7c: $29
	rst $38                                          ; $5c7d: $ff
	dec h                                            ; $5c7e: $25
	rst $38                                          ; $5c7f: $ff
	or l                                             ; $5c80: $b5
	rst SubAFromDE                                          ; $5c81: $df
	ld sp, hl                                        ; $5c82: $f9
	ld l, a                                          ; $5c83: $6f
	cp l                                             ; $5c84: $bd
	ld [hl], a                                       ; $5c85: $77
	db $fd                                           ; $5c86: $fd
	ld h, a                                          ; $5c87: $67
	db $fd                                           ; $5c88: $fd
	ld h, a                                          ; $5c89: $67
	ld sp, hl                                        ; $5c8a: $f9
	adc a                                            ; $5c8b: $8f
	pop af                                           ; $5c8c: $f1
	rra                                              ; $5c8d: $1f
	inc b                                            ; $5c8e: $04
	rlca                                             ; $5c8f: $07
	dec b                                            ; $5c90: $05
	rlca                                             ; $5c91: $07
	halt                                             ; $5c92: $76
	jr nc, jr_01b_5c74                               ; $5c93: $30 $df

	ld bc, $dff1                                     ; $5c95: $01 $f1 $df
	inc bc                                           ; $5c98: $03
	db $fd                                           ; $5c99: $fd
	adc a                                            ; $5c9a: $8f
	rst $38                                          ; $5c9b: $ff

jr_01b_5c9c:
	rst AddAOntoHL                                          ; $5c9c: $ef
	rst SubAFromHL                                          ; $5c9d: $d7

jr_01b_5c9e:
	ld a, l                                          ; $5c9e: $7d
	add a                                            ; $5c9f: $87
	db $fc                                           ; $5ca0: $fc
	add a                                            ; $5ca1: $87
	cp $cf                                           ; $5ca2: $fe $cf
	ld a, h                                          ; $5ca4: $7c
	rst JumpTable                                          ; $5ca5: $c7
	db $fd                                           ; $5ca6: $fd
	ld l, [hl]                                       ; $5ca7: $6e
	ld a, d                                          ; $5ca8: $7a
	ld a, [hl]                                       ; $5ca9: $7e

jr_01b_5caa:
	ld d, d                                          ; $5caa: $52
	ld [hl], a                                       ; $5cab: $77
	cp $8c                                           ; $5cac: $fe $8c
	ld a, a                                          ; $5cae: $7f
	ld c, c                                          ; $5caf: $49
	ld a, a                                          ; $5cb0: $7f
	ld c, c                                          ; $5cb1: $49
	rst $38                                          ; $5cb2: $ff
	sbc h                                            ; $5cb3: $9c
	rst $38                                          ; $5cb4: $ff
	db $fc                                           ; $5cb5: $fc
	rlca                                             ; $5cb6: $07
	rlca                                             ; $5cb7: $07
	nop                                              ; $5cb8: $00
	nop                                              ; $5cb9: $00
	jr nz, jr_01b_5c9c                               ; $5cba: $20 $e0

	jr nz, jr_01b_5c9e                               ; $5cbc: $20 $e0

	and b                                            ; $5cbe: $a0
	ldh [$c0], a                                     ; $5cbf: $e0 $c0
	ld a, d                                          ; $5cc1: $7a
	inc e                                            ; $5cc2: $1c
	di                                               ; $5cc3: $f3
	rst SubAFromDE                                          ; $5cc4: $df
	add b                                            ; $5cc5: $80
	ld a, a                                          ; $5cc6: $7f
	db $ec                                           ; $5cc7: $ec
	rst SubAFromDE                                          ; $5cc8: $df
	ldh a, [$fb]                                     ; $5cc9: $f0 $fb
	rst SubAFromDE                                          ; $5ccb: $df
	rst AddAOntoHL                                          ; $5ccc: $ef
	ld a, l                                          ; $5ccd: $7d
	push hl                                          ; $5cce: $e5
	sbc b                                            ; $5ccf: $98
	db $fc                                           ; $5cd0: $fc
	inc bc                                           ; $5cd1: $03
	cp $fd                                           ; $5cd2: $fe $fd
	inc bc                                           ; $5cd4: $03
	cp $a5                                           ; $5cd5: $fe $a5
	ld a, d                                          ; $5cd7: $7a
	and a                                            ; $5cd8: $a7
	sub c                                            ; $5cd9: $91
	or [hl]                                          ; $5cda: $b6
	ld e, e                                          ; $5cdb: $5b
	rst $38                                          ; $5cdc: $ff
	pop bc                                           ; $5cdd: $c1
	ld a, a                                          ; $5cde: $7f
	call z, $ceff                                    ; $5cdf: $cc $ff $ce
	rst $38                                          ; $5ce2: $ff
	jp z, $31ff                                      ; $5ce3: $ca $ff $31

	sbc $b3                                          ; $5ce6: $de $b3
	ld h, a                                          ; $5ce8: $67
	sub h                                            ; $5ce9: $94
	ld a, a                                          ; $5cea: $7f
	ld a, b                                          ; $5ceb: $78
	sub l                                            ; $5cec: $95
	add hl, bc                                       ; $5ced: $09
	ld c, $09                                        ; $5cee: $0e $09
	rrca                                             ; $5cf0: $0f
	ld [de], a                                       ; $5cf1: $12
	rra                                              ; $5cf2: $1f
	inc e                                            ; $5cf3: $1c

Call_01b_5cf4:
	rra                                              ; $5cf4: $1f
	dec d                                            ; $5cf5: $15
	rla                                              ; $5cf6: $17
	ld a, e                                          ; $5cf7: $7b
	ld [hl], d                                       ; $5cf8: $72
	sbc l                                            ; $5cf9: $9d
	ld [bc], a                                       ; $5cfa: $02
	dec b                                            ; $5cfb: $05
	ld a, e                                          ; $5cfc: $7b
	ld l, b                                          ; $5cfd: $68
	ld a, a                                          ; $5cfe: $7f
	cp $7f                                           ; $5cff: $fe $7f
	ld [$c033], a                                    ; $5d01: $ea $33 $c0
	ld a, a                                          ; $5d04: $7f
	add d                                            ; $5d05: $82
	ld a, a                                          ; $5d06: $7f
	ld l, b                                          ; $5d07: $68
	sbc b                                            ; $5d08: $98
	ld c, d                                          ; $5d09: $4a
	rst $38                                          ; $5d0a: $ff
	call $31ff                                       ; $5d0b: $cd $ff $31
	cp $83                                           ; $5d0e: $fe $83
	inc sp                                           ; $5d10: $33
	ldh [$98], a                                     ; $5d11: $e0 $98
	ld bc, $eeff                                     ; $5d13: $01 $ff $ee
	ld [hl], a                                       ; $5d16: $77
	call z, $ccff                                    ; $5d17: $cc $ff $cc
	ld l, a                                          ; $5d1a: $6f
	ldh [$df], a                                     ; $5d1b: $e0 $df
	inc bc                                           ; $5d1d: $03
	sbc d                                            ; $5d1e: $9a
	inc c                                            ; $5d1f: $0c
	rrca                                             ; $5d20: $0f
	db $10                                           ; $5d21: $10
	rra                                              ; $5d22: $1f
	ld hl, $c679                                     ; $5d23: $21 $79 $c6
	sbc d                                            ; $5d26: $9a
	ld b, c                                          ; $5d27: $41
	ld a, a                                          ; $5d28: $7f
	add b                                            ; $5d29: $80
	rst $38                                          ; $5d2a: $ff
	add c                                            ; $5d2b: $81
	ld a, e                                          ; $5d2c: $7b
	cp $9b                                           ; $5d2d: $fe $9b
	ld b, e                                          ; $5d2f: $43
	ld a, [hl]                                       ; $5d30: $7e
	ld b, e                                          ; $5d31: $43
	ld a, [hl]                                       ; $5d32: $7e
	ld [hl], a                                       ; $5d33: $77
	ldh a, [$7f]                                     ; $5d34: $f0 $7f
	dec a                                            ; $5d36: $3d
	rst SubAFromDE                                          ; $5d37: $df
	db $e3                                           ; $5d38: $e3
	ld [hl], a                                       ; $5d39: $77
	ld d, [hl]                                       ; $5d3a: $56
	sbc e                                            ; $5d3b: $9b
	ld h, b                                          ; $5d3c: $60
	ldh [rAUD1SWEEP], a                              ; $5d3d: $e0 $10
	ldh a, [$75]                                     ; $5d3f: $f0 $75
	db $ec                                           ; $5d41: $ec
	ld a, a                                          ; $5d42: $7f
	cp $7d                                           ; $5d43: $fe $7d
	ld b, $77                                        ; $5d45: $06 $77
	cp $7e                                           ; $5d47: $fe $7e
	jp nc, $fe7f                                     ; $5d49: $d2 $7f $fe

	ld a, a                                          ; $5d4c: $7f
	ldh a, [$7f]                                     ; $5d4d: $f0 $7f
	db $ec                                           ; $5d4f: $ec
	ld a, a                                          ; $5d50: $7f
	add sp, -$21                                     ; $5d51: $e8 $df
	add b                                            ; $5d53: $80
	ld l, a                                          ; $5d54: $6f
	jp nz, $887d                                     ; $5d55: $c2 $7d $88

	ld a, a                                          ; $5d58: $7f
	call nz, $cc7f                                   ; $5d59: $c4 $7f $cc
	sub h                                            ; $5d5c: $94
	add e                                            ; $5d5d: $83
	cp $87                                           ; $5d5e: $fe $87
	db $fd                                           ; $5d60: $fd
	adc a                                            ; $5d61: $8f
	ld a, [$fd87]                                    ; $5d62: $fa $87 $fd
	ld b, e                                          ; $5d65: $43
	ld a, [hl]                                       ; $5d66: $7e
	ld b, c                                          ; $5d67: $41
	ld a, c                                          ; $5d68: $79
	halt                                             ; $5d69: $76
	ld a, [hl]                                       ; $5d6a: $7e
	adc h                                            ; $5d6b: $8c
	sbc e                                            ; $5d6c: $9b
	ld b, $07                                        ; $5d6d: $06 $07
	ld bc, $7501                                     ; $5d6f: $01 $01 $75
	xor d                                            ; $5d72: $aa
	ld [hl], a                                       ; $5d73: $77
	call nz, $d27c                                   ; $5d74: $c4 $7c $d2
	sbc b                                            ; $5d77: $98
	ldh [c], a                                       ; $5d78: $e2
	cp [hl]                                          ; $5d79: $be
	ldh [c], a                                       ; $5d7a: $e2
	cp [hl]                                          ; $5d7b: $be
	pop hl                                           ; $5d7c: $e1
	ccf                                              ; $5d7d: $3f
	pop hl                                           ; $5d7e: $e1
	ld a, d                                          ; $5d7f: $7a
	ld d, a                                          ; $5d80: $57
	sbc e                                            ; $5d81: $9b
	ldh [c], a                                       ; $5d82: $e2
	ld a, $c2                                        ; $5d83: $3e $c2
	cp $77                                           ; $5d85: $fe $77
	or h                                             ; $5d87: $b4
	sbc e                                            ; $5d88: $9b
	add hl, de                                       ; $5d89: $19
	rst $38                                          ; $5d8a: $ff
	rst SubAFromBC                                          ; $5d8b: $e7
	rst SubAFromBC                                          ; $5d8c: $e7
	dec [hl]                                         ; $5d8d: $35
	and b                                            ; $5d8e: $a0
	ld h, a                                          ; $5d8f: $67
	cp $7f                                           ; $5d90: $fe $7f
	ld [hl], d                                       ; $5d92: $72
	rst SubAFromDE                                          ; $5d93: $df
	rst $38                                          ; $5d94: $ff
	ei                                               ; $5d95: $fb
	rst SubAFromDE                                          ; $5d96: $df
	rst $38                                          ; $5d97: $ff
	sbc [hl]                                         ; $5d98: $9e
	ld b, c                                          ; $5d99: $41
	ld [hl], e                                       ; $5d9a: $73
	cp $95                                           ; $5d9b: $fe $95
	ld c, c                                          ; $5d9d: $49
	rst FarCall                                          ; $5d9e: $f7
	ld e, c                                          ; $5d9f: $59
	rst SubAFromBC                                          ; $5da0: $e7
	ld c, c                                          ; $5da1: $49
	rst FarCall                                          ; $5da2: $f7
	ld c, c                                          ; $5da3: $49
	rst FarCall                                          ; $5da4: $f7
	ld e, l                                          ; $5da5: $5d
	db $e3                                           ; $5da6: $e3
	ld l, a                                          ; $5da7: $6f
	ldh a, [$6f]                                     ; $5da8: $f0 $6f
	ldh [$df], a                                     ; $5daa: $e0 $df
	jr @-$61                                         ; $5dac: $18 $9d

	ld a, $36                                        ; $5dae: $3e $36
	ld a, b                                          ; $5db0: $78
	sbc [hl]                                         ; $5db1: $9e
	sbc d                                            ; $5db2: $9a
	add c                                            ; $5db3: $81
	cp $82                                           ; $5db4: $fe $82
	ld a, a                                          ; $5db6: $7f
	ld h, l                                          ; $5db7: $65
	ld a, e                                          ; $5db8: $7b
	dec sp                                           ; $5db9: $3b
	sbc c                                            ; $5dba: $99
	ld b, c                                          ; $5dbb: $41
	ld a, $32                                        ; $5dbc: $3e $32
	ld c, $0a                                        ; $5dbe: $0e $0a
	rlca                                             ; $5dc0: $07
	ld a, b                                          ; $5dc1: $78
	xor $fd                                          ; $5dc2: $ee $fd
	sub l                                            ; $5dc4: $95
	ld e, $f9                                        ; $5dc5: $1e $f9
	rst $38                                          ; $5dc7: $ff
	rst $38                                          ; $5dc8: $ff
	rlca                                             ; $5dc9: $07
	ld a, c                                          ; $5dca: $79
	ld de, $070e                                     ; $5dcb: $11 $0e $07
	inc b                                            ; $5dce: $04
	db $eb                                           ; $5dcf: $eb
	sub e                                            ; $5dd0: $93
	ld a, h                                          ; $5dd1: $7c
	add e                                            ; $5dd2: $83
	rrca                                             ; $5dd3: $0f
	di                                               ; $5dd4: $f3
	rst SubAFromBC                                          ; $5dd5: $e7
	jr @+$01                                         ; $5dd6: $18 $ff

	jr nc, jr_01b_5df9                               ; $5dd8: $30 $1f

	rst SubAFromBC                                          ; $5dda: $e7
	ld a, h                                          ; $5ddb: $7c
	ld a, a                                          ; $5ddc: $7f
	rst SubAFromBC                                          ; $5ddd: $e7
	rst SubAFromDE                                          ; $5dde: $df
	add b                                            ; $5ddf: $80
	sbc e                                            ; $5de0: $9b
	ld b, b                                          ; $5de1: $40
	ret nz                                           ; $5de2: $c0

	ld b, b                                          ; $5de3: $40
	ret nz                                           ; $5de4: $c0

	ld l, [hl]                                       ; $5de5: $6e
	inc [hl]                                         ; $5de6: $34
	ld a, a                                          ; $5de7: $7f
	cp $6f                                           ; $5de8: $fe $6f
	ld a, [$f877]                                    ; $5dea: $fa $77 $f8
	ld a, a                                          ; $5ded: $7f
	cp $2a                                           ; $5dee: $fe $2a
	ld h, b                                          ; $5df0: $60
	sbc h                                            ; $5df1: $9c
	inc bc                                           ; $5df2: $03
	dec b                                            ; $5df3: $05
	ld b, $5e                                        ; $5df4: $06 $5e
	ld h, b                                          ; $5df6: $60
	ldh [rTIMA], a                                   ; $5df7: $e0 $05

jr_01b_5df9:
	nop                                              ; $5df9: $00
	inc bc                                           ; $5dfa: $03
	db $ed                                           ; $5dfb: $ed
	rst SubAFromDE                                          ; $5dfc: $df
	ld e, $95                                        ; $5dfd: $1e $95
	ccf                                              ; $5dff: $3f
	ld hl, $407f                                     ; $5e00: $21 $7f $40

jr_01b_5e03:
	rst $38                                          ; $5e03: $ff
	adc b                                            ; $5e04: $88
	rst $38                                          ; $5e05: $ff
	inc d                                            ; $5e06: $14
	rst $38                                          ; $5e07: $ff
	jr nz, jr_01b_5e03                               ; $5e08: $20 $f9

	rst SubAFromDE                                          ; $5e0a: $df
	ld a, [bc]                                       ; $5e0b: $0a
	rst SubAFromDE                                          ; $5e0c: $df
	dec b                                            ; $5e0d: $05
	adc e                                            ; $5e0e: $8b
	ld e, $1f                                        ; $5e0f: $1e $1f
	jr nz, jr_01b_5e52                               ; $5e11: $20 $3f

	ld h, b                                          ; $5e13: $60
	ld a, a                                          ; $5e14: $7f
	sbc $bf                                          ; $5e15: $de $bf
	rst $38                                          ; $5e17: $ff
	sub l                                            ; $5e18: $95
	db $eb                                           ; $5e19: $eb
	or a                                             ; $5e1a: $b7
	rst FarCall                                          ; $5e1b: $f7
	cp a                                             ; $5e1c: $bf
	cp $9f                                           ; $5e1d: $fe $9f
	rst $38                                          ; $5e1f: $ff
	add a                                            ; $5e20: $87

jr_01b_5e21:
	db $fd                                           ; $5e21: $fd
	ld d, [hl]                                       ; $5e22: $56
	rst FarCall                                          ; $5e23: $f7
	rst SubAFromDE                                          ; $5e24: $df
	ldh [$8b], a                                     ; $5e25: $e0 $8b
	jr jr_01b_5e21                                   ; $5e27: $18 $f8

	and b                                            ; $5e29: $a0
	ldh [$78], a                                     ; $5e2a: $e0 $78
	ld hl, sp+$24                                    ; $5e2c: $f8 $24
	db $fc                                           ; $5e2e: $fc
	ld [bc], a                                       ; $5e2f: $02
	cp $2d                                           ; $5e30: $fe $2d
	rst $38                                          ; $5e32: $ff
	inc h                                            ; $5e33: $24
	db $fc                                           ; $5e34: $fc
	ld b, h                                          ; $5e35: $44
	db $fc                                           ; $5e36: $fc
	call nz, $48fc                                   ; $5e37: $c4 $fc $48
	ld hl, sp-$09                                    ; $5e3a: $f8 $f7
	db $dd                                           ; $5e3c: $dd
	ld bc, $039d                                     ; $5e3d: $01 $9d $03
	ld [bc], a                                       ; $5e40: $02
	ld h, a                                          ; $5e41: $67
	cp $97                                           ; $5e42: $fe $97
	rlca                                             ; $5e44: $07
	inc b                                            ; $5e45: $04
	rrca                                             ; $5e46: $0f
	ld [$080f], sp                                   ; $5e47: $08 $0f $08
	rra                                              ; $5e4a: $1f
	db $10                                           ; $5e4b: $10
	ld [hl], a                                       ; $5e4c: $77
	add sp, -$21                                     ; $5e4d: $e8 $df
	inc a                                            ; $5e4f: $3c
	add b                                            ; $5e50: $80
	ld a, a                                          ; $5e51: $7f

jr_01b_5e52:
	ld b, e                                          ; $5e52: $43
	rst $38                                          ; $5e53: $ff
	add b                                            ; $5e54: $80
	rst $38                                          ; $5e55: $ff
	db $10                                           ; $5e56: $10
	rst $38                                          ; $5e57: $ff
	ld a, [hl-]                                      ; $5e58: $3a
	rst SubAFromDE                                          ; $5e59: $df
	ld l, a                                          ; $5e5a: $6f
	rst $38                                          ; $5e5b: $ff
	ld [hl], h                                       ; $5e5c: $74
	db $eb                                           ; $5e5d: $eb
	ld [hl], a                                       ; $5e5e: $77
	or $7f                                           ; $5e5f: $f6 $7f
	rst $38                                          ; $5e61: $ff
	ld e, a                                          ; $5e62: $5f
	rst $38                                          ; $5e63: $ff
	ld b, e                                          ; $5e64: $43
	cp $5b                                           ; $5e65: $fe $5b
	rst $38                                          ; $5e67: $ff
	dec hl                                           ; $5e68: $2b
	rst $38                                          ; $5e69: $ff
	ld de, $0000                                     ; $5e6a: $11 $00 $00
	ld b, b                                          ; $5e6d: $40
	ld b, b                                          ; $5e6e: $40
	add b                                            ; $5e6f: $80
	add h                                            ; $5e70: $84
	add b                                            ; $5e71: $80
	ldh [$e0], a                                     ; $5e72: $e0 $e0
	sbc h                                            ; $5e74: $9c
	db $fc                                           ; $5e75: $fc
	add d                                            ; $5e76: $82
	cp $88                                           ; $5e77: $fe $88
	cp $06                                           ; $5e79: $fe $06
	cp $94                                           ; $5e7b: $fe $94
	db $fc                                           ; $5e7d: $fc
	ld [de], a                                       ; $5e7e: $12
	cp $61                                           ; $5e7f: $fe $61
	rst $38                                          ; $5e81: $ff
	ret                                              ; $5e82: $c9


	rst $38                                          ; $5e83: $ff
	jp hl                                            ; $5e84: $e9


	ld a, a                                          ; $5e85: $7f
	cp d                                             ; $5e86: $ba
	ld a, [hl]                                       ; $5e87: $7e
	ld l, d                                          ; $5e88: $6a
	xor $c4                                          ; $5e89: $ee $c4
	call nz, $dfed                                   ; $5e8b: $c4 $ed $df
	inc e                                            ; $5e8e: $1c
	sub l                                            ; $5e8f: $95
	ccf                                              ; $5e90: $3f
	inc hl                                           ; $5e91: $23
	ld a, a                                          ; $5e92: $7f
	ld b, b                                          ; $5e93: $40
	ld a, a                                          ; $5e94: $7f
	ld b, d                                          ; $5e95: $42
	rst $38                                          ; $5e96: $ff
	add h                                            ; $5e97: $84
	rst $38                                          ; $5e98: $ff
	sbc b                                            ; $5e99: $98
	ei                                               ; $5e9a: $fb
	rst SubAFromDE                                          ; $5e9b: $df
	dec b                                            ; $5e9c: $05
	rst SubAFromDE                                          ; $5e9d: $df
	ld [bc], a                                       ; $5e9e: $02
	rst SubAFromDE                                          ; $5e9f: $df
	rrca                                             ; $5ea0: $0f
	adc h                                            ; $5ea1: $8c
	ld [hl], d                                       ; $5ea2: $72
	ld a, a                                          ; $5ea3: $7f
	jr nz, @+$41                                     ; $5ea4: $20 $3f

	ld b, b                                          ; $5ea6: $40
	ld a, a                                          ; $5ea7: $7f
	ld d, b                                          ; $5ea8: $50
	ld a, a                                          ; $5ea9: $7f
	and b                                            ; $5eaa: $a0

jr_01b_5eab:
	rst $38                                          ; $5eab: $ff
	ldh [rIE], a                                     ; $5eac: $e0 $ff
	ldh a, [rIE]                                     ; $5eae: $f0 $ff
	rst $38                                          ; $5eb0: $ff
	rrca                                             ; $5eb1: $0f
	rst $38                                          ; $5eb2: $ff
	nop                                              ; $5eb3: $00
	rst $38                                          ; $5eb4: $ff
	or $df                                           ; $5eb5: $f6 $df
	ret nz                                           ; $5eb7: $c0

	adc e                                            ; $5eb8: $8b
	jr nc, jr_01b_5eab                               ; $5eb9: $30 $f0

	inc c                                            ; $5ebb: $0c
	db $fc                                           ; $5ebc: $fc
	ld [hl+], a                                      ; $5ebd: $22
	cp $1c                                           ; $5ebe: $fe $1c
	db $fc                                           ; $5ec0: $fc
	ld [$04f8], sp                                   ; $5ec1: $08 $f8 $04
	db $fc                                           ; $5ec4: $fc
	inc h                                            ; $5ec5: $24
	db $fc                                           ; $5ec6: $fc
	ld a, [de]                                       ; $5ec7: $1a
	cp $f4                                           ; $5ec8: $fe $f4
	db $fc                                           ; $5eca: $fc
	db $fc                                           ; $5ecb: $fc
	inc c                                            ; $5ecc: $0c
	daa                                              ; $5ecd: $27
	ldh [$99], a                                     ; $5ece: $e0 $99
	dec h                                            ; $5ed0: $25
	db $fd                                           ; $5ed1: $fd
	rra                                              ; $5ed2: $1f
	rst $38                                          ; $5ed3: $ff
	rst $38                                          ; $5ed4: $ff
	db $fc                                           ; $5ed5: $fc
	ld h, a                                          ; $5ed6: $67
	ret nz                                           ; $5ed7: $c0

	rst SubAFromDE                                          ; $5ed8: $df
	rlca                                             ; $5ed9: $07
	sub a                                            ; $5eda: $97
	jr jr_01b_5efc                                   ; $5edb: $18 $1f

	ld h, a                                          ; $5edd: $67
	ld a, b                                          ; $5ede: $78
	sbc a                                            ; $5edf: $9f
	ldh [$bf], a                                     ; $5ee0: $e0 $bf
	ret nz                                           ; $5ee2: $c0

	ld [hl], a                                       ; $5ee3: $77
	cp $93                                           ; $5ee4: $fe $93
	rst $38                                          ; $5ee6: $ff
	ret c                                            ; $5ee7: $d8

	rst $38                                          ; $5ee8: $ff
	and h                                            ; $5ee9: $a4
	rst $38                                          ; $5eea: $ff
	inc b                                            ; $5eeb: $04
	rst $38                                          ; $5eec: $ff
	inc b                                            ; $5eed: $04
	ld hl, sp+$0f                                    ; $5eee: $f8 $0f
	rst $38                                          ; $5ef0: $ff
	ccf                                              ; $5ef1: $3f
	ei                                               ; $5ef2: $fb
	rst SubAFromDE                                          ; $5ef3: $df
	inc c                                            ; $5ef4: $0c
	adc l                                            ; $5ef5: $8d
	ld e, $12                                        ; $5ef6: $1e $12
	ld a, $26                                        ; $5ef8: $3e $26
	ld a, h                                          ; $5efa: $7c
	ld b, h                                          ; $5efb: $44

jr_01b_5efc:
	ld hl, sp-$78                                    ; $5efc: $f8 $88
	ld hl, sp-$78                                    ; $5efe: $f8 $88
	ld a, b                                          ; $5f00: $78
	ld c, b                                          ; $5f01: $48
	ld a, h                                          ; $5f02: $7c
	ld b, h                                          ; $5f03: $44
	ld a, $22                                        ; $5f04: $3e $22
	rra                                              ; $5f06: $1f
	ld de, $fe77                                     ; $5f07: $11 $77 $fe
	sbc l                                            ; $5f0a: $9d
	rrca                                             ; $5f0b: $0f
	add hl, bc                                       ; $5f0c: $09
	db $fd                                           ; $5f0d: $fd
	rst SubAFromDE                                          ; $5f0e: $df
	ld [$1c97], sp                                   ; $5f0f: $08 $97 $1c
	inc d                                            ; $5f12: $14
	inc a                                            ; $5f13: $3c
	inc h                                            ; $5f14: $24
	inc a                                            ; $5f15: $3c
	inc h                                            ; $5f16: $24
	ld a, b                                          ; $5f17: $78
	ld c, b                                          ; $5f18: $48
	ld [hl], a                                       ; $5f19: $77
	ldh [$7f], a                                     ; $5f1a: $e0 $7f
	ldh [c], a                                       ; $5f1c: $e2
	ld a, a                                          ; $5f1d: $7f
	or $4f                                           ; $5f1e: $f6 $4f
	ldh [$9c], a                                     ; $5f20: $e0 $9c
	inc h                                            ; $5f22: $24
	nop                                              ; $5f23: $00
	ld [de], a                                       ; $5f24: $12
	ld l, e                                          ; $5f25: $6b
	db $fc                                           ; $5f26: $fc
	rst AddAOntoHL                                          ; $5f27: $ef
	rst SubAFromDE                                          ; $5f28: $df
	scf                                              ; $5f29: $37
	add l                                            ; $5f2a: $85
	inc c                                            ; $5f2b: $0c
	ccf                                              ; $5f2c: $3f
	inc hl                                           ; $5f2d: $23
	ccf                                              ; $5f2e: $3f
	dec e                                            ; $5f2f: $1d
	rra                                              ; $5f30: $1f
	inc h                                            ; $5f31: $24
	ccf                                              ; $5f32: $3f
	inc l                                            ; $5f33: $2c
	ccf                                              ; $5f34: $3f
	cpl                                              ; $5f35: $2f
	dec sp                                           ; $5f36: $3b
	rra                                              ; $5f37: $1f
	jr jr_01b_5f49                                   ; $5f38: $18 $0f

	dec bc                                           ; $5f3a: $0b
	dec e                                            ; $5f3b: $1d
	inc de                                           ; $5f3c: $13
	rra                                              ; $5f3d: $1f
	ld [de], a                                       ; $5f3e: $12
	rrca                                             ; $5f3f: $0f
	inc c                                            ; $5f40: $0c
	rlca                                             ; $5f41: $07
	inc b                                            ; $5f42: $04
	rlca                                             ; $5f43: $07
	ld b, $76                                        ; $5f44: $06 $76
	sbc d                                            ; $5f46: $9a
	add b                                            ; $5f47: $80
	sub b                                            ; $5f48: $90

jr_01b_5f49:
	or b                                             ; $5f49: $b0
	ret z                                            ; $5f4a: $c8

	ld hl, sp-$44                                    ; $5f4b: $f8 $bc
	db $fc                                           ; $5f4d: $fc
	ld a, $e2                                        ; $5f4e: $3e $e2
	rst $38                                          ; $5f50: $ff
	pop hl                                           ; $5f51: $e1
	ccf                                              ; $5f52: $3f
	jp hl                                            ; $5f53: $e9


	rra                                              ; $5f54: $1f
	pop af                                           ; $5f55: $f1
	sbc a                                            ; $5f56: $9f
	ld sp, hl                                        ; $5f57: $f9
	cp a                                             ; $5f58: $bf
	ld a, c                                          ; $5f59: $79
	rst $38                                          ; $5f5a: $ff
	ld e, c                                          ; $5f5b: $59
	cp $12                                           ; $5f5c: $fe $12
	cp $22                                           ; $5f5e: $fe $22
	db $fc                                           ; $5f60: $fc
	ld b, h                                          ; $5f61: $44
	ld hl, sp+$08                                    ; $5f62: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5f64: $f0 $10
	ldh a, [$7a]                                     ; $5f66: $f0 $7a
	add b                                            ; $5f68: $80
	rst $38                                          ; $5f69: $ff
	rst SubAFromDE                                          ; $5f6a: $df
	ld c, $85                                        ; $5f6b: $0e $85
	ld [hl], c                                       ; $5f6d: $71
	ld a, a                                          ; $5f6e: $7f
	add b                                            ; $5f6f: $80
	rst $38                                          ; $5f70: $ff
	ld d, d                                          ; $5f71: $52
	ld a, a                                          ; $5f72: $7f
	and h                                            ; $5f73: $a4
	rst $38                                          ; $5f74: $ff
	xor d                                            ; $5f75: $aa
	rst $38                                          ; $5f76: $ff
	set 7, l                                         ; $5f77: $cb $fd
	ld e, e                                          ; $5f79: $5b
	ld [hl], h                                       ; $5f7a: $74
	ccf                                              ; $5f7b: $3f
	inc a                                            ; $5f7c: $3c
	scf                                              ; $5f7d: $37
	inc l                                            ; $5f7e: $2c
	ccf                                              ; $5f7f: $3f
	inc l                                            ; $5f80: $2c
	ld a, a                                          ; $5f81: $7f
	ld l, h                                          ; $5f82: $6c
	rst $38                                          ; $5f83: $ff
	sub e                                            ; $5f84: $93
	rst $38                                          ; $5f85: $ff
	adc e                                            ; $5f86: $8b
	db $fd                                           ; $5f87: $fd
	rst SubAFromDE                                          ; $5f88: $df
	ldh a, [rPCM34]                                  ; $5f89: $f0 $77
	ld c, $7f                                        ; $5f8b: $0e $7f
	ld b, $82                                        ; $5f8d: $06 $82
	sub d                                            ; $5f8f: $92
	cp $49                                           ; $5f90: $fe $49
	rst $38                                          ; $5f92: $ff
	ld c, c                                          ; $5f93: $49
	rst $38                                          ; $5f94: $ff
	ld l, c                                          ; $5f95: $69
	cp a                                             ; $5f96: $bf
	pop af                                           ; $5f97: $f1

jr_01b_5f98:
	rst $38                                          ; $5f98: $ff
	ld a, d                                          ; $5f99: $7a
	adc $fa                                          ; $5f9a: $ce $fa
	adc $fe                                          ; $5f9c: $ce $fe
	adc $f4                                          ; $5f9e: $ce $f4
	inc e                                            ; $5fa0: $1c
	db $fc                                           ; $5fa1: $fc
	inc a                                            ; $5fa2: $3c
	rst $38                                          ; $5fa3: $ff
	sbc [hl]                                         ; $5fa4: $9e
	db $fd                                           ; $5fa5: $fd
	and a                                            ; $5fa6: $a7
	ld hl, sp-$71                                    ; $5fa7: $f8 $8f
	ld a, b                                          ; $5fa9: $78
	ld a, a                                          ; $5faa: $7f
	inc b                                            ; $5fab: $04
	ld [hl], a                                       ; $5fac: $77
	adc a                                            ; $5fad: $8f
	rst SubAFromDE                                          ; $5fae: $df
	rlca                                             ; $5faf: $07
	sbc [hl]                                         ; $5fb0: $9e
	dec b                                            ; $5fb1: $05
	ld [hl], e                                       ; $5fb2: $73
	cp $7b                                           ; $5fb3: $fe $7b
	di                                               ; $5fb5: $f3
	ld a, [hl]                                       ; $5fb6: $7e
	inc h                                            ; $5fb7: $24
	rst SubAFromDE                                          ; $5fb8: $df
	ccf                                              ; $5fb9: $3f
	db $fd                                           ; $5fba: $fd
	rst SubAFromDE                                          ; $5fbb: $df
	xor $91                                          ; $5fbc: $ee $91
	ld a, a                                          ; $5fbe: $7f
	pop de                                           ; $5fbf: $d1
	ld a, a                                          ; $5fc0: $7f
	pop de                                           ; $5fc1: $d1
	ld a, [hl]                                       ; $5fc2: $7e
	ldh [c], a                                       ; $5fc3: $e2
	call c, $40dc                                    ; $5fc4: $dc $dc $40
	ret nz                                           ; $5fc7: $c0

	ldh [$a0], a                                     ; $5fc8: $e0 $a0
	ldh [rAUD4LEN], a                                ; $5fca: $e0 $20
	ld [hl], a                                       ; $5fcc: $77
	cp $9d                                           ; $5fcd: $fe $9d
	ldh a, [hDisp1_SCY]                                     ; $5fcf: $f0 $90
	ld [hl], a                                       ; $5fd1: $77
	cp $7f                                           ; $5fd2: $fe $7f
	ld d, $df                                        ; $5fd4: $16 $df
	cp $fb                                           ; $5fd6: $fe $fb
	ld b, e                                          ; $5fd8: $43
	add b                                            ; $5fd9: $80
	sub h                                            ; $5fda: $94
	jr nc, jr_01b_601c                               ; $5fdb: $30 $3f

	ld l, $37                                        ; $5fdd: $2e $37
	inc l                                            ; $5fdf: $2c
	rra                                              ; $5fe0: $1f
	inc e                                            ; $5fe1: $1c
	rra                                              ; $5fe2: $1f
	inc de                                           ; $5fe3: $13
	rra                                              ; $5fe4: $1f
	jr jr_01b_601a                                   ; $5fe5: $18 $33

	add b                                            ; $5fe7: $80
	sbc e                                            ; $5fe8: $9b
	ccf                                              ; $5fe9: $3f
	ld a, [$7aee]                                    ; $5fea: $fa $ee $7a
	ld l, e                                          ; $5fed: $6b
	add b                                            ; $5fee: $80
	dec hl                                           ; $5fef: $2b
	ret nz                                           ; $5ff0: $c0

	ld a, [hl]                                       ; $5ff1: $7e
	rla                                              ; $5ff2: $17
	ld l, a                                          ; $5ff3: $6f
	ret nz                                           ; $5ff4: $c0

	sbc [hl]                                         ; $5ff5: $9e
	dec de                                           ; $5ff6: $1b
	dec bc                                           ; $5ff7: $0b
	jr nz, jr_01b_5f98                               ; $5ff8: $20 $9e

	adc b                                            ; $5ffa: $88
	rlca                                             ; $5ffb: $07
	jr nz, @+$01                                     ; $5ffc: $20 $ff

	rst SubAFromDE                                          ; $5ffe: $df
	inc bc                                           ; $5fff: $03
	sbc d                                            ; $6000: $9a
	inc c                                            ; $6001: $0c
	rrca                                             ; $6002: $0f
	db $10                                           ; $6003: $10
	rra                                              ; $6004: $1f
	ld hl, $c679                                     ; $6005: $21 $79 $c6
	sbc [hl]                                         ; $6008: $9e
	ld b, c                                          ; $6009: $41
	ld a, e                                          ; $600a: $7b
	cp d                                             ; $600b: $ba
	sbc [hl]                                         ; $600c: $9e
	add c                                            ; $600d: $81
	ld a, e                                          ; $600e: $7b
	cp $9b                                           ; $600f: $fe $9b
	ld b, e                                          ; $6011: $43
	ld a, [hl]                                       ; $6012: $7e
	ld b, e                                          ; $6013: $43
	ld a, [hl]                                       ; $6014: $7e
	ld [hl], a                                       ; $6015: $77
	ldh a, [hDisp1_OBP1]                                     ; $6016: $f0 $94
	sbc h                                            ; $6018: $9c
	rst $38                                          ; $6019: $ff

jr_01b_601a:
	db $e3                                           ; $601a: $e3
	db $e3                                           ; $601b: $e3

jr_01b_601c:
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	add b                                            ; $601e: $80
	add b                                            ; $601f: $80
	ld h, b                                          ; $6020: $60
	ldh [rAUD1SWEEP], a                              ; $6021: $e0 $10
	ld [hl], e                                       ; $6023: $73
	cp [hl]                                          ; $6024: $be
	ld a, a                                          ; $6025: $7f
	cp $7d                                           ; $6026: $fe $7d
	ld b, $77                                        ; $6028: $06 $77
	cp $9c                                           ; $602a: $fe $9c
	add h                                            ; $602c: $84

jr_01b_602d:
	db $fc                                           ; $602d: $fc
	add h                                            ; $602e: $84
	ld a, c                                          ; $602f: $79
	call c, $ec7f                                    ; $6030: $dc $7f $ec
	ld a, a                                          ; $6033: $7f
	add sp, -$21                                     ; $6034: $e8 $df
	add b                                            ; $6036: $80
	ld l, a                                          ; $6037: $6f
	jp nz, Jump_01b_717f                             ; $6038: $c2 $7f $71

	ld a, a                                          ; $603b: $7f
	call nz, $cc7f                                   ; $603c: $c4 $7f $cc
	sub h                                            ; $603f: $94
	add e                                            ; $6040: $83
	cp $87                                           ; $6041: $fe $87
	db $fd                                           ; $6043: $fd
	adc a                                            ; $6044: $8f
	ld a, [$fd87]                                    ; $6045: $fa $87 $fd
	ld b, e                                          ; $6048: $43
	ld a, [hl]                                       ; $6049: $7e
	ld b, c                                          ; $604a: $41
	ld a, c                                          ; $604b: $79
	halt                                             ; $604c: $76
	ld a, l                                          ; $604d: $7d
	adc $7e                                          ; $604e: $ce $7e
	ret nc                                           ; $6050: $d0

	rst SubAFromDE                                          ; $6051: $df
	ld bc, $aa75                                     ; $6052: $01 $75 $aa
	ld [hl], a                                       ; $6055: $77
	call nz, $d27c                                   ; $6056: $c4 $7c $d2
	sbc b                                            ; $6059: $98
	ldh [c], a                                       ; $605a: $e2
	cp [hl]                                          ; $605b: $be
	ldh [c], a                                       ; $605c: $e2
	cp [hl]                                          ; $605d: $be
	pop hl                                           ; $605e: $e1
	ccf                                              ; $605f: $3f
	pop hl                                           ; $6060: $e1
	ld a, d                                          ; $6061: $7a
	ld d, a                                          ; $6062: $57
	sbc e                                            ; $6063: $9b
	ldh [c], a                                       ; $6064: $e2
	ld a, $c2                                        ; $6065: $3e $c2
	cp $77                                           ; $6067: $fe $77
	or h                                             ; $6069: $b4
	sbc e                                            ; $606a: $9b
	add hl, de                                       ; $606b: $19
	rst $38                                          ; $606c: $ff
	rst SubAFromBC                                          ; $606d: $e7
	rst SubAFromBC                                          ; $606e: $e7
	dec [hl]                                         ; $606f: $35
	and b                                            ; $6070: $a0
	ld h, a                                          ; $6071: $67
	cp $7f                                           ; $6072: $fe $7f
	ld [hl], d                                       ; $6074: $72
	rst SubAFromDE                                          ; $6075: $df
	rst $38                                          ; $6076: $ff
	ei                                               ; $6077: $fb
	rst SubAFromDE                                          ; $6078: $df
	rst $38                                          ; $6079: $ff
	sbc [hl]                                         ; $607a: $9e
	ld b, c                                          ; $607b: $41
	ld [hl], e                                       ; $607c: $73
	cp $95                                           ; $607d: $fe $95
	ld c, c                                          ; $607f: $49
	rst FarCall                                          ; $6080: $f7
	ld e, c                                          ; $6081: $59
	rst SubAFromBC                                          ; $6082: $e7
	ld c, c                                          ; $6083: $49
	rst FarCall                                          ; $6084: $f7
	ld c, c                                          ; $6085: $49
	rst FarCall                                          ; $6086: $f7
	ld e, l                                          ; $6087: $5d
	db $e3                                           ; $6088: $e3
	ld l, a                                          ; $6089: $6f
	ldh a, [$6f]                                     ; $608a: $f0 $6f
	ldh [$df], a                                     ; $608c: $e0 $df
	jr jr_01b_602d                                   ; $608e: $18 $9d

	ld a, $36                                        ; $6090: $3e $36
	ld a, b                                          ; $6092: $78
	sbc [hl]                                         ; $6093: $9e
	sbc d                                            ; $6094: $9a
	add c                                            ; $6095: $81
	cp $82                                           ; $6096: $fe $82
	ld a, a                                          ; $6098: $7f
	ld h, l                                          ; $6099: $65
	ld a, e                                          ; $609a: $7b
	dec sp                                           ; $609b: $3b
	sbc c                                            ; $609c: $99
	ld b, c                                          ; $609d: $41
	ld a, $32                                        ; $609e: $3e $32
	ld c, $0a                                        ; $60a0: $0e $0a
	rlca                                             ; $60a2: $07
	ld a, b                                          ; $60a3: $78
	xor $fd                                          ; $60a4: $ee $fd
	sub l                                            ; $60a6: $95
	ld e, $f9                                        ; $60a7: $1e $f9
	rst $38                                          ; $60a9: $ff
	rst $38                                          ; $60aa: $ff
	rlca                                             ; $60ab: $07
	ld a, c                                          ; $60ac: $79
	ld de, $070e                                     ; $60ad: $11 $0e $07
	inc b                                            ; $60b0: $04
	db $eb                                           ; $60b1: $eb
	sub e                                            ; $60b2: $93
	ld a, h                                          ; $60b3: $7c
	add e                                            ; $60b4: $83
	rrca                                             ; $60b5: $0f
	di                                               ; $60b6: $f3
	rst SubAFromBC                                          ; $60b7: $e7
	jr @+$01                                         ; $60b8: $18 $ff

	jr nc, jr_01b_60db                               ; $60ba: $30 $1f

	rst SubAFromBC                                          ; $60bc: $e7
	ld a, h                                          ; $60bd: $7c
	ld a, a                                          ; $60be: $7f
	db $ed                                           ; $60bf: $ed
	sub e                                            ; $60c0: $93
	rrca                                             ; $60c1: $0f
	ld c, $1d                                        ; $60c2: $0e $1d
	rla                                              ; $60c4: $17
	dec sp                                           ; $60c5: $3b
	ld l, $3b                                        ; $60c6: $2e $3b
	ld l, $1d                                        ; $60c8: $2e $1d
	rla                                              ; $60ca: $17
	inc c                                            ; $60cb: $0c
	rrca                                             ; $60cc: $0f
	ld [hl], $00                                     ; $60cd: $36 $00
	rst SubAFromDE                                          ; $60cf: $df
	ldh [hDisp1_WY], a                                     ; $60d0: $e0 $95
	ldh a, [$d0]                                     ; $60d2: $f0 $d0
	ldh a, [$50]                                     ; $60d4: $f0 $50
	ldh a, [$30]                                     ; $60d6: $f0 $30
	ldh a, [hDisp1_SCY]                                     ; $60d8: $f0 $90
	ld h, b                                          ; $60da: $60

jr_01b_60db:
	ldh [$36], a                                     ; $60db: $e0 $36
	nop                                              ; $60dd: $00
	ld [hl], a                                       ; $60de: $77
	ret nz                                           ; $60df: $c0

	sbc d                                            ; $60e0: $9a
	jr c, jr_01b_6112                                ; $60e1: $38 $2f

	jr c, jr_01b_6114                                ; $60e3: $38 $2f

	inc e                                            ; $60e5: $1c
	dec hl                                           ; $60e6: $2b
	ret nz                                           ; $60e7: $c0

	rst SubAFromDE                                          ; $60e8: $df
	ldh a, [hDisp1_WY]                                     ; $60e9: $f0 $95
	ld [hl], b                                       ; $60eb: $70
	ret nc                                           ; $60ec: $d0

	ld a, b                                          ; $60ed: $78
	ret z                                            ; $60ee: $c8

	ld a, h                                          ; $60ef: $7c
	db $e4                                           ; $60f0: $e4
	ld hl, sp-$38                                    ; $60f1: $f8 $c8
	ld [hl], b                                       ; $60f3: $70
	ret nc                                           ; $60f4: $d0

	dec h                                            ; $60f5: $25
	ret nz                                           ; $60f6: $c0

	ldh [rLYC], a                                    ; $60f7: $e0 $45
	ld [hl], e                                       ; $60f9: $73
	inc bc                                           ; $60fa: $03
	ei                                               ; $60fb: $fb
	rst SubAFromDE                                          ; $60fc: $df
	ld bc, $03df                                     ; $60fd: $01 $df $03
	rst SubAFromDE                                          ; $6100: $df
	ld bc, $029e                                     ; $6101: $01 $9e $02
	sbc $03                                          ; $6104: $de $03
	ld l, a                                          ; $6106: $6f
	db $fc                                           ; $6107: $fc
	ld a, a                                          ; $6108: $7f
	cp $df                                           ; $6109: $fe $df
	ld bc, $dff9                                     ; $610b: $01 $f9 $df
	ld bc, $1e80                                     ; $610e: $01 $80 $1e
	rra                                              ; $6111: $1f

jr_01b_6112:
	ld h, h                                          ; $6112: $64
	ld a, a                                          ; $6113: $7f

jr_01b_6114:
	adc a                                            ; $6114: $8f
	rst $38                                          ; $6115: $ff
	cp $ff                                           ; $6116: $fe $ff
	adc c                                            ; $6118: $89
	rst $38                                          ; $6119: $ff
	dec h                                            ; $611a: $25
	rst $38                                          ; $611b: $ff
	ld c, c                                          ; $611c: $49
	rst $38                                          ; $611d: $ff
	adc d                                            ; $611e: $8a
	rst $38                                          ; $611f: $ff
	inc b                                            ; $6120: $04
	rst $38                                          ; $6121: $ff
	nop                                              ; $6122: $00
	rst $38                                          ; $6123: $ff
	ld bc, $8bff                                     ; $6124: $01 $ff $8b
	rst $38                                          ; $6127: $ff
	ld l, e                                          ; $6128: $6b
	ld a, [hl]                                       ; $6129: $7e
	ld a, a                                          ; $612a: $7f
	ld a, a                                          ; $612b: $7f
	nop                                              ; $612c: $00
	nop                                              ; $612d: $00
	ldh [hDisp0_LCDC], a                                     ; $612e: $e0 $82
	ldh [rLY], a                                     ; $6130: $e0 $44
	call nz, $f8f8                                   ; $6132: $c4 $f8 $f8
	db $10                                           ; $6135: $10
	ldh a, [$60]                                     ; $6136: $f0 $60
	ldh [rAUD4LEN], a                                ; $6138: $e0 $20
	ldh [rAUD1SWEEP], a                              ; $613a: $e0 $10
	ldh a, [hDisp1_SCY]                                     ; $613c: $f0 $90
	ldh a, [$50]                                     ; $613e: $f0 $50
	pop af                                           ; $6140: $f1
	ldh [c], a                                       ; $6141: $e2
	db $e3                                           ; $6142: $e3
	rst SubAFromBC                                          ; $6143: $e7
	dec h                                            ; $6144: $25
	xor $2a                                          ; $6145: $ee $2a
	call c, $be5c                                    ; $6147: $dc $5c $be
	and d                                            ; $614a: $a2
	ld a, $22                                        ; $614b: $3e $22
	ld b, e                                          ; $614d: $43
	ldh [hDisp0_OBP0], a                                     ; $614e: $e0 $86
	ldh a, [c]                                       ; $6150: $f2
	ld d, h                                          ; $6151: $54
	rst FarCall                                          ; $6152: $f7
	xor $ea                                          ; $6153: $ee $ea
	xor $2a                                          ; $6155: $ee $2a
	db $ec                                           ; $6157: $ec
	inc l                                            ; $6158: $2c
	call c, $be54                                    ; $6159: $dc $54 $be
	and d                                            ; $615c: $a2
	cp [hl]                                          ; $615d: $be
	and d                                            ; $615e: $a2
	rst $38                                          ; $615f: $ff
	add b                                            ; $6160: $80
	rst $38                                          ; $6161: $ff
	add c                                            ; $6162: $81
	rst $38                                          ; $6163: $ff
	add a                                            ; $6164: $87
	rst $38                                          ; $6165: $ff
	add c                                            ; $6166: $81
	ld a, a                                          ; $6167: $7f
	ld a, a                                          ; $6168: $7f
	call c, $94ff                                    ; $6169: $dc $ff $94
	add a                                            ; $616c: $87
	ld a, d                                          ; $616d: $7a
	ld a, e                                          ; $616e: $7b
	dec [hl]                                         ; $616f: $35
	ld d, a                                          ; $6170: $57
	scf                                              ; $6171: $37
	ld d, a                                          ; $6172: $57
	db $fc                                           ; $6173: $fc
	adc a                                            ; $6174: $8f
	rst $38                                          ; $6175: $ff
	rst $38                                          ; $6176: $ff
	ei                                               ; $6177: $fb
	sub a                                            ; $6178: $97
	db $fc                                           ; $6179: $fc
	call z, $88f8                                    ; $617a: $cc $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $617d: $f0 $10
	ldh [$60], a                                     ; $617f: $e0 $60
	db $dd                                           ; $6181: $dd
	ret nz                                           ; $6182: $c0

	db $dd                                           ; $6183: $dd
	ldh [$67], a                                     ; $6184: $e0 $67
	ld hl, sp-$21                                    ; $6186: $f8 $df
	db $fc                                           ; $6188: $fc
	ei                                               ; $6189: $fb
	inc bc                                           ; $618a: $03
	ret nz                                           ; $618b: $c0

	sbc [hl]                                         ; $618c: $9e
	adc h                                            ; $618d: $8c
	ld a, e                                          ; $618e: $7b
	jp nz, $209a                                     ; $618f: $c2 $9a $20

	ret nz                                           ; $6192: $c0

	ret nz                                           ; $6193: $c0

	add b                                            ; $6194: $80
	add b                                            ; $6195: $80
	cpl                                              ; $6196: $2f
	ret nz                                           ; $6197: $c0

	rst $38                                          ; $6198: $ff
	rst SubAFromDE                                          ; $6199: $df
	inc bc                                           ; $619a: $03
	add b                                            ; $619b: $80
	inc l                                            ; $619c: $2c
	cpl                                              ; $619d: $2f
	ld [hl], c                                       ; $619e: $71
	ld a, a                                          ; $619f: $7f
	ccf                                              ; $61a0: $3f
	ccf                                              ; $61a1: $3f
	ld d, c                                          ; $61a2: $51
	ld a, a                                          ; $61a3: $7f
	ld h, h                                          ; $61a4: $64
	ld a, a                                          ; $61a5: $7f
	ld l, c                                          ; $61a6: $69
	ld a, a                                          ; $61a7: $7f
	xor e                                            ; $61a8: $ab
	rst $38                                          ; $61a9: $ff
	cp a                                             ; $61aa: $bf
	db $fd                                           ; $61ab: $fd
	ld e, a                                          ; $61ac: $5f
	halt                                             ; $61ad: $76
	ld a, l                                          ; $61ae: $7d
	ld c, [hl]                                       ; $61af: $4e
	ld a, a                                          ; $61b0: $7f
	ld b, [hl]                                       ; $61b1: $46
	ccf                                              ; $61b2: $3f
	ld h, $1f                                        ; $61b3: $26 $1f
	ld de, $090f                                     ; $61b5: $11 $0f $09
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	cp h                                             ; $61ba: $bc
	add b                                            ; $61bb: $80
	cp h                                             ; $61bc: $bc
	ret z                                            ; $61bd: $c8

	ld hl, sp-$61                                    ; $61be: $f8 $9f
	rst $38                                          ; $61c0: $ff
	ldh [c], a                                       ; $61c1: $e2
	cp $4c                                           ; $61c2: $fe $4c
	db $fc                                           ; $61c4: $fc
	and h                                            ; $61c5: $a4
	db $fc                                           ; $61c6: $fc
	ld [hl+], a                                      ; $61c7: $22
	cp $32                                           ; $61c8: $fe $32
	cp $72                                           ; $61ca: $fe $72
	sbc $fc                                          ; $61cc: $de $fc
	cp h                                             ; $61ce: $bc
	call nc, $fc6c                                   ; $61cf: $d4 $6c $fc
	ld h, h                                          ; $61d2: $64
	ld hl, sp+$68                                    ; $61d3: $f8 $68
	ldh a, [hDisp1_SCY]                                     ; $61d5: $f0 $90
	ld h, b                                          ; $61d7: $60
	and b                                            ; $61d8: $a0
	rlca                                             ; $61d9: $07
	rlca                                             ; $61da: $07
	ld a, a                                          ; $61db: $7f
	call c, $0f9d                                    ; $61dc: $dc $9d $0f
	ld [$fc7b], sp                                   ; $61df: $08 $7b $fc
	sbc h                                            ; $61e2: $9c
	dec bc                                           ; $61e3: $0b
	rrca                                             ; $61e4: $0f
	ld [$f47b], sp                                   ; $61e5: $08 $7b $f4
	sub d                                            ; $61e8: $92
	rrca                                             ; $61e9: $0f
	rra                                              ; $61ea: $1f
	db $10                                           ; $61eb: $10
	rrca                                             ; $61ec: $0f
	rrca                                             ; $61ed: $0f
	ld c, $0a                                        ; $61ee: $0e $0a
	ld c, $0a                                        ; $61f0: $0e $0a
	rra                                              ; $61f2: $1f
	ld de, $1f1f                                     ; $61f3: $11 $1f $1f
	db $fd                                           ; $61f6: $fd
	rst SubAFromDE                                          ; $61f7: $df
	inc e                                            ; $61f8: $1c
	sub a                                            ; $61f9: $97
	sbc h                                            ; $61fa: $9c
	sub h                                            ; $61fb: $94
	cp [hl]                                          ; $61fc: $be
	and d                                            ; $61fd: $a2
	cp $46                                           ; $61fe: $fe $46
	ld hl, sp+$18                                    ; $6200: $f8 $18
	db $dd                                           ; $6202: $dd
	ldh [$df], a                                     ; $6203: $e0 $df
	ldh a, [$9c]                                     ; $6205: $f0 $9c
	cp b                                             ; $6207: $b8
	ld hl, sp+$58                                    ; $6208: $f8 $58
	sbc $78                                          ; $620a: $de $78
	rst SubAFromDE                                          ; $620c: $df
	inc a                                            ; $620d: $3c
	sbc e                                            ; $620e: $9b
	ld l, [hl]                                       ; $620f: $6e
	ld a, [hl]                                       ; $6210: $7e
	cp $fe                                           ; $6211: $fe $fe
	daa                                              ; $6213: $27
	add b                                            ; $6214: $80
	sub a                                            ; $6215: $97
	rst SubAFromDE                                          ; $6216: $df
	ldh a, [$7f]                                     ; $6217: $f0 $7f
	ld b, h                                          ; $6219: $44
	ld a, a                                          ; $621a: $7f
	ld c, d                                          ; $621b: $4a
	ccf                                              ; $621c: $3f
	inc [hl]                                         ; $621d: $34
	inc hl                                           ; $621e: $23
	add b                                            ; $621f: $80
	add [hl]                                         ; $6220: $86
	sbc h                                            ; $6221: $9c
	db $f4                                           ; $6222: $f4
	inc l                                            ; $6223: $2c
	db $fc                                           ; $6224: $fc
	ld d, h                                          ; $6225: $54
	ld hl, sp+$28                                    ; $6226: $f8 $28
	ldh a, [hDisp1_SCY]                                     ; $6228: $f0 $90
	ldh [$a0], a                                     ; $622a: $e0 $a0
	ret nc                                           ; $622c: $d0

	ret nc                                           ; $622d: $d0

	jr c, jr_01b_6258                                ; $622e: $38 $28

	sbc h                                            ; $6230: $9c
	sub h                                            ; $6231: $94
	sbc $5a                                          ; $6232: $de $5a
	rst $38                                          ; $6234: $ff
	dec h                                            ; $6235: $25
	cp $87                                           ; $6236: $fe $87
	ld hl, sp-$38                                    ; $6238: $f8 $c8
	scf                                              ; $623a: $37
	and b                                            ; $623b: $a0
	rst FarCall                                          ; $623c: $f7
	rst SubAFromDE                                          ; $623d: $df
	ldh a, [$9a]                                     ; $623e: $f0 $9a
	ld [hl], b                                       ; $6240: $70
	ldh a, [$d0]                                     ; $6241: $f0 $d0
	ldh a, [$50]                                     ; $6243: $f0 $50
	ld h, e                                          ; $6245: $63
	cp $7e                                           ; $6246: $fe $7e
	ld l, [hl]                                       ; $6248: $6e
	rst SubAFromDE                                          ; $6249: $df
	ldh [rPCM12], a                                  ; $624a: $e0 $76
	ld [$33df], sp                                   ; $624c: $08 $df $33
	add l                                            ; $624f: $85
	ld c, h                                          ; $6250: $4c
	ld a, a                                          ; $6251: $7f
	ld [hl-], a                                      ; $6252: $32
	ccf                                              ; $6253: $3f
	dec de                                           ; $6254: $1b
	rra                                              ; $6255: $1f
	dec h                                            ; $6256: $25
	ccf                                              ; $6257: $3f

jr_01b_6258:
	add hl, hl                                       ; $6258: $29
	ld a, $4d                                        ; $6259: $3e $4d
	ld a, [hl]                                       ; $625b: $7e
	ld c, l                                          ; $625c: $4d
	ld a, d                                          ; $625d: $7a
	ld e, a                                          ; $625e: $5f
	halt                                             ; $625f: $76
	ld e, e                                          ; $6260: $5b
	ld a, [hl]                                       ; $6261: $7e
	ccf                                              ; $6262: $3f
	ld [hl], $2f                                     ; $6263: $36 $2f
	ld a, $2f                                        ; $6265: $3e $2f
	add hl, sp                                       ; $6267: $39
	rlca                                             ; $6268: $07
	inc d                                            ; $6269: $14
	ld [hl], a                                       ; $626a: $77
	jp z, $1883                                      ; $626b: $ca $83 $18

	ld hl, sp-$7c                                    ; $626e: $f8 $84
	db $fc                                           ; $6270: $fc
	ld h, d                                          ; $6271: $62
	cp $9a                                           ; $6272: $fe $9a
	cp $4d                                           ; $6274: $fe $4d
	rst $38                                          ; $6276: $ff
	and a                                            ; $6277: $a7
	rst $38                                          ; $6278: $ff
	and d                                            ; $6279: $a2
	cp $b2                                           ; $627a: $fe $b2
	ld e, [hl]                                       ; $627c: $5e
	ld sp, hl                                        ; $627d: $f9
	ld l, a                                          ; $627e: $6f
	cp c                                             ; $627f: $b9
	ld a, a                                          ; $6280: $7f
	ld sp, hl                                        ; $6281: $f9
	ld l, a                                          ; $6282: $6f
	ld sp, hl                                        ; $6283: $f9
	ld l, a                                          ; $6284: $6f
	ld a, [$fa8e]                                    ; $6285: $fa $8e $fa
	ld e, $33                                        ; $6288: $1e $33
	ret nz                                           ; $628a: $c0

	sbc h                                            ; $628b: $9c
	ld [hl], d                                       ; $628c: $72
	ld e, a                                          ; $628d: $5f
	ld [hl], b                                       ; $628e: $70
	ld a, e                                          ; $628f: $7b
	ret nz                                           ; $6290: $c0

	sbc d                                            ; $6291: $9a
	inc a                                            ; $6292: $3c
	cpl                                              ; $6293: $2f
	add hl, sp                                       ; $6294: $39
	ld b, $15                                        ; $6295: $06 $15
	inc sp                                           ; $6297: $33
	ret nz                                           ; $6298: $c0

	sbc [hl]                                         ; $6299: $9e
	rrca                                             ; $629a: $0f
	ld a, e                                          ; $629b: $7b
	cp $7f                                           ; $629c: $fe $7f
	ret nz                                           ; $629e: $c0

	sbc d                                            ; $629f: $9a
	ccf                                              ; $62a0: $3f
	ld a, [$fa0e]                                    ; $62a1: $fa $0e $fa
	sbc [hl]                                         ; $62a4: $9e
	inc hl                                           ; $62a5: $23
	ret nz                                           ; $62a6: $c0

	sbc [hl]                                         ; $62a7: $9e
	ld a, [hl-]                                      ; $62a8: $3a
	dec de                                           ; $62a9: $1b
	add b                                            ; $62aa: $80
	sbc [hl]                                         ; $62ab: $9e
	ld c, a                                          ; $62ac: $4f
	ld a, e                                          ; $62ad: $7b
	ret nz                                           ; $62ae: $c0

	sbc [hl]                                         ; $62af: $9e
	ld e, a                                          ; $62b0: $5f
	dec de                                           ; $62b1: $1b
	add b                                            ; $62b2: $80
	ld h, e                                          ; $62b3: $63
	ld b, b                                          ; $62b4: $40
	inc hl                                           ; $62b5: $23
	add b                                            ; $62b6: $80
	ld a, a                                          ; $62b7: $7f
	add d                                            ; $62b8: $82
	ld a, a                                          ; $62b9: $7f
	ld a, $9e                                        ; $62ba: $3e $9e
	ld e, a                                          ; $62bc: $5f

jr_01b_62bd:
	ld a, e                                          ; $62bd: $7b
	ret nz                                           ; $62be: $c0

	add c                                            ; $62bf: $81
	sbc [hl]                                         ; $62c0: $9e
	rlca                                             ; $62c1: $07
	rlca                                             ; $62c2: $07
	ld b, $05                                        ; $62c3: $06 $05
	dec b                                            ; $62c5: $05
	ld b, $0f                                        ; $62c6: $06 $0f
	ld a, [bc]                                       ; $62c8: $0a
	rrca                                             ; $62c9: $0f
	dec bc                                           ; $62ca: $0b
	dec e                                            ; $62cb: $1d
	rla                                              ; $62cc: $17
	dec sp                                           ; $62cd: $3b
	cpl                                              ; $62ce: $2f
	ld e, a                                          ; $62cf: $5f
	ld a, [hl]                                       ; $62d0: $7e
	rst $38                                          ; $62d1: $ff
	ld sp, hl                                        ; $62d2: $f9
	adc a                                            ; $62d3: $8f
	ei                                               ; $62d4: $fb
	adc [hl]                                         ; $62d5: $8e
	rst $38                                          ; $62d6: $ff
	sbc [hl]                                         ; $62d7: $9e
	di                                               ; $62d8: $f3
	sbc h                                            ; $62d9: $9c
	rst $38                                          ; $62da: $ff
	and d                                            ; $62db: $a2
	rst $38                                          ; $62dc: $ff

jr_01b_62dd:
	add $de                                          ; $62dd: $c6 $de
	rst $38                                          ; $62df: $ff
	rst SubAFromDE                                          ; $62e0: $df
	db $fc                                           ; $62e1: $fc
	add h                                            ; $62e2: $84
	jr z, jr_01b_62bd                                ; $62e3: $28 $d8

	call nz, Call_01b_5c3c                           ; $62e5: $c4 $3c $5c
	or h                                             ; $62e8: $b4
	cp $f2                                           ; $62e9: $fe $f2
	ld e, [hl]                                       ; $62eb: $5e
	ldh a, [c]                                       ; $62ec: $f2
	xor a                                            ; $62ed: $af
	ld sp, hl                                        ; $62ee: $f9
	rst SubAFromHL                                          ; $62ef: $d7
	ld a, a                                          ; $62f0: $7f
	rst $38                                          ; $62f1: $ff
	ccf                                              ; $62f2: $3f
	ldh a, [$df]                                     ; $62f3: $f0 $df
	ldh a, [$bf]                                     ; $62f5: $f0 $bf
	ld c, b                                          ; $62f7: $48
	rst $38                                          ; $62f8: $ff
	ld b, h                                          ; $62f9: $44
	rst $38                                          ; $62fa: $ff
	inc h                                            ; $62fb: $24
	rst $38                                          ; $62fc: $ff
	jr jr_01b_62dd                                   ; $62fd: $18 $de

	rst $38                                          ; $62ff: $ff
	rst $38                                          ; $6300: $ff
	rst SubAFromDE                                          ; $6301: $df
	rlca                                             ; $6302: $07
	adc l                                            ; $6303: $8d
	jr jr_01b_6325                                   ; $6304: $18 $1f

	daa                                              ; $6306: $27
	jr c, jr_01b_6358                                ; $6307: $38 $4f

	ld [hl], a                                       ; $6309: $77
	ld c, b                                          ; $630a: $48
	ld a, a                                          ; $630b: $7f
	sub l                                            ; $630c: $95
	rst $38                                          ; $630d: $ff
	push hl                                          ; $630e: $e5
	rst $38                                          ; $630f: $ff
	xor l                                            ; $6310: $ad
	cp d                                             ; $6311: $ba
	rra                                              ; $6312: $1f
	ld d, $0b                                        ; $6313: $16 $0b
	ld d, $7b                                        ; $6315: $16 $7b
	add h                                            ; $6317: $84
	ld a, e                                          ; $6318: $7b
	add d                                            ; $6319: $82
	sbc h                                            ; $631a: $9c
	daa                                              ; $631b: $27
	inc a                                            ; $631c: $3c
	rlca                                             ; $631d: $07
	ld a, c                                          ; $631e: $79
	db $fc                                           ; $631f: $fc
	rst SubAFromDE                                          ; $6320: $df
	ld a, b                                          ; $6321: $78
	ld a, a                                          ; $6322: $7f
	add d                                            ; $6323: $82
	sbc b                                            ; $6324: $98

jr_01b_6325:
	ldh [c], a                                       ; $6325: $e2
	ld e, $f2                                        ; $6326: $1e $f2
	xor $19                                          ; $6328: $ee $19
	rst FarCall                                          ; $632a: $f7
	add hl, hl                                       ; $632b: $29
	ld a, b                                          ; $632c: $78
	ret nz                                           ; $632d: $c0

	sub b                                            ; $632e: $90
	or l                                             ; $632f: $b5
	rst SubAFromDE                                          ; $6330: $df
	ld sp, hl                                        ; $6331: $f9
	ld l, a                                          ; $6332: $6f
	cp l                                             ; $6333: $bd
	ld [hl], a                                       ; $6334: $77
	db $fd                                           ; $6335: $fd
	ld h, a                                          ; $6336: $67
	db $fd                                           ; $6337: $fd
	ld h, a                                          ; $6338: $67
	ld sp, hl                                        ; $6339: $f9
	adc a                                            ; $633a: $8f
	pop af                                           ; $633b: $f1
	rra                                              ; $633c: $1f
	ldh a, [c]                                       ; $633d: $f2
	ld a, d                                          ; $633e: $7a
	ld e, h                                          ; $633f: $5c
	rra                                              ; $6340: $1f
	ret nz                                           ; $6341: $c0

	sbc l                                            ; $6342: $9d
	ld h, $3d                                        ; $6343: $26 $3d
	dec bc                                           ; $6345: $0b
	ret nz                                           ; $6346: $c0

	sbc [hl]                                         ; $6347: $9e
	sbc a                                            ; $6348: $9f
	inc sp                                           ; $6349: $33
	ret nz                                           ; $634a: $c0

	ld a, l                                          ; $634b: $7d
	ld a, [hl]                                       ; $634c: $7e
	sbc d                                            ; $634d: $9a
	db $10                                           ; $634e: $10
	cpl                                              ; $634f: $2f
	ld a, [hl-]                                      ; $6350: $3a
	cpl                                              ; $6351: $2f
	ld [hl], $23                                     ; $6352: $36 $23
	add b                                            ; $6354: $80
	sbc d                                            ; $6355: $9a
	rrca                                             ; $6356: $0f
	db $fd                                           ; $6357: $fd

jr_01b_6358:
	rlca                                             ; $6358: $07
	db $fd                                           ; $6359: $fd
	ld d, a                                          ; $635a: $57
	ld e, a                                          ; $635b: $5f
	add b                                            ; $635c: $80
	rst SubAFromDE                                          ; $635d: $df
	ld e, $83                                        ; $635e: $1e $83
	ld hl, $473f                                     ; $6360: $21 $3f $47
	ld a, b                                          ; $6363: $78
	ld c, a                                          ; $6364: $4f
	ld [hl], a                                       ; $6365: $77
	sbc b                                            ; $6366: $98
	rst AddAOntoHL                                          ; $6367: $ef
	sub h                                            ; $6368: $94
	rst $38                                          ; $6369: $ff
	and h                                            ; $636a: $a4
	rst $38                                          ; $636b: $ff
	xor l                                            ; $636c: $ad
	ei                                               ; $636d: $fb
	sbc a                                            ; $636e: $9f
	ldh a, [$bf]                                     ; $636f: $f0 $bf
	xor $bd                                          ; $6371: $ee $bd
	and $bf                                          ; $6373: $e6 $bf
	and $9f                                          ; $6375: $e6 $9f
	pop af                                           ; $6377: $f1
	adc a                                            ; $6378: $8f
	ld hl, sp+$4f                                    ; $6379: $f8 $4f
	ld a, a                                          ; $637b: $7f
	ld [hl], h                                       ; $637c: $74
	ld b, b                                          ; $637d: $40
	ld a, [hl]                                       ; $637e: $7e
	ret nz                                           ; $637f: $c0

	sbc b                                            ; $6380: $98
	db $e4                                           ; $6381: $e4
	inc e                                            ; $6382: $1c
	ldh a, [c]                                       ; $6383: $f2
	xor $12                                          ; $6384: $ee $12
	cp $a9                                           ; $6386: $fe $a9
	ld a, d                                          ; $6388: $7a
	ret nz                                           ; $6389: $c0

	add b                                            ; $638a: $80
	or l                                             ; $638b: $b5
	ld e, l                                          ; $638c: $5d
	ld hl, sp+$08                                    ; $638d: $f8 $08
	ldh a, [$e8]                                     ; $638f: $f0 $e8
	call nc, $f47c                                   ; $6391: $d4 $7c $f4
	ld a, h                                          ; $6394: $7c
	db $f4                                           ; $6395: $f4
	sbc h                                            ; $6396: $9c
	db $e4                                           ; $6397: $e4
	inc a                                            ; $6398: $3c
	ldh [$f8], a                                     ; $6399: $e0 $f8
	ld a, [bc]                                       ; $639b: $0a
	rrca                                             ; $639c: $0f
	dec e                                            ; $639d: $1d
	ld d, $1e                                        ; $639e: $16 $1e
	dec d                                            ; $63a0: $15
	rra                                              ; $63a1: $1f
	inc de                                           ; $63a2: $13
	rrca                                             ; $63a3: $0f
	add hl, bc                                       ; $63a4: $09
	ld b, $07                                        ; $63a5: $06 $07
	dec c                                            ; $63a7: $0d
	rrca                                             ; $63a8: $0f
	rla                                              ; $63a9: $17
	rst SubAFromDE                                          ; $63aa: $df
	rra                                              ; $63ab: $1f
	sub e                                            ; $63ac: $93
	ld a, [de]                                       ; $63ad: $1a
	rrca                                             ; $63ae: $0f
	rrca                                             ; $63af: $0f
	rlca                                             ; $63b0: $07
	dec b                                            ; $63b1: $05
	rlca                                             ; $63b2: $07
	rlca                                             ; $63b3: $07
	add hl, bc                                       ; $63b4: $09
	rrca                                             ; $63b5: $0f
	ld [de], a                                       ; $63b6: $12
	rra                                              ; $63b7: $1f
	ld a, a                                          ; $63b8: $7f
	ld a, e                                          ; $63b9: $7b
	jp nz, $4e86                                     ; $63ba: $c2 $86 $4e

	cp $a6                                           ; $63bd: $fe $a6
	cp $be                                           ; $63bf: $fe $be
	ld h, [hl]                                       ; $63c1: $66
	cp $ce                                           ; $63c2: $fe $ce
	cp $1a                                           ; $63c4: $fe $1a
	db $fc                                           ; $63c6: $fc
	db $e4                                           ; $63c7: $e4
	ld e, h                                          ; $63c8: $5c
	db $f4                                           ; $63c9: $f4
	xor b                                            ; $63ca: $a8
	ld hl, sp-$04                                    ; $63cb: $f8 $fc
	ld a, h                                          ; $63cd: $7c
	db $fc                                           ; $63ce: $fc
	db $e4                                           ; $63cf: $e4
	db $fc                                           ; $63d0: $fc
	inc a                                            ; $63d1: $3c
	add sp, -$18                                     ; $63d2: $e8 $e8
	jr z, @+$7d                                      ; $63d4: $28 $7b

	cp $65                                           ; $63d6: $fe $65
	ld e, [hl]                                       ; $63d8: $5e
	db $dd                                           ; $63d9: $dd
	ld bc, $c674                                     ; $63da: $01 $74 $c6
	ld h, a                                          ; $63dd: $67
	cp $9d                                           ; $63de: $fe $9d
	ccf                                              ; $63e0: $3f
	jr nz, jr_01b_6452                               ; $63e1: $20 $6f

	cp $9b                                           ; $63e3: $fe $9b
	ld a, a                                          ; $63e5: $7f
	ld b, b                                          ; $63e6: $40
	ld a, a                                          ; $63e7: $7f
	ld b, b                                          ; $63e8: $40
	sbc $e0                                          ; $63e9: $de $e0
	sub [hl]                                         ; $63eb: $96
	and b                                            ; $63ec: $a0
	ldh [rAUD4LEN], a                                ; $63ed: $e0 $20
	ldh [$60], a                                     ; $63ef: $e0 $60
	db $fc                                           ; $63f1: $fc
	db $fc                                           ; $63f2: $fc
	cp $0a                                           ; $63f3: $fe $0a
	ld h, a                                          ; $63f5: $67
	cp $9d                                           ; $63f6: $fe $9d
	db $fc                                           ; $63f8: $fc
	inc d                                            ; $63f9: $14
	ld [hl], a                                       ; $63fa: $77
	cp $9d                                           ; $63fb: $fe $9d
	cp $16                                           ; $63fd: $fe $16
	ld a, e                                          ; $63ff: $7b
	cp $9c                                           ; $6400: $fe $9c
	ld l, $7f                                        ; $6402: $2e $7f
	ld b, b                                          ; $6404: $40
	sbc $ff                                          ; $6405: $de $ff
	sbc d                                            ; $6407: $9a
	add b                                            ; $6408: $80
	rst $38                                          ; $6409: $ff
	rst $38                                          ; $640a: $ff
	halt                                             ; $640b: $76
	ld d, [hl]                                       ; $640c: $56
	ld [hl], a                                       ; $640d: $77
	cp $9b                                           ; $640e: $fe $9b
	or $96                                           ; $6410: $f6 $96
	and $a6                                          ; $6412: $e6 $a6
	ld l, a                                          ; $6414: $6f
	cp $76                                           ; $6415: $fe $76
	ld h, [hl]                                       ; $6417: $66
	db $fd                                           ; $6418: $fd
	ld a, a                                          ; $6419: $7f
	sbc $8f                                          ; $641a: $de $8f
	rst $38                                          ; $641c: $ff
	db $fd                                           ; $641d: $fd
	rst $38                                          ; $641e: $ff
	dec c                                            ; $641f: $0d
	rst $38                                          ; $6420: $ff
	db $fd                                           ; $6421: $fd
	ld [hl], a                                       ; $6422: $77
	ld d, l                                          ; $6423: $55
	ld [hl], a                                       ; $6424: $77
	ld d, a                                          ; $6425: $57
	ld [hl], e                                       ; $6426: $73
	ld d, e                                          ; $6427: $53
	ld a, e                                          ; $6428: $7b
	ld c, e                                          ; $6429: $4b
	dec sp                                           ; $642a: $3b
	dec hl                                           ; $642b: $2b
	ld l, a                                          ; $642c: $6f
	cp $67                                           ; $642d: $fe $67
	ldh [rBGP], a                                    ; $642f: $e0 $47
	add b                                            ; $6431: $80
	sub e                                            ; $6432: $93
	dec e                                            ; $6433: $1d
	ld [de], a                                       ; $6434: $12
	jr jr_01b_644e                                   ; $6435: $18 $17

	jr c, jr_01b_6460                                ; $6437: $38 $27

	jr c, jr_01b_6462                                ; $6439: $38 $27

	inc a                                            ; $643b: $3c
	inc hl                                           ; $643c: $23
	dec a                                            ; $643d: $3d
	ld [hl+], a                                      ; $643e: $22
	scf                                              ; $643f: $37
	add b                                            ; $6440: $80
	sub a                                            ; $6441: $97
	ld a, $ca                                        ; $6442: $3e $ca
	ld a, $ca                                        ; $6444: $3e $ca
	inc a                                            ; $6446: $3c
	call nc, $947c                                   ; $6447: $d4 $7c $94
	ld h, a                                          ; $644a: $67
	add b                                            ; $644b: $80
	ld b, a                                          ; $644c: $47
	ret nz                                           ; $644d: $c0

jr_01b_644e:
	sub e                                            ; $644e: $93
	add hl, de                                       ; $644f: $19
	ld d, $15                                        ; $6450: $16 $15

jr_01b_6452:
	ld a, [de]                                       ; $6452: $1a
	jr c, jr_01b_647c                                ; $6453: $38 $27

	inc [hl]                                         ; $6455: $34
	cpl                                              ; $6456: $2f
	ld [hl-], a                                      ; $6457: $32
	cpl                                              ; $6458: $2f
	ld a, [hl-]                                      ; $6459: $3a
	daa                                              ; $645a: $27
	scf                                              ; $645b: $37
	ret nz                                           ; $645c: $c0

	sub e                                            ; $645d: $93
	sbc [hl]                                         ; $645e: $9e
	ld l, d                                          ; $645f: $6a

jr_01b_6460:
	ld e, [hl]                                       ; $6460: $5e
	xor d                                            ; $6461: $aa

jr_01b_6462:
	inc e                                            ; $6462: $1c
	db $f4                                           ; $6463: $f4
	cp h                                             ; $6464: $bc
	call nc, $d43c                                   ; $6465: $d4 $3c $d4
	ld a, [hl]                                       ; $6468: $7e
	sub [hl]                                         ; $6469: $96
	ld [hl], a                                       ; $646a: $77
	ret nz                                           ; $646b: $c0

	add c                                            ; $646c: $81
	inc bc                                           ; $646d: $03
	ei                                               ; $646e: $fb
	rst SubAFromDE                                          ; $646f: $df
	ld bc, $03df                                     ; $6470: $01 $df $03
	rst SubAFromDE                                          ; $6473: $df
	ld bc, $029e                                     ; $6474: $01 $9e $02
	sbc $03                                          ; $6477: $de $03
	ld l, a                                          ; $6479: $6f
	db $fc                                           ; $647a: $fc
	ld a, a                                          ; $647b: $7f

jr_01b_647c:
	cp $df                                           ; $647c: $fe $df
	ld bc, $dff9                                     ; $647e: $01 $f9 $df
	ld bc, $1e80                                     ; $6481: $01 $80 $1e
	rra                                              ; $6484: $1f
	ld h, h                                          ; $6485: $64
	ld a, a                                          ; $6486: $7f
	adc a                                            ; $6487: $8f
	rst $38                                          ; $6488: $ff
	cp $ff                                           ; $6489: $fe $ff
	adc c                                            ; $648b: $89
	rst $38                                          ; $648c: $ff
	dec h                                            ; $648d: $25
	rst $38                                          ; $648e: $ff
	ld c, c                                          ; $648f: $49
	rst $38                                          ; $6490: $ff
	adc d                                            ; $6491: $8a
	rst $38                                          ; $6492: $ff
	inc b                                            ; $6493: $04
	rst $38                                          ; $6494: $ff
	nop                                              ; $6495: $00
	rst $38                                          ; $6496: $ff
	ld bc, $8bff                                     ; $6497: $01 $ff $8b
	rst $38                                          ; $649a: $ff
	ld l, e                                          ; $649b: $6b
	ld a, [hl]                                       ; $649c: $7e
	ld a, a                                          ; $649d: $7f
	ld a, a                                          ; $649e: $7f
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	ldh [hDisp0_LCDC], a                                     ; $64a1: $e0 $82
	ldh [rLY], a                                     ; $64a3: $e0 $44
	call nz, $f8f8                                   ; $64a5: $c4 $f8 $f8
	db $10                                           ; $64a8: $10
	ldh a, [$60]                                     ; $64a9: $f0 $60
	ldh [rAUD4LEN], a                                ; $64ab: $e0 $20
	ldh [rAUD1SWEEP], a                              ; $64ad: $e0 $10
	ldh a, [hDisp1_SCY]                                     ; $64af: $f0 $90
	ldh a, [$50]                                     ; $64b1: $f0 $50
	pop af                                           ; $64b3: $f1
	ldh [c], a                                       ; $64b4: $e2
	db $e3                                           ; $64b5: $e3
	rst SubAFromBC                                          ; $64b6: $e7
	dec h                                            ; $64b7: $25
	xor $2a                                          ; $64b8: $ee $2a
	call c, $be5c                                    ; $64ba: $dc $5c $be
	and d                                            ; $64bd: $a2
	ld a, $22                                        ; $64be: $3e $22
	ld b, e                                          ; $64c0: $43
	ldh [$80], a                                     ; $64c1: $e0 $80
	ldh a, [c]                                       ; $64c3: $f2
	ld d, h                                          ; $64c4: $54
	rst FarCall                                          ; $64c5: $f7
	xor $ea                                          ; $64c6: $ee $ea
	xor $2a                                          ; $64c8: $ee $2a
	db $ec                                           ; $64ca: $ec
	inc l                                            ; $64cb: $2c
	call c, $be54                                    ; $64cc: $dc $54 $be
	and d                                            ; $64cf: $a2
	cp [hl]                                          ; $64d0: $be
	and d                                            ; $64d1: $a2
	add b                                            ; $64d2: $80
	rst $38                                          ; $64d3: $ff
	add b                                            ; $64d4: $80
	rst $38                                          ; $64d5: $ff
	add h                                            ; $64d6: $84
	rst $38                                          ; $64d7: $ff
	ld b, e                                          ; $64d8: $43
	ld a, a                                          ; $64d9: $7f
	ld b, c                                          ; $64da: $41
	ld a, a                                          ; $64db: $7f
	add d                                            ; $64dc: $82
	rst $38                                          ; $64dd: $ff
	adc h                                            ; $64de: $8c
	rst $38                                          ; $64df: $ff
	rst $38                                          ; $64e0: $ff
	add a                                            ; $64e1: $87
	sub l                                            ; $64e2: $95
	ld a, d                                          ; $64e3: $7a
	ld a, e                                          ; $64e4: $7b
	inc [hl]                                         ; $64e5: $34
	ld d, a                                          ; $64e6: $57
	scf                                              ; $64e7: $37
	ld d, a                                          ; $64e8: $57
	db $fc                                           ; $64e9: $fc
	adc a                                            ; $64ea: $8f
	rst $38                                          ; $64eb: $ff
	rst $38                                          ; $64ec: $ff
	ei                                               ; $64ed: $fb
	sub d                                            ; $64ee: $92
	call z, $08fc                                    ; $64ef: $cc $fc $08
	ld hl, sp+$18                                    ; $64f2: $f8 $18
	ld hl, sp+$30                                    ; $64f4: $f8 $30
	ldh a, [$c0]                                     ; $64f6: $f0 $c0
	ret nz                                           ; $64f8: $c0

	ld b, b                                          ; $64f9: $40
	ret nz                                           ; $64fa: $c0

	jr nz, @+$7d                                     ; $64fb: $20 $7b

	cp [hl]                                          ; $64fd: $be
	ld a, a                                          ; $64fe: $7f
	ld a, [$fe7f]                                    ; $64ff: $fa $7f $fe
	sbc [hl]                                         ; $6502: $9e
	and b                                            ; $6503: $a0
	ld a, e                                          ; $6504: $7b
	ld hl, sp-$21                                    ; $6505: $f8 $df
	db $fc                                           ; $6507: $fc
	ei                                               ; $6508: $fb
	ld l, a                                          ; $6509: $6f
	ret nz                                           ; $650a: $c0

	sbc h                                            ; $650b: $9c
	ld b, d                                          ; $650c: $42
	ld a, a                                          ; $650d: $7f
	ld b, e                                          ; $650e: $43
	dec hl                                           ; $650f: $2b
	ret nz                                           ; $6510: $c0

	rst SubAFromDE                                          ; $6511: $df
	db $fc                                           ; $6512: $fc
	sbc h                                            ; $6513: $9c
	adc b                                            ; $6514: $88
	ld hl, sp+$08                                    ; $6515: $f8 $08
	dec de                                           ; $6517: $1b
	ret nz                                           ; $6518: $c0

	rst $38                                          ; $6519: $ff
	rst SubAFromDE                                          ; $651a: $df
	inc bc                                           ; $651b: $03
	add b                                            ; $651c: $80
	inc l                                            ; $651d: $2c
	cpl                                              ; $651e: $2f
	ld [hl], c                                       ; $651f: $71
	ld a, a                                          ; $6520: $7f
	ccf                                              ; $6521: $3f
	ccf                                              ; $6522: $3f
	ld d, c                                          ; $6523: $51
	ld a, a                                          ; $6524: $7f
	ld h, h                                          ; $6525: $64
	ld a, a                                          ; $6526: $7f
	ld l, c                                          ; $6527: $69
	ld a, a                                          ; $6528: $7f
	xor e                                            ; $6529: $ab
	rst $38                                          ; $652a: $ff
	cp a                                             ; $652b: $bf
	db $fd                                           ; $652c: $fd
	ld e, a                                          ; $652d: $5f
	halt                                             ; $652e: $76
	ld a, l                                          ; $652f: $7d
	ld c, [hl]                                       ; $6530: $4e
	ld a, a                                          ; $6531: $7f
	ld b, [hl]                                       ; $6532: $46
	ccf                                              ; $6533: $3f
	ld h, $1f                                        ; $6534: $26 $1f
	ld de, $090f                                     ; $6536: $11 $0f $09
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	cp h                                             ; $653b: $bc
	add b                                            ; $653c: $80
	cp h                                             ; $653d: $bc
	ret z                                            ; $653e: $c8

	ld hl, sp-$61                                    ; $653f: $f8 $9f
	rst $38                                          ; $6541: $ff
	ldh [c], a                                       ; $6542: $e2
	cp $4c                                           ; $6543: $fe $4c
	db $fc                                           ; $6545: $fc
	and h                                            ; $6546: $a4
	db $fc                                           ; $6547: $fc
	ld [hl+], a                                      ; $6548: $22
	cp $32                                           ; $6549: $fe $32
	cp $72                                           ; $654b: $fe $72
	sbc $fc                                          ; $654d: $de $fc
	cp h                                             ; $654f: $bc
	call nc, $fc6c                                   ; $6550: $d4 $6c $fc
	ld h, h                                          ; $6553: $64
	ld hl, sp+$68                                    ; $6554: $f8 $68
	ldh a, [hDisp1_SCY]                                     ; $6556: $f0 $90
	ld h, b                                          ; $6558: $60
	and b                                            ; $6559: $a0
	rlca                                             ; $655a: $07
	rlca                                             ; $655b: $07
	sbc b                                            ; $655c: $98
	ld [$080f], sp                                   ; $655d: $08 $0f $08
	rrca                                             ; $6560: $0f
	ld a, [bc]                                       ; $6561: $0a
	rrca                                             ; $6562: $0f
	add hl, bc                                       ; $6563: $09
	ld a, e                                          ; $6564: $7b
	ld a, [$1093]                                    ; $6565: $fa $93 $10
	rra                                              ; $6568: $1f
	ld de, $1f1f                                     ; $6569: $11 $1f $1f
	db $10                                           ; $656c: $10
	rrca                                             ; $656d: $0f
	rrca                                             ; $656e: $0f
	ld c, $0a                                        ; $656f: $0e $0a
	ld c, $0a                                        ; $6571: $0e $0a
	ld [hl], a                                       ; $6573: $77
	push af                                          ; $6574: $f5
	db $fd                                           ; $6575: $fd
	rst SubAFromDE                                          ; $6576: $df
	ld c, $7f                                        ; $6577: $0e $7f
	ld [de], a                                       ; $6579: $12
	sub [hl]                                         ; $657a: $96
	ld e, a                                          ; $657b: $5f
	ld sp, hl                                        ; $657c: $f9
	rra                                              ; $657d: $1f
	pop af                                           ; $657e: $f1
	ld a, $fe                                        ; $657f: $3e $fe
	ret nz                                           ; $6581: $c0

	ret nz                                           ; $6582: $c0

	ldh [$7b], a                                     ; $6583: $e0 $7b
	nop                                              ; $6585: $00
	ld a, a                                          ; $6586: $7f
	ld [hl], d                                       ; $6587: $72
	sub l                                            ; $6588: $95
	ld c, b                                          ; $6589: $48
	ld a, b                                          ; $658a: $78
	ld e, b                                          ; $658b: $58
	ld a, b                                          ; $658c: $78
	inc h                                            ; $658d: $24
	inc a                                            ; $658e: $3c
	ld b, d                                          ; $658f: $42
	ld a, [hl]                                       ; $6590: $7e
	cp $fe                                           ; $6591: $fe $fe
	daa                                              ; $6593: $27
	add b                                            ; $6594: $80
	sub a                                            ; $6595: $97
	rst SubAFromDE                                          ; $6596: $df

Jump_01b_6597:
	ldh a, [$7f]                                     ; $6597: $f0 $7f
	ld b, h                                          ; $6599: $44
	ld a, a                                          ; $659a: $7f
	ld c, d                                          ; $659b: $4a
	ccf                                              ; $659c: $3f
	inc [hl]                                         ; $659d: $34
	inc hl                                           ; $659e: $23
	add b                                            ; $659f: $80
	add a                                            ; $65a0: $87
	sbc h                                            ; $65a1: $9c
	db $f4                                           ; $65a2: $f4
	inc l                                            ; $65a3: $2c
	db $fc                                           ; $65a4: $fc
	ld d, h                                          ; $65a5: $54
	ld hl, sp+$28                                    ; $65a6: $f8 $28
	ldh a, [hDisp1_SCY]                                     ; $65a8: $f0 $90
	ldh [$a0], a                                     ; $65aa: $e0 $a0
	ret nc                                           ; $65ac: $d0

	ret nc                                           ; $65ad: $d0

	jr c, jr_01b_65d8                                ; $65ae: $38 $28

	sbc h                                            ; $65b0: $9c
	sub h                                            ; $65b1: $94
	ld e, [hl]                                       ; $65b2: $5e
	jp c, $e53f                                      ; $65b3: $da $3f $e5

	ld e, $f7                                        ; $65b6: $1e $f7
	ret c                                            ; $65b8: $d8

	ld a, e                                          ; $65b9: $7b
	jr jr_01b_65fb                                   ; $65ba: $18 $3f

	and b                                            ; $65bc: $a0
	rst FarCall                                          ; $65bd: $f7
	rst SubAFromDE                                          ; $65be: $df
	ldh a, [$9a]                                     ; $65bf: $f0 $9a
	ld [hl], b                                       ; $65c1: $70
	ldh a, [$d0]                                     ; $65c2: $f0 $d0
	ldh a, [$50]                                     ; $65c4: $f0 $50
	ld h, e                                          ; $65c6: $63
	cp $7e                                           ; $65c7: $fe $7e
	ld l, [hl]                                       ; $65c9: $6e
	rst SubAFromDE                                          ; $65ca: $df
	ldh [rPCM12], a                                  ; $65cb: $e0 $76
	ld [$33df], sp                                   ; $65cd: $08 $df $33
	add l                                            ; $65d0: $85
	ld c, h                                          ; $65d1: $4c
	ld a, a                                          ; $65d2: $7f
	ld [hl-], a                                      ; $65d3: $32
	ccf                                              ; $65d4: $3f
	dec de                                           ; $65d5: $1b
	rra                                              ; $65d6: $1f
	dec h                                            ; $65d7: $25

jr_01b_65d8:
	ccf                                              ; $65d8: $3f
	add hl, hl                                       ; $65d9: $29
	ld a, $4d                                        ; $65da: $3e $4d
	ld a, [hl]                                       ; $65dc: $7e
	ld c, l                                          ; $65dd: $4d
	ld a, d                                          ; $65de: $7a
	ld e, a                                          ; $65df: $5f
	halt                                             ; $65e0: $76
	ld e, e                                          ; $65e1: $5b
	ld a, [hl]                                       ; $65e2: $7e
	ccf                                              ; $65e3: $3f
	ld [hl], $2f                                     ; $65e4: $36 $2f
	ld a, $2f                                        ; $65e6: $3e $2f
	add hl, sp                                       ; $65e8: $39
	rlca                                             ; $65e9: $07
	inc d                                            ; $65ea: $14
	ld [hl], a                                       ; $65eb: $77
	jp z, $807e                                      ; $65ec: $ca $7e $80

	add l                                            ; $65ef: $85
	add h                                            ; $65f0: $84
	db $fc                                           ; $65f1: $fc
	ld h, d                                          ; $65f2: $62
	cp $9a                                           ; $65f3: $fe $9a
	cp $4d                                           ; $65f5: $fe $4d
	rst $38                                          ; $65f7: $ff
	and a                                            ; $65f8: $a7
	rst $38                                          ; $65f9: $ff
	and d                                            ; $65fa: $a2

jr_01b_65fb:
	cp $b2                                           ; $65fb: $fe $b2
	ld e, [hl]                                       ; $65fd: $5e
	ld sp, hl                                        ; $65fe: $f9
	ld l, a                                          ; $65ff: $6f
	cp c                                             ; $6600: $b9
	ld a, a                                          ; $6601: $7f
	ld sp, hl                                        ; $6602: $f9
	ld l, a                                          ; $6603: $6f
	ld sp, hl                                        ; $6604: $f9
	ld l, a                                          ; $6605: $6f
	ld a, [$fa8e]                                    ; $6606: $fa $8e $fa
	ld e, $33                                        ; $6609: $1e $33
	ret nz                                           ; $660b: $c0

	sbc h                                            ; $660c: $9c
	ld [hl], d                                       ; $660d: $72
	ld e, a                                          ; $660e: $5f
	ld [hl], b                                       ; $660f: $70
	ld a, e                                          ; $6610: $7b
	ret nz                                           ; $6611: $c0

	sbc d                                            ; $6612: $9a
	inc a                                            ; $6613: $3c
	cpl                                              ; $6614: $2f
	add hl, sp                                       ; $6615: $39
	ld b, $15                                        ; $6616: $06 $15
	inc sp                                           ; $6618: $33
	ret nz                                           ; $6619: $c0

	sbc [hl]                                         ; $661a: $9e
	rrca                                             ; $661b: $0f
	ld a, e                                          ; $661c: $7b
	cp $7f                                           ; $661d: $fe $7f
	ret nz                                           ; $661f: $c0

	sbc d                                            ; $6620: $9a
	ccf                                              ; $6621: $3f
	ld a, [$fa0e]                                    ; $6622: $fa $0e $fa
	sbc [hl]                                         ; $6625: $9e
	inc hl                                           ; $6626: $23
	ret nz                                           ; $6627: $c0

	sbc [hl]                                         ; $6628: $9e
	ld a, [hl-]                                      ; $6629: $3a
	dec de                                           ; $662a: $1b
	add b                                            ; $662b: $80
	sbc [hl]                                         ; $662c: $9e
	ld c, a                                          ; $662d: $4f
	ld a, e                                          ; $662e: $7b
	ret nz                                           ; $662f: $c0

	ld a, [hl]                                       ; $6630: $7e
	xor e                                            ; $6631: $ab
	rra                                              ; $6632: $1f
	add b                                            ; $6633: $80
	ld h, e                                          ; $6634: $63
	ld b, b                                          ; $6635: $40
	inc hl                                           ; $6636: $23
	add b                                            ; $6637: $80
	ld a, a                                          ; $6638: $7f
	add d                                            ; $6639: $82
	ld a, a                                          ; $663a: $7f
	ld a, $9e                                        ; $663b: $3e $9e
	ld e, a                                          ; $663d: $5f
	ld a, e                                          ; $663e: $7b
	ret nz                                           ; $663f: $c0

	add c                                            ; $6640: $81
	sbc [hl]                                         ; $6641: $9e
	rlca                                             ; $6642: $07
	rlca                                             ; $6643: $07
	ld b, $07                                        ; $6644: $06 $07
	dec b                                            ; $6646: $05
	rlca                                             ; $6647: $07
	dec bc                                           ; $6648: $0b
	ld c, $13                                        ; $6649: $0e $13
	rra                                              ; $664b: $1f
	dec d                                            ; $664c: $15
	rra                                              ; $664d: $1f
	dec sp                                           ; $664e: $3b
	cpl                                              ; $664f: $2f
	ld e, a                                          ; $6650: $5f
	ld a, [hl]                                       ; $6651: $7e
	rst $38                                          ; $6652: $ff
	ld sp, hl                                        ; $6653: $f9
	adc a                                            ; $6654: $8f
	ei                                               ; $6655: $fb
	adc [hl]                                         ; $6656: $8e
	rst $38                                          ; $6657: $ff
	sbc [hl]                                         ; $6658: $9e
	di                                               ; $6659: $f3
	sbc h                                            ; $665a: $9c
	rst $38                                          ; $665b: $ff
	and d                                            ; $665c: $a2
	rst $38                                          ; $665d: $ff

jr_01b_665e:
	add $de                                          ; $665e: $c6 $de
	rst $38                                          ; $6660: $ff
	rst SubAFromDE                                          ; $6661: $df
	db $fc                                           ; $6662: $fc
	add h                                            ; $6663: $84
	jr z, jr_01b_665e                                ; $6664: $28 $f8

	call nz, Call_01b_547c                           ; $6666: $c4 $7c $54
	cp h                                             ; $6669: $bc
	ldh a, [c]                                       ; $666a: $f2
	cp $5b                                           ; $666b: $fe $5b
	rst $38                                          ; $666d: $ff
	xor a                                            ; $666e: $af
	db $fd                                           ; $666f: $fd
	rst SubAFromHL                                          ; $6670: $d7
	ld a, a                                          ; $6671: $7f
	rst $38                                          ; $6672: $ff
	ccf                                              ; $6673: $3f
	ldh a, [$df]                                     ; $6674: $f0 $df
	ldh a, [$bf]                                     ; $6676: $f0 $bf
	ld c, b                                          ; $6678: $48
	rst $38                                          ; $6679: $ff
	ld b, h                                          ; $667a: $44
	rst $38                                          ; $667b: $ff
	inc h                                            ; $667c: $24
	rst $38                                          ; $667d: $ff
	jr jr_01b_665e                                   ; $667e: $18 $de

	rst $38                                          ; $6680: $ff
	rst $38                                          ; $6681: $ff
	rst SubAFromDE                                          ; $6682: $df
	rlca                                             ; $6683: $07
	adc l                                            ; $6684: $8d
	jr jr_01b_66a6                                   ; $6685: $18 $1f

	daa                                              ; $6687: $27
	jr c, jr_01b_66d9                                ; $6688: $38 $4f

	ld [hl], a                                       ; $668a: $77
	ld c, b                                          ; $668b: $48
	ld a, a                                          ; $668c: $7f
	sub l                                            ; $668d: $95
	rst $38                                          ; $668e: $ff
	push hl                                          ; $668f: $e5
	rst $38                                          ; $6690: $ff
	xor l                                            ; $6691: $ad
	cp d                                             ; $6692: $ba
	rra                                              ; $6693: $1f
	ld d, $0b                                        ; $6694: $16 $0b
	ld d, $7b                                        ; $6696: $16 $7b
	add h                                            ; $6698: $84
	ld a, e                                          ; $6699: $7b
	add d                                            ; $669a: $82
	sbc h                                            ; $669b: $9c
	daa                                              ; $669c: $27
	inc a                                            ; $669d: $3c
	rlca                                             ; $669e: $07
	ld a, c                                          ; $669f: $79
	db $fc                                           ; $66a0: $fc
	rst SubAFromDE                                          ; $66a1: $df
	ld a, b                                          ; $66a2: $78
	ld a, a                                          ; $66a3: $7f
	add d                                            ; $66a4: $82
	sbc b                                            ; $66a5: $98

jr_01b_66a6:
	ldh [c], a                                       ; $66a6: $e2
	ld e, $f2                                        ; $66a7: $1e $f2
	xor $19                                          ; $66a9: $ee $19
	rst FarCall                                          ; $66ab: $f7
	add hl, hl                                       ; $66ac: $29
	ld a, b                                          ; $66ad: $78
	ret nz                                           ; $66ae: $c0

	sub b                                            ; $66af: $90
	or l                                             ; $66b0: $b5
	rst SubAFromDE                                          ; $66b1: $df
	ld sp, hl                                        ; $66b2: $f9
	ld l, a                                          ; $66b3: $6f
	cp l                                             ; $66b4: $bd
	ld [hl], a                                       ; $66b5: $77
	db $fd                                           ; $66b6: $fd
	ld h, a                                          ; $66b7: $67
	db $fd                                           ; $66b8: $fd
	ld h, a                                          ; $66b9: $67
	ld sp, hl                                        ; $66ba: $f9
	adc a                                            ; $66bb: $8f
	pop af                                           ; $66bc: $f1
	rra                                              ; $66bd: $1f
	ldh a, [c]                                       ; $66be: $f2
	ld a, d                                          ; $66bf: $7a
	ld e, h                                          ; $66c0: $5c
	rra                                              ; $66c1: $1f
	ret nz                                           ; $66c2: $c0

	sbc l                                            ; $66c3: $9d
	ld h, $3d                                        ; $66c4: $26 $3d
	dec bc                                           ; $66c6: $0b
	ret nz                                           ; $66c7: $c0

	sbc [hl]                                         ; $66c8: $9e
	sbc a                                            ; $66c9: $9f
	inc sp                                           ; $66ca: $33
	ret nz                                           ; $66cb: $c0

	ld a, l                                          ; $66cc: $7d
	ld a, [hl]                                       ; $66cd: $7e
	sbc d                                            ; $66ce: $9a
	db $10                                           ; $66cf: $10
	cpl                                              ; $66d0: $2f
	ld a, [hl-]                                      ; $66d1: $3a
	cpl                                              ; $66d2: $2f
	ld [hl], $23                                     ; $66d3: $36 $23
	add b                                            ; $66d5: $80
	sbc d                                            ; $66d6: $9a
	rrca                                             ; $66d7: $0f
	db $fd                                           ; $66d8: $fd

jr_01b_66d9:
	rlca                                             ; $66d9: $07
	db $fd                                           ; $66da: $fd
	ld d, a                                          ; $66db: $57
	ld e, a                                          ; $66dc: $5f
	add b                                            ; $66dd: $80
	rst SubAFromDE                                          ; $66de: $df
	ld e, $83                                        ; $66df: $1e $83
	ld hl, $473f                                     ; $66e1: $21 $3f $47
	ld a, b                                          ; $66e4: $78
	ld c, a                                          ; $66e5: $4f
	ld [hl], a                                       ; $66e6: $77
	sbc b                                            ; $66e7: $98
	rst AddAOntoHL                                          ; $66e8: $ef
	sub h                                            ; $66e9: $94
	rst $38                                          ; $66ea: $ff
	and h                                            ; $66eb: $a4
	rst $38                                          ; $66ec: $ff
	xor l                                            ; $66ed: $ad
	ei                                               ; $66ee: $fb
	sbc a                                            ; $66ef: $9f
	ldh a, [$bf]                                     ; $66f0: $f0 $bf
	xor $bd                                          ; $66f2: $ee $bd
	and $bf                                          ; $66f4: $e6 $bf
	and $9f                                          ; $66f6: $e6 $9f
	pop af                                           ; $66f8: $f1
	adc a                                            ; $66f9: $8f
	ld hl, sp+$4f                                    ; $66fa: $f8 $4f
	ld a, a                                          ; $66fc: $7f
	ld [hl], h                                       ; $66fd: $74
	ld b, b                                          ; $66fe: $40
	ld a, [hl]                                       ; $66ff: $7e
	ret nz                                           ; $6700: $c0

	sbc b                                            ; $6701: $98
	db $e4                                           ; $6702: $e4
	inc e                                            ; $6703: $1c
	ldh a, [c]                                       ; $6704: $f2
	xor $12                                          ; $6705: $ee $12
	cp $a9                                           ; $6707: $fe $a9
	ld a, d                                          ; $6709: $7a
	ret nz                                           ; $670a: $c0

	add b                                            ; $670b: $80
	or l                                             ; $670c: $b5
	ld e, l                                          ; $670d: $5d
	ld hl, sp+$08                                    ; $670e: $f8 $08
	ldh a, [$e8]                                     ; $6710: $f0 $e8
	call nc, $f47c                                   ; $6712: $d4 $7c $f4
	ld a, h                                          ; $6715: $7c
	db $f4                                           ; $6716: $f4
	sbc h                                            ; $6717: $9c
	db $e4                                           ; $6718: $e4
	inc a                                            ; $6719: $3c
	ldh [$f8], a                                     ; $671a: $e0 $f8
	ld c, $0f                                        ; $671c: $0e $0f
	dec c                                            ; $671e: $0d
	ld c, $16                                        ; $671f: $0e $16
	dec e                                            ; $6721: $1d
	rla                                              ; $6722: $17
	rra                                              ; $6723: $1f
	rrca                                             ; $6724: $0f
	dec c                                            ; $6725: $0d
	ld b, $07                                        ; $6726: $06 $07
	dec c                                            ; $6728: $0d
	rrca                                             ; $6729: $0f
	rla                                              ; $672a: $17
	rst SubAFromDE                                          ; $672b: $df
	rra                                              ; $672c: $1f
	sbc h                                            ; $672d: $9c
	ld a, [de]                                       ; $672e: $1a
	rrca                                             ; $672f: $0f
	rrca                                             ; $6730: $0f
	ld a, d                                          ; $6731: $7a
	xor a                                            ; $6732: $af
	sbc c                                            ; $6733: $99
	rlca                                             ; $6734: $07
	add hl, bc                                       ; $6735: $09
	rrca                                             ; $6736: $0f
	ld [de], a                                       ; $6737: $12
	rra                                              ; $6738: $1f
	ld a, a                                          ; $6739: $7f
	ld a, e                                          ; $673a: $7b
	jp nz, Jump_01b_6e86                             ; $673b: $c2 $86 $6e

	cp $a6                                           ; $673e: $fe $a6
	cp $c6                                           ; $6740: $fe $c6
	ld a, [hl]                                       ; $6742: $7e
	adc $fa                                          ; $6743: $ce $fa
	cp $32                                           ; $6745: $fe $32
	db $fc                                           ; $6747: $fc
	db $e4                                           ; $6748: $e4
	ld e, h                                          ; $6749: $5c
	db $f4                                           ; $674a: $f4
	xor b                                            ; $674b: $a8
	ld hl, sp-$04                                    ; $674c: $f8 $fc
	ld a, h                                          ; $674e: $7c
	db $fc                                           ; $674f: $fc
	db $e4                                           ; $6750: $e4
	db $fc                                           ; $6751: $fc
	inc a                                            ; $6752: $3c
	add sp, -$18                                     ; $6753: $e8 $e8
	jr z, @+$7d                                      ; $6755: $28 $7b

	cp $65                                           ; $6757: $fe $65
	ld e, [hl]                                       ; $6759: $5e
	db $dd                                           ; $675a: $dd
	ld bc, $0fdf                                     ; $675b: $01 $df $0f
	ld a, a                                          ; $675e: $7f
	ld c, b                                          ; $675f: $48
	ld h, a                                          ; $6760: $67
	cp $9d                                           ; $6761: $fe $9d
	ccf                                              ; $6763: $3f
	jr nz, @+$71                                     ; $6764: $20 $6f

	cp $9b                                           ; $6766: $fe $9b
	ld a, a                                          ; $6768: $7f
	ld b, b                                          ; $6769: $40
	ld a, a                                          ; $676a: $7f
	ld b, b                                          ; $676b: $40
	sbc $e0                                          ; $676c: $de $e0
	ld [hl], h                                       ; $676e: $74
	ld d, c                                          ; $676f: $51
	sbc d                                            ; $6770: $9a
	ld h, b                                          ; $6771: $60
	db $fc                                           ; $6772: $fc
	db $fc                                           ; $6773: $fc
	cp $0a                                           ; $6774: $fe $0a
	ld h, a                                          ; $6776: $67
	cp $9d                                           ; $6777: $fe $9d
	db $fc                                           ; $6779: $fc
	inc d                                            ; $677a: $14
	ld [hl], a                                       ; $677b: $77
	cp $9d                                           ; $677c: $fe $9d
	cp $16                                           ; $677e: $fe $16
	ld a, e                                          ; $6780: $7b
	cp $9c                                           ; $6781: $fe $9c
	ld l, $7f                                        ; $6783: $2e $7f
	ld b, b                                          ; $6785: $40
	sbc $ff                                          ; $6786: $de $ff
	sbc d                                            ; $6788: $9a
	add b                                            ; $6789: $80
	rst $38                                          ; $678a: $ff
	rst $38                                          ; $678b: $ff
	halt                                             ; $678c: $76
	ld d, [hl]                                       ; $678d: $56
	ld [hl], a                                       ; $678e: $77
	cp $9b                                           ; $678f: $fe $9b
	or $96                                           ; $6791: $f6 $96
	and $a6                                          ; $6793: $e6 $a6
	ld l, a                                          ; $6795: $6f
	cp $76                                           ; $6796: $fe $76
	ld h, [hl]                                       ; $6798: $66
	db $fd                                           ; $6799: $fd
	ld a, a                                          ; $679a: $7f
	sbc $8f                                          ; $679b: $de $8f
	rst $38                                          ; $679d: $ff
	db $fd                                           ; $679e: $fd
	rst $38                                          ; $679f: $ff
	dec c                                            ; $67a0: $0d
	rst $38                                          ; $67a1: $ff
	db $fd                                           ; $67a2: $fd
	ld [hl], a                                       ; $67a3: $77
	ld d, l                                          ; $67a4: $55
	ld [hl], a                                       ; $67a5: $77
	ld d, a                                          ; $67a6: $57
	ld [hl], e                                       ; $67a7: $73
	ld d, e                                          ; $67a8: $53
	ld a, e                                          ; $67a9: $7b
	ld c, e                                          ; $67aa: $4b
	dec sp                                           ; $67ab: $3b
	dec hl                                           ; $67ac: $2b
	ld l, a                                          ; $67ad: $6f
	cp $67                                           ; $67ae: $fe $67
	ldh [rBGP], a                                    ; $67b0: $e0 $47
	add b                                            ; $67b2: $80
	sub e                                            ; $67b3: $93
	dec e                                            ; $67b4: $1d
	ld [de], a                                       ; $67b5: $12
	jr jr_01b_67cf                                   ; $67b6: $18 $17

	jr c, jr_01b_67e1                                ; $67b8: $38 $27

	jr c, jr_01b_67e3                                ; $67ba: $38 $27

	inc a                                            ; $67bc: $3c
	inc hl                                           ; $67bd: $23
	dec a                                            ; $67be: $3d
	ld [hl+], a                                      ; $67bf: $22
	scf                                              ; $67c0: $37
	add b                                            ; $67c1: $80
	sub a                                            ; $67c2: $97
	ld a, $ca                                        ; $67c3: $3e $ca
	ld a, $ca                                        ; $67c5: $3e $ca
	inc a                                            ; $67c7: $3c
	call nc, $947c                                   ; $67c8: $d4 $7c $94
	ld h, a                                          ; $67cb: $67
	add b                                            ; $67cc: $80
	ld b, a                                          ; $67cd: $47
	ret nz                                           ; $67ce: $c0

jr_01b_67cf:
	sub e                                            ; $67cf: $93
	add hl, de                                       ; $67d0: $19
	ld d, $15                                        ; $67d1: $16 $15
	ld a, [de]                                       ; $67d3: $1a
	jr c, jr_01b_67fd                                ; $67d4: $38 $27

	inc [hl]                                         ; $67d6: $34
	cpl                                              ; $67d7: $2f
	ld [hl-], a                                      ; $67d8: $32
	cpl                                              ; $67d9: $2f
	ld a, [hl-]                                      ; $67da: $3a
	daa                                              ; $67db: $27
	scf                                              ; $67dc: $37
	ret nz                                           ; $67dd: $c0

	sub e                                            ; $67de: $93
	sbc [hl]                                         ; $67df: $9e
	ld l, d                                          ; $67e0: $6a

jr_01b_67e1:
	ld e, [hl]                                       ; $67e1: $5e
	xor d                                            ; $67e2: $aa

jr_01b_67e3:
	inc e                                            ; $67e3: $1c
	db $f4                                           ; $67e4: $f4
	cp h                                             ; $67e5: $bc
	call nc, $d43c                                   ; $67e6: $d4 $3c $d4
	ld a, [hl]                                       ; $67e9: $7e
	sub [hl]                                         ; $67ea: $96
	ld [hl], a                                       ; $67eb: $77
	ret nz                                           ; $67ec: $c0

	dec a                                            ; $67ed: $3d
	inc bc                                           ; $67ee: $03
	db $eb                                           ; $67ef: $eb
	rst SubAFromDE                                          ; $67f0: $df
	ld [$1cdf], sp                                   ; $67f1: $08 $df $1c
	add b                                            ; $67f4: $80
	ld a, [hl+]                                      ; $67f5: $2a
	ld a, $23                                        ; $67f6: $3e $23
	ccf                                              ; $67f8: $3f
	inc hl                                           ; $67f9: $23
	ld a, $00                                        ; $67fa: $3e $00
	nop                                              ; $67fc: $00

jr_01b_67fd:
	ld a, e                                          ; $67fd: $7b
	ld a, e                                          ; $67fe: $7b
	ld h, $3f                                        ; $67ff: $26 $3f
	di                                               ; $6801: $f3
	rst $38                                          ; $6802: $ff
	adc a                                            ; $6803: $8f
	rst $38                                          ; $6804: $ff
	ld h, l                                          ; $6805: $65
	ld a, a                                          ; $6806: $7f
	ld c, d                                          ; $6807: $4a
	ld a, a                                          ; $6808: $7f
	adc c                                            ; $6809: $89
	rst $38                                          ; $680a: $ff
	sbc c                                            ; $680b: $99
	rst $38                                          ; $680c: $ff
	sbc l                                            ; $680d: $9d
	rst FarCall                                          ; $680e: $f7
	ld a, a                                          ; $680f: $7f
	ld a, [hl]                                       ; $6810: $7e
	ld e, e                                          ; $6811: $5b
	ld l, h                                          ; $6812: $6c
	ld a, a                                          ; $6813: $7f
	add b                                            ; $6814: $80
	ld c, h                                          ; $6815: $4c

jr_01b_6816:
	ccf                                              ; $6816: $3f
	inc l                                            ; $6817: $2c
	rra                                              ; $6818: $1f
	inc de                                           ; $6819: $13
	rrca                                             ; $681a: $0f
	ld [rRAMG], sp                                   ; $681b: $08 $00 $00
	add b                                            ; $681e: $80
	add b                                            ; $681f: $80
	ld l, b                                          ; $6820: $68
	add sp, $1c                                      ; $6821: $e8 $1c
	db $fc                                           ; $6823: $fc
	ld hl, sp-$08                                    ; $6824: $f8 $f8
	inc d                                            ; $6826: $14
	db $fc                                           ; $6827: $fc
	ld c, h                                          ; $6828: $4c
	db $fc                                           ; $6829: $fc
	inc l                                            ; $682a: $2c
	db $fc                                           ; $682b: $fc
	xor d                                            ; $682c: $aa
	cp $fa                                           ; $682d: $fe $fa
	ld a, [hl]                                       ; $682f: $7e
	db $f4                                           ; $6830: $f4
	db $fc                                           ; $6831: $fc
	cp h                                             ; $6832: $bc
	call nz, $fc91                                   ; $6833: $c4 $91 $fc
	call nz, $d8f8                                   ; $6836: $c4 $f8 $d8
	ldh a, [rAUD1SWEEP]                              ; $6839: $f0 $10
	ldh [rAUD4LEN], a                                ; $683b: $e0 $20
	rra                                              ; $683d: $1f
	inc e                                            ; $683e: $1c
	rra                                              ; $683f: $1f
	db $10                                           ; $6840: $10
	rrca                                             ; $6841: $0f
	rrca                                             ; $6842: $0f
	db $eb                                           ; $6843: $eb
	rst SubAFromDE                                          ; $6844: $df
	rlca                                             ; $6845: $07
	rst $38                                          ; $6846: $ff
	add b                                            ; $6847: $80
	rst $38                                          ; $6848: $ff
	rst SubAFromBC                                          ; $6849: $e7
	rst $38                                          ; $684a: $ff
	adc e                                            ; $684b: $8b
	cp $8f                                           ; $684c: $fe $8f
	rst $38                                          ; $684e: $ff
	ei                                               ; $684f: $fb
	ld c, $0f                                        ; $6850: $0e $0f
	rrca                                             ; $6852: $0f
	dec bc                                           ; $6853: $0b
	ld c, $0b                                        ; $6854: $0e $0b
	ld e, $13                                        ; $6856: $1e $13
	rra                                              ; $6858: $1f
	inc de                                           ; $6859: $13
	dec e                                            ; $685a: $1d
	rla                                              ; $685b: $17
	dec c                                            ; $685c: $0d
	rrca                                             ; $685d: $0f
	rlca                                             ; $685e: $07
	rlca                                             ; $685f: $07
	add hl, bc                                       ; $6860: $09
	rrca                                             ; $6861: $0f
	ld de, $ff1f                                     ; $6862: $11 $1f $ff
	rst $38                                          ; $6865: $ff
	nop                                              ; $6866: $00
	sub [hl]                                         ; $6867: $96
	nop                                              ; $6868: $00
	ldh a, [$d0]                                     ; $6869: $f0 $d0
	ld hl, sp-$58                                    ; $686b: $f8 $a8
	db $fc                                           ; $686d: $fc
	call nz, $a4fc                                   ; $686e: $c4 $fc $a4
	ld a, e                                          ; $6871: $7b
	or b                                             ; $6872: $b0
	sbc h                                            ; $6873: $9c
	cp b                                             ; $6874: $b8
	ldh a, [hDisp1_SCY]                                     ; $6875: $f0 $90
	ld l, e                                          ; $6877: $6b
	cp $98                                           ; $6878: $fe $98
	ldh a, [rAUD4LEN]                                ; $687a: $f0 $20
	ldh [$d0], a                                     ; $687c: $e0 $d0
	ldh a, [$08]                                     ; $687e: $f0 $08
	ld hl, sp+$77                                    ; $6880: $f8 $77
	ldh [$f3], a                                     ; $6882: $e0 $f3
	rst SubAFromDE                                          ; $6884: $df
	jr c, jr_01b_6816                                ; $6885: $38 $8f

	ld b, h                                          ; $6887: $44
	ld a, h                                          ; $6888: $7c
	db $e4                                           ; $6889: $e4
	db $fc                                           ; $688a: $fc
	ld b, h                                          ; $688b: $44
	ld a, h                                          ; $688c: $7c
	jr c, jr_01b_68c7                                ; $688d: $38 $38

	nop                                              ; $688f: $00
	nop                                              ; $6890: $00
	ld b, $06                                        ; $6891: $06 $06
	rlca                                             ; $6893: $07
	dec b                                            ; $6894: $05
	rra                                              ; $6895: $1f
	add hl, de                                       ; $6896: $19
	rrca                                             ; $6897: $0f
	ld b, b                                          ; $6898: $40
	sbc c                                            ; $6899: $99
	rst $38                                          ; $689a: $ff
	ld sp, hl                                        ; $689b: $f9
	ccf                                              ; $689c: $3f
	ld hl, $1f1f                                     ; $689d: $21 $1f $1f
	jp hl                                            ; $68a0: $e9


	ld [hl], e                                       ; $68a1: $73
	ld h, b                                          ; $68a2: $60
	sbc d                                            ; $68a3: $9a
	rlca                                             ; $68a4: $07
	rst $38                                          ; $68a5: $ff
	dec bc                                           ; $68a6: $0b
	cp $ff                                           ; $68a7: $fe $ff
	ld a, e                                          ; $68a9: $7b
	ld h, h                                          ; $68aa: $64
	ld a, e                                          ; $68ab: $7b
	ld h, b                                          ; $68ac: $60
	ld a, a                                          ; $68ad: $7f
	ld h, d                                          ; $68ae: $62
	ld a, e                                          ; $68af: $7b
	ld h, b                                          ; $68b0: $60
	ld a, e                                          ; $68b1: $7b
	ld h, d                                          ; $68b2: $62
	sbc [hl]                                         ; $68b3: $9e
	dec b                                            ; $68b4: $05
	sbc $07                                          ; $68b5: $de $07
	ld h, a                                          ; $68b7: $67
	ld h, b                                          ; $68b8: $60
	rst SubAFromBC                                          ; $68b9: $e7
	rst SubAFromDE                                          ; $68ba: $df
	inc bc                                           ; $68bb: $03
	sbc l                                            ; $68bc: $9d
	rlca                                             ; $68bd: $07

jr_01b_68be:
	inc b                                            ; $68be: $04
	ld [hl], a                                       ; $68bf: $77
	cp [hl]                                          ; $68c0: $be
	dec sp                                           ; $68c1: $3b
	add b                                            ; $68c2: $80
	sub h                                            ; $68c3: $94
	ld h, [hl]                                       ; $68c4: $66
	ld e, e                                          ; $68c5: $5b
	ld a, h                                          ; $68c6: $7c

jr_01b_68c7:
	ld a, a                                          ; $68c7: $7f
	ld c, h                                          ; $68c8: $4c
	rst $38                                          ; $68c9: $ff
	xor h                                            ; $68ca: $ac
	rst $38                                          ; $68cb: $ff
	inc sp                                           ; $68cc: $33
	rst AddAOntoHL                                          ; $68cd: $ef
	ld l, b                                          ; $68ce: $68
	ld [hl-], a                                      ; $68cf: $32
	ret nz                                           ; $68d0: $c0

	sub d                                            ; $68d1: $92
	sbc h                                            ; $68d2: $9c
	ld a, h                                          ; $68d3: $7c
	call nz, $e6fe                                   ; $68d4: $c4 $fe $e6
	rst $38                                          ; $68d7: $ff
	db $dd                                           ; $68d8: $dd
	rst FarCall                                          ; $68d9: $f7
	inc d                                            ; $68da: $14
	rst AddAOntoHL                                          ; $68db: $ef
	cpl                                              ; $68dc: $2f
	rst $38                                          ; $68dd: $ff
	sbc a                                            ; $68de: $9f
	ld a, d                                          ; $68df: $7a
	ldh [$9c], a                                     ; $68e0: $e0 $9c
	rst GetHLinHL                                          ; $68e2: $cf
	ld a, a                                          ; $68e3: $7f
	ld a, e                                          ; $68e4: $7b
	ld h, e                                          ; $68e5: $63
	add b                                            ; $68e6: $80
	sbc [hl]                                         ; $68e7: $9e
	inc de                                           ; $68e8: $13
	ld c, a                                          ; $68e9: $4f
	add b                                            ; $68ea: $80
	sub l                                            ; $68eb: $95
	rst $38                                          ; $68ec: $ff
	reti                                             ; $68ed: $d9


	rst $38                                          ; $68ee: $ff
	xor c                                            ; $68ef: $a9
	rst $38                                          ; $68f0: $ff
	jp $bcfc                                         ; $68f1: $c3 $fc $bc


	ldh a, [$d0]                                     ; $68f4: $f0 $d0
	ld h, [hl]                                       ; $68f6: $66
	ldh [c], a                                       ; $68f7: $e2
	sbc [hl]                                         ; $68f8: $9e
	ld [hl], b                                       ; $68f9: $70
	ld a, d                                          ; $68fa: $7a
	ldh [c], a                                       ; $68fb: $e2
	ld e, [hl]                                       ; $68fc: $5e
	ldh [$57], a                                     ; $68fd: $e0 $57
	jr nz, jr_01b_6957                               ; $68ff: $20 $56

	ldh [c], a                                       ; $6901: $e2
	ld h, a                                          ; $6902: $67
	jr nz, jr_01b_693c                               ; $6903: $20 $37

	nop                                              ; $6905: $00
	halt                                             ; $6906: $76
	inc b                                            ; $6907: $04
	ld a, a                                          ; $6908: $7f
	cp $9d                                           ; $6909: $fe $9d
	ld [hl+], a                                      ; $690b: $22
	ld a, $0f                                        ; $690c: $3e $0f
	jr nz, jr_01b_692a                               ; $690e: $20 $1a

	and b                                            ; $6910: $a0
	sub h                                            ; $6911: $94
	ld [hl], b                                       ; $6912: $70
	ld e, a                                          ; $6913: $5f
	ld l, h                                          ; $6914: $6c
	ld a, a                                          ; $6915: $7f
	ld d, h                                          ; $6916: $54
	ccf                                              ; $6917: $3f
	jr nz, jr_01b_6939                               ; $6918: $20 $1f

	inc de                                           ; $691a: $13
	db $fd                                           ; $691b: $fd
	ei                                               ; $691c: $fb
	inc sp                                           ; $691d: $33
	jr nz, jr_01b_68be                               ; $691e: $20 $9e

	ld a, h                                          ; $6920: $7c
	halt                                             ; $6921: $76
	ld l, $9d                                        ; $6922: $2e $9d
	ld hl, sp+$18                                    ; $6924: $f8 $18
	ld [hl], l                                       ; $6926: $75
	ldh [$6f], a                                     ; $6927: $e0 $6f
	ld a, b                                          ; $6929: $78

jr_01b_692a:
	adc e                                            ; $692a: $8b
	jr jr_01b_694c                                   ; $692b: $18 $1f

	daa                                              ; $692d: $27
	jr c, jr_01b_697f                                ; $692e: $38 $4f

	ld [hl], a                                       ; $6930: $77
	ld c, b                                          ; $6931: $48
	ld a, a                                          ; $6932: $7f
	sub l                                            ; $6933: $95
	rst $38                                          ; $6934: $ff
	push hl                                          ; $6935: $e5
	rst $38                                          ; $6936: $ff
	xor l                                            ; $6937: $ad
	cp d                                             ; $6938: $ba

jr_01b_6939:
	rra                                              ; $6939: $1f
	ld d, $0b                                        ; $693a: $16 $0b

jr_01b_693c:
	ld d, $2f                                        ; $693c: $16 $2f
	ld a, $7b                                        ; $693e: $3e $7b
	cp $9c                                           ; $6940: $fe $9c
	add hl, sp                                       ; $6942: $39
	daa                                              ; $6943: $27
	inc a                                            ; $6944: $3c
	db $fd                                           ; $6945: $fd
	rst SubAFromDE                                          ; $6946: $df
	ld a, b                                          ; $6947: $78
	add b                                            ; $6948: $80
	add h                                            ; $6949: $84
	db $fc                                           ; $694a: $fc
	ldh [c], a                                       ; $694b: $e2

jr_01b_694c:
	ld e, $f2                                        ; $694c: $1e $f2
	xor $19                                          ; $694e: $ee $19
	rst FarCall                                          ; $6950: $f7
	add hl, hl                                       ; $6951: $29
	rst $38                                          ; $6952: $ff
	dec h                                            ; $6953: $25
	rst $38                                          ; $6954: $ff
	or l                                             ; $6955: $b5
	rst SubAFromDE                                          ; $6956: $df

jr_01b_6957:
	ld sp, hl                                        ; $6957: $f9
	ld l, a                                          ; $6958: $6f
	cp l                                             ; $6959: $bd
	ld [hl], a                                       ; $695a: $77
	db $fd                                           ; $695b: $fd
	ld h, a                                          ; $695c: $67
	db $fd                                           ; $695d: $fd
	ld h, a                                          ; $695e: $67
	ld sp, hl                                        ; $695f: $f9
	adc a                                            ; $6960: $8f
	pop af                                           ; $6961: $f1
	rra                                              ; $6962: $1f
	dec b                                            ; $6963: $05
	rlca                                             ; $6964: $07
	dec b                                            ; $6965: $05
	rlca                                             ; $6966: $07
	inc bc                                           ; $6967: $03
	sbc [hl]                                         ; $6968: $9e
	inc bc                                           ; $6969: $03
	db $dd                                           ; $696a: $dd
	ld bc, $dff3                                     ; $696b: $01 $f3 $df
	ld bc, $2277                                     ; $696e: $01 $77 $22
	ld a, d                                          ; $6971: $7a
	ldh [hDisp1_BGP], a                                     ; $6972: $e0 $92
	ld a, l                                          ; $6974: $7d
	rst $38                                          ; $6975: $ff
	xor d                                            ; $6976: $aa
	rst $38                                          ; $6977: $ff
	ld l, h                                          ; $6978: $6c
	rst $38                                          ; $6979: $ff
	xor d                                            ; $697a: $aa
	rst AddAOntoHL                                          ; $697b: $ef
	ld a, h                                          ; $697c: $7c
	rst $38                                          ; $697d: $ff
	ld sp, hl                                        ; $697e: $f9

jr_01b_697f:
	rst $38                                          ; $697f: $ff
	sub c                                            ; $6980: $91
	ld l, a                                          ; $6981: $6f
	cp $de                                           ; $6982: $fe $de
	cp $9d                                           ; $6984: $fe $9d
	sub d                                            ; $6986: $92
	ld hl, $ffde                                     ; $6987: $21 $de $ff
	db $fd                                           ; $698a: $fd
	sbc l                                            ; $698b: $9d
	and b                                            ; $698c: $a0
	ldh [rPCM34], a                                  ; $698d: $e0 $77
	cp $df                                           ; $698f: $fe $df
	ret nz                                           ; $6991: $c0

	db $dd                                           ; $6992: $dd
	add b                                            ; $6993: $80
	di                                               ; $6994: $f3
	rst SubAFromDE                                          ; $6995: $df
	ldh [rBGP], a                                    ; $6996: $e0 $47
	xor [hl]                                         ; $6998: $ae
	rst SubAFromDE                                          ; $6999: $df
	ld bc, $029e                                     ; $699a: $01 $9e $02
	sbc $03                                          ; $699d: $de $03
	rst SubAFromDE                                          ; $699f: $df
	ld [bc], a                                       ; $69a0: $02
	db $fd                                           ; $69a1: $fd
	rst SubAFromDE                                          ; $69a2: $df
	dec b                                            ; $69a3: $05
	sbc c                                            ; $69a4: $99
	rrca                                             ; $69a5: $0f
	ld a, [bc]                                       ; $69a6: $0a
	rrca                                             ; $69a7: $0f
	add hl, bc                                       ; $69a8: $09
	rlca                                             ; $69a9: $07
	inc b                                            ; $69aa: $04
	db $fd                                           ; $69ab: $fd
	rst SubAFromDE                                          ; $69ac: $df
	dec e                                            ; $69ad: $1d
	add l                                            ; $69ae: $85
	ld h, d                                          ; $69af: $62
	ld a, a                                          ; $69b0: $7f
	sbc a                                            ; $69b1: $9f
	ldh [$3f], a                                     ; $69b2: $e0 $3f
	rst SubAFromDE                                          ; $69b4: $df
	jr nz, @+$01                                     ; $69b5: $20 $ff

	ld d, h                                          ; $69b7: $54
	rst $38                                          ; $69b8: $ff
	sub h                                            ; $69b9: $94
	rst $38                                          ; $69ba: $ff
	or [hl]                                          ; $69bb: $b6
	db $eb                                           ; $69bc: $eb
	ld a, a                                          ; $69bd: $7f
	ld b, b                                          ; $69be: $40
	cp a                                             ; $69bf: $bf
	reti                                             ; $69c0: $d9


	cp a                                             ; $69c1: $bf
	ld sp, hl                                        ; $69c2: $f9
	cp a                                             ; $69c3: $bf
	jp hl                                            ; $69c4: $e9


	rst $38                                          ; $69c5: $ff
	ld h, [hl]                                       ; $69c6: $66
	sbc e                                            ; $69c7: $9b
	or $6f                                           ; $69c8: $f6 $6f
	or [hl]                                          ; $69ca: $b6
	add b                                            ; $69cb: $80
	db $10                                           ; $69cc: $10
	ldh a, [hDisp0_WY]                                     ; $69cd: $f0 $88
	ld a, b                                          ; $69cf: $78
	ret z                                            ; $69d0: $c8

	cp b                                             ; $69d1: $b8
	ld h, h                                          ; $69d2: $64
	call c, $fca4                                    ; $69d3: $dc $a4 $fc
	sub h                                            ; $69d6: $94
	db $fc                                           ; $69d7: $fc
	call nc, $e47c                                   ; $69d8: $d4 $7c $e4
	inc a                                            ; $69db: $3c
	db $f4                                           ; $69dc: $f4
	sbc h                                            ; $69dd: $9c
	db $f4                                           ; $69de: $f4
	call c, Call_01b_5cf4                            ; $69df: $dc $f4 $5c
	db $e4                                           ; $69e2: $e4
	inc a                                            ; $69e3: $3c
	db $e4                                           ; $69e4: $e4
	ld a, h                                          ; $69e5: $7c
	ccf                                              ; $69e6: $3f
	ccf                                              ; $69e7: $3f
	rra                                              ; $69e8: $1f
	ld [de], a                                       ; $69e9: $12
	rra                                              ; $69ea: $1f
	sbc [hl]                                         ; $69eb: $9e
	jr jr_01b_6a2a                                   ; $69ec: $18 $3c

	sbc $67                                          ; $69ee: $de $67
	ld b, b                                          ; $69f0: $40
	db $fd                                           ; $69f1: $fd
	rst SubAFromDE                                          ; $69f2: $df
	ld e, $85                                        ; $69f3: $1e $85
	ld hl, $473f                                     ; $69f5: $21 $3f $47
	ld a, b                                          ; $69f8: $78
	ld c, a                                          ; $69f9: $4f
	ld [hl], a                                       ; $69fa: $77
	sbc b                                            ; $69fb: $98
	rst AddAOntoHL                                          ; $69fc: $ef
	sub h                                            ; $69fd: $94
	rst $38                                          ; $69fe: $ff
	and h                                            ; $69ff: $a4
	rst $38                                          ; $6a00: $ff
	xor l                                            ; $6a01: $ad
	ei                                               ; $6a02: $fb
	sbc a                                            ; $6a03: $9f
	ldh a, [$bf]                                     ; $6a04: $f0 $bf
	xor $bd                                          ; $6a06: $ee $bd
	and $bf                                          ; $6a08: $e6 $bf
	and $9f                                          ; $6a0a: $e6 $9f

jr_01b_6a0c:
	pop af                                           ; $6a0c: $f1
	adc a                                            ; $6a0d: $8f
	ld hl, sp+$6f                                    ; $6a0e: $f8 $6f
	and b                                            ; $6a10: $a0
	add [hl]                                         ; $6a11: $86
	jr jr_01b_6a0c                                   ; $6a12: $18 $f8

	db $e4                                           ; $6a14: $e4
	inc e                                            ; $6a15: $1c
	ldh a, [c]                                       ; $6a16: $f2
	xor $12                                          ; $6a17: $ee $12
	cp $a9                                           ; $6a19: $fe $a9
	rst $38                                          ; $6a1b: $ff
	and a                                            ; $6a1c: $a7
	rst $38                                          ; $6a1d: $ff
	or l                                             ; $6a1e: $b5
	ld e, l                                          ; $6a1f: $5d
	ld hl, sp+$08                                    ; $6a20: $f8 $08
	ldh a, [$e8]                                     ; $6a22: $f0 $e8
	call nc, $f47c                                   ; $6a24: $d4 $7c $f4
	ld a, h                                          ; $6a27: $7c
	db $f4                                           ; $6a28: $f4
	sbc h                                            ; $6a29: $9c

jr_01b_6a2a:
	db $e4                                           ; $6a2a: $e4
	ld [hl], d                                       ; $6a2b: $72
	ret nz                                           ; $6a2c: $c0

	rst SubAFromDE                                          ; $6a2d: $df
	ld c, $8b                                        ; $6a2e: $0e $8b
	ld [hl], c                                       ; $6a30: $71
	ld a, a                                          ; $6a31: $7f
	add b                                            ; $6a32: $80
	rst $38                                          ; $6a33: $ff
	ld h, e                                          ; $6a34: $63
	ld a, a                                          ; $6a35: $7f
	ld b, h                                          ; $6a36: $44
	ld a, a                                          ; $6a37: $7f
	adc b                                            ; $6a38: $88
	rst $38                                          ; $6a39: $ff
	adc c                                            ; $6a3a: $89
	rst $38                                          ; $6a3b: $ff
	sub e                                            ; $6a3c: $93
	cp $93                                           ; $6a3d: $fe $93
	cp $57                                           ; $6a3f: $fe $57
	ld a, h                                          ; $6a41: $7c
	daa                                              ; $6a42: $27
	inc a                                            ; $6a43: $3c
	ld a, b                                          ; $6a44: $78
	ld h, [hl]                                       ; $6a45: $66
	ld a, l                                          ; $6a46: $7d
	or d                                             ; $6a47: $b2

jr_01b_6a48:
	sbc [hl]                                         ; $6a48: $9e
	jr jr_01b_6a48                                   ; $6a49: $18 $fd

	rst SubAFromDE                                          ; $6a4b: $df
	ldh a, [$7d]                                     ; $6a4c: $f0 $7d
	call nc, $0488                                   ; $6a4e: $d4 $88 $04
	db $fc                                           ; $6a51: $fc
	ld [hl+], a                                      ; $6a52: $22
	cp $d2                                           ; $6a53: $fe $d2
	cp $89                                           ; $6a55: $fe $89
	rst $38                                          ; $6a57: $ff
	push bc                                          ; $6a58: $c5
	ld a, a                                          ; $6a59: $7f
	db $e3                                           ; $6a5a: $e3
	ccf                                              ; $6a5b: $3f
	pop af                                           ; $6a5c: $f1
	rst $38                                          ; $6a5d: $ff
	ld a, a                                          ; $6a5e: $7f
	rst GetHLinHL                                          ; $6a5f: $cf
	ld a, [$face]                                    ; $6a60: $fa $ce $fa
	adc $f4                                          ; $6a63: $ce $f4
	inc e                                            ; $6a65: $1c
	db $f4                                           ; $6a66: $f4
	rlca                                             ; $6a67: $07
	ret nz                                           ; $6a68: $c0

	ld a, d                                          ; $6a69: $7a
	nop                                              ; $6a6a: $00
	dec sp                                           ; $6a6b: $3b
	ret nz                                           ; $6a6c: $c0

	sbc e                                            ; $6a6d: $9b
	ccf                                              ; $6a6e: $3f
	rst $38                                          ; $6a6f: $ff
	rst AddAOntoHL                                          ; $6a70: $ef
	ld a, d                                          ; $6a71: $7a
	ld l, e                                          ; $6a72: $6b
	ret nz                                           ; $6a73: $c0

	ld a, h                                          ; $6a74: $7c
	ret nc                                           ; $6a75: $d0

	sub a                                            ; $6a76: $97
	rra                                              ; $6a77: $1f
	dec bc                                           ; $6a78: $0b
	ccf                                              ; $6a79: $3f
	ld h, $3f                                        ; $6a7a: $26 $3f
	ld a, [hl+]                                      ; $6a7c: $2a
	ld a, $27                                        ; $6a7d: $3e $27
	ld a, e                                          ; $6a7f: $7b
	or $9a                                           ; $6a80: $f6 $9a
	add hl, de                                       ; $6a82: $19
	rra                                              ; $6a83: $1f
	ld de, $111f                                     ; $6a84: $11 $1f $11
	ld a, d                                          ; $6a87: $7a
	jp z, $0798                                      ; $6a88: $ca $98 $07

	rrca                                             ; $6a8b: $0f
	add hl, bc                                       ; $6a8c: $09
	ld [de], a                                       ; $6a8d: $12
	rra                                              ; $6a8e: $1f
	ld a, a                                          ; $6a8f: $7f
	ld a, a                                          ; $6a90: $7f
	db $fd                                           ; $6a91: $fd
	sbc e                                            ; $6a92: $9b
	ld hl, sp-$28                                    ; $6a93: $f8 $d8
	ld hl, sp-$58                                    ; $6a95: $f8 $a8
	ld [hl], l                                       ; $6a97: $75
	ldh a, [c]                                       ; $6a98: $f2
	ld a, a                                          ; $6a99: $7f
	db $fc                                           ; $6a9a: $fc
	ld a, a                                          ; $6a9b: $7f
	ld hl, sp+$7d                                    ; $6a9c: $f8 $7d
	ldh a, [$6f]                                     ; $6a9e: $f0 $6f
	cp $de                                           ; $6aa0: $fe $de
	ldh [$9a], a                                     ; $6aa2: $e0 $9a
	jr nz, jr_01b_6ab6                               ; $6aa4: $20 $10

	ldh a, [$fe]                                     ; $6aa6: $f0 $fe
	cp $f9                                           ; $6aa8: $fe $f9
	dec sp                                           ; $6aaa: $3b
	and b                                            ; $6aab: $a0
	sbc h                                            ; $6aac: $9c
	rrca                                             ; $6aad: $0f
	ld a, [$676e]                                    ; $6aae: $fa $6e $67
	ld h, b                                          ; $6ab1: $60
	rst SubAFromDE                                          ; $6ab2: $df
	inc bc                                           ; $6ab3: $03
	sub [hl]                                         ; $6ab4: $96
	inc c                                            ; $6ab5: $0c

jr_01b_6ab6:
	rrca                                             ; $6ab6: $0f
	db $10                                           ; $6ab7: $10
	rra                                              ; $6ab8: $1f
	ld hl, $403f                                     ; $6ab9: $21 $3f $40
	ld a, a                                          ; $6abc: $7f
	ld b, c                                          ; $6abd: $41
	ld a, e                                          ; $6abe: $7b
	ld e, d                                          ; $6abf: $5a
	sbc [hl]                                         ; $6ac0: $9e
	add c                                            ; $6ac1: $81
	ld a, e                                          ; $6ac2: $7b
	cp $9b                                           ; $6ac3: $fe $9b
	ld b, e                                          ; $6ac5: $43
	ld a, [hl]                                       ; $6ac6: $7e
	ld b, e                                          ; $6ac7: $43
	ld a, [hl]                                       ; $6ac8: $7e
	ld [hl], a                                       ; $6ac9: $77
	ldh a, [$9b]                                     ; $6aca: $f0 $9b
	sbc h                                            ; $6acc: $9c
	rst $38                                          ; $6acd: $ff
	db $e3                                           ; $6ace: $e3
	db $e3                                           ; $6acf: $e3
	ld [hl], l                                       ; $6ad0: $75
	add b                                            ; $6ad1: $80
	sbc [hl]                                         ; $6ad2: $9e
	ld h, b                                          ; $6ad3: $60
	ld a, d                                          ; $6ad4: $7a
	add b                                            ; $6ad5: $80
	ld [hl], a                                       ; $6ad6: $77
	cp [hl]                                          ; $6ad7: $be
	ld a, a                                          ; $6ad8: $7f
	cp $9d                                           ; $6ad9: $fe $9d
	ld [bc], a                                       ; $6adb: $02
	cp $77                                           ; $6adc: $fe $77
	cp $7d                                           ; $6ade: $fe $7d
	or d                                             ; $6ae0: $b2
	ld a, a                                          ; $6ae1: $7f
	cp $7f                                           ; $6ae2: $fe $7f
	ldh a, [$7f]                                     ; $6ae4: $f0 $7f
	db $ec                                           ; $6ae6: $ec
	ld a, a                                          ; $6ae7: $7f
	add sp, -$21                                     ; $6ae8: $e8 $df
	add b                                            ; $6aea: $80
	ld l, a                                          ; $6aeb: $6f
	jp nz, $2082                                     ; $6aec: $c2 $82 $20

	ccf                                              ; $6aef: $3f
	ld b, c                                          ; $6af0: $41
	ld a, a                                          ; $6af1: $7f
	ld b, e                                          ; $6af2: $43
	ld a, [hl]                                       ; $6af3: $7e
	add e                                            ; $6af4: $83
	cp $87                                           ; $6af5: $fe $87
	db $fd                                           ; $6af7: $fd
	adc a                                            ; $6af8: $8f
	ld a, [$fd87]                                    ; $6af9: $fa $87 $fd
	ld b, e                                          ; $6afc: $43
	ld a, [hl]                                       ; $6afd: $7e
	ld b, c                                          ; $6afe: $41
	ld a, a                                          ; $6aff: $7f
	jr nz, jr_01b_6b41                               ; $6b00: $20 $3f

	jr jr_01b_6b23                                   ; $6b02: $18 $1f

	ld b, $07                                        ; $6b04: $06 $07
	ld bc, $c001                                     ; $6b06: $01 $01 $c0
	ret nz                                           ; $6b09: $c0

	jr nc, jr_01b_6b7f                               ; $6b0a: $30 $73

	call nz, Call_01b_448f                           ; $6b0c: $c4 $8f $44
	db $fc                                           ; $6b0f: $fc
	ldh [c], a                                       ; $6b10: $e2
	cp [hl]                                          ; $6b11: $be
	ldh [c], a                                       ; $6b12: $e2
	cp [hl]                                          ; $6b13: $be
	pop hl                                           ; $6b14: $e1
	ccf                                              ; $6b15: $3f
	pop hl                                           ; $6b16: $e1
	rst $38                                          ; $6b17: $ff
	pop hl                                           ; $6b18: $e1
	ccf                                              ; $6b19: $3f
	ldh [c], a                                       ; $6b1a: $e2
	ld a, $c2                                        ; $6b1b: $3e $c2
	cp $77                                           ; $6b1d: $fe $77
	or h                                             ; $6b1f: $b4
	sbc e                                            ; $6b20: $9b
	add hl, de                                       ; $6b21: $19
	rst $38                                          ; $6b22: $ff

jr_01b_6b23:
	rst SubAFromBC                                          ; $6b23: $e7
	rst SubAFromBC                                          ; $6b24: $e7
	push af                                          ; $6b25: $f5
	ld b, h                                          ; $6b26: $44
	and b                                            ; $6b27: $a0
	ldh [$dd], a                                     ; $6b28: $e0 $dd
	dec a                                            ; $6b2a: $3d
	inc bc                                           ; $6b2b: $03
	db $eb                                           ; $6b2c: $eb
	rst SubAFromDE                                          ; $6b2d: $df
	ld [$1cdf], sp                                   ; $6b2e: $08 $df $1c
	add b                                            ; $6b31: $80
	ld a, [hl+]                                      ; $6b32: $2a
	ld a, $23                                        ; $6b33: $3e $23
	ccf                                              ; $6b35: $3f
	inc hl                                           ; $6b36: $23
	ld a, $00                                        ; $6b37: $3e $00
	nop                                              ; $6b39: $00
	ld a, e                                          ; $6b3a: $7b
	ld a, e                                          ; $6b3b: $7b
	ld h, $3f                                        ; $6b3c: $26 $3f
	di                                               ; $6b3e: $f3
	rst $38                                          ; $6b3f: $ff
	adc a                                            ; $6b40: $8f

jr_01b_6b41:
	rst $38                                          ; $6b41: $ff
	ld h, l                                          ; $6b42: $65
	ld a, a                                          ; $6b43: $7f
	ld c, d                                          ; $6b44: $4a
	ld a, a                                          ; $6b45: $7f
	adc c                                            ; $6b46: $89
	rst $38                                          ; $6b47: $ff
	sbc c                                            ; $6b48: $99
	rst $38                                          ; $6b49: $ff
	sbc l                                            ; $6b4a: $9d
	rst FarCall                                          ; $6b4b: $f7
	ld a, a                                          ; $6b4c: $7f
	ld a, [hl]                                       ; $6b4d: $7e
	ld e, e                                          ; $6b4e: $5b
	ld l, h                                          ; $6b4f: $6c
	ld a, a                                          ; $6b50: $7f
	add b                                            ; $6b51: $80
	ld c, h                                          ; $6b52: $4c

jr_01b_6b53:
	ccf                                              ; $6b53: $3f
	inc l                                            ; $6b54: $2c
	rra                                              ; $6b55: $1f
	inc de                                           ; $6b56: $13
	rrca                                             ; $6b57: $0f
	ld [rRAMG], sp                                   ; $6b58: $08 $00 $00
	add b                                            ; $6b5b: $80
	add b                                            ; $6b5c: $80
	ld l, b                                          ; $6b5d: $68
	add sp, $1c                                      ; $6b5e: $e8 $1c
	db $fc                                           ; $6b60: $fc
	ld hl, sp-$08                                    ; $6b61: $f8 $f8
	inc d                                            ; $6b63: $14
	db $fc                                           ; $6b64: $fc
	ld c, h                                          ; $6b65: $4c
	db $fc                                           ; $6b66: $fc
	inc l                                            ; $6b67: $2c
	db $fc                                           ; $6b68: $fc
	xor d                                            ; $6b69: $aa
	cp $fa                                           ; $6b6a: $fe $fa
	ld a, [hl]                                       ; $6b6c: $7e
	db $f4                                           ; $6b6d: $f4
	db $fc                                           ; $6b6e: $fc
	cp h                                             ; $6b6f: $bc
	call nz, $fc91                                   ; $6b70: $c4 $91 $fc
	call nz, $d8f8                                   ; $6b73: $c4 $f8 $d8
	ldh a, [rAUD1SWEEP]                              ; $6b76: $f0 $10
	ldh [rAUD4LEN], a                                ; $6b78: $e0 $20
	rra                                              ; $6b7a: $1f
	inc e                                            ; $6b7b: $1c
	rra                                              ; $6b7c: $1f
	db $10                                           ; $6b7d: $10
	rrca                                             ; $6b7e: $0f

jr_01b_6b7f:
	rrca                                             ; $6b7f: $0f
	db $eb                                           ; $6b80: $eb
	rst SubAFromDE                                          ; $6b81: $df
	rlca                                             ; $6b82: $07
	rst $38                                          ; $6b83: $ff
	add b                                            ; $6b84: $80
	rst $38                                          ; $6b85: $ff
	rst SubAFromBC                                          ; $6b86: $e7
	rst $38                                          ; $6b87: $ff
	adc e                                            ; $6b88: $8b
	cp $8f                                           ; $6b89: $fe $8f
	rst $38                                          ; $6b8b: $ff
	ei                                               ; $6b8c: $fb
	ld c, $0f                                        ; $6b8d: $0e $0f
	rrca                                             ; $6b8f: $0f
	dec bc                                           ; $6b90: $0b
	ld c, $0b                                        ; $6b91: $0e $0b
	ld e, $13                                        ; $6b93: $1e $13
	rra                                              ; $6b95: $1f
	inc de                                           ; $6b96: $13
	dec e                                            ; $6b97: $1d
	rla                                              ; $6b98: $17
	dec c                                            ; $6b99: $0d
	rrca                                             ; $6b9a: $0f
	rlca                                             ; $6b9b: $07
	rlca                                             ; $6b9c: $07
	add hl, bc                                       ; $6b9d: $09
	rrca                                             ; $6b9e: $0f
	ld de, $ff1f                                     ; $6b9f: $11 $1f $ff
	rst $38                                          ; $6ba2: $ff
	nop                                              ; $6ba3: $00
	sub [hl]                                         ; $6ba4: $96
	nop                                              ; $6ba5: $00
	ldh a, [$d0]                                     ; $6ba6: $f0 $d0
	ld hl, sp-$58                                    ; $6ba8: $f8 $a8
	db $fc                                           ; $6baa: $fc
	call nz, $a4fc                                   ; $6bab: $c4 $fc $a4
	ld a, e                                          ; $6bae: $7b
	or b                                             ; $6baf: $b0
	sbc h                                            ; $6bb0: $9c
	cp b                                             ; $6bb1: $b8
	ldh a, [hDisp1_SCY]                                     ; $6bb2: $f0 $90
	ld l, e                                          ; $6bb4: $6b
	cp $98                                           ; $6bb5: $fe $98
	ldh a, [rAUD4LEN]                                ; $6bb7: $f0 $20
	ldh [$d0], a                                     ; $6bb9: $e0 $d0
	ldh a, [$08]                                     ; $6bbb: $f0 $08
	ld hl, sp+$77                                    ; $6bbd: $f8 $77
	ldh [$f3], a                                     ; $6bbf: $e0 $f3
	rst SubAFromDE                                          ; $6bc1: $df
	jr c, jr_01b_6b53                                ; $6bc2: $38 $8f

	ld b, h                                          ; $6bc4: $44
	ld a, h                                          ; $6bc5: $7c
	db $e4                                           ; $6bc6: $e4
	db $fc                                           ; $6bc7: $fc
	ld b, h                                          ; $6bc8: $44
	ld a, h                                          ; $6bc9: $7c
	jr c, jr_01b_6c04                                ; $6bca: $38 $38

	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	ld b, $06                                        ; $6bce: $06 $06
	rlca                                             ; $6bd0: $07
	dec b                                            ; $6bd1: $05
	rra                                              ; $6bd2: $1f
	add hl, de                                       ; $6bd3: $19
	rrca                                             ; $6bd4: $0f
	ld b, b                                          ; $6bd5: $40
	sbc c                                            ; $6bd6: $99
	rst $38                                          ; $6bd7: $ff
	ld sp, hl                                        ; $6bd8: $f9
	ccf                                              ; $6bd9: $3f
	ld hl, $1f1f                                     ; $6bda: $21 $1f $1f
	jp hl                                            ; $6bdd: $e9


	ld [hl], e                                       ; $6bde: $73
	ld h, b                                          ; $6bdf: $60
	sbc d                                            ; $6be0: $9a
	rlca                                             ; $6be1: $07
	rst $38                                          ; $6be2: $ff
	dec bc                                           ; $6be3: $0b
	cp $ff                                           ; $6be4: $fe $ff
	ld a, e                                          ; $6be6: $7b
	ld h, h                                          ; $6be7: $64
	ld a, e                                          ; $6be8: $7b
	ld h, b                                          ; $6be9: $60
	ld a, a                                          ; $6bea: $7f
	ld h, d                                          ; $6beb: $62
	ld a, e                                          ; $6bec: $7b
	ld h, b                                          ; $6bed: $60
	ld a, e                                          ; $6bee: $7b
	ld h, d                                          ; $6bef: $62
	sbc [hl]                                         ; $6bf0: $9e
	dec b                                            ; $6bf1: $05
	sbc $07                                          ; $6bf2: $de $07
	ld h, a                                          ; $6bf4: $67
	ld h, b                                          ; $6bf5: $60
	rst SubAFromBC                                          ; $6bf6: $e7
	rst SubAFromDE                                          ; $6bf7: $df
	inc bc                                           ; $6bf8: $03
	sbc l                                            ; $6bf9: $9d
	rlca                                             ; $6bfa: $07

jr_01b_6bfb:
	inc b                                            ; $6bfb: $04
	ld [hl], a                                       ; $6bfc: $77
	cp [hl]                                          ; $6bfd: $be
	dec sp                                           ; $6bfe: $3b
	add b                                            ; $6bff: $80
	sub h                                            ; $6c00: $94
	ld h, [hl]                                       ; $6c01: $66
	ld e, e                                          ; $6c02: $5b
	ld a, h                                          ; $6c03: $7c

jr_01b_6c04:
	ld a, a                                          ; $6c04: $7f
	ld c, h                                          ; $6c05: $4c
	rst $38                                          ; $6c06: $ff
	xor h                                            ; $6c07: $ac
	rst $38                                          ; $6c08: $ff
	inc sp                                           ; $6c09: $33
	rst AddAOntoHL                                          ; $6c0a: $ef
	ld l, b                                          ; $6c0b: $68
	ld [hl-], a                                      ; $6c0c: $32
	ret nz                                           ; $6c0d: $c0

	sub d                                            ; $6c0e: $92
	sbc h                                            ; $6c0f: $9c
	ld a, h                                          ; $6c10: $7c
	call nz, $e6fe                                   ; $6c11: $c4 $fe $e6
	rst $38                                          ; $6c14: $ff
	db $dd                                           ; $6c15: $dd
	rst FarCall                                          ; $6c16: $f7
	inc d                                            ; $6c17: $14
	rst AddAOntoHL                                          ; $6c18: $ef
	cpl                                              ; $6c19: $2f
	rst $38                                          ; $6c1a: $ff
	sbc a                                            ; $6c1b: $9f
	ld a, d                                          ; $6c1c: $7a
	ldh [$9c], a                                     ; $6c1d: $e0 $9c
	rst GetHLinHL                                          ; $6c1f: $cf
	ld a, a                                          ; $6c20: $7f
	ld a, e                                          ; $6c21: $7b
	ld h, e                                          ; $6c22: $63
	add b                                            ; $6c23: $80
	sbc [hl]                                         ; $6c24: $9e
	inc de                                           ; $6c25: $13
	ld c, a                                          ; $6c26: $4f
	add b                                            ; $6c27: $80
	sub l                                            ; $6c28: $95
	rst $38                                          ; $6c29: $ff
	reti                                             ; $6c2a: $d9


	rst $38                                          ; $6c2b: $ff
	xor c                                            ; $6c2c: $a9
	rst $38                                          ; $6c2d: $ff
	jp $bcfc                                         ; $6c2e: $c3 $fc $bc


	ldh a, [$d0]                                     ; $6c31: $f0 $d0
	ld h, [hl]                                       ; $6c33: $66
	ldh [c], a                                       ; $6c34: $e2
	sbc [hl]                                         ; $6c35: $9e
	ld [hl], b                                       ; $6c36: $70
	ld a, d                                          ; $6c37: $7a
	ldh [c], a                                       ; $6c38: $e2
	ld e, [hl]                                       ; $6c39: $5e
	ldh [$57], a                                     ; $6c3a: $e0 $57
	jr nz, jr_01b_6c94                               ; $6c3c: $20 $56

	ldh [c], a                                       ; $6c3e: $e2
	ld h, a                                          ; $6c3f: $67
	jr nz, jr_01b_6c79                               ; $6c40: $20 $37

	nop                                              ; $6c42: $00
	halt                                             ; $6c43: $76
	inc b                                            ; $6c44: $04
	ld a, a                                          ; $6c45: $7f
	cp $9d                                           ; $6c46: $fe $9d
	ld [hl+], a                                      ; $6c48: $22
	ld a, $0f                                        ; $6c49: $3e $0f
	jr nz, jr_01b_6c67                               ; $6c4b: $20 $1a

	and b                                            ; $6c4d: $a0
	sub h                                            ; $6c4e: $94
	ld [hl], b                                       ; $6c4f: $70
	ld e, a                                          ; $6c50: $5f
	ld l, h                                          ; $6c51: $6c
	ld a, a                                          ; $6c52: $7f
	ld d, h                                          ; $6c53: $54
	ccf                                              ; $6c54: $3f
	jr nz, jr_01b_6c76                               ; $6c55: $20 $1f

	inc de                                           ; $6c57: $13
	db $fd                                           ; $6c58: $fd
	ei                                               ; $6c59: $fb
	inc sp                                           ; $6c5a: $33
	jr nz, jr_01b_6bfb                               ; $6c5b: $20 $9e

	ld a, h                                          ; $6c5d: $7c
	halt                                             ; $6c5e: $76
	ld l, $9d                                        ; $6c5f: $2e $9d
	ld hl, sp+$18                                    ; $6c61: $f8 $18
	ld [hl], l                                       ; $6c63: $75
	ldh [$6f], a                                     ; $6c64: $e0 $6f
	ld a, b                                          ; $6c66: $78

jr_01b_6c67:
	adc e                                            ; $6c67: $8b
	jr jr_01b_6c89                                   ; $6c68: $18 $1f

	daa                                              ; $6c6a: $27
	jr c, jr_01b_6cbc                                ; $6c6b: $38 $4f

	ld [hl], a                                       ; $6c6d: $77
	ld c, b                                          ; $6c6e: $48
	ld a, a                                          ; $6c6f: $7f
	sub l                                            ; $6c70: $95
	rst $38                                          ; $6c71: $ff
	push hl                                          ; $6c72: $e5
	rst $38                                          ; $6c73: $ff
	xor l                                            ; $6c74: $ad
	cp d                                             ; $6c75: $ba

jr_01b_6c76:
	rra                                              ; $6c76: $1f
	ld d, $0b                                        ; $6c77: $16 $0b

jr_01b_6c79:
	ld d, $2f                                        ; $6c79: $16 $2f
	ld a, $7b                                        ; $6c7b: $3e $7b
	cp $9c                                           ; $6c7d: $fe $9c
	add hl, sp                                       ; $6c7f: $39
	daa                                              ; $6c80: $27
	inc a                                            ; $6c81: $3c
	db $fd                                           ; $6c82: $fd
	rst SubAFromDE                                          ; $6c83: $df
	ld a, b                                          ; $6c84: $78
	add b                                            ; $6c85: $80
	add h                                            ; $6c86: $84
	db $fc                                           ; $6c87: $fc
	ldh [c], a                                       ; $6c88: $e2

jr_01b_6c89:
	ld e, $f2                                        ; $6c89: $1e $f2
	xor $19                                          ; $6c8b: $ee $19
	rst FarCall                                          ; $6c8d: $f7
	add hl, hl                                       ; $6c8e: $29
	rst $38                                          ; $6c8f: $ff
	dec h                                            ; $6c90: $25
	rst $38                                          ; $6c91: $ff
	or l                                             ; $6c92: $b5
	rst SubAFromDE                                          ; $6c93: $df

jr_01b_6c94:
	ld sp, hl                                        ; $6c94: $f9
	ld l, a                                          ; $6c95: $6f
	cp l                                             ; $6c96: $bd
	ld [hl], a                                       ; $6c97: $77
	db $fd                                           ; $6c98: $fd
	ld h, a                                          ; $6c99: $67
	db $fd                                           ; $6c9a: $fd
	ld h, a                                          ; $6c9b: $67
	ld sp, hl                                        ; $6c9c: $f9
	adc a                                            ; $6c9d: $8f
	pop af                                           ; $6c9e: $f1
	rra                                              ; $6c9f: $1f
	dec b                                            ; $6ca0: $05
	rlca                                             ; $6ca1: $07
	dec b                                            ; $6ca2: $05
	rlca                                             ; $6ca3: $07
	inc bc                                           ; $6ca4: $03
	sbc [hl]                                         ; $6ca5: $9e
	inc bc                                           ; $6ca6: $03
	db $dd                                           ; $6ca7: $dd
	ld bc, $dff3                                     ; $6ca8: $01 $f3 $df
	ld bc, $2277                                     ; $6cab: $01 $77 $22
	ld a, d                                          ; $6cae: $7a
	ldh [hDisp1_BGP], a                                     ; $6caf: $e0 $92
	ld a, l                                          ; $6cb1: $7d
	rst AddAOntoHL                                          ; $6cb2: $ef
	cp d                                             ; $6cb3: $ba
	rst $38                                          ; $6cb4: $ff
	ld l, h                                          ; $6cb5: $6c
	rst AddAOntoHL                                          ; $6cb6: $ef
	cp d                                             ; $6cb7: $ba
	rst AddAOntoHL                                          ; $6cb8: $ef
	ld a, h                                          ; $6cb9: $7c
	rst $38                                          ; $6cba: $ff
	ld sp, hl                                        ; $6cbb: $f9

jr_01b_6cbc:
	rst $38                                          ; $6cbc: $ff
	sub c                                            ; $6cbd: $91
	ld l, a                                          ; $6cbe: $6f
	cp $de                                           ; $6cbf: $fe $de
	cp $9d                                           ; $6cc1: $fe $9d
	sub d                                            ; $6cc3: $92
	ld hl, $ffde                                     ; $6cc4: $21 $de $ff
	db $fd                                           ; $6cc7: $fd
	sbc l                                            ; $6cc8: $9d
	and b                                            ; $6cc9: $a0
	ldh [rPCM34], a                                  ; $6cca: $e0 $77
	cp $df                                           ; $6ccc: $fe $df
	ret nz                                           ; $6cce: $c0

	db $dd                                           ; $6ccf: $dd
	add b                                            ; $6cd0: $80
	di                                               ; $6cd1: $f3
	rst SubAFromDE                                          ; $6cd2: $df
	ldh [rBGP], a                                    ; $6cd3: $e0 $47
	xor [hl]                                         ; $6cd5: $ae
	rst SubAFromDE                                          ; $6cd6: $df
	ld bc, $029e                                     ; $6cd7: $01 $9e $02
	sbc $03                                          ; $6cda: $de $03
	rst SubAFromDE                                          ; $6cdc: $df
	ld [bc], a                                       ; $6cdd: $02
	db $fd                                           ; $6cde: $fd
	rst SubAFromDE                                          ; $6cdf: $df
	dec b                                            ; $6ce0: $05
	sbc c                                            ; $6ce1: $99
	rrca                                             ; $6ce2: $0f
	ld a, [bc]                                       ; $6ce3: $0a
	rrca                                             ; $6ce4: $0f
	add hl, bc                                       ; $6ce5: $09
	rlca                                             ; $6ce6: $07
	inc b                                            ; $6ce7: $04
	db $fd                                           ; $6ce8: $fd
	rst SubAFromDE                                          ; $6ce9: $df
	dec e                                            ; $6cea: $1d
	add l                                            ; $6ceb: $85
	ld h, d                                          ; $6cec: $62
	ld a, a                                          ; $6ced: $7f
	sbc a                                            ; $6cee: $9f
	ldh [$3f], a                                     ; $6cef: $e0 $3f
	rst SubAFromDE                                          ; $6cf1: $df
	jr nz, @+$01                                     ; $6cf2: $20 $ff

	ld d, h                                          ; $6cf4: $54
	rst $38                                          ; $6cf5: $ff
	sub h                                            ; $6cf6: $94
	rst $38                                          ; $6cf7: $ff
	or [hl]                                          ; $6cf8: $b6
	db $eb                                           ; $6cf9: $eb
	ld a, a                                          ; $6cfa: $7f
	ld b, b                                          ; $6cfb: $40
	cp a                                             ; $6cfc: $bf
	reti                                             ; $6cfd: $d9


	cp a                                             ; $6cfe: $bf
	ld sp, hl                                        ; $6cff: $f9
	cp a                                             ; $6d00: $bf
	jp hl                                            ; $6d01: $e9


	rst $38                                          ; $6d02: $ff
	ld h, [hl]                                       ; $6d03: $66
	sbc e                                            ; $6d04: $9b
	or $6f                                           ; $6d05: $f6 $6f
	or [hl]                                          ; $6d07: $b6
	add b                                            ; $6d08: $80
	db $10                                           ; $6d09: $10
	ldh a, [hDisp0_WY]                                     ; $6d0a: $f0 $88
	ld a, b                                          ; $6d0c: $78
	ret z                                            ; $6d0d: $c8

	cp b                                             ; $6d0e: $b8
	ld h, h                                          ; $6d0f: $64
	call c, $fca4                                    ; $6d10: $dc $a4 $fc
	sub h                                            ; $6d13: $94
	db $fc                                           ; $6d14: $fc
	call nc, $e47c                                   ; $6d15: $d4 $7c $e4
	inc a                                            ; $6d18: $3c
	db $f4                                           ; $6d19: $f4
	sbc h                                            ; $6d1a: $9c
	db $f4                                           ; $6d1b: $f4
	call c, Call_01b_5cf4                            ; $6d1c: $dc $f4 $5c
	db $e4                                           ; $6d1f: $e4
	inc a                                            ; $6d20: $3c
	db $e4                                           ; $6d21: $e4
	ld a, h                                          ; $6d22: $7c
	ccf                                              ; $6d23: $3f
	ccf                                              ; $6d24: $3f
	rra                                              ; $6d25: $1f
	ld [de], a                                       ; $6d26: $12
	rra                                              ; $6d27: $1f
	sbc [hl]                                         ; $6d28: $9e
	jr jr_01b_6d67                                   ; $6d29: $18 $3c

	sbc $67                                          ; $6d2b: $de $67
	ld b, b                                          ; $6d2d: $40
	db $fd                                           ; $6d2e: $fd
	rst SubAFromDE                                          ; $6d2f: $df
	ld e, $85                                        ; $6d30: $1e $85
	ld hl, $473f                                     ; $6d32: $21 $3f $47
	ld a, b                                          ; $6d35: $78
	ld c, a                                          ; $6d36: $4f
	ld [hl], a                                       ; $6d37: $77
	sbc b                                            ; $6d38: $98
	rst AddAOntoHL                                          ; $6d39: $ef
	sub h                                            ; $6d3a: $94
	rst $38                                          ; $6d3b: $ff
	and h                                            ; $6d3c: $a4
	rst $38                                          ; $6d3d: $ff
	xor l                                            ; $6d3e: $ad
	ei                                               ; $6d3f: $fb
	sbc a                                            ; $6d40: $9f
	ldh a, [$bf]                                     ; $6d41: $f0 $bf
	xor $bd                                          ; $6d43: $ee $bd
	and $bf                                          ; $6d45: $e6 $bf
	and $9f                                          ; $6d47: $e6 $9f

jr_01b_6d49:
	pop af                                           ; $6d49: $f1
	adc a                                            ; $6d4a: $8f
	ld hl, sp+$6f                                    ; $6d4b: $f8 $6f
	and b                                            ; $6d4d: $a0
	add [hl]                                         ; $6d4e: $86
	jr jr_01b_6d49                                   ; $6d4f: $18 $f8

	db $e4                                           ; $6d51: $e4
	inc e                                            ; $6d52: $1c
	ldh a, [c]                                       ; $6d53: $f2
	xor $12                                          ; $6d54: $ee $12
	cp $a9                                           ; $6d56: $fe $a9
	rst $38                                          ; $6d58: $ff
	and a                                            ; $6d59: $a7
	rst $38                                          ; $6d5a: $ff
	or l                                             ; $6d5b: $b5
	ld e, l                                          ; $6d5c: $5d
	ld hl, sp+$08                                    ; $6d5d: $f8 $08
	ldh a, [$e8]                                     ; $6d5f: $f0 $e8
	call nc, $f47c                                   ; $6d61: $d4 $7c $f4
	ld a, h                                          ; $6d64: $7c
	db $f4                                           ; $6d65: $f4
	sbc h                                            ; $6d66: $9c

jr_01b_6d67:
	db $e4                                           ; $6d67: $e4
	ld [hl], d                                       ; $6d68: $72
	ret nz                                           ; $6d69: $c0

	rst SubAFromDE                                          ; $6d6a: $df
	ld c, $8b                                        ; $6d6b: $0e $8b
	ld [hl], c                                       ; $6d6d: $71
	ld a, a                                          ; $6d6e: $7f
	add b                                            ; $6d6f: $80
	rst $38                                          ; $6d70: $ff
	ld h, e                                          ; $6d71: $63
	ld a, a                                          ; $6d72: $7f
	ld b, h                                          ; $6d73: $44
	ld a, a                                          ; $6d74: $7f
	adc b                                            ; $6d75: $88
	rst $38                                          ; $6d76: $ff
	adc c                                            ; $6d77: $89
	rst $38                                          ; $6d78: $ff
	sub e                                            ; $6d79: $93
	cp $93                                           ; $6d7a: $fe $93
	cp $57                                           ; $6d7c: $fe $57
	ld a, h                                          ; $6d7e: $7c
	daa                                              ; $6d7f: $27
	inc a                                            ; $6d80: $3c
	ld a, b                                          ; $6d81: $78
	ld h, [hl]                                       ; $6d82: $66
	ld a, l                                          ; $6d83: $7d
	or d                                             ; $6d84: $b2

jr_01b_6d85:
	sbc [hl]                                         ; $6d85: $9e
	jr jr_01b_6d85                                   ; $6d86: $18 $fd

	rst SubAFromDE                                          ; $6d88: $df
	ldh a, [$7d]                                     ; $6d89: $f0 $7d
	call nc, $0488                                   ; $6d8b: $d4 $88 $04
	db $fc                                           ; $6d8e: $fc
	ld [hl+], a                                      ; $6d8f: $22
	cp $d2                                           ; $6d90: $fe $d2
	cp $89                                           ; $6d92: $fe $89
	rst $38                                          ; $6d94: $ff
	push bc                                          ; $6d95: $c5
	ld a, a                                          ; $6d96: $7f
	db $e3                                           ; $6d97: $e3
	ccf                                              ; $6d98: $3f
	pop af                                           ; $6d99: $f1
	rst $38                                          ; $6d9a: $ff
	ld a, a                                          ; $6d9b: $7f
	rst GetHLinHL                                          ; $6d9c: $cf
	ld a, [$face]                                    ; $6d9d: $fa $ce $fa
	adc $f4                                          ; $6da0: $ce $f4
	inc e                                            ; $6da2: $1c
	db $f4                                           ; $6da3: $f4
	rlca                                             ; $6da4: $07
	ret nz                                           ; $6da5: $c0

	ld a, d                                          ; $6da6: $7a
	nop                                              ; $6da7: $00
	dec sp                                           ; $6da8: $3b
	ret nz                                           ; $6da9: $c0

	sbc e                                            ; $6daa: $9b
	ccf                                              ; $6dab: $3f
	rst $38                                          ; $6dac: $ff
	rst AddAOntoHL                                          ; $6dad: $ef
	ld a, d                                          ; $6dae: $7a
	ld l, e                                          ; $6daf: $6b
	ret nz                                           ; $6db0: $c0

	ld a, h                                          ; $6db1: $7c
	ret nc                                           ; $6db2: $d0

	adc a                                            ; $6db3: $8f
	ld e, $0b                                        ; $6db4: $1e $0b
	ccf                                              ; $6db6: $3f
	ld h, $3e                                        ; $6db7: $26 $3e
	dec hl                                           ; $6db9: $2b
	ld a, $27                                        ; $6dba: $3e $27
	rra                                              ; $6dbc: $1f
	rla                                              ; $6dbd: $17
	rra                                              ; $6dbe: $1f
	add hl, de                                       ; $6dbf: $19
	rra                                              ; $6dc0: $1f
	ld de, $111f                                     ; $6dc1: $11 $1f $11
	ld a, d                                          ; $6dc4: $7a
	jp z, $0798                                      ; $6dc5: $ca $98 $07

	rrca                                             ; $6dc8: $0f
	add hl, bc                                       ; $6dc9: $09
	ld [de], a                                       ; $6dca: $12
	rra                                              ; $6dcb: $1f
	ld a, a                                          ; $6dcc: $7f
	ld a, a                                          ; $6dcd: $7f
	db $fd                                           ; $6dce: $fd
	sbc e                                            ; $6dcf: $9b
	ld hl, sp-$28                                    ; $6dd0: $f8 $d8
	ld hl, sp-$58                                    ; $6dd2: $f8 $a8
	ld [hl], l                                       ; $6dd4: $75
	ldh a, [c]                                       ; $6dd5: $f2
	ld a, a                                          ; $6dd6: $7f
	db $fc                                           ; $6dd7: $fc
	ld a, a                                          ; $6dd8: $7f
	ld hl, sp+$7d                                    ; $6dd9: $f8 $7d
	ldh a, [$6f]                                     ; $6ddb: $f0 $6f
	cp $de                                           ; $6ddd: $fe $de
	ldh [$9a], a                                     ; $6ddf: $e0 $9a
	jr nz, jr_01b_6df3                               ; $6de1: $20 $10

	ldh a, [$fe]                                     ; $6de3: $f0 $fe
	cp $f9                                           ; $6de5: $fe $f9
	dec sp                                           ; $6de7: $3b
	and b                                            ; $6de8: $a0
	sbc h                                            ; $6de9: $9c
	rrca                                             ; $6dea: $0f
	ld a, [$676e]                                    ; $6deb: $fa $6e $67
	ld h, b                                          ; $6dee: $60
	rst SubAFromDE                                          ; $6def: $df
	inc bc                                           ; $6df0: $03
	sub [hl]                                         ; $6df1: $96
	inc c                                            ; $6df2: $0c

jr_01b_6df3:
	rrca                                             ; $6df3: $0f
	db $10                                           ; $6df4: $10
	rra                                              ; $6df5: $1f
	ld hl, $403f                                     ; $6df6: $21 $3f $40
	ld a, a                                          ; $6df9: $7f
	ld b, c                                          ; $6dfa: $41
	ld a, e                                          ; $6dfb: $7b
	ld e, d                                          ; $6dfc: $5a
	sbc [hl]                                         ; $6dfd: $9e
	add c                                            ; $6dfe: $81
	ld a, e                                          ; $6dff: $7b
	cp $9b                                           ; $6e00: $fe $9b
	ld b, e                                          ; $6e02: $43
	ld a, [hl]                                       ; $6e03: $7e
	ld b, e                                          ; $6e04: $43
	ld a, [hl]                                       ; $6e05: $7e
	ld [hl], a                                       ; $6e06: $77
	ldh a, [$9b]                                     ; $6e07: $f0 $9b
	sbc h                                            ; $6e09: $9c
	rst $38                                          ; $6e0a: $ff
	db $e3                                           ; $6e0b: $e3
	db $e3                                           ; $6e0c: $e3
	ld [hl], l                                       ; $6e0d: $75
	add b                                            ; $6e0e: $80
	sbc [hl]                                         ; $6e0f: $9e
	ld h, b                                          ; $6e10: $60
	ld a, d                                          ; $6e11: $7a
	add b                                            ; $6e12: $80
	ld [hl], a                                       ; $6e13: $77
	cp [hl]                                          ; $6e14: $be
	ld a, a                                          ; $6e15: $7f
	cp $9d                                           ; $6e16: $fe $9d
	ld [bc], a                                       ; $6e18: $02
	cp $77                                           ; $6e19: $fe $77
	cp $7d                                           ; $6e1b: $fe $7d
	or d                                             ; $6e1d: $b2
	ld a, a                                          ; $6e1e: $7f
	cp $7f                                           ; $6e1f: $fe $7f
	ldh a, [$7f]                                     ; $6e21: $f0 $7f
	db $ec                                           ; $6e23: $ec
	ld a, a                                          ; $6e24: $7f
	add sp, -$21                                     ; $6e25: $e8 $df
	add b                                            ; $6e27: $80
	ld l, a                                          ; $6e28: $6f
	jp nz, $2082                                     ; $6e29: $c2 $82 $20

	ccf                                              ; $6e2c: $3f
	ld b, c                                          ; $6e2d: $41
	ld a, a                                          ; $6e2e: $7f
	ld b, e                                          ; $6e2f: $43
	ld a, [hl]                                       ; $6e30: $7e
	add e                                            ; $6e31: $83
	cp $87                                           ; $6e32: $fe $87
	db $fd                                           ; $6e34: $fd
	adc a                                            ; $6e35: $8f
	ld a, [$fd87]                                    ; $6e36: $fa $87 $fd
	ld b, e                                          ; $6e39: $43
	ld a, [hl]                                       ; $6e3a: $7e
	ld b, c                                          ; $6e3b: $41
	ld a, a                                          ; $6e3c: $7f
	jr nz, jr_01b_6e7e                               ; $6e3d: $20 $3f

	jr jr_01b_6e60                                   ; $6e3f: $18 $1f

	ld b, $07                                        ; $6e41: $06 $07
	ld bc, $c001                                     ; $6e43: $01 $01 $c0
	ret nz                                           ; $6e46: $c0

	jr nc, jr_01b_6ebc                               ; $6e47: $30 $73

	call nz, Call_01b_448f                           ; $6e49: $c4 $8f $44
	db $fc                                           ; $6e4c: $fc
	ldh [c], a                                       ; $6e4d: $e2
	cp [hl]                                          ; $6e4e: $be
	ldh [c], a                                       ; $6e4f: $e2
	cp [hl]                                          ; $6e50: $be
	pop hl                                           ; $6e51: $e1
	ccf                                              ; $6e52: $3f
	pop hl                                           ; $6e53: $e1
	rst $38                                          ; $6e54: $ff
	pop hl                                           ; $6e55: $e1
	ccf                                              ; $6e56: $3f
	ldh [c], a                                       ; $6e57: $e2
	ld a, $c2                                        ; $6e58: $3e $c2
	cp $77                                           ; $6e5a: $fe $77
	or h                                             ; $6e5c: $b4
	sbc e                                            ; $6e5d: $9b
	add hl, de                                       ; $6e5e: $19
	rst $38                                          ; $6e5f: $ff

jr_01b_6e60:
	rst SubAFromBC                                          ; $6e60: $e7
	rst SubAFromBC                                          ; $6e61: $e7
	push af                                          ; $6e62: $f5
	ld b, h                                          ; $6e63: $44
	and b                                            ; $6e64: $a0
	ldh [$dd], a                                     ; $6e65: $e0 $dd
	db $eb                                           ; $6e67: $eb
	ld [bc], a                                       ; $6e68: $02
	rst $38                                          ; $6e69: $ff
	rst SubAFromDE                                          ; $6e6a: $df
	inc bc                                           ; $6e6b: $03
	add b                                            ; $6e6c: $80
	ld a, $3f                                        ; $6e6d: $3e $3f
	ld de, $661f                                     ; $6e6f: $11 $1f $66
	ld a, a                                          ; $6e72: $7f
	sbc d                                            ; $6e73: $9a
	rst $38                                          ; $6e74: $ff
	ld [hl], e                                       ; $6e75: $73
	ld a, a                                          ; $6e76: $7f
	inc h                                            ; $6e77: $24
	ccf                                              ; $6e78: $3f
	ld b, h                                          ; $6e79: $44
	ld a, a                                          ; $6e7a: $7f
	ld b, h                                          ; $6e7b: $44
	ld a, a                                          ; $6e7c: $7f
	ld c, [hl]                                       ; $6e7d: $4e

jr_01b_6e7e:
	ld a, a                                          ; $6e7e: $7f
	ccf                                              ; $6e7f: $3f
	scf                                              ; $6e80: $37
	dec l                                            ; $6e81: $2d
	ld [hl], $3f                                     ; $6e82: $36 $3f
	ld h, $1f                                        ; $6e84: $26 $1f

Jump_01b_6e86:
	db $10                                           ; $6e86: $10
	rrca                                             ; $6e87: $0f
	add hl, bc                                       ; $6e88: $09
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	add sp, -$80                                     ; $6e8b: $e8 $80
	add sp, $1c                                      ; $6e8d: $e8 $1c
	db $fc                                           ; $6e8f: $fc
	adc b                                            ; $6e90: $88
	ld hl, sp+$74                                    ; $6e91: $f8 $74
	db $fc                                           ; $6e93: $fc
	sbc d                                            ; $6e94: $9a
	cp $06                                           ; $6e95: $fe $06
	cp $a5                                           ; $6e97: $fe $a5
	rst $38                                          ; $6e99: $ff
	sub l                                            ; $6e9a: $95
	rst $38                                          ; $6e9b: $ff
	push de                                          ; $6e9c: $d5
	rst $38                                          ; $6e9d: $ff
	ld a, [$feae]                                    ; $6e9e: $fa $ae $fe
	ld a, d                                          ; $6ea1: $7a
	sbc $62                                          ; $6ea2: $de $62
	db $fc                                           ; $6ea4: $fc
	ld h, h                                          ; $6ea5: $64
	ld hl, sp+$08                                    ; $6ea6: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $6ea8: $f0 $90
	rrca                                             ; $6eaa: $0f
	rrca                                             ; $6eab: $0f
	adc h                                            ; $6eac: $8c
	inc de                                           ; $6ead: $13
	rra                                              ; $6eae: $1f
	ld a, [hl-]                                      ; $6eaf: $3a
	cpl                                              ; $6eb0: $2f
	ld a, [hl-]                                      ; $6eb1: $3a
	cpl                                              ; $6eb2: $2f
	ld [hl-], a                                      ; $6eb3: $32
	ccf                                              ; $6eb4: $3f
	ld a, a                                          ; $6eb5: $7f
	ld e, a                                          ; $6eb6: $5f
	rst $38                                          ; $6eb7: $ff
	add b                                            ; $6eb8: $80
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	ld a, a                                          ; $6ebb: $7f

jr_01b_6ebc:
	ld h, b                                          ; $6ebc: $60
	ld a, a                                          ; $6ebd: $7f
	ld a, a                                          ; $6ebe: $7f
	ld l, b                                          ; $6ebf: $68
	sbc $6e                                          ; $6ec0: $de $6e
	sbc e                                            ; $6ec2: $9b
	ld [hl], c                                       ; $6ec3: $71
	ld a, a                                          ; $6ec4: $7f
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	db $fd                                           ; $6ec7: $fd
	rst SubAFromDE                                          ; $6ec8: $df
	ldh a, [$7f]                                     ; $6ec9: $f0 $7f
	call nz, $8c93                                   ; $6ecb: $c4 $93 $8c
	db $fc                                           ; $6ece: $fc
	sbc h                                            ; $6ecf: $9c
	db $f4                                           ; $6ed0: $f4
	sbc a                                            ; $6ed1: $9f
	rst FarCall                                          ; $6ed2: $f7
	rst $38                                          ; $6ed3: $ff
	db $fd                                           ; $6ed4: $fd
	rst $38                                          ; $6ed5: $ff
	inc bc                                           ; $6ed6: $03
	rst $38                                          ; $6ed7: $ff
	db $fd                                           ; $6ed8: $fd
	ld a, e                                          ; $6ed9: $7b
	cp e                                             ; $6eda: $bb
	sbc l                                            ; $6edb: $9d
	cp $96                                           ; $6edc: $fe $96
	sbc $f6                                          ; $6ede: $de $f6
	sbc l                                            ; $6ee0: $9d
	adc [hl]                                         ; $6ee1: $8e
	cp $6f                                           ; $6ee2: $fe $6f
	ldh [rIE], a                                     ; $6ee4: $e0 $ff
	rst SubAFromDE                                          ; $6ee6: $df
	dec a                                            ; $6ee7: $3d
	ld a, a                                          ; $6ee8: $7f
	cp [hl]                                          ; $6ee9: $be
	sbc b                                            ; $6eea: $98
	ld sp, hl                                        ; $6eeb: $f9
	rst $38                                          ; $6eec: $ff
	ld b, a                                          ; $6eed: $47
	ld a, a                                          ; $6eee: $7f
	ld [hl-], a                                      ; $6eef: $32
	ccf                                              ; $6ef0: $3f
	dec h                                            ; $6ef1: $25
	ld a, e                                          ; $6ef2: $7b
	add d                                            ; $6ef3: $82
	sbc c                                            ; $6ef4: $99
	ld c, h                                          ; $6ef5: $4c
	ld a, a                                          ; $6ef6: $7f
	ld c, [hl]                                       ; $6ef7: $4e
	ld a, e                                          ; $6ef8: $7b
	ccf                                              ; $6ef9: $3f
	dec a                                            ; $6efa: $3d
	ld [hl], e                                       ; $6efb: $73
	add d                                            ; $6efc: $82
	add b                                            ; $6efd: $80
	ld d, $0f                                        ; $6efe: $16 $0f
	add hl, bc                                       ; $6f00: $09
	ld b, $05                                        ; $6f01: $06 $05
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	ret nz                                           ; $6f05: $c0

	ret nz                                           ; $6f06: $c0

	inc [hl]                                         ; $6f07: $34
	db $f4                                           ; $6f08: $f4
	adc [hl]                                         ; $6f09: $8e
	cp $fc                                           ; $6f0a: $fe $fc
	db $fc                                           ; $6f0c: $fc
	adc d                                            ; $6f0d: $8a
	cp $26                                           ; $6f0e: $fe $26
	cp $96                                           ; $6f10: $fe $96
	cp $d5                                           ; $6f12: $fe $d5
	rst $38                                          ; $6f14: $ff
	db $fd                                           ; $6f15: $fd
	cp a                                             ; $6f16: $bf
	ld a, [$de6e]                                    ; $6f17: $fa $6e $de
	ld [hl], d                                       ; $6f1a: $72
	cp $62                                           ; $6f1b: $fe $62
	sbc c                                            ; $6f1d: $99
	db $fc                                           ; $6f1e: $fc
	ld l, h                                          ; $6f1f: $6c
	ld hl, sp-$78                                    ; $6f20: $f8 $88
	ld hl, sp-$28                                    ; $6f22: $f8 $d8
	inc sp                                           ; $6f24: $33
	ld b, b                                          ; $6f25: $40
	sbc c                                            ; $6f26: $99
	ld a, e                                          ; $6f27: $7b
	dec a                                            ; $6f28: $3d
	scf                                              ; $6f29: $37
	cpl                                              ; $6f2a: $2f
	jr c, jr_01b_6f68                                ; $6f2b: $38 $3b

	inc hl                                           ; $6f2d: $23
	ld b, b                                          ; $6f2e: $40
	sbc b                                            ; $6f2f: $98
	jp c, $eeee                                      ; $6f30: $da $ee $ee

	or d                                             ; $6f33: $b2
	or $1a                                           ; $6f34: $f6 $1a
	cp h                                             ; $6f36: $bc
	ld [hl], e                                       ; $6f37: $73
	ld b, b                                          ; $6f38: $40
	sub e                                            ; $6f39: $93
	dec bc                                           ; $6f3a: $0b
	rrca                                             ; $6f3b: $0f
	ld c, $0f                                        ; $6f3c: $0e $0f
	ld c, $0b                                        ; $6f3e: $0e $0b
	ld e, $1b                                        ; $6f40: $1e $1b
	ld a, $27                                        ; $6f42: $3e $27
	ld a, a                                          ; $6f44: $7f
	ld b, e                                          ; $6f45: $43
	scf                                              ; $6f46: $37
	ld b, b                                          ; $6f47: $40
	sub e                                            ; $6f48: $93
	cp b                                             ; $6f49: $b8
	ld hl, sp-$0c                                    ; $6f4a: $f8 $f4
	call c, $dce4                                    ; $6f4c: $dc $e4 $dc
	xor $fe                                          ; $6f4f: $ee $fe
	cp a                                             ; $6f51: $bf
	di                                               ; $6f52: $f3
	rst $38                                          ; $6f53: $ff
	pop bc                                           ; $6f54: $c1
	scf                                              ; $6f55: $37
	ld b, b                                          ; $6f56: $40
	rst SubAFromDE                                          ; $6f57: $df
	rlca                                             ; $6f58: $07
	rlca                                             ; $6f59: $07
	ret nz                                           ; $6f5a: $c0

	ld a, a                                          ; $6f5b: $7f
	ld e, h                                          ; $6f5c: $5c
	sbc e                                            ; $6f5d: $9b
	db $fc                                           ; $6f5e: $fc
	call nz, $eefe                                   ; $6f5f: $c4 $fe $ee
	daa                                              ; $6f62: $27
	ret nz                                           ; $6f63: $c0

	rrca                                             ; $6f64: $0f
	nop                                              ; $6f65: $00
	sbc l                                            ; $6f66: $9d
	rlca                                             ; $6f67: $07

jr_01b_6f68:
	inc b                                            ; $6f68: $04
	rrca                                             ; $6f69: $0f
	nop                                              ; $6f6a: $00
	sbc l                                            ; $6f6b: $9d
	ldh a, [rAUD1SWEEP]                              ; $6f6c: $f0 $10
	ld [hl], a                                       ; $6f6e: $77
	ld a, [hl]                                       ; $6f6f: $7e
	adc e                                            ; $6f70: $8b
	jr jr_01b_6f92                                   ; $6f71: $18 $1f

	daa                                              ; $6f73: $27
	jr c, jr_01b_6fc5                                ; $6f74: $38 $4f

	ld [hl], a                                       ; $6f76: $77
	ld c, b                                          ; $6f77: $48
	ld a, a                                          ; $6f78: $7f
	sub l                                            ; $6f79: $95
	rst $38                                          ; $6f7a: $ff
	push hl                                          ; $6f7b: $e5
	rst $38                                          ; $6f7c: $ff
	xor l                                            ; $6f7d: $ad
	cp d                                             ; $6f7e: $ba
	rra                                              ; $6f7f: $1f
	ld d, $0b                                        ; $6f80: $16 $0b
	ld d, $2f                                        ; $6f82: $16 $2f
	ld a, $7b                                        ; $6f84: $3e $7b
	cp $80                                           ; $6f86: $fe $80
	add hl, sp                                       ; $6f88: $39
	ld h, $3d                                        ; $6f89: $26 $3d
	rlca                                             ; $6f8b: $07
	rra                                              ; $6f8c: $1f
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	ld a, b                                          ; $6f8f: $78
	ld a, b                                          ; $6f90: $78
	add h                                            ; $6f91: $84

jr_01b_6f92:
	db $fc                                           ; $6f92: $fc
	ldh [c], a                                       ; $6f93: $e2
	ld e, $f2                                        ; $6f94: $1e $f2
	xor $19                                          ; $6f96: $ee $19
	rst FarCall                                          ; $6f98: $f7
	add hl, hl                                       ; $6f99: $29
	rst $38                                          ; $6f9a: $ff
	dec h                                            ; $6f9b: $25
	rst $38                                          ; $6f9c: $ff
	or l                                             ; $6f9d: $b5
	rst SubAFromDE                                          ; $6f9e: $df
	ld sp, hl                                        ; $6f9f: $f9
	ld l, a                                          ; $6fa0: $6f
	cp l                                             ; $6fa1: $bd
	ld [hl], a                                       ; $6fa2: $77
	db $fd                                           ; $6fa3: $fd
	ld h, a                                          ; $6fa4: $67
	db $fd                                           ; $6fa5: $fd
	ld h, a                                          ; $6fa6: $67
	adc c                                            ; $6fa7: $89
	ld sp, hl                                        ; $6fa8: $f9
	adc a                                            ; $6fa9: $8f
	pop af                                           ; $6faa: $f1
	sbc a                                            ; $6fab: $9f
	db $e3                                           ; $6fac: $e3
	rst $38                                          ; $6fad: $ff
	ld b, $07                                        ; $6fae: $06 $07
	rrca                                             ; $6fb0: $0f
	dec c                                            ; $6fb1: $0d
	rra                                              ; $6fb2: $1f
	inc d                                            ; $6fb3: $14
	rra                                              ; $6fb4: $1f
	inc d                                            ; $6fb5: $14
	rrca                                             ; $6fb6: $0f
	inc c                                            ; $6fb7: $0c
	inc bc                                           ; $6fb8: $03
	ld b, $03                                        ; $6fb9: $06 $03
	rlca                                             ; $6fbb: $07
	ld b, $07                                        ; $6fbc: $06 $07
	sbc $03                                          ; $6fbe: $de $03
	sub [hl]                                         ; $6fc0: $96
	ld [bc], a                                       ; $6fc1: $02
	inc bc                                           ; $6fc2: $03
	inc bc                                           ; $6fc3: $03
	rlca                                             ; $6fc4: $07

jr_01b_6fc5:
	inc b                                            ; $6fc5: $04
	ld [$3f0f], sp                                   ; $6fc6: $08 $0f $3f
	ccf                                              ; $6fc9: $3f
	db $fd                                           ; $6fca: $fd
	add [hl]                                         ; $6fcb: $86
	ld l, $fe                                        ; $6fcc: $2e $fe
	or $de                                           ; $6fce: $f6 $de
	ld a, [$fa9e]                                    ; $6fd0: $fa $9e $fa
	sub [hl]                                         ; $6fd3: $96
	ld a, [$fc96]                                    ; $6fd4: $fa $96 $fc
	cp h                                             ; $6fd7: $bc
	ret z                                            ; $6fd8: $c8

	ld hl, sp-$68                                    ; $6fd9: $f8 $98
	ld hl, sp-$10                                    ; $6fdb: $f8 $f0
	ldh a, [$e0]                                     ; $6fdd: $f0 $e0
	and b                                            ; $6fdf: $a0
	ldh [$e0], a                                     ; $6fe0: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $6fe2: $f0 $90
	sbc b                                            ; $6fe4: $98
	ld a, d                                          ; $6fe5: $7a
	add e                                            ; $6fe6: $83
	rst SubAFromDE                                          ; $6fe7: $df
	db $fc                                           ; $6fe8: $fc
	rst $38                                          ; $6fe9: $ff
	sub h                                            ; $6fea: $94
	ld [bc], a                                       ; $6feb: $02
	rlca                                             ; $6fec: $07
	dec bc                                           ; $6fed: $0b
	rrca                                             ; $6fee: $0f
	dec bc                                           ; $6fef: $0b
	ld c, $0b                                        ; $6ff0: $0e $0b
	rrca                                             ; $6ff2: $0f
	ld b, $07                                        ; $6ff3: $06 $07
	ld [bc], a                                       ; $6ff5: $02
	ld a, e                                          ; $6ff6: $7b
	cp $37                                           ; $6ff7: $fe $37
	ret nz                                           ; $6ff9: $c0

	sub d                                            ; $6ffa: $92
	add $7e                                          ; $6ffb: $c6 $7e
	ld d, e                                          ; $6ffd: $53
	cp a                                             ; $6ffe: $bf
	ld sp, hl                                        ; $6fff: $f9
	rst AddAOntoHL                                          ; $7000: $ef
	cp a                                             ; $7001: $bf
	db $ed                                           ; $7002: $ed
	cp a                                             ; $7003: $bf
	jp hl                                            ; $7004: $e9


	cp a                                             ; $7005: $bf
	rst $38                                          ; $7006: $ff
	xor b                                            ; $7007: $a8
	inc sp                                           ; $7008: $33
	ret nz                                           ; $7009: $c0

	sbc e                                            ; $700a: $9b
	rrca                                             ; $700b: $0f
	ld a, [bc]                                       ; $700c: $0a
	rrca                                             ; $700d: $0f
	dec bc                                           ; $700e: $0b
	rla                                              ; $700f: $17
	ret nz                                           ; $7010: $c0

	sbc e                                            ; $7011: $9b
	ld e, a                                          ; $7012: $5f
	or a                                             ; $7013: $b7
	rst $38                                          ; $7014: $ff
	db $eb                                           ; $7015: $eb
	daa                                              ; $7016: $27
	ret nz                                           ; $7017: $c0

	dec sp                                           ; $7018: $3b
	nop                                              ; $7019: $00
	ld a, [hl]                                       ; $701a: $7e
	ld a, [bc]                                       ; $701b: $0a
	sbc l                                            ; $701c: $9d
	rla                                              ; $701d: $17
	dec hl                                           ; $701e: $2b
	ld [hl], e                                       ; $701f: $73
	nop                                              ; $7020: $00
	sbc l                                            ; $7021: $9d
	daa                                              ; $7022: $27
	inc a                                            ; $7023: $3c
	inc sp                                           ; $7024: $33
	nop                                              ; $7025: $00
	sbc e                                            ; $7026: $9b
	rrca                                             ; $7027: $0f
	db $fd                                           ; $7028: $fd
	ld [hl], a                                       ; $7029: $77
	cp l                                             ; $702a: $bd
	ld l, a                                          ; $702b: $6f
	nop                                              ; $702c: $00
	sbc l                                            ; $702d: $9d
	rra                                              ; $702e: $1f
	di                                               ; $702f: $f3
	ld a, d                                          ; $7030: $7a
	ld a, h                                          ; $7031: $7c
	dec sp                                           ; $7032: $3b
	ret nz                                           ; $7033: $c0

	halt                                             ; $7034: $76
	ret nz                                           ; $7035: $c0

	ld a, l                                          ; $7036: $7d
	dec l                                            ; $7037: $2d
	ld h, $c0                                        ; $7038: $26 $c0
	ld a, a                                          ; $703a: $7f
	ret nz                                           ; $703b: $c0

	ld a, a                                          ; $703c: $7f
	jp nz, $be7e                                     ; $703d: $c2 $7e $be

	sbc [hl]                                         ; $7040: $9e
	ld d, a                                          ; $7041: $57
	halt                                             ; $7042: $76
	ret nz                                           ; $7043: $c0

	ld h, a                                          ; $7044: $67
	ret nz                                           ; $7045: $c0

	adc h                                            ; $7046: $8c
	jr nz, jr_01b_7088                               ; $7047: $20 $3f

	ld b, d                                          ; $7049: $42
	ld a, a                                          ; $704a: $7f
	and d                                            ; $704b: $a2
	rst $38                                          ; $704c: $ff
	ld c, [hl]                                       ; $704d: $4e
	ld a, a                                          ; $704e: $7f
	ld l, $3d                                        ; $704f: $2e $3d
	ld sp, $0d3e                                     ; $7051: $31 $3e $0d
	ld e, $0e                                        ; $7054: $1e $0e
	rla                                              ; $7056: $17
	dec l                                            ; $7057: $2d
	ld a, $3d                                        ; $7058: $3e $3d
	ld a, e                                          ; $705a: $7b
	add b                                            ; $705b: $80
	sbc h                                            ; $705c: $9c
	scf                                              ; $705d: $37
	inc l                                            ; $705e: $2c
	rla                                              ; $705f: $17
	ld l, e                                          ; $7060: $6b
	ret nz                                           ; $7061: $c0

	add l                                            ; $7062: $85
	ld [bc], a                                       ; $7063: $02
	cp $12                                           ; $7064: $fe $12
	cp $09                                           ; $7066: $fe $09
	rst $38                                          ; $7068: $ff
	and l                                            ; $7069: $a5
	rst $38                                          ; $706a: $ff
	push af                                          ; $706b: $f5
	rst SubAFromDE                                          ; $706c: $df
	adc c                                            ; $706d: $89
	rst $38                                          ; $706e: $ff
	ld [hl], c                                       ; $706f: $71
	rst AddAOntoHL                                          ; $7070: $ef
	ld [hl], l                                       ; $7071: $75
	cp a                                             ; $7072: $bf
	ld [hl], l                                       ; $7073: $75
	rst AddAOntoHL                                          ; $7074: $ef
	db $ed                                           ; $7075: $ed
	ld [hl], a                                       ; $7076: $77
	ld sp, hl                                        ; $7077: $f9
	adc a                                            ; $7078: $8f
	ld a, [$e416]                                    ; $7079: $fa $16 $e4
	db $fc                                           ; $707c: $fc
	ld b, $80                                        ; $707d: $06 $80
	sbc e                                            ; $707f: $9b
	inc l                                            ; $7080: $2c
	db $fc                                           ; $7081: $fc
	db $f4                                           ; $7082: $f4
	call c, $8016                                    ; $7083: $dc $16 $80
	dec sp                                           ; $7086: $3b
	add b                                            ; $7087: $80

jr_01b_7088:
	sbc c                                            ; $7088: $99
	ld [de], a                                       ; $7089: $12
	inc c                                            ; $708a: $0c
	rra                                              ; $708b: $1f
	dec l                                            ; $708c: $2d
	ld a, [hl-]                                      ; $708d: $3a
	ld sp, $801f                                     ; $708e: $31 $1f $80
	sbc c                                            ; $7091: $99
	adc a                                            ; $7092: $8f
	ld [hl], l                                       ; $7093: $75
	rst $38                                          ; $7094: $ff
	ld [hl], l                                       ; $7095: $75
	rst AddAOntoHL                                          ; $7096: $ef
	adc l                                            ; $7097: $8d
	ld [hl], e                                       ; $7098: $73
	add b                                            ; $7099: $80
	sbc [hl]                                         ; $709a: $9e
	db $f4                                           ; $709b: $f4
	ld a, e                                          ; $709c: $7b
	cp [hl]                                          ; $709d: $be
	ld b, e                                          ; $709e: $43
	ret nz                                           ; $709f: $c0

	sbc [hl]                                         ; $70a0: $9e
	ld d, $67                                        ; $70a1: $16 $67
	ret nz                                           ; $70a3: $c0

	sbc l                                            ; $70a4: $9d
	ld [hl], $2d                                     ; $70a5: $36 $2d
	dec hl                                           ; $70a7: $2b
	ld b, b                                          ; $70a8: $40
	ld a, a                                          ; $70a9: $7f
	ret nz                                           ; $70aa: $c0

	sbc [hl]                                         ; $70ab: $9e
	rst SubAFromDE                                          ; $70ac: $df
	ld [hl], e                                       ; $70ad: $73
	ret nz                                           ; $70ae: $c0

	sbc h                                            ; $70af: $9c

jr_01b_70b0:
	sub [hl]                                         ; $70b0: $96
	db $f4                                           ; $70b1: $f4
	db $fc                                           ; $70b2: $fc
	ld b, $40                                        ; $70b3: $06 $40
	sbc e                                            ; $70b5: $9b
	jr z, jr_01b_70b0                                ; $70b6: $28 $f8

	call nz, $167c                                   ; $70b8: $c4 $7c $16
	ld b, b                                          ; $70bb: $40
	dec b                                            ; $70bc: $05
	ret nz                                           ; $70bd: $c0

	ld a, a                                          ; $70be: $7f
	nop                                              ; $70bf: $00
	dec c                                            ; $70c0: $0d
	ret nz                                           ; $70c1: $c0

	rst SubAFromDE                                          ; $70c2: $df
	inc bc                                           ; $70c3: $03
	sbc h                                            ; $70c4: $9c
	inc c                                            ; $70c5: $0c
	rrca                                             ; $70c6: $0f
	db $10                                           ; $70c7: $10
	ld a, e                                          ; $70c8: $7b
	ld b, b                                          ; $70c9: $40
	add b                                            ; $70ca: $80
	ld b, c                                          ; $70cb: $41
	ld a, a                                          ; $70cc: $7f
	ld b, e                                          ; $70cd: $43
	ld a, [hl]                                       ; $70ce: $7e

jr_01b_70cf:
	add e                                            ; $70cf: $83
	cp $87                                           ; $70d0: $fe $87
	db $fd                                           ; $70d2: $fd
	adc a                                            ; $70d3: $8f
	ld a, [$fd87]                                    ; $70d4: $fa $87 $fd

jr_01b_70d7:
	ld b, e                                          ; $70d7: $43
	ld a, [hl]                                       ; $70d8: $7e
	ld b, c                                          ; $70d9: $41
	ld a, a                                          ; $70da: $7f
	jr nz, jr_01b_711c                               ; $70db: $20 $3f

	jr jr_01b_70fe                                   ; $70dd: $18 $1f

	ld b, $07                                        ; $70df: $06 $07
	ld bc, $c001                                     ; $70e1: $01 $01 $c0
	ret nz                                           ; $70e4: $c0

	jr nc, jr_01b_70d7                               ; $70e5: $30 $f0

	ld [$04f8], sp                                   ; $70e7: $08 $f8 $04
	adc l                                            ; $70ea: $8d
	db $fc                                           ; $70eb: $fc
	ld b, h                                          ; $70ec: $44
	db $fc                                           ; $70ed: $fc
	ldh [c], a                                       ; $70ee: $e2
	cp [hl]                                          ; $70ef: $be
	ldh [c], a                                       ; $70f0: $e2
	cp [hl]                                          ; $70f1: $be
	pop hl                                           ; $70f2: $e1
	ccf                                              ; $70f3: $3f
	pop hl                                           ; $70f4: $e1
	rst $38                                          ; $70f5: $ff
	pop hl                                           ; $70f6: $e1
	ccf                                              ; $70f7: $3f
	ldh [c], a                                       ; $70f8: $e2
	ld a, $c2                                        ; $70f9: $3e $c2
	cp $04                                           ; $70fb: $fe $04
	ld a, e                                          ; $70fd: $7b

jr_01b_70fe:
	inc l                                            ; $70fe: $2c
	sbc e                                            ; $70ff: $9b
	add hl, de                                       ; $7100: $19
	rst $38                                          ; $7101: $ff
	rst SubAFromBC                                          ; $7102: $e7
	rst SubAFromBC                                          ; $7103: $e7
	ld h, a                                          ; $7104: $67
	cp [hl]                                          ; $7105: $be
	sub [hl]                                         ; $7106: $96
	ld hl, $403f                                     ; $7107: $21 $3f $40
	ld a, a                                          ; $710a: $7f
	ld b, c                                          ; $710b: $41
	ld a, a                                          ; $710c: $7f
	add b                                            ; $710d: $80
	rst $38                                          ; $710e: $ff
	add c                                            ; $710f: $81
	ld a, e                                          ; $7110: $7b
	cp $7f                                           ; $7111: $fe $7f
	ret nz                                           ; $7113: $c0

	ld a, a                                          ; $7114: $7f
	cp $77                                           ; $7115: $fe $77
	ldh a, [hDisp1_OBP1]                                     ; $7117: $f0 $94
	sbc h                                            ; $7119: $9c
	rst $38                                          ; $711a: $ff
	db $e3                                           ; $711b: $e3

jr_01b_711c:
	db $e3                                           ; $711c: $e3
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	add b                                            ; $711f: $80
	add b                                            ; $7120: $80
	ld h, b                                          ; $7121: $60
	ldh [rAUD1SWEEP], a                              ; $7122: $e0 $10
	ld [hl], e                                       ; $7124: $73
	cp h                                             ; $7125: $bc
	ld [hl], a                                       ; $7126: $77
	call z, $fe77                                    ; $7127: $cc $77 $fe
	ld a, [hl]                                       ; $712a: $7e
	ldh a, [$7f]                                     ; $712b: $f0 $7f
	cp $7f                                           ; $712d: $fe $7f
	ldh a, [$7f]                                     ; $712f: $f0 $7f
	db $ec                                           ; $7131: $ec
	ld a, a                                          ; $7132: $7f
	add sp, -$21                                     ; $7133: $e8 $df
	add b                                            ; $7135: $80
	db $fd                                           ; $7136: $fd
	rst SubAFromDE                                          ; $7137: $df
	jr jr_01b_70cf                                   ; $7138: $18 $95

	ld a, $36                                        ; $713a: $3e $36
	ld a, a                                          ; $713c: $7f
	ld b, e                                          ; $713d: $43
	rst $38                                          ; $713e: $ff
	add c                                            ; $713f: $81
	cp $82                                           ; $7140: $fe $82
	ld a, a                                          ; $7142: $7f
	ld h, l                                          ; $7143: $65
	ld a, e                                          ; $7144: $7b
	cp e                                             ; $7145: $bb
	sub [hl]                                         ; $7146: $96
	ld b, c                                          ; $7147: $41
	ld a, $32                                        ; $7148: $3e $32
	ld c, $0a                                        ; $714a: $0e $0a
	rlca                                             ; $714c: $07
	dec b                                            ; $714d: $05
	ld [bc], a                                       ; $714e: $02
	ld [bc], a                                       ; $714f: $02
	ldh [$dd], a                                     ; $7150: $e0 $dd
	call z, $fb03                                    ; $7152: $cc $03 $fb
	rst SubAFromDE                                          ; $7155: $df
	inc b                                            ; $7156: $04
	add a                                            ; $7157: $87
	dec bc                                           ; $7158: $0b
	rrca                                             ; $7159: $0f
	ld a, [bc]                                       ; $715a: $0a
	rrca                                             ; $715b: $0f
	dec de                                           ; $715c: $1b
	rra                                              ; $715d: $1f
	ld a, [hl+]                                      ; $715e: $2a
	ccf                                              ; $715f: $3f
	ld h, $3f                                        ; $7160: $26 $3f
	dec h                                            ; $7162: $25
	ccf                                              ; $7163: $3f
	ld e, l                                          ; $7164: $5d
	ld e, a                                          ; $7165: $5f
	inc h                                            ; $7166: $24
	ccf                                              ; $7167: $3f
	ld d, h                                          ; $7168: $54
	ld e, a                                          ; $7169: $5f
	ld [de], a                                       ; $716a: $12
	rra                                              ; $716b: $1f
	add hl, de                                       ; $716c: $19
	rra                                              ; $716d: $1f
	inc c                                            ; $716e: $0c
	rrca                                             ; $716f: $0f
	db $fd                                           ; $7170: $fd
	rst SubAFromDE                                          ; $7171: $df
	ld b, b                                          ; $7172: $40
	add l                                            ; $7173: $85
	and b                                            ; $7174: $a0
	ldh [rAUD4LEN], a                                ; $7175: $e0 $20
	ldh [rSVBK], a                                   ; $7177: $e0 $70
	ldh a, [hDisp0_WY]                                     ; $7179: $f0 $88
	ld hl, sp+$04                                    ; $717b: $f8 $04
	db $fc                                           ; $717d: $fc
	ld [hl], h                                       ; $717e: $74

Jump_01b_717f:
	db $fc                                           ; $717f: $fc
	inc a                                            ; $7180: $3c
	db $ec                                           ; $7181: $ec
	rra                                              ; $7182: $1f
	di                                               ; $7183: $f3
	sbc e                                            ; $7184: $9b
	db $fd                                           ; $7185: $fd
	cp a                                             ; $7186: $bf
	db $ec                                           ; $7187: $ec
	ld a, a                                          ; $7188: $7f
	ret nz                                           ; $7189: $c0

	ccf                                              ; $718a: $3f
	pop hl                                           ; $718b: $e1
	rst $38                                          ; $718c: $ff
	ldh [c], a                                       ; $718d: $e2
	ld sp, hl                                        ; $718e: $f9
	reti                                             ; $718f: $d9


	ld bc, $338f                                     ; $7190: $01 $8f $33
	ld [hl-], a                                      ; $7193: $32
	ld a, a                                          ; $7194: $7f
	ld c, h                                          ; $7195: $4c
	rst $38                                          ; $7196: $ff
	adc c                                            ; $7197: $89
	ld a, [hl]                                       ; $7198: $7e
	ld [hl], d                                       ; $7199: $72
	rst $38                                          ; $719a: $ff
	call $b5ff                                       ; $719b: $cd $ff $b5
	rst $38                                          ; $719e: $ff
	jp $22fe                                         ; $719f: $c3 $fe $22


	ld sp, hl                                        ; $71a2: $f9
	rst SubAFromDE                                          ; $71a3: $df
	add b                                            ; $71a4: $80
	sub e                                            ; $71a5: $93
	ret nz                                           ; $71a6: $c0

	ld b, b                                          ; $71a7: $40
	ldh [$a0], a                                     ; $71a8: $e0 $a0
	ldh a, [$50]                                     ; $71aa: $f0 $50
	ld hl, sp+$28                                    ; $71ac: $f8 $28
	db $fc                                           ; $71ae: $fc
	inc d                                            ; $71af: $14
	ld hl, sp-$08                                    ; $71b0: $f8 $f8
	rst FarCall                                          ; $71b2: $f7
	rst SubAFromDE                                          ; $71b3: $df
	inc bc                                           ; $71b4: $03
	rst AddAOntoHL                                          ; $71b5: $ef
	rst SubAFromDE                                          ; $71b6: $df
	inc bc                                           ; $71b7: $03
	add b                                            ; $71b8: $80
	dec b                                            ; $71b9: $05
	rlca                                             ; $71ba: $07
	ld b, $07                                        ; $71bb: $06 $07
	inc bc                                           ; $71bd: $03

jr_01b_71be:
	inc bc                                           ; $71be: $03
	ccf                                              ; $71bf: $3f
	ccf                                              ; $71c0: $3f
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	rst $38                                          ; $71c3: $ff
	rst $38                                          ; $71c4: $ff
	ld h, c                                          ; $71c5: $61
	ld a, a                                          ; $71c6: $7f
	add c                                            ; $71c7: $81
	rst $38                                          ; $71c8: $ff
	add a                                            ; $71c9: $87
	rst $38                                          ; $71ca: $ff
	ld b, d                                          ; $71cb: $42
	ld a, [hl]                                       ; $71cc: $7e
	ld b, a                                          ; $71cd: $47
	ld a, a                                          ; $71ce: $7f
	ccf                                              ; $71cf: $3f
	ccf                                              ; $71d0: $3f
	ld e, a                                          ; $71d1: $5f
	ld a, a                                          ; $71d2: $7f
	ld e, a                                          ; $71d3: $5f
	ld a, a                                          ; $71d4: $7f
	cp e                                             ; $71d5: $bb
	ei                                               ; $71d6: $fb
	ld [hl], h                                       ; $71d7: $74
	adc h                                            ; $71d8: $8c
	rst FarCall                                          ; $71d9: $f7
	rst SubAFromBC                                          ; $71da: $e7
	rst SubAFromBC                                          ; $71db: $e7
	rst JumpTable                                          ; $71dc: $c7
	rst JumpTable                                          ; $71dd: $c7
	rst SubAFromBC                                          ; $71de: $e7
	rst SubAFromBC                                          ; $71df: $e7
	rst $38                                          ; $71e0: $ff
	rst $38                                          ; $71e1: $ff
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	db $fc                                           ; $71e4: $fc
	call nz, $08f8                                   ; $71e5: $c4 $f8 $08
	ldh a, [$30]                                     ; $71e8: $f0 $30
	ret nz                                           ; $71ea: $c0

	ret nz                                           ; $71eb: $c0

	ld l, a                                          ; $71ec: $6f
	sbc h                                            ; $71ed: $9c
	db $dd                                           ; $71ee: $dd
	add b                                            ; $71ef: $80
	rst SubAFromDE                                          ; $71f0: $df
	ret nz                                           ; $71f1: $c0

	db $dd                                           ; $71f2: $dd
	ldh [$dd], a                                     ; $71f3: $e0 $dd
	ldh a, [$df]                                     ; $71f5: $f0 $df
	db $fc                                           ; $71f7: $fc
	ld l, a                                          ; $71f8: $6f
	or d                                             ; $71f9: $b2
	rst SubAFromDE                                          ; $71fa: $df
	ld de, $0fdf                                     ; $71fb: $11 $df $0f
	sbc [hl]                                         ; $71fe: $9e
	inc b                                            ; $71ff: $04
	ld a, e                                          ; $7200: $7b
	or b                                             ; $7201: $b0
	add b                                            ; $7202: $80
	ld [bc], a                                       ; $7203: $02
	inc bc                                           ; $7204: $03
	inc b                                            ; $7205: $04
	rlca                                             ; $7206: $07
	inc h                                            ; $7207: $24
	daa                                              ; $7208: $27
	ld [hl], h                                       ; $7209: $74
	ld d, a                                          ; $720a: $57
	di                                               ; $720b: $f3
	sub e                                            ; $720c: $93
	ld a, [hl]                                       ; $720d: $7e
	ld l, a                                          ; $720e: $6f
	rra                                              ; $720f: $1f
	ld [de], a                                       ; $7210: $12
	rra                                              ; $7211: $1f
	ld de, $131f                                     ; $7212: $11 $1f $13
	rra                                              ; $7215: $1f
	ld de, $0000                                     ; $7216: $11 $00 $00
	call c, $33dc                                    ; $7219: $dc $dc $33
	rst $38                                          ; $721c: $ff
	sbc b                                            ; $721d: $98
	rst $38                                          ; $721e: $ff
	ld a, a                                          ; $721f: $7f
	rst $38                                          ; $7220: $ff
	jr z, jr_01b_71be                                ; $7221: $28 $9b

	rst $38                                          ; $7223: $ff
	ld d, d                                          ; $7224: $52
	rst $38                                          ; $7225: $ff
	ld c, c                                          ; $7226: $49
	ld a, e                                          ; $7227: $7b
	ld c, c                                          ; $7228: $49
	sub a                                            ; $7229: $97
	rst AddAOntoHL                                          ; $722a: $ef
	cp e                                             ; $722b: $bb
	rst $38                                          ; $722c: $ff
	sub $dd                                          ; $722d: $d6 $dd
	ld h, a                                          ; $722f: $67
	rst $38                                          ; $7230: $ff
	ld h, [hl]                                       ; $7231: $66

jr_01b_7232:
	ld a, e                                          ; $7232: $7b
	cp $9c                                           ; $7233: $fe $9c
	sbc b                                            ; $7235: $98
	rst AddAOntoHL                                          ; $7236: $ef
	reti                                             ; $7237: $d9


	ld l, a                                          ; $7238: $6f
	nop                                              ; $7239: $00
	rst SubAFromDE                                          ; $723a: $df
	ldh [$df], a                                     ; $723b: $e0 $df
	ret nz                                           ; $723d: $c0

	ld a, [hl]                                       ; $723e: $7e
	db $fc                                           ; $723f: $fc
	sbc [hl]                                         ; $7240: $9e
	ld h, b                                          ; $7241: $60
	ld a, e                                          ; $7242: $7b
	cp $8b                                           ; $7243: $fe $8b
	ld d, b                                          ; $7245: $50
	ldh a, [$d4]                                     ; $7246: $f0 $d4
	ldh a, [$a4]                                     ; $7248: $f0 $a4
	ldh [$ee], a                                     ; $724a: $e0 $ee
	jr nz, jr_01b_7232                               ; $724c: $20 $e4

	jr nz, @-$3a                                     ; $724e: $20 $c4

	ret nz                                           ; $7250: $c0

	sbc b                                            ; $7251: $98
	sbc b                                            ; $7252: $98
	ld a, $26                                        ; $7253: $3e $26
	rrca                                             ; $7255: $0f
	ld [$0707], sp                                   ; $7256: $08 $07 $07
	push af                                          ; $7259: $f5
	rst SubAFromDE                                          ; $725a: $df
	ld bc, $9a7f                                     ; $725b: $01 $7f $9a
	rst SubAFromDE                                          ; $725e: $df
	inc bc                                           ; $725f: $03
	rst SubAFromDE                                          ; $7260: $df
	rlca                                             ; $7261: $07
	ld a, [hl]                                       ; $7262: $7e
	add $77                                          ; $7263: $c6 $77
	ld b, d                                          ; $7265: $42
	rst $38                                          ; $7266: $ff
	adc h                                            ; $7267: $8c
	cp [hl]                                          ; $7268: $be
	rst FarCall                                          ; $7269: $f7
	ld a, [hl+]                                      ; $726a: $2a
	rst $38                                          ; $726b: $ff
	push de                                          ; $726c: $d5
	rst $38                                          ; $726d: $ff
	ld hl, $213f                                     ; $726e: $21 $3f $21
	ccf                                              ; $7271: $3f
	cpl                                              ; $7272: $2f
	ccf                                              ; $7273: $3f
	ld a, e                                          ; $7274: $7b
	ld a, a                                          ; $7275: $7f
	cp l                                             ; $7276: $bd
	rst $38                                          ; $7277: $ff
	ld [hl], a                                       ; $7278: $77
	rst FarCall                                          ; $7279: $f7
	db $e4                                           ; $727a: $e4
	ld a, e                                          ; $727b: $7b
	ld b, h                                          ; $727c: $44
	ld h, a                                          ; $727d: $67
	ld b, d                                          ; $727e: $42
	rst $38                                          ; $727f: $ff
	sub l                                            ; $7280: $95
	sbc a                                            ; $7281: $9f
	sub l                                            ; $7282: $95
	ld a, a                                          ; $7283: $7f
	pop af                                           ; $7284: $f1
	ld a, [hl]                                       ; $7285: $7e
	add d                                            ; $7286: $82
	db $fc                                           ; $7287: $fc
	adc h                                            ; $7288: $8c
	jr nc, jr_01b_72bb                               ; $7289: $30 $30

	ld [hl], a                                       ; $728b: $77
	ld b, [hl]                                       ; $728c: $46
	db $dd                                           ; $728d: $dd
	ret nz                                           ; $728e: $c0

	ld l, a                                          ; $728f: $6f
	ld b, h                                          ; $7290: $44
	ld h, a                                          ; $7291: $67
	ld b, d                                          ; $7292: $42
	ld l, $80                                        ; $7293: $2e $80
	sbc e                                            ; $7295: $9b
	sbc a                                            ; $7296: $9f
	db $fd                                           ; $7297: $fd
	cp a                                             ; $7298: $bf
	db $e4                                           ; $7299: $e4
	halt                                             ; $729a: $76
	add b                                            ; $729b: $80
	adc a                                            ; $729c: $8f
	cp $e3                                           ; $729d: $fe $e3
	inc e                                            ; $729f: $1c
	inc e                                            ; $72a0: $1c
	ld [hl+], a                                      ; $72a1: $22
	ld a, $55                                        ; $72a2: $3e $55
	ld a, a                                          ; $72a4: $7f
	ld d, l                                          ; $72a5: $55
	ld a, a                                          ; $72a6: $7f
	pop bc                                           ; $72a7: $c1
	rst $38                                          ; $72a8: $ff
	ld [$f67e], a                                    ; $72a9: $ea $7e $f6
	or [hl]                                          ; $72ac: $b6
	ld a, $a0                                        ; $72ad: $3e $a0
	ld a, a                                          ; $72af: $7f
	ret z                                            ; $72b0: $c8

	ld a, a                                          ; $72b1: $7f
	cp $9b                                           ; $72b2: $fe $9b
	ld b, b                                          ; $72b4: $40
	ret nz                                           ; $72b5: $c0

	add b                                            ; $72b6: $80
	add b                                            ; $72b7: $80
	db $e3                                           ; $72b8: $e3
	rst SubAFromDE                                          ; $72b9: $df
	inc bc                                           ; $72ba: $03

jr_01b_72bb:
	ld a, [hl]                                       ; $72bb: $7e
	and $89                                          ; $72bc: $e6 $89
	add hl, bc                                       ; $72be: $09
	ld c, $09                                        ; $72bf: $0e $09
	rrca                                             ; $72c1: $0f
	ld [de], a                                       ; $72c2: $12
	rra                                              ; $72c3: $1f
	inc e                                            ; $72c4: $1c
	rra                                              ; $72c5: $1f
	dec d                                            ; $72c6: $15
	rla                                              ; $72c7: $17
	inc bc                                           ; $72c8: $03
	ld [bc], a                                       ; $72c9: $02
	ld bc, $0503                                     ; $72ca: $01 $03 $05
	ld b, $0f                                        ; $72cd: $06 $0f
	rrca                                             ; $72cf: $0f
	ld a, a                                          ; $72d0: $7f
	ld a, c                                          ; $72d1: $79
	rst $38                                          ; $72d2: $ff
	add [hl]                                         ; $72d3: $86
	db $fd                                           ; $72d4: $fd
	rst SubAFromDE                                          ; $72d5: $df
	rst AddAOntoHL                                          ; $72d6: $ef
	add c                                            ; $72d7: $81
	db $10                                           ; $72d8: $10
	rst $38                                          ; $72d9: $ff
	db $fc                                           ; $72da: $fc
	inc bc                                           ; $72db: $03
	cp $fd                                           ; $72dc: $fe $fd
	inc bc                                           ; $72de: $03
	cp $a5                                           ; $72df: $fe $a5
	rst $38                                          ; $72e1: $ff
	and h                                            ; $72e2: $a4
	rst $38                                          ; $72e3: $ff
	or [hl]                                          ; $72e4: $b6
	ld e, e                                          ; $72e5: $5b
	rst $38                                          ; $72e6: $ff
	call $ce77                                       ; $72e7: $cd $77 $ce
	rst $38                                          ; $72ea: $ff
	call z, $ecff                                    ; $72eb: $cc $ff $ec
	rst $38                                          ; $72ee: $ff
	sbc c                                            ; $72ef: $99
	cp $87                                           ; $72f0: $fe $87
	ld a, a                                          ; $72f2: $7f
	ld a, h                                          ; $72f3: $7c
	rlca                                             ; $72f4: $07
	ld b, $36                                        ; $72f5: $06 $36
	inc a                                            ; $72f7: $3c
	rst SubAFromDE                                          ; $72f8: $df
	ld bc, $e86e                                     ; $72f9: $01 $6e $e8
	add d                                            ; $72fc: $82
	ld sp, hl                                        ; $72fd: $f9
	rst GetHLinHL                                          ; $72fe: $cf
	db $fd                                           ; $72ff: $fd
	db $e3                                           ; $7300: $e3
	ld e, [hl]                                       ; $7301: $5e
	ld [hl], d                                       ; $7302: $72
	ld a, [hl]                                       ; $7303: $7e
	ld a, [hl]                                       ; $7304: $7e
	jp nc, Jump_01b_55fe                             ; $7305: $d2 $fe $55

	rst $38                                          ; $7308: $ff
	ld d, l                                          ; $7309: $55
	rst $38                                          ; $730a: $ff
	db $d3                                           ; $730b: $d3
	rst $38                                          ; $730c: $ff
	ld a, [hl]                                       ; $730d: $7e
	ld a, [hl]                                       ; $730e: $7e
	ld a, h                                          ; $730f: $7c
	ld d, h                                          ; $7310: $54
	ld a, h                                          ; $7311: $7c
	ld a, h                                          ; $7312: $7c
	cp $92                                           ; $7313: $fe $92
	inc de                                           ; $7315: $13
	rst $38                                          ; $7316: $ff
	ld sp, hl                                        ; $7317: $f9
	rst $38                                          ; $7318: $ff
	rrca                                             ; $7319: $0f
	ld [hl], c                                       ; $731a: $71
	and d                                            ; $731b: $a2
	scf                                              ; $731c: $37
	add b                                            ; $731d: $80
	ld a, a                                          ; $731e: $7f
	add d                                            ; $731f: $82
	ld a, a                                          ; $7320: $7f
	cp $df                                           ; $7321: $fe $df
	rlca                                             ; $7323: $07
	inc hl                                           ; $7324: $23
	add b                                            ; $7325: $80
	sub b                                            ; $7326: $90
	ld bc, $00ff                                     ; $7327: $01 $ff $00
	add a                                            ; $732a: $87
	db $fc                                           ; $732b: $fc
	ld c, a                                          ; $732c: $4f
	db $fc                                           ; $732d: $fc
	ei                                               ; $732e: $fb
	db $fd                                           ; $732f: $fd
	rst $38                                          ; $7330: $ff
	add a                                            ; $7331: $87
	ld a, a                                          ; $7332: $7f
	ld a, a                                          ; $7333: $7f
	rlca                                             ; $7334: $07
	inc b                                            ; $7335: $04
	ld a, e                                          ; $7336: $7b
	ld d, b                                          ; $7337: $50
	sbc [hl]                                         ; $7338: $9e
	ld bc, $8657                                     ; $7339: $01 $57 $86
	halt                                             ; $733c: $76
	ld a, h                                          ; $733d: $7c
	ld a, a                                          ; $733e: $7f
	cp $6f                                           ; $733f: $fe $6f
	add b                                            ; $7341: $80
	sub [hl]                                         ; $7342: $96
	rst $38                                          ; $7343: $ff
	rst GetHLinHL                                          ; $7344: $cf
	db $fd                                           ; $7345: $fd
	rst FarCall                                          ; $7346: $f7
	cp a                                             ; $7347: $bf
	db $d3                                           ; $7348: $d3
	rst $38                                          ; $7349: $ff
	ld sp, hl                                        ; $734a: $f9
	xor a                                            ; $734b: $af
	ld a, d                                          ; $734c: $7a
	ld a, d                                          ; $734d: $7a
	sub c                                            ; $734e: $91
	halt                                             ; $734f: $76
	ld a, [hl]                                       ; $7350: $7e
	ld a, [hl]                                       ; $7351: $7e
	ld e, [hl]                                       ; $7352: $5e
	ld a, h                                          ; $7353: $7c
	ld [hl], h                                       ; $7354: $74
	cp $be                                           ; $7355: $fe $be
	ld l, a                                          ; $7357: $6f
	db $eb                                           ; $7358: $eb
	ld c, l                                          ; $7359: $4d
	rst GetHLinHL                                          ; $735a: $cf
	adc l                                            ; $735b: $8d
	adc a                                            ; $735c: $8f
	rla                                              ; $735d: $17
	add b                                            ; $735e: $80
	ld a, a                                          ; $735f: $7f
	cp a                                             ; $7360: $bf
	ld a, l                                          ; $7361: $7d
	ld a, [hl]                                       ; $7362: $7e
	dec de                                           ; $7363: $1b
	nop                                              ; $7364: $00
	ld a, a                                          ; $7365: $7f
	add b                                            ; $7366: $80
	ld a, a                                          ; $7367: $7f
	ld [bc], a                                       ; $7368: $02
	ld a, [hl]                                       ; $7369: $7e
	cp $9a                                           ; $736a: $fe $9a
	xor d                                            ; $736c: $aa
	rst $38                                          ; $736d: $ff
	reti                                             ; $736e: $d9


	cp $87                                           ; $736f: $fe $87
	ld h, l                                          ; $7371: $65
	ld [hl+], a                                      ; $7372: $22
	ld a, [hl]                                       ; $7373: $7e
	sbc h                                            ; $7374: $9c
	ld a, a                                          ; $7375: $7f
	cp $76                                           ; $7376: $fe $76
	sub h                                            ; $7378: $94
	ld a, [hl]                                       ; $7379: $7e
	ld d, [hl]                                       ; $737a: $56
	halt                                             ; $737b: $76
	ld d, h                                          ; $737c: $54
	ld [hl], a                                       ; $737d: $77
	ld a, [$f877]                                    ; $737e: $fa $77 $f8
	ld a, a                                          ; $7381: $7f
	cp $ff                                           ; $7382: $fe $ff
	ld [hl], l                                       ; $7384: $75
	db $f4                                           ; $7385: $f4
	add b                                            ; $7386: $80
	db $10                                           ; $7387: $10
	rra                                              ; $7388: $1f
	inc hl                                           ; $7389: $23
	ccf                                              ; $738a: $3f
	inc l                                            ; $738b: $2c
	ccf                                              ; $738c: $3f
	ld e, c                                          ; $738d: $59
	ld a, a                                          ; $738e: $7f
	ld [hl], d                                       ; $738f: $72
	ld a, a                                          ; $7390: $7f
	ld [hl+], a                                      ; $7391: $22
	ccf                                              ; $7392: $3f
	ld h, $3d                                        ; $7393: $26 $3d
	ld c, a                                          ; $7395: $4f
	ld a, e                                          ; $7396: $7b
	ld c, l                                          ; $7397: $4d
	ld a, a                                          ; $7398: $7f
	ld c, a                                          ; $7399: $4f
	ld a, e                                          ; $739a: $7b
	ld c, a                                          ; $739b: $4f
	ld a, e                                          ; $739c: $7b
	cpl                                              ; $739d: $2f
	jr c, jr_01b_73cf                                ; $739e: $38 $2f

	inc a                                            ; $73a0: $3c
	ld h, b                                          ; $73a1: $60
	ld h, b                                          ; $73a2: $60
	ret nz                                           ; $73a3: $c0

	ret nz                                           ; $73a4: $c0

	ld h, [hl]                                       ; $73a5: $66
	add b                                            ; $73a6: $80
	and $99                                          ; $73a7: $e6 $99
	rst $38                                          ; $73a9: $ff
	ld h, $fe                                        ; $73aa: $26 $fe
	db $ec                                           ; $73ac: $ec
	db $fc                                           ; $73ad: $fc
	ld d, d                                          ; $73ae: $52
	cp $ca                                           ; $73af: $fe $ca
	cp [hl]                                          ; $73b1: $be
	reti                                             ; $73b2: $d9


	cp a                                             ; $73b3: $bf
	reti                                             ; $73b4: $d9


	cpl                                              ; $73b5: $2f
	db $fd                                           ; $73b6: $fd
	scf                                              ; $73b7: $37
	db $dd                                           ; $73b8: $dd
	ccf                                              ; $73b9: $3f
	cp $36                                           ; $73ba: $fe $36
	ld a, [$fa3e]                                    ; $73bc: $fa $3e $fa
	adc $f0                                          ; $73bf: $ce $f0
	or h                                             ; $73c1: $b4
	rrca                                             ; $73c2: $0f
	rrca                                             ; $73c3: $0f
	add hl, bc                                       ; $73c4: $09
	ld c, $94                                        ; $73c5: $0e $94
	dec d                                            ; $73c7: $15
	rra                                              ; $73c8: $1f
	rra                                              ; $73c9: $1f
	ld d, $1f                                        ; $73ca: $16 $1f
	db $10                                           ; $73cc: $10
	rrca                                             ; $73cd: $0f
	rrca                                             ; $73ce: $0f

jr_01b_73cf:
	dec b                                            ; $73cf: $05
	rlca                                             ; $73d0: $07
	ld a, [bc]                                       ; $73d1: $0a
	ld a, b                                          ; $73d2: $78
	ld e, d                                          ; $73d3: $5a
	sbc $07                                          ; $73d4: $de $07
	sbc [hl]                                         ; $73d6: $9e
	dec b                                            ; $73d7: $05
	ld a, b                                          ; $73d8: $78
	ld h, l                                          ; $73d9: $65
	sub h                                            ; $73da: $94
	rla                                              ; $73db: $17
	daa                                              ; $73dc: $27
	dec sp                                           ; $73dd: $3b
	ld b, [hl]                                       ; $73de: $46
	ld a, [hl]                                       ; $73df: $7e
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	ldh a, [$b0]                                     ; $73e2: $f0 $b0
	ld hl, sp-$58                                    ; $73e4: $f8 $a8
	ld a, e                                          ; $73e6: $7b
	cp $94                                           ; $73e7: $fe $94
	ld e, b                                          ; $73e9: $58
	db $fc                                           ; $73ea: $fc
	ld c, h                                          ; $73eb: $4c
	cp $e2                                           ; $73ec: $fe $e2
	cp [hl]                                          ; $73ee: $be
	db $f4                                           ; $73ef: $f4
	xor [hl]                                         ; $73f0: $ae
	ld a, [$f4b4]                                    ; $73f1: $fa $b4 $f4
	ld a, c                                          ; $73f4: $79
	ld d, h                                          ; $73f5: $54
	ld a, a                                          ; $73f6: $7f
	ld [hl], l                                       ; $73f7: $75
	ld a, l                                          ; $73f8: $7d
	cp d                                             ; $73f9: $ba
	sbc l                                            ; $73fa: $9d
	jr nz, jr_01b_742d                               ; $73fb: $20 $30

	ld a, c                                          ; $73fd: $79
	ret nc                                           ; $73fe: $d0

	rst SubAFromDE                                          ; $73ff: $df
	cp $df                                           ; $7400: $fe $df
	ld b, $df                                        ; $7402: $06 $df
	inc bc                                           ; $7404: $03
	adc l                                            ; $7405: $8d
	ld h, [hl]                                       ; $7406: $66
	ld h, a                                          ; $7407: $67
	sbc c                                            ; $7408: $99
	rst $38                                          ; $7409: $ff
	ld h, h                                          ; $740a: $64
	ld a, a                                          ; $740b: $7f
	scf                                              ; $740c: $37
	ccf                                              ; $740d: $3f
	ld c, d                                          ; $740e: $4a
	ld a, a                                          ; $740f: $7f
	ld d, e                                          ; $7410: $53
	ld a, l                                          ; $7411: $7d
	sbc e                                            ; $7412: $9b
	db $fd                                           ; $7413: $fd
	sbc e                                            ; $7414: $9b
	db $f4                                           ; $7415: $f4
	cp a                                             ; $7416: $bf
	ldh [$78], a                                     ; $7417: $e0 $78
	ld b, d                                          ; $7419: $42
	sub e                                            ; $741a: $93
	ld a, h                                          ; $741b: $7c
	ld e, a                                          ; $741c: $5f
	ld [hl], h                                       ; $741d: $74
	ld e, a                                          ; $741e: $5f
	ld [hl], e                                       ; $741f: $73
	dec c                                            ; $7420: $0d
	dec hl                                           ; $7421: $2b
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	ldh [$e0], a                                     ; $7424: $e0 $e0
	jr c, jr_01b_74a1                                ; $7426: $38 $79

	xor b                                            ; $7428: $a8
	add a                                            ; $7429: $87
	jp nz, $3afe                                     ; $742a: $c2 $fe $3a

jr_01b_742d:
	cp $9d                                           ; $742d: $fe $9d
	rst $38                                          ; $742f: $ff
	ld b, a                                          ; $7430: $47
	rst $38                                          ; $7431: $ff
	ld b, d                                          ; $7432: $42
	cp $62                                           ; $7433: $fe $62
	cp [hl]                                          ; $7435: $be
	ld sp, hl                                        ; $7436: $f9
	rra                                              ; $7437: $1f
	ld sp, hl                                        ; $7438: $f9
	rst SubAFromDE                                          ; $7439: $df
	ld sp, hl                                        ; $743a: $f9
	rst $38                                          ; $743b: $ff
	ld sp, hl                                        ; $743c: $f9
	cp a                                             ; $743d: $bf
	ld a, [$fa1e]                                    ; $743e: $fa $1e $fa
	ld a, $77                                        ; $7441: $3e $77
	add b                                            ; $7443: $80
	ld a, h                                          ; $7444: $7c
	reti                                             ; $7445: $d9


	rra                                              ; $7446: $1f
	add b                                            ; $7447: $80
	rst SubAFromDE                                          ; $7448: $df
	db $e4                                           ; $7449: $e4
	ld [hl], e                                       ; $744a: $73
	ld a, [hl]                                       ; $744b: $7e
	sbc [hl]                                         ; $744c: $9e
	ld l, b                                          ; $744d: $68
	ld a, e                                          ; $744e: $7b
	ld a, [hl]                                       ; $744f: $7e
	sbc l                                            ; $7450: $9d
	call z, $7b7e                                    ; $7451: $cc $7e $7b
	ld a, [hl]                                       ; $7454: $7e
	ld b, a                                          ; $7455: $47
	add b                                            ; $7456: $80
	inc sp                                           ; $7457: $33
	nop                                              ; $7458: $00
	sbc b                                            ; $7459: $98
	ld a, b                                          ; $745a: $78
	ld c, a                                          ; $745b: $4f
	ld a, d                                          ; $745c: $7a
	ld c, a                                          ; $745d: $4f
	ld a, l                                          ; $745e: $7d
	ld c, a                                          ; $745f: $4f
	ld a, d                                          ; $7460: $7a
	inc hl                                           ; $7461: $23
	nop                                              ; $7462: $00
	sbc b                                            ; $7463: $98
	rlca                                             ; $7464: $07
	db $fd                                           ; $7465: $fd
	rla                                              ; $7466: $17
	cp $2e                                           ; $7467: $fe $2e
	ld a, [$7716]                                    ; $7469: $fa $16 $77
	nop                                              ; $746c: $00
	rst SubAFromDE                                          ; $746d: $df
	inc bc                                           ; $746e: $03
	ld [hl], a                                       ; $746f: $77
	jp nz, $2080                                     ; $7470: $c2 $80 $20

	ccf                                              ; $7473: $3f
	ld b, c                                          ; $7474: $41
	ld a, a                                          ; $7475: $7f
	ld b, e                                          ; $7476: $43
	ld a, [hl]                                       ; $7477: $7e

jr_01b_7478:
	add e                                            ; $7478: $83
	cp $87                                           ; $7479: $fe $87
	db $fd                                           ; $747b: $fd
	adc a                                            ; $747c: $8f
	ld a, [$fd87]                                    ; $747d: $fa $87 $fd

jr_01b_7480:
	ld b, e                                          ; $7480: $43
	ld a, [hl]                                       ; $7481: $7e
	ld b, c                                          ; $7482: $41
	ld a, a                                          ; $7483: $7f
	jr nz, jr_01b_74c5                               ; $7484: $20 $3f

	jr jr_01b_74a7                                   ; $7486: $18 $1f

	ld b, $07                                        ; $7488: $06 $07
	ld bc, $c001                                     ; $748a: $01 $01 $c0
	ret nz                                           ; $748d: $c0

	jr nc, jr_01b_7480                               ; $748e: $30 $f0

	ld [$407b], sp                                   ; $7490: $08 $7b $40
	add a                                            ; $7493: $87
	ld b, h                                          ; $7494: $44
	db $fc                                           ; $7495: $fc
	ldh [c], a                                       ; $7496: $e2
	cp [hl]                                          ; $7497: $be
	ldh [c], a                                       ; $7498: $e2
	cp [hl]                                          ; $7499: $be
	pop hl                                           ; $749a: $e1
	ccf                                              ; $749b: $3f
	pop hl                                           ; $749c: $e1
	rst $38                                          ; $749d: $ff
	pop hl                                           ; $749e: $e1
	ccf                                              ; $749f: $3f
	ldh [c], a                                       ; $74a0: $e2

jr_01b_74a1:
	ld a, $c2                                        ; $74a1: $3e $c2
	cp $04                                           ; $74a3: $fe $04
	db $fc                                           ; $74a5: $fc
	ld [bc], a                                       ; $74a6: $02

jr_01b_74a7:
	cp $19                                           ; $74a7: $fe $19
	rst $38                                          ; $74a9: $ff
	rst SubAFromBC                                          ; $74aa: $e7
	rst SubAFromBC                                          ; $74ab: $e7
	halt                                             ; $74ac: $76
	inc h                                            ; $74ad: $24
	ld [hl], a                                       ; $74ae: $77
	cp [hl]                                          ; $74af: $be
	ld a, h                                          ; $74b0: $7c
	add b                                            ; $74b1: $80
	sbc b                                            ; $74b2: $98
	ld b, b                                          ; $74b3: $40
	ld a, a                                          ; $74b4: $7f
	ld b, c                                          ; $74b5: $41
	ld a, a                                          ; $74b6: $7f
	add b                                            ; $74b7: $80
	rst $38                                          ; $74b8: $ff
	add c                                            ; $74b9: $81
	ld a, e                                          ; $74ba: $7b
	cp $7f                                           ; $74bb: $fe $7f
	ret nz                                           ; $74bd: $c0

	ld a, a                                          ; $74be: $7f
	cp $77                                           ; $74bf: $fe $77
	ldh a, [$9b]                                     ; $74c1: $f0 $9b
	sbc h                                            ; $74c3: $9c
	rst $38                                          ; $74c4: $ff

jr_01b_74c5:
	db $e3                                           ; $74c5: $e3
	db $e3                                           ; $74c6: $e3
	halt                                             ; $74c7: $76
	ld b, h                                          ; $74c8: $44
	ld a, h                                          ; $74c9: $7c
	ld a, [hl+]                                      ; $74ca: $2a
	sbc [hl]                                         ; $74cb: $9e
	db $10                                           ; $74cc: $10
	ld [hl], e                                       ; $74cd: $73
	cp h                                             ; $74ce: $bc
	ld [hl], a                                       ; $74cf: $77
	call z, $fe77                                    ; $74d0: $cc $77 $fe
	sub l                                            ; $74d3: $95
	add h                                            ; $74d4: $84
	db $fc                                           ; $74d5: $fc
	add h                                            ; $74d6: $84
	db $fc                                           ; $74d7: $fc
	ld [$10f8], sp                                   ; $74d8: $08 $f8 $10
	ldh a, [$60]                                     ; $74db: $f0 $60
	ldh [$6c], a                                     ; $74dd: $e0 $6c
	ret z                                            ; $74df: $c8

	rst SubAFromDE                                          ; $74e0: $df
	jr jr_01b_7478                                   ; $74e1: $18 $95

	ld a, $36                                        ; $74e3: $3e $36
	ld a, a                                          ; $74e5: $7f
	ld b, e                                          ; $74e6: $43
	rst $38                                          ; $74e7: $ff
	add c                                            ; $74e8: $81
	cp $82                                           ; $74e9: $fe $82
	ld a, a                                          ; $74eb: $7f
	ld h, l                                          ; $74ec: $65
	ld a, e                                          ; $74ed: $7b
	cp e                                             ; $74ee: $bb
	sub [hl]                                         ; $74ef: $96
	ld b, c                                          ; $74f0: $41
	ld a, $32                                        ; $74f1: $3e $32
	ld c, $0a                                        ; $74f3: $0e $0a
	rlca                                             ; $74f5: $07
	dec b                                            ; $74f6: $05
	ld [bc], a                                       ; $74f7: $02
	ld [bc], a                                       ; $74f8: $02
	ldh a, [c]                                       ; $74f9: $f2
	sub d                                            ; $74fa: $92
	ld b, b                                          ; $74fb: $40
	nop                                              ; $74fc: $00
	ld h, b                                          ; $74fd: $60
	nop                                              ; $74fe: $00
	jr nc, jr_01b_7501                               ; $74ff: $30 $00

jr_01b_7501:
	jr jr_01b_7503                                   ; $7501: $18 $00

jr_01b_7503:
	jr c, jr_01b_7505                                ; $7503: $38 $00

jr_01b_7505:
	jr c, jr_01b_7527                                ; $7505: $38 $20

	db $10                                           ; $7507: $10
	db $f4                                           ; $7508: $f4
	adc [hl]                                         ; $7509: $8e
	inc c                                            ; $750a: $0c
	nop                                              ; $750b: $00
	inc a                                            ; $750c: $3c
	nop                                              ; $750d: $00
	or $00                                           ; $750e: $f6 $00
	adc $01                                          ; $7510: $ce $01
	ld a, d                                          ; $7512: $7a
	nop                                              ; $7513: $00
	ld h, e                                          ; $7514: $63
	db $10                                           ; $7515: $10
	daa                                              ; $7516: $27
	nop                                              ; $7517: $00
	ld [hl], $00                                     ; $7518: $36 $00
	ld [hl], b                                       ; $751a: $70
	ld a, e                                          ; $751b: $7b
	sub $fa                                          ; $751c: $d6 $fa
	rst GetHLinHL                                          ; $751e: $cf
	inc bc                                           ; $751f: $03
	ei                                               ; $7520: $fb
	rst SubAFromDE                                          ; $7521: $df
	inc b                                            ; $7522: $04
	add a                                            ; $7523: $87
	dec bc                                           ; $7524: $0b
	rrca                                             ; $7525: $0f
	ld a, [bc]                                       ; $7526: $0a

jr_01b_7527:
	rrca                                             ; $7527: $0f
	dec de                                           ; $7528: $1b
	rra                                              ; $7529: $1f
	ld a, [hl+]                                      ; $752a: $2a
	ccf                                              ; $752b: $3f
	ld h, $3f                                        ; $752c: $26 $3f
	dec h                                            ; $752e: $25
	ccf                                              ; $752f: $3f
	ld e, l                                          ; $7530: $5d
	ld e, a                                          ; $7531: $5f
	inc h                                            ; $7532: $24
	ccf                                              ; $7533: $3f
	ld d, h                                          ; $7534: $54
	ld e, a                                          ; $7535: $5f
	ld [de], a                                       ; $7536: $12
	rra                                              ; $7537: $1f
	add hl, de                                       ; $7538: $19
	rra                                              ; $7539: $1f
	inc c                                            ; $753a: $0c
	rrca                                             ; $753b: $0f
	db $fd                                           ; $753c: $fd
	rst SubAFromDE                                          ; $753d: $df
	ld b, b                                          ; $753e: $40
	add l                                            ; $753f: $85
	and b                                            ; $7540: $a0
	ldh [rAUD4LEN], a                                ; $7541: $e0 $20
	ldh [rSVBK], a                                   ; $7543: $e0 $70
	ldh a, [hDisp0_WY]                                     ; $7545: $f0 $88
	ld hl, sp+$04                                    ; $7547: $f8 $04
	db $fc                                           ; $7549: $fc
	ld [hl], h                                       ; $754a: $74
	db $fc                                           ; $754b: $fc
	inc a                                            ; $754c: $3c
	db $ec                                           ; $754d: $ec
	rra                                              ; $754e: $1f
	di                                               ; $754f: $f3
	sbc e                                            ; $7550: $9b
	db $fd                                           ; $7551: $fd
	cp a                                             ; $7552: $bf
	db $ec                                           ; $7553: $ec
	ld a, a                                          ; $7554: $7f
	ret nz                                           ; $7555: $c0

	ccf                                              ; $7556: $3f
	pop hl                                           ; $7557: $e1
	cp $e3                                           ; $7558: $fe $e3
	ld sp, hl                                        ; $755a: $f9
	reti                                             ; $755b: $d9


	ld bc, $338f                                     ; $755c: $01 $8f $33
	ld [hl-], a                                      ; $755f: $32
	ld a, a                                          ; $7560: $7f
	ld c, h                                          ; $7561: $4c
	rst $38                                          ; $7562: $ff
	adc c                                            ; $7563: $89
	ld a, [hl]                                       ; $7564: $7e
	ld [hl], d                                       ; $7565: $72
	rst $38                                          ; $7566: $ff
	call $b5ff                                       ; $7567: $cd $ff $b5
	rst $38                                          ; $756a: $ff
	jp $f93f                                         ; $756b: $c3 $3f $f9


	ld sp, hl                                        ; $756e: $f9
	rst SubAFromDE                                          ; $756f: $df
	add b                                            ; $7570: $80
	sub e                                            ; $7571: $93
	ret nz                                           ; $7572: $c0

	ld b, b                                          ; $7573: $40
	ldh [$a0], a                                     ; $7574: $e0 $a0
	ldh a, [$50]                                     ; $7576: $f0 $50
	ld hl, sp+$28                                    ; $7578: $f8 $28
	db $fc                                           ; $757a: $fc
	inc d                                            ; $757b: $14
	ld hl, sp-$08                                    ; $757c: $f8 $f8
	rst FarCall                                          ; $757e: $f7
	rst SubAFromDE                                          ; $757f: $df
	inc bc                                           ; $7580: $03
	rst AddAOntoHL                                          ; $7581: $ef
	rst SubAFromDE                                          ; $7582: $df
	inc bc                                           ; $7583: $03
	add b                                            ; $7584: $80
	inc b                                            ; $7585: $04
	rlca                                             ; $7586: $07
	inc b                                            ; $7587: $04
	rlca                                             ; $7588: $07
	ld [bc], a                                       ; $7589: $02
	inc bc                                           ; $758a: $03
	ccf                                              ; $758b: $3f
	ccf                                              ; $758c: $3f
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	rst $38                                          ; $758f: $ff
	rst $38                                          ; $7590: $ff
	ld h, b                                          ; $7591: $60
	ld a, a                                          ; $7592: $7f
	add b                                            ; $7593: $80
	rst $38                                          ; $7594: $ff
	add a                                            ; $7595: $87
	rst $38                                          ; $7596: $ff
	ld b, d                                          ; $7597: $42
	ld a, [hl]                                       ; $7598: $7e
	inc hl                                           ; $7599: $23
	ccf                                              ; $759a: $3f
	ld b, h                                          ; $759b: $44
	ld a, a                                          ; $759c: $7f
	ld c, d                                          ; $759d: $4a
	ld a, a                                          ; $759e: $7f
	ld a, [hl]                                       ; $759f: $7e
	ld a, a                                          ; $75a0: $7f
	adc e                                            ; $75a1: $8b
	ei                                               ; $75a2: $fb

jr_01b_75a3:
	inc d                                            ; $75a3: $14
	adc h                                            ; $75a4: $8c
	rst FarCall                                          ; $75a5: $f7
	and a                                            ; $75a6: $a7
	rst SubAFromBC                                          ; $75a7: $e7
	ld b, a                                          ; $75a8: $47
	rst JumpTable                                          ; $75a9: $c7
	daa                                              ; $75aa: $27
	rst SubAFromBC                                          ; $75ab: $e7
	rst $38                                          ; $75ac: $ff
	rst $38                                          ; $75ad: $ff

jr_01b_75ae:
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	add $fe                                          ; $75b0: $c6 $fe
	inc b                                            ; $75b2: $04
	db $fc                                           ; $75b3: $fc
	jr jr_01b_75ae                                   ; $75b4: $18 $f8

	ldh [$e0], a                                     ; $75b6: $e0 $e0
	ld [hl], a                                       ; $75b8: $77
	sbc [hl]                                         ; $75b9: $9e
	sbc e                                            ; $75ba: $9b
	ld b, b                                          ; $75bb: $40
	ret nz                                           ; $75bc: $c0

	ld b, b                                          ; $75bd: $40
	ret nz                                           ; $75be: $c0

	ld a, e                                          ; $75bf: $7b
	sbc b                                            ; $75c0: $98
	sbc l                                            ; $75c1: $9d
	ret nz                                           ; $75c2: $c0

	jr nz, jr_01b_75a3                               ; $75c3: $20 $de

	ldh [$dd], a                                     ; $75c5: $e0 $dd
	ldh a, [$df]                                     ; $75c7: $f0 $df
	db $fc                                           ; $75c9: $fc
	ld l, a                                          ; $75ca: $6f
	or d                                             ; $75cb: $b2
	rst SubAFromDE                                          ; $75cc: $df
	ld de, $0fdf                                     ; $75cd: $11 $df $0f
	ld a, a                                          ; $75d0: $7f
	or b                                             ; $75d1: $b0
	rst SubAFromDE                                          ; $75d2: $df
	inc bc                                           ; $75d3: $03
	ld a, a                                          ; $75d4: $7f
	xor [hl]                                         ; $75d5: $ae
	ld a, a                                          ; $75d6: $7f
	ld a, [$2492]                                    ; $75d7: $fa $92 $24
	daa                                              ; $75da: $27
	ld [hl], h                                       ; $75db: $74
	ld d, a                                          ; $75dc: $57
	di                                               ; $75dd: $f3
	sub e                                            ; $75de: $93
	ld a, d                                          ; $75df: $7a
	ld l, e                                          ; $75e0: $6b
	rra                                              ; $75e1: $1f
	ld d, $0f                                        ; $75e2: $16 $0f

jr_01b_75e4:
	add hl, bc                                       ; $75e4: $09
	rrca                                             ; $75e5: $0f
	ld a, e                                          ; $75e6: $7b
	db $fd                                           ; $75e7: $fd
	rst $38                                          ; $75e8: $ff
	rst SubAFromDE                                          ; $75e9: $df
	call c, $3394                                    ; $75ea: $dc $94 $33
	rst $38                                          ; $75ed: $ff
	sbc b                                            ; $75ee: $98
	rst $38                                          ; $75ef: $ff
	ld a, a                                          ; $75f0: $7f
	rst $38                                          ; $75f1: $ff
	jr z, @+$01                                      ; $75f2: $28 $ff

	ld d, d                                          ; $75f4: $52
	rst $38                                          ; $75f5: $ff
	ld c, c                                          ; $75f6: $49
	ld a, e                                          ; $75f7: $7b
	ld c, c                                          ; $75f8: $49
	sub a                                            ; $75f9: $97
	rst AddAOntoHL                                          ; $75fa: $ef
	cp e                                             ; $75fb: $bb
	rst $38                                          ; $75fc: $ff
	sub $dd                                          ; $75fd: $d6 $dd
	ld h, a                                          ; $75ff: $67
	rst $38                                          ; $7600: $ff
	ld h, [hl]                                       ; $7601: $66

jr_01b_7602:
	ld a, e                                          ; $7602: $7b
	cp $9c                                           ; $7603: $fe $9c
	sbc b                                            ; $7605: $98
	rst AddAOntoHL                                          ; $7606: $ef
	reti                                             ; $7607: $d9


	ld l, a                                          ; $7608: $6f
	nop                                              ; $7609: $00
	rst SubAFromDE                                          ; $760a: $df
	ldh [$df], a                                     ; $760b: $e0 $df
	ret nz                                           ; $760d: $c0

	ld a, [hl]                                       ; $760e: $7e
	db $fc                                           ; $760f: $fc
	sbc [hl]                                         ; $7610: $9e
	ld h, b                                          ; $7611: $60
	ld a, e                                          ; $7612: $7b
	cp $8e                                           ; $7613: $fe $8e
	ld d, b                                          ; $7615: $50
	ldh a, [$d4]                                     ; $7616: $f0 $d4
	ldh a, [$a4]                                     ; $7618: $f0 $a4
	ldh [$ee], a                                     ; $761a: $e0 $ee
	jr nz, jr_01b_7602                               ; $761c: $20 $e4

	jr nz, jr_01b_75e4                               ; $761e: $20 $c4

	ret nz                                           ; $7620: $c0

	sbc b                                            ; $7621: $98
	sbc b                                            ; $7622: $98
	ld a, $26                                        ; $7623: $3e $26
	ld [$a673], sp                                   ; $7625: $08 $73 $a6
	rst FarCall                                          ; $7628: $f7
	rst SubAFromDE                                          ; $7629: $df
	ld bc, $9a7f                                     ; $762a: $01 $7f $9a
	ld [hl], a                                       ; $762d: $77
	ld b, b                                          ; $762e: $40
	ld a, a                                          ; $762f: $7f
	add sp, $77                                      ; $7630: $e8 $77
	ld b, d                                          ; $7632: $42
	rst $38                                          ; $7633: $ff
	adc c                                            ; $7634: $89
	ld a, $ff                                        ; $7635: $3e $ff
	ld [$c1ff], sp                                   ; $7637: $08 $ff $c1
	rst $38                                          ; $763a: $ff
	add hl, hl                                       ; $763b: $29
	ccf                                              ; $763c: $3f
	ld hl, $4b3f                                     ; $763d: $21 $3f $4b
	ld a, a                                          ; $7640: $7f
	ld h, b                                          ; $7641: $60
	ld a, a                                          ; $7642: $7f
	adc h                                            ; $7643: $8c
	rst $38                                          ; $7644: $ff
	rla                                              ; $7645: $17
	rst FarCall                                          ; $7646: $f7
	inc h                                            ; $7647: $24
	rst SubAFromBC                                          ; $7648: $e7
	rst JumpTable                                          ; $7649: $c7
	rst JumpTable                                          ; $764a: $c7
	ld h, a                                          ; $764b: $67
	ld b, d                                          ; $764c: $42
	rst $38                                          ; $764d: $ff
	sub l                                            ; $764e: $95
	sbc a                                            ; $764f: $9f
	sub l                                            ; $7650: $95
	ld a, a                                          ; $7651: $7f
	push af                                          ; $7652: $f5
	rra                                              ; $7653: $1f
	pop af                                           ; $7654: $f1
	sbc [hl]                                         ; $7655: $9e
	cp $70                                           ; $7656: $fe $70
	ld [hl], b                                       ; $7658: $70
	ld [hl], a                                       ; $7659: $77
	ld b, b                                          ; $765a: $40
	rst SubAFromDE                                          ; $765b: $df
	ret nz                                           ; $765c: $c0

	ld a, a                                          ; $765d: $7f
	db $fc                                           ; $765e: $fc
	ld a, a                                          ; $765f: $7f
	ld b, d                                          ; $7660: $42
	db $db                                           ; $7661: $db
	ldh a, [$6f]                                     ; $7662: $f0 $6f
	ld b, d                                          ; $7664: $42
	ld l, $80                                        ; $7665: $2e $80
	sbc e                                            ; $7667: $9b
	sbc a                                            ; $7668: $9f
	db $fd                                           ; $7669: $fd
	cp a                                             ; $766a: $bf
	db $e4                                           ; $766b: $e4
	ld l, [hl]                                       ; $766c: $6e
	add b                                            ; $766d: $80
	rst SubAFromDE                                          ; $766e: $df
	inc e                                            ; $766f: $1c
	sub e                                            ; $7670: $93
	ld [hl+], a                                      ; $7671: $22
	ld a, $55                                        ; $7672: $3e $55
	ld a, a                                          ; $7674: $7f
	ld d, l                                          ; $7675: $55
	ld a, a                                          ; $7676: $7f
	pop bc                                           ; $7677: $c1
	rst $38                                          ; $7678: $ff
	ld [$f67e], a                                    ; $7679: $ea $7e $f6
	or [hl]                                          ; $767c: $b6
	ld a, $a0                                        ; $767d: $3e $a0
	ld a, a                                          ; $767f: $7f
	ret z                                            ; $7680: $c8

	ld a, a                                          ; $7681: $7f
	cp $76                                           ; $7682: $fe $76
	ld [$77e3], a                                    ; $7684: $ea $e3 $77
	ld c, [hl]                                       ; $7687: $4e
	adc c                                            ; $7688: $89
	add hl, bc                                       ; $7689: $09
	ld c, $09                                        ; $768a: $0e $09
	rrca                                             ; $768c: $0f
	ld [de], a                                       ; $768d: $12
	rra                                              ; $768e: $1f
	inc e                                            ; $768f: $1c
	rra                                              ; $7690: $1f
	dec d                                            ; $7691: $15
	rla                                              ; $7692: $17
	inc bc                                           ; $7693: $03
	ld [bc], a                                       ; $7694: $02
	ld bc, $0503                                     ; $7695: $01 $03 $05
	ld b, $0f                                        ; $7698: $06 $0f
	rrca                                             ; $769a: $0f
	ld a, a                                          ; $769b: $7f
	ld a, c                                          ; $769c: $79
	rst $38                                          ; $769d: $ff
	add [hl]                                         ; $769e: $86
	db $fd                                           ; $769f: $fd
	rst SubAFromDE                                          ; $76a0: $df
	rst AddAOntoHL                                          ; $76a1: $ef
	add b                                            ; $76a2: $80
	db $10                                           ; $76a3: $10
	rst $38                                          ; $76a4: $ff
	db $fc                                           ; $76a5: $fc
	inc bc                                           ; $76a6: $03
	cp $fd                                           ; $76a7: $fe $fd
	inc bc                                           ; $76a9: $03
	cp $a5                                           ; $76aa: $fe $a5
	rst $38                                          ; $76ac: $ff
	and h                                            ; $76ad: $a4
	rst $38                                          ; $76ae: $ff
	or [hl]                                          ; $76af: $b6
	ld e, e                                          ; $76b0: $5b
	rst $38                                          ; $76b1: $ff
	call $ce77                                       ; $76b2: $cd $77 $ce
	rst $38                                          ; $76b5: $ff
	call z, $ecff                                    ; $76b6: $cc $ff $ec
	rst $38                                          ; $76b9: $ff
	sbc c                                            ; $76ba: $99
	cp $87                                           ; $76bb: $fe $87
	ld a, h                                          ; $76bd: $7c
	ld a, a                                          ; $76be: $7f
	ld b, $07                                        ; $76bf: $06 $07
	nop                                              ; $76c1: $00
	sbc [hl]                                         ; $76c2: $9e
	ld bc, $dfef                                     ; $76c3: $01 $ef $df
	ld bc, $07df                                     ; $76c6: $01 $df $07
	db $fd                                           ; $76c9: $fd
	sub h                                            ; $76ca: $94
	ret                                              ; $76cb: $c9


	rst $38                                          ; $76cc: $ff
	ld h, c                                          ; $76cd: $61
	rst $38                                          ; $76ce: $ff
	ld d, e                                          ; $76cf: $53
	rst $38                                          ; $76d0: $ff
	ld a, a                                          ; $76d1: $7f
	ld a, a                                          ; $76d2: $7f
	push de                                          ; $76d3: $d5
	rst $38                                          ; $76d4: $ff
	ld d, l                                          ; $76d5: $55
	ld a, e                                          ; $76d6: $7b
	cp $90                                           ; $76d7: $fe $90
	db $d3                                           ; $76d9: $d3
	rst $38                                          ; $76da: $ff
	ld a, [hl]                                       ; $76db: $7e
	ld a, [hl]                                       ; $76dc: $7e
	ld a, h                                          ; $76dd: $7c
	ld d, h                                          ; $76de: $54
	ld a, h                                          ; $76df: $7c
	ld a, h                                          ; $76e0: $7c
	cp $92                                           ; $76e1: $fe $92
	inc de                                           ; $76e3: $13
	rst $38                                          ; $76e4: $ff
	ld sp, hl                                        ; $76e5: $f9
	rst $38                                          ; $76e6: $ff
	rrca                                             ; $76e7: $0f
	ld [hl], c                                       ; $76e8: $71
	and d                                            ; $76e9: $a2
	scf                                              ; $76ea: $37
	add b                                            ; $76eb: $80
	ld a, a                                          ; $76ec: $7f
	add d                                            ; $76ed: $82
	ld a, a                                          ; $76ee: $7f
	cp $df                                           ; $76ef: $fe $df
	rlca                                             ; $76f1: $07
	inc hl                                           ; $76f2: $23
	add b                                            ; $76f3: $80
	sub d                                            ; $76f4: $92
	ld bc, $00ff                                     ; $76f5: $01 $ff $00
	add a                                            ; $76f8: $87
	db $fc                                           ; $76f9: $fc
	ld c, a                                          ; $76fa: $4f
	db $fc                                           ; $76fb: $fc
	ei                                               ; $76fc: $fb
	db $fd                                           ; $76fd: $fd
	rst $38                                          ; $76fe: $ff
	add a                                            ; $76ff: $87
	ld a, a                                          ; $7700: $7f
	ld a, a                                          ; $7701: $7f
	ld [hl], l                                       ; $7702: $75
	sub $df                                          ; $7703: $d6 $df
	ld bc, $8657                                     ; $7705: $01 $57 $86
	halt                                             ; $7708: $76
	ld a, h                                          ; $7709: $7c
	ld a, a                                          ; $770a: $7f
	cp $6f                                           ; $770b: $fe $6f
	add b                                            ; $770d: $80
	add l                                            ; $770e: $85
	rst $38                                          ; $770f: $ff
	rst GetHLinHL                                          ; $7710: $cf
	di                                               ; $7711: $f3
	rst $38                                          ; $7712: $ff
	or c                                             ; $7713: $b1
	rst SubAFromDE                                          ; $7714: $df
	ld sp, hl                                        ; $7715: $f9
	rst $38                                          ; $7716: $ff
	xor a                                            ; $7717: $af
	rst $38                                          ; $7718: $ff
	push de                                          ; $7719: $d5
	rst $38                                          ; $771a: $ff
	halt                                             ; $771b: $76
	ld a, [hl]                                       ; $771c: $7e
	ld a, [hl]                                       ; $771d: $7e
	ld e, [hl]                                       ; $771e: $5e
	ld a, h                                          ; $771f: $7c
	ld [hl], h                                       ; $7720: $74
	cp $be                                           ; $7721: $fe $be
	ld l, a                                          ; $7723: $6f
	db $eb                                           ; $7724: $eb
	ld c, l                                          ; $7725: $4d
	rst GetHLinHL                                          ; $7726: $cf
	adc l                                            ; $7727: $8d
	adc a                                            ; $7728: $8f
	rla                                              ; $7729: $17
	add b                                            ; $772a: $80
	ld a, a                                          ; $772b: $7f
	cp a                                             ; $772c: $bf
	sbc l                                            ; $772d: $9d
	dec b                                            ; $772e: $05
	rlca                                             ; $772f: $07
	dec de                                           ; $7730: $1b
	nop                                              ; $7731: $00
	ld a, a                                          ; $7732: $7f
	add b                                            ; $7733: $80
	ld a, a                                          ; $7734: $7f
	ld [bc], a                                       ; $7735: $02
	ld a, [hl]                                       ; $7736: $7e
	cp $9a                                           ; $7737: $fe $9a
	xor d                                            ; $7739: $aa
	rst $38                                          ; $773a: $ff
	reti                                             ; $773b: $d9


	cp $87                                           ; $773c: $fe $87
	ld h, l                                          ; $773e: $65
	ld [hl+], a                                      ; $773f: $22
	ld [hl], l                                       ; $7740: $75
	add h                                            ; $7741: $84
	halt                                             ; $7742: $76
	sub h                                            ; $7743: $94
	ld a, [hl]                                       ; $7744: $7e
	ld d, [hl]                                       ; $7745: $56
	halt                                             ; $7746: $76
	ld d, h                                          ; $7747: $54
	ld [hl], a                                       ; $7748: $77
	ld a, [$f877]                                    ; $7749: $fa $77 $f8
	ld a, a                                          ; $774c: $7f
	cp $ff                                           ; $774d: $fe $ff
	rst SubAFromDE                                          ; $774f: $df
	rlca                                             ; $7750: $07
	ld a, h                                          ; $7751: $7c
	cp d                                             ; $7752: $ba
	add b                                            ; $7753: $80
	db $10                                           ; $7754: $10
	rra                                              ; $7755: $1f
	inc hl                                           ; $7756: $23
	ccf                                              ; $7757: $3f
	inc l                                            ; $7758: $2c
	ccf                                              ; $7759: $3f
	ld e, c                                          ; $775a: $59
	ld a, a                                          ; $775b: $7f
	ld [hl], d                                       ; $775c: $72
	ld a, a                                          ; $775d: $7f
	ld [hl+], a                                      ; $775e: $22
	ccf                                              ; $775f: $3f
	ld h, $3d                                        ; $7760: $26 $3d
	ld c, a                                          ; $7762: $4f
	ld a, e                                          ; $7763: $7b
	ld c, l                                          ; $7764: $4d
	ld a, a                                          ; $7765: $7f
	ld c, a                                          ; $7766: $4f
	ld a, e                                          ; $7767: $7b
	ld c, a                                          ; $7768: $4f
	ld a, e                                          ; $7769: $7b
	cpl                                              ; $776a: $2f
	jr c, jr_01b_779c                                ; $776b: $38 $2f

	inc a                                            ; $776d: $3c
	ld h, b                                          ; $776e: $60
	ld h, b                                          ; $776f: $60
	ret nz                                           ; $7770: $c0

	ret nz                                           ; $7771: $c0

	ld h, [hl]                                       ; $7772: $66
	add h                                            ; $7773: $84
	and $99                                          ; $7774: $e6 $99
	rst $38                                          ; $7776: $ff
	ld h, $fe                                        ; $7777: $26 $fe
	db $ec                                           ; $7779: $ec
	db $fc                                           ; $777a: $fc
	ld d, d                                          ; $777b: $52
	cp $ca                                           ; $777c: $fe $ca
	cp [hl]                                          ; $777e: $be
	reti                                             ; $777f: $d9


	cp a                                             ; $7780: $bf
	reti                                             ; $7781: $d9


	cpl                                              ; $7782: $2f
	db $fd                                           ; $7783: $fd
	scf                                              ; $7784: $37
	db $dd                                           ; $7785: $dd
	ccf                                              ; $7786: $3f
	cp $36                                           ; $7787: $fe $36
	ld a, [$fa3e]                                    ; $7789: $fa $3e $fa
	adc $f0                                          ; $778c: $ce $f0
	or h                                             ; $778e: $b4
	ld a, c                                          ; $778f: $79
	ld e, h                                          ; $7790: $5c
	sub e                                            ; $7791: $93
	ld c, $15                                        ; $7792: $0e $15
	rra                                              ; $7794: $1f
	inc de                                           ; $7795: $13
	ld e, $19                                        ; $7796: $1e $19
	ld e, $0f                                        ; $7798: $1e $0f
	rrca                                             ; $779a: $0f
	dec b                                            ; $779b: $05

jr_01b_779c:
	rlca                                             ; $779c: $07
	ld a, [bc]                                       ; $779d: $0a
	ld a, b                                          ; $779e: $78
	ld e, d                                          ; $779f: $5a
	sbc $07                                          ; $77a0: $de $07
	sbc [hl]                                         ; $77a2: $9e
	dec b                                            ; $77a3: $05
	ld a, b                                          ; $77a4: $78
	ld h, l                                          ; $77a5: $65
	sub h                                            ; $77a6: $94
	rla                                              ; $77a7: $17
	daa                                              ; $77a8: $27
	dec sp                                           ; $77a9: $3b
	ld b, [hl]                                       ; $77aa: $46
	ld a, [hl]                                       ; $77ab: $7e
	rst $38                                          ; $77ac: $ff
	rst $38                                          ; $77ad: $ff
	ldh a, [$b0]                                     ; $77ae: $f0 $b0
	ld hl, sp-$58                                    ; $77b0: $f8 $a8
	ld a, e                                          ; $77b2: $7b
	cp $94                                           ; $77b3: $fe $94
	ld e, b                                          ; $77b5: $58
	db $fc                                           ; $77b6: $fc
	ld c, h                                          ; $77b7: $4c
	cp $e2                                           ; $77b8: $fe $e2
	cp [hl]                                          ; $77ba: $be
	db $f4                                           ; $77bb: $f4
	xor [hl]                                         ; $77bc: $ae
	ld a, [$f4b4]                                    ; $77bd: $fa $b4 $f4
	ld a, c                                          ; $77c0: $79
	ld d, h                                          ; $77c1: $54
	ld a, c                                          ; $77c2: $79
	or a                                             ; $77c3: $b7
	ld a, a                                          ; $77c4: $7f
	add l                                            ; $77c5: $85
	sbc [hl]                                         ; $77c6: $9e
	jr nc, jr_01b_7842                               ; $77c7: $30 $79

	ret nc                                           ; $77c9: $d0

	rst SubAFromDE                                          ; $77ca: $df
	cp $df                                           ; $77cb: $fe $df
	ld b, $df                                        ; $77cd: $06 $df
	inc bc                                           ; $77cf: $03
	adc l                                            ; $77d0: $8d
	ld h, [hl]                                       ; $77d1: $66
	ld h, a                                          ; $77d2: $67
	sbc c                                            ; $77d3: $99
	rst $38                                          ; $77d4: $ff
	ld h, h                                          ; $77d5: $64
	ld a, a                                          ; $77d6: $7f
	scf                                              ; $77d7: $37
	ccf                                              ; $77d8: $3f
	ld c, d                                          ; $77d9: $4a
	ld a, a                                          ; $77da: $7f
	ld d, e                                          ; $77db: $53
	ld a, l                                          ; $77dc: $7d
	sbc e                                            ; $77dd: $9b
	db $fd                                           ; $77de: $fd
	sbc e                                            ; $77df: $9b
	db $f4                                           ; $77e0: $f4
	cp a                                             ; $77e1: $bf
	ldh [$78], a                                     ; $77e2: $e0 $78
	ld b, d                                          ; $77e4: $42
	sub e                                            ; $77e5: $93
	ld a, h                                          ; $77e6: $7c
	ld e, a                                          ; $77e7: $5f
	ld [hl], h                                       ; $77e8: $74
	ld e, a                                          ; $77e9: $5f
	ld [hl], e                                       ; $77ea: $73
	dec c                                            ; $77eb: $0d
	dec hl                                           ; $77ec: $2b
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	ldh [$e0], a                                     ; $77ef: $e0 $e0
	jr c, jr_01b_786c                                ; $77f1: $38 $79

	xor b                                            ; $77f3: $a8
	sub b                                            ; $77f4: $90
	jp nz, $3afe                                     ; $77f5: $c2 $fe $3a

	cp $9d                                           ; $77f8: $fe $9d
	rst $38                                          ; $77fa: $ff
	ld b, a                                          ; $77fb: $47
	rst $38                                          ; $77fc: $ff
	ld b, d                                          ; $77fd: $42
	cp $62                                           ; $77fe: $fe $62
	cp [hl]                                          ; $7800: $be
	ld sp, hl                                        ; $7801: $f9
	rra                                              ; $7802: $1f
	ld sp, hl                                        ; $7803: $f9
	ld a, d                                          ; $7804: $7a
	adc $99                                          ; $7805: $ce $99
	ld sp, hl                                        ; $7807: $f9
	cp a                                             ; $7808: $bf
	ld a, [$fa1e]                                    ; $7809: $fa $1e $fa
	ld a, $77                                        ; $780c: $3e $77
	add b                                            ; $780e: $80
	sbc [hl]                                         ; $780f: $9e
	rla                                              ; $7810: $17
	ld a, e                                          ; $7811: $7b
	add b                                            ; $7812: $80
	sbc [hl]                                         ; $7813: $9e
	ld de, $802b                                     ; $7814: $11 $2b $80
	rst SubAFromDE                                          ; $7817: $df
	db $e4                                           ; $7818: $e4
	ld [hl], e                                       ; $7819: $73
	ld a, [hl]                                       ; $781a: $7e
	sbc [hl]                                         ; $781b: $9e
	ld l, b                                          ; $781c: $68
	ld a, e                                          ; $781d: $7b
	ld a, [hl]                                       ; $781e: $7e
	sbc l                                            ; $781f: $9d
	call z, $7b7e                                    ; $7820: $cc $7e $7b
	ld a, [hl]                                       ; $7823: $7e
	ld b, a                                          ; $7824: $47
	add b                                            ; $7825: $80
	inc sp                                           ; $7826: $33
	nop                                              ; $7827: $00
	sbc b                                            ; $7828: $98
	ld a, b                                          ; $7829: $78
	ld c, a                                          ; $782a: $4f
	ld a, d                                          ; $782b: $7a
	ld c, a                                          ; $782c: $4f
	ld a, l                                          ; $782d: $7d
	ld c, a                                          ; $782e: $4f
	ld a, d                                          ; $782f: $7a
	inc hl                                           ; $7830: $23
	nop                                              ; $7831: $00
	sbc b                                            ; $7832: $98
	rlca                                             ; $7833: $07
	db $fd                                           ; $7834: $fd
	rla                                              ; $7835: $17
	cp $2e                                           ; $7836: $fe $2e
	ld a, [$7716]                                    ; $7838: $fa $16 $77
	nop                                              ; $783b: $00
	rst SubAFromDE                                          ; $783c: $df
	inc bc                                           ; $783d: $03
	ld [hl], a                                       ; $783e: $77
	jp nz, $2080                                     ; $783f: $c2 $80 $20

jr_01b_7842:
	ccf                                              ; $7842: $3f
	ld b, c                                          ; $7843: $41
	ld a, a                                          ; $7844: $7f
	ld b, e                                          ; $7845: $43
	ld a, [hl]                                       ; $7846: $7e

jr_01b_7847:
	add e                                            ; $7847: $83
	cp $87                                           ; $7848: $fe $87
	db $fd                                           ; $784a: $fd
	adc a                                            ; $784b: $8f
	ld a, [$fd87]                                    ; $784c: $fa $87 $fd

jr_01b_784f:
	ld b, e                                          ; $784f: $43
	ld a, [hl]                                       ; $7850: $7e
	ld b, c                                          ; $7851: $41
	ld a, a                                          ; $7852: $7f
	jr nz, jr_01b_7894                               ; $7853: $20 $3f

	jr jr_01b_7876                                   ; $7855: $18 $1f

	ld b, $07                                        ; $7857: $06 $07
	ld bc, $c001                                     ; $7859: $01 $01 $c0
	ret nz                                           ; $785c: $c0

	jr nc, jr_01b_784f                               ; $785d: $30 $f0

	ld [$407b], sp                                   ; $785f: $08 $7b $40
	add a                                            ; $7862: $87
	ld b, h                                          ; $7863: $44
	db $fc                                           ; $7864: $fc
	ldh [c], a                                       ; $7865: $e2
	cp [hl]                                          ; $7866: $be
	ldh [c], a                                       ; $7867: $e2
	cp [hl]                                          ; $7868: $be
	pop hl                                           ; $7869: $e1
	ccf                                              ; $786a: $3f
	pop hl                                           ; $786b: $e1

jr_01b_786c:
	rst $38                                          ; $786c: $ff
	pop hl                                           ; $786d: $e1
	ccf                                              ; $786e: $3f
	ldh [c], a                                       ; $786f: $e2
	ld a, $c2                                        ; $7870: $3e $c2
	cp $04                                           ; $7872: $fe $04
	db $fc                                           ; $7874: $fc
	ld [bc], a                                       ; $7875: $02

jr_01b_7876:
	cp $19                                           ; $7876: $fe $19
	rst $38                                          ; $7878: $ff
	rst SubAFromBC                                          ; $7879: $e7
	rst SubAFromBC                                          ; $787a: $e7
	halt                                             ; $787b: $76
	inc h                                            ; $787c: $24
	ld [hl], a                                       ; $787d: $77
	cp [hl]                                          ; $787e: $be
	ld a, h                                          ; $787f: $7c
	add b                                            ; $7880: $80
	sbc b                                            ; $7881: $98
	ld b, b                                          ; $7882: $40
	ld a, a                                          ; $7883: $7f
	ld b, c                                          ; $7884: $41
	ld a, a                                          ; $7885: $7f
	add b                                            ; $7886: $80
	rst $38                                          ; $7887: $ff
	add c                                            ; $7888: $81
	ld a, e                                          ; $7889: $7b
	cp $7f                                           ; $788a: $fe $7f
	ret nz                                           ; $788c: $c0

	ld a, a                                          ; $788d: $7f
	cp $77                                           ; $788e: $fe $77
	ldh a, [$9b]                                     ; $7890: $f0 $9b
	sbc h                                            ; $7892: $9c
	rst $38                                          ; $7893: $ff

jr_01b_7894:
	db $e3                                           ; $7894: $e3
	db $e3                                           ; $7895: $e3
	halt                                             ; $7896: $76
	ld b, h                                          ; $7897: $44
	ld a, h                                          ; $7898: $7c
	ld a, [hl+]                                      ; $7899: $2a
	sbc [hl]                                         ; $789a: $9e
	db $10                                           ; $789b: $10
	ld [hl], e                                       ; $789c: $73
	cp h                                             ; $789d: $bc
	ld [hl], a                                       ; $789e: $77
	call z, $fe77                                    ; $789f: $cc $77 $fe
	sub l                                            ; $78a2: $95
	add h                                            ; $78a3: $84
	db $fc                                           ; $78a4: $fc
	add h                                            ; $78a5: $84
	db $fc                                           ; $78a6: $fc
	ld [$10f8], sp                                   ; $78a7: $08 $f8 $10
	ldh a, [$60]                                     ; $78aa: $f0 $60
	ldh [$6c], a                                     ; $78ac: $e0 $6c
	ret z                                            ; $78ae: $c8

	rst SubAFromDE                                          ; $78af: $df
	jr jr_01b_7847                                   ; $78b0: $18 $95

	ld a, $36                                        ; $78b2: $3e $36
	ld a, a                                          ; $78b4: $7f
	ld b, e                                          ; $78b5: $43
	rst $38                                          ; $78b6: $ff
	add c                                            ; $78b7: $81
	cp $82                                           ; $78b8: $fe $82
	ld a, a                                          ; $78ba: $7f
	ld h, l                                          ; $78bb: $65
	ld a, e                                          ; $78bc: $7b
	cp e                                             ; $78bd: $bb
	sub [hl]                                         ; $78be: $96
	ld b, c                                          ; $78bf: $41
	ld a, $32                                        ; $78c0: $3e $32
	ld c, $0a                                        ; $78c2: $0e $0a
	rlca                                             ; $78c4: $07
	dec b                                            ; $78c5: $05
	ld [bc], a                                       ; $78c6: $02
	ld [bc], a                                       ; $78c7: $02
	ldh a, [c]                                       ; $78c8: $f2
	sub d                                            ; $78c9: $92
	ld b, b                                          ; $78ca: $40
	nop                                              ; $78cb: $00
	ld h, b                                          ; $78cc: $60
	nop                                              ; $78cd: $00
	jr nc, jr_01b_78d0                               ; $78ce: $30 $00

jr_01b_78d0:
	jr jr_01b_78d2                                   ; $78d0: $18 $00

jr_01b_78d2:
	jr c, jr_01b_78d4                                ; $78d2: $38 $00

jr_01b_78d4:
	jr c, jr_01b_78f6                                ; $78d4: $38 $20

	db $10                                           ; $78d6: $10
	db $f4                                           ; $78d7: $f4
	adc [hl]                                         ; $78d8: $8e
	inc c                                            ; $78d9: $0c
	nop                                              ; $78da: $00
	inc a                                            ; $78db: $3c
	nop                                              ; $78dc: $00
	or $00                                           ; $78dd: $f6 $00
	adc $01                                          ; $78df: $ce $01
	ld a, d                                          ; $78e1: $7a
	nop                                              ; $78e2: $00
	ld h, e                                          ; $78e3: $63
	db $10                                           ; $78e4: $10
	daa                                              ; $78e5: $27
	nop                                              ; $78e6: $00
	ld [hl], $00                                     ; $78e7: $36 $00
	ld [hl], b                                       ; $78e9: $70
	ld a, e                                          ; $78ea: $7b
	sub $fa                                          ; $78eb: $d6 $fa
	pop de                                           ; $78ed: $d1
	inc bc                                           ; $78ee: $03
	db $fd                                           ; $78ef: $fd
	rst SubAFromDE                                          ; $78f0: $df
	dec b                                            ; $78f1: $05
	sbc d                                            ; $78f2: $9a
	ld a, [bc]                                       ; $78f3: $0a
	rrca                                             ; $78f4: $0f
	inc d                                            ; $78f5: $14

jr_01b_78f6:
	rra                                              ; $78f6: $1f
	ld de, $1fde                                     ; $78f7: $11 $de $1f
	adc l                                            ; $78fa: $8d
	ld sp, $403f                                     ; $78fb: $31 $3f $40
	ld a, a                                          ; $78fe: $7f
	ld de, $223f                                     ; $78ff: $11 $3f $22
	ccf                                              ; $7902: $3f
	inc h                                            ; $7903: $24
	ccf                                              ; $7904: $3f
	ld h, $3f                                        ; $7905: $26 $3f
	daa                                              ; $7907: $27
	dec a                                            ; $7908: $3d
	rla                                              ; $7909: $17
	inc e                                            ; $790a: $1c
	dec bc                                           ; $790b: $0b
	ld c, $fd                                        ; $790c: $0e $fd
	rst SubAFromDE                                          ; $790e: $df
	sub b                                            ; $790f: $90
	add l                                            ; $7910: $85
	ld l, b                                          ; $7911: $68
	ld hl, sp-$78                                    ; $7912: $f8 $88
	ld hl, sp+$16                                    ; $7914: $f8 $16
	cp $29                                           ; $7916: $fe $29
	rst $38                                          ; $7918: $ff
	sub $fe                                          ; $7919: $d6 $fe
	sub d                                            ; $791b: $92
	cp $1a                                           ; $791c: $fe $1a
	cp $7a                                           ; $791e: $fe $7a
	xor $fc                                          ; $7920: $ee $fc
	xor h                                            ; $7922: $ac
	ld hl, sp+$78                                    ; $7923: $f8 $78
	call c, $fc64                                    ; $7925: $dc $64 $fc
	inc h                                            ; $7928: $24
	ld hl, sp+$08                                    ; $7929: $f8 $08
	db $dd                                           ; $792b: $dd
	rlca                                             ; $792c: $07
	add b                                            ; $792d: $80
	add hl, bc                                       ; $792e: $09
	rrca                                             ; $792f: $0f
	add hl, de                                       ; $7930: $19
	rra                                              ; $7931: $1f
	rla                                              ; $7932: $17
	ld e, $13                                        ; $7933: $1e $13
	ld e, $1f                                        ; $7935: $1e $1f
	rra                                              ; $7937: $1f
	add hl, bc                                       ; $7938: $09
	rrca                                             ; $7939: $0f
	ld c, $0f                                        ; $793a: $0e $0f
	rrca                                             ; $793c: $0f
	add hl, bc                                       ; $793d: $09
	ld d, $1e                                        ; $793e: $16 $1e
	ld [de], a                                       ; $7940: $12
	ld e, $1c                                        ; $7941: $1e $1c
	inc e                                            ; $7943: $1c
	inc h                                            ; $7944: $24
	inc a                                            ; $7945: $3c
	ld b, e                                          ; $7946: $43
	ld a, a                                          ; $7947: $7f
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	ldh a, [rAUD1SWEEP]                              ; $794a: $f0 $10
	ldh [hDisp0_LCDC], a                                     ; $794c: $e0 $82
	ldh [rLCDC], a                                   ; $794e: $e0 $40
	ret nz                                           ; $7950: $c0

	ldh [$e0], a                                     ; $7951: $e0 $e0
	ld hl, sp-$68                                    ; $7953: $f8 $98
	db $fd                                           ; $7955: $fd
	ld [hl], l                                       ; $7956: $75
	rst $38                                          ; $7957: $ff
	rrca                                             ; $7958: $0f
	rst $38                                          ; $7959: $ff
	rst GetHLinHL                                          ; $795a: $cf
	ei                                               ; $795b: $fb
	ei                                               ; $795c: $fb
	ld [hl], c                                       ; $795d: $71
	ld d, c                                          ; $795e: $51
	ld [hl], b                                       ; $795f: $70
	ld [hl], b                                       ; $7960: $70
	sub b                                            ; $7961: $90
	ldh a, [$f8]                                     ; $7962: $f0 $f8
	ld hl, sp-$7c                                    ; $7964: $f8 $84
	db $fc                                           ; $7966: $fc
	cp $fe                                           ; $7967: $fe $fe
	add b                                            ; $7969: $80
	add b                                            ; $796a: $80
	ld sp, hl                                        ; $796b: $f9
	rst SubAFromDE                                          ; $796c: $df
	ld hl, sp-$21                                    ; $796d: $f8 $df
	xor h                                            ; $796f: $ac
	rst SubAFromDE                                          ; $7970: $df
	ld d, [hl]                                       ; $7971: $56
	rst SubAFromDE                                          ; $7972: $df
	xor d                                            ; $7973: $aa
	rst SubAFromDE                                          ; $7974: $df
	ld d, [hl]                                       ; $7975: $56
	rst SubAFromDE                                          ; $7976: $df
	xor h                                            ; $7977: $ac
	rst SubAFromDE                                          ; $7978: $df
	ld hl, sp-$0b                                    ; $7979: $f8 $f5
	rla                                              ; $797b: $17
	ld h, d                                          ; $797c: $62
	rst SubAFromDE                                          ; $797d: $df
	rlca                                             ; $797e: $07
	daa                                              ; $797f: $27
	ld h, d                                          ; $7980: $62
	sub a                                            ; $7981: $97
	db $dd                                           ; $7982: $dd
	ld h, l                                          ; $7983: $65
	rst $38                                          ; $7984: $ff
	ld h, $ff                                        ; $7985: $26 $ff
	inc c                                            ; $7987: $0c
	rst $38                                          ; $7988: $ff
	add hl, de                                       ; $7989: $19
	db $ed                                           ; $798a: $ed
	rst SubAFromDE                                          ; $798b: $df
	ld [hl], b                                       ; $798c: $70
	add b                                            ; $798d: $80
	db $fc                                           ; $798e: $fc
	sbc h                                            ; $798f: $9c
	db $fc                                           ; $7990: $fc
	inc b                                            ; $7991: $04
	ld hl, sp+$38                                    ; $7992: $f8 $38
	ret nz                                           ; $7994: $c0

	ld b, b                                          ; $7995: $40
	add b                                            ; $7996: $80
	add b                                            ; $7997: $80
	ld b, $07                                        ; $7998: $06 $07
	inc c                                            ; $799a: $0c
	rrca                                             ; $799b: $0f
	ld e, $13                                        ; $799c: $1e $13
	ld a, [hl]                                       ; $799e: $7e
	ld h, a                                          ; $799f: $67
	ld a, l                                          ; $79a0: $7d
	ld l, l                                          ; $79a1: $6d
	ld a, l                                          ; $79a2: $7d
	ld b, c                                          ; $79a3: $41
	ld a, $27                                        ; $79a4: $3e $27
	rra                                              ; $79a6: $1f
	rra                                              ; $79a7: $1f
	dec b                                            ; $79a8: $05
	dec b                                            ; $79a9: $05
	rlca                                             ; $79aa: $07
	ld b, $05                                        ; $79ab: $06 $05
	add a                                            ; $79ad: $87
	dec b                                            ; $79ae: $05
	ld b, $07                                        ; $79af: $06 $07
	inc bc                                           ; $79b1: $03
	inc bc                                           ; $79b2: $03
	dec b                                            ; $79b3: $05
	rlca                                             ; $79b4: $07
	ld [$3f0f], sp                                   ; $79b5: $08 $0f $3f
	ccf                                              ; $79b8: $3f
	or $fe                                           ; $79b9: $f6 $fe
	xor d                                            ; $79bb: $aa
	cp $5c                                           ; $79bc: $fe $5c
	db $fc                                           ; $79be: $fc
	ld [$08f8], sp                                   ; $79bf: $08 $f8 $08
	ld hl, sp-$10                                    ; $79c2: $f8 $f0
	ldh a, [$08]                                     ; $79c4: $f0 $08
	db $dd                                           ; $79c6: $dd
	ld hl, sp-$70                                    ; $79c7: $f8 $90
	ld l, b                                          ; $79c9: $68
	cp b                                             ; $79ca: $b8
	cp b                                             ; $79cb: $b8
	ld hl, sp+$58                                    ; $79cc: $f8 $58
	cp b                                             ; $79ce: $b8
	cp b                                             ; $79cf: $b8
	ld e, h                                          ; $79d0: $5c
	db $fc                                           ; $79d1: $fc
	ldh a, [c]                                       ; $79d2: $f2
	cp $7f                                           ; $79d3: $fe $7f
	rst $38                                          ; $79d5: $ff
	ret nz                                           ; $79d6: $c0

	ret nz                                           ; $79d7: $c0

	ld sp, hl                                        ; $79d8: $f9
	rst SubAFromDE                                          ; $79d9: $df
	ld bc, $fa6f                                     ; $79da: $01 $6f $fa
	rst SubAFromDE                                          ; $79dd: $df
	ld bc, $c07f                                     ; $79de: $01 $7f $c0
	add b                                            ; $79e1: $80
	dec sp                                           ; $79e2: $3b
	ld a, $2b                                        ; $79e3: $3e $2b
	ccf                                              ; $79e5: $3f
	inc h                                            ; $79e6: $24
	inc a                                            ; $79e7: $3c
	ld h, $3e                                        ; $79e8: $26 $3e
	ld [de], a                                       ; $79ea: $12
	ld e, $7f                                        ; $79eb: $1e $7f
	ld a, a                                          ; $79ed: $7f
	ccf                                              ; $79ee: $3f
	ld a, $21                                        ; $79ef: $3e $21
	ccf                                              ; $79f1: $3f
	ld b, e                                          ; $79f2: $43
	ld a, [hl]                                       ; $79f3: $7e
	adc a                                            ; $79f4: $8f
	rst $38                                          ; $79f5: $ff
	inc bc                                           ; $79f6: $03
	cp $fd                                           ; $79f7: $fe $fd
	db $fd                                           ; $79f9: $fd
	add [hl]                                         ; $79fa: $86
	cp $02                                           ; $79fb: $fe $02
	cp $9f                                           ; $79fd: $fe $9f
	rst $38                                          ; $79ff: $ff
	rst AddAOntoHL                                          ; $7a00: $ef
	add d                                            ; $7a01: $82
	ld l, c                                          ; $7a02: $69
	add $4a                                          ; $7a03: $c6 $4a
	sbc d                                            ; $7a05: $9a
	sbc [hl]                                         ; $7a06: $9e
	daa                                              ; $7a07: $27
	ccf                                              ; $7a08: $3f
	db $10                                           ; $7a09: $10
	rra                                              ; $7a0a: $1f
	ld a, a                                          ; $7a0b: $7f
	ld a, a                                          ; $7a0c: $7f
	ldh a, [$f0]                                     ; $7a0d: $f0 $f0
	add b                                            ; $7a0f: $80
	add b                                            ; $7a10: $80
	ret nz                                           ; $7a11: $c0

	ret nz                                           ; $7a12: $c0

	ldh [rAUD4LEN], a                                ; $7a13: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $7a15: $f0 $90
	cp $5e                                           ; $7a17: $fe $5e
	cp $a6                                           ; $7a19: $fe $a6
	db $fc                                           ; $7a1b: $fc
	db $e4                                           ; $7a1c: $e4
	ret z                                            ; $7a1d: $c8

	ret z                                            ; $7a1e: $c8

	ld e, [hl]                                       ; $7a1f: $5e
	xor $df                                          ; $7a20: $ee $df
	add b                                            ; $7a22: $80
	rst SubAFromDE                                          ; $7a23: $df
	ldh [$fb], a                                     ; $7a24: $e0 $fb
	rst SubAFromDE                                          ; $7a26: $df
	ld [bc], a                                       ; $7a27: $02
	rst SubAFromDE                                          ; $7a28: $df
	rlca                                             ; $7a29: $07
	rst SubAFromDE                                          ; $7a2a: $df
	inc bc                                           ; $7a2b: $03
	ld a, a                                          ; $7a2c: $7f
	ld l, h                                          ; $7a2d: $6c
	add b                                            ; $7a2e: $80
	inc b                                            ; $7a2f: $04
	rlca                                             ; $7a30: $07
	ld a, $27                                        ; $7a31: $3e $27
	ld a, a                                          ; $7a33: $7f
	ld c, e                                          ; $7a34: $4b
	ld a, [hl]                                       ; $7a35: $7e
	ld b, e                                          ; $7a36: $43
	ccf                                              ; $7a37: $3f
	daa                                              ; $7a38: $27
	rra                                              ; $7a39: $1f
	ld [de], a                                       ; $7a3a: $12
	rra                                              ; $7a3b: $1f
	ld de, $090f                                     ; $7a3c: $11 $0f $09
	rrca                                             ; $7a3f: $0f
	ld [$0407], sp                                   ; $7a40: $08 $07 $04
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	dec sp                                           ; $7a45: $3b
	dec sp                                           ; $7a46: $3b
	call z, $19ff                                    ; $7a47: $cc $ff $19
	rst $38                                          ; $7a4a: $ff
	cp $ff                                           ; $7a4b: $fe $ff
	sub h                                            ; $7a4d: $94
	sub b                                            ; $7a4e: $90
	rst $38                                          ; $7a4f: $ff
	ld c, d                                          ; $7a50: $4a
	rst $38                                          ; $7a51: $ff
	sub e                                            ; $7a52: $93
	rst $38                                          ; $7a53: $ff
	or d                                             ; $7a54: $b2
	rst $38                                          ; $7a55: $ff
	di                                               ; $7a56: $f3
	rst SubAFromDE                                          ; $7a57: $df
	rst FarCall                                          ; $7a58: $f7
	xor l                                            ; $7a59: $ad
	db $dd                                           ; $7a5a: $dd
	halt                                             ; $7a5b: $76
	rst $38                                          ; $7a5c: $ff
	ld h, [hl]                                       ; $7a5d: $66
	ld a, e                                          ; $7a5e: $7b
	cp $9c                                           ; $7a5f: $fe $9c
	sbc c                                            ; $7a61: $99
	rst $38                                          ; $7a62: $ff
	db $d3                                           ; $7a63: $d3
	ld [hl], a                                       ; $7a64: $77
	cp b                                             ; $7a65: $b8
	rst SubAFromDE                                          ; $7a66: $df
	ret nz                                           ; $7a67: $c0

	rst SubAFromDE                                          ; $7a68: $df
	db $10                                           ; $7a69: $10
	rst SubAFromDE                                          ; $7a6a: $df
	ldh [$df], a                                     ; $7a6b: $e0 $df
	ret nz                                           ; $7a6d: $c0

	add e                                            ; $7a6e: $83
	ld a, h                                          ; $7a6f: $7c
	db $e4                                           ; $7a70: $e4
	ld a, [hl]                                       ; $7a71: $7e
	jp nz, $d2fe                                     ; $7a72: $c2 $fe $d2

	ld a, h                                          ; $7a75: $7c
	db $e4                                           ; $7a76: $e4
	ld a, b                                          ; $7a77: $78
	ret z                                            ; $7a78: $c8

	ld hl, sp-$38                                    ; $7a79: $f8 $c8
	ldh a, [hDisp1_SCY]                                     ; $7a7b: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $7a7d: $f0 $90
	ldh [rAUD4LEN], a                                ; $7a7f: $e0 $20
	ret nz                                           ; $7a81: $c0

	ld b, b                                          ; $7a82: $40
	ld c, $0f                                        ; $7a83: $0e $0f
	inc b                                            ; $7a85: $04
	rlca                                             ; $7a86: $07
	ld [bc], a                                       ; $7a87: $02
	inc bc                                           ; $7a88: $03
	ld bc, $6f01                                     ; $7a89: $01 $01 $6f
	db $fc                                           ; $7a8c: $fc
	ld [hl], a                                       ; $7a8d: $77
	ld a, [$fb7b]                                    ; $7a8e: $fa $7b $fb
	ld a, e                                          ; $7a91: $7b
	db $fd                                           ; $7a92: $fd
	ld a, a                                          ; $7a93: $7f
	cp $df                                           ; $7a94: $fe $df
	rlca                                             ; $7a96: $07
	ld [hl], a                                       ; $7a97: $77
	nop                                              ; $7a98: $00
	sbc b                                            ; $7a99: $98
	di                                               ; $7a9a: $f3
	rst $38                                          ; $7a9b: $ff
	xor d                                            ; $7a9c: $aa
	cp $54                                           ; $7a9d: $fe $54
	db $fc                                           ; $7a9f: $fc
	inc b                                            ; $7aa0: $04
	ld a, e                                          ; $7aa1: $7b
	cp $df                                           ; $7aa2: $fe $df
	ld hl, sp+$7f                                    ; $7aa4: $f8 $7f
	nop                                              ; $7aa6: $00
	sbc [hl]                                         ; $7aa7: $9e
	jr c, @+$7d                                      ; $7aa8: $38 $7b

	nop                                              ; $7aaa: $00
	ld a, e                                          ; $7aab: $7b
	cp $96                                           ; $7aac: $fe $96
	ld hl, sp+$48                                    ; $7aae: $f8 $48
	ld hl, sp-$04                                    ; $7ab0: $f8 $fc
	db $fc                                           ; $7ab2: $fc
	jp nz, $fffe                                     ; $7ab3: $c2 $fe $ff

	rst $38                                          ; $7ab6: $ff
	ld [hl], a                                       ; $7ab7: $77
	ld d, d                                          ; $7ab8: $52
	rst SubAFromDE                                          ; $7ab9: $df
	rla                                              ; $7aba: $17
	add a                                            ; $7abb: $87
	jr c, jr_01b_7afd                                ; $7abc: $38 $3f

	ld de, $2e1f                                     ; $7abe: $11 $1f $2e
	ccf                                              ; $7ac1: $3f
	ld e, c                                          ; $7ac2: $59
	ld a, a                                          ; $7ac3: $7f
	ld h, b                                          ; $7ac4: $60
	ld a, a                                          ; $7ac5: $7f
	and l                                            ; $7ac6: $a5
	rst $38                                          ; $7ac7: $ff
	xor c                                            ; $7ac8: $a9
	rst $38                                          ; $7ac9: $ff
	xor e                                            ; $7aca: $ab
	rst $38                                          ; $7acb: $ff
	ld e, a                                          ; $7acc: $5f
	ld [hl], a                                       ; $7acd: $77
	ld a, a                                          ; $7ace: $7f
	ld d, b                                          ; $7acf: $50
	ld a, a                                          ; $7ad0: $7f
	ld c, d                                          ; $7ad1: $4a
	dec a                                            ; $7ad2: $3d
	ld h, $7a                                        ; $7ad3: $26 $7a
	ld c, e                                          ; $7ad5: $4b
	ld a, d                                          ; $7ad6: $7a
	add b                                            ; $7ad7: $80
	ld a, e                                          ; $7ad8: $7b
	adc b                                            ; $7ad9: $88
	add b                                            ; $7ada: $80
	db $fc                                           ; $7adb: $fc
	adc b                                            ; $7adc: $88
	ld hl, sp+$66                                    ; $7add: $f8 $66
	cp $59                                           ; $7adf: $fe $59
	rst $38                                          ; $7ae1: $ff
	adc $fe                                          ; $7ae2: $ce $fe
	inc h                                            ; $7ae4: $24
	db $fc                                           ; $7ae5: $fc
	ld [hl+], a                                      ; $7ae6: $22
	cp $22                                           ; $7ae7: $fe $22
	cp $72                                           ; $7ae9: $fe $72
	cp $fc                                           ; $7aeb: $fe $fc
	db $ec                                           ; $7aed: $ec
	db $f4                                           ; $7aee: $f4
	inc l                                            ; $7aef: $2c
	db $f4                                           ; $7af0: $f4
	db $fc                                           ; $7af1: $fc
	db $fc                                           ; $7af2: $fc
	inc c                                            ; $7af3: $0c
	db $fc                                           ; $7af4: $fc
	ld d, h                                          ; $7af5: $54
	scf                                              ; $7af6: $37
	ccf                                              ; $7af7: $3f
	ld b, l                                          ; $7af8: $45
	ld a, a                                          ; $7af9: $7f
	adc [hl]                                         ; $7afa: $8e
	ldh [c], a                                       ; $7afb: $e2
	cp a                                             ; $7afc: $bf

jr_01b_7afd:
	ld hl, sp-$61                                    ; $7afd: $f8 $9f
	ld hl, sp-$31                                    ; $7aff: $f8 $cf
	ld a, a                                          ; $7b01: $7f
	ld c, a                                          ; $7b02: $4f
	jr c, jr_01b_7b14                                ; $7b03: $38 $0f

	add hl, sp                                       ; $7b05: $39
	ccf                                              ; $7b06: $3f
	rrca                                             ; $7b07: $0f
	dec bc                                           ; $7b08: $0b
	rra                                              ; $7b09: $1f
	inc de                                           ; $7b0a: $13
	rra                                              ; $7b0b: $1f
	ld a, e                                          ; $7b0c: $7b
	ld hl, $1799                                     ; $7b0d: $21 $99 $17
	rra                                              ; $7b10: $1f
	ld a, $3f                                        ; $7b11: $3e $3f
	ld b, a                                          ; $7b13: $47

jr_01b_7b14:
	ld a, a                                          ; $7b14: $7f
	sbc $fc                                          ; $7b15: $de $fc
	sub a                                            ; $7b17: $97
	and h                                            ; $7b18: $a4
	ld a, b                                          ; $7b19: $78
	add sp, -$70                                     ; $7b1a: $e8 $90
	ldh a, [rAUD4LEN]                                ; $7b1c: $f0 $20
	ldh [rAUD4LEN], a                                ; $7b1e: $e0 $20
	ld a, e                                          ; $7b20: $7b
	ld b, b                                          ; $7b21: $40
	ld a, l                                          ; $7b22: $7d
	cp b                                             ; $7b23: $b8
	sbc $c0                                          ; $7b24: $de $c0
	ld a, a                                          ; $7b26: $7f
	ei                                               ; $7b27: $fb
	ld a, e                                          ; $7b28: $7b
	ld sp, hl                                        ; $7b29: $f9
	ld [hl], l                                       ; $7b2a: $75
	xor [hl]                                         ; $7b2b: $ae
	sbc [hl]                                         ; $7b2c: $9e
	db $10                                           ; $7b2d: $10
	ld a, c                                          ; $7b2e: $79
	cp h                                             ; $7b2f: $bc
	ld sp, hl                                        ; $7b30: $f9
	rst SubAFromDE                                          ; $7b31: $df
	rlca                                             ; $7b32: $07
	add a                                            ; $7b33: $87
	jr jr_01b_7b55                                   ; $7b34: $18 $1f

	inc hl                                           ; $7b36: $23
	ccf                                              ; $7b37: $3f
	ld c, h                                          ; $7b38: $4c
	ld a, a                                          ; $7b39: $7f
	ld d, c                                          ; $7b3a: $51
	ld a, a                                          ; $7b3b: $7f
	jr jr_01b_7bbd                                   ; $7b3c: $18 $7f

	inc e                                            ; $7b3e: $1c
	ld a, a                                          ; $7b3f: $7f
	ld a, $37                                        ; $7b40: $3e $37
	rla                                              ; $7b42: $17
	rra                                              ; $7b43: $1f
	dec sp                                           ; $7b44: $3b
	ld h, $3f                                        ; $7b45: $26 $3f
	ld h, $1f                                        ; $7b47: $26 $1f
	db $10                                           ; $7b49: $10
	rrca                                             ; $7b4a: $0f
	ld [$6ffb], sp                                   ; $7b4b: $08 $fb $6f
	jp nc, $3c7f                                     ; $7b4e: $d2 $7f $3c

	ld a, [hl]                                       ; $7b51: $7e
	add b                                            ; $7b52: $80
	sbc h                                            ; $7b53: $9c
	add d                                            ; $7b54: $82

jr_01b_7b55:
	cp $42                                           ; $7b55: $fe $42
	ld a, e                                          ; $7b57: $7b
	ld a, [hl]                                       ; $7b58: $7e
	sub h                                            ; $7b59: $94
	ld h, d                                          ; $7b5a: $62
	cp $e4                                           ; $7b5b: $fe $e4
	cp a                                             ; $7b5d: $bf
	pop hl                                           ; $7b5e: $e1
	ccf                                              ; $7b5f: $3f
	add $7e                                          ; $7b60: $c6 $7e
	ret z                                            ; $7b62: $c8

	ld hl, sp+$07                                    ; $7b63: $f8 $07
	ld a, e                                          ; $7b65: $7b
	ld [bc], a                                       ; $7b66: $02
	rst SubAFromDE                                          ; $7b67: $df
	rlca                                             ; $7b68: $07
	ld a, a                                          ; $7b69: $7f
	ld e, b                                          ; $7b6a: $58
	sbc e                                            ; $7b6b: $9b
	cp a                                             ; $7b6c: $bf
	xor [hl]                                         ; $7b6d: $ae
	rst $38                                          ; $7b6e: $ff
	ldh a, [$7a]                                     ; $7b6f: $f0 $7a
	push bc                                          ; $7b71: $c5
	sub d                                            ; $7b72: $92
	rst SubAFromDE                                          ; $7b73: $df
	adc [hl]                                         ; $7b74: $8e
	adc d                                            ; $7b75: $8a
	ld c, $0e                                        ; $7b76: $0e $0e
	add hl, bc                                       ; $7b78: $09
	rrca                                             ; $7b79: $0f
	rra                                              ; $7b7a: $1f
	rra                                              ; $7b7b: $1f
	ld hl, $7f3f                                     ; $7b7c: $21 $3f $7f
	ld a, a                                          ; $7b7f: $7f
	halt                                             ; $7b80: $76
	inc l                                            ; $7b81: $2c
	rst SubAFromDE                                          ; $7b82: $df
	ldh a, [$7a]                                     ; $7b83: $f0 $7a
	rst SubAFromHL                                          ; $7b85: $d7
	sub l                                            ; $7b86: $95
	ldh a, [$e8]                                     ; $7b87: $f0 $e8
	ld a, b                                          ; $7b89: $78
	ret z                                            ; $7b8a: $c8

	ld a, b                                          ; $7b8b: $78
	ld hl, sp-$08                                    ; $7b8c: $f8 $f8
	sub b                                            ; $7b8e: $90
	ldh a, [rSVBK]                                   ; $7b8f: $f0 $70
	ld a, e                                          ; $7b91: $7b
	pop af                                           ; $7b92: $f1
	sub a                                            ; $7b93: $97
	ld l, b                                          ; $7b94: $68
	ld a, b                                          ; $7b95: $78
	ld c, b                                          ; $7b96: $48
	ld a, b                                          ; $7b97: $78
	jr c, jr_01b_7bd2                                ; $7b98: $38 $38

	inc h                                            ; $7b9a: $24
	inc a                                            ; $7b9b: $3c
	ld [hl], a                                       ; $7b9c: $77
	nop                                              ; $7b9d: $00
	ld sp, hl                                        ; $7b9e: $f9
	rst SubAFromDE                                          ; $7b9f: $df
	ret nz                                           ; $7ba0: $c0

	ld a, a                                          ; $7ba1: $7f
	ld h, b                                          ; $7ba2: $60
	ld [hl], l                                       ; $7ba3: $75
	ldh [rPCM12], a                                  ; $7ba4: $e0 $76
	ret c                                            ; $7ba6: $d8

	ld a, l                                          ; $7ba7: $7d
	jr z, @-$6b                                      ; $7ba8: $28 $93

	ld b, h                                          ; $7baa: $44
	db $fc                                           ; $7bab: $fc
	call nz, $c9fc                                   ; $7bac: $c4 $fc $c9
	ld a, a                                          ; $7baf: $7f
	jp $8f7c                                         ; $7bb0: $c3 $7c $8f


	db $fc                                           ; $7bb3: $fc
	sbc a                                            ; $7bb4: $9f
	di                                               ; $7bb5: $f3
	di                                               ; $7bb6: $f3
	rst SubAFromDE                                          ; $7bb7: $df
	rrca                                             ; $7bb8: $0f
	rst SubAFromDE                                          ; $7bb9: $df
	dec [hl]                                         ; $7bba: $35
	rst SubAFromDE                                          ; $7bbb: $df
	ld l, e                                          ; $7bbc: $6b

jr_01b_7bbd:
	ld [hl], l                                       ; $7bbd: $75
	inc e                                            ; $7bbe: $1c
	rst SubAFromDE                                          ; $7bbf: $df
	ldh a, [$df]                                     ; $7bc0: $f0 $df
	ret nz                                           ; $7bc2: $c0

	ld l, [hl]                                       ; $7bc3: $6e
	inc d                                            ; $7bc4: $14
	rst SubAFromDE                                          ; $7bc5: $df
	ld b, $7e                                        ; $7bc6: $06 $7e
	ld [hl], $7f                                     ; $7bc8: $36 $7f
	adc l                                            ; $7bca: $8d
	ld [hl], l                                       ; $7bcb: $75
	ld [hl], $5d                                     ; $7bcc: $36 $5d
	or h                                             ; $7bce: $b4
	halt                                             ; $7bcf: $76
	ld [hl], h                                       ; $7bd0: $74
	ld a, [hl]                                       ; $7bd1: $7e

jr_01b_7bd2:
	ld l, b                                          ; $7bd2: $68
	ld [hl], a                                       ; $7bd3: $77
	db $ec                                           ; $7bd4: $ec
	rst SubAFromDE                                          ; $7bd5: $df
	rrca                                             ; $7bd6: $0f
	ld a, l                                          ; $7bd7: $7d
	ret c                                            ; $7bd8: $d8

	add a                                            ; $7bd9: $87
	db $f4                                           ; $7bda: $f4
	rst GetHLinHL                                          ; $7bdb: $cf
	ld hl, sp+$1f                                    ; $7bdc: $f8 $1f
	xor $ef                                          ; $7bde: $ee $ef
	ld hl, $233f                                     ; $7be0: $21 $3f $23
	ccf                                              ; $7be3: $3f
	ld a, [hl]                                       ; $7be4: $7e
	ld c, a                                          ; $7be5: $4f
	rst FarCall                                          ; $7be6: $f7
	sub h                                            ; $7be7: $94
	db $e3                                           ; $7be8: $e3
	db $e3                                           ; $7be9: $e3
	ld [hl+], a                                      ; $7bea: $22
	db $e3                                           ; $7beb: $e3
	pop bc                                           ; $7bec: $c1
	pop bc                                           ; $7bed: $c1
	ld [hl+], a                                      ; $7bee: $22
	db $e3                                           ; $7bef: $e3
	ccf                                              ; $7bf0: $3f
	rst $38                                          ; $7bf1: $ff
	ld [hl], a                                       ; $7bf2: $77
	nop                                              ; $7bf3: $00
	ld a, l                                          ; $7bf4: $7d
	call z, $389c                                    ; $7bf5: $cc $9c $38
	ret c                                            ; $7bf8: $d8

	ld h, b                                          ; $7bf9: $60
	ld a, b                                          ; $7bfa: $78
	sbc [hl]                                         ; $7bfb: $9e
	halt                                             ; $7bfc: $76
	ldh [$db], a                                     ; $7bfd: $e0 $db
	add b                                            ; $7bff: $80
	halt                                             ; $7c00: $76
	jp c, $d076                                      ; $7c01: $da $76 $d0

	ld e, a                                          ; $7c04: $5f
	ld h, d                                          ; $7c05: $62
	rst AddAOntoHL                                          ; $7c06: $ef
	rst SubAFromDE                                          ; $7c07: $df
	ldh [$df], a                                     ; $7c08: $e0 $df
	ret c                                            ; $7c0a: $d8

	rst SubAFromDE                                          ; $7c0b: $df
	db $ec                                           ; $7c0c: $ec
	rst SubAFromDE                                          ; $7c0d: $df
	sub $df                                          ; $7c0e: $d6 $df
	ld l, d                                          ; $7c10: $6a
	rst SubAFromDE                                          ; $7c11: $df
	dec [hl]                                         ; $7c12: $35
	rst SubAFromDE                                          ; $7c13: $df
	dec de                                           ; $7c14: $1b
	ld [hl], l                                       ; $7c15: $75
	and d                                            ; $7c16: $a2
	db $dd                                           ; $7c17: $dd
	ld bc, $dff1                                     ; $7c18: $01 $f1 $df
	ld a, a                                          ; $7c1b: $7f
	rst $38                                          ; $7c1c: $ff
	rst SubAFromDE                                          ; $7c1d: $df
	inc bc                                           ; $7c1e: $03
	ld a, l                                          ; $7c1f: $7d
	sbc $93                                          ; $7c20: $de $93
	cp a                                             ; $7c22: $bf
	or c                                             ; $7c23: $b1
	rst SubAFromDE                                          ; $7c24: $df
	db $e3                                           ; $7c25: $e3
	call z, $f17c                                    ; $7c26: $cc $7c $f1
	ld de, $e3e2                                     ; $7c29: $11 $e2 $e3
	rlca                                             ; $7c2c: $07
	dec b                                            ; $7c2d: $05
	ld a, c                                          ; $7c2e: $79
	ld a, e                                          ; $7c2f: $7b
	sbc c                                            ; $7c30: $99
	ld b, $09                                        ; $7c31: $06 $09
	rrca                                             ; $7c33: $0f
	ld c, $0e                                        ; $7c34: $0e $0e
	ld de, $de7a                                     ; $7c36: $11 $7a $de
	ld [hl], a                                       ; $7c39: $77
	sbc [hl]                                         ; $7c3a: $9e
	rst SubAFromDE                                          ; $7c3b: $df
	ld hl, sp-$7a                                    ; $7c3c: $f8 $86
	ld b, $fe                                        ; $7c3e: $06 $fe
	rrca                                             ; $7c40: $0f
	ld sp, hl                                        ; $7c41: $f9

jr_01b_7c42:
	sbc a                                            ; $7c42: $9f
	db $fd                                           ; $7c43: $fd
	cp d                                             ; $7c44: $ba
	and $fc                                          ; $7c45: $e6 $fc
	db $e4                                           ; $7c47: $e4
	jr jr_01b_7c42                                   ; $7c48: $18 $f8

	cp b                                             ; $7c4a: $b8
	ld hl, sp-$04                                    ; $7c4b: $f8 $fc
	call nz, $beba                                   ; $7c4d: $c4 $ba $be
	ld d, $1e                                        ; $7c50: $16 $1e
	add hl, bc                                       ; $7c52: $09
	rrca                                             ; $7c53: $0f
	ld de, $ff1f                                     ; $7c54: $11 $1f $ff
	ld l, b                                          ; $7c57: $68
	ldh [c], a                                       ; $7c58: $e2
	rst SubAFromDE                                          ; $7c59: $df
	inc a                                            ; $7c5a: $3c
	sub l                                            ; $7c5b: $95
	ld a, [hl]                                       ; $7c5c: $7e
	ld b, d                                          ; $7c5d: $42
	rst $38                                          ; $7c5e: $ff
	add c                                            ; $7c5f: $81
	rst $38                                          ; $7c60: $ff
	add c                                            ; $7c61: $81
	ld a, [hl]                                       ; $7c62: $7e
	ld b, d                                          ; $7c63: $42
	inc a                                            ; $7c64: $3c
	inc a                                            ; $7c65: $3c
	rst AddAOntoHL                                          ; $7c66: $ef
	rst SubAFromDE                                          ; $7c67: $df
	db $10                                           ; $7c68: $10
	sbc c                                            ; $7c69: $99
	jr c, jr_01b_7c94                                ; $7c6a: $38 $28

	inc a                                            ; $7c6c: $3c
	inc h                                            ; $7c6d: $24
	inc e                                            ; $7c6e: $1c
	inc e                                            ; $7c6f: $1c
	rst FarCall                                          ; $7c70: $f7
	rst SubAFromDE                                          ; $7c71: $df
	jr jr_01b_7cef                                   ; $7c72: $18 $7b

	ldh a, [$9c]                                     ; $7c74: $f0 $9c
	inc d                                            ; $7c76: $14
	inc c                                            ; $7c77: $0c
	inc c                                            ; $7c78: $0c
	ld c, h                                          ; $7c79: $4c
	ld c, [hl]                                       ; $7c7a: $4e
	ld a, [hl]                                       ; $7c7b: $7e
	adc b                                            ; $7c7c: $88
	rst SubAFromDE                                          ; $7c7d: $df
	ld h, b                                          ; $7c7e: $60
	rst FarCall                                          ; $7c7f: $f7
	rst SubAFromDE                                          ; $7c80: $df
	jr nc, jr_01b_7d01                               ; $7c81: $30 $7e

	ld a, e                                          ; $7c83: $7b
	sbc e                                            ; $7c84: $9b
	ld [hl], b                                       ; $7c85: $70
	ld d, b                                          ; $7c86: $50
	jr nz, jr_01b_7ca9                               ; $7c87: $20 $20

	push af                                          ; $7c89: $f5
	ld a, c                                          ; $7c8a: $79
	ld b, [hl]                                       ; $7c8b: $46
	ld a, b                                          ; $7c8c: $78
	call c, $3c91                                    ; $7c8d: $dc $91 $3c
	ccf                                              ; $7c90: $3f
	ld a, b                                          ; $7c91: $78
	ld e, l                                          ; $7c92: $5d
	ld d, b                                          ; $7c93: $50

jr_01b_7c94:
	ld a, l                                          ; $7c94: $7d
	ld d, b                                          ; $7c95: $50
	ld [hl], a                                       ; $7c96: $77
	ld d, b                                          ; $7c97: $50
	ld a, l                                          ; $7c98: $7d
	inc a                                            ; $7c99: $3c
	ccf                                              ; $7c9a: $3f
	inc bc                                           ; $7c9b: $03
	inc bc                                           ; $7c9c: $03
	halt                                             ; $7c9d: $76
	and d                                            ; $7c9e: $a2
	adc a                                            ; $7c9f: $8f
	dec c                                            ; $7ca0: $0d
	dec bc                                           ; $7ca1: $0b
	dec e                                            ; $7ca2: $1d
	dec de                                           ; $7ca3: $1b
	ld l, l                                          ; $7ca4: $6d
	ld a, e                                          ; $7ca5: $7b
	call $8dfb                                       ; $7ca6: $cd $fb $8d

jr_01b_7ca9:
	db $db                                           ; $7ca9: $db
	dec c                                            ; $7caa: $0d
	db $db                                           ; $7cab: $db
	dec c                                            ; $7cac: $0d
	ld e, e                                          ; $7cad: $5b
	dec c                                            ; $7cae: $0d
	ld a, e                                          ; $7caf: $7b
	ld [hl], e                                       ; $7cb0: $73
	ld a, [$fb9e]                                    ; $7cb1: $fa $9e $fb
	ld a, e                                          ; $7cb4: $7b
	db $fc                                           ; $7cb5: $fc
	sbc h                                            ; $7cb6: $9c
	db $db                                           ; $7cb7: $db
	adc l                                            ; $7cb8: $8d
	ei                                               ; $7cb9: $fb
	ld [hl], a                                       ; $7cba: $77
	ld e, $e0                                        ; $7cbb: $1e $e0
	add e                                            ; $7cbd: $83
	ld [de], a                                       ; $7cbe: $12
	nop                                              ; $7cbf: $00
	pop bc                                           ; $7cc0: $c1
	rst $38                                          ; $7cc1: $ff
	inc bc                                           ; $7cc2: $03
	rst $38                                          ; $7cc3: $ff
	inc bc                                           ; $7cc4: $03
	rst $38                                          ; $7cc5: $ff
	inc bc                                           ; $7cc6: $03
	rst $38                                          ; $7cc7: $ff
	inc bc                                           ; $7cc8: $03
	rst $38                                          ; $7cc9: $ff
	inc bc                                           ; $7cca: $03
	rst $38                                          ; $7ccb: $ff
	inc bc                                           ; $7ccc: $03
	rst $38                                          ; $7ccd: $ff
	rst JumpTable                                          ; $7cce: $c7
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

jr_01b_7cef:
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

jr_01b_7d01:
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

Jump_01b_7e7e:
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

Jump_01b_7f7f:
	rst $38                                          ; $7f7f: $ff
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
	rst $38                                          ; $7fff: $ff
