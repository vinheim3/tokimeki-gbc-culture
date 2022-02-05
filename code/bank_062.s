; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

	add b                                            ; $4000: $80
	db $fd                                           ; $4001: $fd
	add [hl]                                         ; $4002: $86
	rst AddAOntoHL                                          ; $4003: $ef
	cp l                                             ; $4004: $bd
	rst AddAOntoHL                                          ; $4005: $ef
	dec a                                            ; $4006: $3d
	rst AddAOntoHL                                          ; $4007: $ef
	dec sp                                           ; $4008: $3b
	rst $38                                          ; $4009: $ff
	ld a, $ff                                        ; $400a: $3e $ff

jr_062_400c:
	jr c, jr_062_400c                                ; $400c: $38 $fe

	daa                                              ; $400e: $27
	rst $38                                          ; $400f: $ff
	dec l                                            ; $4010: $2d
	ei                                               ; $4011: $fb
	dec bc                                           ; $4012: $0b
	rst $38                                          ; $4013: $ff
	rrca                                             ; $4014: $0f
	db $fd                                           ; $4015: $fd
	rrca                                             ; $4016: $0f
	add hl, sp                                       ; $4017: $39
	inc c                                            ; $4018: $0c
	ld a, $04                                        ; $4019: $3e $04
	inc sp                                           ; $401b: $33
	cp a                                             ; $401c: $bf
	rra                                              ; $401d: $1f
	rra                                              ; $401e: $1f
	adc b                                            ; $401f: $88
	db $10                                           ; $4020: $10
	ccf                                              ; $4021: $3f
	db $10                                           ; $4022: $10
	rst SubAFromHL                                          ; $4023: $d7
	ld a, a                                          ; $4024: $7f
	push af                                          ; $4025: $f5
	ld a, l                                          ; $4026: $7d
	db $fd                                           ; $4027: $fd
	db $fd                                           ; $4028: $fd
	ld hl, sp+$38                                    ; $4029: $f8 $38
	ldh a, [$30]                                     ; $402b: $f0 $30
	ldh a, [rSVBK]                                   ; $402d: $f0 $70
	ld hl, sp-$08                                    ; $402f: $f8 $f8
	ld a, b                                          ; $4031: $78
	xor b                                            ; $4032: $a8
	ld hl, sp+$38                                    ; $4033: $f8 $38
	ld hl, sp+$28                                    ; $4035: $f8 $28
	ld [hl], a                                       ; $4037: $77
	cp $7f                                           ; $4038: $fe $7f
	ldh a, [$80]                                     ; $403a: $f0 $80
	or b                                             ; $403c: $b0
	ld [hl], b                                       ; $403d: $70
	ret nz                                           ; $403e: $c0

	ld [hl], b                                       ; $403f: $70
	ret z                                            ; $4040: $c8

	ld a, b                                          ; $4041: $78
	ld c, b                                          ; $4042: $48
	ld hl, sp-$1c                                    ; $4043: $f8 $e4
	db $fc                                           ; $4045: $fc
	and h                                            ; $4046: $a4
	db $fc                                           ; $4047: $fc
	jp nc, Jump_062_52fe                             ; $4048: $d2 $fe $52

	cp $29                                           ; $404b: $fe $29
	rst $38                                          ; $404d: $ff
	dec h                                            ; $404e: $25
	rst $38                                          ; $404f: $ff
	ld d, $ff                                        ; $4050: $16 $ff
	sub e                                            ; $4052: $93
	rst $38                                          ; $4053: $ff
	jp nc, $e97f                                     ; $4054: $d2 $7f $e9

	cp a                                             ; $4057: $bf
	ld sp, hl                                        ; $4058: $f9
	rst SubAFromDE                                          ; $4059: $df
	ld sp, hl                                        ; $405a: $f9
	sbc b                                            ; $405b: $98
	rst SubAFromDE                                          ; $405c: $df
	ld hl, sp+$6f                                    ; $405d: $f8 $6f
	ld sp, hl                                        ; $405f: $f9
	ld c, a                                          ; $4060: $4f
	ld hl, sp+$4f                                    ; $4061: $f8 $4f
	ld b, e                                          ; $4063: $43
	ld b, b                                          ; $4064: $40
	sbc d                                            ; $4065: $9a
	ret z                                            ; $4066: $c8

	rst $38                                          ; $4067: $ff
	sub e                                            ; $4068: $93
	db $fd                                           ; $4069: $fd
	inc b                                            ; $406a: $04
	ld e, a                                          ; $406b: $5f
	ld b, b                                          ; $406c: $40
	ld b, e                                          ; $406d: $43
	ld h, b                                          ; $406e: $60
	sbc [hl]                                         ; $406f: $9e
	nop                                              ; $4070: $00
	ld [hl], a                                       ; $4071: $77
	ld e, [hl]                                       ; $4072: $5e
	scf                                              ; $4073: $37
	ld h, b                                          ; $4074: $60
	ld a, a                                          ; $4075: $7f
	dec l                                            ; $4076: $2d
	sbc c                                            ; $4077: $99
	rst $38                                          ; $4078: $ff
	daa                                              ; $4079: $27
	rst $38                                          ; $407a: $ff
	dec c                                            ; $407b: $0d
	ei                                               ; $407c: $fb
	dec bc                                           ; $407d: $0b
	dec de                                           ; $407e: $1b
	ld h, b                                          ; $407f: $60
	ld a, a                                          ; $4080: $7f
	ld h, h                                          ; $4081: $64
	sbc [hl]                                         ; $4082: $9e
	add sp, $47                                      ; $4083: $e8 $47
	ld h, b                                          ; $4085: $60
	ld d, e                                          ; $4086: $53
	add b                                            ; $4087: $80
	sbc [hl]                                         ; $4088: $9e
	ld a, a                                          ; $4089: $7f
	ld [hl], e                                       ; $408a: $73
	add b                                            ; $408b: $80
	sbc l                                            ; $408c: $9d
	sub b                                            ; $408d: $90
	rst $38                                          ; $408e: $ff
	cp a                                             ; $408f: $bf
	adc a                                            ; $4090: $8f
	rra                                              ; $4091: $1f
	sbc c                                            ; $4092: $99
	rlca                                             ; $4093: $07
	ld a, $3e                                        ; $4094: $3e $3e

jr_062_4096:
	rrca                                             ; $4096: $0f
	rlca                                             ; $4097: $07
	add e                                            ; $4098: $83
	ld d, a                                          ; $4099: $57
	add b                                            ; $409a: $80

Call_062_409b:
	sbc h                                            ; $409b: $9c
	ld h, $ff                                        ; $409c: $26 $ff
	db $ec                                           ; $409e: $ec
	ld a, e                                          ; $409f: $7b
	sbc d                                            ; $40a0: $9a
	cp l                                             ; $40a1: $bd
	rst $38                                          ; $40a2: $ff
	rst $38                                          ; $40a3: $ff
	cp $f0                                           ; $40a4: $fe $f0
	sbc [hl]                                         ; $40a6: $9e
	ldh a, [$de]                                     ; $40a7: $f0 $de
	ret nz                                           ; $40a9: $c0

	ld a, e                                          ; $40aa: $7b
	ld a, l                                          ; $40ab: $7d
	ld [hl], e                                       ; $40ac: $73
	add b                                            ; $40ad: $80
	sbc l                                            ; $40ae: $9d
	add hl, sp                                       ; $40af: $39
	rst $38                                          ; $40b0: $ff
	ld h, a                                          ; $40b1: $67
	ld a, [hl]                                       ; $40b2: $7e
	cp a                                             ; $40b3: $bf
	rst $38                                          ; $40b4: $ff
	rst $38                                          ; $40b5: $ff
	sbc d                                            ; $40b6: $9a
	rlca                                             ; $40b7: $07
	dec a                                            ; $40b8: $3d
	dec c                                            ; $40b9: $0d

jr_062_40ba:
	ccf                                              ; $40ba: $3f
	ld b, $53                                        ; $40bb: $06 $53
	add b                                            ; $40bd: $80
	sbc h                                            ; $40be: $9c
	ld a, l                                          ; $40bf: $7d

Call_062_40c0:
	ld hl, sp-$08                                    ; $40c0: $f8 $f8
	ld l, e                                          ; $40c2: $6b
	add b                                            ; $40c3: $80
	ld a, a                                          ; $40c4: $7f
	add [hl]                                         ; $40c5: $86
	rst SubAFromDE                                          ; $40c6: $df
	ld hl, sp+$7e                                    ; $40c7: $f8 $7e
	call c, $8003                                    ; $40c9: $dc $03 $80
	ld a, e                                          ; $40cc: $7b
	add b                                            ; $40cd: $80
	sbc h                                            ; $40ce: $9c
	inc bc                                           ; $40cf: $03
	ccf                                              ; $40d0: $3f
	jr c, jr_062_40ee                                ; $40d1: $38 $1b

	add b                                            ; $40d3: $80
	sbc d                                            ; $40d4: $9a
	ld h, b                                          ; $40d5: $60
	ldh a, [$80]                                     ; $40d6: $f0 $80
	ldh a, [$30]                                     ; $40d8: $f0 $30
	ld a, e                                          ; $40da: $7b
	ld a, a                                          ; $40db: $7f
	ccf                                              ; $40dc: $3f
	add b                                            ; $40dd: $80
	sbc d                                            ; $40de: $9a
	ld bc, $06ff                                     ; $40df: $01 $ff $06
	ccf                                              ; $40e2: $3f
	add hl, bc                                       ; $40e3: $09
	dec de                                           ; $40e4: $1b
	add b                                            ; $40e5: $80
	sbc h                                            ; $40e6: $9c
	cp b                                             ; $40e7: $b8
	ld hl, sp+$68                                    ; $40e8: $f8 $68
	ld [hl], a                                       ; $40ea: $77
	ld a, [hl]                                       ; $40eb: $7e
	ld h, a                                          ; $40ec: $67
	add b                                            ; $40ed: $80

jr_062_40ee:
	push af                                          ; $40ee: $f5
	ld a, a                                          ; $40ef: $7f
	or c                                             ; $40f0: $b1
	sub l                                            ; $40f1: $95
	cp $38                                           ; $40f2: $fe $38
	ccf                                              ; $40f4: $3f
	rlca                                             ; $40f5: $07
	adc a                                            ; $40f6: $8f
	ld bc, $c0ff                                     ; $40f7: $01 $ff $c0
	rra                                              ; $40fa: $1f
	jr c, jr_062_40ba                                ; $40fb: $38 $bd

	rst JumpTable                                          ; $40fd: $c7
	ld b, b                                          ; $40fe: $40
	ld l, b                                          ; $40ff: $68
	rst AddAOntoHL                                          ; $4100: $ef
	add b                                            ; $4101: $80
	ccf                                              ; $4102: $3f
	nop                                              ; $4103: $00
	ld a, a                                          ; $4104: $7f
	jr nc, jr_062_4096                               ; $4105: $30 $8f

	nop                                              ; $4107: $00
	ccf                                              ; $4108: $3f
	ld bc, $017f                                     ; $4109: $01 $7f $01
	ccf                                              ; $410c: $3f
	inc bc                                           ; $410d: $03
	ccf                                              ; $410e: $3f
	rlca                                             ; $410f: $07
	ld a, a                                          ; $4110: $7f
	rrca                                             ; $4111: $0f
	di                                               ; $4112: $f3
	rst $38                                          ; $4113: $ff
	ld hl, sp-$01                                    ; $4114: $f8 $ff
	cp $7f                                           ; $4116: $fe $7f
	cp $7f                                           ; $4118: $fe $7f
	ld [$06ff], sp                                   ; $411a: $08 $ff $06
	rrca                                             ; $411d: $0f
	ld hl, $3133                                     ; $411e: $21 $33 $31
	rst SubAFromDE                                          ; $4121: $df
	ccf                                              ; $4122: $3f
	ld a, e                                          ; $4123: $7b
	ldh [$9d], a                                     ; $4124: $e0 $9d
	sbc a                                            ; $4126: $9f
	db $10                                           ; $4127: $10
	rlca                                             ; $4128: $07
	ldh [$9d], a                                     ; $4129: $e0 $9d
	ld a, a                                          ; $412b: $7f
	ld h, c                                          ; $412c: $61
	rrca                                             ; $412d: $0f
	ldh [$9b], a                                     ; $412e: $e0 $9b
	rst $38                                          ; $4130: $ff
	pop af                                           ; $4131: $f1
	ld a, a                                          ; $4132: $7f
	ld h, c                                          ; $4133: $61
	cpl                                              ; $4134: $2f
	ldh [rAUD3LEN], a                                ; $4135: $e0 $1b
	inc bc                                           ; $4137: $03
	rst $38                                          ; $4138: $ff
	rst SubAFromDE                                          ; $4139: $df
	ld bc, $0283                                     ; $413a: $01 $83 $02
	inc bc                                           ; $413d: $03
	inc b                                            ; $413e: $04
	rlca                                             ; $413f: $07
	add hl, bc                                       ; $4140: $09
	rrca                                             ; $4141: $0f
	dec bc                                           ; $4142: $0b
	rrca                                             ; $4143: $0f
	rrca                                             ; $4144: $0f
	ld c, $0f                                        ; $4145: $0e $0f
	ld a, [bc]                                       ; $4147: $0a
	rra                                              ; $4148: $1f
	add hl, de                                       ; $4149: $19
	rra                                              ; $414a: $1f
	dec d                                            ; $414b: $15
	rra                                              ; $414c: $1f
	ld d, $1f                                        ; $414d: $16 $1f
	inc e                                            ; $414f: $1c
	ccf                                              ; $4150: $3f
	inc h                                            ; $4151: $24
	ccf                                              ; $4152: $3f
	jr z, jr_062_41d4                                ; $4153: $28 $7f

	ld c, b                                          ; $4155: $48
	ld a, a                                          ; $4156: $7f
	ld d, c                                          ; $4157: $51
	di                                               ; $4158: $f3
	db $dd                                           ; $4159: $dd
	ld bc, $d27f                                     ; $415a: $01 $7f $d2
	ld [hl], a                                       ; $415d: $77
	ret nc                                           ; $415e: $d0

	add b                                            ; $415f: $80
	ld [$110f], sp                                   ; $4160: $08 $0f $11
	ld e, $22                                        ; $4163: $1e $22
	dec a                                            ; $4165: $3d

jr_062_4166:
	ld b, h                                          ; $4166: $44
	ld a, e                                          ; $4167: $7b
	add c                                            ; $4168: $81
	rst $38                                          ; $4169: $ff
	ld b, $fe                                        ; $416a: $06 $fe
	jr jr_062_4166                                   ; $416c: $18 $f8

	ld h, a                                          ; $416e: $67
	ldh [$f8], a                                     ; $416f: $e0 $f8
	ld hl, sp-$1b                                    ; $4171: $f8 $e5
	ld b, c                                          ; $4173: $41
	rlc d                                            ; $4174: $cb $02
	sub a                                            ; $4176: $97
	ld [bc], a                                       ; $4177: $02
	cp l                                             ; $4178: $bd
	ld bc, $0171                                     ; $4179: $01 $71 $01
	ld b, l                                          ; $417c: $45
	ld bc, $968b                                     ; $417d: $01 $8b $96
	ld [bc], a                                       ; $4180: $02
	inc sp                                           ; $4181: $33
	ld [bc], a                                       ; $4182: $02
	ld l, l                                          ; $4183: $6d
	dec c                                            ; $4184: $0d
	or h                                             ; $4185: $b4
	jr nc, jr_062_41da                               ; $4186: $30 $52

	ld b, b                                          ; $4188: $40
	ld b, a                                          ; $4189: $47
	add $df                                          ; $418a: $c6 $df
	rlca                                             ; $418c: $07
	ld a, a                                          ; $418d: $7f
	call nz, $0a8c                                   ; $418e: $c4 $8c $0a
	dec c                                            ; $4191: $0d
	dec d                                            ; $4192: $15
	ld a, [de]                                       ; $4193: $1a
	add hl, de                                       ; $4194: $19
	ld d, $1f                                        ; $4195: $16 $1f
	inc d                                            ; $4197: $14
	rla                                              ; $4198: $17
	inc e                                            ; $4199: $1c
	ld d, $1d                                        ; $419a: $16 $1d
	ld c, $0d                                        ; $419c: $0e $0d
	inc c                                            ; $419e: $0c
	rrca                                             ; $419f: $0f
	inc c                                            ; $41a0: $0c
	rrca                                             ; $41a1: $0f
	ld a, [bc]                                       ; $41a2: $0a
	ld a, e                                          ; $41a3: $7b
	cp $7f                                           ; $41a4: $fe $7f
	ld a, [hl]                                       ; $41a6: $7e
	ld a, a                                          ; $41a7: $7f
	xor h                                            ; $41a8: $ac
	sbc h                                            ; $41a9: $9c
	inc c                                            ; $41aa: $0c
	dec bc                                           ; $41ab: $0b
	inc b                                            ; $41ac: $04
	ld a, e                                          ; $41ad: $7b
	cp $80                                           ; $41ae: $fe $80
	inc d                                            ; $41b0: $14
	dec de                                           ; $41b1: $1b
	inc d                                            ; $41b2: $14
	dec de                                           ; $41b3: $1b
	dec d                                            ; $41b4: $15
	ld a, [de]                                       ; $41b5: $1a
	dec e                                            ; $41b6: $1d
	ld [de], a                                       ; $41b7: $12
	dec c                                            ; $41b8: $0d
	ld [de], a                                       ; $41b9: $12
	dec hl                                           ; $41ba: $2b
	inc [hl]                                         ; $41bb: $34
	ld a, [hl+]                                      ; $41bc: $2a
	dec [hl]                                         ; $41bd: $35
	ld [hl], $29                                     ; $41be: $36 $29
	ld d, $29                                        ; $41c0: $16 $29
	ld d, h                                          ; $41c2: $54
	ld l, e                                          ; $41c3: $6b
	ld l, l                                          ; $41c4: $6d
	ld d, e                                          ; $41c5: $53
	xor l                                            ; $41c6: $ad
	db $d3                                           ; $41c7: $d3
	reti                                             ; $41c8: $d9


	and a                                            ; $41c9: $a7
	ld e, d                                          ; $41ca: $5a
	and a                                            ; $41cb: $a7
	or d                                             ; $41cc: $b2
	ld c, a                                          ; $41cd: $4f
	inc [hl]                                         ; $41ce: $34
	add b                                            ; $41cf: $80
	rst GetHLinHL                                          ; $41d0: $cf
	ld h, l                                          ; $41d1: $65
	sbc a                                            ; $41d2: $9f
	ld l, a                                          ; $41d3: $6f

jr_062_41d4:
	sbc a                                            ; $41d4: $9f
	call $9d3e                                       ; $41d5: $cd $3e $9d
	ld a, d                                          ; $41d8: $7a
	dec l                                            ; $41d9: $2d

jr_062_41da:
	ld [$e86f], a                                    ; $41da: $ea $6f $e8
	sbc $b8                                          ; $41dd: $de $b8
	adc d                                            ; $41df: $8a
	ld hl, sp+$6a                                    ; $41e0: $f8 $6a
	sbc b                                            ; $41e2: $98
	ld l, $d8                                        ; $41e3: $2e $d8
	sbc a                                            ; $41e5: $9f
	ld l, b                                          ; $41e6: $68
	rst GetHLinHL                                          ; $41e7: $cf
	cp d                                             ; $41e8: $ba
	ld a, a                                          ; $41e9: $7f
	ld c, e                                          ; $41ea: $4b
	ld l, a                                          ; $41eb: $6f
	ld a, $3c                                        ; $41ec: $3e $3c
	db $10                                           ; $41ee: $10
	sub c                                            ; $41ef: $91
	ld h, e                                          ; $41f0: $63
	nop                                              ; $41f1: $00
	add a                                            ; $41f2: $87
	ld bc, $0007                                     ; $41f3: $01 $07 $00
	inc bc                                           ; $41f6: $03
	nop                                              ; $41f7: $00
	add e                                            ; $41f8: $83
	nop                                              ; $41f9: $00
	pop bc                                           ; $41fa: $c1
	add b                                            ; $41fb: $80
	ld h, c                                          ; $41fc: $61
	ret nz                                           ; $41fd: $c0

	push hl                                          ; $41fe: $e5
	ld a, a                                          ; $41ff: $7f
	ld [hl], d                                       ; $4200: $72
	add b                                            ; $4201: $80
	dec bc                                           ; $4202: $0b
	inc c                                            ; $4203: $0c
	dec d                                            ; $4204: $15
	dec de                                           ; $4205: $1b
	dec hl                                           ; $4206: $2b
	ld [hl], $4f                                     ; $4207: $36 $4f
	ld a, h                                          ; $4209: $7c

jr_062_420a:
	add a                                            ; $420a: $87
	rst $38                                          ; $420b: $ff
	inc l                                            ; $420c: $2c
	rst SubAFromDE                                          ; $420d: $df
	ld [hl], a                                       ; $420e: $77
	cp b                                             ; $420f: $b8
	db $db                                           ; $4210: $db
	ld h, h                                          ; $4211: $64
	or [hl]                                          ; $4212: $b6
	ret                                              ; $4213: $c9


	ld l, c                                          ; $4214: $69
	sub d                                            ; $4215: $92
	sub d                                            ; $4216: $92
	inc h                                            ; $4217: $24
	ret nz                                           ; $4218: $c0

	inc h                                            ; $4219: $24
	ld hl, $a140                                     ; $421a: $21 $40 $a1
	ld b, b                                          ; $421d: $40
	ld c, e                                          ; $421e: $4b
	add b                                            ; $421f: $80
	ld d, e                                          ; $4220: $53
	sbc h                                            ; $4221: $9c
	adc b                                            ; $4222: $88
	ld c, e                                          ; $4223: $4b
	sbc b                                            ; $4224: $98
	ldh [$c1], a                                     ; $4225: $e0 $c1
	add b                                            ; $4227: $80
	xor [hl]                                         ; $4228: $ae
	cp $ad                                           ; $4229: $fe $ad
	db $fc                                           ; $422b: $fc

jr_062_422c:
	xor d                                            ; $422c: $aa
	ld hl, sp-$47                                    ; $422d: $f8 $b9
	ld hl, sp-$4d                                    ; $422f: $f8 $b3

jr_062_4231:
	ldh a, [$f4]                                     ; $4231: $f0 $f4
	ldh a, [$eb]                                     ; $4233: $f0 $eb
	ldh [$e7], a                                     ; $4235: $e0 $e7
	jr nz, @+$01                                     ; $4237: $20 $ff

jr_062_4239:
	jr nc, jr_062_4239                               ; $4239: $30 $fe

	ldh a, [$fd]                                     ; $423b: $f0 $fd
	sub b                                            ; $423d: $90
	di                                               ; $423e: $f3
	db $10                                           ; $423f: $10
	rst FarCall                                          ; $4240: $f7
	jr nc, jr_062_4231                               ; $4241: $30 $ee

	add sp, -$18                                     ; $4243: $e8 $e8
	jr nz, jr_062_422c                               ; $4245: $20 $e5

	sbc [hl]                                         ; $4247: $9e
	ld hl, $dfed                                     ; $4248: $21 $ed $df
	ld bc, $f67e                                     ; $424b: $01 $7e $f6
	add b                                            ; $424e: $80
	daa                                              ; $424f: $27
	jr c, jr_062_420a                                ; $4250: $38 $b8

	rst JumpTable                                          ; $4252: $c7
	rst GetHLinHL                                          ; $4253: $cf
	ld a, $7f                                        ; $4254: $3e $7f
	ldh [$fb], a                                     ; $4256: $e0 $fb
	add b                                            ; $4258: $80
	ld h, a                                          ; $4259: $67
	inc bc                                           ; $425a: $03
	ld sp, hl                                        ; $425b: $f9
	ld a, [hl]                                       ; $425c: $7e
	ld e, $e1                                        ; $425d: $1e $e1
	db $fc                                           ; $425f: $fc
	ld [bc], a                                       ; $4260: $02
	ei                                               ; $4261: $fb
	inc b                                            ; $4262: $04
	pop af                                           ; $4263: $f1
	ld [$10a9], sp                                   ; $4264: $08 $a9 $10
	ld b, d                                          ; $4267: $42

jr_062_4268:
	ld sp, $21c6                                     ; $4268: $31 $c6 $21
	add l                                            ; $426b: $85
	ld h, d                                          ; $426c: $62
	xor h                                            ; $426d: $ac
	sub [hl]                                         ; $426e: $96
	ld b, d                                          ; $426f: $42
	xor b                                            ; $4270: $a8
	ld b, [hl]                                       ; $4271: $46
	jr c, @-$38                                      ; $4272: $38 $c6

jr_062_4274:
	ld e, d                                          ; $4274: $5a
	and $d3                                          ; $4275: $e6 $d3
	xor $e0                                          ; $4277: $ee $e0
	pop bc                                           ; $4279: $c1
	sbc l                                            ; $427a: $9d
	push hl                                          ; $427b: $e5
	ret nz                                           ; $427c: $c0

	ld a, e                                          ; $427d: $7b
	cp $85                                           ; $427e: $fe $85
	and b                                            ; $4280: $a0
	push af                                          ; $4281: $f5
	and b                                            ; $4282: $a0
	push af                                          ; $4283: $f5
	sub b                                            ; $4284: $90
	rst $38                                          ; $4285: $ff
	sub b                                            ; $4286: $90
	rst $38                                          ; $4287: $ff
	adc d                                            ; $4288: $8a
	rst $38                                          ; $4289: $ff
	adc a                                            ; $428a: $8f
	rst $38                                          ; $428b: $ff
	sub b                                            ; $428c: $90
	di                                               ; $428d: $f3
	and b                                            ; $428e: $a0
	pop hl                                           ; $428f: $e1
	ret nz                                           ; $4290: $c0

	pop hl                                           ; $4291: $e1
	ret nz                                           ; $4292: $c0

	pop bc                                           ; $4293: $c1
	add b                                            ; $4294: $80
	pop bc                                           ; $4295: $c1
	add b                                            ; $4296: $80
	add c                                            ; $4297: $81
	nop                                              ; $4298: $00
	add c                                            ; $4299: $81
	db $f4                                           ; $429a: $f4
	rst SubAFromDE                                          ; $429b: $df
	ld b, $df                                        ; $429c: $06 $df
	inc bc                                           ; $429e: $03
	db $dd                                           ; $429f: $dd
	ld bc, $1180                                     ; $42a0: $01 $80 $11
	pop af                                           ; $42a3: $f1
	scf                                              ; $42a4: $37
	rst GetHLinHL                                          ; $42a5: $cf
	ret                                              ; $42a6: $c9


	scf                                              ; $42a7: $37
	cp $ff                                           ; $42a8: $fe $ff
	rst $38                                          ; $42aa: $ff
	nop                                              ; $42ab: $00
	rst $38                                          ; $42ac: $ff
	nop                                              ; $42ad: $00
	inc sp                                           ; $42ae: $33
	nop                                              ; $42af: $00
	db $fd                                           ; $42b0: $fd
	ldh a, [hDisp0_OBP1]                                     ; $42b1: $f0 $87
	ld a, a                                          ; $42b3: $7f
	nop                                              ; $42b4: $00
	ccf                                              ; $42b5: $3f
	rst SubAFromBC                                          ; $42b6: $e7
	jr jr_062_4268                                   ; $42b7: $18 $af

	ld d, b                                          ; $42b9: $50
	cpl                                              ; $42ba: $2f
	sub b                                            ; $42bb: $90
	cpl                                              ; $42bc: $2f
	sub b                                            ; $42bd: $90
	dec hl                                           ; $42be: $2b
	db $10                                           ; $42bf: $10
	add hl, hl                                       ; $42c0: $29
	sbc e                                            ; $42c1: $9b
	ld [de], a                                       ; $42c2: $12
	add hl, bc                                       ; $42c3: $09
	ld [hl-], a                                      ; $42c4: $32
	ld b, h                                          ; $42c5: $44
	ld a, e                                          ; $42c6: $7b
	cp $99                                           ; $42c7: $fe $99
	call nc, $9632                                   ; $42c9: $d4 $32 $96
	ld [hl], d                                       ; $42cc: $72
	sbc e                                            ; $42cd: $9b
	halt                                             ; $42ce: $76

jr_062_42cf:
	ldh [$c1], a                                     ; $42cf: $e0 $c1
	ld a, l                                          ; $42d1: $7d
	and b                                            ; $42d2: $a0
	ld a, e                                          ; $42d3: $7b
	cp $9d                                           ; $42d4: $fe $9d
	cp $82                                           ; $42d6: $fe $82
	ld a, e                                          ; $42d8: $7b
	cp $94                                           ; $42d9: $fe $94
	add a                                            ; $42db: $87
	cp $bf                                           ; $42dc: $fe $bf
	pop af                                           ; $42de: $f1
	db $fd                                           ; $42df: $fd
	ret nz                                           ; $42e0: $c0

	db $fc                                           ; $42e1: $fc
	nop                                              ; $42e2: $00
	sbc h                                            ; $42e3: $9c
	nop                                              ; $42e4: $00
	ld c, $6b                                        ; $42e5: $0e $6b
	cp $9e                                           ; $42e7: $fe $9e
	ld b, $7b                                        ; $42e9: $06 $7b
	cp $f9                                           ; $42eb: $fe $f9
	rst SubAFromDE                                          ; $42ed: $df
	jr nz, jr_062_42cf                               ; $42ee: $20 $df

	db $10                                           ; $42f0: $10
	rst SubAFromDE                                          ; $42f1: $df
	jr jr_062_4274                                   ; $42f2: $18 $80

	ld [$a818], sp                                   ; $42f4: $08 $18 $a8
	cp b                                             ; $42f7: $b8
	add sp, $58                                      ; $42f8: $e8 $58
	ret c                                            ; $42fa: $d8

	ld a, b                                          ; $42fb: $78
	ld a, $fe                                        ; $42fc: $3e $fe
	call $00f3                                       ; $42fe: $cd $f3 $00
	rst $38                                          ; $4301: $ff
	rst JumpTable                                          ; $4302: $c7
	ld hl, sp-$08                                    ; $4303: $f8 $f8
	rra                                              ; $4305: $1f
	ld l, a                                          ; $4306: $6f
	ld b, $bd                                        ; $4307: $06 $bd
	ld bc, $80f6                                     ; $4309: $01 $f6 $80
	ccf                                              ; $430c: $3f
	ld hl, sp-$39                                    ; $430d: $f8 $c7
	ld a, $f9                                        ; $430f: $3e $f9
	rlca                                             ; $4311: $07
	or $8c                                           ; $4312: $f6 $8c
	add hl, bc                                       ; $4314: $09
	ei                                               ; $4315: $fb
	inc b                                            ; $4316: $04
	xor l                                            ; $4317: $ad
	ld d, d                                          ; $4318: $52
	ld a, $41                                        ; $4319: $3e $41
	inc d                                            ; $431b: $14
	ld c, c                                          ; $431c: $49
	rrca                                             ; $431d: $0f
	ld b, b                                          ; $431e: $40
	dec bc                                           ; $431f: $0b
	ld b, h                                          ; $4320: $44
	ld a, [bc]                                       ; $4321: $0a
	inc b                                            ; $4322: $04
	inc c                                            ; $4323: $0c
	ld [bc], a                                       ; $4324: $02
	inc l                                            ; $4325: $2c
	ld b, d                                          ; $4326: $42
	ldh [$c1], a                                     ; $4327: $e0 $c1
	ld a, l                                          ; $4329: $7d
	sub h                                            ; $432a: $94
	ld a, a                                          ; $432b: $7f
	cp $95                                           ; $432c: $fe $95
	ld b, a                                          ; $432e: $47
	inc bc                                           ; $432f: $03
	adc a                                            ; $4330: $8f
	rlca                                             ; $4331: $07
	sbc a                                            ; $4332: $9f
	add hl, bc                                       ; $4333: $09
	or a                                             ; $4334: $b7
	ld bc, $01cf                                     ; $4335: $01 $cf $01
	ld a, e                                          ; $4338: $7b
	ld d, e                                          ; $4339: $53
	sub a                                            ; $433a: $97

jr_062_433b:
	add e                                            ; $433b: $83
	db $fd                                           ; $433c: $fd
	ld b, a                                          ; $433d: $47
	ld sp, hl                                        ; $433e: $f9
	ld c, a                                          ; $433f: $4f
	pop af                                           ; $4340: $f1
	ccf                                              ; $4341: $3f
	pop hl                                           ; $4342: $e1
	ld l, e                                          ; $4343: $6b
	cp $e9                                           ; $4344: $fe $e9
	rst SubAFromDE                                          ; $4346: $df
	ret nz                                           ; $4347: $c0

	add b                                            ; $4348: $80
	jr nc, jr_062_433b                               ; $4349: $30 $f0

	adc h                                            ; $434b: $8c
	ld a, h                                          ; $434c: $7c
	ld h, d                                          ; $434d: $62
	sbc [hl]                                         ; $434e: $9e
	sbc c                                            ; $434f: $99
	ld h, a                                          ; $4350: $67
	db $e4                                           ; $4351: $e4
	sbc e                                            ; $4352: $9b
	jp c, $ad65                                      ; $4353: $da $65 $ad

	ld [hl-], a                                      ; $4356: $32
	or $19                                           ; $4357: $f6 $19
	db $eb                                           ; $4359: $eb
	adc h                                            ; $435a: $8c
	ld a, l                                          ; $435b: $7d
	add $ae                                          ; $435c: $c6 $ae
	ld h, e                                          ; $435e: $63
	ld e, d                                          ; $435f: $5a
	inc sp                                           ; $4360: $33
	xor a                                            ; $4361: $af
	ld e, c                                          ; $4362: $59
	rst SubAFromHL                                          ; $4363: $d7
	dec l                                            ; $4364: $2d
	ld a, [hl+]                                      ; $4365: $2a
	sub [hl]                                         ; $4366: $96
	ld c, e                                          ; $4367: $4b
	sbc h                                            ; $4368: $9c
	sub [hl]                                         ; $4369: $96
	or l                                             ; $436a: $b5
	ld c, e                                          ; $436b: $4b
	ld [hl], a                                       ; $436c: $77
	cp $e0                                           ; $436d: $fe $e0
	pop bc                                           ; $436f: $c1
	add b                                            ; $4370: $80
	ld d, [hl]                                       ; $4371: $56
	rst AddAOntoHL                                          ; $4372: $ef
	ld e, [hl]                                       ; $4373: $5e
	rst AddAOntoHL                                          ; $4374: $ef
	ld e, d                                          ; $4375: $5a
	db $eb                                           ; $4376: $eb
	ld c, l                                          ; $4377: $4d
	ld sp, hl                                        ; $4378: $f9
	ld c, a                                          ; $4379: $4f
	db $fd                                           ; $437a: $fd
	ld c, d                                          ; $437b: $4a
	ld a, [$f96b]                                    ; $437c: $fa $6b $f9

jr_062_437f:
	inc l                                            ; $437f: $2c
	cp h                                             ; $4380: $bc
	ld l, e                                          ; $4381: $6b
	ld a, [$b929]                                    ; $4382: $fa $29 $b9
	ld l, [hl]                                       ; $4385: $6e
	cp h                                             ; $4386: $bc
	ei                                               ; $4387: $fb
	sbc d                                            ; $4388: $9a
	sbc h                                            ; $4389: $9c
	sbc h                                            ; $438a: $9c
	sbc a                                            ; $438b: $9f
	sbc e                                            ; $438c: $9b
	xor e                                            ; $438d: $ab
	add sp, -$44                                     ; $438e: $e8 $bc
	sbc h                                            ; $4390: $9c
	db $ec                                           ; $4391: $ec
	nop                                              ; $4392: $00
	nop                                              ; $4393: $00
	db $dd                                           ; $4394: $dd
	add b                                            ; $4395: $80
	add l                                            ; $4396: $85
	ld b, b                                          ; $4397: $40
	ret nz                                           ; $4398: $c0

	and b                                            ; $4399: $a0
	ld h, b                                          ; $439a: $60
	jr nz, @-$1e                                     ; $439b: $20 $e0

	sub b                                            ; $439d: $90
	ld [hl], b                                       ; $439e: $70
	sub b                                            ; $439f: $90
	ld [hl], b                                       ; $43a0: $70
	ld d, b                                          ; $43a1: $50
	or b                                             ; $43a2: $b0
	ld c, b                                          ; $43a3: $48
	cp b                                             ; $43a4: $b8
	jr z, jr_062_437f                                ; $43a5: $28 $d8

	xor b                                            ; $43a7: $a8
	ret c                                            ; $43a8: $d8

	ret nc                                           ; $43a9: $d0

	xor b                                            ; $43aa: $a8
	call nc, $c4ac                                   ; $43ab: $d4 $ac $c4
	cp h                                             ; $43ae: $bc
	and h                                            ; $43af: $a4
	call c, $fe77                                    ; $43b0: $dc $77 $fe
	add b                                            ; $43b3: $80
	sub b                                            ; $43b4: $90
	db $ec                                           ; $43b5: $ec
	jp nc, $d2ae                                     ; $43b6: $d2 $ae $d2

	xor [hl]                                         ; $43b9: $ae
	jp z, $eab6                                      ; $43ba: $ca $b6 $ea

	sub [hl]                                         ; $43bd: $96
	ld [$aa96], a                                    ; $43be: $ea $96 $aa
	sub $a4                                          ; $43c1: $d6 $a4
	jp c, $cab4                                      ; $43c3: $da $b4 $ca

	sub l                                            ; $43c6: $95
	db $eb                                           ; $43c7: $eb
	sub l                                            ; $43c8: $95
	db $eb                                           ; $43c9: $eb
	push de                                          ; $43ca: $d5
	xor e                                            ; $43cb: $ab
	res 6, l                                         ; $43cc: $cb $b5
	jp z, $a9b5                                      ; $43ce: $ca $b5 $a9

	sub $a5                                          ; $43d1: $d6 $a5
	add b                                            ; $43d3: $80
	jp c, $dae5                                      ; $43d4: $da $e5 $da

	jp nc, $d2ed                                     ; $43d7: $d2 $ed $d2

	db $ed                                           ; $43da: $ed
	ld d, d                                          ; $43db: $52
	db $ed                                           ; $43dc: $ed
	ld d, c                                          ; $43dd: $51
	xor $69                                          ; $43de: $ee $69
	or $a9                                           ; $43e0: $f6 $a9
	or $ac                                           ; $43e2: $f6 $ac
	di                                               ; $43e4: $f3
	xor h                                            ; $43e5: $ac
	di                                               ; $43e6: $f3
	ld d, h                                          ; $43e7: $54
	ei                                               ; $43e8: $fb
	ld d, [hl]                                       ; $43e9: $56
	ld sp, hl                                        ; $43ea: $f9
	ld d, [hl]                                       ; $43eb: $56
	ld sp, hl                                        ; $43ec: $f9
	ld c, d                                          ; $43ed: $4a
	db $fd                                           ; $43ee: $fd
	xor d                                            ; $43ef: $aa
	db $fd                                           ; $43f0: $fd
	xor e                                            ; $43f1: $ab
	db $fc                                           ; $43f2: $fc

jr_062_43f3:
	add c                                            ; $43f3: $81
	and l                                            ; $43f4: $a5
	cp $f5                                           ; $43f5: $fe $f5
	cp $75                                           ; $43f7: $fe $75
	cp $7c                                           ; $43f9: $fe $7c
	rst SubAFromDE                                          ; $43fb: $df
	ld e, [hl]                                       ; $43fc: $5e
	rst JumpTable                                          ; $43fd: $c7
	adc $c3                                          ; $43fe: $ce $c3
	sub $c3                                          ; $4400: $d6 $c3
	ld b, [hl]                                       ; $4402: $46
	ld b, a                                          ; $4403: $47
	rst FarCall                                          ; $4404: $f7
	di                                               ; $4405: $f3
	db $eb                                           ; $4406: $eb
	bit 6, l                                         ; $4407: $cb $75
	ld [hl], l                                       ; $4409: $75
	db $dd                                           ; $440a: $dd
	db $dd                                           ; $440b: $dd
	rst SubAFromHL                                          ; $440c: $d7
	db $d3                                           ; $440d: $d3
	ld c, l                                          ; $440e: $4d
	ld b, l                                          ; $440f: $45
	ld h, e                                          ; $4410: $63
	ld h, e                                          ; $4411: $63
	db $dd                                           ; $4412: $dd
	add b                                            ; $4413: $80
	ld a, a                                          ; $4414: $7f
	ld a, l                                          ; $4415: $7d
	add b                                            ; $4416: $80
	ret nz                                           ; $4417: $c0

	ld b, b                                          ; $4418: $40
	ret nz                                           ; $4419: $c0

	ld b, b                                          ; $441a: $40
	add b                                            ; $441b: $80
	ld b, b                                          ; $441c: $40
	ld h, b                                          ; $441d: $60
	and b                                            ; $441e: $a0
	ld b, b                                          ; $441f: $40
	and b                                            ; $4420: $a0
	jr nc, jr_062_43f3                               ; $4421: $30 $d0

	and b                                            ; $4423: $a0
	ld d, b                                          ; $4424: $50
	cp b                                             ; $4425: $b8
	ld c, b                                          ; $4426: $48
	sub b                                            ; $4427: $90
	ld l, b                                          ; $4428: $68
	ld a, h                                          ; $4429: $7c
	and h                                            ; $442a: $a4
	ld l, h                                          ; $442b: $6c
	or h                                             ; $442c: $b4
	ret z                                            ; $442d: $c8

	or h                                             ; $442e: $b4
	or [hl]                                          ; $442f: $b6
	jp c, $da34                                      ; $4430: $da $34 $da

	ld h, h                                          ; $4433: $64
	jp c, $94ef                                      ; $4434: $da $ef $94

	ld e, c                                          ; $4437: $59
	db $eb                                           ; $4438: $eb
	ld e, l                                          ; $4439: $5d
	adc e                                            ; $443a: $8b
	ld a, l                                          ; $443b: $7d
	xor c                                            ; $443c: $a9
	ld a, a                                          ; $443d: $7f
	xor c                                            ; $443e: $a9
	ld a, a                                          ; $443f: $7f
	add hl, hl                                       ; $4440: $29
	rst $38                                          ; $4441: $ff
	ld [hl], a                                       ; $4442: $77
	cp $93                                           ; $4443: $fe $93
	ld a, [hl+]                                      ; $4445: $2a
	cp $2a                                           ; $4446: $fe $2a
	cp $4a                                           ; $4448: $fe $4a
	cp $5c                                           ; $444a: $fe $5c
	db $fc                                           ; $444c: $fc
	ld e, h                                          ; $444d: $5c
	db $fc                                           ; $444e: $fc
	ret c                                            ; $444f: $d8

	ld hl, sp+$20                                    ; $4450: $f8 $20
	nop                                              ; $4452: $00
	adc [hl]                                         ; $4453: $8e
	db $dd                                           ; $4454: $dd
	sbc c                                            ; $4455: $99
	ld h, [hl]                                       ; $4456: $66
	sbc c                                            ; $4457: $99
	sbc c                                            ; $4458: $99
	and $22                                          ; $4459: $e6 $22
	sbc c                                            ; $445b: $99
	sub c                                            ; $445c: $91
	adc b                                            ; $445d: $88
	adc b                                            ; $445e: $88
	ld h, [hl]                                       ; $445f: $66
	sbc c                                            ; $4460: $99
	ld de, $8888                                     ; $4461: $11 $88 $88
	inc sp                                           ; $4464: $33
	ld [hl], a                                       ; $4465: $77
	ei                                               ; $4466: $fb
	sbc [hl]                                         ; $4467: $9e
	ld b, h                                          ; $4468: $44
	ld h, e                                          ; $4469: $63
	ei                                               ; $446a: $fb
	ld a, e                                          ; $446b: $7b
	db $e3                                           ; $446c: $e3
	sbc [hl]                                         ; $446d: $9e
	ld de, $fc7b                                     ; $446e: $11 $7b $fc
	add $01                                          ; $4471: $c6 $01
	add b                                            ; $4473: $80
	jp z, $8a99                                      ; $4474: $ca $99 $8a

	reti                                             ; $4477: $d9


	cp d                                             ; $4478: $ba
	db $dd                                           ; $4479: $dd
	sbc c                                            ; $447a: $99
	rst $38                                          ; $447b: $ff
	ld e, l                                          ; $447c: $5d
	rst $38                                          ; $447d: $ff
	ld e, l                                          ; $447e: $5d
	rst FarCall                                          ; $447f: $f7
	rst SubAFromDE                                          ; $4480: $df
	di                                               ; $4481: $f3
	di                                               ; $4482: $f3
	ei                                               ; $4483: $fb
	cp a                                             ; $4484: $bf
	ld hl, sp-$44                                    ; $4485: $f8 $bc
	ld hl, sp-$55                                    ; $4487: $f8 $ab
	db $fc                                           ; $4489: $fc
	xor l                                            ; $448a: $ad
	db $fd                                           ; $448b: $fd
	or [hl]                                          ; $448c: $b6
	db $ec                                           ; $448d: $ec
	db $f4                                           ; $448e: $f4
	xor [hl]                                         ; $448f: $ae
	sub $ae                                          ; $4490: $d6 $ae
	rst SubAFromHL                                          ; $4492: $d7
	sub e                                            ; $4493: $93
	xor [hl]                                         ; $4494: $ae
	jp c, $dba7                                      ; $4495: $da $a7 $db

	and a                                            ; $4498: $a7
	db $eb                                           ; $4499: $eb
	sub a                                            ; $449a: $97
	db $eb                                           ; $449b: $eb
	sub a                                            ; $449c: $97
	xor e                                            ; $449d: $ab
	rst SubAFromHL                                          ; $449e: $d7
	xor d                                            ; $449f: $aa
	ld a, e                                          ; $44a0: $7b
	cp $7b                                           ; $44a1: $fe $7b
	ld a, [$d681]                                    ; $44a3: $fa $81 $d6
	and d                                            ; $44a6: $a2
	sbc $a2                                          ; $44a7: $de $a2
	sbc $83                                          ; $44a9: $de $83
	rst $38                                          ; $44ab: $ff
	and [hl]                                         ; $44ac: $a6
	cp $a6                                           ; $44ad: $fe $a6
	cp $a4                                           ; $44af: $fe $a4
	db $fc                                           ; $44b1: $fc
	and l                                            ; $44b2: $a5
	db $fd                                           ; $44b3: $fd
	and $bf                                          ; $44b4: $e6 $bf
	rst SubAFromBC                                          ; $44b6: $e7
	cp l                                             ; $44b7: $bd
	rst AddAOntoHL                                          ; $44b8: $ef
	cp l                                             ; $44b9: $bd
	rst AddAOntoHL                                          ; $44ba: $ef
	add hl, sp                                       ; $44bb: $39
	rst $38                                          ; $44bc: $ff
	jr @+$01                                         ; $44bd: $18 $ff

	inc e                                            ; $44bf: $1c
	rst $38                                          ; $44c0: $ff
	add sp, -$01                                     ; $44c1: $e8 $ff
	cp a                                             ; $44c3: $bf
	ccf                                              ; $44c4: $3f
	ld a, a                                          ; $44c5: $7f
	sub d                                            ; $44c6: $92
	inc e                                            ; $44c7: $1c
	rst SubAFromBC                                          ; $44c8: $e7
	ld h, d                                          ; $44c9: $62
	rst AddAOntoHL                                          ; $44ca: $ef
	rst JumpTable                                          ; $44cb: $c7
	ld a, a                                          ; $44cc: $7f
	ld a, [hl]                                       ; $44cd: $7e
	ld l, $3e                                        ; $44ce: $2e $3e
	ld [hl-], a                                      ; $44d0: $32
	ld h, $1c                                        ; $44d1: $26 $1c
	inc d                                            ; $44d3: $14
	cp [hl]                                          ; $44d4: $be
	ld a, [hl]                                       ; $44d5: $7e
	cp l                                             ; $44d6: $bd
	sub h                                            ; $44d7: $94
	adc [hl]                                         ; $44d8: $8e
	add b                                            ; $44d9: $80
	ret nz                                           ; $44da: $c0

	ret nz                                           ; $44db: $c0

	ldh [$e0], a                                     ; $44dc: $e0 $e0
	ldh a, [$f0]                                     ; $44de: $f0 $f0
	ld hl, sp-$08                                    ; $44e0: $f8 $f8
	call z, $86fe                                    ; $44e2: $cc $fe $86
	rst $38                                          ; $44e5: $ff
	add e                                            ; $44e6: $83
	ei                                               ; $44e7: $fb
	add c                                            ; $44e8: $81
	jp hl                                            ; $44e9: $e9


	ld a, e                                          ; $44ea: $7b
	cp $88                                           ; $44eb: $fe $88

jr_062_44ed:
	ret                                              ; $44ed: $c9


	add c                                            ; $44ee: $81
	ret                                              ; $44ef: $c9


	add b                                            ; $44f0: $80
	push bc                                          ; $44f1: $c5
	add b                                            ; $44f2: $80
	cp d                                             ; $44f3: $ba
	ld [hl], a                                       ; $44f4: $77
	or e                                             ; $44f5: $b3
	ld a, a                                          ; $44f6: $7f
	scf                                              ; $44f7: $37
	rst $38                                          ; $44f8: $ff
	scf                                              ; $44f9: $37
	db $fd                                           ; $44fa: $fd
	cp a                                             ; $44fb: $bf
	jp hl                                            ; $44fc: $e9


	cp a                                             ; $44fd: $bf
	add sp, -$01                                     ; $44fe: $e8 $ff
	ld l, b                                          ; $4500: $68
	rst $38                                          ; $4501: $ff
	jr nz, @+$01                                     ; $4502: $20 $ff

	cp c                                             ; $4504: $b9
	rst $38                                          ; $4505: $ff
	rst $38                                          ; $4506: $ff
	rst SubAFromBC                                          ; $4507: $e7
	add e                                            ; $4508: $83
	nop                                              ; $4509: $00
	db $10                                           ; $450a: $10
	jr jr_062_4542                                   ; $450b: $18 $35

	add b                                            ; $450d: $80
	ld h, d                                          ; $450e: $62
	ld [hl+], a                                      ; $450f: $22
	ld [hl], a                                       ; $4510: $77
	cp d                                             ; $4511: $ba
	ld [hl], a                                       ; $4512: $77
	ld sp, $39ff                                     ; $4513: $31 $ff $39
	rst AddAOntoHL                                          ; $4516: $ef
	cp c                                             ; $4517: $b9
	rst AddAOntoHL                                          ; $4518: $ef
	cp l                                             ; $4519: $bd
	rst FarCall                                          ; $451a: $f7
	db $fd                                           ; $451b: $fd
	ld l, a                                          ; $451c: $6f
	rst $38                                          ; $451d: $ff
	inc hl                                           ; $451e: $23
	rst $38                                          ; $451f: $ff
	ld bc, $78ff                                     ; $4520: $01 $ff $78
	rst GetHLinHL                                          ; $4523: $cf
	add $df                                          ; $4524: $c6 $df
	adc a                                            ; $4526: $8f
	ld e, a                                          ; $4527: $5f
	ld a, [hl]                                       ; $4528: $7e
	ld h, a                                          ; $4529: $67
	ld c, h                                          ; $452a: $4c
	dec sp                                           ; $452b: $3b
	jr z, jr_062_44ed                                ; $452c: $28 $bf

	ld a, a                                          ; $452e: $7f
	rst $38                                          ; $452f: $ff
	adc a                                            ; $4530: $8f
	ld bc, $015f                                     ; $4531: $01 $5f $01
	rrca                                             ; $4534: $0f
	inc bc                                           ; $4535: $03
	rra                                              ; $4536: $1f
	rlca                                             ; $4537: $07
	ccf                                              ; $4538: $3f
	rrca                                             ; $4539: $0f
	ld a, a                                          ; $453a: $7f
	rra                                              ; $453b: $1f
	di                                               ; $453c: $f3
	ld a, a                                          ; $453d: $7f
	pop hl                                           ; $453e: $e1
	rst $38                                          ; $453f: $ff
	pop bc                                           ; $4540: $c1
	ld [hl], a                                       ; $4541: $77

jr_062_4542:
	cp $9a                                           ; $4542: $fe $9a
	rst GetHLinHL                                          ; $4544: $cf
	add c                                            ; $4545: $81
	rst JumpTable                                          ; $4546: $c7
	add c                                            ; $4547: $81
	add a                                            ; $4548: $87
	ld a, e                                          ; $4549: $7b
	cp $80                                           ; $454a: $fe $80
	ret c                                            ; $454c: $d8

	ld l, a                                          ; $454d: $6f
	and h                                            ; $454e: $a4
	ld a, a                                          ; $454f: $7f
	and h                                            ; $4550: $a4
	ld a, a                                          ; $4551: $7f
	inc [hl]                                         ; $4552: $34
	rst $38                                          ; $4553: $ff
	inc d                                            ; $4554: $14
	rst $38                                          ; $4555: $ff
	sub h                                            ; $4556: $94
	rst $38                                          ; $4557: $ff
	sbc l                                            ; $4558: $9d
	rst $38                                          ; $4559: $ff
	jp c, $fe7f                                      ; $455a: $da $7f $fe

	cp a                                             ; $455d: $bf
	cp $1f                                           ; $455e: $fe $1f
	jp c, $fb3f                                      ; $4560: $da $3f $fb

	ld a, $f3                                        ; $4563: $3e $f3
	cp [hl]                                          ; $4565: $be
	or l                                             ; $4566: $b5
	ld a, d                                          ; $4567: $7a
	push af                                          ; $4568: $f5
	ld a, d                                          ; $4569: $7a
	push de                                          ; $456a: $d5
	sbc c                                            ; $456b: $99
	ld a, d                                          ; $456c: $7a
	jp c, $9af5                                      ; $456d: $da $f5 $9a

	push af                                          ; $4570: $f5
	sbc e                                            ; $4571: $9b
	ld a, e                                          ; $4572: $7b
	cp $87                                           ; $4573: $fe $87
	adc e                                            ; $4575: $8b
	push af                                          ; $4576: $f5
	sub l                                            ; $4577: $95
	db $eb                                           ; $4578: $eb
	dec d                                            ; $4579: $15
	db $eb                                           ; $457a: $eb

jr_062_457b:
	add hl, bc                                       ; $457b: $09
	db $e3                                           ; $457c: $e3
	ld bc, $22e3                                     ; $457d: $01 $e3 $22
	db $e3                                           ; $4580: $e3
	ld h, $e3                                        ; $4581: $26 $e3
	scf                                              ; $4583: $37
	db $e3                                           ; $4584: $e3
	dec sp                                           ; $4585: $3b
	rst SubAFromBC                                          ; $4586: $e7
	ld e, l                                          ; $4587: $5d
	rst SubAFromBC                                          ; $4588: $e7
	ld d, l                                          ; $4589: $55
	rst AddAOntoHL                                          ; $458a: $ef
	ld d, h                                          ; $458b: $54
	rst AddAOntoHL                                          ; $458c: $ef
	ld [hl], $e0                                     ; $458d: $36 $e0
	sbc c                                            ; $458f: $99
	xor b                                            ; $4590: $a8
	db $fc                                           ; $4591: $fc
	xor a                                            ; $4592: $af
	db $fc                                           ; $4593: $fc
	or a                                             ; $4594: $b7
	db $ed                                           ; $4595: $ed
	ld l, [hl]                                       ; $4596: $6e
	ldh [$3f], a                                     ; $4597: $e0 $3f
	nop                                              ; $4599: $00
	ld a, d                                          ; $459a: $7a
	cp $7f                                           ; $459b: $fe $7f
	ld l, l                                          ; $459d: $6d
	sbc e                                            ; $459e: $9b
	ld a, $e7                                        ; $459f: $3e $e7
	jp $733e                                         ; $45a1: $c3 $3e $73


	nop                                              ; $45a4: $00
	inc sp                                           ; $45a5: $33
	ld b, b                                          ; $45a6: $40
	ld a, a                                          ; $45a7: $7f
	ldh [$9a], a                                     ; $45a8: $e0 $9a
	jr c, jr_062_457b                                ; $45aa: $38 $cf

	add $5f                                          ; $45ac: $c6 $5f
	ld a, a                                          ; $45ae: $7f
	ld [hl], a                                       ; $45af: $77
	ld b, b                                          ; $45b0: $40
	inc hl                                           ; $45b1: $23
	ld h, b                                          ; $45b2: $60
	sbc h                                            ; $45b3: $9c
	ld a, $b5                                        ; $45b4: $3e $b5
	ld a, [$6077]                                    ; $45b6: $fa $77 $60
	ld c, e                                          ; $45b9: $4b
	add b                                            ; $45ba: $80
	sbc l                                            ; $45bb: $9d
	ld sp, hl                                        ; $45bc: $f9
	cp a                                             ; $45bd: $bf
	ld a, e                                          ; $45be: $7b
	ld a, [hl]                                       ; $45bf: $7e
	ld a, a                                          ; $45c0: $7f
	add b                                            ; $45c1: $80
	sbc h                                            ; $45c2: $9c
	xor h                                            ; $45c3: $ac
	db $fc                                           ; $45c4: $fc
	or a                                             ; $45c5: $b7
	ld l, d                                          ; $45c6: $6a
	ld h, b                                          ; $45c7: $60
	ld e, e                                          ; $45c8: $5b
	add b                                            ; $45c9: $80
	sbc [hl]                                         ; $45ca: $9e
	ld [$7e7b], sp                                   ; $45cb: $08 $7b $7e

jr_062_45ce:
	sbc [hl]                                         ; $45ce: $9e
	ldh [$63], a                                     ; $45cf: $e0 $63
	ld a, [hl]                                       ; $45d1: $7e
	sbc c                                            ; $45d2: $99
	inc a                                            ; $45d3: $3c
	rst FarCall                                          ; $45d4: $f7
	rst FarCall                                          ; $45d5: $f7
	ld a, [hl]                                       ; $45d6: $7e
	ld a, [hl]                                       ; $45d7: $7e
	ld a, $4e                                        ; $45d8: $3e $4e
	ret nz                                           ; $45da: $c0

	sbc b                                            ; $45db: $98
	rst SubAFromBC                                          ; $45dc: $e7
	db $fd                                           ; $45dd: $fd
	ld [hl], a                                       ; $45de: $77
	rst $38                                          ; $45df: $ff
	cpl                                              ; $45e0: $2f
	rst $38                                          ; $45e1: $ff
	inc bc                                           ; $45e2: $03
	ld l, [hl]                                       ; $45e3: $6e
	sbc h                                            ; $45e4: $9c
	ld a, a                                          ; $45e5: $7f
	ld a, h                                          ; $45e6: $7c
	rst SubAFromDE                                          ; $45e7: $df
	rst AddAOntoHL                                          ; $45e8: $ef
	sbc l                                            ; $45e9: $9d
	ld a, a                                          ; $45ea: $7f
	ld a, h                                          ; $45eb: $7c
	ld b, e                                          ; $45ec: $43
	add b                                            ; $45ed: $80
	sbc h                                            ; $45ee: $9c
	ccf                                              ; $45ef: $3f
	cp $9f                                           ; $45f0: $fe $9f
	ld l, e                                          ; $45f2: $6b
	add b                                            ; $45f3: $80
	ld [hl], d                                       ; $45f4: $72
	ldh [rAUD4GO], a                                 ; $45f5: $e0 $23
	and b                                            ; $45f7: $a0
	ld a, a                                          ; $45f8: $7f
	db $f4                                           ; $45f9: $f4
	sbc [hl]                                         ; $45fa: $9e
	ld b, c                                          ; $45fb: $41
	sbc $3e                                          ; $45fc: $de $3e
	inc de                                           ; $45fe: $13
	and b                                            ; $45ff: $a0
	ld a, [hl]                                       ; $4600: $7e
	ld d, $7f                                        ; $4601: $16 $7f
	and b                                            ; $4603: $a0
	sbc d                                            ; $4604: $9a
	inc a                                            ; $4605: $3c
	jr nz, jr_062_4644                               ; $4606: $20 $3c

	jr nz, jr_062_4642                               ; $4608: $20 $38

	cp a                                             ; $460a: $bf
	nop                                              ; $460b: $00
	ld h, [hl]                                       ; $460c: $66
	sbc l                                            ; $460d: $9d
	inc h                                            ; $460e: $24
	jr nz, jr_062_45ce                               ; $460f: $20 $bd

	jr jr_062_4613                                   ; $4611: $18 $00

jr_062_4613:
	ld bc, $7f87                                     ; $4613: $01 $87 $7f
	nop                                              ; $4616: $00
	sbc [hl]                                         ; $4617: $9e
	rst JumpTable                                          ; $4618: $c7
	ld [hl], a                                       ; $4619: $77
	db $e4                                           ; $461a: $e4
	sbc [hl]                                         ; $461b: $9e
	ld a, h                                          ; $461c: $7c
	ld a, e                                          ; $461d: $7b
	db $dd                                           ; $461e: $dd
	sbc l                                            ; $461f: $9d
	add b                                            ; $4620: $80
	rst $38                                          ; $4621: $ff
	ld e, a                                          ; $4622: $5f
	ldh [$9d], a                                     ; $4623: $e0 $9d
	inc a                                            ; $4625: $3c
	jr jr_062_4633                                   ; $4626: $18 $0b

	ldh [$df], a                                     ; $4628: $e0 $df
	inc a                                            ; $462a: $3c
	ld a, e                                          ; $462b: $7b
	rst SubAFromDE                                          ; $462c: $df
	rra                                              ; $462d: $1f
	ldh [$9e], a                                     ; $462e: $e0 $9e
	ld a, [hl]                                       ; $4630: $7e
	db $dd                                           ; $4631: $dd
	inc a                                            ; $4632: $3c

jr_062_4633:
	sbc [hl]                                         ; $4633: $9e
	jr jr_062_467d                                   ; $4634: $18 $47

	ldh [$a8], a                                     ; $4636: $e0 $a8
	ld bc, $ca80                                     ; $4638: $01 $80 $ca
	sbc c                                            ; $463b: $99
	adc d                                            ; $463c: $8a
	reti                                             ; $463d: $d9


	cp d                                             ; $463e: $ba
	db $dd                                           ; $463f: $dd
	sbc c                                            ; $4640: $99
	rst $38                                          ; $4641: $ff

jr_062_4642:
	ld e, l                                          ; $4642: $5d
	rst $38                                          ; $4643: $ff

jr_062_4644:
	ld e, l                                          ; $4644: $5d
	rst FarCall                                          ; $4645: $f7
	rst SubAFromDE                                          ; $4646: $df
	di                                               ; $4647: $f3
	di                                               ; $4648: $f3
	ld sp, hl                                        ; $4649: $f9
	cp h                                             ; $464a: $bc
	ld hl, sp-$44                                    ; $464b: $f8 $bc
	ld hl, sp-$55                                    ; $464d: $f8 $ab
	db $fc                                           ; $464f: $fc
	xor h                                            ; $4650: $ac
	db $fc                                           ; $4651: $fc
	or [hl]                                          ; $4652: $b6
	db $ec                                           ; $4653: $ec
	db $f4                                           ; $4654: $f4
	xor [hl]                                         ; $4655: $ae
	sub $ae                                          ; $4656: $d6 $ae
	rst SubAFromHL                                          ; $4658: $d7
	sub e                                            ; $4659: $93
	xor [hl]                                         ; $465a: $ae
	jp c, $dba7                                      ; $465b: $da $a7 $db

	and a                                            ; $465e: $a7
	db $eb                                           ; $465f: $eb
	sub a                                            ; $4660: $97
	db $eb                                           ; $4661: $eb
	sub a                                            ; $4662: $97
	xor e                                            ; $4663: $ab
	rst SubAFromHL                                          ; $4664: $d7
	xor d                                            ; $4665: $aa
	ld a, e                                          ; $4666: $7b
	cp $7b                                           ; $4667: $fe $7b
	ld a, [$d680]                                    ; $4669: $fa $80 $d6
	and d                                            ; $466c: $a2
	sbc $a2                                          ; $466d: $de $a2
	sbc $83                                          ; $466f: $de $83
	rst $38                                          ; $4671: $ff
	and [hl]                                         ; $4672: $a6
	cp $a6                                           ; $4673: $fe $a6
	cp $a4                                           ; $4675: $fe $a4
	db $fc                                           ; $4677: $fc
	and l                                            ; $4678: $a5
	db $fd                                           ; $4679: $fd
	and $bf                                          ; $467a: $e6 $bf
	rst SubAFromBC                                          ; $467c: $e7

jr_062_467d:
	cp l                                             ; $467d: $bd
	rst AddAOntoHL                                          ; $467e: $ef
	cp l                                             ; $467f: $bd
	rst AddAOntoHL                                          ; $4680: $ef
	add hl, sp                                       ; $4681: $39
	rst $38                                          ; $4682: $ff
	ld a, h                                          ; $4683: $7c
	rst $38                                          ; $4684: $ff
	sbc b                                            ; $4685: $98
	rst $38                                          ; $4686: $ff
	ld [$00ff], sp                                   ; $4687: $08 $ff $00
	adc a                                            ; $468a: $8f
	ccf                                              ; $468b: $3f
	inc e                                            ; $468c: $1c
	ld h, a                                          ; $468d: $67
	ld [hl+], a                                      ; $468e: $22
	rst AddAOntoHL                                          ; $468f: $ef
	rst SubAFromBC                                          ; $4690: $e7
	ld a, a                                          ; $4691: $7f
	ld a, [hl]                                       ; $4692: $7e
	cpl                                              ; $4693: $2f
	ld a, $32                                        ; $4694: $3e $32
	ld l, $32                                        ; $4696: $2e $32
	ld h, $1c                                        ; $4698: $26 $1c
	inc d                                            ; $469a: $14
	cp [hl]                                          ; $469b: $be
	nop                                              ; $469c: $00
	add b                                            ; $469d: $80
	add b                                            ; $469e: $80
	adc [hl]                                         ; $469f: $8e
	add b                                            ; $46a0: $80
	ret nz                                           ; $46a1: $c0

	ret nz                                           ; $46a2: $c0

	ldh [$e0], a                                     ; $46a3: $e0 $e0
	ldh a, [$f0]                                     ; $46a5: $f0 $f0
	ld hl, sp-$08                                    ; $46a7: $f8 $f8
	call z, $86fe                                    ; $46a9: $cc $fe $86
	rst $38                                          ; $46ac: $ff
	add e                                            ; $46ad: $83
	ei                                               ; $46ae: $fb
	add c                                            ; $46af: $81
	jp hl                                            ; $46b0: $e9


	ld a, e                                          ; $46b1: $7b
	cp $88                                           ; $46b2: $fe $88

jr_062_46b4:
	ret                                              ; $46b4: $c9


	add c                                            ; $46b5: $81
	ret                                              ; $46b6: $c9


	add b                                            ; $46b7: $80
	push bc                                          ; $46b8: $c5
	add b                                            ; $46b9: $80
	cp d                                             ; $46ba: $ba
	ld [hl], a                                       ; $46bb: $77
	or e                                             ; $46bc: $b3
	ld a, a                                          ; $46bd: $7f
	scf                                              ; $46be: $37
	rst $38                                          ; $46bf: $ff
	scf                                              ; $46c0: $37
	db $fd                                           ; $46c1: $fd
	cp a                                             ; $46c2: $bf
	jp hl                                            ; $46c3: $e9


	cp a                                             ; $46c4: $bf
	add sp, -$01                                     ; $46c5: $e8 $ff
	ld l, b                                          ; $46c7: $68
	rst $38                                          ; $46c8: $ff
	jr nz, @+$01                                     ; $46c9: $20 $ff

	cp c                                             ; $46cb: $b9
	rst $38                                          ; $46cc: $ff
	rst $38                                          ; $46cd: $ff
	rst SubAFromBC                                          ; $46ce: $e7
	add e                                            ; $46cf: $83
	nop                                              ; $46d0: $00
	db $10                                           ; $46d1: $10
	jr jr_062_4709                                   ; $46d2: $18 $35

	add b                                            ; $46d4: $80
	ld h, d                                          ; $46d5: $62
	ld [hl+], a                                      ; $46d6: $22
	ld [hl], a                                       ; $46d7: $77
	cp d                                             ; $46d8: $ba
	ld [hl], a                                       ; $46d9: $77
	ld sp, $39ff                                     ; $46da: $31 $ff $39
	rst $38                                          ; $46dd: $ff
	cp c                                             ; $46de: $b9
	rst AddAOntoHL                                          ; $46df: $ef
	cp l                                             ; $46e0: $bd
	rst SubAFromBC                                          ; $46e1: $e7
	db $fd                                           ; $46e2: $fd
	ld h, a                                          ; $46e3: $67
	rst $38                                          ; $46e4: $ff
	dec sp                                           ; $46e5: $3b
	rst GetHLinHL                                          ; $46e6: $cf
	ld b, l                                          ; $46e7: $45
	rst SubAFromDE                                          ; $46e8: $df
	adc $ff                                          ; $46e9: $ce $ff
	rst $38                                          ; $46eb: $ff
	rst SubAFromDE                                          ; $46ec: $df
	ld a, h                                          ; $46ed: $7c
	ld d, a                                          ; $46ee: $57
	ld a, h                                          ; $46ef: $7c
	ld h, a                                          ; $46f0: $67
	ld c, h                                          ; $46f1: $4c
	dec sp                                           ; $46f2: $3b
	jr z, jr_062_46b4                                ; $46f3: $28 $bf

	rlca                                             ; $46f5: $07
	rlca                                             ; $46f6: $07
	adc a                                            ; $46f7: $8f
	ld bc, $010f                                     ; $46f8: $01 $0f $01
	rrca                                             ; $46fb: $0f
	inc bc                                           ; $46fc: $03
	rra                                              ; $46fd: $1f
	rlca                                             ; $46fe: $07
	ccf                                              ; $46ff: $3f
	rrca                                             ; $4700: $0f
	ld a, a                                          ; $4701: $7f
	rra                                              ; $4702: $1f
	di                                               ; $4703: $f3
	ld a, a                                          ; $4704: $7f
	pop hl                                           ; $4705: $e1
	rst $38                                          ; $4706: $ff
	pop bc                                           ; $4707: $c1
	ld [hl], a                                       ; $4708: $77

jr_062_4709:
	cp $9a                                           ; $4709: $fe $9a
	rst GetHLinHL                                          ; $470b: $cf
	add c                                            ; $470c: $81
	rst JumpTable                                          ; $470d: $c7
	add c                                            ; $470e: $81
	add a                                            ; $470f: $87
	ld a, e                                          ; $4710: $7b
	cp $80                                           ; $4711: $fe $80
	ret c                                            ; $4713: $d8

	ld l, a                                          ; $4714: $6f
	and h                                            ; $4715: $a4
	ld a, a                                          ; $4716: $7f
	and h                                            ; $4717: $a4
	ld a, a                                          ; $4718: $7f
	inc [hl]                                         ; $4719: $34
	rst $38                                          ; $471a: $ff
	inc d                                            ; $471b: $14
	rst $38                                          ; $471c: $ff
	sub h                                            ; $471d: $94
	rst $38                                          ; $471e: $ff
	sbc l                                            ; $471f: $9d
	rst $38                                          ; $4720: $ff
	jp c, $fe7f                                      ; $4721: $da $7f $fe

	ccf                                              ; $4724: $3f
	cp $1f                                           ; $4725: $fe $1f
	jp c, $fb3f                                      ; $4727: $da $3f $fb

	ld a, $f3                                        ; $472a: $3e $f3
	ld a, $b5                                        ; $472c: $3e $b5
	ld a, d                                          ; $472e: $7a
	push af                                          ; $472f: $f5
	ld a, d                                          ; $4730: $7a
	push de                                          ; $4731: $d5
	sbc c                                            ; $4732: $99
	ld a, d                                          ; $4733: $7a
	jp c, $9af5                                      ; $4734: $da $f5 $9a

	push af                                          ; $4737: $f5
	sbc e                                            ; $4738: $9b
	ld a, e                                          ; $4739: $7b
	cp $87                                           ; $473a: $fe $87
	adc e                                            ; $473c: $8b
	push af                                          ; $473d: $f5
	sub l                                            ; $473e: $95
	db $eb                                           ; $473f: $eb
	dec d                                            ; $4740: $15
	db $eb                                           ; $4741: $eb
	add hl, bc                                       ; $4742: $09
	db $e3                                           ; $4743: $e3
	ld bc, $22e3                                     ; $4744: $01 $e3 $22
	db $e3                                           ; $4747: $e3
	ld h, $e3                                        ; $4748: $26 $e3
	scf                                              ; $474a: $37
	db $e3                                           ; $474b: $e3
	dec sp                                           ; $474c: $3b
	rst SubAFromBC                                          ; $474d: $e7
	ld e, l                                          ; $474e: $5d
	rst SubAFromBC                                          ; $474f: $e7
	ld d, l                                          ; $4750: $55
	rst AddAOntoHL                                          ; $4751: $ef
	ld d, h                                          ; $4752: $54
	rst AddAOntoHL                                          ; $4753: $ef
	ld [hl], $e0                                     ; $4754: $36 $e0
	sbc h                                            ; $4756: $9c
	xor b                                            ; $4757: $a8
	db $fc                                           ; $4758: $fc
	xor a                                            ; $4759: $af
	ld h, d                                          ; $475a: $62
	ldh [rSCX], a                                    ; $475b: $e0 $43
	nop                                              ; $475d: $00
	cp [hl]                                          ; $475e: $be
	ccf                                              ; $475f: $3f
	ld a, a                                          ; $4760: $7f
	rst $38                                          ; $4761: $ff
	sbc d                                            ; $4762: $9a
	ld e, $e7                                        ; $4763: $1e $e7
	db $e3                                           ; $4765: $e3
	ld a, $3e                                        ; $4766: $3e $3e
	ld [hl], a                                       ; $4768: $77
	nop                                              ; $4769: $00
	ld b, e                                          ; $476a: $43
	ld b, b                                          ; $476b: $40
	sbc h                                            ; $476c: $9c
	inc hl                                           ; $476d: $23
	rst $38                                          ; $476e: $ff
	ld bc, $1e7b                                     ; $476f: $01 $7b $1e
	sbc d                                            ; $4772: $9a
	ld a, b                                          ; $4773: $78
	rst GetHLinHL                                          ; $4774: $cf
	add $df                                          ; $4775: $c6 $df
	rst $38                                          ; $4777: $ff
	ld [hl], a                                       ; $4778: $77
	ld b, b                                          ; $4779: $40
	cpl                                              ; $477a: $2f
	and b                                            ; $477b: $a0
	ld a, [hl]                                       ; $477c: $7e
	add b                                            ; $477d: $80
	sbc [hl]                                         ; $477e: $9e
	or a                                             ; $477f: $b7
	ld b, a                                          ; $4780: $47
	and b                                            ; $4781: $a0
	sbc [hl]                                         ; $4782: $9e
	jr jr_062_4800                                   ; $4783: $18 $7b

	sbc [hl]                                         ; $4785: $9e
	sbc [hl]                                         ; $4786: $9e
	adc b                                            ; $4787: $88
	ld l, a                                          ; $4788: $6f
	and b                                            ; $4789: $a0
	ld [hl], e                                       ; $478a: $73
	sbc [hl]                                         ; $478b: $9e
	sbc h                                            ; $478c: $9c
	inc e                                            ; $478d: $1c
	rst FarCall                                          ; $478e: $f7

jr_062_478f:
	rst FarCall                                          ; $478f: $f7
	sbc $3e                                          ; $4790: $de $3e
	ld e, [hl]                                       ; $4792: $5e
	ldh [$9c], a                                     ; $4793: $e0 $9c
	rst AddAOntoHL                                          ; $4795: $ef
	cp c                                             ; $4796: $b9
	rst $38                                          ; $4797: $ff
	ld e, e                                          ; $4798: $5b
	and b                                            ; $4799: $a0
	cp a                                             ; $479a: $bf
	rst $38                                          ; $479b: $ff
	rst $38                                          ; $479c: $ff
	sbc d                                            ; $479d: $9a
	jr c, jr_062_478f                                ; $479e: $38 $ef

	rst AddAOntoHL                                          ; $47a0: $ef
	ld a, a                                          ; $47a1: $7f
	ld a, h                                          ; $47a2: $7c
	rra                                              ; $47a3: $1f
	ret nz                                           ; $47a4: $c0

	ld a, [hl]                                       ; $47a5: $7e
	call c, $c00b                                    ; $47a6: $dc $0b $c0
	sub l                                            ; $47a9: $95
	inc a                                            ; $47aa: $3c
	rst $38                                          ; $47ab: $ff
	add e                                            ; $47ac: $83
	ld a, a                                          ; $47ad: $7f
	ld a, h                                          ; $47ae: $7c
	inc a                                            ; $47af: $3c
	jr nz, jr_062_47ee                               ; $47b0: $20 $3c

	jr nz, jr_062_47ec                               ; $47b2: $20 $38

	cp d                                             ; $47b4: $ba
	pop bc                                           ; $47b5: $c1
	ld h, [hl]                                       ; $47b6: $66
	nop                                              ; $47b7: $00
	jr jr_062_47ba                                   ; $47b8: $18 $00

jr_062_47ba:
	ld bc, $7f87                                     ; $47ba: $01 $87 $7f
	ldh [$99], a                                     ; $47bd: $e0 $99
	rst JumpTable                                          ; $47bf: $c7
	rst $38                                          ; $47c0: $ff
	jr c, @+$01                                      ; $47c1: $38 $ff

	add e                                            ; $47c3: $83
	ld a, h                                          ; $47c4: $7c
	ld a, e                                          ; $47c5: $7b
	db $dd                                           ; $47c6: $dd
	sbc l                                            ; $47c7: $9d
	add b                                            ; $47c8: $80
	rst $38                                          ; $47c9: $ff
	ld h, e                                          ; $47ca: $63
	ldh [$9e], a                                     ; $47cb: $e0 $9e
	inc h                                            ; $47cd: $24
	rla                                              ; $47ce: $17
	ldh [$7d], a                                     ; $47cf: $e0 $7d
	db $fd                                           ; $47d1: $fd
	sbc e                                            ; $47d2: $9b
	rst SubAFromBC                                          ; $47d3: $e7
	ld h, [hl]                                       ; $47d4: $66
	ld a, [hl]                                       ; $47d5: $7e
	inc a                                            ; $47d6: $3c
	dec bc                                           ; $47d7: $0b
	ldh [$df], a                                     ; $47d8: $e0 $df
	ld a, [hl]                                       ; $47da: $7e
	ld a, e                                          ; $47db: $7b
	sbc $47                                          ; $47dc: $de $47
	ldh [$ae], a                                     ; $47de: $e0 $ae
	ld bc, $ca80                                     ; $47e0: $01 $80 $ca
	sbc c                                            ; $47e3: $99
	adc d                                            ; $47e4: $8a
	reti                                             ; $47e5: $d9


	cp d                                             ; $47e6: $ba
	db $dd                                           ; $47e7: $dd
	sbc c                                            ; $47e8: $99
	rst $38                                          ; $47e9: $ff
	ld e, l                                          ; $47ea: $5d
	rst $38                                          ; $47eb: $ff

jr_062_47ec:
	ld e, l                                          ; $47ec: $5d
	rst FarCall                                          ; $47ed: $f7

jr_062_47ee:
	rst SubAFromDE                                          ; $47ee: $df
	di                                               ; $47ef: $f3
	di                                               ; $47f0: $f3
	ld sp, hl                                        ; $47f1: $f9
	cp h                                             ; $47f2: $bc
	ld hl, sp-$44                                    ; $47f3: $f8 $bc
	ld hl, sp-$55                                    ; $47f5: $f8 $ab
	db $fc                                           ; $47f7: $fc
	xor h                                            ; $47f8: $ac
	db $fc                                           ; $47f9: $fc
	or [hl]                                          ; $47fa: $b6
	db $ec                                           ; $47fb: $ec
	db $f4                                           ; $47fc: $f4
	xor [hl]                                         ; $47fd: $ae
	sub $ae                                          ; $47fe: $d6 $ae

jr_062_4800:
	rst SubAFromHL                                          ; $4800: $d7
	sub e                                            ; $4801: $93
	xor [hl]                                         ; $4802: $ae
	jp c, $dba7                                      ; $4803: $da $a7 $db

	and a                                            ; $4806: $a7
	db $eb                                           ; $4807: $eb
	sub a                                            ; $4808: $97
	db $eb                                           ; $4809: $eb
	sub a                                            ; $480a: $97
	xor e                                            ; $480b: $ab
	rst SubAFromHL                                          ; $480c: $d7
	xor d                                            ; $480d: $aa
	ld a, e                                          ; $480e: $7b
	cp $7b                                           ; $480f: $fe $7b
	ld a, [$d681]                                    ; $4811: $fa $81 $d6
	and d                                            ; $4814: $a2
	sbc $a2                                          ; $4815: $de $a2
	sbc $83                                          ; $4817: $de $83
	rst $38                                          ; $4819: $ff
	and [hl]                                         ; $481a: $a6
	cp $a6                                           ; $481b: $fe $a6
	cp $a4                                           ; $481d: $fe $a4
	db $fc                                           ; $481f: $fc
	and l                                            ; $4820: $a5
	db $fd                                           ; $4821: $fd
	and $bf                                          ; $4822: $e6 $bf
	rst SubAFromBC                                          ; $4824: $e7
	cp l                                             ; $4825: $bd
	rst AddAOntoHL                                          ; $4826: $ef
	cp l                                             ; $4827: $bd
	rst AddAOntoHL                                          ; $4828: $ef
	add hl, sp                                       ; $4829: $39
	rst $38                                          ; $482a: $ff
	jr @+$01                                         ; $482b: $18 $ff

	ld a, h                                          ; $482d: $7c
	rst $38                                          ; $482e: $ff
	adc b                                            ; $482f: $88
	rst $38                                          ; $4830: $ff
	cp a                                             ; $4831: $bf
	ccf                                              ; $4832: $3f
	ld a, a                                          ; $4833: $7f
	sub d                                            ; $4834: $92
	inc e                                            ; $4835: $1c
	rst SubAFromBC                                          ; $4836: $e7
	ld [hl+], a                                      ; $4837: $22
	rst AddAOntoHL                                          ; $4838: $ef
	rst SubAFromBC                                          ; $4839: $e7
	ld a, a                                          ; $483a: $7f
	ld a, [hl]                                       ; $483b: $7e
	ld l, $3e                                        ; $483c: $2e $3e
	ld [hl-], a                                      ; $483e: $32
	ld h, $1c                                        ; $483f: $26 $1c
	inc d                                            ; $4841: $14
	cp [hl]                                          ; $4842: $be
	nop                                              ; $4843: $00
	add b                                            ; $4844: $80
	add b                                            ; $4845: $80
	adc [hl]                                         ; $4846: $8e
	add b                                            ; $4847: $80
	ret nz                                           ; $4848: $c0

	ret nz                                           ; $4849: $c0

	ldh [$e0], a                                     ; $484a: $e0 $e0
	ldh a, [$f0]                                     ; $484c: $f0 $f0
	ld hl, sp-$08                                    ; $484e: $f8 $f8
	call z, $86fe                                    ; $4850: $cc $fe $86
	rst $38                                          ; $4853: $ff
	add e                                            ; $4854: $83
	ei                                               ; $4855: $fb
	add c                                            ; $4856: $81
	jp hl                                            ; $4857: $e9


	ld a, e                                          ; $4858: $7b
	cp $88                                           ; $4859: $fe $88

jr_062_485b:
	ret                                              ; $485b: $c9


	add c                                            ; $485c: $81
	ret                                              ; $485d: $c9


	add b                                            ; $485e: $80
	push bc                                          ; $485f: $c5
	add b                                            ; $4860: $80
	cp d                                             ; $4861: $ba
	ld [hl], a                                       ; $4862: $77
	or e                                             ; $4863: $b3
	ld a, a                                          ; $4864: $7f
	scf                                              ; $4865: $37
	rst $38                                          ; $4866: $ff
	scf                                              ; $4867: $37
	db $fd                                           ; $4868: $fd
	cp a                                             ; $4869: $bf
	jp hl                                            ; $486a: $e9


	cp a                                             ; $486b: $bf
	add sp, -$01                                     ; $486c: $e8 $ff
	ld l, b                                          ; $486e: $68
	rst $38                                          ; $486f: $ff
	jr nz, @+$01                                     ; $4870: $20 $ff

	cp c                                             ; $4872: $b9
	rst $38                                          ; $4873: $ff
	rst $38                                          ; $4874: $ff
	rst SubAFromBC                                          ; $4875: $e7
	add e                                            ; $4876: $83
	nop                                              ; $4877: $00
	db $10                                           ; $4878: $10
	jr jr_062_48b0                                   ; $4879: $18 $35

	add b                                            ; $487b: $80
	ld h, d                                          ; $487c: $62
	ld [hl+], a                                      ; $487d: $22
	ld [hl], a                                       ; $487e: $77
	cp d                                             ; $487f: $ba
	ld [hl], a                                       ; $4880: $77
	ld sp, $39ff                                     ; $4881: $31 $ff $39
	rst AddAOntoHL                                          ; $4884: $ef
	cp c                                             ; $4885: $b9
	rst $38                                          ; $4886: $ff
	cp l                                             ; $4887: $bd
	rst SubAFromBC                                          ; $4888: $e7
	db $fd                                           ; $4889: $fd
	ld h, a                                          ; $488a: $67
	rst $38                                          ; $488b: $ff
	inc hl                                           ; $488c: $23
	rst $38                                          ; $488d: $ff
	add hl, sp                                       ; $488e: $39
	rst GetHLinHL                                          ; $488f: $cf
	ld b, h                                          ; $4890: $44
	rst SubAFromDE                                          ; $4891: $df
	adc $ff                                          ; $4892: $ce $ff
	rst $38                                          ; $4894: $ff
	ld e, a                                          ; $4895: $5f
	ld a, h                                          ; $4896: $7c
	ld h, a                                          ; $4897: $67
	ld c, h                                          ; $4898: $4c
	dec sp                                           ; $4899: $3b
	jr z, jr_062_485b                                ; $489a: $28 $bf

	rlca                                             ; $489c: $07
	rlca                                             ; $489d: $07
	adc a                                            ; $489e: $8f
	ld bc, $010f                                     ; $489f: $01 $0f $01
	rrca                                             ; $48a2: $0f
	inc bc                                           ; $48a3: $03
	rra                                              ; $48a4: $1f
	rlca                                             ; $48a5: $07
	ccf                                              ; $48a6: $3f
	rrca                                             ; $48a7: $0f
	ld a, a                                          ; $48a8: $7f
	rra                                              ; $48a9: $1f
	di                                               ; $48aa: $f3
	ld a, a                                          ; $48ab: $7f
	pop hl                                           ; $48ac: $e1
	rst $38                                          ; $48ad: $ff
	pop bc                                           ; $48ae: $c1
	ld [hl], a                                       ; $48af: $77

jr_062_48b0:
	cp $9a                                           ; $48b0: $fe $9a
	rst GetHLinHL                                          ; $48b2: $cf
	add c                                            ; $48b3: $81
	rst JumpTable                                          ; $48b4: $c7
	add c                                            ; $48b5: $81
	add a                                            ; $48b6: $87
	ld a, e                                          ; $48b7: $7b
	cp $80                                           ; $48b8: $fe $80
	ret c                                            ; $48ba: $d8

	ld l, a                                          ; $48bb: $6f
	and h                                            ; $48bc: $a4
	ld a, a                                          ; $48bd: $7f
	and h                                            ; $48be: $a4
	ld a, a                                          ; $48bf: $7f
	inc [hl]                                         ; $48c0: $34
	rst $38                                          ; $48c1: $ff
	inc d                                            ; $48c2: $14
	rst $38                                          ; $48c3: $ff
	sub h                                            ; $48c4: $94
	rst $38                                          ; $48c5: $ff
	sbc l                                            ; $48c6: $9d
	rst $38                                          ; $48c7: $ff
	jp c, $fe7f                                      ; $48c8: $da $7f $fe

	ccf                                              ; $48cb: $3f
	cp $1f                                           ; $48cc: $fe $1f
	jp c, $fb3f                                      ; $48ce: $da $3f $fb

	ld a, $f3                                        ; $48d1: $3e $f3
	ld a, $b5                                        ; $48d3: $3e $b5
	ld a, d                                          ; $48d5: $7a
	push af                                          ; $48d6: $f5
	ld a, d                                          ; $48d7: $7a
	push de                                          ; $48d8: $d5
	sbc c                                            ; $48d9: $99
	ld a, d                                          ; $48da: $7a
	jp c, $9af5                                      ; $48db: $da $f5 $9a

	push af                                          ; $48de: $f5
	sbc e                                            ; $48df: $9b
	ld a, e                                          ; $48e0: $7b
	cp $87                                           ; $48e1: $fe $87
	adc e                                            ; $48e3: $8b
	push af                                          ; $48e4: $f5
	sub l                                            ; $48e5: $95
	db $eb                                           ; $48e6: $eb
	dec d                                            ; $48e7: $15
	db $eb                                           ; $48e8: $eb
	add hl, bc                                       ; $48e9: $09
	db $e3                                           ; $48ea: $e3
	ld bc, $22e3                                     ; $48eb: $01 $e3 $22
	db $e3                                           ; $48ee: $e3
	ld h, $e3                                        ; $48ef: $26 $e3
	scf                                              ; $48f1: $37
	db $e3                                           ; $48f2: $e3
	dec sp                                           ; $48f3: $3b
	rst SubAFromBC                                          ; $48f4: $e7
	ld e, l                                          ; $48f5: $5d
	rst SubAFromBC                                          ; $48f6: $e7
	ld d, l                                          ; $48f7: $55
	rst AddAOntoHL                                          ; $48f8: $ef
	ld d, h                                          ; $48f9: $54
	rst AddAOntoHL                                          ; $48fa: $ef
	ld [hl], $e0                                     ; $48fb: $36 $e0
	sbc h                                            ; $48fd: $9c
	xor b                                            ; $48fe: $a8
	db $fc                                           ; $48ff: $fc
	xor a                                            ; $4900: $af
	ld h, d                                          ; $4901: $62
	ldh [$3f], a                                     ; $4902: $e0 $3f
	nop                                              ; $4904: $00
	halt                                             ; $4905: $76
	cp $9a                                           ; $4906: $fe $9a
	rst $38                                          ; $4908: $ff
	ld a, $e7                                        ; $4909: $3e $e7
	db $e3                                           ; $490b: $e3
	ld a, $73                                        ; $490c: $3e $73
	nop                                              ; $490e: $00
	dec sp                                           ; $490f: $3b
	ld b, b                                          ; $4910: $40
	sbc [hl]                                         ; $4911: $9e
	ld bc, $1e7b                                     ; $4912: $01 $7b $1e
	sbc d                                            ; $4915: $9a
	ld a, b                                          ; $4916: $78
	rst SubAFromDE                                          ; $4917: $df
	call z, rIE                                    ; $4918: $cc $ff $ff
	ld [hl], a                                       ; $491b: $77
	ld b, b                                          ; $491c: $40
	ld c, e                                          ; $491d: $4b
	and b                                            ; $491e: $a0
	sbc l                                            ; $491f: $9d
	ei                                               ; $4920: $fb
	cp a                                             ; $4921: $bf
	ld [hl], e                                       ; $4922: $73
	and b                                            ; $4923: $a0
	ld a, [hl]                                       ; $4924: $7e
	add b                                            ; $4925: $80
	sbc [hl]                                         ; $4926: $9e
	or a                                             ; $4927: $b7
	ccf                                              ; $4928: $3f
	and b                                            ; $4929: $a0
	sbc [hl]                                         ; $492a: $9e
	ld [$9e7b], sp                                   ; $492b: $08 $7b $9e
	sbc l                                            ; $492e: $9d
	add b                                            ; $492f: $80
	cp a                                             ; $4930: $bf
	cp l                                             ; $4931: $bd
	ccf                                              ; $4932: $3f
	ccf                                              ; $4933: $3f
	ld a, a                                          ; $4934: $7f
	rst $38                                          ; $4935: $ff
	sbc h                                            ; $4936: $9c
	inc e                                            ; $4937: $1c
	rst FarCall                                          ; $4938: $f7
	rst FarCall                                          ; $4939: $f7
	sbc $3e                                          ; $493a: $de $3e
	ld d, [hl]                                       ; $493c: $56
	ldh [$7f], a                                     ; $493d: $e0 $7f
	reti                                             ; $493f: $d9


	sbc [hl]                                         ; $4940: $9e
	rst $38                                          ; $4941: $ff
	ld h, e                                          ; $4942: $63
	and b                                            ; $4943: $a0
	cp a                                             ; $4944: $bf
	rst $38                                          ; $4945: $ff
	rst $38                                          ; $4946: $ff
	sbc d                                            ; $4947: $9a
	inc a                                            ; $4948: $3c
	rst AddAOntoHL                                          ; $4949: $ef
	rst AddAOntoHL                                          ; $494a: $ef
	ld a, a                                          ; $494b: $7f
	inc a                                            ; $494c: $3c
	ld c, e                                          ; $494d: $4b
	nop                                              ; $494e: $00
	sbc [hl]                                         ; $494f: $9e
	rst $38                                          ; $4950: $ff
	ld b, a                                          ; $4951: $47
	nop                                              ; $4952: $00
	rra                                              ; $4953: $1f
	and b                                            ; $4954: $a0
	ld a, [hl]                                       ; $4955: $7e
	cp h                                             ; $4956: $bc
	rlca                                             ; $4957: $07
	and b                                            ; $4958: $a0
	ld a, [hl]                                       ; $4959: $7e
	ld [hl], $7f                                     ; $495a: $36 $7f
	and b                                            ; $495c: $a0
	sbc d                                            ; $495d: $9a
	inc a                                            ; $495e: $3c
	jr nz, jr_062_499d                               ; $495f: $20 $3c

	jr nz, jr_062_499b                               ; $4961: $20 $38

	cp d                                             ; $4963: $ba
	ld b, d                                          ; $4964: $42
	jr jr_062_4967                                   ; $4965: $18 $00

jr_062_4967:
	jr jr_062_4969                                   ; $4967: $18 $00

jr_062_4969:
	ld bc, $7f87                                     ; $4969: $01 $87 $7f
	ldh [$99], a                                     ; $496c: $e0 $99
	rst JumpTable                                          ; $496e: $c7
	rst $38                                          ; $496f: $ff
	jr c, @+$01                                      ; $4970: $38 $ff

	add e                                            ; $4972: $83
	ld a, h                                          ; $4973: $7c
	ld a, e                                          ; $4974: $7b
	db $dd                                           ; $4975: $dd
	sbc l                                            ; $4976: $9d
	add b                                            ; $4977: $80
	rst $38                                          ; $4978: $ff
	ld h, a                                          ; $4979: $67
	ldh [$df], a                                     ; $497a: $e0 $df
	inc h                                            ; $497c: $24
	rla                                              ; $497d: $17
	ldh [rIE], a                                     ; $497e: $e0 $ff
	sbc e                                            ; $4980: $9b
	ld h, [hl]                                       ; $4981: $66
	inc h                                            ; $4982: $24
	inc a                                            ; $4983: $3c
	jr jr_062_4991                                   ; $4984: $18 $0b

	ldh [$df], a                                     ; $4986: $e0 $df
	inc a                                            ; $4988: $3c
	ld a, e                                          ; $4989: $7b
	sbc $47                                          ; $498a: $de $47
	ldh [$b1], a                                     ; $498c: $e0 $b1
	ld bc, $ca80                                     ; $498e: $01 $80 $ca

jr_062_4991:
	sbc c                                            ; $4991: $99
	adc d                                            ; $4992: $8a
	reti                                             ; $4993: $d9


	cp d                                             ; $4994: $ba
	db $dd                                           ; $4995: $dd
	sbc c                                            ; $4996: $99
	rst $38                                          ; $4997: $ff
	ld e, l                                          ; $4998: $5d
	rst $38                                          ; $4999: $ff
	ld e, l                                          ; $499a: $5d

jr_062_499b:
	rst FarCall                                          ; $499b: $f7
	rst SubAFromDE                                          ; $499c: $df

jr_062_499d:
	di                                               ; $499d: $f3
	di                                               ; $499e: $f3
	ei                                               ; $499f: $fb
	cp a                                             ; $49a0: $bf
	ld hl, sp-$44                                    ; $49a1: $f8 $bc
	ld hl, sp-$55                                    ; $49a3: $f8 $ab
	db $fc                                           ; $49a5: $fc
	xor h                                            ; $49a6: $ac
	db $fc                                           ; $49a7: $fc
	or [hl]                                          ; $49a8: $b6
	db $ec                                           ; $49a9: $ec
	db $f4                                           ; $49aa: $f4
	xor [hl]                                         ; $49ab: $ae
	sub $ae                                          ; $49ac: $d6 $ae
	rst SubAFromHL                                          ; $49ae: $d7
	sub e                                            ; $49af: $93
	xor [hl]                                         ; $49b0: $ae
	jp c, $dba7                                      ; $49b1: $da $a7 $db

	and a                                            ; $49b4: $a7
	db $eb                                           ; $49b5: $eb
	sub a                                            ; $49b6: $97
	db $eb                                           ; $49b7: $eb
	sub a                                            ; $49b8: $97
	xor e                                            ; $49b9: $ab
	rst SubAFromHL                                          ; $49ba: $d7
	xor d                                            ; $49bb: $aa
	ld a, e                                          ; $49bc: $7b
	cp $7b                                           ; $49bd: $fe $7b
	ld a, [$d681]                                    ; $49bf: $fa $81 $d6
	and d                                            ; $49c2: $a2
	sbc $a2                                          ; $49c3: $de $a2
	sbc $83                                          ; $49c5: $de $83
	rst $38                                          ; $49c7: $ff
	and [hl]                                         ; $49c8: $a6
	cp $a6                                           ; $49c9: $fe $a6
	cp $a4                                           ; $49cb: $fe $a4
	db $fc                                           ; $49cd: $fc
	and l                                            ; $49ce: $a5
	db $fd                                           ; $49cf: $fd
	and $bf                                          ; $49d0: $e6 $bf
	rst SubAFromBC                                          ; $49d2: $e7
	cp l                                             ; $49d3: $bd
	rst AddAOntoHL                                          ; $49d4: $ef
	cp l                                             ; $49d5: $bd
	rst AddAOntoHL                                          ; $49d6: $ef
	add hl, sp                                       ; $49d7: $39
	rst $38                                          ; $49d8: $ff
	jr @+$01                                         ; $49d9: $18 $ff

	inc a                                            ; $49db: $3c
	rst $38                                          ; $49dc: $ff
	ret z                                            ; $49dd: $c8

	rst $38                                          ; $49de: $ff
	cp a                                             ; $49df: $bf
	ccf                                              ; $49e0: $3f
	ld a, a                                          ; $49e1: $7f
	sub d                                            ; $49e2: $92
	inc e                                            ; $49e3: $1c
	rst SubAFromBC                                          ; $49e4: $e7
	ld [hl+], a                                      ; $49e5: $22
	rst AddAOntoHL                                          ; $49e6: $ef
	rst SubAFromBC                                          ; $49e7: $e7
	ld a, a                                          ; $49e8: $7f
	ld e, [hl]                                       ; $49e9: $5e
	ld l, $3e                                        ; $49ea: $2e $3e
	ld [hl-], a                                      ; $49ec: $32
	ld h, $1c                                        ; $49ed: $26 $1c
	inc d                                            ; $49ef: $14
	cp [hl]                                          ; $49f0: $be
	nop                                              ; $49f1: $00
	add b                                            ; $49f2: $80
	add b                                            ; $49f3: $80
	adc [hl]                                         ; $49f4: $8e
	add b                                            ; $49f5: $80
	ret nz                                           ; $49f6: $c0

	ret nz                                           ; $49f7: $c0

	ldh [$e0], a                                     ; $49f8: $e0 $e0
	ldh a, [$f0]                                     ; $49fa: $f0 $f0
	ld hl, sp-$08                                    ; $49fc: $f8 $f8
	call z, $86fe                                    ; $49fe: $cc $fe $86
	rst $38                                          ; $4a01: $ff
	add e                                            ; $4a02: $83
	ei                                               ; $4a03: $fb
	add c                                            ; $4a04: $81
	jp hl                                            ; $4a05: $e9


	ld a, e                                          ; $4a06: $7b
	cp $88                                           ; $4a07: $fe $88

jr_062_4a09:
	ret                                              ; $4a09: $c9


	add c                                            ; $4a0a: $81
	ret                                              ; $4a0b: $c9


	add b                                            ; $4a0c: $80
	push bc                                          ; $4a0d: $c5
	add b                                            ; $4a0e: $80
	cp d                                             ; $4a0f: $ba
	ld [hl], a                                       ; $4a10: $77
	or e                                             ; $4a11: $b3
	ld a, a                                          ; $4a12: $7f
	scf                                              ; $4a13: $37
	rst $38                                          ; $4a14: $ff
	scf                                              ; $4a15: $37
	db $fd                                           ; $4a16: $fd
	cp a                                             ; $4a17: $bf
	jp hl                                            ; $4a18: $e9


	cp a                                             ; $4a19: $bf
	add sp, -$01                                     ; $4a1a: $e8 $ff
	ld l, b                                          ; $4a1c: $68
	rst $38                                          ; $4a1d: $ff
	jr nz, @+$01                                     ; $4a1e: $20 $ff

	cp c                                             ; $4a20: $b9
	rst $38                                          ; $4a21: $ff

Call_062_4a22:
	rst $38                                          ; $4a22: $ff
	rst SubAFromBC                                          ; $4a23: $e7
	add e                                            ; $4a24: $83
	nop                                              ; $4a25: $00
	db $10                                           ; $4a26: $10
	jr jr_062_4a5e                                   ; $4a27: $18 $35

	add b                                            ; $4a29: $80
	ld h, d                                          ; $4a2a: $62
	ld [hl+], a                                      ; $4a2b: $22
	ld [hl], a                                       ; $4a2c: $77
	cp d                                             ; $4a2d: $ba
	ld [hl], a                                       ; $4a2e: $77
	ld sp, $39ff                                     ; $4a2f: $31 $ff $39
	rst AddAOntoHL                                          ; $4a32: $ef
	cp c                                             ; $4a33: $b9
	rst $38                                          ; $4a34: $ff
	cp l                                             ; $4a35: $bd
	rst SubAFromBC                                          ; $4a36: $e7
	db $fd                                           ; $4a37: $fd
	ld h, a                                          ; $4a38: $67
	rst $38                                          ; $4a39: $ff
	inc hl                                           ; $4a3a: $23
	rst $38                                          ; $4a3b: $ff
	add hl, sp                                       ; $4a3c: $39
	rst GetHLinHL                                          ; $4a3d: $cf
	ld b, h                                          ; $4a3e: $44
	rst SubAFromDE                                          ; $4a3f: $df
	adc $ff                                          ; $4a40: $ce $ff
	cp a                                             ; $4a42: $bf
	ld e, a                                          ; $4a43: $5f
	ld a, h                                          ; $4a44: $7c
	ld h, a                                          ; $4a45: $67
	ld c, h                                          ; $4a46: $4c
	dec sp                                           ; $4a47: $3b
	jr z, jr_062_4a09                                ; $4a48: $28 $bf

	rlca                                             ; $4a4a: $07
	rlca                                             ; $4a4b: $07
	adc a                                            ; $4a4c: $8f
	ld bc, $010f                                     ; $4a4d: $01 $0f $01
	rrca                                             ; $4a50: $0f
	inc bc                                           ; $4a51: $03
	rra                                              ; $4a52: $1f
	rlca                                             ; $4a53: $07
	ccf                                              ; $4a54: $3f
	rrca                                             ; $4a55: $0f
	ld a, a                                          ; $4a56: $7f
	rra                                              ; $4a57: $1f
	di                                               ; $4a58: $f3
	ld a, a                                          ; $4a59: $7f
	pop hl                                           ; $4a5a: $e1
	rst $38                                          ; $4a5b: $ff
	pop bc                                           ; $4a5c: $c1
	ld [hl], a                                       ; $4a5d: $77

jr_062_4a5e:
	cp $9a                                           ; $4a5e: $fe $9a
	rst GetHLinHL                                          ; $4a60: $cf
	add c                                            ; $4a61: $81
	rst JumpTable                                          ; $4a62: $c7
	add c                                            ; $4a63: $81
	add a                                            ; $4a64: $87
	ld a, e                                          ; $4a65: $7b
	cp $80                                           ; $4a66: $fe $80
	ret c                                            ; $4a68: $d8

	ld l, a                                          ; $4a69: $6f
	and h                                            ; $4a6a: $a4
	ld a, a                                          ; $4a6b: $7f
	and h                                            ; $4a6c: $a4
	ld a, a                                          ; $4a6d: $7f
	inc [hl]                                         ; $4a6e: $34
	rst $38                                          ; $4a6f: $ff
	inc d                                            ; $4a70: $14
	rst $38                                          ; $4a71: $ff
	sub h                                            ; $4a72: $94
	rst $38                                          ; $4a73: $ff
	sbc l                                            ; $4a74: $9d
	rst $38                                          ; $4a75: $ff
	jp c, $fe7f                                      ; $4a76: $da $7f $fe

	ccf                                              ; $4a79: $3f
	cp $1f                                           ; $4a7a: $fe $1f
	jp c, $fb3f                                      ; $4a7c: $da $3f $fb

	ld a, $f3                                        ; $4a7f: $3e $f3
	ld a, $b5                                        ; $4a81: $3e $b5
	ld a, d                                          ; $4a83: $7a
	push af                                          ; $4a84: $f5
	ld a, d                                          ; $4a85: $7a
	push de                                          ; $4a86: $d5
	sbc c                                            ; $4a87: $99
	ld a, d                                          ; $4a88: $7a
	jp c, $9af5                                      ; $4a89: $da $f5 $9a

	push af                                          ; $4a8c: $f5
	sbc e                                            ; $4a8d: $9b
	ld a, e                                          ; $4a8e: $7b
	cp $87                                           ; $4a8f: $fe $87
	adc e                                            ; $4a91: $8b
	push af                                          ; $4a92: $f5
	sub l                                            ; $4a93: $95
	db $eb                                           ; $4a94: $eb
	dec d                                            ; $4a95: $15
	db $eb                                           ; $4a96: $eb
	add hl, bc                                       ; $4a97: $09
	db $e3                                           ; $4a98: $e3
	ld bc, $22e3                                     ; $4a99: $01 $e3 $22
	db $e3                                           ; $4a9c: $e3
	ld h, $e3                                        ; $4a9d: $26 $e3
	scf                                              ; $4a9f: $37
	db $e3                                           ; $4aa0: $e3
	dec sp                                           ; $4aa1: $3b
	rst SubAFromBC                                          ; $4aa2: $e7
	ld e, l                                          ; $4aa3: $5d
	rst SubAFromBC                                          ; $4aa4: $e7
	ld d, l                                          ; $4aa5: $55
	rst AddAOntoHL                                          ; $4aa6: $ef
	ld d, h                                          ; $4aa7: $54
	rst AddAOntoHL                                          ; $4aa8: $ef
	ld [hl], $e0                                     ; $4aa9: $36 $e0
	sbc h                                            ; $4aab: $9c
	xor b                                            ; $4aac: $a8
	db $fc                                           ; $4aad: $fc
	xor a                                            ; $4aae: $af
	ld h, d                                          ; $4aaf: $62
	ldh [$3f], a                                     ; $4ab0: $e0 $3f
	nop                                              ; $4ab2: $00
	halt                                             ; $4ab3: $76
	cp $9a                                           ; $4ab4: $fe $9a
	rst $38                                          ; $4ab6: $ff
	ld a, $e7                                        ; $4ab7: $3e $e7
	db $e3                                           ; $4ab9: $e3
	ld a, $73                                        ; $4aba: $3e $73
	nop                                              ; $4abc: $00
	dec sp                                           ; $4abd: $3b
	ld b, b                                          ; $4abe: $40
	sbc [hl]                                         ; $4abf: $9e
	ld bc, $1e7b                                     ; $4ac0: $01 $7b $1e
	sbc d                                            ; $4ac3: $9a
	ld a, b                                          ; $4ac4: $78
	rst SubAFromDE                                          ; $4ac5: $df
	call z, rIE                                    ; $4ac6: $cc $ff $ff
	ld [hl], a                                       ; $4ac9: $77
	ld b, b                                          ; $4aca: $40
	ld c, e                                          ; $4acb: $4b
	and b                                            ; $4acc: $a0
	sbc l                                            ; $4acd: $9d
	ld sp, hl                                        ; $4ace: $f9
	cp a                                             ; $4acf: $bf
	ld a, e                                          ; $4ad0: $7b
	sbc [hl]                                         ; $4ad1: $9e
	ld a, a                                          ; $4ad2: $7f
	and b                                            ; $4ad3: $a0
	ld a, [hl]                                       ; $4ad4: $7e
	add b                                            ; $4ad5: $80
	sbc [hl]                                         ; $4ad6: $9e
	or a                                             ; $4ad7: $b7
	ccf                                              ; $4ad8: $3f
	and b                                            ; $4ad9: $a0
	sbc [hl]                                         ; $4ada: $9e
	ld [$9e7b], sp                                   ; $4adb: $08 $7b $9e
	sbc [hl]                                         ; $4ade: $9e
	ret nz                                           ; $4adf: $c0

	ld l, e                                          ; $4ae0: $6b
	sbc [hl]                                         ; $4ae1: $9e
	ld a, a                                          ; $4ae2: $7f
	cp [hl]                                          ; $4ae3: $be
	sbc h                                            ; $4ae4: $9c
	inc e                                            ; $4ae5: $1c
	rst FarCall                                          ; $4ae6: $f7
	rst FarCall                                          ; $4ae7: $f7
	sbc $3e                                          ; $4ae8: $de $3e
	ld d, [hl]                                       ; $4aea: $56
	ldh [$7f], a                                     ; $4aeb: $e0 $7f
	reti                                             ; $4aed: $d9


	sbc h                                            ; $4aee: $9c
	rst $38                                          ; $4aef: $ff
	db $fd                                           ; $4af0: $fd
	ld l, a                                          ; $4af1: $6f
	ld l, e                                          ; $4af2: $6b
	and b                                            ; $4af3: $a0
	cp a                                             ; $4af4: $bf
	rst $38                                          ; $4af5: $ff
	rst $38                                          ; $4af6: $ff
	sbc d                                            ; $4af7: $9a
	inc a                                            ; $4af8: $3c
	rst AddAOntoHL                                          ; $4af9: $ef
	rst AddAOntoHL                                          ; $4afa: $ef
	ld a, a                                          ; $4afb: $7f
	inc a                                            ; $4afc: $3c
	ld c, e                                          ; $4afd: $4b
	nop                                              ; $4afe: $00
	sbc [hl]                                         ; $4aff: $9e
	rst $38                                          ; $4b00: $ff
	ld b, a                                          ; $4b01: $47
	nop                                              ; $4b02: $00
	rra                                              ; $4b03: $1f
	and b                                            ; $4b04: $a0
	ld a, [hl]                                       ; $4b05: $7e
	cp h                                             ; $4b06: $bc
	rlca                                             ; $4b07: $07
	and b                                            ; $4b08: $a0
	ld a, [hl]                                       ; $4b09: $7e
	ld [hl], $7f                                     ; $4b0a: $36 $7f
	and b                                            ; $4b0c: $a0
	sbc d                                            ; $4b0d: $9a
	inc a                                            ; $4b0e: $3c
	jr nz, jr_062_4b4d                               ; $4b0f: $20 $3c

	jr nz, jr_062_4b4b                               ; $4b11: $20 $38

	cp a                                             ; $4b13: $bf
	nop                                              ; $4b14: $00
	ld h, [hl]                                       ; $4b15: $66
	sbc l                                            ; $4b16: $9d
	jr nz, jr_062_4b19                               ; $4b17: $20 $00

jr_062_4b19:
	cp l                                             ; $4b19: $bd
	jr jr_062_4b1c                                   ; $4b1a: $18 $00

jr_062_4b1c:
	ld bc, $7f87                                     ; $4b1c: $01 $87 $7f
	ldh [$99], a                                     ; $4b1f: $e0 $99

jr_062_4b21:
	rst JumpTable                                          ; $4b21: $c7
	rst $38                                          ; $4b22: $ff
	jr c, @+$01                                      ; $4b23: $38 $ff

	add e                                            ; $4b25: $83
	ld a, h                                          ; $4b26: $7c
	ld a, e                                          ; $4b27: $7b
	db $dd                                           ; $4b28: $dd
	sbc l                                            ; $4b29: $9d
	add b                                            ; $4b2a: $80
	rst $38                                          ; $4b2b: $ff
	ld h, e                                          ; $4b2c: $63
	ldh [$9e], a                                     ; $4b2d: $e0 $9e
	inc h                                            ; $4b2f: $24
	sbc $18                                          ; $4b30: $de $18
	inc de                                           ; $4b32: $13
	ldh [$df], a                                     ; $4b33: $e0 $df
	inc a                                            ; $4b35: $3c
	rrca                                             ; $4b36: $0f
	ldh [$9e], a                                     ; $4b37: $e0 $9e
	ld a, [hl]                                       ; $4b39: $7e
	ld [hl], e                                       ; $4b3a: $73
	rst SubAFromDE                                          ; $4b3b: $df
	ld b, a                                          ; $4b3c: $47
	ldh [$ab], a                                     ; $4b3d: $e0 $ab
	ld bc, $ca80                                     ; $4b3f: $01 $80 $ca
	sbc c                                            ; $4b42: $99
	adc d                                            ; $4b43: $8a
	reti                                             ; $4b44: $d9


	cp d                                             ; $4b45: $ba
	db $dd                                           ; $4b46: $dd
	sbc c                                            ; $4b47: $99
	rst $38                                          ; $4b48: $ff
	ld e, l                                          ; $4b49: $5d
	rst $38                                          ; $4b4a: $ff

jr_062_4b4b:
	ld e, l                                          ; $4b4b: $5d
	rst FarCall                                          ; $4b4c: $f7

jr_062_4b4d:
	rst SubAFromDE                                          ; $4b4d: $df
	di                                               ; $4b4e: $f3
	di                                               ; $4b4f: $f3
	ld sp, hl                                        ; $4b50: $f9
	cp h                                             ; $4b51: $bc
	ld hl, sp-$44                                    ; $4b52: $f8 $bc
	ld hl, sp-$58                                    ; $4b54: $f8 $a8
	db $fc                                           ; $4b56: $fc
	xor a                                            ; $4b57: $af
	db $fc                                           ; $4b58: $fc
	or [hl]                                          ; $4b59: $b6
	db $ec                                           ; $4b5a: $ec
	db $f4                                           ; $4b5b: $f4
	xor [hl]                                         ; $4b5c: $ae
	sub $ae                                          ; $4b5d: $d6 $ae
	rst SubAFromHL                                          ; $4b5f: $d7
	sub e                                            ; $4b60: $93
	xor [hl]                                         ; $4b61: $ae
	jp c, $dba7                                      ; $4b62: $da $a7 $db

	and a                                            ; $4b65: $a7
	db $eb                                           ; $4b66: $eb
	sub a                                            ; $4b67: $97
	db $eb                                           ; $4b68: $eb
	sub a                                            ; $4b69: $97
	xor e                                            ; $4b6a: $ab
	rst SubAFromHL                                          ; $4b6b: $d7
	xor d                                            ; $4b6c: $aa
	ld a, e                                          ; $4b6d: $7b
	cp $7b                                           ; $4b6e: $fe $7b
	ld a, [$d680]                                    ; $4b70: $fa $80 $d6
	and d                                            ; $4b73: $a2
	sbc $a2                                          ; $4b74: $de $a2
	sbc $83                                          ; $4b76: $de $83
	rst $38                                          ; $4b78: $ff
	and [hl]                                         ; $4b79: $a6
	cp $a6                                           ; $4b7a: $fe $a6
	cp $a4                                           ; $4b7c: $fe $a4
	db $fc                                           ; $4b7e: $fc
	and l                                            ; $4b7f: $a5
	db $fd                                           ; $4b80: $fd
	and $bf                                          ; $4b81: $e6 $bf
	rst SubAFromBC                                          ; $4b83: $e7
	cp l                                             ; $4b84: $bd
	rst AddAOntoHL                                          ; $4b85: $ef
	cp l                                             ; $4b86: $bd
	rst AddAOntoHL                                          ; $4b87: $ef
	add hl, sp                                       ; $4b88: $39
	rst $38                                          ; $4b89: $ff
	jr @+$01                                         ; $4b8a: $18 $ff

	ld [$60ff], sp                                   ; $4b8c: $08 $ff $60
	rst $38                                          ; $4b8f: $ff
	jr jr_062_4b21                                   ; $4b90: $18 $8f

	ccf                                              ; $4b92: $3f
	rlca                                             ; $4b93: $07
	ld a, a                                          ; $4b94: $7f
	nop                                              ; $4b95: $00
	rst $38                                          ; $4b96: $ff
	inc e                                            ; $4b97: $1c
	rst FarCall                                          ; $4b98: $f7
	ld h, e                                          ; $4b99: $63
	rst SubAFromBC                                          ; $4b9a: $e7
	and $2e                                          ; $4b9b: $e6 $2e
	ld a, $32                                        ; $4b9d: $3e $32
	ld h, $1c                                        ; $4b9f: $26 $1c
	inc d                                            ; $4ba1: $14
	cp [hl]                                          ; $4ba2: $be
	nop                                              ; $4ba3: $00
	add b                                            ; $4ba4: $80
	add b                                            ; $4ba5: $80
	adc [hl]                                         ; $4ba6: $8e
	add b                                            ; $4ba7: $80
	ret nz                                           ; $4ba8: $c0

	ret nz                                           ; $4ba9: $c0

	ldh [$e0], a                                     ; $4baa: $e0 $e0
	ldh a, [$f0]                                     ; $4bac: $f0 $f0
	ld hl, sp-$08                                    ; $4bae: $f8 $f8
	call z, $86fe                                    ; $4bb0: $cc $fe $86
	rst $38                                          ; $4bb3: $ff
	add e                                            ; $4bb4: $83
	ei                                               ; $4bb5: $fb
	add c                                            ; $4bb6: $81
	jp hl                                            ; $4bb7: $e9


	ld a, e                                          ; $4bb8: $7b
	cp $84                                           ; $4bb9: $fe $84
	ret                                              ; $4bbb: $c9


	add c                                            ; $4bbc: $81

jr_062_4bbd:
	ret                                              ; $4bbd: $c9


	add b                                            ; $4bbe: $80
	push bc                                          ; $4bbf: $c5
	add b                                            ; $4bc0: $80
	cp d                                             ; $4bc1: $ba
	ld [hl], a                                       ; $4bc2: $77
	or e                                             ; $4bc3: $b3
	ld a, a                                          ; $4bc4: $7f
	scf                                              ; $4bc5: $37
	rst $38                                          ; $4bc6: $ff
	scf                                              ; $4bc7: $37
	db $fd                                           ; $4bc8: $fd
	cp a                                             ; $4bc9: $bf
	jp hl                                            ; $4bca: $e9


	cp a                                             ; $4bcb: $bf
	add sp, -$01                                     ; $4bcc: $e8 $ff
	ld l, b                                          ; $4bce: $68
	rst $38                                          ; $4bcf: $ff
	jr nz, @+$01                                     ; $4bd0: $20 $ff

	nop                                              ; $4bd2: $00
	rst $38                                          ; $4bd3: $ff
	ld bc, $bbff                                     ; $4bd4: $01 $ff $bb
	rst SubAFromBC                                          ; $4bd7: $e7
	add e                                            ; $4bd8: $83
	nop                                              ; $4bd9: $00
	db $10                                           ; $4bda: $10
	jr jr_062_4c12                                   ; $4bdb: $18 $35

	add b                                            ; $4bdd: $80
	ld h, d                                          ; $4bde: $62
	ld [hl+], a                                      ; $4bdf: $22
	ld [hl], a                                       ; $4be0: $77
	cp d                                             ; $4be1: $ba
	ld [hl], a                                       ; $4be2: $77

jr_062_4be3:
	ld sp, $39ff                                     ; $4be3: $31 $ff $39
	rst AddAOntoHL                                          ; $4be6: $ef
	cp c                                             ; $4be7: $b9
	rst AddAOntoHL                                          ; $4be8: $ef
	cp l                                             ; $4be9: $bd
	rst SubAFromBC                                          ; $4bea: $e7
	db $fd                                           ; $4beb: $fd
	ld a, a                                          ; $4bec: $7f
	rst $38                                          ; $4bed: $ff
	ld h, e                                          ; $4bee: $63
	rst $38                                          ; $4bef: $ff
	add c                                            ; $4bf0: $81
	rst $38                                          ; $4bf1: $ff
	jr c, jr_062_4be3                                ; $4bf2: $38 $ef

	add $cf                                          ; $4bf4: $c6 $cf
	rst GetHLinHL                                          ; $4bf6: $cf
	ld e, a                                          ; $4bf7: $5f
	ld a, h                                          ; $4bf8: $7c
	ld h, a                                          ; $4bf9: $67
	ld c, h                                          ; $4bfa: $4c
	dec sp                                           ; $4bfb: $3b
	jr z, jr_062_4bbd                                ; $4bfc: $28 $bf

	rlca                                             ; $4bfe: $07
	rlca                                             ; $4bff: $07
	adc a                                            ; $4c00: $8f
	ld bc, $010f                                     ; $4c01: $01 $0f $01
	rrca                                             ; $4c04: $0f
	inc bc                                           ; $4c05: $03
	rra                                              ; $4c06: $1f
	rlca                                             ; $4c07: $07
	ccf                                              ; $4c08: $3f
	rrca                                             ; $4c09: $0f
	ld a, a                                          ; $4c0a: $7f
	rra                                              ; $4c0b: $1f
	di                                               ; $4c0c: $f3
	ld a, a                                          ; $4c0d: $7f
	pop hl                                           ; $4c0e: $e1
	rst $38                                          ; $4c0f: $ff
	pop bc                                           ; $4c10: $c1
	ld [hl], a                                       ; $4c11: $77

jr_062_4c12:
	cp $9a                                           ; $4c12: $fe $9a
	rst GetHLinHL                                          ; $4c14: $cf
	add c                                            ; $4c15: $81
	rst JumpTable                                          ; $4c16: $c7
	add c                                            ; $4c17: $81
	add a                                            ; $4c18: $87
	ld a, e                                          ; $4c19: $7b
	cp $80                                           ; $4c1a: $fe $80
	ret c                                            ; $4c1c: $d8

	ld l, a                                          ; $4c1d: $6f
	and h                                            ; $4c1e: $a4
	ld a, a                                          ; $4c1f: $7f
	and h                                            ; $4c20: $a4
	ld a, a                                          ; $4c21: $7f
	inc [hl]                                         ; $4c22: $34
	rst $38                                          ; $4c23: $ff
	inc d                                            ; $4c24: $14
	rst $38                                          ; $4c25: $ff
	sub h                                            ; $4c26: $94
	rst $38                                          ; $4c27: $ff
	sbc l                                            ; $4c28: $9d
	rst $38                                          ; $4c29: $ff
	jp c, $fe7f                                      ; $4c2a: $da $7f $fe

	ccf                                              ; $4c2d: $3f
	cp $1f                                           ; $4c2e: $fe $1f
	jp c, $fb3f                                      ; $4c30: $da $3f $fb

	ld a, $f3                                        ; $4c33: $3e $f3
	ld a, $b5                                        ; $4c35: $3e $b5
	ld a, d                                          ; $4c37: $7a
	push af                                          ; $4c38: $f5
	ld a, d                                          ; $4c39: $7a
	push de                                          ; $4c3a: $d5
	sbc c                                            ; $4c3b: $99
	ld a, d                                          ; $4c3c: $7a
	jp c, $9af5                                      ; $4c3d: $da $f5 $9a

	push af                                          ; $4c40: $f5
	sbc e                                            ; $4c41: $9b
	ld a, e                                          ; $4c42: $7b
	cp $87                                           ; $4c43: $fe $87
	adc e                                            ; $4c45: $8b
	push af                                          ; $4c46: $f5
	sub l                                            ; $4c47: $95

jr_062_4c48:
	db $eb                                           ; $4c48: $eb
	dec d                                            ; $4c49: $15
	db $eb                                           ; $4c4a: $eb
	add hl, bc                                       ; $4c4b: $09
	db $e3                                           ; $4c4c: $e3
	ld bc, $22e3                                     ; $4c4d: $01 $e3 $22
	db $e3                                           ; $4c50: $e3
	ld h, $e3                                        ; $4c51: $26 $e3
	scf                                              ; $4c53: $37
	db $e3                                           ; $4c54: $e3
	dec sp                                           ; $4c55: $3b
	rst SubAFromBC                                          ; $4c56: $e7
	ld e, l                                          ; $4c57: $5d
	rst SubAFromBC                                          ; $4c58: $e7
	ld d, l                                          ; $4c59: $55
	rst AddAOntoHL                                          ; $4c5a: $ef
	ld d, h                                          ; $4c5b: $54
	rst AddAOntoHL                                          ; $4c5c: $ef
	ld l, $e0                                        ; $4c5d: $2e $e0
	sbc h                                            ; $4c5f: $9c
	xor h                                            ; $4c60: $ac
	db $fc                                           ; $4c61: $fc
	or a                                             ; $4c62: $b7
	ld l, d                                          ; $4c63: $6a
	ldh [$3f], a                                     ; $4c64: $e0 $3f
	nop                                              ; $4c66: $00
	sbc [hl]                                         ; $4c67: $9e
	ccf                                              ; $4c68: $3f
	cp a                                             ; $4c69: $bf
	ld a, a                                          ; $4c6a: $7f
	rst $38                                          ; $4c6b: $ff
	ld a, d                                          ; $4c6c: $7a
	cp $df                                           ; $4c6d: $fe $df
	rst $38                                          ; $4c6f: $ff
	ld [hl], a                                       ; $4c70: $77
	nop                                              ; $4c71: $00
	inc sp                                           ; $4c72: $33
	ld b, b                                          ; $4c73: $40
	ld a, a                                          ; $4c74: $7f
	ldh [$9a], a                                     ; $4c75: $e0 $9a
	jr c, jr_062_4c48                                ; $4c77: $38 $cf

	call z, rIE                                    ; $4c79: $cc $ff $ff
	ld [hl], a                                       ; $4c7c: $77
	ld b, b                                          ; $4c7d: $40
	ld d, e                                          ; $4c7e: $53
	ret nz                                           ; $4c7f: $c0

	ld a, a                                          ; $4c80: $7f
	add sp, -$63                                     ; $4c81: $e8 $9d
	ld h, b                                          ; $4c83: $60
	ld a, a                                          ; $4c84: $7f
	ld e, a                                          ; $4c85: $5f
	cp [hl]                                          ; $4c86: $be
	sbc d                                            ; $4c87: $9a
	rst FarCall                                          ; $4c88: $f7
	ccf                                              ; $4c89: $3f
	ld a, $3e                                        ; $4c8a: $3e $3e
	nop                                              ; $4c8c: $00
	ld a, [hl-]                                      ; $4c8d: $3a
	ldh [$7a], a                                     ; $4c8e: $e0 $7a
	sbc $22                                          ; $4c90: $de $22
	ldh [$98], a                                     ; $4c92: $e0 $98
	ld h, a                                          ; $4c94: $67
	rst $38                                          ; $4c95: $ff
	ccf                                              ; $4c96: $3f
	rst $38                                          ; $4c97: $ff
	ld h, c                                          ; $4c98: $61
	rst $38                                          ; $4c99: $ff
	add b                                            ; $4c9a: $80
	ld [hl], e                                       ; $4c9b: $73
	jp c, $da7e                                      ; $4c9c: $da $7e $da

	sbc h                                            ; $4c9f: $9c
	rst AddAOntoHL                                          ; $4ca0: $ef
	ld a, a                                          ; $4ca1: $7f
	ld a, h                                          ; $4ca2: $7c
	rra                                              ; $4ca3: $1f
	and b                                            ; $4ca4: $a0
	ld a, [hl]                                       ; $4ca5: $7e
	call c, $a077                                    ; $4ca6: $dc $77 $a0
	dec de                                           ; $4ca9: $1b
	ret nz                                           ; $4caa: $c0

	sub l                                            ; $4cab: $95
	inc a                                            ; $4cac: $3c
	rst $38                                          ; $4cad: $ff
	add e                                            ; $4cae: $83
	ld a, a                                          ; $4caf: $7f
	ld a, h                                          ; $4cb0: $7c
	inc a                                            ; $4cb1: $3c
	jr nz, jr_062_4cf0                               ; $4cb2: $20 $3c

	jr nz, @+$3a                                     ; $4cb4: $20 $38

	cp d                                             ; $4cb6: $ba
	nop                                              ; $4cb7: $00
	jr c, jr_062_4cc6                                ; $4cb8: $38 $0c

	jr jr_062_4cbc                                   ; $4cba: $18 $00

jr_062_4cbc:
	ld bc, $7e87                                     ; $4cbc: $01 $87 $7e
	ld h, b                                          ; $4cbf: $60
	sbc c                                            ; $4cc0: $99
	rst JumpTable                                          ; $4cc1: $c7
	rst $38                                          ; $4cc2: $ff
	jr c, @+$01                                      ; $4cc3: $38 $ff

	add e                                            ; $4cc5: $83

jr_062_4cc6:
	ld a, h                                          ; $4cc6: $7c
	ld a, e                                          ; $4cc7: $7b
	db $dd                                           ; $4cc8: $dd
	ld a, a                                          ; $4cc9: $7f
	rst SubAFromHL                                          ; $4cca: $d7
	ld h, a                                          ; $4ccb: $67
	ldh [$9b], a                                     ; $4ccc: $e0 $9b
	inc a                                            ; $4cce: $3c
	jr c, jr_062_4d0d                                ; $4ccf: $38 $3c

	jr jr_062_4cea                                   ; $4cd1: $18 $17

	ldh [$9a], a                                     ; $4cd3: $e0 $9a
	ld a, h                                          ; $4cd5: $7c
	jr c, jr_062_4d54                                ; $4cd6: $38 $7c

	inc a                                            ; $4cd8: $3c
	inc a                                            ; $4cd9: $3c
	ld a, e                                          ; $4cda: $7b
	rst SubAFromDE                                          ; $4cdb: $df
	daa                                              ; $4cdc: $27
	ldh [$df], a                                     ; $4cdd: $e0 $df
	jr c, jr_062_4d60                                ; $4cdf: $38 $7f

	ldh [$7f], a                                     ; $4ce1: $e0 $7f
	cp $9d                                           ; $4ce3: $fe $9d
	jr c, jr_062_4cff                                ; $4ce5: $38 $18

	ld b, a                                          ; $4ce7: $47
	ldh [$bf], a                                     ; $4ce8: $e0 $bf

jr_062_4cea:
	add d                                            ; $4cea: $82
	pop af                                           ; $4ceb: $f1
	rst SubAFromDE                                          ; $4cec: $df
	ld bc, $dffe                                     ; $4ced: $01 $fe $df

jr_062_4cf0:
	ld [bc], a                                       ; $4cf0: $02
	sbc [hl]                                         ; $4cf1: $9e
	inc bc                                           ; $4cf2: $03
	call c, $dd01                                    ; $4cf3: $dc $01 $dd
	inc bc                                           ; $4cf6: $03
	adc [hl]                                         ; $4cf7: $8e
	ld [bc], a                                       ; $4cf8: $02
	inc b                                            ; $4cf9: $04
	inc b                                            ; $4cfa: $04
	ld [Call_000_1309], sp                                   ; $4cfb: $08 $09 $13
	inc de                                           ; $4cfe: $13

jr_062_4cff:
	inc bc                                           ; $4cff: $03
	inc bc                                           ; $4d00: $03
	rlca                                             ; $4d01: $07
	rlca                                             ; $4d02: $07
	rrca                                             ; $4d03: $0f
	rrca                                             ; $4d04: $0f
	ld e, $1e                                        ; $4d05: $1e $1e
	scf                                              ; $4d07: $37
	scf                                              ; $4d08: $37
	sbc $7f                                          ; $4d09: $de $7f
	sbc $ff                                          ; $4d0b: $de $ff

jr_062_4d0d:
	rst SubAFromDE                                          ; $4d0d: $df
	inc a                                            ; $4d0e: $3c
	sbc c                                            ; $4d0f: $99
	ld e, b                                          ; $4d10: $58
	ld a, b                                          ; $4d11: $78
	ld d, b                                          ; $4d12: $50
	ret nc                                           ; $4d13: $d0

	sub b                                            ; $4d14: $90
	add b                                            ; $4d15: $80
	ld [hl], a                                       ; $4d16: $77
	call $029b                                       ; $4d17: $cd $9b $02
	dec b                                            ; $4d1a: $05
	inc bc                                           ; $4d1b: $03
	dec c                                            ; $4d1c: $0d
	ld [hl], a                                       ; $4d1d: $77
	ld hl, sp+$7b                                    ; $4d1e: $f8 $7b
	db $dd                                           ; $4d20: $dd
	sbc e                                            ; $4d21: $9b
	dec c                                            ; $4d22: $0d
	ld a, [bc]                                       ; $4d23: $0a
	inc bc                                           ; $4d24: $03
	inc bc                                           ; $4d25: $03
	sbc $05                                          ; $4d26: $de $05
	sbc d                                            ; $4d28: $9a
	inc b                                            ; $4d29: $04
	ld b, $0b                                        ; $4d2a: $06 $0b
	ld [bc], a                                       ; $4d2c: $02
	ld [bc], a                                       ; $4d2d: $02
	sbc $06                                          ; $4d2e: $de $06
	rst SubAFromDE                                          ; $4d30: $df
	rlca                                             ; $4d31: $07
	sbc h                                            ; $4d32: $9c
	ld b, $03                                        ; $4d33: $06 $03
	dec bc                                           ; $4d35: $0b
	sbc $0f                                          ; $4d36: $de $0f
	ld a, a                                          ; $4d38: $7f
	ldh [$7b], a                                     ; $4d39: $e0 $7b
	jp nz, $0ade                                     ; $4d3b: $c2 $de $0a

	sub l                                            ; $4d3e: $95
	ld c, $06                                        ; $4d3f: $0e $06
	ld e, $1a                                        ; $4d41: $1e $1a
	ld a, [bc]                                       ; $4d43: $0a
	ld [de], a                                       ; $4d44: $12
	ld [de], a                                       ; $4d45: $12
	dec [hl]                                         ; $4d46: $35
	dec [hl]                                         ; $4d47: $35
	dec c                                            ; $4d48: $0d
	sbc $15                                          ; $4d49: $de $15
	rst SubAFromDE                                          ; $4d4b: $df
	dec c                                            ; $4d4c: $0d
	rst SubAFromDE                                          ; $4d4d: $df
	dec hl                                           ; $4d4e: $2b
	add e                                            ; $4d4f: $83
	inc sp                                           ; $4d50: $33
	add hl, hl                                       ; $4d51: $29
	ld l, d                                          ; $4d52: $6a
	ld d, e                                          ; $4d53: $53

jr_062_4d54:
	inc de                                           ; $4d54: $13
	push de                                          ; $4d55: $d5
	and $2b                                          ; $4d56: $e6 $2b
	ld c, l                                          ; $4d58: $4d
	rla                                              ; $4d59: $17
	ld d, a                                          ; $4d5a: $57
	ld l, [hl]                                       ; $4d5b: $6e
	ld l, [hl]                                       ; $4d5c: $6e
	xor [hl]                                         ; $4d5d: $ae
	sbc l                                            ; $4d5e: $9d
	db $dd                                           ; $4d5f: $dd

jr_062_4d60:
	cp e                                             ; $4d60: $bb
	ld d, l                                          ; $4d61: $55
	add hl, de                                       ; $4d62: $19
	xor d                                            ; $4d63: $aa
	and e                                            ; $4d64: $a3
	jp $8283                                         ; $4d65: $c3 $83 $82


	ld b, $bb                                        ; $4d68: $06 $bb
	rst FarCall                                          ; $4d6a: $f7
	rst FarCall                                          ; $4d6b: $f7
	sbc $fe                                          ; $4d6c: $de $fe
	rst SubAFromDE                                          ; $4d6e: $df
	rst $38                                          ; $4d6f: $ff
	sub d                                            ; $4d70: $92
	rrca                                             ; $4d71: $0f
	rra                                              ; $4d72: $1f
	ccf                                              ; $4d73: $3f
	ld a, a                                          ; $4d74: $7f
	di                                               ; $4d75: $f3
	pop hl                                           ; $4d76: $e1
	pop hl                                           ; $4d77: $e1
	and c                                            ; $4d78: $a1
	cp $f6                                           ; $4d79: $fe $f6
	db $eb                                           ; $4d7b: $eb

jr_062_4d7c:
	pop bc                                           ; $4d7c: $c1
	add c                                            ; $4d7d: $81
	ld a, e                                          ; $4d7e: $7b
	ld h, e                                          ; $4d7f: $63
	sbc h                                            ; $4d80: $9c
	ld hl, $9f33                                     ; $4d81: $21 $33 $9f
	call c, Call_062_7bff                            ; $4d84: $dc $ff $7b
	ld d, a                                          ; $4d87: $57
	sbc d                                            ; $4d88: $9a
	ld [bc], a                                       ; $4d89: $02
	add d                                            ; $4d8a: $82
	ld b, h                                          ; $4d8b: $44
	ld h, h                                          ; $4d8c: $64
	jr c, jr_062_4d7c                                ; $4d8d: $38 $ed

	ld a, a                                          ; $4d8f: $7f
	and $9d                                          ; $4d90: $e6 $9d
	inc b                                            ; $4d92: $04
	dec bc                                           ; $4d93: $0b
	ld [hl], e                                       ; $4d94: $73
	ld hl, sp+$7f                                    ; $4d95: $f8 $7f
	ld l, a                                          ; $4d97: $6f
	add d                                            ; $4d98: $82
	inc c                                            ; $4d99: $0c
	dec e                                            ; $4d9a: $1d
	ld a, a                                          ; $4d9b: $7f
	ldh [rTAC], a                                    ; $4d9c: $e0 $07
	rst SubAFromDE                                          ; $4d9e: $df
	or [hl]                                          ; $4d9f: $b6
	ld l, h                                          ; $4da0: $6c
	jp c, Jump_062_7f13                              ; $4da1: $da $13 $7f

	rst $38                                          ; $4da4: $ff
	ld hl, sp+$60                                    ; $4da5: $f8 $60
	ret                                              ; $4da7: $c9


	sub e                                            ; $4da8: $93

jr_062_4da9:
	dec h                                            ; $4da9: $25
	call nc, $a9b1                                   ; $4daa: $d4 $b1 $a9
	daa                                              ; $4dad: $27
	ld [hl+], a                                      ; $4dae: $22
	and d                                            ; $4daf: $a2
	cp [hl]                                          ; $4db0: $be
	cp [hl]                                          ; $4db1: $be
	add hl, hl                                       ; $4db2: $29
	ld c, d                                          ; $4db3: $4a
	ld d, d                                          ; $4db4: $52
	jp nc, $d7dd                                     ; $4db5: $d2 $dd $d7

	ldh [$c1], a                                     ; $4db8: $e0 $c1
	sub h                                            ; $4dba: $94
	cp $f9                                           ; $4dbb: $fe $f9
	db $fc                                           ; $4dbd: $fc
	ei                                               ; $4dbe: $fb
	ld a, b                                          ; $4dbf: $78
	ld [hl], b                                       ; $4dc0: $70
	ld [hl], b                                       ; $4dc1: $70
	jr nc, @-$20                                     ; $4dc2: $30 $de

	reti                                             ; $4dc4: $d9


	db $fc                                           ; $4dc5: $fc
	call c, $dfff                                    ; $4dc6: $dc $ff $df
	jr nc, jr_062_4da9                               ; $4dc9: $30 $de

	db $10                                           ; $4dcb: $10
	ld a, e                                          ; $4dcc: $7b
	add l                                            ; $4dcd: $85
	reti                                             ; $4dce: $d9


	rst $38                                          ; $4dcf: $ff
	ldh a, [$97]                                     ; $4dd0: $f0 $97
	inc bc                                           ; $4dd2: $03
	jr jr_062_4e15                                   ; $4dd3: $18 $40

	add b                                            ; $4dd5: $80
	inc bc                                           ; $4dd6: $03
	rra                                              ; $4dd7: $1f
	ld a, a                                          ; $4dd8: $7f
	nop                                              ; $4dd9: $00
	ld a, e                                          ; $4dda: $7b
	db $fc                                           ; $4ddb: $fc
	rst SubAFromDE                                          ; $4ddc: $df
	rst $38                                          ; $4ddd: $ff
	add c                                            ; $4dde: $81
	ld hl, sp-$3d                                    ; $4ddf: $f8 $c3
	or b                                             ; $4de1: $b0
	add c                                            ; $4de2: $81
	rra                                              ; $4de3: $1f
	rst FarCall                                          ; $4de4: $f7
	ld e, e                                          ; $4de5: $5b
	and [hl]                                         ; $4de6: $a6
	or l                                             ; $4de7: $b5
	ld b, b                                          ; $4de8: $40
	ld a, a                                          ; $4de9: $7f
	cp $e0                                           ; $4dea: $fe $e0
	ld [$1080], sp                                   ; $4dec: $08 $80 $10
	nop                                              ; $4def: $00
	ld hl, $4b42                                     ; $4df0: $21 $42 $4b
	add hl, bc                                       ; $4df3: $09
	inc l                                            ; $4df4: $2c
	ld a, [hl+]                                      ; $4df5: $2a
	xor d                                            ; $4df6: $aa
	xor d                                            ; $4df7: $aa
	and [hl]                                         ; $4df8: $a6
	ld hl, $6321                                     ; $4df9: $21 $21 $63
	ld h, e                                          ; $4dfc: $63
	sbc $77                                          ; $4dfd: $de $77
	ld a, a                                          ; $4dff: $7f
	ret c                                            ; $4e00: $d8

	ldh [$c2], a                                     ; $4e01: $e0 $c2
	add a                                            ; $4e03: $87
	ccf                                              ; $4e04: $3f
	rrca                                             ; $4e05: $0f
	jp $8c30                                         ; $4e06: $c3 $30 $8c


	ld h, b                                          ; $4e09: $60
	db $10                                           ; $4e0a: $10
	inc c                                            ; $4e0b: $0c
	jr nc, jr_062_4e16                               ; $4e0c: $30 $08

	jp nz, $8c30                                     ; $4e0e: $c2 $30 $8c

	ldh [$f0], a                                     ; $4e11: $e0 $f0
	db $fc                                           ; $4e13: $fc
	inc bc                                           ; $4e14: $03

jr_062_4e15:
	nop                                              ; $4e15: $00

jr_062_4e16:
	ld bc, $0f07                                     ; $4e16: $01 $07 $0f
	rra                                              ; $4e19: $1f
	ld a, a                                          ; $4e1a: $7f
	rst AddAOntoHL                                          ; $4e1b: $ef
	db $dd                                           ; $4e1c: $dd
	rst $38                                          ; $4e1d: $ff
	sbc e                                            ; $4e1e: $9b
	db $fc                                           ; $4e1f: $fc
	ld a, [$ecf9]                                    ; $4e20: $fa $f9 $ec
	ei                                               ; $4e23: $fb
	sbc [hl]                                         ; $4e24: $9e
	inc b                                            ; $4e25: $04
	halt                                             ; $4e26: $76
	ld a, [bc]                                       ; $4e27: $0a
	ld [hl], a                                       ; $4e28: $77
	ld hl, sp+$7e                                    ; $4e29: $f8 $7e
	ld de, $b39b                                     ; $4e2b: $11 $9b $b3
	ld c, $02                                        ; $4e2e: $0e $02
	ccf                                              ; $4e30: $3f
	sbc $ff                                          ; $4e31: $de $ff
	sbc l                                            ; $4e33: $9d
	inc bc                                           ; $4e34: $03
	di                                               ; $4e35: $f3
	ld [hl], e                                       ; $4e36: $73
	ld b, e                                          ; $4e37: $43
	ld a, a                                          ; $4e38: $7f
	db $fd                                           ; $4e39: $fd
	add b                                            ; $4e3a: $80
	rst $38                                          ; $4e3b: $ff
	rst FarCall                                          ; $4e3c: $f7
	cp a                                             ; $4e3d: $bf
	call $2a4a                                       ; $4e3e: $cd $4a $2a
	ld sp, $00ff                                     ; $4e41: $31 $ff $00
	ld [$1040], sp                                   ; $4e44: $08 $40 $10
	sub c                                            ; $4e47: $91
	sub c                                            ; $4e48: $91
	sub d                                            ; $4e49: $92
	sub c                                            ; $4e4a: $91
	db $e4                                           ; $4e4b: $e4
	or h                                             ; $4e4c: $b4
	or h                                             ; $4e4d: $b4
	ld l, [hl]                                       ; $4e4e: $6e
	ld a, e                                          ; $4e4f: $7b
	ld a, e                                          ; $4e50: $7b
	ldh a, [c]                                       ; $4e51: $f2
	ld [hl-], a                                      ; $4e52: $32
	ld [hl-], a                                      ; $4e53: $32
	ld h, d                                          ; $4e54: $62
	ld h, d                                          ; $4e55: $62
	ldh a, [c]                                       ; $4e56: $f2
	sub $d6                                          ; $4e57: $d6 $d6
	sbc a                                            ; $4e59: $9f
	ldh [$c1], a                                     ; $4e5a: $e0 $c1
	sbc d                                            ; $4e5c: $9a
	ld bc, $e783                                     ; $4e5d: $01 $83 $e7
	rst $38                                          ; $4e60: $ff
	jr @-$03                                         ; $4e61: $18 $fb

	sbc [hl]                                         ; $4e63: $9e
	jp $d072                                         ; $4e64: $c3 $72 $d0


	sbc c                                            ; $4e67: $99
	pop hl                                           ; $4e68: $e1
	sbc $6e                                          ; $4e69: $de $6e
	and a                                            ; $4e6b: $a7
	rst GetHLinHL                                          ; $4e6c: $cf
	sub e                                            ; $4e6d: $93
	ld a, d                                          ; $4e6e: $7a
	ret nz                                           ; $4e6f: $c0

	sbc h                                            ; $4e70: $9c
	ld c, [hl]                                       ; $4e71: $4e
	ld h, $83                                        ; $4e72: $26 $83
	ld l, e                                          ; $4e74: $6b
	ld l, d                                          ; $4e75: $6a
	sbc e                                            ; $4e76: $9b
	ld b, b                                          ; $4e77: $40
	jr nz, jr_062_4eaa                               ; $4e78: $20 $30

	ld d, b                                          ; $4e7a: $50
	ld l, e                                          ; $4e7b: $6b
	ld hl, sp-$67                                    ; $4e7c: $f8 $99
	ld [hl], b                                       ; $4e7e: $70
	sub b                                            ; $4e7f: $90
	ld l, $70                                        ; $4e80: $2e $70
	add b                                            ; $4e82: $80
	ldh [$7a], a                                     ; $4e83: $e0 $7a
	sub l                                            ; $4e85: $95
	sbc l                                            ; $4e86: $9d
	ldh a, [$ee]                                     ; $4e87: $f0 $ee
	sbc $ff                                          ; $4e89: $de $ff
	adc e                                            ; $4e8b: $8b
	rra                                              ; $4e8c: $1f
	inc bc                                           ; $4e8d: $03
	nop                                              ; $4e8e: $00
	jr c, @-$77                                      ; $4e8f: $38 $87

	db $fc                                           ; $4e91: $fc
	rst $38                                          ; $4e92: $ff
	db $fd                                           ; $4e93: $fd
	cp $7b                                           ; $4e94: $fe $7b
	ld [de], a                                       ; $4e96: $12
	rst $38                                          ; $4e97: $ff
	ld a, a                                          ; $4e98: $7f
	inc bc                                           ; $4e99: $03
	nop                                              ; $4e9a: $00
	ld [bc], a                                       ; $4e9b: $02
	ld bc, $4404                                     ; $4e9c: $01 $04 $44
	ld [bc], a                                       ; $4e9f: $02
	ld a, c                                          ; $4ea0: $79
	db $db                                           ; $4ea1: $db
	sub e                                            ; $4ea2: $93
	ld b, d                                          ; $4ea3: $42
	ld b, [hl]                                       ; $4ea4: $46
	ld e, d                                          ; $4ea5: $5a
	ld [hl], e                                       ; $4ea6: $73
	ld d, h                                          ; $4ea7: $54
	ld d, [hl]                                       ; $4ea8: $56
	add [hl]                                         ; $4ea9: $86

jr_062_4eaa:
	add [hl]                                         ; $4eaa: $86
	sub a                                            ; $4eab: $97
	db $d3                                           ; $4eac: $d3
	db $d3                                           ; $4ead: $d3
	db $db                                           ; $4eae: $db
	ldh [$c1], a                                     ; $4eaf: $e0 $c1
	rst SubAFromDE                                          ; $4eb1: $df
	rst $38                                          ; $4eb2: $ff
	sub a                                            ; $4eb3: $97
	db $e3                                           ; $4eb4: $e3
	inc bc                                           ; $4eb5: $03
	rrca                                             ; $4eb6: $0f
	ld h, e                                          ; $4eb7: $63
	ld [bc], a                                       ; $4eb8: $02
	jr jr_062_4ec2                                   ; $4eb9: $18 $07

	rrca                                             ; $4ebb: $0f
	ld [hl], l                                       ; $4ebc: $75
	ld a, [bc]                                       ; $4ebd: $0a
	sub d                                            ; $4ebe: $92
	cp $f8                                           ; $4ebf: $fe $f8
	ld [hl], e                                       ; $4ec1: $73

jr_062_4ec2:
	ld hl, sp-$50                                    ; $4ec2: $f8 $b0
	or b                                             ; $4ec4: $b0
	ldh a, [$f0]                                     ; $4ec5: $f0 $f0
	ld hl, sp-$04                                    ; $4ec7: $f8 $fc
	di                                               ; $4ec9: $f3
	jp c, $de98                                      ; $4eca: $da $98 $de

	sub b                                            ; $4ecd: $90
	sbc l                                            ; $4ece: $9d
	ld [$ef04], sp                                   ; $4ecf: $08 $04 $ef
	sbc c                                            ; $4ed2: $99
	add b                                            ; $4ed3: $80
	jr nz, jr_062_4ede                               ; $4ed4: $20 $08

	ld b, h                                          ; $4ed6: $44
	or d                                             ; $4ed7: $b2
	db $ed                                           ; $4ed8: $ed
	ld a, e                                          ; $4ed9: $7b
	ld hl, sp-$80                                    ; $4eda: $f8 $80
	ldh [$f8], a                                     ; $4edc: $e0 $f8

jr_062_4ede:
	cp h                                             ; $4ede: $bc
	adc $f3                                          ; $4edf: $ce $f3

jr_062_4ee1:
	dec de                                           ; $4ee1: $1b
	dec c                                            ; $4ee2: $0d
	add $b3                                          ; $4ee3: $c6 $b3
	xor $fb                                          ; $4ee5: $ee $fb
	ld a, l                                          ; $4ee7: $7d
	ld e, [hl]                                       ; $4ee8: $5e
	inc e                                            ; $4ee9: $1c
	ld c, $c7                                        ; $4eea: $0e $c7
	ld [hl], e                                       ; $4eec: $73
	ld e, $07                                        ; $4eed: $1e $07
	add e                                            ; $4eef: $83
	and c                                            ; $4ef0: $a1
	xor a                                            ; $4ef1: $af
	or a                                             ; $4ef2: $b7
	or a                                             ; $4ef3: $b7
	db $db                                           ; $4ef4: $db
	jp c, $fcfe                                      ; $4ef5: $da $fe $fc

	ld l, h                                          ; $4ef8: $6c
	ld d, b                                          ; $4ef9: $50
	ld c, b                                          ; $4efa: $48
	sbc [hl]                                         ; $4efb: $9e
	ld c, b                                          ; $4efc: $48
	sbc $25                                          ; $4efd: $de $25
	sbc l                                            ; $4eff: $9d
	daa                                              ; $4f00: $27
	or a                                             ; $4f01: $b7
	ldh [$c1], a                                     ; $4f02: $e0 $c1
	sub [hl]                                         ; $4f04: $96
	ld h, l                                          ; $4f05: $65
	dec h                                            ; $4f06: $25
	xor h                                            ; $4f07: $ac
	cp [hl]                                          ; $4f08: $be
	add [hl]                                         ; $4f09: $86
	db $d3                                           ; $4f0a: $d3
	db $d3                                           ; $4f0b: $d3
	ld d, e                                          ; $4f0c: $53
	add a                                            ; $4f0d: $87
	sbc $c7                                          ; $4f0e: $de $c7
	sbc $ff                                          ; $4f10: $de $ff
	add b                                            ; $4f12: $80
	ld a, a                                          ; $4f13: $7f
	ld d, e                                          ; $4f14: $53
	or e                                             ; $4f15: $b3
	or e                                             ; $4f16: $b3
	ld d, e                                          ; $4f17: $53
	ld e, e                                          ; $4f18: $5b
	dec hl                                           ; $4f19: $2b
	cpl                                              ; $4f1a: $2f
	rla                                              ; $4f1b: $17
	ld a, a                                          ; $4f1c: $7f
	cp a                                             ; $4f1d: $bf
	cp a                                             ; $4f1e: $bf
	ld e, a                                          ; $4f1f: $5f
	ld e, a                                          ; $4f20: $5f
	cpl                                              ; $4f21: $2f
	cpl                                              ; $4f22: $2f
	rla                                              ; $4f23: $17
	add b                                            ; $4f24: $80
	ld b, b                                          ; $4f25: $40
	and b                                            ; $4f26: $a0
	ret nz                                           ; $4f27: $c0

	ret nc                                           ; $4f28: $d0

	ld h, b                                          ; $4f29: $60
	xor b                                            ; $4f2a: $a8
	cp b                                             ; $4f2b: $b8
	add b                                            ; $4f2c: $80
	ret nz                                           ; $4f2d: $c0

	ld h, b                                          ; $4f2e: $60
	jr nz, jr_062_4ee1                               ; $4f2f: $20 $b0

	ret nc                                           ; $4f31: $d0

	sub b                                            ; $4f32: $90
	ld hl, sp-$18                                    ; $4f33: $f8 $e8
	ld d, b                                          ; $4f35: $50
	ld d, h                                          ; $4f36: $54
	xor h                                            ; $4f37: $ac
	xor b                                            ; $4f38: $a8
	ret c                                            ; $4f39: $d8

	ld d, h                                          ; $4f3a: $54
	call nc, $f854                                   ; $4f3b: $d4 $54 $f8
	db $fc                                           ; $4f3e: $fc
	ld a, h                                          ; $4f3f: $7c
	ld a, h                                          ; $4f40: $7c
	inc a                                            ; $4f41: $3c
	sbc $bc                                          ; $4f42: $de $bc
	sub a                                            ; $4f44: $97
	sub [hl]                                         ; $4f45: $96
	sbc [hl]                                         ; $4f46: $9e
	sbc d                                            ; $4f47: $9a
	sbc d                                            ; $4f48: $9a
	xor d                                            ; $4f49: $aa
	xor d                                            ; $4f4a: $aa
	ld l, d                                          ; $4f4b: $6a
	xor $da                                          ; $4f4c: $ee $da
	cp $96                                           ; $4f4e: $fe $96
	ld a, [$aeae]                                    ; $4f50: $fa $ae $ae
	ld l, $2d                                        ; $4f53: $2e $2d
	ld c, l                                          ; $4f55: $4d
	ld e, l                                          ; $4f56: $5d
	ld e, l                                          ; $4f57: $5d
	ld d, l                                          ; $4f58: $55
	sbc $fa                                          ; $4f59: $de $fa
	rst SubAFromDE                                          ; $4f5b: $df
	ei                                               ; $4f5c: $fb
	sbc $eb                                          ; $4f5d: $de $eb
	sbc $d5                                          ; $4f5f: $de $d5
	sbc $dd                                          ; $4f61: $de $dd
	ld a, a                                          ; $4f63: $7f
	ldh a, [$de]                                     ; $4f64: $f0 $de
	db $eb                                           ; $4f66: $eb
	db $dd                                           ; $4f67: $dd
	db $e3                                           ; $4f68: $e3
	ld a, e                                          ; $4f69: $7b
	ldh a, [$9d]                                     ; $4f6a: $f0 $9d
	push hl                                          ; $4f6c: $e5
	and l                                            ; $4f6d: $a5
	sbc $ed                                          ; $4f6e: $de $ed
	sbc d                                            ; $4f70: $9a
	db $fd                                           ; $4f71: $fd
	ld l, e                                          ; $4f72: $6b
	ld l, e                                          ; $4f73: $6b
	ld a, e                                          ; $4f74: $7b
	ld a, e                                          ; $4f75: $7b
	db $dd                                           ; $4f76: $dd
	dec sp                                           ; $4f77: $3b
	sbc $bf                                          ; $4f78: $de $bf
	ld [hl], a                                       ; $4f7a: $77
	adc c                                            ; $4f7b: $89
	adc [hl]                                         ; $4f7c: $8e
	ccf                                              ; $4f7d: $3f
	add hl, de                                       ; $4f7e: $19
	add hl, de                                       ; $4f7f: $19
	sbc c                                            ; $4f80: $99
	sbc b                                            ; $4f81: $98
	call z, $eacc                                    ; $4f82: $cc $cc $ea
	xor $39                                          ; $4f85: $ee $39
	jr c, jr_062_4fc1                                ; $4f87: $38 $38

	ld e, b                                          ; $4f89: $58
	ld e, b                                          ; $4f8a: $58
	sub b                                            ; $4f8b: $90
	sub b                                            ; $4f8c: $90
	db $10                                           ; $4f8d: $10
	ld [hl], c                                       ; $4f8e: $71
	sbc a                                            ; $4f8f: $9f
	ld l, l                                          ; $4f90: $6d
	nop                                              ; $4f91: $00
	sbc $80                                          ; $4f92: $de $80
	rst SubAFromDE                                          ; $4f94: $df
	ld b, b                                          ; $4f95: $40
	ld l, a                                          ; $4f96: $6f
	ld hl, sp-$21                                    ; $4f97: $f8 $df
	ret nz                                           ; $4f99: $c0

	ld a, a                                          ; $4f9a: $7f
	ld [hl], c                                       ; $4f9b: $71
	sbc $e0                                          ; $4f9c: $de $e0
	sbc $f0                                          ; $4f9e: $de $f0
	sbc d                                            ; $4fa0: $9a
	ret nz                                           ; $4fa1: $c0

	ldh [$60], a                                     ; $4fa2: $e0 $60
	jr nz, jr_062_4fc6                               ; $4fa4: $20 $20

	sbc $10                                          ; $4fa6: $de $10
	ld hl, $9d00                                     ; $4fa8: $21 $00 $9d
	sbc c                                            ; $4fab: $99
	call z, $99de                                    ; $4fac: $cc $de $99
	sub a                                            ; $4faf: $97
	ld b, h                                          ; $4fb0: $44
	sbc c                                            ; $4fb1: $99
	sub c                                            ; $4fb2: $91
	adc b                                            ; $4fb3: $88
	adc b                                            ; $4fb4: $88
	inc sp                                           ; $4fb5: $33
	rst $38                                          ; $4fb6: $ff
	ld de, $fb6b                                     ; $4fb7: $11 $6b $fb
	sbc [hl]                                         ; $4fba: $9e
	nop                                              ; $4fbb: $00
	ld [hl], e                                       ; $4fbc: $73
	ei                                               ; $4fbd: $fb
	sbc d                                            ; $4fbe: $9a
	sbc c                                            ; $4fbf: $99
	ld [hl+], a                                      ; $4fc0: $22

jr_062_4fc1:
	adc b                                            ; $4fc1: $88
	adc b                                            ; $4fc2: $88
	ld de, $99de                                     ; $4fc3: $11 $de $99

jr_062_4fc6:
	sbc l                                            ; $4fc6: $9d
	ld h, [hl]                                       ; $4fc7: $66
	call z, $01e5                                    ; $4fc8: $cc $e5 $01
	sub [hl]                                         ; $4fcb: $96
	sub [hl]                                         ; $4fcc: $96
	rst $38                                          ; $4fcd: $ff
	sub [hl]                                         ; $4fce: $96
	rst $38                                          ; $4fcf: $ff
	rst SubAFromHL                                          ; $4fd0: $d7
	db $fd                                           ; $4fd1: $fd
	push de                                          ; $4fd2: $d5
	db $fd                                           ; $4fd3: $fd
	push af                                          ; $4fd4: $f5
	sbc $fc                                          ; $4fd5: $de $fc
	sbc [hl]                                         ; $4fd7: $9e
	xor [hl]                                         ; $4fd8: $ae
	ld a, e                                          ; $4fd9: $7b
	cp $80                                           ; $4fda: $fe $80
	xor l                                            ; $4fdc: $ad
	rst $38                                          ; $4fdd: $ff
	xor d                                            ; $4fde: $aa
	cp $ba                                           ; $4fdf: $fe $ba
	xor $b3                                          ; $4fe1: $ee $b3
	xor $f3                                          ; $4fe3: $ee $f3
	xor [hl]                                         ; $4fe5: $ae
	ld d, d                                          ; $4fe6: $52
	rst AddAOntoHL                                          ; $4fe7: $ef

jr_062_4fe8:
	push de                                          ; $4fe8: $d5
	ld l, e                                          ; $4fe9: $6b
	push de                                          ; $4fea: $d5
	ld l, e                                          ; $4feb: $6b
	push af                                          ; $4fec: $f5
	ld c, e                                          ; $4fed: $4b
	push af                                          ; $4fee: $f5
	ld c, e                                          ; $4fef: $4b
	cp l                                             ; $4ff0: $bd
	jp $c3bd                                         ; $4ff1: $c3 $bd $c3


	db $fd                                           ; $4ff4: $fd
	add e                                            ; $4ff5: $83
	db $ed                                           ; $4ff6: $ed
	sub e                                            ; $4ff7: $93
	ld l, l                                          ; $4ff8: $6d
	sub e                                            ; $4ff9: $93
	ld c, c                                          ; $4ffa: $49
	add b                                            ; $4ffb: $80
	or a                                             ; $4ffc: $b7
	jp z, $da37                                      ; $4ffd: $ca $37 $da

Call_062_5000:
	daa                                              ; $5000: $27
	sbc d                                            ; $5001: $9a
	ld h, a                                          ; $5002: $67
	jp c, Jump_062_5767                              ; $5003: $da $67 $57

	rst AddAOntoHL                                          ; $5006: $ef
	ld d, a                                          ; $5007: $57
	rst AddAOntoHL                                          ; $5008: $ef
	ld l, l                                          ; $5009: $6d
	db $dd                                           ; $500a: $dd
	db $ec                                           ; $500b: $ec
	call c, $ff66                                    ; $500c: $dc $66 $ff
	halt                                             ; $500f: $76
	rst $38                                          ; $5010: $ff
	ld [hl], a                                       ; $5011: $77
	db $dd                                           ; $5012: $dd
	ld a, a                                          ; $5013: $7f
	rst SubAFromDE                                          ; $5014: $df
	rst $38                                          ; $5015: $ff
	db $fc                                           ; $5016: $fc
	rst $38                                          ; $5017: $ff
	ld b, h                                          ; $5018: $44
	ld a, a                                          ; $5019: $7f
	ld e, $df                                        ; $501a: $1e $df
	ld h, a                                          ; $501c: $67
	sub h                                            ; $501d: $94
	rst AddAOntoHL                                          ; $501e: $ef
	rst GetHLinHL                                          ; $501f: $cf
	cp l                                             ; $5020: $bd
	cp a                                             ; $5021: $bf
	add hl, hl                                       ; $5022: $29
	inc [hl]                                         ; $5023: $34
	ld a, [hl-]                                      ; $5024: $3a
	ld [de], a                                       ; $5025: $12
	dec e                                            ; $5026: $1d
	inc c                                            ; $5027: $0c
	ld a, [hl]                                       ; $5028: $7e
	cp [hl]                                          ; $5029: $be
	inc a                                            ; $502a: $3c
	add b                                            ; $502b: $80
	ret nz                                           ; $502c: $c0

	rst SubAFromDE                                          ; $502d: $df
	add b                                            ; $502e: $80
	add b                                            ; $502f: $80
	ret nz                                           ; $5030: $c0

	ldh [$c0], a                                     ; $5031: $e0 $c0
	ldh a, [$e0]                                     ; $5033: $f0 $e0
	ld e, b                                          ; $5035: $58
	ldh a, [$4c]                                     ; $5036: $f0 $4c
	ld hl, sp+$4c                                    ; $5038: $f8 $4c
	cp $4b                                           ; $503a: $fe $4b
	rst $38                                          ; $503c: $ff
	ld c, a                                          ; $503d: $4f
	ld hl, sp-$31                                    ; $503e: $f8 $cf
	ld hl, sp-$22                                    ; $5040: $f8 $de
	ld hl, sp-$62                                    ; $5042: $f8 $9e
	ld hl, sp-$44                                    ; $5044: $f8 $bc
	ldh a, [$7c]                                     ; $5046: $f0 $7c
	ret nz                                           ; $5048: $c0

	db $fc                                           ; $5049: $fc
	add b                                            ; $504a: $80
	cp $c0                                           ; $504b: $fe $c0
	ldh a, [c]                                       ; $504d: $f2
	sbc a                                            ; $504e: $9f
	sbc l                                            ; $504f: $9d
	ei                                               ; $5050: $fb
	adc a                                            ; $5051: $8f
	ld a, e                                          ; $5052: $7b
	cp $9c                                           ; $5053: $fe $9c
	adc [hl]                                         ; $5055: $8e
	rst $38                                          ; $5056: $ff
	add [hl]                                         ; $5057: $86
	ld a, e                                          ; $5058: $7b
	cp $9d                                           ; $5059: $fe $9d
	ld [bc], a                                       ; $505b: $02
	rst $38                                          ; $505c: $ff
	cp c                                             ; $505d: $b9
	rst $38                                          ; $505e: $ff
	rst GetHLinHL                                          ; $505f: $cf
	inc bc                                           ; $5060: $03
	nop                                              ; $5061: $00
	db $10                                           ; $5062: $10
	jr jr_062_509d                                   ; $5063: $18 $38

	jr nc, jr_062_4fe8                               ; $5065: $30 $81

	jr nz, jr_062_50d8                               ; $5067: $20 $6f

	db $db                                           ; $5069: $db
	ld c, l                                          ; $506a: $4d
	ei                                               ; $506b: $fb
	ld l, c                                          ; $506c: $69
	rst $38                                          ; $506d: $ff
	jp hl                                            ; $506e: $e9


	cp a                                             ; $506f: $bf
	db $fd                                           ; $5070: $fd
	rst FarCall                                          ; $5071: $f7
	db $fc                                           ; $5072: $fc
	ld e, a                                          ; $5073: $5f
	cp $03                                           ; $5074: $fe $03
	rst $38                                          ; $5076: $ff
	ld a, c                                          ; $5077: $79
	rst GetHLinHL                                          ; $5078: $cf
	call z, $9edf                                    ; $5079: $cc $df $9e
	ei                                               ; $507c: $fb
	ld a, a                                          ; $507d: $7f
	push de                                          ; $507e: $d5
	ld l, c                                          ; $507f: $69
	scf                                              ; $5080: $37
	inc h                                            ; $5081: $24
	ccf                                              ; $5082: $3f
	jr @+$01                                         ; $5083: $18 $ff

	cp a                                             ; $5085: $bf
	ccf                                              ; $5086: $3f
	ld c, $8f                                        ; $5087: $0e $8f
	ld bc, $031d                                     ; $5089: $01 $1d $03
	dec de                                           ; $508c: $1b
	rlca                                             ; $508d: $07
	scf                                              ; $508e: $37
	rrca                                             ; $508f: $0f
	ld l, a                                          ; $5090: $6f
	rra                                              ; $5091: $1f
	rst SubAFromDE                                          ; $5092: $df
	ccf                                              ; $5093: $3f
	ld a, l                                          ; $5094: $7d
	rst $38                                          ; $5095: $ff
	ld sp, hl                                        ; $5096: $f9
	rst $38                                          ; $5097: $ff
	jp hl                                            ; $5098: $e9


	ld [hl], a                                       ; $5099: $77
	cp $80                                           ; $509a: $fe $80
	cp a                                             ; $509c: $bf

jr_062_509d:
	jp hl                                            ; $509d: $e9


	ccf                                              ; $509e: $3f

jr_062_509f:
	ld sp, hl                                        ; $509f: $f9
	ccf                                              ; $50a0: $3f
	db $fd                                           ; $50a1: $fd
	rra                                              ; $50a2: $1f
	db $fd                                           ; $50a3: $fd
	rra                                              ; $50a4: $1f
	rst $38                                          ; $50a5: $ff
	rlca                                             ; $50a6: $07
	ld a, d                                          ; $50a7: $7a
	sub a                                            ; $50a8: $97
	cp d                                             ; $50a9: $ba
	rst SubAFromHL                                          ; $50aa: $d7
	sub d                                            ; $50ab: $92
	rst $38                                          ; $50ac: $ff
	jp nc, $da7f                                     ; $50ad: $d2 $7f $da

	ld a, a                                          ; $50b0: $7f
	ld [$ebbf], a                                    ; $50b1: $ea $bf $eb
	cp a                                             ; $50b4: $bf
	xor $bf                                          ; $50b5: $ee $bf
	rst $38                                          ; $50b7: $ff
	rst SubAFromDE                                          ; $50b8: $df
	rst $38                                          ; $50b9: $ff
	ld e, a                                          ; $50ba: $5f
	sub h                                            ; $50bb: $94
	db $dd                                           ; $50bc: $dd
	cp a                                             ; $50bd: $bf
	db $fd                                           ; $50be: $fd
	ccf                                              ; $50bf: $3f
	or l                                             ; $50c0: $b5
	ld a, a                                          ; $50c1: $7f
	push af                                          ; $50c2: $f5
	ld a, a                                          ; $50c3: $7f
	ld [hl], l                                       ; $50c4: $75
	rst $38                                          ; $50c5: $ff
	push de                                          ; $50c6: $d5
	ld a, e                                          ; $50c7: $7b
	cp $92                                           ; $50c8: $fe $92
	push bc                                          ; $50ca: $c5
	rst $38                                          ; $50cb: $ff
	ld b, h                                          ; $50cc: $44
	rst $38                                          ; $50cd: $ff
	ld c, h                                          ; $50ce: $4c
	rst FarCall                                          ; $50cf: $f7
	inc l                                            ; $50d0: $2c
	rst SubAFromHL                                          ; $50d1: $d7
	dec h                                            ; $50d2: $25
	sub $65                                          ; $50d3: $d6 $65
	sub [hl]                                         ; $50d5: $96
	ld b, h                                          ; $50d6: $44
	ld a, e                                          ; $50d7: $7b

jr_062_50d8:
	cp $95                                           ; $50d8: $fe $95
	ld d, h                                          ; $50da: $54
	add [hl]                                         ; $50db: $86
	ld d, h                                          ; $50dc: $54
	add [hl]                                         ; $50dd: $86
	ld b, l                                          ; $50de: $45
	add [hl]                                         ; $50df: $86
	ld b, h                                          ; $50e0: $44
	add [hl]                                         ; $50e1: $86
	ld b, [hl]                                       ; $50e2: $46
	add a                                            ; $50e3: $87
	ld [hl], a                                       ; $50e4: $77
	cp $46                                           ; $50e5: $fe $46
	ldh [$9d], a                                     ; $50e7: $e0 $9d
	xor h                                            ; $50e9: $ac
	cp $4e                                           ; $50ea: $fe $4e
	ldh [rOCPD], a                                   ; $50ec: $e0 $6b
	nop                                              ; $50ee: $00
	sbc [hl]                                         ; $50ef: $9e
	db $dd                                           ; $50f0: $dd
	sbc $ff                                          ; $50f1: $de $ff
	ld a, a                                          ; $50f3: $7f
	nop                                              ; $50f4: $00
	sbc [hl]                                         ; $50f5: $9e
	nop                                              ; $50f6: $00
	halt                                             ; $50f7: $76
	cp $9d                                           ; $50f8: $fe $9d
	db $ed                                           ; $50fa: $ed
	rst GetHLinHL                                          ; $50fb: $cf
	ld d, a                                          ; $50fc: $57
	nop                                              ; $50fd: $00
	dec sp                                           ; $50fe: $3b
	jr nz, jr_062_509f                               ; $50ff: $20 $9e

	add b                                            ; $5101: $80
	dec de                                           ; $5102: $1b
	jr nz, jr_062_509d                               ; $5103: $20 $98

	ld bc, $78ff                                     ; $5105: $01 $ff $78
	rst GetHLinHL                                          ; $5108: $cf
	call z, $9edb                                    ; $5109: $cc $db $9e
	ld e, a                                          ; $510c: $5f
	jr nz, jr_062_5142                               ; $510d: $20 $33

	ld b, b                                          ; $510f: $40
	ld a, a                                          ; $5110: $7f
	inc h                                            ; $5111: $24
	sbc [hl]                                         ; $5112: $9e
	cp a                                             ; $5113: $bf
	ld h, a                                          ; $5114: $67
	ld b, b                                          ; $5115: $40
	ld h, e                                          ; $5116: $63
	add b                                            ; $5117: $80
	ld a, a                                          ; $5118: $7f
	add sp, -$63                                     ; $5119: $e8 $9d
	ld [hl], h                                       ; $511b: $74
	ld a, a                                          ; $511c: $7f
	cp a                                             ; $511d: $bf
	rra                                              ; $511e: $1f
	ld a, a                                          ; $511f: $7f
	sub a                                            ; $5120: $97
	inc e                                            ; $5121: $1c
	rst FarCall                                          ; $5122: $f7
	rst FarCall                                          ; $5123: $f7
	ld a, a                                          ; $5124: $7f
	ld a, a                                          ; $5125: $7f
	ld a, $1c                                        ; $5126: $3e $1c
	dec e                                            ; $5128: $1d
	cp l                                             ; $5129: $bd
	ld a, [hl]                                       ; $512a: $7e
	inc a                                            ; $512b: $3c
	add b                                            ; $512c: $80
	ldh a, [c]                                       ; $512d: $f2
	ld a, [hl-]                                      ; $512e: $3a
	and b                                            ; $512f: $a0
	sbc l                                            ; $5130: $9d

jr_062_5131:
	add e                                            ; $5131: $83
	add b                                            ; $5132: $80
	dec sp                                           ; $5133: $3b
	add b                                            ; $5134: $80
	sbc d                                            ; $5135: $9a
	or a                                             ; $5136: $b7
	db $fc                                           ; $5137: $fc
	ld a, a                                          ; $5138: $7f
	cp $07                                           ; $5139: $fe $07
	ld a, e                                          ; $513b: $7b
	add b                                            ; $513c: $80
	ld a, a                                          ; $513d: $7f
	sbc $97                                          ; $513e: $de $97
	jr c, jr_062_5131                                ; $5140: $38 $ef

jr_062_5142:
	xor $ff                                          ; $5142: $ee $ff
	ld a, a                                          ; $5144: $7f
	ld a, a                                          ; $5145: $7f
	jr jr_062_5187                                   ; $5146: $18 $3f

	cp [hl]                                          ; $5148: $be
	rst $38                                          ; $5149: $ff
	ccf                                              ; $514a: $3f
	ld a, d                                          ; $514b: $7a
	cpl                                              ; $514c: $2f
	add b                                            ; $514d: $80
	ld h, d                                          ; $514e: $62
	ret nz                                           ; $514f: $c0

	ld h, e                                          ; $5150: $63
	add b                                            ; $5151: $80
	sbc [hl]                                         ; $5152: $9e
	call $cc7b                                       ; $5153: $cd $7b $cc
	cp a                                             ; $5156: $bf
	rra                                              ; $5157: $1f
	ld a, a                                          ; $5158: $7f
	sbc b                                            ; $5159: $98
	ld h, b                                          ; $515a: $60
	ld a, a                                          ; $515b: $7f
	ld e, $ff                                        ; $515c: $1e $ff
	ret nz                                           ; $515e: $c0

	ccf                                              ; $515f: $3f
	ccf                                              ; $5160: $3f
	rla                                              ; $5161: $17
	add b                                            ; $5162: $80
	inc sp                                           ; $5163: $33
	nop                                              ; $5164: $00
	ld a, a                                          ; $5165: $7f
	add b                                            ; $5166: $80
	sbc h                                            ; $5167: $9c
	ld [hl], a                                       ; $5168: $77
	cp $1f                                           ; $5169: $fe $1f
	ld [hl], e                                       ; $516b: $73
	add b                                            ; $516c: $80
	sbc l                                            ; $516d: $9d
	ld h, b                                          ; $516e: $60
	rst $38                                          ; $516f: $ff
	ld a, e                                          ; $5170: $7b
	cp [hl]                                          ; $5171: $be
	sbc l                                            ; $5172: $9d
	ld a, a                                          ; $5173: $7f
	ccf                                              ; $5174: $3f
	ld l, a                                          ; $5175: $6f
	add b                                            ; $5176: $80
	rst $38                                          ; $5177: $ff
	sbc d                                            ; $5178: $9a
	ld h, b                                          ; $5179: $60
	nop                                              ; $517a: $00
	jr c, jr_062_51ad                                ; $517b: $38 $30

	nop                                              ; $517d: $00
	cp l                                             ; $517e: $bd
	jr nc, jr_062_5181                               ; $517f: $30 $00

jr_062_5181:
	ld bc, $9585                                     ; $5181: $01 $85 $95
	inc bc                                           ; $5184: $03
	rst SubAFromHL                                          ; $5185: $d7
	rst AddAOntoHL                                          ; $5186: $ef

jr_062_5187:
	rst $38                                          ; $5187: $ff
	ld a, a                                          ; $5188: $7f
	rst $38                                          ; $5189: $ff
	ccf                                              ; $518a: $3f
	ccf                                              ; $518b: $3f
	ld c, $1f                                        ; $518c: $0e $1f
	cp e                                             ; $518e: $bb
	inc bc                                           ; $518f: $03
	nop                                              ; $5190: $00
	nop                                              ; $5191: $00
	nop                                              ; $5192: $00
	ld h, b                                          ; $5193: $60
	ld l, b                                          ; $5194: $68
	sbc l                                            ; $5195: $9d
	jr nz, jr_062_51d0                               ; $5196: $20 $38

	ld [hl], a                                       ; $5198: $77
	db $dd                                           ; $5199: $dd
	rra                                              ; $519a: $1f
	ldh [$99], a                                     ; $519b: $e0 $99
	ld h, b                                          ; $519d: $60
	ld a, b                                          ; $519e: $78
	ld a, b                                          ; $519f: $78
	jr c, jr_062_51d2                                ; $51a0: $38 $30

	jr nc, @+$25                                     ; $51a2: $30 $23

	ldh [$9d], a                                     ; $51a4: $e0 $9d
	ld h, h                                          ; $51a6: $64
	ld h, b                                          ; $51a7: $60
	sbc $7c                                          ; $51a8: $de $7c
	rst SubAFromDE                                          ; $51aa: $df
	jr c, jr_062_51e0                                ; $51ab: $38 $33

jr_062_51ad:
	ldh [$d7], a                                     ; $51ad: $e0 $d7
	ld bc, $9696                                     ; $51af: $01 $96 $96
	rst $38                                          ; $51b2: $ff
	sub [hl]                                         ; $51b3: $96
	rst $38                                          ; $51b4: $ff
	rst SubAFromHL                                          ; $51b5: $d7
	db $fd                                           ; $51b6: $fd
	push de                                          ; $51b7: $d5
	db $fd                                           ; $51b8: $fd
	push af                                          ; $51b9: $f5
	sbc $fc                                          ; $51ba: $de $fc
	add b                                            ; $51bc: $80
	xor [hl]                                         ; $51bd: $ae
	db $fc                                           ; $51be: $fc
	xor a                                            ; $51bf: $af
	db $fd                                           ; $51c0: $fd
	xor h                                            ; $51c1: $ac
	cp $aa                                           ; $51c2: $fe $aa
	cp $ba                                           ; $51c4: $fe $ba
	xor $b3                                          ; $51c6: $ee $b3
	xor $f3                                          ; $51c8: $ee $f3
	xor [hl]                                         ; $51ca: $ae
	ld d, d                                          ; $51cb: $52

jr_062_51cc:
	rst AddAOntoHL                                          ; $51cc: $ef
	push de                                          ; $51cd: $d5
	ld l, e                                          ; $51ce: $6b
	push de                                          ; $51cf: $d5

jr_062_51d0:
	ld l, e                                          ; $51d0: $6b
	push af                                          ; $51d1: $f5

jr_062_51d2:
	ld c, e                                          ; $51d2: $4b
	push af                                          ; $51d3: $f5
	ld c, e                                          ; $51d4: $4b
	cp l                                             ; $51d5: $bd
	jp $c3bd                                         ; $51d6: $c3 $bd $c3


	db $fd                                           ; $51d9: $fd
	add e                                            ; $51da: $83
	db $ed                                           ; $51db: $ed
	add b                                            ; $51dc: $80
	sub e                                            ; $51dd: $93
	ld l, l                                          ; $51de: $6d
	sub e                                            ; $51df: $93

jr_062_51e0:
	ld c, c                                          ; $51e0: $49
	or a                                             ; $51e1: $b7
	jp z, $da37                                      ; $51e2: $ca $37 $da

	daa                                              ; $51e5: $27
	sbc d                                            ; $51e6: $9a
	ld h, a                                          ; $51e7: $67
	jp c, Jump_062_5767                              ; $51e8: $da $67 $57

	rst AddAOntoHL                                          ; $51eb: $ef
	ld d, a                                          ; $51ec: $57
	rst AddAOntoHL                                          ; $51ed: $ef
	ld l, l                                          ; $51ee: $6d
	db $dd                                           ; $51ef: $dd
	db $ec                                           ; $51f0: $ec
	call c, $ff66                                    ; $51f1: $dc $66 $ff
	halt                                             ; $51f4: $76
	rst $38                                          ; $51f5: $ff
	ld [hl], a                                       ; $51f6: $77
	rst SubAFromDE                                          ; $51f7: $df
	ld a, a                                          ; $51f8: $7f
	db $fd                                           ; $51f9: $fd
	rst $38                                          ; $51fa: $ff
	call z, $ff8f                                    ; $51fb: $cc $8f $ff
	ld e, [hl]                                       ; $51fe: $5e
	ld [hl], e                                       ; $51ff: $73
	ld [hl], e                                       ; $5200: $73
	di                                               ; $5201: $f3
	rst SubAFromBC                                          ; $5202: $e7
	cp a                                             ; $5203: $bf
	cp a                                             ; $5204: $bf
	dec l                                            ; $5205: $2d
	ccf                                              ; $5206: $3f
	add hl, hl                                       ; $5207: $29
	inc [hl]                                         ; $5208: $34
	ld a, [de]                                       ; $5209: $1a
	ld [de], a                                       ; $520a: $12
	ld c, $0c                                        ; $520b: $0e $0c
	db $fd                                           ; $520d: $fd
	add b                                            ; $520e: $80
	add b                                            ; $520f: $80
	nop                                              ; $5210: $00
	ret nz                                           ; $5211: $c0

	add b                                            ; $5212: $80
	add b                                            ; $5213: $80
	ret nz                                           ; $5214: $c0

	ldh [$c0], a                                     ; $5215: $e0 $c0
	ldh a, [$e0]                                     ; $5217: $f0 $e0
	ld e, b                                          ; $5219: $58
	ldh a, [$4c]                                     ; $521a: $f0 $4c
	ld hl, sp+$4c                                    ; $521c: $f8 $4c
	cp $4b                                           ; $521e: $fe $4b
	rst $38                                          ; $5220: $ff
	ld c, a                                          ; $5221: $4f
	ld hl, sp-$31                                    ; $5222: $f8 $cf
	ld hl, sp-$22                                    ; $5224: $f8 $de
	ld hl, sp-$62                                    ; $5226: $f8 $9e
	ld hl, sp-$44                                    ; $5228: $f8 $bc
	ldh a, [$7c]                                     ; $522a: $f0 $7c
	ret nz                                           ; $522c: $c0

	db $fc                                           ; $522d: $fc
	sbc b                                            ; $522e: $98
	add b                                            ; $522f: $80
	cp $c0                                           ; $5230: $fe $c0
	ldh a, [c]                                       ; $5232: $f2
	sbc a                                            ; $5233: $9f
	ei                                               ; $5234: $fb
	adc a                                            ; $5235: $8f
	ld a, e                                          ; $5236: $7b
	cp $9c                                           ; $5237: $fe $9c
	adc [hl]                                         ; $5239: $8e
	rst $38                                          ; $523a: $ff
	add [hl]                                         ; $523b: $86
	ld a, e                                          ; $523c: $7b
	cp $9d                                           ; $523d: $fe $9d
	ld [bc], a                                       ; $523f: $02
	rst $38                                          ; $5240: $ff
	cp c                                             ; $5241: $b9
	rst $38                                          ; $5242: $ff
	rst GetHLinHL                                          ; $5243: $cf
	inc bc                                           ; $5244: $03
	nop                                              ; $5245: $00
	db $10                                           ; $5246: $10
	jr jr_062_5281                                   ; $5247: $18 $38

	jr nc, jr_062_51cc                               ; $5249: $30 $81

	jr nz, jr_062_52bc                               ; $524b: $20 $6f

	db $db                                           ; $524d: $db
	ld c, l                                          ; $524e: $4d
	ei                                               ; $524f: $fb
	ld l, c                                          ; $5250: $69
	rst $38                                          ; $5251: $ff
	jp hl                                            ; $5252: $e9


	rst $38                                          ; $5253: $ff
	db $fd                                           ; $5254: $fd
	rst SubAFromDE                                          ; $5255: $df
	db $fc                                           ; $5256: $fc
	ld d, a                                          ; $5257: $57
	cp $3b                                           ; $5258: $fe $3b
	rst SubAFromBC                                          ; $525a: $e7
	ld h, a                                          ; $525b: $67
	rst SubAFromBC                                          ; $525c: $e7
	adc $ff                                          ; $525d: $ce $ff
	ld a, a                                          ; $525f: $7f
	db $db                                           ; $5260: $db
	ld a, a                                          ; $5261: $7f
	push de                                          ; $5262: $d5
	ld l, c                                          ; $5263: $69
	scf                                              ; $5264: $37
	inc h                                            ; $5265: $24
	ccf                                              ; $5266: $3f
	jr @+$05                                         ; $5267: $18 $03

	cp a                                             ; $5269: $bf
	rlca                                             ; $526a: $07
	ld c, $91                                        ; $526b: $0e $91
	ld bc, $031d                                     ; $526d: $01 $1d $03
	dec de                                           ; $5270: $1b
	rlca                                             ; $5271: $07
	scf                                              ; $5272: $37
	rrca                                             ; $5273: $0f
	ld l, a                                          ; $5274: $6f
	rra                                              ; $5275: $1f
	rst SubAFromDE                                          ; $5276: $df
	ccf                                              ; $5277: $3f
	ld a, l                                          ; $5278: $7d
	rst $38                                          ; $5279: $ff
	ld sp, hl                                        ; $527a: $f9
	ld a, e                                          ; $527b: $7b
	sub $7b                                          ; $527c: $d6 $7b
	cp $80                                           ; $527e: $fe $80
	cp a                                             ; $5280: $bf

jr_062_5281:
	jp hl                                            ; $5281: $e9


	ccf                                              ; $5282: $3f
	ld sp, hl                                        ; $5283: $f9
	ccf                                              ; $5284: $3f
	db $fd                                           ; $5285: $fd
	rra                                              ; $5286: $1f
	db $fd                                           ; $5287: $fd
	rra                                              ; $5288: $1f
	rst $38                                          ; $5289: $ff
	rlca                                             ; $528a: $07
	ld a, d                                          ; $528b: $7a
	sub a                                            ; $528c: $97
	cp d                                             ; $528d: $ba
	rst SubAFromHL                                          ; $528e: $d7
	sub d                                            ; $528f: $92
	rst $38                                          ; $5290: $ff
	jp nc, $da7f                                     ; $5291: $d2 $7f $da

	ld a, a                                          ; $5294: $7f
	ld [$ebbf], a                                    ; $5295: $ea $bf $eb
	cp a                                             ; $5298: $bf
	xor $bf                                          ; $5299: $ee $bf
	rst $38                                          ; $529b: $ff
	rst SubAFromDE                                          ; $529c: $df
	rst $38                                          ; $529d: $ff
	ld e, a                                          ; $529e: $5f
	sub h                                            ; $529f: $94
	db $dd                                           ; $52a0: $dd
	cp a                                             ; $52a1: $bf
	db $fd                                           ; $52a2: $fd
	ccf                                              ; $52a3: $3f
	or l                                             ; $52a4: $b5
	ld a, a                                          ; $52a5: $7f
	push af                                          ; $52a6: $f5
	ld a, a                                          ; $52a7: $7f
	ld [hl], l                                       ; $52a8: $75
	rst $38                                          ; $52a9: $ff
	push de                                          ; $52aa: $d5
	ld a, e                                          ; $52ab: $7b
	cp $92                                           ; $52ac: $fe $92
	push bc                                          ; $52ae: $c5
	rst $38                                          ; $52af: $ff
	ld b, h                                          ; $52b0: $44
	rst $38                                          ; $52b1: $ff
	ld c, h                                          ; $52b2: $4c
	rst FarCall                                          ; $52b3: $f7
	inc l                                            ; $52b4: $2c
	rst SubAFromHL                                          ; $52b5: $d7
	dec h                                            ; $52b6: $25
	sub $65                                          ; $52b7: $d6 $65
	sub [hl]                                         ; $52b9: $96
	ld b, h                                          ; $52ba: $44
	ld a, e                                          ; $52bb: $7b

jr_062_52bc:
	cp $95                                           ; $52bc: $fe $95
	ld d, h                                          ; $52be: $54
	add [hl]                                         ; $52bf: $86
	ld d, h                                          ; $52c0: $54
	add [hl]                                         ; $52c1: $86
	ld b, l                                          ; $52c2: $45
	add [hl]                                         ; $52c3: $86
	ld b, h                                          ; $52c4: $44
	add [hl]                                         ; $52c5: $86
	ld b, [hl]                                       ; $52c6: $46
	add a                                            ; $52c7: $87
	ld [hl], a                                       ; $52c8: $77
	cp $4e                                           ; $52c9: $fe $4e
	ldh [$7f], a                                     ; $52cb: $e0 $7f
	cp $9d                                           ; $52cd: $fe $9d
	xor l                                            ; $52cf: $ad
	rst $38                                          ; $52d0: $ff
	ld c, [hl]                                       ; $52d1: $4e
	ldh [$5b], a                                     ; $52d2: $e0 $5b
	nop                                              ; $52d4: $00
	sub [hl]                                         ; $52d5: $96
	ld b, h                                          ; $52d6: $44
	ld a, a                                          ; $52d7: $7f
	inc e                                            ; $52d8: $1c
	ld h, a                                          ; $52d9: $67
	ld [hl], d                                       ; $52da: $72
	rst AddAOntoHL                                          ; $52db: $ef
	rst SubAFromBC                                          ; $52dc: $e7
	cp l                                             ; $52dd: $bd
	cp a                                             ; $52de: $bf
	ld d, a                                          ; $52df: $57
	nop                                              ; $52e0: $00
	ld d, e                                          ; $52e1: $53
	ld b, b                                          ; $52e2: $40
	sub a                                            ; $52e3: $97
	inc bc                                           ; $52e4: $03
	rst $38                                          ; $52e5: $ff
	dec sp                                           ; $52e6: $3b
	rst GetHLinHL                                          ; $52e7: $cf
	ld h, [hl]                                       ; $52e8: $66
	rst SubAFromDE                                          ; $52e9: $df
	rst GetHLinHL                                          ; $52ea: $cf
	ei                                               ; $52eb: $fb
	ld e, e                                          ; $52ec: $5b
	ld b, b                                          ; $52ed: $40
	ld b, a                                          ; $52ee: $47
	and b                                            ; $52ef: $a0
	ld b, [hl]                                       ; $52f0: $46
	add b                                            ; $52f1: $80
	ld l, e                                          ; $52f2: $6b
	and b                                            ; $52f3: $a0
	sbc h                                            ; $52f4: $9c
	db $dd                                           ; $52f5: $dd
	rst $38                                          ; $52f6: $ff
	db $ec                                           ; $52f7: $ec
	ld a, e                                          ; $52f8: $7b
	and b                                            ; $52f9: $a0
	cp a                                             ; $52fa: $bf
	rra                                              ; $52fb: $1f
	ld a, a                                          ; $52fc: $7f
	sub a                                            ; $52fd: $97

Jump_062_52fe:
	ld a, $f7                                        ; $52fe: $3e $f7
	rst FarCall                                          ; $5300: $f7
	ccf                                              ; $5301: $3f
	ld a, $1e                                        ; $5302: $3e $1e
	inc e                                            ; $5304: $1c
	ld c, $bd                                        ; $5305: $0e $bd
	nop                                              ; $5307: $00
	nop                                              ; $5308: $00
	add b                                            ; $5309: $80
	ldh a, [c]                                       ; $530a: $f2
	halt                                             ; $530b: $76
	ret nz                                           ; $530c: $c0

	sbc h                                            ; $530d: $9c
	adc [hl]                                         ; $530e: $8e
	ei                                               ; $530f: $fb
	adc a                                            ; $5310: $8f
	ld [bc], a                                       ; $5311: $02
	ret nz                                           ; $5312: $c0

	ld l, a                                          ; $5313: $6f
	add b                                            ; $5314: $80
	ld a, a                                          ; $5315: $7f
	cp $7f                                           ; $5316: $fe $7f
	call c, Call_062_7897                            ; $5318: $dc $97 $78
	rst AddAOntoHL                                          ; $531b: $ef
	xor $ff                                          ; $531c: $ee $ff
	ld a, a                                          ; $531e: $7f
	ld a, a                                          ; $531f: $7f
	inc e                                            ; $5320: $1c
	rra                                              ; $5321: $1f
	cp [hl]                                          ; $5322: $be
	inc bc                                           ; $5323: $03
	rlca                                             ; $5324: $07
	ld a, d                                          ; $5325: $7a
	ld [hl], $e0                                     ; $5326: $36 $e0
	ld a, [hl]                                       ; $5328: $7e
	call nz, $e062                                   ; $5329: $c4 $62 $e0
	ld [hl], e                                       ; $532c: $73
	add b                                            ; $532d: $80
	sbc h                                            ; $532e: $9c
	db $dd                                           ; $532f: $dd
	ld a, a                                          ; $5330: $7f
	rst SubAFromDE                                          ; $5331: $df
	ld h, e                                          ; $5332: $63
	add b                                            ; $5333: $80
	sub a                                            ; $5334: $97
	jr nz, @+$01                                     ; $5335: $20 $ff

	ld e, $ff                                        ; $5337: $1e $ff
	ret nz                                           ; $5339: $c0

	ld a, $3e                                        ; $533a: $3e $3e
	ld e, $4f                                        ; $533c: $1e $4f
	add b                                            ; $533e: $80
	ld a, [hl]                                       ; $533f: $7e
	ld b, b                                          ; $5340: $40
	sbc [hl]                                         ; $5341: $9e
	add a                                            ; $5342: $87
	dec bc                                           ; $5343: $0b
	add b                                            ; $5344: $80
	sbc [hl]                                         ; $5345: $9e
	rst $38                                          ; $5346: $ff
	ld h, e                                          ; $5347: $63
	add b                                            ; $5348: $80
	sbc b                                            ; $5349: $98
	ld h, b                                          ; $534a: $60
	rst $38                                          ; $534b: $ff
	inc e                                            ; $534c: $1c
	rst $38                                          ; $534d: $ff
	ret nz                                           ; $534e: $c0

	ld a, a                                          ; $534f: $7f
	ld a, $6f                                        ; $5350: $3e $6f
	add b                                            ; $5352: $80
	rst $38                                          ; $5353: $ff
	sbc d                                            ; $5354: $9a
	adc h                                            ; $5355: $8c
	nop                                              ; $5356: $00
	jr z, @+$12                                      ; $5357: $28 $10

	nop                                              ; $5359: $00
	cp l                                             ; $535a: $bd
	jr nc, jr_062_535d                               ; $535b: $30 $00

jr_062_535d:
	ld bc, $9685                                     ; $535d: $01 $85 $96
	inc bc                                           ; $5360: $03
	rst SubAFromHL                                          ; $5361: $d7
	rst AddAOntoHL                                          ; $5362: $ef
	rst $38                                          ; $5363: $ff
	ld a, a                                          ; $5364: $7f
	rst $38                                          ; $5365: $ff
	ccf                                              ; $5366: $3f
	ccf                                              ; $5367: $3f
	ld c, $77                                        ; $5368: $0e $77
	ldh [c], a                                       ; $536a: $e2
	ei                                               ; $536b: $fb
	sbc d                                            ; $536c: $9a
	call z, Call_062_7800                            ; $536d: $cc $00 $78
	jr nc, jr_062_5382                               ; $5370: $30 $10

	rla                                              ; $5372: $17
	ldh [$9a], a                                     ; $5373: $e0 $9a
	ld [$78fc], sp                                   ; $5375: $08 $fc $78
	ld a, b                                          ; $5378: $78
	jr nc, jr_062_5396                               ; $5379: $30 $1b

	ldh [$9b], a                                     ; $537b: $e0 $9b
	inc c                                            ; $537d: $0c
	db $fc                                           ; $537e: $fc
	ld a, h                                          ; $537f: $7c
	ld a, h                                          ; $5380: $7c
	ld a, e                                          ; $5381: $7b

jr_062_5382:
	sbc $2f                                          ; $5382: $de $2f
	ldh [$c8], a                                     ; $5384: $e0 $c8
	ld bc, $9696                                     ; $5386: $01 $96 $96
	rst $38                                          ; $5389: $ff
	sub [hl]                                         ; $538a: $96
	rst $38                                          ; $538b: $ff
	rst SubAFromHL                                          ; $538c: $d7
	db $fd                                           ; $538d: $fd
	push de                                          ; $538e: $d5
	db $fd                                           ; $538f: $fd
	push af                                          ; $5390: $f5
	sbc $fc                                          ; $5391: $de $fc
	add b                                            ; $5393: $80
	xor [hl]                                         ; $5394: $ae
	db $fc                                           ; $5395: $fc

jr_062_5396:
	xor a                                            ; $5396: $af
	db $fd                                           ; $5397: $fd
	xor h                                            ; $5398: $ac
	cp $aa                                           ; $5399: $fe $aa
	cp $ba                                           ; $539b: $fe $ba
	xor $b3                                          ; $539d: $ee $b3
	xor $f3                                          ; $539f: $ee $f3
	xor [hl]                                         ; $53a1: $ae
	ld d, d                                          ; $53a2: $52

jr_062_53a3:
	rst AddAOntoHL                                          ; $53a3: $ef
	push de                                          ; $53a4: $d5
	ld l, e                                          ; $53a5: $6b
	push de                                          ; $53a6: $d5
	ld l, e                                          ; $53a7: $6b
	push af                                          ; $53a8: $f5
	ld c, e                                          ; $53a9: $4b
	push af                                          ; $53aa: $f5
	ld c, e                                          ; $53ab: $4b
	cp l                                             ; $53ac: $bd
	jp $c3bd                                         ; $53ad: $c3 $bd $c3


	db $fd                                           ; $53b0: $fd
	add e                                            ; $53b1: $83
	db $ed                                           ; $53b2: $ed
	add b                                            ; $53b3: $80
	sub e                                            ; $53b4: $93
	ld l, l                                          ; $53b5: $6d
	sub e                                            ; $53b6: $93
	ld c, c                                          ; $53b7: $49
	or a                                             ; $53b8: $b7
	jp z, $da37                                      ; $53b9: $ca $37 $da

	daa                                              ; $53bc: $27
	sbc d                                            ; $53bd: $9a
	ld h, a                                          ; $53be: $67
	jp c, Jump_062_5767                              ; $53bf: $da $67 $57

	rst AddAOntoHL                                          ; $53c2: $ef
	ld d, a                                          ; $53c3: $57
	rst AddAOntoHL                                          ; $53c4: $ef
	ld l, l                                          ; $53c5: $6d
	db $dd                                           ; $53c6: $dd
	db $ec                                           ; $53c7: $ec
	call c, $ff66                                    ; $53c8: $dc $66 $ff
	halt                                             ; $53cb: $76
	rst $38                                          ; $53cc: $ff
	ld [hl], a                                       ; $53cd: $77
	db $dd                                           ; $53ce: $dd
	ld a, a                                          ; $53cf: $7f
	db $dd                                           ; $53d0: $dd
	rst $38                                          ; $53d1: $ff
	xor $8f                                          ; $53d2: $ee $8f
	rst $38                                          ; $53d4: $ff
	ld b, h                                          ; $53d5: $44
	ld a, a                                          ; $53d6: $7f
	ld a, $f3                                        ; $53d7: $3e $f3
	di                                               ; $53d9: $f3
	or a                                             ; $53da: $b7
	and a                                            ; $53db: $a7
	dec l                                            ; $53dc: $2d
	ccf                                              ; $53dd: $3f
	add hl, hl                                       ; $53de: $29
	inc [hl]                                         ; $53df: $34
	ld a, [de]                                       ; $53e0: $1a
	ld [de], a                                       ; $53e1: $12
	ld c, $0c                                        ; $53e2: $0e $0c
	db $fd                                           ; $53e4: $fd
	add b                                            ; $53e5: $80
	add b                                            ; $53e6: $80
	nop                                              ; $53e7: $00
	ret nz                                           ; $53e8: $c0

	add b                                            ; $53e9: $80
	add b                                            ; $53ea: $80
	ret nz                                           ; $53eb: $c0

	ldh [$c0], a                                     ; $53ec: $e0 $c0
	ldh a, [$e0]                                     ; $53ee: $f0 $e0
	ld e, b                                          ; $53f0: $58
	ldh a, [$4c]                                     ; $53f1: $f0 $4c
	ld hl, sp+$4c                                    ; $53f3: $f8 $4c
	cp $4b                                           ; $53f5: $fe $4b
	rst $38                                          ; $53f7: $ff
	ld c, a                                          ; $53f8: $4f
	ld hl, sp-$31                                    ; $53f9: $f8 $cf
	ld hl, sp-$22                                    ; $53fb: $f8 $de
	ld hl, sp-$62                                    ; $53fd: $f8 $9e
	ld hl, sp-$44                                    ; $53ff: $f8 $bc
	ldh a, [$7c]                                     ; $5401: $f0 $7c
	ret nz                                           ; $5403: $c0

	db $fc                                           ; $5404: $fc
	sbc b                                            ; $5405: $98
	add b                                            ; $5406: $80
	cp $c0                                           ; $5407: $fe $c0
	ldh a, [c]                                       ; $5409: $f2
	sbc a                                            ; $540a: $9f
	ei                                               ; $540b: $fb
	adc a                                            ; $540c: $8f
	ld a, e                                          ; $540d: $7b
	cp $9c                                           ; $540e: $fe $9c
	adc [hl]                                         ; $5410: $8e
	rst $38                                          ; $5411: $ff
	add [hl]                                         ; $5412: $86
	ld a, e                                          ; $5413: $7b
	cp $9d                                           ; $5414: $fe $9d
	ld [bc], a                                       ; $5416: $02
	rst $38                                          ; $5417: $ff
	cp c                                             ; $5418: $b9
	rst $38                                          ; $5419: $ff
	rst GetHLinHL                                          ; $541a: $cf
	inc bc                                           ; $541b: $03
	nop                                              ; $541c: $00
	db $10                                           ; $541d: $10
	jr jr_062_5458                                   ; $541e: $18 $38

	jr nc, jr_062_53a3                               ; $5420: $30 $81

	jr nz, jr_062_5493                               ; $5422: $20 $6f

	db $db                                           ; $5424: $db
	ld c, l                                          ; $5425: $4d
	ei                                               ; $5426: $fb
	ld l, c                                          ; $5427: $69
	rst $38                                          ; $5428: $ff
	jp hl                                            ; $5429: $e9


	cp a                                             ; $542a: $bf
	db $fd                                           ; $542b: $fd
	rst $38                                          ; $542c: $ff
	db $fc                                           ; $542d: $fc
	ld d, a                                          ; $542e: $57
	cp $03                                           ; $542f: $fe $03
	rst $38                                          ; $5431: $ff
	add hl, sp                                       ; $5432: $39
	rst SubAFromBC                                          ; $5433: $e7
	and $ef                                          ; $5434: $e6 $ef
	ld c, a                                          ; $5436: $4f
	db $db                                           ; $5437: $db
	ld a, a                                          ; $5438: $7f
	push de                                          ; $5439: $d5
	ld l, c                                          ; $543a: $69
	scf                                              ; $543b: $37
	inc h                                            ; $543c: $24
	ccf                                              ; $543d: $3f
	jr @+$05                                         ; $543e: $18 $03

	cp a                                             ; $5440: $bf
	rlca                                             ; $5441: $07
	ld c, $8f                                        ; $5442: $0e $8f
	ld bc, $031d                                     ; $5444: $01 $1d $03
	dec de                                           ; $5447: $1b
	rlca                                             ; $5448: $07
	scf                                              ; $5449: $37
	rrca                                             ; $544a: $0f
	ld l, a                                          ; $544b: $6f
	rra                                              ; $544c: $1f
	rst SubAFromDE                                          ; $544d: $df
	ccf                                              ; $544e: $3f
	ld a, l                                          ; $544f: $7d
	rst $38                                          ; $5450: $ff
	ld sp, hl                                        ; $5451: $f9
	rst $38                                          ; $5452: $ff
	jp hl                                            ; $5453: $e9


	ld [hl], a                                       ; $5454: $77
	cp $80                                           ; $5455: $fe $80
	cp a                                             ; $5457: $bf

jr_062_5458:
	jp hl                                            ; $5458: $e9


	ccf                                              ; $5459: $3f
	ld sp, hl                                        ; $545a: $f9
	ccf                                              ; $545b: $3f
	db $fd                                           ; $545c: $fd
	rra                                              ; $545d: $1f
	db $fd                                           ; $545e: $fd
	rra                                              ; $545f: $1f
	rst $38                                          ; $5460: $ff
	rlca                                             ; $5461: $07
	ld a, d                                          ; $5462: $7a
	sub a                                            ; $5463: $97
	cp d                                             ; $5464: $ba
	rst SubAFromHL                                          ; $5465: $d7
	sub d                                            ; $5466: $92
	rst $38                                          ; $5467: $ff
	jp nc, $da7f                                     ; $5468: $d2 $7f $da

	ld a, a                                          ; $546b: $7f
	ld [$ebbf], a                                    ; $546c: $ea $bf $eb
	cp a                                             ; $546f: $bf
	xor $bf                                          ; $5470: $ee $bf
	rst $38                                          ; $5472: $ff
	rst SubAFromDE                                          ; $5473: $df
	rst $38                                          ; $5474: $ff
	ld e, a                                          ; $5475: $5f
	sub h                                            ; $5476: $94
	db $dd                                           ; $5477: $dd
	cp a                                             ; $5478: $bf
	db $fd                                           ; $5479: $fd
	ccf                                              ; $547a: $3f
	or l                                             ; $547b: $b5
	ld a, a                                          ; $547c: $7f
	push af                                          ; $547d: $f5
	ld a, a                                          ; $547e: $7f
	ld [hl], l                                       ; $547f: $75
	rst $38                                          ; $5480: $ff
	push de                                          ; $5481: $d5
	ld a, e                                          ; $5482: $7b
	cp $92                                           ; $5483: $fe $92
	push bc                                          ; $5485: $c5
	rst $38                                          ; $5486: $ff
	ld b, h                                          ; $5487: $44
	rst $38                                          ; $5488: $ff
	ld c, h                                          ; $5489: $4c
	rst FarCall                                          ; $548a: $f7
	inc l                                            ; $548b: $2c
	rst SubAFromHL                                          ; $548c: $d7
	dec h                                            ; $548d: $25
	sub $65                                          ; $548e: $d6 $65
	sub [hl]                                         ; $5490: $96
	ld b, h                                          ; $5491: $44
	ld a, e                                          ; $5492: $7b

jr_062_5493:
	cp $95                                           ; $5493: $fe $95
	ld d, h                                          ; $5495: $54
	add [hl]                                         ; $5496: $86
	ld d, h                                          ; $5497: $54
	add [hl]                                         ; $5498: $86
	ld b, l                                          ; $5499: $45
	add [hl]                                         ; $549a: $86
	ld b, h                                          ; $549b: $44
	add [hl]                                         ; $549c: $86
	ld b, [hl]                                       ; $549d: $46
	add a                                            ; $549e: $87
	ld [hl], a                                       ; $549f: $77
	cp $4e                                           ; $54a0: $fe $4e
	ldh [$7f], a                                     ; $54a2: $e0 $7f
	cp $46                                           ; $54a4: $fe $46
	ldh [$63], a                                     ; $54a6: $e0 $63
	nop                                              ; $54a8: $00
	sbc [hl]                                         ; $54a9: $9e
	cp $7b                                           ; $54aa: $fe $7b
	nop                                              ; $54ac: $00
	sub [hl]                                         ; $54ad: $96
	nop                                              ; $54ae: $00
	ld a, a                                          ; $54af: $7f
	ld e, $f3                                        ; $54b0: $1e $f3
	db $e3                                           ; $54b2: $e3
	ld c, l                                          ; $54b3: $4d
	ld e, a                                          ; $54b4: $5f
	ld c, c                                          ; $54b5: $49
	ld d, h                                          ; $54b6: $54
	ld e, a                                          ; $54b7: $5f
	nop                                              ; $54b8: $00
	ld c, e                                          ; $54b9: $4b
	ld b, b                                          ; $54ba: $40
	sbc d                                            ; $54bb: $9a
	ld bc, $78ff                                     ; $54bc: $01 $ff $78
	rst SubAFromBC                                          ; $54bf: $e7
	add $57                                          ; $54c0: $c6 $57
	ld b, b                                          ; $54c2: $40
	inc sp                                           ; $54c3: $33
	ld h, b                                          ; $54c4: $60
	ld a, a                                          ; $54c5: $7f
	ld b, h                                          ; $54c6: $44
	sbc [hl]                                         ; $54c7: $9e
	cp a                                             ; $54c8: $bf
	ld h, a                                          ; $54c9: $67
	ld h, b                                          ; $54ca: $60
	ld h, e                                          ; $54cb: $63
	and b                                            ; $54cc: $a0
	sbc e                                            ; $54cd: $9b
	sbc $ff                                          ; $54ce: $de $ff
	ld h, h                                          ; $54d0: $64
	ld a, a                                          ; $54d1: $7f
	cp a                                             ; $54d2: $bf
	rra                                              ; $54d3: $1f
	ld a, a                                          ; $54d4: $7f
	sub a                                            ; $54d5: $97
	ld a, $f7                                        ; $54d6: $3e $f7
	rst FarCall                                          ; $54d8: $f7
	ld a, a                                          ; $54d9: $7f
	ld a, [hl]                                       ; $54da: $7e
	ld e, $1c                                        ; $54db: $1e $1c

jr_062_54dd:
	ld c, $bd                                        ; $54dd: $0e $bd
	nop                                              ; $54df: $00
	nop                                              ; $54e0: $00
	add b                                            ; $54e1: $80
	ld l, a                                          ; $54e2: $6f
	ld e, a                                          ; $54e3: $5f
	and b                                            ; $54e4: $a0
	sbc [hl]                                         ; $54e5: $9e
	ld e, a                                          ; $54e6: $5f
	ld [hl], e                                       ; $54e7: $73
	and b                                            ; $54e8: $a0
	ld a, [hl]                                       ; $54e9: $7e
	cp [hl]                                          ; $54ea: $be
	sub a                                            ; $54eb: $97
	jr c, jr_062_54dd                                ; $54ec: $38 $ef

	xor $ff                                          ; $54ee: $ee $ff
	ccf                                              ; $54f0: $3f
	ld a, a                                          ; $54f1: $7f
	inc e                                            ; $54f2: $1c
	rra                                              ; $54f3: $1f
	cp [hl]                                          ; $54f4: $be
	inc bc                                           ; $54f5: $03
	rlca                                             ; $54f6: $07
	ld a, d                                          ; $54f7: $7a
	cpl                                              ; $54f8: $2f
	and b                                            ; $54f9: $a0
	ld h, e                                          ; $54fa: $63
	nop                                              ; $54fb: $00
	ld h, e                                          ; $54fc: $63
	and b                                            ; $54fd: $a0
	sbc h                                            ; $54fe: $9c
	adc $ff                                          ; $54ff: $ce $ff
	ld [hl], b                                       ; $5501: $70
	ld [hl], e                                       ; $5502: $73
	and b                                            ; $5503: $a0
	sub a                                            ; $5504: $97
	jr nz, jr_062_5586                               ; $5505: $20 $7f

	ld e, $ff                                        ; $5507: $1e $ff
	ret nz                                           ; $5509: $c0

	ld a, $3e                                        ; $550a: $3e $3e
	ld e, $3f                                        ; $550c: $1e $3f
	and b                                            ; $550e: $a0
	ld l, a                                          ; $550f: $6f
	ld b, b                                          ; $5510: $40
	ld a, a                                          ; $5511: $7f
	and b                                            ; $5512: $a0
	sbc b                                            ; $5513: $98
	ld b, b                                          ; $5514: $40
	rst $38                                          ; $5515: $ff
	inc a                                            ; $5516: $3c
	rst $38                                          ; $5517: $ff
	ret nz                                           ; $5518: $c0

	ld a, a                                          ; $5519: $7f
	ld a, $6f                                        ; $551a: $3e $6f
	and b                                            ; $551c: $a0
	rst $38                                          ; $551d: $ff
	sbc d                                            ; $551e: $9a
	call z, Call_062_5000                            ; $551f: $cc $00 $50
	jr nz, jr_062_5524                               ; $5522: $20 $00

jr_062_5524:
	cp l                                             ; $5524: $bd
	jr nc, jr_062_5527                               ; $5525: $30 $00

jr_062_5527:
	ld bc, $9685                                     ; $5527: $01 $85 $96
	inc bc                                           ; $552a: $03
	rst SubAFromHL                                          ; $552b: $d7
	rst AddAOntoHL                                          ; $552c: $ef
	rst $38                                          ; $552d: $ff
	ld a, a                                          ; $552e: $7f
	rst $38                                          ; $552f: $ff
	ccf                                              ; $5530: $3f
	ccf                                              ; $5531: $3f
	ld c, $77                                        ; $5532: $0e $77
	ldh [c], a                                       ; $5534: $e2
	ei                                               ; $5535: $fb
	ld a, a                                          ; $5536: $7f
	ldh [$9e], a                                     ; $5537: $e0 $9e
	ld a, b                                          ; $5539: $78
	ld a, e                                          ; $553a: $7b
	db $e3                                           ; $553b: $e3
	rla                                              ; $553c: $17
	ldh [$9b], a                                     ; $553d: $e0 $9b
	ld a, h                                          ; $553f: $7c
	jr c, @+$7a                                      ; $5540: $38 $78

	jr nc, jr_062_55bf                               ; $5542: $30 $7b

	cp l                                             ; $5544: $bd
	rra                                              ; $5545: $1f
	ldh [$df], a                                     ; $5546: $e0 $df
	ld a, h                                          ; $5548: $7c
	rst SubAFromDE                                          ; $5549: $df
	jr c, @+$2d                                      ; $554a: $38 $2b

	ldh [$ce], a                                     ; $554c: $e0 $ce
	ld bc, $9696                                     ; $554e: $01 $96 $96
	rst $38                                          ; $5551: $ff
	sub [hl]                                         ; $5552: $96
	rst $38                                          ; $5553: $ff
	rst SubAFromHL                                          ; $5554: $d7
	db $fd                                           ; $5555: $fd
	push de                                          ; $5556: $d5
	db $fd                                           ; $5557: $fd
	push af                                          ; $5558: $f5
	sbc $fc                                          ; $5559: $de $fc
	sbc [hl]                                         ; $555b: $9e
	xor [hl]                                         ; $555c: $ae
	ld a, e                                          ; $555d: $7b
	cp $80                                           ; $555e: $fe $80
	xor h                                            ; $5560: $ac
	cp $ab                                           ; $5561: $fe $ab
	rst $38                                          ; $5563: $ff
	cp d                                             ; $5564: $ba
	xor $b3                                          ; $5565: $ee $b3
	xor $f3                                          ; $5567: $ee $f3
	xor [hl]                                         ; $5569: $ae
	ld d, d                                          ; $556a: $52
	rst AddAOntoHL                                          ; $556b: $ef
	push de                                          ; $556c: $d5
	ld l, e                                          ; $556d: $6b
	push de                                          ; $556e: $d5
	ld l, e                                          ; $556f: $6b
	push af                                          ; $5570: $f5
	ld c, e                                          ; $5571: $4b
	push af                                          ; $5572: $f5
	ld c, e                                          ; $5573: $4b
	cp l                                             ; $5574: $bd
	jp $c3bd                                         ; $5575: $c3 $bd $c3


	db $fd                                           ; $5578: $fd
	add e                                            ; $5579: $83
	db $ed                                           ; $557a: $ed
	sub e                                            ; $557b: $93
	ld l, l                                          ; $557c: $6d
	sub e                                            ; $557d: $93
	ld c, c                                          ; $557e: $49
	add b                                            ; $557f: $80
	or a                                             ; $5580: $b7
	jp z, $da37                                      ; $5581: $ca $37 $da

	daa                                              ; $5584: $27
	sbc d                                            ; $5585: $9a

jr_062_5586:
	ld h, a                                          ; $5586: $67
	jp c, Jump_062_5767                              ; $5587: $da $67 $57

	rst AddAOntoHL                                          ; $558a: $ef
	ld d, a                                          ; $558b: $57
	rst AddAOntoHL                                          ; $558c: $ef
	ld l, l                                          ; $558d: $6d
	db $dd                                           ; $558e: $dd
	db $ec                                           ; $558f: $ec
	call c, $ff66                                    ; $5590: $dc $66 $ff
	halt                                             ; $5593: $76
	rst $38                                          ; $5594: $ff
	ld [hl], a                                       ; $5595: $77
	db $dd                                           ; $5596: $dd
	ld a, a                                          ; $5597: $7f
	db $dd                                           ; $5598: $dd
	rst $38                                          ; $5599: $ff
	rst SubAFromDE                                          ; $559a: $df
	rst $38                                          ; $559b: $ff
	ld h, h                                          ; $559c: $64
	ld a, a                                          ; $559d: $7f
	nop                                              ; $559e: $00
	sub e                                            ; $559f: $93
	ld a, a                                          ; $55a0: $7f
	ld e, $73                                        ; $55a1: $1e $73
	ld [hl], e                                       ; $55a3: $73
	push af                                          ; $55a4: $f5
	rst SubAFromBC                                          ; $55a5: $e7
	xor l                                            ; $55a6: $ad
	cp h                                             ; $55a7: $bc
	ld a, [de]                                       ; $55a8: $1a
	ld [de], a                                       ; $55a9: $12
	ld c, $0c                                        ; $55aa: $0e $0c
	db $fd                                           ; $55ac: $fd
	add b                                            ; $55ad: $80
	add b                                            ; $55ae: $80
	nop                                              ; $55af: $00
	ret nz                                           ; $55b0: $c0

	add b                                            ; $55b1: $80
	add b                                            ; $55b2: $80
	ret nz                                           ; $55b3: $c0

	ldh [$c0], a                                     ; $55b4: $e0 $c0
	ldh a, [$e0]                                     ; $55b6: $f0 $e0
	ld e, b                                          ; $55b8: $58
	ldh a, [$4c]                                     ; $55b9: $f0 $4c
	ld hl, sp+$4c                                    ; $55bb: $f8 $4c
	cp $4b                                           ; $55bd: $fe $4b

jr_062_55bf:
	rst $38                                          ; $55bf: $ff
	ld c, a                                          ; $55c0: $4f
	ld hl, sp-$31                                    ; $55c1: $f8 $cf
	ld hl, sp-$22                                    ; $55c3: $f8 $de
	ld hl, sp-$62                                    ; $55c5: $f8 $9e
	ld hl, sp-$44                                    ; $55c7: $f8 $bc
	ldh a, [$7c]                                     ; $55c9: $f0 $7c
	ret nz                                           ; $55cb: $c0

	db $fc                                           ; $55cc: $fc
	sbc b                                            ; $55cd: $98
	add b                                            ; $55ce: $80
	cp $c0                                           ; $55cf: $fe $c0
	ldh a, [c]                                       ; $55d1: $f2
	sbc a                                            ; $55d2: $9f
	ei                                               ; $55d3: $fb
	adc a                                            ; $55d4: $8f
	ld a, e                                          ; $55d5: $7b
	cp $9c                                           ; $55d6: $fe $9c
	adc [hl]                                         ; $55d8: $8e
	rst $38                                          ; $55d9: $ff
	add [hl]                                         ; $55da: $86
	ld a, e                                          ; $55db: $7b
	cp $97                                           ; $55dc: $fe $97
	ld [bc], a                                       ; $55de: $02
	rst $38                                          ; $55df: $ff
	nop                                              ; $55e0: $00
	rst $38                                          ; $55e1: $ff
	nop                                              ; $55e2: $00
	rst GetHLinHL                                          ; $55e3: $cf
	nop                                              ; $55e4: $00
	inc bc                                           ; $55e5: $03
	cp $80                                           ; $55e6: $fe $80
	stop                                             ; $55e8: $10 $00
	jr jr_062_55ec                                   ; $55ea: $18 $00

jr_062_55ec:
	jr c, jr_062_55ee                                ; $55ec: $38 $00

jr_062_55ee:
	jr nc, jr_062_5610                               ; $55ee: $30 $20

	ld l, a                                          ; $55f0: $6f
	db $db                                           ; $55f1: $db
	ld c, l                                          ; $55f2: $4d
	ei                                               ; $55f3: $fb
	ld l, c                                          ; $55f4: $69
	rst $38                                          ; $55f5: $ff
	jp hl                                            ; $55f6: $e9


	cp a                                             ; $55f7: $bf
	db $fd                                           ; $55f8: $fd
	rst $38                                          ; $55f9: $ff
	db $fc                                           ; $55fa: $fc
	ld d, a                                          ; $55fb: $57
	cp $03                                           ; $55fc: $fe $03
	rst $38                                          ; $55fe: $ff
	ld bc, $3cff                                     ; $55ff: $01 $ff $3c
	rst AddAOntoHL                                          ; $5602: $ef
	add $cb                                          ; $5603: $c6 $cb
	ld c, a                                          ; $5605: $4f
	db $dd                                           ; $5606: $dd
	add l                                            ; $5607: $85
	ld a, c                                          ; $5608: $79
	scf                                              ; $5609: $37
	inc h                                            ; $560a: $24
	ccf                                              ; $560b: $3f
	jr jr_062_5611                                   ; $560c: $18 $03

	nop                                              ; $560e: $00
	rlca                                             ; $560f: $07

jr_062_5610:
	nop                                              ; $5610: $00

jr_062_5611:
	ld c, $01                                        ; $5611: $0e $01
	dec e                                            ; $5613: $1d
	inc bc                                           ; $5614: $03
	dec de                                           ; $5615: $1b
	rlca                                             ; $5616: $07
	scf                                              ; $5617: $37
	rrca                                             ; $5618: $0f
	ld l, a                                          ; $5619: $6f
	rra                                              ; $561a: $1f
	rst SubAFromDE                                          ; $561b: $df
	ccf                                              ; $561c: $3f
	ld a, l                                          ; $561d: $7d
	rst $38                                          ; $561e: $ff
	ld sp, hl                                        ; $561f: $f9
	rst $38                                          ; $5620: $ff
	jp hl                                            ; $5621: $e9


	ld [hl], a                                       ; $5622: $77
	cp $84                                           ; $5623: $fe $84
	cp a                                             ; $5625: $bf
	jp hl                                            ; $5626: $e9


	ccf                                              ; $5627: $3f
	ld sp, hl                                        ; $5628: $f9
	ccf                                              ; $5629: $3f
	db $fd                                           ; $562a: $fd
	rra                                              ; $562b: $1f
	db $fd                                           ; $562c: $fd
	rra                                              ; $562d: $1f
	rst $38                                          ; $562e: $ff
	rlca                                             ; $562f: $07
	ld a, d                                          ; $5630: $7a
	sub a                                            ; $5631: $97
	cp d                                             ; $5632: $ba
	rst SubAFromHL                                          ; $5633: $d7
	sub d                                            ; $5634: $92
	rst $38                                          ; $5635: $ff
	jp nc, $da7f                                     ; $5636: $d2 $7f $da

	ld a, a                                          ; $5639: $7f
	ld [$ebbf], a                                    ; $563a: $ea $bf $eb
	cp a                                             ; $563d: $bf
	xor $bf                                          ; $563e: $ee $bf
	ld a, e                                          ; $5640: $7b
	ld e, b                                          ; $5641: $58
	sub e                                            ; $5642: $93
	ld e, a                                          ; $5643: $5f
	db $dd                                           ; $5644: $dd
	cp a                                             ; $5645: $bf
	db $fd                                           ; $5646: $fd
	ccf                                              ; $5647: $3f
	or l                                             ; $5648: $b5
	ld a, a                                          ; $5649: $7f
	push af                                          ; $564a: $f5
	ld a, a                                          ; $564b: $7f
	ld [hl], l                                       ; $564c: $75
	rst $38                                          ; $564d: $ff
	push de                                          ; $564e: $d5
	ld a, e                                          ; $564f: $7b
	cp $92                                           ; $5650: $fe $92
	push bc                                          ; $5652: $c5
	rst $38                                          ; $5653: $ff
	ld b, h                                          ; $5654: $44
	rst $38                                          ; $5655: $ff
	ld c, h                                          ; $5656: $4c
	rst FarCall                                          ; $5657: $f7
	inc l                                            ; $5658: $2c
	rst SubAFromHL                                          ; $5659: $d7
	dec h                                            ; $565a: $25
	sub $65                                          ; $565b: $d6 $65
	sub [hl]                                         ; $565d: $96
	ld b, h                                          ; $565e: $44
	ld a, e                                          ; $565f: $7b
	cp $95                                           ; $5660: $fe $95
	ld d, h                                          ; $5662: $54
	add [hl]                                         ; $5663: $86
	ld d, h                                          ; $5664: $54
	add [hl]                                         ; $5665: $86
	ld b, l                                          ; $5666: $45
	add [hl]                                         ; $5667: $86
	ld b, h                                          ; $5668: $44
	add [hl]                                         ; $5669: $86
	ld b, [hl]                                       ; $566a: $46
	add a                                            ; $566b: $87
	ld [hl], a                                       ; $566c: $77
	cp $3e                                           ; $566d: $fe $3e
	ldh [$9d], a                                     ; $566f: $e0 $9d
	xor d                                            ; $5671: $aa
	cp $56                                           ; $5672: $fe $56
	ldh [$5b], a                                     ; $5674: $e0 $5b
	nop                                              ; $5676: $00
	sbc e                                            ; $5677: $9b
	ld [hl], h                                       ; $5678: $74
	ld a, a                                          ; $5679: $7f
	nop                                              ; $567a: $00
	rra                                              ; $567b: $1f
	ld a, d                                          ; $567c: $7a
	cp $4f                                           ; $567d: $fe $4f
	nop                                              ; $567f: $00
	ld e, e                                          ; $5680: $5b
	ld b, b                                          ; $5681: $40
	sbc [hl]                                         ; $5682: $9e
	ld e, a                                          ; $5683: $5f
	ld [hl], e                                       ; $5684: $73
	ld b, b                                          ; $5685: $40
	ld a, a                                          ; $5686: $7f
	ld e, $9a                                        ; $5687: $1e $9a
	ld a, b                                          ; $5689: $78
	rst AddAOntoHL                                          ; $568a: $ef
	adc $df                                          ; $568b: $ce $df
	ld a, e                                          ; $568d: $7b
	ld h, a                                          ; $568e: $67
	ld b, b                                          ; $568f: $40
	inc sp                                           ; $5690: $33
	ld h, b                                          ; $5691: $60
	ld a, a                                          ; $5692: $7f
	ld b, h                                          ; $5693: $44
	ld h, e                                          ; $5694: $63
	ld h, b                                          ; $5695: $60
	ld h, e                                          ; $5696: $63
	and b                                            ; $5697: $a0
	sbc h                                            ; $5698: $9c
	rst GetHLinHL                                          ; $5699: $cf
	rst $38                                          ; $569a: $ff
	ld a, h                                          ; $569b: $7c
	ld [hl], a                                       ; $569c: $77
	and b                                            ; $569d: $a0
	sub [hl]                                         ; $569e: $96
	ccf                                              ; $569f: $3f
	nop                                              ; $56a0: $00
	ld a, a                                          ; $56a1: $7f
	ld a, $f7                                        ; $56a2: $3e $f7
	rst FarCall                                          ; $56a4: $f7
	ccf                                              ; $56a5: $3f
	ld a, $0e                                        ; $56a6: $3e $0e
	db $fc                                           ; $56a8: $fc
	ld e, e                                          ; $56a9: $5b
	and b                                            ; $56aa: $a0
	sbc h                                            ; $56ab: $9c
	cp a                                             ; $56ac: $bf
	db $fc                                           ; $56ad: $fc
	ld a, a                                          ; $56ae: $7f
	ld l, e                                          ; $56af: $6b
	and b                                            ; $56b0: $a0
	ld [hl], a                                       ; $56b1: $77
	sbc [hl]                                         ; $56b2: $9e
	sbc e                                            ; $56b3: $9b
	xor $7f                                          ; $56b4: $ee $7f
	ld a, h                                          ; $56b6: $7c
	ccf                                              ; $56b7: $3f
	ld a, d                                          ; $56b8: $7a
	cp b                                             ; $56b9: $b8
	ld a, a                                          ; $56ba: $7f
	and b                                            ; $56bb: $a0
	ld h, e                                          ; $56bc: $63
	ret nz                                           ; $56bd: $c0

	sbc h                                            ; $56be: $9c
	call $7eff                                       ; $56bf: $cd $ff $7e
	ld [hl], e                                       ; $56c2: $73
	ld h, b                                          ; $56c3: $60
	sub a                                            ; $56c4: $97
	ld h, b                                          ; $56c5: $60
	ld a, a                                          ; $56c6: $7f
	ld e, $ff                                        ; $56c7: $1e $ff
	ret nz                                           ; $56c9: $c0

	ccf                                              ; $56ca: $3f
	ccf                                              ; $56cb: $3f
	ld e, $6b                                        ; $56cc: $1e $6b
	ret nz                                           ; $56ce: $c0

	ld l, $80                                        ; $56cf: $2e $80
	rst SubAFromDE                                          ; $56d1: $df
	ld bc, $8042                                     ; $56d2: $01 $42 $80
	ld a, a                                          ; $56d5: $7f
	and b                                            ; $56d6: $a0
	sbc h                                            ; $56d7: $9c
	ld [hl], a                                       ; $56d8: $77
	cp $0f                                           ; $56d9: $fe $0f
	ld [hl], e                                       ; $56db: $73
	and b                                            ; $56dc: $a0
	sbc b                                            ; $56dd: $98
	ret nz                                           ; $56de: $c0

	rst $38                                          ; $56df: $ff
	inc a                                            ; $56e0: $3c
	rst $38                                          ; $56e1: $ff
	add b                                            ; $56e2: $80
	ld a, a                                          ; $56e3: $7f
	ld a, [hl]                                       ; $56e4: $7e
	ld l, a                                          ; $56e5: $6f
	and b                                            ; $56e6: $a0
	rst $38                                          ; $56e7: $ff
	sbc b                                            ; $56e8: $98
	ld [hl], b                                       ; $56e9: $70
	nop                                              ; $56ea: $00
	inc h                                            ; $56eb: $24
	jr jr_062_56ee                                   ; $56ec: $18 $00

jr_062_56ee:
	nop                                              ; $56ee: $00

jr_062_56ef:
	jr nc, jr_062_56ef                               ; $56ef: $30 $fe

	sub d                                            ; $56f1: $92
	ld bc, $8500                                     ; $56f2: $01 $00 $85
	inc bc                                           ; $56f5: $03
	rst SubAFromHL                                          ; $56f6: $d7
	rst AddAOntoHL                                          ; $56f7: $ef
	rst $38                                          ; $56f8: $ff
	ld a, a                                          ; $56f9: $7f
	rst $38                                          ; $56fa: $ff
	ccf                                              ; $56fb: $3f
	ccf                                              ; $56fc: $3f
	ld c, $1f                                        ; $56fd: $0e $1f
	ld [hl], d                                       ; $56ff: $72
	ld a, [hl-]                                      ; $5700: $3a
	db $fd                                           ; $5701: $fd
	ld a, a                                          ; $5702: $7f
	ldh [$9d], a                                     ; $5703: $e0 $9d
	inc a                                            ; $5705: $3c
	jr c, jr_062_571f                                ; $5706: $38 $17

	ldh [$98], a                                     ; $5708: $e0 $98
	ld h, b                                          ; $570a: $60
	nop                                              ; $570b: $00
	ld a, h                                          ; $570c: $7c
	ld a, b                                          ; $570d: $78
	ld a, b                                          ; $570e: $78
	jr c, jr_062_5731                                ; $570f: $38 $20

	ld a, e                                          ; $5711: $7b
	sbc $1f                                          ; $5712: $de $1f
	ldh [$7b], a                                     ; $5714: $e0 $7b
	sbc $df                                          ; $5716: $de $df
	jr nc, jr_062_574d                               ; $5718: $30 $33

	ldh [$c2], a                                     ; $571a: $e0 $c2
	ld bc, $9696                                     ; $571c: $01 $96 $96

jr_062_571f:
	rst $38                                          ; $571f: $ff
	sub [hl]                                         ; $5720: $96
	rst $38                                          ; $5721: $ff
	rst SubAFromHL                                          ; $5722: $d7
	db $fd                                           ; $5723: $fd
	push de                                          ; $5724: $d5
	db $fd                                           ; $5725: $fd
	push af                                          ; $5726: $f5
	sbc $fc                                          ; $5727: $de $fc
	sbc [hl]                                         ; $5729: $9e
	xor [hl]                                         ; $572a: $ae
	ld a, e                                          ; $572b: $7b
	cp $80                                           ; $572c: $fe $80
	xor h                                            ; $572e: $ac
	cp $ab                                           ; $572f: $fe $ab

jr_062_5731:
	rst $38                                          ; $5731: $ff
	cp d                                             ; $5732: $ba
	xor $b3                                          ; $5733: $ee $b3
	xor $f3                                          ; $5735: $ee $f3
	xor [hl]                                         ; $5737: $ae
	ld d, d                                          ; $5738: $52

jr_062_5739:
	rst AddAOntoHL                                          ; $5739: $ef
	push de                                          ; $573a: $d5
	ld l, e                                          ; $573b: $6b
	push de                                          ; $573c: $d5
	ld l, e                                          ; $573d: $6b
	push af                                          ; $573e: $f5
	ld c, e                                          ; $573f: $4b
	push af                                          ; $5740: $f5
	ld c, e                                          ; $5741: $4b
	cp l                                             ; $5742: $bd
	jp $c3bd                                         ; $5743: $c3 $bd $c3


	db $fd                                           ; $5746: $fd
	add e                                            ; $5747: $83
	db $ed                                           ; $5748: $ed
	sub e                                            ; $5749: $93
	ld l, l                                          ; $574a: $6d
	sub e                                            ; $574b: $93
	ld c, c                                          ; $574c: $49

jr_062_574d:
	add b                                            ; $574d: $80
	or a                                             ; $574e: $b7
	jp z, $da37                                      ; $574f: $ca $37 $da

	daa                                              ; $5752: $27
	sbc d                                            ; $5753: $9a
	ld h, a                                          ; $5754: $67
	jp c, Jump_062_5767                              ; $5755: $da $67 $57

	rst AddAOntoHL                                          ; $5758: $ef
	ld d, a                                          ; $5759: $57
	rst AddAOntoHL                                          ; $575a: $ef
	ld l, l                                          ; $575b: $6d
	db $dd                                           ; $575c: $dd
	db $ec                                           ; $575d: $ec
	call c, $ff66                                    ; $575e: $dc $66 $ff
	halt                                             ; $5761: $76
	rst $38                                          ; $5762: $ff
	ld [hl], a                                       ; $5763: $77
	db $dd                                           ; $5764: $dd
	ld a, a                                          ; $5765: $7f
	db $fd                                           ; $5766: $fd

Jump_062_5767:
	rst $38                                          ; $5767: $ff
	adc $ff                                          ; $5768: $ce $ff
	ld b, l                                          ; $576a: $45
	ld a, a                                          ; $576b: $7f
	nop                                              ; $576c: $00
	sub e                                            ; $576d: $93
	ld a, a                                          ; $576e: $7f
	ld e, $73                                        ; $576f: $1e $73
	ld [hl], e                                       ; $5771: $73
	push af                                          ; $5772: $f5
	rst SubAFromBC                                          ; $5773: $e7
	xor l                                            ; $5774: $ad
	cp h                                             ; $5775: $bc
	ld a, [de]                                       ; $5776: $1a
	ld [de], a                                       ; $5777: $12
	ld c, $0c                                        ; $5778: $0e $0c
	db $fd                                           ; $577a: $fd
	add b                                            ; $577b: $80
	add b                                            ; $577c: $80
	nop                                              ; $577d: $00
	ret nz                                           ; $577e: $c0

	add b                                            ; $577f: $80
	add b                                            ; $5780: $80
	ret nz                                           ; $5781: $c0

	ldh [$c0], a                                     ; $5782: $e0 $c0
	ldh a, [$e0]                                     ; $5784: $f0 $e0
	ld e, b                                          ; $5786: $58
	ldh a, [$4c]                                     ; $5787: $f0 $4c
	ld hl, sp+$4c                                    ; $5789: $f8 $4c
	cp $4b                                           ; $578b: $fe $4b
	rst $38                                          ; $578d: $ff
	ld c, a                                          ; $578e: $4f
	ld hl, sp-$31                                    ; $578f: $f8 $cf
	ld hl, sp-$22                                    ; $5791: $f8 $de
	ld hl, sp-$62                                    ; $5793: $f8 $9e
	ld hl, sp-$44                                    ; $5795: $f8 $bc
	ldh a, [$7c]                                     ; $5797: $f0 $7c
	ret nz                                           ; $5799: $c0

	db $fc                                           ; $579a: $fc
	sbc b                                            ; $579b: $98
	add b                                            ; $579c: $80
	cp $c0                                           ; $579d: $fe $c0
	ldh a, [c]                                       ; $579f: $f2
	sbc a                                            ; $57a0: $9f
	ei                                               ; $57a1: $fb
	adc a                                            ; $57a2: $8f
	ld a, e                                          ; $57a3: $7b
	cp $9c                                           ; $57a4: $fe $9c
	adc [hl]                                         ; $57a6: $8e
	rst $38                                          ; $57a7: $ff
	add [hl]                                         ; $57a8: $86
	ld a, e                                          ; $57a9: $7b
	cp $9d                                           ; $57aa: $fe $9d
	add d                                            ; $57ac: $82
	rst $38                                          ; $57ad: $ff
	cp c                                             ; $57ae: $b9
	rst $38                                          ; $57af: $ff
	rst GetHLinHL                                          ; $57b0: $cf
	inc bc                                           ; $57b1: $03
	nop                                              ; $57b2: $00
	db $10                                           ; $57b3: $10
	jr jr_062_57ee                                   ; $57b4: $18 $38

	jr nc, jr_062_5739                               ; $57b6: $30 $81

	jr nz, jr_062_5829                               ; $57b8: $20 $6f

	db $db                                           ; $57ba: $db
	ld c, l                                          ; $57bb: $4d
	ei                                               ; $57bc: $fb
	ld l, c                                          ; $57bd: $69
	rst $38                                          ; $57be: $ff
	jp hl                                            ; $57bf: $e9


	cp a                                             ; $57c0: $bf
	db $fd                                           ; $57c1: $fd
	cp a                                             ; $57c2: $bf
	db $fc                                           ; $57c3: $fc
	ld [hl], a                                       ; $57c4: $77
	cp $c3                                           ; $57c5: $fe $c3
	rst $38                                          ; $57c7: $ff
	ld bc, $3cff                                     ; $57c8: $01 $ff $3c
	rst SubAFromBC                                          ; $57cb: $e7
	and $eb                                          ; $57cc: $e6 $eb
	ld c, a                                          ; $57ce: $4f
	db $dd                                           ; $57cf: $dd
	ld a, c                                          ; $57d0: $79
	scf                                              ; $57d1: $37
	inc h                                            ; $57d2: $24
	ccf                                              ; $57d3: $3f
	jr @+$05                                         ; $57d4: $18 $03

	cp a                                             ; $57d6: $bf
	rlca                                             ; $57d7: $07
	ld c, $8f                                        ; $57d8: $0e $8f
	ld bc, $031d                                     ; $57da: $01 $1d $03
	dec de                                           ; $57dd: $1b
	rlca                                             ; $57de: $07
	scf                                              ; $57df: $37
	rrca                                             ; $57e0: $0f
	ld l, a                                          ; $57e1: $6f
	rra                                              ; $57e2: $1f
	rst SubAFromDE                                          ; $57e3: $df
	ccf                                              ; $57e4: $3f
	ld a, l                                          ; $57e5: $7d
	rst $38                                          ; $57e6: $ff
	ld sp, hl                                        ; $57e7: $f9
	rst $38                                          ; $57e8: $ff
	jp hl                                            ; $57e9: $e9


	ld [hl], a                                       ; $57ea: $77
	cp $80                                           ; $57eb: $fe $80
	cp a                                             ; $57ed: $bf

jr_062_57ee:
	jp hl                                            ; $57ee: $e9


	ccf                                              ; $57ef: $3f
	ld sp, hl                                        ; $57f0: $f9
	ccf                                              ; $57f1: $3f
	db $fd                                           ; $57f2: $fd
	rra                                              ; $57f3: $1f
	db $fd                                           ; $57f4: $fd
	rra                                              ; $57f5: $1f
	rst $38                                          ; $57f6: $ff
	rlca                                             ; $57f7: $07
	ld a, d                                          ; $57f8: $7a
	sub a                                            ; $57f9: $97
	cp d                                             ; $57fa: $ba
	rst SubAFromHL                                          ; $57fb: $d7
	sub d                                            ; $57fc: $92
	rst $38                                          ; $57fd: $ff
	jp nc, $da7f                                     ; $57fe: $d2 $7f $da

	ld a, a                                          ; $5801: $7f
	ld [$ebbf], a                                    ; $5802: $ea $bf $eb
	cp a                                             ; $5805: $bf
	xor $bf                                          ; $5806: $ee $bf
	rst $38                                          ; $5808: $ff
	rst SubAFromDE                                          ; $5809: $df
	rst $38                                          ; $580a: $ff
	ld e, a                                          ; $580b: $5f
	sub h                                            ; $580c: $94
	db $dd                                           ; $580d: $dd
	cp a                                             ; $580e: $bf
	db $fd                                           ; $580f: $fd
	ccf                                              ; $5810: $3f
	or l                                             ; $5811: $b5
	ld a, a                                          ; $5812: $7f
	push af                                          ; $5813: $f5
	ld a, a                                          ; $5814: $7f
	ld [hl], l                                       ; $5815: $75
	rst $38                                          ; $5816: $ff
	push de                                          ; $5817: $d5
	ld a, e                                          ; $5818: $7b
	cp $92                                           ; $5819: $fe $92
	push bc                                          ; $581b: $c5
	rst $38                                          ; $581c: $ff
	ld b, h                                          ; $581d: $44
	rst $38                                          ; $581e: $ff
	ld c, h                                          ; $581f: $4c
	rst FarCall                                          ; $5820: $f7
	inc l                                            ; $5821: $2c
	rst SubAFromHL                                          ; $5822: $d7
	dec h                                            ; $5823: $25
	sub $65                                          ; $5824: $d6 $65
	sub [hl]                                         ; $5826: $96
	ld b, h                                          ; $5827: $44
	ld a, e                                          ; $5828: $7b

jr_062_5829:
	cp $95                                           ; $5829: $fe $95
	ld d, h                                          ; $582b: $54
	add [hl]                                         ; $582c: $86
	ld d, h                                          ; $582d: $54
	add [hl]                                         ; $582e: $86
	ld b, l                                          ; $582f: $45
	add [hl]                                         ; $5830: $86
	ld b, h                                          ; $5831: $44
	add [hl]                                         ; $5832: $86
	ld b, [hl]                                       ; $5833: $46
	add a                                            ; $5834: $87
	ld [hl], a                                       ; $5835: $77
	cp $3e                                           ; $5836: $fe $3e
	ldh [$9d], a                                     ; $5838: $e0 $9d
	xor d                                            ; $583a: $aa
	cp $56                                           ; $583b: $fe $56
	ldh [rVBK], a                                    ; $583d: $e0 $4f
	nop                                              ; $583f: $00
	sbc [hl]                                         ; $5840: $9e
	rra                                              ; $5841: $1f
	ld a, d                                          ; $5842: $7a
	cp $4f                                           ; $5843: $fe $4f
	nop                                              ; $5845: $00
	ld b, e                                          ; $5846: $43
	ld b, b                                          ; $5847: $40
	ld a, a                                          ; $5848: $7f
	ld e, $9a                                        ; $5849: $1e $9a
	ld a, b                                          ; $584b: $78
	rst AddAOntoHL                                          ; $584c: $ef
	adc $df                                          ; $584d: $ce $df
	ld a, e                                          ; $584f: $7b
	ld h, a                                          ; $5850: $67
	ld b, b                                          ; $5851: $40
	inc sp                                           ; $5852: $33
	ld h, b                                          ; $5853: $60
	ld a, a                                          ; $5854: $7f
	ld b, h                                          ; $5855: $44
	ld h, e                                          ; $5856: $63
	ld h, b                                          ; $5857: $60
	ld l, e                                          ; $5858: $6b
	and b                                            ; $5859: $a0
	sub a                                            ; $585a: $97
	db $dd                                           ; $585b: $dd
	rst $38                                          ; $585c: $ff
	db $ec                                           ; $585d: $ec
	rst $38                                          ; $585e: $ff
	ld b, [hl]                                       ; $585f: $46
	ld a, a                                          ; $5860: $7f
	ld bc, $bf1f                                     ; $5861: $01 $1f $bf
	ccf                                              ; $5864: $3f
	ld a, a                                          ; $5865: $7f
	sbc c                                            ; $5866: $99
	ld a, $f7                                        ; $5867: $3e $f7
	rst FarCall                                          ; $5869: $f7
	ccf                                              ; $586a: $3f
	ld a, $0e                                        ; $586b: $3e $0e
	cp l                                             ; $586d: $bd
	nop                                              ; $586e: $00
	nop                                              ; $586f: $00
	add b                                            ; $5870: $80
	ldh a, [c]                                       ; $5871: $f2
	ld d, [hl]                                       ; $5872: $56
	ret nz                                           ; $5873: $c0

	sbc h                                            ; $5874: $9c
	ld [bc], a                                       ; $5875: $02
	rst $38                                          ; $5876: $ff
	add c                                            ; $5877: $81

jr_062_5878:
	ld a, [de]                                       ; $5878: $1a
	ret nz                                           ; $5879: $c0

	sbc h                                            ; $587a: $9c
	rra                                              ; $587b: $1f
	cp $63                                           ; $587c: $fe $63
	ld [hl], a                                       ; $587e: $77
	ldh [$73], a                                     ; $587f: $e0 $73
	ld a, [hl]                                       ; $5881: $7e
	sbc e                                            ; $5882: $9b
	xor $7f                                          ; $5883: $ee $7f
	ld a, h                                          ; $5885: $7c
	ccf                                              ; $5886: $3f
	cp [hl]                                          ; $5887: $be
	inc bc                                           ; $5888: $03
	rlca                                             ; $5889: $07
	ld h, [hl]                                       ; $588a: $66
	ld c, e                                          ; $588b: $4b
	and b                                            ; $588c: $a0
	sub [hl]                                         ; $588d: $96
	ld a, a                                          ; $588e: $7f
	ld h, b                                          ; $588f: $60
	ld a, a                                          ; $5890: $7f
	ld e, $ff                                        ; $5891: $1e $ff
	ret nz                                           ; $5893: $c0

	ccf                                              ; $5894: $3f
	ccf                                              ; $5895: $3f
	ld e, $13                                        ; $5896: $1e $13
	and b                                            ; $5898: $a0
	rst SubAFromDE                                          ; $5899: $df
	ld bc, $a033                                     ; $589a: $01 $33 $a0
	sbc [hl]                                         ; $589d: $9e
	ld h, a                                          ; $589e: $67
	ld [hl], e                                       ; $589f: $73
	and b                                            ; $58a0: $a0
	sbc b                                            ; $58a1: $98
	ret nz                                           ; $58a2: $c0

	rst $38                                          ; $58a3: $ff
	inc a                                            ; $58a4: $3c
	rst $38                                          ; $58a5: $ff
	add b                                            ; $58a6: $80
	ld a, a                                          ; $58a7: $7f
	ld a, [hl]                                       ; $58a8: $7e
	ld l, a                                          ; $58a9: $6f
	and b                                            ; $58aa: $a0
	rst $38                                          ; $58ab: $ff
	sbc h                                            ; $58ac: $9c
	ld c, b                                          ; $58ad: $48
	jr nc, jr_062_58dc                               ; $58ae: $30 $2c

	cp h                                             ; $58b0: $bc
	nop                                              ; $58b1: $00
	jr nc, jr_062_58b4                               ; $58b2: $30 $00

jr_062_58b4:
	ld bc, $9585                                     ; $58b4: $01 $85 $95
	inc bc                                           ; $58b7: $03
	rst SubAFromHL                                          ; $58b8: $d7
	rst AddAOntoHL                                          ; $58b9: $ef
	rst $38                                          ; $58ba: $ff
	ld a, a                                          ; $58bb: $7f
	rst $38                                          ; $58bc: $ff
	ccf                                              ; $58bd: $3f
	ccf                                              ; $58be: $3f
	ld c, $1f                                        ; $58bf: $0e $1f
	cp e                                             ; $58c1: $bb
	inc bc                                           ; $58c2: $03
	nop                                              ; $58c3: $00
	nop                                              ; $58c4: $00
	nop                                              ; $58c5: $00
	ld h, b                                          ; $58c6: $60
	inc a                                            ; $58c7: $3c
	ld a, e                                          ; $58c8: $7b
	db $e3                                           ; $58c9: $e3
	rra                                              ; $58ca: $1f
	ldh [$99], a                                     ; $58cb: $e0 $99
	ld h, h                                          ; $58cd: $64
	nop                                              ; $58ce: $00
	ld a, h                                          ; $58cf: $7c
	jr c, jr_062_590e                                ; $58d0: $38 $3c

	jr c, @+$11                                      ; $58d2: $38 $0f

	ldh [$7f], a                                     ; $58d4: $e0 $7f
	cp $df                                           ; $58d6: $fe $df
	jr c, jr_062_5878                                ; $58d8: $38 $9e

	jr nz, @+$35                                     ; $58da: $20 $33

jr_062_58dc:
	ldh [$a0], a                                     ; $58dc: $e0 $a0
	ld [bc], a                                       ; $58de: $02
	di                                               ; $58df: $f3
	rst SubAFromDE                                          ; $58e0: $df
	ld bc, $0fdf                                     ; $58e1: $01 $df $0f
	ld l, a                                          ; $58e4: $6f
	ld hl, sp-$27                                    ; $58e5: $f8 $d9
	ld bc, $73f1                                     ; $58e7: $01 $f1 $73
	db $ec                                           ; $58ea: $ec
	add b                                            ; $58eb: $80
	ld bc, $0302                                     ; $58ec: $01 $02 $03
	ld [bc], a                                       ; $58ef: $02
	inc bc                                           ; $58f0: $03
	nop                                              ; $58f1: $00
	inc bc                                           ; $58f2: $03
	inc b                                            ; $58f3: $04
	rlca                                             ; $58f4: $07
	dec b                                            ; $58f5: $05
	rlca                                             ; $58f6: $07
	rlca                                             ; $58f7: $07
	ld b, $07                                        ; $58f8: $06 $07
	ld b, $05                                        ; $58fa: $06 $05
	ld b, $0f                                        ; $58fc: $06 $0f
	inc c                                            ; $58fe: $0c
	dec bc                                           ; $58ff: $0b
	inc c                                            ; $5900: $0c
	rrca                                             ; $5901: $0f
	add hl, bc                                       ; $5902: $09
	rla                                              ; $5903: $17
	add hl, de                                       ; $5904: $19
	rla                                              ; $5905: $17
	dec de                                           ; $5906: $1b
	rra                                              ; $5907: $1f
	inc de                                           ; $5908: $13
	cpl                                              ; $5909: $2f
	scf                                              ; $590a: $37
	sub e                                            ; $590b: $93
	dec hl                                           ; $590c: $2b
	ccf                                              ; $590d: $3f

jr_062_590e:
	ld a, $33                                        ; $590e: $3e $33
	ld a, a                                          ; $5910: $7f
	ld h, d                                          ; $5911: $62
	ld e, a                                          ; $5912: $5f
	ld h, a                                          ; $5913: $67
	ld sp, hl                                        ; $5914: $f9
	rst $38                                          ; $5915: $ff
	ldh [rIE], a                                     ; $5916: $e0 $ff
	db $ed                                           ; $5918: $ed
	rst SubAFromDE                                          ; $5919: $df
	inc bc                                           ; $591a: $03
	ld a, a                                          ; $591b: $7f
	add $7f                                          ; $591c: $c6 $7f
	ret nc                                           ; $591e: $d0

	add b                                            ; $591f: $80
	ld e, $11                                        ; $5920: $1e $11
	ld a, c                                          ; $5922: $79
	ld h, [hl]                                       ; $5923: $66
	sub a                                            ; $5924: $97
	ld hl, sp-$12                                    ; $5925: $f8 $ee
	ldh a, [$dc]                                     ; $5927: $f0 $dc
	pop hl                                           ; $5929: $e1
	or b                                             ; $592a: $b0
	bit 4, l                                         ; $592b: $cb $65
	sub d                                            ; $592d: $92
	ld b, c                                          ; $592e: $41
	or [hl]                                          ; $592f: $b6
	sla h                                            ; $5930: $cb $24
	xor e                                            ; $5932: $ab
	ld h, h                                          ; $5933: $64
	or [hl]                                          ; $5934: $b6
	ld l, l                                          ; $5935: $6d
	and [hl]                                         ; $5936: $a6
	db $fd                                           ; $5937: $fd
	and h                                            ; $5938: $a4
	rst $38                                          ; $5939: $ff
	ld [hl], h                                       ; $593a: $74
	ld a, a                                          ; $593b: $7f
	ld d, h                                          ; $593c: $54
	ld e, a                                          ; $593d: $5f
	ld c, $9d                                        ; $593e: $0e $9d
	rrca                                             ; $5940: $0f
	rlca                                             ; $5941: $07
	ld [hl], a                                       ; $5942: $77
	and d                                            ; $5943: $a2
	ld [hl], a                                       ; $5944: $77
	sbc l                                            ; $5945: $9d
	sbc [hl]                                         ; $5946: $9e
	inc b                                            ; $5947: $04
	ld [hl], a                                       ; $5948: $77
	sbc d                                            ; $5949: $9a
	ld a, a                                          ; $594a: $7f
	db $fc                                           ; $594b: $fc
	sub [hl]                                         ; $594c: $96
	ld [$090f], sp                                   ; $594d: $08 $0f $09
	rrca                                             ; $5950: $0f
	ld d, $1b                                        ; $5951: $16 $1b
	inc e                                            ; $5953: $1c
	rla                                              ; $5954: $17
	ld sp, $9f7b                                     ; $5955: $31 $7b $9f
	sub d                                            ; $5958: $92
	ld a, d                                          ; $5959: $7a
	ld b, a                                          ; $595a: $47
	ld d, h                                          ; $595b: $54
	ld l, a                                          ; $595c: $6f
	push de                                          ; $595d: $d5
	xor a                                            ; $595e: $af
	xor c                                            ; $595f: $a9
	rst SubAFromDE                                          ; $5960: $df
	ld a, [hl+]                                      ; $5961: $2a
	rst SubAFromDE                                          ; $5962: $df
	ld a, [de]                                       ; $5963: $1a
	rst $38                                          ; $5964: $ff
	inc d                                            ; $5965: $14
	ld a, e                                          ; $5966: $7b
	cp $9e                                           ; $5967: $fe $9e
	jr z, jr_062_59e6                                ; $5969: $28 $7b

	cp $80                                           ; $596b: $fe $80
	ld [hl], b                                       ; $596d: $70
	rst $38                                          ; $596e: $ff
	pop af                                           ; $596f: $f1
	rst $38                                          ; $5970: $ff
	db $e3                                           ; $5971: $e3
	cp a                                             ; $5972: $bf
	ldh [c], a                                       ; $5973: $e2
	ld a, $c4                                        ; $5974: $3e $c4
	ld a, h                                          ; $5976: $7c
	call z, $887c                                    ; $5977: $cc $7c $88
	ld hl, sp-$68                                    ; $597a: $f8 $98
	ld hl, sp+$3c                                    ; $597c: $f8 $3c
	db $e4                                           ; $597e: $e4
	ld a, a                                          ; $597f: $7f
	jp $80ff                                         ; $5980: $c3 $ff $80


	cp $01                                           ; $5983: $fe $01
	rst $38                                          ; $5985: $ff
	ld bc, $02fd                                     ; $5986: $01 $fd $02
	rst $38                                          ; $5989: $ff
	ld [bc], a                                       ; $598a: $02
	ei                                               ; $598b: $fb
	sbc c                                            ; $598c: $99
	inc b                                            ; $598d: $04
	rst $38                                          ; $598e: $ff
	rst $38                                          ; $598f: $ff
	pop bc                                           ; $5990: $c1
	rst $38                                          ; $5991: $ff
	ld [hl], e                                       ; $5992: $73
	inc sp                                           ; $5993: $33
	ld [hl], b                                       ; $5994: $70
	rst AddAOntoHL                                          ; $5995: $ef
	rst SubAFromDE                                          ; $5996: $df
	ld bc, $297f                                     ; $5997: $01 $7f $29
	add b                                            ; $599a: $80
	jr jr_062_59bc                                   ; $599b: $18 $1f

	dec l                                            ; $599d: $2d
	inc sp                                           ; $599e: $33
	ld e, a                                          ; $599f: $5f
	ld l, a                                          ; $59a0: $6f
	cp a                                             ; $59a1: $bf
	rst $38                                          ; $59a2: $ff
	ret nz                                           ; $59a3: $c0

	rst $38                                          ; $59a4: $ff
	inc a                                            ; $59a5: $3c
	jp $01fe                                         ; $59a6: $c3 $fe $01


	or d                                             ; $59a9: $b2
	ld c, c                                          ; $59aa: $49

jr_062_59ab:
	push hl                                          ; $59ab: $e5
	ld [de], a                                       ; $59ac: $12
	call Call_062_4a22                               ; $59ad: $cd $22 $4a
	inc h                                            ; $59b0: $24
	sbc d                                            ; $59b1: $9a
	ld b, h                                          ; $59b2: $44
	sub h                                            ; $59b3: $94
	ld c, b                                          ; $59b4: $48
	ld [hl], h                                       ; $59b5: $74
	adc b                                            ; $59b6: $88
	dec h                                            ; $59b7: $25
	sbc b                                            ; $59b8: $98
	xor l                                            ; $59b9: $ad
	sbc b                                            ; $59ba: $98
	sbc b                                            ; $59bb: $98

jr_062_59bc:
	rst GetHLinHL                                          ; $59bc: $cf
	cp b                                             ; $59bd: $b8
	jp z, $9abd                                      ; $59be: $ca $bd $9a

	db $fd                                           ; $59c1: $fd
	ldh [$c1], a                                     ; $59c2: $e0 $c1
	add b                                            ; $59c4: $80
	ld [$0800], sp                                   ; $59c5: $08 $00 $08
	ld [$0c1c], sp                                   ; $59c8: $08 $1c $0c
	ccf                                              ; $59cb: $3f
	rrca                                             ; $59cc: $0f
	ld a, [hl]                                       ; $59cd: $7e
	ld a, $c7                                        ; $59ce: $3e $c7
	ld l, a                                          ; $59d0: $6f
	add a                                            ; $59d1: $87
	rst JumpTable                                          ; $59d2: $c7
	adc c                                            ; $59d3: $89
	adc a                                            ; $59d4: $8f
	db $10                                           ; $59d5: $10
	rra                                              ; $59d6: $1f
	db $10                                           ; $59d7: $10
	ccf                                              ; $59d8: $3f

jr_062_59d9:
	jr nz, @+$41                                     ; $59d9: $20 $3f

	jr nz, jr_062_5a5c                               ; $59db: $20 $7f

	ld b, b                                          ; $59dd: $40
	ld a, c                                          ; $59de: $79
	ret nz                                           ; $59df: $c0

	pop af                                           ; $59e0: $f1

Jump_062_59e1:
	ld hl, sp-$08                                    ; $59e1: $f8 $f8
	db $fc                                           ; $59e3: $fc
	sbc [hl]                                         ; $59e4: $9e
	db $fc                                           ; $59e5: $fc

jr_062_59e6:
	db $ed                                           ; $59e6: $ed

jr_062_59e7:
	rst SubAFromDE                                          ; $59e7: $df
	ccf                                              ; $59e8: $3f
	sbc h                                            ; $59e9: $9c
	add b                                            ; $59ea: $80
	rst $38                                          ; $59eb: $ff
	nop                                              ; $59ec: $00
	ld a, e                                          ; $59ed: $7b
	cp $de                                           ; $59ee: $fe $de
	rst $38                                          ; $59f0: $ff
	add b                                            ; $59f1: $80
	ret nz                                           ; $59f2: $c0

	ldh a, [$f0]                                     ; $59f3: $f0 $f0
	rlca                                             ; $59f5: $07
	rst $38                                          ; $59f6: $ff
	jr c, @-$37                                      ; $59f7: $38 $c7

	rst SubAFromDE                                          ; $59f9: $df
	nop                                              ; $59fa: $00
	cp e                                             ; $59fb: $bb
	inc b                                            ; $59fc: $04
	ld d, a                                          ; $59fd: $57
	ld [$083f], sp                                   ; $59fe: $08 $3f $08
	ld e, a                                          ; $5a01: $5f
	jr nc, jr_062_59d9                               ; $5a02: $30 $d5

	jr nc, jr_062_59ab                               ; $5a04: $30 $a5

	ld [hl], b                                       ; $5a06: $70
	and c                                            ; $5a07: $a1
	ld [hl], h                                       ; $5a08: $74
	ld l, b                                          ; $5a09: $68
	db $f4                                           ; $5a0a: $f4
	ld l, b                                          ; $5a0b: $68
	db $f4                                           ; $5a0c: $f4
	jp hl                                            ; $5a0d: $e9


	db $f4                                           ; $5a0e: $f4
	rst SubAFromBC                                          ; $5a0f: $e7
	db $fc                                           ; $5a10: $fc
	sbc l                                            ; $5a11: $9d
	push hl                                          ; $5a12: $e5
	cp [hl]                                          ; $5a13: $be
	ldh [$c1], a                                     ; $5a14: $e0 $c1
	sbc c                                            ; $5a16: $99
	ld b, $04                                        ; $5a17: $06 $04
	jr jr_062_5a2b                                   ; $5a19: $18 $10

	ldh [$c0], a                                     ; $5a1b: $e0 $c0
	ei                                               ; $5a1d: $fb
	sub b                                            ; $5a1e: $90
	add b                                            ; $5a1f: $80
	nop                                              ; $5a20: $00
	ret nz                                           ; $5a21: $c0

	add b                                            ; $5a22: $80
	ld b, b                                          ; $5a23: $40
	ret nz                                           ; $5a24: $c0

	jr nz, jr_062_59e7                               ; $5a25: $20 $c0

	ld sp, $13e0                                     ; $5a27: $31 $e0 $13
	pop hl                                           ; $5a2a: $e1

jr_062_5a2b:
	ld e, $f3                                        ; $5a2b: $1e $f3
	inc c                                            ; $5a2d: $0c

jr_062_5a2e:
	ld [hl], e                                       ; $5a2e: $73
	ld a, h                                          ; $5a2f: $7c
	db $ed                                           ; $5a30: $ed
	rst SubAFromDE                                          ; $5a31: $df
	ret nz                                           ; $5a32: $c0

	adc c                                            ; $5a33: $89
	jr jr_062_5a2e                                   ; $5a34: $18 $f8

	ldh [c], a                                       ; $5a36: $e2
	ld e, $19                                        ; $5a37: $1e $19
	rst SubAFromBC                                          ; $5a39: $e7
	ld b, $f9                                        ; $5a3a: $06 $f9
	pop af                                           ; $5a3c: $f1
	cp $fe                                           ; $5a3d: $fe $fe
	inc bc                                           ; $5a3f: $03
	rst $38                                          ; $5a40: $ff
	nop                                              ; $5a41: $00
	ld a, a                                          ; $5a42: $7f
	ldh [rIF], a                                     ; $5a43: $e0 $0f
	jr c, jr_062_5a4a                                ; $5a45: $38 $03

	ld c, $00                                        ; $5a47: $0e $00
	inc bc                                           ; $5a49: $03

jr_062_5a4a:
	ld a, e                                          ; $5a4a: $7b
	inc de                                           ; $5a4b: $13
	adc [hl]                                         ; $5a4c: $8e
	and h                                            ; $5a4d: $a4
	nop                                              ; $5a4e: $00
	and d                                            ; $5a4f: $a2
	nop                                              ; $5a50: $00
	sub e                                            ; $5a51: $93
	nop                                              ; $5a52: $00
	sbc c                                            ; $5a53: $99
	nop                                              ; $5a54: $00
	add hl, de                                       ; $5a55: $19
	nop                                              ; $5a56: $00
	inc e                                            ; $5a57: $1c
	ld [$089c], sp                                   ; $5a58: $08 $9c $08
	adc [hl]                                         ; $5a5b: $8e

jr_062_5a5c:
	inc b                                            ; $5a5c: $04
	adc [hl]                                         ; $5a5d: $8e
	ldh [$c1], a                                     ; $5a5e: $e0 $c1
	add h                                            ; $5a60: $84
	rrca                                             ; $5a61: $0f
	ld bc, $011f                                     ; $5a62: $01 $1f $01
	ld e, $03                                        ; $5a65: $1e $03
	ld e, $03                                        ; $5a67: $1e $03
	inc a                                            ; $5a69: $3c
	rlca                                             ; $5a6a: $07
	inc a                                            ; $5a6b: $3c
	rlca                                             ; $5a6c: $07
	ld a, b                                          ; $5a6d: $78
	rrca                                             ; $5a6e: $0f
	ld [hl], b                                       ; $5a6f: $70
	rra                                              ; $5a70: $1f
	ldh [$3f], a                                     ; $5a71: $e0 $3f
	ret nz                                           ; $5a73: $c0

	ld a, a                                          ; $5a74: $7f
	add c                                            ; $5a75: $81
	rst $38                                          ; $5a76: $ff
	ld bc, $09ff                                     ; $5a77: $01 $ff $09
	rst $38                                          ; $5a7a: $ff
	dec bc                                           ; $5a7b: $0b
	ld a, e                                          ; $5a7c: $7b
	cp $9e                                           ; $5a7d: $fe $9e
	ld c, e                                          ; $5a7f: $4b
	ld c, e                                          ; $5a80: $4b
	ld h, b                                          ; $5a81: $60
	rst SubAFromDE                                          ; $5a82: $df
	ld [$44df], sp                                   ; $5a83: $08 $df $44
	add b                                            ; $5a86: $80
	ld c, d                                          ; $5a87: $4a
	ld l, [hl]                                       ; $5a88: $6e
	ld a, d                                          ; $5a89: $7a
	ld d, [hl]                                       ; $5a8a: $56
	ld [hl], h                                       ; $5a8b: $74
	ld l, h                                          ; $5a8c: $6c
	ld c, b                                          ; $5a8d: $48
	ld a, b                                          ; $5a8e: $78
	sbc [hl]                                         ; $5a8f: $9e
	cp $e0                                           ; $5a90: $fe $e0
	rst $38                                          ; $5a92: $ff
	add $f9                                          ; $5a93: $c6 $f9
	add b                                            ; $5a95: $80
	and $c0                                          ; $5a96: $e6 $c0
	ld a, c                                          ; $5a98: $79
	ldh a, [rAUD3LEVEL]                              ; $5a99: $f0 $1c
	ld hl, sp+$0e                                    ; $5a9b: $f8 $0e
	db $fc                                           ; $5a9d: $fc
	rlca                                             ; $5a9e: $07
	cp $93                                           ; $5a9f: $fe $93
	ld a, a                                          ; $5aa1: $7f
	ret                                              ; $5aa2: $c9


	ccf                                              ; $5aa3: $3f
	ld h, l                                          ; $5aa4: $65
	rra                                              ; $5aa5: $1f
	sub b                                            ; $5aa6: $90
	ld [hl-], a                                      ; $5aa7: $32
	rrca                                             ; $5aa8: $0f
	add hl, de                                       ; $5aa9: $19
	rlca                                             ; $5aaa: $07
	xor h                                            ; $5aab: $ac
	inc bc                                           ; $5aac: $03
	sub [hl]                                         ; $5aad: $96
	ld bc, $40c3                                     ; $5aae: $01 $c3 $40
	rlc b                                            ; $5ab1: $cb $00
	push hl                                          ; $5ab3: $e5
	jr nz, jr_062_5b1b                               ; $5ab4: $20 $65

	ldh [$c1], a                                     ; $5ab6: $e0 $c1
	add b                                            ; $5ab8: $80
	rst JumpTable                                          ; $5ab9: $c7
	rst $38                                          ; $5aba: $ff
	rst JumpTable                                          ; $5abb: $c7
	ld a, a                                          ; $5abc: $7f
	ld b, a                                          ; $5abd: $47

jr_062_5abe:
	ld a, l                                          ; $5abe: $7d
	ld b, a                                          ; $5abf: $47
	ld a, l                                          ; $5ac0: $7d
	ld c, a                                          ; $5ac1: $4f
	ld a, h                                          ; $5ac2: $7c
	ld c, a                                          ; $5ac3: $4f
	ld a, b                                          ; $5ac4: $78
	ld c, a                                          ; $5ac5: $4f
	ld a, b                                          ; $5ac6: $78
	sbc a                                            ; $5ac7: $9f
	pop af                                           ; $5ac8: $f1
	sbc a                                            ; $5ac9: $9f
	or $be                                           ; $5aca: $f6 $be
	db $ec                                           ; $5acc: $ec
	ld a, h                                          ; $5acd: $7c
	ld hl, sp+$78                                    ; $5ace: $f8 $78
	ldh a, [$f1]                                     ; $5ad0: $f0 $f1
	ldh [$e2], a                                     ; $5ad2: $e0 $e2
	ret nz                                           ; $5ad4: $c0

	call nz, $8880                                   ; $5ad5: $c4 $80 $88
	db $e4                                           ; $5ad8: $e4
	rst SubAFromDE                                          ; $5ad9: $df

Jump_062_5ada:
	add b                                            ; $5ada: $80
	add b                                            ; $5adb: $80
	jr nz, jr_062_5abe                               ; $5adc: $20 $e0

	ret nc                                           ; $5ade: $d0

	jr nc, jr_062_5b49                               ; $5adf: $30 $68

	sbc b                                            ; $5ae1: $98
	or h                                             ; $5ae2: $b4
	ld c, h                                          ; $5ae3: $4c
	jp c, $ea26                                      ; $5ae4: $da $26 $ea

	ld d, $6d                                        ; $5ae7: $16 $6d
	sub e                                            ; $5ae9: $93
	or l                                             ; $5aea: $b5
	ld c, e                                          ; $5aeb: $4b
	ld d, [hl]                                       ; $5aec: $56
	xor c                                            ; $5aed: $a9
	db $db                                           ; $5aee: $db

Jump_062_5aef:
	and h                                            ; $5aef: $a4
	xor e                                            ; $5af0: $ab
	call nc, $d2ed                                   ; $5af1: $d4 $ed $d2
	push de                                          ; $5af4: $d5
	ld [$ead5], a                                    ; $5af5: $ea $d5 $ea
	or $e9                                           ; $5af8: $f6 $e9
	ld [$f59c], a                                    ; $5afa: $ea $9c $f5
	ld l, d                                          ; $5afd: $6a
	push af                                          ; $5afe: $f5
	ldh [$c1], a                                     ; $5aff: $e0 $c1
	add b                                            ; $5b01: $80
	ld l, b                                          ; $5b02: $68
	rst $38                                          ; $5b03: $ff
	inc h                                            ; $5b04: $24
	rst $38                                          ; $5b05: $ff
	inc [hl]                                         ; $5b06: $34
	rst $38                                          ; $5b07: $ff
	inc a                                            ; $5b08: $3c
	rst AddAOntoHL                                          ; $5b09: $ef
	cp h                                             ; $5b0a: $bc
	rst SubAFromBC                                          ; $5b0b: $e7
	cp h                                             ; $5b0c: $bc
	rst $38                                          ; $5b0d: $ff
	cp [hl]                                          ; $5b0e: $be
	db $e3                                           ; $5b0f: $e3
	sbc [hl]                                         ; $5b10: $9e
	di                                               ; $5b11: $f3
	db $d3                                           ; $5b12: $d3
	ld [hl], c                                       ; $5b13: $71
	ld d, e                                          ; $5b14: $53
	ld [hl], c                                       ; $5b15: $71
	ld e, c                                          ; $5b16: $59
	ld [hl], b                                       ; $5b17: $70
	ld l, [hl]                                       ; $5b18: $6e
	jr c, jr_062_5b4a                                ; $5b19: $38 $2f

jr_062_5b1b:
	jr c, jr_062_5b46                                ; $5b1b: $38 $29

	jr c, @+$3a                                      ; $5b1d: $38 $38

	jr jr_062_5b59                                   ; $5b1f: $18 $38

	sbc [hl]                                         ; $5b21: $9e
	jr @+$49                                         ; $5b22: $18 $47

	ld l, [hl]                                       ; $5b24: $6e
	rst SubAFromDE                                          ; $5b25: $df
	add b                                            ; $5b26: $80
	ld a, a                                          ; $5b27: $7f
	ei                                               ; $5b28: $fb
	ld a, l                                          ; $5b29: $7d
	db $fc                                           ; $5b2a: $fc
	ld a, a                                          ; $5b2b: $7f
	cp $7f                                           ; $5b2c: $fe $7f
	ei                                               ; $5b2e: $fb
	ld a, a                                          ; $5b2f: $7f
	cp $9d                                           ; $5b30: $fe $9d
	and b                                            ; $5b32: $a0
	ld h, b                                          ; $5b33: $60
	ld [hl], a                                       ; $5b34: $77
	cp $7d                                           ; $5b35: $fe $7d
	rst AddAOntoHL                                          ; $5b37: $ef
	ld a, a                                          ; $5b38: $7f
	rst FarCall                                          ; $5b39: $f7
	sbc l                                            ; $5b3a: $9d
	ld d, b                                          ; $5b3b: $50
	or b                                             ; $5b3c: $b0
	ld h, a                                          ; $5b3d: $67
	cp $67                                           ; $5b3e: $fe $67
	rst FarCall                                          ; $5b40: $f7
	sbc h                                            ; $5b41: $9c
	cp b                                             ; $5b42: $b8
	ld e, b                                          ; $5b43: $58
	xor b                                            ; $5b44: $a8
	ld a, e                                          ; $5b45: $7b

jr_062_5b46:
	cp $9b                                           ; $5b46: $fe $9b
	cp b                                             ; $5b48: $b8

jr_062_5b49:
	ld c, b                                          ; $5b49: $48

jr_062_5b4a:
	ret c                                            ; $5b4a: $d8

	jr z, jr_062_5bc4                                ; $5b4b: $28 $77

	cp $77                                           ; $5b4d: $fe $77
	di                                               ; $5b4f: $f3
	add b                                            ; $5b50: $80
	ld d, b                                          ; $5b51: $50
	xor b                                            ; $5b52: $a8
	ret nc                                           ; $5b53: $d0

	xor b                                            ; $5b54: $a8
	and h                                            ; $5b55: $a4
	call c, $d4ec                                    ; $5b56: $dc $ec $d4

jr_062_5b59:
	ld c, h                                          ; $5b59: $4c
	db $f4                                           ; $5b5a: $f4
	call z, $a474                                    ; $5b5b: $cc $74 $a4
	ld a, h                                          ; $5b5e: $7c
	and h                                            ; $5b5f: $a4
	ld a, h                                          ; $5b60: $7c
	halt                                             ; $5b61: $76
	xor [hl]                                         ; $5b62: $ae
	ld [hl], d                                       ; $5b63: $72
	xor [hl]                                         ; $5b64: $ae
	ld h, d                                          ; $5b65: $62
	cp [hl]                                          ; $5b66: $be
	sub d                                            ; $5b67: $92
	cp $92                                           ; $5b68: $fe $92
	cp $90                                           ; $5b6a: $fe $90
	cp $91                                           ; $5b6c: $fe $91
	rst $38                                          ; $5b6e: $ff
	sbc c                                            ; $5b6f: $99
	sbc l                                            ; $5b70: $9d
	rst $38                                          ; $5b71: $ff
	ld c, c                                          ; $5b72: $49
	ld h, e                                          ; $5b73: $63
	cp $9e                                           ; $5b74: $fe $9e
	ret                                              ; $5b76: $c9


	ld l, a                                          ; $5b77: $6f
	cp $7e                                           ; $5b78: $fe $7e
	ld [hl], c                                       ; $5b7a: $71
	ld a, e                                          ; $5b7b: $7b
	cp $21                                           ; $5b7c: $fe $21
	nop                                              ; $5b7e: $00
	sub c                                            ; $5b7f: $91
	sbc c                                            ; $5b80: $99
	xor $dd                                          ; $5b81: $ee $dd
	sbc c                                            ; $5b83: $99
	add hl, de                                       ; $5b84: $19
	sbc c                                            ; $5b85: $99
	inc sp                                           ; $5b86: $33
	db $dd                                           ; $5b87: $dd
	sbc c                                            ; $5b88: $99
	ld de, $8888                                     ; $5b89: $11 $88 $88
	ld [hl+], a                                      ; $5b8c: $22
	xor $77                                          ; $5b8d: $ee $77
	ei                                               ; $5b8f: $fb
	sbc l                                            ; $5b90: $9d
	sbc c                                            ; $5b91: $99
	ld h, [hl]                                       ; $5b92: $66
	ld l, e                                          ; $5b93: $6b
	ei                                               ; $5b94: $fb
	sbc h                                            ; $5b95: $9c
	ld b, h                                          ; $5b96: $44
	sbc c                                            ; $5b97: $99
	sbc c                                            ; $5b98: $99
	ld [hl], e                                       ; $5b99: $73
	ei                                               ; $5b9a: $fb
	sbc l                                            ; $5b9b: $9d
	sbc c                                            ; $5b9c: $99
	call z, $81d8                                    ; $5b9d: $cc $d8 $81
	add d                                            ; $5ba0: $82
	sbc $dc                                          ; $5ba1: $de $dc
	db $fc                                           ; $5ba3: $fc
	cp $fe                                           ; $5ba4: $fe $fe
	rst $38                                          ; $5ba6: $ff
	rst JumpTable                                          ; $5ba7: $c7
	rst $38                                          ; $5ba8: $ff
	push af                                          ; $5ba9: $f5
	rst FarCall                                          ; $5baa: $f7
	or a                                             ; $5bab: $b7
	or a                                             ; $5bac: $b7
	cp e                                             ; $5bad: $bb
	pop af                                           ; $5bae: $f1
	adc [hl]                                         ; $5baf: $8e
	sbc a                                            ; $5bb0: $9f
	di                                               ; $5bb1: $f3
	xor a                                            ; $5bb2: $af
	add [hl]                                         ; $5bb3: $86
	call $9fff                                       ; $5bb4: $cd $ff $9f
	jp z, $e1e0                                      ; $5bb7: $ca $e0 $e1

	xor a                                            ; $5bba: $af
	adc a                                            ; $5bbb: $8f
	adc c                                            ; $5bbc: $89
	add [hl]                                         ; $5bbd: $86
	db $dd                                           ; $5bbe: $dd
	ret nz                                           ; $5bbf: $c0

	adc b                                            ; $5bc0: $88
	or b                                             ; $5bc1: $b0
	and b                                            ; $5bc2: $a0
	sbc b                                            ; $5bc3: $98

jr_062_5bc4:
	sbc h                                            ; $5bc4: $9c
	ld l, $27                                        ; $5bc5: $2e $27
	ld b, a                                          ; $5bc7: $47
	ldh [$e0], a                                     ; $5bc8: $e0 $e0
	ldh a, [$f0]                                     ; $5bca: $f0 $f0
	ld hl, sp-$04                                    ; $5bcc: $f8 $fc
	cp $ff                                           ; $5bce: $fe $ff
	ld c, l                                          ; $5bd0: $4d
	sub l                                            ; $5bd1: $95
	rra                                              ; $5bd2: $1f
	ld sp, $8343                                     ; $5bd3: $31 $43 $83
	ld b, $04                                        ; $5bd6: $06 $04
	sbc $ff                                          ; $5bd8: $de $ff
	sub [hl]                                         ; $5bda: $96
	db $e3                                           ; $5bdb: $e3
	jp nz, $0484                                     ; $5bdc: $c2 $84 $04

	nop                                              ; $5bdf: $00
	push hl                                          ; $5be0: $e5
	or $f6                                           ; $5be1: $f6 $f6
	rst FarCall                                          ; $5be3: $f7
	db $dd                                           ; $5be4: $dd
	rst $38                                          ; $5be5: $ff
	adc a                                            ; $5be6: $8f
	cp [hl]                                          ; $5be7: $be
	sbc a                                            ; $5be8: $9f
	sbc a                                            ; $5be9: $9f
	sbc l                                            ; $5bea: $9d
	adc l                                            ; $5beb: $8d
	adc h                                            ; $5bec: $8c
	add h                                            ; $5bed: $84
	ld [bc], a                                       ; $5bee: $02
	rst $38                                          ; $5bef: $ff
	rst AddAOntoHL                                          ; $5bf0: $ef
	rst JumpTable                                          ; $5bf1: $c7
	add e                                            ; $5bf2: $83
	ld bc, $3890                                     ; $5bf3: $01 $90 $38
	ld a, b                                          ; $5bf6: $78
	sbc $80                                          ; $5bf7: $de $80
	db $fc                                           ; $5bf9: $fc
	add b                                            ; $5bfa: $80
	inc d                                            ; $5bfb: $14
	or [hl]                                          ; $5bfc: $b6
	rst SubAFromHL                                          ; $5bfd: $d7
	ld h, a                                          ; $5bfe: $67
	ld [hl], e                                       ; $5bff: $73
	cp e                                             ; $5c00: $bb
	db $fd                                           ; $5c01: $fd
	rst $38                                          ; $5c02: $ff
	rst GetHLinHL                                          ; $5c03: $cf
	rst GetHLinHL                                          ; $5c04: $cf
	db $ed                                           ; $5c05: $ed
	db $fd                                           ; $5c06: $fd
	sbc $fe                                          ; $5c07: $de $fe
	ld l, a                                          ; $5c09: $6f
	inc sp                                           ; $5c0a: $33
	rst $38                                          ; $5c0b: $ff
	rst $38                                          ; $5c0c: $ff
	rst AddAOntoHL                                          ; $5c0d: $ef
	rst SubAFromDE                                          ; $5c0e: $df
	call $3f1b                                       ; $5c0f: $cd $1b $3f
	rra                                              ; $5c12: $1f
	ld de, $463c                                     ; $5c13: $11 $3c $46
	rra                                              ; $5c16: $1f
	rra                                              ; $5c17: $1f
	ld [de], a                                       ; $5c18: $12
	inc c                                            ; $5c19: $0c
	sub [hl]                                         ; $5c1a: $96
	nop                                              ; $5c1b: $00
	ccf                                              ; $5c1c: $3f
	rla                                              ; $5c1d: $17
	rrca                                             ; $5c1e: $0f
	rra                                              ; $5c1f: $1f
	ccf                                              ; $5c20: $3f
	ld a, a                                          ; $5c21: $7f
	rst $38                                          ; $5c22: $ff
	rst $38                                          ; $5c23: $ff
	cp $9b                                           ; $5c24: $fe $9b
	ld bc, $0f03                                     ; $5c26: $01 $03 $0f
	ccf                                              ; $5c29: $3f
	sbc $ff                                          ; $5c2a: $de $ff
	add b                                            ; $5c2c: $80
	rst FarCall                                          ; $5c2d: $f7
	ei                                               ; $5c2e: $fb
	ld sp, hl                                        ; $5c2f: $f9
	ldh a, [$c0]                                     ; $5c30: $f0 $c0
	nop                                              ; $5c32: $00
	rst $38                                          ; $5c33: $ff
	rst AddAOntoHL                                          ; $5c34: $ef
	rst GetHLinHL                                          ; $5c35: $cf
	rrca                                             ; $5c36: $0f
	rrca                                             ; $5c37: $0f
	rra                                              ; $5c38: $1f
	ld a, a                                          ; $5c39: $7f
	rst GetHLinHL                                          ; $5c3a: $cf
	db $ed                                           ; $5c3b: $ed
	db $dd                                           ; $5c3c: $dd
	ld d, a                                          ; $5c3d: $57
	ld c, $8a                                        ; $5c3e: $0e $8a
	jp z, $faea                                      ; $5c40: $ca $ea $fa

	ld [hl-], a                                      ; $5c43: $32
	ld [hl-], a                                      ; $5c44: $32
	cp d                                             ; $5c45: $ba
	ei                                               ; $5c46: $fb
	rst $38                                          ; $5c47: $ff
	ld a, a                                          ; $5c48: $7f
	cp a                                             ; $5c49: $bf
	ccf                                              ; $5c4a: $3f
	ld [$eb9e], a                                    ; $5c4b: $ea $9e $eb
	db $dd                                           ; $5c4e: $dd
	rst AddAOntoHL                                          ; $5c4f: $ef
	sub e                                            ; $5c50: $93
	cp $fd                                           ; $5c51: $fe $fd
	cp a                                             ; $5c53: $bf
	ccf                                              ; $5c54: $3f
	ccf                                              ; $5c55: $3f
	cp c                                             ; $5c56: $b9
	ld a, [hl-]                                      ; $5c57: $3a
	ld e, $1d                                        ; $5c58: $1e $1d
	inc bc                                           ; $5c5a: $03
	db $eb                                           ; $5c5b: $eb
	db $fd                                           ; $5c5c: $fd
	sbc $e9                                          ; $5c5d: $de $e9
	sbc e                                            ; $5c5f: $9b
	jp z, Jump_062_5ada                              ; $5c60: $ca $da $5a

	scf                                              ; $5c63: $37
	ld a, e                                          ; $5c64: $7b
	cp h                                             ; $5c65: $bc
	ld a, e                                          ; $5c66: $7b
	and h                                            ; $5c67: $a4
	sub [hl]                                         ; $5c68: $96
	rst AddAOntoHL                                          ; $5c69: $ef
	ld e, a                                          ; $5c6a: $5f
	ld e, a                                          ; $5c6b: $5f
	rst SubAFromHL                                          ; $5c6c: $d7
	jp c, $d2da                                      ; $5c6d: $da $da $d2

	sub $c6                                          ; $5c70: $d6 $c6
	sbc $eb                                          ; $5c72: $de $eb
	rst SubAFromDE                                          ; $5c74: $df
	rst SubAFromBC                                          ; $5c75: $e7
	rst SubAFromDE                                          ; $5c76: $df
	rst AddAOntoHL                                          ; $5c77: $ef
	sub e                                            ; $5c78: $93
	rst $38                                          ; $5c79: $ff
	ld e, d                                          ; $5c7a: $5a
	ld e, d                                          ; $5c7b: $5a

jr_062_5c7c:
	ld e, e                                          ; $5c7c: $5b
	ld d, l                                          ; $5c7d: $55
	ld d, l                                          ; $5c7e: $55
	ld e, l                                          ; $5c7f: $5d
	ld e, l                                          ; $5c80: $5d
	db $dd                                           ; $5c81: $dd
	push af                                          ; $5c82: $f5
	push af                                          ; $5c83: $f5
	db $f4                                           ; $5c84: $f4
	call c, $95fa                                    ; $5c85: $dc $fa $95
	db $dd                                           ; $5c88: $dd
	ld e, c                                          ; $5c89: $59
	ld d, [hl]                                       ; $5c8a: $56
	ld d, [hl]                                       ; $5c8b: $56
	sub $f4                                          ; $5c8c: $d6 $f4
	ldh a, [c]                                       ; $5c8e: $f2
	ld l, d                                          ; $5c8f: $6a
	ld a, [$defe]                                    ; $5c90: $fa $fe $de
	db $fd                                           ; $5c93: $fd
	sbc $df                                          ; $5c94: $de $df
	add a                                            ; $5c96: $87
	ld l, d                                          ; $5c97: $6a
	ld e, [hl]                                       ; $5c98: $5e
	ld e, l                                          ; $5c99: $5d
	ld e, e                                          ; $5c9a: $5b
	ld [hl], a                                       ; $5c9b: $77
	and a                                            ; $5c9c: $a7
	and [hl]                                         ; $5c9d: $a6
	and l                                            ; $5c9e: $a5
	rst SubAFromDE                                          ; $5c9f: $df
	db $eb                                           ; $5ca0: $eb
	db $eb                                           ; $5ca1: $eb
	db $ed                                           ; $5ca2: $ed
	db $ed                                           ; $5ca3: $ed
	db $fd                                           ; $5ca4: $fd
	db $fd                                           ; $5ca5: $fd
	cp $25                                           ; $5ca6: $fe $25
	dec h                                            ; $5ca8: $25
	ld [hl+], a                                      ; $5ca9: $22
	ld [hl], d                                       ; $5caa: $72
	ld [hl], d                                       ; $5cab: $72
	ld d, c                                          ; $5cac: $51
	ld d, c                                          ; $5cad: $51
	ld c, c                                          ; $5cae: $49
	ld a, d                                          ; $5caf: $7a
	db $eb                                           ; $5cb0: $eb
	call c, Call_062_6eff                            ; $5cb1: $dc $ff $6e
	ldh [$9e], a                                     ; $5cb4: $e0 $9e
	rst GetHLinHL                                          ; $5cb6: $cf
	ld l, d                                          ; $5cb7: $6a
	ldh [$df], a                                     ; $5cb8: $e0 $df
	add b                                            ; $5cba: $80
	sbc d                                            ; $5cbb: $9a
	rst $38                                          ; $5cbc: $ff
	di                                               ; $5cbd: $f3
	xor [hl]                                         ; $5cbe: $ae
	push bc                                          ; $5cbf: $c5
	cp $7a                                           ; $5cc0: $fe $7a
	ldh [$9c], a                                     ; $5cc2: $e0 $9c
	adc a                                            ; $5cc4: $8f
	pop af                                           ; $5cc5: $f1
	xor a                                            ; $5cc6: $af
	ld [hl], d                                       ; $5cc7: $72
	ldh [$27], a                                     ; $5cc8: $e0 $27
	nop                                              ; $5cca: $00
	sbc [hl]                                         ; $5ccb: $9e
	nop                                              ; $5ccc: $00
	inc hl                                           ; $5ccd: $23
	nop                                              ; $5cce: $00
	ld a, a                                          ; $5ccf: $7f
	sbc $9d                                          ; $5cd0: $de $9d
	db $dd                                           ; $5cd2: $dd
	dec bc                                           ; $5cd3: $0b
	ld a, e                                          ; $5cd4: $7b
	nop                                              ; $5cd5: $00
	sbc h                                            ; $5cd6: $9c
	nop                                              ; $5cd7: $00
	inc a                                            ; $5cd8: $3c
	ld h, d                                          ; $5cd9: $62
	ld [hl], a                                       ; $5cda: $77
	nop                                              ; $5cdb: $00
	dec de                                           ; $5cdc: $1b
	jr nz, jr_062_5c7c                               ; $5cdd: $20 $9d

	add hl, sp                                       ; $5cdf: $39
	cp d                                             ; $5ce0: $ba
	ld a, e                                          ; $5ce1: $7b
	jr nz, jr_062_5d53                               ; $5ce2: $20 $6f

	add b                                            ; $5ce4: $80
	ld a, a                                          ; $5ce5: $7f
	jr c, jr_062_5d5f                                ; $5ce6: $38 $77

	add b                                            ; $5ce8: $80
	sub a                                            ; $5ce9: $97
	or a                                             ; $5cea: $b7
	sbc l                                            ; $5ceb: $9d
	ldh [$80], a                                     ; $5cec: $e0 $80
	rst $38                                          ; $5cee: $ff
	cp a                                             ; $5cef: $bf
	cp e                                             ; $5cf0: $bb
	rst GetHLinHL                                          ; $5cf1: $cf
	ld [hl], a                                       ; $5cf2: $77
	add b                                            ; $5cf3: $80
	sbc d                                            ; $5cf4: $9a
	add b                                            ; $5cf5: $80
	adc a                                            ; $5cf6: $8f
	cp e                                             ; $5cf7: $bb
	adc a                                            ; $5cf8: $8f
	add b                                            ; $5cf9: $80
	rla                                              ; $5cfa: $17
	add b                                            ; $5cfb: $80
	ld a, a                                          ; $5cfc: $7f
	ld a, a                                          ; $5cfd: $7f
	ccf                                              ; $5cfe: $3f
	add b                                            ; $5cff: $80
	sbc h                                            ; $5d00: $9c
	xor $7f                                          ; $5d01: $ee $7f
	scf                                              ; $5d03: $37
	db $dd                                           ; $5d04: $dd
	rst $38                                          ; $5d05: $ff
	sbc l                                            ; $5d06: $9d
	rst FarCall                                          ; $5d07: $f7
	rra                                              ; $5d08: $1f
	ld [hl], a                                       ; $5d09: $77
	add b                                            ; $5d0a: $80
	sbc d                                            ; $5d0b: $9a
	nop                                              ; $5d0c: $00
	ld a, $77                                        ; $5d0d: $3e $77
	ld e, $00                                        ; $5d0f: $1e $00
	ld c, e                                          ; $5d11: $4b
	add b                                            ; $5d12: $80
	sbc l                                            ; $5d13: $9d
	ccf                                              ; $5d14: $3f
	cp a                                             ; $5d15: $bf
	inc bc                                           ; $5d16: $03
	add b                                            ; $5d17: $80
	rst SubAFromDE                                          ; $5d18: $df
	cp a                                             ; $5d19: $bf
	rst SubAFromDE                                          ; $5d1a: $df
	rst $38                                          ; $5d1b: $ff
	ld [hl], a                                       ; $5d1c: $77
	add b                                            ; $5d1d: $80
	ld a, a                                          ; $5d1e: $7f
	ld a, a                                          ; $5d1f: $7f
	sbc l                                            ; $5d20: $9d
	or b                                             ; $5d21: $b0
	adc a                                            ; $5d22: $8f
	inc de                                           ; $5d23: $13
	add b                                            ; $5d24: $80
	ei                                               ; $5d25: $fb
	scf                                              ; $5d26: $37
	add b                                            ; $5d27: $80
	ld a, a                                          ; $5d28: $7f
	sbc b                                            ; $5d29: $98
	sbc [hl]                                         ; $5d2a: $9e
	ld a, a                                          ; $5d2b: $7f
	ld [hl], a                                       ; $5d2c: $77
	add b                                            ; $5d2d: $80
	sbc e                                            ; $5d2e: $9b
	nop                                              ; $5d2f: $00
	ld e, $41                                        ; $5d30: $1e $41
	ld a, $13                                        ; $5d32: $3e $13
	add b                                            ; $5d34: $80
	sub b                                            ; $5d35: $90
	ld a, [hl-]                                      ; $5d36: $3a
	sbc [hl]                                         ; $5d37: $9e
	dec e                                            ; $5d38: $1d
	inc bc                                           ; $5d39: $03
	jr nc, jr_062_5d3c                               ; $5d3a: $30 $00

jr_062_5d3c:
	ld h, h                                          ; $5d3c: $64
	jr c, jr_062_5d3f                                ; $5d3d: $38 $00

jr_062_5d3f:
	jr jr_062_5d42                                   ; $5d3f: $18 $01

	ld b, l                                          ; $5d41: $45

jr_062_5d42:
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	inc h                                            ; $5d44: $24
	db $fd                                           ; $5d45: $fd
	sub e                                            ; $5d46: $93
	add e                                            ; $5d47: $83
	rst $38                                          ; $5d48: $ff
	ld [hl], a                                       ; $5d49: $77
	sbc l                                            ; $5d4a: $9d
	adc a                                            ; $5d4b: $8f
	rlca                                             ; $5d4c: $07
	rlca                                             ; $5d4d: $07
	inc bc                                           ; $5d4e: $03
	inc bc                                           ; $5d4f: $03
	rst $38                                          ; $5d50: $ff
	adc a                                            ; $5d51: $8f
	inc bc                                           ; $5d52: $03

jr_062_5d53:
	db $fd                                           ; $5d53: $fd
	sbc [hl]                                         ; $5d54: $9e

Call_062_5d55:
	ld bc, $e07b                                     ; $5d55: $01 $7b $e0
	sbc [hl]                                         ; $5d58: $9e
	inc a                                            ; $5d59: $3c
	ld l, e                                          ; $5d5a: $6b
	ldh [$7f], a                                     ; $5d5b: $e0 $7f
	ret c                                            ; $5d5d: $d8

	inc sp                                           ; $5d5e: $33

jr_062_5d5f:
	ldh [$9b], a                                     ; $5d5f: $e0 $9b
	ld h, [hl]                                       ; $5d61: $66
	inc a                                            ; $5d62: $3c
	inc a                                            ; $5d63: $3c
	nop                                              ; $5d64: $00
	ld [hl], e                                       ; $5d65: $73
	ldh [$9d], a                                     ; $5d66: $e0 $9d
	inc a                                            ; $5d68: $3c
	jr jr_062_5d9a                                   ; $5d69: $18 $2f

	ldh [$9c], a                                     ; $5d6b: $e0 $9c
	ld a, [hl]                                       ; $5d6d: $7e
	inc a                                            ; $5d6e: $3c
	inc a                                            ; $5d6f: $3c
	ld l, a                                          ; $5d70: $6f
	ldh [$7b], a                                     ; $5d71: $e0 $7b
	rst SubAFromDE                                          ; $5d73: $df
	ld b, e                                          ; $5d74: $43
	ldh [$eb], a                                     ; $5d75: $e0 $eb
	ld bc, $de84                                     ; $5d77: $01 $84 $de
	push af                                          ; $5d7a: $f5
	call c, $fcf7                                    ; $5d7b: $dc $f7 $fc
	cp a                                             ; $5d7e: $bf
	cp $f7                                           ; $5d7f: $fe $f7
	cp $b3                                           ; $5d81: $fe $b3
	sbc a                                            ; $5d83: $9f
	sub c                                            ; $5d84: $91
	rst SubAFromDE                                          ; $5d85: $df
	adc a                                            ; $5d86: $8f
	ei                                               ; $5d87: $fb
	pop af                                           ; $5d88: $f1
	and a                                            ; $5d89: $a7
	or e                                             ; $5d8a: $b3
	adc a                                            ; $5d8b: $8f
	adc a                                            ; $5d8c: $8f
	add [hl]                                         ; $5d8d: $86
	adc a                                            ; $5d8e: $8f
	call $c789                                       ; $5d8f: $cd $89 $c7
	add [hl]                                         ; $5d92: $86
	add b                                            ; $5d93: $80
	sbc $c0                                          ; $5d94: $de $c0
	sbc [hl]                                         ; $5d96: $9e
	ldh [$7b], a                                     ; $5d97: $e0 $7b
	db $fd                                           ; $5d99: $fd

jr_062_5d9a:
	add b                                            ; $5d9a: $80
	or b                                             ; $5d9b: $b0
	ldh [$a0], a                                     ; $5d9c: $e0 $a0
	ldh a, [$98]                                     ; $5d9e: $f0 $98
	ldh a, [$9c]                                     ; $5da0: $f0 $9c
	ld hl, sp+$2e                                    ; $5da2: $f8 $2e
	db $fc                                           ; $5da4: $fc
	daa                                              ; $5da5: $27
	cp $47                                           ; $5da6: $fe $47
	rst $38                                          ; $5da8: $ff
	ld c, l                                          ; $5da9: $4d
	rst $38                                          ; $5daa: $ff
	sub l                                            ; $5dab: $95
	rst $38                                          ; $5dac: $ff
	rra                                              ; $5dad: $1f
	rst $38                                          ; $5dae: $ff
	ld sp, $43e3                                     ; $5daf: $31 $e3 $43
	jp nz, $8483                                     ; $5db2: $c2 $83 $84

	ld b, $04                                        ; $5db5: $06 $04
	inc b                                            ; $5db7: $04
	nop                                              ; $5db8: $00
	push hl                                          ; $5db9: $e5
	adc c                                            ; $5dba: $89
	cp [hl]                                          ; $5dbb: $be
	or $9f                                           ; $5dbc: $f6 $9f
	or $9f                                           ; $5dbe: $f6 $9f
	rst FarCall                                          ; $5dc0: $f7
	sbc l                                            ; $5dc1: $9d
	rst $38                                          ; $5dc2: $ff
	adc l                                            ; $5dc3: $8d
	rst $38                                          ; $5dc4: $ff
	adc h                                            ; $5dc5: $8c
	rst $38                                          ; $5dc6: $ff
	add h                                            ; $5dc7: $84
	rst $38                                          ; $5dc8: $ff
	add d                                            ; $5dc9: $82
	rst $38                                          ; $5dca: $ff
	add b                                            ; $5dcb: $80
	rst AddAOntoHL                                          ; $5dcc: $ef
	add b                                            ; $5dcd: $80
	rst JumpTable                                          ; $5dce: $c7
	add b                                            ; $5dcf: $80
	add e                                            ; $5dd0: $83
	cp h                                             ; $5dd1: $bc
	ld bc, $3810                                     ; $5dd2: $01 $10 $38
	ld a, b                                          ; $5dd5: $78
	inc [hl]                                         ; $5dd6: $34
	add e                                            ; $5dd7: $83
	rst GetHLinHL                                          ; $5dd8: $cf
	or [hl]                                          ; $5dd9: $b6
	rst GetHLinHL                                          ; $5dda: $cf
	rst SubAFromHL                                          ; $5ddb: $d7
	db $ed                                           ; $5ddc: $ed
	ld h, a                                          ; $5ddd: $67
	db $fd                                           ; $5dde: $fd
	ld [hl], d                                       ; $5ddf: $72
	rst $38                                          ; $5de0: $ff
	cp e                                             ; $5de1: $bb
	rst AddAOntoHL                                          ; $5de2: $ef
	db $fd                                           ; $5de3: $fd
	ld h, a                                          ; $5de4: $67
	rst $38                                          ; $5de5: $ff
	ccf                                              ; $5de6: $3f
	rst FarCall                                          ; $5de7: $f7
	ld h, e                                          ; $5de8: $63
	rst JumpTable                                          ; $5de9: $c7
	ld h, a                                          ; $5dea: $67
	rst $38                                          ; $5deb: $ff
	rra                                              ; $5dec: $1f
	db $ed                                           ; $5ded: $ed
	ld e, $db                                        ; $5dee: $1e $db
	ld [de], a                                       ; $5df0: $12
	rra                                              ; $5df1: $1f
	inc c                                            ; $5df2: $0c
	ld bc, $03bc                                     ; $5df3: $01 $bc $03
	inc bc                                           ; $5df6: $03
	rlca                                             ; $5df7: $07
	rrca                                             ; $5df8: $0f
	rra                                              ; $5df9: $1f
	sbc b                                            ; $5dfa: $98
	ld bc, $033f                                     ; $5dfb: $01 $3f $03
	ld a, a                                          ; $5dfe: $7f
	rrca                                             ; $5dff: $0f
	rst $38                                          ; $5e00: $ff
	ccf                                              ; $5e01: $3f
	call c, $80ff                                    ; $5e02: $dc $ff $80
	rst AddAOntoHL                                          ; $5e05: $ef
	rst FarCall                                          ; $5e06: $f7
	rst GetHLinHL                                          ; $5e07: $cf
	ei                                               ; $5e08: $fb
	rrca                                             ; $5e09: $0f
	ld sp, hl                                        ; $5e0a: $f9
	rrca                                             ; $5e0b: $0f
	ldh a, [$1f]                                     ; $5e0c: $f0 $1f
	ret nz                                           ; $5e0e: $c0

	ld a, a                                          ; $5e0f: $7f
	nop                                              ; $5e10: $00
	rst GetHLinHL                                          ; $5e11: $cf
	xor l                                            ; $5e12: $ad
	ld [hl], d                                       ; $5e13: $72
	db $dd                                           ; $5e14: $dd
	ld [hl-], a                                      ; $5e15: $32
	ld d, a                                          ; $5e16: $57
	cp d                                             ; $5e17: $ba
	ld c, $fb                                        ; $5e18: $0e $fb
	adc d                                            ; $5e1a: $8a
	rst $38                                          ; $5e1b: $ff
	jp z, $eaff                                      ; $5e1c: $ca $ff $ea

	ccf                                              ; $5e1f: $3f
	ld a, [$ea3f]                                    ; $5e20: $fa $3f $ea
	cp a                                             ; $5e23: $bf
	adc e                                            ; $5e24: $8b
	db $eb                                           ; $5e25: $eb
	ccf                                              ; $5e26: $3f
	rst AddAOntoHL                                          ; $5e27: $ef
	cp a                                             ; $5e28: $bf
	rst AddAOntoHL                                          ; $5e29: $ef
	add hl, sp                                       ; $5e2a: $39
	rst AddAOntoHL                                          ; $5e2b: $ef
	ld a, [hl-]                                      ; $5e2c: $3a
	rst AddAOntoHL                                          ; $5e2d: $ef
	ld e, $fe                                        ; $5e2e: $1e $fe
	dec e                                            ; $5e30: $1d
	db $fd                                           ; $5e31: $fd
	inc bc                                           ; $5e32: $03
	db $eb                                           ; $5e33: $eb
	scf                                              ; $5e34: $37
	db $fd                                           ; $5e35: $fd
	ld a, a                                          ; $5e36: $7f
	jp hl                                            ; $5e37: $e9


	rst $38                                          ; $5e38: $ff
	ld [hl], a                                       ; $5e39: $77
	cp $7f                                           ; $5e3a: $fe $7f
	ldh [$80], a                                     ; $5e3c: $e0 $80
	jp c, Jump_062_5aef                              ; $5e3e: $da $ef $5a

	rst AddAOntoHL                                          ; $5e41: $ef
	ld e, a                                          ; $5e42: $5f
	db $eb                                           ; $5e43: $eb
	ld e, a                                          ; $5e44: $5f
	db $eb                                           ; $5e45: $eb
	rst SubAFromHL                                          ; $5e46: $d7
	db $eb                                           ; $5e47: $eb
	jp c, $dae7                                      ; $5e48: $da $e7 $da

	rst SubAFromBC                                          ; $5e4b: $e7
	jp nc, $d6ef                                     ; $5e4c: $d2 $ef $d6

	rst AddAOntoHL                                          ; $5e4f: $ef
	add $ff                                          ; $5e50: $c6 $ff
	ld e, d                                          ; $5e52: $5a
	push af                                          ; $5e53: $f5
	ld e, d                                          ; $5e54: $5a
	push af                                          ; $5e55: $f5
	ld e, e                                          ; $5e56: $5b
	db $f4                                           ; $5e57: $f4
	ld d, l                                          ; $5e58: $55
	ld a, [$fa55]                                    ; $5e59: $fa $55 $fa
	ld e, l                                          ; $5e5c: $5d
	ld a, e                                          ; $5e5d: $7b
	cp $9e                                           ; $5e5e: $fe $9e
	db $dd                                           ; $5e60: $dd
	ld a, e                                          ; $5e61: $7b
	cp $92                                           ; $5e62: $fe $92
	ld e, c                                          ; $5e64: $59
	cp $56                                           ; $5e65: $fe $56
	db $fd                                           ; $5e67: $fd
	ld d, [hl]                                       ; $5e68: $56
	db $fd                                           ; $5e69: $fd
	sub $fd                                          ; $5e6a: $d6 $fd
	db $f4                                           ; $5e6c: $f4
	rst SubAFromDE                                          ; $5e6d: $df
	ldh a, [c]                                       ; $5e6e: $f2
	rst SubAFromDE                                          ; $5e6f: $df
	ld l, d                                          ; $5e70: $6a
	ld a, e                                          ; $5e71: $7b
	cp $90                                           ; $5e72: $fe $90
	ld e, [hl]                                       ; $5e74: $5e
	db $eb                                           ; $5e75: $eb
	ld e, l                                          ; $5e76: $5d
	db $eb                                           ; $5e77: $eb
	ld e, e                                          ; $5e78: $5b
	db $ed                                           ; $5e79: $ed
	ld [hl], a                                       ; $5e7a: $77
	db $ed                                           ; $5e7b: $ed
	and a                                            ; $5e7c: $a7
	db $fd                                           ; $5e7d: $fd
	and [hl]                                         ; $5e7e: $a6
	db $fd                                           ; $5e7f: $fd
	and l                                            ; $5e80: $a5
	cp $25                                           ; $5e81: $fe $25
	ld a, e                                          ; $5e83: $7b
	cp $9c                                           ; $5e84: $fe $9c
	ld [hl+], a                                      ; $5e86: $22
	rst $38                                          ; $5e87: $ff
	ld [hl], d                                       ; $5e88: $72
	ld a, e                                          ; $5e89: $7b
	cp $9e                                           ; $5e8a: $fe $9e
	ld d, c                                          ; $5e8c: $51
	ld a, e                                          ; $5e8d: $7b
	cp $9d                                           ; $5e8e: $fe $9d
	ld c, c                                          ; $5e90: $49
	rst $38                                          ; $5e91: $ff
	ld d, d                                          ; $5e92: $52
	ldh [hDisp1_WY], a                                     ; $5e93: $e0 $95
	add b                                            ; $5e95: $80
	rst $38                                          ; $5e96: $ff
	add b                                            ; $5e97: $80
	cp a                                             ; $5e98: $bf
	sbc a                                            ; $5e99: $9f
	di                                               ; $5e9a: $f3
	pop af                                           ; $5e9b: $f1
	xor [hl]                                         ; $5e9c: $ae
	xor a                                            ; $5e9d: $af
	push bc                                          ; $5e9e: $c5
	ld h, d                                          ; $5e9f: $62
	ldh [rWX], a                                     ; $5ea0: $e0 $4b
	nop                                              ; $5ea2: $00
	sbc h                                            ; $5ea3: $9c
	ld [bc], a                                       ; $5ea4: $02
	rst $38                                          ; $5ea5: $ff
	nop                                              ; $5ea6: $00
	ld c, a                                          ; $5ea7: $4f
	nop                                              ; $5ea8: $00
	sbc [hl]                                         ; $5ea9: $9e
	inc d                                            ; $5eaa: $14
	ld l, e                                          ; $5eab: $6b
	nop                                              ; $5eac: $00
	sbc l                                            ; $5ead: $9d
	ld [hl], e                                       ; $5eae: $73
	cp $73                                           ; $5eaf: $fe $73
	nop                                              ; $5eb1: $00
	sub l                                            ; $5eb2: $95
	inc sp                                           ; $5eb3: $33
	rst $38                                          ; $5eb4: $ff
	ld bc, $3eff                                     ; $5eb5: $01 $ff $3e
	rst AddAOntoHL                                          ; $5eb8: $ef
	ld h, e                                          ; $5eb9: $63
	db $fd                                           ; $5eba: $fd
	ld e, a                                          ; $5ebb: $5f
	bit 5, e                                         ; $5ebc: $cb $6b
	nop                                              ; $5ebe: $00
	sbc l                                            ; $5ebf: $9d
	db $ed                                           ; $5ec0: $ed
	ld [hl-], a                                      ; $5ec1: $32

jr_062_5ec2:
	dec sp                                           ; $5ec2: $3b
	jr nz, @+$81                                     ; $5ec3: $20 $7f

	cp $9e                                           ; $5ec5: $fe $9e
	cp c                                             ; $5ec7: $b9
	ld h, a                                          ; $5ec8: $67
	jr nz, jr_062_5f3e                               ; $5ec9: $20 $73

	add b                                            ; $5ecb: $80
	sbc d                                            ; $5ecc: $9a
	or a                                             ; $5ecd: $b7
	cp $bf                                           ; $5ece: $fe $bf
	cp $f3                                           ; $5ed0: $fe $f3
	ld l, e                                          ; $5ed2: $6b
	add b                                            ; $5ed3: $80
	ld a, a                                          ; $5ed4: $7f
	cp $98                                           ; $5ed5: $fe $98
	adc a                                            ; $5ed7: $8f
	cp e                                             ; $5ed8: $bb
	cp e                                             ; $5ed9: $bb
	rst SubAFromDE                                          ; $5eda: $df
	sbc a                                            ; $5edb: $9f
	rst JumpTable                                          ; $5edc: $c7
	add b                                            ; $5edd: $80
	inc hl                                           ; $5ede: $23
	add b                                            ; $5edf: $80
	sbc [hl]                                         ; $5ee0: $9e
	nop                                              ; $5ee1: $00
	inc sp                                           ; $5ee2: $33
	add b                                            ; $5ee3: $80
	sbc h                                            ; $5ee4: $9c
	sbc $bb                                          ; $5ee5: $de $bb
	rst $38                                          ; $5ee7: $ff
	ld [hl], e                                       ; $5ee8: $73

jr_062_5ee9:
	add b                                            ; $5ee9: $80
	sub l                                            ; $5eea: $95
	ld de, $00ff                                     ; $5eeb: $11 $ff $00
	rst $38                                          ; $5eee: $ff
	ld a, $f7                                        ; $5eef: $3e $f7
	ld [hl], a                                       ; $5ef1: $77
	rst $38                                          ; $5ef2: $ff
	ld a, $0f                                        ; $5ef3: $3e $0f
	cp [hl]                                          ; $5ef5: $be
	ld bc, $ed03                                     ; $5ef6: $01 $03 $ed
	ld e, a                                          ; $5ef9: $5f
	add b                                            ; $5efa: $80
	sbc h                                            ; $5efb: $9c
	ld a, a                                          ; $5efc: $7f
	ld [$03bf], a                                    ; $5efd: $ea $bf $03
	add b                                            ; $5f00: $80
	ld [hl], a                                       ; $5f01: $77
	add b                                            ; $5f02: $80
	ld a, e                                          ; $5f03: $7b
	ld a, [hl]                                       ; $5f04: $7e
	sbc d                                            ; $5f05: $9a
	rst $38                                          ; $5f06: $ff
	or b                                             ; $5f07: $b0
	rst SubAFromDE                                          ; $5f08: $df
	adc a                                            ; $5f09: $8f
	add a                                            ; $5f0a: $87
	rra                                              ; $5f0b: $1f
	add b                                            ; $5f0c: $80
	cp e                                             ; $5f0d: $bb
	add e                                            ; $5f0e: $83
	ld bc, $3810                                     ; $5f0f: $01 $10 $38
	ld a, b                                          ; $5f12: $78
	inc d                                            ; $5f13: $14
	scf                                              ; $5f14: $37
	add b                                            ; $5f15: $80
	ld a, a                                          ; $5f16: $7f
	cp $9b                                           ; $5f17: $fe $9b
	ld e, $ff                                        ; $5f19: $1e $ff
	ld b, c                                          ; $5f1b: $41
	ccf                                              ; $5f1c: $3f
	ld a, e                                          ; $5f1d: $7b
	ld a, [hl]                                       ; $5f1e: $7e
	inc hl                                           ; $5f1f: $23
	add b                                            ; $5f20: $80
	ld a, [hl]                                       ; $5f21: $7e
	jr nz, jr_062_5ec2                               ; $5f22: $20 $9e

	cp d                                             ; $5f24: $ba
	ld l, a                                          ; $5f25: $6f
	add b                                            ; $5f26: $80
	sbc [hl]                                         ; $5f27: $9e
	jr nc, jr_062_5ee9                               ; $5f28: $30 $bf

	ld [bc], a                                       ; $5f2a: $02
	ld h, h                                          ; $5f2b: $64
	sbc l                                            ; $5f2c: $9d
	inc h                                            ; $5f2d: $24
	jr c, @-$41                                      ; $5f2e: $38 $bd

	nop                                              ; $5f30: $00
	jr jr_062_5f34                                   ; $5f31: $18 $01

	ld b, l                                          ; $5f33: $45

jr_062_5f34:
	sub a                                            ; $5f34: $97
	add e                                            ; $5f35: $83
	rst $38                                          ; $5f36: $ff
	rst $38                                          ; $5f37: $ff
	ld [hl], a                                       ; $5f38: $77
	adc a                                            ; $5f39: $8f
	sbc l                                            ; $5f3a: $9d
	inc bc                                           ; $5f3b: $03
	adc a                                            ; $5f3c: $8f
	cp l                                             ; $5f3d: $bd

jr_062_5f3e:
	rlca                                             ; $5f3e: $07
	rlca                                             ; $5f3f: $07
	inc bc                                           ; $5f40: $03
	inc bc                                           ; $5f41: $03
	sbc l                                            ; $5f42: $9d
	ld bc, $bf30                                     ; $5f43: $01 $30 $bf
	ld b, d                                          ; $5f46: $42
	ld h, h                                          ; $5f47: $64
	sbc l                                            ; $5f48: $9d
	inc h                                            ; $5f49: $24
	inc a                                            ; $5f4a: $3c
	ld a, e                                          ; $5f4b: $7b
	rst SubAFromDE                                          ; $5f4c: $df
	daa                                              ; $5f4d: $27
	ldh [rIE], a                                     ; $5f4e: $e0 $ff
	sbc l                                            ; $5f50: $9d
	ld h, [hl]                                       ; $5f51: $66
	ld h, h                                          ; $5f52: $64
	sbc $3c                                          ; $5f53: $de $3c
	rst SubAFromDE                                          ; $5f55: $df
	jr jr_062_5f73                                   ; $5f56: $18 $1b

	ldh [$9e], a                                     ; $5f58: $e0 $9e
	ld a, [hl]                                       ; $5f5a: $7e
	db $dd                                           ; $5f5b: $dd
	inc a                                            ; $5f5c: $3c
	sbc [hl]                                         ; $5f5d: $9e
	jr jr_062_5f97                                   ; $5f5e: $18 $37

	ldh [$d4], a                                     ; $5f60: $e0 $d4
	ld bc, $de84                                     ; $5f62: $01 $84 $de
	push af                                          ; $5f65: $f5
	call c, $fcf7                                    ; $5f66: $dc $f7 $fc
	or a                                             ; $5f69: $b7
	cp $bf                                           ; $5f6a: $fe $bf
	cp $f3                                           ; $5f6c: $fe $f3
	rst SubAFromDE                                          ; $5f6e: $df
	sub c                                            ; $5f6f: $91
	rst GetHLinHL                                          ; $5f70: $cf
	adc [hl]                                         ; $5f71: $8e
	ei                                               ; $5f72: $fb

jr_062_5f73:
	pop af                                           ; $5f73: $f1
	rst SubAFromBC                                          ; $5f74: $e7
	or e                                             ; $5f75: $b3
	xor a                                            ; $5f76: $af
	xor a                                            ; $5f77: $af
	add [hl]                                         ; $5f78: $86
	adc a                                            ; $5f79: $8f
	call $c789                                       ; $5f7a: $cd $89 $c7
	add [hl]                                         ; $5f7d: $86
	add b                                            ; $5f7e: $80
	sbc $c0                                          ; $5f7f: $de $c0
	sbc [hl]                                         ; $5f81: $9e
	ldh [$7b], a                                     ; $5f82: $e0 $7b
	db $fd                                           ; $5f84: $fd
	add b                                            ; $5f85: $80
	or b                                             ; $5f86: $b0
	ldh [$a0], a                                     ; $5f87: $e0 $a0
	ldh a, [$98]                                     ; $5f89: $f0 $98
	ldh a, [$9c]                                     ; $5f8b: $f0 $9c
	ld hl, sp+$2e                                    ; $5f8d: $f8 $2e
	db $fc                                           ; $5f8f: $fc
	daa                                              ; $5f90: $27
	cp $47                                           ; $5f91: $fe $47
	rst $38                                          ; $5f93: $ff
	ld c, l                                          ; $5f94: $4d
	rst $38                                          ; $5f95: $ff
	sub l                                            ; $5f96: $95

jr_062_5f97:
	rst $38                                          ; $5f97: $ff
	rra                                              ; $5f98: $1f
	rst $38                                          ; $5f99: $ff
	ld sp, $43e3                                     ; $5f9a: $31 $e3 $43
	jp nz, $8483                                     ; $5f9d: $c2 $83 $84

	ld b, $04                                        ; $5fa0: $06 $04
	inc b                                            ; $5fa2: $04
	nop                                              ; $5fa3: $00
	push hl                                          ; $5fa4: $e5
	adc c                                            ; $5fa5: $89
	cp [hl]                                          ; $5fa6: $be
	or $9f                                           ; $5fa7: $f6 $9f
	or $9f                                           ; $5fa9: $f6 $9f
	rst FarCall                                          ; $5fab: $f7
	sbc l                                            ; $5fac: $9d
	rst $38                                          ; $5fad: $ff
	adc l                                            ; $5fae: $8d
	rst $38                                          ; $5faf: $ff
	adc h                                            ; $5fb0: $8c
	rst $38                                          ; $5fb1: $ff
	add h                                            ; $5fb2: $84
	rst $38                                          ; $5fb3: $ff
	ld [bc], a                                       ; $5fb4: $02
	rst $38                                          ; $5fb5: $ff
	add b                                            ; $5fb6: $80
	rst AddAOntoHL                                          ; $5fb7: $ef
	add b                                            ; $5fb8: $80
	rst JumpTable                                          ; $5fb9: $c7
	add b                                            ; $5fba: $80
	add e                                            ; $5fbb: $83
	cp h                                             ; $5fbc: $bc
	ld bc, $3810                                     ; $5fbd: $01 $10 $38
	ld a, b                                          ; $5fc0: $78
	inc d                                            ; $5fc1: $14
	add c                                            ; $5fc2: $81
	rst GetHLinHL                                          ; $5fc3: $cf
	or [hl]                                          ; $5fc4: $b6
	rst GetHLinHL                                          ; $5fc5: $cf
	rst SubAFromHL                                          ; $5fc6: $d7
	db $ed                                           ; $5fc7: $ed
	ld h, a                                          ; $5fc8: $67
	db $fd                                           ; $5fc9: $fd
	ld [hl], e                                       ; $5fca: $73
	sbc $bb                                          ; $5fcb: $de $bb
	cp $fd                                           ; $5fcd: $fe $fd
	ld h, a                                          ; $5fcf: $67
	rst $38                                          ; $5fd0: $ff
	inc sp                                           ; $5fd1: $33
	rst $38                                          ; $5fd2: $ff
	dec e                                            ; $5fd3: $1d
	rst FarCall                                          ; $5fd4: $f7
	ld [hl+], a                                      ; $5fd5: $22
	rst SubAFromBC                                          ; $5fd6: $e7
	ld b, a                                          ; $5fd7: $47
	rst SubAFromDE                                          ; $5fd8: $df
	ccf                                              ; $5fd9: $3f
	call $1b1f                                       ; $5fda: $cd $1f $1b
	ld [de], a                                       ; $5fdd: $12
	rra                                              ; $5fde: $1f
	inc c                                            ; $5fdf: $0c
	ld bc, $03bd                                     ; $5fe0: $01 $bd $03
	rlca                                             ; $5fe3: $07
	rrca                                             ; $5fe4: $0f
	rra                                              ; $5fe5: $1f
	sbc b                                            ; $5fe6: $98
	ld bc, $033f                                     ; $5fe7: $01 $3f $03
	ld a, a                                          ; $5fea: $7f
	rrca                                             ; $5feb: $0f
	rst $38                                          ; $5fec: $ff
	ccf                                              ; $5fed: $3f
	call c, $80ff                                    ; $5fee: $dc $ff $80
	rst AddAOntoHL                                          ; $5ff1: $ef
	rst FarCall                                          ; $5ff2: $f7
	rst GetHLinHL                                          ; $5ff3: $cf
	ei                                               ; $5ff4: $fb
	rrca                                             ; $5ff5: $0f
	ld sp, hl                                        ; $5ff6: $f9
	rrca                                             ; $5ff7: $0f
	ldh a, [$1f]                                     ; $5ff8: $f0 $1f
	ret nz                                           ; $5ffa: $c0

	ld a, a                                          ; $5ffb: $7f
	nop                                              ; $5ffc: $00
	rst GetHLinHL                                          ; $5ffd: $cf
	db $ed                                           ; $5ffe: $ed
	ld [hl-], a                                      ; $5fff: $32
	db $dd                                           ; $6000: $dd
	ld [hl-], a                                      ; $6001: $32
	ld d, a                                          ; $6002: $57
	cp d                                             ; $6003: $ba
	ld c, $fb                                        ; $6004: $0e $fb
	adc d                                            ; $6006: $8a
	rst $38                                          ; $6007: $ff
	jp z, $ea7f                                      ; $6008: $ca $7f $ea

	cp a                                             ; $600b: $bf
	ld a, [$ea3f]                                    ; $600c: $fa $3f $ea
	cp a                                             ; $600f: $bf
	adc e                                            ; $6010: $8b
	db $eb                                           ; $6011: $eb
	ccf                                              ; $6012: $3f
	rst AddAOntoHL                                          ; $6013: $ef
	ccf                                              ; $6014: $3f
	rst AddAOntoHL                                          ; $6015: $ef
	cp c                                             ; $6016: $b9
	rst AddAOntoHL                                          ; $6017: $ef
	ld a, [hl-]                                      ; $6018: $3a
	rst AddAOntoHL                                          ; $6019: $ef
	ld e, $fe                                        ; $601a: $1e $fe
	dec e                                            ; $601c: $1d
	db $fd                                           ; $601d: $fd
	inc bc                                           ; $601e: $03
	db $eb                                           ; $601f: $eb
	scf                                              ; $6020: $37
	db $fd                                           ; $6021: $fd
	ld a, a                                          ; $6022: $7f
	jp hl                                            ; $6023: $e9


	rst $38                                          ; $6024: $ff
	ld [hl], a                                       ; $6025: $77
	cp $80                                           ; $6026: $fe $80
	jp z, $daff                                      ; $6028: $ca $ff $da

	rst AddAOntoHL                                          ; $602b: $ef
	ld e, d                                          ; $602c: $5a
	rst AddAOntoHL                                          ; $602d: $ef
	ld e, a                                          ; $602e: $5f
	db $eb                                           ; $602f: $eb
	ld e, a                                          ; $6030: $5f
	db $eb                                           ; $6031: $eb
	rst SubAFromHL                                          ; $6032: $d7
	db $eb                                           ; $6033: $eb
	jp c, $dae7                                      ; $6034: $da $e7 $da

	rst SubAFromBC                                          ; $6037: $e7
	jp nc, $d6ef                                     ; $6038: $d2 $ef $d6

	rst AddAOntoHL                                          ; $603b: $ef
	add $ff                                          ; $603c: $c6 $ff
	ld e, d                                          ; $603e: $5a
	push af                                          ; $603f: $f5
	ld e, d                                          ; $6040: $5a
	push af                                          ; $6041: $f5
	ld e, e                                          ; $6042: $5b
	db $f4                                           ; $6043: $f4
	ld d, l                                          ; $6044: $55
	ld a, [$9d55]                                    ; $6045: $fa $55 $9d
	ld a, [$7b5d]                                    ; $6048: $fa $5d $7b
	cp $9e                                           ; $604b: $fe $9e
	db $dd                                           ; $604d: $dd
	ld a, e                                          ; $604e: $7b
	cp $92                                           ; $604f: $fe $92
	ld e, c                                          ; $6051: $59
	cp $56                                           ; $6052: $fe $56
	db $fd                                           ; $6054: $fd
	ld d, [hl]                                       ; $6055: $56
	db $fd                                           ; $6056: $fd
	sub $fd                                          ; $6057: $d6 $fd
	db $f4                                           ; $6059: $f4
	rst SubAFromDE                                          ; $605a: $df
	ldh a, [c]                                       ; $605b: $f2
	rst SubAFromDE                                          ; $605c: $df
	ld l, d                                          ; $605d: $6a
	ld a, e                                          ; $605e: $7b
	cp $90                                           ; $605f: $fe $90
	ld e, [hl]                                       ; $6061: $5e
	db $eb                                           ; $6062: $eb
	ld e, l                                          ; $6063: $5d
	db $eb                                           ; $6064: $eb
	ld e, e                                          ; $6065: $5b
	db $ed                                           ; $6066: $ed
	ld [hl], a                                       ; $6067: $77
	db $ed                                           ; $6068: $ed
	and a                                            ; $6069: $a7
	db $fd                                           ; $606a: $fd
	and [hl]                                         ; $606b: $a6
	db $fd                                           ; $606c: $fd
	and l                                            ; $606d: $a5
	cp $25                                           ; $606e: $fe $25
	ld a, e                                          ; $6070: $7b
	cp $9c                                           ; $6071: $fe $9c
	ld [hl+], a                                      ; $6073: $22
	rst $38                                          ; $6074: $ff
	ld [hl], d                                       ; $6075: $72
	ld a, e                                          ; $6076: $7b
	cp $9e                                           ; $6077: $fe $9e
	ld d, c                                          ; $6079: $51
	ld a, e                                          ; $607a: $7b
	cp $9d                                           ; $607b: $fe $9d
	ld c, c                                          ; $607d: $49
	rst $38                                          ; $607e: $ff
	ld e, [hl]                                       ; $607f: $5e
	ldh [hDisp1_BGP], a                                     ; $6080: $e0 $92
	sbc a                                            ; $6082: $9f
	sub c                                            ; $6083: $91
	rst GetHLinHL                                          ; $6084: $cf
	add b                                            ; $6085: $80
	rst $38                                          ; $6086: $ff
	add b                                            ; $6087: $80
	rst $38                                          ; $6088: $ff
	sbc a                                            ; $6089: $9f
	di                                               ; $608a: $f3
	pop af                                           ; $608b: $f1
	xor [hl]                                         ; $608c: $ae
	xor a                                            ; $608d: $af
	push bc                                          ; $608e: $c5
	ld h, d                                          ; $608f: $62
	ldh [rSCX], a                                    ; $6090: $e0 $43
	nop                                              ; $6092: $00
	sbc [hl]                                         ; $6093: $9e
	nop                                              ; $6094: $00
	dec bc                                           ; $6095: $0b
	nop                                              ; $6096: $00
	sub l                                            ; $6097: $95
	ld de, $00ff                                     ; $6098: $11 $ff $00
	rst $38                                          ; $609b: $ff

Call_062_609c:
	ld a, $ef                                        ; $609c: $3e $ef
	ld h, e                                          ; $609e: $63
	db $dd                                           ; $609f: $dd
	rra                                              ; $60a0: $1f
	dec bc                                           ; $60a1: $0b
	ld [hl], e                                       ; $60a2: $73
	nop                                              ; $60a3: $00
	ld l, e                                          ; $60a4: $6b
	and b                                            ; $60a5: $a0
	ld a, e                                          ; $60a6: $7b
	sbc [hl]                                         ; $60a7: $9e
	sbc l                                            ; $60a8: $9d
	rst SubAFromDE                                          ; $60a9: $df
	pop de                                           ; $60aa: $d1
	ld [hl], e                                       ; $60ab: $73
	and b                                            ; $60ac: $a0
	ld a, e                                          ; $60ad: $7b
	sbc [hl]                                         ; $60ae: $9e
	rst SubAFromDE                                          ; $60af: $df
	cp e                                             ; $60b0: $bb
	sbc e                                            ; $60b1: $9b
	rst GetHLinHL                                          ; $60b2: $cf
	adc a                                            ; $60b3: $8f
	rst JumpTable                                          ; $60b4: $c7
	add b                                            ; $60b5: $80
	inc hl                                           ; $60b6: $23
	and b                                            ; $60b7: $a0
	sbc [hl]                                         ; $60b8: $9e
	nop                                              ; $60b9: $00
	dec hl                                           ; $60ba: $2b
	and b                                            ; $60bb: $a0
	sbc h                                            ; $60bc: $9c
	xor $fd                                          ; $60bd: $ee $fd
	ld a, a                                          ; $60bf: $7f
	ld l, e                                          ; $60c0: $6b
	and b                                            ; $60c1: $a0

jr_062_60c2:
	ld a, e                                          ; $60c2: $7b
	sbc [hl]                                         ; $60c3: $9e
	sbc d                                            ; $60c4: $9a
	rst FarCall                                          ; $60c5: $f7
	ld [hl], a                                       ; $60c6: $77
	rra                                              ; $60c7: $1f
	ld e, $0f                                        ; $60c8: $1e $0f
	cp a                                             ; $60ca: $bf
	ld bc, $56ed                                     ; $60cb: $01 $ed $56
	ret nz                                           ; $60ce: $c0

	sbc h                                            ; $60cf: $9c
	ccf                                              ; $60d0: $3f
	ld a, [$6abf]                                    ; $60d1: $fa $bf $6a
	ret nz                                           ; $60d4: $c0

	sbc h                                            ; $60d5: $9c
	add hl, sp                                       ; $60d6: $39
	rst AddAOntoHL                                          ; $60d7: $ef
	cp d                                             ; $60d8: $ba
	ld l, [hl]                                       ; $60d9: $6e
	ret nz                                           ; $60da: $c0

	dec sp                                           ; $60db: $3b
	add b                                            ; $60dc: $80
	sub a                                            ; $60dd: $97
	add b                                            ; $60de: $80
	cp a                                             ; $60df: $bf
	sbc a                                            ; $60e0: $9f
	rst $38                                          ; $60e1: $ff
	or b                                             ; $60e2: $b0
	rst SubAFromDE                                          ; $60e3: $df
	adc a                                            ; $60e4: $8f
	add a                                            ; $60e5: $87
	rra                                              ; $60e6: $1f
	add b                                            ; $60e7: $80
	cp a                                             ; $60e8: $bf
	add e                                            ; $60e9: $83
	add c                                            ; $60ea: $81
	sbc [hl]                                         ; $60eb: $9e
	add b                                            ; $60ec: $80
	inc de                                           ; $60ed: $13
	add b                                            ; $60ee: $80
	ld a, a                                          ; $60ef: $7f
	cp $9b                                           ; $60f0: $fe $9b
	ld e, $7f                                        ; $60f2: $1e $7f
	ld b, c                                          ; $60f4: $41
	ccf                                              ; $60f5: $3f
	ld a, e                                          ; $60f6: $7b
	ld a, [hl]                                       ; $60f7: $7e
	inc hl                                           ; $60f8: $23
	add b                                            ; $60f9: $80
	ld a, [hl]                                       ; $60fa: $7e
	ld b, b                                          ; $60fb: $40
	sbc [hl]                                         ; $60fc: $9e
	sbc [hl]                                         ; $60fd: $9e
	ld [hl], a                                       ; $60fe: $77
	add b                                            ; $60ff: $80
	sbc [hl]                                         ; $6100: $9e
	jr nc, jr_062_60c2                               ; $6101: $30 $bf

	inc b                                            ; $6103: $04
	jr z, jr_062_6185                                ; $6104: $28 $7f

	or l                                             ; $6106: $b5
	cp l                                             ; $6107: $bd
	jr jr_062_610a                                   ; $6108: $18 $00

jr_062_610a:
	ld bc, $9745                                     ; $610a: $01 $45 $97
	add e                                            ; $610d: $83
	rst $38                                          ; $610e: $ff
	rst $38                                          ; $610f: $ff
	ld [hl], a                                       ; $6110: $77
	adc a                                            ; $6111: $8f
	sbc l                                            ; $6112: $9d
	inc bc                                           ; $6113: $03
	adc a                                            ; $6114: $8f
	cp l                                             ; $6115: $bd
	rlca                                             ; $6116: $07
	rlca                                             ; $6117: $07
	inc bc                                           ; $6118: $03
	inc bc                                           ; $6119: $03
	sbc [hl]                                         ; $611a: $9e
	ld bc, $e077                                     ; $611b: $01 $77 $e0
	rst SubAFromDE                                          ; $611e: $df
	inc h                                            ; $611f: $24
	ld a, a                                          ; $6120: $7f
	ldh [c], a                                       ; $6121: $e2
	rra                                              ; $6122: $1f
	ldh [rIE], a                                     ; $6123: $e0 $ff
	rst SubAFromDE                                          ; $6125: $df
	inc h                                            ; $6126: $24
	sbc l                                            ; $6127: $9d
	inc a                                            ; $6128: $3c
	jr jr_062_6142                                   ; $6129: $18 $17

	ldh [$9d], a                                     ; $612b: $e0 $9d
	ld h, h                                          ; $612d: $64
	inc h                                            ; $612e: $24
	sbc $3c                                          ; $612f: $de $3c
	ld a, e                                          ; $6131: $7b
	rst SubAFromDE                                          ; $6132: $df
	scf                                              ; $6133: $37
	ldh [$cb], a                                     ; $6134: $e0 $cb
	ld bc, $de84                                     ; $6136: $01 $84 $de
	push af                                          ; $6139: $f5
	call c, $fcf7                                    ; $613a: $dc $f7 $fc
	or a                                             ; $613d: $b7
	cp $b7                                           ; $613e: $fe $b7
	cp $ff                                           ; $6140: $fe $ff

jr_062_6142:
	sbc a                                            ; $6142: $9f
	sub c                                            ; $6143: $91
	rst GetHLinHL                                          ; $6144: $cf
	adc [hl]                                         ; $6145: $8e
	ei                                               ; $6146: $fb
	pop af                                           ; $6147: $f1
	rst FarCall                                          ; $6148: $f7
	and e                                            ; $6149: $a3
	xor a                                            ; $614a: $af
	xor a                                            ; $614b: $af
	add [hl]                                         ; $614c: $86
	adc a                                            ; $614d: $8f
	call $c789                                       ; $614e: $cd $89 $c7
	add [hl]                                         ; $6151: $86
	add b                                            ; $6152: $80
	sbc $c0                                          ; $6153: $de $c0
	sbc [hl]                                         ; $6155: $9e
	ldh [$7b], a                                     ; $6156: $e0 $7b
	db $fd                                           ; $6158: $fd
	add b                                            ; $6159: $80
	or b                                             ; $615a: $b0
	ldh [$a0], a                                     ; $615b: $e0 $a0
	ldh a, [$98]                                     ; $615d: $f0 $98
	ldh a, [$9c]                                     ; $615f: $f0 $9c
	ld hl, sp+$2e                                    ; $6161: $f8 $2e
	db $fc                                           ; $6163: $fc
	daa                                              ; $6164: $27
	cp $47                                           ; $6165: $fe $47
	rst $38                                          ; $6167: $ff
	ld c, l                                          ; $6168: $4d
	rst $38                                          ; $6169: $ff
	sub l                                            ; $616a: $95
	rst $38                                          ; $616b: $ff
	rra                                              ; $616c: $1f
	rst $38                                          ; $616d: $ff
	ld sp, $43e3                                     ; $616e: $31 $e3 $43
	jp nz, $8483                                     ; $6171: $c2 $83 $84

	ld b, $04                                        ; $6174: $06 $04
	inc b                                            ; $6176: $04
	nop                                              ; $6177: $00
	push hl                                          ; $6178: $e5
	adc c                                            ; $6179: $89
	cp [hl]                                          ; $617a: $be
	or $9f                                           ; $617b: $f6 $9f
	or $9f                                           ; $617d: $f6 $9f
	rst FarCall                                          ; $617f: $f7
	sbc l                                            ; $6180: $9d
	rst $38                                          ; $6181: $ff
	adc l                                            ; $6182: $8d
	rst $38                                          ; $6183: $ff
	adc h                                            ; $6184: $8c

jr_062_6185:
	rst $38                                          ; $6185: $ff
	add h                                            ; $6186: $84
	rst $38                                          ; $6187: $ff
	ld [bc], a                                       ; $6188: $02
	rst $38                                          ; $6189: $ff
	add b                                            ; $618a: $80
	rst AddAOntoHL                                          ; $618b: $ef
	add b                                            ; $618c: $80
	rst JumpTable                                          ; $618d: $c7
	add b                                            ; $618e: $80
	add e                                            ; $618f: $83
	cp h                                             ; $6190: $bc
	ld bc, $3810                                     ; $6191: $01 $10 $38
	ld a, b                                          ; $6194: $78
	inc d                                            ; $6195: $14
	add c                                            ; $6196: $81
	rst GetHLinHL                                          ; $6197: $cf
	or [hl]                                          ; $6198: $b6
	rst GetHLinHL                                          ; $6199: $cf
	rst SubAFromHL                                          ; $619a: $d7
	db $ed                                           ; $619b: $ed
	ld h, a                                          ; $619c: $67
	db $fd                                           ; $619d: $fd
	ld [hl], e                                       ; $619e: $73
	sbc $bb                                          ; $619f: $de $bb
	xor $fd                                          ; $61a1: $ee $fd
	ld a, a                                          ; $61a3: $7f
	rst $38                                          ; $61a4: $ff
	inc sp                                           ; $61a5: $33
	rst $38                                          ; $61a6: $ff
	dec e                                            ; $61a7: $1d
	rst FarCall                                          ; $61a8: $f7
	ld [hl+], a                                      ; $61a9: $22
	rst JumpTable                                          ; $61aa: $c7
	ld h, a                                          ; $61ab: $67
	rst $38                                          ; $61ac: $ff
	rra                                              ; $61ad: $1f
	call $1b1f                                       ; $61ae: $cd $1f $1b
	ld [de], a                                       ; $61b1: $12
	rra                                              ; $61b2: $1f
	inc c                                            ; $61b3: $0c
	ld bc, $03bd                                     ; $61b4: $01 $bd $03
	rlca                                             ; $61b7: $07
	rrca                                             ; $61b8: $0f
	rra                                              ; $61b9: $1f
	sbc b                                            ; $61ba: $98
	ld bc, $033f                                     ; $61bb: $01 $3f $03
	ld a, a                                          ; $61be: $7f
	rrca                                             ; $61bf: $0f
	rst $38                                          ; $61c0: $ff
	ccf                                              ; $61c1: $3f
	call c, $80ff                                    ; $61c2: $dc $ff $80
	rst AddAOntoHL                                          ; $61c5: $ef
	rst FarCall                                          ; $61c6: $f7
	rst GetHLinHL                                          ; $61c7: $cf
	ei                                               ; $61c8: $fb
	rrca                                             ; $61c9: $0f
	ld sp, hl                                        ; $61ca: $f9
	rrca                                             ; $61cb: $0f
	ldh a, [$1f]                                     ; $61cc: $f0 $1f
	ret nz                                           ; $61ce: $c0

	ld a, a                                          ; $61cf: $7f
	nop                                              ; $61d0: $00
	rst GetHLinHL                                          ; $61d1: $cf
	db $ed                                           ; $61d2: $ed
	ld [hl-], a                                      ; $61d3: $32
	db $dd                                           ; $61d4: $dd
	ld [hl-], a                                      ; $61d5: $32
	ld d, a                                          ; $61d6: $57
	cp d                                             ; $61d7: $ba
	ld c, $fb                                        ; $61d8: $0e $fb
	adc d                                            ; $61da: $8a
	rst $38                                          ; $61db: $ff
	jp z, $ea7f                                      ; $61dc: $ca $7f $ea

	cp a                                             ; $61df: $bf
	ld a, [$ea3f]                                    ; $61e0: $fa $3f $ea
	cp a                                             ; $61e3: $bf
	adc e                                            ; $61e4: $8b
	db $eb                                           ; $61e5: $eb
	ccf                                              ; $61e6: $3f
	rst AddAOntoHL                                          ; $61e7: $ef
	ccf                                              ; $61e8: $3f
	rst AddAOntoHL                                          ; $61e9: $ef
	cp c                                             ; $61ea: $b9
	rst AddAOntoHL                                          ; $61eb: $ef
	ld a, [hl-]                                      ; $61ec: $3a
	rst AddAOntoHL                                          ; $61ed: $ef
	ld e, $fe                                        ; $61ee: $1e $fe
	dec e                                            ; $61f0: $1d
	db $fd                                           ; $61f1: $fd
	inc bc                                           ; $61f2: $03
	db $eb                                           ; $61f3: $eb
	scf                                              ; $61f4: $37
	db $fd                                           ; $61f5: $fd
	ld a, a                                          ; $61f6: $7f
	jp hl                                            ; $61f7: $e9


	rst $38                                          ; $61f8: $ff
	ld [hl], a                                       ; $61f9: $77
	cp $80                                           ; $61fa: $fe $80
	jp z, $daff                                      ; $61fc: $ca $ff $da

	rst AddAOntoHL                                          ; $61ff: $ef
	ld e, d                                          ; $6200: $5a
	rst AddAOntoHL                                          ; $6201: $ef
	ld e, a                                          ; $6202: $5f
	db $eb                                           ; $6203: $eb
	ld e, a                                          ; $6204: $5f
	db $eb                                           ; $6205: $eb
	rst SubAFromHL                                          ; $6206: $d7
	db $eb                                           ; $6207: $eb
	jp c, $dae7                                      ; $6208: $da $e7 $da

	rst SubAFromBC                                          ; $620b: $e7
	jp nc, $d6ef                                     ; $620c: $d2 $ef $d6

	rst AddAOntoHL                                          ; $620f: $ef

jr_062_6210:
	add $ff                                          ; $6210: $c6 $ff
	ld e, d                                          ; $6212: $5a
	push af                                          ; $6213: $f5
	ld e, d                                          ; $6214: $5a
	push af                                          ; $6215: $f5
	ld e, e                                          ; $6216: $5b
	db $f4                                           ; $6217: $f4
	ld d, l                                          ; $6218: $55
	ld a, [$9d55]                                    ; $6219: $fa $55 $9d
	ld a, [$7b5d]                                    ; $621c: $fa $5d $7b
	cp $9e                                           ; $621f: $fe $9e
	db $dd                                           ; $6221: $dd
	ld a, e                                          ; $6222: $7b
	cp $92                                           ; $6223: $fe $92
	ld e, c                                          ; $6225: $59
	cp $56                                           ; $6226: $fe $56
	db $fd                                           ; $6228: $fd
	ld d, [hl]                                       ; $6229: $56
	db $fd                                           ; $622a: $fd
	sub $fd                                          ; $622b: $d6 $fd
	db $f4                                           ; $622d: $f4
	rst SubAFromDE                                          ; $622e: $df
	ldh a, [c]                                       ; $622f: $f2
	rst SubAFromDE                                          ; $6230: $df
	ld l, d                                          ; $6231: $6a
	ld a, e                                          ; $6232: $7b
	cp $90                                           ; $6233: $fe $90
	ld e, [hl]                                       ; $6235: $5e
	db $eb                                           ; $6236: $eb
	ld e, l                                          ; $6237: $5d
	db $eb                                           ; $6238: $eb
	ld e, e                                          ; $6239: $5b
	db $ed                                           ; $623a: $ed
	ld [hl], a                                       ; $623b: $77
	db $ed                                           ; $623c: $ed
	and a                                            ; $623d: $a7
	db $fd                                           ; $623e: $fd
	and [hl]                                         ; $623f: $a6
	db $fd                                           ; $6240: $fd
	and l                                            ; $6241: $a5
	cp $25                                           ; $6242: $fe $25
	ld a, e                                          ; $6244: $7b
	cp $9c                                           ; $6245: $fe $9c
	ld [hl+], a                                      ; $6247: $22
	rst $38                                          ; $6248: $ff
	ld [hl], d                                       ; $6249: $72
	ld a, e                                          ; $624a: $7b
	cp $9e                                           ; $624b: $fe $9e
	ld d, c                                          ; $624d: $51
	ld a, e                                          ; $624e: $7b
	cp $9d                                           ; $624f: $fe $9d
	ld c, c                                          ; $6251: $49
	rst $38                                          ; $6252: $ff
	ld d, d                                          ; $6253: $52
	ldh [hDisp1_WX], a                                     ; $6254: $e0 $96
	add b                                            ; $6256: $80
	rst $38                                          ; $6257: $ff
	add b                                            ; $6258: $80
	cp a                                             ; $6259: $bf
	adc a                                            ; $625a: $8f
	rst FarCall                                          ; $625b: $f7
	pop af                                           ; $625c: $f1
	and [hl]                                         ; $625d: $a6
	xor a                                            ; $625e: $af
	ld e, [hl]                                       ; $625f: $5e
	ldh [rSCX], a                                    ; $6260: $e0 $43
	nop                                              ; $6262: $00
	sbc [hl]                                         ; $6263: $9e
	nop                                              ; $6264: $00
	dec bc                                           ; $6265: $0b
	nop                                              ; $6266: $00
	sbc b                                            ; $6267: $98
	ld de, $00ff                                     ; $6268: $11 $ff $00
	rst $38                                          ; $626b: $ff
	ld a, $e7                                        ; $626c: $3e $e7
	ld h, e                                          ; $626e: $63
	ld h, a                                          ; $626f: $67
	nop                                              ; $6270: $00
	ld d, e                                          ; $6271: $53
	jr nz, jr_062_6210                               ; $6272: $20 $9c

	ccf                                              ; $6274: $3f
	ld a, [$47bf]                                    ; $6275: $fa $bf $47
	jr nz, @+$5d                                     ; $6278: $20 $5b

	add b                                            ; $627a: $80
	sbc [hl]                                         ; $627b: $9e
	sub a                                            ; $627c: $97
	ld [hl], e                                       ; $627d: $73
	add b                                            ; $627e: $80
	ld a, a                                          ; $627f: $7f
	cp $98                                           ; $6280: $fe $98
	sbc a                                            ; $6282: $9f
	cp e                                             ; $6283: $bb
	cp e                                             ; $6284: $bb
	rst GetHLinHL                                          ; $6285: $cf
	adc a                                            ; $6286: $8f
	rst JumpTable                                          ; $6287: $c7
	add b                                            ; $6288: $80
	inc hl                                           ; $6289: $23
	add b                                            ; $628a: $80
	sbc [hl]                                         ; $628b: $9e
	nop                                              ; $628c: $00
	inc hl                                           ; $628d: $23

jr_062_628e:
	add b                                            ; $628e: $80
	ld a, [hl]                                       ; $628f: $7e
	adc b                                            ; $6290: $88
	ld a, [hl]                                       ; $6291: $7e
	sbc [hl]                                         ; $6292: $9e
	ld [hl], a                                       ; $6293: $77
	add b                                            ; $6294: $80
	ld a, a                                          ; $6295: $7f
	cp $99                                           ; $6296: $fe $99
	ccf                                              ; $6298: $3f
	ei                                               ; $6299: $fb
	ld a, e                                          ; $629a: $7b
	rra                                              ; $629b: $1f
	ld e, $0f                                        ; $629c: $1e $0f
	cp a                                             ; $629e: $bf
	ld bc, $4fed                                     ; $629f: $01 $ed $4f
	add b                                            ; $62a2: $80
	ld h, [hl]                                       ; $62a3: $66
	and b                                            ; $62a4: $a0
	sbc h                                            ; $62a5: $9c
	add hl, sp                                       ; $62a6: $39
	rst AddAOntoHL                                          ; $62a7: $ef
	cp d                                             ; $62a8: $ba
	inc hl                                           ; $62a9: $23
	add b                                            ; $62aa: $80
	ld a, a                                          ; $62ab: $7f
	cp $99                                           ; $62ac: $fe $99
	adc [hl]                                         ; $62ae: $8e
	rst $38                                          ; $62af: $ff
	or b                                             ; $62b0: $b0
	rst SubAFromDE                                          ; $62b1: $df
	adc a                                            ; $62b2: $8f
	add a                                            ; $62b3: $87
	rra                                              ; $62b4: $1f
	add b                                            ; $62b5: $80
	sbc h                                            ; $62b6: $9c
	nop                                              ; $62b7: $00
	add e                                            ; $62b8: $83
	add b                                            ; $62b9: $80
	dec bc                                           ; $62ba: $0b
	add b                                            ; $62bb: $80
	ld a, a                                          ; $62bc: $7f
	cp $9c                                           ; $62bd: $fe $9c
	ld c, $3f                                        ; $62bf: $0e $3f
	ld hl, $7e77                                     ; $62c1: $21 $77 $7e
	inc hl                                           ; $62c4: $23
	add b                                            ; $62c5: $80
	ld a, a                                          ; $62c6: $7f
	nop                                              ; $62c7: $00
	sbc [hl]                                         ; $62c8: $9e
	sbc [hl]                                         ; $62c9: $9e
	ld [hl], a                                       ; $62ca: $77
	add b                                            ; $62cb: $80
	sbc [hl]                                         ; $62cc: $9e
	jr nc, jr_062_628e                               ; $62cd: $30 $bf

	nop                                              ; $62cf: $00
	ld a, h                                          ; $62d0: $7c
	sbc [hl]                                         ; $62d1: $9e
	jr nz, jr_062_634b                               ; $62d2: $20 $77

	ld a, [$189e]                                    ; $62d4: $fa $9e $18
	cp a                                             ; $62d7: $bf
	ld bc, $9745                                     ; $62d8: $01 $45 $97
	add e                                            ; $62db: $83
	rst $38                                          ; $62dc: $ff
	rst $38                                          ; $62dd: $ff
	ld [hl], a                                       ; $62de: $77
	adc a                                            ; $62df: $8f
	sbc l                                            ; $62e0: $9d
	inc bc                                           ; $62e1: $03
	adc a                                            ; $62e2: $8f
	cp l                                             ; $62e3: $bd
	rlca                                             ; $62e4: $07
	rlca                                             ; $62e5: $07
	inc bc                                           ; $62e6: $03
	inc bc                                           ; $62e7: $03
	sbc [hl]                                         ; $62e8: $9e
	ld bc, $e677                                     ; $62e9: $01 $77 $e6
	sbc [hl]                                         ; $62ec: $9e
	ld h, h                                          ; $62ed: $64
	inc bc                                           ; $62ee: $03
	ldh [$9c], a                                     ; $62ef: $e0 $9c
	ld a, h                                          ; $62f1: $7c
	jr c, jr_062_632c                                ; $62f2: $38 $38

	cp [hl]                                          ; $62f4: $be
	nop                                              ; $62f5: $00
	ld bc, $2345                                     ; $62f6: $01 $45 $23
	ldh [$9e], a                                     ; $62f9: $e0 $9e
	inc a                                            ; $62fb: $3c
	ld a, e                                          ; $62fc: $7b
	rst SubAFromDE                                          ; $62fd: $df
	scf                                              ; $62fe: $37
	ldh [$c4], a                                     ; $62ff: $e0 $c4
	ld bc, $de84                                     ; $6301: $01 $84 $de
	push af                                          ; $6304: $f5
	call c, $fcf7                                    ; $6305: $dc $f7 $fc
	or a                                             ; $6308: $b7
	cp $fb                                           ; $6309: $fe $fb
	cp $b7                                           ; $630b: $fe $b7
	sbc a                                            ; $630d: $9f
	sub c                                            ; $630e: $91
	rst GetHLinHL                                          ; $630f: $cf
	adc [hl]                                         ; $6310: $8e
	ei                                               ; $6311: $fb
	pop af                                           ; $6312: $f1
	rst FarCall                                          ; $6313: $f7
	and e                                            ; $6314: $a3
	xor a                                            ; $6315: $af
	xor a                                            ; $6316: $af
	add [hl]                                         ; $6317: $86
	adc a                                            ; $6318: $8f
	call $c789                                       ; $6319: $cd $89 $c7
	add [hl]                                         ; $631c: $86
	add b                                            ; $631d: $80
	sbc $c0                                          ; $631e: $de $c0
	sbc [hl]                                         ; $6320: $9e
	ldh [$7b], a                                     ; $6321: $e0 $7b
	db $fd                                           ; $6323: $fd
	add b                                            ; $6324: $80
	or b                                             ; $6325: $b0
	ldh [$a0], a                                     ; $6326: $e0 $a0
	ldh a, [$98]                                     ; $6328: $f0 $98
	ldh a, [$9c]                                     ; $632a: $f0 $9c

jr_062_632c:
	ld hl, sp+$2e                                    ; $632c: $f8 $2e
	db $fc                                           ; $632e: $fc
	daa                                              ; $632f: $27
	cp $47                                           ; $6330: $fe $47
	rst $38                                          ; $6332: $ff
	ld c, l                                          ; $6333: $4d
	rst $38                                          ; $6334: $ff
	sub l                                            ; $6335: $95
	rst $38                                          ; $6336: $ff
	rra                                              ; $6337: $1f
	rst $38                                          ; $6338: $ff
	ld sp, $43e3                                     ; $6339: $31 $e3 $43
	jp nz, $8483                                     ; $633c: $c2 $83 $84

	ld b, $04                                        ; $633f: $06 $04
	inc b                                            ; $6341: $04
	nop                                              ; $6342: $00
	push hl                                          ; $6343: $e5
	adc c                                            ; $6344: $89
	cp [hl]                                          ; $6345: $be
	or $9f                                           ; $6346: $f6 $9f
	or $9f                                           ; $6348: $f6 $9f
	rst FarCall                                          ; $634a: $f7

jr_062_634b:
	sbc l                                            ; $634b: $9d
	rst $38                                          ; $634c: $ff
	adc l                                            ; $634d: $8d
	rst $38                                          ; $634e: $ff
	adc h                                            ; $634f: $8c
	rst $38                                          ; $6350: $ff
	add h                                            ; $6351: $84
	rst $38                                          ; $6352: $ff
	ld [bc], a                                       ; $6353: $02
	rst $38                                          ; $6354: $ff
	add b                                            ; $6355: $80
	rst AddAOntoHL                                          ; $6356: $ef
	add b                                            ; $6357: $80
	rst JumpTable                                          ; $6358: $c7
	add b                                            ; $6359: $80
	add e                                            ; $635a: $83
	cp h                                             ; $635b: $bc
	ld bc, $3810                                     ; $635c: $01 $10 $38
	ld a, b                                          ; $635f: $78
	inc d                                            ; $6360: $14
	add c                                            ; $6361: $81
	rst GetHLinHL                                          ; $6362: $cf
	or [hl]                                          ; $6363: $b6
	rst GetHLinHL                                          ; $6364: $cf
	rst SubAFromHL                                          ; $6365: $d7
	db $ed                                           ; $6366: $ed
	ld h, a                                          ; $6367: $67
	db $fd                                           ; $6368: $fd
	ld [hl], e                                       ; $6369: $73
	sbc $bb                                          ; $636a: $de $bb
	cp $fd                                           ; $636c: $fe $fd
	ld h, a                                          ; $636e: $67
	rst $38                                          ; $636f: $ff
	di                                               ; $6370: $f3
	rst $38                                          ; $6371: $ff
	dec e                                            ; $6372: $1d
	rst FarCall                                          ; $6373: $f7
	ld [hl+], a                                      ; $6374: $22
	rst JumpTable                                          ; $6375: $c7
	ld h, a                                          ; $6376: $67
	rst $38                                          ; $6377: $ff
	rra                                              ; $6378: $1f
	call $1b1f                                       ; $6379: $cd $1f $1b
	ld [de], a                                       ; $637c: $12
	rra                                              ; $637d: $1f
	inc c                                            ; $637e: $0c
	ld bc, $03bd                                     ; $637f: $01 $bd $03
	rlca                                             ; $6382: $07
	rrca                                             ; $6383: $0f
	rra                                              ; $6384: $1f
	sbc b                                            ; $6385: $98
	ld bc, $033f                                     ; $6386: $01 $3f $03
	ld a, a                                          ; $6389: $7f
	rrca                                             ; $638a: $0f
	rst $38                                          ; $638b: $ff
	ccf                                              ; $638c: $3f
	call c, $80ff                                    ; $638d: $dc $ff $80
	rst AddAOntoHL                                          ; $6390: $ef
	rst FarCall                                          ; $6391: $f7
	rst GetHLinHL                                          ; $6392: $cf
	ei                                               ; $6393: $fb
	rrca                                             ; $6394: $0f
	ld sp, hl                                        ; $6395: $f9
	rrca                                             ; $6396: $0f
	ldh a, [$1f]                                     ; $6397: $f0 $1f
	ret nz                                           ; $6399: $c0

	ld a, a                                          ; $639a: $7f
	nop                                              ; $639b: $00
	rst GetHLinHL                                          ; $639c: $cf
	db $ed                                           ; $639d: $ed
	ld [hl-], a                                      ; $639e: $32
	db $dd                                           ; $639f: $dd
	ld [hl-], a                                      ; $63a0: $32
	ld d, a                                          ; $63a1: $57
	cp d                                             ; $63a2: $ba
	ld c, $fb                                        ; $63a3: $0e $fb
	adc d                                            ; $63a5: $8a
	rst $38                                          ; $63a6: $ff
	jp z, $ea7f                                      ; $63a7: $ca $7f $ea

	ccf                                              ; $63aa: $3f
	ld a, [$ea3f]                                    ; $63ab: $fa $3f $ea
	cp a                                             ; $63ae: $bf
	adc e                                            ; $63af: $8b
	db $eb                                           ; $63b0: $eb
	ccf                                              ; $63b1: $3f
	rst AddAOntoHL                                          ; $63b2: $ef
	ccf                                              ; $63b3: $3f
	rst AddAOntoHL                                          ; $63b4: $ef
	cp c                                             ; $63b5: $b9
	rst AddAOntoHL                                          ; $63b6: $ef
	ld a, [hl-]                                      ; $63b7: $3a
	rst AddAOntoHL                                          ; $63b8: $ef
	ld e, $fe                                        ; $63b9: $1e $fe
	dec e                                            ; $63bb: $1d
	db $fd                                           ; $63bc: $fd
	inc bc                                           ; $63bd: $03
	db $eb                                           ; $63be: $eb
	scf                                              ; $63bf: $37
	db $fd                                           ; $63c0: $fd
	ld a, a                                          ; $63c1: $7f
	jp hl                                            ; $63c2: $e9


	rst $38                                          ; $63c3: $ff
	ld [hl], a                                       ; $63c4: $77
	cp $80                                           ; $63c5: $fe $80
	jp z, $daff                                      ; $63c7: $ca $ff $da

	rst AddAOntoHL                                          ; $63ca: $ef
	ld e, d                                          ; $63cb: $5a
	rst AddAOntoHL                                          ; $63cc: $ef
	ld e, a                                          ; $63cd: $5f
	db $eb                                           ; $63ce: $eb
	ld e, a                                          ; $63cf: $5f
	db $eb                                           ; $63d0: $eb
	rst SubAFromHL                                          ; $63d1: $d7
	db $eb                                           ; $63d2: $eb
	jp c, $dae7                                      ; $63d3: $da $e7 $da

	rst SubAFromBC                                          ; $63d6: $e7
	jp nc, $d6ef                                     ; $63d7: $d2 $ef $d6

	rst AddAOntoHL                                          ; $63da: $ef

jr_062_63db:
	add $ff                                          ; $63db: $c6 $ff
	ld e, d                                          ; $63dd: $5a
	push af                                          ; $63de: $f5
	ld e, d                                          ; $63df: $5a
	push af                                          ; $63e0: $f5
	ld e, e                                          ; $63e1: $5b
	db $f4                                           ; $63e2: $f4
	ld d, l                                          ; $63e3: $55
	ld a, [$9d55]                                    ; $63e4: $fa $55 $9d
	ld a, [$7b5d]                                    ; $63e7: $fa $5d $7b
	cp $9e                                           ; $63ea: $fe $9e
	db $dd                                           ; $63ec: $dd
	ld a, e                                          ; $63ed: $7b
	cp $92                                           ; $63ee: $fe $92
	ld e, c                                          ; $63f0: $59
	cp $56                                           ; $63f1: $fe $56
	db $fd                                           ; $63f3: $fd
	ld d, [hl]                                       ; $63f4: $56
	db $fd                                           ; $63f5: $fd
	sub $fd                                          ; $63f6: $d6 $fd
	db $f4                                           ; $63f8: $f4
	rst SubAFromDE                                          ; $63f9: $df
	ldh a, [c]                                       ; $63fa: $f2
	rst SubAFromDE                                          ; $63fb: $df
	ld l, d                                          ; $63fc: $6a
	ld a, e                                          ; $63fd: $7b
	cp $90                                           ; $63fe: $fe $90
	ld e, [hl]                                       ; $6400: $5e
	db $eb                                           ; $6401: $eb
	ld e, l                                          ; $6402: $5d
	db $eb                                           ; $6403: $eb
	ld e, e                                          ; $6404: $5b
	db $ed                                           ; $6405: $ed
	ld [hl], a                                       ; $6406: $77
	db $ed                                           ; $6407: $ed
	and a                                            ; $6408: $a7
	db $fd                                           ; $6409: $fd
	and [hl]                                         ; $640a: $a6
	db $fd                                           ; $640b: $fd
	and l                                            ; $640c: $a5
	cp $25                                           ; $640d: $fe $25
	ld a, e                                          ; $640f: $7b
	cp $9c                                           ; $6410: $fe $9c
	ld [hl+], a                                      ; $6412: $22
	rst $38                                          ; $6413: $ff
	ld [hl], d                                       ; $6414: $72
	ld a, e                                          ; $6415: $7b
	cp $9e                                           ; $6416: $fe $9e
	ld d, c                                          ; $6418: $51
	ld a, e                                          ; $6419: $7b
	cp $9d                                           ; $641a: $fe $9d
	ld c, c                                          ; $641c: $49
	rst $38                                          ; $641d: $ff
	ld d, d                                          ; $641e: $52
	ldh [hDisp1_WX], a                                     ; $641f: $e0 $96
	add b                                            ; $6421: $80
	rst $38                                          ; $6422: $ff
	add b                                            ; $6423: $80
	rst $38                                          ; $6424: $ff
	sbc a                                            ; $6425: $9f
	rst FarCall                                          ; $6426: $f7
	pop af                                           ; $6427: $f1
	and [hl]                                         ; $6428: $a6
	xor a                                            ; $6429: $af
	ld e, [hl]                                       ; $642a: $5e
	ldh [rSCX], a                                    ; $642b: $e0 $43
	nop                                              ; $642d: $00
	sbc [hl]                                         ; $642e: $9e
	nop                                              ; $642f: $00
	dec bc                                           ; $6430: $0b

jr_062_6431:
	nop                                              ; $6431: $00
	sbc b                                            ; $6432: $98
	ld de, $00ff                                     ; $6433: $11 $ff $00
	rst $38                                          ; $6436: $ff
	ld a, $e7                                        ; $6437: $3e $e7
	ld h, e                                          ; $6439: $63
	ld h, a                                          ; $643a: $67
	nop                                              ; $643b: $00
	dec hl                                           ; $643c: $2b
	jr nz, jr_062_63db                               ; $643d: $20 $9c

	add hl, sp                                       ; $643f: $39
	rst AddAOntoHL                                          ; $6440: $ef
	cp d                                             ; $6441: $ba
	ld l, a                                          ; $6442: $6f
	jr nz, @+$6d                                     ; $6443: $20 $6b

	add b                                            ; $6445: $80
	sbc d                                            ; $6446: $9a
	di                                               ; $6447: $f3
	cp $bb                                           ; $6448: $fe $bb
	sbc a                                            ; $644a: $9f
	sub a                                            ; $644b: $97
	ld [hl], e                                       ; $644c: $73
	add b                                            ; $644d: $80
	ld a, e                                          ; $644e: $7b
	ld a, [hl]                                       ; $644f: $7e
	rst SubAFromDE                                          ; $6450: $df
	cp e                                             ; $6451: $bb
	sbc e                                            ; $6452: $9b
	rst GetHLinHL                                          ; $6453: $cf

jr_062_6454:
	adc a                                            ; $6454: $8f
	rst JumpTable                                          ; $6455: $c7
	add b                                            ; $6456: $80
	inc hl                                           ; $6457: $23
	add b                                            ; $6458: $80
	sbc [hl]                                         ; $6459: $9e
	nop                                              ; $645a: $00
	dec hl                                           ; $645b: $2b
	add b                                            ; $645c: $80
	sbc h                                            ; $645d: $9c
	rst AddAOntoHL                                          ; $645e: $ef
	db $fd                                           ; $645f: $fd
	ld a, a                                          ; $6460: $7f
	ld l, e                                          ; $6461: $6b
	add b                                            ; $6462: $80
	ld a, a                                          ; $6463: $7f
	cp $99                                           ; $6464: $fe $99
	ccf                                              ; $6466: $3f
	rst FarCall                                          ; $6467: $f7
	ld [hl], a                                       ; $6468: $77
	rra                                              ; $6469: $1f
	ld e, $0f                                        ; $646a: $1e $0f
	cp a                                             ; $646c: $bf
	ld bc, $3fde                                     ; $646d: $01 $de $3f
	and b                                            ; $6470: $a0
	sub a                                            ; $6471: $97
	add b                                            ; $6472: $80
	cp a                                             ; $6473: $bf
	adc [hl]                                         ; $6474: $8e
	rst $38                                          ; $6475: $ff
	or b                                             ; $6476: $b0
	rst SubAFromDE                                          ; $6477: $df
	adc a                                            ; $6478: $8f
	add a                                            ; $6479: $87
	rra                                              ; $647a: $1f
	and b                                            ; $647b: $a0
	sbc h                                            ; $647c: $9c
	nop                                              ; $647d: $00
	add e                                            ; $647e: $83
	add b                                            ; $647f: $80
	dec bc                                           ; $6480: $0b
	and b                                            ; $6481: $a0
	ld a, a                                          ; $6482: $7f
	cp $9c                                           ; $6483: $fe $9c
	ld c, $3f                                        ; $6485: $0e $3f
	ld hl, $9e77                                     ; $6487: $21 $77 $9e
	inc hl                                           ; $648a: $23
	jr nz, jr_062_650b                               ; $648b: $20 $7e

	ld b, b                                          ; $648d: $40
	sbc [hl]                                         ; $648e: $9e
	sbc [hl]                                         ; $648f: $9e
	ld [hl], a                                       ; $6490: $77
	jr nz, jr_062_6431                               ; $6491: $20 $9e

	jr nc, jr_062_6454                               ; $6493: $30 $bf

	nop                                              ; $6495: $00
	ld c, b                                          ; $6496: $48
	sbc l                                            ; $6497: $9d
	db $10                                           ; $6498: $10
	inc e                                            ; $6499: $1c
	cp l                                             ; $649a: $bd
	nop                                              ; $649b: $00
	jr jr_062_649f                                   ; $649c: $18 $01

	ld b, l                                          ; $649e: $45

jr_062_649f:
	sub a                                            ; $649f: $97
	add e                                            ; $64a0: $83
	rst $38                                          ; $64a1: $ff
	rst $38                                          ; $64a2: $ff
	ld [hl], a                                       ; $64a3: $77
	adc a                                            ; $64a4: $8f
	sbc l                                            ; $64a5: $9d
	inc bc                                           ; $64a6: $03
	adc a                                            ; $64a7: $8f
	cp l                                             ; $64a8: $bd
	rlca                                             ; $64a9: $07
	rlca                                             ; $64aa: $07
	inc bc                                           ; $64ab: $03
	inc bc                                           ; $64ac: $03
	sbc [hl]                                         ; $64ad: $9e
	ld bc, $e073                                     ; $64ae: $01 $73 $e0
	sbc l                                            ; $64b1: $9d
	ld [$0b5c], sp                                   ; $64b2: $08 $5c $0b
	ldh [$9c], a                                     ; $64b5: $e0 $9c
	ld a, h                                          ; $64b7: $7c
	jr c, jr_062_64f2                                ; $64b8: $38 $38

	cp [hl]                                          ; $64ba: $be
	nop                                              ; $64bb: $00
	ld bc, $2345                                     ; $64bc: $01 $45 $23
	ldh [rPCM34], a                                  ; $64bf: $e0 $77
	sbc $37                                          ; $64c1: $de $37
	ldh [rAUD3HIGH], a                               ; $64c3: $e0 $1e
	ld [bc], a                                       ; $64c5: $02
	ei                                               ; $64c6: $fb
	db $dd                                           ; $64c7: $dd
	ld bc, $0299                                     ; $64c8: $01 $99 $02
	inc bc                                           ; $64cb: $03
	inc bc                                           ; $64cc: $03
	ld [bc], a                                       ; $64cd: $02
	dec b                                            ; $64ce: $05
	ld b, $67                                        ; $64cf: $06 $67
	cp $97                                           ; $64d1: $fe $97
	inc b                                            ; $64d3: $04
	rlca                                             ; $64d4: $07
	ld [bc], a                                       ; $64d5: $02
	inc bc                                           ; $64d6: $03
	ld [bc], a                                       ; $64d7: $02
	inc bc                                           ; $64d8: $03
	ld bc, $6701                                     ; $64d9: $01 $01 $67
	ldh [$df], a                                     ; $64dc: $e0 $df
	inc bc                                           ; $64de: $03
	adc c                                            ; $64df: $89
	ld b, $07                                        ; $64e0: $06 $07
	dec b                                            ; $64e2: $05
	ld b, $0a                                        ; $64e3: $06 $0a
	dec c                                            ; $64e5: $0d
	dec bc                                           ; $64e6: $0b
	ld c, $0f                                        ; $64e7: $0e $0f
	inc c                                            ; $64e9: $0c
	dec e                                            ; $64ea: $1d
	ld a, [de]                                       ; $64eb: $1a
	ld a, [de]                                       ; $64ec: $1a
	dec d                                            ; $64ed: $15
	ld a, [hl+]                                      ; $64ee: $2a
	dec [hl]                                         ; $64ef: $35
	dec [hl]                                         ; $64f0: $35
	ld a, [hl+]                                      ; $64f1: $2a

jr_062_64f2:
	dec [hl]                                         ; $64f2: $35
	ld a, [hl+]                                      ; $64f3: $2a
	ld d, l                                          ; $64f4: $55
	ld l, d                                          ; $64f5: $6a
	ldh [$c1], a                                     ; $64f6: $e0 $c1
	sub l                                            ; $64f8: $95
	ld e, a                                          ; $64f9: $5f
	ld h, b                                          ; $64fa: $60
	cp a                                             ; $64fb: $bf
	ret nz                                           ; $64fc: $c0

	rst $38                                          ; $64fd: $ff
	add b                                            ; $64fe: $80
	ld a, a                                          ; $64ff: $7f
	add b                                            ; $6500: $80
	rst $38                                          ; $6501: $ff
	nop                                              ; $6502: $00
	ld l, a                                          ; $6503: $6f
	cp $f4                                           ; $6504: $fe $f4
	sbc h                                            ; $6506: $9c
	add b                                            ; $6507: $80
	nop                                              ; $6508: $00
	ret nz                                           ; $6509: $c0

	pop af                                           ; $650a: $f1

jr_062_650b:
	rst SubAFromDE                                          ; $650b: $df
	inc bc                                           ; $650c: $03
	ld a, a                                          ; $650d: $7f
	ld h, [hl]                                       ; $650e: $66
	sbc l                                            ; $650f: $9d
	ld [$6f0f], sp                                   ; $6510: $08 $0f $6f
	cp $80                                           ; $6513: $fe $80
	inc e                                            ; $6515: $1c
	rra                                              ; $6516: $1f
	ld [de], a                                       ; $6517: $12
	rra                                              ; $6518: $1f
	inc sp                                           ; $6519: $33
	ccf                                              ; $651a: $3f
	ld a, h                                          ; $651b: $7c
	ld a, a                                          ; $651c: $7f
	db $e3                                           ; $651d: $e3
	db $fc                                           ; $651e: $fc
	sbc a                                            ; $651f: $9f
	ldh [$6c], a                                     ; $6520: $e0 $6c
	sub e                                            ; $6522: $93
	sbc e                                            ; $6523: $9b
	ld h, h                                          ; $6524: $64
	scf                                              ; $6525: $37
	ret z                                            ; $6526: $c8

	ld l, [hl]                                       ; $6527: $6e
	sub c                                            ; $6528: $91
	xor [hl]                                         ; $6529: $ae
	ld b, c                                          ; $652a: $41
	ld a, c                                          ; $652b: $79
	add d                                            ; $652c: $82
	ld d, h                                          ; $652d: $54
	add d                                            ; $652e: $82
	jp nc, $aa04                                     ; $652f: $d2 $04 $aa

	inc b                                            ; $6532: $04
	and c                                            ; $6533: $a1
	sbc d                                            ; $6534: $9a
	inc c                                            ; $6535: $0c
	sub l                                            ; $6536: $95
	ld [$0895], sp                                   ; $6537: $08 $95 $08
	ldh [$a7], a                                     ; $653a: $e0 $a7
	ld a, d                                          ; $653c: $7a
	adc $9c                                          ; $653d: $ce $9c
	ld [bc], a                                       ; $653f: $02
	inc b                                            ; $6540: $04
	inc b                                            ; $6541: $04
	pop af                                           ; $6542: $f1
	rst SubAFromDE                                          ; $6543: $df
	ret nz                                           ; $6544: $c0

	add b                                            ; $6545: $80
	ld sp, $cef1                                     ; $6546: $31 $f1 $ce
	ccf                                              ; $6549: $3f
	pop af                                           ; $654a: $f1
	rrca                                             ; $654b: $0f
	inc a                                            ; $654c: $3c
	jp $39c6                                         ; $654d: $c3 $c6 $39


	ld h, e                                          ; $6550: $63
	sbc a                                            ; $6551: $9f
	inc a                                            ; $6552: $3c
	rst $38                                          ; $6553: $ff
	ret nz                                           ; $6554: $c0

	rst $38                                          ; $6555: $ff
	ld [hl], b                                       ; $6556: $70
	adc a                                            ; $6557: $8f
	ld sp, hl                                        ; $6558: $f9
	ld b, $3d                                        ; $6559: $06 $3d
	jp nz, $02fd                                     ; $655b: $c2 $fd $02

	cp a                                             ; $655e: $bf
	ld b, b                                          ; $655f: $40
	ld [hl], a                                       ; $6560: $77
	add b                                            ; $6561: $80
	push de                                          ; $6562: $d5
	ld [hl+], a                                      ; $6563: $22
	ld c, h                                          ; $6564: $4c
	sub b                                            ; $6565: $90
	ld [hl+], a                                      ; $6566: $22
	ld c, b                                          ; $6567: $48
	ld [hl+], a                                      ; $6568: $22
	ret nz                                           ; $6569: $c0

	ld [hl+], a                                      ; $656a: $22
	nop                                              ; $656b: $00
	and d                                            ; $656c: $a2
	ld a, [bc]                                       ; $656d: $0a
	and d                                            ; $656e: $a2
	ld c, a                                          ; $656f: $4f
	and d                                            ; $6570: $a2
	ld l, d                                          ; $6571: $6a
	and a                                            ; $6572: $a7
	ld a, [hl+]                                      ; $6573: $2a
	rst SubAFromBC                                          ; $6574: $e7
	ldh [$c1], a                                     ; $6575: $e0 $c1
	add l                                            ; $6577: $85
	ld b, $08                                        ; $6578: $06 $08
	ld b, $0c                                        ; $657a: $06 $0c
	ld [bc], a                                       ; $657c: $02
	inc b                                            ; $657d: $04
	inc bc                                           ; $657e: $03
	ld b, $01                                        ; $657f: $06 $01
	ld [bc], a                                       ; $6581: $02
	ld bc, $0203                                     ; $6582: $01 $03 $02
	rlca                                             ; $6585: $07
	inc b                                            ; $6586: $04
	inc c                                            ; $6587: $0c
	ld [$1018], sp                                   ; $6588: $08 $18 $10
	jr nc, jr_062_65ad                               ; $658b: $30 $20

	jr nz, jr_062_65cf                               ; $658d: $20 $40

jr_062_658f:
	ld b, b                                          ; $658f: $40
	add b                                            ; $6590: $80
	add b                                            ; $6591: $80
	db $eb                                           ; $6592: $eb
	rst SubAFromDE                                          ; $6593: $df
	db $fd                                           ; $6594: $fd
	add b                                            ; $6595: $80
	ld [bc], a                                       ; $6596: $02
	rst $38                                          ; $6597: $ff
	dec hl                                           ; $6598: $2b
	db $fc                                           ; $6599: $fc
	ld [hl], c                                       ; $659a: $71
	cp $e3                                           ; $659b: $fe $e3
	db $fc                                           ; $659d: $fc
	ld c, a                                          ; $659e: $4f
	ldh a, [$e3]                                     ; $659f: $f0 $e3
	db $fc                                           ; $65a1: $fc
	inc e                                            ; $65a2: $1c
	rst $38                                          ; $65a3: $ff
	inc bc                                           ; $65a4: $03
	rst $38                                          ; $65a5: $ff
	ldh a, [rIF]                                     ; $65a6: $f0 $0f
	db $fd                                           ; $65a8: $fd
	inc bc                                           ; $65a9: $03
	rst $38                                          ; $65aa: $ff
	ld [bc], a                                       ; $65ab: $02
	rst $38                                          ; $65ac: $ff

jr_062_65ad:
	ld [bc], a                                       ; $65ad: $02
	db $fd                                           ; $65ae: $fd
	inc bc                                           ; $65af: $03
	cp [hl]                                          ; $65b0: $be
	ld bc, $00d7                                     ; $65b1: $01 $d7 $00
	db $db                                           ; $65b4: $db
	sub b                                            ; $65b5: $90
	nop                                              ; $65b6: $00
	adc e                                            ; $65b7: $8b
	ld b, b                                          ; $65b8: $40
	adc c                                            ; $65b9: $89
	ld b, b                                          ; $65ba: $40
	and c                                            ; $65bb: $a1
	ld b, b                                          ; $65bc: $40
	jr nz, jr_062_65ff                               ; $65bd: $20 $40

	ld h, $40                                        ; $65bf: $26 $40
	ld d, h                                          ; $65c1: $54
	ld [hl+], a                                      ; $65c2: $22
	push de                                          ; $65c3: $d5
	ld [hl+], a                                      ; $65c4: $22
	ldh [$c1], a                                     ; $65c5: $e0 $c1
	sub l                                            ; $65c7: $95
	db $10                                           ; $65c8: $10
	jr jr_062_65eb                                   ; $65c9: $18 $20

	db $10                                           ; $65cb: $10
	ld b, b                                          ; $65cc: $40
	jr nz, jr_062_658f                               ; $65cd: $20 $c0

jr_062_65cf:
	nop                                              ; $65cf: $00
	add b                                            ; $65d0: $80
	ld b, b                                          ; $65d1: $40
	ld a, d                                          ; $65d2: $7a
	ld [hl-], a                                      ; $65d3: $32
	ldh [$be], a                                     ; $65d4: $e0 $be
	rst SubAFromDE                                          ; $65d6: $df
	db $fc                                           ; $65d7: $fc
	ld a, a                                          ; $65d8: $7f
	ld d, e                                          ; $65d9: $53
	add b                                            ; $65da: $80
	sub a                                            ; $65db: $97
	ld l, h                                          ; $65dc: $6c
	ld l, l                                          ; $65dd: $6d
	sbc d                                            ; $65de: $9a
	ld [$f71d], a                                    ; $65df: $ea $1d $f7
	rrca                                             ; $65e2: $0f
	sbc d                                            ; $65e3: $9a
	ld l, l                                          ; $65e4: $6d
	dec a                                            ; $65e5: $3d
	jp z, $fc8f                                      ; $65e6: $ca $8f $fc

	ld a, a                                          ; $65e9: $7f
	di                                               ; $65ea: $f3

jr_062_65eb:
	db $e3                                           ; $65eb: $e3
	db $fd                                           ; $65ec: $fd
	ld a, h                                          ; $65ed: $7c
	ld e, h                                          ; $65ee: $5c
	jp hl                                            ; $65ef: $e9


	cp a                                             ; $65f0: $bf
	rst JumpTable                                          ; $65f1: $c7
	ld a, a                                          ; $65f2: $7f
	adc b                                            ; $65f3: $88
	rst SubAFromBC                                          ; $65f4: $e7
	inc [hl]                                         ; $65f5: $34
	set 1, d                                         ; $65f6: $cb $ca
	dec d                                            ; $65f8: $15
	jp z, $1792                                      ; $65f9: $ca $92 $17

	sub a                                            ; $65fc: $97
	ld c, e                                          ; $65fd: $4b
	xor l                                            ; $65fe: $ad

jr_062_65ff:
	ld c, e                                          ; $65ff: $4b
	xor c                                            ; $6600: $a9
	ld b, a                                          ; $6601: $47
	adc h                                            ; $6602: $8c
	ld h, a                                          ; $6603: $67
	sbc d                                            ; $6604: $9a
	ld h, a                                          ; $6605: $67
	ld l, d                                          ; $6606: $6a
	scf                                              ; $6607: $37
	ldh [$8d], a                                     ; $6608: $e0 $8d
	rst SubAFromDE                                          ; $660a: $df
	ldh [$80], a                                     ; $660b: $e0 $80
	ld [hl], b                                       ; $660d: $70
	ret nc                                           ; $660e: $d0

	ret c                                            ; $660f: $d8

	add sp, -$04                                     ; $6610: $e8 $fc
	db $fc                                           ; $6612: $fc
	sbc [hl]                                         ; $6613: $9e
	ldh a, [c]                                       ; $6614: $f2
	sbc $be                                          ; $6615: $de $be
	ld l, h                                          ; $6617: $6c
	db $f4                                           ; $6618: $f4
	cp h                                             ; $6619: $bc
	call z, $f949                                    ; $661a: $cc $49 $f9
	cp $ff                                           ; $661d: $fe $ff
	call c, $feb7                                    ; $661f: $dc $b7 $fe
	rst AddAOntoHL                                          ; $6622: $ef
	cp a                                             ; $6623: $bf
	rst FarCall                                          ; $6624: $f7
	ld a, a                                          ; $6625: $7f
	db $fc                                           ; $6626: $fc
	add b                                            ; $6627: $80
	di                                               ; $6628: $f3
	ldh [rIE], a                                     ; $6629: $e0 $ff
	adc a                                            ; $662b: $8f
	add b                                            ; $662c: $80
	rst GetHLinHL                                          ; $662d: $cf
	ld h, b                                          ; $662e: $60
	ld hl, sp-$68                                    ; $662f: $f8 $98
	rst SubAFromDE                                          ; $6631: $df
	rst JumpTable                                          ; $6632: $c7
	rst SubAFromBC                                          ; $6633: $e7
	ldh [$f8], a                                     ; $6634: $e0 $f8
	ld e, b                                          ; $6636: $58
	rst $38                                          ; $6637: $ff
	ld l, a                                          ; $6638: $6f
	rst FarCall                                          ; $6639: $f7
	or a                                             ; $663a: $b7
	ld hl, sp-$24                                    ; $663b: $f8 $dc
	rst $38                                          ; $663d: $ff
	xor a                                            ; $663e: $af
	rst $38                                          ; $663f: $ff
	ld b, b                                          ; $6640: $40
	rst $38                                          ; $6641: $ff
	ccf                                              ; $6642: $3f
	rst $38                                          ; $6643: $ff
	jr @+$01                                         ; $6644: $18 $ff

	ld a, a                                          ; $6646: $7f
	rst $38                                          ; $6647: $ff
	add c                                            ; $6648: $81
	rst $38                                          ; $6649: $ff
	rst AddAOntoHL                                          ; $664a: $ef
	rst $38                                          ; $664b: $ff
	sub e                                            ; $664c: $93
	jp nc, $febe                                     ; $664d: $d2 $be $fe

	sbc $f4                                          ; $6650: $de $f4
	sbc h                                            ; $6652: $9c
	ld hl, sp+$58                                    ; $6653: $f8 $58
	ret nc                                           ; $6655: $d0

	or b                                             ; $6656: $b0
	cp b                                             ; $6657: $b8
	ld a, b                                          ; $6658: $78
	sbc $ff                                          ; $6659: $de $ff
	ld a, a                                          ; $665b: $7f
	rrca                                             ; $665c: $0f
	ld a, b                                          ; $665d: $78

jr_062_665e:
	add sp, -$65                                     ; $665e: $e8 $9b
	rrca                                             ; $6660: $0f
	nop                                              ; $6661: $00
	inc bc                                           ; $6662: $03
	nop                                              ; $6663: $00
	ld l, b                                          ; $6664: $68
	ld [hl], e                                       ; $6665: $73
	ldh [$d5], a                                     ; $6666: $e0 $d5
	inc sp                                           ; $6668: $33
	call $e0df                                       ; $6669: $cd $df $e0
	sbc l                                            ; $666c: $9d
	db $10                                           ; $666d: $10
	ldh a, [rPCM34]                                  ; $666e: $f0 $77
	cp $df                                           ; $6670: $fe $df
	ldh [$df], a                                     ; $6672: $e0 $df
	add b                                            ; $6674: $80
	sbc h                                            ; $6675: $9c
	ld b, b                                          ; $6676: $40
	ret nz                                           ; $6677: $c0

	ld b, b                                          ; $6678: $40
	sbc $c0                                          ; $6679: $de $c0
	sbc h                                            ; $667b: $9c
	and b                                            ; $667c: $a0
	ld h, b                                          ; $667d: $60
	jr nz, jr_062_665e                               ; $667e: $20 $de

	ldh [$67], a                                     ; $6680: $e0 $67
	ld a, [$ee77]                                    ; $6682: $fa $77 $ee
	rst SubAFromDE                                          ; $6685: $df
	ret nz                                           ; $6686: $c0

	db $db                                           ; $6687: $db
	add b                                            ; $6688: $80
	rst AddAOntoHL                                          ; $6689: $ef
	rst SubAFromDE                                          ; $668a: $df
	add b                                            ; $668b: $80
	sbc [hl]                                         ; $668c: $9e
	ld h, b                                          ; $668d: $60
	ld a, e                                          ; $668e: $7b
	ret nz                                           ; $668f: $c0

	sub d                                            ; $6690: $92
	ld [$04f8], sp                                   ; $6691: $08 $f8 $04
	db $fc                                           ; $6694: $fc
	ld [bc], a                                       ; $6695: $02
	cp $01                                           ; $6696: $fe $01
	rst $38                                          ; $6698: $ff
	ld a, a                                          ; $6699: $7f
	nop                                              ; $669a: $00
	ccf                                              ; $669b: $3f
	nop                                              ; $669c: $00
	rra                                              ; $669d: $1f
	ld a, e                                          ; $669e: $7b
	ld h, d                                          ; $669f: $62
	sbc [hl]                                         ; $66a0: $9e
	rlca                                             ; $66a1: $07
	ld [hl], e                                       ; $66a2: $73
	ld h, b                                          ; $66a3: $60
	ld d, a                                          ; $66a4: $57
	sub c                                            ; $66a5: $91
	ld [hl], a                                       ; $66a6: $77
	ldh a, [c]                                       ; $66a7: $f2
	ld a, a                                          ; $66a8: $7f
	db $ec                                           ; $66a9: $ec
	ld a, a                                          ; $66aa: $7f
	cp $91                                           ; $66ab: $fe $91
	rlca                                             ; $66ad: $07
	ld bc, $0307                                     ; $66ae: $01 $07 $03
	ld c, $07                                        ; $66b1: $0e $07
	inc e                                            ; $66b3: $1c
	rrca                                             ; $66b4: $0f
	jr c, jr_062_66d6                                ; $66b5: $38 $1f

	ld [hl], b                                       ; $66b7: $70
	ccf                                              ; $66b8: $3f
	ldh [$7f], a                                     ; $66b9: $e0 $7f
	ccf                                              ; $66bb: $3f
	or d                                             ; $66bc: $b2
	rst SubAFromDE                                          ; $66bd: $df

jr_062_66be:
	add b                                            ; $66be: $80
	ld a, e                                          ; $66bf: $7b
	ld a, l                                          ; $66c0: $7d
	sbc h                                            ; $66c1: $9c
	ld b, b                                          ; $66c2: $40
	ldh [rAUD4LEN], a                                ; $66c3: $e0 $20
	ld [hl], a                                       ; $66c5: $77
	cp $73                                           ; $66c6: $fe $73

jr_062_66c8:
	ld l, c                                          ; $66c8: $69

jr_062_66c9:
	ld h, a                                          ; $66c9: $67
	cp $8a                                           ; $66ca: $fe $8a
	jr nc, jr_062_66be                               ; $66cc: $30 $f0

	jr nc, jr_062_66c8                               ; $66ce: $30 $f8

	ld a, b                                          ; $66d0: $78
	ret c                                            ; $66d1: $d8

	ld hl, sp-$64                                    ; $66d2: $f8 $9c
	db $f4                                           ; $66d4: $f4
	inc e                                            ; $66d5: $1c

jr_062_66d6:
	db $f4                                           ; $66d6: $f4

jr_062_66d7:
	ld e, $fa                                        ; $66d7: $1e $fa
	ld e, $f6                                        ; $66d9: $1e $f6
	ld e, $f2                                        ; $66db: $1e $f2
	rrca                                             ; $66dd: $0f
	ei                                               ; $66de: $fb
	ld c, a                                          ; $66df: $4f
	cp a                                             ; $66e0: $bf
	pop af                                           ; $66e1: $f1
	ld h, $00                                        ; $66e2: $26 $00
	sub b                                            ; $66e4: $90
	call z, $8899                                    ; $66e5: $cc $99 $88
	adc b                                            ; $66e8: $88
	call nz, $9199                                   ; $66e9: $c4 $99 $91
	adc b                                            ; $66ec: $88
	adc b                                            ; $66ed: $88
	ld de, $11aa                                     ; $66ee: $11 $aa $11
	adc b                                            ; $66f1: $88
	adc b                                            ; $66f2: $88
	nop                                              ; $66f3: $00
	ld [hl], a                                       ; $66f4: $77
	ei                                               ; $66f5: $fb
	sbc [hl]                                         ; $66f6: $9e
	ld bc, $fb77                                     ; $66f7: $01 $77 $fb
	ld a, a                                          ; $66fa: $7f
	pop af                                           ; $66fb: $f1
	sub h                                            ; $66fc: $94
	and d                                            ; $66fd: $a2
	add hl, de                                       ; $66fe: $19
	ld d, l                                          ; $66ff: $55
	ld b, h                                          ; $6700: $44
	sbc c                                            ; $6701: $99
	sbc c                                            ; $6702: $99
	call z, Call_062_5d55                            ; $6703: $cc $55 $5d
	db $dd                                           ; $6706: $dd
	xor $d3                                          ; $6707: $ee $d3
	ld bc, $559d                                     ; $6709: $01 $9d $55
	ld l, d                                          ; $670c: $6a
	ld [hl], a                                       ; $670d: $77
	cp $89                                           ; $670e: $fe $89
	ld b, l                                          ; $6710: $45
	ld a, d                                          ; $6711: $7a
	ld c, a                                          ; $6712: $4f
	ld a, d                                          ; $6713: $7a
	ld c, [hl]                                       ; $6714: $4e
	ld a, e                                          ; $6715: $7b
	dec hl                                           ; $6716: $2b
	dec a                                            ; $6717: $3d
	add hl, hl                                       ; $6718: $29
	ccf                                              ; $6719: $3f
	dec h                                            ; $671a: $25
	ccf                                              ; $671b: $3f
	inc d                                            ; $671c: $14
	rra                                              ; $671d: $1f
	ld a, [bc]                                       ; $671e: $0a
	rrca                                             ; $671f: $0f
	ld b, $07                                        ; $6720: $06 $07
	inc bc                                           ; $6722: $03
	inc bc                                           ; $6723: $03
	ld bc, $e901                                     ; $6724: $01 $01 $e9
	rst SubAFromDE                                          ; $6727: $df
	ld bc, $0280                                     ; $6728: $01 $80 $02
	inc bc                                           ; $672b: $03
	dec b                                            ; $672c: $05
	ld b, $0b                                        ; $672d: $06 $0b
	inc c                                            ; $672f: $0c
	rla                                              ; $6730: $17
	jr jr_062_6762                                   ; $6731: $18 $2f

	jr nc, jr_062_66c9                               ; $6733: $30 $94

	add hl, bc                                       ; $6735: $09
	inc h                                            ; $6736: $24
	sbc c                                            ; $6737: $99
	jr nz, jr_062_66d7                               ; $6738: $20 $9d

	ld c, d                                          ; $673a: $4a
	cp l                                             ; $673b: $bd
	ld c, c                                          ; $673c: $49
	cp a                                             ; $673d: $bf
	dec e                                            ; $673e: $1d
	rst FarCall                                          ; $673f: $f7
	ld e, l                                          ; $6740: $5d
	rst FarCall                                          ; $6741: $f7
	ld e, a                                          ; $6742: $5f
	di                                               ; $6743: $f3
	ld e, a                                          ; $6744: $5f
	db $fd                                           ; $6745: $fd
	cp a                                             ; $6746: $bf
	pop af                                           ; $6747: $f1
	ld a, a                                          ; $6748: $7f
	adc e                                            ; $6749: $8b
	di                                               ; $674a: $f3
	dec a                                            ; $674b: $3d
	rst FarCall                                          ; $674c: $f7
	ld a, h                                          ; $674d: $7c
	db $ed                                           ; $674e: $ed
	db $fd                                           ; $674f: $fd
	and b                                            ; $6750: $a0
	db $dd                                           ; $6751: $dd
	or c                                             ; $6752: $b1
	cp e                                             ; $6753: $bb
	ret nc                                           ; $6754: $d0

	ld c, c                                          ; $6755: $49
	ld a, [hl]                                       ; $6756: $7e
	ld a, [hl+]                                      ; $6757: $2a
	dec a                                            ; $6758: $3d
	dec e                                            ; $6759: $1d
	ld e, $05                                        ; $675a: $1e $05
	ld b, $02                                        ; $675c: $06 $02
	ld [hl], e                                       ; $675e: $73
	or b                                             ; $675f: $b0
	rst SubAFromDE                                          ; $6760: $df
	inc bc                                           ; $6761: $03

jr_062_6762:
	sub a                                            ; $6762: $97
	rra                                              ; $6763: $1f
	inc e                                            ; $6764: $1c
	ld a, a                                          ; $6765: $7f
	ld h, b                                          ; $6766: $60
	rst $38                                          ; $6767: $ff
	add b                                            ; $6768: $80
	rst $38                                          ; $6769: $ff
	nop                                              ; $676a: $00
	ld h, a                                          ; $676b: $67
	cp $80                                           ; $676c: $fe $80
	ld [hl-], a                                      ; $676e: $32
	rst AddAOntoHL                                          ; $676f: $ef
	and c                                            ; $6770: $a1
	rst $38                                          ; $6771: $ff
	or c                                             ; $6772: $b1
	rst $38                                          ; $6773: $ff
	or c                                             ; $6774: $b1
	rst AddAOntoHL                                          ; $6775: $ef
	cp c                                             ; $6776: $b9
	ld l, a                                          ; $6777: $6f
	ld sp, hl                                        ; $6778: $f9
	ld h, a                                          ; $6779: $67
	db $fc                                           ; $677a: $fc
	ld h, a                                          ; $677b: $67
	cp $a3                                           ; $677c: $fe $a3
	rst $38                                          ; $677e: $ff

jr_062_677f:
	ld de, $c0ff                                     ; $677f: $11 $ff $c0
	rst $38                                          ; $6782: $ff
	ldh [$7f], a                                     ; $6783: $e0 $7f
	jr nc, @-$01                                     ; $6785: $30 $fd

	ldh a, [$f8]                                     ; $6787: $f0 $f8
	ldh [$a0], a                                     ; $6789: $e0 $a0
	jr nz, jr_062_677f                               ; $678b: $20 $f2

	add b                                            ; $678d: $80
	ret nz                                           ; $678e: $c0

	jp z, Jump_062_6a31                              ; $678f: $ca $31 $6a

	sub c                                            ; $6792: $91
	ld l, a                                          ; $6793: $6f
	sbc c                                            ; $6794: $99
	xor h                                            ; $6795: $ac
	rst SubAFromDE                                          ; $6796: $df
	adc [hl]                                         ; $6797: $8e
	ei                                               ; $6798: $fb
	rst GetHLinHL                                          ; $6799: $cf
	ld a, l                                          ; $679a: $7d
	rst SubAFromBC                                          ; $679b: $e7
	ccf                                              ; $679c: $3f
	rst FarCall                                          ; $679d: $f7
	inc e                                            ; $679e: $1c
	ei                                               ; $679f: $fb
	adc [hl]                                         ; $67a0: $8e
	rst $38                                          ; $67a1: $ff
	add a                                            ; $67a2: $87
	cp $4a                                           ; $67a3: $fe $4a
	ei                                               ; $67a5: $fb
	inc bc                                           ; $67a6: $03
	ld sp, hl                                        ; $67a7: $f9
	inc bc                                           ; $67a8: $03
	di                                               ; $67a9: $f3
	ld [bc], a                                       ; $67aa: $02
	ld h, a                                          ; $67ab: $67
	ld bc, $0280                                     ; $67ac: $01 $80 $02
	nop                                              ; $67af: $00
	call $d533                                       ; $67b0: $cd $33 $d5
	dec sp                                           ; $67b3: $3b
	ld c, [hl]                                       ; $67b4: $4e
	cp c                                             ; $67b5: $b9
	adc d                                            ; $67b6: $8a
	db $fd                                           ; $67b7: $fd
	ld b, h                                          ; $67b8: $44
	rst $38                                          ; $67b9: $ff
	ld h, d                                          ; $67ba: $62
	rst $38                                          ; $67bb: $ff
	cp e                                             ; $67bc: $bb
	rst AddAOntoHL                                          ; $67bd: $ef
	cp $f7                                           ; $67be: $fe $f7
	rst $38                                          ; $67c0: $ff
	dec de                                           ; $67c1: $1b
	cp $c3                                           ; $67c2: $fe $c3
	cp $63                                           ; $67c4: $fe $63
	sbc $fb                                          ; $67c6: $de $fb
	cp [hl]                                          ; $67c8: $be
	jp $417f                                         ; $67c9: $c3 $7f $41


	rst SubAFromDE                                          ; $67cc: $df
	add h                                            ; $67cd: $84
	add c                                            ; $67ce: $81
	cp l                                             ; $67cf: $bd
	inc bc                                           ; $67d0: $03
	ld a, a                                          ; $67d1: $7f
	inc bc                                           ; $67d2: $03
	ld a, a                                          ; $67d3: $7f
	rlca                                             ; $67d4: $07
	ld a, [hl]                                       ; $67d5: $7e
	rlca                                             ; $67d6: $07
	db $fc                                           ; $67d7: $fc
	rrca                                             ; $67d8: $0f
	db $fc                                           ; $67d9: $fc
	ld e, $f8                                        ; $67da: $1e $f8
	inc a                                            ; $67dc: $3c
	ldh a, [$78]                                     ; $67dd: $f0 $78
	ldh a, [$f0]                                     ; $67df: $f0 $f0
	ldh [$f0], a                                     ; $67e1: $e0 $f0
	ret nz                                           ; $67e3: $c0

	ldh [$80], a                                     ; $67e4: $e0 $80
	ret nz                                           ; $67e6: $c0

	nop                                              ; $67e7: $00
	add b                                            ; $67e8: $80
	ld sp, hl                                        ; $67e9: $f9
	dec sp                                           ; $67ea: $3b
	ld b, b                                          ; $67eb: $40
	sub [hl]                                         ; $67ec: $96
	ldh a, [$7f]                                     ; $67ed: $f0 $7f
	ldh a, [$3f]                                     ; $67ef: $f0 $3f
	pop af                                           ; $67f1: $f1
	ld a, a                                          ; $67f2: $7f
	rst SubAFromBC                                          ; $67f3: $e7
	db $fc                                           ; $67f4: $fc
	xor l                                            ; $67f5: $ad
	ld [hl], a                                       ; $67f6: $77
	ld b, b                                          ; $67f7: $40
	dec sp                                           ; $67f8: $3b

jr_062_67f9:
	ld h, b                                          ; $67f9: $60
	ld [hl], a                                       ; $67fa: $77
	ld c, b                                          ; $67fb: $48
	sbc b                                            ; $67fc: $98
	ldh [$7d], a                                     ; $67fd: $e0 $7d
	jr nc, jr_062_67f9                               ; $67ff: $30 $f8

	ldh a, [rAUD4LEN]                                ; $6801: $f0 $20
	and b                                            ; $6803: $a0
	inc sp                                           ; $6804: $33
	ld h, b                                          ; $6805: $60
	sbc b                                            ; $6806: $98
	add [hl]                                         ; $6807: $86
	rst $38                                          ; $6808: $ff
	ld b, a                                          ; $6809: $47
	cp $0e                                           ; $680a: $fe $0e
	ld sp, hl                                        ; $680c: $f9
	dec bc                                           ; $680d: $0b
	inc hl                                           ; $680e: $23
	ld h, b                                          ; $680f: $60
	sub l                                            ; $6810: $95
	inc bc                                           ; $6811: $03
	cp $83                                           ; $6812: $fe $83
	cp $63                                           ; $6814: $fe $63
	cp $fb                                           ; $6816: $fe $fb
	ld a, a                                          ; $6818: $7f
	ld b, c                                          ; $6819: $41
	rst $38                                          ; $681a: $ff
	ld a, e                                          ; $681b: $7b
	ld h, b                                          ; $681c: $60
	ld b, e                                          ; $681d: $43
	add b                                            ; $681e: $80
	sbc h                                            ; $681f: $9c
	di                                               ; $6820: $f3
	cp a                                             ; $6821: $bf
	db $fc                                           ; $6822: $fc
	ld a, e                                          ; $6823: $7b
	add b                                            ; $6824: $80
	ld a, a                                          ; $6825: $7f
	ld a, h                                          ; $6826: $7c
	sbc b                                            ; $6827: $98
	ldh [rIE], a                                     ; $6828: $e0 $ff
	and c                                            ; $682a: $a1
	rst SubAFromDE                                          ; $682b: $df
	cp a                                             ; $682c: $bf
	cp e                                             ; $682d: $bb
	pop de                                           ; $682e: $d1
	ld c, e                                          ; $682f: $4b
	add b                                            ; $6830: $80
	sbc h                                            ; $6831: $9c
	inc hl                                           ; $6832: $23
	rst $38                                          ; $6833: $ff
	sub c                                            ; $6834: $91
	ld l, [hl]                                       ; $6835: $6e
	ret z                                            ; $6836: $c8

	sub a                                            ; $6837: $97
	db $fd                                           ; $6838: $fd
	nop                                              ; $6839: $00
	ld hl, sp-$20                                    ; $683a: $f8 $e0
	or b                                             ; $683c: $b0
	or b                                             ; $683d: $b0
	ldh a, [c]                                       ; $683e: $f2
	ldh [rHDMA3], a                                  ; $683f: $e0 $53
	add b                                            ; $6841: $80
	sbc h                                            ; $6842: $9c
	inc a                                            ; $6843: $3c
	rst FarCall                                          ; $6844: $f7
	rra                                              ; $6845: $1f
	ld [hl], e                                       ; $6846: $73
	add b                                            ; $6847: $80
	sbc [hl]                                         ; $6848: $9e
	ld b, d                                          ; $6849: $42
	ld a, e                                          ; $684a: $7b
	sbc $7f                                          ; $684b: $de $7f
	sbc d                                            ; $684d: $9a
	sbc h                                            ; $684e: $9c
	ld c, $67                                        ; $684f: $0e $67
	inc bc                                           ; $6851: $03
	dec sp                                           ; $6852: $3b
	add b                                            ; $6853: $80
	sbc [hl]                                         ; $6854: $9e
	dec sp                                           ; $6855: $3b
	ld a, e                                          ; $6856: $7b
	add b                                            ; $6857: $80
	ld [hl], a                                       ; $6858: $77
	cp $9a                                           ; $6859: $fe $9a
	jp $f9ff                                         ; $685b: $c3 $ff $f9


	rst $38                                          ; $685e: $ff
	pop bc                                           ; $685f: $c1
	inc de                                           ; $6860: $13
	add b                                            ; $6861: $80
	sbc d                                            ; $6862: $9a
	and e                                            ; $6863: $a3
	rst SubAFromDE                                          ; $6864: $df
	cp h                                             ; $6865: $bc
	cp e                                             ; $6866: $bb
	db $d3                                           ; $6867: $d3
	dec de                                           ; $6868: $1b
	add b                                            ; $6869: $80
	sbc h                                            ; $686a: $9c
	ret nz                                           ; $686b: $c0

	ldh a, [rAUD1SWEEP]                              ; $686c: $f0 $10
	dec de                                           ; $686e: $1b
	add b                                            ; $686f: $80
	sbc h                                            ; $6870: $9c
	ld bc, $0cff                                     ; $6871: $01 $ff $0c
	dec bc                                           ; $6874: $0b
	add b                                            ; $6875: $80
	sbc [hl]                                         ; $6876: $9e
	add hl, sp                                       ; $6877: $39
	ld [hl], a                                       ; $6878: $77
	add b                                            ; $6879: $80
	sbc d                                            ; $687a: $9a
	and a                                            ; $687b: $a7
	nop                                              ; $687c: $00
	ld c, a                                          ; $687d: $4f
	inc b                                            ; $687e: $04
	rlca                                             ; $687f: $07
	cp $7d                                           ; $6880: $fe $7d
	rst SubAFromDE                                          ; $6882: $df
	adc l                                            ; $6883: $8d
	add e                                            ; $6884: $83
	nop                                              ; $6885: $00
	jp $e080                                         ; $6886: $c3 $80 $e0


	ret nz                                           ; $6889: $c0

	jr nc, jr_062_68ec                               ; $688a: $30 $60

	inc c                                            ; $688c: $0c
	jr c, jr_062_6892                                ; $688d: $38 $03

	ld a, $07                                        ; $688f: $3e $07
	dec e                                            ; $6891: $1d

jr_062_6892:
	ld b, $1c                                        ; $6892: $06 $1c
	ld c, $18                                        ; $6894: $0e $18
	ld [hl], a                                       ; $6896: $77
	cp $9e                                           ; $6897: $fe $9e
	dec b                                            ; $6899: $05
	ld l, d                                          ; $689a: $6a
	ld d, l                                          ; $689b: $55

jr_062_689c:
	add a                                            ; $689c: $87
	ld b, b                                          ; $689d: $40
	nop                                              ; $689e: $00
	ld bc, $8100                                     ; $689f: $01 $00 $81
	nop                                              ; $68a2: $00
	inc bc                                           ; $68a3: $03
	nop                                              ; $68a4: $00
	rlca                                             ; $68a5: $07
	inc bc                                           ; $68a6: $03
	rra                                              ; $68a7: $1f
	rrca                                             ; $68a8: $0f
	rst $38                                          ; $68a9: $ff

jr_062_68aa:
	ccf                                              ; $68aa: $3f
	rst $38                                          ; $68ab: $ff
	rst $38                                          ; $68ac: $ff
	ld a, [hl]                                       ; $68ad: $7e
	rra                                              ; $68ae: $1f
	inc a                                            ; $68af: $3c
	ld b, $18                                        ; $68b0: $06 $18
	ld c, $10                                        ; $68b2: $0e $10
	inc c                                            ; $68b4: $0c
	ld e, e                                          ; $68b5: $5b
	ret nz                                           ; $68b6: $c0

	sbc [hl]                                         ; $68b7: $9e
	ld bc, $c00f                                     ; $68b8: $01 $0f $c0
	sbc l                                            ; $68bb: $9d
	add c                                            ; $68bc: $81
	add b                                            ; $68bd: $80
	rrca                                             ; $68be: $0f
	ret nz                                           ; $68bf: $c0

	sbc e                                            ; $68c0: $9b
	add a                                            ; $68c1: $87
	inc bc                                           ; $68c2: $03
	jp $1781                                         ; $68c3: $c3 $81 $17


	ret nz                                           ; $68c6: $c0

	sbc e                                            ; $68c7: $9b
	pop bc                                           ; $68c8: $c1
	ret nz                                           ; $68c9: $c0

	add c                                            ; $68ca: $81
	add b                                            ; $68cb: $80
	dec bc                                           ; $68cc: $0b
	ret nz                                           ; $68cd: $c0

	sbc h                                            ; $68ce: $9c
	add e                                            ; $68cf: $83
	db $e3                                           ; $68d0: $e3
	pop bc                                           ; $68d1: $c1
	rla                                              ; $68d2: $17
	ret nz                                           ; $68d3: $c0

	ld a, a                                          ; $68d4: $7f
	cp $9d                                           ; $68d5: $fe $9d
	add e                                            ; $68d7: $83
	add b                                            ; $68d8: $80
	ld b, a                                          ; $68d9: $47
	ret nz                                           ; $68da: $c0

	rst SubAFromBC                                          ; $68db: $e7
	ld bc, $559d                                     ; $68dc: $01 $9d $55
	ld l, d                                          ; $68df: $6a
	ld [hl], a                                       ; $68e0: $77
	cp $89                                           ; $68e1: $fe $89
	ld b, l                                          ; $68e3: $45
	ld a, d                                          ; $68e4: $7a
	ld c, a                                          ; $68e5: $4f
	ld a, d                                          ; $68e6: $7a
	ld c, [hl]                                       ; $68e7: $4e
	ld a, e                                          ; $68e8: $7b
	dec hl                                           ; $68e9: $2b
	dec a                                            ; $68ea: $3d
	add hl, hl                                       ; $68eb: $29

jr_062_68ec:
	ccf                                              ; $68ec: $3f
	dec h                                            ; $68ed: $25
	ccf                                              ; $68ee: $3f
	inc d                                            ; $68ef: $14
	rra                                              ; $68f0: $1f
	ld a, [bc]                                       ; $68f1: $0a
	rrca                                             ; $68f2: $0f
	ld b, $07                                        ; $68f3: $06 $07
	inc bc                                           ; $68f5: $03
	inc bc                                           ; $68f6: $03
	ld bc, $e901                                     ; $68f7: $01 $01 $e9
	rst SubAFromDE                                          ; $68fa: $df
	ld bc, $0280                                     ; $68fb: $01 $80 $02
	inc bc                                           ; $68fe: $03
	dec b                                            ; $68ff: $05
	ld b, $0b                                        ; $6900: $06 $0b
	inc c                                            ; $6902: $0c
	rla                                              ; $6903: $17
	jr jr_062_6935                                   ; $6904: $18 $2f

	jr nc, jr_062_689c                               ; $6906: $30 $94

	add hl, bc                                       ; $6908: $09
	inc h                                            ; $6909: $24
	sbc c                                            ; $690a: $99
	jr nz, jr_062_68aa                               ; $690b: $20 $9d

	ld c, d                                          ; $690d: $4a
	cp l                                             ; $690e: $bd
	ld c, c                                          ; $690f: $49
	cp a                                             ; $6910: $bf
	dec e                                            ; $6911: $1d
	rst FarCall                                          ; $6912: $f7
	ld e, l                                          ; $6913: $5d
	rst $38                                          ; $6914: $ff
	ld e, a                                          ; $6915: $5f
	di                                               ; $6916: $f3
	ld e, a                                          ; $6917: $5f
	pop af                                           ; $6918: $f1
	cp a                                             ; $6919: $bf
	di                                               ; $691a: $f3
	ld a, a                                          ; $691b: $7f
	adc e                                            ; $691c: $8b
	rst FarCall                                          ; $691d: $f7
	dec a                                            ; $691e: $3d
	rst $38                                          ; $691f: $ff
	ld a, h                                          ; $6920: $7c
	push hl                                          ; $6921: $e5

jr_062_6922:
	db $fd                                           ; $6922: $fd
	and b                                            ; $6923: $a0
	db $dd                                           ; $6924: $dd
	or c                                             ; $6925: $b1
	cp c                                             ; $6926: $b9
	ret nc                                           ; $6927: $d0

	ld c, e                                          ; $6928: $4b
	ld a, h                                          ; $6929: $7c
	dec hl                                           ; $692a: $2b
	inc a                                            ; $692b: $3c
	dec e                                            ; $692c: $1d
	ld e, $05                                        ; $692d: $1e $05
	ld b, $02                                        ; $692f: $06 $02
	ld [hl], e                                       ; $6931: $73
	or b                                             ; $6932: $b0
	rst SubAFromDE                                          ; $6933: $df
	inc bc                                           ; $6934: $03

jr_062_6935:
	sub a                                            ; $6935: $97
	rra                                              ; $6936: $1f
	inc e                                            ; $6937: $1c
	ld a, a                                          ; $6938: $7f
	ld h, b                                          ; $6939: $60
	rst $38                                          ; $693a: $ff
	add b                                            ; $693b: $80
	rst $38                                          ; $693c: $ff
	nop                                              ; $693d: $00
	ld h, a                                          ; $693e: $67
	cp $80                                           ; $693f: $fe $80
	ld [hl-], a                                      ; $6941: $32
	rst AddAOntoHL                                          ; $6942: $ef
	and c                                            ; $6943: $a1
	rst $38                                          ; $6944: $ff
	or c                                             ; $6945: $b1
	rst $38                                          ; $6946: $ff
	or c                                             ; $6947: $b1
	rst AddAOntoHL                                          ; $6948: $ef
	cp c                                             ; $6949: $b9
	ld l, a                                          ; $694a: $6f
	ld sp, hl                                        ; $694b: $f9
	rst SubAFromBC                                          ; $694c: $e7
	db $fc                                           ; $694d: $fc
	ld h, a                                          ; $694e: $67
	cp $23                                           ; $694f: $fe $23
	rst $38                                          ; $6951: $ff
	ld de, $c0ff                                     ; $6952: $11 $ff $c0
	ld a, a                                          ; $6955: $7f
	jr nz, @+$01                                     ; $6956: $20 $ff

	ld h, b                                          ; $6958: $60
	db $fd                                           ; $6959: $fd
	ldh [$f8], a                                     ; $695a: $e0 $f8
	ret nz                                           ; $695c: $c0

	and b                                            ; $695d: $a0
	jr nz, jr_062_6922                               ; $695e: $20 $c2

	add c                                            ; $6960: $81
	ret nz                                           ; $6961: $c0

	jp z, Jump_062_6a31                              ; $6962: $ca $31 $6a

	sub c                                            ; $6965: $91
	ld l, a                                          ; $6966: $6f
	sbc c                                            ; $6967: $99
	xor h                                            ; $6968: $ac
	rst SubAFromDE                                          ; $6969: $df
	adc [hl]                                         ; $696a: $8e
	ei                                               ; $696b: $fb
	rst GetHLinHL                                          ; $696c: $cf
	ld a, a                                          ; $696d: $7f
	rst SubAFromBC                                          ; $696e: $e7
	inc a                                            ; $696f: $3c
	rst FarCall                                          ; $6970: $f7
	inc e                                            ; $6971: $1c
	ei                                               ; $6972: $fb
	adc a                                            ; $6973: $8f
	cp $8e                                           ; $6974: $fe $8e
	cp $4a                                           ; $6976: $fe $4a
	ei                                               ; $6978: $fb
	inc bc                                           ; $6979: $03
	ld sp, hl                                        ; $697a: $f9
	inc bc                                           ; $697b: $03
	di                                               ; $697c: $f3
	ld [bc], a                                       ; $697d: $02
	ld h, e                                          ; $697e: $63
	ld a, e                                          ; $697f: $7b
	xor [hl]                                         ; $6980: $ae
	add b                                            ; $6981: $80
	call $d533                                       ; $6982: $cd $33 $d5
	dec sp                                           ; $6985: $3b
	ld c, [hl]                                       ; $6986: $4e
	cp c                                             ; $6987: $b9
	adc d                                            ; $6988: $8a
	db $fd                                           ; $6989: $fd
	ld b, h                                          ; $698a: $44
	rst $38                                          ; $698b: $ff
	ld h, d                                          ; $698c: $62
	rst $38                                          ; $698d: $ff
	cp e                                             ; $698e: $bb
	rst AddAOntoHL                                          ; $698f: $ef
	cp $77                                           ; $6990: $fe $77
	rst $38                                          ; $6992: $ff
	db $db                                           ; $6993: $db
	cp $63                                           ; $6994: $fe $63
	cp $fb                                           ; $6996: $fe $fb
	cp [hl]                                          ; $6998: $be
	db $e3                                           ; $6999: $e3
	cp [hl]                                          ; $699a: $be
	add e                                            ; $699b: $83
	ld a, a                                          ; $699c: $7f
	ld b, c                                          ; $699d: $41
	rst SubAFromDE                                          ; $699e: $df
	add c                                            ; $699f: $81
	dec a                                            ; $69a0: $3d
	add [hl]                                         ; $69a1: $86
	inc bc                                           ; $69a2: $03
	ccf                                              ; $69a3: $3f
	inc bc                                           ; $69a4: $03
	ld a, a                                          ; $69a5: $7f
	rlca                                             ; $69a6: $07
	ld a, [hl]                                       ; $69a7: $7e
	rlca                                             ; $69a8: $07
	db $fc                                           ; $69a9: $fc
	rrca                                             ; $69aa: $0f
	db $fc                                           ; $69ab: $fc
	ld e, $f8                                        ; $69ac: $1e $f8
	inc a                                            ; $69ae: $3c
	ldh a, [$78]                                     ; $69af: $f0 $78
	ldh a, [$f0]                                     ; $69b1: $f0 $f0
	ldh [$f0], a                                     ; $69b3: $e0 $f0
	ret nz                                           ; $69b5: $c0

	ldh [$80], a                                     ; $69b6: $e0 $80
	ret nz                                           ; $69b8: $c0

	nop                                              ; $69b9: $00
	add b                                            ; $69ba: $80
	ld sp, hl                                        ; $69bb: $f9
	dec sp                                           ; $69bc: $3b
	ld b, b                                          ; $69bd: $40
	sub [hl]                                         ; $69be: $96
	ldh a, [$7f]                                     ; $69bf: $f0 $7f
	pop af                                           ; $69c1: $f1
	ccf                                              ; $69c2: $3f
	di                                               ; $69c3: $f3
	ld a, l                                          ; $69c4: $7d
	rst AddAOntoHL                                          ; $69c5: $ef
	db $fc                                           ; $69c6: $fc
	and l                                            ; $69c7: $a5
	ld [hl], a                                       ; $69c8: $77
	ld b, b                                          ; $69c9: $40
	dec sp                                           ; $69ca: $3b
	ld h, b                                          ; $69cb: $60
	ld a, a                                          ; $69cc: $7f

jr_062_69cd:
	ld c, d                                          ; $69cd: $4a
	sbc b                                            ; $69ce: $98
	ret nz                                           ; $69cf: $c0

	rst $38                                          ; $69d0: $ff
	ldh [$7d], a                                     ; $69d1: $e0 $7d
	jr nz, jr_062_69cd                               ; $69d3: $20 $f8

	ldh [$33], a                                     ; $69d5: $e0 $33
	ld h, b                                          ; $69d7: $60
	sub [hl]                                         ; $69d8: $96
	adc [hl]                                         ; $69d9: $8e
	rst $38                                          ; $69da: $ff
	add a                                            ; $69db: $87
	rst $38                                          ; $69dc: $ff
	ld b, a                                          ; $69dd: $47
	cp $0e                                           ; $69de: $fe $0e
	ld sp, hl                                        ; $69e0: $f9
	dec bc                                           ; $69e1: $0b
	dec hl                                           ; $69e2: $2b
	ld h, b                                          ; $69e3: $60
	sub [hl]                                         ; $69e4: $96
	dec de                                           ; $69e5: $1b
	cp $83                                           ; $69e6: $fe $83
	cp $c3                                           ; $69e8: $fe $c3
	cp $63                                           ; $69ea: $fe $63
	cp [hl]                                          ; $69ec: $be
	ei                                               ; $69ed: $fb
	ld l, a                                          ; $69ee: $6f
	ld h, b                                          ; $69ef: $60
	ld d, e                                          ; $69f0: $53
	add b                                            ; $69f1: $80
	sbc h                                            ; $69f2: $9c
	rst FarCall                                          ; $69f3: $f7
	ld e, a                                          ; $69f4: $5f
	ei                                               ; $69f5: $fb
	ld [hl], e                                       ; $69f6: $73
	add b                                            ; $69f7: $80
	sub h                                            ; $69f8: $94
	ldh a, [$3f]                                     ; $69f9: $f0 $3f
	ldh a, [$7f]                                     ; $69fb: $f0 $7f
	ldh [rIE], a                                     ; $69fd: $e0 $ff
	and e                                            ; $69ff: $a3
	rst SubAFromDE                                          ; $6a00: $df
	cp a                                             ; $6a01: $bf
	cp e                                             ; $6a02: $bb
	db $d3                                           ; $6a03: $d3
	ld e, e                                          ; $6a04: $5b
	add b                                            ; $6a05: $80
	sbc h                                            ; $6a06: $9c
	ld h, a                                          ; $6a07: $67
	db $fc                                           ; $6a08: $fc
	rst SubAFromBC                                          ; $6a09: $e7
	ld l, e                                          ; $6a0a: $6b
	add b                                            ; $6a0b: $80
	ld a, e                                          ; $6a0c: $7b
	cp $98                                           ; $6a0d: $fe $98
	db $fd                                           ; $6a0f: $fd
	nop                                              ; $6a10: $00
	ld hl, sp-$40                                    ; $6a11: $f8 $c0
	ld h, b                                          ; $6a13: $60
	ld h, b                                          ; $6a14: $60
	ldh [c], a                                       ; $6a15: $e2
	ld d, a                                          ; $6a16: $57
	add b                                            ; $6a17: $80
	sbc h                                            ; $6a18: $9c
	ld a, l                                          ; $6a19: $7d
	rst SubAFromBC                                          ; $6a1a: $e7
	ccf                                              ; $6a1b: $3f
	ld [hl], e                                       ; $6a1c: $73
	add b                                            ; $6a1d: $80
	sub h                                            ; $6a1e: $94
	add [hl]                                         ; $6a1f: $86
	rst $38                                          ; $6a20: $ff
	ld b, d                                          ; $6a21: $42
	rst $38                                          ; $6a22: $ff
	nop                                              ; $6a23: $00
	ei                                               ; $6a24: $fb
	inc bc                                           ; $6a25: $03
	cp $0e                                           ; $6a26: $fe $0e
	ld h, a                                          ; $6a28: $67
	inc bc                                           ; $6a29: $03
	ld c, e                                          ; $6a2a: $4b
	add b                                            ; $6a2b: $80
	sbc [hl]                                         ; $6a2c: $9e
	rst $38                                          ; $6a2d: $ff
	ld [hl], e                                       ; $6a2e: $73
	add b                                            ; $6a2f: $80
	ld a, a                                          ; $6a30: $7f

Jump_062_6a31:
	and $77                                          ; $6a31: $e6 $77
	cp $9a                                           ; $6a33: $fe $9a
	jp $f9ff                                         ; $6a35: $c3 $ff $f9


	rst $38                                          ; $6a38: $ff
	pop bc                                           ; $6a39: $c1
	dec bc                                           ; $6a3a: $0b
	add b                                            ; $6a3b: $80
	sbc [hl]                                         ; $6a3c: $9e
	cp h                                             ; $6a3d: $bc
	inc de                                           ; $6a3e: $13
	add b                                            ; $6a3f: $80
	sbc h                                            ; $6a40: $9c
	add b                                            ; $6a41: $80
	ldh [rAUD4LEN], a                                ; $6a42: $e0 $20
	dec de                                           ; $6a44: $1b
	add b                                            ; $6a45: $80
	sbc h                                            ; $6a46: $9c
	ld bc, $0cff                                     ; $6a47: $01 $ff $0c
	dec bc                                           ; $6a4a: $0b
	add b                                            ; $6a4b: $80
	sbc [hl]                                         ; $6a4c: $9e
	add hl, sp                                       ; $6a4d: $39
	ld [hl], a                                       ; $6a4e: $77
	add b                                            ; $6a4f: $80
	sbc d                                            ; $6a50: $9a
	rlca                                             ; $6a51: $07
	nop                                              ; $6a52: $00
	rrca                                             ; $6a53: $0f
	inc b                                            ; $6a54: $04
	rlca                                             ; $6a55: $07
	cp $8b                                           ; $6a56: $fe $8b
	ld c, $02                                        ; $6a58: $0e $02
	add b                                            ; $6a5a: $80
	nop                                              ; $6a5b: $00
	jp $e080                                         ; $6a5c: $c3 $80 $e0


	ret nz                                           ; $6a5f: $c0

	jr nc, jr_062_6ac2                               ; $6a60: $30 $60

	inc c                                            ; $6a62: $0c
	jr c, jr_062_6a68                                ; $6a63: $38 $03

	ld a, $07                                        ; $6a65: $3e $07
	dec e                                            ; $6a67: $1d

jr_062_6a68:
	ld b, $1c                                        ; $6a68: $06 $1c
	ld c, $18                                        ; $6a6a: $0e $18
	ld [hl], a                                       ; $6a6c: $77
	cp $ff                                           ; $6a6d: $fe $ff
	halt                                             ; $6a6f: $76
	ld d, l                                          ; $6a70: $55
	add l                                            ; $6a71: $85
	ld h, b                                          ; $6a72: $60
	ld b, b                                          ; $6a73: $40
	ret nz                                           ; $6a74: $c0

	nop                                              ; $6a75: $00
	ld bc, $8100                                     ; $6a76: $01 $00 $81
	nop                                              ; $6a79: $00
	inc bc                                           ; $6a7a: $03
	nop                                              ; $6a7b: $00
	rlca                                             ; $6a7c: $07
	inc bc                                           ; $6a7d: $03
	rra                                              ; $6a7e: $1f
	rrca                                             ; $6a7f: $0f
	rst $38                                          ; $6a80: $ff
	ccf                                              ; $6a81: $3f
	rst $38                                          ; $6a82: $ff

jr_062_6a83:
	rst $38                                          ; $6a83: $ff
	ld a, [hl]                                       ; $6a84: $7e
	rra                                              ; $6a85: $1f
	inc a                                            ; $6a86: $3c
	ld b, $18                                        ; $6a87: $06 $18
	ld c, $10                                        ; $6a89: $0e $10
	inc c                                            ; $6a8b: $0c
	ld h, a                                          ; $6a8c: $67
	ret nz                                           ; $6a8d: $c0

	sbc d                                            ; $6a8e: $9a
	inc c                                            ; $6a8f: $0c
	inc b                                            ; $6a90: $04

jr_062_6a91:
	add a                                            ; $6a91: $87
	inc bc                                           ; $6a92: $03
	jp nz, $c01f                                     ; $6a93: $c2 $1f $c0

	sbc d                                            ; $6a96: $9a
	nop                                              ; $6a97: $00
	ldh [$c0], a                                     ; $6a98: $e0 $c0
	pop bc                                           ; $6a9a: $c1
	add b                                            ; $6a9b: $80
	dec bc                                           ; $6a9c: $0b
	ret nz                                           ; $6a9d: $c0

	sbc e                                            ; $6a9e: $9b
	rlca                                             ; $6a9f: $07
	jp $e283                                         ; $6aa0: $c3 $83 $e2


	dec hl                                           ; $6aa3: $2b
	ret nz                                           ; $6aa4: $c0

	rst $38                                          ; $6aa5: $ff
	rst SubAFromDE                                          ; $6aa6: $df
	ldh [$9e], a                                     ; $6aa7: $e0 $9e
	pop hl                                           ; $6aa9: $e1
	ld a, e                                          ; $6aaa: $7b
	cp [hl]                                          ; $6aab: $be
	sbc [hl]                                         ; $6aac: $9e
	add e                                            ; $6aad: $83
	inc de                                           ; $6aae: $13
	ret nz                                           ; $6aaf: $c0

	sbc e                                            ; $6ab0: $9b
	rst JumpTable                                          ; $6ab1: $c7
	add e                                            ; $6ab2: $83
	db $e3                                           ; $6ab3: $e3
	jp $c027                                         ; $6ab4: $c3 $27 $c0


	ld a, l                                          ; $6ab7: $7d
	add a                                            ; $6ab8: $87
	sbc c                                            ; $6ab9: $99
	pop hl                                           ; $6aba: $e1
	ldh [$c1], a                                     ; $6abb: $e0 $c1
	ret nz                                           ; $6abd: $c0

	add e                                            ; $6abe: $83
	add b                                            ; $6abf: $80
	ld b, a                                          ; $6ac0: $47
	ret nz                                           ; $6ac1: $c0

jr_062_6ac2:
	jp nc, $9d01                                     ; $6ac2: $d2 $01 $9d

	ld d, l                                          ; $6ac5: $55
	ld l, d                                          ; $6ac6: $6a
	ld [hl], a                                       ; $6ac7: $77
	cp $89                                           ; $6ac8: $fe $89
	ld b, l                                          ; $6aca: $45
	ld a, d                                          ; $6acb: $7a
	ld c, a                                          ; $6acc: $4f
	ld a, d                                          ; $6acd: $7a
	ld c, [hl]                                       ; $6ace: $4e
	ld a, e                                          ; $6acf: $7b
	dec hl                                           ; $6ad0: $2b
	dec a                                            ; $6ad1: $3d
	add hl, hl                                       ; $6ad2: $29
	ccf                                              ; $6ad3: $3f
	dec h                                            ; $6ad4: $25
	ccf                                              ; $6ad5: $3f
	inc d                                            ; $6ad6: $14
	rra                                              ; $6ad7: $1f
	ld a, [bc]                                       ; $6ad8: $0a
	rrca                                             ; $6ad9: $0f
	ld b, $07                                        ; $6ada: $06 $07
	inc bc                                           ; $6adc: $03
	inc bc                                           ; $6add: $03
	ld bc, $e901                                     ; $6ade: $01 $01 $e9
	rst SubAFromDE                                          ; $6ae1: $df
	ld bc, $0280                                     ; $6ae2: $01 $80 $02
	inc bc                                           ; $6ae5: $03
	dec b                                            ; $6ae6: $05
	ld b, $0b                                        ; $6ae7: $06 $0b
	inc c                                            ; $6ae9: $0c
	rla                                              ; $6aea: $17
	jr jr_062_6b1c                                   ; $6aeb: $18 $2f

	jr nc, jr_062_6a83                               ; $6aed: $30 $94

	add hl, bc                                       ; $6aef: $09
	inc h                                            ; $6af0: $24
	sbc c                                            ; $6af1: $99
	jr nz, jr_062_6a91                               ; $6af2: $20 $9d

	ld c, d                                          ; $6af4: $4a
	cp l                                             ; $6af5: $bd
	ld c, c                                          ; $6af6: $49
	cp a                                             ; $6af7: $bf
	dec e                                            ; $6af8: $1d
	rst FarCall                                          ; $6af9: $f7
	ld e, l                                          ; $6afa: $5d
	rst FarCall                                          ; $6afb: $f7
	ld e, a                                          ; $6afc: $5f
	ei                                               ; $6afd: $fb
	ld e, a                                          ; $6afe: $5f
	pop af                                           ; $6aff: $f1
	cp a                                             ; $6b00: $bf
	di                                               ; $6b01: $f3
	ld a, a                                          ; $6b02: $7f
	adc e                                            ; $6b03: $8b
	rst FarCall                                          ; $6b04: $f7
	dec a                                            ; $6b05: $3d
	rst $38                                          ; $6b06: $ff
	ld a, h                                          ; $6b07: $7c
	push hl                                          ; $6b08: $e5

jr_062_6b09:
	db $fd                                           ; $6b09: $fd
	and b                                            ; $6b0a: $a0
	db $dd                                           ; $6b0b: $dd
	or c                                             ; $6b0c: $b1
	cp c                                             ; $6b0d: $b9
	ret nc                                           ; $6b0e: $d0

	ld c, e                                          ; $6b0f: $4b
	ld a, h                                          ; $6b10: $7c
	dec hl                                           ; $6b11: $2b
	inc a                                            ; $6b12: $3c
	dec e                                            ; $6b13: $1d
	ld e, $05                                        ; $6b14: $1e $05
	ld b, $02                                        ; $6b16: $06 $02
	ld [hl], e                                       ; $6b18: $73
	or b                                             ; $6b19: $b0
	rst SubAFromDE                                          ; $6b1a: $df
	inc bc                                           ; $6b1b: $03

jr_062_6b1c:
	sub a                                            ; $6b1c: $97
	rra                                              ; $6b1d: $1f
	inc e                                            ; $6b1e: $1c
	ld a, a                                          ; $6b1f: $7f
	ld h, b                                          ; $6b20: $60
	rst $38                                          ; $6b21: $ff
	add b                                            ; $6b22: $80
	rst $38                                          ; $6b23: $ff
	nop                                              ; $6b24: $00
	ld h, a                                          ; $6b25: $67
	cp $80                                           ; $6b26: $fe $80
	ld [hl-], a                                      ; $6b28: $32
	rst AddAOntoHL                                          ; $6b29: $ef
	and c                                            ; $6b2a: $a1
	rst $38                                          ; $6b2b: $ff
	or c                                             ; $6b2c: $b1
	rst $38                                          ; $6b2d: $ff
	or c                                             ; $6b2e: $b1
	rst AddAOntoHL                                          ; $6b2f: $ef
	cp c                                             ; $6b30: $b9
	ld l, a                                          ; $6b31: $6f
	ld sp, hl                                        ; $6b32: $f9
	ld h, a                                          ; $6b33: $67
	db $fc                                           ; $6b34: $fc
	rst SubAFromBC                                          ; $6b35: $e7
	cp $23                                           ; $6b36: $fe $23
	rst $38                                          ; $6b38: $ff
	ld de, $c0ff                                     ; $6b39: $11 $ff $c0
	rst $38                                          ; $6b3c: $ff
	ldh [$7f], a                                     ; $6b3d: $e0 $7f
	jr nz, @-$01                                     ; $6b3f: $20 $fd

	ldh [$f8], a                                     ; $6b41: $e0 $f8
	ldh [$a0], a                                     ; $6b43: $e0 $a0
	jr nz, jr_062_6b09                               ; $6b45: $20 $c2

	add c                                            ; $6b47: $81
	ret nz                                           ; $6b48: $c0

	jp z, Jump_062_6a31                              ; $6b49: $ca $31 $6a

	sub c                                            ; $6b4c: $91
	ld l, a                                          ; $6b4d: $6f
	sbc c                                            ; $6b4e: $99
	xor h                                            ; $6b4f: $ac
	rst SubAFromDE                                          ; $6b50: $df
	adc [hl]                                         ; $6b51: $8e
	ei                                               ; $6b52: $fb
	rst GetHLinHL                                          ; $6b53: $cf
	ld a, a                                          ; $6b54: $7f
	rst SubAFromBC                                          ; $6b55: $e7
	inc a                                            ; $6b56: $3c
	rst FarCall                                          ; $6b57: $f7
	inc e                                            ; $6b58: $1c
	ei                                               ; $6b59: $fb
	adc a                                            ; $6b5a: $8f
	rst $38                                          ; $6b5b: $ff
	adc a                                            ; $6b5c: $8f
	cp $4a                                           ; $6b5d: $fe $4a
	ei                                               ; $6b5f: $fb
	inc bc                                           ; $6b60: $03
	ld sp, hl                                        ; $6b61: $f9
	inc bc                                           ; $6b62: $03
	di                                               ; $6b63: $f3
	ld [bc], a                                       ; $6b64: $02
	ld h, e                                          ; $6b65: $63
	ld a, e                                          ; $6b66: $7b
	xor [hl]                                         ; $6b67: $ae
	add b                                            ; $6b68: $80
	call $d533                                       ; $6b69: $cd $33 $d5
	dec sp                                           ; $6b6c: $3b
	ld c, [hl]                                       ; $6b6d: $4e
	cp c                                             ; $6b6e: $b9
	adc d                                            ; $6b6f: $8a
	db $fd                                           ; $6b70: $fd
	ld b, h                                          ; $6b71: $44
	rst $38                                          ; $6b72: $ff
	ld h, d                                          ; $6b73: $62
	rst $38                                          ; $6b74: $ff
	cp e                                             ; $6b75: $bb
	rst AddAOntoHL                                          ; $6b76: $ef
	cp $77                                           ; $6b77: $fe $77
	rst $38                                          ; $6b79: $ff
	sbc e                                            ; $6b7a: $9b
	cp $c3                                           ; $6b7b: $fe $c3
	cp $63                                           ; $6b7d: $fe $63
	sbc $fb                                          ; $6b7f: $de $fb
	cp [hl]                                          ; $6b81: $be
	jp $417f                                         ; $6b82: $c3 $7f $41


	rst SubAFromDE                                          ; $6b85: $df
	add c                                            ; $6b86: $81
	dec a                                            ; $6b87: $3d
	add [hl]                                         ; $6b88: $86
	inc bc                                           ; $6b89: $03
	ccf                                              ; $6b8a: $3f
	inc bc                                           ; $6b8b: $03
	ld a, a                                          ; $6b8c: $7f
	rlca                                             ; $6b8d: $07
	ld a, [hl]                                       ; $6b8e: $7e
	rlca                                             ; $6b8f: $07
	db $fc                                           ; $6b90: $fc
	rrca                                             ; $6b91: $0f
	db $fc                                           ; $6b92: $fc
	ld e, $f8                                        ; $6b93: $1e $f8
	inc a                                            ; $6b95: $3c
	ldh a, [$78]                                     ; $6b96: $f0 $78
	ldh a, [$f0]                                     ; $6b98: $f0 $f0
	ldh [$f0], a                                     ; $6b9a: $e0 $f0
	ret nz                                           ; $6b9c: $c0

	ldh [$80], a                                     ; $6b9d: $e0 $80
	ret nz                                           ; $6b9f: $c0

	nop                                              ; $6ba0: $00
	add b                                            ; $6ba1: $80
	ld sp, hl                                        ; $6ba2: $f9
	dec sp                                           ; $6ba3: $3b
	ld b, b                                          ; $6ba4: $40
	sub [hl]                                         ; $6ba5: $96
	ldh a, [$7f]                                     ; $6ba6: $f0 $7f
	di                                               ; $6ba8: $f3
	ccf                                              ; $6ba9: $3f

Jump_062_6baa:
	rst FarCall                                          ; $6baa: $f7
	ld a, l                                          ; $6bab: $7d
	db $ed                                           ; $6bac: $ed
	db $fc                                           ; $6bad: $fc
	and l                                            ; $6bae: $a5
	ld [hl], a                                       ; $6baf: $77
	ld b, b                                          ; $6bb0: $40
	dec sp                                           ; $6bb1: $3b
	ld h, b                                          ; $6bb2: $60
	ld a, a                                          ; $6bb3: $7f
	ld c, d                                          ; $6bb4: $4a
	ld a, e                                          ; $6bb5: $7b
	ld e, [hl]                                       ; $6bb6: $5e
	sbc l                                            ; $6bb7: $9d
	ld a, l                                          ; $6bb8: $7d
	jr nz, jr_062_6be6                               ; $6bb9: $20 $2b

	ld h, b                                          ; $6bbb: $60
	sbc b                                            ; $6bbc: $98
	adc [hl]                                         ; $6bbd: $8e
	rst $38                                          ; $6bbe: $ff
	add a                                            ; $6bbf: $87
	rst $38                                          ; $6bc0: $ff
	ld c, a                                          ; $6bc1: $4f
	ld a, [$230a]                                    ; $6bc2: $fa $0a $23
	ld h, b                                          ; $6bc5: $60
	sbc h                                            ; $6bc6: $9c
	dec de                                           ; $6bc7: $1b
	cp $83                                           ; $6bc8: $fe $83
	ld l, a                                          ; $6bca: $6f
	ld e, [hl]                                       ; $6bcb: $5e
	sbc [hl]                                         ; $6bcc: $9e
	ccf                                              ; $6bcd: $3f
	ld [hl], e                                       ; $6bce: $73
	ld h, b                                          ; $6bcf: $60
	ld c, e                                          ; $6bd0: $4b
	add b                                            ; $6bd1: $80
	ld a, a                                          ; $6bd2: $7f
	cp $9e                                           ; $6bd3: $fe $9e
	ld sp, hl                                        ; $6bd5: $f9
	ld a, e                                          ; $6bd6: $7b
	add b                                            ; $6bd7: $80
	sub h                                            ; $6bd8: $94
	ldh a, [$3f]                                     ; $6bd9: $f0 $3f
	ldh a, [$7f]                                     ; $6bdb: $f0 $7f
	ldh [rIE], a                                     ; $6bdd: $e0 $ff
	and e                                            ; $6bdf: $a3
	rst SubAFromDE                                          ; $6be0: $df
	cp a                                             ; $6be1: $bf
	cp e                                             ; $6be2: $bb
	db $d3                                           ; $6be3: $d3
	ld d, e                                          ; $6be4: $53
	add b                                            ; $6be5: $80

jr_062_6be6:
	sbc h                                            ; $6be6: $9c
	daa                                              ; $6be7: $27
	cp $e3                                           ; $6be8: $fe $e3
	ld [hl], e                                       ; $6bea: $73
	add b                                            ; $6beb: $80
	ld a, e                                          ; $6bec: $7b
	cp $98                                           ; $6bed: $fe $98
	db $fd                                           ; $6bef: $fd
	nop                                              ; $6bf0: $00
	ld hl, sp-$40                                    ; $6bf1: $f8 $c0
	ld h, b                                          ; $6bf3: $60
	ld h, b                                          ; $6bf4: $60
	ldh [c], a                                       ; $6bf5: $e2
	ld d, a                                          ; $6bf6: $57
	add b                                            ; $6bf7: $80
	sbc h                                            ; $6bf8: $9c
	ld a, c                                          ; $6bf9: $79
	rst SubAFromBC                                          ; $6bfa: $e7
	ccf                                              ; $6bfb: $3f
	ld [hl], e                                       ; $6bfc: $73
	add b                                            ; $6bfd: $80
	sbc h                                            ; $6bfe: $9c
	add [hl]                                         ; $6bff: $86
	rst $38                                          ; $6c00: $ff
	ld b, d                                          ; $6c01: $42
	ld a, e                                          ; $6c02: $7b
	sbc $9a                                          ; $6c03: $de $9a
	inc bc                                           ; $6c05: $03
	cp $0e                                           ; $6c06: $fe $0e
	ld h, a                                          ; $6c08: $67
	inc bc                                           ; $6c09: $03
	ld c, e                                          ; $6c0a: $4b
	add b                                            ; $6c0b: $80
	sbc [hl]                                         ; $6c0c: $9e
	rst $38                                          ; $6c0d: $ff
	ld [hl], e                                       ; $6c0e: $73
	add b                                            ; $6c0f: $80
	ld a, a                                          ; $6c10: $7f
	and $77                                          ; $6c11: $e6 $77
	cp $9a                                           ; $6c13: $fe $9a
	jp $f9ff                                         ; $6c15: $c3 $ff $f9


	rst $38                                          ; $6c18: $ff
	pop bc                                           ; $6c19: $c1
	dec bc                                           ; $6c1a: $0b
	add b                                            ; $6c1b: $80
	sbc [hl]                                         ; $6c1c: $9e
	cp h                                             ; $6c1d: $bc
	inc de                                           ; $6c1e: $13
	add b                                            ; $6c1f: $80
	sbc h                                            ; $6c20: $9c
	add b                                            ; $6c21: $80
	ldh [rAUD4LEN], a                                ; $6c22: $e0 $20
	dec de                                           ; $6c24: $1b
	add b                                            ; $6c25: $80
	sbc h                                            ; $6c26: $9c
	ld bc, $0cff                                     ; $6c27: $01 $ff $0c
	dec bc                                           ; $6c2a: $0b
	add b                                            ; $6c2b: $80
	sbc [hl]                                         ; $6c2c: $9e
	add hl, sp                                       ; $6c2d: $39
	ld [hl], a                                       ; $6c2e: $77
	add b                                            ; $6c2f: $80
	sbc d                                            ; $6c30: $9a
	rlca                                             ; $6c31: $07
	nop                                              ; $6c32: $00
	rrca                                             ; $6c33: $0f
	inc b                                            ; $6c34: $04
	rlca                                             ; $6c35: $07
	cp $7d                                           ; $6c36: $fe $7d
	rst SubAFromDE                                          ; $6c38: $df
	ld a, [hl]                                       ; $6c39: $7e
	ld l, l                                          ; $6c3a: $6d
	adc a                                            ; $6c3b: $8f
	jp $e080                                         ; $6c3c: $c3 $80 $e0


	ret nz                                           ; $6c3f: $c0

	jr nc, jr_062_6ca2                               ; $6c40: $30 $60

	inc c                                            ; $6c42: $0c
	jr c, jr_062_6c48                                ; $6c43: $38 $03

	ld a, $07                                        ; $6c45: $3e $07
	dec e                                            ; $6c47: $1d

jr_062_6c48:
	ld b, $1c                                        ; $6c48: $06 $1c
	ld c, $18                                        ; $6c4a: $0e $18
	ld [hl], a                                       ; $6c4c: $77
	cp $ff                                           ; $6c4d: $fe $ff
	halt                                             ; $6c4f: $76
	ld d, l                                          ; $6c50: $55
	sbc [hl]                                         ; $6c51: $9e
	ld b, b                                          ; $6c52: $40
	ld a, e                                          ; $6c53: $7b
	ld a, [$b37e]                                    ; $6c54: $fa $7e $b3
	adc e                                            ; $6c57: $8b
	add c                                            ; $6c58: $81
	nop                                              ; $6c59: $00
	inc bc                                           ; $6c5a: $03
	nop                                              ; $6c5b: $00
	rlca                                             ; $6c5c: $07
	inc bc                                           ; $6c5d: $03
	rra                                              ; $6c5e: $1f
	rrca                                             ; $6c5f: $0f
	rst $38                                          ; $6c60: $ff
	ccf                                              ; $6c61: $3f
	rst $38                                          ; $6c62: $ff

jr_062_6c63:
	rst $38                                          ; $6c63: $ff
	ld a, [hl]                                       ; $6c64: $7e
	rra                                              ; $6c65: $1f
	inc a                                            ; $6c66: $3c
	ld b, $18                                        ; $6c67: $06 $18
	ld c, $10                                        ; $6c69: $0e $10
	inc c                                            ; $6c6b: $0c
	ld h, a                                          ; $6c6c: $67
	ret nz                                           ; $6c6d: $c0

	sbc d                                            ; $6c6e: $9a
	inc b                                            ; $6c6f: $04
	nop                                              ; $6c70: $00
	add e                                            ; $6c71: $83
	inc bc                                           ; $6c72: $03
	jp nz, $c01b                                     ; $6c73: $c2 $1b $c0

	sbc h                                            ; $6c76: $9c
	ret nz                                           ; $6c77: $c0

	add b                                            ; $6c78: $80
	add c                                            ; $6c79: $81
	dec bc                                           ; $6c7a: $0b
	ret nz                                           ; $6c7b: $c0

	sbc [hl]                                         ; $6c7c: $9e
	add a                                            ; $6c7d: $87
	rrca                                             ; $6c7e: $0f
	ret nz                                           ; $6c7f: $c0

	sbc l                                            ; $6c80: $9d
	ret nz                                           ; $6c81: $c0

	pop bc                                           ; $6c82: $c1
	ld a, e                                          ; $6c83: $7b
	cp [hl]                                          ; $6c84: $be
	rrca                                             ; $6c85: $0f
	ret nz                                           ; $6c86: $c0

	sbc h                                            ; $6c87: $9c
	jp $e283                                         ; $6c88: $c3 $83 $e2


	rla                                              ; $6c8b: $17
	ret nz                                           ; $6c8c: $c0

	sbc e                                            ; $6c8d: $9b
	ret nz                                           ; $6c8e: $c0

	add c                                            ; $6c8f: $81
	add b                                            ; $6c90: $80
	add e                                            ; $6c91: $83
	ld b, e                                          ; $6c92: $43
	ret nz                                           ; $6c93: $c0

	adc $01                                          ; $6c94: $ce $01
	sbc l                                            ; $6c96: $9d
	ld d, l                                          ; $6c97: $55
	ld l, d                                          ; $6c98: $6a
	ld [hl], a                                       ; $6c99: $77
	cp $89                                           ; $6c9a: $fe $89
	ld b, l                                          ; $6c9c: $45
	ld a, d                                          ; $6c9d: $7a
	ld c, a                                          ; $6c9e: $4f
	ld a, d                                          ; $6c9f: $7a
	ld c, [hl]                                       ; $6ca0: $4e
	ld a, e                                          ; $6ca1: $7b

jr_062_6ca2:
	dec hl                                           ; $6ca2: $2b
	dec a                                            ; $6ca3: $3d
	add hl, hl                                       ; $6ca4: $29
	ccf                                              ; $6ca5: $3f
	dec h                                            ; $6ca6: $25
	ccf                                              ; $6ca7: $3f
	inc d                                            ; $6ca8: $14
	rra                                              ; $6ca9: $1f
	ld a, [bc]                                       ; $6caa: $0a
	rrca                                             ; $6cab: $0f
	ld b, $07                                        ; $6cac: $06 $07
	inc bc                                           ; $6cae: $03
	inc bc                                           ; $6caf: $03
	ld bc, $e901                                     ; $6cb0: $01 $01 $e9
	rst SubAFromDE                                          ; $6cb3: $df
	ld bc, $0280                                     ; $6cb4: $01 $80 $02
	inc bc                                           ; $6cb7: $03
	dec b                                            ; $6cb8: $05
	ld b, $0b                                        ; $6cb9: $06 $0b
	inc c                                            ; $6cbb: $0c
	rla                                              ; $6cbc: $17
	jr jr_062_6cee                                   ; $6cbd: $18 $2f

	jr nc, @-$6a                                     ; $6cbf: $30 $94

	add hl, bc                                       ; $6cc1: $09
	inc h                                            ; $6cc2: $24
	sbc c                                            ; $6cc3: $99
	jr nz, jr_062_6c63                               ; $6cc4: $20 $9d

	ld c, d                                          ; $6cc6: $4a
	cp l                                             ; $6cc7: $bd
	ld c, c                                          ; $6cc8: $49
	cp a                                             ; $6cc9: $bf
	dec e                                            ; $6cca: $1d
	rst FarCall                                          ; $6ccb: $f7
	ld e, l                                          ; $6ccc: $5d
	rst $38                                          ; $6ccd: $ff
	ld e, a                                          ; $6cce: $5f
	di                                               ; $6ccf: $f3
	ld e, a                                          ; $6cd0: $5f
	pop af                                           ; $6cd1: $f1
	cp a                                             ; $6cd2: $bf
	pop af                                           ; $6cd3: $f1
	ld a, a                                          ; $6cd4: $7f
	adc e                                            ; $6cd5: $8b
	di                                               ; $6cd6: $f3
	dec a                                            ; $6cd7: $3d
	rst FarCall                                          ; $6cd8: $f7
	ld a, h                                          ; $6cd9: $7c
	db $ed                                           ; $6cda: $ed

jr_062_6cdb:
	db $fd                                           ; $6cdb: $fd
	and h                                            ; $6cdc: $a4
	db $dd                                           ; $6cdd: $dd
	or c                                             ; $6cde: $b1
	cp c                                             ; $6cdf: $b9
	ret nc                                           ; $6ce0: $d0

	ld c, e                                          ; $6ce1: $4b
	ld a, h                                          ; $6ce2: $7c
	dec hl                                           ; $6ce3: $2b
	inc a                                            ; $6ce4: $3c
	dec e                                            ; $6ce5: $1d
	ld e, $05                                        ; $6ce6: $1e $05
	ld b, $02                                        ; $6ce8: $06 $02
	ld [hl], e                                       ; $6cea: $73
	or b                                             ; $6ceb: $b0
	rst SubAFromDE                                          ; $6cec: $df
	inc bc                                           ; $6ced: $03

jr_062_6cee:
	sub a                                            ; $6cee: $97
	rra                                              ; $6cef: $1f
	inc e                                            ; $6cf0: $1c
	ld a, a                                          ; $6cf1: $7f
	ld h, b                                          ; $6cf2: $60
	rst $38                                          ; $6cf3: $ff
	add b                                            ; $6cf4: $80
	rst $38                                          ; $6cf5: $ff
	nop                                              ; $6cf6: $00
	ld h, a                                          ; $6cf7: $67
	cp $80                                           ; $6cf8: $fe $80
	ld [hl-], a                                      ; $6cfa: $32
	rst AddAOntoHL                                          ; $6cfb: $ef
	and c                                            ; $6cfc: $a1
	rst $38                                          ; $6cfd: $ff
	or c                                             ; $6cfe: $b1
	rst $38                                          ; $6cff: $ff
	or c                                             ; $6d00: $b1
	rst AddAOntoHL                                          ; $6d01: $ef
	cp c                                             ; $6d02: $b9
	ld l, a                                          ; $6d03: $6f
	ld sp, hl                                        ; $6d04: $f9
	ld h, a                                          ; $6d05: $67
	db $fc                                           ; $6d06: $fc
	rst SubAFromBC                                          ; $6d07: $e7
	cp $23                                           ; $6d08: $fe $23
	rst $38                                          ; $6d0a: $ff
	ld de, $c0ff                                     ; $6d0b: $11 $ff $c0
	rst $38                                          ; $6d0e: $ff
	ldh [$7f], a                                     ; $6d0f: $e0 $7f
	jr nc, @-$01                                     ; $6d11: $30 $fd

	ldh a, [$f8]                                     ; $6d13: $f0 $f8
	ldh [$a0], a                                     ; $6d15: $e0 $a0
	jr nz, jr_062_6cdb                               ; $6d17: $20 $c2

	add c                                            ; $6d19: $81
	ret nz                                           ; $6d1a: $c0

	jp z, Jump_062_6a31                              ; $6d1b: $ca $31 $6a

	sub c                                            ; $6d1e: $91
	ld l, a                                          ; $6d1f: $6f
	sbc c                                            ; $6d20: $99
	xor h                                            ; $6d21: $ac
	rst SubAFromDE                                          ; $6d22: $df
	adc [hl]                                         ; $6d23: $8e
	ei                                               ; $6d24: $fb
	rst GetHLinHL                                          ; $6d25: $cf
	ld a, a                                          ; $6d26: $7f
	rst SubAFromBC                                          ; $6d27: $e7
	inc a                                            ; $6d28: $3c
	rst FarCall                                          ; $6d29: $f7
	inc e                                            ; $6d2a: $1c
	ei                                               ; $6d2b: $fb
	adc a                                            ; $6d2c: $8f
	rst $38                                          ; $6d2d: $ff
	add a                                            ; $6d2e: $87
	cp $4a                                           ; $6d2f: $fe $4a
	ei                                               ; $6d31: $fb
	inc bc                                           ; $6d32: $03
	ld sp, hl                                        ; $6d33: $f9
	inc bc                                           ; $6d34: $03
	di                                               ; $6d35: $f3
	ld [bc], a                                       ; $6d36: $02
	ld h, e                                          ; $6d37: $63
	ld a, e                                          ; $6d38: $7b
	xor [hl]                                         ; $6d39: $ae
	add b                                            ; $6d3a: $80
	call $d533                                       ; $6d3b: $cd $33 $d5
	dec sp                                           ; $6d3e: $3b
	ld c, [hl]                                       ; $6d3f: $4e
	cp c                                             ; $6d40: $b9
	adc d                                            ; $6d41: $8a
	db $fd                                           ; $6d42: $fd
	ld b, h                                          ; $6d43: $44
	rst $38                                          ; $6d44: $ff
	ld h, d                                          ; $6d45: $62
	rst $38                                          ; $6d46: $ff
	cp e                                             ; $6d47: $bb
	rst AddAOntoHL                                          ; $6d48: $ef
	cp $77                                           ; $6d49: $fe $77
	rst $38                                          ; $6d4b: $ff
	sbc e                                            ; $6d4c: $9b
	cp $c3                                           ; $6d4d: $fe $c3
	cp $63                                           ; $6d4f: $fe $63
	sbc $fb                                          ; $6d51: $de $fb
	cp [hl]                                          ; $6d53: $be
	jp $417f                                         ; $6d54: $c3 $7f $41


	rst SubAFromDE                                          ; $6d57: $df
	add c                                            ; $6d58: $81
	dec a                                            ; $6d59: $3d
	add [hl]                                         ; $6d5a: $86
	inc bc                                           ; $6d5b: $03
	ccf                                              ; $6d5c: $3f
	inc bc                                           ; $6d5d: $03
	ld a, a                                          ; $6d5e: $7f
	rlca                                             ; $6d5f: $07
	ld a, [hl]                                       ; $6d60: $7e
	rlca                                             ; $6d61: $07
	db $fc                                           ; $6d62: $fc
	rrca                                             ; $6d63: $0f
	db $fc                                           ; $6d64: $fc
	ld e, $f8                                        ; $6d65: $1e $f8
	inc a                                            ; $6d67: $3c
	ldh a, [$78]                                     ; $6d68: $f0 $78
	ldh a, [$f0]                                     ; $6d6a: $f0 $f0
	ldh [$f0], a                                     ; $6d6c: $e0 $f0
	ret nz                                           ; $6d6e: $c0

	ldh [$80], a                                     ; $6d6f: $e0 $80
	ret nz                                           ; $6d71: $c0

	nop                                              ; $6d72: $00
	add b                                            ; $6d73: $80
	ld sp, hl                                        ; $6d74: $f9
	inc sp                                           ; $6d75: $33
	ld b, b                                          ; $6d76: $40
	sub h                                            ; $6d77: $94
	pop af                                           ; $6d78: $f1
	ccf                                              ; $6d79: $3f
	di                                               ; $6d7a: $f3
	ld a, l                                          ; $6d7b: $7d
	rst SubAFromBC                                          ; $6d7c: $e7
	db $fc                                           ; $6d7d: $fc
	xor l                                            ; $6d7e: $ad
	db $dd                                           ; $6d7f: $dd
	or l                                             ; $6d80: $b5
	cp c                                             ; $6d81: $b9
	ret nc                                           ; $6d82: $d0

	dec sp                                           ; $6d83: $3b
	ld h, b                                          ; $6d84: $60

jr_062_6d85:
	ld a, a                                          ; $6d85: $7f
	ld c, d                                          ; $6d86: $4a
	ld a, e                                          ; $6d87: $7b
	ld e, [hl]                                       ; $6d88: $5e
	sbc e                                            ; $6d89: $9b
	ld a, l                                          ; $6d8a: $7d
	jr nc, jr_062_6d85                               ; $6d8b: $30 $f8

	ldh a, [$33]                                     ; $6d8d: $f0 $33
	ld h, b                                          ; $6d8f: $60
	sbc b                                            ; $6d90: $98
	adc [hl]                                         ; $6d91: $8e
	rst $38                                          ; $6d92: $ff
	add a                                            ; $6d93: $87
	rst $38                                          ; $6d94: $ff
	ld b, a                                          ; $6d95: $47
	ld a, [$230a]                                    ; $6d96: $fa $0a $23
	ld h, b                                          ; $6d99: $60
	sbc h                                            ; $6d9a: $9c
	dec de                                           ; $6d9b: $1b
	cp $03                                           ; $6d9c: $fe $03
	ld l, a                                          ; $6d9e: $6f
	ld e, [hl]                                       ; $6d9f: $5e
	ld l, a                                          ; $6da0: $6f
	ld h, b                                          ; $6da1: $60
	ld d, e                                          ; $6da2: $53
	add b                                            ; $6da3: $80
	sbc h                                            ; $6da4: $9c
	rst FarCall                                          ; $6da5: $f7
	ld e, a                                          ; $6da6: $5f
	rst $38                                          ; $6da7: $ff
	ld a, e                                          ; $6da8: $7b
	add b                                            ; $6da9: $80
	sub d                                            ; $6daa: $92
	ldh a, [$7f]                                     ; $6dab: $f0 $7f
	ldh a, [$3f]                                     ; $6dad: $f0 $3f
	ldh a, [$7f]                                     ; $6daf: $f0 $7f
	ldh [rIE], a                                     ; $6db1: $e0 $ff
	and e                                            ; $6db3: $a3
	rst SubAFromDE                                          ; $6db4: $df
	cp a                                             ; $6db5: $bf
	cp e                                             ; $6db6: $bb
	db $d3                                           ; $6db7: $d3
	ld d, e                                          ; $6db8: $53
	add b                                            ; $6db9: $80
	sbc h                                            ; $6dba: $9c
	daa                                              ; $6dbb: $27
	cp $e3                                           ; $6dbc: $fe $e3
	ld [hl], e                                       ; $6dbe: $73
	add b                                            ; $6dbf: $80
	ld a, e                                          ; $6dc0: $7b
	cp $98                                           ; $6dc1: $fe $98
	db $fd                                           ; $6dc3: $fd
	nop                                              ; $6dc4: $00
	ld hl, sp-$20                                    ; $6dc5: $f8 $e0
	ld [hl], b                                       ; $6dc7: $70
	ld [hl], b                                       ; $6dc8: $70
	ldh [c], a                                       ; $6dc9: $e2
	ld d, a                                          ; $6dca: $57
	add b                                            ; $6dcb: $80
	sbc h                                            ; $6dcc: $9c
	ld a, c                                          ; $6dcd: $79
	rst SubAFromBC                                          ; $6dce: $e7
	ccf                                              ; $6dcf: $3f
	ld [hl], e                                       ; $6dd0: $73
	add b                                            ; $6dd1: $80
	sbc h                                            ; $6dd2: $9c
	add [hl]                                         ; $6dd3: $86
	rst $38                                          ; $6dd4: $ff
	ld b, d                                          ; $6dd5: $42
	ld a, e                                          ; $6dd6: $7b
	sbc $7f                                          ; $6dd7: $de $7f
	sbc d                                            ; $6dd9: $9a
	sbc h                                            ; $6dda: $9c
	ld c, $67                                        ; $6ddb: $0e $67
	inc bc                                           ; $6ddd: $03
	ld c, e                                          ; $6dde: $4b
	add b                                            ; $6ddf: $80
	sbc [hl]                                         ; $6de0: $9e
	rst $38                                          ; $6de1: $ff
	ld l, e                                          ; $6de2: $6b
	add b                                            ; $6de3: $80
	ld [hl], a                                       ; $6de4: $77
	cp $9a                                           ; $6de5: $fe $9a
	jp $f9ff                                         ; $6de7: $c3 $ff $f9


	rst $38                                          ; $6dea: $ff
	pop bc                                           ; $6deb: $c1
	dec bc                                           ; $6dec: $0b
	add b                                            ; $6ded: $80
	sbc [hl]                                         ; $6dee: $9e
	cp h                                             ; $6def: $bc
	inc de                                           ; $6df0: $13
	add b                                            ; $6df1: $80
	sbc h                                            ; $6df2: $9c
	add b                                            ; $6df3: $80
	ldh a, [$30]                                     ; $6df4: $f0 $30
	dec de                                           ; $6df6: $1b
	add b                                            ; $6df7: $80
	sbc h                                            ; $6df8: $9c
	ld bc, $0cff                                     ; $6df9: $01 $ff $0c
	dec bc                                           ; $6dfc: $0b
	add b                                            ; $6dfd: $80
	sbc [hl]                                         ; $6dfe: $9e
	add hl, sp                                       ; $6dff: $39
	ld [hl], a                                       ; $6e00: $77
	add b                                            ; $6e01: $80
	sbc d                                            ; $6e02: $9a
	rlca                                             ; $6e03: $07
	nop                                              ; $6e04: $00
	rrca                                             ; $6e05: $0f
	inc b                                            ; $6e06: $04
	rlca                                             ; $6e07: $07
	cp $9e                                           ; $6e08: $fe $9e
	dec b                                            ; $6e0a: $05
	ld a, d                                          ; $6e0b: $7a
	ld l, l                                          ; $6e0c: $6d
	adc a                                            ; $6e0d: $8f
	jp $e080                                         ; $6e0e: $c3 $80 $e0


	ret nz                                           ; $6e11: $c0

	jr nc, jr_062_6e74                               ; $6e12: $30 $60

	inc c                                            ; $6e14: $0c
	jr c, jr_062_6e1a                                ; $6e15: $38 $03

	ld a, $07                                        ; $6e17: $3e $07
	dec e                                            ; $6e19: $1d

jr_062_6e1a:
	ld b, $1c                                        ; $6e1a: $06 $1c
	ld c, $18                                        ; $6e1c: $0e $18
	ld [hl], a                                       ; $6e1e: $77
	cp $ff                                           ; $6e1f: $fe $ff
	ld l, [hl]                                       ; $6e21: $6e
	ld d, l                                          ; $6e22: $55

jr_062_6e23:
	add a                                            ; $6e23: $87
	ret nz                                           ; $6e24: $c0

	add b                                            ; $6e25: $80
	ld bc, $8100                                     ; $6e26: $01 $00 $81
	nop                                              ; $6e29: $00
	inc bc                                           ; $6e2a: $03
	nop                                              ; $6e2b: $00
	rlca                                             ; $6e2c: $07
	inc bc                                           ; $6e2d: $03
	rra                                              ; $6e2e: $1f
	rrca                                             ; $6e2f: $0f
	rst $38                                          ; $6e30: $ff

jr_062_6e31:
	ccf                                              ; $6e31: $3f
	rst $38                                          ; $6e32: $ff
	rst $38                                          ; $6e33: $ff
	ld a, [hl]                                       ; $6e34: $7e
	rra                                              ; $6e35: $1f
	inc a                                            ; $6e36: $3c
	ld b, $18                                        ; $6e37: $06 $18
	ld c, $10                                        ; $6e39: $0e $10
	inc c                                            ; $6e3b: $0c
	ld h, a                                          ; $6e3c: $67
	ret nz                                           ; $6e3d: $c0

	sbc h                                            ; $6e3e: $9c
	inc b                                            ; $6e3f: $04
	nop                                              ; $6e40: $00
	add d                                            ; $6e41: $82
	dec bc                                           ; $6e42: $0b
	ret nz                                           ; $6e43: $c0

	ld a, a                                          ; $6e44: $7f
	jp nz, $c00f                                     ; $6e45: $c2 $0f $c0

	sbc h                                            ; $6e48: $9c
	add e                                            ; $6e49: $83
	inc bc                                           ; $6e4a: $03
	jp nz, $c00f                                     ; $6e4b: $c2 $0f $c0

	ld a, e                                          ; $6e4e: $7b
	cp [hl]                                          ; $6e4f: $be
	rla                                              ; $6e50: $17
	ret nz                                           ; $6e51: $c0

	sbc d                                            ; $6e52: $9a
	add a                                            ; $6e53: $87
	inc bc                                           ; $6e54: $03
	jp $e283                                         ; $6e55: $c3 $83 $e2


	dec de                                           ; $6e58: $1b
	ret nz                                           ; $6e59: $c0

	sbc [hl]                                         ; $6e5a: $9e
	pop bc                                           ; $6e5b: $c1
	ld a, e                                          ; $6e5c: $7b
	cp [hl]                                          ; $6e5d: $be
	sbc [hl]                                         ; $6e5e: $9e
	add e                                            ; $6e5f: $83
	ld b, e                                          ; $6e60: $43
	ret nz                                           ; $6e61: $c0

	add $01                                          ; $6e62: $c6 $01
	sbc l                                            ; $6e64: $9d
	ld d, l                                          ; $6e65: $55
	ld l, d                                          ; $6e66: $6a
	ld [hl], a                                       ; $6e67: $77
	cp $89                                           ; $6e68: $fe $89
	ld b, l                                          ; $6e6a: $45
	ld a, d                                          ; $6e6b: $7a
	ld c, a                                          ; $6e6c: $4f
	ld a, d                                          ; $6e6d: $7a
	ld c, [hl]                                       ; $6e6e: $4e
	ld a, e                                          ; $6e6f: $7b
	dec hl                                           ; $6e70: $2b
	dec a                                            ; $6e71: $3d
	add hl, hl                                       ; $6e72: $29
	ccf                                              ; $6e73: $3f

jr_062_6e74:
	dec h                                            ; $6e74: $25
	ccf                                              ; $6e75: $3f
	inc d                                            ; $6e76: $14
	rra                                              ; $6e77: $1f
	ld a, [bc]                                       ; $6e78: $0a
	rrca                                             ; $6e79: $0f
	ld b, $07                                        ; $6e7a: $06 $07
	inc bc                                           ; $6e7c: $03
	inc bc                                           ; $6e7d: $03
	ld bc, $e901                                     ; $6e7e: $01 $01 $e9
	rst SubAFromDE                                          ; $6e81: $df
	ld bc, $0280                                     ; $6e82: $01 $80 $02
	inc bc                                           ; $6e85: $03
	dec b                                            ; $6e86: $05
	ld b, $0b                                        ; $6e87: $06 $0b
	inc c                                            ; $6e89: $0c
	rla                                              ; $6e8a: $17
	jr jr_062_6ebc                                   ; $6e8b: $18 $2f

	jr nc, jr_062_6e23                               ; $6e8d: $30 $94

	add hl, bc                                       ; $6e8f: $09
	inc h                                            ; $6e90: $24
	sbc c                                            ; $6e91: $99
	jr nz, jr_062_6e31                               ; $6e92: $20 $9d

	ld c, d                                          ; $6e94: $4a
	cp l                                             ; $6e95: $bd
	ld c, c                                          ; $6e96: $49
	cp a                                             ; $6e97: $bf
	dec e                                            ; $6e98: $1d
	rst FarCall                                          ; $6e99: $f7
	ld e, l                                          ; $6e9a: $5d
	rst $38                                          ; $6e9b: $ff
	ld e, a                                          ; $6e9c: $5f
	di                                               ; $6e9d: $f3
	ld e, a                                          ; $6e9e: $5f
	pop af                                           ; $6e9f: $f1
	cp a                                             ; $6ea0: $bf
	ldh a, [$7f]                                     ; $6ea1: $f0 $7f
	adc e                                            ; $6ea3: $8b
	di                                               ; $6ea4: $f3
	ccf                                              ; $6ea5: $3f
	rst $38                                          ; $6ea6: $ff
	ld a, l                                          ; $6ea7: $7d
	push hl                                          ; $6ea8: $e5

jr_062_6ea9:
	db $fc                                           ; $6ea9: $fc
	and c                                            ; $6eaa: $a1
	db $dd                                           ; $6eab: $dd
	or c                                             ; $6eac: $b1
	cp c                                             ; $6ead: $b9
	ret nc                                           ; $6eae: $d0

	ld c, e                                          ; $6eaf: $4b
	ld a, h                                          ; $6eb0: $7c
	dec hl                                           ; $6eb1: $2b
	inc a                                            ; $6eb2: $3c
	dec e                                            ; $6eb3: $1d
	ld e, $05                                        ; $6eb4: $1e $05
	ld b, $02                                        ; $6eb6: $06 $02
	ld [hl], e                                       ; $6eb8: $73
	or b                                             ; $6eb9: $b0
	rst SubAFromDE                                          ; $6eba: $df
	inc bc                                           ; $6ebb: $03

jr_062_6ebc:
	sub a                                            ; $6ebc: $97
	rra                                              ; $6ebd: $1f
	inc e                                            ; $6ebe: $1c
	ld a, a                                          ; $6ebf: $7f
	ld h, b                                          ; $6ec0: $60
	rst $38                                          ; $6ec1: $ff
	add b                                            ; $6ec2: $80
	rst $38                                          ; $6ec3: $ff
	nop                                              ; $6ec4: $00
	ld h, a                                          ; $6ec5: $67
	cp $80                                           ; $6ec6: $fe $80
	ld [hl-], a                                      ; $6ec8: $32
	rst AddAOntoHL                                          ; $6ec9: $ef
	and c                                            ; $6eca: $a1
	rst $38                                          ; $6ecb: $ff
	or c                                             ; $6ecc: $b1
	rst $38                                          ; $6ecd: $ff
	or c                                             ; $6ece: $b1
	rst AddAOntoHL                                          ; $6ecf: $ef
	cp c                                             ; $6ed0: $b9
	ld l, a                                          ; $6ed1: $6f
	ld sp, hl                                        ; $6ed2: $f9
	ld h, a                                          ; $6ed3: $67
	db $fc                                           ; $6ed4: $fc
	ld h, a                                          ; $6ed5: $67
	cp $a3                                           ; $6ed6: $fe $a3
	rst $38                                          ; $6ed8: $ff
	pop de                                           ; $6ed9: $d1
	rst $38                                          ; $6eda: $ff
	jr nz, @+$01                                     ; $6edb: $20 $ff

	ret nz                                           ; $6edd: $c0

jr_062_6ede:
	ld a, a                                          ; $6ede: $7f
	jr nz, jr_062_6ede                               ; $6edf: $20 $fd

	ldh [$f8], a                                     ; $6ee1: $e0 $f8
	ldh [$a0], a                                     ; $6ee3: $e0 $a0
	jr nz, jr_062_6ea9                               ; $6ee5: $20 $c2

	add c                                            ; $6ee7: $81
	ret nz                                           ; $6ee8: $c0

	jp z, Jump_062_6a31                              ; $6ee9: $ca $31 $6a

	sub c                                            ; $6eec: $91
	ld l, a                                          ; $6eed: $6f
	sbc c                                            ; $6eee: $99
	xor h                                            ; $6eef: $ac
	rst SubAFromDE                                          ; $6ef0: $df
	adc [hl]                                         ; $6ef1: $8e
	ei                                               ; $6ef2: $fb
	rst GetHLinHL                                          ; $6ef3: $cf
	ld a, c                                          ; $6ef4: $79
	rst SubAFromBC                                          ; $6ef5: $e7
	dec a                                            ; $6ef6: $3d
	rst FarCall                                          ; $6ef7: $f7
	rra                                              ; $6ef8: $1f
	ei                                               ; $6ef9: $fb
	adc [hl]                                         ; $6efa: $8e
	rst $38                                          ; $6efb: $ff
	add a                                            ; $6efc: $87
	cp $4a                                           ; $6efd: $fe $4a

Call_062_6eff:
	ei                                               ; $6eff: $fb
	dec bc                                           ; $6f00: $0b
	ld sp, hl                                        ; $6f01: $f9
	inc bc                                           ; $6f02: $03
	di                                               ; $6f03: $f3
	ld [bc], a                                       ; $6f04: $02
	ld h, e                                          ; $6f05: $63
	ld a, e                                          ; $6f06: $7b
	xor [hl]                                         ; $6f07: $ae
	add b                                            ; $6f08: $80
	call $d533                                       ; $6f09: $cd $33 $d5
	dec sp                                           ; $6f0c: $3b
	ld c, [hl]                                       ; $6f0d: $4e
	cp c                                             ; $6f0e: $b9
	adc d                                            ; $6f0f: $8a
	db $fd                                           ; $6f10: $fd
	ld b, h                                          ; $6f11: $44
	rst $38                                          ; $6f12: $ff
	ld h, d                                          ; $6f13: $62
	rst $38                                          ; $6f14: $ff
	cp e                                             ; $6f15: $bb
	rst AddAOntoHL                                          ; $6f16: $ef
	cp $77                                           ; $6f17: $fe $77
	rst $38                                          ; $6f19: $ff
	dec de                                           ; $6f1a: $1b
	cp $c3                                           ; $6f1b: $fe $c3
	cp $63                                           ; $6f1d: $fe $63
	sbc $fb                                          ; $6f1f: $de $fb
	cp [hl]                                          ; $6f21: $be
	jp $417f                                         ; $6f22: $c3 $7f $41


	rst SubAFromDE                                          ; $6f25: $df
	add c                                            ; $6f26: $81
	dec a                                            ; $6f27: $3d
	add [hl]                                         ; $6f28: $86
	inc bc                                           ; $6f29: $03
	ccf                                              ; $6f2a: $3f
	inc bc                                           ; $6f2b: $03
	ld a, a                                          ; $6f2c: $7f
	rlca                                             ; $6f2d: $07
	ld a, [hl]                                       ; $6f2e: $7e
	rlca                                             ; $6f2f: $07
	db $fc                                           ; $6f30: $fc
	rrca                                             ; $6f31: $0f
	db $fc                                           ; $6f32: $fc
	ld e, $f8                                        ; $6f33: $1e $f8
	inc a                                            ; $6f35: $3c
	ldh a, [$78]                                     ; $6f36: $f0 $78
	ldh a, [$f0]                                     ; $6f38: $f0 $f0
	ldh [$f0], a                                     ; $6f3a: $e0 $f0
	ret nz                                           ; $6f3c: $c0

	ldh [$80], a                                     ; $6f3d: $e0 $80
	ret nz                                           ; $6f3f: $c0

	nop                                              ; $6f40: $00
	add b                                            ; $6f41: $80
	ld sp, hl                                        ; $6f42: $f9
	inc sp                                           ; $6f43: $33
	ld b, b                                          ; $6f44: $40
	sbc b                                            ; $6f45: $98
	ldh a, [$3f]                                     ; $6f46: $f0 $3f
	di                                               ; $6f48: $f3
	ld a, a                                          ; $6f49: $7f
	rst AddAOntoHL                                          ; $6f4a: $ef
	db $fc                                           ; $6f4b: $fc
	and l                                            ; $6f4c: $a5
	ld [hl], a                                       ; $6f4d: $77
	ld b, b                                          ; $6f4e: $40
	inc sp                                           ; $6f4f: $33
	ld h, b                                          ; $6f50: $60
	ld a, a                                          ; $6f51: $7f
	ld c, b                                          ; $6f52: $48
	sbc h                                            ; $6f53: $9c
	ret nz                                           ; $6f54: $c0

	ld a, l                                          ; $6f55: $7d
	jr nz, jr_062_6f7b                               ; $6f56: $20 $23

	ld h, b                                          ; $6f58: $60
	sbc b                                            ; $6f59: $98
	add [hl]                                         ; $6f5a: $86
	rst $38                                          ; $6f5b: $ff
	ld b, e                                          ; $6f5c: $43
	cp $06                                           ; $6f5d: $fe $06
	ld sp, hl                                        ; $6f5f: $f9
	dec bc                                           ; $6f60: $0b
	inc hl                                           ; $6f61: $23
	ld h, b                                          ; $6f62: $60
	sbc [hl]                                         ; $6f63: $9e
	inc bc                                           ; $6f64: $03
	ld [hl], a                                       ; $6f65: $77
	ld e, [hl]                                       ; $6f66: $5e
	sbc l                                            ; $6f67: $9d
	cp $db                                           ; $6f68: $fe $db
	ld l, a                                          ; $6f6a: $6f
	ld h, b                                          ; $6f6b: $60
	ld d, e                                          ; $6f6c: $53
	add b                                            ; $6f6d: $80
	sbc h                                            ; $6f6e: $9c
	rst FarCall                                          ; $6f6f: $f7
	ld e, a                                          ; $6f70: $5f
	rst $38                                          ; $6f71: $ff
	ld l, e                                          ; $6f72: $6b
	add b                                            ; $6f73: $80
	ld a, a                                          ; $6f74: $7f
	db $fc                                           ; $6f75: $fc
	sbc b                                            ; $6f76: $98
	ldh [rIE], a                                     ; $6f77: $e0 $ff
	and e                                            ; $6f79: $a3
	rst SubAFromDE                                          ; $6f7a: $df

jr_062_6f7b:
	cp a                                             ; $6f7b: $bf
	cp e                                             ; $6f7c: $bb
	db $d3                                           ; $6f7d: $d3
	ld c, e                                          ; $6f7e: $4b
	add b                                            ; $6f7f: $80
	sbc d                                            ; $6f80: $9a
	inc hl                                           ; $6f81: $23
	rst $38                                          ; $6f82: $ff
	sub c                                            ; $6f83: $91
	rst $38                                          ; $6f84: $ff
	ld b, b                                          ; $6f85: $40
	ld [hl], a                                       ; $6f86: $77
	ld a, [hl]                                       ; $6f87: $7e
	sbc b                                            ; $6f88: $98
	db $fd                                           ; $6f89: $fd
	nop                                              ; $6f8a: $00
	ld hl, sp-$40                                    ; $6f8b: $f8 $c0
	ld h, b                                          ; $6f8d: $60
	ld h, b                                          ; $6f8e: $60
	ldh [c], a                                       ; $6f8f: $e2
	ld b, a                                          ; $6f90: $47
	add b                                            ; $6f91: $80
	sbc h                                            ; $6f92: $9c
	ld e, $fb                                        ; $6f93: $1e $fb
	adc a                                            ; $6f95: $8f
	ld a, e                                          ; $6f96: $7b
	add b                                            ; $6f97: $80
	sbc [hl]                                         ; $6f98: $9e
	ld b, d                                          ; $6f99: $42
	ld a, e                                          ; $6f9a: $7b
	ld e, [hl]                                       ; $6f9b: $5e
	ld a, a                                          ; $6f9c: $7f
	sbc d                                            ; $6f9d: $9a
	sbc h                                            ; $6f9e: $9c
	ld c, $67                                        ; $6f9f: $0e $67
	inc bc                                           ; $6fa1: $03
	ld c, e                                          ; $6fa2: $4b
	add b                                            ; $6fa3: $80
	sbc h                                            ; $6fa4: $9c
	rst $38                                          ; $6fa5: $ff
	cp $f7                                           ; $6fa6: $fe $f7
	ld [hl], e                                       ; $6fa8: $73
	add b                                            ; $6fa9: $80
	ld [hl], a                                       ; $6faa: $77
	cp $9a                                           ; $6fab: $fe $9a
	jp $f9ff                                         ; $6fad: $c3 $ff $f9


	rst $38                                          ; $6fb0: $ff
	pop bc                                           ; $6fb1: $c1
	dec bc                                           ; $6fb2: $0b
	add b                                            ; $6fb3: $80
	sbc [hl]                                         ; $6fb4: $9e
	cp h                                             ; $6fb5: $bc
	inc de                                           ; $6fb6: $13
	add b                                            ; $6fb7: $80
	sbc h                                            ; $6fb8: $9c
	add b                                            ; $6fb9: $80
	ldh [rAUD4LEN], a                                ; $6fba: $e0 $20
	dec de                                           ; $6fbc: $1b
	add b                                            ; $6fbd: $80
	sbc h                                            ; $6fbe: $9c
	ld bc, $0cff                                     ; $6fbf: $01 $ff $0c
	dec bc                                           ; $6fc2: $0b
	add b                                            ; $6fc3: $80
	sbc [hl]                                         ; $6fc4: $9e
	add hl, sp                                       ; $6fc5: $39
	ld [hl], a                                       ; $6fc6: $77
	add b                                            ; $6fc7: $80
	sbc d                                            ; $6fc8: $9a
	rlca                                             ; $6fc9: $07
	nop                                              ; $6fca: $00
	rrca                                             ; $6fcb: $0f
	inc b                                            ; $6fcc: $04
	rlca                                             ; $6fcd: $07
	cp $8b                                           ; $6fce: $fe $8b
	rlca                                             ; $6fd0: $07
	ld bc, $0080                                     ; $6fd1: $01 $80 $00
	jp $e080                                         ; $6fd4: $c3 $80 $e0


	ret nz                                           ; $6fd7: $c0

	jr nc, @+$62                                     ; $6fd8: $30 $60

	inc c                                            ; $6fda: $0c
	jr c, jr_062_6fe0                                ; $6fdb: $38 $03

	ld a, $07                                        ; $6fdd: $3e $07
	dec e                                            ; $6fdf: $1d

jr_062_6fe0:
	ld b, $1c                                        ; $6fe0: $06 $1c
	ld c, $18                                        ; $6fe2: $0e $18
	ld [hl], a                                       ; $6fe4: $77
	cp $ff                                           ; $6fe5: $fe $ff
	ld h, [hl]                                       ; $6fe7: $66
	ld d, l                                          ; $6fe8: $55
	adc c                                            ; $6fe9: $89
	pop bc                                           ; $6fea: $c1
	nop                                              ; $6feb: $00
	add c                                            ; $6fec: $81
	nop                                              ; $6fed: $00
	inc bc                                           ; $6fee: $03
	nop                                              ; $6fef: $00
	rlca                                             ; $6ff0: $07
	inc bc                                           ; $6ff1: $03
	rra                                              ; $6ff2: $1f
	rrca                                             ; $6ff3: $0f
	rst $38                                          ; $6ff4: $ff
	ccf                                              ; $6ff5: $3f
	rst $38                                          ; $6ff6: $ff
	rst $38                                          ; $6ff7: $ff
	ld a, [hl]                                       ; $6ff8: $7e
	rra                                              ; $6ff9: $1f
	inc a                                            ; $6ffa: $3c
	ld b, $18                                        ; $6ffb: $06 $18
	ld c, $10                                        ; $6ffd: $0e $10
	inc c                                            ; $6fff: $0c
	ld h, e                                          ; $7000: $63
	ret nz                                           ; $7001: $c0

	sbc e                                            ; $7002: $9b
	inc bc                                           ; $7003: $03
	add a                                            ; $7004: $87
	inc bc                                           ; $7005: $03
	pop bc                                           ; $7006: $c1
	dec de                                           ; $7007: $1b
	ret nz                                           ; $7008: $c0

	ld a, a                                          ; $7009: $7f
	ld a, [$e27f]                                    ; $700a: $fa $7f $e2
	rla                                              ; $700d: $17
	ret nz                                           ; $700e: $c0

	rst SubAFromDE                                          ; $700f: $df
	inc bc                                           ; $7010: $03
	ld a, a                                          ; $7011: $7f
	ret nz                                           ; $7012: $c0

	sbc h                                            ; $7013: $9c
	rst JumpTable                                          ; $7014: $c7
	add e                                            ; $7015: $83
	pop hl                                           ; $7016: $e1
	inc de                                           ; $7017: $13
	ret nz                                           ; $7018: $c0

	ld a, a                                          ; $7019: $7f
	cp $9e                                           ; $701a: $fe $9e
	add e                                            ; $701c: $83
	dec bc                                           ; $701d: $0b
	ret nz                                           ; $701e: $c0

	sbc l                                            ; $701f: $9d
	db $e3                                           ; $7020: $e3
	jp $c00b                                         ; $7021: $c3 $0b $c0


	sbc [hl]                                         ; $7024: $9e
	add b                                            ; $7025: $80
	ld b, a                                          ; $7026: $47
	ret nz                                           ; $7027: $c0

	db $ed                                           ; $7028: $ed
	ld [bc], a                                       ; $7029: $02
	ei                                               ; $702a: $fb
	rst SubAFromDE                                          ; $702b: $df
	ld bc, $038f                                     ; $702c: $01 $8f $03
	ld [bc], a                                       ; $702f: $02
	rlca                                             ; $7030: $07
	inc b                                            ; $7031: $04
	rrca                                             ; $7032: $0f
	ld [$101f], sp                                   ; $7033: $08 $1f $10
	rra                                              ; $7036: $1f
	db $10                                           ; $7037: $10
	ccf                                              ; $7038: $3f
	jr nz, jr_062_707a                               ; $7039: $20 $3f

	jr nz, @+$81                                     ; $703b: $20 $7f

	ld b, b                                          ; $703d: $40
	ld a, e                                          ; $703e: $7b
	cp $9c                                           ; $703f: $fe $9c
	nop                                              ; $7041: $00
	rst $38                                          ; $7042: $ff
	add b                                            ; $7043: $80
	ld h, a                                          ; $7044: $67
	cp $7f                                           ; $7045: $fe $7f
	db $f4                                           ; $7047: $f4
	ld [hl], a                                       ; $7048: $77
	xor $9d                                          ; $7049: $ee $9d
	ccf                                              ; $704b: $3f
	nop                                              ; $704c: $00
	ld [hl], a                                       ; $704d: $77
	db $e4                                           ; $704e: $e4
	ld a, a                                          ; $704f: $7f
	sbc $95                                          ; $7050: $de $95
	dec e                                            ; $7052: $1d
	dec de                                           ; $7053: $1b
	rrca                                             ; $7054: $0f
	rrca                                             ; $7055: $0f
	ld b, $05                                        ; $7056: $06 $05
	inc bc                                           ; $7058: $03
	ld [bc], a                                       ; $7059: $02
	ld bc, $7701                                     ; $705a: $01 $01 $77
	add $8f                                          ; $705d: $c6 $8f
	rra                                              ; $705f: $1f
	jr jr_062_70e1                                   ; $7060: $18 $7f

	ld h, b                                          ; $7062: $60
	rst $38                                          ; $7063: $ff
	add b                                            ; $7064: $80
	cp $01                                           ; $7065: $fe $01
	db $fd                                           ; $7067: $fd
	inc bc                                           ; $7068: $03
	db $e3                                           ; $7069: $e3
	rra                                              ; $706a: $1f
	rst SubAFromDE                                          ; $706b: $df
	ccf                                              ; $706c: $3f
	pop af                                           ; $706d: $f1
	rrca                                             ; $706e: $0f
	ld h, a                                          ; $706f: $67
	or $8a                                           ; $7070: $f6 $8a
	ldh a, [rIF]                                     ; $7072: $f0 $0f
	or $0f                                           ; $7074: $f6 $0f
	rst FarCall                                          ; $7076: $f7
	rrca                                             ; $7077: $0f
	inc bc                                           ; $7078: $03
	rrca                                             ; $7079: $0f

jr_062_707a:
	nop                                              ; $707a: $00
	inc bc                                           ; $707b: $03
	rrca                                             ; $707c: $0f
	ld a, a                                          ; $707d: $7f
	ld a, [hl]                                       ; $707e: $7e
	rst $38                                          ; $707f: $ff
	ld a, h                                          ; $7080: $7c
	rst $38                                          ; $7081: $ff
	dec sp                                           ; $7082: $3b
	ld a, a                                          ; $7083: $7f
	ld bc, $003b                                     ; $7084: $01 $3b $00
	ld a, e                                          ; $7087: $7b
	adc $91                                          ; $7088: $ce $91
	inc a                                            ; $708a: $3c
	ld a, [hl]                                       ; $708b: $7e
	and a                                            ; $708c: $a7
	and c                                            ; $708d: $a1
	and [hl]                                         ; $708e: $a6
	ld h, b                                          ; $708f: $60
	db $e4                                           ; $7090: $e4
	and h                                            ; $7091: $a4
	ld h, l                                          ; $7092: $65
	call nz, Call_062_75d5                           ; $7093: $c4 $d5 $75
	ld a, [$eda8]                                    ; $7096: $fa $a8 $ed
	rst SubAFromDE                                          ; $7099: $df
	inc bc                                           ; $709a: $03
	ld a, a                                          ; $709b: $7f
	and e                                            ; $709c: $a3
	sub a                                            ; $709d: $97
	ld c, $0f                                        ; $709e: $0e $0f
	inc de                                           ; $70a0: $13
	ld [de], a                                       ; $70a1: $12
	dec b                                            ; $70a2: $05
	ld b, $07                                        ; $70a3: $06 $07
	inc b                                            ; $70a5: $04
	ldh [$c1], a                                     ; $70a6: $e0 $c1
	add b                                            ; $70a8: $80
	adc $ef                                          ; $70a9: $ce $ef
	db $fc                                           ; $70ab: $fc
	cp $f8                                           ; $70ac: $fe $f8
	db $fc                                           ; $70ae: $fc
	ldh [$f0], a                                     ; $70af: $e0 $f0
	ldh a, [$f9]                                     ; $70b1: $f0 $f9
	ccf                                              ; $70b3: $3f
	rst $38                                          ; $70b4: $ff
	ccf                                              ; $70b5: $3f
	ccf                                              ; $70b6: $3f
	add a                                            ; $70b7: $87
	rst $38                                          ; $70b8: $ff
	ld hl, sp-$01                                    ; $70b9: $f8 $ff
	cp $ff                                           ; $70bb: $fe $ff
	rrca                                             ; $70bd: $0f
	cp a                                             ; $70be: $bf
	rrca                                             ; $70bf: $0f
	rra                                              ; $70c0: $1f
	ld e, $3f                                        ; $70c1: $1e $3f
	ld a, $ff                                        ; $70c3: $3e $ff
	db $fc                                           ; $70c5: $fc
	cp $fc                                           ; $70c6: $fe $fc
	adc [hl]                                         ; $70c8: $8e
	cp $78                                           ; $70c9: $fe $78
	db $fc                                           ; $70cb: $fc
	jr jr_062_7106                                   ; $70cc: $18 $38

	add b                                            ; $70ce: $80
	ret nz                                           ; $70cf: $c0

	ldh [rSVBK], a                                   ; $70d0: $e0 $70
	cp b                                             ; $70d2: $b8
	sbc b                                            ; $70d3: $98
	inc [hl]                                         ; $70d4: $34
	ld d, $ee                                        ; $70d5: $16 $ee
	inc hl                                           ; $70d7: $23
	db $d3                                           ; $70d8: $d3
	ld b, c                                          ; $70d9: $41
	jp hl                                            ; $70da: $e9


	ld a, e                                          ; $70db: $7b
	ld l, h                                          ; $70dc: $6c
	adc d                                            ; $70dd: $8a
	ld b, $0b                                        ; $70de: $06 $0b
	dec c                                            ; $70e0: $0d

jr_062_70e1:
	rla                                              ; $70e1: $17
	dec de                                           ; $70e2: $1b
	inc a                                            ; $70e3: $3c
	ccf                                              ; $70e4: $3f
	rst JumpTable                                          ; $70e5: $c7
	ld hl, sp-$41                                    ; $70e6: $f8 $bf
	ret nz                                           ; $70e8: $c0

	ld l, [hl]                                       ; $70e9: $6e
	sub c                                            ; $70ea: $91
	call c, $f923                                    ; $70eb: $dc $23 $f9
	ld b, $fb                                        ; $70ee: $06 $fb
	inc b                                            ; $70f0: $04
	ld [hl], e                                       ; $70f1: $73
	adc h                                            ; $70f2: $8c
	ldh [$c1], a                                     ; $70f3: $e0 $c1
	sbc b                                            ; $70f5: $98
	ld h, c                                          ; $70f6: $61
	ld [hl], e                                       ; $70f7: $73
	ld h, e                                          ; $70f8: $63
	ld [hl], a                                       ; $70f9: $77
	ld [hl], $7f                                     ; $70fa: $36 $7f
	inc a                                            ; $70fc: $3c
	ld a, e                                          ; $70fd: $7b
	ld e, h                                          ; $70fe: $5c
	add c                                            ; $70ff: $81
	call c, $0efe                                    ; $7100: $dc $fe $0e
	rst $38                                          ; $7103: $ff
	rst AddAOntoHL                                          ; $7104: $ef
	rst $38                                          ; $7105: $ff

jr_062_7106:
	rst SubAFromBC                                          ; $7106: $e7
	rst $38                                          ; $7107: $ff
	inc bc                                           ; $7108: $03
	rst FarCall                                          ; $7109: $f7
	ldh a, [$fb]                                     ; $710a: $f0 $fb

jr_062_710c:
	ld hl, sp-$04                                    ; $710c: $f8 $fc
	jr c, jr_062_710c                                ; $710e: $38 $fc

	ret nz                                           ; $7110: $c0

	ldh a, [rSVBK]                                   ; $7111: $f0 $70
	ld hl, sp+$78                                    ; $7113: $f8 $78
	ld a, h                                          ; $7115: $7c
	inc a                                            ; $7116: $3c
	ld a, [hl]                                       ; $7117: $7e
	inc a                                            ; $7118: $3c

jr_062_7119:
	ld a, [hl]                                       ; $7119: $7e
	jr @+$3e                                         ; $711a: $18 $3c

	nop                                              ; $711c: $00
	jr jr_062_7119                                   ; $711d: $18 $fa

	sbc [hl]                                         ; $711f: $9e
	add b                                            ; $7120: $80
	rst AddAOntoHL                                          ; $7121: $ef
	ld a, [hl]                                       ; $7122: $7e

jr_062_7123:
	db $db                                           ; $7123: $db
	add e                                            ; $7124: $83
	ld sp, $ce3f                                     ; $7125: $31 $3f $ce
	rst $38                                          ; $7128: $ff
	ld [hl], e                                       ; $7129: $73
	cp h                                             ; $712a: $bc
	rst SubAFromDE                                          ; $712b: $df
	ldh [$1f], a                                     ; $712c: $e0 $1f
	rst $38                                          ; $712e: $ff
	rst AddAOntoHL                                          ; $712f: $ef
	ldh a, [rIE]                                     ; $7130: $f0 $ff
	nop                                              ; $7132: $00
	rst GetHLinHL                                          ; $7133: $cf
	jr nc, jr_062_7171                               ; $7134: $30 $3b

	ret nz                                           ; $7136: $c0

	ld h, $90                                        ; $7137: $26 $90
	ld c, [hl]                                       ; $7139: $4e
	jr nz, @-$69                                     ; $713a: $20 $95

	ld c, b                                          ; $713c: $48
	push de                                          ; $713d: $d5
	ld [$11aa], sp                                   ; $713e: $08 $aa $11
	ldh [$c1], a                                     ; $7141: $e0 $c1
	sbc e                                            ; $7143: $9b
	add c                                            ; $7144: $81
	pop bc                                           ; $7145: $c1
	add b                                            ; $7146: $80
	ret nz                                           ; $7147: $c0

	ld e, a                                          ; $7148: $5f
	adc d                                            ; $7149: $8a
	ld a, a                                          ; $714a: $7f
	db $f4                                           ; $714b: $f4
	ld d, a                                          ; $714c: $57
	ldh a, [c]                                       ; $714d: $f2
	ld l, c                                          ; $714e: $69
	call nz, $c271                                   ; $714f: $c4 $71 $c2
	sub a                                            ; $7152: $97
	ld b, $04                                        ; $7153: $06 $04
	inc c                                            ; $7155: $0c
	ld [$2030], sp                                   ; $7156: $08 $30 $20
	ldh [$c0], a                                     ; $7159: $e0 $c0
	pop af                                           ; $715b: $f1
	rst SubAFromDE                                          ; $715c: $df
	rst $38                                          ; $715d: $ff
	add c                                            ; $715e: $81
	ld [hl], b                                       ; $715f: $70
	adc a                                            ; $7160: $8f
	cp $ff                                           ; $7161: $fe $ff
	ld sp, hl                                        ; $7163: $f9
	rlca                                             ; $7164: $07
	rra                                              ; $7165: $1f
	ldh [rIE], a                                     ; $7166: $e0 $ff
	nop                                              ; $7168: $00
	rst $38                                          ; $7169: $ff
	ret nz                                           ; $716a: $c0

	dec de                                           ; $716b: $1b
	db $fc                                           ; $716c: $fc
	ldh [c], a                                       ; $716d: $e2
	rra                                              ; $716e: $1f
	db $fc                                           ; $716f: $fc
	inc bc                                           ; $7170: $03

jr_062_7171:
	ld e, a                                          ; $7171: $5f
	jr nz, jr_062_7123                               ; $7172: $20 $af

	ld b, b                                          ; $7174: $40
	xor a                                            ; $7175: $af
	ld b, b                                          ; $7176: $40
	ld c, c                                          ; $7177: $49
	add h                                            ; $7178: $84
	ld e, c                                          ; $7179: $59
	add h                                            ; $717a: $84
	dec d                                            ; $717b: $15
	adc b                                            ; $717c: $88
	ldh [$c1], a                                     ; $717d: $e0 $c1
	add b                                            ; $717f: $80
	db $fc                                           ; $7180: $fc
	dec b                                            ; $7181: $05
	call c, $bd84                                    ; $7182: $dc $84 $bd
	add a                                            ; $7185: $87
	ld a, [hl]                                       ; $7186: $7e
	rst JumpTable                                          ; $7187: $c7
	ld a, d                                          ; $7188: $7a
	ld e, d                                          ; $7189: $5a
	ld h, a                                          ; $718a: $67
	ld h, a                                          ; $718b: $67
	jr nc, jr_062_720c                               ; $718c: $30 $7e

	jr nz, @+$40                                     ; $718e: $20 $3e

	jr nz, jr_062_71c6                               ; $7190: $20 $34

	jr nz, jr_062_71b4                               ; $7192: $20 $20

	inc hl                                           ; $7194: $23
	ccf                                              ; $7195: $3f
	inc a                                            ; $7196: $3c
	inc a                                            ; $7197: $3c
	jr z, @+$2b                                      ; $7198: $28 $29

	dec [hl]                                         ; $719a: $35
	ld [hl], a                                       ; $719b: $77
	ld h, e                                          ; $719c: $63
	ld h, e                                          ; $719d: $63
	ld b, d                                          ; $719e: $42
	rst SubAFromDE                                          ; $719f: $df
	rst JumpTable                                          ; $71a0: $c7
	sbc c                                            ; $71a1: $99
	add h                                            ; $71a2: $84
	add a                                            ; $71a3: $87
	add h                                            ; $71a4: $84
	add a                                            ; $71a5: $87

jr_062_71a6:
	inc b                                            ; $71a6: $04
	inc bc                                           ; $71a7: $03
	ld [hl], l                                       ; $71a8: $75
	add a                                            ; $71a9: $87
	sbc d                                            ; $71aa: $9a
	nop                                              ; $71ab: $00
	add hl, bc                                       ; $71ac: $09
	nop                                              ; $71ad: $00
	ld a, [de]                                       ; $71ae: $1a
	ld [$dff1], sp                                   ; $71af: $08 $f1 $df
	add b                                            ; $71b2: $80
	add c                                            ; $71b3: $81

jr_062_71b4:
	jr nc, jr_062_71a6                               ; $71b4: $30 $f0

jr_062_71b6:
	call z, $da3c                                    ; $71b6: $cc $3c $da
	and $99                                          ; $71b9: $e6 $99
	ld a, a                                          ; $71bb: $7f
	rst FarCall                                          ; $71bc: $f7
	rrca                                             ; $71bd: $0f
	ei                                               ; $71be: $fb
	rlca                                             ; $71bf: $07
	rst $38                                          ; $71c0: $ff
	ld bc, $00ff                                     ; $71c1: $01 $ff $00
	cp a                                             ; $71c4: $bf
	ret nz                                           ; $71c5: $c0

jr_062_71c6:
	cpl                                              ; $71c6: $2f
	ldh a, [$d7]                                     ; $71c7: $f0 $d7
	jr c, jr_062_71b6                                ; $71c9: $38 $eb

	inc e                                            ; $71cb: $1c
	push af                                          ; $71cc: $f5
	ld c, $7a                                        ; $71cd: $0e $7a
	add a                                            ; $71cf: $87
	ld a, l                                          ; $71d0: $7d
	add e                                            ; $71d1: $83
	ldh [$c1], a                                     ; $71d2: $e0 $c1
	add b                                            ; $71d4: $80
	ldh a, [$7f]                                     ; $71d5: $f0 $7f
	ldh a, [$5f]                                     ; $71d7: $f0 $5f
	ret c                                            ; $71d9: $d8

	sbc a                                            ; $71da: $9f
	ret c                                            ; $71db: $d8

	ld c, a                                          ; $71dc: $4f
	db $ec                                           ; $71dd: $ec
	cpl                                              ; $71de: $2f
	db $ed                                           ; $71df: $ed
	rlca                                             ; $71e0: $07
	rst SubAFromBC                                          ; $71e1: $e7
	and a                                            ; $71e2: $a7
	adc $43                                          ; $71e3: $ce $43
	ccf                                              ; $71e5: $3f
	add hl, bc                                       ; $71e6: $09
	rst $38                                          ; $71e7: $ff
	ld h, b                                          ; $71e8: $60
	add b                                            ; $71e9: $80
	nop                                              ; $71ea: $00
	ld a, b                                          ; $71eb: $78
	ld [hl], c                                       ; $71ec: $71
	db $fc                                           ; $71ed: $fc
	add a                                            ; $71ee: $87
	ldh [$03], a                                     ; $71ef: $e0 $03
	ld hl, sp+$1b                                    ; $71f1: $f8 $1b
	db $fc                                           ; $71f3: $fc
	adc a                                            ; $71f4: $8f
	add l                                            ; $71f5: $85

jr_062_71f6:
	cp [hl]                                          ; $71f6: $be
	dec bc                                           ; $71f7: $0b
	cp $31                                           ; $71f8: $fe $31
	adc $49                                          ; $71fa: $ce $49
	add $06                                          ; $71fc: $c6 $06
	ldh [rP1], a                                     ; $71fe: $e0 $00
	ld [$1000], sp                                   ; $7200: $08 $00 $10
	db $10                                           ; $7203: $10
	jr nc, jr_062_71f6                               ; $7204: $30 $f0

	rst SubAFromDE                                          ; $7206: $df
	inc h                                            ; $7207: $24
	add b                                            ; $7208: $80
	jr z, jr_062_7237                                ; $7209: $28 $2c

	ld e, h                                          ; $720b: $5c

jr_062_720c:
	ld [hl], h                                       ; $720c: $74
	or b                                             ; $720d: $b0
	add sp, -$38                                     ; $720e: $e8 $c8
	ld hl, sp-$10                                    ; $7210: $f8 $f0
	ldh a, [hDisp0_WY]                                     ; $7212: $f0 $88
	ld hl, sp+$60                                    ; $7214: $f8 $60
	sbc h                                            ; $7216: $9c
	sbc b                                            ; $7217: $98
	and $45                                          ; $7218: $e6 $45
	ei                                               ; $721a: $fb
	xor d                                            ; $721b: $aa
	ld [hl], l                                       ; $721c: $75
	push de                                          ; $721d: $d5
	ld a, [hl-]                                      ; $721e: $3a
	ld e, d                                          ; $721f: $5a
	cp l                                             ; $7220: $bd
	xor l                                            ; $7221: $ad
	ld e, [hl]                                       ; $7222: $5e
	xor d                                            ; $7223: $aa
	ld e, a                                          ; $7224: $5f
	ld d, a                                          ; $7225: $57
	xor e                                            ; $7226: $ab
	push de                                          ; $7227: $d5
	adc c                                            ; $7228: $89
	xor a                                            ; $7229: $af
	xor [hl]                                         ; $722a: $ae
	push de                                          ; $722b: $d5
	ld l, b                                          ; $722c: $68
	rst SubAFromHL                                          ; $722d: $d7
	ld d, [hl]                                       ; $722e: $56
	db $eb                                           ; $722f: $eb
	scf                                              ; $7230: $37
	ld [$f62b], a                                    ; $7231: $ea $2b $f6
	dec sp                                           ; $7234: $3b
	or $1b                                           ; $7235: $f6 $1b

jr_062_7237:
	or $17                                           ; $7237: $f6 $17
	cp $14                                           ; $7239: $fe $14
	rst $38                                          ; $723b: $ff
	sub h                                            ; $723c: $94
	rst $38                                          ; $723d: $ff
	sbc h                                            ; $723e: $9c
	ld [hl], e                                       ; $723f: $73
	cp $98                                           ; $7240: $fe $98
	xor l                                            ; $7242: $ad
	cp $2d                                           ; $7243: $fe $2d
	cp $6d                                           ; $7245: $fe $6d
	cp $d5                                           ; $7247: $fe $d5
	ld a, e                                          ; $7249: $7b
	cp $80                                           ; $724a: $fe $80
	or l                                             ; $724c: $b5
	sbc $68                                          ; $724d: $de $68
	cp [hl]                                          ; $724f: $be
	ld [$8a3c], a                                    ; $7250: $ea $3c $8a
	ld a, h                                          ; $7253: $7c
	xor c                                            ; $7254: $a9
	ld e, h                                          ; $7255: $5c
	ld d, l                                          ; $7256: $55
	sbc b                                            ; $7257: $98
	inc [hl]                                         ; $7258: $34
	sbc c                                            ; $7259: $99
	or d                                             ; $725a: $b2
	add hl, de                                       ; $725b: $19
	jp c, $aa31                                      ; $725c: $da $31 $aa

	ld [hl], c                                       ; $725f: $71
	and h                                            ; $7260: $a4
	ld [hl], e                                       ; $7261: $73
	inc h                                            ; $7262: $24
	di                                               ; $7263: $f3
	ld e, l                                          ; $7264: $5d
	ldh [c], a                                       ; $7265: $e2
	ld e, c                                          ; $7266: $59
	and $51                                          ; $7267: $e6 $51
	xor $91                                          ; $7269: $ee $91
	add b                                            ; $726b: $80
	xor $82                                          ; $726c: $ee $82
	db $fd                                           ; $726e: $fd
	adc d                                            ; $726f: $8a
	db $fd                                           ; $7270: $fd
	ld a, [bc]                                       ; $7271: $0a
	db $fd                                           ; $7272: $fd
	ld de, $15ff                                     ; $7273: $11 $ff $15
	ei                                               ; $7276: $fb
	inc hl                                           ; $7277: $23
	rst $38                                          ; $7278: $ff
	and d                                            ; $7279: $a2
	rst $38                                          ; $727a: $ff
	ld b, [hl]                                       ; $727b: $46
	rst $38                                          ; $727c: $ff
	inc l                                            ; $727d: $2c
	rst $38                                          ; $727e: $ff
	dec e                                            ; $727f: $1d
	cp a                                             ; $7280: $bf
	dec bc                                           ; $7281: $0b
	rst GetHLinHL                                          ; $7282: $cf
	rlca                                             ; $7283: $07
	rst JumpTable                                          ; $7284: $c7
	ld [bc], a                                       ; $7285: $02
	add a                                            ; $7286: $87
	ld [bc], a                                       ; $7287: $02
	sbc a                                            ; $7288: $9f
	inc bc                                           ; $7289: $03
	db $ed                                           ; $728a: $ed
	ld a, [hl]                                       ; $728b: $7e
	db $eb                                           ; $728c: $eb
	sbc d                                            ; $728d: $9a
	ld sp, $35cf                                     ; $728e: $31 $cf $35
	ld [bc], a                                       ; $7291: $02
	inc hl                                           ; $7292: $23
	ld [hl], d                                       ; $7293: $72
	cp h                                             ; $7294: $bc
	ldh [$dd], a                                     ; $7295: $e0 $dd
	rst SubAFromDE                                          ; $7297: $df
	add b                                            ; $7298: $80
	ld a, c                                          ; $7299: $79
	rst SubAFromHL                                          ; $729a: $d7
	rst SubAFromDE                                          ; $729b: $df
	ld b, b                                          ; $729c: $40
	ld a, l                                          ; $729d: $7d
	call nc, $4095                                   ; $729e: $d4 $95 $40
	ld h, b                                          ; $72a1: $60
	and b                                            ; $72a2: $a0
	ld h, b                                          ; $72a3: $60
	and b                                            ; $72a4: $a0
	add b                                            ; $72a5: $80
	ldh [hDisp1_SCY], a                                     ; $72a6: $e0 $90
	ldh a, [$50]                                     ; $72a8: $f0 $50
	ld a, e                                          ; $72aa: $7b
	cp $9d                                           ; $72ab: $fe $9d
	ld c, b                                          ; $72ad: $48
	ld hl, sp+$77                                    ; $72ae: $f8 $77
	cp $9b                                           ; $72b0: $fe $9b
	jr z, @-$06                                      ; $72b2: $28 $f8

	and h                                            ; $72b4: $a4
	ld a, h                                          ; $72b5: $7c
	ld [hl], a                                       ; $72b6: $77
	cp $9e                                           ; $72b7: $fe $9e
	or h                                             ; $72b9: $b4
	ld a, e                                          ; $72ba: $7b
	cp $9a                                           ; $72bb: $fe $9a
	or b                                             ; $72bd: $b0
	ld a, h                                          ; $72be: $7c
	or d                                             ; $72bf: $b2
	ld a, [hl]                                       ; $72c0: $7e
	xor d                                            ; $72c1: $aa
	ld a, e                                          ; $72c2: $7b
	cp $9d                                           ; $72c3: $fe $9d
	ld l, d                                          ; $72c5: $6a
	cp [hl]                                          ; $72c6: $be
	ld [hl], a                                       ; $72c7: $77
	cp $7f                                           ; $72c8: $fe $7f
	ld e, [hl]                                       ; $72ca: $5e
	sbc h                                            ; $72cb: $9c
	ld l, c                                          ; $72cc: $69
	cp a                                             ; $72cd: $bf
	ld h, l                                          ; $72ce: $65
	ld a, e                                          ; $72cf: $7b
	cp $9b                                           ; $72d0: $fe $9b
	db $ed                                           ; $72d2: $ed
	scf                                              ; $72d3: $37
	xor l                                            ; $72d4: $ad
	ld [hl], a                                       ; $72d5: $77
	ld [hl], a                                       ; $72d6: $77
	cp $90                                           ; $72d7: $fe $90
	xor c                                            ; $72d9: $a9
	ld [hl], a                                       ; $72da: $77
	xor e                                            ; $72db: $ab
	ld [hl], l                                       ; $72dc: $75
	dec hl                                           ; $72dd: $2b
	push af                                          ; $72de: $f5
	dec hl                                           ; $72df: $2b
	push af                                          ; $72e0: $f5
	ld l, a                                          ; $72e1: $6f
	pop af                                           ; $72e2: $f1
	ld l, e                                          ; $72e3: $6b
	push af                                          ; $72e4: $f5
	ld l, e                                          ; $72e5: $6b
	push af                                          ; $72e6: $f5
	xor e                                            ; $72e7: $ab
	ld [hl], e                                       ; $72e8: $73
	cp $96                                           ; $72e9: $fe $96
	ld a, e                                          ; $72eb: $7b
	push af                                          ; $72ec: $f5
	ld a, d                                          ; $72ed: $7a
	push af                                          ; $72ee: $f5
	ld d, d                                          ; $72ef: $52
	db $fd                                           ; $72f0: $fd
	jp nc, $96fd                                     ; $72f1: $d2 $fd $96

	ld a, e                                          ; $72f4: $7b
	cp $7f                                           ; $72f5: $fe $7f
	jr jr_062_7378                                   ; $72f7: $18 $7f

	cp $9e                                           ; $72f9: $fe $9e
	inc [hl]                                         ; $72fb: $34
	ld a, e                                          ; $72fc: $7b
	cp $91                                           ; $72fd: $fe $91
	ld [hl], h                                       ; $72ff: $74
	rst $38                                          ; $7300: $ff
	ld d, [hl]                                       ; $7301: $56
	rst $38                                          ; $7302: $ff
	sub $ff                                          ; $7303: $d6 $ff
	sub [hl]                                         ; $7305: $96
	rst $38                                          ; $7306: $ff
	sub d                                            ; $7307: $92
	rst $38                                          ; $7308: $ff
	or e                                             ; $7309: $b3
	rst $38                                          ; $730a: $ff
	di                                               ; $730b: $f3
	rst $38                                          ; $730c: $ff
	ccf                                              ; $730d: $3f
	ld [hl], h                                       ; $730e: $74
	ret                                              ; $730f: $c9


	add b                                            ; $7310: $80
	ld a, a                                          ; $7311: $7f
	ld h, b                                          ; $7312: $60
	ld [hl], a                                       ; $7313: $77
	cp $27                                           ; $7314: $fe $27
	nop                                              ; $7316: $00
	sbc $dd                                          ; $7317: $de $dd
	sbc c                                            ; $7319: $99
	ld de, $8899                                     ; $731a: $11 $99 $88
	adc b                                            ; $731d: $88
	ld de, $7719                                     ; $731e: $11 $19 $77
	ei                                               ; $7321: $fb
	sbc l                                            ; $7322: $9d
	ld a, [hl+]                                      ; $7323: $2a
	sub c                                            ; $7324: $91
	ld [hl], a                                       ; $7325: $77
	ei                                               ; $7326: $fb
	sbc e                                            ; $7327: $9b
	ld de, $8888                                     ; $7328: $11 $88 $88
	nop                                              ; $732b: $00
	ld [hl], a                                       ; $732c: $77
	or $9c                                           ; $732d: $f6 $9c
	ld [hl+], a                                      ; $732f: $22
	ld a, [hl+]                                      ; $7330: $2a
	sbc c                                            ; $7331: $99
	sbc $11                                          ; $7332: $de $11
	ld a, a                                          ; $7334: $7f
	ei                                               ; $7335: $fb
	rst SubAFromDE                                          ; $7336: $df
	sbc c                                            ; $7337: $99
	ld a, a                                          ; $7338: $7f
	sbc $9e                                          ; $7339: $de $9e
	sbc c                                            ; $733b: $99
	call $9101                                       ; $733c: $cd $01 $91
	dec bc                                           ; $733f: $0b
	inc c                                            ; $7340: $0c
	ld a, [bc]                                       ; $7341: $0a
	dec c                                            ; $7342: $0d
	ld c, $09                                        ; $7343: $0e $09
	dec c                                            ; $7345: $0d
	dec bc                                           ; $7346: $0b
	dec c                                            ; $7347: $0d
	dec bc                                           ; $7348: $0b
	dec bc                                           ; $7349: $0b
	rrca                                             ; $734a: $0f
	dec bc                                           ; $734b: $0b
	rrca                                             ; $734c: $0f
	db $dd                                           ; $734d: $dd
	ld b, $df                                        ; $734e: $06 $df
	ld [bc], a                                       ; $7350: $02
	db $db                                           ; $7351: $db
	ld bc, $d9fd                                     ; $7352: $01 $fd $d9
	ld bc, $029d                                     ; $7355: $01 $9d $02
	inc bc                                           ; $7358: $03
	ld [hl], a                                       ; $7359: $77
	cp $80                                           ; $735a: $fe $80
	inc b                                            ; $735c: $04
	rlca                                             ; $735d: $07
	ccf                                              ; $735e: $3f
	ccf                                              ; $735f: $3f
	rst $38                                          ; $7360: $ff
	add b                                            ; $7361: $80
	rst FarCall                                          ; $7362: $f7
	jr c, @-$47                                      ; $7363: $38 $b7

	ld a, b                                          ; $7365: $78
	ld a, l                                          ; $7366: $7d
	cp $fe                                           ; $7367: $fe $fe
	rst $38                                          ; $7369: $ff
	rst AddAOntoHL                                          ; $736a: $ef
	rst FarCall                                          ; $736b: $f7
	rst FarCall                                          ; $736c: $f7
	ei                                               ; $736d: $fb
	cp a                                             ; $736e: $bf
	rst SubAFromDE                                          ; $736f: $df
	ld h, l                                          ; $7370: $65
	sbc b                                            ; $7371: $98
	jp nz, $d239                                     ; $7372: $c2 $39 $d2

	add hl, sp                                       ; $7375: $39
	sub l                                            ; $7376: $95
	ld a, d                                          ; $7377: $7a

jr_062_7378:
	or e                                             ; $7378: $b3
	ld a, [hl]                                       ; $7379: $7e
	ld [hl-], a                                      ; $737a: $32
	add b                                            ; $737b: $80
	rst $38                                          ; $737c: $ff
	ld a, [hl-]                                      ; $737d: $3a

jr_062_737e:
	rst AddAOntoHL                                          ; $737e: $ef
	xor a                                            ; $737f: $af
	push hl                                          ; $7380: $e5
	rst GetHLinHL                                          ; $7381: $cf
	push hl                                          ; $7382: $e5
	ld c, a                                          ; $7383: $4f
	xor $af                                          ; $7384: $ee $af
	ld b, b                                          ; $7386: $40
	rst $38                                          ; $7387: $ff
	ld b, a                                          ; $7388: $47
	ld a, l                                          ; $7389: $7d
	call z, $d7bf                                    ; $738a: $cc $bf $d7
	and l                                            ; $738d: $a5
	rst JumpTable                                          ; $738e: $c7
	ld h, [hl]                                       ; $738f: $66

jr_062_7390:
	call nz, $c26f                                   ; $7390: $c4 $6f $c2
	ld [hl], a                                       ; $7393: $77
	ret nz                                           ; $7394: $c0

	ld l, d                                          ; $7395: $6a
	ret nz                                           ; $7396: $c0

	ld b, b                                          ; $7397: $40
	ldh [rAUD4LEN], a                                ; $7398: $e0 $20
	ldh [hDisp1_WY], a                                     ; $739a: $e0 $95
	jr nc, jr_062_737e                               ; $739c: $30 $e0

	jr nz, jr_062_7390                               ; $739e: $20 $f0

	ld hl, sp-$10                                    ; $73a0: $f8 $f0
	inc e                                            ; $73a2: $1c
	jr c, @+$05                                      ; $73a3: $38 $03

	ld b, $be                                        ; $73a5: $06 $be
	ld bc, $e000                                     ; $73a7: $01 $00 $e0
	add b                                            ; $73aa: $80
	ld d, b                                          ; $73ab: $50
	db $fc                                           ; $73ac: $fc
	ld e, [hl]                                       ; $73ad: $5e
	rst $38                                          ; $73ae: $ff
	ld c, a                                          ; $73af: $4f
	rst $38                                          ; $73b0: $ff
	adc d                                            ; $73b1: $8a
	ld sp, $31e6                                     ; $73b2: $31 $e6 $31
	or [hl]                                          ; $73b5: $b6
	ld h, c                                          ; $73b6: $61
	cp h                                             ; $73b7: $bc
	ld h, e                                          ; $73b8: $63
	ld a, l                                          ; $73b9: $7d
	db $e3                                           ; $73ba: $e3
	jp hl                                            ; $73bb: $e9


	or a                                             ; $73bc: $b7
	jp hl                                            ; $73bd: $e9


	or a                                             ; $73be: $b7
	pop af                                           ; $73bf: $f1
	sbc a                                            ; $73c0: $9f
	di                                               ; $73c1: $f3
	sbc $fb                                          ; $73c2: $de $fb
	ld c, [hl]                                       ; $73c4: $4e
	ei                                               ; $73c5: $fb
	ld c, $ff                                        ; $73c6: $0e $ff
	ld b, $ff                                        ; $73c8: $06 $ff
	add b                                            ; $73ca: $80
	add d                                            ; $73cb: $82
	rst $38                                          ; $73cc: $ff
	ret nz                                           ; $73cd: $c0

	rst SubAFromBC                                          ; $73ce: $e7
	add b                                            ; $73cf: $80
	ld bc, $9280                                     ; $73d0: $01 $80 $92
	add hl, bc                                       ; $73d3: $09
	ld [hl-], a                                      ; $73d4: $32
	add hl, bc                                       ; $73d5: $09
	ld a, [hl+]                                      ; $73d6: $2a
	ld de, $1166                                     ; $73d7: $11 $66 $11
	ld h, l                                          ; $73da: $65
	inc de                                           ; $73db: $13
	push bc                                          ; $73dc: $c5
	inc sp                                           ; $73dd: $33
	ld e, l                                          ; $73de: $5d
	or e                                             ; $73df: $b3
	ld d, l                                          ; $73e0: $55
	cp e                                             ; $73e1: $bb
	sub e                                            ; $73e2: $93
	rst $38                                          ; $73e3: $ff
	sbc e                                            ; $73e4: $9b
	cp $9f                                           ; $73e5: $fe $9f
	or $df                                           ; $73e7: $f6 $df
	ld a, [hl]                                       ; $73e9: $7e
	adc h                                            ; $73ea: $8c
	rst SubAFromDE                                          ; $73eb: $df
	halt                                             ; $73ec: $76
	rst $38                                          ; $73ed: $ff
	ld sp, $10ff                                     ; $73ee: $31 $ff $10
	rst $38                                          ; $73f1: $ff
	ld e, $7b                                        ; $73f2: $1e $7b
	inc sp                                           ; $73f4: $33
	ccf                                              ; $73f5: $3f
	rra                                              ; $73f6: $1f
	rla                                              ; $73f7: $17
	rra                                              ; $73f8: $1f
	add hl, de                                       ; $73f9: $19
	ld [de], a                                       ; $73fa: $12
	ccf                                              ; $73fb: $3f
	inc c                                            ; $73fc: $0c
	rrca                                             ; $73fd: $0f
	cp [hl]                                          ; $73fe: $be
	dec d                                            ; $73ff: $15
	rlca                                             ; $7400: $07
	ld c, $98                                        ; $7401: $0e $98
	ld bc, $071b                                     ; $7403: $01 $1b $07
	ld l, a                                          ; $7406: $6f
	rra                                              ; $7407: $1f
	cp a                                             ; $7408: $bf
	ld a, a                                          ; $7409: $7f
	call c, $80ff                                    ; $740a: $dc $ff $80
	rst FarCall                                          ; $740d: $f7
	db $fc                                           ; $740e: $fc
	ld h, h                                          ; $740f: $64
	ld l, h                                          ; $7410: $6c
	inc de                                           ; $7411: $13
	ld c, [hl]                                       ; $7412: $4e
	ld de, $1542                                     ; $7413: $11 $42 $15
	inc bc                                           ; $7416: $03
	inc d                                            ; $7417: $14
	inc bc                                           ; $7418: $03
	inc d                                            ; $7419: $14
	ld c, c                                          ; $741a: $49
	ld d, $69                                        ; $741b: $16 $69
	ld d, $41                                        ; $741d: $16 $41
	ld a, $c0                                        ; $741f: $3e $c0
	ccf                                              ; $7421: $3f
	ld d, b                                          ; $7422: $50
	cp a                                             ; $7423: $bf
	jp nc, $92bf                                     ; $7424: $d2 $bf $92

	rst $38                                          ; $7427: $ff
	sbc d                                            ; $7428: $9a
	rst $38                                          ; $7429: $ff
	jp c, $80ff                                      ; $742a: $da $ff $80

	db $eb                                           ; $742d: $eb
	ld a, a                                          ; $742e: $7f
	rst SubAFromBC                                          ; $742f: $e7
	ccf                                              ; $7430: $3f
	rst FarCall                                          ; $7431: $f7
	cpl                                              ; $7432: $2f
	rst FarCall                                          ; $7433: $f7
	xor l                                            ; $7434: $ad
	rst $38                                          ; $7435: $ff
	ld l, $ef                                        ; $7436: $2e $ef
	ld a, [hl-]                                      ; $7438: $3a
	rst $38                                          ; $7439: $ff
	dec [hl]                                         ; $743a: $35
	rst $38                                          ; $743b: $ff
	dec sp                                           ; $743c: $3b
	cp $67                                           ; $743d: $fe $67
	ld a, l                                          ; $743f: $7d
	cp $fd                                           ; $7440: $fe $fd
	cp $bb                                           ; $7442: $fe $bb
	db $fc                                           ; $7444: $fc
	xor d                                            ; $7445: $aa
	db $fd                                           ; $7446: $fd
	ld l, b                                          ; $7447: $68
	rst $38                                          ; $7448: $ff
	ld d, b                                          ; $7449: $50
	rst $38                                          ; $744a: $ff
	ld d, c                                          ; $744b: $51
	sbc d                                            ; $744c: $9a
	cp $d1                                           ; $744d: $fe $d1
	cp $f0                                           ; $744f: $fe $f0
	rst $38                                          ; $7451: $ff
	dec hl                                           ; $7452: $2b
	jr nz, @-$63                                     ; $7453: $20 $9b

	ld b, b                                          ; $7455: $40
	ld a, a                                          ; $7456: $7f
	rst JumpTable                                          ; $7457: $c7
	cp l                                             ; $7458: $bd
	ld a, e                                          ; $7459: $7b
	ld e, $9d                                        ; $745a: $1e $9d
	ld h, h                                          ; $745c: $64
	add $23                                          ; $745d: $c6 $23
	ld b, b                                          ; $745f: $40
	sbc d                                            ; $7460: $9a
	ld [bc], a                                       ; $7461: $02
	rst $38                                          ; $7462: $ff
	add b                                            ; $7463: $80

jr_062_7464:
	rst SubAFromBC                                          ; $7464: $e7
	ret nz                                           ; $7465: $c0

	inc bc                                           ; $7466: $03
	ld b, b                                          ; $7467: $40
	sbc e                                            ; $7468: $9b
	nop                                              ; $7469: $00
	ld a, a                                          ; $746a: $7f
	ld e, $3b                                        ; $746b: $1e $3b
	ld a, e                                          ; $746d: $7b
	ld a, $9d                                        ; $746e: $3e $9d
	ld de, $271a                                     ; $7470: $11 $1a $27
	ld b, b                                          ; $7473: $40
	ld a, e                                          ; $7474: $7b
	ld h, b                                          ; $7475: $60
	sbc h                                            ; $7476: $9c
	dec l                                            ; $7477: $2d
	rst $38                                          ; $7478: $ff
	xor [hl]                                         ; $7479: $ae
	inc bc                                           ; $747a: $03
	ld h, b                                          ; $747b: $60
	ld e, a                                          ; $747c: $5f
	ld h, b                                          ; $747d: $60
	sbc d                                            ; $747e: $9a
	db $e4                                           ; $747f: $e4
	ld c, a                                          ; $7480: $4f
	pop hl                                           ; $7481: $e1
	xor a                                            ; $7482: $af
	ld c, [hl]                                       ; $7483: $4e
	ld a, e                                          ; $7484: $7b
	ld h, b                                          ; $7485: $60
	sub [hl]                                         ; $7486: $96
	ret nz                                           ; $7487: $c0

	cp a                                             ; $7488: $bf
	ret nz                                           ; $7489: $c0

	cp a                                             ; $748a: $bf
	rst JumpTable                                          ; $748b: $c7
	ld a, l                                          ; $748c: $7d
	db $dd                                           ; $748d: $dd
	ld l, a                                          ; $748e: $6f
	rst JumpTable                                          ; $748f: $c7
	ld [bc], a                                       ; $7490: $02
	add b                                            ; $7491: $80
	ld c, a                                          ; $7492: $4f
	ld b, b                                          ; $7493: $40
	sbc h                                            ; $7494: $9c
	sbc [hl]                                         ; $7495: $9e
	ei                                               ; $7496: $fb
	adc $6b                                          ; $7497: $ce $6b
	ld b, b                                          ; $7499: $40
	cp a                                             ; $749a: $bf
	rst SubAFromBC                                          ; $749b: $e7
	pop bc                                           ; $749c: $c1
	sbc [hl]                                         ; $749d: $9e
	ret nz                                           ; $749e: $c0

jr_062_749f:
	dec hl                                           ; $749f: $2b
	ld b, b                                          ; $74a0: $40
	sbc b                                            ; $74a1: $98
	halt                                             ; $74a2: $76
	rst SubAFromDE                                          ; $74a3: $df
	ld a, h                                          ; $74a4: $7c
	rst $38                                          ; $74a5: $ff
	ld [hl], $ff                                     ; $74a6: $36 $ff
	ld de, $407b                                     ; $74a8: $11 $7b $40

jr_062_74ab:
	cp a                                             ; $74ab: $bf
	ccf                                              ; $74ac: $3f
	ccf                                              ; $74ad: $3f
	sbc d                                            ; $74ae: $9a
	ld a, $3b                                        ; $74af: $3e $3b
	dec de                                           ; $74b1: $1b
	ccf                                              ; $74b2: $3f
	ld c, $02                                        ; $74b3: $0e $02
	add b                                            ; $74b5: $80
	ld a, $80                                        ; $74b6: $3e $80
	sbc h                                            ; $74b8: $9c
	cp a                                             ; $74b9: $bf
	rst SubAFromBC                                          ; $74ba: $e7
	ld a, a                                          ; $74bb: $7f
	ld [hl], e                                       ; $74bc: $73
	jr nz, jr_062_753d                               ; $74bd: $20 $7e

	add b                                            ; $74bf: $80
	sbc [hl]                                         ; $74c0: $9e
	cp d                                             ; $74c1: $ba
	inc bc                                           ; $74c2: $03
	jr nz, @+$35                                     ; $74c3: $20 $33

	jr nz, jr_062_7464                               ; $74c5: $20 $9d

	ld a, a                                          ; $74c7: $7f
	ret c                                            ; $74c8: $d8

	dec bc                                           ; $74c9: $0b
	ld b, b                                          ; $74ca: $40
	cp [hl]                                          ; $74cb: $be
	ld a, a                                          ; $74cc: $7f
	ccf                                              ; $74cd: $3f
	ccf                                              ; $74ce: $3f
	sbc d                                            ; $74cf: $9a
	ld c, $3f                                        ; $74d0: $0e $3f
	jr nc, jr_062_7513                               ; $74d2: $30 $3f

	rrca                                             ; $74d4: $0f
	cpl                                              ; $74d5: $2f
	ld h, b                                          ; $74d6: $60
	sbc [hl]                                         ; $74d7: $9e
	sbc b                                            ; $74d8: $98
	cp a                                             ; $74d9: $bf
	inc a                                            ; $74da: $3c
	ld a, h                                          ; $74db: $7c
	sbc l                                            ; $74dc: $9d
	ld b, b                                          ; $74dd: $40
	jr c, jr_062_749f                                ; $74de: $38 $bf

	nop                                              ; $74e0: $00
	ldh [$9b], a                                     ; $74e1: $e0 $9b
	ld b, b                                          ; $74e3: $40
	ld a, h                                          ; $74e4: $7c
	jr c, @+$12                                      ; $74e5: $38 $10

	cp [hl]                                          ; $74e7: $be
	nop                                              ; $74e8: $00

jr_062_74e9:
	jr jr_062_74ab                                   ; $74e9: $18 $c0

	sub h                                            ; $74eb: $94
	add b                                            ; $74ec: $80
	ld hl, $1d60                                     ; $74ed: $21 $60 $1d
	inc de                                           ; $74f0: $13
	rrca                                             ; $74f1: $0f
	rrca                                             ; $74f2: $0f
	rlca                                             ; $74f3: $07
	add l                                            ; $74f4: $85
	add e                                            ; $74f5: $83
	jp nz, $e04f                                     ; $74f6: $c2 $4f $e0

	ld [hl], a                                       ; $74f9: $77
	ld hl, sp+$1b                                    ; $74fa: $f8 $1b
	ldh [$df], a                                     ; $74fc: $e0 $df
	ld a, b                                          ; $74fe: $78
	sbc [hl]                                         ; $74ff: $9e
	jr nc, @+$11                                     ; $7500: $30 $0f

	ldh [rPCM34], a                                  ; $7502: $e0 $77
	sbc $7f                                          ; $7504: $de $7f
	db $dd                                           ; $7506: $dd
	ld d, a                                          ; $7507: $57
	ldh [$c4], a                                     ; $7508: $e0 $c4
	ld bc, $0b91                                     ; $750a: $01 $91 $0b
	inc c                                            ; $750d: $0c
	ld a, [bc]                                       ; $750e: $0a
	dec c                                            ; $750f: $0d
	ld c, $09                                        ; $7510: $0e $09
	dec c                                            ; $7512: $0d

jr_062_7513:
	dec bc                                           ; $7513: $0b
	dec c                                            ; $7514: $0d
	dec bc                                           ; $7515: $0b
	dec bc                                           ; $7516: $0b
	rrca                                             ; $7517: $0f
	dec bc                                           ; $7518: $0b
	rrca                                             ; $7519: $0f
	db $dd                                           ; $751a: $dd
	ld b, $df                                        ; $751b: $06 $df
	ld [bc], a                                       ; $751d: $02
	db $db                                           ; $751e: $db
	ld bc, $d9fd                                     ; $751f: $01 $fd $d9
	ld bc, $029d                                     ; $7522: $01 $9d $02
	inc bc                                           ; $7525: $03
	ld [hl], a                                       ; $7526: $77
	cp $80                                           ; $7527: $fe $80
	inc b                                            ; $7529: $04
	rlca                                             ; $752a: $07
	ccf                                              ; $752b: $3f
	ccf                                              ; $752c: $3f
	rst $38                                          ; $752d: $ff
	add b                                            ; $752e: $80
	rst FarCall                                          ; $752f: $f7
	jr c, jr_062_74e9                                ; $7530: $38 $b7

	ld a, b                                          ; $7532: $78
	ld a, l                                          ; $7533: $7d
	cp $fe                                           ; $7534: $fe $fe
	rst $38                                          ; $7536: $ff
	rst AddAOntoHL                                          ; $7537: $ef
	rst FarCall                                          ; $7538: $f7
	rst FarCall                                          ; $7539: $f7
	ei                                               ; $753a: $fb
	cp a                                             ; $753b: $bf
	rst SubAFromDE                                          ; $753c: $df

jr_062_753d:
	ld h, l                                          ; $753d: $65
	sbc b                                            ; $753e: $98
	jp nz, $d239                                     ; $753f: $c2 $39 $d2

	add hl, sp                                       ; $7542: $39
	sub l                                            ; $7543: $95
	ld a, d                                          ; $7544: $7a
	or e                                             ; $7545: $b3
	ld a, [hl]                                       ; $7546: $7e
	ld [hl-], a                                      ; $7547: $32
	add b                                            ; $7548: $80
	rst $38                                          ; $7549: $ff
	ld a, [hl-]                                      ; $754a: $3a

jr_062_754b:
	rst AddAOntoHL                                          ; $754b: $ef
	xor a                                            ; $754c: $af
	push hl                                          ; $754d: $e5
	rst GetHLinHL                                          ; $754e: $cf
	rst AddAOntoHL                                          ; $754f: $ef
	ld c, a                                          ; $7550: $4f
	ldh [$af], a                                     ; $7551: $e0 $af
	ld b, a                                          ; $7553: $47
	cp $5c                                           ; $7554: $fe $5c
	ld [hl], l                                       ; $7556: $75
	call $c7bf                                       ; $7557: $cd $bf $c7
	and l                                            ; $755a: $a5
	rst JumpTable                                          ; $755b: $c7
	ld h, [hl]                                       ; $755c: $66

jr_062_755d:
	call nz, $c267                                   ; $755d: $c4 $67 $c2
	ld h, b                                          ; $7560: $60
	ret nz                                           ; $7561: $c0

	ld h, b                                          ; $7562: $60
	ret nz                                           ; $7563: $c0

	ld b, b                                          ; $7564: $40
	ldh [rAUD4LEN], a                                ; $7565: $e0 $20
	ldh [hDisp1_WY], a                                     ; $7567: $e0 $95
	jr nc, jr_062_754b                               ; $7569: $30 $e0

	jr nz, jr_062_755d                               ; $756b: $20 $f0

	ld hl, sp-$10                                    ; $756d: $f8 $f0
	inc e                                            ; $756f: $1c
	jr c, @+$05                                      ; $7570: $38 $03

	ld b, $be                                        ; $7572: $06 $be
	ld bc, $e000                                     ; $7574: $01 $00 $e0
	add b                                            ; $7577: $80
	ld d, b                                          ; $7578: $50
	db $fc                                           ; $7579: $fc
	ld e, [hl]                                       ; $757a: $5e
	rst $38                                          ; $757b: $ff
	ld c, a                                          ; $757c: $4f
	rst $38                                          ; $757d: $ff
	adc d                                            ; $757e: $8a
	ld sp, $31e6                                     ; $757f: $31 $e6 $31
	or [hl]                                          ; $7582: $b6
	ld h, c                                          ; $7583: $61
	cp h                                             ; $7584: $bc
	ld h, e                                          ; $7585: $63
	ld a, l                                          ; $7586: $7d
	db $e3                                           ; $7587: $e3
	jp hl                                            ; $7588: $e9


	or a                                             ; $7589: $b7
	jp hl                                            ; $758a: $e9


	or a                                             ; $758b: $b7
	pop af                                           ; $758c: $f1
	sbc a                                            ; $758d: $9f
	di                                               ; $758e: $f3
	sbc [hl]                                         ; $758f: $9e
	ei                                               ; $7590: $fb
	ld c, [hl]                                       ; $7591: $4e
	ei                                               ; $7592: $fb
	ld c, $ff                                        ; $7593: $0e $ff
	add [hl]                                         ; $7595: $86
	rst $38                                          ; $7596: $ff
	add b                                            ; $7597: $80
	add d                                            ; $7598: $82
	rst $38                                          ; $7599: $ff
	add b                                            ; $759a: $80
	rst SubAFromBC                                          ; $759b: $e7
	add b                                            ; $759c: $80
	ld bc, $9280                                     ; $759d: $01 $80 $92
	add hl, bc                                       ; $75a0: $09
	ld [hl-], a                                      ; $75a1: $32
	add hl, bc                                       ; $75a2: $09
	ld a, [hl+]                                      ; $75a3: $2a
	ld de, $1166                                     ; $75a4: $11 $66 $11
	ld h, l                                          ; $75a7: $65
	inc de                                           ; $75a8: $13
	push bc                                          ; $75a9: $c5
	inc sp                                           ; $75aa: $33
	ld e, l                                          ; $75ab: $5d
	or e                                             ; $75ac: $b3
	ld d, l                                          ; $75ad: $55
	cp e                                             ; $75ae: $bb
	sub e                                            ; $75af: $93
	rst $38                                          ; $75b0: $ff
	sbc e                                            ; $75b1: $9b
	cp $9f                                           ; $75b2: $fe $9f
	or $df                                           ; $75b4: $f6 $df
	ld a, a                                          ; $75b6: $7f
	adc h                                            ; $75b7: $8c
	rst SubAFromDE                                          ; $75b8: $df

jr_062_75b9:
	ld [hl], h                                       ; $75b9: $74
	rst $38                                          ; $75ba: $ff
	jr nc, @+$01                                     ; $75bb: $30 $ff

	ld e, $eb                                        ; $75bd: $1e $eb
	ld sp, $1373                                     ; $75bf: $31 $73 $13
	rra                                              ; $75c2: $1f
	rra                                              ; $75c3: $1f
	ld d, $1f                                        ; $75c4: $16 $1f
	add hl, de                                       ; $75c6: $19
	ld [de], a                                       ; $75c7: $12
	rra                                              ; $75c8: $1f
	inc c                                            ; $75c9: $0c
	ld bc, $03be                                     ; $75ca: $01 $be $03
	rlca                                             ; $75cd: $07
	ld c, $98                                        ; $75ce: $0e $98
	ld bc, $071b                                     ; $75d0: $01 $1b $07
	ld l, a                                          ; $75d3: $6f
	rra                                              ; $75d4: $1f

Call_062_75d5:
	cp a                                             ; $75d5: $bf
	ld a, a                                          ; $75d6: $7f
	call c, $80ff                                    ; $75d7: $dc $ff $80
	rst FarCall                                          ; $75da: $f7
	db $fc                                           ; $75db: $fc
	ld h, h                                          ; $75dc: $64
	ld l, h                                          ; $75dd: $6c
	inc de                                           ; $75de: $13
	ld c, [hl]                                       ; $75df: $4e
	ld de, $1542                                     ; $75e0: $11 $42 $15
	inc bc                                           ; $75e3: $03
	inc d                                            ; $75e4: $14
	inc bc                                           ; $75e5: $03
	inc d                                            ; $75e6: $14
	ld c, c                                          ; $75e7: $49
	ld d, $69                                        ; $75e8: $16 $69
	ld d, $41                                        ; $75ea: $16 $41
	ld a, $c0                                        ; $75ec: $3e $c0
	ccf                                              ; $75ee: $3f
	ld d, b                                          ; $75ef: $50
	cp a                                             ; $75f0: $bf
	jp nc, $92bf                                     ; $75f1: $d2 $bf $92

	rst $38                                          ; $75f4: $ff
	sbc d                                            ; $75f5: $9a
	rst $38                                          ; $75f6: $ff
	jp c, $80ff                                      ; $75f7: $da $ff $80

	db $eb                                           ; $75fa: $eb
	ld a, a                                          ; $75fb: $7f
	rst SubAFromBC                                          ; $75fc: $e7
	ccf                                              ; $75fd: $3f
	rst FarCall                                          ; $75fe: $f7
	xor a                                            ; $75ff: $af
	rst FarCall                                          ; $7600: $f7
	dec l                                            ; $7601: $2d
	rst $38                                          ; $7602: $ff
	ld l, $ef                                        ; $7603: $2e $ef
	ld a, [hl-]                                      ; $7605: $3a
	rst $38                                          ; $7606: $ff
	dec [hl]                                         ; $7607: $35
	rst $38                                          ; $7608: $ff
	dec sp                                           ; $7609: $3b
	cp $67                                           ; $760a: $fe $67
	ld a, l                                          ; $760c: $7d
	cp $fd                                           ; $760d: $fe $fd
	cp $bb                                           ; $760f: $fe $bb
	db $fc                                           ; $7611: $fc
	xor d                                            ; $7612: $aa
	db $fd                                           ; $7613: $fd
	ld l, b                                          ; $7614: $68
	rst $38                                          ; $7615: $ff
	ld d, b                                          ; $7616: $50
	rst $38                                          ; $7617: $ff
	ld d, c                                          ; $7618: $51
	sbc d                                            ; $7619: $9a
	cp $d1                                           ; $761a: $fe $d1
	cp $f0                                           ; $761c: $fe $f0
	rst $38                                          ; $761e: $ff
	inc sp                                           ; $761f: $33
	jr nz, jr_062_75b9                               ; $7620: $20 $97

	ld b, b                                          ; $7622: $40
	rst $38                                          ; $7623: $ff
	ld b, a                                          ; $7624: $47
	ld a, l                                          ; $7625: $7d
	call z, $dfbf                                    ; $7626: $cc $bf $df
	xor l                                            ; $7629: $ad
	ld a, e                                          ; $762a: $7b
	jr nz, jr_062_7658                               ; $762b: $20 $2b

	ld b, b                                          ; $762d: $40
	sbc [hl]                                         ; $762e: $9e
	ld b, $03                                        ; $762f: $06 $03
	ld b, b                                          ; $7631: $40
	ld [hl], a                                       ; $7632: $77
	ld b, b                                          ; $7633: $40
	sub a                                            ; $7634: $97
	db $10                                           ; $7635: $10
	rst $38                                          ; $7636: $ff
	ld e, $77                                        ; $7637: $1e $77
	inc de                                           ; $7639: $13
	ccf                                              ; $763a: $3f
	ccf                                              ; $763b: $3f
	ld [hl], $1b                                     ; $763c: $36 $1b
	ld b, b                                          ; $763e: $40
	sbc e                                            ; $763f: $9b
	rst FarCall                                          ; $7640: $f7
	cpl                                              ; $7641: $2f
	rst FarCall                                          ; $7642: $f7
	xor l                                            ; $7643: $ad
	inc bc                                           ; $7644: $03
	ld h, b                                          ; $7645: $60
	ld d, a                                          ; $7646: $57
	ld h, b                                          ; $7647: $60
	sbc h                                            ; $7648: $9c
	db $e4                                           ; $7649: $e4
	ld c, a                                          ; $764a: $4f
	rst AddAOntoHL                                          ; $764b: $ef
	ld a, e                                          ; $764c: $7b
	ld h, b                                          ; $764d: $60
	sub h                                            ; $764e: $94
	ld b, b                                          ; $764f: $40
	ld a, a                                          ; $7650: $7f
	ret nz                                           ; $7651: $c0

	cp a                                             ; $7652: $bf
	ret nz                                           ; $7653: $c0

	cp a                                             ; $7654: $bf
	rst GetHLinHL                                          ; $7655: $cf
	ld a, l                                          ; $7656: $7d
	db $dd                                           ; $7657: $dd

jr_062_7658:
	ld l, a                                          ; $7658: $6f
	rst JumpTable                                          ; $7659: $c7
	ld [bc], a                                       ; $765a: $02
	add b                                            ; $765b: $80
	ld b, a                                          ; $765c: $47
	ld b, b                                          ; $765d: $40
	sbc h                                            ; $765e: $9c
	adc $fb                                          ; $765f: $ce $fb
	ld c, [hl]                                       ; $7661: $4e

jr_062_7662:
	ld a, e                                          ; $7662: $7b
	ld b, b                                          ; $7663: $40
	sbc l                                            ; $7664: $9d
	ld [bc], a                                       ; $7665: $02
	rst $38                                          ; $7666: $ff
	cp a                                             ; $7667: $bf
	rst SubAFromBC                                          ; $7668: $e7
	add c                                            ; $7669: $81
	daa                                              ; $766a: $27
	ld b, b                                          ; $766b: $40
	sbc h                                            ; $766c: $9c
	ld [hl], h                                       ; $766d: $74

jr_062_766e:
	rst SubAFromDE                                          ; $766e: $df
	ld a, a                                          ; $766f: $7f
	ld [hl], e                                       ; $7670: $73
	ld b, b                                          ; $7671: $40
	cp [hl]                                          ; $7672: $be
	ld a, a                                          ; $7673: $7f
	ccf                                              ; $7674: $3f
	ccf                                              ; $7675: $3f
	sbc c                                            ; $7676: $99
	ld a, $3b                                        ; $7677: $3e $3b
	dec de                                           ; $7679: $1b
	ccf                                              ; $767a: $3f
	rrca                                             ; $767b: $0f
	rrca                                             ; $767c: $0f
	daa                                              ; $767d: $27
	ld b, b                                          ; $767e: $40
	halt                                             ; $767f: $76
	and b                                            ; $7680: $a0
	sbc [hl]                                         ; $7681: $9e
	cp d                                             ; $7682: $ba
	inc bc                                           ; $7683: $03
	ld b, b                                          ; $7684: $40
	inc sp                                           ; $7685: $33
	ld b, b                                          ; $7686: $40
	sbc l                                            ; $7687: $9d
	ld a, a                                          ; $7688: $7f
	ret c                                            ; $7689: $d8

	dec bc                                           ; $768a: $0b
	ld h, b                                          ; $768b: $60
	cp [hl]                                          ; $768c: $be
	ld a, a                                          ; $768d: $7f
	ccf                                              ; $768e: $3f
	ccf                                              ; $768f: $3f
	sbc h                                            ; $7690: $9c
	ld c, $3f                                        ; $7691: $0e $3f
	jr nc, jr_062_770c                               ; $7693: $30 $77

	add b                                            ; $7695: $80
	ld a, a                                          ; $7696: $7f
	add hl, hl                                       ; $7697: $29
	ccf                                              ; $7698: $3f
	add b                                            ; $7699: $80
	sbc [hl]                                         ; $769a: $9e
	sbc b                                            ; $769b: $98
	cp a                                             ; $769c: $bf
	inc a                                            ; $769d: $3c
	ld a, h                                          ; $769e: $7c
	sbc l                                            ; $769f: $9d
	ld b, b                                          ; $76a0: $40
	jr c, jr_062_7662                                ; $76a1: $38 $bf

	nop                                              ; $76a3: $00
	ldh [c], a                                       ; $76a4: $e2
	sbc e                                            ; $76a5: $9b
	ld b, b                                          ; $76a6: $40
	ld a, h                                          ; $76a7: $7c
	jr @+$22                                         ; $76a8: $18 $20

	cp [hl]                                          ; $76aa: $be
	nop                                              ; $76ab: $00
	jr jr_062_766e                                   ; $76ac: $18 $c0

	sub h                                            ; $76ae: $94
	add b                                            ; $76af: $80
	ld hl, $1d60                                     ; $76b0: $21 $60 $1d
	inc de                                           ; $76b3: $13
	rrca                                             ; $76b4: $0f
	rrca                                             ; $76b5: $0f
	rlca                                             ; $76b6: $07
	add l                                            ; $76b7: $85
	add e                                            ; $76b8: $83
	jp nz, $e053                                     ; $76b9: $c2 $53 $e0

	rst SubAFromDE                                          ; $76bc: $df
	jr c, jr_062_76ce                                ; $76bd: $38 $0f

	ldh [$73], a                                     ; $76bf: $e0 $73
	rst SubAFromDE                                          ; $76c1: $df
	rra                                              ; $76c2: $1f
	ldh [$9b], a                                     ; $76c3: $e0 $9b
	ld a, [hl]                                       ; $76c5: $7e
	ld a, h                                          ; $76c6: $7c
	inc a                                            ; $76c7: $3c
	inc a                                            ; $76c8: $3c
	sbc $38                                          ; $76c9: $de $38
	ld d, e                                          ; $76cb: $53
	ldh [$bf], a                                     ; $76cc: $e0 $bf

jr_062_76ce:
	ld bc, $0b91                                     ; $76ce: $01 $91 $0b
	inc c                                            ; $76d1: $0c
	ld a, [bc]                                       ; $76d2: $0a
	dec c                                            ; $76d3: $0d
	ld c, $09                                        ; $76d4: $0e $09
	dec c                                            ; $76d6: $0d
	dec bc                                           ; $76d7: $0b
	dec c                                            ; $76d8: $0d
	dec bc                                           ; $76d9: $0b
	dec bc                                           ; $76da: $0b
	rrca                                             ; $76db: $0f
	dec bc                                           ; $76dc: $0b
	rrca                                             ; $76dd: $0f
	db $dd                                           ; $76de: $dd
	ld b, $df                                        ; $76df: $06 $df
	ld [bc], a                                       ; $76e1: $02
	db $db                                           ; $76e2: $db
	ld bc, $d9fd                                     ; $76e3: $01 $fd $d9
	ld bc, $029d                                     ; $76e6: $01 $9d $02
	inc bc                                           ; $76e9: $03
	ld [hl], a                                       ; $76ea: $77
	cp $80                                           ; $76eb: $fe $80
	inc b                                            ; $76ed: $04
	rlca                                             ; $76ee: $07
	ccf                                              ; $76ef: $3f
	ccf                                              ; $76f0: $3f
	rst $38                                          ; $76f1: $ff
	add b                                            ; $76f2: $80
	rst FarCall                                          ; $76f3: $f7
	jr c, @-$47                                      ; $76f4: $38 $b7

	ld a, b                                          ; $76f6: $78
	ld a, l                                          ; $76f7: $7d
	cp $fe                                           ; $76f8: $fe $fe
	rst $38                                          ; $76fa: $ff
	rst AddAOntoHL                                          ; $76fb: $ef
	rst FarCall                                          ; $76fc: $f7
	rst FarCall                                          ; $76fd: $f7
	ei                                               ; $76fe: $fb
	cp a                                             ; $76ff: $bf
	rst SubAFromDE                                          ; $7700: $df
	ld h, l                                          ; $7701: $65
	sbc b                                            ; $7702: $98
	jp nz, $d239                                     ; $7703: $c2 $39 $d2

	add hl, sp                                       ; $7706: $39
	sub l                                            ; $7707: $95
	ld a, d                                          ; $7708: $7a
	or e                                             ; $7709: $b3
	ld a, [hl]                                       ; $770a: $7e
	ld [hl-], a                                      ; $770b: $32

jr_062_770c:
	add b                                            ; $770c: $80
	rst $38                                          ; $770d: $ff
	ld a, [hl-]                                      ; $770e: $3a

jr_062_770f:
	rst AddAOntoHL                                          ; $770f: $ef
	xor a                                            ; $7710: $af
	push hl                                          ; $7711: $e5
	rst GetHLinHL                                          ; $7712: $cf
	rst SubAFromBC                                          ; $7713: $e7
	ld c, a                                          ; $7714: $4f
	add sp, -$51                                     ; $7715: $e8 $af
	ld b, b                                          ; $7717: $40
	rst $38                                          ; $7718: $ff
	ld c, a                                          ; $7719: $4f
	ld [hl], l                                       ; $771a: $75
	call c, $c7bf                                    ; $771b: $dc $bf $c7
	and l                                            ; $771e: $a5
	rst JumpTable                                          ; $771f: $c7
	ld h, [hl]                                       ; $7720: $66

jr_062_7721:
	call nz, $c267                                   ; $7721: $c4 $67 $c2
	ld h, b                                          ; $7724: $60
	ret nz                                           ; $7725: $c0

	ld h, b                                          ; $7726: $60
	ret nz                                           ; $7727: $c0

	ld b, b                                          ; $7728: $40
	ldh [rAUD4LEN], a                                ; $7729: $e0 $20
	ldh [hDisp1_WY], a                                     ; $772b: $e0 $95
	jr nc, jr_062_770f                               ; $772d: $30 $e0

	jr nz, jr_062_7721                               ; $772f: $20 $f0

	ld hl, sp-$10                                    ; $7731: $f8 $f0
	inc e                                            ; $7733: $1c
	jr c, @+$05                                      ; $7734: $38 $03

	ld b, $be                                        ; $7736: $06 $be
	ld bc, $e000                                     ; $7738: $01 $00 $e0
	add b                                            ; $773b: $80
	ld d, b                                          ; $773c: $50
	db $fc                                           ; $773d: $fc
	ld e, [hl]                                       ; $773e: $5e
	rst $38                                          ; $773f: $ff
	ld c, a                                          ; $7740: $4f
	rst $38                                          ; $7741: $ff
	adc d                                            ; $7742: $8a
	ld sp, $31e6                                     ; $7743: $31 $e6 $31
	or [hl]                                          ; $7746: $b6
	ld h, c                                          ; $7747: $61
	cp h                                             ; $7748: $bc
	ld h, e                                          ; $7749: $63
	ld a, l                                          ; $774a: $7d
	db $e3                                           ; $774b: $e3
	jp hl                                            ; $774c: $e9


	or a                                             ; $774d: $b7
	jp hl                                            ; $774e: $e9


	or a                                             ; $774f: $b7
	pop af                                           ; $7750: $f1
	sbc a                                            ; $7751: $9f
	di                                               ; $7752: $f3
	sbc [hl]                                         ; $7753: $9e
	ei                                               ; $7754: $fb
	ld c, [hl]                                       ; $7755: $4e
	ei                                               ; $7756: $fb
	ld c, $ff                                        ; $7757: $0e $ff
	ld b, $ff                                        ; $7759: $06 $ff
	add b                                            ; $775b: $80
	add d                                            ; $775c: $82
	rst $38                                          ; $775d: $ff
	add b                                            ; $775e: $80
	rst SubAFromBC                                          ; $775f: $e7
	add b                                            ; $7760: $80
	ld bc, $9280                                     ; $7761: $01 $80 $92
	add hl, bc                                       ; $7764: $09
	ld [hl-], a                                      ; $7765: $32
	add hl, bc                                       ; $7766: $09
	ld a, [hl+]                                      ; $7767: $2a
	ld de, $1166                                     ; $7768: $11 $66 $11
	ld h, l                                          ; $776b: $65
	inc de                                           ; $776c: $13
	push bc                                          ; $776d: $c5
	inc sp                                           ; $776e: $33
	ld e, l                                          ; $776f: $5d
	or e                                             ; $7770: $b3
	ld d, l                                          ; $7771: $55
	cp e                                             ; $7772: $bb
	sub e                                            ; $7773: $93
	rst $38                                          ; $7774: $ff
	sbc e                                            ; $7775: $9b
	cp $9f                                           ; $7776: $fe $9f
	or $df                                           ; $7778: $f6 $df
	ld a, [hl]                                       ; $777a: $7e
	adc h                                            ; $777b: $8c

jr_062_777c:
	rst SubAFromDE                                          ; $777c: $df
	ld [hl], l                                       ; $777d: $75
	rst $38                                          ; $777e: $ff
	jr nc, @+$01                                     ; $777f: $30 $ff

	inc e                                            ; $7781: $1c
	rst $38                                          ; $7782: $ff
	ld l, $7b                                        ; $7783: $2e $7b
	ld de, $1f1f                                     ; $7785: $11 $1f $1f
	rla                                              ; $7788: $17
	rra                                              ; $7789: $1f
	add hl, de                                       ; $778a: $19
	ld [de], a                                       ; $778b: $12
	rra                                              ; $778c: $1f
	inc c                                            ; $778d: $0c
	ld bc, $03be                                     ; $778e: $01 $be $03
	rlca                                             ; $7791: $07
	ld c, $98                                        ; $7792: $0e $98
	ld bc, $071b                                     ; $7794: $01 $1b $07
	ld l, a                                          ; $7797: $6f
	rra                                              ; $7798: $1f
	cp a                                             ; $7799: $bf
	ld a, a                                          ; $779a: $7f
	call c, $80ff                                    ; $779b: $dc $ff $80
	rst FarCall                                          ; $779e: $f7
	db $fc                                           ; $779f: $fc
	ld h, h                                          ; $77a0: $64
	ld l, h                                          ; $77a1: $6c
	inc de                                           ; $77a2: $13
	ld c, [hl]                                       ; $77a3: $4e
	ld de, $1542                                     ; $77a4: $11 $42 $15
	inc bc                                           ; $77a7: $03
	inc d                                            ; $77a8: $14
	inc bc                                           ; $77a9: $03
	inc d                                            ; $77aa: $14
	ld c, c                                          ; $77ab: $49
	ld d, $69                                        ; $77ac: $16 $69
	ld d, $41                                        ; $77ae: $16 $41
	ld a, $c0                                        ; $77b0: $3e $c0
	ccf                                              ; $77b2: $3f
	ld d, b                                          ; $77b3: $50
	cp a                                             ; $77b4: $bf
	jp nc, $92bf                                     ; $77b5: $d2 $bf $92

	rst $38                                          ; $77b8: $ff
	sbc d                                            ; $77b9: $9a
	rst $38                                          ; $77ba: $ff
	jp c, $80ff                                      ; $77bb: $da $ff $80

	db $eb                                           ; $77be: $eb
	ld a, a                                          ; $77bf: $7f
	rst SubAFromBC                                          ; $77c0: $e7
	ccf                                              ; $77c1: $3f
	rst FarCall                                          ; $77c2: $f7
	cpl                                              ; $77c3: $2f
	rst FarCall                                          ; $77c4: $f7
	xor l                                            ; $77c5: $ad
	rst $38                                          ; $77c6: $ff
	ld l, $ef                                        ; $77c7: $2e $ef
	ld a, [hl-]                                      ; $77c9: $3a
	rst $38                                          ; $77ca: $ff
	dec [hl]                                         ; $77cb: $35
	rst $38                                          ; $77cc: $ff
	dec sp                                           ; $77cd: $3b
	cp $67                                           ; $77ce: $fe $67
	ld a, l                                          ; $77d0: $7d
	cp $fd                                           ; $77d1: $fe $fd
	cp $bb                                           ; $77d3: $fe $bb
	db $fc                                           ; $77d5: $fc
	xor d                                            ; $77d6: $aa
	db $fd                                           ; $77d7: $fd
	ld l, b                                          ; $77d8: $68
	rst $38                                          ; $77d9: $ff
	ld d, b                                          ; $77da: $50
	rst $38                                          ; $77db: $ff
	ld d, c                                          ; $77dc: $51
	sbc d                                            ; $77dd: $9a
	cp $d1                                           ; $77de: $fe $d1
	cp $f0                                           ; $77e0: $fe $f0
	rst $38                                          ; $77e2: $ff
	dec hl                                           ; $77e3: $2b
	jr nz, jr_062_777c                               ; $77e4: $20 $96

	ld b, b                                          ; $77e6: $40
	ld a, a                                          ; $77e7: $7f
	rst GetHLinHL                                          ; $77e8: $cf
	or l                                             ; $77e9: $b5
	call c, $c7af                                    ; $77ea: $dc $af $c7
	ld h, h                                          ; $77ed: $64
	add $23                                          ; $77ee: $c6 $23
	ld b, b                                          ; $77f0: $40
	sbc [hl]                                         ; $77f1: $9e
	ld [bc], a                                       ; $77f2: $02
	ld [hl], a                                       ; $77f3: $77
	ld b, b                                          ; $77f4: $40
	sbc [hl]                                         ; $77f5: $9e
	add c                                            ; $77f6: $81
	rrca                                             ; $77f7: $0f
	ld b, b                                          ; $77f8: $40
	sub h                                            ; $77f9: $94
	db $10                                           ; $77fa: $10
	rst $38                                          ; $77fb: $ff
	nop                                              ; $77fc: $00
	ld a, a                                          ; $77fd: $7f
	ld e, $37                                        ; $77fe: $1e $37

Call_062_7800:
	inc sp                                           ; $7800: $33
	ccf                                              ; $7801: $3f
	rra                                              ; $7802: $1f
	ld de, $271a                                     ; $7803: $11 $1a $27
	ld b, b                                          ; $7806: $40
	ld a, e                                          ; $7807: $7b
	ld h, b                                          ; $7808: $60
	sbc h                                            ; $7809: $9c
	dec l                                            ; $780a: $2d
	rst $38                                          ; $780b: $ff
	xor [hl]                                         ; $780c: $ae
	inc bc                                           ; $780d: $03
	ld h, b                                          ; $780e: $60
	ld e, a                                          ; $780f: $5f
	ld h, b                                          ; $7810: $60
	sbc h                                            ; $7811: $9c
	ldh [rVBK], a                                    ; $7812: $e0 $4f
	rst AddAOntoHL                                          ; $7814: $ef
	ld [hl], e                                       ; $7815: $73
	ld h, b                                          ; $7816: $60
	sub [hl]                                         ; $7817: $96
	ret nz                                           ; $7818: $c0

	cp a                                             ; $7819: $bf
	ret nz                                           ; $781a: $c0

	cp a                                             ; $781b: $bf
	rst GetHLinHL                                          ; $781c: $cf

jr_062_781d:
	ld a, l                                          ; $781d: $7d
	db $dd                                           ; $781e: $dd
	ld l, a                                          ; $781f: $6f
	rst JumpTable                                          ; $7820: $c7
	ld [bc], a                                       ; $7821: $02
	add b                                            ; $7822: $80
	daa                                              ; $7823: $27
	ld b, b                                          ; $7824: $40
	cp a                                             ; $7825: $bf
	rst SubAFromBC                                          ; $7826: $e7
	add c                                            ; $7827: $81
	daa                                              ; $7828: $27

jr_062_7829:
	ld b, b                                          ; $7829: $40
	sbc d                                            ; $782a: $9a
	ld [hl], h                                       ; $782b: $74
	rst SubAFromDE                                          ; $782c: $df
	ld a, [hl]                                       ; $782d: $7e
	rst $38                                          ; $782e: $ff
	ld sp, $4073                                     ; $782f: $31 $73 $40
	cp a                                             ; $7832: $bf
	ccf                                              ; $7833: $3f
	ccf                                              ; $7834: $3f
	sbc c                                            ; $7835: $99
	ld a, $3b                                        ; $7836: $3e $3b
	dec de                                           ; $7838: $1b
	ccf                                              ; $7839: $3f
	rrca                                             ; $783a: $0f
	rrca                                             ; $783b: $0f
	rra                                              ; $783c: $1f
	ld b, b                                          ; $783d: $40
	ld a, [hl]                                       ; $783e: $7e
	and b                                            ; $783f: $a0
	sbc [hl]                                         ; $7840: $9e
	cp d                                             ; $7841: $ba
	inc bc                                           ; $7842: $03
	ld b, b                                          ; $7843: $40
	inc sp                                           ; $7844: $33
	ld b, b                                          ; $7845: $40
	sbc l                                            ; $7846: $9d
	ld a, a                                          ; $7847: $7f
	ret c                                            ; $7848: $d8

	dec bc                                           ; $7849: $0b
	ld h, b                                          ; $784a: $60
	cp [hl]                                          ; $784b: $be
	ld a, a                                          ; $784c: $7f
	ccf                                              ; $784d: $3f
	ccf                                              ; $784e: $3f
	sbc h                                            ; $784f: $9c
	ld c, $3f                                        ; $7850: $0e $3f
	jr nc, jr_062_787b                               ; $7852: $30 $27

	add b                                            ; $7854: $80
	sbc [hl]                                         ; $7855: $9e
	sbc b                                            ; $7856: $98
	cp a                                             ; $7857: $bf
	inc a                                            ; $7858: $3c
	ld a, h                                          ; $7859: $7c
	sbc l                                            ; $785a: $9d
	ld b, b                                          ; $785b: $40
	jr c, jr_062_781d                                ; $785c: $38 $bf

	nop                                              ; $785e: $00
	call nz, Call_062_409b                           ; $785f: $c4 $9b $40
	ld a, b                                          ; $7862: $78
	jr jr_062_7885                                   ; $7863: $18 $20

	cp [hl]                                          ; $7865: $be
	nop                                              ; $7866: $00
	jr jr_062_7829                                   ; $7867: $18 $c0

	sub h                                            ; $7869: $94
	add b                                            ; $786a: $80
	ld hl, $1d60                                     ; $786b: $21 $60 $1d
	inc de                                           ; $786e: $13
	rrca                                             ; $786f: $0f
	rrca                                             ; $7870: $0f
	rlca                                             ; $7871: $07
	add l                                            ; $7872: $85
	add e                                            ; $7873: $83
	jp nz, $e057                                     ; $7874: $c2 $57 $e0

	sbc l                                            ; $7877: $9d
	ld a, h                                          ; $7878: $7c
	jr c, jr_062_7886                                ; $7879: $38 $0b

jr_062_787b:
	ldh [$9e], a                                     ; $787b: $e0 $9e
	ld a, b                                          ; $787d: $78
	ld [hl], a                                       ; $787e: $77
	sbc $1f                                          ; $787f: $de $1f
	ldh [$98], a                                     ; $7881: $e0 $98
	db $fc                                           ; $7883: $fc
	ld a, b                                          ; $7884: $78

jr_062_7885:
	ld a, h                                          ; $7885: $7c

jr_062_7886:
	ld a, b                                          ; $7886: $78
	ld a, b                                          ; $7887: $78
	jr nc, jr_062_78ba                               ; $7888: $30 $30

	ld d, e                                          ; $788a: $53
	ldh [$ca], a                                     ; $788b: $e0 $ca
	ld bc, $0b91                                     ; $788d: $01 $91 $0b
	inc c                                            ; $7890: $0c
	ld a, [bc]                                       ; $7891: $0a
	dec c                                            ; $7892: $0d
	ld c, $09                                        ; $7893: $0e $09
	dec c                                            ; $7895: $0d
	dec bc                                           ; $7896: $0b

Call_062_7897:
	dec c                                            ; $7897: $0d
	dec bc                                           ; $7898: $0b
	dec bc                                           ; $7899: $0b
	rrca                                             ; $789a: $0f
	dec bc                                           ; $789b: $0b
	rrca                                             ; $789c: $0f
	db $dd                                           ; $789d: $dd
	ld b, $df                                        ; $789e: $06 $df
	ld [bc], a                                       ; $78a0: $02
	db $db                                           ; $78a1: $db
	ld bc, $d9fd                                     ; $78a2: $01 $fd $d9
	ld bc, $029d                                     ; $78a5: $01 $9d $02
	inc bc                                           ; $78a8: $03
	ld [hl], a                                       ; $78a9: $77
	cp $80                                           ; $78aa: $fe $80
	inc b                                            ; $78ac: $04
	rlca                                             ; $78ad: $07
	ccf                                              ; $78ae: $3f
	ccf                                              ; $78af: $3f
	rst $38                                          ; $78b0: $ff
	add b                                            ; $78b1: $80
	rst FarCall                                          ; $78b2: $f7
	jr c, @-$47                                      ; $78b3: $38 $b7

	ld a, b                                          ; $78b5: $78
	ld a, l                                          ; $78b6: $7d
	cp $fe                                           ; $78b7: $fe $fe
	rst $38                                          ; $78b9: $ff

jr_062_78ba:
	rst AddAOntoHL                                          ; $78ba: $ef
	rst FarCall                                          ; $78bb: $f7
	rst FarCall                                          ; $78bc: $f7
	ei                                               ; $78bd: $fb
	cp a                                             ; $78be: $bf
	rst SubAFromDE                                          ; $78bf: $df
	ld h, l                                          ; $78c0: $65
	sbc b                                            ; $78c1: $98
	jp nz, $d239                                     ; $78c2: $c2 $39 $d2

	add hl, sp                                       ; $78c5: $39
	sub l                                            ; $78c6: $95
	ld a, d                                          ; $78c7: $7a
	or e                                             ; $78c8: $b3
	ld a, [hl]                                       ; $78c9: $7e
	ld [hl-], a                                      ; $78ca: $32
	add b                                            ; $78cb: $80
	rst $38                                          ; $78cc: $ff
	ld a, [hl-]                                      ; $78cd: $3a

jr_062_78ce:
	rst AddAOntoHL                                          ; $78ce: $ef
	xor a                                            ; $78cf: $af
	push hl                                          ; $78d0: $e5
	rst GetHLinHL                                          ; $78d1: $cf
	xor $4f                                          ; $78d2: $ee $4f
	pop hl                                           ; $78d4: $e1
	xor a                                            ; $78d5: $af
	ld b, b                                          ; $78d6: $40
	rst $38                                          ; $78d7: $ff
	ld b, a                                          ; $78d8: $47
	ld a, l                                          ; $78d9: $7d
	call c, $c7bf                                    ; $78da: $dc $bf $c7
	and l                                            ; $78dd: $a5
	rst JumpTable                                          ; $78de: $c7
	ld h, [hl]                                       ; $78df: $66

jr_062_78e0:
	call nz, $c267                                   ; $78e0: $c4 $67 $c2
	ld h, b                                          ; $78e3: $60
	ret nz                                           ; $78e4: $c0

	ld h, b                                          ; $78e5: $60
	ret nz                                           ; $78e6: $c0

	ld b, b                                          ; $78e7: $40
	ldh [rAUD4LEN], a                                ; $78e8: $e0 $20
	ldh [hDisp1_OBP1], a                                     ; $78ea: $e0 $94
	jr nc, jr_062_78ce                               ; $78ec: $30 $e0

	jr nz, jr_062_78e0                               ; $78ee: $20 $f0

	ld hl, sp-$10                                    ; $78f0: $f8 $f0
	inc e                                            ; $78f2: $1c
	jr c, jr_062_78f8                                ; $78f3: $38 $03

	ld b, $00                                        ; $78f5: $06 $00
	ld [hl], a                                       ; $78f7: $77

jr_062_78f8:
	and h                                            ; $78f8: $a4
	add b                                            ; $78f9: $80
	ldh [$50], a                                     ; $78fa: $e0 $50
	db $fc                                           ; $78fc: $fc
	ld e, [hl]                                       ; $78fd: $5e
	rst $38                                          ; $78fe: $ff
	ld c, a                                          ; $78ff: $4f
	rst $38                                          ; $7900: $ff
	adc d                                            ; $7901: $8a
	ld sp, $31e6                                     ; $7902: $31 $e6 $31
	or [hl]                                          ; $7905: $b6
	ld h, c                                          ; $7906: $61
	cp h                                             ; $7907: $bc
	ld h, e                                          ; $7908: $63
	ld a, l                                          ; $7909: $7d
	db $e3                                           ; $790a: $e3
	jp hl                                            ; $790b: $e9


	or a                                             ; $790c: $b7
	jp hl                                            ; $790d: $e9


	or a                                             ; $790e: $b7
	pop af                                           ; $790f: $f1
	sbc a                                            ; $7910: $9f
	di                                               ; $7911: $f3
	sbc [hl]                                         ; $7912: $9e
	ei                                               ; $7913: $fb
	adc $fb                                          ; $7914: $ce $fb
	ld c, $ff                                        ; $7916: $0e $ff
	ld b, $80                                        ; $7918: $06 $80
	rst $38                                          ; $791a: $ff
	add d                                            ; $791b: $82
	rst $38                                          ; $791c: $ff
	add b                                            ; $791d: $80
	rst SubAFromBC                                          ; $791e: $e7
	add b                                            ; $791f: $80
	ld bc, $9280                                     ; $7920: $01 $80 $92
	add hl, bc                                       ; $7923: $09
	ld [hl-], a                                      ; $7924: $32
	add hl, bc                                       ; $7925: $09
	ld a, [hl+]                                      ; $7926: $2a
	ld de, $1166                                     ; $7927: $11 $66 $11
	ld h, l                                          ; $792a: $65
	inc de                                           ; $792b: $13
	push bc                                          ; $792c: $c5
	inc sp                                           ; $792d: $33
	ld e, l                                          ; $792e: $5d
	or e                                             ; $792f: $b3
	ld d, l                                          ; $7930: $55
	cp e                                             ; $7931: $bb
	sub e                                            ; $7932: $93
	rst $38                                          ; $7933: $ff
	sbc e                                            ; $7934: $9b
	cp $9f                                           ; $7935: $fe $9f
	or $df                                           ; $7937: $f6 $df
	add b                                            ; $7939: $80
	ld a, [hl]                                       ; $793a: $7e
	rst SubAFromDE                                          ; $793b: $df
	ld [hl], e                                       ; $793c: $73

jr_062_793d:
	rst $38                                          ; $793d: $ff
	jr nc, @+$01                                     ; $793e: $30 $ff

	db $10                                           ; $7940: $10
	rst $38                                          ; $7941: $ff
	ld e, $7b                                        ; $7942: $1e $7b
	inc sp                                           ; $7944: $33
	ccf                                              ; $7945: $3f
	rra                                              ; $7946: $1f
	rla                                              ; $7947: $17
	rra                                              ; $7948: $1f
	add hl, de                                       ; $7949: $19
	ld [de], a                                       ; $794a: $12
	rra                                              ; $794b: $1f
	inc c                                            ; $794c: $0c
	ld bc, $0300                                     ; $794d: $01 $00 $03
	nop                                              ; $7950: $00
	rlca                                             ; $7951: $07
	nop                                              ; $7952: $00
	ld c, $01                                        ; $7953: $0e $01
	dec de                                           ; $7955: $1b
	rlca                                             ; $7956: $07
	ld l, a                                          ; $7957: $6f
	rra                                              ; $7958: $1f
	sbc l                                            ; $7959: $9d
	cp a                                             ; $795a: $bf
	ld a, a                                          ; $795b: $7f
	call c, $80ff                                    ; $795c: $dc $ff $80
	rst FarCall                                          ; $795f: $f7
	db $fc                                           ; $7960: $fc
	ld h, h                                          ; $7961: $64
	ld l, h                                          ; $7962: $6c
	inc de                                           ; $7963: $13
	ld c, [hl]                                       ; $7964: $4e
	ld de, $1542                                     ; $7965: $11 $42 $15
	inc bc                                           ; $7968: $03
	inc d                                            ; $7969: $14
	inc bc                                           ; $796a: $03
	inc d                                            ; $796b: $14
	ld c, c                                          ; $796c: $49
	ld d, $69                                        ; $796d: $16 $69
	ld d, $41                                        ; $796f: $16 $41
	ld a, $c0                                        ; $7971: $3e $c0
	ccf                                              ; $7973: $3f
	ld d, b                                          ; $7974: $50
	cp a                                             ; $7975: $bf
	jp nc, $92bf                                     ; $7976: $d2 $bf $92

	rst $38                                          ; $7979: $ff
	sbc d                                            ; $797a: $9a
	rst $38                                          ; $797b: $ff
	jp c, $80ff                                      ; $797c: $da $ff $80

	db $eb                                           ; $797f: $eb
	ld a, a                                          ; $7980: $7f
	rst SubAFromBC                                          ; $7981: $e7
	ccf                                              ; $7982: $3f
	rst FarCall                                          ; $7983: $f7
	cpl                                              ; $7984: $2f
	rst FarCall                                          ; $7985: $f7
	xor l                                            ; $7986: $ad
	rst $38                                          ; $7987: $ff
	ld l, $ef                                        ; $7988: $2e $ef
	ld a, [hl-]                                      ; $798a: $3a
	rst $38                                          ; $798b: $ff
	dec [hl]                                         ; $798c: $35
	rst $38                                          ; $798d: $ff
	dec sp                                           ; $798e: $3b
	cp $67                                           ; $798f: $fe $67
	ld a, l                                          ; $7991: $7d
	cp $fd                                           ; $7992: $fe $fd
	cp $bb                                           ; $7994: $fe $bb
	db $fc                                           ; $7996: $fc
	xor d                                            ; $7997: $aa
	db $fd                                           ; $7998: $fd
	ld l, b                                          ; $7999: $68
	rst $38                                          ; $799a: $ff
	ld d, b                                          ; $799b: $50
	rst $38                                          ; $799c: $ff
	ld d, c                                          ; $799d: $51
	sbc d                                            ; $799e: $9a
	cp $d1                                           ; $799f: $fe $d1
	cp $f0                                           ; $79a1: $fe $f0
	rst $38                                          ; $79a3: $ff
	dec hl                                           ; $79a4: $2b
	jr nz, jr_062_793d                               ; $79a5: $20 $96

	ld b, b                                          ; $79a7: $40
	ld a, a                                          ; $79a8: $7f
	rst JumpTable                                          ; $79a9: $c7
	cp l                                             ; $79aa: $bd
	call c, $c7af                                    ; $79ab: $dc $af $c7
	ld h, h                                          ; $79ae: $64
	add $23                                          ; $79af: $c6 $23
	ld b, b                                          ; $79b1: $40
	sbc [hl]                                         ; $79b2: $9e
	ld [bc], a                                       ; $79b3: $02
	inc bc                                           ; $79b4: $03
	ld b, b                                          ; $79b5: $40
	ld [hl], a                                       ; $79b6: $77
	ld b, b                                          ; $79b7: $40
	sub [hl]                                         ; $79b8: $96
	nop                                              ; $79b9: $00
	ld a, a                                          ; $79ba: $7f
	inc e                                            ; $79bb: $1c
	dec sp                                           ; $79bc: $3b
	ld [hl-], a                                      ; $79bd: $32
	ccf                                              ; $79be: $3f
	rra                                              ; $79bf: $1f
	ld de, $271a                                     ; $79c0: $11 $1a $27
	ld b, b                                          ; $79c3: $40
	ld a, e                                          ; $79c4: $7b
	ld h, b                                          ; $79c5: $60
	sbc h                                            ; $79c6: $9c
	dec l                                            ; $79c7: $2d
	rst $38                                          ; $79c8: $ff
	xor [hl]                                         ; $79c9: $ae
	inc bc                                           ; $79ca: $03
	ld h, b                                          ; $79cb: $60
	ld e, a                                          ; $79cc: $5f
	ld h, b                                          ; $79cd: $60
	sbc h                                            ; $79ce: $9c
	db $e4                                           ; $79cf: $e4
	ld c, a                                          ; $79d0: $4f
	rst AddAOntoHL                                          ; $79d1: $ef
	ld [hl], e                                       ; $79d2: $73
	ld h, b                                          ; $79d3: $60
	sub l                                            ; $79d4: $95
	ret nz                                           ; $79d5: $c0

	cp a                                             ; $79d6: $bf
	ret nz                                           ; $79d7: $c0

	cp a                                             ; $79d8: $bf
	rst GetHLinHL                                          ; $79d9: $cf
	ld a, l                                          ; $79da: $7d
	db $dd                                           ; $79db: $dd
	ld l, a                                          ; $79dc: $6f
	rst JumpTable                                          ; $79dd: $c7
	ld h, a                                          ; $79de: $67
	ld [bc], a                                       ; $79df: $02
	add b                                            ; $79e0: $80
	ld c, e                                          ; $79e1: $4b
	ld b, b                                          ; $79e2: $40
	sbc h                                            ; $79e3: $9c
	ld c, [hl]                                       ; $79e4: $4e
	ei                                               ; $79e5: $fb
	adc $73                                          ; $79e6: $ce $73
	ld b, b                                          ; $79e8: $40
	sbc e                                            ; $79e9: $9b
	nop                                              ; $79ea: $00
	rst SubAFromBC                                          ; $79eb: $e7
	nop                                              ; $79ec: $00
	add c                                            ; $79ed: $81
	daa                                              ; $79ee: $27
	ld b, b                                          ; $79ef: $40
	sbc d                                            ; $79f0: $9a
	ld [hl], h                                       ; $79f1: $74
	rst SubAFromDE                                          ; $79f2: $df
	ld a, [hl]                                       ; $79f3: $7e
	rst $38                                          ; $79f4: $ff
	ld sp, $4073                                     ; $79f5: $31 $73 $40
	sub l                                            ; $79f8: $95
	nop                                              ; $79f9: $00
	ccf                                              ; $79fa: $3f
	nop                                              ; $79fb: $00
	ccf                                              ; $79fc: $3f
	ld a, $3b                                        ; $79fd: $3e $3b
	dec de                                           ; $79ff: $1b
	ccf                                              ; $7a00: $3f
	rrca                                             ; $7a01: $0f
	rrca                                             ; $7a02: $0f
	ld a, e                                          ; $7a03: $7b
	xor c                                            ; $7a04: $a9
	dec hl                                           ; $7a05: $2b
	ld b, b                                          ; $7a06: $40
	ld a, [hl]                                       ; $7a07: $7e
	and b                                            ; $7a08: $a0
	sbc [hl]                                         ; $7a09: $9e
	cp d                                             ; $7a0a: $ba
	inc bc                                           ; $7a0b: $03
	ld b, b                                          ; $7a0c: $40
	scf                                              ; $7a0d: $37
	ld b, b                                          ; $7a0e: $40
	sbc h                                            ; $7a0f: $9c
	rst JumpTable                                          ; $7a10: $c7
	ld a, a                                          ; $7a11: $7f
	ret c                                            ; $7a12: $d8

	dec bc                                           ; $7a13: $0b
	ld h, b                                          ; $7a14: $60
	ld l, a                                          ; $7a15: $6f
	add b                                            ; $7a16: $80
	sbc h                                            ; $7a17: $9c
	ld c, $3f                                        ; $7a18: $0e $3f
	jr nc, @+$29                                     ; $7a1a: $30 $27

	add b                                            ; $7a1c: $80
	sbc b                                            ; $7a1d: $98
	sbc b                                            ; $7a1e: $98
	nop                                              ; $7a1f: $00
	inc a                                            ; $7a20: $3c
	nop                                              ; $7a21: $00
	ld a, h                                          ; $7a22: $7c
	ld b, b                                          ; $7a23: $40

jr_062_7a24:
	jr c, jr_062_7a24                                ; $7a24: $38 $fe

	sbc b                                            ; $7a26: $98
	ld [hl], b                                       ; $7a27: $70
	jr nz, jr_062_7a66                               ; $7a28: $20 $3c

	ld [rRAMG], sp                                   ; $7a2a: $08 $00 $00

jr_062_7a2d:
	jr nc, jr_062_7a2d                               ; $7a2d: $30 $fe

	sub e                                            ; $7a2f: $93
	ret nz                                           ; $7a30: $c0

	add b                                            ; $7a31: $80
	ld hl, $1d60                                     ; $7a32: $21 $60 $1d
	inc de                                           ; $7a35: $13

jr_062_7a36:
	rrca                                             ; $7a36: $0f
	rrca                                             ; $7a37: $0f
	rlca                                             ; $7a38: $07
	add l                                            ; $7a39: $85
	add e                                            ; $7a3a: $83
	jp nz, $e053                                     ; $7a3b: $c2 $53 $e0

	sbc l                                            ; $7a3e: $9d
	jr c, @+$2a                                      ; $7a3f: $38 $28

	inc de                                           ; $7a41: $13
	ldh [$9b], a                                     ; $7a42: $e0 $9b
	ld a, h                                          ; $7a44: $7c
	jr c, jr_062_7a83                                ; $7a45: $38 $3c

	jr c, @+$79                                      ; $7a47: $38 $77

	or $57                                           ; $7a49: $f6 $57
	ldh [$9e], a                                     ; $7a4b: $e0 $9e
	jr jr_062_7a9a                                   ; $7a4d: $18 $4b

	ldh [$9c], a                                     ; $7a4f: $e0 $9c
	inc a                                            ; $7a51: $3c
	jr jr_062_7a6c                                   ; $7a52: $18 $18

	ld d, e                                          ; $7a54: $53
	ldh [$c5], a                                     ; $7a55: $e0 $c5
	ld bc, $0b91                                     ; $7a57: $01 $91 $0b
	inc c                                            ; $7a5a: $0c
	ld a, [bc]                                       ; $7a5b: $0a
	dec c                                            ; $7a5c: $0d
	ld c, $09                                        ; $7a5d: $0e $09
	dec c                                            ; $7a5f: $0d
	dec bc                                           ; $7a60: $0b
	dec c                                            ; $7a61: $0d
	dec bc                                           ; $7a62: $0b
	dec bc                                           ; $7a63: $0b
	rrca                                             ; $7a64: $0f
	dec bc                                           ; $7a65: $0b

jr_062_7a66:
	rrca                                             ; $7a66: $0f
	db $dd                                           ; $7a67: $dd
	ld b, $df                                        ; $7a68: $06 $df
	ld [bc], a                                       ; $7a6a: $02
	db $db                                           ; $7a6b: $db

jr_062_7a6c:
	ld bc, $d9fd                                     ; $7a6c: $01 $fd $d9
	ld bc, $029d                                     ; $7a6f: $01 $9d $02
	inc bc                                           ; $7a72: $03
	ld [hl], a                                       ; $7a73: $77
	cp $80                                           ; $7a74: $fe $80
	inc b                                            ; $7a76: $04
	rlca                                             ; $7a77: $07
	ccf                                              ; $7a78: $3f
	ccf                                              ; $7a79: $3f
	rst $38                                          ; $7a7a: $ff
	add b                                            ; $7a7b: $80
	rst FarCall                                          ; $7a7c: $f7
	jr c, jr_062_7a36                                ; $7a7d: $38 $b7

	ld a, b                                          ; $7a7f: $78
	ld a, l                                          ; $7a80: $7d
	cp $fe                                           ; $7a81: $fe $fe

jr_062_7a83:
	rst $38                                          ; $7a83: $ff
	rst AddAOntoHL                                          ; $7a84: $ef
	rst FarCall                                          ; $7a85: $f7
	rst FarCall                                          ; $7a86: $f7
	ei                                               ; $7a87: $fb
	cp a                                             ; $7a88: $bf
	rst SubAFromDE                                          ; $7a89: $df
	ld h, l                                          ; $7a8a: $65
	sbc b                                            ; $7a8b: $98
	jp nz, $d239                                     ; $7a8c: $c2 $39 $d2

	add hl, sp                                       ; $7a8f: $39
	sub l                                            ; $7a90: $95
	ld a, d                                          ; $7a91: $7a
	or e                                             ; $7a92: $b3
	ld a, [hl]                                       ; $7a93: $7e
	ld [hl-], a                                      ; $7a94: $32
	add b                                            ; $7a95: $80
	rst $38                                          ; $7a96: $ff
	ld a, [hl-]                                      ; $7a97: $3a

jr_062_7a98:
	rst AddAOntoHL                                          ; $7a98: $ef
	xor a                                            ; $7a99: $af

jr_062_7a9a:
	db $ed                                           ; $7a9a: $ed
	rst GetHLinHL                                          ; $7a9b: $cf
	db $e3                                           ; $7a9c: $e3
	ld c, a                                          ; $7a9d: $4f
	ldh [$af], a                                     ; $7a9e: $e0 $af
	ld b, b                                          ; $7aa0: $40
	rst $38                                          ; $7aa1: $ff
	ld c, a                                          ; $7aa2: $4f
	ld [hl], l                                       ; $7aa3: $75
	call c, $c7bf                                    ; $7aa4: $dc $bf $c7
	and l                                            ; $7aa7: $a5
	rst JumpTable                                          ; $7aa8: $c7
	ld h, [hl]                                       ; $7aa9: $66

jr_062_7aaa:
	call nz, $c267                                   ; $7aaa: $c4 $67 $c2
	ld h, b                                          ; $7aad: $60
	ret nz                                           ; $7aae: $c0

	ld h, b                                          ; $7aaf: $60
	ret nz                                           ; $7ab0: $c0

	ld b, b                                          ; $7ab1: $40
	ldh [rAUD4LEN], a                                ; $7ab2: $e0 $20
	ldh [hDisp1_WY], a                                     ; $7ab4: $e0 $95
	jr nc, jr_062_7a98                               ; $7ab6: $30 $e0

	jr nz, jr_062_7aaa                               ; $7ab8: $20 $f0

	ld hl, sp-$10                                    ; $7aba: $f8 $f0
	inc e                                            ; $7abc: $1c
	jr c, @+$05                                      ; $7abd: $38 $03

	ld b, $be                                        ; $7abf: $06 $be
	ld bc, $e000                                     ; $7ac1: $01 $00 $e0
	add b                                            ; $7ac4: $80
	ld d, b                                          ; $7ac5: $50
	db $fc                                           ; $7ac6: $fc
	ld e, [hl]                                       ; $7ac7: $5e
	rst $38                                          ; $7ac8: $ff
	ld c, a                                          ; $7ac9: $4f
	rst $38                                          ; $7aca: $ff
	adc d                                            ; $7acb: $8a
	ld sp, $31e6                                     ; $7acc: $31 $e6 $31
	or [hl]                                          ; $7acf: $b6
	ld h, c                                          ; $7ad0: $61
	cp h                                             ; $7ad1: $bc
	ld h, e                                          ; $7ad2: $63
	ld a, l                                          ; $7ad3: $7d
	db $e3                                           ; $7ad4: $e3
	jp hl                                            ; $7ad5: $e9


	or a                                             ; $7ad6: $b7
	jp hl                                            ; $7ad7: $e9


	or a                                             ; $7ad8: $b7
	pop af                                           ; $7ad9: $f1
	sbc a                                            ; $7ada: $9f
	di                                               ; $7adb: $f3
	sbc [hl]                                         ; $7adc: $9e
	ei                                               ; $7add: $fb
	adc $fb                                          ; $7ade: $ce $fb
	ld c, [hl]                                       ; $7ae0: $4e
	rst $38                                          ; $7ae1: $ff
	ld b, $ff                                        ; $7ae2: $06 $ff
	add b                                            ; $7ae4: $80
	add d                                            ; $7ae5: $82
	rst $38                                          ; $7ae6: $ff
	add b                                            ; $7ae7: $80
	rst SubAFromBC                                          ; $7ae8: $e7
	add b                                            ; $7ae9: $80
	ld bc, $9280                                     ; $7aea: $01 $80 $92
	add hl, bc                                       ; $7aed: $09
	ld [hl-], a                                      ; $7aee: $32
	add hl, bc                                       ; $7aef: $09
	ld a, [hl+]                                      ; $7af0: $2a
	ld de, $1166                                     ; $7af1: $11 $66 $11
	ld h, l                                          ; $7af4: $65
	inc de                                           ; $7af5: $13
	push bc                                          ; $7af6: $c5
	inc sp                                           ; $7af7: $33
	ld e, l                                          ; $7af8: $5d
	or e                                             ; $7af9: $b3
	ld d, l                                          ; $7afa: $55
	cp e                                             ; $7afb: $bb
	sub e                                            ; $7afc: $93
	rst $38                                          ; $7afd: $ff
	sbc e                                            ; $7afe: $9b
	cp $9f                                           ; $7aff: $fe $9f
	or $df                                           ; $7b01: $f6 $df
	ld [hl], a                                       ; $7b03: $77
	adc h                                            ; $7b04: $8c

jr_062_7b05:
	rst SubAFromDE                                          ; $7b05: $df
	ld a, h                                          ; $7b06: $7c
	rst $38                                          ; $7b07: $ff
	jr nc, @+$01                                     ; $7b08: $30 $ff

	db $10                                           ; $7b0a: $10
	rst $38                                          ; $7b0b: $ff
	ld e, $7b                                        ; $7b0c: $1e $7b
	ld sp, $1f3f                                     ; $7b0e: $31 $3f $1f
	rla                                              ; $7b11: $17
	rra                                              ; $7b12: $1f
	add hl, de                                       ; $7b13: $19
	ld [de], a                                       ; $7b14: $12
	rra                                              ; $7b15: $1f
	inc c                                            ; $7b16: $0c
	ld bc, $03be                                     ; $7b17: $01 $be $03
	rlca                                             ; $7b1a: $07
	ld c, $98                                        ; $7b1b: $0e $98
	ld bc, $071b                                     ; $7b1d: $01 $1b $07
	ld l, a                                          ; $7b20: $6f
	rra                                              ; $7b21: $1f
	cp a                                             ; $7b22: $bf
	ld a, a                                          ; $7b23: $7f
	call c, $80ff                                    ; $7b24: $dc $ff $80
	rst FarCall                                          ; $7b27: $f7
	db $fc                                           ; $7b28: $fc
	ld h, h                                          ; $7b29: $64
	ld l, h                                          ; $7b2a: $6c
	inc de                                           ; $7b2b: $13
	ld c, [hl]                                       ; $7b2c: $4e
	ld de, $1542                                     ; $7b2d: $11 $42 $15
	inc bc                                           ; $7b30: $03
	inc d                                            ; $7b31: $14
	inc bc                                           ; $7b32: $03
	inc d                                            ; $7b33: $14
	ld c, c                                          ; $7b34: $49
	ld d, $69                                        ; $7b35: $16 $69
	ld d, $41                                        ; $7b37: $16 $41
	ld a, $c0                                        ; $7b39: $3e $c0
	ccf                                              ; $7b3b: $3f
	ld d, b                                          ; $7b3c: $50
	cp a                                             ; $7b3d: $bf
	jp nc, $92bf                                     ; $7b3e: $d2 $bf $92

	rst $38                                          ; $7b41: $ff
	sbc d                                            ; $7b42: $9a
	rst $38                                          ; $7b43: $ff
	jp c, $80ff                                      ; $7b44: $da $ff $80

	db $eb                                           ; $7b47: $eb
	ld a, a                                          ; $7b48: $7f
	rst SubAFromBC                                          ; $7b49: $e7
	ccf                                              ; $7b4a: $3f
	rst FarCall                                          ; $7b4b: $f7
	cpl                                              ; $7b4c: $2f
	rst FarCall                                          ; $7b4d: $f7
	xor l                                            ; $7b4e: $ad
	rst $38                                          ; $7b4f: $ff
	ld l, $ef                                        ; $7b50: $2e $ef
	ld a, [hl-]                                      ; $7b52: $3a
	rst $38                                          ; $7b53: $ff
	dec [hl]                                         ; $7b54: $35
	rst $38                                          ; $7b55: $ff
	dec sp                                           ; $7b56: $3b
	cp $67                                           ; $7b57: $fe $67
	ld a, l                                          ; $7b59: $7d
	cp $fd                                           ; $7b5a: $fe $fd
	cp $bb                                           ; $7b5c: $fe $bb
	db $fc                                           ; $7b5e: $fc
	xor d                                            ; $7b5f: $aa
	db $fd                                           ; $7b60: $fd
	ld l, b                                          ; $7b61: $68
	rst $38                                          ; $7b62: $ff
	ld d, b                                          ; $7b63: $50
	rst $38                                          ; $7b64: $ff
	ld d, c                                          ; $7b65: $51
	sbc d                                            ; $7b66: $9a
	cp $d1                                           ; $7b67: $fe $d1
	cp $f0                                           ; $7b69: $fe $f0
	rst $38                                          ; $7b6b: $ff
	dec hl                                           ; $7b6c: $2b
	jr nz, jr_062_7b05                               ; $7b6d: $20 $96

	ld b, b                                          ; $7b6f: $40
	ld a, a                                          ; $7b70: $7f
	rst GetHLinHL                                          ; $7b71: $cf
	or l                                             ; $7b72: $b5
	call c, $c7af                                    ; $7b73: $dc $af $c7
	ld h, h                                          ; $7b76: $64
	add $23                                          ; $7b77: $c6 $23
	ld b, b                                          ; $7b79: $40
	sbc [hl]                                         ; $7b7a: $9e
	ld [bc], a                                       ; $7b7b: $02
	inc bc                                           ; $7b7c: $03
	ld b, b                                          ; $7b7d: $40
	ld [hl], a                                       ; $7b7e: $77
	ld b, b                                          ; $7b7f: $40
	sbc e                                            ; $7b80: $9b
	nop                                              ; $7b81: $00
	ld a, a                                          ; $7b82: $7f
	ld e, $3b                                        ; $7b83: $1e $3b
	ld a, e                                          ; $7b85: $7b
	ld a, $9d                                        ; $7b86: $3e $9d
	ld de, $271a                                     ; $7b88: $11 $1a $27
	ld b, b                                          ; $7b8b: $40
	ld a, e                                          ; $7b8c: $7b
	ld h, b                                          ; $7b8d: $60
	sbc h                                            ; $7b8e: $9c
	dec l                                            ; $7b8f: $2d
	rst $38                                          ; $7b90: $ff
	xor [hl]                                         ; $7b91: $ae
	inc bc                                           ; $7b92: $03
	ld h, b                                          ; $7b93: $60
	ld h, a                                          ; $7b94: $67
	ld h, b                                          ; $7b95: $60
	sbc d                                            ; $7b96: $9a
	push hl                                          ; $7b97: $e5
	rst GetHLinHL                                          ; $7b98: $cf
	xor $4f                                          ; $7b99: $ee $4f
	db $e3                                           ; $7b9b: $e3
	ld [hl], e                                       ; $7b9c: $73
	ld h, b                                          ; $7b9d: $60
	sbc b                                            ; $7b9e: $98
	ret nz                                           ; $7b9f: $c0

	cp a                                             ; $7ba0: $bf
	ret nz                                           ; $7ba1: $c0

	xor a                                            ; $7ba2: $af
	rst GetHLinHL                                          ; $7ba3: $cf
	ld a, l                                          ; $7ba4: $7d
	db $dd                                           ; $7ba5: $dd
	inc sp                                           ; $7ba6: $33
	ld h, b                                          ; $7ba7: $60
	sbc [hl]                                         ; $7ba8: $9e
	adc $73                                          ; $7ba9: $ce $73
	ld h, b                                          ; $7bab: $60
	cp a                                             ; $7bac: $bf
	rst SubAFromBC                                          ; $7bad: $e7

jr_062_7bae:
	add c                                            ; $7bae: $81
	daa                                              ; $7baf: $27
	ld h, b                                          ; $7bb0: $60
	sbc d                                            ; $7bb1: $9a
	ld [hl], h                                       ; $7bb2: $74
	rst SubAFromDE                                          ; $7bb3: $df
	ld [hl], a                                       ; $7bb4: $77
	rst $38                                          ; $7bb5: $ff
	inc a                                            ; $7bb6: $3c
	ld [hl], e                                       ; $7bb7: $73
	ld h, b                                          ; $7bb8: $60
	cp a                                             ; $7bb9: $bf
	ccf                                              ; $7bba: $3f
	ccf                                              ; $7bbb: $3f
	sbc c                                            ; $7bbc: $99
	ld a, $3b                                        ; $7bbd: $3e $3b
	dec de                                           ; $7bbf: $1b
	ccf                                              ; $7bc0: $3f
	rrca                                             ; $7bc1: $0f
	rrca                                             ; $7bc2: $0f
	cp [hl]                                          ; $7bc3: $be
	ld bc, $0e07                                     ; $7bc4: $01 $07 $0e
	scf                                              ; $7bc7: $37
	ld h, b                                          ; $7bc8: $60
	ld a, [hl]                                       ; $7bc9: $7e
	ret nz                                           ; $7bca: $c0

	sbc [hl]                                         ; $7bcb: $9e
	cp d                                             ; $7bcc: $ba
	inc bc                                           ; $7bcd: $03
	ld h, b                                          ; $7bce: $60
	scf                                              ; $7bcf: $37
	ld h, b                                          ; $7bd0: $60
	sbc c                                            ; $7bd1: $99
	rst JumpTable                                          ; $7bd2: $c7
	ld a, a                                          ; $7bd3: $7f
	ret c                                            ; $7bd4: $d8

	ld l, a                                          ; $7bd5: $6f
	rst JumpTable                                          ; $7bd6: $c7
	ld h, a                                          ; $7bd7: $67
	ld bc, $1be0                                     ; $7bd8: $01 $e0 $1b
	ld b, b                                          ; $7bdb: $40
	cp [hl]                                          ; $7bdc: $be
	ld a, a                                          ; $7bdd: $7f
	ccf                                              ; $7bde: $3f
	ccf                                              ; $7bdf: $3f
	sbc h                                            ; $7be0: $9c
	ld c, $3f                                        ; $7be1: $0e $3f
	jr nc, @+$29                                     ; $7be3: $30 $27

	ld h, b                                          ; $7be5: $60
	sbc [hl]                                         ; $7be6: $9e
	sbc b                                            ; $7be7: $98
	cp a                                             ; $7be8: $bf
	inc a                                            ; $7be9: $3c
	ld a, h                                          ; $7bea: $7c
	sbc l                                            ; $7beb: $9d
	ld b, b                                          ; $7bec: $40
	jr c, jr_062_7bae                                ; $7bed: $38 $bf

	nop                                              ; $7bef: $00
	ld h, b                                          ; $7bf0: $60
	sbc l                                            ; $7bf1: $9d
	ld b, b                                          ; $7bf2: $40
	ld e, b                                          ; $7bf3: $58
	cp l                                             ; $7bf4: $bd
	inc c                                            ; $7bf5: $0c
	jr nz, jr_062_7c08                               ; $7bf6: $20 $10

	ret nz                                           ; $7bf8: $c0

	sub h                                            ; $7bf9: $94
	add b                                            ; $7bfa: $80
	ld hl, $1d60                                     ; $7bfb: $21 $60 $1d
	inc de                                           ; $7bfe: $13

Call_062_7bff:
	rrca                                             ; $7bff: $0f
	rrca                                             ; $7c00: $0f
	rlca                                             ; $7c01: $07
	add l                                            ; $7c02: $85
	add e                                            ; $7c03: $83
	jp nz, $e057                                     ; $7c04: $c2 $57 $e0

	sbc e                                            ; $7c07: $9b

jr_062_7c08:
	ld a, b                                          ; $7c08: $78
	jr nc, jr_062_7c27                               ; $7c09: $30 $1c

	ld [$e013], sp                                   ; $7c0b: $08 $13 $e0
	sbc h                                            ; $7c0e: $9c
	ld [hl], b                                       ; $7c0f: $70
	ld a, h                                          ; $7c10: $7c
	jr c, jr_062_7c1e                                ; $7c11: $38 $0b

	ldh [$9b], a                                     ; $7c13: $e0 $9b
	ld a, b                                          ; $7c15: $78
	ld a, h                                          ; $7c16: $7c
	jr c, jr_062_7c51                                ; $7c17: $38 $38

	ld d, e                                          ; $7c19: $53
	ldh [$fd], a                                     ; $7c1a: $e0 $fd
	add d                                            ; $7c1c: $82
	db $fc                                           ; $7c1d: $fc

jr_062_7c1e:
	rst SubAFromDE                                          ; $7c1e: $df
	ld bc, $039e                                     ; $7c1f: $01 $9e $03
	ld h, a                                          ; $7c22: $67
	ld hl, sp-$80                                    ; $7c23: $f8 $80
	inc b                                            ; $7c25: $04
	ld a, [bc]                                       ; $7c26: $0a

jr_062_7c27:
	inc d                                            ; $7c27: $14
	add hl, hl                                       ; $7c28: $29
	add hl, de                                       ; $7c29: $19
	ld d, e                                          ; $7c2a: $53
	ld [hl], e                                       ; $7c2b: $73
	ld l, e                                          ; $7c2c: $6b
	rlca                                             ; $7c2d: $07
	dec c                                            ; $7c2e: $0d
	dec de                                           ; $7c2f: $1b
	ld [hl], $26                                     ; $7c30: $36 $26
	ld l, h                                          ; $7c32: $6c
	ld c, h                                          ; $7c33: $4c
	ld e, h                                          ; $7c34: $5c
	ld l, e                                          ; $7c35: $6b
	ld e, c                                          ; $7c36: $59
	ld e, c                                          ; $7c37: $59
	jr z, jr_062_7c5e                                ; $7c38: $28 $24

	inc d                                            ; $7c3a: $14
	ld [bc], a                                       ; $7c3b: $02
	inc bc                                           ; $7c3c: $03
	ld e, h                                          ; $7c3d: $5c
	ld a, [hl]                                       ; $7c3e: $7e
	ld a, [hl]                                       ; $7c3f: $7e
	cpl                                              ; $7c40: $2f
	daa                                              ; $7c41: $27
	rla                                              ; $7c42: $17
	inc bc                                           ; $7c43: $03
	sbc [hl]                                         ; $7c44: $9e
	inc bc                                           ; $7c45: $03
	jp c, $9e02                                      ; $7c46: $da $02 $9e

	inc b                                            ; $7c49: $04
	jp c, $9303                                      ; $7c4a: $da $03 $93

	rlca                                             ; $7c4d: $07
	dec b                                            ; $7c4e: $05
	dec b                                            ; $7c4f: $05
	add hl, bc                                       ; $7c50: $09

jr_062_7c51:
	ld a, [bc]                                       ; $7c51: $0a
	dec bc                                           ; $7c52: $0b
	dec bc                                           ; $7c53: $0b
	dec d                                            ; $7c54: $15
	dec e                                            ; $7c55: $1d
	ld b, $06                                        ; $7c56: $06 $06
	ld c, $de                                        ; $7c58: $0e $de
	dec c                                            ; $7c5a: $0d
	sub b                                            ; $7c5b: $90
	dec de                                           ; $7c5c: $1b
	inc de                                           ; $7c5d: $13

jr_062_7c5e:
	dec e                                            ; $7c5e: $1d
	ld e, $1a                                        ; $7c5f: $1e $1a
	dec de                                           ; $7c61: $1b
	add hl, de                                       ; $7c62: $19
	dec d                                            ; $7c63: $15
	inc d                                            ; $7c64: $14
	ld d, $13                                        ; $7c65: $16 $13
	ld de, $1515                                     ; $7c67: $11 $15 $15
	rla                                              ; $7c6a: $17
	call c, $991f                                    ; $7c6b: $dc $1f $99
	rrca                                             ; $7c6e: $0f
	inc c                                            ; $7c6f: $0c
	ld [$1f13], sp                                   ; $7c70: $08 $13 $1f
	inc de                                           ; $7c73: $13
	ld a, e                                          ; $7c74: $7b
	ld hl, sp-$21                                    ; $7c75: $f8 $df
	rrca                                             ; $7c77: $0f
	sub h                                            ; $7c78: $94
	inc e                                            ; $7c79: $1c
	jr @+$21                                         ; $7c7a: $18 $1f

	ld hl, $312e                                     ; $7c7c: $21 $2e $31
	jr nz, jr_062_7cc1                               ; $7c7f: $20 $40

	ld c, b                                          ; $7c81: $48
	ld h, h                                          ; $7c82: $64
	ld a, d                                          ; $7c83: $7a
	db $dd                                           ; $7c84: $dd
	ccf                                              ; $7c85: $3f
	sbc $7f                                          ; $7c86: $de $7f
	sbc [hl]                                         ; $7c88: $9e
	ld c, a                                          ; $7c89: $4f
	db $ed                                           ; $7c8a: $ed
	ld a, a                                          ; $7c8b: $7f
	ld a, e                                          ; $7c8c: $7b
	sbc l                                            ; $7c8d: $9d
	dec bc                                           ; $7c8e: $0b
	rla                                              ; $7c8f: $17
	ld [hl], e                                       ; $7c90: $73
	ld hl, sp-$80                                    ; $7c91: $f8 $80
	rlca                                             ; $7c93: $07
	rrca                                             ; $7c94: $0f
	ld e, $3b                                        ; $7c95: $1e $3b
	ld a, l                                          ; $7c97: $7d
	rst FarCall                                          ; $7c98: $f7
	ld [$e3a8], a                                    ; $7c99: $ea $a8 $e3
	rst GetHLinHL                                          ; $7c9c: $cf
	ld a, $3c                                        ; $7c9d: $3e $3c
	ld [hl], e                                       ; $7c9f: $73
	xor $d7                                          ; $7ca0: $ee $d7
	rst SubAFromDE                                          ; $7ca2: $df
	cp h                                             ; $7ca3: $bc
	ldh a, [$c1]                                     ; $7ca4: $f0 $c1
	ld l, c                                          ; $7ca6: $69
	jp nc, $a586                                     ; $7ca7: $d2 $86 $a5

	inc c                                            ; $7caa: $0c
	ld c, d                                          ; $7cab: $4a
	ld l, b                                          ; $7cac: $68
	ld c, h                                          ; $7cad: $4c
	sub d                                            ; $7cae: $92
	inc h                                            ; $7caf: $24
	ld l, b                                          ; $7cb0: $68
	ld c, b                                          ; $7cb1: $48
	sbc e                                            ; $7cb2: $9b
	pop de                                           ; $7cb3: $d1
	sub c                                            ; $7cb4: $91
	sub e                                            ; $7cb5: $93
	or e                                             ; $7cb6: $b3
	ldh [$c1], a                                     ; $7cb7: $e0 $c1
	sbc e                                            ; $7cb9: $9b
	add a                                            ; $7cba: $87
	ld h, $e6                                        ; $7cbb: $26 $e6
	and a                                            ; $7cbd: $a7
	sbc $17                                          ; $7cbe: $de $17
	adc [hl]                                         ; $7cc0: $8e

jr_062_7cc1:
	ld h, $ff                                        ; $7cc1: $26 $ff
	cp $fc                                           ; $7cc3: $fe $fc
	db $fd                                           ; $7cc5: $fd
	call c, $9cdc                                    ; $7cc6: $dc $dc $9c
	ccf                                              ; $7cc9: $3f
	rst JumpTable                                          ; $7cca: $c7
	add d                                            ; $7ccb: $82
	add e                                            ; $7ccc: $83
	ld h, b                                          ; $7ccd: $60
	call z, $3873                                    ; $7cce: $cc $73 $38
	inc c                                            ; $7cd1: $0c
	db $dd                                           ; $7cd2: $dd
	rst $38                                          ; $7cd3: $ff
	sbc e                                            ; $7cd4: $9b
	ccf                                              ; $7cd5: $3f
	adc a                                            ; $7cd6: $8f
	rst JumpTable                                          ; $7cd7: $c7
	di                                               ; $7cd8: $f3
	ldh a, [$8c]                                     ; $7cd9: $f0 $8c
	rrca                                             ; $7cdb: $0f
	ld sp, $36cf                                     ; $7cdc: $31 $cf $36
	pop af                                           ; $7cdf: $f1
	ei                                               ; $7ce0: $fb
	rst $38                                          ; $7ce1: $ff
	nop                                              ; $7ce2: $00
	rrca                                             ; $7ce3: $0f
	ccf                                              ; $7ce4: $3f
	ld sp, hl                                        ; $7ce5: $f9
	rst $38                                          ; $7ce6: $ff
	sbc a                                            ; $7ce7: $9f
	ld c, $64                                        ; $7ce8: $0e $64
	cp a                                             ; $7cea: $bf
	ld h, a                                          ; $7ceb: $67
	rst $38                                          ; $7cec: $ff
	rlca                                             ; $7ced: $07
	sbc $ff                                          ; $7cee: $de $ff
	sbc d                                            ; $7cf0: $9a
	db $dd                                           ; $7cf1: $dd
	pop af                                           ; $7cf2: $f1
	sbc b                                            ; $7cf3: $98
	rst $38                                          ; $7cf4: $ff
	ld hl, sp-$02                                    ; $7cf5: $f8 $fe
	sub d                                            ; $7cf7: $92
	jr nz, jr_062_7d23                               ; $7cf8: $20 $29

	and a                                            ; $7cfa: $a7
	ld d, d                                          ; $7cfb: $52
	ld c, d                                          ; $7cfc: $4a
	nop                                              ; $7cfd: $00
	jr nz, @+$28                                     ; $7cfe: $20 $26

	ld a, [de]                                       ; $7d00: $1a
	ld b, h                                          ; $7d01: $44
	ld c, b                                          ; $7d02: $48
	adc c                                            ; $7d03: $89
	sub c                                            ; $7d04: $91
	sbc $93                                          ; $7d05: $de $93
	sbc [hl]                                         ; $7d07: $9e
	or a                                             ; $7d08: $b7
	ldh [$c1], a                                     ; $7d09: $e0 $c1
	sub l                                            ; $7d0b: $95
	ld a, [bc]                                       ; $7d0c: $0a
	add [hl]                                         ; $7d0d: $86
	add l                                            ; $7d0e: $85
	ld b, l                                          ; $7d0f: $45
	ld h, d                                          ; $7d10: $62
	and e                                            ; $7d11: $a3
	or e                                             ; $7d12: $b3
	cp c                                             ; $7d13: $b9
	cp $fe                                           ; $7d14: $fe $fe
	call c, $9aff                                    ; $7d16: $dc $ff $9a
	rst AddAOntoHL                                          ; $7d19: $ef
	cp c                                             ; $7d1a: $b9
	cp h                                             ; $7d1b: $bc
	cp [hl]                                          ; $7d1c: $be
	cp [hl]                                          ; $7d1d: $be
	call c, $98ff                                    ; $7d1e: $dc $ff $98
	rst SubAFromBC                                          ; $7d21: $e7
	rst $38                                          ; $7d22: $ff

jr_062_7d23:
	db $eb                                           ; $7d23: $eb
	push bc                                          ; $7d24: $c5
	jp nz, $6081                                     ; $7d25: $c2 $81 $60

	pop af                                           ; $7d28: $f1
	ld a, a                                          ; $7d29: $7f
	ld h, a                                          ; $7d2a: $67
	sbc c                                            ; $7d2b: $99
	rst $38                                          ; $7d2c: $ff
	ld [hl], e                                       ; $7d2d: $73
	ld sp, hl                                        ; $7d2e: $f9
	db $fc                                           ; $7d2f: $fc
	sbc $af                                          ; $7d30: $de $af
	sbc $ff                                          ; $7d32: $de $ff
	sub l                                            ; $7d34: $95
	sbc $8f                                          ; $7d35: $de $8f
	daa                                              ; $7d37: $27
	ld [hl], e                                       ; $7d38: $73
	ld sp, hl                                        ; $7d39: $f9
	rst SubAFromDE                                          ; $7d3a: $df
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	ret nz                                           ; $7d3d: $c0

	rst $38                                          ; $7d3e: $ff
	sbc $f5                                          ; $7d3f: $de $f5
	sbc e                                            ; $7d41: $9b
	or h                                             ; $7d42: $b4
	nop                                              ; $7d43: $00
	rst $38                                          ; $7d44: $ff
	ccf                                              ; $7d45: $3f
	db $fd                                           ; $7d46: $fd
	adc a                                            ; $7d47: $8f
	ld h, h                                          ; $7d48: $64
	ld h, b                                          ; $7d49: $60
	ret nz                                           ; $7d4a: $c0

	ld b, b                                          ; $7d4b: $40
	ld b, b                                          ; $7d4c: $40
	ld b, $34                                        ; $7d4d: $06 $34
	xor c                                            ; $7d4f: $a9
	add b                                            ; $7d50: $80
	add h                                            ; $7d51: $84
	inc h                                            ; $7d52: $24
	jr nz, jr_062_7d75                               ; $7d53: $20 $20

	ld h, b                                          ; $7d55: $60
	ld h, d                                          ; $7d56: $62
	halt                                             ; $7d57: $76
	ldh [$c1], a                                     ; $7d58: $e0 $c1
	adc e                                            ; $7d5a: $8b
	rst $38                                          ; $7d5b: $ff
	ld h, d                                          ; $7d5c: $62
	ld d, a                                          ; $7d5d: $57
	ld c, a                                          ; $7d5e: $4f
	cp d                                             ; $7d5f: $ba
	and h                                            ; $7d60: $a4
	db $dd                                           ; $7d61: $dd
	rst SubAFromHL                                          ; $7d62: $d7
	add a                                            ; $7d63: $87
	sbc $e9                                          ; $7d64: $de $e9
	di                                               ; $7d66: $f3
	rst SubAFromBC                                          ; $7d67: $e7
	rst $38                                          ; $7d68: $ff

jr_062_7d69:
	ld a, a                                          ; $7d69: $7f
	ld hl, sp-$11                                    ; $7d6a: $f8 $ef
	rst FarCall                                          ; $7d6c: $f7
	ei                                               ; $7d6d: $fb
	db $fd                                           ; $7d6e: $fd
	ld [hl], a                                       ; $7d6f: $77
	ld d, l                                          ; $7d70: $55
	sub a                                            ; $7d71: $97
	ccf                                              ; $7d72: $3f
	rst $38                                          ; $7d73: $ff
	sbc a                                            ; $7d74: $9f

jr_062_7d75:
	add a                                            ; $7d75: $87
	add e                                            ; $7d76: $83
	pop bc                                           ; $7d77: $c1
	ld b, b                                          ; $7d78: $40
	and b                                            ; $7d79: $a0
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7d7a: $f0 $81
	ldh a, [hDisp1_LCDC]                                     ; $7d7c: $f0 $8f
	ld hl, sp-$41                                    ; $7d7e: $f8 $bf
	ld a, [hl]                                       ; $7d80: $7e
	cp $e6                                           ; $7d81: $fe $e6
	nop                                              ; $7d83: $00
	ldh a, [rIE]                                     ; $7d84: $f0 $ff
	ld a, a                                          ; $7d86: $7f
	rst SubAFromBC                                          ; $7d87: $e7
	jp $399b                                         ; $7d88: $c3 $9b $39


	db $fd                                           ; $7d8b: $fd
	db $fc                                           ; $7d8c: $fc
	inc e                                            ; $7d8d: $1c
	ld h, a                                          ; $7d8e: $67
	inc c                                            ; $7d8f: $0c
	ld bc, $0000                                     ; $7d90: $01 $00 $00
	push bc                                          ; $7d93: $c5
	inc [hl]                                         ; $7d94: $34
	inc c                                            ; $7d95: $0c
	pop hl                                           ; $7d96: $e1
	db $fc                                           ; $7d97: $fc
	rra                                              ; $7d98: $1f
	rlca                                             ; $7d99: $07
	ld a, e                                          ; $7d9a: $7b
	or $fe                                           ; $7d9b: $f6 $fe

jr_062_7d9d:
	sub h                                            ; $7d9d: $94
	inc b                                            ; $7d9e: $04
	ld b, d                                          ; $7d9f: $42
	ld h, d                                          ; $7da0: $62
	sub b                                            ; $7da1: $90
	sub b                                            ; $7da2: $90
	adc b                                            ; $7da3: $88
	ld c, b                                          ; $7da4: $48
	ld b, h                                          ; $7da5: $44
	ld b, [hl]                                       ; $7da6: $46
	ld h, [hl]                                       ; $7da7: $66
	ld h, a                                          ; $7da8: $67
	ldh [$c1], a                                     ; $7da9: $e0 $c1
	add a                                            ; $7dab: $87
	adc l                                            ; $7dac: $8d
	jp Jump_062_59e1                                 ; $7dad: $c3 $e1 $59


	db $ed                                           ; $7db0: $ed
	and a                                            ; $7db1: $a7
	pop hl                                           ; $7db2: $e1
	ld a, [hl]                                       ; $7db3: $7e
	ld bc, $6181                                     ; $7db4: $01 $81 $61
	ld [hl], c                                       ; $7db7: $71
	cp c                                             ; $7db8: $b9
	cp a                                             ; $7db9: $bf
	cp a                                             ; $7dba: $bf
	rst SubAFromDE                                          ; $7dbb: $df
	pop de                                           ; $7dbc: $d1
	sbc $39                                          ; $7dbd: $de $39
	jr c, jr_062_7d69                                ; $7dbf: $38 $a8

	adc b                                            ; $7dc1: $88
	call c, $de92                                    ; $7dc2: $dc $92 $de
	rst SubAFromDE                                          ; $7dc5: $df
	sbc d                                            ; $7dc6: $9a
	rst AddAOntoHL                                          ; $7dc7: $ef
	db $ec                                           ; $7dc8: $ec
	xor $e7                                          ; $7dc9: $ee $e7
	rst FarCall                                          ; $7dcb: $f7
	xor $9a                                          ; $7dcc: $ee $9a
	ret nz                                           ; $7dce: $c0

	jr nc, jr_062_7d9d                               ; $7dcf: $30 $cc

	ldh a, [c]                                       ; $7dd1: $f2
	ld a, l                                          ; $7dd2: $7d
	ld [hl], a                                       ; $7dd3: $77
	ld hl, sp-$80                                    ; $7dd4: $f8 $80
	ldh a, [$fc]                                     ; $7dd6: $f0 $fc
	ld a, $ef                                        ; $7dd8: $3e $ef
	add a                                            ; $7dda: $87
	scf                                              ; $7ddb: $37
	sub e                                            ; $7ddc: $93
	sub e                                            ; $7ddd: $93
	di                                               ; $7dde: $f3
	cp c                                             ; $7ddf: $b9
	ld l, h                                          ; $7de0: $6c
	rra                                              ; $7de1: $1f
	add d                                            ; $7de2: $82
	dec [hl]                                         ; $7de3: $35
	sub d                                            ; $7de4: $92
	sub e                                            ; $7de5: $93
	ld [hl], d                                       ; $7de6: $72
	sbc c                                            ; $7de7: $99
	db $e4                                           ; $7de8: $e4
	ei                                               ; $7de9: $fb
	rrca                                             ; $7dea: $0f
	rlca                                             ; $7deb: $07
	inc bc                                           ; $7dec: $03
	ld bc, $1021                                     ; $7ded: $01 $21 $10
	ld [$7d0c], sp                                   ; $7df0: $08 $0c $7d
	ld a, $9f                                        ; $7df3: $3e $9f
	sbc d                                            ; $7df5: $9a
	ld l, a                                          ; $7df6: $6f
	scf                                              ; $7df7: $37
	ccf                                              ; $7df8: $3f
	rra                                              ; $7df9: $1f
	rra                                              ; $7dfa: $1f
	ldh [$c1], a                                     ; $7dfb: $e0 $c1
	add l                                            ; $7dfd: $85
	sbc a                                            ; $7dfe: $9f
	ccf                                              ; $7dff: $3f
	rra                                              ; $7e00: $1f
	dec a                                            ; $7e01: $3d
	jr c, jr_062_7e76                                ; $7e02: $38 $72

	db $e4                                           ; $7e04: $e4
	adc l                                            ; $7e05: $8d
	ld c, $0e                                        ; $7e06: $0e $0e
	rrca                                             ; $7e08: $0f
	rra                                              ; $7e09: $1f
	rra                                              ; $7e0a: $1f
	dec a                                            ; $7e0b: $3d
	ld a, e                                          ; $7e0c: $7b
	di                                               ; $7e0d: $f3
	ei                                               ; $7e0e: $fb
	ld [hl], l                                       ; $7e0f: $75
	sub c                                            ; $7e10: $91
	ld l, e                                          ; $7e11: $6b
	dec e                                            ; $7e12: $1d
	dec e                                            ; $7e13: $1d
	ld a, $1f                                        ; $7e14: $3e $1f
	rst JumpTable                                          ; $7e16: $c7
	rst AddAOntoHL                                          ; $7e17: $ef
	sbc $ff                                          ; $7e18: $de $ff
	add b                                            ; $7e1a: $80
	daa                                              ; $7e1b: $27
	inc bc                                           ; $7e1c: $03
	and e                                            ; $7e1d: $a3
	add b                                            ; $7e1e: $80
	ret nz                                           ; $7e1f: $c0

	ldh [$d0], a                                     ; $7e20: $e0 $d0
	ldh a, [$e8]                                     ; $7e22: $f0 $e8
	ld hl, sp-$08                                    ; $7e24: $f8 $f8
	add b                                            ; $7e26: $80
	ld b, b                                          ; $7e27: $40
	and b                                            ; $7e28: $a0
	ldh a, [$30]                                     ; $7e29: $f0 $30
	cp b                                             ; $7e2b: $b8
	cp b                                             ; $7e2c: $b8

jr_062_7e2d:
	xor b                                            ; $7e2d: $a8
	db $fc                                           ; $7e2e: $fc
	ld hl, sp-$06                                    ; $7e2f: $f8 $fa
	ld hl, sp-$07                                    ; $7e31: $f8 $f9
	db $fd                                           ; $7e33: $fd
	db $fc                                           ; $7e34: $fc
	halt                                             ; $7e35: $76
	cp h                                             ; $7e36: $bc
	adc h                                            ; $7e37: $8c
	adc $ce                                          ; $7e38: $ce $ce
	sub e                                            ; $7e3a: $93
	rst GetHLinHL                                          ; $7e3b: $cf
	rst SubAFromDE                                          ; $7e3c: $df
	rst SubAFromDE                                          ; $7e3d: $df
	rst $38                                          ; $7e3e: $ff
	halt                                             ; $7e3f: $76
	dec a                                            ; $7e40: $3d
	dec [hl]                                         ; $7e41: $35
	ld [hl], $3a                                     ; $7e42: $36 $3a
	ld l, d                                          ; $7e44: $6a
	ld l, d                                          ; $7e45: $6a
	push de                                          ; $7e46: $d5
	reti                                             ; $7e47: $d9


	rst $38                                          ; $7e48: $ff
	sbc e                                            ; $7e49: $9b
	push de                                          ; $7e4a: $d5
	push af                                          ; $7e4b: $f5
	xor l                                            ; $7e4c: $ad
	xor d                                            ; $7e4d: $aa
	sbc $2a                                          ; $7e4e: $de $2a
	sbc [hl]                                         ; $7e50: $9e
	jr z, jr_062_7e2d                                ; $7e51: $28 $da

	rst $38                                          ; $7e53: $ff
	adc l                                            ; $7e54: $8d
	ld a, a                                          ; $7e55: $7f
	jr z, jr_062_7e90                                ; $7e56: $28 $38

	inc a                                            ; $7e58: $3c
	ld a, $27                                        ; $7e59: $3e $27
	cpl                                              ; $7e5b: $2f
	ccf                                              ; $7e5c: $3f
	ld a, $7f                                        ; $7e5d: $3e $7f
	ld a, a                                          ; $7e5f: $7f
	ld l, a                                          ; $7e60: $6f
	daa                                              ; $7e61: $27
	dec a                                            ; $7e62: $3d
	jr c, jr_062_7e96                                ; $7e63: $38 $31

	dec hl                                           ; $7e65: $2b
	ld a, $de                                        ; $7e66: $3e $de
	inc l                                            ; $7e68: $2c
	sbc [hl]                                         ; $7e69: $9e
	ld a, l                                          ; $7e6a: $7d
	sbc $7f                                          ; $7e6b: $de $7f
	add [hl]                                         ; $7e6d: $86
	dec sp                                           ; $7e6e: $3b
	ld a, e                                          ; $7e6f: $7b
	ld a, c                                          ; $7e70: $79
	ld a, b                                          ; $7e71: $78
	ld e, c                                          ; $7e72: $59
	ld l, e                                          ; $7e73: $6b
	sbc $cd                                          ; $7e74: $de $cd

jr_062_7e76:
	call c, $fbbe                                    ; $7e76: $dc $be $fb
	rst FarCall                                          ; $7e79: $f7
	xor $d6                                          ; $7e7a: $ee $d6
	ld h, l                                          ; $7e7c: $65
	rst JumpTable                                          ; $7e7d: $c7
	rst FarCall                                          ; $7e7e: $f7
	rst SubAFromBC                                          ; $7e7f: $e7

jr_062_7e80:
	rst GetHLinHL                                          ; $7e80: $cf
	sbc a                                            ; $7e81: $9f
	cp a                                             ; $7e82: $bf
	rst $38                                          ; $7e83: $ff
	ld a, a                                          ; $7e84: $7f
	ld a, [hl]                                       ; $7e85: $7e
	rst SubAFromBC                                          ; $7e86: $e7
	ld a, c                                          ; $7e87: $79
	add $93                                          ; $7e88: $c6 $93
	ld e, a                                          ; $7e8a: $5f
	ld a, [hl]                                       ; $7e8b: $7e
	ld a, [hl]                                       ; $7e8c: $7e
	ld a, a                                          ; $7e8d: $7f
	ld a, h                                          ; $7e8e: $7c
	cp h                                             ; $7e8f: $bc

jr_062_7e90:
	cp b                                             ; $7e90: $b8
	cp c                                             ; $7e91: $b9
	reti                                             ; $7e92: $d9


	db $db                                           ; $7e93: $db
	rst SubAFromDE                                          ; $7e94: $df
	rst AddAOntoHL                                          ; $7e95: $ef

jr_062_7e96:
	db $eb                                           ; $7e96: $eb
	rst SubAFromDE                                          ; $7e97: $df
	add b                                            ; $7e98: $80
	ld h, a                                          ; $7e99: $67
	ld hl, sp-$7b                                    ; $7e9a: $f8 $85
	ld b, b                                          ; $7e9c: $40
	ret nz                                           ; $7e9d: $c0

	jr nz, jr_062_7e80                               ; $7e9e: $20 $e0

	ldh a, [$e8]                                     ; $7ea0: $f0 $e8
	ld [hl], h                                       ; $7ea2: $74
	call nc, Call_062_40c0                           ; $7ea3: $d4 $c0 $40
	ldh [$a0], a                                     ; $7ea6: $e0 $a0
	ret nc                                           ; $7ea8: $d0

	ld hl, sp-$04                                    ; $7ea9: $f8 $fc
	ld a, h                                          ; $7eab: $7c
	jp c, Jump_062_6baa                              ; $7eac: $da $aa $6b

	push af                                          ; $7eaf: $f5
	push de                                          ; $7eb0: $d5
	or l                                             ; $7eb1: $b5
	or a                                             ; $7eb2: $b7
	or l                                             ; $7eb3: $b5
	ld a, [hl]                                       ; $7eb4: $7e
	ld a, [hl]                                       ; $7eb5: $7e

jr_062_7eb6:
	sbc $bf                                          ; $7eb6: $de $bf
	rst SubAFromDE                                          ; $7eb8: $df
	rst SubAFromDE                                          ; $7eb9: $df
	sub h                                            ; $7eba: $94
	db $dd                                           ; $7ebb: $dd
	sub l                                            ; $7ebc: $95
	sub l                                            ; $7ebd: $95
	sub h                                            ; $7ebe: $94
	sub h                                            ; $7ebf: $94
	or h                                             ; $7ec0: $b4
	db $f4                                           ; $7ec1: $f4
	db $fc                                           ; $7ec2: $fc
	ld a, h                                          ; $7ec3: $7c
	db $fd                                           ; $7ec4: $fd
	db $fd                                           ; $7ec5: $fd
	db $dd                                           ; $7ec6: $dd
	db $fc                                           ; $7ec7: $fc
	sbc d                                            ; $7ec8: $9a
	ld a, h                                          ; $7ec9: $7c
	call c, $4eee                                    ; $7eca: $dc $ee $4e
	rra                                              ; $7ecd: $1f
	ld a, e                                          ; $7ece: $7b
	sbc b                                            ; $7ecf: $98
	rst SubAFromDE                                          ; $7ed0: $df
	cp $8f                                           ; $7ed1: $fe $8f
	cp d                                             ; $7ed3: $ba
	ld a, [$f9f9]                                    ; $7ed4: $fa $f9 $f9
	db $eb                                           ; $7ed7: $eb
	ld c, a                                          ; $7ed8: $4f
	rla                                              ; $7ed9: $17
	xor e                                            ; $7eda: $ab
	ld d, h                                          ; $7edb: $54
	jr z, jr_062_7eb6                                ; $7edc: $28 $d8

	jr nz, jr_062_7f58                               ; $7ede: $20 $78

	add l                                            ; $7ee0: $85
	db $e3                                           ; $7ee1: $e3
	push bc                                          ; $7ee2: $c5
	ld a, c                                          ; $7ee3: $79
	cpl                                              ; $7ee4: $2f
	sub c                                            ; $7ee5: $91
	db $d3                                           ; $7ee6: $d3
	cp c                                             ; $7ee7: $b9
	ld a, l                                          ; $7ee8: $7d
	rst $38                                          ; $7ee9: $ff
	ld a, a                                          ; $7eea: $7f
	ret                                              ; $7eeb: $c9


	sub d                                            ; $7eec: $92
	or d                                             ; $7eed: $b2
	ld h, h                                          ; $7eee: $64
	ld b, l                                          ; $7eef: $45
	jp z, $a994                                      ; $7ef0: $ca $94 $a9

	ld a, a                                          ; $7ef3: $7f
	jp c, $2fff                                      ; $7ef4: $da $ff $2f

	add d                                            ; $7ef7: $82
	ld l, a                                          ; $7ef8: $6f
	add b                                            ; $7ef9: $80
	db $dd                                           ; $7efa: $dd
	add b                                            ; $7efb: $80
	sbc $40                                          ; $7efc: $de $40
	sbc $c0                                          ; $7efe: $de $c0
	rst SubAFromDE                                          ; $7f00: $df
	ldh [$dc], a                                     ; $7f01: $e0 $dc
	ret nz                                           ; $7f03: $c0

	ld a, [hl]                                       ; $7f04: $7e
	call c, Call_062_609c                            ; $7f05: $dc $9c $60
	ldh [$e0], a                                     ; $7f08: $e0 $e0
	sbc $f0                                          ; $7f0a: $de $f0
	sub h                                            ; $7f0c: $94
	cp b                                             ; $7f0d: $b8
	ld a, b                                          ; $7f0e: $78
	add sp, $20                                      ; $7f0f: $e8 $20
	jr nz, jr_062_7f23                               ; $7f11: $20 $10

Jump_062_7f13:
	sub b                                            ; $7f13: $90
	db $10                                           ; $7f14: $10
	ld c, b                                          ; $7f15: $48
	ret c                                            ; $7f16: $d8

	cp b                                             ; $7f17: $b8
	inc h                                            ; $7f18: $24
	nop                                              ; $7f19: $00
	sbc $99                                          ; $7f1a: $de $99
	sub h                                            ; $7f1c: $94
	xor $cc                                          ; $7f1d: $ee $cc
	sub c                                            ; $7f1f: $91
	adc b                                            ; $7f20: $88
	adc b                                            ; $7f21: $88
	ld h, [hl]                                       ; $7f22: $66

jr_062_7f23:
	call z, $8811                                    ; $7f23: $cc $11 $88
	adc b                                            ; $7f26: $88
	ld [hl+], a                                      ; $7f27: $22
	ld l, a                                          ; $7f28: $6f
	ei                                               ; $7f29: $fb
	sbc e                                            ; $7f2a: $9b
	ld [hl+], a                                      ; $7f2b: $22
	adc b                                            ; $7f2c: $88
	adc b                                            ; $7f2d: $88
	ld b, h                                          ; $7f2e: $44
	ld [hl], e                                       ; $7f2f: $73
	ei                                               ; $7f30: $fb
	sub l                                            ; $7f31: $95
	xor d                                            ; $7f32: $aa
	ld [hl+], a                                      ; $7f33: $22
	ld [hl+], a                                      ; $7f34: $22
	ld b, h                                          ; $7f35: $44
	sbc c                                            ; $7f36: $99
	sbc c                                            ; $7f37: $99
	xor d                                            ; $7f38: $aa
	ld b, h                                          ; $7f39: $44
	xor d                                            ; $7f3a: $aa
	xor d                                            ; $7f3b: $aa
	rlc c                                            ; $7f3c: $cb $01
	sbc b                                            ; $7f3e: $98
	ld d, l                                          ; $7f3f: $55
	cp e                                             ; $7f40: $bb
	ld d, l                                          ; $7f41: $55
	cp e                                             ; $7f42: $bb
	ld de, $93ff                                     ; $7f43: $11 $ff $93
	ld [hl], e                                       ; $7f46: $73
	cp $93                                           ; $7f47: $fe $93
	ld d, e                                          ; $7f49: $53
	rst $38                                          ; $7f4a: $ff
	ld c, e                                          ; $7f4b: $4b
	cp $ae                                           ; $7f4c: $fe $ae
	cp $f7                                           ; $7f4e: $fe $f7
	cp $5f                                           ; $7f50: $fe $5f
	cp $5b                                           ; $7f52: $fe $5b
	rst $38                                          ; $7f54: $ff
	ld [hl], a                                       ; $7f55: $77
	cp $97                                           ; $7f56: $fe $97

jr_062_7f58:
	ld e, d                                          ; $7f58: $5a
	rst $38                                          ; $7f59: $ff
	ld e, b                                          ; $7f5a: $58
	rst $38                                          ; $7f5b: $ff
	ret c                                            ; $7f5c: $d8

	rst $38                                          ; $7f5d: $ff
	ret c                                            ; $7f5e: $d8

	db $fd                                           ; $7f5f: $fd
	ld a, e                                          ; $7f60: $7b
	cp $80                                           ; $7f61: $fe $80
	db $dd                                           ; $7f63: $dd
	ld d, h                                          ; $7f64: $54
	db $dd                                           ; $7f65: $dd
	ld d, h                                          ; $7f66: $54
	call c, $dc54                                    ; $7f67: $dc $54 $dc
	ld b, h                                          ; $7f6a: $44
	call c, $fd44                                    ; $7f6b: $dc $44 $fd
	ld b, h                                          ; $7f6e: $44
	db $fd                                           ; $7f6f: $fd
	ld c, h                                          ; $7f70: $4c
	rst $38                                          ; $7f71: $ff
	ld c, [hl]                                       ; $7f72: $4e
	cp $4e                                           ; $7f73: $fe $4e
	cp $2e                                           ; $7f75: $fe $2e
	rst $38                                          ; $7f77: $ff
	cp h                                             ; $7f78: $bc
	rst $38                                          ; $7f79: $ff
	db $fd                                           ; $7f7a: $fd
	rst SubAFromBC                                          ; $7f7b: $e7
	ld d, d                                          ; $7f7c: $52
	cp a                                             ; $7f7d: $bf
	inc de                                           ; $7f7e: $13
	rst $38                                          ; $7f7f: $ff
	dec sp                                           ; $7f80: $3b
	rst AddAOntoHL                                          ; $7f81: $ef
	add b                                            ; $7f82: $80
	dec sp                                           ; $7f83: $3b
	xor $3b                                          ; $7f84: $ee $3b
	xor $7f                                          ; $7f86: $ee $7f
	rst SubAFromDE                                          ; $7f88: $df
	ld a, a                                          ; $7f89: $7f
	and $ff                                          ; $7f8a: $e6 $ff
	adc [hl]                                         ; $7f8c: $8e
	rst FarCall                                          ; $7f8d: $f7
	inc sp                                           ; $7f8e: $33
	rst SubAFromBC                                          ; $7f8f: $e7
	rst FarCall                                          ; $7f90: $f7
	ld a, a                                          ; $7f91: $7f
	ld e, [hl]                                       ; $7f92: $5e
	add hl, de                                       ; $7f93: $19
	ld d, $92                                        ; $7f94: $16 $92
	ld a, [bc]                                       ; $7f96: $0a
	inc c                                            ; $7f97: $0c
	adc b                                            ; $7f98: $88
	rst $38                                          ; $7f99: $ff
	add b                                            ; $7f9a: $80
	sbc [hl]                                         ; $7f9b: $9e
	ret nz                                           ; $7f9c: $c0

	ld h, b                                          ; $7f9d: $60
	ret nz                                           ; $7f9e: $c0

	ld b, b                                          ; $7f9f: $40
	ldh [$f0], a                                     ; $7fa0: $e0 $f0
	add b                                            ; $7fa2: $80
	ld h, b                                          ; $7fa3: $60
	jr c, @+$72                                      ; $7fa4: $38 $70

	inc a                                            ; $7fa6: $3c
	ld a, b                                          ; $7fa7: $78
	ld a, h                                          ; $7fa8: $7c
	ld a, $57                                        ; $7fa9: $3e $57
	ccf                                              ; $7fab: $3f
	ld d, e                                          ; $7fac: $53
	ccf                                              ; $7fad: $3f
	sub e                                            ; $7fae: $93
	ccf                                              ; $7faf: $3f
	or a                                             ; $7fb0: $b7
	dec de                                           ; $7fb1: $1b
	or l                                             ; $7fb2: $b5
	dec de                                           ; $7fb3: $1b
	ld e, l                                          ; $7fb4: $5d
	sbc e                                            ; $7fb5: $9b
	ld c, e                                          ; $7fb6: $4b
	sbc l                                            ; $7fb7: $9d
	xor d                                            ; $7fb8: $aa
	ld e, l                                          ; $7fb9: $5d
	xor l                                            ; $7fba: $ad
	ld e, [hl]                                       ; $7fbb: $5e
	dec c                                            ; $7fbc: $0d
	cp $7a                                           ; $7fbd: $fe $7a
	rst SubAFromHL                                          ; $7fbf: $d7
	ld [hl], d                                       ; $7fc0: $72
	rst SubAFromDE                                          ; $7fc1: $df
	sub a                                            ; $7fc2: $97
	ld [hl], e                                       ; $7fc3: $73
	rst SubAFromDE                                          ; $7fc4: $df
	ei                                               ; $7fc5: $fb
	adc $fb                                          ; $7fc6: $ce $fb
	adc $ff                                          ; $7fc8: $ce $ff
	ld b, [hl]                                       ; $7fca: $46
	ld a, e                                          ; $7fcb: $7b
	cp $9b                                           ; $7fcc: $fe $9b
	ld [bc], a                                       ; $7fce: $02
	rst $38                                          ; $7fcf: $ff
	ld bc, $bcff                                     ; $7fd0: $01 $ff $bc
	ld h, a                                          ; $7fd3: $67
	add hl, bc                                       ; $7fd4: $09
	inc c                                            ; $7fd5: $0c
	ld e, $1e                                        ; $7fd6: $1e $1e
	adc h                                            ; $7fd8: $8c
	db $10                                           ; $7fd9: $10
	inc c                                            ; $7fda: $0c
	nop                                              ; $7fdb: $00
	db $ed                                           ; $7fdc: $ed
	ld d, e                                          ; $7fdd: $53
	ld [hl], l                                       ; $7fde: $75
	db $db                                           ; $7fdf: $db
	jr c, @-$0f                                      ; $7fe0: $38 $ef

	cp h                                             ; $7fe2: $bc
	rst SubAFromBC                                          ; $7fe3: $e7
	sbc $73                                          ; $7fe4: $de $73
	rst $38                                          ; $7fe6: $ff
	ccf                                              ; $7fe7: $3f
	rst $38                                          ; $7fe8: $ff
	add hl, bc                                       ; $7fe9: $09
	rst $38                                          ; $7fea: $ff
	inc e                                            ; $7feb: $1c
	ld a, e                                          ; $7fec: $7b
	and b                                            ; $7fed: $a0
	sub l                                            ; $7fee: $95
	scf                                              ; $7fef: $37
	rst SubAFromDE                                          ; $7ff0: $df
	ld e, $98                                        ; $7ff1: $1e $98
	ld d, $12                                        ; $7ff3: $16 $12
	ld a, [bc]                                       ; $7ff5: $0a
	dec c                                            ; $7ff6: $0d
	ld [$bd3f], sp                                   ; $7ff7: $08 $3f $bd
	rrca                                             ; $7ffa: $0f
	ld bc, $0603                                     ; $7ffb: $01 $03 $06
	add b                                            ; $7ffe: $80
	db $01                                           ; $7fff: $01
