; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

	jp nc, $e902                                     ; $4000: $d2 $02 $e9

	rst SubAFromDE                                          ; $4003: $df
	inc bc                                           ; $4004: $03
	rst FarCall                                          ; $4005: $f7
	rst SubAFromDE                                          ; $4006: $df
	ld bc, $fd7f                                     ; $4007: $01 $7f $fd
	adc e                                            ; $400a: $8b
	ld [bc], a                                       ; $400b: $02
	inc bc                                           ; $400c: $03
	inc bc                                           ; $400d: $03
	ld [bc], a                                       ; $400e: $02
	dec b                                            ; $400f: $05
	ld b, $04                                        ; $4010: $06 $04
	rlca                                             ; $4012: $07
	ld b, $05                                        ; $4013: $06 $05
	ld a, [bc]                                       ; $4015: $0a
	dec c                                            ; $4016: $0d
	dec bc                                           ; $4017: $0b
	dec c                                            ; $4018: $0d
	add hl, bc                                       ; $4019: $09
	rrca                                             ; $401a: $0f
	add hl, bc                                       ; $401b: $09
	rrca                                             ; $401c: $0f
	ld [$770e], sp                                   ; $401d: $08 $0e $77
	cp $f4                                           ; $4020: $fe $f4
	add b                                            ; $4022: $80
	ld bc, $0203                                     ; $4023: $01 $03 $02
	ld b, $05                                        ; $4026: $06 $05
	dec c                                            ; $4028: $0d
	ld a, [bc]                                       ; $4029: $0a
	add hl, de                                       ; $402a: $19
	ld d, $63                                        ; $402b: $16 $63
	ld a, h                                          ; $402d: $7c
	add d                                            ; $402e: $82
	db $fd                                           ; $402f: $fd
	ld [hl], $39                                     ; $4030: $36 $39
	ld h, $39                                        ; $4032: $26 $39
	ld d, $29                                        ; $4034: $16 $29
	ld e, [hl]                                       ; $4036: $5e
	ld l, c                                          ; $4037: $69
	ld e, [hl]                                       ; $4038: $5e
	ld l, c                                          ; $4039: $69
	ld c, [hl]                                       ; $403a: $4e
	ld a, c                                          ; $403b: $79
	ld c, d                                          ; $403c: $4a
	ld a, l                                          ; $403d: $7d
	ld l, d                                          ; $403e: $6a
	ld a, l                                          ; $403f: $7d
	inc h                                            ; $4040: $24
	scf                                              ; $4041: $37
	ld a, a                                          ; $4042: $7f
	cp $99                                           ; $4043: $fe $99
	ld [de], a                                       ; $4045: $12
	inc de                                           ; $4046: $13
	ld [de], a                                       ; $4047: $12
	inc de                                           ; $4048: $13
	add hl, bc                                       ; $4049: $09
	add hl, bc                                       ; $404a: $09
	ld d, e                                          ; $404b: $53
	call $01d6                                       ; $404c: $cd $d6 $01
	ld a, a                                          ; $404f: $7f
	sbc h                                            ; $4050: $9c
	ld a, a                                          ; $4051: $7f
	cp $80                                           ; $4052: $fe $80
	dec b                                            ; $4054: $05
	rlca                                             ; $4055: $07
	dec b                                            ; $4056: $05
	rlca                                             ; $4057: $07
	ld a, [bc]                                       ; $4058: $0a
	rrca                                             ; $4059: $0f
	dec b                                            ; $405a: $05
	ld c, $17                                        ; $405b: $0e $17
	dec e                                            ; $405d: $1d
	dec hl                                           ; $405e: $2b
	dec a                                            ; $405f: $3d
	ld e, $2b                                        ; $4060: $1e $2b
	ld a, [hl]                                       ; $4062: $7e
	ld d, e                                          ; $4063: $53
	inc d                                            ; $4064: $14
	ld a, a                                          ; $4065: $7f
	db $f4                                           ; $4066: $f4
	xor a                                            ; $4067: $af
	sub l                                            ; $4068: $95
	ld l, [hl]                                       ; $4069: $6e
	xor c                                            ; $406a: $a9
	ld e, [hl]                                       ; $406b: $5e
	jp hl                                            ; $406c: $e9


	rra                                              ; $406d: $1f
	pop af                                           ; $406e: $f1
	rra                                              ; $406f: $1f
	ld d, l                                          ; $4070: $55
	cp e                                             ; $4071: $bb
	ld d, l                                          ; $4072: $55

Call_061_4073:
Jump_061_4073:
	sbc l                                            ; $4073: $9d
	cp e                                             ; $4074: $bb
	push de                                          ; $4075: $d5
	ld a, e                                          ; $4076: $7b
	cp $93                                           ; $4077: $fe $93
	pop hl                                           ; $4079: $e1
	xor a                                            ; $407a: $af
	ld l, c                                          ; $407b: $69
	cpl                                              ; $407c: $2f
	jr z, jr_061_40ee                                ; $407d: $28 $6f

	jr z, jr_061_40f0                                ; $407f: $28 $6f

	inc h                                            ; $4081: $24
	ld h, a                                          ; $4082: $67
	inc h                                            ; $4083: $24
	ld h, a                                          ; $4084: $67
	db $e3                                           ; $4085: $e3
	ld a, e                                          ; $4086: $7b
	or b                                             ; $4087: $b0
	add e                                            ; $4088: $83
	ld b, $02                                        ; $4089: $06 $02
	dec c                                            ; $408b: $0d
	rla                                              ; $408c: $17
	dec de                                           ; $408d: $1b
	cpl                                              ; $408e: $2f
	scf                                              ; $408f: $37
	ld [hl], e                                       ; $4090: $73
	ld a, h                                          ; $4091: $7c
	cp a                                             ; $4092: $bf
	ret nz                                           ; $4093: $c0

	rst $38                                          ; $4094: $ff
	nop                                              ; $4095: $00
	rst $38                                          ; $4096: $ff
	nop                                              ; $4097: $00
	or $00                                           ; $4098: $f6 $00
	xor $00                                          ; $409a: $ee $00
	db $dd                                           ; $409c: $dd
	nop                                              ; $409d: $00
	sbc l                                            ; $409e: $9d
	nop                                              ; $409f: $00
	sbc c                                            ; $40a0: $99
	nop                                              ; $40a1: $00
	add hl, de                                       ; $40a2: $19
	nop                                              ; $40a3: $00
	dec sp                                           ; $40a4: $3b
	ld a, e                                          ; $40a5: $7b
	cp $e0                                           ; $40a6: $fe $e0
	pop bc                                           ; $40a8: $c1
	add b                                            ; $40a9: $80
	adc e                                            ; $40aa: $8b
	rst $38                                          ; $40ab: $ff
	adc l                                            ; $40ac: $8d
	rst $38                                          ; $40ad: $ff
	adc e                                            ; $40ae: $8b
	rst $38                                          ; $40af: $ff
	sbc l                                            ; $40b0: $9d
	rst $38                                          ; $40b1: $ff
	add hl, de                                       ; $40b2: $19
	rst $38                                          ; $40b3: $ff
	inc de                                           ; $40b4: $13
	rst $38                                          ; $40b5: $ff
	rla                                              ; $40b6: $17
	db $fd                                           ; $40b7: $fd
	dec l                                            ; $40b8: $2d
	ld sp, hl                                        ; $40b9: $f9
	ld a, c                                          ; $40ba: $79
	pop af                                           ; $40bb: $f1
	ld [hl], e                                       ; $40bc: $73
	ldh [$e3], a                                     ; $40bd: $e0 $e3
	ret nz                                           ; $40bf: $c0

	pop hl                                           ; $40c0: $e1
	add b                                            ; $40c1: $80
	ldh a, [$80]                                     ; $40c2: $f0 $80
	db $fc                                           ; $40c4: $fc
	ret nz                                           ; $40c5: $c0

	sbc a                                            ; $40c6: $9f
	ldh a, [hDisp1_LCDC]                                     ; $40c7: $f0 $8f
	sbc [hl]                                         ; $40c9: $9e
	db $fc                                           ; $40ca: $fc
	jp hl                                            ; $40cb: $e9


	rst SubAFromDE                                          ; $40cc: $df
	rlca                                             ; $40cd: $07
	sub b                                            ; $40ce: $90
	ld a, [hl-]                                      ; $40cf: $3a
	dec a                                            ; $40d0: $3d
	cp h                                             ; $40d1: $bc
	jp $07fb                                         ; $40d2: $c3 $fb $07


	ldh [$27], a                                     ; $40d5: $e0 $27
	nop                                              ; $40d7: $00
	cp b                                             ; $40d8: $b8
	inc bc                                           ; $40d9: $03
	ld l, a                                          ; $40da: $6f
	rst $38                                          ; $40db: $ff
	ldh [$fb], a                                     ; $40dc: $e0 $fb
	ld a, e                                          ; $40de: $7b
	ld h, h                                          ; $40df: $64
	sbc b                                            ; $40e0: $98
	rst AddAOntoHL                                          ; $40e1: $ef
	nop                                              ; $40e2: $00
	ld l, e                                          ; $40e3: $6b
	nop                                              ; $40e4: $00
	jp c, $9a00                                      ; $40e5: $da $00 $9a

	ld l, e                                          ; $40e8: $6b
	cp $99                                           ; $40e9: $fe $99

jr_061_40eb:
	sbc e                                            ; $40eb: $9b
	add d                                            ; $40ec: $82
	sbc e                                            ; $40ed: $9b

jr_061_40ee:
	adc d                                            ; $40ee: $8a
	db $db                                           ; $40ef: $db

jr_061_40f0:
	adc d                                            ; $40f0: $8a
	ldh [$c1], a                                     ; $40f1: $e0 $c1
	adc a                                            ; $40f3: $8f
	ld a, [bc]                                       ; $40f4: $0a
	jp z, $9a12                                      ; $40f5: $ca $12 $9a

	inc d                                            ; $40f8: $14
	sbc [hl]                                         ; $40f9: $9e
	dec d                                            ; $40fa: $15
	sbc l                                            ; $40fb: $9d
	dec d                                            ; $40fc: $15
	cp l                                             ; $40fd: $bd
	dec e                                            ; $40fe: $1d

Jump_061_40ff:
	cp l                                             ; $40ff: $bd
	dec a                                            ; $4100: $3d
	or a                                             ; $4101: $b7
	ld a, $a2                                        ; $4102: $3e $a2
	ld a, e                                          ; $4104: $7b
	cp $9a                                           ; $4105: $fe $9a
	ldh [c], a                                       ; $4107: $e2
	cp [hl]                                          ; $4108: $be
	db $e3                                           ; $4109: $e3
	cp a                                             ; $410a: $bf
	pop hl                                           ; $410b: $e1
	ld a, e                                          ; $410c: $7b
	cp $9a                                           ; $410d: $fe $9a
	ld h, c                                          ; $410f: $61
	cp a                                             ; $4110: $bf
	ld h, c                                          ; $4111: $61
	rst $38                                          ; $4112: $ff
	ld h, c                                          ; $4113: $61
	ld d, d                                          ; $4114: $52
	jp nc, $029e                                     ; $4115: $d2 $9e $02

	reti                                             ; $4118: $d9


	ld bc, $7ddf                                     ; $4119: $01 $df $7d
	sub d                                            ; $411c: $92
	sub e                                            ; $411d: $93
	rst $38                                          ; $411e: $ff
	ld l, l                                          ; $411f: $6d
	rst SubAFromDE                                          ; $4120: $df
	scf                                              ; $4121: $37
	rst AddAOntoHL                                          ; $4122: $ef
	rst $38                                          ; $4123: $ff
	rst $38                                          ; $4124: $ff
	nop                                              ; $4125: $00
	adc a                                            ; $4126: $8f
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	cp $7b                                           ; $4129: $fe $7b
	ld sp, hl                                        ; $412b: $f9
	ld [hl], a                                       ; $412c: $77
	cp $9e                                           ; $412d: $fe $9e
	rst SubAFromDE                                          ; $412f: $df
	ld a, d                                          ; $4130: $7a
	add $7f                                          ; $4131: $c6 $7f
	db $fc                                           ; $4133: $fc
	ld a, [hl]                                       ; $4134: $7e
	ret nz                                           ; $4135: $c0

	ld a, a                                          ; $4136: $7f
	cp $95                                           ; $4137: $fe $95
	ld h, [hl]                                       ; $4139: $66
	nop                                              ; $413a: $00
	ld h, a                                          ; $413b: $67
	nop                                              ; $413c: $00
	ld [hl], a                                       ; $413d: $77
	jr nz, @+$75                                     ; $413e: $20 $73

	jr nz, @+$7d                                     ; $4140: $20 $7b

	ld de, $c1e0                                     ; $4142: $11 $e0 $c1
	add b                                            ; $4145: $80
	or l                                             ; $4146: $b5
	rst $38                                          ; $4147: $ff
	xor c                                            ; $4148: $a9
	rst $38                                          ; $4149: $ff
	xor b                                            ; $414a: $a8
	cp $30                                           ; $414b: $fe $30
	ld a, [$fa70]                                    ; $414d: $fa $70 $fa
	ld h, b                                          ; $4150: $60
	ld sp, hl                                        ; $4151: $f9
	ld h, b                                          ; $4152: $60
	xor $a0                                          ; $4153: $ee $a0
	or $a1                                           ; $4155: $f6 $a1
	pop hl                                           ; $4157: $e1
	db $e3                                           ; $4158: $e3
	ldh [c], a                                       ; $4159: $e2
	and a                                            ; $415a: $a7
	db $e4                                           ; $415b: $e4
	cp a                                             ; $415c: $bf
	cp b                                             ; $415d: $b8
	sbc a                                            ; $415e: $9f
	or b                                             ; $415f: $b0
	ccf                                              ; $4160: $3f
	ldh [$60], a                                     ; $4161: $e0 $60
	ret nz                                           ; $4163: $c0

	add b                                            ; $4164: $80
	or $df                                           ; $4165: $f6 $df
	ld b, b                                          ; $4167: $40
	rst SubAFromDE                                          ; $4168: $df
	jr nz, jr_061_40eb                               ; $4169: $20 $80

	ld d, b                                          ; $416b: $50
	ld [hl], b                                       ; $416c: $70
	ret nc                                           ; $416d: $d0

	ldh a, [$50]                                     ; $416e: $f0 $50
	ldh a, [$a0]                                     ; $4170: $f0 $a0
	ldh [$fc], a                                     ; $4172: $e0 $fc
	db $fc                                           ; $4174: $fc
	pop bc                                           ; $4175: $c1
	rst $38                                          ; $4176: $ff
	add b                                            ; $4177: $80
	rst $38                                          ; $4178: $ff
	adc $f1                                          ; $4179: $ce $f1
	di                                               ; $417b: $f3
	db $fc                                           ; $417c: $fc
	db $fc                                           ; $417d: $fc
	rlca                                             ; $417e: $07
	rst $38                                          ; $417f: $ff
	ld bc, $00ff                                     ; $4180: $01 $ff $00
	ccf                                              ; $4183: $3f
	ld hl, sp+$03                                    ; $4184: $f8 $03
	ld e, $00                                        ; $4186: $1e $00
	rlca                                             ; $4188: $07
	nop                                              ; $4189: $00
	ld a, a                                          ; $418a: $7f
	ld [hl], d                                       ; $418b: $72
	sbc b                                            ; $418c: $98
	inc c                                            ; $418d: $0c
	nop                                              ; $418e: $00
	add [hl]                                         ; $418f: $86
	nop                                              ; $4190: $00
	sub e                                            ; $4191: $93
	nop                                              ; $4192: $00
	ld c, c                                          ; $4193: $49
	ld a, e                                          ; $4194: $7b
	cp $98                                           ; $4195: $fe $98
	ld b, h                                          ; $4197: $44
	inc b                                            ; $4198: $04
	ld h, $22                                        ; $4199: $26 $22
	ld h, $22                                        ; $419b: $26 $22
	scf                                              ; $419d: $37
	ldh [$c0], a                                     ; $419e: $e0 $c0
	rst SubAFromDE                                          ; $41a0: $df
	ld bc, $0b93                                     ; $41a1: $01 $93 $0b
	inc bc                                           ; $41a4: $03
	ld e, $07                                        ; $41a5: $1e $07
	inc a                                            ; $41a7: $3c
	rrca                                             ; $41a8: $0f
	ld a, b                                          ; $41a9: $78
	rra                                              ; $41aa: $1f
	sub b                                            ; $41ab: $90

jr_061_41ac:
	ccf                                              ; $41ac: $3f
	ld h, b                                          ; $41ad: $60
	ld a, a                                          ; $41ae: $7f
	ld [hl], c                                       ; $41af: $71
	cp h                                             ; $41b0: $bc
	ld h, a                                          ; $41b1: $67
	cp $ff                                           ; $41b2: $fe $ff
	sbc [hl]                                         ; $41b4: $9e
	ld hl, sp-$18                                    ; $41b5: $f8 $e8
	rst SubAFromDE                                          ; $41b7: $df
	add b                                            ; $41b8: $80
	add b                                            ; $41b9: $80
	jr nc, jr_061_41ac                               ; $41ba: $30 $f0

	ld [$82f8], sp                                   ; $41bc: $08 $f8 $82
	ld a, [hl]                                       ; $41bf: $7e
	ld bc, $003f                                     ; $41c0: $01 $3f $00
	set 0, b                                         ; $41c3: $cb $c0
	ld h, [hl]                                       ; $41c5: $66
	ldh [$33], a                                     ; $41c6: $e0 $33
	ldh a, [rAUD2HIGH]                               ; $41c8: $f0 $19
	ld hl, sp-$74                                    ; $41ca: $f8 $8c
	inc a                                            ; $41cc: $3c
	xor $1a                                          ; $41cd: $ee $1a
	ei                                               ; $41cf: $fb
	add hl, bc                                       ; $41d0: $09
	ld a, e                                          ; $41d1: $7b
	dec b                                            ; $41d2: $05
	ld l, l                                          ; $41d3: $6d
	inc b                                            ; $41d4: $04
	dec l                                            ; $41d5: $2d
	ld [bc], a                                       ; $41d6: $02
	or [hl]                                          ; $41d7: $b6
	ld a, [bc]                                       ; $41d8: $0a
	sbc b                                            ; $41d9: $98
	cp d                                             ; $41da: $ba
	add hl, bc                                       ; $41db: $09
	rst SubAFromDE                                          ; $41dc: $df
	dec b                                            ; $41dd: $05
	ld e, a                                          ; $41de: $5f
	dec b                                            ; $41df: $05
	ld a, a                                          ; $41e0: $7f
	ldh [$c1], a                                     ; $41e1: $e0 $c1
	sbc e                                            ; $41e3: $9b
	db $fd                                           ; $41e4: $fd
	adc a                                            ; $41e5: $8f
	db $fd                                           ; $41e6: $fd

jr_061_41e7:
	rlca                                             ; $41e7: $07
	ld a, e                                          ; $41e8: $7b
	cp $9e                                           ; $41e9: $fe $9e
	inc bc                                           ; $41eb: $03
	ld [hl], a                                       ; $41ec: $77
	cp $9e                                           ; $41ed: $fe $9e
	rst $38                                          ; $41ef: $ff
	ld [hl], a                                       ; $41f0: $77
	cp $9e                                           ; $41f1: $fe $9e
	ld [bc], a                                       ; $41f3: $02
	ld l, a                                          ; $41f4: $6f
	cp $98                                           ; $41f5: $fe $98
	cp $04                                           ; $41f7: $fe $04
	cp $04                                           ; $41f9: $fe $04
	ld a, h                                          ; $41fb: $7c
	ld [$730c], sp                                   ; $41fc: $08 $0c $73
	halt                                             ; $41ff: $76
	add b                                            ; $4200: $80
	ld b, b                                          ; $4201: $40
	ret nz                                           ; $4202: $c0

	and b                                            ; $4203: $a0
	ld h, b                                          ; $4204: $60
	jr nz, jr_061_41e7                               ; $4205: $20 $e0

	db $10                                           ; $4207: $10
	ldh a, [$d0]                                     ; $4208: $f0 $d0
	ld [hl], b                                       ; $420a: $70
	xor b                                            ; $420b: $a8
	ld a, b                                          ; $420c: $78
	ret c                                            ; $420d: $d8

	jr c, @+$6e                                      ; $420e: $38 $6c

	sbc h                                            ; $4210: $9c
	db $ec                                           ; $4211: $ec
	sbc h                                            ; $4212: $9c
	or h                                             ; $4213: $b4
	call z, $ce76                                    ; $4214: $cc $76 $ce
	jp nc, $ba6e                                     ; $4217: $d2 $6e $ba

	ld h, [hl]                                       ; $421a: $66
	ld l, d                                          ; $421b: $6a
	or [hl]                                          ; $421c: $b6
	xor l                                            ; $421d: $ad
	di                                               ; $421e: $f3
	cp l                                             ; $421f: $bd
	sub l                                            ; $4220: $95
	di                                               ; $4221: $f3
	or l                                             ; $4222: $b5
	ei                                               ; $4223: $fb
	or l                                             ; $4224: $b5
	ei                                               ; $4225: $fb
	xor l                                            ; $4226: $ad
	ei                                               ; $4227: $fb
	xor e                                            ; $4228: $ab
	db $fd                                           ; $4229: $fd
	xor d                                            ; $422a: $aa
	ld a, e                                          ; $422b: $7b
	cp $98                                           ; $422c: $fe $98
	ld d, [hl]                                       ; $422e: $56
	db $fd                                           ; $422f: $fd
	ld d, h                                          ; $4230: $54
	rst $38                                          ; $4231: $ff
	ld d, l                                          ; $4232: $55
	cp $53                                           ; $4233: $fe $53
	ld a, e                                          ; $4235: $7b
	cp $8e                                           ; $4236: $fe $8e
	ld d, [hl]                                       ; $4238: $56
	ei                                               ; $4239: $fb
	ld d, [hl]                                       ; $423a: $56
	ei                                               ; $423b: $fb
	ld d, l                                          ; $423c: $55
	ei                                               ; $423d: $fb
	rst $38                                          ; $423e: $ff
	ld d, c                                          ; $423f: $51
	db $fd                                           ; $4240: $fd
	ld c, c                                          ; $4241: $49
	db $ed                                           ; $4242: $ed
	ld c, c                                          ; $4243: $49
	db $ed                                           ; $4244: $ed
	ld c, b                                          ; $4245: $48
	rst AddAOntoHL                                          ; $4246: $ef
	ld c, b                                          ; $4247: $48
	xor $77                                          ; $4248: $ee $77
	cp $90                                           ; $424a: $fe $90
	ld c, h                                          ; $424c: $4c
	cp $6c                                           ; $424d: $fe $6c
	rst FarCall                                          ; $424f: $f7
	ld h, h                                          ; $4250: $64
	rst FarCall                                          ; $4251: $f7
	inc h                                            ; $4252: $24
	rst FarCall                                          ; $4253: $f7
	inc h                                            ; $4254: $24
	rst $38                                          ; $4255: $ff
	and h                                            ; $4256: $a4
	ld a, a                                          ; $4257: $7f
	or $1f                                           ; $4258: $f6 $1f
	cp $76                                           ; $425a: $fe $76
	add e                                            ; $425c: $83
	add c                                            ; $425d: $81
	add b                                            ; $425e: $80
	ld a, a                                          ; $425f: $7f
	ret nz                                           ; $4260: $c0

	ccf                                              ; $4261: $3f
	ret nz                                           ; $4262: $c0

	ccf                                              ; $4263: $3f
	ldh [rAUD3HIGH], a                               ; $4264: $e0 $1e
	ldh [rAUD2LOW], a                                ; $4266: $e0 $18

jr_061_4268:
	ldh a, [rSB]                                     ; $4268: $f0 $01
	ldh [$03], a                                     ; $426a: $e0 $03
	pop bc                                           ; $426c: $c1
	rlca                                             ; $426d: $07
	add d                                            ; $426e: $82
	ld c, $94                                        ; $426f: $0e $94
	dec c                                            ; $4271: $0d

jr_061_4272:
	add hl, hl                                       ; $4272: $29
	dec de                                           ; $4273: $1b

jr_061_4274:
	ld e, e                                          ; $4274: $5b
	ld [hl], $3c                                     ; $4275: $36 $3c
	ld a, e                                          ; $4277: $7b
	ret nc                                           ; $4278: $d0

	ld h, d                                          ; $4279: $62
	ld h, b                                          ; $427a: $60
	jp nz, $ea46                                     ; $427b: $c2 $46 $ea

	push de                                          ; $427e: $d5
	add b                                            ; $427f: $80
	ld a, a                                          ; $4280: $7f
	ld l, b                                          ; $4281: $68
	ld h, a                                          ; $4282: $67
	cp $7e                                           ; $4283: $fe $7e
	ld l, $77                                        ; $4285: $2e $77
	cp $9e                                           ; $4287: $fe $9e
	ld b, b                                          ; $4289: $40
	ld a, e                                          ; $428a: $7b
	cp $7f                                           ; $428b: $fe $7f
	ld e, h                                          ; $428d: $5c
	sbc [hl]                                         ; $428e: $9e
	or b                                             ; $428f: $b0
	ld a, e                                          ; $4290: $7b
	cp $80                                           ; $4291: $fe $80
	sub b                                            ; $4293: $90
	ld [hl], b                                       ; $4294: $70
	ret nc                                           ; $4295: $d0

jr_061_4296:
	jr nc, jr_061_4268                               ; $4296: $30 $d0

	jr nc, jr_061_4272                               ; $4298: $30 $d8

	jr c, jr_061_4274                                ; $429a: $38 $d8

	jr c, jr_061_4296                                ; $429c: $38 $f8

	ld hl, sp+$78                                    ; $429e: $f8 $78
	ld hl, sp+$1c                                    ; $42a0: $f8 $1c
	db $fc                                           ; $42a2: $fc
	ldh a, [c]                                       ; $42a3: $f2
	ld c, $9f                                        ; $42a4: $0e $9f
	ld a, a                                          ; $42a6: $7f
	jr nz, @+$01                                     ; $42a7: $20 $ff

	ld e, [hl]                                       ; $42a9: $5e
	rst AddAOntoHL                                          ; $42aa: $ef
	pop af                                           ; $42ab: $f1
	sbc a                                            ; $42ac: $9f
	jr nz, jr_061_432b                               ; $42ad: $20 $7c

	ld b, b                                          ; $42af: $40
	ld hl, sp-$80                                    ; $42b0: $f8 $80
	sbc d                                            ; $42b2: $9a
	ldh a, [rP1]                                     ; $42b3: $f0 $00
	or b                                             ; $42b5: $b0
	nop                                              ; $42b6: $00
	db $10                                           ; $42b7: $10
	ld a, e                                          ; $42b8: $7b
	cp $9e                                           ; $42b9: $fe $9e
	ld [$fe7b], sp                                   ; $42bb: $08 $7b $fe
	ld e, e                                          ; $42be: $5b
	and h                                            ; $42bf: $a4
	ld [hl], a                                       ; $42c0: $77
	cp b                                             ; $42c1: $b8
	sub a                                            ; $42c2: $97
	ld h, b                                          ; $42c3: $60
	ldh [$a0], a                                     ; $42c4: $e0 $a0
	ld h, b                                          ; $42c6: $60
	ldh [rAUD4LEN], a                                ; $42c7: $e0 $20
	ldh [rAUD4LEN], a                                ; $42c9: $e0 $20
	ld [hl], a                                       ; $42cb: $77
	ret nz                                           ; $42cc: $c0

	ld a, a                                          ; $42cd: $7f
	cp $9d                                           ; $42ce: $fe $9d
	ldh a, [rAUD1SWEEP]                              ; $42d0: $f0 $10
	ld e, $00                                        ; $42d2: $1e $00
	jp c, $9699                                      ; $42d4: $da $99 $96

	sub c                                            ; $42d7: $91
	adc b                                            ; $42d8: $88
	adc b                                            ; $42d9: $88
	ld [hl], a                                       ; $42da: $77
	sbc c                                            ; $42db: $99
	nop                                              ; $42dc: $00
	adc b                                            ; $42dd: $88
	adc b                                            ; $42de: $88
	ld b, h                                          ; $42df: $44
	ld [hl], a                                       ; $42e0: $77
	ei                                               ; $42e1: $fb
	sbc h                                            ; $42e2: $9c
	inc sp                                           ; $42e3: $33
	sbc c                                            ; $42e4: $99
	ld b, h                                          ; $42e5: $44
	ld h, e                                          ; $42e6: $63
	ei                                               ; $42e7: $fb
	sbc b                                            ; $42e8: $98
	ld de, $2255                                     ; $42e9: $11 $55 $22
	sbc c                                            ; $42ec: $99
	sbc c                                            ; $42ed: $99
	and $ee                                          ; $42ee: $e6 $ee
	cp l                                             ; $42f0: $bd
	ld bc, $2f84                                     ; $42f1: $01 $84 $2f
	jr @+$2d                                         ; $42f4: $18 $2b

	inc e                                            ; $42f6: $1c
	dec hl                                           ; $42f7: $2b
	inc e                                            ; $42f8: $1c
	xor e                                            ; $42f9: $ab
	inc e                                            ; $42fa: $1c
	ld l, l                                          ; $42fb: $6d
	sbc [hl]                                         ; $42fc: $9e
	db $ed                                           ; $42fd: $ed
	sbc [hl]                                         ; $42fe: $9e
	and h                                            ; $42ff: $a4
	rst SubAFromDE                                          ; $4300: $df
	or $4f                                           ; $4301: $f6 $4f
	ld d, a                                          ; $4303: $57
	db $ed                                           ; $4304: $ed
	dec h                                            ; $4305: $25
	rst $38                                          ; $4306: $ff
	db $d3                                           ; $4307: $d3
	cp $ea                                           ; $4308: $fe $ea
	rst $38                                          ; $430a: $ff
	and a                                            ; $430b: $a7
	rst $38                                          ; $430c: $ff
	and [hl]                                         ; $430d: $a6
	ld a, e                                          ; $430e: $7b
	db $fc                                           ; $430f: $fc
	ld a, a                                          ; $4310: $7f
	cp $9e                                           ; $4311: $fe $9e
	ld c, d                                          ; $4313: $4a
	ld [hl], e                                       ; $4314: $73
	cp $80                                           ; $4315: $fe $80
	ld d, d                                          ; $4317: $52
	rst $38                                          ; $4318: $ff
	ld [hl], l                                       ; $4319: $75
	rst SubAFromDE                                          ; $431a: $df
	or l                                             ; $431b: $b5
	rst SubAFromDE                                          ; $431c: $df
	sub l                                            ; $431d: $95
	rst $38                                          ; $431e: $ff
	ld [$2abf], a                                    ; $431f: $ea $bf $2a
	rst $38                                          ; $4322: $ff
	push de                                          ; $4323: $d5
	ld a, [hl]                                       ; $4324: $7e
	cp h                                             ; $4325: $bc
	sub $ae                                          ; $4326: $d6 $ae
	db $f4                                           ; $4328: $f4
	ld [hl], l                                       ; $4329: $75
	xor h                                            ; $432a: $ac

jr_061_432b:
	ld e, d                                          ; $432b: $5a
	db $ed                                           ; $432c: $ed
	ld e, l                                          ; $432d: $5d
	db $eb                                           ; $432e: $eb
	bit 7, a                                         ; $432f: $cb $7f
	rst SubAFromDE                                          ; $4331: $df
	adc e                                            ; $4332: $8b
	sbc e                                            ; $4333: $9b
	call $80bf                                       ; $4334: $cd $bf $80
	call $efdc                                       ; $4337: $cd $dc $ef
	sub $ef                                          ; $433a: $d6 $ef
	rst AddAOntoHL                                          ; $433c: $ef
	push af                                          ; $433d: $f5
	rst FarCall                                          ; $433e: $f7
	cp h                                             ; $433f: $bc
	ld a, e                                          ; $4340: $7b
	adc $7f                                          ; $4341: $ce $7f
	add $ff                                          ; $4343: $c6 $ff
	adc $ff                                          ; $4345: $ce $ff
	ld [hl], b                                       ; $4347: $70
	rst $38                                          ; $4348: $ff
	ld c, [hl]                                       ; $4349: $4e
	di                                               ; $434a: $f3
	inc de                                           ; $434b: $13
	rst $38                                          ; $434c: $ff
	ld a, a                                          ; $434d: $7f
	or $df                                           ; $434e: $f6 $df
	adc l                                            ; $4350: $8d
	ld [$849a], sp                                   ; $4351: $08 $9a $84
	adc $80                                          ; $4354: $ce $80
	sbc $c0                                          ; $4356: $de $c0
	add b                                            ; $4358: $80
	ldh [$60], a                                     ; $4359: $e0 $60
	ldh a, [$78]                                     ; $435b: $f0 $78
	ldh a, [$38]                                     ; $435d: $f0 $38
	db $fc                                           ; $435f: $fc
	cp a                                             ; $4360: $bf
	ld a, [hl]                                       ; $4361: $7e
	or a                                             ; $4362: $b7
	ld a, a                                          ; $4363: $7f
	rst SubAFromHL                                          ; $4364: $d7
	ld a, a                                          ; $4365: $7f
	ld d, l                                          ; $4366: $55
	rst $38                                          ; $4367: $ff
	ld b, l                                          ; $4368: $45
	rst $38                                          ; $4369: $ff
	add l                                            ; $436a: $85
	rst $38                                          ; $436b: $ff
	xor a                                            ; $436c: $af
	db $dd                                           ; $436d: $dd
	xor e                                            ; $436e: $ab
	db $dd                                           ; $436f: $dd
	cp d                                             ; $4370: $ba
	rst GetHLinHL                                          ; $4371: $cf
	rst FarCall                                          ; $4372: $f7
	add hl, de                                       ; $4373: $19
	ld l, d                                          ; $4374: $6a
	sbc l                                            ; $4375: $9d
	cp l                                             ; $4376: $bd
	adc $7f                                          ; $4377: $ce $7f
	jp nz, $e79b                                     ; $4379: $c2 $9b $e7

	cp l                                             ; $437c: $bd
	ld [hl], e                                       ; $437d: $73
	sbc $7b                                          ; $437e: $de $7b
	add $97                                          ; $4380: $c6 $97
	ld h, c                                          ; $4382: $61
	rst $38                                          ; $4383: $ff
	jr nz, @+$01                                     ; $4384: $20 $ff

	nop                                              ; $4386: $00
	rst $38                                          ; $4387: $ff
	ld bc, $bcfe                                     ; $4388: $01 $fe $bc
	add b                                            ; $438b: $80
	nop                                              ; $438c: $00
	jr nz, jr_061_43bf                               ; $438d: $20 $30

	ld e, l                                          ; $438f: $5d
	sub b                                            ; $4390: $90
	or e                                             ; $4391: $b3
	or a                                             ; $4392: $b7
	reti                                             ; $4393: $d9


	jp z, Jump_061_6dfd                              ; $4394: $ca $fd $6d

	cp $76                                           ; $4397: $fe $76
	rst SubAFromDE                                          ; $4399: $df
	cp a                                             ; $439a: $bf
	db $ed                                           ; $439b: $ed
	rst $38                                          ; $439c: $ff
	ld l, b                                          ; $439d: $68
	rst $38                                          ; $439e: $ff
	db $fc                                           ; $439f: $fc
	ld a, e                                          ; $43a0: $7b
	ldh [c], a                                       ; $43a1: $e2
	add b                                            ; $43a2: $80
	ld a, b                                          ; $43a3: $78
	rst GetHLinHL                                          ; $43a4: $cf
	rst GetHLinHL                                          ; $43a5: $cf
	ld a, e                                          ; $43a6: $7b
	ld a, h                                          ; $43a7: $7c
	ld e, a                                          ; $43a8: $5f
	ld a, b                                          ; $43a9: $78
	ld [hl], a                                       ; $43aa: $77
	jr nz, jr_061_43ec                               ; $43ab: $20 $3f

	db $10                                           ; $43ad: $10
	ld a, a                                          ; $43ae: $7f
	nop                                              ; $43af: $00
	db $e4                                           ; $43b0: $e4
	ccf                                              ; $43b1: $3f
	ld d, d                                          ; $43b2: $52
	cp a                                             ; $43b3: $bf
	or d                                             ; $43b4: $b2
	rst SubAFromDE                                          ; $43b5: $df
	jp z, Jump_061_6dff                              ; $43b6: $ca $ff $6d

	rst $38                                          ; $43b9: $ff
	ld [hl], l                                       ; $43ba: $75
	rst $38                                          ; $43bb: $ff
	rst SubAFromDE                                          ; $43bc: $df
	rst $38                                          ; $43bd: $ff
	push af                                          ; $43be: $f5

jr_061_43bf:
	ld e, e                                          ; $43bf: $5b
	rst SubAFromDE                                          ; $43c0: $df
	ld [hl], l                                       ; $43c1: $75
	add a                                            ; $43c2: $87
	rst $38                                          ; $43c3: $ff
	dec a                                            ; $43c4: $3d
	rst $38                                          ; $43c5: $ff
	ld sp, $15ff                                     ; $43c6: $31 $ff $15
	rst $38                                          ; $43c9: $ff
	add hl, bc                                       ; $43ca: $09
	cp $03                                           ; $43cb: $fe $03
	cp $07                                           ; $43cd: $fe $07
	cp $1f                                           ; $43cf: $fe $1f
	ccf                                              ; $43d1: $3f
	ld a, $7f                                        ; $43d2: $3e $7f
	ld a, [hl]                                       ; $43d4: $7e
	rst $38                                          ; $43d5: $ff
	db $fd                                           ; $43d6: $fd
	rst $38                                          ; $43d7: $ff
	db $fd                                           ; $43d8: $fd
	db $fd                                           ; $43d9: $fd
	push af                                          ; $43da: $f5
	ld [hl], a                                       ; $43db: $77
	cp $9d                                           ; $43dc: $fe $9d
	ccf                                              ; $43de: $3f
	dec [hl]                                         ; $43df: $35
	ld a, e                                          ; $43e0: $7b
	cp $92                                           ; $43e1: $fe $92
	dec sp                                           ; $43e3: $3b
	ccf                                              ; $43e4: $3f
	dec sp                                           ; $43e5: $3b
	rra                                              ; $43e6: $1f
	dec de                                           ; $43e7: $1b
	rla                                              ; $43e8: $17
	dec de                                           ; $43e9: $1b
	rla                                              ; $43ea: $17
	dec e                                            ; $43eb: $1d

jr_061_43ec:
	daa                                              ; $43ec: $27
	dec a                                            ; $43ed: $3d
	ld b, a                                          ; $43ee: $47
	ld a, l                                          ; $43ef: $7d
	dec hl                                           ; $43f0: $2b
	ld b, b                                          ; $43f1: $40
	sub h                                            ; $43f2: $94
	ld b, b                                          ; $43f3: $40
	rst $38                                          ; $43f4: $ff
	ld c, $ff                                        ; $43f5: $0e $ff

jr_061_43f7:
	rra                                              ; $43f7: $1f
	di                                               ; $43f8: $f3
	ld [hl], e                                       ; $43f9: $73
	db $dd                                           ; $43fa: $dd
	ld e, $99                                        ; $43fb: $1e $99
	adc h                                            ; $43fd: $8c
	inc bc                                           ; $43fe: $03
	ld b, b                                          ; $43ff: $40
	ccf                                              ; $4400: $3f
	ld b, b                                          ; $4401: $40
	ld a, e                                          ; $4402: $7b
	ld a, $1b                                        ; $4403: $3e $1b
	ld b, b                                          ; $4405: $40
	ld a, a                                          ; $4406: $7f
	cp $97                                           ; $4407: $fe $97
	db $fc                                           ; $4409: $fc
	rst GetHLinHL                                          ; $440a: $cf
	rst GetHLinHL                                          ; $440b: $cf
	ld [hl], a                                       ; $440c: $77
	ld a, h                                          ; $440d: $7c

jr_061_440e:
	ld h, a                                          ; $440e: $67
	ld [hl], b                                       ; $440f: $70
	ccf                                              ; $4410: $3f
	cp a                                             ; $4411: $bf
	ld a, a                                          ; $4412: $7f
	rst SubAFromDE                                          ; $4413: $df
	daa                                              ; $4414: $27
	add b                                            ; $4415: $80
	ld a, a                                          ; $4416: $7f
	jp c, $0798                                      ; $4417: $da $98 $07

	ei                                               ; $441a: $fb
	dec de                                           ; $441b: $1b
	rst $38                                          ; $441c: $ff
	ld a, h                                          ; $441d: $7c
	sbc a                                            ; $441e: $9f
	add b                                            ; $441f: $80
	inc bc                                           ; $4420: $03
	add b                                            ; $4421: $80
	scf                                              ; $4422: $37
	add b                                            ; $4423: $80
	sbc h                                            ; $4424: $9c
	nop                                              ; $4425: $00
	add c                                            ; $4426: $81
	ld bc, $801b                                     ; $4427: $01 $1b $80
	cp a                                             ; $442a: $bf
	rst $38                                          ; $442b: $ff
	rst AddAOntoHL                                          ; $442c: $ef
	sbc h                                            ; $442d: $9c
	xor $7f                                          ; $442e: $ee $7f
	ld a, b                                          ; $4430: $78
	dec bc                                           ; $4431: $0b
	add b                                            ; $4432: $80
	sbc b                                            ; $4433: $98
	ld b, $ff                                        ; $4434: $06 $ff
	jr jr_061_43f7                                   ; $4436: $18 $bf

	rlca                                             ; $4438: $07
	cp a                                             ; $4439: $bf
	cp b                                             ; $443a: $b8
	inc bc                                           ; $443b: $03
	add b                                            ; $443c: $80
	cpl                                              ; $443d: $2f
	add b                                            ; $443e: $80
	sbc h                                            ; $443f: $9c
	nop                                              ; $4440: $00
	ld bc, $1b01                                     ; $4441: $01 $01 $1b
	add b                                            ; $4444: $80
	ld a, a                                          ; $4445: $7f
	sbc [hl]                                         ; $4446: $9e
	ld a, [hl]                                       ; $4447: $7e
	and b                                            ; $4448: $a0
	sbc [hl]                                         ; $4449: $9e
	ld hl, sp+$77                                    ; $444a: $f8 $77
	add b                                            ; $444c: $80
	sbc [hl]                                         ; $444d: $9e
	jr c, jr_061_440e                                ; $444e: $38 $be

	ld [hl], b                                       ; $4450: $70
	nop                                              ; $4451: $00
	daa                                              ; $4452: $27
	sbc e                                            ; $4453: $9b
	inc b                                            ; $4454: $04
	ld e, $18                                        ; $4455: $1e $18
	ld a, [bc]                                       ; $4457: $0a
	cp [hl]                                          ; $4458: $be
	inc e                                            ; $4459: $1c
	nop                                              ; $445a: $00
	pop bc                                           ; $445b: $c1
	adc a                                            ; $445c: $8f
	add b                                            ; $445d: $80
	db $ed                                           ; $445e: $ed
	di                                               ; $445f: $f3
	rst $38                                          ; $4460: $ff
	cp $6d                                           ; $4461: $fe $6d
	cp $4d                                           ; $4463: $fe $4d
	cp $5b                                           ; $4465: $fe $5b
	xor $7e                                          ; $4467: $ee $7e
	jp c, $deb6                                      ; $4469: $da $b6 $de

	inc bc                                           ; $446c: $03
	cp [hl]                                          ; $446d: $be
	rlca                                             ; $446e: $07
	rrca                                             ; $446f: $0f
	rrca                                             ; $4470: $0f
	sub [hl]                                         ; $4471: $96
	ld bc, $031f                                     ; $4472: $01 $1f $03
	rra                                              ; $4475: $1f
	rlca                                             ; $4476: $07
	ccf                                              ; $4477: $3f
	rrca                                             ; $4478: $0f
	rst SubAFromDE                                          ; $4479: $df
	ccf                                              ; $447a: $3f
	ld a, d                                          ; $447b: $7a
	inc sp                                           ; $447c: $33
	sbc h                                            ; $447d: $9c
	cp $bf                                           ; $447e: $fe $bf
	ld a, b                                          ; $4480: $78
	ld [hl], a                                       ; $4481: $77
	cp h                                             ; $4482: $bc
	ld a, a                                          ; $4483: $7f
	ld [$e47f], a                                    ; $4484: $ea $7f $e4
	rst $38                                          ; $4487: $ff
	ld l, a                                          ; $4488: $6f
	ret nz                                           ; $4489: $c0

	sbc e                                            ; $448a: $9b
	rlca                                             ; $448b: $07
	inc h                                            ; $448c: $24
	ld a, [hl-]                                      ; $448d: $3a
	inc e                                            ; $448e: $1c
	cpl                                              ; $448f: $2f
	ret nz                                           ; $4490: $c0

	ld l, a                                          ; $4491: $6f
	ldh [$98], a                                     ; $4492: $e0 $98
	ld h, a                                          ; $4494: $67
	ld h, $1e                                        ; $4495: $26 $1e
	inc a                                            ; $4497: $3c
	ld a, [hl-]                                      ; $4498: $3a
	inc e                                            ; $4499: $1c
	ld [bc], a                                       ; $449a: $02
	cp a                                             ; $449b: $bf
	inc e                                            ; $449c: $1c
	pop bc                                           ; $449d: $c1
	dec hl                                           ; $449e: $2b
	ldh [$9b], a                                     ; $449f: $e0 $9b
	ld a, a                                          ; $44a1: $7f
	ld a, $3d                                        ; $44a2: $3e $3d
	ld e, $37                                        ; $44a4: $1e $37
	ldh [$6f], a                                     ; $44a6: $e0 $6f
	add b                                            ; $44a8: $80
	sbc [hl]                                         ; $44a9: $9e
	adc a                                            ; $44aa: $8f
	inc hl                                           ; $44ab: $23
	add b                                            ; $44ac: $80
	ret                                              ; $44ad: $c9


	ld bc, $2f84                                     ; $44ae: $01 $84 $2f
	jr @+$2d                                         ; $44b1: $18 $2b

	inc e                                            ; $44b3: $1c
	dec hl                                           ; $44b4: $2b
	inc e                                            ; $44b5: $1c
	xor e                                            ; $44b6: $ab
	inc e                                            ; $44b7: $1c
	ld l, l                                          ; $44b8: $6d
	sbc [hl]                                         ; $44b9: $9e
	db $ed                                           ; $44ba: $ed
	sbc [hl]                                         ; $44bb: $9e
	and h                                            ; $44bc: $a4
	rst SubAFromDE                                          ; $44bd: $df
	or $4f                                           ; $44be: $f6 $4f
	ld d, a                                          ; $44c0: $57
	db $ed                                           ; $44c1: $ed
	dec h                                            ; $44c2: $25
	rst $38                                          ; $44c3: $ff
	db $d3                                           ; $44c4: $d3
	cp $ea                                           ; $44c5: $fe $ea
	rst $38                                          ; $44c7: $ff
	and a                                            ; $44c8: $a7
	rst $38                                          ; $44c9: $ff
	and [hl]                                         ; $44ca: $a6
	ld a, e                                          ; $44cb: $7b
	db $fc                                           ; $44cc: $fc
	ld a, a                                          ; $44cd: $7f
	cp $9e                                           ; $44ce: $fe $9e
	ld c, d                                          ; $44d0: $4a
	ld [hl], e                                       ; $44d1: $73
	cp $80                                           ; $44d2: $fe $80
	ld d, d                                          ; $44d4: $52
	rst $38                                          ; $44d5: $ff
	ld [hl], l                                       ; $44d6: $75
	rst SubAFromDE                                          ; $44d7: $df
	or l                                             ; $44d8: $b5
	rst SubAFromDE                                          ; $44d9: $df
	sub l                                            ; $44da: $95
	rst $38                                          ; $44db: $ff
	ld [$2abf], a                                    ; $44dc: $ea $bf $2a
	rst $38                                          ; $44df: $ff
	push de                                          ; $44e0: $d5
	ld a, [hl]                                       ; $44e1: $7e
	cp h                                             ; $44e2: $bc
	sub $ae                                          ; $44e3: $d6 $ae
	db $f4                                           ; $44e5: $f4
	ld [hl], l                                       ; $44e6: $75
	xor h                                            ; $44e7: $ac
	ld e, d                                          ; $44e8: $5a
	db $ed                                           ; $44e9: $ed
	ld e, l                                          ; $44ea: $5d
	db $eb                                           ; $44eb: $eb
	bit 7, a                                         ; $44ec: $cb $7f
	rst SubAFromDE                                          ; $44ee: $df
	adc e                                            ; $44ef: $8b
	sbc e                                            ; $44f0: $9b
	call $80bf                                       ; $44f1: $cd $bf $80
	call $efdc                                       ; $44f4: $cd $dc $ef
	sub $ef                                          ; $44f7: $d6 $ef
	rst AddAOntoHL                                          ; $44f9: $ef
	push af                                          ; $44fa: $f5
	rst FarCall                                          ; $44fb: $f7
	cp h                                             ; $44fc: $bc
	ld a, e                                          ; $44fd: $7b
	cp $7f                                           ; $44fe: $fe $7f
	add $ff                                          ; $4500: $c6 $ff
	jp nz, Jump_061_5cff                             ; $4502: $c2 $ff $5c

	rst FarCall                                          ; $4505: $f7
	ld [hl-], a                                      ; $4506: $32
	di                                               ; $4507: $f3
	ld d, e                                          ; $4508: $53
	rst $38                                          ; $4509: $ff
	rst SubAFromDE                                          ; $450a: $df
	ld d, [hl]                                       ; $450b: $56
	ld e, a                                          ; $450c: $5f
	sbc l                                            ; $450d: $9d
	ld [$848a], sp                                   ; $450e: $08 $8a $84
	ret nz                                           ; $4511: $c0

	add b                                            ; $4512: $80
	sbc $c0                                          ; $4513: $de $c0
	add b                                            ; $4515: $80
	ldh [$60], a                                     ; $4516: $e0 $60
	ldh a, [$78]                                     ; $4518: $f0 $78
	ldh a, [$38]                                     ; $451a: $f0 $38
	db $fc                                           ; $451c: $fc
	cp a                                             ; $451d: $bf
	ld a, [hl]                                       ; $451e: $7e
	or a                                             ; $451f: $b7
	ld a, a                                          ; $4520: $7f
	rst SubAFromHL                                          ; $4521: $d7
	ld a, a                                          ; $4522: $7f
	ld d, l                                          ; $4523: $55
	rst $38                                          ; $4524: $ff
	ld b, l                                          ; $4525: $45
	rst $38                                          ; $4526: $ff
	add l                                            ; $4527: $85
	rst $38                                          ; $4528: $ff
	xor a                                            ; $4529: $af
	db $dd                                           ; $452a: $dd
	xor e                                            ; $452b: $ab
	db $dd                                           ; $452c: $dd
	cp d                                             ; $452d: $ba
	rst GetHLinHL                                          ; $452e: $cf
	rst FarCall                                          ; $452f: $f7
	add hl, de                                       ; $4530: $19
	ld l, d                                          ; $4531: $6a
	sbc l                                            ; $4532: $9d
	cp l                                             ; $4533: $bd
	adc $7f                                          ; $4534: $ce $7f
	jp nz, $e794                                     ; $4536: $c2 $94 $e7

	cp l                                             ; $4539: $bd
	ld [hl], e                                       ; $453a: $73
	rst SubAFromDE                                          ; $453b: $df
	rst $38                                          ; $453c: $ff
	adc $ff                                          ; $453d: $ce $ff
	ld h, b                                          ; $453f: $60
	rst $38                                          ; $4540: $ff
	ld hl, $baff                                     ; $4541: $21 $ff $ba
	rst $38                                          ; $4544: $ff
	rst $38                                          ; $4545: $ff
	add b                                            ; $4546: $80
	nop                                              ; $4547: $00
	jr nz, jr_061_457a                               ; $4548: $20 $30

	ld e, l                                          ; $454a: $5d
	add e                                            ; $454b: $83
	or e                                             ; $454c: $b3
	or a                                             ; $454d: $b7
	reti                                             ; $454e: $d9


	jp z, Jump_061_6dfd                              ; $454f: $ca $fd $6d

	cp $76                                           ; $4552: $fe $76
	rst SubAFromDE                                          ; $4554: $df
	cp a                                             ; $4555: $bf
	db $ed                                           ; $4556: $ed
	rst $38                                          ; $4557: $ff
	ld l, b                                          ; $4558: $68
	rst $38                                          ; $4559: $ff
	db $fc                                           ; $455a: $fc
	rst AddAOntoHL                                          ; $455b: $ef
	ld c, a                                          ; $455c: $4f
	bit 1, [hl]                                      ; $455d: $cb $4e
	ld a, e                                          ; $455f: $7b
	ld a, h                                          ; $4560: $7c
	ld e, l                                          ; $4561: $5d
	ld a, b                                          ; $4562: $78
	ld [hl], a                                       ; $4563: $77
	inc h                                            ; $4564: $24
	ccf                                              ; $4565: $3f
	jr jr_061_4569                                   ; $4566: $18 $01

	cp a                                             ; $4568: $bf

jr_061_4569:
	inc bc                                           ; $4569: $03
	db $e4                                           ; $456a: $e4
	add b                                            ; $456b: $80
	ccf                                              ; $456c: $3f
	ld d, d                                          ; $456d: $52
	cp a                                             ; $456e: $bf
	or d                                             ; $456f: $b2
	rst SubAFromDE                                          ; $4570: $df
	jp z, Jump_061_6dff                              ; $4571: $ca $ff $6d

	rst $38                                          ; $4574: $ff
	ld [hl], l                                       ; $4575: $75
	rst $38                                          ; $4576: $ff
	rst SubAFromDE                                          ; $4577: $df
	rst $38                                          ; $4578: $ff
	push af                                          ; $4579: $f5

jr_061_457a:
	ld e, e                                          ; $457a: $5b
	rst SubAFromDE                                          ; $457b: $df
	ld [hl], l                                       ; $457c: $75
	rst $38                                          ; $457d: $ff
	dec a                                            ; $457e: $3d
	rst $38                                          ; $457f: $ff
	ld sp, $15ff                                     ; $4580: $31 $ff $15
	rst $38                                          ; $4583: $ff
	add hl, bc                                       ; $4584: $09
	cp $03                                           ; $4585: $fe $03
	cp $07                                           ; $4587: $fe $07
	cp $1f                                           ; $4589: $fe $1f
	sub l                                            ; $458b: $95
	ccf                                              ; $458c: $3f
	ld a, $7f                                        ; $458d: $3e $7f
	ld a, [hl]                                       ; $458f: $7e
	rst $38                                          ; $4590: $ff
	db $fd                                           ; $4591: $fd
	rst $38                                          ; $4592: $ff
	db $fd                                           ; $4593: $fd
	db $fd                                           ; $4594: $fd
	push af                                          ; $4595: $f5
	ld [hl], a                                       ; $4596: $77
	cp $9d                                           ; $4597: $fe $9d
	ccf                                              ; $4599: $3f
	dec [hl]                                         ; $459a: $35
	ld a, e                                          ; $459b: $7b
	cp $92                                           ; $459c: $fe $92
	dec sp                                           ; $459e: $3b
	ccf                                              ; $459f: $3f
	dec sp                                           ; $45a0: $3b
	rra                                              ; $45a1: $1f
	dec de                                           ; $45a2: $1b
	rla                                              ; $45a3: $17
	dec de                                           ; $45a4: $1b
	rla                                              ; $45a5: $17
	dec e                                            ; $45a6: $1d
	daa                                              ; $45a7: $27
	dec a                                            ; $45a8: $3d
	ld b, a                                          ; $45a9: $47
	ld a, l                                          ; $45aa: $7d
	inc sp                                           ; $45ab: $33
	ld b, b                                          ; $45ac: $40
	sub [hl]                                         ; $45ad: $96
	ld b, b                                          ; $45ae: $40
	rst $38                                          ; $45af: $ff
	ld a, [de]                                       ; $45b0: $1a
	di                                               ; $45b1: $f3
	inc sp                                           ; $45b2: $33
	rst $38                                          ; $45b3: $ff
	ld e, a                                          ; $45b4: $5f
	ld d, $1f                                        ; $45b5: $16 $1f
	inc bc                                           ; $45b7: $03
	ld b, b                                          ; $45b8: $40
	ccf                                              ; $45b9: $3f
	ld b, b                                          ; $45ba: $40
	sbc [hl]                                         ; $45bb: $9e
	jr nz, jr_061_4639                               ; $45bc: $20 $7b

	ld b, d                                          ; $45be: $42
	sbc [hl]                                         ; $45bf: $9e
	ld bc, $4023                                     ; $45c0: $01 $23 $40
	cp a                                             ; $45c3: $bf
	rst $38                                          ; $45c4: $ff
	rst $38                                          ; $45c5: $ff
	sub d                                            ; $45c6: $92
	ld a, h                                          ; $45c7: $7c
	rst GetHLinHL                                          ; $45c8: $cf
	rst GetHLinHL                                          ; $45c9: $cf
	ld sp, hl                                        ; $45ca: $f9
	ld a, h                                          ; $45cb: $7c
	ld e, a                                          ; $45cc: $5f
	ld a, b                                          ; $45cd: $78
	scf                                              ; $45ce: $37
	jr nz, jr_061_4610                               ; $45cf: $20 $3f

	db $10                                           ; $45d1: $10
	inc bc                                           ; $45d2: $03
	nop                                              ; $45d3: $00
	dec hl                                           ; $45d4: $2b
	add b                                            ; $45d5: $80
	cp a                                             ; $45d6: $bf

jr_061_45d7:
	rst $38                                          ; $45d7: $ff
	ei                                               ; $45d8: $fb
	sbc b                                            ; $45d9: $98
	dec bc                                           ; $45da: $0b
	ld a, a                                          ; $45db: $7f
	ccf                                              ; $45dc: $3f
	sbc [hl]                                         ; $45dd: $9e
	inc c                                            ; $45de: $0c
	add b                                            ; $45df: $80
	add b                                            ; $45e0: $80
	inc bc                                           ; $45e1: $03
	add b                                            ; $45e2: $80
	ccf                                              ; $45e3: $3f
	add b                                            ; $45e4: $80
	cp a                                             ; $45e5: $bf
	rst $38                                          ; $45e6: $ff
	add c                                            ; $45e7: $81
	sbc h                                            ; $45e8: $9c
	ld bc, $8080                                     ; $45e9: $01 $80 $80
	dec hl                                           ; $45ec: $2b
	add b                                            ; $45ed: $80
	cp a                                             ; $45ee: $bf
	rst $38                                          ; $45ef: $ff
	rst $38                                          ; $45f0: $ff
	sbc c                                            ; $45f1: $99
	rlca                                             ; $45f2: $07
	rst SubAFromDE                                          ; $45f3: $df
	call c, Call_061_787f                            ; $45f4: $dc $7f $78
	ccf                                              ; $45f7: $3f
	cp a                                             ; $45f8: $bf
	inc bc                                           ; $45f9: $03
	rst SubAFromDE                                          ; $45fa: $df
	daa                                              ; $45fb: $27
	add b                                            ; $45fc: $80
	sbc b                                            ; $45fd: $98
	inc bc                                           ; $45fe: $03
	rst $38                                          ; $45ff: $ff
	inc e                                            ; $4600: $1c
	ccf                                              ; $4601: $3f
	inc bc                                           ; $4602: $03
	cp [hl]                                          ; $4603: $be
	inc a                                            ; $4604: $3c
	inc hl                                           ; $4605: $23
	and b                                            ; $4606: $a0
	cp l                                             ; $4607: $bd
	add b                                            ; $4608: $80
	and b                                            ; $4609: $a0
	jr nc, jr_061_4669                               ; $460a: $30 $5d

	cpl                                              ; $460c: $2f
	and b                                            ; $460d: $a0
	sbc [hl]                                         ; $460e: $9e
	ld a, b                                          ; $460f: $78

jr_061_4610:
	ld a, e                                          ; $4610: $7b
	ret nz                                           ; $4611: $c0

	sbc [hl]                                         ; $4612: $9e
	db $fc                                           ; $4613: $fc
	ld [hl], a                                       ; $4614: $77
	and b                                            ; $4615: $a0
	sbc [hl]                                         ; $4616: $9e
	jr c, jr_061_45d7                                ; $4617: $38 $be

	ld [hl], b                                       ; $4619: $70
	ld [bc], a                                       ; $461a: $02
	ld a, b                                          ; $461b: $78
	sbc l                                            ; $461c: $9d
	jr nz, jr_061_4621                               ; $461d: $20 $02

	cp l                                             ; $461f: $bd
	inc e                                            ; $4620: $1c

jr_061_4621:
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	pop bc                                           ; $4623: $c1
	adc a                                            ; $4624: $8f
	add b                                            ; $4625: $80
	db $ed                                           ; $4626: $ed
	di                                               ; $4627: $f3
	rst $38                                          ; $4628: $ff
	cp $6d                                           ; $4629: $fe $6d
	cp $4d                                           ; $462b: $fe $4d
	cp $5b                                           ; $462d: $fe $5b
	xor $7e                                          ; $462f: $ee $7e
	jp c, $deb6                                      ; $4631: $da $b6 $de

	rlca                                             ; $4634: $07
	cp [hl]                                          ; $4635: $be
	rlca                                             ; $4636: $07
	rrca                                             ; $4637: $0f
	rrca                                             ; $4638: $0f

jr_061_4639:
	sub [hl]                                         ; $4639: $96
	ld bc, $031f                                     ; $463a: $01 $1f $03
	rra                                              ; $463d: $1f
	rlca                                             ; $463e: $07
	ccf                                              ; $463f: $3f
	rrca                                             ; $4640: $0f
	rst SubAFromDE                                          ; $4641: $df
	ccf                                              ; $4642: $3f
	ld a, d                                          ; $4643: $7a
	ld d, e                                          ; $4644: $53
	sbc h                                            ; $4645: $9c
	cp $bf                                           ; $4646: $fe $bf
	ld a, b                                          ; $4648: $78
	ld [hl], a                                       ; $4649: $77
	cp h                                             ; $464a: $bc
	ld a, a                                          ; $464b: $7f
	ld [$c27f], a                                    ; $464c: $ea $7f $c2
	rst $38                                          ; $464f: $ff
	ld [hl], a                                       ; $4650: $77
	ret nz                                           ; $4651: $c0

	sbc d                                            ; $4652: $9a
	dec b                                            ; $4653: $05
	ld [bc], a                                       ; $4654: $02
	ld b, [hl]                                       ; $4655: $46
	inc h                                            ; $4656: $24
	inc e                                            ; $4657: $1c
	cp l                                             ; $4658: $bd
	ld [bc], a                                       ; $4659: $02
	inc c                                            ; $465a: $0c
	nop                                              ; $465b: $00
	pop bc                                           ; $465c: $c1
	ld c, e                                          ; $465d: $4b
	ret nz                                           ; $465e: $c0

	ld [hl], a                                       ; $465f: $77
	ldh [$97], a                                     ; $4660: $e0 $97
	ld b, $01                                        ; $4662: $06 $01
	ld b, d                                          ; $4664: $42
	inc hl                                           ; $4665: $23
	ccf                                              ; $4666: $3f
	ld e, $1e                                        ; $4667: $1e $1e

jr_061_4669:
	inc c                                            ; $4669: $0c
	daa                                              ; $466a: $27
	ldh [$9e], a                                     ; $466b: $e0 $9e
	ld c, $77                                        ; $466d: $0e $77
	ldh [$9e], a                                     ; $466f: $e0 $9e
	ld a, $6f                                        ; $4671: $3e $6f
	sbc $47                                          ; $4673: $de $47
	ldh [$c0], a                                     ; $4675: $e0 $c0
	ld bc, $2f84                                     ; $4677: $01 $84 $2f
	jr @+$2d                                         ; $467a: $18 $2b

	inc e                                            ; $467c: $1c
	dec hl                                           ; $467d: $2b
	inc e                                            ; $467e: $1c
	xor e                                            ; $467f: $ab
	inc e                                            ; $4680: $1c
	ld l, l                                          ; $4681: $6d
	sbc [hl]                                         ; $4682: $9e
	db $ed                                           ; $4683: $ed
	sbc [hl]                                         ; $4684: $9e
	and h                                            ; $4685: $a4
	rst SubAFromDE                                          ; $4686: $df
	or $4f                                           ; $4687: $f6 $4f
	ld d, a                                          ; $4689: $57
	db $ed                                           ; $468a: $ed
	dec h                                            ; $468b: $25
	rst $38                                          ; $468c: $ff
	db $d3                                           ; $468d: $d3
	cp $ea                                           ; $468e: $fe $ea
	rst $38                                          ; $4690: $ff
	and a                                            ; $4691: $a7
	rst $38                                          ; $4692: $ff
	and [hl]                                         ; $4693: $a6
	ld a, e                                          ; $4694: $7b
	db $fc                                           ; $4695: $fc
	ld a, a                                          ; $4696: $7f
	cp $9e                                           ; $4697: $fe $9e
	ld c, d                                          ; $4699: $4a
	ld [hl], e                                       ; $469a: $73
	cp $80                                           ; $469b: $fe $80
	ld d, d                                          ; $469d: $52
	rst $38                                          ; $469e: $ff
	ld [hl], l                                       ; $469f: $75
	rst SubAFromDE                                          ; $46a0: $df
	or l                                             ; $46a1: $b5
	rst SubAFromDE                                          ; $46a2: $df
	sub l                                            ; $46a3: $95
	rst $38                                          ; $46a4: $ff
	ld [$2abf], a                                    ; $46a5: $ea $bf $2a
	rst $38                                          ; $46a8: $ff
	push de                                          ; $46a9: $d5
	ld a, [hl]                                       ; $46aa: $7e
	cp h                                             ; $46ab: $bc
	sub $ae                                          ; $46ac: $d6 $ae
	db $f4                                           ; $46ae: $f4
	ld [hl], l                                       ; $46af: $75
	xor h                                            ; $46b0: $ac
	ld e, d                                          ; $46b1: $5a
	db $ed                                           ; $46b2: $ed
	ld e, l                                          ; $46b3: $5d
	db $eb                                           ; $46b4: $eb
	bit 7, a                                         ; $46b5: $cb $7f
	rst SubAFromDE                                          ; $46b7: $df
	adc e                                            ; $46b8: $8b
	sbc e                                            ; $46b9: $9b
	call $80bf                                       ; $46ba: $cd $bf $80
	call $efdc                                       ; $46bd: $cd $dc $ef
	sub $ef                                          ; $46c0: $d6 $ef
	rst AddAOntoHL                                          ; $46c2: $ef
	push af                                          ; $46c3: $f5
	rst FarCall                                          ; $46c4: $f7
	cp h                                             ; $46c5: $bc
	ld a, e                                          ; $46c6: $7b
	adc $7f                                          ; $46c7: $ce $7f
	cp $ff                                           ; $46c9: $fe $ff
	jp nz, Jump_061_5cff                             ; $46cb: $c2 $ff $5c

	rst FarCall                                          ; $46ce: $f7
	ld [hl-], a                                      ; $46cf: $32
	di                                               ; $46d0: $f3
	ld [hl], e                                       ; $46d1: $73
	rst $38                                          ; $46d2: $ff
	rst SubAFromDE                                          ; $46d3: $df
	ld d, [hl]                                       ; $46d4: $56
	ld e, a                                          ; $46d5: $5f
	sbc l                                            ; $46d6: $9d
	ld [$848a], sp                                   ; $46d7: $08 $8a $84
	ret nz                                           ; $46da: $c0

	add b                                            ; $46db: $80
	sbc $c0                                          ; $46dc: $de $c0
	add b                                            ; $46de: $80
	ldh [$60], a                                     ; $46df: $e0 $60
	ldh a, [$78]                                     ; $46e1: $f0 $78
	ldh a, [$38]                                     ; $46e3: $f0 $38
	db $fc                                           ; $46e5: $fc
	cp a                                             ; $46e6: $bf
	ld a, [hl]                                       ; $46e7: $7e
	or a                                             ; $46e8: $b7
	ld a, a                                          ; $46e9: $7f
	rst SubAFromHL                                          ; $46ea: $d7
	ld a, a                                          ; $46eb: $7f
	ld d, l                                          ; $46ec: $55
	rst $38                                          ; $46ed: $ff
	ld b, l                                          ; $46ee: $45
	rst $38                                          ; $46ef: $ff
	add l                                            ; $46f0: $85
	rst $38                                          ; $46f1: $ff
	xor a                                            ; $46f2: $af
	db $dd                                           ; $46f3: $dd
	xor e                                            ; $46f4: $ab
	db $dd                                           ; $46f5: $dd
	cp d                                             ; $46f6: $ba
	rst GetHLinHL                                          ; $46f7: $cf
	rst FarCall                                          ; $46f8: $f7
	add hl, de                                       ; $46f9: $19
	ld l, d                                          ; $46fa: $6a
	sbc l                                            ; $46fb: $9d
	cp l                                             ; $46fc: $bd
	adc $7f                                          ; $46fd: $ce $7f
	jp nz, $e78e                                     ; $46ff: $c2 $8e $e7

	cp l                                             ; $4702: $bd
	ld [hl], e                                       ; $4703: $73
	rst SubAFromDE                                          ; $4704: $df
	rst $38                                          ; $4705: $ff
	adc $ff                                          ; $4706: $ce $ff
	ld h, b                                          ; $4708: $60
	rst $38                                          ; $4709: $ff
	jr nz, @+$01                                     ; $470a: $20 $ff

	ld bc, $00ff                                     ; $470c: $01 $ff $00
	rst $38                                          ; $470f: $ff
	nop                                              ; $4710: $00
	add b                                            ; $4711: $80
	cp $80                                           ; $4712: $fe $80
	jr nz, jr_061_4716                               ; $4714: $20 $00

jr_061_4716:
	jr nc, jr_061_4718                               ; $4716: $30 $00

jr_061_4718:
	ld e, l                                          ; $4718: $5d
	or e                                             ; $4719: $b3
	or a                                             ; $471a: $b7
	reti                                             ; $471b: $d9


	jp z, Jump_061_6dfd                              ; $471c: $ca $fd $6d

	cp $76                                           ; $471f: $fe $76
	rst SubAFromDE                                          ; $4721: $df
	cp a                                             ; $4722: $bf
	db $ed                                           ; $4723: $ed
	rst $38                                          ; $4724: $ff
	ld l, b                                          ; $4725: $68
	rst $38                                          ; $4726: $ff
	ld a, h                                          ; $4727: $7c
	rst AddAOntoHL                                          ; $4728: $ef
	rst GetHLinHL                                          ; $4729: $cf
	bit 1, [hl]                                      ; $472a: $cb $4e
	ld a, e                                          ; $472c: $7b
	ld a, h                                          ; $472d: $7c
	ld e, l                                          ; $472e: $5d
	ld a, b                                          ; $472f: $78
	ld [hl], a                                       ; $4730: $77
	inc h                                            ; $4731: $24
	ccf                                              ; $4732: $3f
	add b                                            ; $4733: $80
	jr jr_061_4737                                   ; $4734: $18 $01

	nop                                              ; $4736: $00

jr_061_4737:
	inc bc                                           ; $4737: $03
	nop                                              ; $4738: $00
	db $e4                                           ; $4739: $e4
	ccf                                              ; $473a: $3f
	ld d, d                                          ; $473b: $52
	cp a                                             ; $473c: $bf
	or d                                             ; $473d: $b2
	rst SubAFromDE                                          ; $473e: $df
	jp z, Jump_061_6dff                              ; $473f: $ca $ff $6d

	rst $38                                          ; $4742: $ff
	ld [hl], l                                       ; $4743: $75
	rst $38                                          ; $4744: $ff
	rst SubAFromDE                                          ; $4745: $df
	rst $38                                          ; $4746: $ff
	push af                                          ; $4747: $f5
	ld e, e                                          ; $4748: $5b
	rst SubAFromDE                                          ; $4749: $df
	ld [hl], l                                       ; $474a: $75
	rst $38                                          ; $474b: $ff
	dec a                                            ; $474c: $3d
	rst $38                                          ; $474d: $ff
	ld sp, $15ff                                     ; $474e: $31 $ff $15
	rst $38                                          ; $4751: $ff
	add hl, bc                                       ; $4752: $09
	adc a                                            ; $4753: $8f
	cp $03                                           ; $4754: $fe $03
	cp $07                                           ; $4756: $fe $07
	cp $1f                                           ; $4758: $fe $1f
	ccf                                              ; $475a: $3f
	ld a, $7f                                        ; $475b: $3e $7f
	ld a, [hl]                                       ; $475d: $7e
	rst $38                                          ; $475e: $ff
	db $fd                                           ; $475f: $fd
	rst $38                                          ; $4760: $ff
	db $fd                                           ; $4761: $fd
	db $fd                                           ; $4762: $fd
	push af                                          ; $4763: $f5
	ld [hl], a                                       ; $4764: $77
	cp $9d                                           ; $4765: $fe $9d
	ccf                                              ; $4767: $3f
	dec [hl]                                         ; $4768: $35
	ld a, e                                          ; $4769: $7b
	cp $92                                           ; $476a: $fe $92
	dec sp                                           ; $476c: $3b
	ccf                                              ; $476d: $3f
	dec sp                                           ; $476e: $3b
	rra                                              ; $476f: $1f
	dec de                                           ; $4770: $1b
	rla                                              ; $4771: $17
	dec de                                           ; $4772: $1b
	rla                                              ; $4773: $17
	dec e                                            ; $4774: $1d
	daa                                              ; $4775: $27
	dec a                                            ; $4776: $3d
	ld b, a                                          ; $4777: $47
	ld a, l                                          ; $4778: $7d
	inc sp                                           ; $4779: $33
	ld b, b                                          ; $477a: $40
	sub [hl]                                         ; $477b: $96
	ld b, b                                          ; $477c: $40
	rst $38                                          ; $477d: $ff
	ld a, [de]                                       ; $477e: $1a
	di                                               ; $477f: $f3
	inc sp                                           ; $4780: $33
	rst $38                                          ; $4781: $ff
	ld e, a                                          ; $4782: $5f
	ld d, $1f                                        ; $4783: $16 $1f
	inc bc                                           ; $4785: $03
	ld b, b                                          ; $4786: $40
	scf                                              ; $4787: $37
	ld b, b                                          ; $4788: $40
	ld a, a                                          ; $4789: $7f
	ld b, d                                          ; $478a: $42
	ld a, e                                          ; $478b: $7b
	ld a, $2b                                        ; $478c: $3e $2b
	ld b, b                                          ; $478e: $40
	ld a, e                                          ; $478f: $7b
	ld h, $7f                                        ; $4790: $26 $7f
	inc a                                            ; $4792: $3c
	rst SubAFromDE                                          ; $4793: $df
	rst GetHLinHL                                          ; $4794: $cf
	sub l                                            ; $4795: $95
	ld sp, hl                                        ; $4796: $f9
	ld a, h                                          ; $4797: $7c
	ld e, a                                          ; $4798: $5f
	ld a, b                                          ; $4799: $78
	scf                                              ; $479a: $37
	jr nz, jr_061_47dc                               ; $479b: $20 $3f

	db $10                                           ; $479d: $10
	inc bc                                           ; $479e: $03
	nop                                              ; $479f: $00
	dec hl                                           ; $47a0: $2b
	add b                                            ; $47a1: $80
	ld a, e                                          ; $47a2: $7b
	ret c                                            ; $47a3: $d8

	sub a                                            ; $47a4: $97
	ei                                               ; $47a5: $fb
	dec bc                                           ; $47a6: $0b
	ld a, a                                          ; $47a7: $7f
	ccf                                              ; $47a8: $3f
	sbc [hl]                                         ; $47a9: $9e
	inc c                                            ; $47aa: $0c
	add b                                            ; $47ab: $80
	add b                                            ; $47ac: $80
	inc bc                                           ; $47ad: $03
	add b                                            ; $47ae: $80
	ccf                                              ; $47af: $3f
	add b                                            ; $47b0: $80
	ld a, e                                          ; $47b1: $7b
	cp $9b                                           ; $47b2: $fe $9b
	add c                                            ; $47b4: $81
	ld bc, $8080                                     ; $47b5: $01 $80 $80
	dec hl                                           ; $47b8: $2b
	add b                                            ; $47b9: $80
	ld [hl], a                                       ; $47ba: $77
	cp $99                                           ; $47bb: $fe $99
	rlca                                             ; $47bd: $07
	rst SubAFromDE                                          ; $47be: $df
	call c, Call_061_787f                            ; $47bf: $dc $7f $78
	ccf                                              ; $47c2: $3f
	ld a, d                                          ; $47c3: $7a
	ret nz                                           ; $47c4: $c0

	inc hl                                           ; $47c5: $23
	add b                                            ; $47c6: $80
	sbc b                                            ; $47c7: $98
	inc bc                                           ; $47c8: $03
	rst $38                                          ; $47c9: $ff
	inc e                                            ; $47ca: $1c
	ccf                                              ; $47cb: $3f
	inc bc                                           ; $47cc: $03
	cp [hl]                                          ; $47cd: $be
	inc a                                            ; $47ce: $3c
	inc hl                                           ; $47cf: $23
	and b                                            ; $47d0: $a0
	ld a, e                                          ; $47d1: $7b
	ld e, $9e                                        ; $47d2: $1e $9e
	and b                                            ; $47d4: $a0
	rra                                              ; $47d5: $1f
	and b                                            ; $47d6: $a0
	sbc [hl]                                         ; $47d7: $9e
	ld a, b                                          ; $47d8: $78
	ld a, e                                          ; $47d9: $7b
	ret nz                                           ; $47da: $c0

	sbc [hl]                                         ; $47db: $9e

jr_061_47dc:
	db $fc                                           ; $47dc: $fc
	ld [hl], a                                       ; $47dd: $77
	and b                                            ; $47de: $a0
	sub h                                            ; $47df: $94
	jr c, jr_061_47e2                                ; $47e0: $38 $00

jr_061_47e2:
	ld [hl], e                                       ; $47e2: $73
	nop                                              ; $47e3: $00
	ld a, [bc]                                       ; $47e4: $0a
	ld b, $34                                        ; $47e5: $06 $34
	db $10                                           ; $47e7: $10
	ld [bc], a                                       ; $47e8: $02
	nop                                              ; $47e9: $00
	inc c                                            ; $47ea: $0c
	db $fc                                           ; $47eb: $fc
	add b                                            ; $47ec: $80
	pop bc                                           ; $47ed: $c1
	add b                                            ; $47ee: $80
	db $ed                                           ; $47ef: $ed
	di                                               ; $47f0: $f3
	rst $38                                          ; $47f1: $ff
	cp $6d                                           ; $47f2: $fe $6d
	cp $4d                                           ; $47f4: $fe $4d
	cp $5b                                           ; $47f6: $fe $5b
	xor $7e                                          ; $47f8: $ee $7e
	jp c, $deb6                                      ; $47fa: $da $b6 $de

	rlca                                             ; $47fd: $07
	nop                                              ; $47fe: $00
	rlca                                             ; $47ff: $07
	nop                                              ; $4800: $00
	rrca                                             ; $4801: $0f
	nop                                              ; $4802: $00
	rrca                                             ; $4803: $0f
	ld bc, $031f                                     ; $4804: $01 $1f $03
	rra                                              ; $4807: $1f
	rlca                                             ; $4808: $07
	ccf                                              ; $4809: $3f
	rrca                                             ; $480a: $0f
	rst SubAFromDE                                          ; $480b: $df
	sbc [hl]                                         ; $480c: $9e
	ccf                                              ; $480d: $3f
	ld a, d                                          ; $480e: $7a
	ld d, e                                          ; $480f: $53
	sbc h                                            ; $4810: $9c
	cp $bf                                           ; $4811: $fe $bf
	ld a, b                                          ; $4813: $78
	ld [hl], a                                       ; $4814: $77
	cp h                                             ; $4815: $bc
	ld a, a                                          ; $4816: $7f
	ld [$c27f], a                                    ; $4817: $ea $7f $c2
	rst $38                                          ; $481a: $ff
	rlca                                             ; $481b: $07
	ret nz                                           ; $481c: $c0

	ld [hl], a                                       ; $481d: $77
	ldh [$98], a                                     ; $481e: $e0 $98
	rrca                                             ; $4820: $0f
	ld [bc], a                                       ; $4821: $02
	dec [hl]                                         ; $4822: $35
	ld d, $12                                        ; $4823: $16 $12
	ld [$7300], sp                                   ; $4825: $08 $00 $73
	sbc $2f                                          ; $4828: $de $2f
	ldh [$9a], a                                     ; $482a: $e0 $9a
	scf                                              ; $482c: $37
	ld d, $1c                                        ; $482d: $16 $1c
	ld c, $0a                                        ; $482f: $0e $0a
	cp $7f                                           ; $4831: $fe $7f
	sbc $47                                          ; $4833: $de $47
	ldh [$cb], a                                     ; $4835: $e0 $cb
	ld bc, $2f84                                     ; $4837: $01 $84 $2f
	jr @+$2d                                         ; $483a: $18 $2b

	inc e                                            ; $483c: $1c
	dec hl                                           ; $483d: $2b
	inc e                                            ; $483e: $1c
	xor e                                            ; $483f: $ab
	inc e                                            ; $4840: $1c
	ld l, l                                          ; $4841: $6d
	sbc [hl]                                         ; $4842: $9e
	db $ed                                           ; $4843: $ed
	sbc [hl]                                         ; $4844: $9e
	and h                                            ; $4845: $a4
	rst SubAFromDE                                          ; $4846: $df
	or $4f                                           ; $4847: $f6 $4f
	ld d, a                                          ; $4849: $57
	db $ed                                           ; $484a: $ed
	dec h                                            ; $484b: $25
	rst $38                                          ; $484c: $ff
	db $d3                                           ; $484d: $d3
	cp $ea                                           ; $484e: $fe $ea
	rst $38                                          ; $4850: $ff
	and a                                            ; $4851: $a7
	rst $38                                          ; $4852: $ff
	and [hl]                                         ; $4853: $a6
	ld a, e                                          ; $4854: $7b
	db $fc                                           ; $4855: $fc
	ld a, a                                          ; $4856: $7f
	cp $9e                                           ; $4857: $fe $9e
	ld c, d                                          ; $4859: $4a
	ld [hl], e                                       ; $485a: $73
	cp $80                                           ; $485b: $fe $80
	ld d, d                                          ; $485d: $52
	rst $38                                          ; $485e: $ff
	ld [hl], l                                       ; $485f: $75
	rst SubAFromDE                                          ; $4860: $df
	or l                                             ; $4861: $b5
	rst SubAFromDE                                          ; $4862: $df
	sub l                                            ; $4863: $95
	rst $38                                          ; $4864: $ff
	ld [$2abf], a                                    ; $4865: $ea $bf $2a
	rst $38                                          ; $4868: $ff
	push de                                          ; $4869: $d5
	ld a, [hl]                                       ; $486a: $7e
	cp h                                             ; $486b: $bc
	sub $ae                                          ; $486c: $d6 $ae
	db $f4                                           ; $486e: $f4
	ld [hl], l                                       ; $486f: $75
	xor h                                            ; $4870: $ac
	ld e, d                                          ; $4871: $5a
	db $ed                                           ; $4872: $ed
	ld e, l                                          ; $4873: $5d
	db $eb                                           ; $4874: $eb
	bit 7, a                                         ; $4875: $cb $7f
	rst SubAFromDE                                          ; $4877: $df
	adc e                                            ; $4878: $8b
	sbc e                                            ; $4879: $9b
	call $80bf                                       ; $487a: $cd $bf $80
	call $efdc                                       ; $487d: $cd $dc $ef
	sub $ef                                          ; $4880: $d6 $ef
	rst AddAOntoHL                                          ; $4882: $ef
	push af                                          ; $4883: $f5
	rst FarCall                                          ; $4884: $f7
	cp h                                             ; $4885: $bc
	ld a, e                                          ; $4886: $7b
	adc $7f                                          ; $4887: $ce $7f
	cp $ff                                           ; $4889: $fe $ff
	jp nz, Jump_061_5cff                             ; $488b: $c2 $ff $5c

	rst FarCall                                          ; $488e: $f7
	ld [hl-], a                                      ; $488f: $32
	di                                               ; $4890: $f3
	ld [hl], e                                       ; $4891: $73
	rst $38                                          ; $4892: $ff
	rst SubAFromDE                                          ; $4893: $df
	ld d, [hl]                                       ; $4894: $56
	ld e, a                                          ; $4895: $5f
	sbc l                                            ; $4896: $9d
	ld [$848a], sp                                   ; $4897: $08 $8a $84
	ret nz                                           ; $489a: $c0

	add b                                            ; $489b: $80
	sbc $c0                                          ; $489c: $de $c0
	add b                                            ; $489e: $80
	ldh [$60], a                                     ; $489f: $e0 $60
	ldh a, [$78]                                     ; $48a1: $f0 $78
	ldh a, [$38]                                     ; $48a3: $f0 $38
	db $fc                                           ; $48a5: $fc
	cp a                                             ; $48a6: $bf
	ld a, [hl]                                       ; $48a7: $7e
	or a                                             ; $48a8: $b7
	ld a, a                                          ; $48a9: $7f
	rst SubAFromHL                                          ; $48aa: $d7
	ld a, a                                          ; $48ab: $7f
	ld d, l                                          ; $48ac: $55
	rst $38                                          ; $48ad: $ff
	ld b, l                                          ; $48ae: $45
	rst $38                                          ; $48af: $ff
	add l                                            ; $48b0: $85
	rst $38                                          ; $48b1: $ff
	xor a                                            ; $48b2: $af
	db $dd                                           ; $48b3: $dd
	xor e                                            ; $48b4: $ab
	db $dd                                           ; $48b5: $dd
	cp d                                             ; $48b6: $ba
	rst GetHLinHL                                          ; $48b7: $cf
	rst FarCall                                          ; $48b8: $f7
	add hl, de                                       ; $48b9: $19
	ld l, d                                          ; $48ba: $6a
	sbc l                                            ; $48bb: $9d
	cp l                                             ; $48bc: $bd
	adc $7f                                          ; $48bd: $ce $7f
	jp nz, $e78e                                     ; $48bf: $c2 $8e $e7

	cp l                                             ; $48c2: $bd
	ld [hl], e                                       ; $48c3: $73
	rst SubAFromDE                                          ; $48c4: $df
	rst $38                                          ; $48c5: $ff
	adc $ff                                          ; $48c6: $ce $ff
	ld h, b                                          ; $48c8: $60
	rst $38                                          ; $48c9: $ff
	jr nz, @+$01                                     ; $48ca: $20 $ff

	ld bc, $00ff                                     ; $48cc: $01 $ff $00
	rst $38                                          ; $48cf: $ff
	nop                                              ; $48d0: $00
	add b                                            ; $48d1: $80
	cp $80                                           ; $48d2: $fe $80
	jr nz, jr_061_48d6                               ; $48d4: $20 $00

jr_061_48d6:
	jr nc, jr_061_48d8                               ; $48d6: $30 $00

jr_061_48d8:
	ld e, l                                          ; $48d8: $5d
	or e                                             ; $48d9: $b3
	or a                                             ; $48da: $b7
	reti                                             ; $48db: $d9


	jp z, Jump_061_6dfd                              ; $48dc: $ca $fd $6d

	cp $76                                           ; $48df: $fe $76
	rst SubAFromDE                                          ; $48e1: $df
	cp a                                             ; $48e2: $bf
	db $ed                                           ; $48e3: $ed
	rst $38                                          ; $48e4: $ff
	ld l, b                                          ; $48e5: $68
	rst $38                                          ; $48e6: $ff
	ld a, h                                          ; $48e7: $7c
	rst AddAOntoHL                                          ; $48e8: $ef
	rst GetHLinHL                                          ; $48e9: $cf
	bit 1, [hl]                                      ; $48ea: $cb $4e
	ld a, e                                          ; $48ec: $7b
	ld a, h                                          ; $48ed: $7c
	ld e, l                                          ; $48ee: $5d
	ld a, b                                          ; $48ef: $78
	ld [hl], a                                       ; $48f0: $77
	inc h                                            ; $48f1: $24
	ccf                                              ; $48f2: $3f
	add b                                            ; $48f3: $80
	jr jr_061_48f7                                   ; $48f4: $18 $01

	nop                                              ; $48f6: $00

jr_061_48f7:
	inc bc                                           ; $48f7: $03
	nop                                              ; $48f8: $00
	db $e4                                           ; $48f9: $e4
	ccf                                              ; $48fa: $3f
	ld d, d                                          ; $48fb: $52
	cp a                                             ; $48fc: $bf
	or d                                             ; $48fd: $b2
	rst SubAFromDE                                          ; $48fe: $df
	jp z, Jump_061_6dff                              ; $48ff: $ca $ff $6d

	rst $38                                          ; $4902: $ff
	ld [hl], l                                       ; $4903: $75
	rst $38                                          ; $4904: $ff
	rst SubAFromDE                                          ; $4905: $df
	rst $38                                          ; $4906: $ff
	push af                                          ; $4907: $f5
	ld e, e                                          ; $4908: $5b
	rst SubAFromDE                                          ; $4909: $df
	ld [hl], l                                       ; $490a: $75
	rst $38                                          ; $490b: $ff
	dec a                                            ; $490c: $3d
	rst $38                                          ; $490d: $ff
	ld sp, $15ff                                     ; $490e: $31 $ff $15
	rst $38                                          ; $4911: $ff
	add hl, bc                                       ; $4912: $09
	adc a                                            ; $4913: $8f
	cp $03                                           ; $4914: $fe $03
	cp $07                                           ; $4916: $fe $07
	cp $1f                                           ; $4918: $fe $1f
	ccf                                              ; $491a: $3f
	ld a, $7f                                        ; $491b: $3e $7f
	ld a, [hl]                                       ; $491d: $7e
	rst $38                                          ; $491e: $ff
	db $fd                                           ; $491f: $fd
	rst $38                                          ; $4920: $ff
	db $fd                                           ; $4921: $fd
	db $fd                                           ; $4922: $fd
	push af                                          ; $4923: $f5
	ld [hl], a                                       ; $4924: $77
	cp $9d                                           ; $4925: $fe $9d
	ccf                                              ; $4927: $3f
	dec [hl]                                         ; $4928: $35
	ld a, e                                          ; $4929: $7b
	cp $92                                           ; $492a: $fe $92
	dec sp                                           ; $492c: $3b
	ccf                                              ; $492d: $3f
	dec sp                                           ; $492e: $3b
	rra                                              ; $492f: $1f
	dec de                                           ; $4930: $1b
	rla                                              ; $4931: $17
	dec de                                           ; $4932: $1b
	rla                                              ; $4933: $17
	dec e                                            ; $4934: $1d
	daa                                              ; $4935: $27
	dec a                                            ; $4936: $3d
	ld b, a                                          ; $4937: $47
	ld a, l                                          ; $4938: $7d
	inc sp                                           ; $4939: $33
	ld b, b                                          ; $493a: $40
	sub [hl]                                         ; $493b: $96
	ld b, b                                          ; $493c: $40
	rst $38                                          ; $493d: $ff
	ld a, [de]                                       ; $493e: $1a
	rst FarCall                                          ; $493f: $f7
	inc sp                                           ; $4940: $33
	rst $38                                          ; $4941: $ff
	ld e, a                                          ; $4942: $5f
	ld d, $1f                                        ; $4943: $16 $1f
	inc bc                                           ; $4945: $03
	ld b, b                                          ; $4946: $40
	scf                                              ; $4947: $37
	ld b, b                                          ; $4948: $40
	ld a, a                                          ; $4949: $7f
	ld b, d                                          ; $494a: $42
	ld a, e                                          ; $494b: $7b
	ld a, $2b                                        ; $494c: $3e $2b
	ld b, b                                          ; $494e: $40
	ld a, e                                          ; $494f: $7b
	ld h, $7f                                        ; $4950: $26 $7f
	inc a                                            ; $4952: $3c
	sub e                                            ; $4953: $93
	rst SubAFromDE                                          ; $4954: $df
	rst GetHLinHL                                          ; $4955: $cf
	ld sp, hl                                        ; $4956: $f9
	ld a, h                                          ; $4957: $7c
	ld e, a                                          ; $4958: $5f
	ld a, b                                          ; $4959: $78
	scf                                              ; $495a: $37
	jr nz, jr_061_499c                               ; $495b: $20 $3f

	db $10                                           ; $495d: $10
	inc bc                                           ; $495e: $03
	nop                                              ; $495f: $00
	dec hl                                           ; $4960: $2b
	add b                                            ; $4961: $80
	ld a, e                                          ; $4962: $7b
	ret c                                            ; $4963: $d8

	sub a                                            ; $4964: $97
	ei                                               ; $4965: $fb
	dec bc                                           ; $4966: $0b
	ld a, a                                          ; $4967: $7f
	ccf                                              ; $4968: $3f
	sbc [hl]                                         ; $4969: $9e
	inc c                                            ; $496a: $0c
	add b                                            ; $496b: $80
	add b                                            ; $496c: $80
	inc bc                                           ; $496d: $03
	add b                                            ; $496e: $80
	ccf                                              ; $496f: $3f
	add b                                            ; $4970: $80
	ld a, e                                          ; $4971: $7b
	cp $9b                                           ; $4972: $fe $9b
	add c                                            ; $4974: $81
	ld bc, $8080                                     ; $4975: $01 $80 $80
	dec hl                                           ; $4978: $2b
	add b                                            ; $4979: $80
	ld [hl], a                                       ; $497a: $77
	cp $99                                           ; $497b: $fe $99
	rlca                                             ; $497d: $07
	rst SubAFromDE                                          ; $497e: $df
	call c, Call_061_787f                            ; $497f: $dc $7f $78
	ccf                                              ; $4982: $3f
	ld a, d                                          ; $4983: $7a
	ret nz                                           ; $4984: $c0

	inc hl                                           ; $4985: $23
	add b                                            ; $4986: $80
	sbc b                                            ; $4987: $98
	inc bc                                           ; $4988: $03
	rst $38                                          ; $4989: $ff
	inc e                                            ; $498a: $1c
	ccf                                              ; $498b: $3f
	inc bc                                           ; $498c: $03
	cp [hl]                                          ; $498d: $be
	inc a                                            ; $498e: $3c
	inc hl                                           ; $498f: $23
	and b                                            ; $4990: $a0
	ld a, e                                          ; $4991: $7b
	ld e, $9e                                        ; $4992: $1e $9e
	and b                                            ; $4994: $a0
	rra                                              ; $4995: $1f
	and b                                            ; $4996: $a0
	sbc [hl]                                         ; $4997: $9e
	ld a, b                                          ; $4998: $78
	ld a, e                                          ; $4999: $7b
	ret nz                                           ; $499a: $c0

	sbc [hl]                                         ; $499b: $9e

jr_061_499c:
	db $fc                                           ; $499c: $fc
	ld [hl], a                                       ; $499d: $77
	and b                                            ; $499e: $a0
	sub h                                            ; $499f: $94
	jr c, jr_061_49a2                                ; $49a0: $38 $00

jr_061_49a2:
	ld [hl], b                                       ; $49a2: $70
	nop                                              ; $49a3: $00
	dec c                                            ; $49a4: $0d
	ld b, $20                                        ; $49a5: $06 $20
	db $10                                           ; $49a7: $10
	ld [bc], a                                       ; $49a8: $02
	nop                                              ; $49a9: $00
	inc c                                            ; $49aa: $0c
	db $fc                                           ; $49ab: $fc
	add b                                            ; $49ac: $80
	pop bc                                           ; $49ad: $c1
	add b                                            ; $49ae: $80
	db $ed                                           ; $49af: $ed
	di                                               ; $49b0: $f3
	rst $38                                          ; $49b1: $ff
	cp $6d                                           ; $49b2: $fe $6d
	cp $4d                                           ; $49b4: $fe $4d
	cp $5b                                           ; $49b6: $fe $5b
	xor $7e                                          ; $49b8: $ee $7e
	jp c, $deb6                                      ; $49ba: $da $b6 $de

	rlca                                             ; $49bd: $07
	nop                                              ; $49be: $00
	rlca                                             ; $49bf: $07
	nop                                              ; $49c0: $00
	rrca                                             ; $49c1: $0f
	nop                                              ; $49c2: $00
	rrca                                             ; $49c3: $0f
	ld bc, $031f                                     ; $49c4: $01 $1f $03
	rra                                              ; $49c7: $1f
	rlca                                             ; $49c8: $07
	ccf                                              ; $49c9: $3f
	rrca                                             ; $49ca: $0f
	rst SubAFromDE                                          ; $49cb: $df
	sbc [hl]                                         ; $49cc: $9e
	ccf                                              ; $49cd: $3f
	ld a, d                                          ; $49ce: $7a
	ld d, e                                          ; $49cf: $53
	sbc h                                            ; $49d0: $9c
	cp $bf                                           ; $49d1: $fe $bf
	ld a, b                                          ; $49d3: $78
	ld [hl], a                                       ; $49d4: $77
	cp h                                             ; $49d5: $bc
	ld a, a                                          ; $49d6: $7f
	ld [$c27f], a                                    ; $49d7: $ea $7f $c2
	rst $38                                          ; $49da: $ff
	ld [hl], a                                       ; $49db: $77
	ret nz                                           ; $49dc: $c0

	sbc d                                            ; $49dd: $9a
	ld c, $03                                        ; $49de: $0e $03
	inc hl                                           ; $49e0: $23
	db $10                                           ; $49e1: $10
	ld e, $fe                                        ; $49e2: $1e $fe
	ld [hl], a                                       ; $49e4: $77
	cp [hl]                                          ; $49e5: $be
	ld b, a                                          ; $49e6: $47
	ret nz                                           ; $49e7: $c0

	ld [hl], a                                       ; $49e8: $77
	ldh [$99], a                                     ; $49e9: $e0 $99
	inc e                                            ; $49eb: $1c
	inc bc                                           ; $49ec: $03
	inc hl                                           ; $49ed: $23
	ld [de], a                                       ; $49ee: $12
	ld d, $0c                                        ; $49ef: $16 $0c
	ld [hl], a                                       ; $49f1: $77
	ldh [c], a                                       ; $49f2: $e2
	ld a, a                                          ; $49f3: $7f
	db $fc                                           ; $49f4: $fc
	cpl                                              ; $49f5: $2f
	ldh [$9a], a                                     ; $49f6: $e0 $9a
	ld [hl-], a                                      ; $49f8: $32
	inc de                                           ; $49f9: $13
	rra                                              ; $49fa: $1f
	ld e, $1e                                        ; $49fb: $1e $1e
	ld [hl], e                                       ; $49fd: $73
	sbc $47                                          ; $49fe: $de $47
	ldh [$c2], a                                     ; $4a00: $e0 $c2
	ld bc, $2f84                                     ; $4a02: $01 $84 $2f
	jr @+$2d                                         ; $4a05: $18 $2b

	inc e                                            ; $4a07: $1c
	dec hl                                           ; $4a08: $2b
	inc e                                            ; $4a09: $1c
	xor e                                            ; $4a0a: $ab
	inc e                                            ; $4a0b: $1c
	ld l, l                                          ; $4a0c: $6d
	sbc [hl]                                         ; $4a0d: $9e
	db $ed                                           ; $4a0e: $ed
	sbc [hl]                                         ; $4a0f: $9e
	and h                                            ; $4a10: $a4
	rst SubAFromDE                                          ; $4a11: $df
	or $4f                                           ; $4a12: $f6 $4f
	ld d, a                                          ; $4a14: $57
	db $ed                                           ; $4a15: $ed
	dec h                                            ; $4a16: $25
	rst $38                                          ; $4a17: $ff
	db $d3                                           ; $4a18: $d3
	cp $ea                                           ; $4a19: $fe $ea
	rst $38                                          ; $4a1b: $ff
	and a                                            ; $4a1c: $a7
	rst $38                                          ; $4a1d: $ff
	and [hl]                                         ; $4a1e: $a6
	ld a, e                                          ; $4a1f: $7b
	db $fc                                           ; $4a20: $fc
	ld a, a                                          ; $4a21: $7f
	cp $9e                                           ; $4a22: $fe $9e
	ld c, d                                          ; $4a24: $4a
	ld [hl], e                                       ; $4a25: $73
	cp $80                                           ; $4a26: $fe $80
	ld d, d                                          ; $4a28: $52
	rst $38                                          ; $4a29: $ff
	ld [hl], l                                       ; $4a2a: $75
	rst SubAFromDE                                          ; $4a2b: $df
	or l                                             ; $4a2c: $b5
	rst SubAFromDE                                          ; $4a2d: $df
	sub l                                            ; $4a2e: $95
	rst $38                                          ; $4a2f: $ff
	ld [$2abf], a                                    ; $4a30: $ea $bf $2a
	rst $38                                          ; $4a33: $ff
	push de                                          ; $4a34: $d5
	ld a, [hl]                                       ; $4a35: $7e
	cp h                                             ; $4a36: $bc
	sub $ae                                          ; $4a37: $d6 $ae
	db $f4                                           ; $4a39: $f4
	ld [hl], l                                       ; $4a3a: $75
	xor h                                            ; $4a3b: $ac
	ld e, d                                          ; $4a3c: $5a
	db $ed                                           ; $4a3d: $ed
	ld e, l                                          ; $4a3e: $5d
	db $eb                                           ; $4a3f: $eb
	bit 7, a                                         ; $4a40: $cb $7f
	rst SubAFromDE                                          ; $4a42: $df
	adc e                                            ; $4a43: $8b
	sbc e                                            ; $4a44: $9b
	call $80bf                                       ; $4a45: $cd $bf $80
	call $efdc                                       ; $4a48: $cd $dc $ef
	sub $ef                                          ; $4a4b: $d6 $ef
	rst AddAOntoHL                                          ; $4a4d: $ef
	push af                                          ; $4a4e: $f5
	rst FarCall                                          ; $4a4f: $f7
	cp h                                             ; $4a50: $bc
	ld e, e                                          ; $4a51: $5b
	xor $77                                          ; $4a52: $ee $77
	cp $ff                                           ; $4a54: $fe $ff
	adc $ff                                          ; $4a56: $ce $ff
	ld b, b                                          ; $4a58: $40
	rst $38                                          ; $4a59: $ff
	ld a, [de]                                       ; $4a5a: $1a
	rst FarCall                                          ; $4a5b: $f7
	inc sp                                           ; $4a5c: $33
	rst $38                                          ; $4a5d: $ff
	ld e, a                                          ; $4a5e: $5f
	ld d, $1f                                        ; $4a5f: $16 $1f
	sbc l                                            ; $4a61: $9d
	ld [$848a], sp                                   ; $4a62: $08 $8a $84
	ret nz                                           ; $4a65: $c0

	add b                                            ; $4a66: $80
	sbc $c0                                          ; $4a67: $de $c0
	add b                                            ; $4a69: $80
	ldh [$60], a                                     ; $4a6a: $e0 $60
	ldh a, [$78]                                     ; $4a6c: $f0 $78
	ldh a, [$38]                                     ; $4a6e: $f0 $38
	db $fc                                           ; $4a70: $fc
	cp a                                             ; $4a71: $bf
	ld a, [hl]                                       ; $4a72: $7e
	or a                                             ; $4a73: $b7
	ld a, a                                          ; $4a74: $7f
	rst SubAFromHL                                          ; $4a75: $d7
	ld a, a                                          ; $4a76: $7f
	ld d, l                                          ; $4a77: $55
	rst $38                                          ; $4a78: $ff
	ld b, l                                          ; $4a79: $45
	rst $38                                          ; $4a7a: $ff
	add l                                            ; $4a7b: $85
	rst $38                                          ; $4a7c: $ff
	xor a                                            ; $4a7d: $af
	db $dd                                           ; $4a7e: $dd
	xor e                                            ; $4a7f: $ab
	db $dd                                           ; $4a80: $dd
	cp d                                             ; $4a81: $ba
	rst GetHLinHL                                          ; $4a82: $cf
	rst FarCall                                          ; $4a83: $f7
	add hl, de                                       ; $4a84: $19
	ld l, d                                          ; $4a85: $6a
	sbc l                                            ; $4a86: $9d
	cp l                                             ; $4a87: $bd
	adc $7f                                          ; $4a88: $ce $7f
	jp nz, $e793                                     ; $4a8a: $c2 $93 $e7

	cp l                                             ; $4a8d: $bd
	ld [hl], d                                       ; $4a8e: $72
	rst SubAFromDE                                          ; $4a8f: $df
	rst $38                                          ; $4a90: $ff
	rst GetHLinHL                                          ; $4a91: $cf
	rst $38                                          ; $4a92: $ff
	ld h, d                                          ; $4a93: $62
	rst $38                                          ; $4a94: $ff
	inc h                                            ; $4a95: $24
	rst $38                                          ; $4a96: $ff
	ld bc, $fe7b                                     ; $4a97: $01 $7b $fe
	cp h                                             ; $4a9a: $bc
	add b                                            ; $4a9b: $80
	nop                                              ; $4a9c: $00
	jr nz, jr_061_4acf                               ; $4a9d: $20 $30

	ld e, l                                          ; $4a9f: $5d
	add e                                            ; $4aa0: $83
	or e                                             ; $4aa1: $b3
	or a                                             ; $4aa2: $b7
	reti                                             ; $4aa3: $d9


	jp z, Jump_061_6dfd                              ; $4aa4: $ca $fd $6d

	cp $76                                           ; $4aa7: $fe $76
	rst SubAFromDE                                          ; $4aa9: $df
	cp a                                             ; $4aaa: $bf
	db $ed                                           ; $4aab: $ed
	rst $38                                          ; $4aac: $ff
	add sp, -$01                                     ; $4aad: $e8 $ff
	jr nz, @+$01                                     ; $4aaf: $20 $ff

	db $fc                                           ; $4ab1: $fc
	rst SubAFromDE                                          ; $4ab2: $df
	rst GetHLinHL                                          ; $4ab3: $cf
	ld a, e                                          ; $4ab4: $7b
	ld a, h                                          ; $4ab5: $7c
	ld e, l                                          ; $4ab6: $5d
	ld a, b                                          ; $4ab7: $78
	ld [hl], a                                       ; $4ab8: $77
	inc h                                            ; $4ab9: $24
	ccf                                              ; $4aba: $3f
	jr jr_061_4abe                                   ; $4abb: $18 $01

	cp a                                             ; $4abd: $bf

jr_061_4abe:
	inc bc                                           ; $4abe: $03
	db $e4                                           ; $4abf: $e4
	add b                                            ; $4ac0: $80
	ccf                                              ; $4ac1: $3f
	ld d, d                                          ; $4ac2: $52
	cp a                                             ; $4ac3: $bf
	or d                                             ; $4ac4: $b2
	rst SubAFromDE                                          ; $4ac5: $df
	jp z, Jump_061_6dff                              ; $4ac6: $ca $ff $6d

	rst $38                                          ; $4ac9: $ff
	ld [hl], l                                       ; $4aca: $75
	rst $38                                          ; $4acb: $ff
	rst SubAFromDE                                          ; $4acc: $df
	rst $38                                          ; $4acd: $ff
	push af                                          ; $4ace: $f5

jr_061_4acf:
	ld e, e                                          ; $4acf: $5b
	rst SubAFromDE                                          ; $4ad0: $df
	ld [hl], l                                       ; $4ad1: $75
	rst $38                                          ; $4ad2: $ff
	dec a                                            ; $4ad3: $3d
	rst $38                                          ; $4ad4: $ff
	ld sp, $15ff                                     ; $4ad5: $31 $ff $15
	rst $38                                          ; $4ad8: $ff
	add hl, bc                                       ; $4ad9: $09
	cp $03                                           ; $4ada: $fe $03
	cp $07                                           ; $4adc: $fe $07
	cp $1f                                           ; $4ade: $fe $1f
	sub l                                            ; $4ae0: $95
	ccf                                              ; $4ae1: $3f
	ld a, $7f                                        ; $4ae2: $3e $7f
	ld a, [hl]                                       ; $4ae4: $7e
	rst $38                                          ; $4ae5: $ff
	db $fd                                           ; $4ae6: $fd
	rst $38                                          ; $4ae7: $ff
	db $fd                                           ; $4ae8: $fd
	db $fd                                           ; $4ae9: $fd
	push af                                          ; $4aea: $f5
	ld [hl], a                                       ; $4aeb: $77
	cp $9d                                           ; $4aec: $fe $9d
	ccf                                              ; $4aee: $3f
	dec [hl]                                         ; $4aef: $35
	ld a, e                                          ; $4af0: $7b
	cp $92                                           ; $4af1: $fe $92
	dec sp                                           ; $4af3: $3b
	ccf                                              ; $4af4: $3f
	dec sp                                           ; $4af5: $3b
	rra                                              ; $4af6: $1f
	dec de                                           ; $4af7: $1b
	rla                                              ; $4af8: $17
	dec de                                           ; $4af9: $1b
	rla                                              ; $4afa: $17
	dec e                                            ; $4afb: $1d
	daa                                              ; $4afc: $27
	dec a                                            ; $4afd: $3d
	ld b, a                                          ; $4afe: $47
	ld a, l                                          ; $4aff: $7d
	dec hl                                           ; $4b00: $2b
	ld b, b                                          ; $4b01: $40
	sbc d                                            ; $4b02: $9a
	inc c                                            ; $4b03: $0c
	rst FarCall                                          ; $4b04: $f7
	inc de                                           ; $4b05: $13
	rst $38                                          ; $4b06: $ff
	ccf                                              ; $4b07: $3f
	inc bc                                           ; $4b08: $03
	ld b, b                                          ; $4b09: $40
	ld d, e                                          ; $4b0a: $53
	ld b, b                                          ; $4b0b: $40
	sbc l                                            ; $4b0c: $9d
	ld [hl], e                                       ; $4b0d: $73
	sbc $7b                                          ; $4b0e: $de $7b
	ld b, b                                          ; $4b10: $40
	sbc d                                            ; $4b11: $9a
	ld h, e                                          ; $4b12: $63
	rst $38                                          ; $4b13: $ff
	ld h, $ff                                        ; $4b14: $26 $ff
	nop                                              ; $4b16: $00
	dec de                                           ; $4b17: $1b
	ld b, b                                          ; $4b18: $40
	cp a                                             ; $4b19: $bf
	rst $38                                          ; $4b1a: $ff
	rst $38                                          ; $4b1b: $ff
	sub l                                            ; $4b1c: $95
	ld a, h                                          ; $4b1d: $7c
	rst SubAFromDE                                          ; $4b1e: $df
	rst GetHLinHL                                          ; $4b1f: $cf
	ld sp, hl                                        ; $4b20: $f9
	ld a, h                                          ; $4b21: $7c
	ld e, a                                          ; $4b22: $5f
	ld a, b                                          ; $4b23: $78
	scf                                              ; $4b24: $37
	jr nz, @+$41                                     ; $4b25: $20 $3f

	cp a                                             ; $4b27: $bf
	inc bc                                           ; $4b28: $03
	rst SubAFromDE                                          ; $4b29: $df
	ld d, e                                          ; $4b2a: $53
	add b                                            ; $4b2b: $80
	sub a                                            ; $4b2c: $97
	ld a, e                                          ; $4b2d: $7b
	adc $5f                                          ; $4b2e: $ce $5f
	and $f7                                          ; $4b30: $e6 $f7

jr_061_4b32:
	ld a, [$4eff]                                    ; $4b32: $fa $ff $4e
	ld [hl], a                                       ; $4b35: $77
	ret c                                            ; $4b36: $d8

	sub a                                            ; $4b37: $97
	ei                                               ; $4b38: $fb
	dec bc                                           ; $4b39: $0b
	ld a, a                                          ; $4b3a: $7f
	ccf                                              ; $4b3b: $3f
	sbc [hl]                                         ; $4b3c: $9e
	inc c                                            ; $4b3d: $0c
	add b                                            ; $4b3e: $80
	add b                                            ; $4b3f: $80
	inc bc                                           ; $4b40: $03
	add b                                            ; $4b41: $80
	ccf                                              ; $4b42: $3f
	add b                                            ; $4b43: $80
	cp a                                             ; $4b44: $bf
	rst $38                                          ; $4b45: $ff
	add c                                            ; $4b46: $81
	sbc h                                            ; $4b47: $9c
	ld bc, $8080                                     ; $4b48: $01 $80 $80
	dec hl                                           ; $4b4b: $2b
	add b                                            ; $4b4c: $80
	cp a                                             ; $4b4d: $bf
	rst $38                                          ; $4b4e: $ff
	rst $38                                          ; $4b4f: $ff
	sbc d                                            ; $4b50: $9a
	rlca                                             ; $4b51: $07
	rst SubAFromDE                                          ; $4b52: $df
	call c, Call_061_787f                            ; $4b53: $dc $7f $78
	inc de                                           ; $4b56: $13
	add b                                            ; $4b57: $80
	sbc b                                            ; $4b58: $98
	inc bc                                           ; $4b59: $03
	rst $38                                          ; $4b5a: $ff
	inc e                                            ; $4b5b: $1c
	ccf                                              ; $4b5c: $3f
	inc bc                                           ; $4b5d: $03
	cp [hl]                                          ; $4b5e: $be
	inc a                                            ; $4b5f: $3c
	inc hl                                           ; $4b60: $23
	and b                                            ; $4b61: $a0
	cp l                                             ; $4b62: $bd
	add b                                            ; $4b63: $80
	and b                                            ; $4b64: $a0
	jr nc, jr_061_4bc4                               ; $4b65: $30 $5d

	cpl                                              ; $4b67: $2f
	and b                                            ; $4b68: $a0
	sbc [hl]                                         ; $4b69: $9e
	ld a, b                                          ; $4b6a: $78
	ld a, e                                          ; $4b6b: $7b
	ret nz                                           ; $4b6c: $c0

	sbc [hl]                                         ; $4b6d: $9e
	db $fc                                           ; $4b6e: $fc
	ld [hl], a                                       ; $4b6f: $77
	and b                                            ; $4b70: $a0
	sbc [hl]                                         ; $4b71: $9e
	jr c, jr_061_4b32                                ; $4b72: $38 $be

	ld [hl], b                                       ; $4b74: $70
	nop                                              ; $4b75: $00
	jr @-$61                                         ; $4b76: $18 $9d

	inc c                                            ; $4b78: $0c
	ld bc, $0cbd                                     ; $4b79: $01 $bd $0c
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	pop bc                                           ; $4b7e: $c1
	adc a                                            ; $4b7f: $8f
	add b                                            ; $4b80: $80
	db $ed                                           ; $4b81: $ed
	di                                               ; $4b82: $f3
	rst $38                                          ; $4b83: $ff
	cp $6d                                           ; $4b84: $fe $6d
	cp $4d                                           ; $4b86: $fe $4d
	cp $5b                                           ; $4b88: $fe $5b
	xor $7e                                          ; $4b8a: $ee $7e
	jp c, $deb6                                      ; $4b8c: $da $b6 $de

	rlca                                             ; $4b8f: $07
	cp [hl]                                          ; $4b90: $be
	rlca                                             ; $4b91: $07
	rrca                                             ; $4b92: $0f
	rrca                                             ; $4b93: $0f
	sub [hl]                                         ; $4b94: $96
	ld bc, $031f                                     ; $4b95: $01 $1f $03
	rra                                              ; $4b98: $1f
	rlca                                             ; $4b99: $07
	ccf                                              ; $4b9a: $3f
	rrca                                             ; $4b9b: $0f
	rst SubAFromDE                                          ; $4b9c: $df
	ccf                                              ; $4b9d: $3f
	ld a, d                                          ; $4b9e: $7a
	ld d, e                                          ; $4b9f: $53
	sbc h                                            ; $4ba0: $9c
	cp $bf                                           ; $4ba1: $fe $bf
	ld a, b                                          ; $4ba3: $78
	ld [hl], a                                       ; $4ba4: $77
	cp h                                             ; $4ba5: $bc
	ld a, a                                          ; $4ba6: $7f
	ld [$c27f], a                                    ; $4ba7: $ea $7f $c2
	rst $38                                          ; $4baa: $ff
	ld l, a                                          ; $4bab: $6f
	ret nz                                           ; $4bac: $c0

	sbc d                                            ; $4bad: $9a
	ld [de], a                                       ; $4bae: $12
	inc b                                            ; $4baf: $04
	rra                                              ; $4bb0: $1f
	ld c, $0a                                        ; $4bb1: $0e $0a
	inc sp                                           ; $4bb3: $33
	ret nz                                           ; $4bb4: $c0

	ld e, a                                          ; $4bb5: $5f
	ldh [$9e], a                                     ; $4bb6: $e0 $9e
	rla                                              ; $4bb8: $17
	ld [hl], e                                       ; $4bb9: $73
	sbc $1f                                          ; $4bba: $de $1f
	ldh [$7b], a                                     ; $4bbc: $e0 $7b
	cp [hl]                                          ; $4bbe: $be
	sbc [hl]                                         ; $4bbf: $9e
	inc b                                            ; $4bc0: $04
	ccf                                              ; $4bc1: $3f
	ldh [$e2], a                                     ; $4bc2: $e0 $e2

jr_061_4bc4:
	add c                                            ; $4bc4: $81
	sub [hl]                                         ; $4bc5: $96
	cpl                                              ; $4bc6: $2f
	dec hl                                           ; $4bc7: $2b
	dec hl                                           ; $4bc8: $2b
	xor e                                            ; $4bc9: $ab
	ld l, l                                          ; $4bca: $6d
	db $ed                                           ; $4bcb: $ed
	and h                                            ; $4bcc: $a4
	or $18                                           ; $4bcd: $f6 $18
	sbc $1c                                          ; $4bcf: $de $1c
	rst SubAFromDE                                          ; $4bd1: $df
	sbc [hl]                                         ; $4bd2: $9e
	sub d                                            ; $4bd3: $92
	rst SubAFromDE                                          ; $4bd4: $df
	ld c, a                                          ; $4bd5: $4f
	ld d, a                                          ; $4bd6: $57
	dec h                                            ; $4bd7: $25
	db $d3                                           ; $4bd8: $d3
	ld [$a6a7], a                                    ; $4bd9: $ea $a7 $a6
	and a                                            ; $4bdc: $a7
	and a                                            ; $4bdd: $a7
	db $ed                                           ; $4bde: $ed
	rst $38                                          ; $4bdf: $ff
	cp $dc                                           ; $4be0: $fe $dc
	rst $38                                          ; $4be2: $ff
	sbc $4a                                          ; $4be3: $de $4a
	sbc d                                            ; $4be5: $9a
	ld d, d                                          ; $4be6: $52
	ld [hl], l                                       ; $4be7: $75
	or l                                             ; $4be8: $b5
	sub l                                            ; $4be9: $95

jr_061_4bea:
	ld [$ffdd], a                                    ; $4bea: $ea $dd $ff
	rst SubAFromDE                                          ; $4bed: $df
	rst SubAFromDE                                          ; $4bee: $df
	add b                                            ; $4bef: $80
	rst $38                                          ; $4bf0: $ff
	cp a                                             ; $4bf1: $bf
	ld a, [hl+]                                      ; $4bf2: $2a
	push de                                          ; $4bf3: $d5
	cp h                                             ; $4bf4: $bc
	xor [hl]                                         ; $4bf5: $ae
	ld [hl], l                                       ; $4bf6: $75
	ld e, d                                          ; $4bf7: $5a
	ld e, l                                          ; $4bf8: $5d
	set 7, a                                         ; $4bf9: $cb $ff
	ld a, [hl]                                       ; $4bfb: $7e
	sub $f4                                          ; $4bfc: $d6 $f4
	xor h                                            ; $4bfe: $ac
	db $ed                                           ; $4bff: $ed
	db $eb                                           ; $4c00: $eb
	ld a, a                                          ; $4c01: $7f
	rst SubAFromDE                                          ; $4c02: $df
	sbc e                                            ; $4c03: $9b
	cp a                                             ; $4c04: $bf
	call c, $efd6                                    ; $4c05: $dc $d6 $ef
	rst FarCall                                          ; $4c08: $f7
	ld a, e                                          ; $4c09: $7b
	adc e                                            ; $4c0a: $8b
	call $efcd                                       ; $4c0b: $cd $cd $ef
	rst AddAOntoHL                                          ; $4c0e: $ef
	sbc e                                            ; $4c0f: $9b
	push af                                          ; $4c10: $f5
	cp h                                             ; $4c11: $bc
	adc $7f                                          ; $4c12: $ce $7f
	sbc $ff                                          ; $4c14: $de $ff
	sub d                                            ; $4c16: $92
	ei                                               ; $4c17: $fb
	rst $38                                          ; $4c18: $ff
	sub $9d                                          ; $4c19: $d6 $9d
	sbc $f2                                          ; $4c1b: $de $f2
	ld b, b                                          ; $4c1d: $40
	sbc [hl]                                         ; $4c1e: $9e
	inc sp                                           ; $4c1f: $33
	ld e, a                                          ; $4c20: $5f
	rst SubAFromDE                                          ; $4c21: $df
	ld [$de8a], sp                                   ; $4c22: $08 $8a $de
	ret nz                                           ; $4c25: $c0

	adc d                                            ; $4c26: $8a
	ld h, b                                          ; $4c27: $60
	ld a, b                                          ; $4c28: $78
	jr c, jr_061_4bea                                ; $4c29: $38 $bf

	add h                                            ; $4c2b: $84
	add b                                            ; $4c2c: $80
	ret nz                                           ; $4c2d: $c0

	ldh [$f0], a                                     ; $4c2e: $e0 $f0
	ldh a, [$fc]                                     ; $4c30: $f0 $fc
	ld a, [hl]                                       ; $4c32: $7e
	or a                                             ; $4c33: $b7
	rst SubAFromHL                                          ; $4c34: $d7
	ld d, l                                          ; $4c35: $55
	ld b, l                                          ; $4c36: $45
	add l                                            ; $4c37: $85
	xor a                                            ; $4c38: $af
	xor e                                            ; $4c39: $ab
	cp d                                             ; $4c3a: $ba
	ld a, a                                          ; $4c3b: $7f
	ld [hl], a                                       ; $4c3c: $77
	rst SubAFromHL                                          ; $4c3d: $d7
	rst SubAFromDE                                          ; $4c3e: $df
	db $dd                                           ; $4c3f: $dd
	adc [hl]                                         ; $4c40: $8e
	rst GetHLinHL                                          ; $4c41: $cf
	rst FarCall                                          ; $4c42: $f7
	ld l, d                                          ; $4c43: $6a
	cp l                                             ; $4c44: $bd
	sub $e7                                          ; $4c45: $d6 $e7
	ld [hl], e                                       ; $4c47: $73
	rst $38                                          ; $4c48: $ff
	rst $38                                          ; $4c49: $ff
	add hl, de                                       ; $4c4a: $19
	sbc l                                            ; $4c4b: $9d
	adc $ef                                          ; $4c4c: $ce $ef
	cp l                                             ; $4c4e: $bd
	rst SubAFromDE                                          ; $4c4f: $df
	adc $60                                          ; $4c50: $ce $60
	db $dd                                           ; $4c52: $dd
	rst $38                                          ; $4c53: $ff
	sbc b                                            ; $4c54: $98
	add b                                            ; $4c55: $80
	nop                                              ; $4c56: $00
	jr nz, jr_061_4c89                               ; $4c57: $20 $30

	jr nz, @+$03                                     ; $4c59: $20 $01

	ld bc, $80fc                                     ; $4c5b: $01 $fc $80
	ld e, l                                          ; $4c5e: $5d
	or a                                             ; $4c5f: $b7
	jp z, Jump_061_766d                              ; $4c60: $ca $6d $76

	cp a                                             ; $4c63: $bf
	rst $38                                          ; $4c64: $ff
	rst $38                                          ; $4c65: $ff
	or e                                             ; $4c66: $b3
	reti                                             ; $4c67: $d9


	db $fd                                           ; $4c68: $fd
	cp $df                                           ; $4c69: $fe $df
	db $fd                                           ; $4c6b: $fd
	ld l, h                                          ; $4c6c: $6c
	inc bc                                           ; $4c6d: $03
	rst $38                                          ; $4c6e: $ff
	rst AddAOntoHL                                          ; $4c6f: $ef
	ld a, e                                          ; $4c70: $7b
	ld e, l                                          ; $4c71: $5d
	ld [hl], a                                       ; $4c72: $77
	ccf                                              ; $4c73: $3f
	ld bc, $f803                                     ; $4c74: $01 $03 $f8
	adc $7f                                          ; $4c77: $ce $7f
	ld a, b                                          ; $4c79: $78
	inc h                                            ; $4c7a: $24
	jr jr_061_4c7d                                   ; $4c7b: $18 $00

jr_061_4c7d:
	sub e                                            ; $4c7d: $93
	nop                                              ; $4c7e: $00
	db $e4                                           ; $4c7f: $e4
	ld d, d                                          ; $4c80: $52
	or d                                             ; $4c81: $b2
	jp z, Jump_061_756d                              ; $4c82: $ca $6d $75

	rst SubAFromDE                                          ; $4c85: $df
	push af                                          ; $4c86: $f5
	ccf                                              ; $4c87: $3f
	cp a                                             ; $4c88: $bf

jr_061_4c89:
	rst SubAFromDE                                          ; $4c89: $df
	db $dd                                           ; $4c8a: $dd
	rst $38                                          ; $4c8b: $ff
	sbc [hl]                                         ; $4c8c: $9e
	db $db                                           ; $4c8d: $db
	ld [hl], e                                       ; $4c8e: $73
	ld a, [$fede]                                    ; $4c8f: $fa $de $fe
	sub [hl]                                         ; $4c92: $96
	ld [hl], l                                       ; $4c93: $75
	dec a                                            ; $4c94: $3d
	or c                                             ; $4c95: $b1
	dec d                                            ; $4c96: $15
	add hl, bc                                       ; $4c97: $09
	inc bc                                           ; $4c98: $03
	rlca                                             ; $4c99: $07
	rra                                              ; $4c9a: $1f
	ccf                                              ; $4c9b: $3f
	ld a, e                                          ; $4c9c: $7b
	sbc b                                            ; $4c9d: $98
	sbc $fd                                          ; $4c9e: $de $fd
	sbc d                                            ; $4ca0: $9a
	ccf                                              ; $4ca1: $3f
	ld a, $7e                                        ; $4ca2: $3e $7e
	db $fd                                           ; $4ca4: $fd
	db $fd                                           ; $4ca5: $fd
	sbc $f5                                          ; $4ca6: $de $f5
	sbc [hl]                                         ; $4ca8: $9e
	dec [hl]                                         ; $4ca9: $35
	sbc $3f                                          ; $4caa: $de $3f
	sub d                                            ; $4cac: $92
	rra                                              ; $4cad: $1f
	rla                                              ; $4cae: $17
	rla                                              ; $4caf: $17
	daa                                              ; $4cb0: $27
	ld b, a                                          ; $4cb1: $47
	dec [hl]                                         ; $4cb2: $35
	dec sp                                           ; $4cb3: $3b
	dec sp                                           ; $4cb4: $3b
	dec de                                           ; $4cb5: $1b
	dec de                                           ; $4cb6: $1b
	dec e                                            ; $4cb7: $1d
	dec a                                            ; $4cb8: $3d
	ld a, l                                          ; $4cb9: $7d
	scf                                              ; $4cba: $37
	ld b, b                                          ; $4cbb: $40
	ld a, a                                          ; $4cbc: $7f
	ccf                                              ; $4cbd: $3f
	sub l                                            ; $4cbe: $95
	or $fd                                           ; $4cbf: $f6 $fd
	sbc $f2                                          ; $4cc1: $de $f2
	ld h, b                                          ; $4cc3: $60
	add b                                            ; $4cc4: $80
	ld c, $13                                        ; $4cc5: $0e $13
	ccf                                              ; $4cc7: $3f
	ld l, c                                          ; $4cc8: $69
	inc hl                                           ; $4cc9: $23
	ld h, b                                          ; $4cca: $60
	rst $38                                          ; $4ccb: $ff
	ld [hl], e                                       ; $4ccc: $73
	ld e, a                                          ; $4ccd: $5f
	ld c, a                                          ; $4cce: $4f
	ld h, b                                          ; $4ccf: $60
	sub c                                            ; $4cd0: $91
	ld a, b                                          ; $4cd1: $78
	ld b, $ff                                        ; $4cd2: $06 $ff
	rst $38                                          ; $4cd4: $ff
	rst AddAOntoHL                                          ; $4cd5: $ef
	ld e, c                                          ; $4cd6: $59
	ld [hl], a                                       ; $4cd7: $77
	ccf                                              ; $4cd8: $3f
	ccf                                              ; $4cd9: $3f
	inc bc                                           ; $4cda: $03
	ld bc, $ce78                                     ; $4cdb: $01 $78 $ce
	ld a, l                                          ; $4cde: $7d
	dec sp                                           ; $4cdf: $3b
	ld h, b                                          ; $4ce0: $60
	sbc [hl]                                         ; $4ce1: $9e
	ld e, e                                          ; $4ce2: $5b
	ld h, a                                          ; $4ce3: $67
	ld h, b                                          ; $4ce4: $60
	sbc e                                            ; $4ce5: $9b
	push af                                          ; $4ce6: $f5
	dec a                                            ; $4ce7: $3d
	ld sp, $7795                                     ; $4ce8: $31 $95 $77
	ld h, b                                          ; $4ceb: $60
	inc sp                                           ; $4cec: $33
	add b                                            ; $4ced: $80
	ld a, d                                          ; $4cee: $7a
	cp [hl]                                          ; $4cef: $be
	sub l                                            ; $4cf0: $95
	adc $da                                          ; $4cf1: $ce $da
	ld h, b                                          ; $4cf3: $60
	ld b, b                                          ; $4cf4: $40
	add b                                            ; $4cf5: $80
	inc bc                                           ; $4cf6: $03
	dec bc                                           ; $4cf7: $0b
	ccf                                              ; $4cf8: $3f
	adc h                                            ; $4cf9: $8c
	call z, $c06e                                    ; $4cfa: $cc $6e $c0
	sbc [hl]                                         ; $4cfd: $9e
	adc h                                            ; $4cfe: $8c
	ld [bc], a                                       ; $4cff: $02
	ret nz                                           ; $4d00: $c0

	ld e, e                                          ; $4d01: $5b
	ld h, b                                          ; $4d02: $60
	sbc l                                            ; $4d03: $9d
	add b                                            ; $4d04: $80
	and b                                            ; $4d05: $a0
	ld [hl], a                                       ; $4d06: $77
	ld h, b                                          ; $4d07: $60
	rst $38                                          ; $4d08: $ff
	rst SubAFromDE                                          ; $4d09: $df
	add b                                            ; $4d0a: $80
	ld b, a                                          ; $4d0b: $47
	ld h, b                                          ; $4d0c: $60
	sbc [hl]                                         ; $4d0d: $9e
	ld c, $de                                        ; $4d0e: $0e $de
	rst $38                                          ; $4d10: $ff
	sbc l                                            ; $4d11: $9d
	rst AddAOntoHL                                          ; $4d12: $ef
	ld a, a                                          ; $4d13: $7f
	ld [hl], a                                       ; $4d14: $77
	ld h, b                                          ; $4d15: $60
	sbc e                                            ; $4d16: $9b
	nop                                              ; $4d17: $00
	inc e                                            ; $4d18: $1c
	rst AddAOntoHL                                          ; $4d19: $ef
	ld a, [hl]                                       ; $4d1a: $7e
	ld a, e                                          ; $4d1b: $7b
	ld h, b                                          ; $4d1c: $60
	cpl                                              ; $4d1d: $2f
	add b                                            ; $4d1e: $80
	rst SubAFromDE                                          ; $4d1f: $df
	rst $38                                          ; $4d20: $ff
	sub [hl]                                         ; $4d21: $96
	add $ce                                          ; $4d22: $c6 $ce
	ld e, b                                          ; $4d24: $58
	ld h, b                                          ; $4d25: $60
	add b                                            ; $4d26: $80
	inc bc                                           ; $4d27: $03
	inc c                                            ; $4d28: $0c
	inc bc                                           ; $4d29: $03
	sbc [hl]                                         ; $4d2a: $9e
	ld l, e                                          ; $4d2b: $6b
	add b                                            ; $4d2c: $80
	sbc [hl]                                         ; $4d2d: $9e
	sbc h                                            ; $4d2e: $9c
	inc bc                                           ; $4d2f: $03
	add b                                            ; $4d30: $80
	ld e, a                                          ; $4d31: $5f
	add b                                            ; $4d32: $80
	sbc [hl]                                         ; $4d33: $9e
	add c                                            ; $4d34: $81
	ld h, a                                          ; $4d35: $67
	add b                                            ; $4d36: $80
	ld b, d                                          ; $4d37: $42
	ldh [$9d], a                                     ; $4d38: $e0 $9d
	ld [hl], b                                       ; $4d3a: $70
	inc e                                            ; $4d3b: $1c
	call c, Call_061_7fff                            ; $4d3c: $dc $ff $7f
	ld a, a                                          ; $4d3f: $7f
	rst SubAFromDE                                          ; $4d40: $df
	inc bc                                           ; $4d41: $03
	rst $38                                          ; $4d42: $ff
	sbc h                                            ; $4d43: $9c
	inc a                                            ; $4d44: $3c
	ld bc, $1e7e                                     ; $4d45: $01 $7e $1e
	ldh [$9a], a                                     ; $4d48: $e0 $9a
	ld [hl], l                                       ; $4d4a: $75
	db $fd                                           ; $4d4b: $fd
	ld sp, $8915                                     ; $4d4c: $31 $15 $89
	ld a, d                                          ; $4d4f: $7a
	ldh [$99], a                                     ; $4d50: $e0 $99
	jr c, jr_061_4dc4                                ; $4d52: $38 $70

	inc b                                            ; $4d54: $04
	ld h, $1e                                        ; $4d55: $26 $1e
	inc e                                            ; $4d57: $1c
	db $fc                                           ; $4d58: $fc
	sbc [hl]                                         ; $4d59: $9e
	inc b                                            ; $4d5a: $04
	ld [hl], a                                       ; $4d5b: $77
	ld sp, hl                                        ; $4d5c: $f9
	sub l                                            ; $4d5d: $95
	pop bc                                           ; $4d5e: $c1
	db $ed                                           ; $4d5f: $ed
	rst $38                                          ; $4d60: $ff
	ld l, l                                          ; $4d61: $6d
	ld c, l                                          ; $4d62: $4d
	ld e, e                                          ; $4d63: $5b
	ld a, [hl]                                       ; $4d64: $7e
	or [hl]                                          ; $4d65: $b6
	add b                                            ; $4d66: $80
	di                                               ; $4d67: $f3
	sbc $fe                                          ; $4d68: $de $fe
	sub h                                            ; $4d6a: $94
	xor $da                                          ; $4d6b: $ee $da
	sbc $07                                          ; $4d6d: $de $07
	rlca                                             ; $4d6f: $07
	rrca                                             ; $4d70: $0f
	rrca                                             ; $4d71: $0f
	rra                                              ; $4d72: $1f
	rra                                              ; $4d73: $1f
	ccf                                              ; $4d74: $3f
	rst SubAFromDE                                          ; $4d75: $df
	cp $7d                                           ; $4d76: $fe $7d
	db $eb                                           ; $4d78: $eb
	ld a, a                                          ; $4d79: $7f
	db $f4                                           ; $4d7a: $f4
	sbc h                                            ; $4d7b: $9c
	ccf                                              ; $4d7c: $3f
	ld a, [hl]                                       ; $4d7d: $7e
	db $fd                                           ; $4d7e: $fd
	ld a, e                                          ; $4d7f: $7b
	sub e                                            ; $4d80: $93
	sbc c                                            ; $4d81: $99
	rrca                                             ; $4d82: $0f
	inc bc                                           ; $4d83: $03
	nop                                              ; $4d84: $00
	rst $38                                          ; $4d85: $ff
	cp $78                                           ; $4d86: $fe $78
	db $fc                                           ; $4d88: $fc
	ld e, e                                          ; $4d89: $5b
	ret nz                                           ; $4d8a: $c0

	sbc [hl]                                         ; $4d8b: $9e
	ld b, $37                                        ; $4d8c: $06 $37
	ret nz                                           ; $4d8e: $c0

	ld [hl], e                                       ; $4d8f: $73
	ldh [$9e], a                                     ; $4d90: $e0 $9e
	ld e, $6f                                        ; $4d92: $1e $6f
	ldh [$9d], a                                     ; $4d94: $e0 $9d
	ld e, $0c                                        ; $4d96: $1e $0c
	inc sp                                           ; $4d98: $33
	ldh [$9d], a                                     ; $4d99: $e0 $9d
	daa                                              ; $4d9b: $27
	rra                                              ; $4d9c: $1f
	ld [hl], a                                       ; $4d9d: $77
	rst SubAFromBC                                          ; $4d9e: $e7
	ld [hl], a                                       ; $4d9f: $77
	ldh [$9e], a                                     ; $4da0: $e0 $9e
	ld c, $3f                                        ; $4da2: $0e $3f
	ldh [$a2], a                                     ; $4da4: $e0 $a2
	add d                                            ; $4da6: $82
	add b                                            ; $4da7: $80
	nop                                              ; $4da8: $00
	ld bc, $0002                                     ; $4da9: $01 $02 $00
	inc b                                            ; $4dac: $04

jr_061_4dad:
	dec b                                            ; $4dad: $05
	add hl, bc                                       ; $4dae: $09
	ld a, [bc]                                       ; $4daf: $0a
	nop                                              ; $4db0: $00
	ld bc, $0303                                     ; $4db1: $01 $03 $03
	rlca                                             ; $4db4: $07
	ld b, $0e                                        ; $4db5: $06 $0e
	dec c                                            ; $4db7: $0d
	ld [bc], a                                       ; $4db8: $02
	dec d                                            ; $4db9: $15
	dec d                                            ; $4dba: $15
	ld a, [de]                                       ; $4dbb: $1a
	ld a, [bc]                                       ; $4dbc: $0a
	add hl, hl                                       ; $4dbd: $29
	dec l                                            ; $4dbe: $2d
	cpl                                              ; $4dbf: $2f
	dec c                                            ; $4dc0: $0d
	ld a, [de]                                       ; $4dc1: $1a
	ld a, [de]                                       ; $4dc2: $1a
	dec d                                            ; $4dc3: $15

jr_061_4dc4:
	dec d                                            ; $4dc4: $15
	ld a, $3a                                        ; $4dc5: $3e $3a
	sbc d                                            ; $4dc7: $9a
	jr c, @+$39                                      ; $4dc8: $38 $37

	scf                                              ; $4dca: $37
	dec sp                                           ; $4dcb: $3b
	dec sp                                           ; $4dcc: $3b
	db $dd                                           ; $4dcd: $dd
	dec hl                                           ; $4dce: $2b
	rst SubAFromDE                                          ; $4dcf: $df
	jr c, jr_061_4dad                                ; $4dd0: $38 $db

	inc [hl]                                         ; $4dd2: $34
	sbc l                                            ; $4dd3: $9d
	dec hl                                           ; $4dd4: $2b
	dec a                                            ; $4dd5: $3d
	db $db                                           ; $4dd6: $db
	dec d                                            ; $4dd7: $15
	sbc l                                            ; $4dd8: $9d
	inc [hl]                                         ; $4dd9: $34
	ld [hl-], a                                      ; $4dda: $32
	db $db                                           ; $4ddb: $db
	ld a, [de]                                       ; $4ddc: $1a
	sbc $0d                                          ; $4ddd: $de $0d
	call c, $de09                                    ; $4ddf: $dc $09 $de
	ld a, [bc]                                       ; $4de2: $0a
	call c, $de0e                                    ; $4de3: $dc $0e $de
	add hl, bc                                       ; $4de6: $09
	rst SubAFromDE                                          ; $4de7: $df
	ld [$0adf], sp                                   ; $4de8: $08 $df $0a
	sbc [hl]                                         ; $4deb: $9e
	inc c                                            ; $4dec: $0c
	sbc $0e                                          ; $4ded: $de $0e
	call c, Call_061_770f                            ; $4def: $dc $0f $77
	pop hl                                           ; $4df2: $e1
	sbc e                                            ; $4df3: $9b
	dec bc                                           ; $4df4: $0b
	ld a, [bc]                                       ; $4df5: $0a
	ld a, [bc]                                       ; $4df6: $0a
	dec bc                                           ; $4df7: $0b
	db $dd                                           ; $4df8: $dd
	ld c, $9e                                        ; $4df9: $0e $9e
	inc c                                            ; $4dfb: $0c
	sbc $0d                                          ; $4dfc: $de $0d
	sbc l                                            ; $4dfe: $9d
	inc de                                           ; $4dff: $13
	ld de, $16de                                     ; $4e00: $11 $de $16
	rst SubAFromDE                                          ; $4e03: $df
	rla                                              ; $4e04: $17
	sbc h                                            ; $4e05: $9c
	rra                                              ; $4e06: $1f
	dec e                                            ; $4e07: $1d
	rra                                              ; $4e08: $1f
	call c, $9e1b                                    ; $4e09: $dc $1b $9e
	inc de                                           ; $4e0c: $13
	ldh a, [$98]                                     ; $4e0d: $f0 $98
	ld bc, $0100                                     ; $4e0f: $01 $00 $01
	ld bc, $1003                                     ; $4e12: $01 $03 $10
	ld b, a                                          ; $4e15: $47
	ld a, e                                          ; $4e16: $7b
	ld a, [$f87b]                                    ; $4e17: $fa $7b $f8
	add b                                            ; $4e1a: $80

jr_061_4e1b:
	rra                                              ; $4e1b: $1f
	ld a, b                                          ; $4e1c: $78
	sbc b                                            ; $4e1d: $98
	dec h                                            ; $4e1e: $25
	ld d, a                                          ; $4e1f: $57
	rst AddAOntoHL                                          ; $4e20: $ef
	rst SubAFromHL                                          ; $4e21: $d7
	xor e                                            ; $4e22: $ab
	rrca                                             ; $4e23: $0f
	or [hl]                                          ; $4e24: $b6
	pop hl                                           ; $4e25: $e1
	jp $1e8f                                         ; $4e26: $c3 $8f $1e


	inc a                                            ; $4e29: $3c
	ld a, h                                          ; $4e2a: $7c
	ld a, [$3d5d]                                    ; $4e2b: $fa $5d $3d
	ld l, d                                          ; $4e2e: $6a
	ld l, h                                          ; $4e2f: $6c
	xor c                                            ; $4e30: $a9
	dec a                                            ; $4e31: $3d
	ld sp, $30b0                                     ; $4e32: $31 $b0 $30
	rst SubAFromHL                                          ; $4e35: $d7
	cp a                                             ; $4e36: $bf
	cp [hl]                                          ; $4e37: $be
	ld a, h                                          ; $4e38: $7c
	ld a, b                                          ; $4e39: $78
	sub h                                            ; $4e3a: $94
	ld a, b                                          ; $4e3b: $78
	ld [hl], c                                       ; $4e3c: $71
	or c                                             ; $4e3d: $b1
	inc h                                            ; $4e3e: $24
	ld h, $66                                        ; $4e3f: $26 $66
	ld l, l                                          ; $4e41: $6d
	ld h, l                                          ; $4e42: $65
	ld [hl], l                                       ; $4e43: $75
	ld [hl], c                                       ; $4e44: $71
	ld l, c                                          ; $4e45: $69
	sbc $b1                                          ; $4e46: $de $b1
	sub d                                            ; $4e48: $92
	or e                                             ; $4e49: $b3
	cp e                                             ; $4e4a: $bb
	cp e                                             ; $4e4b: $bb
	cp a                                             ; $4e4c: $bf
	cp a                                             ; $4e4d: $bf
	ld l, l                                          ; $4e4e: $6d
	ld l, a                                          ; $4e4f: $6f
	ld h, a                                          ; $4e50: $67
	ld h, a                                          ; $4e51: $67
	ld h, l                                          ; $4e52: $65
	ld [hl], l                                       ; $4e53: $75
	ld [hl], l                                       ; $4e54: $75
	halt                                             ; $4e55: $76
	reti                                             ; $4e56: $d9


	cp a                                             ; $4e57: $bf
	rst SubAFromDE                                          ; $4e58: $df
	ld d, [hl]                                       ; $4e59: $56
	sbc c                                            ; $4e5a: $99
	ld e, l                                          ; $4e5b: $5d
	ld d, l                                          ; $4e5c: $55
	ld d, a                                          ; $4e5d: $57
	or l                                             ; $4e5e: $b5
	cp l                                             ; $4e5f: $bd
	sub l                                            ; $4e60: $95
	call c, $debf                                    ; $4e61: $dc $bf $de
	ld e, a                                          ; $4e64: $5f
	rst SubAFromDE                                          ; $4e65: $df
	dec d                                            ; $4e66: $15
	sub [hl]                                         ; $4e67: $96
	ld d, e                                          ; $4e68: $53
	ld d, d                                          ; $4e69: $52
	ld d, $16                                        ; $4e6a: $16 $16
	ld d, a                                          ; $4e6c: $57
	ld [hl], a                                       ; $4e6d: $77
	ld e, a                                          ; $4e6e: $5f
	ld e, a                                          ; $4e6f: $5f
	rra                                              ; $4e70: $1f
	ld a, e                                          ; $4e71: $7b
	ld a, [hl]                                       ; $4e72: $7e
	rst SubAFromDE                                          ; $4e73: $df
	ld a, [de]                                       ; $4e74: $1a
	sbc [hl]                                         ; $4e75: $9e
	ld [de], a                                       ; $4e76: $12
	sbc $16                                          ; $4e77: $de $16
	sbc $1e                                          ; $4e79: $de $1e
	sbc h                                            ; $4e7b: $9c
	ld a, $1e                                        ; $4e7c: $3e $1e
	ld a, $de                                        ; $4e7e: $3e $de
	cp [hl]                                          ; $4e80: $be
	sbc c                                            ; $4e81: $99
	ld a, [$f3f3]                                    ; $4e82: $fa $f3 $f3
	ld a, $7e                                        ; $4e85: $3e $7e
	ld a, [hl]                                       ; $4e87: $7e
	call c, $9aff                                    ; $4e88: $dc $ff $9a
	di                                               ; $4e8b: $f3
	db $e3                                           ; $4e8c: $e3
	ei                                               ; $4e8d: $fb
	add a                                            ; $4e8e: $87
	add c                                            ; $4e8f: $81
	ld sp, hl                                        ; $4e90: $f9
	sbc h                                            ; $4e91: $9c
	db $10                                           ; $4e92: $10
	jr nz, jr_061_4ef5                               ; $4e93: $20 $60

	ld h, a                                          ; $4e95: $67
	ld hl, sp-$21                                    ; $4e96: $f8 $df
	jr nz, jr_061_4e1b                               ; $4e98: $20 $81

	or c                                             ; $4e9a: $b1
	ld d, h                                          ; $4e9b: $54
	ld a, [$ed1b]                                    ; $4e9c: $fa $1b $ed
	or a                                             ; $4e9f: $b7
	ld h, b                                          ; $4ea0: $60
	ld h, b                                          ; $4ea1: $60
	pop de                                           ; $4ea2: $d1
	rst FarCall                                          ; $4ea3: $f7
	db $fd                                           ; $4ea4: $fd
	rst $38                                          ; $4ea5: $ff
	ld e, $78                                        ; $4ea6: $1e $78
	ld c, a                                          ; $4ea8: $4f
	cp a                                             ; $4ea9: $bf
	ld a, l                                          ; $4eaa: $7d
	or $f8                                           ; $4eab: $f6 $f8
	ldh [$c0], a                                     ; $4ead: $e0 $c0
	add b                                            ; $4eaf: $80
	ret nz                                           ; $4eb0: $c0

	add b                                            ; $4eb1: $80
	inc bc                                           ; $4eb2: $03
	rrca                                             ; $4eb3: $0f
	inc e                                            ; $4eb4: $1c
	jr c, jr_061_4f17                                ; $4eb5: $38 $60

	pop bc                                           ; $4eb7: $c1
	ldh [$c1], a                                     ; $4eb8: $e0 $c1
	add b                                            ; $4eba: $80
	or a                                             ; $4ebb: $b7
	ld e, a                                          ; $4ebc: $5f
	reti                                             ; $4ebd: $d9


	res 5, l                                         ; $4ebe: $cb $ad
	and b                                            ; $4ec0: $a0
	pop hl                                           ; $4ec1: $e1
	pop bc                                           ; $4ec2: $c1
	ld b, d                                          ; $4ec3: $42
	and d                                            ; $4ec4: $a2
	and e                                            ; $4ec5: $a3
	or c                                             ; $4ec6: $b1
	pop de                                           ; $4ec7: $d1
	push de                                          ; $4ec8: $d5
	call nc, $a0fa                                   ; $4ec9: $d4 $fa $a0
	ldh [$f0], a                                     ; $4ecc: $e0 $f0
	ldh a, [c]                                       ; $4ece: $f2
	ld hl, sp-$07                                    ; $4ecf: $f8 $f9
	db $fc                                           ; $4ed1: $fc
	cp $fa                                           ; $4ed2: $fe $fa
	db $fd                                           ; $4ed4: $fd
	sbc l                                            ; $4ed5: $9d
	ld c, $0e                                        ; $4ed6: $0e $0e
	rlca                                             ; $4ed8: $07
	rlca                                             ; $4ed9: $07
	sub l                                            ; $4eda: $95
	inc bc                                           ; $4edb: $03
	ld a, a                                          ; $4edc: $7f
	ccf                                              ; $4edd: $3f
	sbc a                                            ; $4ede: $9f
	rst GetHLinHL                                          ; $4edf: $cf
	rst SubAFromBC                                          ; $4ee0: $e7
	di                                               ; $4ee1: $f3
	ld sp, hl                                        ; $4ee2: $f9
	db $fc                                           ; $4ee3: $fc
	ld bc, $7ffe                                     ; $4ee4: $01 $fe $7f
	adc e                                            ; $4ee7: $8b
	sbc l                                            ; $4ee8: $9d
	ldh [$b0], a                                     ; $4ee9: $e0 $b0
	ldh a, [$9c]                                     ; $4eeb: $f0 $9c
	ccf                                              ; $4eed: $3f
	nop                                              ; $4eee: $00
	inc c                                            ; $4eef: $0c
	db $dd                                           ; $4ef0: $dd
	rst $38                                          ; $4ef1: $ff
	ld a, a                                          ; $4ef2: $7f
	ld hl, sp+$7f                                    ; $4ef3: $f8 $7f

jr_061_4ef5:
	dec a                                            ; $4ef5: $3d
	adc e                                            ; $4ef6: $8b
	ld a, a                                          ; $4ef7: $7f
	add b                                            ; $4ef8: $80
	nop                                              ; $4ef9: $00
	nop                                              ; $4efa: $00
	rst FarCall                                          ; $4efb: $f7
	ld a, c                                          ; $4efc: $79
	rst SubAFromDE                                          ; $4efd: $df
	db $ed                                           ; $4efe: $ed
	or [hl]                                          ; $4eff: $b6
	jp nc, $e1eb                                     ; $4f00: $d2 $eb $e1

	rrca                                             ; $4f03: $0f
	cp $e0                                           ; $4f04: $fe $e0
	ld [bc], a                                       ; $4f06: $02
	ld b, c                                          ; $4f07: $41
	ld hl, $1810                                     ; $4f08: $21 $10 $18
	ldh [$c1], a                                     ; $4f0b: $e0 $c1
	sub a                                            ; $4f0d: $97
	cp a                                             ; $4f0e: $bf
	rst AddAOntoHL                                          ; $4f0f: $ef
	ld l, a                                          ; $4f10: $6f
	ld l, a                                          ; $4f11: $6f
	cp [hl]                                          ; $4f12: $be
	cp h                                             ; $4f13: $bc
	db $fc                                           ; $4f14: $fc
	sbc $dd                                          ; $4f15: $de $dd

jr_061_4f17:
	ldh a, [$8a]                                     ; $4f17: $f0 $8a
	ld [hl], b                                       ; $4f19: $70
	ldh a, [$b0]                                     ; $4f1a: $f0 $b0
	ld [hl], b                                       ; $4f1c: $70
	ld d, b                                          ; $4f1d: $50
	ld e, b                                          ; $4f1e: $58
	inc l                                            ; $4f1f: $2c
	ld l, $2f                                        ; $4f20: $2e $2f
	rla                                              ; $4f22: $17
	dec de                                           ; $4f23: $1b
	adc a                                            ; $4f24: $8f
	ld [hl], b                                       ; $4f25: $70
	ld e, b                                          ; $4f26: $58
	ld [hl], h                                       ; $4f27: $74
	xor d                                            ; $4f28: $aa
	xor c                                            ; $4f29: $a9
	cp h                                             ; $4f2a: $bc
	sbc $d6                                          ; $4f2b: $de $d6
	ld c, a                                          ; $4f2d: $4f
	ld a, e                                          ; $4f2e: $7b
	ld h, d                                          ; $4f2f: $62
	sub e                                            ; $4f30: $93
	ei                                               ; $4f31: $fb
	ld sp, hl                                        ; $4f32: $f9
	db $fd                                           ; $4f33: $fd
	cp $eb                                           ; $4f34: $fe $eb
	jp hl                                            ; $4f36: $e9


	ld [hl], h                                       ; $4f37: $74
	ld a, $1e                                        ; $4f38: $3e $1e
	ld c, $07                                        ; $4f3a: $0e $07
	inc bc                                           ; $4f3c: $03
	ldh a, [$9a]                                     ; $4f3d: $f0 $9a
	ldh [$0c], a                                     ; $4f3f: $e0 $0c
	inc bc                                           ; $4f41: $03
	ldh [$fe], a                                     ; $4f42: $e0 $fe
	ld a, e                                          ; $4f44: $7b
	ld h, b                                          ; $4f45: $60
	adc b                                            ; $4f46: $88
	ldh [$fc], a                                     ; $4f47: $e0 $fc
	rst $38                                          ; $4f49: $ff
	rst SubAFromDE                                          ; $4f4a: $df
	dec a                                            ; $4f4b: $3d
	inc bc                                           ; $4f4c: $03
	nop                                              ; $4f4d: $00
	db $fc                                           ; $4f4e: $fc
	db $fc                                           ; $4f4f: $fc
	adc $b3                                          ; $4f50: $ce $b3
	ret c                                            ; $4f52: $d8

	db $ec                                           ; $4f53: $ec
	daa                                              ; $4f54: $27
	ld d, [hl]                                       ; $4f55: $56
	rst $38                                          ; $4f56: $ff
	inc bc                                           ; $4f57: $03
	nop                                              ; $4f58: $00
	ld b, b                                          ; $4f59: $40
	jr nz, jr_061_4f6c                               ; $4f5a: $20 $10

	sbc b                                            ; $4f5c: $98
	adc c                                            ; $4f5d: $89
	ldh [$c1], a                                     ; $4f5e: $e0 $c1
	sbc e                                            ; $4f60: $9b
	ld a, a                                          ; $4f61: $7f
	rst SubAFromDE                                          ; $4f62: $df
	sub a                                            ; $4f63: $97
	rlca                                             ; $4f64: $07
	halt                                             ; $4f65: $76
	and $9c                                          ; $4f66: $e6 $9c
	rst $38                                          ; $4f68: $ff
	ccf                                              ; $4f69: $3f
	rrca                                             ; $4f6a: $0f
	db $fc                                           ; $4f6b: $fc

jr_061_4f6c:
	sub a                                            ; $4f6c: $97
	ret nz                                           ; $4f6d: $c0

	ld [hl], b                                       ; $4f6e: $70
	ld [hl], b                                       ; $4f6f: $70
	cp $07                                           ; $4f70: $fe $07
	pop af                                           ; $4f72: $f1
	ld h, c                                          ; $4f73: $61
	ld sp, $7ffc                                     ; $4f74: $31 $fc $7f
	jp hl                                            ; $4f77: $e9


	sbc c                                            ; $4f78: $99
	pop hl                                           ; $4f79: $e1
	ld e, $0c                                        ; $4f7a: $1e $0c
	add d                                            ; $4f7c: $82
	ld b, c                                          ; $4f7d: $41
	jr nz, jr_061_4ffb                               ; $4f7e: $20 $7b

	or $9d                                           ; $4f80: $f6 $9d
	di                                               ; $4f82: $f3
	rst $38                                          ; $4f83: $ff
	ld a, e                                          ; $4f84: $7b
	ld a, e                                          ; $4f85: $7b
	rst SubAFromDE                                          ; $4f86: $df
	rst $38                                          ; $4f87: $ff
	sbc [hl]                                         ; $4f88: $9e
	cp $73                                           ; $4f89: $fe $73
	call c, $209c                                    ; $4f8b: $dc $9c $20
	add b                                            ; $4f8e: $80
	ld [hl], h                                       ; $4f8f: $74
	ld [hl], e                                       ; $4f90: $73
	ld hl, sp+$7e                                    ; $4f91: $f8 $7e
	sub h                                            ; $4f93: $94
	adc [hl]                                         ; $4f94: $8e
	db $fc                                           ; $4f95: $fc
	rrca                                             ; $4f96: $0f
	ld de, $f1c6                                     ; $4f97: $11 $c6 $f1
	call c, $b367                                    ; $4f9a: $dc $67 $b3
	sbc c                                            ; $4f9d: $99
	rst $38                                          ; $4f9e: $ff
	rst $38                                          ; $4f9f: $ff
	ccf                                              ; $4fa0: $3f
	ld c, $23                                        ; $4fa1: $0e $23
	sbc c                                            ; $4fa3: $99
	ld c, h                                          ; $4fa4: $4c
	ld h, [hl]                                       ; $4fa5: $66
	ldh [$c1], a                                     ; $4fa6: $e0 $c1
	sbc $ff                                          ; $4fa8: $de $ff
	sbc l                                            ; $4faa: $9d
	rst GetHLinHL                                          ; $4fab: $cf
	rst JumpTable                                          ; $4fac: $c7
	ld a, d                                          ; $4fad: $7a
	db $ed                                           ; $4fae: $ed
	sbc h                                            ; $4faf: $9c
	and [hl]                                         ; $4fb0: $a6
	push af                                          ; $4fb1: $f5
	push af                                          ; $4fb2: $f5
	sbc $7d                                          ; $4fb3: $de $7d
	adc l                                            ; $4fb5: $8d
	ld e, [hl]                                       ; $4fb6: $5e
	ld c, [hl]                                       ; $4fb7: $4e
	db $fd                                           ; $4fb8: $fd
	ld a, l                                          ; $4fb9: $7d
	ld [hl], d                                       ; $4fba: $72
	ld c, [hl]                                       ; $4fbb: $4e
	ld e, a                                          ; $4fbc: $5f
	di                                               ; $4fbd: $f3
	add b                                            ; $4fbe: $80
	nop                                              ; $4fbf: $00
	rlca                                             ; $4fc0: $07
	inc bc                                           ; $4fc1: $03
	inc bc                                           ; $4fc2: $03
	ld bc, $3f01                                     ; $4fc3: $01 $01 $3f
	pop af                                           ; $4fc6: $f1
	ret nz                                           ; $4fc7: $c0

	db $fd                                           ; $4fc8: $fd
	sbc b                                            ; $4fc9: $98
	ld b, b                                          ; $4fca: $40
	db $10                                           ; $4fcb: $10
	inc b                                            ; $4fcc: $04
	ld bc, $3f8f                                     ; $4fcd: $01 $8f $3f
	ld a, a                                          ; $4fd0: $7f
	db $dd                                           ; $4fd1: $dd
	rst $38                                          ; $4fd2: $ff
	ld a, $d0                                        ; $4fd3: $3e $d0
	pop af                                           ; $4fd5: $f1
	sub b                                            ; $4fd6: $90
	ret nz                                           ; $4fd7: $c0

jr_061_4fd8:
	jr nc, jr_061_4fd8                               ; $4fd8: $30 $fe

	and b                                            ; $4fda: $a0
	ld b, b                                          ; $4fdb: $40
	or b                                             ; $4fdc: $b0
	ld d, b                                          ; $4fdd: $50
	nop                                              ; $4fde: $00
	ret nz                                           ; $4fdf: $c0

	ldh a, [$fe]                                     ; $4fe0: $f0 $fe
	ld h, b                                          ; $4fe2: $60
	and b                                            ; $4fe3: $a0
	ret nc                                           ; $4fe4: $d0

	ldh a, [$e0]                                     ; $4fe5: $f0 $e0
	pop bc                                           ; $4fe7: $c1
	sbc $0d                                          ; $4fe8: $de $0d
	sbc [hl]                                         ; $4fea: $9e
	rrca                                             ; $4feb: $0f
	sbc $8f                                          ; $4fec: $de $8f
	add b                                            ; $4fee: $80
	rst GetHLinHL                                          ; $4fef: $cf
	xor l                                            ; $4ff0: $ad
	xor a                                            ; $4ff1: $af
	xor a                                            ; $4ff2: $af
	sbc a                                            ; $4ff3: $9f
	reti                                             ; $4ff4: $d9


	reti                                             ; $4ff5: $d9


	ret c                                            ; $4ff6: $d8

	ld hl, sp+$4f                                    ; $4ff7: $f8 $4f
	ld l, a                                          ; $4ff9: $6f
	and a                                            ; $4ffa: $a7

jr_061_4ffb:
	or a                                             ; $4ffb: $b7
	rst SubAFromHL                                          ; $4ffc: $d7
	db $eb                                           ; $4ffd: $eb
	db $eb                                           ; $4ffe: $eb
	rst $38                                          ; $4fff: $ff
	ld a, b                                          ; $5000: $78
	ld a, b                                          ; $5001: $78
	db $fc                                           ; $5002: $fc
	cp h                                             ; $5003: $bc
	ld a, h                                          ; $5004: $7c
	ld a, $ae                                        ; $5005: $3e $ae
	sub [hl]                                         ; $5007: $96
	adc d                                            ; $5008: $8a
	ld b, c                                          ; $5009: $41
	ld b, b                                          ; $500a: $40
	ld b, b                                          ; $500b: $40
	ld b, c                                          ; $500c: $41
	ld [bc], a                                       ; $500d: $02
	sub a                                            ; $500e: $97
	inc h                                            ; $500f: $24
	add hl, hl                                       ; $5010: $29
	cp $fd                                           ; $5011: $fe $fd
	ld sp, hl                                        ; $5013: $f9
	di                                               ; $5014: $f3
	rst SubAFromBC                                          ; $5015: $e7
	rst AddAOntoHL                                          ; $5016: $ef
	ld a, d                                          ; $5017: $7a
	ld c, b                                          ; $5018: $48
	pop af                                           ; $5019: $f1
	sbc $80                                          ; $501a: $de $80
	sbc e                                            ; $501c: $9b
	ret nz                                           ; $501d: $c0

	and b                                            ; $501e: $a0
	ret nc                                           ; $501f: $d0

	ret nc                                           ; $5020: $d0

	ld [hl], e                                       ; $5021: $73
	ld hl, sp+$7d                                    ; $5022: $f8 $7d
	ld [hl], c                                       ; $5024: $71
	adc c                                            ; $5025: $89
	or b                                             ; $5026: $b0
	ld l, b                                          ; $5027: $68
	add sp, -$48                                     ; $5028: $e8 $b8
	or h                                             ; $502a: $b4
	call nc, $ced2                                   ; $502b: $d4 $d2 $ce
	adc [hl]                                         ; $502e: $8e
	ret c                                            ; $502f: $d8

	ld e, b                                          ; $5030: $58
	ld l, b                                          ; $5031: $68
	ld l, h                                          ; $5032: $6c
	inc a                                            ; $5033: $3c
	ld a, $3e                                        ; $5034: $3e $3e
	ld a, [hl]                                       ; $5036: $7e
	ld a, [de]                                       ; $5037: $1a
	add hl, hl                                       ; $5038: $29
	ld b, l                                          ; $5039: $45
	cp l                                             ; $503a: $bd
	ld a, l                                          ; $503b: $7d
	halt                                             ; $503c: $76
	sub a                                            ; $503d: $97
	rst SubAFromDE                                          ; $503e: $df
	rst $38                                          ; $503f: $ff
	sbc d                                            ; $5040: $9a
	rst AddAOntoHL                                          ; $5041: $ef
	or a                                             ; $5042: $b7
	ld b, a                                          ; $5043: $47
	sub e                                            ; $5044: $93
	inc hl                                           ; $5045: $23
	pop af                                           ; $5046: $f1
	ld [hl+], a                                      ; $5047: $22
	nop                                              ; $5048: $00
	call c, $de99                                    ; $5049: $dc $99 $de
	ld de, $2294                                     ; $504c: $11 $94 $22
	sbc c                                            ; $504f: $99
	ld c, h                                          ; $5050: $4c
	sbc c                                            ; $5051: $99
	sub c                                            ; $5052: $91
	ld [hl], a                                       ; $5053: $77
	call z, $9919                                    ; $5054: $cc $19 $99
	sub c                                            ; $5057: $91
	ld [hl+], a                                      ; $5058: $22
	ld [hl], a                                       ; $5059: $77
	ei                                               ; $505a: $fb
	sbc [hl]                                         ; $505b: $9e
	nop                                              ; $505c: $00
	sbc $99                                          ; $505d: $de $99
	sbc l                                            ; $505f: $9d
	nop                                              ; $5060: $00
	ld [$99de], sp                                   ; $5061: $08 $de $99
	sbc e                                            ; $5064: $9b
	ld [hl+], a                                      ; $5065: $22
	ld [$eedd], sp                                   ; $5066: $08 $dd $ee
	push de                                          ; $5069: $d5
	ld bc, $91ba                                     ; $506a: $01 $ba $91
	ld [hl+], a                                      ; $506d: $22
	ld c, d                                          ; $506e: $4a
	ld d, d                                          ; $506f: $52
	sub [hl]                                         ; $5070: $96
	and [hl]                                         ; $5071: $a6
	xor [hl]                                         ; $5072: $ae
	sbc l                                            ; $5073: $9d
	inc b                                            ; $5074: $04
	ld c, $7b                                        ; $5075: $0e $7b
	cp $9b                                           ; $5077: $fe $9b
	ld l, $04                                        ; $5079: $2e $04
	ld l, [hl]                                       ; $507b: $6e
	inc h                                            ; $507c: $24
	ld l, a                                          ; $507d: $6f
	cp $80                                           ; $507e: $fe $80
	ld a, [hl]                                       ; $5080: $7e
	ld c, h                                          ; $5081: $4c
	rst $38                                          ; $5082: $ff
	ld c, l                                          ; $5083: $4d
	rst $38                                          ; $5084: $ff
	ld e, l                                          ; $5085: $5d
	rst FarCall                                          ; $5086: $f7
	rst SubAFromDE                                          ; $5087: $df
	ldh a, [c]                                       ; $5088: $f2
	cp a                                             ; $5089: $bf
	ldh [c], a                                       ; $508a: $e2
	rst AddAOntoHL                                          ; $508b: $ef
	pop bc                                           ; $508c: $c1
	ld b, a                                          ; $508d: $47
	db $e3                                           ; $508e: $e3
	ld h, c                                          ; $508f: $61
	ldh [$b0], a                                     ; $5090: $e0 $b0
	ldh [$50], a                                     ; $5092: $e0 $50
	or b                                             ; $5094: $b0
	cp b                                             ; $5095: $b8
	ld e, b                                          ; $5096: $58
	xor h                                            ; $5097: $ac
	ld e, h                                          ; $5098: $5c
	ld e, e                                          ; $5099: $5b
	xor [hl]                                         ; $509a: $ae
	rla                                              ; $509b: $17
	xor a                                            ; $509c: $af
	dec l                                            ; $509d: $2d
	sub a                                            ; $509e: $97
	add b                                            ; $509f: $80
	ld c, [hl]                                       ; $50a0: $4e
	sub l                                            ; $50a1: $95
	sub d                                            ; $50a2: $92
	ld b, a                                          ; $50a3: $47
	db $dd                                           ; $50a4: $dd
	ld [$4c80], sp                                   ; $50a5: $08 $80 $4c
	xor [hl]                                         ; $50a8: $ae
	ld b, h                                          ; $50a9: $44
	add [hl]                                         ; $50aa: $86
	ld h, h                                          ; $50ab: $64
	inc [hl]                                         ; $50ac: $34
	ld h, [hl]                                       ; $50ad: $66
	dec [hl]                                         ; $50ae: $35
	ld h, [hl]                                       ; $50af: $66
	scf                                              ; $50b0: $37
	ld h, [hl]                                       ; $50b1: $66
	xor a                                            ; $50b2: $af
	halt                                             ; $50b3: $76
	xor [hl]                                         ; $50b4: $ae
	ld [hl], a                                       ; $50b5: $77
	xor [hl]                                         ; $50b6: $ae
	ld [hl], a                                       ; $50b7: $77
	or [hl]                                          ; $50b8: $b6
	ld a, a                                          ; $50b9: $7f
	halt                                             ; $50ba: $76
	rst SubAFromDE                                          ; $50bb: $df
	halt                                             ; $50bc: $76
	rst SubAFromDE                                          ; $50bd: $df
	rst $38                                          ; $50be: $ff
	adc c                                            ; $50bf: $89
	db $db                                           ; $50c0: $db
	rst $38                                          ; $50c1: $ff
	ei                                               ; $50c2: $fb
	rst $38                                          ; $50c3: $ff
	sub d                                            ; $50c4: $92
	rst $38                                          ; $50c5: $ff
	sub b                                            ; $50c6: $90
	rst $38                                          ; $50c7: $ff
	ld a, b                                          ; $50c8: $78
	cp $cc                                           ; $50c9: $fe $cc
	jp z, $f088                                      ; $50cb: $ca $88 $f0

	ld hl, sp-$50                                    ; $50ce: $f8 $b0
	ld [hl], b                                       ; $50d0: $70
	add sp, $48                                      ; $50d1: $e8 $48
	ld a, a                                          ; $50d3: $7f

jr_061_50d4:
	jr nc, jr_061_50d4                               ; $50d4: $30 $fe

	cp l                                             ; $50d6: $bd
	jr c, jr_061_50d9                                ; $50d7: $38 $00

jr_061_50d9:
	nop                                              ; $50d9: $00
	ld b, b                                          ; $50da: $40
	add b                                            ; $50db: $80
	add b                                            ; $50dc: $80
	ret nc                                           ; $50dd: $d0

	ldh [$fb], a                                     ; $50de: $e0 $fb
	db $fc                                           ; $50e0: $fc
	or a                                             ; $50e1: $b7
	rst $38                                          ; $50e2: $ff
	sbc d                                            ; $50e3: $9a
	call $cdab                                       ; $50e4: $cd $ab $cd
	db $e3                                           ; $50e7: $e3
	ld c, h                                          ; $50e8: $4c
	push bc                                          ; $50e9: $c5
	ld l, [hl]                                       ; $50ea: $6e
	push de                                          ; $50eb: $d5
	ld l, [hl]                                       ; $50ec: $6e
	rst SubAFromHL                                          ; $50ed: $d7
	ld l, [hl]                                       ; $50ee: $6e
	or $6f                                           ; $50ef: $f6 $6f
	and $7f                                          ; $50f1: $e6 $7f
	ld h, a                                          ; $50f3: $67
	db $fd                                           ; $50f4: $fd
	ld h, a                                          ; $50f5: $67
	db $fd                                           ; $50f6: $fd
	rst AddAOntoHL                                          ; $50f7: $ef
	ei                                               ; $50f8: $fb
	rst AddAOntoHL                                          ; $50f9: $ef
	cp c                                             ; $50fa: $b9
	sub h                                            ; $50fb: $94
	rst $38                                          ; $50fc: $ff
	or c                                             ; $50fd: $b1
	rst $38                                          ; $50fe: $ff
	ld sp, $22ff                                     ; $50ff: $31 $ff $22
	cp $06                                           ; $5102: $fe $06
	rst SubAFromDE                                          ; $5104: $df
	dec b                                            ; $5105: $05
	ld b, $dd                                        ; $5106: $06 $dd
	ld bc, $0dbe                                     ; $5108: $01 $be $0d
	ld c, $0e                                        ; $510b: $0e $0e
	add b                                            ; $510d: $80
	inc b                                            ; $510e: $04
	nop                                              ; $510f: $00
	nop                                              ; $5110: $00
	xor $33                                          ; $5111: $ee $33
	ld e, l                                          ; $5113: $5d
	or e                                             ; $5114: $b3
	rst SubAFromHL                                          ; $5115: $d7
	cp c                                             ; $5116: $b9
	rst SubAFromHL                                          ; $5117: $d7
	cp c                                             ; $5118: $b9
	sbc d                                            ; $5119: $9a
	db $fd                                           ; $511a: $fd
	ld e, d                                          ; $511b: $5a
	db $fd                                           ; $511c: $fd
	ld e, h                                          ; $511d: $5c
	rst $38                                          ; $511e: $ff
	ld e, h                                          ; $511f: $5c
	rst $38                                          ; $5120: $ff
	db $fc                                           ; $5121: $fc
	or a                                             ; $5122: $b7
	db $fd                                           ; $5123: $fd
	or a                                             ; $5124: $b7
	db $fd                                           ; $5125: $fd
	rst SubAFromBC                                          ; $5126: $e7
	rst $38                                          ; $5127: $ff
	ccf                                              ; $5128: $3f
	rst $38                                          ; $5129: $ff
	inc hl                                           ; $512a: $23
	rst $38                                          ; $512b: $ff
	db $e3                                           ; $512c: $e3
	add b                                            ; $512d: $80
	cp $7b                                           ; $512e: $fe $7b

jr_061_5130:
	ld e, [hl]                                       ; $5130: $5e
	ld [hl], e                                       ; $5131: $73
	rst $38                                          ; $5132: $ff
	jp $c3df                                         ; $5133: $c3 $df $c3


jr_061_5136:
	cp a                                             ; $5136: $bf
	inc hl                                           ; $5137: $23
	rst GetHLinHL                                          ; $5138: $cf
	jp $07fa                                         ; $5139: $c3 $fa $07


	ld e, $07                                        ; $513c: $1e $07
	dec e                                            ; $513e: $1d
	ld b, $15                                        ; $513f: $06 $15
	ld c, $3d                                        ; $5141: $0e $3d
	ld c, $2d                                        ; $5143: $0e $2d
	ld e, $3f                                        ; $5145: $1e $3f
	ld e, $56                                        ; $5147: $1e $56
	ccf                                              ; $5149: $3f
	halt                                             ; $514a: $76
	ccf                                              ; $514b: $3f
	or $8b                                           ; $514c: $f6 $8b
	ld a, a                                          ; $514e: $7f
	or $ef                                           ; $514f: $f6 $ef
	or $af                                           ; $5151: $f6 $af
	xor b                                            ; $5153: $a8
	ld a, b                                          ; $5154: $78
	ld hl, sp+$38                                    ; $5155: $f8 $38
	ld e, b                                          ; $5157: $58
	cp b                                             ; $5158: $b8
	ld e, b                                          ; $5159: $58
	cp b                                             ; $515a: $b8
	ret c                                            ; $515b: $d8

	cp b                                             ; $515c: $b8
	ret z                                            ; $515d: $c8

	xor b                                            ; $515e: $a8
	xor b                                            ; $515f: $a8
	add sp, -$60                                     ; $5160: $e8 $a0
	call c, $80e0                                    ; $5162: $dc $e0 $80
	ret nc                                           ; $5165: $d0

	ldh a, [$d0]                                     ; $5166: $f0 $d0
	ldh a, [rLCDC]                                   ; $5168: $f0 $40
	ldh a, [$b8]                                     ; $516a: $f0 $b8
	add sp, -$68                                     ; $516c: $e8 $98
	add sp, -$58                                     ; $516e: $e8 $a8
	ret nc                                           ; $5170: $d0

	ld l, h                                          ; $5171: $6c
	call nc, $ec54                                   ; $5172: $d4 $54 $ec
	inc [hl]                                         ; $5175: $34
	add sp, $76                                      ; $5176: $e8 $76
	xor d                                            ; $5178: $aa
	ld [$dab6], a                                    ; $5179: $ea $b6 $da
	or h                                             ; $517c: $b4
	jp c, $b4b4                                      ; $517d: $da $b4 $b4

	jp c, $bbd5                                      ; $5180: $da $d5 $bb

	ld e, l                                          ; $5183: $5d
	sub d                                            ; $5184: $92
	ei                                               ; $5185: $fb
	ld e, b                                          ; $5186: $58
	rst $38                                          ; $5187: $ff
	ld [$ea5d], a                                    ; $5188: $ea $5d $ea
	ld e, l                                          ; $518b: $5d
	xor d                                            ; $518c: $aa
	ld e, l                                          ; $518d: $5d
	sbc $2d                                          ; $518e: $de $2d
	rst SubAFromDE                                          ; $5190: $df
	dec l                                            ; $5191: $2d
	ld a, e                                          ; $5192: $7b
	jr nc, jr_061_5130                               ; $5193: $30 $9b

	inc a                                            ; $5195: $3c
	cp $7e                                           ; $5196: $fe $7e
	ld [$3003], a                                    ; $5198: $ea $03 $30
	dec sp                                           ; $519b: $3b
	jr nc, jr_061_5136                               ; $519c: $30 $98

	jr nc, @+$01                                     ; $519e: $30 $ff

	ld hl, $02ff                                     ; $51a0: $21 $ff $02
	rst SubAFromDE                                          ; $51a3: $df
	rlca                                             ; $51a4: $07
	inc bc                                           ; $51a5: $03
	jr nc, jr_061_520f                               ; $51a6: $30 $67

	jr nc, @-$66                                     ; $51a8: $30 $98

	inc bc                                           ; $51aa: $03
	cp $e3                                           ; $51ab: $fe $e3
	ld a, [hl]                                       ; $51ad: $7e
	ld a, e                                          ; $51ae: $7b
	rst SubAFromDE                                          ; $51af: $df
	di                                               ; $51b0: $f3
	ld c, a                                          ; $51b1: $4f
	jr nc, jr_061_5216                               ; $51b2: $30 $62

	ld [hl], b                                       ; $51b4: $70
	sbc [hl]                                         ; $51b5: $9e
	ret nz                                           ; $51b6: $c0

	ld l, $70                                        ; $51b7: $2e $70
	ld a, e                                          ; $51b9: $7b
	ld h, b                                          ; $51ba: $60
	cp a                                             ; $51bb: $bf
	db $fc                                           ; $51bc: $fc
	cp $97                                           ; $51bd: $fe $97
	ld e, $fc                                        ; $51bf: $1e $fc
	ld a, h                                          ; $51c1: $7c
	db $f4                                           ; $51c2: $f4
	db $f4                                           ; $51c3: $f4
	ld hl, sp-$08                                    ; $51c4: $f8 $f8
	ld a, a                                          ; $51c6: $7f
	cp h                                             ; $51c7: $bc
	cp $38                                           ; $51c8: $fe $38
	nop                                              ; $51ca: $00
	nop                                              ; $51cb: $00
	ld b, b                                          ; $51cc: $40
	inc bc                                           ; $51cd: $03
	ld h, b                                          ; $51ce: $60
	ld a, e                                          ; $51cf: $7b
	ld h, b                                          ; $51d0: $60
	sbc b                                            ; $51d1: $98
	jr nz, @+$01                                     ; $51d2: $20 $ff

	nop                                              ; $51d4: $00
	rst SubAFromDE                                          ; $51d5: $df
	ld bc, $0707                                     ; $51d6: $01 $07 $07
	inc bc                                           ; $51d9: $03
	ld h, b                                          ; $51da: $60
	ld h, a                                          ; $51db: $67
	ld h, b                                          ; $51dc: $60
	ld a, e                                          ; $51dd: $7b
	cp $97                                           ; $51de: $fe $97
	rst $38                                          ; $51e0: $ff
	di                                               ; $51e1: $f3
	cp a                                             ; $51e2: $bf
	cp e                                             ; $51e3: $bb
	rst $38                                          ; $51e4: $ff
	db $e3                                           ; $51e5: $e3
	rst AddAOntoHL                                          ; $51e6: $ef
	inc bc                                           ; $51e7: $03
	dec sp                                           ; $51e8: $3b
	ld h, b                                          ; $51e9: $60
	sbc h                                            ; $51ea: $9c
	ldh [$61], a                                     ; $51eb: $e0 $61
	pop hl                                           ; $51ed: $e1
	daa                                              ; $51ee: $27
	ld h, b                                          ; $51ef: $60
	sbc b                                            ; $51f0: $98
	db $fc                                           ; $51f1: $fc
	inc c                                            ; $51f2: $0c
	db $fc                                           ; $51f3: $fc
	ld [hl], b                                       ; $51f4: $70
	cp $0e                                           ; $51f5: $fe $0e
	db $fc                                           ; $51f7: $fc
	dec sp                                           ; $51f8: $3b
	ld h, b                                          ; $51f9: $60
	sbc [hl]                                         ; $51fa: $9e
	rst SubAFromDE                                          ; $51fb: $df
	cp [hl]                                          ; $51fc: $be
	inc bc                                           ; $51fd: $03
	inc bc                                           ; $51fe: $03
	ld bc, $019e                                     ; $51ff: $01 $9e $01
	ld h, a                                          ; $5202: $67
	add b                                            ; $5203: $80
	ld a, a                                          ; $5204: $7f
	sbc d                                            ; $5205: $9a
	sbc c                                            ; $5206: $99
	rst $38                                          ; $5207: $ff
	set 7, a                                         ; $5208: $cb $ff
	inc sp                                           ; $520a: $33
	rst $38                                          ; $520b: $ff
	db $e3                                           ; $520c: $e3
	ld h, a                                          ; $520d: $67
	and b                                            ; $520e: $a0

jr_061_520f:
	pop af                                           ; $520f: $f1
	sbc d                                            ; $5210: $9a
	rlca                                             ; $5211: $07
	ld [bc], a                                       ; $5212: $02
	ld e, $0c                                        ; $5213: $1e $0c
	ld [bc], a                                       ; $5215: $02

jr_061_5216:
	cp h                                             ; $5216: $bc
	ld b, $00                                        ; $5217: $06 $00
	nop                                              ; $5219: $00
	ld bc, $9ebd                                     ; $521a: $01 $bd $9e
	jp $9bf1                                         ; $521d: $c3 $f1 $9b


	dec b                                            ; $5220: $05
	ld [bc], a                                       ; $5221: $02
	ld a, [de]                                       ; $5222: $1a
	ld a, [bc]                                       ; $5223: $0a
	ld [hl], a                                       ; $5224: $77
	cp b                                             ; $5225: $b8
	ld [hl], a                                       ; $5226: $77
	sbc $27                                          ; $5227: $de $27
	ldh [$9c], a                                     ; $5229: $e0 $9c
	ld b, $0e                                        ; $522b: $06 $0e
	ld [bc], a                                       ; $522d: $02
	cp l                                             ; $522e: $bd
	nop                                              ; $522f: $00
	ld b, $01                                        ; $5230: $06 $01
	cp l                                             ; $5232: $bd
	dec sp                                           ; $5233: $3b
	ldh [$9b], a                                     ; $5234: $e0 $9b
	dec de                                           ; $5236: $1b
	ld a, [bc]                                       ; $5237: $0a
	ld d, $0e                                        ; $5238: $16 $0e
	ld [hl], a                                       ; $523a: $77
	adc c                                            ; $523b: $89
	ld l, a                                          ; $523c: $6f
	ldh [$e0], a                                     ; $523d: $e0 $e0
	ld bc, $91ba                                     ; $523f: $01 $ba $91
	ld [hl+], a                                      ; $5242: $22
	ld c, d                                          ; $5243: $4a
	ld d, d                                          ; $5244: $52
	sub [hl]                                         ; $5245: $96
	and [hl]                                         ; $5246: $a6
	xor [hl]                                         ; $5247: $ae
	sbc l                                            ; $5248: $9d
	inc b                                            ; $5249: $04
	ld c, $7b                                        ; $524a: $0e $7b
	cp $9b                                           ; $524c: $fe $9b
	ld l, $04                                        ; $524e: $2e $04
	ld l, [hl]                                       ; $5250: $6e
	inc h                                            ; $5251: $24
	ld l, a                                          ; $5252: $6f
	cp $80                                           ; $5253: $fe $80
	ld a, [hl]                                       ; $5255: $7e
	ld c, h                                          ; $5256: $4c
	rst $38                                          ; $5257: $ff
	ld c, l                                          ; $5258: $4d
	rst $38                                          ; $5259: $ff
	ld e, l                                          ; $525a: $5d
	rst FarCall                                          ; $525b: $f7
	rst SubAFromDE                                          ; $525c: $df
	di                                               ; $525d: $f3
	cp a                                             ; $525e: $bf
	rst SubAFromBC                                          ; $525f: $e7
	rst AddAOntoHL                                          ; $5260: $ef
	call $e14c                                       ; $5261: $cd $4c $e1
	ld h, b                                          ; $5264: $60
	ldh [$b1], a                                     ; $5265: $e0 $b1
	ldh [$50], a                                     ; $5267: $e0 $50
	or b                                             ; $5269: $b0
	cp b                                             ; $526a: $b8
	ld e, b                                          ; $526b: $58
	xor h                                            ; $526c: $ac
	ld e, h                                          ; $526d: $5c
	ld e, e                                          ; $526e: $5b
	xor [hl]                                         ; $526f: $ae
	rla                                              ; $5270: $17
	xor a                                            ; $5271: $af
	dec l                                            ; $5272: $2d
	sub a                                            ; $5273: $97
	add b                                            ; $5274: $80
	ld c, [hl]                                       ; $5275: $4e
	sub l                                            ; $5276: $95
	sub d                                            ; $5277: $92
	ld b, a                                          ; $5278: $47
	db $dd                                           ; $5279: $dd
	ld [$4c80], sp                                   ; $527a: $08 $80 $4c
	xor [hl]                                         ; $527d: $ae
	ld b, h                                          ; $527e: $44
	add [hl]                                         ; $527f: $86
	ld h, h                                          ; $5280: $64
	inc [hl]                                         ; $5281: $34
	ld h, [hl]                                       ; $5282: $66
	dec [hl]                                         ; $5283: $35
	ld h, [hl]                                       ; $5284: $66
	scf                                              ; $5285: $37
	ld h, [hl]                                       ; $5286: $66
	xor a                                            ; $5287: $af
	halt                                             ; $5288: $76
	xor [hl]                                         ; $5289: $ae
	ld [hl], a                                       ; $528a: $77
	xor [hl]                                         ; $528b: $ae
	ld [hl], a                                       ; $528c: $77
	or [hl]                                          ; $528d: $b6
	ld a, a                                          ; $528e: $7f
	halt                                             ; $528f: $76
	rst SubAFromDE                                          ; $5290: $df
	halt                                             ; $5291: $76
	rst SubAFromDE                                          ; $5292: $df

jr_061_5293:
	rst $38                                          ; $5293: $ff
	adc d                                            ; $5294: $8a
	db $db                                           ; $5295: $db
	rst $38                                          ; $5296: $ff
	ei                                               ; $5297: $fb
	rst $38                                          ; $5298: $ff
	sub d                                            ; $5299: $92
	rst $38                                          ; $529a: $ff
	ldh a, [$ef]                                     ; $529b: $f0 $ef
	cp b                                             ; $529d: $b8
	xor [hl]                                         ; $529e: $ae
	jr nc, jr_061_52d5                               ; $529f: $30 $34

	jr nc, jr_061_5293                               ; $52a1: $30 $f0

	ldh a, [$d0]                                     ; $52a3: $f0 $d0
	ret nc                                           ; $52a5: $d0

	ld hl, sp+$10                                    ; $52a6: $f8 $10
	ldh a, [$e0]                                     ; $52a8: $f0 $e0
	ld sp, hl                                        ; $52aa: $f9
	add b                                            ; $52ab: $80
	ld b, b                                          ; $52ac: $40
	add b                                            ; $52ad: $80
	ret nc                                           ; $52ae: $d0

	ldh [$fb], a                                     ; $52af: $e0 $fb
	db $fc                                           ; $52b1: $fc
	or a                                             ; $52b2: $b7
	rst $38                                          ; $52b3: $ff
	sbc d                                            ; $52b4: $9a
	call $cdab                                       ; $52b5: $cd $ab $cd
	db $e3                                           ; $52b8: $e3
	ld c, h                                          ; $52b9: $4c
	push bc                                          ; $52ba: $c5
	ld l, [hl]                                       ; $52bb: $6e
	push de                                          ; $52bc: $d5
	ld l, [hl]                                       ; $52bd: $6e
	rst SubAFromHL                                          ; $52be: $d7
	ld l, [hl]                                       ; $52bf: $6e
	or $6f                                           ; $52c0: $f6 $6f
	and $7f                                          ; $52c2: $e6 $7f
	ld h, a                                          ; $52c4: $67
	db $fd                                           ; $52c5: $fd
	ld h, a                                          ; $52c6: $67
	db $fd                                           ; $52c7: $fd
	rst AddAOntoHL                                          ; $52c8: $ef
	ei                                               ; $52c9: $fb
	rst AddAOntoHL                                          ; $52ca: $ef
	sub d                                            ; $52cb: $92
	cp c                                             ; $52cc: $b9
	rst $38                                          ; $52cd: $ff
	or e                                             ; $52ce: $b3
	rst $38                                          ; $52cf: $ff
	ld [hl-], a                                      ; $52d0: $32
	cp $26                                           ; $52d1: $fe $26
	rst $38                                          ; $52d3: $ff
	rlca                                             ; $52d4: $07

jr_061_52d5:
	db $db                                           ; $52d5: $db
	inc bc                                           ; $52d6: $03
	ld a, [bc]                                       ; $52d7: $0a
	inc bc                                           ; $52d8: $03
	sbc $01                                          ; $52d9: $de $01
	cp [hl]                                          ; $52db: $be
	inc c                                            ; $52dc: $0c
	ld c, $0e                                        ; $52dd: $0e $0e
	add b                                            ; $52df: $80
	inc b                                            ; $52e0: $04
	nop                                              ; $52e1: $00
	nop                                              ; $52e2: $00
	xor $33                                          ; $52e3: $ee $33
	ld e, l                                          ; $52e5: $5d
	or e                                             ; $52e6: $b3
	rst SubAFromHL                                          ; $52e7: $d7
	cp c                                             ; $52e8: $b9
	rst SubAFromHL                                          ; $52e9: $d7
	cp c                                             ; $52ea: $b9
	sbc d                                            ; $52eb: $9a
	db $fd                                           ; $52ec: $fd
	ld e, d                                          ; $52ed: $5a
	db $fd                                           ; $52ee: $fd
	ld e, h                                          ; $52ef: $5c
	rst $38                                          ; $52f0: $ff
	ld e, h                                          ; $52f1: $5c
	rst $38                                          ; $52f2: $ff
	db $fc                                           ; $52f3: $fc
	or a                                             ; $52f4: $b7
	db $fd                                           ; $52f5: $fd
	or a                                             ; $52f6: $b7
	db $fd                                           ; $52f7: $fd
	rst FarCall                                          ; $52f8: $f7
	rst $38                                          ; $52f9: $ff
	daa                                              ; $52fa: $27
	rst $38                                          ; $52fb: $ff
	db $e3                                           ; $52fc: $e3
	rst $38                                          ; $52fd: $ff

Jump_061_52fe:
	ld a, e                                          ; $52fe: $7b
	add b                                            ; $52ff: $80
	ld e, [hl]                                       ; $5300: $5e
	ld [hl], e                                       ; $5301: $73
	cp $d3                                           ; $5302: $fe $d3
	rst SubAFromDE                                          ; $5304: $df
	add e                                            ; $5305: $83
	cp a                                             ; $5306: $bf
	inc hl                                           ; $5307: $23
	rst $38                                          ; $5308: $ff
	inc hl                                           ; $5309: $23
	rst GetHLinHL                                          ; $530a: $cf
	jp $07da                                         ; $530b: $c3 $da $07


	ld e, $07                                        ; $530e: $1e $07
	dec e                                            ; $5310: $1d
	ld b, $15                                        ; $5311: $06 $15
	ld c, $3d                                        ; $5313: $0e $3d
	ld c, $2d                                        ; $5315: $0e $2d
	ld e, $3f                                        ; $5317: $1e $3f
	ld e, $56                                        ; $5319: $1e $56
	ccf                                              ; $531b: $3f
	halt                                             ; $531c: $76
	ccf                                              ; $531d: $3f
	or $8b                                           ; $531e: $f6 $8b
	ld a, a                                          ; $5320: $7f
	or $ef                                           ; $5321: $f6 $ef
	or $af                                           ; $5323: $f6 $af
	xor b                                            ; $5325: $a8
	ld a, b                                          ; $5326: $78
	ld hl, sp+$38                                    ; $5327: $f8 $38
	ld e, b                                          ; $5329: $58
	cp b                                             ; $532a: $b8
	ld e, b                                          ; $532b: $58
	cp b                                             ; $532c: $b8
	ret c                                            ; $532d: $d8

	cp b                                             ; $532e: $b8
	ret z                                            ; $532f: $c8

	xor b                                            ; $5330: $a8
	xor b                                            ; $5331: $a8
	add sp, -$60                                     ; $5332: $e8 $a0
	call c, $80e0                                    ; $5334: $dc $e0 $80
	ret nc                                           ; $5337: $d0

	ldh a, [$d0]                                     ; $5338: $f0 $d0
	ldh a, [rLCDC]                                   ; $533a: $f0 $40
	ldh a, [$b8]                                     ; $533c: $f0 $b8
	add sp, -$68                                     ; $533e: $e8 $98
	add sp, -$58                                     ; $5340: $e8 $a8
	ret nc                                           ; $5342: $d0

	ld l, h                                          ; $5343: $6c
	call nc, $ec54                                   ; $5344: $d4 $54 $ec
	inc [hl]                                         ; $5347: $34
	add sp, $76                                      ; $5348: $e8 $76
	xor d                                            ; $534a: $aa
	ld [$dab6], a                                    ; $534b: $ea $b6 $da
	or h                                             ; $534e: $b4
	jp c, $b4b4                                      ; $534f: $da $b4 $b4

	jp c, $bbd5                                      ; $5352: $da $d5 $bb

	ld e, l                                          ; $5355: $5d
	sub d                                            ; $5356: $92
	ei                                               ; $5357: $fb
	ld e, b                                          ; $5358: $58
	rst $38                                          ; $5359: $ff
	ld [$ea5d], a                                    ; $535a: $ea $5d $ea
	ld e, l                                          ; $535d: $5d
	xor d                                            ; $535e: $aa
	ld e, l                                          ; $535f: $5d
	sbc $2d                                          ; $5360: $de $2d
	rst SubAFromDE                                          ; $5362: $df
	dec l                                            ; $5363: $2d
	ld [hl], d                                       ; $5364: $72
	ldh a, [$98]                                     ; $5365: $f0 $98
	ldh a, [c]                                       ; $5367: $f2
	cp a                                             ; $5368: $bf
	db $e3                                           ; $5369: $e3
	rst AddAOntoHL                                          ; $536a: $ef
	jp $ef4e                                         ; $536b: $c3 $4e $ef


	ld [hl], $f0                                     ; $536e: $36 $f0
	sbc b                                            ; $5370: $98
	rst $38                                          ; $5371: $ff
	sub b                                            ; $5372: $90
	rst $38                                          ; $5373: $ff
	ld [hl], b                                       ; $5374: $70
	xor $f8                                          ; $5375: $ee $f8
	or h                                             ; $5377: $b4
	inc bc                                           ; $5378: $03
	db $10                                           ; $5379: $10
	ld b, e                                          ; $537a: $43
	db $10                                           ; $537b: $10
	sub l                                            ; $537c: $95
	or c                                             ; $537d: $b1
	rst $38                                          ; $537e: $ff
	ld sp, $23ff                                     ; $537f: $31 $ff $23
	rst $38                                          ; $5382: $ff
	ld b, $db                                        ; $5383: $06 $db
	inc bc                                           ; $5385: $03
	dec bc                                           ; $5386: $0b

jr_061_5387:
	inc bc                                           ; $5387: $03
	db $10                                           ; $5388: $10
	ld [hl], e                                       ; $5389: $73
	db $10                                           ; $538a: $10
	ld a, a                                          ; $538b: $7f
	call nc, $c396                                   ; $538c: $d4 $96 $c3
	cp $f3                                           ; $538f: $fe $f3
	ld e, [hl]                                       ; $5391: $5e
	ld a, e                                          ; $5392: $7b
	rst $38                                          ; $5393: $ff
	jp $a3bf                                         ; $5394: $c3 $bf $a3


	ld d, a                                          ; $5397: $57
	db $10                                           ; $5398: $10
	ld l, e                                          ; $5399: $6b
	ld h, b                                          ; $539a: $60
	sbc b                                            ; $539b: $98
	ldh [c], a                                       ; $539c: $e2
	rst AddAOntoHL                                          ; $539d: $ef
	ret nz                                           ; $539e: $c0

	ld c, a                                          ; $539f: $4f
	db $e3                                           ; $53a0: $e3
	ld h, c                                          ; $53a1: $61
	pop hl                                           ; $53a2: $e1
	inc sp                                           ; $53a3: $33
	ld h, b                                          ; $53a4: $60
	cp a                                             ; $53a5: $bf
	cp $fc                                           ; $53a6: $fe $fc
	sbc c                                            ; $53a8: $99
	jr jr_061_5387                                   ; $53a9: $18 $dc

	call c, $fcfc                                    ; $53ab: $dc $fc $fc
	ld hl, sp+$5f                                    ; $53ae: $f8 $5f
	ld h, c                                          ; $53b0: $61
	inc bc                                           ; $53b1: $03
	ld h, b                                          ; $53b2: $60
	ld a, e                                          ; $53b3: $7b
	ld h, b                                          ; $53b4: $60
	sub h                                            ; $53b5: $94
	jr nc, @+$01                                     ; $53b6: $30 $ff

	jr nz, @+$01                                     ; $53b8: $20 $ff

	nop                                              ; $53ba: $00
	rst SubAFromDE                                          ; $53bb: $df
	ld bc, $070f                                     ; $53bc: $01 $0f $07
	rlca                                             ; $53bf: $07
	inc bc                                           ; $53c0: $03
	inc bc                                           ; $53c1: $03
	ld h, b                                          ; $53c2: $60
	ld [hl], a                                       ; $53c3: $77
	ld h, b                                          ; $53c4: $60
	sbc l                                            ; $53c5: $9d
	inc bc                                           ; $53c6: $03
	cp $7b                                           ; $53c7: $fe $7b
	cp $9d                                           ; $53c9: $fe $9d
	ld a, a                                          ; $53cb: $7f
	ld h, e                                          ; $53cc: $63
	ld a, c                                          ; $53cd: $79
	ld a, [$e39b]                                    ; $53ce: $fa $9b $e3
	rst GetHLinHL                                          ; $53d1: $cf
	inc bc                                           ; $53d2: $03
	ld a, [de]                                       ; $53d3: $1a
	ccf                                              ; $53d4: $3f
	ld h, b                                          ; $53d5: $60
	sbc l                                            ; $53d6: $9d
	ldh [$63], a                                     ; $53d7: $e0 $63
	dec de                                           ; $53d9: $1b
	ld h, b                                          ; $53da: $60
	sbc e                                            ; $53db: $9b
	ld hl, sp-$20                                    ; $53dc: $f8 $e0
	db $fc                                           ; $53de: $fc
	inc e                                            ; $53df: $1c
	scf                                              ; $53e0: $37
	ld h, b                                          ; $53e1: $60
	ld a, e                                          ; $53e2: $7b
	add b                                            ; $53e3: $80
	sbc [hl]                                         ; $53e4: $9e
	nop                                              ; $53e5: $00
	ld d, a                                          ; $53e6: $57
	add b                                            ; $53e7: $80
	ld a, d                                          ; $53e8: $7a
	ld [$1b9e], sp                                   ; $53e9: $08 $9e $1b
	ld d, a                                          ; $53ec: $57
	and b                                            ; $53ed: $a0
	pop af                                           ; $53ee: $f1
	sbc d                                            ; $53ef: $9a
	dec c                                            ; $53f0: $0d
	ld [bc], a                                       ; $53f1: $02
	ld a, [hl-]                                      ; $53f2: $3a
	jr jr_061_53f5                                   ; $53f3: $18 $00

jr_061_53f5:
	cp h                                             ; $53f5: $bc
	ld b, $00                                        ; $53f6: $06 $00
	nop                                              ; $53f8: $00
	ld bc, $9ebd                                     ; $53f9: $01 $bd $9e
	jp $e03f                                         ; $53fc: $c3 $3f $e0


	sbc e                                            ; $53ff: $9b
	dec sp                                           ; $5400: $3b
	ld a, [de]                                       ; $5401: $1a
	ld c, $0e                                        ; $5402: $0e $0e
	inc de                                           ; $5404: $13
	ldh [$9b], a                                     ; $5405: $e0 $9b
	dec de                                           ; $5407: $1b
	rra                                              ; $5408: $1f
	ld c, $0a                                        ; $5409: $0e $0a
	cp l                                             ; $540b: $bd
	ld b, $00                                        ; $540c: $06 $00
	ld bc, $43bd                                     ; $540e: $01 $bd $43
	ldh [$9d], a                                     ; $5411: $e0 $9d
	ld c, $01                                        ; $5413: $0e $01
	ld a, e                                          ; $5415: $7b
	ldh [$9d], a                                     ; $5416: $e0 $9d
	ld e, $0e                                        ; $5418: $1e $0e
	ld a, e                                          ; $541a: $7b
	sbc $6f                                          ; $541b: $de $6f
	ldh [$c9], a                                     ; $541d: $e0 $c9
	ld bc, $91ba                                     ; $541f: $01 $ba $91
	ld [hl+], a                                      ; $5422: $22
	ld c, d                                          ; $5423: $4a
	ld d, d                                          ; $5424: $52
	sub [hl]                                         ; $5425: $96
	and [hl]                                         ; $5426: $a6
	xor [hl]                                         ; $5427: $ae
	sbc l                                            ; $5428: $9d
	inc b                                            ; $5429: $04
	ld c, $7b                                        ; $542a: $0e $7b
	cp $9b                                           ; $542c: $fe $9b
	ld l, $04                                        ; $542e: $2e $04
	ld l, [hl]                                       ; $5430: $6e
	inc h                                            ; $5431: $24
	ld l, a                                          ; $5432: $6f
	cp $80                                           ; $5433: $fe $80
	ld a, [hl]                                       ; $5435: $7e
	ld c, h                                          ; $5436: $4c
	rst $38                                          ; $5437: $ff
	ld c, l                                          ; $5438: $4d
	rst $38                                          ; $5439: $ff
	ld e, l                                          ; $543a: $5d
	rst FarCall                                          ; $543b: $f7
	rst SubAFromDE                                          ; $543c: $df
	di                                               ; $543d: $f3
	cp a                                             ; $543e: $bf
	rst SubAFromBC                                          ; $543f: $e7
	rst AddAOntoHL                                          ; $5440: $ef
	call $e04d                                       ; $5441: $cd $4d $e0
	ld h, b                                          ; $5444: $60
	ldh [$b1], a                                     ; $5445: $e0 $b1
	ldh [$50], a                                     ; $5447: $e0 $50
	or b                                             ; $5449: $b0
	cp b                                             ; $544a: $b8
	ld e, b                                          ; $544b: $58
	xor h                                            ; $544c: $ac
	ld e, h                                          ; $544d: $5c
	ld e, e                                          ; $544e: $5b
	xor [hl]                                         ; $544f: $ae
	rla                                              ; $5450: $17
	xor a                                            ; $5451: $af
	dec l                                            ; $5452: $2d
	sub a                                            ; $5453: $97
	add b                                            ; $5454: $80
	ld c, [hl]                                       ; $5455: $4e
	sub l                                            ; $5456: $95
	sub d                                            ; $5457: $92
	ld b, a                                          ; $5458: $47
	db $dd                                           ; $5459: $dd
	ld [$4c80], sp                                   ; $545a: $08 $80 $4c
	xor [hl]                                         ; $545d: $ae
	ld b, h                                          ; $545e: $44
	add [hl]                                         ; $545f: $86
	ld h, h                                          ; $5460: $64
	inc [hl]                                         ; $5461: $34
	ld h, [hl]                                       ; $5462: $66
	dec [hl]                                         ; $5463: $35
	ld h, [hl]                                       ; $5464: $66

jr_061_5465:
	scf                                              ; $5465: $37
	ld h, [hl]                                       ; $5466: $66
	xor a                                            ; $5467: $af
	halt                                             ; $5468: $76
	xor [hl]                                         ; $5469: $ae
	ld [hl], a                                       ; $546a: $77
	xor [hl]                                         ; $546b: $ae
	ld [hl], a                                       ; $546c: $77
	or [hl]                                          ; $546d: $b6
	ld a, a                                          ; $546e: $7f
	halt                                             ; $546f: $76
	rst SubAFromDE                                          ; $5470: $df
	halt                                             ; $5471: $76
	rst SubAFromDE                                          ; $5472: $df
	rst $38                                          ; $5473: $ff
	adc e                                            ; $5474: $8b
	db $db                                           ; $5475: $db
	rst $38                                          ; $5476: $ff
	ei                                               ; $5477: $fb
	rst $38                                          ; $5478: $ff
	sub d                                            ; $5479: $92
	rst $38                                          ; $547a: $ff
	ldh a, [rIE]                                     ; $547b: $f0 $ff
	jr c, @+$38                                      ; $547d: $38 $36

	jr nc, jr_061_5465                               ; $547f: $30 $e4

	ldh a, [rSVBK]                                   ; $5481: $f0 $70
	ldh a, [$d0]                                     ; $5483: $f0 $d0
	sub b                                            ; $5485: $90
	ld hl, sp+$60                                    ; $5486: $f8 $60
	ldh [$bc], a                                     ; $5488: $e0 $bc
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	ld b, b                                          ; $548e: $40
	add b                                            ; $548f: $80
	add b                                            ; $5490: $80
	ret nc                                           ; $5491: $d0

	ldh [$fb], a                                     ; $5492: $e0 $fb
	db $fc                                           ; $5494: $fc
	or a                                             ; $5495: $b7
	rst $38                                          ; $5496: $ff
	sbc d                                            ; $5497: $9a
	call $cdab                                       ; $5498: $cd $ab $cd
	db $e3                                           ; $549b: $e3
	ld c, h                                          ; $549c: $4c
	push bc                                          ; $549d: $c5
	ld l, [hl]                                       ; $549e: $6e
	push de                                          ; $549f: $d5
	ld l, [hl]                                       ; $54a0: $6e
	rst SubAFromHL                                          ; $54a1: $d7
	ld l, [hl]                                       ; $54a2: $6e
	or $6f                                           ; $54a3: $f6 $6f
	and $7f                                          ; $54a5: $e6 $7f
	ld h, a                                          ; $54a7: $67
	db $fd                                           ; $54a8: $fd
	ld h, a                                          ; $54a9: $67
	db $fd                                           ; $54aa: $fd
	rst AddAOntoHL                                          ; $54ab: $ef
	ei                                               ; $54ac: $fb
	rst AddAOntoHL                                          ; $54ad: $ef
	cp c                                             ; $54ae: $b9
	sub d                                            ; $54af: $92
	rst $38                                          ; $54b0: $ff
	or c                                             ; $54b1: $b1
	rst $38                                          ; $54b2: $ff
	ld [hl-], a                                      ; $54b3: $32
	cp $26                                           ; $54b4: $fe $26
	rst $38                                          ; $54b6: $ff
	rlca                                             ; $54b7: $07
	jp c, $0b03                                      ; $54b8: $da $03 $0b

	ld bc, $bd01                                     ; $54bb: $01 $01 $bd
	ld bc, $0e0c                                     ; $54be: $01 $0c $0e
	ld c, $80                                        ; $54c1: $0e $80
	inc b                                            ; $54c3: $04
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	xor $33                                          ; $54c6: $ee $33
	ld e, l                                          ; $54c8: $5d
	or e                                             ; $54c9: $b3
	rst SubAFromHL                                          ; $54ca: $d7
	cp c                                             ; $54cb: $b9
	rst SubAFromHL                                          ; $54cc: $d7
	cp c                                             ; $54cd: $b9
	sbc d                                            ; $54ce: $9a
	db $fd                                           ; $54cf: $fd
	ld e, d                                          ; $54d0: $5a
	db $fd                                           ; $54d1: $fd
	ld e, h                                          ; $54d2: $5c
	rst $38                                          ; $54d3: $ff
	ld e, h                                          ; $54d4: $5c
	rst $38                                          ; $54d5: $ff
	db $fc                                           ; $54d6: $fc
	or a                                             ; $54d7: $b7
	db $fd                                           ; $54d8: $fd
	or a                                             ; $54d9: $b7
	db $fd                                           ; $54da: $fd
	rst FarCall                                          ; $54db: $f7
	rst $38                                          ; $54dc: $ff
	daa                                              ; $54dd: $27
	rst $38                                          ; $54de: $ff
	db $e3                                           ; $54df: $e3
	rst $38                                          ; $54e0: $ff
	ld a, e                                          ; $54e1: $7b
	add b                                            ; $54e2: $80
	ld e, [hl]                                       ; $54e3: $5e
	ld [hl], e                                       ; $54e4: $73
	cp $c3                                           ; $54e5: $fe $c3
	rst $38                                          ; $54e7: $ff
	db $e3                                           ; $54e8: $e3
	cp a                                             ; $54e9: $bf
	inc hl                                           ; $54ea: $23
	rst FarCall                                          ; $54eb: $f7
	jp $03cf                                         ; $54ec: $c3 $cf $03


	ld a, [de]                                       ; $54ef: $1a
	rlca                                             ; $54f0: $07
	ld e, $07                                        ; $54f1: $1e $07
	dec e                                            ; $54f3: $1d
	ld b, $15                                        ; $54f4: $06 $15
	ld c, $3d                                        ; $54f6: $0e $3d
	ld c, $2d                                        ; $54f8: $0e $2d
	ld e, $3f                                        ; $54fa: $1e $3f
	ld e, $56                                        ; $54fc: $1e $56
	ccf                                              ; $54fe: $3f
	halt                                             ; $54ff: $76
	ccf                                              ; $5500: $3f
	or $8b                                           ; $5501: $f6 $8b
	ld a, a                                          ; $5503: $7f
	or $ef                                           ; $5504: $f6 $ef
	or $af                                           ; $5506: $f6 $af
	xor b                                            ; $5508: $a8
	ld a, b                                          ; $5509: $78
	ld hl, sp+$38                                    ; $550a: $f8 $38
	ld e, b                                          ; $550c: $58
	cp b                                             ; $550d: $b8
	ld e, b                                          ; $550e: $58
	cp b                                             ; $550f: $b8
	ret c                                            ; $5510: $d8

	cp b                                             ; $5511: $b8
	ret z                                            ; $5512: $c8

	xor b                                            ; $5513: $a8
	xor b                                            ; $5514: $a8
	add sp, -$60                                     ; $5515: $e8 $a0
	call c, $80e0                                    ; $5517: $dc $e0 $80
	ret nc                                           ; $551a: $d0

	ldh a, [$d0]                                     ; $551b: $f0 $d0
	ldh a, [rLCDC]                                   ; $551d: $f0 $40
	ldh a, [$b8]                                     ; $551f: $f0 $b8
	add sp, -$68                                     ; $5521: $e8 $98
	add sp, -$58                                     ; $5523: $e8 $a8
	ret nc                                           ; $5525: $d0

	ld l, h                                          ; $5526: $6c
	call nc, $ec54                                   ; $5527: $d4 $54 $ec
	inc [hl]                                         ; $552a: $34
	add sp, $76                                      ; $552b: $e8 $76
	xor d                                            ; $552d: $aa
	ld [$dab6], a                                    ; $552e: $ea $b6 $da
	or h                                             ; $5531: $b4
	jp c, $b4b4                                      ; $5532: $da $b4 $b4

	jp c, $bbd5                                      ; $5535: $da $d5 $bb

	ld e, l                                          ; $5538: $5d
	sub d                                            ; $5539: $92
	ei                                               ; $553a: $fb
	ld e, b                                          ; $553b: $58
	rst $38                                          ; $553c: $ff
	ld [$ea5d], a                                    ; $553d: $ea $5d $ea
	ld e, l                                          ; $5540: $5d
	xor d                                            ; $5541: $aa
	ld e, l                                          ; $5542: $5d
	sbc $2d                                          ; $5543: $de $2d
	rst SubAFromDE                                          ; $5545: $df
	dec l                                            ; $5546: $2d
	ld [hl], d                                       ; $5547: $72
	ldh a, [$98]                                     ; $5548: $f0 $98
	ldh a, [c]                                       ; $554a: $f2
	cp a                                             ; $554b: $bf
	db $e3                                           ; $554c: $e3
	rst AddAOntoHL                                          ; $554d: $ef
	jp $e64e                                         ; $554e: $c3 $4e $e6


	ld [hl], $f0                                     ; $5551: $36 $f0
	sbc c                                            ; $5553: $99
	rst $38                                          ; $5554: $ff
	sub b                                            ; $5555: $90
	rst $38                                          ; $5556: $ff
	ld [hl], b                                       ; $5557: $70
	ld a, $38                                        ; $5558: $3e $38
	inc bc                                           ; $555a: $03
	db $10                                           ; $555b: $10
	scf                                              ; $555c: $37
	db $10                                           ; $555d: $10
	sbc h                                            ; $555e: $9c
	ld sp, $22ff                                     ; $555f: $31 $ff $22
	inc bc                                           ; $5562: $03
	db $10                                           ; $5563: $10
	ld e, a                                          ; $5564: $5f
	db $10                                           ; $5565: $10
	sbc b                                            ; $5566: $98
	inc hl                                           ; $5567: $23
	rst $38                                          ; $5568: $ff
	db $e3                                           ; $5569: $e3
	ld a, [hl]                                       ; $556a: $7e
	ld a, e                                          ; $556b: $7b
	sbc $f3                                          ; $556c: $de $f3
	ld b, a                                          ; $556e: $47
	db $10                                           ; $556f: $10
	ld l, e                                          ; $5570: $6b
	ld h, b                                          ; $5571: $60
	sbc c                                            ; $5572: $99
	ldh [c], a                                       ; $5573: $e2
	rst AddAOntoHL                                          ; $5574: $ef
	ret nz                                           ; $5575: $c0

	ld c, a                                          ; $5576: $4f
	pop hl                                           ; $5577: $e1
	ld h, e                                          ; $5578: $63
	cpl                                              ; $5579: $2f
	ld h, b                                          ; $557a: $60
	cp [hl]                                          ; $557b: $be
	cp $fc                                           ; $557c: $fe $fc
	xor $9a                                          ; $557e: $ee $9a
	ld l, $fc                                        ; $5580: $2e $fc
	db $fc                                           ; $5582: $fc
	ld hl, sp-$08                                    ; $5583: $f8 $f8
	inc bc                                           ; $5585: $03
	ld h, b                                          ; $5586: $60
	ld d, a                                          ; $5587: $57
	ld h, b                                          ; $5588: $60
	sbc c                                            ; $5589: $99
	jr nc, @+$01                                     ; $558a: $30 $ff

	jr nz, @+$01                                     ; $558c: $20 $ff

	ld bc, $03db                                     ; $558e: $01 $db $03
	ld h, b                                          ; $5591: $60
	ld h, e                                          ; $5592: $63
	ld h, b                                          ; $5593: $60
	sub h                                            ; $5594: $94
	inc bc                                           ; $5595: $03
	cp $03                                           ; $5596: $fe $03
	ld a, [hl]                                       ; $5598: $7e
	ld a, e                                          ; $5599: $7b
	rst $38                                          ; $559a: $ff
	di                                               ; $559b: $f3
	rst $38                                          ; $559c: $ff
	jp $03f7                                         ; $559d: $c3 $f7 $03


	inc sp                                           ; $55a0: $33
	ld h, b                                          ; $55a1: $60
	sbc h                                            ; $55a2: $9c
	ldh [$63], a                                     ; $55a3: $e0 $63
	pop hl                                           ; $55a5: $e1
	inc hl                                           ; $55a6: $23

jr_061_55a7:
	ld h, b                                          ; $55a7: $60
	sbc d                                            ; $55a8: $9a
	jr jr_061_55a7                                   ; $55a9: $18 $fc

	ldh [$fc], a                                     ; $55ab: $e0 $fc
	inc c                                            ; $55ad: $0c
	inc bc                                           ; $55ae: $03
	ld h, b                                          ; $55af: $60
	ccf                                              ; $55b0: $3f
	ld h, b                                          ; $55b1: $60
	cp a                                             ; $55b2: $bf
	db $db                                           ; $55b3: $db
	dec bc                                           ; $55b4: $0b
	inc bc                                           ; $55b5: $03
	ld h, b                                          ; $55b6: $60
	ld e, a                                          ; $55b7: $5f
	ld h, b                                          ; $55b8: $60
	sbc e                                            ; $55b9: $9b
	cp $73                                           ; $55ba: $fe $73
	rst $38                                          ; $55bc: $ff
	dec bc                                           ; $55bd: $0b
	ld a, e                                          ; $55be: $7b
	ld e, [hl]                                       ; $55bf: $5e
	ld e, e                                          ; $55c0: $5b
	ld h, b                                          ; $55c1: $60
	pop af                                           ; $55c2: $f1
	sbc d                                            ; $55c3: $9a
	dec b                                            ; $55c4: $05
	ld [bc], a                                       ; $55c5: $02
	ld a, [de]                                       ; $55c6: $1a
	ld a, [bc]                                       ; $55c7: $0a
	nop                                              ; $55c8: $00
	cp h                                             ; $55c9: $bc
	ld b, $00                                        ; $55ca: $06 $00
	nop                                              ; $55cc: $00
	ld bc, $9ebd                                     ; $55cd: $01 $bd $9e
	jp $e037                                         ; $55d0: $c3 $37 $e0


	ld [hl], a                                       ; $55d3: $77
	sbc b                                            ; $55d4: $98
	ld [hl], a                                       ; $55d5: $77
	sbc $2f                                          ; $55d6: $de $2f
	ldh [$9c], a                                     ; $55d8: $e0 $9c
	dec de                                           ; $55da: $1b
	ld a, [bc]                                       ; $55db: $0a
	ld c, $7b                                        ; $55dc: $0e $7b
	xor d                                            ; $55de: $aa
	rla                                              ; $55df: $17
	ldh [$9e], a                                     ; $55e0: $e0 $9e
	ld e, $de                                        ; $55e2: $1e $de
	ld c, $67                                        ; $55e4: $0e $67
	ldh [$e7], a                                     ; $55e6: $e0 $e7
	ld bc, $91ba                                     ; $55e8: $01 $ba $91
	ld [hl+], a                                      ; $55eb: $22
	ld c, d                                          ; $55ec: $4a
	ld d, d                                          ; $55ed: $52
	sub [hl]                                         ; $55ee: $96
	and [hl]                                         ; $55ef: $a6
	xor [hl]                                         ; $55f0: $ae
	sbc l                                            ; $55f1: $9d
	inc b                                            ; $55f2: $04
	ld c, $7b                                        ; $55f3: $0e $7b
	cp $9b                                           ; $55f5: $fe $9b
	ld l, $04                                        ; $55f7: $2e $04
	ld l, [hl]                                       ; $55f9: $6e
	inc h                                            ; $55fa: $24
	ld l, a                                          ; $55fb: $6f
	cp $80                                           ; $55fc: $fe $80
	ld a, [hl]                                       ; $55fe: $7e
	ld c, h                                          ; $55ff: $4c
	rst $38                                          ; $5600: $ff
	ld c, l                                          ; $5601: $4d
	rst $38                                          ; $5602: $ff
	ld e, l                                          ; $5603: $5d
	rst FarCall                                          ; $5604: $f7
	rst SubAFromDE                                          ; $5605: $df
	di                                               ; $5606: $f3
	cp a                                             ; $5607: $bf
	rst SubAFromBC                                          ; $5608: $e7
	rst AddAOntoHL                                          ; $5609: $ef
	call $e04d                                       ; $560a: $cd $4d $e0
	ld h, b                                          ; $560d: $60
	ldh [$b1], a                                     ; $560e: $e0 $b1
	ldh [$50], a                                     ; $5610: $e0 $50
	or b                                             ; $5612: $b0
	cp b                                             ; $5613: $b8
	ld e, b                                          ; $5614: $58
	xor h                                            ; $5615: $ac
	ld e, h                                          ; $5616: $5c
	ld e, e                                          ; $5617: $5b
	xor [hl]                                         ; $5618: $ae
	rla                                              ; $5619: $17
	xor a                                            ; $561a: $af
	dec l                                            ; $561b: $2d
	sub a                                            ; $561c: $97
	add b                                            ; $561d: $80
	ld c, [hl]                                       ; $561e: $4e
	sub l                                            ; $561f: $95
	sub d                                            ; $5620: $92
	ld b, a                                          ; $5621: $47
	db $dd                                           ; $5622: $dd
	ld [$4c80], sp                                   ; $5623: $08 $80 $4c
	xor [hl]                                         ; $5626: $ae
	ld b, h                                          ; $5627: $44
	add [hl]                                         ; $5628: $86
	ld h, h                                          ; $5629: $64
	inc [hl]                                         ; $562a: $34
	ld h, [hl]                                       ; $562b: $66
	dec [hl]                                         ; $562c: $35
	ld h, [hl]                                       ; $562d: $66
	scf                                              ; $562e: $37
	ld h, [hl]                                       ; $562f: $66
	xor a                                            ; $5630: $af
	halt                                             ; $5631: $76
	xor [hl]                                         ; $5632: $ae
	ld [hl], a                                       ; $5633: $77
	xor [hl]                                         ; $5634: $ae
	ld [hl], a                                       ; $5635: $77
	or [hl]                                          ; $5636: $b6
	ld a, a                                          ; $5637: $7f
	halt                                             ; $5638: $76
	rst SubAFromDE                                          ; $5639: $df
	halt                                             ; $563a: $76
	rst SubAFromDE                                          ; $563b: $df
	rst $38                                          ; $563c: $ff
	adc e                                            ; $563d: $8b
	ei                                               ; $563e: $fb
	rst $38                                          ; $563f: $ff
	db $db                                           ; $5640: $db
	rst $38                                          ; $5641: $ff
	sub d                                            ; $5642: $92
	rst $38                                          ; $5643: $ff
	ld hl, sp-$01                                    ; $5644: $f8 $ff
	ld hl, sp-$0a                                    ; $5646: $f8 $f6
	jr nc, jr_061_566e                               ; $5648: $30 $24

	jr nc, jr_061_56bc                               ; $564a: $30 $70

	ldh a, [$d0]                                     ; $564c: $f0 $d0
	sub b                                            ; $564e: $90
	ld hl, sp+$60                                    ; $564f: $f8 $60
	ldh [$bc], a                                     ; $5651: $e0 $bc
	nop                                              ; $5653: $00
	nop                                              ; $5654: $00
	nop                                              ; $5655: $00
	nop                                              ; $5656: $00
	ld b, b                                          ; $5657: $40
	add b                                            ; $5658: $80
	add b                                            ; $5659: $80
	ret nc                                           ; $565a: $d0

	ldh [$fb], a                                     ; $565b: $e0 $fb
	db $fc                                           ; $565d: $fc
	or a                                             ; $565e: $b7
	rst $38                                          ; $565f: $ff
	sbc d                                            ; $5660: $9a
	call $cdab                                       ; $5661: $cd $ab $cd
	db $e3                                           ; $5664: $e3
	ld c, h                                          ; $5665: $4c
	push bc                                          ; $5666: $c5
	ld l, [hl]                                       ; $5667: $6e
	push de                                          ; $5668: $d5
	ld l, [hl]                                       ; $5669: $6e
	rst SubAFromHL                                          ; $566a: $d7
	ld l, [hl]                                       ; $566b: $6e
	or $6f                                           ; $566c: $f6 $6f

jr_061_566e:
	and $7f                                          ; $566e: $e6 $7f
	ld h, a                                          ; $5670: $67
	db $fd                                           ; $5671: $fd
	ld h, a                                          ; $5672: $67
	db $fd                                           ; $5673: $fd
	rst AddAOntoHL                                          ; $5674: $ef
	ei                                               ; $5675: $fb
	rst AddAOntoHL                                          ; $5676: $ef
	cp c                                             ; $5677: $b9
	sub d                                            ; $5678: $92
	rst $38                                          ; $5679: $ff
	or c                                             ; $567a: $b1
	rst $38                                          ; $567b: $ff
	inc sp                                           ; $567c: $33
	rst $38                                          ; $567d: $ff
	ld h, $fe                                        ; $567e: $26 $fe
	ld b, $da                                        ; $5680: $06 $da
	inc bc                                           ; $5682: $03
	dec bc                                           ; $5683: $0b
	ld bc, $bd01                                     ; $5684: $01 $01 $bd
	ld bc, $0e0c                                     ; $5687: $01 $0c $0e
	ld c, $80                                        ; $568a: $0e $80
	inc b                                            ; $568c: $04
	nop                                              ; $568d: $00
	nop                                              ; $568e: $00
	xor $33                                          ; $568f: $ee $33
	ld e, l                                          ; $5691: $5d
	or e                                             ; $5692: $b3
	rst SubAFromHL                                          ; $5693: $d7
	cp c                                             ; $5694: $b9
	rst SubAFromHL                                          ; $5695: $d7
	cp c                                             ; $5696: $b9
	sbc d                                            ; $5697: $9a
	db $fd                                           ; $5698: $fd
	ld e, d                                          ; $5699: $5a
	db $fd                                           ; $569a: $fd
	ld e, h                                          ; $569b: $5c
	rst $38                                          ; $569c: $ff
	ld e, h                                          ; $569d: $5c
	rst $38                                          ; $569e: $ff
	db $fc                                           ; $569f: $fc
	or a                                             ; $56a0: $b7
	db $fd                                           ; $56a1: $fd
	or a                                             ; $56a2: $b7
	db $fd                                           ; $56a3: $fd
	rst FarCall                                          ; $56a4: $f7
	rst $38                                          ; $56a5: $ff
	daa                                              ; $56a6: $27
	rst $38                                          ; $56a7: $ff
	db $e3                                           ; $56a8: $e3
	rst $38                                          ; $56a9: $ff
	ei                                               ; $56aa: $fb
	add b                                            ; $56ab: $80
	sbc $73                                          ; $56ac: $de $73
	ld a, [hl]                                       ; $56ae: $7e
	ld b, e                                          ; $56af: $43
	rst $38                                          ; $56b0: $ff
	db $e3                                           ; $56b1: $e3
	cp a                                             ; $56b2: $bf
	inc hl                                           ; $56b3: $23
	rst FarCall                                          ; $56b4: $f7
	jp $03cf                                         ; $56b5: $c3 $cf $03


	ld a, [de]                                       ; $56b8: $1a
	rlca                                             ; $56b9: $07
	ld e, $07                                        ; $56ba: $1e $07

jr_061_56bc:
	dec e                                            ; $56bc: $1d
	ld b, $15                                        ; $56bd: $06 $15
	ld c, $3d                                        ; $56bf: $0e $3d
	ld c, $2d                                        ; $56c1: $0e $2d
	ld e, $3f                                        ; $56c3: $1e $3f
	ld e, $56                                        ; $56c5: $1e $56
	ccf                                              ; $56c7: $3f
	halt                                             ; $56c8: $76
	ccf                                              ; $56c9: $3f
	or $8b                                           ; $56ca: $f6 $8b
	ld a, a                                          ; $56cc: $7f
	or $ef                                           ; $56cd: $f6 $ef
	or $af                                           ; $56cf: $f6 $af
	xor b                                            ; $56d1: $a8
	ld a, b                                          ; $56d2: $78
	ld hl, sp+$38                                    ; $56d3: $f8 $38
	ld e, b                                          ; $56d5: $58
	cp b                                             ; $56d6: $b8
	ld e, b                                          ; $56d7: $58
	cp b                                             ; $56d8: $b8
	ret c                                            ; $56d9: $d8

	cp b                                             ; $56da: $b8
	ret z                                            ; $56db: $c8

	xor b                                            ; $56dc: $a8
	xor b                                            ; $56dd: $a8
	add sp, -$60                                     ; $56de: $e8 $a0

Jump_061_56e0:
	call c, $80e0                                    ; $56e0: $dc $e0 $80
	ret nc                                           ; $56e3: $d0

	ldh a, [$d0]                                     ; $56e4: $f0 $d0
	ldh a, [rLCDC]                                   ; $56e6: $f0 $40
	ldh a, [$b8]                                     ; $56e8: $f0 $b8
	add sp, -$68                                     ; $56ea: $e8 $98
	add sp, -$58                                     ; $56ec: $e8 $a8
	ret nc                                           ; $56ee: $d0

	ld l, h                                          ; $56ef: $6c
	call nc, $ec54                                   ; $56f0: $d4 $54 $ec
	inc [hl]                                         ; $56f3: $34
	add sp, $76                                      ; $56f4: $e8 $76
	xor d                                            ; $56f6: $aa
	ld [$dab6], a                                    ; $56f7: $ea $b6 $da
	or h                                             ; $56fa: $b4
	jp c, $b4b4                                      ; $56fb: $da $b4 $b4

	jp c, $bbd5                                      ; $56fe: $da $d5 $bb

	ld e, l                                          ; $5701: $5d
	sub d                                            ; $5702: $92
	ei                                               ; $5703: $fb
	ld e, b                                          ; $5704: $58
	rst $38                                          ; $5705: $ff
	ld [$ea5d], a                                    ; $5706: $ea $5d $ea
	ld e, l                                          ; $5709: $5d
	xor d                                            ; $570a: $aa
	ld e, l                                          ; $570b: $5d
	sbc $2d                                          ; $570c: $de $2d
	rst SubAFromDE                                          ; $570e: $df
	dec l                                            ; $570f: $2d
	ld [hl], d                                       ; $5710: $72
	ldh a, [$98]                                     ; $5711: $f0 $98
	ldh a, [c]                                       ; $5713: $f2
	cp a                                             ; $5714: $bf
	db $e3                                           ; $5715: $e3
	rst AddAOntoHL                                          ; $5716: $ef
	rst JumpTable                                          ; $5717: $c7
	ld c, a                                          ; $5718: $4f
	db $ec                                           ; $5719: $ec
	ld [hl], $f0                                     ; $571a: $36 $f0
	sbc b                                            ; $571c: $98
	rst $38                                          ; $571d: $ff
	sub b                                            ; $571e: $90
	rst $38                                          ; $571f: $ff
	ld [hl], b                                       ; $5720: $70
	cp $f8                                           ; $5721: $fe $f8
	and h                                            ; $5723: $a4
	inc bc                                           ; $5724: $03
	db $10                                           ; $5725: $10
	dec sp                                           ; $5726: $3b
	db $10                                           ; $5727: $10
	sbc d                                            ; $5728: $9a
	ld sp, $23ff                                     ; $5729: $31 $ff $23
	rst $38                                          ; $572c: $ff
	ld b, $23                                        ; $572d: $06 $23
	jr nz, jr_061_57b0                               ; $572f: $20 $7f

	db $e4                                           ; $5731: $e4
	sbc d                                            ; $5732: $9a
	db $e3                                           ; $5733: $e3
	cp $fb                                           ; $5734: $fe $fb
	ld e, [hl]                                       ; $5736: $5e
	ld [hl], e                                       ; $5737: $73
	ld l, e                                          ; $5738: $6b
	add b                                            ; $5739: $80
	sbc c                                            ; $573a: $99
	ldh [c], a                                       ; $573b: $e2
	rst AddAOntoHL                                          ; $573c: $ef
	ret nz                                           ; $573d: $c0

	ld c, a                                          ; $573e: $4f
	pop hl                                           ; $573f: $e1
	ld h, e                                          ; $5740: $63
	ld [bc], a                                       ; $5741: $02
	ld [hl], b                                       ; $5742: $70
	ld d, d                                          ; $5743: $52
	ld [hl], b                                       ; $5744: $70
	ld a, [hl]                                       ; $5745: $7e
	ld [hl], d                                       ; $5746: $72
	ld a, [hl]                                       ; $5747: $7e
	ld l, [hl]                                       ; $5748: $6e
	ld a, [hl]                                       ; $5749: $7e
	ld [hl], b                                       ; $574a: $70
	ld a, a                                          ; $574b: $7f
	ld h, b                                          ; $574c: $60
	cp [hl]                                          ; $574d: $be
	cp $fc                                           ; $574e: $fe $fc
	sbc $9a                                          ; $5750: $de $9a
	ld e, $fc                                        ; $5752: $1e $fc
	db $fc                                           ; $5754: $fc
	ld hl, sp-$08                                    ; $5755: $f8 $f8
	inc bc                                           ; $5757: $03
	ld h, b                                          ; $5758: $60
	ld l, a                                          ; $5759: $6f
	ld h, b                                          ; $575a: $60
	sbc h                                            ; $575b: $9c
	ld sp, hl                                        ; $575c: $f9
	rst AddAOntoHL                                          ; $575d: $ef
	cp e                                             ; $575e: $bb
	ld a, e                                          ; $575f: $7b
	ld h, b                                          ; $5760: $60
	sbc c                                            ; $5761: $99
	jr nc, @+$01                                     ; $5762: $30 $ff

	jr nz, @+$01                                     ; $5764: $20 $ff

	ld bc, $02db                                     ; $5766: $01 $db $02
	ld [hl], b                                       ; $5769: $70
	ld [hl], e                                       ; $576a: $73
	ld d, b                                          ; $576b: $50
	sbc [hl]                                         ; $576c: $9e
	and a                                            ; $576d: $a7
	ld a, e                                          ; $576e: $7b
	ld d, b                                          ; $576f: $50
	sub h                                            ; $5770: $94
	inc bc                                           ; $5771: $03
	cp $03                                           ; $5772: $fe $03
	cp $fb                                           ; $5774: $fe $fb
	cp a                                             ; $5776: $bf
	or e                                             ; $5777: $b3
	rst $38                                          ; $5778: $ff
	jp $03ff                                         ; $5779: $c3 $ff $03


	ld e, [hl]                                       ; $577c: $5e
	ld [hl], b                                       ; $577d: $70
	ld e, e                                          ; $577e: $5b
	ld b, b                                          ; $577f: $40
	sbc h                                            ; $5780: $9c
	ldh [$63], a                                     ; $5781: $e0 $63
	pop hl                                           ; $5783: $e1
	ld [hl-], a                                      ; $5784: $32
	ret nz                                           ; $5785: $c0

	cp a                                             ; $5786: $bf
	cp $fc                                           ; $5787: $fe $fc
	sbc d                                            ; $5789: $9a
	jr @-$02                                         ; $578a: $18 $fc

	ldh [$fc], a                                     ; $578c: $e0 $fc
	inc c                                            ; $578e: $0c
	inc bc                                           ; $578f: $03
	ld h, b                                          ; $5790: $60
	ccf                                              ; $5791: $3f
	ld h, b                                          ; $5792: $60
	cp a                                             ; $5793: $bf
	db $db                                           ; $5794: $db
	dec bc                                           ; $5795: $0b
	inc bc                                           ; $5796: $03
	ld h, b                                          ; $5797: $60
	ld e, e                                          ; $5798: $5b
	ld h, b                                          ; $5799: $60
	sbc d                                            ; $579a: $9a
	ld [hl], e                                       ; $579b: $73
	rst $38                                          ; $579c: $ff
	dec bc                                           ; $579d: $0b
	rst $38                                          ; $579e: $ff
	di                                               ; $579f: $f3
	ld d, a                                          ; $57a0: $57
	ld h, b                                          ; $57a1: $60
	pop af                                           ; $57a2: $f1
	sbc d                                            ; $57a3: $9a
	rlca                                             ; $57a4: $07
	nop                                              ; $57a5: $00
	ld a, [de]                                       ; $57a6: $1a
	ld [$bc0c], sp                                   ; $57a7: $08 $0c $bc
	ld b, $00                                        ; $57aa: $06 $00
	nop                                              ; $57ac: $00
	ld bc, $9ebd                                     ; $57ad: $01 $bd $9e

jr_061_57b0:
	jp $e03b                                         ; $57b0: $c3 $3b $e0


	sbc e                                            ; $57b3: $9b
	ld a, [bc]                                       ; $57b4: $0a
	ld b, $0c                                        ; $57b5: $06 $0c
	nop                                              ; $57b7: $00
	cp l                                             ; $57b8: $bd
	ld b, $00                                        ; $57b9: $06 $00
	ld bc, $3bbd                                     ; $57bb: $01 $bd $3b
	ldh [$9c], a                                     ; $57be: $e0 $9c
	dec de                                           ; $57c0: $1b
	ld a, [bc]                                       ; $57c1: $0a
	ld d, $7b                                        ; $57c2: $16 $7b
	xor d                                            ; $57c4: $aa
	rla                                              ; $57c5: $17
	ldh [$9d], a                                     ; $57c6: $e0 $9d
	ld e, $0e                                        ; $57c8: $1e $0e
	ld l, a                                          ; $57ca: $6f
	cp [hl]                                          ; $57cb: $be
	ld [hl], a                                       ; $57cc: $77
	ldh [$dc], a                                     ; $57cd: $e0 $dc
	ld bc, $91ba                                     ; $57cf: $01 $ba $91
	ld [hl+], a                                      ; $57d2: $22
	ld c, d                                          ; $57d3: $4a
	ld d, d                                          ; $57d4: $52
	sub [hl]                                         ; $57d5: $96
	and [hl]                                         ; $57d6: $a6
	xor [hl]                                         ; $57d7: $ae
	sbc l                                            ; $57d8: $9d
	inc b                                            ; $57d9: $04
	ld c, $7b                                        ; $57da: $0e $7b
	cp $9b                                           ; $57dc: $fe $9b
	ld l, $04                                        ; $57de: $2e $04
	ld l, [hl]                                       ; $57e0: $6e
	inc h                                            ; $57e1: $24
	ld l, a                                          ; $57e2: $6f
	cp $80                                           ; $57e3: $fe $80
	ld a, [hl]                                       ; $57e5: $7e
	ld c, h                                          ; $57e6: $4c
	rst $38                                          ; $57e7: $ff
	ld c, l                                          ; $57e8: $4d
	rst $38                                          ; $57e9: $ff
	ld e, l                                          ; $57ea: $5d
	rst FarCall                                          ; $57eb: $f7
	rst SubAFromDE                                          ; $57ec: $df
	di                                               ; $57ed: $f3
	cp a                                             ; $57ee: $bf
	db $e3                                           ; $57ef: $e3
	rst AddAOntoHL                                          ; $57f0: $ef
	rst JumpTable                                          ; $57f1: $c7
	ld c, l                                          ; $57f2: $4d
	db $ec                                           ; $57f3: $ec
	ld h, b                                          ; $57f4: $60
	ldh [$b1], a                                     ; $57f5: $e0 $b1
	ldh [$50], a                                     ; $57f7: $e0 $50
	or b                                             ; $57f9: $b0
	cp b                                             ; $57fa: $b8
	ld e, b                                          ; $57fb: $58
	xor h                                            ; $57fc: $ac
	ld e, h                                          ; $57fd: $5c
	ld e, e                                          ; $57fe: $5b
	xor [hl]                                         ; $57ff: $ae
	rla                                              ; $5800: $17
	xor a                                            ; $5801: $af
	dec l                                            ; $5802: $2d
	sub a                                            ; $5803: $97
	add b                                            ; $5804: $80
	ld c, [hl]                                       ; $5805: $4e
	sub l                                            ; $5806: $95
	sub d                                            ; $5807: $92
	ld b, a                                          ; $5808: $47
	db $dd                                           ; $5809: $dd
	ld [$4c80], sp                                   ; $580a: $08 $80 $4c
	xor [hl]                                         ; $580d: $ae
	ld b, h                                          ; $580e: $44
	add [hl]                                         ; $580f: $86
	ld h, h                                          ; $5810: $64
	inc [hl]                                         ; $5811: $34
	ld h, [hl]                                       ; $5812: $66
	dec [hl]                                         ; $5813: $35
	ld h, [hl]                                       ; $5814: $66
	scf                                              ; $5815: $37
	ld h, [hl]                                       ; $5816: $66
	xor a                                            ; $5817: $af
	halt                                             ; $5818: $76
	xor [hl]                                         ; $5819: $ae
	ld [hl], a                                       ; $581a: $77
	xor [hl]                                         ; $581b: $ae
	ld [hl], a                                       ; $581c: $77
	or [hl]                                          ; $581d: $b6
	ld a, a                                          ; $581e: $7f
	halt                                             ; $581f: $76
	rst SubAFromDE                                          ; $5820: $df
	halt                                             ; $5821: $76
	rst SubAFromDE                                          ; $5822: $df
	rst $38                                          ; $5823: $ff
	adc e                                            ; $5824: $8b
	db $db                                           ; $5825: $db
	rst $38                                          ; $5826: $ff
	ei                                               ; $5827: $fb
	rst $38                                          ; $5828: $ff
	sbc d                                            ; $5829: $9a
	rst $38                                          ; $582a: $ff
	sub b                                            ; $582b: $90
	rst $38                                          ; $582c: $ff
	ld [hl], b                                       ; $582d: $70
	cp $f8                                           ; $582e: $fe $f8
	ld h, h                                          ; $5830: $64
	jr nc, jr_061_58a3                               ; $5831: $30 $70

	ldh a, [$d0]                                     ; $5833: $f0 $d0
	sub b                                            ; $5835: $90
	ld hl, sp+$60                                    ; $5836: $f8 $60
	ldh [$bc], a                                     ; $5838: $e0 $bc
	nop                                              ; $583a: $00
	nop                                              ; $583b: $00
	nop                                              ; $583c: $00
	nop                                              ; $583d: $00
	ld b, b                                          ; $583e: $40
	add b                                            ; $583f: $80
	add b                                            ; $5840: $80
	ret nc                                           ; $5841: $d0

	ldh [$fb], a                                     ; $5842: $e0 $fb
	db $fc                                           ; $5844: $fc
	or a                                             ; $5845: $b7
	rst $38                                          ; $5846: $ff
	sbc d                                            ; $5847: $9a
	call $cdab                                       ; $5848: $cd $ab $cd
	db $e3                                           ; $584b: $e3
	ld c, h                                          ; $584c: $4c
	push bc                                          ; $584d: $c5
	ld l, [hl]                                       ; $584e: $6e
	push de                                          ; $584f: $d5
	ld l, [hl]                                       ; $5850: $6e
	rst SubAFromHL                                          ; $5851: $d7
	ld l, [hl]                                       ; $5852: $6e
	or $6f                                           ; $5853: $f6 $6f
	and $7f                                          ; $5855: $e6 $7f
	ld h, a                                          ; $5857: $67
	db $fd                                           ; $5858: $fd
	ld h, a                                          ; $5859: $67
	db $fd                                           ; $585a: $fd
	rst AddAOntoHL                                          ; $585b: $ef
	ld hl, sp-$11                                    ; $585c: $f8 $ef
	cp c                                             ; $585e: $b9
	sub d                                            ; $585f: $92
	rst $38                                          ; $5860: $ff
	or d                                             ; $5861: $b2
	rst $38                                          ; $5862: $ff
	ld sp, $23ff                                     ; $5863: $31 $ff $23
	cp $06                                           ; $5866: $fe $06
	jp c, $0b03                                      ; $5868: $da $03 $0b

	ld bc, $bd01                                     ; $586b: $01 $01 $bd
	ld bc, $0e0c                                     ; $586e: $01 $0c $0e
	ld c, $80                                        ; $5871: $0e $80
	inc b                                            ; $5873: $04
	nop                                              ; $5874: $00
	nop                                              ; $5875: $00
	xor $33                                          ; $5876: $ee $33
	ld e, l                                          ; $5878: $5d
	or e                                             ; $5879: $b3
	rst SubAFromHL                                          ; $587a: $d7
	cp c                                             ; $587b: $b9
	rst SubAFromHL                                          ; $587c: $d7
	cp c                                             ; $587d: $b9
	sbc d                                            ; $587e: $9a
	db $fd                                           ; $587f: $fd
	ld e, d                                          ; $5880: $5a
	db $fd                                           ; $5881: $fd
	ld e, h                                          ; $5882: $5c
	rst $38                                          ; $5883: $ff
	ld e, h                                          ; $5884: $5c
	rst $38                                          ; $5885: $ff
	db $fc                                           ; $5886: $fc
	or a                                             ; $5887: $b7
	db $fd                                           ; $5888: $fd
	or a                                             ; $5889: $b7
	db $fd                                           ; $588a: $fd
	rst FarCall                                          ; $588b: $f7
	rst $38                                          ; $588c: $ff
	and a                                            ; $588d: $a7
	rst $38                                          ; $588e: $ff
	and e                                            ; $588f: $a3
	rst $38                                          ; $5890: $ff
	db $e3                                           ; $5891: $e3
	add b                                            ; $5892: $80
	cp $fb                                           ; $5893: $fe $fb
	sbc $63                                          ; $5895: $de $63
	rst $38                                          ; $5897: $ff
	db $e3                                           ; $5898: $e3
	cp a                                             ; $5899: $bf
	inc hl                                           ; $589a: $23
	rst FarCall                                          ; $589b: $f7
	jp $03cf                                         ; $589c: $c3 $cf $03


	ld a, [de]                                       ; $589f: $1a
	rlca                                             ; $58a0: $07
	ld e, $07                                        ; $58a1: $1e $07

jr_061_58a3:
	dec e                                            ; $58a3: $1d
	ld b, $15                                        ; $58a4: $06 $15
	ld c, $3d                                        ; $58a6: $0e $3d
	ld c, $2d                                        ; $58a8: $0e $2d
	ld e, $3f                                        ; $58aa: $1e $3f
	ld e, $56                                        ; $58ac: $1e $56
	ccf                                              ; $58ae: $3f
	halt                                             ; $58af: $76
	ccf                                              ; $58b0: $3f
	or $8b                                           ; $58b1: $f6 $8b
	ld a, a                                          ; $58b3: $7f
	or $ef                                           ; $58b4: $f6 $ef
	or $af                                           ; $58b6: $f6 $af
	xor b                                            ; $58b8: $a8
	ld a, b                                          ; $58b9: $78
	ld hl, sp+$38                                    ; $58ba: $f8 $38
	ld e, b                                          ; $58bc: $58
	cp b                                             ; $58bd: $b8
	ld e, b                                          ; $58be: $58
	cp b                                             ; $58bf: $b8
	ret c                                            ; $58c0: $d8

	cp b                                             ; $58c1: $b8
	ret z                                            ; $58c2: $c8

	xor b                                            ; $58c3: $a8
	xor b                                            ; $58c4: $a8
	add sp, -$60                                     ; $58c5: $e8 $a0
	call c, $80e0                                    ; $58c7: $dc $e0 $80
	ret nc                                           ; $58ca: $d0

	ldh a, [$d0]                                     ; $58cb: $f0 $d0
	ldh a, [rLCDC]                                   ; $58cd: $f0 $40
	ldh a, [$b8]                                     ; $58cf: $f0 $b8
	add sp, -$68                                     ; $58d1: $e8 $98
	add sp, -$58                                     ; $58d3: $e8 $a8
	ret nc                                           ; $58d5: $d0

	ld l, h                                          ; $58d6: $6c
	call nc, $ec54                                   ; $58d7: $d4 $54 $ec
	inc [hl]                                         ; $58da: $34
	add sp, $76                                      ; $58db: $e8 $76
	xor d                                            ; $58dd: $aa
	ld [$dab6], a                                    ; $58de: $ea $b6 $da
	or h                                             ; $58e1: $b4
	jp c, $b4b4                                      ; $58e2: $da $b4 $b4

	jp c, $bbd5                                      ; $58e5: $da $d5 $bb

	ld e, l                                          ; $58e8: $5d
	sub d                                            ; $58e9: $92
	ei                                               ; $58ea: $fb
	ld e, b                                          ; $58eb: $58
	rst $38                                          ; $58ec: $ff
	ld [$ea5d], a                                    ; $58ed: $ea $5d $ea
	ld e, l                                          ; $58f0: $5d
	xor d                                            ; $58f1: $aa
	ld e, l                                          ; $58f2: $5d
	sbc $2d                                          ; $58f3: $de $2d
	rst SubAFromDE                                          ; $58f5: $df
	dec l                                            ; $58f6: $2d
	ld [hl], d                                       ; $58f7: $72
	ldh a, [$9e]                                     ; $58f8: $f0 $9e
	ldh a, [c]                                       ; $58fa: $f2
	ld a, d                                          ; $58fb: $7a
	ldh a, [$9c]                                     ; $58fc: $f0 $9c
	jp $e64f                                         ; $58fe: $c3 $4f $e6


	ld [hl], $f0                                     ; $5901: $36 $f0
	ld a, e                                          ; $5903: $7b
	db $10                                           ; $5904: $10
	sbc d                                            ; $5905: $9a
	nop                                              ; $5906: $00
	cp $f0                                           ; $5907: $fe $f0
	ld l, h                                          ; $5909: $6c
	jr c, jr_061_590f                                ; $590a: $38 $03

	db $10                                           ; $590c: $10
	ccf                                              ; $590d: $3f
	db $10                                           ; $590e: $10

jr_061_590f:
	sbc b                                            ; $590f: $98
	jr nc, @+$01                                     ; $5910: $30 $ff

	ld hl, $02fe                                     ; $5912: $21 $fe $02
	sbc $07                                          ; $5915: $de $07
	inc bc                                           ; $5917: $03
	db $10                                           ; $5918: $10
	ld h, a                                          ; $5919: $67
	db $10                                           ; $591a: $10
	sbc d                                            ; $591b: $9a
	inc bc                                           ; $591c: $03
	cp $e3                                           ; $591d: $fe $e3
	sbc $7b                                          ; $591f: $de $7b
	ld l, e                                          ; $5921: $6b
	ld [hl], b                                       ; $5922: $70
	sbc c                                            ; $5923: $99
	ldh [c], a                                       ; $5924: $e2
	rst AddAOntoHL                                          ; $5925: $ef
	ret nz                                           ; $5926: $c0

	ld c, a                                          ; $5927: $4f
	pop hl                                           ; $5928: $e1
	ld h, e                                          ; $5929: $63
	ld [bc], a                                       ; $592a: $02
	ld h, b                                          ; $592b: $60
	ld c, d                                          ; $592c: $4a
	ld h, b                                          ; $592d: $60
	ld a, a                                          ; $592e: $7f
	cp $9c                                           ; $592f: $fe $9c
	ldh a, [c]                                       ; $5931: $f2
	rst $38                                          ; $5932: $ff
	sbc b                                            ; $5933: $98
	ld a, e                                          ; $5934: $7b
	ld d, b                                          ; $5935: $50
	cp a                                             ; $5936: $bf
	db $fc                                           ; $5937: $fc
	sbc $9a                                          ; $5938: $de $9a
	ld e, [hl]                                       ; $593a: $5e
	db $fc                                           ; $593b: $fc
	db $fc                                           ; $593c: $fc
	ld hl, sp-$08                                    ; $593d: $f8 $f8
	inc bc                                           ; $593f: $03
	ld d, b                                          ; $5940: $50
	ld h, a                                          ; $5941: $67
	ld d, b                                          ; $5942: $50
	sub l                                            ; $5943: $95
	cp b                                             ; $5944: $b8
	rst $38                                          ; $5945: $ff
	or c                                             ; $5946: $b1
	rst $38                                          ; $5947: $ff
	ld [hl-], a                                      ; $5948: $32
	rst $38                                          ; $5949: $ff
	jr nz, @+$01                                     ; $594a: $20 $ff

	ld bc, $02db                                     ; $594c: $01 $db $02
	ld h, b                                          ; $594f: $60
	ld e, e                                          ; $5950: $5b
	ld d, b                                          ; $5951: $50
	ld a, a                                          ; $5952: $7f
	cp $98                                           ; $5953: $fe $98
	ei                                               ; $5955: $fb
	ld a, a                                          ; $5956: $7f
	ld [hl], e                                       ; $5957: $73
	rst $38                                          ; $5958: $ff
	jp $03f7                                         ; $5959: $c3 $f7 $03


	ld e, [hl]                                       ; $595c: $5e
	ld h, b                                          ; $595d: $60
	ld e, e                                          ; $595e: $5b
	ld b, b                                          ; $595f: $40
	sbc h                                            ; $5960: $9c
	ldh [$63], a                                     ; $5961: $e0 $63
	pop hl                                           ; $5963: $e1
	ld a, [hl-]                                      ; $5964: $3a
	or b                                             ; $5965: $b0
	ld l, a                                          ; $5966: $6f

jr_061_5967:
	ld h, b                                          ; $5967: $60
	sbc d                                            ; $5968: $9a
	jr jr_061_5967                                   ; $5969: $18 $fc

	ldh [$fc], a                                     ; $596b: $e0 $fc
	inc c                                            ; $596d: $0c
	inc bc                                           ; $596e: $03
	ld h, b                                          ; $596f: $60
	ccf                                              ; $5970: $3f
	ld h, b                                          ; $5971: $60
	cp a                                             ; $5972: $bf
	db $db                                           ; $5973: $db
	dec bc                                           ; $5974: $0b
	inc bc                                           ; $5975: $03
	ld h, b                                          ; $5976: $60
	ld e, e                                          ; $5977: $5b
	ld h, b                                          ; $5978: $60
	ld a, a                                          ; $5979: $7f
	ld h, d                                          ; $597a: $62
	sbc e                                            ; $597b: $9b
	dec bc                                           ; $597c: $0b
	rst $38                                          ; $597d: $ff
	di                                               ; $597e: $f3
	rst $38                                          ; $597f: $ff
	ld e, e                                          ; $5980: $5b
	ld h, b                                          ; $5981: $60
	pop af                                           ; $5982: $f1
	ld a, a                                          ; $5983: $7f
	cp b                                             ; $5984: $b8
	sbc l                                            ; $5985: $9d
	ld a, [de]                                       ; $5986: $1a
	ld [$fa77], sp                                   ; $5987: $08 $77 $fa
	db $fd                                           ; $598a: $fd
	ld a, a                                          ; $598b: $7f
	xor d                                            ; $598c: $aa
	sbc l                                            ; $598d: $9d
	cp l                                             ; $598e: $bd
	jp $7ff1                                         ; $598f: $c3 $f1 $7f


	rst GetHLinHL                                          ; $5992: $cf
	sbc h                                            ; $5993: $9c
	ld a, [de]                                       ; $5994: $1a
	ld a, [bc]                                       ; $5995: $0a
	ld e, $7b                                        ; $5996: $1e $7b
	pop hl                                           ; $5998: $e1
	ld [hl], a                                       ; $5999: $77
	sbc $27                                          ; $599a: $de $27
	ldh [$9e], a                                     ; $599c: $e0 $9e
	inc e                                            ; $599e: $1c
	ld a, e                                          ; $599f: $7b
	xor d                                            ; $59a0: $aa
	rla                                              ; $59a1: $17
	ldh [$9b], a                                     ; $59a2: $e0 $9b
	ld e, $0e                                        ; $59a4: $1e $0e
	ld c, $0c                                        ; $59a6: $0e $0c
	ld h, a                                          ; $59a8: $67
	ldh [$fb], a                                     ; $59a9: $e0 $fb
	ld bc, $008f                                     ; $59ab: $01 $8f $00
	sub c                                            ; $59ae: $91
	nop                                              ; $59af: $00
	ld [hl+], a                                      ; $59b0: $22
	nop                                              ; $59b1: $00
	ld c, d                                          ; $59b2: $4a
	nop                                              ; $59b3: $00
	ld d, d                                          ; $59b4: $52
	nop                                              ; $59b5: $00
	sub [hl]                                         ; $59b6: $96
	nop                                              ; $59b7: $00
	and [hl]                                         ; $59b8: $a6
	nop                                              ; $59b9: $00
	xor [hl]                                         ; $59ba: $ae
	inc b                                            ; $59bb: $04
	ld c, $7b                                        ; $59bc: $0e $7b
	cp $9b                                           ; $59be: $fe $9b
	ld l, $04                                        ; $59c0: $2e $04
	ld l, [hl]                                       ; $59c2: $6e
	inc h                                            ; $59c3: $24
	ld l, a                                          ; $59c4: $6f
	cp $80                                           ; $59c5: $fe $80
	ld a, [hl]                                       ; $59c7: $7e
	ld c, h                                          ; $59c8: $4c
	rst $38                                          ; $59c9: $ff
	ld c, l                                          ; $59ca: $4d
	rst $38                                          ; $59cb: $ff
	ld e, l                                          ; $59cc: $5d
	rst FarCall                                          ; $59cd: $f7
	rst SubAFromDE                                          ; $59ce: $df
	ei                                               ; $59cf: $fb
	cp a                                             ; $59d0: $bf
	db $e3                                           ; $59d1: $e3
	rst AddAOntoHL                                          ; $59d2: $ef
	jp $ec4d                                         ; $59d3: $c3 $4d $ec


	ld h, b                                          ; $59d6: $60
	ldh [$b1], a                                     ; $59d7: $e0 $b1
	ldh [$50], a                                     ; $59d9: $e0 $50
	or b                                             ; $59db: $b0
	cp b                                             ; $59dc: $b8
	ld e, b                                          ; $59dd: $58
	xor h                                            ; $59de: $ac
	ld e, h                                          ; $59df: $5c
	ld e, e                                          ; $59e0: $5b
	xor [hl]                                         ; $59e1: $ae
	rla                                              ; $59e2: $17
	xor a                                            ; $59e3: $af
	dec l                                            ; $59e4: $2d
	sub a                                            ; $59e5: $97
	add b                                            ; $59e6: $80
	ld c, [hl]                                       ; $59e7: $4e
	sub l                                            ; $59e8: $95
	sub d                                            ; $59e9: $92
	ld b, a                                          ; $59ea: $47
	db $dd                                           ; $59eb: $dd
	ld [$4c80], sp                                   ; $59ec: $08 $80 $4c
	xor [hl]                                         ; $59ef: $ae
	ld b, h                                          ; $59f0: $44
	add [hl]                                         ; $59f1: $86
	ld h, h                                          ; $59f2: $64
	inc [hl]                                         ; $59f3: $34
	ld h, [hl]                                       ; $59f4: $66
	dec [hl]                                         ; $59f5: $35
	ld h, [hl]                                       ; $59f6: $66
	scf                                              ; $59f7: $37
	ld h, [hl]                                       ; $59f8: $66
	xor a                                            ; $59f9: $af
	halt                                             ; $59fa: $76
	xor [hl]                                         ; $59fb: $ae
	ld [hl], a                                       ; $59fc: $77
	xor [hl]                                         ; $59fd: $ae
	ld [hl], a                                       ; $59fe: $77
	or [hl]                                          ; $59ff: $b6
	ld a, a                                          ; $5a00: $7f
	halt                                             ; $5a01: $76
	rst SubAFromDE                                          ; $5a02: $df
	halt                                             ; $5a03: $76
	rst $38                                          ; $5a04: $ff
	rst $38                                          ; $5a05: $ff
	sbc [hl]                                         ; $5a06: $9e
	db $db                                           ; $5a07: $db
	ld a, e                                          ; $5a08: $7b
	cp $8f                                           ; $5a09: $fe $8f
	sub d                                            ; $5a0b: $92
	rst $38                                          ; $5a0c: $ff
	ldh a, [rIE]                                     ; $5a0d: $f0 $ff
	sbc b                                            ; $5a0f: $98
	ld [hl], $30                                     ; $5a10: $36 $30
	db $e4                                           ; $5a12: $e4
	ldh a, [rSVBK]                                   ; $5a13: $f0 $70
	ldh a, [$d0]                                     ; $5a15: $f0 $d0
	sub b                                            ; $5a17: $90
	ld hl, sp+$60                                    ; $5a18: $f8 $60
	ldh [$f8], a                                     ; $5a1a: $e0 $f8
	add b                                            ; $5a1c: $80
	ld b, b                                          ; $5a1d: $40
	add b                                            ; $5a1e: $80
	ret nc                                           ; $5a1f: $d0

	ldh [$fb], a                                     ; $5a20: $e0 $fb
	db $fc                                           ; $5a22: $fc
	or a                                             ; $5a23: $b7
	rst $38                                          ; $5a24: $ff
	sbc d                                            ; $5a25: $9a
	call $cdab                                       ; $5a26: $cd $ab $cd
	db $e3                                           ; $5a29: $e3
	ld c, h                                          ; $5a2a: $4c
	push bc                                          ; $5a2b: $c5
	ld l, [hl]                                       ; $5a2c: $6e
	push de                                          ; $5a2d: $d5
	ld l, [hl]                                       ; $5a2e: $6e
	rst SubAFromHL                                          ; $5a2f: $d7
	ld l, [hl]                                       ; $5a30: $6e
	or $6f                                           ; $5a31: $f6 $6f
	and $7f                                          ; $5a33: $e6 $7f
	ld h, a                                          ; $5a35: $67
	db $fd                                           ; $5a36: $fd
	ld h, a                                          ; $5a37: $67
	rst $38                                          ; $5a38: $ff
	rst AddAOntoHL                                          ; $5a39: $ef
	ld sp, hl                                        ; $5a3a: $f9
	rst AddAOntoHL                                          ; $5a3b: $ef
	add b                                            ; $5a3c: $80
	cp c                                             ; $5a3d: $b9
	rst $38                                          ; $5a3e: $ff
	or c                                             ; $5a3f: $b1
	rst $38                                          ; $5a40: $ff
	inc sp                                           ; $5a41: $33
	cp $26                                           ; $5a42: $fe $26
	rst $38                                          ; $5a44: $ff
	rlca                                             ; $5a45: $07
	jp c, $0b03                                      ; $5a46: $da $03 $0b

	ld bc, $0001                                     ; $5a49: $01 $01 $00
	ld bc, $0c00                                     ; $5a4c: $01 $00 $0c
	nop                                              ; $5a4f: $00
	ld c, $00                                        ; $5a50: $0e $00
	ld c, $04                                        ; $5a52: $0e $04
	nop                                              ; $5a54: $00
	nop                                              ; $5a55: $00
	xor $33                                          ; $5a56: $ee $33
	ld e, l                                          ; $5a58: $5d
	or e                                             ; $5a59: $b3
	rst SubAFromHL                                          ; $5a5a: $d7
	cp c                                             ; $5a5b: $b9
	ld a, a                                          ; $5a5c: $7f
	cp $80                                           ; $5a5d: $fe $80
	sbc d                                            ; $5a5f: $9a
	db $fd                                           ; $5a60: $fd
	ld e, d                                          ; $5a61: $5a
	db $fd                                           ; $5a62: $fd
	ld e, h                                          ; $5a63: $5c
	rst $38                                          ; $5a64: $ff
	ld e, h                                          ; $5a65: $5c
	rst $38                                          ; $5a66: $ff
	db $fc                                           ; $5a67: $fc
	or a                                             ; $5a68: $b7
	db $fd                                           ; $5a69: $fd
	or a                                             ; $5a6a: $b7
	db $fd                                           ; $5a6b: $fd
	rst FarCall                                          ; $5a6c: $f7
	rst $38                                          ; $5a6d: $ff
	daa                                              ; $5a6e: $27
	rst $38                                          ; $5a6f: $ff
	db $e3                                           ; $5a70: $e3
	rst $38                                          ; $5a71: $ff
	ld [hl], e                                       ; $5a72: $73
	ld e, [hl]                                       ; $5a73: $5e
	ld a, e                                          ; $5a74: $7b
	sbc $e3                                          ; $5a75: $de $e3
	rst $38                                          ; $5a77: $ff
	db $e3                                           ; $5a78: $e3
	cp a                                             ; $5a79: $bf
	inc hl                                           ; $5a7a: $23
	rst $38                                          ; $5a7b: $ff
	jp $80cf                                         ; $5a7c: $c3 $cf $80


	inc bc                                           ; $5a7f: $03
	ld a, [de]                                       ; $5a80: $1a
	rlca                                             ; $5a81: $07
	ld e, $07                                        ; $5a82: $1e $07
	dec e                                            ; $5a84: $1d
	ld b, $15                                        ; $5a85: $06 $15
	ld c, $3d                                        ; $5a87: $0e $3d
	ld c, $2d                                        ; $5a89: $0e $2d
	ld e, $3f                                        ; $5a8b: $1e $3f
	ld e, $56                                        ; $5a8d: $1e $56
	ccf                                              ; $5a8f: $3f

jr_061_5a90:
	halt                                             ; $5a90: $76
	ccf                                              ; $5a91: $3f
	or $7f                                           ; $5a92: $f6 $7f
	or $ef                                           ; $5a94: $f6 $ef
	or $af                                           ; $5a96: $f6 $af
	xor b                                            ; $5a98: $a8
	ld a, b                                          ; $5a99: $78
	ld hl, sp+$38                                    ; $5a9a: $f8 $38
	ld e, b                                          ; $5a9c: $58
	cp b                                             ; $5a9d: $b8
	ld a, a                                          ; $5a9e: $7f
	cp $98                                           ; $5a9f: $fe $98
	ret c                                            ; $5aa1: $d8

	cp b                                             ; $5aa2: $b8
	ret z                                            ; $5aa3: $c8

	xor b                                            ; $5aa4: $a8
	xor b                                            ; $5aa5: $a8
	add sp, -$60                                     ; $5aa6: $e8 $a0
	call c, $80e0                                    ; $5aa8: $dc $e0 $80
	ret nc                                           ; $5aab: $d0

	ldh a, [$d0]                                     ; $5aac: $f0 $d0
	ldh a, [rLCDC]                                   ; $5aae: $f0 $40
	ldh a, [$b8]                                     ; $5ab0: $f0 $b8
	add sp, -$68                                     ; $5ab2: $e8 $98
	add sp, -$58                                     ; $5ab4: $e8 $a8
	ret nc                                           ; $5ab6: $d0

	ld l, h                                          ; $5ab7: $6c
	call nc, $ec54                                   ; $5ab8: $d4 $54 $ec
	inc [hl]                                         ; $5abb: $34
	add sp, $76                                      ; $5abc: $e8 $76
	xor d                                            ; $5abe: $aa
	ld [$dab6], a                                    ; $5abf: $ea $b6 $da
	or h                                             ; $5ac2: $b4
	jp c, $b4b4                                      ; $5ac3: $da $b4 $b4

	jp c, $bbd5                                      ; $5ac6: $da $d5 $bb

	ld e, l                                          ; $5ac9: $5d
	sub d                                            ; $5aca: $92
	ei                                               ; $5acb: $fb
	ld e, b                                          ; $5acc: $58
	rst $38                                          ; $5acd: $ff
	ld [$ea5d], a                                    ; $5ace: $ea $5d $ea
	ld e, l                                          ; $5ad1: $5d
	xor d                                            ; $5ad2: $aa
	ld e, l                                          ; $5ad3: $5d
	sbc $2d                                          ; $5ad4: $de $2d
	rst SubAFromDE                                          ; $5ad6: $df
	dec l                                            ; $5ad7: $2d
	ld [hl], d                                       ; $5ad8: $72
	ldh a, [$9c]                                     ; $5ad9: $f0 $9c
	ld a, [$e1bf]                                    ; $5adb: $fa $bf $e1
	ld h, $f0                                        ; $5ade: $26 $f0
	sub a                                            ; $5ae0: $97
	rst $38                                          ; $5ae1: $ff
	add b                                            ; $5ae2: $80
	rst $38                                          ; $5ae3: $ff
	ld [hl], b                                       ; $5ae4: $70
	cp $98                                           ; $5ae5: $fe $98
	inc l                                            ; $5ae7: $2c
	jr c, jr_061_5aed                                ; $5ae8: $38 $03

	db $10                                           ; $5aea: $10
	ld e, a                                          ; $5aeb: $5f
	db $10                                           ; $5aec: $10

jr_061_5aed:
	sbc h                                            ; $5aed: $9c
	db $fd                                           ; $5aee: $fd
	rst AddAOntoHL                                          ; $5aef: $ef
	ei                                               ; $5af0: $fb
	ld [hl], e                                       ; $5af1: $73
	db $10                                           ; $5af2: $10
	sbc d                                            ; $5af3: $9a
	ld sp, $22ff                                     ; $5af4: $31 $ff $22
	rst $38                                          ; $5af7: $ff
	rlca                                             ; $5af8: $07
	inc sp                                           ; $5af9: $33
	jr nz, jr_061_5a90                               ; $5afa: $20 $94

	and a                                            ; $5afc: $a7
	rst $38                                          ; $5afd: $ff
	ld [hl], a                                       ; $5afe: $77
	rst $38                                          ; $5aff: $ff
	inc hl                                           ; $5b00: $23
	rst $38                                          ; $5b01: $ff
	db $e3                                           ; $5b02: $e3
	ld a, [hl]                                       ; $5b03: $7e
	ld h, e                                          ; $5b04: $63
	sbc $fb                                          ; $5b05: $de $fb
	ld l, e                                          ; $5b07: $6b
	add b                                            ; $5b08: $80
	sbc d                                            ; $5b09: $9a
	ldh [$ef], a                                     ; $5b0a: $e0 $ef
	pop bc                                           ; $5b0c: $c1
	ld c, a                                          ; $5b0d: $4f
	rst SubAFromBC                                          ; $5b0e: $e7
	ld [bc], a                                       ; $5b0f: $02
	ld [hl], b                                       ; $5b10: $70
	ld d, [hl]                                       ; $5b11: $56
	ld [hl], b                                       ; $5b12: $70
	sbc h                                            ; $5b13: $9c
	rst SubAFromDE                                          ; $5b14: $df
	rst $38                                          ; $5b15: $ff
	ei                                               ; $5b16: $fb
	ld [hl], d                                       ; $5b17: $72
	ld [hl], b                                       ; $5b18: $70
	ld a, a                                          ; $5b19: $7f
	ld h, b                                          ; $5b1a: $60
	sub [hl]                                         ; $5b1b: $96
	nop                                              ; $5b1c: $00
	cp $00                                           ; $5b1d: $fe $00
	db $fc                                           ; $5b1f: $fc
	ld [hl], b                                       ; $5b20: $70
	cp b                                             ; $5b21: $b8
	cp b                                             ; $5b22: $b8
	ldh a, [$f0]                                     ; $5b23: $f0 $f0
	inc bc                                           ; $5b25: $03
	ld h, b                                          ; $5b26: $60
	ld b, a                                          ; $5b27: $47
	ld h, b                                          ; $5b28: $60
	sbc d                                            ; $5b29: $9a
	jr nz, @+$01                                     ; $5b2a: $20 $ff

	ld bc, $07df                                     ; $5b2c: $01 $df $07
	ld [bc], a                                       ; $5b2f: $02
	ld [hl], b                                       ; $5b30: $70
	ld h, a                                          ; $5b31: $67
	ld d, b                                          ; $5b32: $50
	sbc b                                            ; $5b33: $98
	inc hl                                           ; $5b34: $23
	cp $03                                           ; $5b35: $fe $03
	ld a, [hl]                                       ; $5b37: $7e
	ld a, e                                          ; $5b38: $7b
	rst $38                                          ; $5b39: $ff
	di                                               ; $5b3a: $f3
	ld a, d                                          ; $5b3b: $7a
	ld h, [hl]                                       ; $5b3c: $66
	sbc [hl]                                         ; $5b3d: $9e
	inc bc                                           ; $5b3e: $03
	ld e, [hl]                                       ; $5b3f: $5e
	ld [hl], b                                       ; $5b40: $70
	ld h, d                                          ; $5b41: $62
	ret nz                                           ; $5b42: $c0

	sbc h                                            ; $5b43: $9c
	ret nz                                           ; $5b44: $c0

	ld c, a                                          ; $5b45: $4f
	db $e3                                           ; $5b46: $e3
	inc bc                                           ; $5b47: $03
	ld b, b                                          ; $5b48: $40
	ld c, a                                          ; $5b49: $4f

jr_061_5b4a:
	ld b, b                                          ; $5b4a: $40
	ld a, a                                          ; $5b4b: $7f
	ld b, d                                          ; $5b4c: $42
	sbc h                                            ; $5b4d: $9c
	cp e                                             ; $5b4e: $bb
	rst $38                                          ; $5b4f: $ff
	jp nc, Jump_061_4073                             ; $5b50: $d2 $73 $40

	sub [hl]                                         ; $5b53: $96
	jr @-$02                                         ; $5b54: $18 $fc

	ldh [$f8], a                                     ; $5b56: $e0 $f8
	jr jr_061_5b4a                                   ; $5b58: $18 $f0

	ldh [$f8], a                                     ; $5b5a: $e0 $f8
	nop                                              ; $5b5c: $00
	inc bc                                           ; $5b5d: $03
	ld b, b                                          ; $5b5e: $40
	ld l, a                                          ; $5b5f: $6f
	ld b, b                                          ; $5b60: $40
	ld a, l                                          ; $5b61: $7d
	or b                                             ; $5b62: $b0
	ld a, a                                          ; $5b63: $7f
	add $6f                                          ; $5b64: $c6 $6f
	ld b, b                                          ; $5b66: $40
	sbc h                                            ; $5b67: $9c
	nop                                              ; $5b68: $00
	rst SubAFromDE                                          ; $5b69: $df
	nop                                              ; $5b6a: $00
	inc bc                                           ; $5b6b: $03
	ld b, b                                          ; $5b6c: $40
	ld [hl], a                                       ; $5b6d: $77
	ld b, b                                          ; $5b6e: $40
	sbc h                                            ; $5b6f: $9c
	rst SubAFromBC                                          ; $5b70: $e7
	rst $38                                          ; $5b71: $ff
	dec sp                                           ; $5b72: $3b
	ld [hl], a                                       ; $5b73: $77
	ld b, b                                          ; $5b74: $40
	sbc e                                            ; $5b75: $9b
	cp $e3                                           ; $5b76: $fe $e3
	rst $38                                          ; $5b78: $ff
	dec de                                           ; $5b79: $1b
	ld c, a                                          ; $5b7a: $4f
	ld b, b                                          ; $5b7b: $40
	pop af                                           ; $5b7c: $f1
	sbc b                                            ; $5b7d: $98
	add hl, bc                                       ; $5b7e: $09
	nop                                              ; $5b7f: $00
	ld e, $0c                                        ; $5b80: $1e $0c
	inc c                                            ; $5b82: $0c
	nop                                              ; $5b83: $00
	ld b, $fc                                        ; $5b84: $06 $fc
	ld a, a                                          ; $5b86: $7f
	xor d                                            ; $5b87: $aa
	sbc l                                            ; $5b88: $9d
	cp l                                             ; $5b89: $bd
	jp $e03f                                         ; $5b8a: $c3 $3f $e0


	sbc d                                            ; $5b8d: $9a
	rra                                              ; $5b8e: $1f
	ld c, $1e                                        ; $5b8f: $0e $1e
	inc c                                            ; $5b91: $0c
	nop                                              ; $5b92: $00
	ld a, e                                          ; $5b93: $7b
	sub b                                            ; $5b94: $90
	dec de                                           ; $5b95: $1b
	ldh [$9e], a                                     ; $5b96: $e0 $9e
	ld c, $77                                        ; $5b98: $0e $77
	ldh [c], a                                       ; $5b9a: $e2
	rra                                              ; $5b9b: $1f
	ldh [$9a], a                                     ; $5b9c: $e0 $9a
	rra                                              ; $5b9e: $1f
	ld e, $1e                                        ; $5b9f: $1e $1e
	inc c                                            ; $5ba1: $0c
	ld [$e06b], sp                                   ; $5ba2: $08 $6b $e0
	nop                                              ; $5ba5: $00
	inc bc                                           ; $5ba6: $03
	di                                               ; $5ba7: $f3
	db $dd                                           ; $5ba8: $dd
	ld bc, $028a                                     ; $5ba9: $01 $8a $02
	inc bc                                           ; $5bac: $03
	ld [bc], a                                       ; $5bad: $02
	inc bc                                           ; $5bae: $03
	nop                                              ; $5baf: $00
	inc bc                                           ; $5bb0: $03
	dec b                                            ; $5bb1: $05
	rlca                                             ; $5bb2: $07
	ld b, $07                                        ; $5bb3: $06 $07
	dec bc                                           ; $5bb5: $0b
	inc c                                            ; $5bb6: $0c
	db $ed                                           ; $5bb7: $ed
	di                                               ; $5bb8: $f3
	ld b, c                                          ; $5bb9: $41
	ld a, a                                          ; $5bba: $7f
	dec de                                           ; $5bbb: $1b
	ld e, $0f                                        ; $5bbc: $1e $0f
	ld a, [bc]                                       ; $5bbe: $0a
	dec b                                            ; $5bbf: $05
	ld a, e                                          ; $5bc0: $7b
	cp $91                                           ; $5bc1: $fe $91
	inc bc                                           ; $5bc3: $03
	ld c, $0a                                        ; $5bc4: $0e $0a
	rrca                                             ; $5bc6: $0f
	ld a, [bc]                                       ; $5bc7: $0a
	rrca                                             ; $5bc8: $0f
	dec b                                            ; $5bc9: $05
	rlca                                             ; $5bca: $07
	dec b                                            ; $5bcb: $05
	rlca                                             ; $5bcc: $07
	ld [bc], a                                       ; $5bcd: $02
	inc bc                                           ; $5bce: $03
	ld bc, $f901                                     ; $5bcf: $01 $01 $f9
	rst SubAFromDE                                          ; $5bd2: $df
	inc bc                                           ; $5bd3: $03
	add b                                            ; $5bd4: $80
	inc c                                            ; $5bd5: $0c
	rrca                                             ; $5bd6: $0f
	db $10                                           ; $5bd7: $10
	rra                                              ; $5bd8: $1f
	ld hl, $473e                                     ; $5bd9: $21 $3e $47
	ld a, h                                          ; $5bdc: $7c
	adc a                                            ; $5bdd: $8f
	ld hl, sp-$62                                    ; $5bde: $f8 $9e
	pop af                                           ; $5be0: $f1
	dec sp                                           ; $5be1: $3b
	rst SubAFromBC                                          ; $5be2: $e7
	halt                                             ; $5be3: $76
	rst GetHLinHL                                          ; $5be4: $cf
	ld l, b                                          ; $5be5: $68
	sbc a                                            ; $5be6: $9f
	ret nc                                           ; $5be7: $d0

	cp a                                             ; $5be8: $bf
	and b                                            ; $5be9: $a0
	ld a, e                                          ; $5bea: $7b
	jp nz, $027b                                     ; $5beb: $c2 $7b $02

	db $d3                                           ; $5bee: $d3
	add d                                            ; $5bef: $82
	rst SubAFromHL                                          ; $5bf0: $d7
	ld [bc], a                                       ; $5bf1: $02
	and a                                            ; $5bf2: $a7
	add [hl]                                         ; $5bf3: $86
	add e                                            ; $5bf4: $83
	inc hl                                           ; $5bf5: $23
	add $03                                          ; $5bf6: $c6 $03
	ld h, $13                                        ; $5bf8: $26 $13
	and l                                            ; $5bfa: $a5
	inc de                                           ; $5bfb: $13
	ld l, l                                          ; $5bfc: $6d
	sub e                                            ; $5bfd: $93
	dec [hl]                                         ; $5bfe: $35
	db $db                                           ; $5bff: $db
	sub l                                            ; $5c00: $95
	ld a, e                                          ; $5c01: $7b
	ret z                                            ; $5c02: $c8

	ld a, a                                          ; $5c03: $7f
	xor b                                            ; $5c04: $a8
	ld a, a                                          ; $5c05: $7f
	inc h                                            ; $5c06: $24
	rst $38                                          ; $5c07: $ff
	sub d                                            ; $5c08: $92
	rst $38                                          ; $5c09: $ff
	reti                                             ; $5c0a: $d9


	rst $38                                          ; $5c0b: $ff
	ld l, [hl]                                       ; $5c0c: $6e
	ld a, a                                          ; $5c0d: $7f
	ld e, e                                          ; $5c0e: $5b
	ld a, a                                          ; $5c0f: $7f
	ld c, c                                          ; $5c10: $49
	ld [hl], e                                       ; $5c11: $73
	cp $98                                           ; $5c12: $fe $98
	dec c                                            ; $5c14: $0d
	ccf                                              ; $5c15: $3f
	dec l                                            ; $5c16: $2d
	rra                                              ; $5c17: $1f
	cpl                                              ; $5c18: $2f
	dec e                                            ; $5c19: $1d
	daa                                              ; $5c1a: $27
	ld [hl], e                                       ; $5c1b: $73
	cp $90                                           ; $5c1c: $fe $90
	ld h, [hl]                                       ; $5c1e: $66
	ld e, l                                          ; $5c1f: $5d
	ld h, [hl]                                       ; $5c20: $66
	ld e, l                                          ; $5c21: $5d
	ld l, a                                          ; $5c22: $6f
	ld e, h                                          ; $5c23: $5c
	ld l, e                                          ; $5c24: $6b
	ld e, h                                          ; $5c25: $5c
	ld l, d                                          ; $5c26: $6a
	ld e, l                                          ; $5c27: $5d
	ld l, d                                          ; $5c28: $6a
	ld e, l                                          ; $5c29: $5d
	ld l, h                                          ; $5c2a: $6c
	ld e, e                                          ; $5c2b: $5b
	ld l, l                                          ; $5c2c: $6d
	ld a, e                                          ; $5c2d: $7b
	cp $97                                           ; $5c2e: $fe $97
	ld [hl], l                                       ; $5c30: $75
	ld e, e                                          ; $5c31: $5b
	or c                                             ; $5c32: $b1
	rst SubAFromDE                                          ; $5c33: $df
	sbc c                                            ; $5c34: $99
	rst FarCall                                          ; $5c35: $f7
	reti                                             ; $5c36: $d9


	or a                                             ; $5c37: $b7
	ld [hl], a                                       ; $5c38: $77
	cp $7f                                           ; $5c39: $fe $7f
	ld hl, sp-$64                                    ; $5c3b: $f8 $9c
	add hl, sp                                       ; $5c3d: $39
	rst FarCall                                          ; $5c3e: $f7
	jr c, jr_061_5cbc                                ; $5c3f: $38 $7b

	cp $9b                                           ; $5c41: $fe $9b
	jr nc, @+$01                                     ; $5c43: $30 $ff

	sub d                                            ; $5c45: $92
	rst SubAFromDE                                          ; $5c46: $df
	ld a, e                                          ; $5c47: $7b
	cp $9a                                           ; $5c48: $fe $9a
	rst $38                                          ; $5c4a: $ff
	ld c, d                                          ; $5c4b: $4a
	ld l, a                                          ; $5c4c: $6f
	ld c, e                                          ; $5c4d: $4b
	ld l, a                                          ; $5c4e: $6f
	ld b, a                                          ; $5c4f: $47
	ld b, b                                          ; $5c50: $40
	rst FarCall                                          ; $5c51: $f7
	rst SubAFromDE                                          ; $5c52: $df
	inc bc                                           ; $5c53: $03
	add b                                            ; $5c54: $80
	jr c, jr_061_5c96                                ; $5c55: $38 $3f

	pop bc                                           ; $5c57: $c1
	rst $38                                          ; $5c58: $ff
	ldh a, [$f9]                                     ; $5c59: $f0 $f9
	ret nz                                           ; $5c5b: $c0

	rst SubAFromBC                                          ; $5c5c: $e7
	nop                                              ; $5c5d: $00
	sbc b                                            ; $5c5e: $98
	nop                                              ; $5c5f: $00
	ld h, a                                          ; $5c60: $67
	rlca                                             ; $5c61: $07
	sbc a                                            ; $5c62: $9f
	ccf                                              ; $5c63: $3f
	cp $ff                                           ; $5c64: $fe $ff
	db $e4                                           ; $5c66: $e4
	rst $38                                          ; $5c67: $ff
	push bc                                          ; $5c68: $c5
	rst SubAFromDE                                          ; $5c69: $df
	add b                                            ; $5c6a: $80
	cp [hl]                                          ; $5c6b: $be
	adc d                                            ; $5c6c: $8a
	xor [hl]                                         ; $5c6d: $ae
	ld a, [bc]                                       ; $5c6e: $0a
	ld l, [hl]                                       ; $5c6f: $6e
	ld a, [bc]                                       ; $5c70: $0a
	ld e, d                                          ; $5c71: $5a
	ld [bc], a                                       ; $5c72: $02
	ld e, d                                          ; $5c73: $5a
	sbc d                                            ; $5c74: $9a
	ld [de], a                                       ; $5c75: $12
	ld a, [de]                                       ; $5c76: $1a
	ld [de], a                                       ; $5c77: $12
	ld e, e                                          ; $5c78: $5b
	ld [de], a                                       ; $5c79: $12
	ldh [$c1], a                                     ; $5c7a: $e0 $c1
	sbc h                                            ; $5c7c: $9c
	xor h                                            ; $5c7d: $ac
	ld [hl], a                                       ; $5c7e: $77
	xor l                                            ; $5c7f: $ad
	ld [hl], e                                       ; $5c80: $73
	cp $87                                           ; $5c81: $fe $87
	dec l                                            ; $5c83: $2d
	rst FarCall                                          ; $5c84: $f7
	dec h                                            ; $5c85: $25
	rst $38                                          ; $5c86: $ff
	ld [hl+], a                                      ; $5c87: $22
	rst $38                                          ; $5c88: $ff
	or e                                             ; $5c89: $b3
	cp $95                                           ; $5c8a: $fe $95
	cp $96                                           ; $5c8c: $fe $96
	db $fc                                           ; $5c8e: $fc
	sub [hl]                                         ; $5c8f: $96
	db $fc                                           ; $5c90: $fc
	rst SubAFromHL                                          ; $5c91: $d7
	db $fc                                           ; $5c92: $fc
	ld e, a                                          ; $5c93: $5f
	db $fc                                           ; $5c94: $fc
	ld c, a                                          ; $5c95: $4f

jr_061_5c96:
	db $fc                                           ; $5c96: $fc
	ld c, l                                          ; $5c97: $4d
	cp $67                                           ; $5c98: $fe $67
	cp $f7                                           ; $5c9a: $fe $f7
	rst SubAFromDE                                          ; $5c9c: $df
	db $10                                           ; $5c9d: $10
	rst SubAFromDE                                          ; $5c9e: $df
	ld [$8cdf], sp                                   ; $5c9f: $08 $df $8c
	adc d                                            ; $5ca2: $8a
	db $e4                                           ; $5ca3: $e4
	db $ec                                           ; $5ca4: $ec
	ld d, h                                          ; $5ca5: $54
	ld a, h                                          ; $5ca6: $7c
	ld d, h                                          ; $5ca7: $54
	ld a, h                                          ; $5ca8: $7c
	ld d, a                                          ; $5ca9: $57
	ld a, a                                          ; $5caa: $7f
	ld l, [hl]                                       ; $5cab: $6e
	ld a, a                                          ; $5cac: $7f
	ret c                                            ; $5cad: $d8

	rst $38                                          ; $5cae: $ff
	ld a, a                                          ; $5caf: $7f
	rst $38                                          ; $5cb0: $ff
	rst $38                                          ; $5cb1: $ff
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	rst $38                                          ; $5cb4: $ff
	nop                                              ; $5cb5: $00
	rst $38                                          ; $5cb6: $ff
	rrca                                             ; $5cb7: $0f
	db $dd                                           ; $5cb8: $dd
	rst $38                                          ; $5cb9: $ff
	sub d                                            ; $5cba: $92
	sub a                                            ; $5cbb: $97

jr_061_5cbc:
	rst $38                                          ; $5cbc: $ff
	ld [de], a                                       ; $5cbd: $12
	cp a                                             ; $5cbe: $bf
	ld [de], a                                       ; $5cbf: $12
	halt                                             ; $5cc0: $76
	db $10                                           ; $5cc1: $10
	halt                                             ; $5cc2: $76
	db $10                                           ; $5cc3: $10
	ld [hl], d                                       ; $5cc4: $72
	db $10                                           ; $5cc5: $10
	ld d, d                                          ; $5cc6: $52
	db $10                                           ; $5cc7: $10
	ld [hl], a                                       ; $5cc8: $77
	ld h, [hl]                                       ; $5cc9: $66
	sbc c                                            ; $5cca: $99
	ld e, a                                          ; $5ccb: $5f
	ld [de], a                                       ; $5ccc: $12
	ld a, a                                          ; $5ccd: $7f
	dec de                                           ; $5cce: $1b
	ld a, a                                          ; $5ccf: $7f
	add hl, de                                       ; $5cd0: $19
	ldh [$c1], a                                     ; $5cd1: $e0 $c1
	add b                                            ; $5cd3: $80
	xor b                                            ; $5cd4: $a8
	ld hl, sp-$58                                    ; $5cd5: $f8 $a8
	ld hl, sp+$5c                                    ; $5cd7: $f8 $5c
	db $fc                                           ; $5cd9: $fc
	ld a, b                                          ; $5cda: $78
	ld hl, sp-$50                                    ; $5cdb: $f8 $b0
	ret nc                                           ; $5cdd: $d0

	ldh a, [rAUD1SWEEP]                              ; $5cde: $f0 $10
	db $f4                                           ; $5ce0: $f4
	inc d                                            ; $5ce1: $14
	ld hl, sp+$08                                    ; $5ce2: $f8 $08
	add sp, $08                                      ; $5ce4: $e8 $08
	db $ec                                           ; $5ce6: $ec
	inc b                                            ; $5ce7: $04
	db $dd                                           ; $5ce8: $dd
	dec b                                            ; $5ce9: $05
	ld d, h                                          ; $5cea: $54
	inc b                                            ; $5ceb: $04
	scf                                              ; $5cec: $37
	daa                                              ; $5ced: $27
	xor h                                            ; $5cee: $ac
	inc h                                            ; $5cef: $24
	add sp, $48                                      ; $5cf0: $e8 $48
	add sp, -$62                                     ; $5cf2: $e8 $9e
	ld c, b                                          ; $5cf4: $48
	db $ed                                           ; $5cf5: $ed
	rst SubAFromDE                                          ; $5cf6: $df
	db $fc                                           ; $5cf7: $fc
	ld a, e                                          ; $5cf8: $7b
	ld h, a                                          ; $5cf9: $67
	sub h                                            ; $5cfa: $94
	rst $38                                          ; $5cfb: $ff
	jr c, @+$01                                      ; $5cfc: $38 $ff

	add e                                            ; $5cfe: $83

Jump_061_5cff:
	rst $38                                          ; $5cff: $ff
	ldh a, [$3f]                                     ; $5d00: $f0 $3f
	rlca                                             ; $5d02: $07
	rst $38                                          ; $5d03: $ff
	ld bc, $7bff                                     ; $5d04: $01 $ff $7b
	pop af                                           ; $5d07: $f1
	add [hl]                                         ; $5d08: $86
	inc sp                                           ; $5d09: $33
	rst $38                                          ; $5d0a: $ff
	inc c                                            ; $5d0b: $0c
	rst $38                                          ; $5d0c: $ff
	add d                                            ; $5d0d: $82
	rst $38                                          ; $5d0e: $ff
	adc c                                            ; $5d0f: $89
	db $fd                                           ; $5d10: $fd
	inc d                                            ; $5d11: $14
	cp $56                                           ; $5d12: $fe $56
	ei                                               ; $5d14: $fb
	ld b, d                                          ; $5d15: $42
	ld a, e                                          ; $5d16: $7b
	add hl, bc                                       ; $5d17: $09
	ld a, h                                          ; $5d18: $7c
	jr z, jr_061_5d97                                ; $5d19: $28 $7c

	inc h                                            ; $5d1b: $24
	ld a, [hl]                                       ; $5d1c: $7e
	inc b                                            ; $5d1d: $04
	cp [hl]                                          ; $5d1e: $be
	ld [de], a                                       ; $5d1f: $12
	cp a                                             ; $5d20: $bf
	ld a, [de]                                       ; $5d21: $1a
	ldh [$c1], a                                     ; $5d22: $e0 $c1
	add h                                            ; $5d24: $84
	ld a, [hl]                                       ; $5d25: $7e
	ld a, b                                          ; $5d26: $78
	rra                                              ; $5d27: $1f
	db $10                                           ; $5d28: $10
	ld a, a                                          ; $5d29: $7f
	ld [hl], b                                       ; $5d2a: $70
	jr jr_061_5d45                                   ; $5d2b: $18 $18

	inc a                                            ; $5d2d: $3c
	jr c, @+$21                                      ; $5d2e: $38 $1f

	rra                                              ; $5d30: $1f
	jr nz, @+$32                                     ; $5d31: $20 $30

	ld hl, $6227                                     ; $5d33: $21 $27 $62
	ld l, a                                          ; $5d36: $6f
	ldh [rIE], a                                     ; $5d37: $e0 $ff
	jr nc, jr_061_5d79                               ; $5d39: $30 $3e

	ld [hl], b                                       ; $5d3b: $70
	ld a, a                                          ; $5d3c: $7f
	adc c                                            ; $5d3d: $89
	adc a                                            ; $5d3e: $8f
	ld b, $51                                        ; $5d3f: $06 $51
	sbc b                                            ; $5d41: $98
	di                                               ; $5d42: $f3
	rst SubAFromDE                                          ; $5d43: $df
	add b                                            ; $5d44: $80

jr_061_5d45:
	add b                                            ; $5d45: $80
	ld h, b                                          ; $5d46: $60
	ldh [rAUD2LOW], a                                ; $5d47: $e0 $18
	ld hl, sp-$1a                                    ; $5d49: $f8 $e6
	sbc [hl]                                         ; $5d4b: $9e
	add hl, sp                                       ; $5d4c: $39
	rst FarCall                                          ; $5d4d: $f7
	xor $1d                                          ; $5d4e: $ee $1d
	cp e                                             ; $5d50: $bb
	add $6d                                          ; $5d51: $c6 $6d
	di                                               ; $5d53: $f3
	ld [hl], $f9                                     ; $5d54: $36 $f9
	dec de                                           ; $5d56: $1b
	db $fc                                           ; $5d57: $fc
	and l                                            ; $5d58: $a5
	ld e, [hl]                                       ; $5d59: $5e
	jp c, Jump_061_6d27                              ; $5d5a: $da $27 $6d

	sub e                                            ; $5d5d: $93
	cp [hl]                                          ; $5d5e: $be
	ld c, c                                          ; $5d5f: $49
	ld e, h                                          ; $5d60: $5c
	daa                                              ; $5d61: $27
	ld h, $1b                                        ; $5d62: $26 $1b
	add hl, sp                                       ; $5d64: $39
	sub [hl]                                         ; $5d65: $96
	rrca                                             ; $5d66: $0f
	ld d, h                                          ; $5d67: $54
	rrca                                             ; $5d68: $0f
	xor d                                            ; $5d69: $aa
	rst JumpTable                                          ; $5d6a: $c7
	db $dd                                           ; $5d6b: $dd
	ld h, e                                          ; $5d6c: $63
	ld l, l                                          ; $5d6d: $6d
	inc sp                                           ; $5d6e: $33
	ldh [$c1], a                                     ; $5d6f: $e0 $c1
	add b                                            ; $5d71: $80
	ld b, $00                                        ; $5d72: $06 $00
	add hl, bc                                       ; $5d74: $09
	nop                                              ; $5d75: $00
	adc b                                            ; $5d76: $88
	nop                                              ; $5d77: $00
	ld sp, hl                                        ; $5d78: $f9

jr_061_5d79:
	ld bc, $0332                                     ; $5d79: $01 $32 $03
	cp $cf                                           ; $5d7c: $fe $cf
	inc sp                                           ; $5d7e: $33
	rst $38                                          ; $5d7f: $ff
	ldh a, [c]                                       ; $5d80: $f2
	rst $38                                          ; $5d81: $ff
	ld de, $39ff                                     ; $5d82: $11 $ff $39
	ld a, a                                          ; $5d85: $7f
	ld h, [hl]                                       ; $5d86: $66
	rst $38                                          ; $5d87: $ff
	and [hl]                                         ; $5d88: $a6
	rst $38                                          ; $5d89: $ff
	ld h, $ff                                        ; $5d8a: $26 $ff
	rlca                                             ; $5d8c: $07
	rst $38                                          ; $5d8d: $ff
	ld [bc], a                                       ; $5d8e: $02
	cp $02                                           ; $5d8f: $fe $02
	add b                                            ; $5d91: $80
	cp $80                                           ; $5d92: $fe $80
	add b                                            ; $5d94: $80
	ld b, b                                          ; $5d95: $40
	ret nz                                           ; $5d96: $c0

jr_061_5d97:
	ret nz                                           ; $5d97: $c0

	ld b, b                                          ; $5d98: $40
	and b                                            ; $5d99: $a0
	ldh [$60], a                                     ; $5d9a: $e0 $60
	ldh [$b0], a                                     ; $5d9c: $e0 $b0
	ld [hl], b                                       ; $5d9e: $70
	ret nc                                           ; $5d9f: $d0

	jr nc, @+$6a                                     ; $5da0: $30 $68

	sbc b                                            ; $5da2: $98
	cp b                                             ; $5da3: $b8
	ret z                                            ; $5da4: $c8

	ld [hl], h                                       ; $5da5: $74
	call z, $e45c                                    ; $5da6: $cc $5c $e4
	ld a, [hl-]                                      ; $5da9: $3a
	and $ae                                          ; $5daa: $e6 $ae
	ldh a, [c]                                       ; $5dac: $f2
	ld e, h                                          ; $5dad: $5c
	ldh a, [c]                                       ; $5dae: $f2
	ld d, a                                          ; $5daf: $57
	ld sp, hl                                        ; $5db0: $f9
	sbc l                                            ; $5db1: $9d
	xor [hl]                                         ; $5db2: $ae
	ld sp, hl                                        ; $5db3: $f9
	ldh [$c1], a                                     ; $5db4: $e0 $c1
	add b                                            ; $5db6: $80
	ld e, h                                          ; $5db7: $5c
	inc e                                            ; $5db8: $1c
	ld b, h                                          ; $5db9: $44
	ld a, h                                          ; $5dba: $7c
	add d                                            ; $5dbb: $82
	cp $03                                           ; $5dbc: $fe $03
	sbc a                                            ; $5dbe: $9f
	ld bc, $617f                                     ; $5dbf: $01 $7f $61
	rst $38                                          ; $5dc2: $ff
	add c                                            ; $5dc3: $81
	rst GetHLinHL                                          ; $5dc4: $cf
	ld bc, $c3ff                                     ; $5dc5: $01 $ff $c3
	cp $3f                                           ; $5dc8: $fe $3f
	db $fc                                           ; $5dca: $fc
	rlca                                             ; $5dcb: $07
	db $fc                                           ; $5dcc: $fc
	inc bc                                           ; $5dcd: $03
	cp $03                                           ; $5dce: $fe $03
	cp [hl]                                          ; $5dd0: $be
	rlca                                             ; $5dd1: $07
	db $fc                                           ; $5dd2: $fc
	adc a                                            ; $5dd3: $8f
	ld hl, sp+$7e                                    ; $5dd4: $f8 $7e
	sbc d                                            ; $5dd6: $9a
	ld [hl], b                                       ; $5dd7: $70
	add b                                            ; $5dd8: $80
	add b                                            ; $5dd9: $80
	nop                                              ; $5dda: $00
	add b                                            ; $5ddb: $80
	ld a, e                                          ; $5ddc: $7b
	add b                                            ; $5ddd: $80
	add b                                            ; $5dde: $80
	ld h, b                                          ; $5ddf: $60
	ret nc                                           ; $5de0: $d0

	or b                                             ; $5de1: $b0
	ld c, b                                          ; $5de2: $48
	cp b                                             ; $5de3: $b8
	and h                                            ; $5de4: $a4
	ld e, h                                          ; $5de5: $5c
	jp nc, $a92e                                     ; $5de6: $d2 $2e $a9

	rlca                                             ; $5de9: $07
	ld b, l                                          ; $5dea: $45
	add e                                            ; $5deb: $83
	sub a                                            ; $5dec: $97
	jp z, $c7e9                                      ; $5ded: $ca $e9 $c7

	ld e, a                                          ; $5df0: $5f
	rst $38                                          ; $5df1: $ff
	db $ec                                           ; $5df2: $ec
	db $f4                                           ; $5df3: $f4
	or e                                             ; $5df4: $b3
	ret nc                                           ; $5df5: $d0

	db $ec                                           ; $5df6: $ec
	nop                                              ; $5df7: $00
	ldh [rLCDC], a                                   ; $5df8: $e0 $40
	ldh a, [rAUD4LEN]                                ; $5dfa: $f0 $20
	ld hl, sp-$80                                    ; $5dfc: $f8 $80
	add b                                            ; $5dfe: $80
	ld hl, sp-$30                                    ; $5dff: $f8 $d0
	db $fc                                           ; $5e01: $fc
	ldh a, [$fe]                                     ; $5e02: $f0 $fe
	ld hl, sp-$01                                    ; $5e04: $f8 $ff
	sub h                                            ; $5e06: $94
	rst $38                                          ; $5e07: $ff
	jp nz, $efff                                     ; $5e08: $c2 $ff $ef

	ld a, [hl]                                       ; $5e0b: $7e
	ldh a, [c]                                       ; $5e0c: $f2
	ccf                                              ; $5e0d: $3f
	ld a, a                                          ; $5e0e: $7f
	rra                                              ; $5e0f: $1f
	jr nc, jr_061_5e31                               ; $5e10: $30 $1f

	jr jr_061_5e23                                   ; $5e12: $18 $0f

	jr @+$79                                         ; $5e14: $18 $77

	db $fc                                           ; $5e16: $fc
	adc a                                            ; $5e17: $8f

jr_061_5e18:
	adc h                                            ; $5e18: $8c
	rlca                                             ; $5e19: $07
	inc c                                            ; $5e1a: $0c
	rlca                                             ; $5e1b: $07
	ld b, $07                                        ; $5e1c: $06 $07
	sub [hl]                                         ; $5e1e: $96
	ld b, $e7                                        ; $5e1f: $06 $e7
	and $17                                          ; $5e21: $e6 $17

jr_061_5e23:
	cp $cf                                           ; $5e23: $fe $cf
	rst $38                                          ; $5e25: $ff
	rst $38                                          ; $5e26: $ff
	add hl, sp                                       ; $5e27: $39
	ld a, d                                          ; $5e28: $7a
	inc de                                           ; $5e29: $13
	ld l, a                                          ; $5e2a: $6f
	cp $97                                           ; $5e2b: $fe $97
	nop                                              ; $5e2d: $00
	rst SubAFromBC                                          ; $5e2e: $e7
	nop                                              ; $5e2f: $00
	pop bc                                           ; $5e30: $c1

jr_061_5e31:
	nop                                              ; $5e31: $00
	ld b, b                                          ; $5e32: $40
	nop                                              ; $5e33: $00
	jr nz, jr_061_5e68                               ; $5e34: $20 $32

	add h                                            ; $5e36: $84
	ld a, a                                          ; $5e37: $7f
	ld c, $7f                                        ; $5e38: $0e $7f
	sub b                                            ; $5e3a: $90
	sub a                                            ; $5e3b: $97
	ld d, b                                          ; $5e3c: $50
	or b                                             ; $5e3d: $b0
	jr z, jr_061_5e18                                ; $5e3e: $28 $d8

	ld [hl], h                                       ; $5e40: $74
	adc h                                            ; $5e41: $8c
	ld hl, sp+$04                                    ; $5e42: $f8 $04
	ld a, d                                          ; $5e44: $7a
	db $fd                                           ; $5e45: $fd
	ld [hl], e                                       ; $5e46: $73
	cp $7f                                           ; $5e47: $fe $7f
	or $92                                           ; $5e49: $f6 $92
	ei                                               ; $5e4b: $fb
	rlca                                             ; $5e4c: $07
	ld a, [$7207]                                    ; $5e4d: $fa $07 $72
	adc a                                            ; $5e50: $8f
	dec c                                            ; $5e51: $0d
	db $fd                                           ; $5e52: $fd
	ldh a, [c]                                       ; $5e53: $f2
	di                                               ; $5e54: $f3
	dec c                                            ; $5e55: $0d
	rrca                                             ; $5e56: $0f
	ldh a, [c]                                       ; $5e57: $f2

jr_061_5e58:
	ld [hl], a                                       ; $5e58: $77
	cp l                                             ; $5e59: $bd
	ld [hl], e                                       ; $5e5a: $73
	db $fc                                           ; $5e5b: $fc
	ld a, e                                          ; $5e5c: $7b
	db $fd                                           ; $5e5d: $fd
	ld d, e                                          ; $5e5e: $53
	cp $8f                                           ; $5e5f: $fe $8f
	ld a, a                                          ; $5e61: $7f
	add b                                            ; $5e62: $80
	ccf                                              ; $5e63: $3f
	ret nz                                           ; $5e64: $c0

	rra                                              ; $5e65: $1f
	ldh [hDisp0_OBP1], a                                     ; $5e66: $e0 $87

jr_061_5e68:
	ld hl, sp-$61                                    ; $5e68: $f8 $9f
	ldh [$9f], a                                     ; $5e6a: $e0 $9f
	ldh [hDisp1_LCDC], a                                     ; $5e6c: $e0 $8f
	ldh a, [$c7]                                     ; $5e6e: $f0 $c7
	ld a, b                                          ; $5e70: $78
	ld c, a                                          ; $5e71: $4f

jr_061_5e72:
	xor b                                            ; $5e72: $a8
	rst SubAFromDE                                          ; $5e73: $df
	ret nz                                           ; $5e74: $c0

	sbc l                                            ; $5e75: $9d
	jr nz, jr_061_5e58                               ; $5e76: $20 $e0

	ld [hl], a                                       ; $5e78: $77
	cp $7e                                           ; $5e79: $fe $7e
	or b                                             ; $5e7b: $b0
	sbc d                                            ; $5e7c: $9a
	jr nc, @-$2e                                     ; $5e7d: $30 $d0

	ldh a, [hDisp1_SCY]                                     ; $5e7f: $f0 $90
	ld [hl], b                                       ; $5e81: $70
	ld a, e                                          ; $5e82: $7b
	db $fc                                           ; $5e83: $fc
	sbc e                                            ; $5e84: $9b
	ld e, b                                          ; $5e85: $58
	cp b                                             ; $5e86: $b8
	add sp, $38                                      ; $5e87: $e8 $38
	ld a, e                                          ; $5e89: $7b
	cp $86                                           ; $5e8a: $fe $86
	jr jr_061_5e72                                   ; $5e8c: $18 $e4

	inc e                                            ; $5e8e: $1c
	db $ec                                           ; $5e8f: $ec
	inc d                                            ; $5e90: $14
	call c, $f424                                    ; $5e91: $dc $24 $f4
	inc c                                            ; $5e94: $0c
	ldh a, [$0c]                                     ; $5e95: $f0 $0c
	ldh [c], a                                       ; $5e97: $e2
	ld e, $c2                                        ; $5e98: $1e $c2
	ld a, $02                                        ; $5e9a: $3e $02
	cp $f2                                           ; $5e9c: $fe $f2
	inc c                                            ; $5e9e: $0c
	rst FarCall                                          ; $5e9f: $f7
	add hl, bc                                       ; $5ea0: $09
	rst SubAFromBC                                          ; $5ea1: $e7
	add hl, de                                       ; $5ea2: $19
	rst GetHLinHL                                          ; $5ea3: $cf
	ld sp, $0022                                     ; $5ea4: $31 $22 $00
	rst SubAFromDE                                          ; $5ea7: $df
	sbc c                                            ; $5ea8: $99
	sbc l                                            ; $5ea9: $9d
	rst FarCall                                          ; $5eaa: $f7
	add hl, de                                       ; $5eab: $19
	sbc $99                                          ; $5eac: $de $99
	sbc d                                            ; $5eae: $9a
	ld [hl+], a                                      ; $5eaf: $22
	adc b                                            ; $5eb0: $88
	adc b                                            ; $5eb1: $88
	ld de, $67ff                                     ; $5eb2: $11 $ff $67
	ei                                               ; $5eb5: $fb
	sbc h                                            ; $5eb6: $9c
	inc sp                                           ; $5eb7: $33
	sbc c                                            ; $5eb8: $99
	ld de, $fb77                                     ; $5eb9: $11 $77 $fb
	ld a, e                                          ; $5ebc: $7b
	db $fc                                           ; $5ebd: $fc
	sub a                                            ; $5ebe: $97
	sub c                                            ; $5ebf: $91
	nop                                              ; $5ec0: $00
	ld d, l                                          ; $5ec1: $55
	xor $e6                                          ; $5ec2: $ee $e6
	ld b, h                                          ; $5ec4: $44
	call z, $fdcc                                    ; $5ec5: $cc $cc $fd
	ld bc, $4880                                     ; $5ec8: $01 $80 $48
	rla                                              ; $5ecb: $17
	ld l, d                                          ; $5ecc: $6a
	sub a                                            ; $5ecd: $97
	ld l, [hl]                                       ; $5ece: $6e
	sub e                                            ; $5ecf: $93
	dec h                                            ; $5ed0: $25
	db $db                                           ; $5ed1: $db
	add hl, hl                                       ; $5ed2: $29
	rst SubAFromDE                                          ; $5ed3: $df
	adc l                                            ; $5ed4: $8d
	ld a, a                                          ; $5ed5: $7f
	adc $7b                                          ; $5ed6: $ce $7b
	rst SubAFromBC                                          ; $5ed8: $e7
	cp l                                             ; $5ed9: $bd
	rst FarCall                                          ; $5eda: $f7
	sbc a                                            ; $5edb: $9f
	ld a, a                                          ; $5edc: $7f
	adc $7f                                          ; $5edd: $ce $7f
	ei                                               ; $5edf: $fb
	ccf                                              ; $5ee0: $3f
	pop hl                                           ; $5ee1: $e1
	sbc a                                            ; $5ee2: $9f
	di                                               ; $5ee3: $f3
	cp $36                                           ; $5ee4: $fe $36
	ld a, h                                          ; $5ee6: $7c
	dec l                                            ; $5ee7: $2d
	cp l                                             ; $5ee8: $bd
	adc e                                            ; $5ee9: $8b
	ld de, $a8fe                                     ; $5eea: $11 $fe $a8
	ld a, e                                          ; $5eed: $7b
	call c, $f46f                                    ; $5eee: $dc $6f $f4
	ccf                                              ; $5ef1: $3f
	cp $39                                           ; $5ef2: $fe $39
	ei                                               ; $5ef4: $fb
	ld [hl], $f9                                     ; $5ef5: $36 $f9
	cp l                                             ; $5ef7: $bd
	ld a, c                                          ; $5ef8: $79
	cp [hl]                                          ; $5ef9: $be
	ld a, a                                          ; $5efa: $7f
	cp [hl]                                          ; $5efb: $be
	ld a, a                                          ; $5efc: $7f
	inc [hl]                                         ; $5efd: $34
	ld [hl], e                                       ; $5efe: $73
	cp $9e                                           ; $5eff: $fe $9e
	inc h                                            ; $5f01: $24
	ld [hl], e                                       ; $5f02: $73
	cp $80                                           ; $5f03: $fe $80
	and h                                            ; $5f05: $a4
	ld a, a                                          ; $5f06: $7f
	xor e                                            ; $5f07: $ab
	dec e                                            ; $5f08: $1d
	xor e                                            ; $5f09: $ab
	dec e                                            ; $5f0a: $1d
	ld h, h                                          ; $5f0b: $64
	sbc a                                            ; $5f0c: $9f
	inc [hl]                                         ; $5f0d: $34
	rst GetHLinHL                                          ; $5f0e: $cf
	sub [hl]                                         ; $5f0f: $96
	rst AddAOntoHL                                          ; $5f10: $ef
	jp $e37f                                         ; $5f11: $c3 $7f $e3


	cp [hl]                                          ; $5f14: $be
	ld [hl], c                                       ; $5f15: $71
	rst SubAFromDE                                          ; $5f16: $df
	cp h                                             ; $5f17: $bc
	rst GetHLinHL                                          ; $5f18: $cf
	rst $38                                          ; $5f19: $ff
	inc hl                                           ; $5f1a: $23
	rst $38                                          ; $5f1b: $ff

jr_061_5f1c:
	nop                                              ; $5f1c: $00
	rst $38                                          ; $5f1d: $ff
	ret nz                                           ; $5f1e: $c0

	inc a                                            ; $5f1f: $3c
	jr nz, @-$0e                                     ; $5f20: $20 $f0

	ld [hl], b                                       ; $5f22: $70
	pop de                                           ; $5f23: $d1
	sub a                                            ; $5f24: $97
	ldh a, [$a3]                                     ; $5f25: $f0 $a3
	jr nz, jr_061_5f1c                               ; $5f27: $20 $f3

	jp nz, $01eb                                     ; $5f29: $c2 $eb $01

	ld d, b                                          ; $5f2c: $50
	cp a                                             ; $5f2d: $bf
	add b                                            ; $5f2e: $80
	ld b, b                                          ; $5f2f: $40
	add b                                            ; $5f30: $80
	add b                                            ; $5f31: $80
	or b                                             ; $5f32: $b0
	ret nz                                           ; $5f33: $c0

	add sp, -$10                                     ; $5f34: $e8 $f0
	cp d                                             ; $5f36: $ba
	db $fc                                           ; $5f37: $fc
	sbc [hl]                                         ; $5f38: $9e
	rst $38                                          ; $5f39: $ff
	adc a                                            ; $5f3a: $8f
	rst $38                                          ; $5f3b: $ff
	xor [hl]                                         ; $5f3c: $ae
	rst SubAFromDE                                          ; $5f3d: $df
	db $e4                                           ; $5f3e: $e4
	rst SubAFromDE                                          ; $5f3f: $df
	call nz, $c5ef                                   ; $5f40: $c4 $ef $c5
	rst AddAOntoHL                                          ; $5f43: $ef
	or [hl]                                          ; $5f44: $b6
	xor $b4                                          ; $5f45: $ee $b4
	db $ec                                           ; $5f47: $ec
	ld c, c                                          ; $5f48: $49
	sbc a                                            ; $5f49: $9f
	adc h                                            ; $5f4a: $8c
	rst SubAFromDE                                          ; $5f4b: $df
	sub $ef                                          ; $5f4c: $d6 $ef
	rst SubAFromBC                                          ; $5f4e: $e7
	cp l                                             ; $5f4f: $bd
	adc h                                            ; $5f50: $8c
	di                                               ; $5f51: $f3
	rst $38                                          ; $5f52: $ff
	ld a, l                                          ; $5f53: $7d
	rst GetHLinHL                                          ; $5f54: $cf
	rst $38                                          ; $5f55: $ff
	rst JumpTable                                          ; $5f56: $c7
	rst $38                                          ; $5f57: $ff
	cpl                                              ; $5f58: $2f
	db $fd                                           ; $5f59: $fd
	sbc b                                            ; $5f5a: $98
	ld sp, hl                                        ; $5f5b: $f9
	pop de                                           ; $5f5c: $d1
	di                                               ; $5f5d: $f3
	rlca                                             ; $5f5e: $07
	cp $04                                           ; $5f5f: $fe $04
	rrca                                             ; $5f61: $0f
	inc bc                                           ; $5f62: $03
	add a                                            ; $5f63: $87
	cp [hl]                                          ; $5f64: $be
	jp z, Jump_061_56e0                              ; $5f65: $ca $e0 $56

	add b                                            ; $5f68: $80
	cp c                                             ; $5f69: $b9
	xor c                                            ; $5f6a: $a9
	sbc $66                                          ; $5f6b: $de $66
	rst $38                                          ; $5f6d: $ff
	ld [hl], e                                       ; $5f6e: $73
	rst SubAFromDE                                          ; $5f6f: $df
	cp a                                             ; $5f70: $bf
	rst AddAOntoHL                                          ; $5f71: $ef
	rst $38                                          ; $5f72: $ff
	ld h, d                                          ; $5f73: $62
	rst $38                                          ; $5f74: $ff
	inc de                                           ; $5f75: $13
	cp a                                             ; $5f76: $bf
	jp nz, $f3fe                                     ; $5f77: $c2 $fe $f3

	rst SubAFromDE                                          ; $5f7a: $df
	jp $c27f                                         ; $5f7b: $c3 $7f $c2


	cp a                                             ; $5f7e: $bf
	add b                                            ; $5f7f: $80
	ld a, [hl]                                       ; $5f80: $7e
	inc bc                                           ; $5f81: $03
	ei                                               ; $5f82: $fb
	ld b, $be                                        ; $5f83: $06 $be
	rlca                                             ; $5f85: $07
	ccf                                              ; $5f86: $3f
	rlca                                             ; $5f87: $07
	adc h                                            ; $5f88: $8c
	scf                                              ; $5f89: $37
	rrca                                             ; $5f8a: $0f
	ld a, a                                          ; $5f8b: $7f
	rrca                                             ; $5f8c: $0f
	ld l, l                                          ; $5f8d: $6d
	rra                                              ; $5f8e: $1f
	db $fd                                           ; $5f8f: $fd
	rra                                              ; $5f90: $1f
	rst FarCall                                          ; $5f91: $f7
	ccf                                              ; $5f92: $3f
	cp $77                                           ; $5f93: $fe $77
	rst AddAOntoHL                                          ; $5f95: $ef
	di                                               ; $5f96: $f3
	db $fd                                           ; $5f97: $fd
	db $e3                                           ; $5f98: $e3
	rst $38                                          ; $5f99: $ff
	pop bc                                           ; $5f9a: $c1
	db $fd                                           ; $5f9b: $fd
	cp d                                             ; $5f9c: $ba
	db $fc                                           ; $5f9d: $fc
	db $f4                                           ; $5f9e: $f4
	inc [hl]                                         ; $5f9f: $34
	inc d                                            ; $5fa0: $14
	dec b                                            ; $5fa1: $05
	rlca                                             ; $5fa2: $07
	rst AddAOntoHL                                          ; $5fa3: $ef
	add b                                            ; $5fa4: $80
	db $fc                                           ; $5fa5: $fc
	ld a, l                                          ; $5fa6: $7d
	cp $32                                           ; $5fa7: $fe $32
	rst $38                                          ; $5fa9: $ff
	sbc c                                            ; $5faa: $99
	rst $38                                          ; $5fab: $ff
	ld hl, sp-$01                                    ; $5fac: $f8 $ff
	ld a, l                                          ; $5fae: $7d
	cp $ad                                           ; $5faf: $fe $ad
	ld a, [hl]                                       ; $5fb1: $7e
	ld [$e33f], a                                    ; $5fb2: $ea $3f $e3
	cp a                                             ; $5fb5: $bf
	and l                                            ; $5fb6: $a5
	ld a, a                                          ; $5fb7: $7f
	ldh [c], a                                       ; $5fb8: $e2
	ld a, a                                          ; $5fb9: $7f
	ldh a, [c]                                       ; $5fba: $f2
	rst $38                                          ; $5fbb: $ff
	or l                                             ; $5fbc: $b5
	ld a, e                                          ; $5fbd: $7b
	ld [hl], l                                       ; $5fbe: $75
	dec sp                                           ; $5fbf: $3b
	cp d                                             ; $5fc0: $ba
	ld a, l                                          ; $5fc1: $7d
	db $eb                                           ; $5fc2: $eb
	db $fd                                           ; $5fc3: $fd
	add b                                            ; $5fc4: $80
	ld h, l                                          ; $5fc5: $65
	rst $38                                          ; $5fc6: $ff
	ld d, a                                          ; $5fc7: $57
	rst $38                                          ; $5fc8: $ff
	inc de                                           ; $5fc9: $13
	rst $38                                          ; $5fca: $ff
	dec hl                                           ; $5fcb: $2b
	rst $38                                          ; $5fcc: $ff
	xor c                                            ; $5fcd: $a9
	rst $38                                          ; $5fce: $ff
	db $fd                                           ; $5fcf: $fd
	rst $38                                          ; $5fd0: $ff
	sub d                                            ; $5fd1: $92
	sub e                                            ; $5fd2: $93
	ld hl, $e221                                     ; $5fd3: $21 $21 $e2
	ldh [c], a                                       ; $5fd6: $e2
	call nc, $ed34                                   ; $5fd7: $d4 $34 $ed
	dec e                                            ; $5fda: $1d
	halt                                             ; $5fdb: $76
	ld c, $18                                        ; $5fdc: $0e $18
	ld [$0878], sp                                   ; $5fde: $08 $78 $08
	ret c                                            ; $5fe1: $d8

	ld [$9e99], sp                                   ; $5fe2: $08 $99 $9e
	add hl, bc                                       ; $5fe5: $09

jr_061_5fe6:
	ld a, [hl+]                                      ; $5fe6: $2a
	ldh [$97], a                                     ; $5fe7: $e0 $97
	ldh [$9f], a                                     ; $5fe9: $e0 $9f
	ldh a, [rIE]                                     ; $5feb: $f0 $ff
	inc sp                                           ; $5fed: $33
	ld a, [hl]                                       ; $5fee: $7e
	ld h, $bd                                        ; $5fef: $26 $bd
	ld a, e                                          ; $5ff1: $7b
	ld [bc], a                                       ; $5ff2: $02
	inc sp                                           ; $5ff3: $33
	nop                                              ; $5ff4: $00
	ld a, a                                          ; $5ff5: $7f
	ld a, h                                          ; $5ff6: $7c
	sbc h                                            ; $5ff7: $9c
	ldh [$b0], a                                     ; $5ff8: $e0 $b0
	jr nc, jr_061_604b                               ; $5ffa: $30 $4f

	nop                                              ; $5ffc: $00
	sbc [hl]                                         ; $5ffd: $9e
	and b                                            ; $5ffe: $a0
	inc bc                                           ; $5fff: $03
	nop                                              ; $6000: $00
	ld a, e                                          ; $6001: $7b
	nop                                              ; $6002: $00

Call_061_6003:
	sbc b                                            ; $6003: $98
	ld hl, $87ff                                     ; $6004: $21 $ff $87
	cp $cc                                           ; $6007: $fe $cc
	ei                                               ; $6009: $fb
	rra                                              ; $600a: $1f
	daa                                              ; $600b: $27
	nop                                              ; $600c: $00
	sbc c                                            ; $600d: $99
	rst $38                                          ; $600e: $ff
	add d                                            ; $600f: $82
	cp [hl]                                          ; $6010: $be
	jp $f3ff                                         ; $6011: $c3 $ff $f3


	ld d, a                                          ; $6014: $57
	nop                                              ; $6015: $00
	ld b, e                                          ; $6016: $43
	ld h, b                                          ; $6017: $60
	sbc b                                            ; $6018: $98
	sbc l                                            ; $6019: $9d
	ld a, a                                          ; $601a: $7f
	rst GetHLinHL                                          ; $601b: $cf
	ld a, a                                          ; $601c: $7f
	rst SubAFromBC                                          ; $601d: $e7
	ccf                                              ; $601e: $3f
	ld hl, sp+$7b                                    ; $601f: $f8 $7b
	ld h, b                                          ; $6021: $60
	sbc b                                            ; $6022: $98
	jr nc, jr_061_60a4                               ; $6023: $30 $7f

	jr nz, jr_061_5fe6                               ; $6025: $20 $bf

	ld de, $afff                                     ; $6027: $11 $ff $af
	ld [bc], a                                       ; $602a: $02
	ld b, b                                          ; $602b: $40
	cpl                                              ; $602c: $2f
	ld b, b                                          ; $602d: $40
	cp a                                             ; $602e: $bf
	ldh a, [$f1]                                     ; $602f: $f0 $f1
	sbc h                                            ; $6031: $9c
	ld h, b                                          ; $6032: $60
	or e                                             ; $6033: $b3
	or b                                             ; $6034: $b0
	ld h, e                                          ; $6035: $63
	ld h, b                                          ; $6036: $60
	sbc h                                            ; $6037: $9c
	sbc [hl]                                         ; $6038: $9e
	ld a, l                                          ; $6039: $7d
	rst $38                                          ; $603a: $ff
	ld [hl], e                                       ; $603b: $73
	ld h, b                                          ; $603c: $60
	sub a                                            ; $603d: $97
	add b                                            ; $603e: $80
	rst $38                                          ; $603f: $ff
	ret nz                                           ; $6040: $c0

	cp $06                                           ; $6041: $fe $06
	rst $38                                          ; $6043: $ff
	rrca                                             ; $6044: $0f
	rrca                                             ; $6045: $0f
	cp l                                             ; $6046: $bd
	add a                                            ; $6047: $87
	jp z, Jump_061_56e0                              ; $6048: $ca $e0 $56

jr_061_604b:
	ld e, a                                          ; $604b: $5f
	ld h, b                                          ; $604c: $60
	sbc [hl]                                         ; $604d: $9e
	ldh [c], a                                       ; $604e: $e2
	ld [hl], a                                       ; $604f: $77
	ld h, b                                          ; $6050: $60
	sbc c                                            ; $6051: $99
	cp $03                                           ; $6052: $fe $03
	rst $38                                          ; $6054: $ff
	inc bc                                           ; $6055: $03
	rst $38                                          ; $6056: $ff
	ldh a, [c]                                       ; $6057: $f2
	ld a, e                                          ; $6058: $7b
	call c, Call_061_6003                            ; $6059: $dc $03 $60

jr_061_605c:
	ld [hl], e                                       ; $605c: $73
	ld h, b                                          ; $605d: $60
	ld a, a                                          ; $605e: $7f
	adc $7d                                          ; $605f: $ce $7d
	and b                                            ; $6061: $a0

jr_061_6062:
	sbc [hl]                                         ; $6062: $9e
	rst SubAFromDE                                          ; $6063: $df
	inc bc                                           ; $6064: $03
	ld h, b                                          ; $6065: $60
	cpl                                              ; $6066: $2f
	ld h, b                                          ; $6067: $60
	sub l                                            ; $6068: $95
	jr nz, jr_061_605c                               ; $6069: $20 $f1

	ret nz                                           ; $606b: $c0

	di                                               ; $606c: $f3
	jr nc, jr_061_6062                               ; $606d: $30 $f3

	ldh [c], a                                       ; $606f: $e2
	db $eb                                           ; $6070: $eb
	ld bc, $02e0                                     ; $6071: $01 $e0 $02
	and b                                            ; $6074: $a0
	ld c, a                                          ; $6075: $4f
	ld b, b                                          ; $6076: $40
	ld a, e                                          ; $6077: $7b
	ld e, [hl]                                       ; $6078: $5e
	sbc e                                            ; $6079: $9b
	nop                                              ; $607a: $00
	rrca                                             ; $607b: $0f
	rlca                                             ; $607c: $07
	add a                                            ; $607d: $87
	cp [hl]                                          ; $607e: $be
	set 4, b                                         ; $607f: $cb $e0
	ld d, [hl]                                       ; $6081: $56
	scf                                              ; $6082: $37
	ld b, b                                          ; $6083: $40
	sbc d                                            ; $6084: $9a
	jp nz, $30ff                                     ; $6085: $c2 $ff $30

	cp $c3                                           ; $6088: $fe $c3

jr_061_608a:
	ld l, a                                          ; $608a: $6f
	ld b, b                                          ; $608b: $40
	ld a, a                                          ; $608c: $7f
	sbc $96                                          ; $608d: $de $96
	ret nz                                           ; $608f: $c0

	nop                                              ; $6090: $00
	jr jr_061_60a3                                   ; $6091: $18 $10

	ret nc                                           ; $6093: $d0

	ld b, b                                          ; $6094: $40
	jr nz, jr_061_60b7                               ; $6095: $20 $20

	ld sp, $03bf                                     ; $6097: $31 $bf $03
	rlca                                             ; $609a: $07
	sbc h                                            ; $609b: $9c
	ld bc, $078f                                     ; $609c: $01 $8f $07
	sbc $ff                                          ; $609f: $de $ff
	sub h                                            ; $60a1: $94
	db $fc                                           ; $60a2: $fc

jr_061_60a3:
	cp a                                             ; $60a3: $bf

jr_061_60a4:
	ldh [hDisp1_LCDC], a                                     ; $60a4: $e0 $8f
	sub b                                            ; $60a6: $90
	sbc $d0                                          ; $60a7: $de $d0
	ld b, $08                                        ; $60a9: $06 $08
	ld c, $08                                        ; $60ab: $0e $08
	ld [hl], e                                       ; $60ad: $73
	ldh [$9b], a                                     ; $60ae: $e0 $9b
	jr jr_061_608a                                   ; $60b0: $18 $d8

	ld d, b                                          ; $60b2: $50
	ld [hl], b                                       ; $60b3: $70
	rrca                                             ; $60b4: $0f
	ldh [$9c], a                                     ; $60b5: $e0 $9c

jr_061_60b7:
	ld e, b                                          ; $60b7: $58
	ld a, b                                          ; $60b8: $78
	ld [hl], b                                       ; $60b9: $70
	rrca                                             ; $60ba: $0f
	ldh [$9a], a                                     ; $60bb: $e0 $9a
	ld hl, sp+$78                                    ; $60bd: $f8 $78
	ld a, c                                          ; $60bf: $79
	ld [hl], b                                       ; $60c0: $70
	inc sp                                           ; $60c1: $33
	dec sp                                           ; $60c2: $3b
	ldh [$fa], a                                     ; $60c3: $e0 $fa
	ld bc, $4880                                     ; $60c5: $01 $80 $48
	rla                                              ; $60c8: $17
	ld l, d                                          ; $60c9: $6a
	sub a                                            ; $60ca: $97
	ld l, [hl]                                       ; $60cb: $6e
	sub e                                            ; $60cc: $93
	dec h                                            ; $60cd: $25
	db $db                                           ; $60ce: $db
	add hl, hl                                       ; $60cf: $29
	rst SubAFromDE                                          ; $60d0: $df
	adc l                                            ; $60d1: $8d
	ld a, a                                          ; $60d2: $7f
	adc $7b                                          ; $60d3: $ce $7b
	rst SubAFromBC                                          ; $60d5: $e7
	cp a                                             ; $60d6: $bf
	rst FarCall                                          ; $60d7: $f7
	sbc l                                            ; $60d8: $9d
	ld a, a                                          ; $60d9: $7f
	sbc $7f                                          ; $60da: $de $7f
	db $e3                                           ; $60dc: $e3
	ccf                                              ; $60dd: $3f
	db $e3                                           ; $60de: $e3
	sbc [hl]                                         ; $60df: $9e
	or $fe                                           ; $60e0: $f6 $fe
	inc [hl]                                         ; $60e2: $34
	ld a, l                                          ; $60e3: $7d
	dec h                                            ; $60e4: $25
	cp l                                             ; $60e5: $bd
	adc e                                            ; $60e6: $8b
	add hl, de                                       ; $60e7: $19
	cp $a8                                           ; $60e8: $fe $a8
	ld a, e                                          ; $60ea: $7b
	call c, $f46f                                    ; $60eb: $dc $6f $f4
	ccf                                              ; $60ee: $3f
	cp $39                                           ; $60ef: $fe $39
	ei                                               ; $60f1: $fb
	ld [hl], $f9                                     ; $60f2: $36 $f9
	cp l                                             ; $60f4: $bd
	ld a, c                                          ; $60f5: $79
	cp [hl]                                          ; $60f6: $be
	ld a, a                                          ; $60f7: $7f
	cp [hl]                                          ; $60f8: $be
	ld a, a                                          ; $60f9: $7f
	inc [hl]                                         ; $60fa: $34
	ld [hl], e                                       ; $60fb: $73
	cp $9e                                           ; $60fc: $fe $9e
	inc h                                            ; $60fe: $24
	ld [hl], e                                       ; $60ff: $73
	cp $80                                           ; $6100: $fe $80
	and h                                            ; $6102: $a4
	ld a, a                                          ; $6103: $7f
	xor e                                            ; $6104: $ab
	dec e                                            ; $6105: $1d
	xor e                                            ; $6106: $ab
	dec e                                            ; $6107: $1d
	ld h, h                                          ; $6108: $64
	sbc a                                            ; $6109: $9f
	inc [hl]                                         ; $610a: $34
	rst GetHLinHL                                          ; $610b: $cf
	sub [hl]                                         ; $610c: $96
	rst AddAOntoHL                                          ; $610d: $ef
	jp $e37f                                         ; $610e: $c3 $7f $e3


	cp [hl]                                          ; $6111: $be
	ld [hl], c                                       ; $6112: $71
	rst SubAFromDE                                          ; $6113: $df
	cp h                                             ; $6114: $bc
	rst GetHLinHL                                          ; $6115: $cf
	rst $38                                          ; $6116: $ff
	inc hl                                           ; $6117: $23
	rst $38                                          ; $6118: $ff
	add b                                            ; $6119: $80
	rst $38                                          ; $611a: $ff
	ret nz                                           ; $611b: $c0

	ld a, h                                          ; $611c: $7c
	jr nz, @-$0e                                     ; $611d: $20 $f0

	ld [hl], b                                       ; $611f: $70
	pop de                                           ; $6120: $d1
	sub a                                            ; $6121: $97
	ldh a, [rHDMA3]                                  ; $6122: $f0 $53
	sub b                                            ; $6124: $90
	db $e3                                           ; $6125: $e3
	and d                                            ; $6126: $a2
	add e                                            ; $6127: $83
	ld bc, $bf00                                     ; $6128: $01 $00 $bf
	add b                                            ; $612b: $80
	ld b, b                                          ; $612c: $40
	add b                                            ; $612d: $80
	add b                                            ; $612e: $80
	and b                                            ; $612f: $a0
	ret nz                                           ; $6130: $c0

	add sp, -$10                                     ; $6131: $e8 $f0
	cp d                                             ; $6133: $ba
	db $fc                                           ; $6134: $fc
	sbc [hl]                                         ; $6135: $9e
	rst $38                                          ; $6136: $ff
	adc a                                            ; $6137: $8f
	rst $38                                          ; $6138: $ff
	xor [hl]                                         ; $6139: $ae
	rst SubAFromDE                                          ; $613a: $df
	db $e4                                           ; $613b: $e4
	rst SubAFromDE                                          ; $613c: $df
	call nz, $c5ef                                   ; $613d: $c4 $ef $c5
	rst AddAOntoHL                                          ; $6140: $ef
	or [hl]                                          ; $6141: $b6
	xor $b4                                          ; $6142: $ee $b4
	db $ec                                           ; $6144: $ec
	ld c, c                                          ; $6145: $49
	sbc a                                            ; $6146: $9f
	adc h                                            ; $6147: $8c
	rst SubAFromDE                                          ; $6148: $df
	sub $ef                                          ; $6149: $d6 $ef
	rst SubAFromBC                                          ; $614b: $e7
	cp a                                             ; $614c: $bf
	adc h                                            ; $614d: $8c
	di                                               ; $614e: $f3
	sbc $7d                                          ; $614f: $de $7d
	rst AddAOntoHL                                          ; $6151: $ef

jr_061_6152:
	rst $38                                          ; $6152: $ff
	rst GetHLinHL                                          ; $6153: $cf
	ld sp, hl                                        ; $6154: $f9
	jr c, jr_061_6152                                ; $6155: $38 $fb

	sub c                                            ; $6157: $91
	rst FarCall                                          ; $6158: $f7
	rst SubAFromHL                                          ; $6159: $d7
	di                                               ; $615a: $f3
	rlca                                             ; $615b: $07
	db $fd                                           ; $615c: $fd
	ld b, $02                                        ; $615d: $06 $02
	ld [bc], a                                       ; $615f: $02
	add b                                            ; $6160: $80
	cp [hl]                                          ; $6161: $be
	ret nz                                           ; $6162: $c0

	ldh [rRP], a                                     ; $6163: $e0 $56
	add b                                            ; $6165: $80
	cp c                                             ; $6166: $b9
	xor c                                            ; $6167: $a9
	sbc $66                                          ; $6168: $de $66
	rst $38                                          ; $616a: $ff
	ld [hl], e                                       ; $616b: $73
	rst SubAFromDE                                          ; $616c: $df
	cp a                                             ; $616d: $bf
	rst AddAOntoHL                                          ; $616e: $ef
	rst $38                                          ; $616f: $ff
	ld h, d                                          ; $6170: $62
	rst $38                                          ; $6171: $ff
	sub e                                            ; $6172: $93
	rst $38                                          ; $6173: $ff
	jp nz, $f3fe                                     ; $6174: $c2 $fe $f3

	rst SubAFromDE                                          ; $6177: $df
	jp $c27f                                         ; $6178: $c3 $7f $c2


	ld e, a                                          ; $617b: $5f
	ld b, b                                          ; $617c: $40
	sbc [hl]                                         ; $617d: $9e
	add e                                            ; $617e: $83
	dec de                                           ; $617f: $1b
	ld b, $3e                                        ; $6180: $06 $3e
	rlca                                             ; $6182: $07
	ccf                                              ; $6183: $3f
	rlca                                             ; $6184: $07
	adc h                                            ; $6185: $8c
	scf                                              ; $6186: $37
	rrca                                             ; $6187: $0f
	ld a, a                                          ; $6188: $7f
	rrca                                             ; $6189: $0f
	ld l, l                                          ; $618a: $6d
	rra                                              ; $618b: $1f
	db $fd                                           ; $618c: $fd
	rra                                              ; $618d: $1f
	rst FarCall                                          ; $618e: $f7
	ccf                                              ; $618f: $3f
	cp $77                                           ; $6190: $fe $77
	rst AddAOntoHL                                          ; $6192: $ef
	di                                               ; $6193: $f3
	db $fd                                           ; $6194: $fd
	db $e3                                           ; $6195: $e3
	rst $38                                          ; $6196: $ff
	pop bc                                           ; $6197: $c1
	db $fd                                           ; $6198: $fd
	cp d                                             ; $6199: $ba
	db $fc                                           ; $619a: $fc
	db $f4                                           ; $619b: $f4
	inc [hl]                                         ; $619c: $34
	inc d                                            ; $619d: $14
	dec b                                            ; $619e: $05
	rlca                                             ; $619f: $07
	rst AddAOntoHL                                          ; $61a0: $ef
	add b                                            ; $61a1: $80
	db $fc                                           ; $61a2: $fc
	ld a, l                                          ; $61a3: $7d
	cp $32                                           ; $61a4: $fe $32
	rst $38                                          ; $61a6: $ff
	sbc c                                            ; $61a7: $99
	rst $38                                          ; $61a8: $ff
	ld hl, sp-$01                                    ; $61a9: $f8 $ff
	ld a, l                                          ; $61ab: $7d
	cp $ad                                           ; $61ac: $fe $ad
	ld a, [hl]                                       ; $61ae: $7e
	ld [$e33f], a                                    ; $61af: $ea $3f $e3
	cp a                                             ; $61b2: $bf
	and l                                            ; $61b3: $a5
	ld a, a                                          ; $61b4: $7f
	ldh [c], a                                       ; $61b5: $e2
	ld a, a                                          ; $61b6: $7f
	ldh a, [c]                                       ; $61b7: $f2
	rst $38                                          ; $61b8: $ff
	or l                                             ; $61b9: $b5
	ld a, e                                          ; $61ba: $7b
	ld [hl], l                                       ; $61bb: $75
	dec sp                                           ; $61bc: $3b
	cp d                                             ; $61bd: $ba
	ld a, l                                          ; $61be: $7d
	db $eb                                           ; $61bf: $eb
	db $fd                                           ; $61c0: $fd
	add b                                            ; $61c1: $80
	ld h, l                                          ; $61c2: $65
	rst $38                                          ; $61c3: $ff
	ld d, a                                          ; $61c4: $57
	rst $38                                          ; $61c5: $ff
	inc de                                           ; $61c6: $13
	rst $38                                          ; $61c7: $ff
	dec hl                                           ; $61c8: $2b
	rst $38                                          ; $61c9: $ff
	xor c                                            ; $61ca: $a9
	rst $38                                          ; $61cb: $ff
	db $fd                                           ; $61cc: $fd
	rst $38                                          ; $61cd: $ff
	sub d                                            ; $61ce: $92
	sub e                                            ; $61cf: $93
	ld hl, $e221                                     ; $61d0: $21 $21 $e2
	ldh [c], a                                       ; $61d3: $e2
	call nc, $ed34                                   ; $61d4: $d4 $34 $ed
	dec e                                            ; $61d7: $1d
	halt                                             ; $61d8: $76
	ld c, $18                                        ; $61d9: $0e $18
	ld [$0878], sp                                   ; $61db: $08 $78 $08
	ret c                                            ; $61de: $d8

	ld [$9e99], sp                                   ; $61df: $08 $99 $9e
	add hl, bc                                       ; $61e2: $09
	ld a, [hl+]                                      ; $61e3: $2a
	ldh [hDisp1_WX], a                                     ; $61e4: $e0 $96
	ldh [$9f], a                                     ; $61e6: $e0 $9f
	pop af                                           ; $61e8: $f1
	cp $32                                           ; $61e9: $fe $32
	ld a, a                                          ; $61eb: $7f
	daa                                              ; $61ec: $27
	cp l                                             ; $61ed: $bd
	dec d                                            ; $61ee: $15
	inc sp                                           ; $61ef: $33
	nop                                              ; $61f0: $00
	cp a                                             ; $61f1: $bf
	rst $38                                          ; $61f2: $ff
	db $fc                                           ; $61f3: $fc
	sbc [hl]                                         ; $61f4: $9e
	ldh [$6f], a                                     ; $61f5: $e0 $6f
	nop                                              ; $61f7: $00
	ld d, e                                          ; $61f8: $53
	jr nz, @-$68                                     ; $61f9: $20 $96

	rst JumpTable                                          ; $61fb: $c7
	rst $38                                          ; $61fc: $ff
	ld bc, $87ff                                     ; $61fd: $01 $ff $87
	ei                                               ; $6200: $fb
	ret                                              ; $6201: $c9


	rst FarCall                                          ; $6202: $f7
	rla                                              ; $6203: $17
	dec hl                                           ; $6204: $2b
	jr nz, jr_061_6286                               ; $6205: $20 $7f

	ld [hl], a                                       ; $6207: $77
	sub a                                            ; $6208: $97
	add d                                            ; $6209: $82
	cp $c3                                           ; $620a: $fe $c3
	rst $38                                          ; $620c: $ff
	di                                               ; $620d: $f3
	ld e, a                                          ; $620e: $5f
	jp nz, Jump_061_637f                             ; $620f: $c2 $7f $63

	jr nz, jr_061_625f                               ; $6212: $20 $4b

	add b                                            ; $6214: $80
	sbc h                                            ; $6215: $9c
	cp l                                             ; $6216: $bd
	rst FarCall                                          ; $6217: $f7
	sbc a                                            ; $6218: $9f
	ld a, e                                          ; $6219: $7b
	add b                                            ; $621a: $80
	sbc [hl]                                         ; $621b: $9e
	di                                               ; $621c: $f3
	ld a, e                                          ; $621d: $7b
	add b                                            ; $621e: $80
	sub [hl]                                         ; $621f: $96
	ldh a, [rIE]                                     ; $6220: $f0 $ff
	jr nc, jr_061_62a3                               ; $6222: $30 $7f

	jr nz, @-$3f                                     ; $6224: $20 $bf

	inc de                                           ; $6226: $13
	rst $38                                          ; $6227: $ff
	xor a                                            ; $6228: $af
	ld [bc], a                                       ; $6229: $02
	ld h, b                                          ; $622a: $60
	cpl                                              ; $622b: $2f
	ld h, b                                          ; $622c: $60
	cp a                                             ; $622d: $bf
	ldh a, [$f1]                                     ; $622e: $f0 $f1
	sbc d                                            ; $6230: $9a
	ldh a, [$a3]                                     ; $6231: $f0 $a3
	and b                                            ; $6233: $a0
	jp $02c2                                         ; $6234: $c3 $c2 $02


	ld h, b                                          ; $6237: $60
	ld [hl], a                                       ; $6238: $77
	ld b, b                                          ; $6239: $40
	sbc d                                            ; $623a: $9a
	cp l                                             ; $623b: $bd
	di                                               ; $623c: $f3
	rst SubAFromDE                                          ; $623d: $df
	ld a, l                                          ; $623e: $7d
	rst $38                                          ; $623f: $ff
	ld [hl], e                                       ; $6240: $73
	ld b, b                                          ; $6241: $40
	ld a, d                                          ; $6242: $7a
	inc h                                            ; $6243: $24
	sbc b                                            ; $6244: $98
	rst $38                                          ; $6245: $ff
	rlca                                             ; $6246: $07
	db $fd                                           ; $6247: $fd
	dec c                                            ; $6248: $0d
	rrca                                             ; $6249: $0f
	rlca                                             ; $624a: $07
	add e                                            ; $624b: $83
	cpl                                              ; $624c: $2f
	ld b, b                                          ; $624d: $40
	sub l                                            ; $624e: $95
	inc bc                                           ; $624f: $03
	rst $38                                          ; $6250: $ff
	inc bc                                           ; $6251: $03
	rst $38                                          ; $6252: $ff
	jp nz, $f0ff                                     ; $6253: $c2 $ff $f0

	cp $c3                                           ; $6256: $fe $c3

jr_061_6258:
	sbc e                                            ; $6258: $9b
	ld [hl], e                                       ; $6259: $73
	ld b, b                                          ; $625a: $40
	sbc e                                            ; $625b: $9b
	rst $38                                          ; $625c: $ff
	xor b                                            ; $625d: $a8
	ld a, e                                          ; $625e: $7b

jr_061_625f:
	rst SubAFromDE                                          ; $625f: $df
	inc bc                                           ; $6260: $03
	ld h, b                                          ; $6261: $60
	cpl                                              ; $6262: $2f
	ld h, b                                          ; $6263: $60
	sbc d                                            ; $6264: $9a
	jr nz, jr_061_6258                               ; $6265: $20 $f1

	ret nz                                           ; $6267: $c0

	di                                               ; $6268: $f3
	jr nc, jr_061_629e                               ; $6269: $30 $33

	add b                                            ; $626b: $80
	ld a, a                                          ; $626c: $7f
	ldh [$9a], a                                     ; $626d: $e0 $9a
	inc bc                                           ; $626f: $03
	rrca                                             ; $6270: $0f
	nop                                              ; $6271: $00
	add a                                            ; $6272: $87
	rlca                                             ; $6273: $07
	inc hl                                           ; $6274: $23
	add b                                            ; $6275: $80
	sbc b                                            ; $6276: $98
	ld [bc], a                                       ; $6277: $02
	rst $38                                          ; $6278: $ff
	ret nz                                           ; $6279: $c0

	cp $33                                           ; $627a: $fe $33
	db $db                                           ; $627c: $db
	add $77                                          ; $627d: $c6 $77
	add b                                            ; $627f: $80
	ld a, a                                          ; $6280: $7f
	sbc $9e                                          ; $6281: $de $9e
	call nz, $18bf                                   ; $6283: $c4 $bf $18

jr_061_6286:
	ldh [$9d], a                                     ; $6286: $e0 $9d
	ld b, b                                          ; $6288: $40
	ld [$31be], sp                                   ; $6289: $08 $be $31
	inc bc                                           ; $628c: $03
	rlca                                             ; $628d: $07
	sbc h                                            ; $628e: $9c
	ld bc, $078f                                     ; $628f: $01 $8f $07
	sbc $ff                                          ; $6292: $de $ff
	sub h                                            ; $6294: $94
	db $fc                                           ; $6295: $fc
	cp a                                             ; $6296: $bf
	ldh [hDisp1_LCDC], a                                     ; $6297: $e0 $8f
	sub b                                            ; $6299: $90
	sbc $d0                                          ; $629a: $de $d0
	ld b, $08                                        ; $629c: $06 $08

jr_061_629e:
	ld c, $08                                        ; $629e: $0e $08
	ld [hl], e                                       ; $62a0: $73
	ldh [$9b], a                                     ; $62a1: $e0 $9b

jr_061_62a3:
	ld [$70f8], sp                                   ; $62a3: $08 $f8 $70
	ld c, b                                          ; $62a6: $48
	inc hl                                           ; $62a7: $23
	ldh [$7f], a                                     ; $62a8: $e0 $7f
	sbc d                                            ; $62aa: $9a
	sbc b                                            ; $62ab: $98
	inc e                                            ; $62ac: $1c
	ld [$78f8], sp                                   ; $62ad: $08 $f8 $78
	ld a, b                                          ; $62b0: $78
	jr nc, jr_061_62ec                               ; $62b1: $30 $39

	dec de                                           ; $62b3: $1b
	ldh [$9e], a                                     ; $62b4: $e0 $9e
	db $fc                                           ; $62b6: $fc
	sbc $78                                          ; $62b7: $de $78
	sbc l                                            ; $62b9: $9d
	add hl, sp                                       ; $62ba: $39
	jr nc, jr_061_62f4                               ; $62bb: $30 $37

	ldh [rSB], a                                     ; $62bd: $e0 $01
	ld [bc], a                                       ; $62bf: $02
	add b                                            ; $62c0: $80
	ld c, b                                          ; $62c1: $48
	rla                                              ; $62c2: $17
	ld l, d                                          ; $62c3: $6a
	sub a                                            ; $62c4: $97
	ld l, [hl]                                       ; $62c5: $6e
	sub e                                            ; $62c6: $93
	dec h                                            ; $62c7: $25
	db $db                                           ; $62c8: $db
	add hl, hl                                       ; $62c9: $29
	rst SubAFromDE                                          ; $62ca: $df
	adc l                                            ; $62cb: $8d
	ld a, a                                          ; $62cc: $7f
	adc $7b                                          ; $62cd: $ce $7b
	rst SubAFromBC                                          ; $62cf: $e7
	cp l                                             ; $62d0: $bd
	rst FarCall                                          ; $62d1: $f7
	sbc a                                            ; $62d2: $9f
	ld a, a                                          ; $62d3: $7f
	sbc $7f                                          ; $62d4: $de $7f
	di                                               ; $62d6: $f3
	ccf                                              ; $62d7: $3f
	pop hl                                           ; $62d8: $e1
	sbc a                                            ; $62d9: $9f
	di                                               ; $62da: $f3
	cp $36                                           ; $62db: $fe $36
	ld a, l                                          ; $62dd: $7d
	dec l                                            ; $62de: $2d
	cp l                                             ; $62df: $bd
	adc e                                            ; $62e0: $8b
	ld de, $a8fe                                     ; $62e1: $11 $fe $a8
	ld a, e                                          ; $62e4: $7b
	call c, $f46f                                    ; $62e5: $dc $6f $f4
	ccf                                              ; $62e8: $3f
	cp $39                                           ; $62e9: $fe $39
	ei                                               ; $62eb: $fb

jr_061_62ec:
	ld [hl], $f9                                     ; $62ec: $36 $f9
	cp l                                             ; $62ee: $bd
	ld a, c                                          ; $62ef: $79
	cp [hl]                                          ; $62f0: $be
	ld a, a                                          ; $62f1: $7f
	cp [hl]                                          ; $62f2: $be
	ld a, a                                          ; $62f3: $7f

jr_061_62f4:
	inc [hl]                                         ; $62f4: $34
	ld [hl], e                                       ; $62f5: $73
	cp $9e                                           ; $62f6: $fe $9e
	inc h                                            ; $62f8: $24
	ld [hl], e                                       ; $62f9: $73
	cp $80                                           ; $62fa: $fe $80
	and h                                            ; $62fc: $a4
	ld a, a                                          ; $62fd: $7f
	xor e                                            ; $62fe: $ab
	dec e                                            ; $62ff: $1d
	xor e                                            ; $6300: $ab
	dec e                                            ; $6301: $1d
	ld h, h                                          ; $6302: $64

jr_061_6303:
	sbc a                                            ; $6303: $9f
	inc [hl]                                         ; $6304: $34
	rst GetHLinHL                                          ; $6305: $cf
	sub [hl]                                         ; $6306: $96
	rst AddAOntoHL                                          ; $6307: $ef
	jp $e37f                                         ; $6308: $c3 $7f $e3


	cp [hl]                                          ; $630b: $be
	ld [hl], c                                       ; $630c: $71
	rst SubAFromDE                                          ; $630d: $df
	cp h                                             ; $630e: $bc
	rst GetHLinHL                                          ; $630f: $cf
	rst $38                                          ; $6310: $ff
	inc hl                                           ; $6311: $23
	rst $38                                          ; $6312: $ff
	nop                                              ; $6313: $00
	rst $38                                          ; $6314: $ff
	ret nz                                           ; $6315: $c0

	inc a                                            ; $6316: $3c
	jr nz, @-$0e                                     ; $6317: $20 $f0

	ld [hl], b                                       ; $6319: $70
	pop de                                           ; $631a: $d1
	sub a                                            ; $631b: $97
	ldh a, [hDisp1_OBP0]                                     ; $631c: $f0 $93
	jr nc, jr_061_6303                               ; $631e: $30 $e3

	and d                                            ; $6320: $a2
	add e                                            ; $6321: $83
	ld bc, $bf00                                     ; $6322: $01 $00 $bf
	add b                                            ; $6325: $80
	ld b, b                                          ; $6326: $40
	add b                                            ; $6327: $80
	add b                                            ; $6328: $80
	and b                                            ; $6329: $a0
	ret nz                                           ; $632a: $c0

	add sp, -$10                                     ; $632b: $e8 $f0
	cp d                                             ; $632d: $ba
	db $fc                                           ; $632e: $fc
	sbc [hl]                                         ; $632f: $9e
	rst $38                                          ; $6330: $ff
	adc a                                            ; $6331: $8f
	rst $38                                          ; $6332: $ff
	xor [hl]                                         ; $6333: $ae
	rst SubAFromDE                                          ; $6334: $df
	db $e4                                           ; $6335: $e4
	rst SubAFromDE                                          ; $6336: $df
	call nz, $c5ef                                   ; $6337: $c4 $ef $c5
	rst AddAOntoHL                                          ; $633a: $ef
	or [hl]                                          ; $633b: $b6
	xor $b4                                          ; $633c: $ee $b4
	db $ec                                           ; $633e: $ec
	ld c, c                                          ; $633f: $49
	sbc a                                            ; $6340: $9f
	adc h                                            ; $6341: $8c
	rst SubAFromDE                                          ; $6342: $df
	sub $ef                                          ; $6343: $d6 $ef
	rst SubAFromBC                                          ; $6345: $e7
	cp a                                             ; $6346: $bf
	adc h                                            ; $6347: $8c
	di                                               ; $6348: $f3
	sbc $7d                                          ; $6349: $de $7d
	rst AddAOntoHL                                          ; $634b: $ef
	rst $38                                          ; $634c: $ff
	rst JumpTable                                          ; $634d: $c7
	rst $38                                          ; $634e: $ff
	cpl                                              ; $634f: $2f
	ld sp, hl                                        ; $6350: $f9
	sbc b                                            ; $6351: $98
	rst FarCall                                          ; $6352: $f7
	pop de                                           ; $6353: $d1
	di                                               ; $6354: $f3
	rlca                                             ; $6355: $07
	rst $38                                          ; $6356: $ff
	inc b                                            ; $6357: $04
	ld [bc], a                                       ; $6358: $02
	ld [bc], a                                       ; $6359: $02
	add b                                            ; $635a: $80
	cp [hl]                                          ; $635b: $be
	ret nz                                           ; $635c: $c0

	ldh [rRP], a                                     ; $635d: $e0 $56
	add b                                            ; $635f: $80
	cp c                                             ; $6360: $b9
	xor c                                            ; $6361: $a9
	sbc $66                                          ; $6362: $de $66
	rst $38                                          ; $6364: $ff
	ld [hl], e                                       ; $6365: $73
	rst SubAFromDE                                          ; $6366: $df
	cp a                                             ; $6367: $bf
	rst AddAOntoHL                                          ; $6368: $ef
	rst $38                                          ; $6369: $ff
	ld h, d                                          ; $636a: $62
	rst $38                                          ; $636b: $ff
	inc de                                           ; $636c: $13
	rst $38                                          ; $636d: $ff
	jp nz, $f3fe                                     ; $636e: $c2 $fe $f3

	rst SubAFromDE                                          ; $6371: $df
	jp $c27f                                         ; $6372: $c3 $7f $c2


	rst SubAFromDE                                          ; $6375: $df
	ld b, b                                          ; $6376: $40
	sbc [hl]                                         ; $6377: $9e
	add e                                            ; $6378: $83
	dec de                                           ; $6379: $1b
	ld b, $3e                                        ; $637a: $06 $3e
	rlca                                             ; $637c: $07
	ccf                                              ; $637d: $3f
	rlca                                             ; $637e: $07

Jump_061_637f:
	adc h                                            ; $637f: $8c
	scf                                              ; $6380: $37
	rrca                                             ; $6381: $0f
	ld a, a                                          ; $6382: $7f
	rrca                                             ; $6383: $0f
	ld l, l                                          ; $6384: $6d
	rra                                              ; $6385: $1f
	db $fd                                           ; $6386: $fd
	rra                                              ; $6387: $1f
	rst FarCall                                          ; $6388: $f7
	ccf                                              ; $6389: $3f
	cp $77                                           ; $638a: $fe $77
	rst AddAOntoHL                                          ; $638c: $ef
	di                                               ; $638d: $f3

jr_061_638e:
	db $fd                                           ; $638e: $fd
	db $e3                                           ; $638f: $e3
	rst $38                                          ; $6390: $ff
	pop bc                                           ; $6391: $c1
	db $fd                                           ; $6392: $fd
	cp d                                             ; $6393: $ba
	db $fc                                           ; $6394: $fc
	db $f4                                           ; $6395: $f4

jr_061_6396:
	inc [hl]                                         ; $6396: $34
	inc d                                            ; $6397: $14
	dec b                                            ; $6398: $05
	rlca                                             ; $6399: $07
	rst AddAOntoHL                                          ; $639a: $ef
	add b                                            ; $639b: $80
	db $fc                                           ; $639c: $fc
	ld a, l                                          ; $639d: $7d
	cp $32                                           ; $639e: $fe $32
	rst $38                                          ; $63a0: $ff
	sbc c                                            ; $63a1: $99
	rst $38                                          ; $63a2: $ff
	ld hl, sp-$01                                    ; $63a3: $f8 $ff
	ld a, l                                          ; $63a5: $7d
	cp $ad                                           ; $63a6: $fe $ad
	ld a, [hl]                                       ; $63a8: $7e
	ld [$e33f], a                                    ; $63a9: $ea $3f $e3
	cp a                                             ; $63ac: $bf
	and l                                            ; $63ad: $a5
	ld a, a                                          ; $63ae: $7f
	ldh [c], a                                       ; $63af: $e2
	ld a, a                                          ; $63b0: $7f
	ldh a, [c]                                       ; $63b1: $f2
	rst $38                                          ; $63b2: $ff
	or l                                             ; $63b3: $b5
	ld a, e                                          ; $63b4: $7b
	ld [hl], l                                       ; $63b5: $75
	dec sp                                           ; $63b6: $3b
	cp d                                             ; $63b7: $ba
	ld a, l                                          ; $63b8: $7d
	db $eb                                           ; $63b9: $eb
	db $fd                                           ; $63ba: $fd
	sbc h                                            ; $63bb: $9c
	ld h, l                                          ; $63bc: $65
	rst $38                                          ; $63bd: $ff
	ld d, a                                          ; $63be: $57
	ld a, e                                          ; $63bf: $7b
	xor c                                            ; $63c0: $a9
	add l                                            ; $63c1: $85
	dec hl                                           ; $63c2: $2b
	rst $38                                          ; $63c3: $ff
	xor c                                            ; $63c4: $a9
	rst $38                                          ; $63c5: $ff
	db $fd                                           ; $63c6: $fd
	rst $38                                          ; $63c7: $ff
	sub d                                            ; $63c8: $92
	sub e                                            ; $63c9: $93
	ld hl, $e221                                     ; $63ca: $21 $21 $e2
	ldh [c], a                                       ; $63cd: $e2
	call nc, $ed34                                   ; $63ce: $d4 $34 $ed
	dec e                                            ; $63d1: $1d
	halt                                             ; $63d2: $76
	ld c, $18                                        ; $63d3: $0e $18
	ld [$0878], sp                                   ; $63d5: $08 $78 $08
	ret c                                            ; $63d8: $d8

	ld [$0999], sp                                   ; $63d9: $08 $99 $09
	ld a, [hl+]                                      ; $63dc: $2a
	ldh [$97], a                                     ; $63dd: $e0 $97
	ldh [$9f], a                                     ; $63df: $e0 $9f
	ldh a, [rIE]                                     ; $63e1: $f0 $ff
	ld sp, $267e                                     ; $63e3: $31 $7e $26
	cp l                                             ; $63e6: $bd
	ld a, e                                          ; $63e7: $7b
	ld [bc], a                                       ; $63e8: $02
	inc sp                                           ; $63e9: $33
	nop                                              ; $63ea: $00
	ld a, a                                          ; $63eb: $7f
	ld a, h                                          ; $63ec: $7c
	sbc h                                            ; $63ed: $9c
	ldh [$b0], a                                     ; $63ee: $e0 $b0
	jr nc, jr_061_6469                               ; $63f0: $30 $77

	nop                                              ; $63f2: $00
	ld c, e                                          ; $63f3: $4b
	jr nz, jr_061_638e                               ; $63f4: $20 $98

	ld hl, $87ff                                     ; $63f6: $21 $ff $87
	db $fd                                           ; $63f9: $fd
	call z, $17f3                                    ; $63fa: $cc $f3 $17
	inc hl                                           ; $63fd: $23
	jr nz, jr_061_6396                               ; $63fe: $20 $96

	add d                                            ; $6400: $82
	cp $83                                           ; $6401: $fe $83
	rst $38                                          ; $6403: $ff
	di                                               ; $6404: $f3
	ld e, a                                          ; $6405: $5f
	jp nz, $c07f                                     ; $6406: $c2 $7f $c0

	ld h, a                                          ; $6409: $67
	jr nz, jr_061_644f                               ; $640a: $20 $43

	add b                                            ; $640c: $80
	sbc b                                            ; $640d: $98
	sbc [hl]                                         ; $640e: $9e
	ld a, a                                          ; $640f: $7f
	rst GetHLinHL                                          ; $6410: $cf
	ld a, a                                          ; $6411: $7f
	ei                                               ; $6412: $fb
	ccf                                              ; $6413: $3f
	ldh a, [$7b]                                     ; $6414: $f0 $7b
	add b                                            ; $6416: $80
	sbc b                                            ; $6417: $98
	jr nc, jr_061_6499                               ; $6418: $30 $7f

	jr nz, @-$3f                                     ; $641a: $20 $bf

	ld de, $afff                                     ; $641c: $11 $ff $af
	ld [bc], a                                       ; $641f: $02
	ld h, b                                          ; $6420: $60
	ld b, a                                          ; $6421: $47
	ld h, b                                          ; $6422: $60
	sbc [hl]                                         ; $6423: $9e
	and e                                            ; $6424: $a3
	ld [hl], e                                       ; $6425: $73
	ld h, b                                          ; $6426: $60
	cp a                                             ; $6427: $bf
	ldh a, [$f1]                                     ; $6428: $f0 $f1
	sbc d                                            ; $642a: $9a
	ld h, b                                          ; $642b: $60
	or e                                             ; $642c: $b3
	or b                                             ; $642d: $b0
	jp $02c2                                         ; $642e: $c3 $c2 $02


	ld h, b                                          ; $6431: $60
	ld [hl], a                                       ; $6432: $77
	ld b, b                                          ; $6433: $40
	sbc b                                            ; $6434: $98
	cp l                                             ; $6435: $bd
	di                                               ; $6436: $f3
	rst SubAFromDE                                          ; $6437: $df
	ld a, l                                          ; $6438: $7d
	rst SubAFromDE                                          ; $6439: $df
	rst $38                                          ; $643a: $ff
	rst SubAFromBC                                          ; $643b: $e7
	ld a, e                                          ; $643c: $7b
	ld b, b                                          ; $643d: $40
	sub l                                            ; $643e: $95
	add b                                            ; $643f: $80
	rst $38                                          ; $6440: $ff
	ret nz                                           ; $6441: $c0

	rst $38                                          ; $6442: $ff
	rlca                                             ; $6443: $07
	cp $0e                                           ; $6444: $fe $0e
	rlca                                             ; $6446: $07
	inc bc                                           ; $6447: $03
	add c                                            ; $6448: $81
	cpl                                              ; $6449: $2f
	ld b, b                                          ; $644a: $40
	sub l                                            ; $644b: $95
	inc bc                                           ; $644c: $03
	rst $38                                          ; $644d: $ff

jr_061_644e:
	inc bc                                           ; $644e: $03

jr_061_644f:
	rst $38                                          ; $644f: $ff
	ldh a, [c]                                       ; $6450: $f2
	rst $38                                          ; $6451: $ff
	ret nz                                           ; $6452: $c0

	sbc $83                                          ; $6453: $de $83
	sbc e                                            ; $6455: $9b
	ld l, e                                          ; $6456: $6b
	ld b, b                                          ; $6457: $40

jr_061_6458:
	sbc [hl]                                         ; $6458: $9e
	ld l, b                                          ; $6459: $68
	rrca                                             ; $645a: $0f
	ld b, b                                          ; $645b: $40
	ld a, l                                          ; $645c: $7d
	and b                                            ; $645d: $a0
	sbc [hl]                                         ; $645e: $9e
	rst SubAFromDE                                          ; $645f: $df
	inc bc                                           ; $6460: $03
	ld b, b                                          ; $6461: $40
	cpl                                              ; $6462: $2f
	ld b, b                                          ; $6463: $40
	sbc b                                            ; $6464: $98
	jr nz, jr_061_6458                               ; $6465: $20 $f1

	ret nz                                           ; $6467: $c0

	di                                               ; $6468: $f3

jr_061_6469:
	jr nc, jr_061_644e                               ; $6469: $30 $e3

	ldh [c], a                                       ; $646b: $e2
	inc bc                                           ; $646c: $03
	ld b, b                                          ; $646d: $40
	ccf                                              ; $646e: $3f
	ld b, b                                          ; $646f: $40
	ld a, a                                          ; $6470: $7f
	ret nz                                           ; $6471: $c0

	sbc d                                            ; $6472: $9a
	inc bc                                           ; $6473: $03
	rrca                                             ; $6474: $0f
	nop                                              ; $6475: $00
	add a                                            ; $6476: $87
	rlca                                             ; $6477: $07
	inc hl                                           ; $6478: $23
	ld b, b                                          ; $6479: $40
	sbc b                                            ; $647a: $98
	ld [bc], a                                       ; $647b: $02
	rst $38                                          ; $647c: $ff
	ret nz                                           ; $647d: $c0

	cp $33                                           ; $647e: $fe $33
	db $db                                           ; $6480: $db
	add $77                                          ; $6481: $c6 $77
	ld b, b                                          ; $6483: $40
	ld a, a                                          ; $6484: $7f
	sbc $7f                                          ; $6485: $de $7f
	jp c, $089a                                      ; $6487: $da $9a $08

	nop                                              ; $648a: $00
	ldh [rLCDC], a                                   ; $648b: $e0 $40
	nop                                              ; $648d: $00
	cp [hl]                                          ; $648e: $be
	ld sp, $0703                                     ; $648f: $31 $03 $07
	sbc h                                            ; $6492: $9c
	ld bc, $078f                                     ; $6493: $01 $8f $07
	sbc $ff                                          ; $6496: $de $ff
	sub h                                            ; $6498: $94

jr_061_6499:
	db $fc                                           ; $6499: $fc
	cp a                                             ; $649a: $bf
	ldh [hDisp1_LCDC], a                                     ; $649b: $e0 $8f
	sub b                                            ; $649d: $90
	sbc $d0                                          ; $649e: $de $d0
	ld b, $08                                        ; $64a0: $06 $08
	ld c, $08                                        ; $64a2: $0e $08
	ld [hl], a                                       ; $64a4: $77
	ldh [$9a], a                                     ; $64a5: $e0 $9a
	jr jr_061_64a9                                   ; $64a7: $18 $00

jr_061_64a9:
	ld hl, sp+$70                                    ; $64a9: $f8 $70
	ld b, b                                          ; $64ab: $40
	rrca                                             ; $64ac: $0f
	ldh [$df], a                                     ; $64ad: $e0 $df
	ld a, b                                          ; $64af: $78
	sbc [hl]                                         ; $64b0: $9e
	jr nc, jr_061_64d2                               ; $64b1: $30 $1f

	ldh [$97], a                                     ; $64b3: $e0 $97
	inc e                                            ; $64b5: $1c
	ld [$78fc], sp                                   ; $64b6: $08 $fc $78
	ld a, h                                          ; $64b9: $7c
	jr c, jr_061_64f5                                ; $64ba: $38 $39

	db $10                                           ; $64bc: $10
	scf                                              ; $64bd: $37
	ldh [$f9], a                                     ; $64be: $e0 $f9
	ld bc, $4880                                     ; $64c0: $01 $80 $48
	rla                                              ; $64c3: $17
	ld l, d                                          ; $64c4: $6a
	sub a                                            ; $64c5: $97
	ld l, [hl]                                       ; $64c6: $6e
	sub e                                            ; $64c7: $93
	dec h                                            ; $64c8: $25
	db $db                                           ; $64c9: $db
	add hl, hl                                       ; $64ca: $29
	rst SubAFromDE                                          ; $64cb: $df
	adc l                                            ; $64cc: $8d
	ld a, a                                          ; $64cd: $7f
	adc $7b                                          ; $64ce: $ce $7b
	rst SubAFromBC                                          ; $64d0: $e7
	cp l                                             ; $64d1: $bd

jr_061_64d2:
	rst FarCall                                          ; $64d2: $f7
	sbc a                                            ; $64d3: $9f
	ld a, a                                          ; $64d4: $7f
	sbc $7f                                          ; $64d5: $de $7f
	di                                               ; $64d7: $f3
	ccf                                              ; $64d8: $3f
	pop hl                                           ; $64d9: $e1
	sbc a                                            ; $64da: $9f
	pop af                                           ; $64db: $f1
	cp $32                                           ; $64dc: $fe $32
	ld a, a                                          ; $64de: $7f
	daa                                              ; $64df: $27
	cp l                                             ; $64e0: $bd
	adc e                                            ; $64e1: $8b
	dec e                                            ; $64e2: $1d
	cp $a8                                           ; $64e3: $fe $a8
	ld a, e                                          ; $64e5: $7b
	call c, $f46f                                    ; $64e6: $dc $6f $f4
	ccf                                              ; $64e9: $3f
	cp $39                                           ; $64ea: $fe $39
	ei                                               ; $64ec: $fb
	ld [hl], $f9                                     ; $64ed: $36 $f9
	cp l                                             ; $64ef: $bd
	ld a, c                                          ; $64f0: $79
	cp [hl]                                          ; $64f1: $be
	ld a, a                                          ; $64f2: $7f
	cp [hl]                                          ; $64f3: $be
	ld a, a                                          ; $64f4: $7f

jr_061_64f5:
	inc [hl]                                         ; $64f5: $34
	ld [hl], e                                       ; $64f6: $73
	cp $9e                                           ; $64f7: $fe $9e
	inc h                                            ; $64f9: $24
	ld [hl], e                                       ; $64fa: $73
	cp $80                                           ; $64fb: $fe $80
	and h                                            ; $64fd: $a4
	ld a, a                                          ; $64fe: $7f
	xor e                                            ; $64ff: $ab
	dec e                                            ; $6500: $1d
	xor e                                            ; $6501: $ab
	dec e                                            ; $6502: $1d
	ld h, h                                          ; $6503: $64

jr_061_6504:
	sbc a                                            ; $6504: $9f
	inc [hl]                                         ; $6505: $34
	rst GetHLinHL                                          ; $6506: $cf
	sub [hl]                                         ; $6507: $96
	rst AddAOntoHL                                          ; $6508: $ef
	jp $e37f                                         ; $6509: $c3 $7f $e3


	cp [hl]                                          ; $650c: $be
	ld [hl], c                                       ; $650d: $71
	rst SubAFromDE                                          ; $650e: $df
	cp h                                             ; $650f: $bc
	rst GetHLinHL                                          ; $6510: $cf
	rst $38                                          ; $6511: $ff
	inc hl                                           ; $6512: $23
	rst $38                                          ; $6513: $ff
	nop                                              ; $6514: $00
	rst $38                                          ; $6515: $ff
	ret nz                                           ; $6516: $c0

	inc a                                            ; $6517: $3c
	jr nz, @-$0e                                     ; $6518: $20 $f0

	ld [hl], b                                       ; $651a: $70
	pop de                                           ; $651b: $d1
	sub a                                            ; $651c: $97
	ldh a, [hDisp1_OBP0]                                     ; $651d: $f0 $93
	jr nc, jr_061_6504                               ; $651f: $30 $e3

	and d                                            ; $6521: $a2
	add e                                            ; $6522: $83
	ld bc, $bf00                                     ; $6523: $01 $00 $bf
	add b                                            ; $6526: $80
	ld b, b                                          ; $6527: $40
	add b                                            ; $6528: $80
	add b                                            ; $6529: $80
	and b                                            ; $652a: $a0
	ret nz                                           ; $652b: $c0

	add sp, -$10                                     ; $652c: $e8 $f0
	cp d                                             ; $652e: $ba
	db $fc                                           ; $652f: $fc
	sbc [hl]                                         ; $6530: $9e
	rst $38                                          ; $6531: $ff
	adc a                                            ; $6532: $8f
	rst $38                                          ; $6533: $ff
	xor [hl]                                         ; $6534: $ae
	rst SubAFromDE                                          ; $6535: $df
	db $e4                                           ; $6536: $e4
	rst SubAFromDE                                          ; $6537: $df
	call nz, $c5ef                                   ; $6538: $c4 $ef $c5
	rst AddAOntoHL                                          ; $653b: $ef
	or [hl]                                          ; $653c: $b6
	xor $b4                                          ; $653d: $ee $b4
	db $ec                                           ; $653f: $ec
	ld c, c                                          ; $6540: $49
	sbc a                                            ; $6541: $9f
	adc h                                            ; $6542: $8c
	rst SubAFromDE                                          ; $6543: $df
	sub $ef                                          ; $6544: $d6 $ef
	rst SubAFromBC                                          ; $6546: $e7
	cp a                                             ; $6547: $bf
	adc h                                            ; $6548: $8c
	di                                               ; $6549: $f3
	sbc $7d                                          ; $654a: $de $7d
	rst AddAOntoHL                                          ; $654c: $ef
	rst $38                                          ; $654d: $ff
	rst JumpTable                                          ; $654e: $c7
	rst $38                                          ; $654f: $ff
	cpl                                              ; $6550: $2f
	ld sp, hl                                        ; $6551: $f9
	sbc b                                            ; $6552: $98
	rst FarCall                                          ; $6553: $f7
	pop de                                           ; $6554: $d1
	di                                               ; $6555: $f3
	rlca                                             ; $6556: $07
	rst $38                                          ; $6557: $ff
	inc b                                            ; $6558: $04
	ld [bc], a                                       ; $6559: $02
	ld [bc], a                                       ; $655a: $02
	add b                                            ; $655b: $80
	cp [hl]                                          ; $655c: $be
	ret nz                                           ; $655d: $c0

	ldh [rRP], a                                     ; $655e: $e0 $56
	add b                                            ; $6560: $80
	cp c                                             ; $6561: $b9
	xor c                                            ; $6562: $a9
	sbc $66                                          ; $6563: $de $66
	rst $38                                          ; $6565: $ff
	ld [hl], e                                       ; $6566: $73
	rst SubAFromDE                                          ; $6567: $df
	cp a                                             ; $6568: $bf
	rst AddAOntoHL                                          ; $6569: $ef
	rst $38                                          ; $656a: $ff
	ld h, d                                          ; $656b: $62
	rst $38                                          ; $656c: $ff
	inc de                                           ; $656d: $13
	rst $38                                          ; $656e: $ff
	add d                                            ; $656f: $82
	cp $c3                                           ; $6570: $fe $c3
	rst $38                                          ; $6572: $ff
	di                                               ; $6573: $f3
	ld e, a                                          ; $6574: $5f
	jp nz, Jump_061_40ff                             ; $6575: $c2 $ff $40

	sbc [hl]                                         ; $6578: $9e
	add e                                            ; $6579: $83
	dec de                                           ; $657a: $1b
	ld b, $3e                                        ; $657b: $06 $3e
	rlca                                             ; $657d: $07
	ccf                                              ; $657e: $3f
	rlca                                             ; $657f: $07
	adc h                                            ; $6580: $8c
	scf                                              ; $6581: $37
	rrca                                             ; $6582: $0f
	ld a, a                                          ; $6583: $7f
	rrca                                             ; $6584: $0f
	ld l, l                                          ; $6585: $6d
	rra                                              ; $6586: $1f
	db $fd                                           ; $6587: $fd
	rra                                              ; $6588: $1f
	rst FarCall                                          ; $6589: $f7
	ccf                                              ; $658a: $3f
	cp $77                                           ; $658b: $fe $77
	rst AddAOntoHL                                          ; $658d: $ef

jr_061_658e:
	di                                               ; $658e: $f3
	db $fd                                           ; $658f: $fd
	db $e3                                           ; $6590: $e3
	rst $38                                          ; $6591: $ff
	pop bc                                           ; $6592: $c1
	db $fd                                           ; $6593: $fd
	cp d                                             ; $6594: $ba
	db $fc                                           ; $6595: $fc
	db $f4                                           ; $6596: $f4
	inc [hl]                                         ; $6597: $34

jr_061_6598:
	inc d                                            ; $6598: $14
	dec b                                            ; $6599: $05
	rlca                                             ; $659a: $07
	rst AddAOntoHL                                          ; $659b: $ef
	add b                                            ; $659c: $80
	db $fc                                           ; $659d: $fc
	ld a, l                                          ; $659e: $7d
	cp $32                                           ; $659f: $fe $32
	rst $38                                          ; $65a1: $ff
	sbc c                                            ; $65a2: $99
	rst $38                                          ; $65a3: $ff
	ld hl, sp-$01                                    ; $65a4: $f8 $ff
	ld a, l                                          ; $65a6: $7d
	cp $ad                                           ; $65a7: $fe $ad
	ld a, [hl]                                       ; $65a9: $7e
	ld [$e33f], a                                    ; $65aa: $ea $3f $e3
	cp a                                             ; $65ad: $bf
	and l                                            ; $65ae: $a5
	ld a, a                                          ; $65af: $7f
	ldh [c], a                                       ; $65b0: $e2
	ld a, a                                          ; $65b1: $7f
	ldh a, [c]                                       ; $65b2: $f2
	rst $38                                          ; $65b3: $ff
	or l                                             ; $65b4: $b5
	ld a, e                                          ; $65b5: $7b
	ld [hl], l                                       ; $65b6: $75
	dec sp                                           ; $65b7: $3b
	cp d                                             ; $65b8: $ba
	ld a, l                                          ; $65b9: $7d
	db $eb                                           ; $65ba: $eb
	db $fd                                           ; $65bb: $fd
	sbc h                                            ; $65bc: $9c
	ld h, l                                          ; $65bd: $65
	rst $38                                          ; $65be: $ff
	ld d, a                                          ; $65bf: $57
	ld a, e                                          ; $65c0: $7b
	xor c                                            ; $65c1: $a9
	add l                                            ; $65c2: $85
	dec hl                                           ; $65c3: $2b
	rst $38                                          ; $65c4: $ff
	xor c                                            ; $65c5: $a9
	rst $38                                          ; $65c6: $ff
	db $fd                                           ; $65c7: $fd
	rst $38                                          ; $65c8: $ff
	sub d                                            ; $65c9: $92
	sub e                                            ; $65ca: $93
	ld hl, $e221                                     ; $65cb: $21 $21 $e2
	ldh [c], a                                       ; $65ce: $e2
	call nc, $ed34                                   ; $65cf: $d4 $34 $ed
	dec e                                            ; $65d2: $1d
	halt                                             ; $65d3: $76
	ld c, $18                                        ; $65d4: $0e $18
	ld [$0878], sp                                   ; $65d6: $08 $78 $08

jr_061_65d9:
	ret c                                            ; $65d9: $d8

	ld [$0999], sp                                   ; $65da: $08 $99 $09
	ld a, [hl+]                                      ; $65dd: $2a
	ldh [hDisp1_WX], a                                     ; $65de: $e0 $96
	ldh [$9f], a                                     ; $65e0: $e0 $9f
	ldh a, [rIE]                                     ; $65e2: $f0 $ff
	ld sp, $227e                                     ; $65e4: $31 $7e $22
	cp a                                             ; $65e7: $bf
	rla                                              ; $65e8: $17
	dec hl                                           ; $65e9: $2b
	nop                                              ; $65ea: $00
	ld a, a                                          ; $65eb: $7f
	ld a, h                                          ; $65ec: $7c
	sbc h                                            ; $65ed: $9c
	ldh [$b0], a                                     ; $65ee: $e0 $b0
	jr nc, jr_061_6669                               ; $65f0: $30 $77

	nop                                              ; $65f2: $00
	ld c, e                                          ; $65f3: $4b
	jr nz, jr_061_658e                               ; $65f4: $20 $98

	ld hl, $87ff                                     ; $65f6: $21 $ff $87
	db $fd                                           ; $65f9: $fd
	call z, $17f3                                    ; $65fa: $cc $f3 $17
	dec de                                           ; $65fd: $1b
	jr nz, jr_061_6598                               ; $65fe: $20 $98

	add e                                            ; $6600: $83
	rst $38                                          ; $6601: $ff
	jp $f27f                                         ; $6602: $c3 $7f $f2


	ld a, a                                          ; $6605: $7f
	ret nz                                           ; $6606: $c0

	ld h, a                                          ; $6607: $67
	jr nz, jr_061_664d                               ; $6608: $20 $43

	add b                                            ; $660a: $80
	sbc b                                            ; $660b: $98
	sbc [hl]                                         ; $660c: $9e
	ld a, a                                          ; $660d: $7f
	rst GetHLinHL                                          ; $660e: $cf
	ld a, a                                          ; $660f: $7f
	ei                                               ; $6610: $fb
	ccf                                              ; $6611: $3f
	ldh a, [$7b]                                     ; $6612: $f0 $7b
	add b                                            ; $6614: $80
	sbc b                                            ; $6615: $98
	jr nc, @+$81                                     ; $6616: $30 $7f

	jr nz, jr_061_65d9                               ; $6618: $20 $bf

	ld de, $abff                                     ; $661a: $11 $ff $ab
	ld [bc], a                                       ; $661d: $02
	ld h, b                                          ; $661e: $60
	ld b, a                                          ; $661f: $47
	ld h, b                                          ; $6620: $60
	sbc [hl]                                         ; $6621: $9e
	and e                                            ; $6622: $a3
	ld [hl], e                                       ; $6623: $73
	ld h, b                                          ; $6624: $60
	cp a                                             ; $6625: $bf
	ldh a, [$f1]                                     ; $6626: $f0 $f1
	sbc d                                            ; $6628: $9a
	ld [hl], b                                       ; $6629: $70
	or e                                             ; $662a: $b3
	and b                                            ; $662b: $a0
	jp $02c2                                         ; $662c: $c3 $c2 $02


	ld h, b                                          ; $662f: $60
	ld [hl], a                                       ; $6630: $77
	ld b, b                                          ; $6631: $40
	sbc b                                            ; $6632: $98
	cp l                                             ; $6633: $bd
	di                                               ; $6634: $f3
	rst SubAFromDE                                          ; $6635: $df
	ld a, l                                          ; $6636: $7d
	rst SubAFromDE                                          ; $6637: $df
	rst $38                                          ; $6638: $ff
	rst SubAFromBC                                          ; $6639: $e7
	ld a, e                                          ; $663a: $7b
	ld b, b                                          ; $663b: $40
	sub l                                            ; $663c: $95
	add b                                            ; $663d: $80
	rst $38                                          ; $663e: $ff
	ret nz                                           ; $663f: $c0

	rst $38                                          ; $6640: $ff
	inc bc                                           ; $6641: $03
	cp $0e                                           ; $6642: $fe $0e
	rlca                                             ; $6644: $07
	inc bc                                           ; $6645: $03
	add e                                            ; $6646: $83
	cpl                                              ; $6647: $2f
	ld b, b                                          ; $6648: $40

jr_061_6649:
	sub l                                            ; $6649: $95
	inc bc                                           ; $664a: $03
	rst $38                                          ; $664b: $ff
	inc bc                                           ; $664c: $03

jr_061_664d:
	rst $38                                          ; $664d: $ff
	jp nz, $f0ff                                     ; $664e: $c2 $ff $f0

	cp $83                                           ; $6651: $fe $83

jr_061_6653:
	sbc e                                            ; $6653: $9b
	ld [hl], e                                       ; $6654: $73
	ld b, b                                          ; $6655: $40
	sbc e                                            ; $6656: $9b
	rst $38                                          ; $6657: $ff
	xor b                                            ; $6658: $a8
	ld a, e                                          ; $6659: $7b
	rst SubAFromDE                                          ; $665a: $df
	inc bc                                           ; $665b: $03
	ld h, b                                          ; $665c: $60
	cpl                                              ; $665d: $2f
	ld h, b                                          ; $665e: $60
	sbc b                                            ; $665f: $98
	jr nz, jr_061_6653                               ; $6660: $20 $f1

	ret nz                                           ; $6662: $c0

	di                                               ; $6663: $f3
	jr nc, jr_061_6649                               ; $6664: $30 $e3

	ldh [c], a                                       ; $6666: $e2
	inc bc                                           ; $6667: $03
	ld h, b                                          ; $6668: $60

jr_061_6669:
	ccf                                              ; $6669: $3f
	ld h, b                                          ; $666a: $60
	ld a, a                                          ; $666b: $7f
	ret nz                                           ; $666c: $c0

	sbc d                                            ; $666d: $9a
	inc bc                                           ; $666e: $03
	rrca                                             ; $666f: $0f
	nop                                              ; $6670: $00
	add a                                            ; $6671: $87
	rlca                                             ; $6672: $07
	inc hl                                           ; $6673: $23
	ld h, b                                          ; $6674: $60
	sbc b                                            ; $6675: $98
	ld [bc], a                                       ; $6676: $02
	rst $38                                          ; $6677: $ff
	ret nz                                           ; $6678: $c0

	cp $33                                           ; $6679: $fe $33
	db $db                                           ; $667b: $db
	add $77                                          ; $667c: $c6 $77
	ld h, b                                          ; $667e: $60
	ld a, a                                          ; $667f: $7f
	sbc $7f                                          ; $6680: $de $7f
	jp c, $189a                                      ; $6682: $da $9a $18

	nop                                              ; $6685: $00
	ldh [rLCDC], a                                   ; $6686: $e0 $40
	nop                                              ; $6688: $00
	cp [hl]                                          ; $6689: $be
	ld sp, $0703                                     ; $668a: $31 $03 $07
	sbc h                                            ; $668d: $9c
	ld bc, $078f                                     ; $668e: $01 $8f $07
	sbc $ff                                          ; $6691: $de $ff
	sub h                                            ; $6693: $94
	db $fc                                           ; $6694: $fc
	cp a                                             ; $6695: $bf
	ldh [hDisp1_LCDC], a                                     ; $6696: $e0 $8f
	sub b                                            ; $6698: $90
	sbc $d0                                          ; $6699: $de $d0
	ld b, $08                                        ; $669b: $06 $08
	ld c, $08                                        ; $669d: $0e $08
	ld l, a                                          ; $669f: $6f
	ldh [$7d], a                                     ; $66a0: $e0 $7d
	inc [hl]                                         ; $66a2: $34
	ld a, a                                          ; $66a3: $7f
	rst SubAFromDE                                          ; $66a4: $df
	rla                                              ; $66a5: $17
	ldh [$9e], a                                     ; $66a6: $e0 $9e
	ld hl, sp-$22                                    ; $66a8: $f8 $de
	ld [hl], b                                       ; $66aa: $70
	sbc [hl]                                         ; $66ab: $9e
	ld hl, $e01b                                     ; $66ac: $21 $1b $e0
	sbc c                                            ; $66af: $99
	db $fc                                           ; $66b0: $fc
	ld a, b                                          ; $66b1: $78
	db $fc                                           ; $66b2: $fc
	ld a, b                                          ; $66b3: $78
	ld [hl], c                                       ; $66b4: $71
	jr nc, jr_061_66ee                               ; $66b5: $30 $37

	ldh [$fa], a                                     ; $66b7: $e0 $fa
	ld bc, $4880                                     ; $66b9: $01 $80 $48
	rla                                              ; $66bc: $17
	ld l, d                                          ; $66bd: $6a
	sub a                                            ; $66be: $97
	ld l, [hl]                                       ; $66bf: $6e
	sub e                                            ; $66c0: $93
	dec h                                            ; $66c1: $25
	db $db                                           ; $66c2: $db
	add hl, hl                                       ; $66c3: $29
	rst SubAFromDE                                          ; $66c4: $df
	adc l                                            ; $66c5: $8d
	ld a, a                                          ; $66c6: $7f
	adc $7b                                          ; $66c7: $ce $7b
	rst SubAFromBC                                          ; $66c9: $e7
	cp l                                             ; $66ca: $bd
	rst FarCall                                          ; $66cb: $f7
	sbc a                                            ; $66cc: $9f
	ld a, a                                          ; $66cd: $7f
	sbc $7f                                          ; $66ce: $de $7f
	di                                               ; $66d0: $f3
	ccf                                              ; $66d1: $3f
	pop hl                                           ; $66d2: $e1
	sbc a                                            ; $66d3: $9f
	di                                               ; $66d4: $f3
	cp $36                                           ; $66d5: $fe $36
	ld a, l                                          ; $66d7: $7d
	dec l                                            ; $66d8: $2d
	cp l                                             ; $66d9: $bd
	adc e                                            ; $66da: $8b
	ld de, $a8fe                                     ; $66db: $11 $fe $a8
	ld a, e                                          ; $66de: $7b
	call c, $f46f                                    ; $66df: $dc $6f $f4
	ccf                                              ; $66e2: $3f
	cp $39                                           ; $66e3: $fe $39
	ei                                               ; $66e5: $fb
	ld [hl], $f9                                     ; $66e6: $36 $f9
	cp l                                             ; $66e8: $bd
	ld a, c                                          ; $66e9: $79
	cp [hl]                                          ; $66ea: $be
	ld a, a                                          ; $66eb: $7f
	cp [hl]                                          ; $66ec: $be
	ld a, a                                          ; $66ed: $7f

jr_061_66ee:
	inc [hl]                                         ; $66ee: $34
	ld [hl], e                                       ; $66ef: $73
	cp $9e                                           ; $66f0: $fe $9e
	inc h                                            ; $66f2: $24
	ld [hl], e                                       ; $66f3: $73
	cp $80                                           ; $66f4: $fe $80
	and h                                            ; $66f6: $a4
	ld a, a                                          ; $66f7: $7f
	xor e                                            ; $66f8: $ab
	dec e                                            ; $66f9: $1d
	xor e                                            ; $66fa: $ab
	dec e                                            ; $66fb: $1d
	ld h, h                                          ; $66fc: $64

jr_061_66fd:
	sbc a                                            ; $66fd: $9f
	inc [hl]                                         ; $66fe: $34
	rst GetHLinHL                                          ; $66ff: $cf
	sub [hl]                                         ; $6700: $96
	rst AddAOntoHL                                          ; $6701: $ef
	jp $e37f                                         ; $6702: $c3 $7f $e3


	cp [hl]                                          ; $6705: $be
	ld [hl], c                                       ; $6706: $71
	rst SubAFromDE                                          ; $6707: $df
	cp h                                             ; $6708: $bc
	rst AddAOntoHL                                          ; $6709: $ef
	rst $38                                          ; $670a: $ff
	inc hl                                           ; $670b: $23
	rst $38                                          ; $670c: $ff
	nop                                              ; $670d: $00
	rst $38                                          ; $670e: $ff
	ret nz                                           ; $670f: $c0

	inc a                                            ; $6710: $3c
	jr nz, @-$0e                                     ; $6711: $20 $f0

	ld [hl], b                                       ; $6713: $70
	pop de                                           ; $6714: $d1
	sub a                                            ; $6715: $97
	ldh a, [hDisp1_OBP0]                                     ; $6716: $f0 $93
	jr nc, jr_061_66fd                               ; $6718: $30 $e3

	and d                                            ; $671a: $a2
	add e                                            ; $671b: $83
	ld bc, $bf00                                     ; $671c: $01 $00 $bf
	add b                                            ; $671f: $80
	ld b, b                                          ; $6720: $40
	add b                                            ; $6721: $80
	add b                                            ; $6722: $80
	and b                                            ; $6723: $a0
	ret nz                                           ; $6724: $c0

	add sp, -$10                                     ; $6725: $e8 $f0
	cp d                                             ; $6727: $ba
	db $fc                                           ; $6728: $fc
	sbc [hl]                                         ; $6729: $9e
	rst $38                                          ; $672a: $ff
	adc a                                            ; $672b: $8f
	rst $38                                          ; $672c: $ff
	xor [hl]                                         ; $672d: $ae
	rst SubAFromDE                                          ; $672e: $df
	db $e4                                           ; $672f: $e4
	rst SubAFromDE                                          ; $6730: $df
	call nz, $c5ef                                   ; $6731: $c4 $ef $c5
	rst AddAOntoHL                                          ; $6734: $ef
	or [hl]                                          ; $6735: $b6
	xor $b4                                          ; $6736: $ee $b4
	db $ec                                           ; $6738: $ec
	ld c, c                                          ; $6739: $49
	sbc a                                            ; $673a: $9f
	adc h                                            ; $673b: $8c
	rst SubAFromDE                                          ; $673c: $df
	sub $ef                                          ; $673d: $d6 $ef
	rst SubAFromBC                                          ; $673f: $e7
	cp l                                             ; $6740: $bd
	adc h                                            ; $6741: $8c
	di                                               ; $6742: $f3
	sbc $7d                                          ; $6743: $de $7d
	rst SubAFromDE                                          ; $6745: $df
	rst $38                                          ; $6746: $ff
	rst SubAFromBC                                          ; $6747: $e7
	rst $38                                          ; $6748: $ff
	rrca                                             ; $6749: $0f
	ld sp, hl                                        ; $674a: $f9
	sbc b                                            ; $674b: $98
	rst FarCall                                          ; $674c: $f7
	pop de                                           ; $674d: $d1
	di                                               ; $674e: $f3
	rlca                                             ; $674f: $07
	rst $38                                          ; $6750: $ff
	inc b                                            ; $6751: $04
	ld [bc], a                                       ; $6752: $02
	ld [bc], a                                       ; $6753: $02
	add b                                            ; $6754: $80
	cp [hl]                                          ; $6755: $be
	ret nz                                           ; $6756: $c0

	ldh [rRP], a                                     ; $6757: $e0 $56
	add b                                            ; $6759: $80
	cp c                                             ; $675a: $b9
	xor c                                            ; $675b: $a9
	sbc $66                                          ; $675c: $de $66
	rst $38                                          ; $675e: $ff
	ld [hl], e                                       ; $675f: $73
	rst SubAFromDE                                          ; $6760: $df
	cp a                                             ; $6761: $bf
	rst AddAOntoHL                                          ; $6762: $ef
	rst $38                                          ; $6763: $ff
	ld h, d                                          ; $6764: $62
	rst $38                                          ; $6765: $ff
	inc de                                           ; $6766: $13
	rst $38                                          ; $6767: $ff
	jp nz, $f3fe                                     ; $6768: $c2 $fe $f3

	rst SubAFromDE                                          ; $676b: $df
	jp $c27f                                         ; $676c: $c3 $7f $c2


	rst SubAFromDE                                          ; $676f: $df
	ld b, b                                          ; $6770: $40
	sbc [hl]                                         ; $6771: $9e
	add e                                            ; $6772: $83
	dec de                                           ; $6773: $1b
	ld b, $3e                                        ; $6774: $06 $3e
	rlca                                             ; $6776: $07
	ccf                                              ; $6777: $3f
	rlca                                             ; $6778: $07
	adc h                                            ; $6779: $8c
	scf                                              ; $677a: $37
	rrca                                             ; $677b: $0f
	ld a, a                                          ; $677c: $7f
	rrca                                             ; $677d: $0f
	ld l, l                                          ; $677e: $6d
	rra                                              ; $677f: $1f
	db $fd                                           ; $6780: $fd
	rra                                              ; $6781: $1f
	rst FarCall                                          ; $6782: $f7
	ccf                                              ; $6783: $3f
	cp $77                                           ; $6784: $fe $77
	rst AddAOntoHL                                          ; $6786: $ef
	di                                               ; $6787: $f3

jr_061_6788:
	db $fd                                           ; $6788: $fd
	db $e3                                           ; $6789: $e3
	rst $38                                          ; $678a: $ff
	pop bc                                           ; $678b: $c1
	db $fd                                           ; $678c: $fd
	cp d                                             ; $678d: $ba
	db $fc                                           ; $678e: $fc
	db $f4                                           ; $678f: $f4
	inc [hl]                                         ; $6790: $34

jr_061_6791:
	inc d                                            ; $6791: $14
	dec b                                            ; $6792: $05
	rlca                                             ; $6793: $07
	rst AddAOntoHL                                          ; $6794: $ef
	add b                                            ; $6795: $80
	db $fc                                           ; $6796: $fc
	ld a, l                                          ; $6797: $7d
	cp $32                                           ; $6798: $fe $32
	rst $38                                          ; $679a: $ff
	sbc c                                            ; $679b: $99
	rst $38                                          ; $679c: $ff
	ld hl, sp-$01                                    ; $679d: $f8 $ff
	ld a, l                                          ; $679f: $7d
	cp $ad                                           ; $67a0: $fe $ad
	ld a, [hl]                                       ; $67a2: $7e
	ld [$e33f], a                                    ; $67a3: $ea $3f $e3
	cp a                                             ; $67a6: $bf
	and l                                            ; $67a7: $a5
	ld a, a                                          ; $67a8: $7f
	ldh [c], a                                       ; $67a9: $e2
	ld a, a                                          ; $67aa: $7f
	ldh a, [c]                                       ; $67ab: $f2
	rst $38                                          ; $67ac: $ff
	or l                                             ; $67ad: $b5
	ld a, e                                          ; $67ae: $7b
	ld [hl], l                                       ; $67af: $75
	dec sp                                           ; $67b0: $3b
	cp d                                             ; $67b1: $ba
	ld a, l                                          ; $67b2: $7d
	db $eb                                           ; $67b3: $eb
	db $fd                                           ; $67b4: $fd
	sbc h                                            ; $67b5: $9c
	ld h, l                                          ; $67b6: $65
	rst $38                                          ; $67b7: $ff
	ld d, a                                          ; $67b8: $57
	ld a, e                                          ; $67b9: $7b
	xor c                                            ; $67ba: $a9
	add l                                            ; $67bb: $85
	dec hl                                           ; $67bc: $2b
	rst $38                                          ; $67bd: $ff
	xor c                                            ; $67be: $a9
	rst $38                                          ; $67bf: $ff
	db $fd                                           ; $67c0: $fd
	rst $38                                          ; $67c1: $ff
	sub d                                            ; $67c2: $92
	sub e                                            ; $67c3: $93
	ld hl, $e221                                     ; $67c4: $21 $21 $e2
	ldh [c], a                                       ; $67c7: $e2
	call nc, $ed34                                   ; $67c8: $d4 $34 $ed
	dec e                                            ; $67cb: $1d
	halt                                             ; $67cc: $76
	ld c, $18                                        ; $67cd: $0e $18
	ld [$0878], sp                                   ; $67cf: $08 $78 $08
	ret c                                            ; $67d2: $d8

	ld [$0999], sp                                   ; $67d3: $08 $99 $09
	ld a, [hl+]                                      ; $67d6: $2a
	ldh [$97], a                                     ; $67d7: $e0 $97
	ldh [$9f], a                                     ; $67d9: $e0 $9f
	pop af                                           ; $67db: $f1
	rst $38                                          ; $67dc: $ff
	inc sp                                           ; $67dd: $33
	ld a, a                                          ; $67de: $7f
	daa                                              ; $67df: $27
	cp l                                             ; $67e0: $bd
	ld a, e                                          ; $67e1: $7b
	ld [bc], a                                       ; $67e2: $02
	inc sp                                           ; $67e3: $33
	nop                                              ; $67e4: $00
	ld a, a                                          ; $67e5: $7f
	ld a, h                                          ; $67e6: $7c
	sbc h                                            ; $67e7: $9c
	ldh [$b0], a                                     ; $67e8: $e0 $b0
	jr nc, jr_061_6863                               ; $67ea: $30 $77

	nop                                              ; $67ec: $00
	ld c, e                                          ; $67ed: $4b
	jr nz, jr_061_6788                               ; $67ee: $20 $98

	ld bc, $8fff                                     ; $67f0: $01 $ff $8f
	db $fd                                           ; $67f3: $fd
	call c, $17f3                                    ; $67f4: $dc $f3 $17
	inc hl                                           ; $67f7: $23
	jr nz, jr_061_6791                               ; $67f8: $20 $97

	add d                                            ; $67fa: $82
	cp $c3                                           ; $67fb: $fe $c3
	rst $38                                          ; $67fd: $ff
	di                                               ; $67fe: $f3
	ld e, a                                          ; $67ff: $5f
	jp nz, $63ff                                     ; $6800: $c2 $ff $63

	jr nz, jr_061_6848                               ; $6803: $20 $43

	add b                                            ; $6805: $80
	sub b                                            ; $6806: $90
	sbc h                                            ; $6807: $9c
	ld a, a                                          ; $6808: $7f
	rst GetHLinHL                                          ; $6809: $cf
	ld a, a                                          ; $680a: $7f
	ei                                               ; $680b: $fb
	ccf                                              ; $680c: $3f
	ldh a, [$9f]                                     ; $680d: $f0 $9f
	ldh a, [rIE]                                     ; $680f: $f0 $ff
	jr nc, jr_061_6892                               ; $6811: $30 $7f

	ld hl, $17bf                                     ; $6813: $21 $bf $17
	ld b, e                                          ; $6816: $43
	add b                                            ; $6817: $80
	sbc h                                            ; $6818: $9c
	rst GetHLinHL                                          ; $6819: $cf
	rst $38                                          ; $681a: $ff
	db $e3                                           ; $681b: $e3
	ld [hl], e                                       ; $681c: $73
	add b                                            ; $681d: $80
	sub [hl]                                         ; $681e: $96
	nop                                              ; $681f: $00
	ldh a, [rSVBK]                                   ; $6820: $f0 $70
	reti                                             ; $6822: $d9


	ret c                                            ; $6823: $d8

	db $e3                                           ; $6824: $e3
	ldh [$c3], a                                     ; $6825: $e0 $c3
	ld [bc], a                                       ; $6827: $02
	ld [bc], a                                       ; $6828: $02
	add b                                            ; $6829: $80
	ld [hl], a                                       ; $682a: $77
	ld h, b                                          ; $682b: $60
	sbc [hl]                                         ; $682c: $9e
	cp a                                             ; $682d: $bf
	ld a, e                                          ; $682e: $7b
	ld h, b                                          ; $682f: $60
	ld a, a                                          ; $6830: $7f
	add $91                                          ; $6831: $c6 $91
	rst SubAFromHL                                          ; $6833: $d7
	rst $38                                          ; $6834: $ff
	ld hl, $80ff                                     ; $6835: $21 $ff $80
	rst $38                                          ; $6838: $ff
	ret nz                                           ; $6839: $c0

	rst $38                                          ; $683a: $ff
	rlca                                             ; $683b: $07
	cp $0e                                           ; $683c: $fe $0e
	rlca                                             ; $683e: $07
	inc bc                                           ; $683f: $03
	add e                                            ; $6840: $83
	cpl                                              ; $6841: $2f
	ld h, b                                          ; $6842: $60
	sub l                                            ; $6843: $95
	inc bc                                           ; $6844: $03
	rst $38                                          ; $6845: $ff
	inc bc                                           ; $6846: $03
	rst $38                                          ; $6847: $ff

jr_061_6848:
	ldh a, [c]                                       ; $6848: $f2
	rst $38                                          ; $6849: $ff
	ret nz                                           ; $684a: $c0

	sbc $83                                          ; $684b: $de $83
	sbc e                                            ; $684d: $9b
	inc bc                                           ; $684e: $03
	ld h, b                                          ; $684f: $60
	ld a, e                                          ; $6850: $7b
	ld h, b                                          ; $6851: $60
	sbc h                                            ; $6852: $9c
	db $10                                           ; $6853: $10
	rst $38                                          ; $6854: $ff
	xor e                                            ; $6855: $ab
	ld bc, $27c0                                     ; $6856: $01 $c0 $27
	ld b, b                                          ; $6859: $40
	sbc b                                            ; $685a: $98
	ld h, b                                          ; $685b: $60
	ld sp, hl                                        ; $685c: $f9
	sbc b                                            ; $685d: $98
	db $e3                                           ; $685e: $e3
	ld h, b                                          ; $685f: $60
	jp $0382                                         ; $6860: $c3 $82 $03


jr_061_6863:
	ld b, b                                          ; $6863: $40
	ccf                                              ; $6864: $3f
	ld b, b                                          ; $6865: $40
	ld a, a                                          ; $6866: $7f
	ret nz                                           ; $6867: $c0

	sbc d                                            ; $6868: $9a
	inc bc                                           ; $6869: $03
	rrca                                             ; $686a: $0f
	nop                                              ; $686b: $00
	add a                                            ; $686c: $87
	rlca                                             ; $686d: $07
	inc hl                                           ; $686e: $23
	ld b, b                                          ; $686f: $40
	sbc b                                            ; $6870: $98
	ld [bc], a                                       ; $6871: $02
	rst $38                                          ; $6872: $ff
	ret nz                                           ; $6873: $c0

	cp $33                                           ; $6874: $fe $33
	db $db                                           ; $6876: $db
	add $77                                          ; $6877: $c6 $77
	ld b, b                                          ; $6879: $40
	ld a, a                                          ; $687a: $7f
	sbc $7f                                          ; $687b: $de $7f
	jp c, $209c                                      ; $687d: $da $9c $20

	db $10                                           ; $6880: $10
	add b                                            ; $6881: $80
	cp l                                             ; $6882: $bd
	ld [hl], b                                       ; $6883: $70
	ld bc, $0703                                     ; $6884: $01 $03 $07
	sbc h                                            ; $6887: $9c
	ld bc, $078f                                     ; $6888: $01 $8f $07
	sbc $ff                                          ; $688b: $de $ff
	sub h                                            ; $688d: $94
	db $fc                                           ; $688e: $fc
	cp a                                             ; $688f: $bf
	ldh [hDisp1_LCDC], a                                     ; $6890: $e0 $8f

jr_061_6892:
	sub b                                            ; $6892: $90
	sbc $d0                                          ; $6893: $de $d0
	ld b, $08                                        ; $6895: $06 $08
	ld c, $08                                        ; $6897: $0e $08
	ld [hl], a                                       ; $6899: $77
	ldh [$9b], a                                     ; $689a: $e0 $9b
	stop                                             ; $689c: $10 $00
	ldh [$60], a                                     ; $689e: $e0 $60
	rrca                                             ; $68a0: $0f
	ldh [$de], a                                     ; $68a1: $e0 $de
	ldh a, [$9d]                                     ; $68a3: $f0 $9d
	ld h, b                                          ; $68a5: $60
	ld h, c                                          ; $68a6: $61
	dec de                                           ; $68a7: $1b
	ldh [$99], a                                     ; $68a8: $e0 $99
	ld hl, sp-$10                                    ; $68aa: $f8 $f0
	ld hl, sp-$10                                    ; $68ac: $f8 $f0
	pop af                                           ; $68ae: $f1
	ld h, b                                          ; $68af: $60
	scf                                              ; $68b0: $37
	ldh [$f6], a                                     ; $68b1: $e0 $f6
	add d                                            ; $68b3: $82
	sub a                                            ; $68b4: $97
	nop                                              ; $68b5: $00
	add hl, bc                                       ; $68b6: $09
	rlca                                             ; $68b7: $07
	nop                                              ; $68b8: $00
	ld bc, $0200                                     ; $68b9: $01 $00 $02
	ld [bc], a                                       ; $68bc: $02
	ld [hl], e                                       ; $68bd: $73
	ld hl, sp-$69                                    ; $68be: $f8 $97
	ld bc, $0303                                     ; $68c0: $01 $03 $03
	ld [bc], a                                       ; $68c3: $02
	ld [bc], a                                       ; $68c4: $02
	inc bc                                           ; $68c5: $03
	ld bc, $fe01                                     ; $68c6: $01 $01 $fe
	sbc $03                                          ; $68c9: $de $03
	ld [hl], e                                       ; $68cb: $73
	ld hl, sp-$06                                    ; $68cc: $f8 $fa
	ld h, a                                          ; $68ce: $67
	push af                                          ; $68cf: $f5
	ld a, e                                          ; $68d0: $7b
	db $ec                                           ; $68d1: $ec
	rst SubAFromDE                                          ; $68d2: $df
	ld [bc], a                                       ; $68d3: $02
	sbc e                                            ; $68d4: $9b
	ld bc, $0405                                     ; $68d5: $01 $05 $04
	ld [bc], a                                       ; $68d8: $02
	ld [hl], e                                       ; $68d9: $73
	call nc, $0690                                   ; $68da: $d4 $90 $06
	rlca                                             ; $68dd: $07
	dec b                                            ; $68de: $05
	ld a, [bc]                                       ; $68df: $0a
	dec c                                            ; $68e0: $0d
	dec c                                            ; $68e1: $0d
	inc c                                            ; $68e2: $0c
	add hl, bc                                       ; $68e3: $09
	ld [$060a], sp                                   ; $68e4: $08 $0a $06
	dec c                                            ; $68e7: $0d
	ld a, [bc]                                       ; $68e8: $0a
	ld a, [bc]                                       ; $68e9: $0a
	dec bc                                           ; $68ea: $0b
	sbc $0f                                          ; $68eb: $de $0f
	sbc d                                            ; $68ed: $9a
	rlca                                             ; $68ee: $07
	inc b                                            ; $68ef: $04
	dec b                                            ; $68f0: $05
	dec b                                            ; $68f1: $05
	ld b, $77                                        ; $68f2: $06 $77
	push bc                                          ; $68f4: $c5
	db $dd                                           ; $68f5: $dd
	rlca                                             ; $68f6: $07
	ld [hl], a                                       ; $68f7: $77
	or l                                             ; $68f8: $b5
	add b                                            ; $68f9: $80
	ld [bc], a                                       ; $68fa: $02
	inc b                                            ; $68fb: $04
	add hl, bc                                       ; $68fc: $09
	inc de                                           ; $68fd: $13
	rla                                              ; $68fe: $17
	cpl                                              ; $68ff: $2f
	dec l                                            ; $6900: $2d
	ld d, e                                          ; $6901: $53
	inc bc                                           ; $6902: $03
	rlca                                             ; $6903: $07
	rrca                                             ; $6904: $0f
	ld e, $1c                                        ; $6905: $1e $1c
	add hl, sp                                       ; $6907: $39
	ld a, $7c                                        ; $6908: $3e $7c
	and $d4                                          ; $690a: $e6 $d4
	cp d                                             ; $690c: $ba
	jp hl                                            ; $690d: $e9


	ld [hl], $f6                                     ; $690e: $36 $f6
	ld e, e                                          ; $6910: $5b
	jp c, $e9f8                                      ; $6911: $da $f8 $e9

	pop de                                           ; $6914: $d1
	or d                                             ; $6915: $b2
	ldh [$60], a                                     ; $6916: $e0 $60
	db $e4                                           ; $6918: $e4
	add [hl]                                         ; $6919: $86
	push hl                                          ; $691a: $e5
	sub [hl]                                         ; $691b: $96
	add [hl]                                         ; $691c: $86
	inc h                                            ; $691d: $24
	inc h                                            ; $691e: $24
	inc d                                            ; $691f: $14
	ld [de], a                                       ; $6920: $12
	ld a, [bc]                                       ; $6921: $0a
	dec b                                            ; $6922: $05
	xor l                                            ; $6923: $ad
	cp l                                             ; $6924: $bd
	ccf                                              ; $6925: $3f
	ccf                                              ; $6926: $3f
	rra                                              ; $6927: $1f
	rra                                              ; $6928: $1f
	rrca                                             ; $6929: $0f
	rrca                                             ; $692a: $0f
	ld [de], a                                       ; $692b: $12
	ld de, $1b12                                     ; $692c: $11 $12 $1b
	dec bc                                           ; $692f: $0b
	dec hl                                           ; $6930: $2b
	ld [hl-], a                                      ; $6931: $32
	inc sp                                           ; $6932: $33
	sbc $1f                                          ; $6933: $de $1f
	rst SubAFromDE                                          ; $6935: $df
	ld d, $80                                        ; $6936: $16 $80
	ld [hl], $2f                                     ; $6938: $36 $2f
	cpl                                              ; $693a: $2f
	ld [de], a                                       ; $693b: $12
	ld h, d                                          ; $693c: $62
	ld h, [hl]                                       ; $693d: $66
	inc d                                            ; $693e: $14
	call nc, $aaaa                                   ; $693f: $d4 $aa $aa
	ld e, e                                          ; $6942: $5b
	cpl                                              ; $6943: $2f
	ld e, a                                          ; $6944: $5f
	ld e, e                                          ; $6945: $5b
	ld l, e                                          ; $6946: $6b
	xor e                                            ; $6947: $ab
	push de                                          ; $6948: $d5
	push de                                          ; $6949: $d5
	and l                                            ; $694a: $a5
	ld d, a                                          ; $694b: $57
	and e                                            ; $694c: $a3
	and c                                            ; $694d: $a1
	ld c, c                                          ; $694e: $49
	ld b, [hl]                                       ; $694f: $46
	ld [hl+], a                                      ; $6950: $22
	sbc d                                            ; $6951: $9a
	sbc $a9                                          ; $6952: $de $a9
	ld c, c                                          ; $6954: $49
	ld b, e                                          ; $6955: $43
	add e                                            ; $6956: $83
	add b                                            ; $6957: $80
	sub e                                            ; $6958: $93
	sub a                                            ; $6959: $97
	daa                                              ; $695a: $27
	daa                                              ; $695b: $27
	or [hl]                                          ; $695c: $b6
	xor a                                            ; $695d: $af
	ld c, e                                          ; $695e: $4b
	ld e, h                                          ; $695f: $5c
	xor [hl]                                         ; $6960: $ae
	ld a, a                                          ; $6961: $7f
	ld a, l                                          ; $6962: $7d
	or l                                             ; $6963: $b5
	ld c, a                                          ; $6964: $4f
	ld e, [hl]                                       ; $6965: $5e
	cp [hl]                                          ; $6966: $be
	or a                                             ; $6967: $b7
	ld [hl], l                                       ; $6968: $75
	push hl                                          ; $6969: $e5
	rst JumpTable                                          ; $696a: $c7
	rst GetHLinHL                                          ; $696b: $cf
	ei                                               ; $696c: $fb
	ld a, e                                          ; $696d: $7b
	cp d                                             ; $696e: $ba
	ld a, [$8ffd]                                    ; $696f: $fa $fd $8f
	inc c                                            ; $6972: $0c
	ld [$ae8e], sp                                   ; $6973: $08 $8e $ae
	ld l, [hl]                                       ; $6976: $6e
	sbc l                                            ; $6977: $9d
	ld c, [hl]                                       ; $6978: $4e
	db $fc                                           ; $6979: $fc
	ld a, e                                          ; $697a: $7b
	ld hl, sp-$10                                    ; $697b: $f8 $f0
	add b                                            ; $697d: $80
	rra                                              ; $697e: $1f
	ld l, $5f                                        ; $697f: $2e $5f
	ld a, a                                          ; $6981: $7f
	ld a, e                                          ; $6982: $7b
	ld a, a                                          ; $6983: $7f
	cp a                                             ; $6984: $bf
	nop                                              ; $6985: $00
	rra                                              ; $6986: $1f
	ld sp, $4060                                     ; $6987: $31 $60 $40
	ld b, a                                          ; $698a: $47
	ld b, b                                          ; $698b: $40
	ret nz                                           ; $698c: $c0

	ld b, b                                          ; $698d: $40
	ret nz                                           ; $698e: $c0

	ret nz                                           ; $698f: $c0

	pop bc                                           ; $6990: $c1
	dec a                                            ; $6991: $3d
	sbc a                                            ; $6992: $9f
	xor $d5                                          ; $6993: $ee $d5
	ret nz                                           ; $6995: $c0

jr_061_6996:
	ret nz                                           ; $6996: $c0

	ld b, b                                          ; $6997: $40
	ld h, e                                          ; $6998: $63
	cp $e0                                           ; $6999: $fe $e0
	nop                                              ; $699b: $00
	ld [$ba8f], sp                                   ; $699c: $08 $8f $ba
	xor d                                            ; $699f: $aa
	ld b, l                                          ; $69a0: $45
	ld d, l                                          ; $69a1: $55
	add h                                            ; $69a2: $84
	adc [hl]                                         ; $69a3: $8e
	ld a, [hl+]                                      ; $69a4: $2a
	ld l, e                                          ; $69a5: $6b
	ld bc, $3211                                     ; $69a6: $01 $11 $32
	ld [hl+], a                                      ; $69a9: $22
	ld h, d                                          ; $69aa: $62
	ld h, d                                          ; $69ab: $62
	and $e6                                          ; $69ac: $e6 $e6
	ldh [$c1], a                                     ; $69ae: $e0 $c1
	add b                                            ; $69b0: $80
	or $f2                                           ; $69b1: $f6 $f2
	or $e2                                           ; $69b3: $f6 $e2
	ldh [c], a                                       ; $69b5: $e2
	ldh a, [$e9]                                     ; $69b6: $f0 $e9
	db $e3                                           ; $69b8: $e3
	ld e, d                                          ; $69b9: $5a
	ld d, [hl]                                       ; $69ba: $56
	or $b2                                           ; $69bb: $f6 $b2
	or d                                             ; $69bd: $b2
	jp hl                                            ; $69be: $e9


	ld a, [$e376]                                    ; $69bf: $fa $76 $e3
	pop hl                                           ; $69c2: $e1
	ld h, e                                          ; $69c3: $63
	ld b, e                                          ; $69c4: $43
	add [hl]                                         ; $69c5: $86
	xor $18                                          ; $69c6: $ee $18
	nop                                              ; $69c8: $00
	ld [hl], d                                       ; $69c9: $72
	ld a, [hl+]                                      ; $69ca: $2a
	inc l                                            ; $69cb: $2c
	daa                                              ; $69cc: $27
	ld c, b                                          ; $69cd: $48
	ldh a, [$78]                                     ; $69ce: $f0 $78
	sbc [hl]                                         ; $69d0: $9e
	rrca                                             ; $69d1: $0f
	pop af                                           ; $69d2: $f1
	ld a, [hl]                                       ; $69d3: $7e
	and b                                            ; $69d4: $a0
	sbc c                                            ; $69d5: $99
	ret nz                                           ; $69d6: $c0

	ldh a, [$fe]                                     ; $69d7: $f0 $fe
	ld sp, hl                                        ; $69d9: $f9
	ld a, h                                          ; $69da: $7c
	rst SubAFromDE                                          ; $69db: $df
	ld a, e                                          ; $69dc: $7b
	ld hl, sp-$7f                                    ; $69dd: $f8 $81
	jr nc, jr_061_69ef                               ; $69df: $30 $0e

	rlca                                             ; $69e1: $07
	rst SubAFromBC                                          ; $69e2: $e7
	ccf                                              ; $69e3: $3f
	inc c                                            ; $69e4: $0c
	ld [$8c3f], sp                                   ; $69e5: $08 $3f $8c
	xor c                                            ; $69e8: $a9
	rst SubAFromHL                                          ; $69e9: $d7
	ld d, l                                          ; $69ea: $55
	dec c                                            ; $69eb: $0d
	ld c, $0c                                        ; $69ec: $0e $0c
	ccf                                              ; $69ee: $3f

jr_061_69ef:
	di                                               ; $69ef: $f3
	ld b, d                                          ; $69f0: $42
	nop                                              ; $69f1: $00
	add d                                            ; $69f2: $82
	and d                                            ; $69f3: $a2
	adc b                                            ; $69f4: $88
	jr nz, jr_061_69f7                               ; $69f5: $20 $00

jr_061_69f7:
	inc b                                            ; $69f7: $04
	ld d, h                                          ; $69f8: $54
	inc d                                            ; $69f9: $14
	ld a, [de]                                       ; $69fa: $1a
	ld e, e                                          ; $69fb: $5b
	ld [hl+], a                                      ; $69fc: $22
	db $dd                                           ; $69fd: $dd
	ld [bc], a                                       ; $69fe: $02
	sbc h                                            ; $69ff: $9c
	ld b, d                                          ; $6a00: $42
	ld b, [hl]                                       ; $6a01: $46
	ld h, [hl]                                       ; $6a02: $66
	ldh [$c1], a                                     ; $6a03: $e0 $c1
	rst SubAFromDE                                          ; $6a05: $df
	ld h, b                                          ; $6a06: $60
	sbc $40                                          ; $6a07: $de $40
	sbc h                                            ; $6a09: $9c
	ret nz                                           ; $6a0a: $c0

	rst SubAFromBC                                          ; $6a0b: $e7
	ld a, h                                          ; $6a0c: $7c
	call c, $7b80                                    ; $6a0d: $dc $80 $7b

jr_061_6a10:
	add c                                            ; $6a10: $81
	sbc c                                            ; $6a11: $99
	jr c, jr_061_6996                                ; $6a12: $38 $82

	add h                                            ; $6a14: $84
	ret z                                            ; $6a15: $c8

	ret nz                                           ; $6a16: $c0

	ld h, b                                          ; $6a17: $60
	ld a, d                                          ; $6a18: $7a
	nop                                              ; $6a19: $00
	sbc c                                            ; $6a1a: $99
	ld b, $0c                                        ; $6a1b: $06 $0c
	jr jr_061_6a10                                   ; $6a1d: $18 $f1

	inc hl                                           ; $6a1f: $23
	ld a, a                                          ; $6a20: $7f
	ld a, e                                          ; $6a21: $7b
	db $ed                                           ; $6a22: $ed
	db $fd                                           ; $6a23: $fd
	sbc l                                            ; $6a24: $9d
	db $10                                           ; $6a25: $10
	jr jr_061_6a8f                                   ; $6a26: $18 $67

	ld hl, sp-$80                                    ; $6a28: $f8 $80
	sub h                                            ; $6a2a: $94
	ld d, h                                          ; $6a2b: $54
	inc [hl]                                         ; $6a2c: $34
	inc h                                            ; $6a2d: $24
	cpl                                              ; $6a2e: $2f
	cp a                                             ; $6a2f: $bf
	ld a, a                                          ; $6a30: $7f
	rst $38                                          ; $6a31: $ff
	sbc h                                            ; $6a32: $9c
	call c, Call_061_7c7c                            ; $6a33: $dc $7c $7c
	ld a, a                                          ; $6a36: $7f
	ld hl, sp-$20                                    ; $6a37: $f8 $e0
	sbc [hl]                                         ; $6a39: $9e
	pop hl                                           ; $6a3a: $e1
	add b                                            ; $6a3b: $80
	ret nz                                           ; $6a3c: $c0

	jr nc, @+$68                                     ; $6a3d: $30 $66

	db $fc                                           ; $6a3f: $fc
	rst AddAOntoHL                                          ; $6a40: $ef
	xor $f1                                          ; $6a41: $ee $f1
	ret nz                                           ; $6a43: $c0

	ret nz                                           ; $6a44: $c0

	ldh a, [$9e]                                     ; $6a45: $f0 $9e
	inc bc                                           ; $6a47: $03
	db $10                                           ; $6a48: $10
	sub e                                            ; $6a49: $93
	db $10                                           ; $6a4a: $10
	push af                                          ; $6a4b: $f5
	sub h                                            ; $6a4c: $94
	sub [hl]                                         ; $6a4d: $96
	ld [bc], a                                       ; $6a4e: $02
	inc bc                                           ; $6a4f: $03
	add e                                            ; $6a50: $83
	and l                                            ; $6a51: $a5
	dec h                                            ; $6a52: $25
	ld a, [bc]                                       ; $6a53: $0a
	ld c, c                                          ; $6a54: $49
	ld c, b                                          ; $6a55: $48
	sbc $4c                                          ; $6a56: $de $4c
	sbc l                                            ; $6a58: $9d
	ld c, [hl]                                       ; $6a59: $4e
	adc $e0                                          ; $6a5a: $ce $e0
	pop bc                                           ; $6a5c: $c1
	ld a, l                                          ; $6a5d: $7d
	cp a                                             ; $6a5e: $bf
	add c                                            ; $6a5f: $81
	inc d                                            ; $6a60: $14
	jr z, @+$53                                      ; $6a61: $28 $51

	and d                                            ; $6a63: $a2
	ld bc, $0186                                     ; $6a64: $01 $86 $01
	ld b, $0c                                        ; $6a67: $06 $0c
	add hl, de                                       ; $6a69: $19
	ld sp, $c562                                     ; $6a6a: $31 $62 $c5
	adc [hl]                                         ; $6a6d: $8e
	ld de, $0500                                     ; $6a6e: $11 $00 $05
	ld d, $98                                        ; $6a71: $16 $98
	jr nz, @-$3e                                     ; $6a73: $20 $c0

	ld b, $12                                        ; $6a75: $06 $12
	add hl, hl                                       ; $6a77: $29
	ld b, [hl]                                       ; $6a78: $46
	ret c                                            ; $6a79: $d8

	and b                                            ; $6a7a: $a0
	ld b, b                                          ; $6a7b: $40
	ld hl, sp+$07                                    ; $6a7c: $f8 $07
	xor $9a                                          ; $6a7e: $ee $9a
	ld hl, sp-$0c                                    ; $6a80: $f8 $f4
	db $fc                                           ; $6a82: $fc
	cp $f4                                           ; $6a83: $fe $f4
	ld [hl], a                                       ; $6a85: $77
	ld hl, sp-$80                                    ; $6a86: $f8 $80
	inc c                                            ; $6a88: $0c
	inc b                                            ; $6a89: $04
	ld b, $0f                                        ; $6a8a: $06 $0f
	ld [$0a0c], sp                                   ; $6a8c: $08 $0c $0a

jr_061_6a8f:
	ld de, $ec10                                     ; $6a8f: $11 $10 $ec
	ld [hl-], a                                      ; $6a92: $32
	push de                                          ; $6a93: $d5
	rrca                                             ; $6a94: $0f
	rrca                                             ; $6a95: $0f

jr_061_6a96:
	dec de                                           ; $6a96: $1b
	add hl, de                                       ; $6a97: $19
	jr nc, jr_061_6a96                               ; $6a98: $30 $fc

	adc $23                                          ; $6a9a: $ce $23
	ld l, d                                          ; $6a9c: $6a
	or h                                             ; $6a9d: $b4
	ld e, e                                          ; $6a9e: $5b
	add hl, hl                                       ; $6a9f: $29
	inc b                                            ; $6aa0: $04
	add l                                            ; $6aa1: $85
	dec bc                                           ; $6aa2: $0b
	ld d, d                                          ; $6aa3: $52
	ld de, $8409                                     ; $6aa4: $11 $09 $84
	sbc d                                            ; $6aa7: $9a
	ld b, [hl]                                       ; $6aa8: $46
	inc bc                                           ; $6aa9: $03
	inc de                                           ; $6aaa: $13
	sub c                                            ; $6aab: $91
	adc c                                            ; $6aac: $89
	ldh [$c1], a                                     ; $6aad: $e0 $c1
	adc e                                            ; $6aaf: $8b
	add hl, de                                       ; $6ab0: $19
	ld a, e                                          ; $6ab1: $7b
	adc c                                            ; $6ab2: $89
	call $7d3d                                       ; $6ab3: $cd $3d $7d
	dec a                                            ; $6ab6: $3d
	db $fd                                           ; $6ab7: $fd
	dec e                                            ; $6ab8: $1d
	ld a, l                                          ; $6ab9: $7d
	adc a                                            ; $6aba: $8f
	rst GetHLinHL                                          ; $6abb: $cf
	scf                                              ; $6abc: $37
	ld h, a                                          ; $6abd: $67
	daa                                              ; $6abe: $27
	rst JumpTable                                          ; $6abf: $c7
	db $fd                                           ; $6ac0: $fd
	rst $38                                          ; $6ac1: $ff
	rst $38                                          ; $6ac2: $ff
	ccf                                              ; $6ac3: $3f
	ld a, c                                          ; $6ac4: $79
	add hl, sp                                       ; $6ac5: $39
	ld a, h                                          ; $6ac6: $7c
	rst FarCall                                          ; $6ac7: $f7
	ld [hl], h                                       ; $6ac8: $74
	cp a                                             ; $6ac9: $bf
	sbc $05                                          ; $6aca: $de $05
	ld [$a86a], a                                    ; $6acc: $ea $6a $a8
	ld a, a                                          ; $6acf: $7f
	ld hl, sp-$7b                                    ; $6ad0: $f8 $85
	ld b, b                                          ; $6ad2: $40
	jr nz, @+$12                                     ; $6ad3: $20 $10

	ld [$c084], sp                                   ; $6ad5: $08 $84 $c0
	and d                                            ; $6ad8: $a2
	ldh [$c0], a                                     ; $6ad9: $e0 $c0
	ldh [$f0], a                                     ; $6adb: $e0 $f0
	ld hl, sp-$04                                    ; $6add: $f8 $fc
	ld a, h                                          ; $6adf: $7c
	ld a, [hl]                                       ; $6ae0: $7e
	ld a, $d1                                        ; $6ae1: $3e $d1
	ld a, b                                          ; $6ae3: $78
	jr c, @+$16                                      ; $6ae4: $38 $14

	inc d                                            ; $6ae6: $14
	ld a, [bc]                                       ; $6ae7: $0a
	ld a, [bc]                                       ; $6ae8: $0a
	adc c                                            ; $6ae9: $89
	cp a                                             ; $6aea: $bf
	rst SubAFromDE                                          ; $6aeb: $df
	db $db                                           ; $6aec: $db
	rst $38                                          ; $6aed: $ff
	sub a                                            ; $6aee: $97
	adc c                                            ; $6aef: $89
	add l                                            ; $6af0: $85
	ld b, h                                          ; $6af1: $44
	ld b, h                                          ; $6af2: $44
	ld b, l                                          ; $6af3: $45
	ld b, l                                          ; $6af4: $45
	ld c, e                                          ; $6af5: $4b
	ld c, d                                          ; $6af6: $4a
	db $dd                                           ; $6af7: $dd
	rst $38                                          ; $6af8: $ff
	sbc $fe                                          ; $6af9: $de $fe
	sub [hl]                                         ; $6afb: $96
	rst $38                                          ; $6afc: $ff
	jp z, $dddd                                      ; $6afd: $ca $dd $dd

	db $ed                                           ; $6b00: $ed
	call $8acd                                       ; $6b01: $cd $cd $8a
	xor e                                            ; $6b04: $ab
	jp c, $80ff                                      ; $6b05: $da $ff $80

	sbc $ab                                          ; $6b08: $de $ab
	xor e                                            ; $6b0a: $ab
	db $eb                                           ; $6b0b: $eb
	ld [$ebeb], a                                    ; $6b0c: $ea $eb $eb
	ld l, a                                          ; $6b0f: $6f
	ld l, l                                          ; $6b10: $6d
	sbc $de                                          ; $6b11: $de $de
	cp [hl]                                          ; $6b13: $be
	cp a                                             ; $6b14: $bf
	cp a                                             ; $6b15: $bf
	ccf                                              ; $6b16: $3f
	cp e                                             ; $6b17: $bb
	cp e                                             ; $6b18: $bb
	xor l                                            ; $6b19: $ad
	xor a                                            ; $6b1a: $af
	cpl                                              ; $6b1b: $2f
	xor e                                            ; $6b1c: $ab
	xor [hl]                                         ; $6b1d: $ae
	db $ed                                           ; $6b1e: $ed
	ld l, l                                          ; $6b1f: $6d
	ld l, l                                          ; $6b20: $6d
	dec sp                                           ; $6b21: $3b
	add hl, sp                                       ; $6b22: $39
	add hl, sp                                       ; $6b23: $39
	dec a                                            ; $6b24: $3d
	dec a                                            ; $6b25: $3d
	ld a, $df                                        ; $6b26: $3e $df
	cp [hl]                                          ; $6b28: $be
	sbc h                                            ; $6b29: $9c
	ld l, [hl]                                       ; $6b2a: $6e
	ld l, $b6                                        ; $6b2b: $2e $b6
	sbc $b7                                          ; $6b2d: $de $b7
	sbc $bf                                          ; $6b2f: $de $bf
	db $dd                                           ; $6b31: $dd
	rst $38                                          ; $6b32: $ff
	sbc h                                            ; $6b33: $9c
	db $fd                                           ; $6b34: $fd
	db $fc                                           ; $6b35: $fc
	db $ec                                           ; $6b36: $ec
	ld [hl], e                                       ; $6b37: $73
	ld hl, sp+$77                                    ; $6b38: $f8 $77
	rst FarCall                                          ; $6b3a: $f7
	sbc c                                            ; $6b3b: $99
	ld l, h                                          ; $6b3c: $6c
	ld h, h                                          ; $6b3d: $64
	inc [hl]                                         ; $6b3e: $34
	inc [hl]                                         ; $6b3f: $34
	inc d                                            ; $6b40: $14
	ld [$e03c], sp                                   ; $6b41: $08 $3c $e0
	ld [hl], e                                       ; $6b44: $73
	ld h, h                                          ; $6b45: $64
	rst SubAFromDE                                          ; $6b46: $df
	ld b, b                                          ; $6b47: $40
	ld [hl], a                                       ; $6b48: $77
	ld hl, sp-$21                                    ; $6b49: $f8 $df
	add b                                            ; $6b4b: $80
	rst SubAFromDE                                          ; $6b4c: $df
	ret nz                                           ; $6b4d: $c0

	rst $38                                          ; $6b4e: $ff
	rst SubAFromDE                                          ; $6b4f: $df
	and b                                            ; $6b50: $a0
	ld a, a                                          ; $6b51: $7f
	ld e, e                                          ; $6b52: $5b
	sbc e                                            ; $6b53: $9b
	ld b, b                                          ; $6b54: $40
	ld d, b                                          ; $6b55: $50
	ret nz                                           ; $6b56: $c0

	ret nz                                           ; $6b57: $c0

	call c, $dfe0                                    ; $6b58: $dc $e0 $df
	ldh a, [$de]                                     ; $6b5b: $f0 $de
	or b                                             ; $6b5d: $b0
	rst SubAFromDE                                          ; $6b5e: $df
	ld d, b                                          ; $6b5f: $50
	sbc l                                            ; $6b60: $9d
	ret nc                                           ; $6b61: $d0

	or b                                             ; $6b62: $b0
	db $dd                                           ; $6b63: $dd
	ld [hl], b                                       ; $6b64: $70
	sbc $b0                                          ; $6b65: $de $b0
	sub [hl]                                         ; $6b67: $96
	ret nc                                           ; $6b68: $d0

	cp b                                             ; $6b69: $b8
	cp b                                             ; $6b6a: $b8
	ld a, b                                          ; $6b6b: $78
	ld l, b                                          ; $6b6c: $68
	add sp, -$08                                     ; $6b6d: $e8 $f8
	add sp, -$24                                     ; $6b6f: $e8 $dc
	db $dd                                           ; $6b71: $dd
	ret c                                            ; $6b72: $d8

	sub c                                            ; $6b73: $91
	ld e, b                                          ; $6b74: $58
	ld c, b                                          ; $6b75: $48
	ld e, b                                          ; $6b76: $58
	ld l, h                                          ; $6b77: $6c
	or h                                             ; $6b78: $b4
	db $f4                                           ; $6b79: $f4
	ld l, h                                          ; $6b7a: $6c
	ld l, h                                          ; $6b7b: $6c
	ret c                                            ; $6b7c: $d8

	ldh a, [$b2]                                     ; $6b7d: $f0 $b2
	xor d                                            ; $6b7f: $aa
	ld l, h                                          ; $6b80: $6c
	inc l                                            ; $6b81: $2c
	sbc $b4                                          ; $6b82: $de $b4
	adc a                                            ; $6b84: $8f
	sbc h                                            ; $6b85: $9c
	sbc $de                                          ; $6b86: $de $de
	ld a, d                                          ; $6b88: $7a
	ld a, d                                          ; $6b89: $7a
	ld d, h                                          ; $6b8a: $54
	ld d, h                                          ; $6b8b: $54
	inc a                                            ; $6b8c: $3c
	xor l                                            ; $6b8d: $ad
	xor l                                            ; $6b8e: $ad
	ld e, e                                          ; $6b8f: $5b
	adc $ce                                          ; $6b90: $ce $ce
	xor $ee                                          ; $6b92: $ee $ee
	and $de                                          ; $6b94: $e6 $de
	rst FarCall                                          ; $6b96: $f7
	sub l                                            ; $6b97: $95
	db $d3                                           ; $6b98: $d3
	xor e                                            ; $6b99: $ab
	db $eb                                           ; $6b9a: $eb
	ei                                               ; $6b9b: $fb
	rst SubAFromHL                                          ; $6b9c: $d7
	rst FarCall                                          ; $6b9d: $f7
	rst FarCall                                          ; $6b9e: $f7
	rst $38                                          ; $6b9f: $ff
	ld a, a                                          ; $6ba0: $7f
	ld a, a                                          ; $6ba1: $7f
	sbc $3f                                          ; $6ba2: $de $3f
	rst SubAFromDE                                          ; $6ba4: $df
	rra                                              ; $6ba5: $1f
	sbc [hl]                                         ; $6ba6: $9e
	rrca                                             ; $6ba7: $0f
	jr jr_061_6baa                                   ; $6ba8: $18 $00

jr_061_6baa:
	sbc $99                                          ; $6baa: $de $99
	sub [hl]                                         ; $6bac: $96
	sub c                                            ; $6bad: $91
	sbc c                                            ; $6bae: $99
	sub c                                            ; $6baf: $91
	ld de, $11bb                                     ; $6bb0: $11 $bb $11
	adc b                                            ; $6bb3: $88
	adc b                                            ; $6bb4: $88
	nop                                              ; $6bb5: $00
	ld c, a                                          ; $6bb6: $4f
	ei                                               ; $6bb7: $fb
	ld a, a                                          ; $6bb8: $7f
	db $ec                                           ; $6bb9: $ec
	ld a, a                                          ; $6bba: $7f
	ld a, [$11df]                                    ; $6bbb: $fa $df $11
	db $dd                                           ; $6bbe: $dd
	sbc c                                            ; $6bbf: $99
	cp h                                             ; $6bc0: $bc
	ld bc, $ea96                                     ; $6bc1: $01 $96 $ea
	and a                                            ; $6bc4: $a7
	cp $a7                                           ; $6bc5: $fe $a7
	rst FarCall                                          ; $6bc7: $f7
	xor l                                            ; $6bc8: $ad
	rst SubAFromBC                                          ; $6bc9: $e7
	sbc l                                            ; $6bca: $9d
	rst FarCall                                          ; $6bcb: $f7
	ld a, e                                          ; $6bcc: $7b
	cp $80                                           ; $6bcd: $fe $80
	rst $38                                          ; $6bcf: $ff
	adc [hl]                                         ; $6bd0: $8e
	ld a, a                                          ; $6bd1: $7f
	db $f4                                           ; $6bd2: $f4
	rst JumpTable                                          ; $6bd3: $c7
	ret nz                                           ; $6bd4: $c0

	add a                                            ; $6bd5: $87
	nop                                              ; $6bd6: $00
	rrca                                             ; $6bd7: $0f
	inc bc                                           ; $6bd8: $03
	sbc h                                            ; $6bd9: $9c
	inc c                                            ; $6bda: $0c
	cp a                                             ; $6bdb: $bf
	cp a                                             ; $6bdc: $bf
	db $db                                           ; $6bdd: $db
	sub a                                            ; $6bde: $97
	ld b, $44                                        ; $6bdf: $06 $44
	and e                                            ; $6be1: $a3
	ld [bc], a                                       ; $6be2: $02
	rst GetHLinHL                                          ; $6be3: $cf
	add b                                            ; $6be4: $80
	rst JumpTable                                          ; $6be5: $c7
	ldh [$b0], a                                     ; $6be6: $e0 $b0
	ldh [hDisp1_SCY], a                                     ; $6be8: $e0 $90
	ldh a, [$d0]                                     ; $6bea: $f0 $d0
	cp b                                             ; $6bec: $b8
	ret z                                            ; $6bed: $c8

	add b                                            ; $6bee: $80
	cp h                                             ; $6bef: $bc
	adc h                                            ; $6bf0: $8c
	cp [hl]                                          ; $6bf1: $be
	adc e                                            ; $6bf2: $8b
	ccf                                              ; $6bf3: $3f
	ld c, e                                          ; $6bf4: $4b
	ccf                                              ; $6bf5: $3f
	dec hl                                           ; $6bf6: $2b
	ld e, a                                          ; $6bf7: $5f
	dec bc                                           ; $6bf8: $0b
	ld e, [hl]                                       ; $6bf9: $5e
	dec de                                           ; $6bfa: $1b
	ld c, [hl]                                       ; $6bfb: $4e
	add hl, bc                                       ; $6bfc: $09
	ld c, $4b                                        ; $6bfd: $0e $4b
	ld c, $df                                        ; $6bff: $0e $df
	dec bc                                           ; $6c01: $0b
	rst AddAOntoHL                                          ; $6c02: $ef
	ld e, e                                          ; $6c03: $5b
	ld e, e                                          ; $6c04: $5b
	ld h, [hl]                                       ; $6c05: $66
	db $eb                                           ; $6c06: $eb
	halt                                             ; $6c07: $76
	ld l, e                                          ; $6c08: $6b
	rst FarCall                                          ; $6c09: $f7
	ld [hl], e                                       ; $6c0a: $73
	rst SubAFromDE                                          ; $6c0b: $df
	ld [hl], c                                       ; $6c0c: $71
	rst SubAFromDE                                          ; $6c0d: $df
	add h                                            ; $6c0e: $84
	ld sp, hl                                        ; $6c0f: $f9
	rst GetHLinHL                                          ; $6c10: $cf
	ld sp, hl                                        ; $6c11: $f9
	ld c, a                                          ; $6c12: $4f
	db $fc                                           ; $6c13: $fc
	ld b, a                                          ; $6c14: $47
	cp $03                                           ; $6c15: $fe $03
	rst $38                                          ; $6c17: $ff
	ld bc, $80ff                                     ; $6c18: $01 $ff $80
	rst $38                                          ; $6c1b: $ff
	ld b, b                                          ; $6c1c: $40
	di                                               ; $6c1d: $f3
	ldh [$c0], a                                     ; $6c1e: $e0 $c0
	ret nz                                           ; $6c20: $c0

	ld b, d                                          ; $6c21: $42
	ret nz                                           ; $6c22: $c0

	add e                                            ; $6c23: $83
	add b                                            ; $6c24: $80
	rst SubAFromBC                                          ; $6c25: $e7
	inc b                                            ; $6c26: $04
	adc a                                            ; $6c27: $8f
	inc b                                            ; $6c28: $04
	rlca                                             ; $6c29: $07
	or $80                                           ; $6c2a: $f6 $80
	ret nz                                           ; $6c2c: $c0

	add b                                            ; $6c2d: $80
	ldh a, [$e0]                                     ; $6c2e: $f0 $e0
	ei                                               ; $6c30: $fb
	db $fc                                           ; $6c31: $fc
	ld c, a                                          ; $6c32: $4f
	rst $38                                          ; $6c33: $ff
	ld a, a                                          ; $6c34: $7f
	ret nz                                           ; $6c35: $c0

	cp c                                             ; $6c36: $b9
	ret nz                                           ; $6c37: $c0

	ldh a, [$80]                                     ; $6c38: $f0 $80
	ld [hl], b                                       ; $6c3a: $70
	add b                                            ; $6c3b: $80
	ld d, l                                          ; $6c3c: $55
	xor $56                                          ; $6c3d: $ee $56
	rst AddAOntoHL                                          ; $6c3f: $ef
	ld h, [hl]                                       ; $6c40: $66
	rst $38                                          ; $6c41: $ff
	ld h, [hl]                                       ; $6c42: $66
	rst $38                                          ; $6c43: $ff
	di                                               ; $6c44: $f3
	rst SubAFromDE                                          ; $6c45: $df
	di                                               ; $6c46: $f3
	cp $fb                                           ; $6c47: $fe $fb
	ld c, a                                          ; $6c49: $4f
	ei                                               ; $6c4a: $fb
	adc e                                            ; $6c4b: $8b
	xor [hl]                                         ; $6c4c: $ae
	rst $38                                          ; $6c4d: $ff
	add [hl]                                         ; $6c4e: $86
	rst $38                                          ; $6c4f: $ff
	add c                                            ; $6c50: $81
	rst $38                                          ; $6c51: $ff
	ld c, a                                          ; $6c52: $4f
	ld sp, hl                                        ; $6c53: $f9
	inc e                                            ; $6c54: $1c
	rst FarCall                                          ; $6c55: $f7
	rla                                              ; $6c56: $17
	rst AddAOntoHL                                          ; $6c57: $ef
	rlca                                             ; $6c58: $07
	inc b                                            ; $6c59: $04
	ld b, $03                                        ; $6c5a: $06 $03
	ld [bc], a                                       ; $6c5c: $02
	adc a                                            ; $6c5d: $8f
	nop                                              ; $6c5e: $00
	add a                                            ; $6c5f: $87
	cp $9e                                           ; $6c60: $fe $9e
	ld bc, $fe7b                                     ; $6c62: $01 $7b $fe
	sub h                                            ; $6c65: $94
	inc bc                                           ; $6c66: $03
	nop                                              ; $6c67: $00
	ld b, $01                                        ; $6c68: $06 $01
	rrca                                             ; $6c6a: $0f
	inc bc                                           ; $6c6b: $03
	rla                                              ; $6c6c: $17
	rrca                                             ; $6c6d: $0f
	ld e, a                                          ; $6c6e: $5f
	ccf                                              ; $6c6f: $3f
	ld a, a                                          ; $6c70: $7f
	sbc $ff                                          ; $6c71: $de $ff
	sbc h                                            ; $6c73: $9c
	ld [hl], a                                       ; $6c74: $77
	ei                                               ; $6c75: $fb
	db $fd                                           ; $6c76: $fd
	ld a, e                                          ; $6c77: $7b
	sub [hl]                                         ; $6c78: $96
	add b                                            ; $6c79: $80
	add hl, sp                                       ; $6c7a: $39
	nop                                              ; $6c7b: $00
	ld b, [hl]                                       ; $6c7c: $46
	adc c                                            ; $6c7d: $89
	and d                                            ; $6c7e: $a2
	ld c, l                                          ; $6c7f: $4d
	add sp, $47                                      ; $6c80: $e8 $47
	ld e, b                                          ; $6c82: $58
	rst SubAFromBC                                          ; $6c83: $e7
	ld a, [hl-]                                      ; $6c84: $3a
	rst SubAFromBC                                          ; $6c85: $e7
	xor d                                            ; $6c86: $aa
	rst FarCall                                          ; $6c87: $f7
	sub c                                            ; $6c88: $91
	rst $38                                          ; $6c89: $ff
	ret                                              ; $6c8a: $c9


	ld a, a                                          ; $6c8b: $7f
	db $ed                                           ; $6c8c: $ed
	ccf                                              ; $6c8d: $3f
	push af                                          ; $6c8e: $f5
	rra                                              ; $6c8f: $1f
	rst $38                                          ; $6c90: $ff
	adc a                                            ; $6c91: $8f
	cp $c3                                           ; $6c92: $fe $c3
	ld a, [$bef7]                                    ; $6c94: $fa $f7 $be
	and a                                            ; $6c97: $a7
	or [hl]                                          ; $6c98: $b6
	adc c                                            ; $6c99: $89
	adc a                                            ; $6c9a: $8f
	ld a, [hl]                                       ; $6c9b: $7e
	dec bc                                           ; $6c9c: $0b
	ld [$f41f], a                                    ; $6c9d: $ea $1f $f4
	rra                                              ; $6ca0: $1f
	db $dd                                           ; $6ca1: $dd
	ld a, $f5                                        ; $6ca2: $3e $f5
	ld a, $b5                                        ; $6ca4: $3e $b5
	ld a, [hl]                                       ; $6ca6: $7e
	ld [hl], l                                       ; $6ca7: $75
	cp $d6                                           ; $6ca8: $fe $d6
	db $fc                                           ; $6caa: $fc
	sub $fc                                          ; $6cab: $d6 $fc
	ret c                                            ; $6cad: $d8

	db $fc                                           ; $6cae: $fc
	ld e, b                                          ; $6caf: $58
	ld a, e                                          ; $6cb0: $7b
	cp $95                                           ; $6cb1: $fe $95
	ld c, h                                          ; $6cb3: $4c
	ld hl, sp+$6c                                    ; $6cb4: $f8 $6c
	ld hl, sp-$53                                    ; $6cb6: $f8 $ad
	ld hl, sp-$03                                    ; $6cb8: $f8 $fd
	ld hl, sp-$63                                    ; $6cba: $f8 $9d
	sbc c                                            ; $6cbc: $99
	scf                                              ; $6cbd: $37
	nop                                              ; $6cbe: $00
	ld a, a                                          ; $6cbf: $7f
	ld d, b                                          ; $6cc0: $50
	sub l                                            ; $6cc1: $95
	adc a                                            ; $6cc2: $8f
	inc bc                                           ; $6cc3: $03
	cp [hl]                                          ; $6cc4: $be
	adc h                                            ; $6cc5: $8c
	rst $38                                          ; $6cc6: $ff
	cp a                                             ; $6cc7: $bf
	ld [$a24b], sp                                   ; $6cc8: $08 $4b $a2
	ld [bc], a                                       ; $6ccb: $02
	inc sp                                           ; $6ccc: $33
	jr nz, @-$69                                     ; $6ccd: $20 $95

	nop                                              ; $6ccf: $00
	rst $38                                          ; $6cd0: $ff
	add b                                            ; $6cd1: $80
	di                                               ; $6cd2: $f3
	ret nz                                           ; $6cd3: $c0

	ldh [$e0], a                                     ; $6cd4: $e0 $e0
	jp nz, $8340                                     ; $6cd6: $c2 $40 $83

	cpl                                              ; $6cd9: $2f
	ld b, b                                          ; $6cda: $40
	sbc b                                            ; $6cdb: $98
	ld b, b                                          ; $6cdc: $40
	rst $38                                          ; $6cdd: $ff
	rrca                                             ; $6cde: $0f
	db $fd                                           ; $6cdf: $fd
	inc e                                            ; $6ce0: $1c
	ei                                               ; $6ce1: $fb
	rla                                              ; $6ce2: $17
	ld [hl], a                                       ; $6ce3: $77
	ld b, b                                          ; $6ce4: $40
	inc sp                                           ; $6ce5: $33
	ld h, b                                          ; $6ce6: $60
	sbc b                                            ; $6ce7: $98
	rrca                                             ; $6ce8: $0f
	cp $83                                           ; $6ce9: $fe $83
	ld a, [$fec7]                                    ; $6ceb: $fa $c7 $fe
	rst FarCall                                          ; $6cee: $f7
	ld [hl], e                                       ; $6cef: $73
	ld h, b                                          ; $6cf0: $60
	ld d, a                                          ; $6cf1: $57
	add b                                            ; $6cf2: $80
	sbc d                                            ; $6cf3: $9a
	adc l                                            ; $6cf4: $8d
	ld a, a                                          ; $6cf5: $7f
	adc $f7                                          ; $6cf6: $ce $f7
	ldh a, [$73]                                     ; $6cf8: $f0 $73
	add b                                            ; $6cfa: $80
	sub [hl]                                         ; $6cfb: $96
	nop                                              ; $6cfc: $00
	cp a                                             ; $6cfd: $bf
	add b                                            ; $6cfe: $80
	rst $38                                          ; $6cff: $ff
	add a                                            ; $6d00: $87
	ld a, $7e                                        ; $6d01: $3e $7e
	xor a                                            ; $6d03: $af
	rrca                                             ; $6d04: $0f
	ld d, e                                          ; $6d05: $53
	add b                                            ; $6d06: $80
	sbc [hl]                                         ; $6d07: $9e
	rst GetHLinHL                                          ; $6d08: $cf
	ld h, e                                          ; $6d09: $63
	add b                                            ; $6d0a: $80
	sub [hl]                                         ; $6d0b: $96
	nop                                              ; $6d0c: $00
	di                                               ; $6d0d: $f3
	nop                                              ; $6d0e: $00
	ldh [$80], a                                     ; $6d0f: $e0 $80
	ldh [c], a                                       ; $6d11: $e2
	ldh [$e3], a                                     ; $6d12: $e0 $e3
	ret nz                                           ; $6d14: $c0

	ld e, e                                          ; $6d15: $5b
	add b                                            ; $6d16: $80
	sbc d                                            ; $6d17: $9a
	sbc $fb                                          ; $6d18: $de $fb
	ld a, [hl]                                       ; $6d1a: $7e
	ei                                               ; $6d1b: $fb
	xor a                                            ; $6d1c: $af
	ld l, e                                          ; $6d1d: $6b
	add b                                            ; $6d1e: $80
	ld a, e                                          ; $6d1f: $7b
	sbc $99                                          ; $6d20: $de $99
	rst $38                                          ; $6d22: $ff
	rlca                                             ; $6d23: $07
	dec e                                            ; $6d24: $1d
	dec e                                            ; $6d25: $1d
	rra                                              ; $6d26: $1f

Jump_061_6d27:
	rrca                                             ; $6d27: $0f
	ld c, e                                          ; $6d28: $4b
	add b                                            ; $6d29: $80
	sbc [hl]                                         ; $6d2a: $9e
	rst $38                                          ; $6d2b: $ff
	ld l, e                                          ; $6d2c: $6b
	add b                                            ; $6d2d: $80
	sub [hl]                                         ; $6d2e: $96
	inc bc                                           ; $6d2f: $03
	ld a, [$fe07]                                    ; $6d30: $fa $07 $fe
	add a                                            ; $6d33: $87
	or $ff                                           ; $6d34: $f6 $ff
	cp $cb                                           ; $6d36: $fe $cb
	rla                                              ; $6d38: $17
	add b                                            ; $6d39: $80
	sbc l                                            ; $6d3a: $9d
	ccf                                              ; $6d3b: $3f
	ld [hl], b                                       ; $6d3c: $70
	dec bc                                           ; $6d3d: $0b
	add b                                            ; $6d3e: $80
	sbc l                                            ; $6d3f: $9d
	ld h, b                                          ; $6d40: $60
	db $e3                                           ; $6d41: $e3
	ld d, a                                          ; $6d42: $57
	nop                                              ; $6d43: $00
	ld b, e                                          ; $6d44: $43
	add b                                            ; $6d45: $80
	sbc e                                            ; $6d46: $9b
	rra                                              ; $6d47: $1f
	jr jr_061_6d69                                   ; $6d48: $18 $1f

	rlca                                             ; $6d4a: $07
	inc de                                           ; $6d4b: $13
	add b                                            ; $6d4c: $80
	sbc h                                            ; $6d4d: $9c
	ccf                                              ; $6d4e: $3f
	cp $cb                                           ; $6d4f: $fe $cb
	ld sp, hl                                        ; $6d51: $f9
	sbc e                                            ; $6d52: $9b
	ld b, $0d                                        ; $6d53: $06 $0d
	inc bc                                           ; $6d55: $03
	rlca                                             ; $6d56: $07
	ld a, e                                          ; $6d57: $7b
	add a                                            ; $6d58: $87
	add sp, -$65                                     ; $6d59: $e8 $9b
	add b                                            ; $6d5b: $80
	ret nz                                           ; $6d5c: $c0

	nop                                              ; $6d5d: $00
	add b                                            ; $6d5e: $80
	push hl                                          ; $6d5f: $e5
	ld a, e                                          ; $6d60: $7b
	ret nz                                           ; $6d61: $c0

	sbc l                                            ; $6d62: $9d
	rrca                                             ; $6d63: $0f
	ld [bc], a                                       ; $6d64: $02
	inc bc                                           ; $6d65: $03
	ret nz                                           ; $6d66: $c0

	rla                                              ; $6d67: $17
	ret nz                                           ; $6d68: $c0

jr_061_6d69:
	sbc l                                            ; $6d69: $9d
	rlca                                             ; $6d6a: $07
	rrca                                             ; $6d6b: $0f
	ld a, e                                          ; $6d6c: $7b
	ld a, [hl]                                       ; $6d6d: $7e
	dec de                                           ; $6d6e: $1b
	ret nz                                           ; $6d6f: $c0

	rrca                                             ; $6d70: $0f
	cp [hl]                                          ; $6d71: $be
	ld [hl], a                                       ; $6d72: $77
	ret nz                                           ; $6d73: $c0

	rla                                              ; $6d74: $17
	cp [hl]                                          ; $6d75: $be
	ld a, a                                          ; $6d76: $7f
	jp nz, $c0df                                     ; $6d77: $c2 $df $c0

	scf                                              ; $6d7a: $37
	cp [hl]                                          ; $6d7b: $be
	jp nc, $8081                                     ; $6d7c: $d2 $81 $80

	ld [$f7fe], a                                    ; $6d7f: $ea $fe $f7
	rst SubAFromBC                                          ; $6d82: $e7
	rst FarCall                                          ; $6d83: $f7
	rst FarCall                                          ; $6d84: $f7
	rst $38                                          ; $6d85: $ff
	ld l, a                                          ; $6d86: $6f
	and a                                            ; $6d87: $a7
	and a                                            ; $6d88: $a7
	xor l                                            ; $6d89: $ad
	sbc l                                            ; $6d8a: $9d
	sbc a                                            ; $6d8b: $9f
	cp h                                             ; $6d8c: $bc
	call z, $cfc4                                    ; $6d8d: $cc $c4 $cf
	sbc [hl]                                         ; $6d90: $9e
	dec a                                            ; $6d91: $3d
	sbc a                                            ; $6d92: $9f
	sub l                                            ; $6d93: $95
	rst JumpTable                                          ; $6d94: $c7
	ld b, $a3                                        ; $6d95: $06 $a3
	rst JumpTable                                          ; $6d97: $c7
	inc c                                            ; $6d98: $0c
	jr c, jr_061_6db2                                ; $6d99: $38 $17

	add a                                            ; $6d9b: $87
	add l                                            ; $6d9c: $85
	ld b, h                                          ; $6d9d: $44
	add b                                            ; $6d9e: $80
	ld [bc], a                                       ; $6d9f: $02
	ret nz                                           ; $6da0: $c0

	ret nz                                           ; $6da1: $c0

	or b                                             ; $6da2: $b0
	sub b                                            ; $6da3: $90
	ret nc                                           ; $6da4: $d0

	ret z                                            ; $6da5: $c8

	adc h                                            ; $6da6: $8c
	adc e                                            ; $6da7: $8b
	add b                                            ; $6da8: $80
	ldh [$e0], a                                     ; $6da9: $e0 $e0
	ldh a, [$b8]                                     ; $6dab: $f0 $b8
	cp h                                             ; $6dad: $bc
	cp [hl]                                          ; $6dae: $be
	ccf                                              ; $6daf: $3f
	ld c, e                                          ; $6db0: $4b
	dec hl                                           ; $6db1: $2b

jr_061_6db2:
	dec bc                                           ; $6db2: $0b
	dec de                                           ; $6db3: $1b
	add hl, bc                                       ; $6db4: $09
	ld c, e                                          ; $6db5: $4b
	rst SubAFromDE                                          ; $6db6: $df
	rst AddAOntoHL                                          ; $6db7: $ef
	ccf                                              ; $6db8: $3f
	ld e, a                                          ; $6db9: $5f
	ld e, [hl]                                       ; $6dba: $5e
	ld c, [hl]                                       ; $6dbb: $4e
	ld c, $0e                                        ; $6dbc: $0e $0e
	adc h                                            ; $6dbe: $8c
	dec bc                                           ; $6dbf: $0b
	ld e, e                                          ; $6dc0: $5b
	ld e, e                                          ; $6dc1: $5b
	db $eb                                           ; $6dc2: $eb
	ld l, e                                          ; $6dc3: $6b
	ld [hl], e                                       ; $6dc4: $73
	ld [hl], c                                       ; $6dc5: $71
	ld sp, hl                                        ; $6dc6: $f9
	ld sp, hl                                        ; $6dc7: $f9
	db $fc                                           ; $6dc8: $fc
	ld h, [hl]                                       ; $6dc9: $66
	halt                                             ; $6dca: $76
	rst FarCall                                          ; $6dcb: $f7
	rst SubAFromDE                                          ; $6dcc: $df
	rst SubAFromDE                                          ; $6dcd: $df
	rst GetHLinHL                                          ; $6dce: $cf
	ld c, a                                          ; $6dcf: $4f
	ld b, a                                          ; $6dd0: $47
	cp $de                                           ; $6dd1: $fe $de
	rst $38                                          ; $6dd3: $ff
	sub a                                            ; $6dd4: $97
	di                                               ; $6dd5: $f3
	ld b, b                                          ; $6dd6: $40
	ld b, d                                          ; $6dd7: $42
	add e                                            ; $6dd8: $83
	add e                                            ; $6dd9: $83
	ld b, c                                          ; $6dda: $41
	ldh [$e0], a                                     ; $6ddb: $e0 $e0
	sbc $c0                                          ; $6ddd: $de $c0
	sbc e                                            ; $6ddf: $9b
	add b                                            ; $6de0: $80
	rlca                                             ; $6de1: $07
	rrca                                             ; $6de2: $0f
	rlca                                             ; $6de3: $07
	db $fc                                           ; $6de4: $fc
	rst SubAFromDE                                          ; $6de5: $df
	inc b                                            ; $6de6: $04
	ei                                               ; $6de7: $fb
	sub e                                            ; $6de8: $93
	ret nz                                           ; $6de9: $c0

	ldh a, [$fb]                                     ; $6dea: $f0 $fb
	ld c, a                                          ; $6dec: $4f
	ld a, a                                          ; $6ded: $7f
	cp c                                             ; $6dee: $b9
	ldh a, [rSVBK]                                   ; $6def: $f0 $70
	add b                                            ; $6df1: $80
	ldh [$fc], a                                     ; $6df2: $e0 $fc
	rst $38                                          ; $6df4: $ff
	ld a, e                                          ; $6df5: $7b
	pop hl                                           ; $6df6: $e1
	sub h                                            ; $6df7: $94
	add b                                            ; $6df8: $80
	ld d, l                                          ; $6df9: $55
	ld d, [hl]                                       ; $6dfa: $56
	ld h, [hl]                                       ; $6dfb: $66
	ld h, [hl]                                       ; $6dfc: $66

Jump_061_6dfd:
	di                                               ; $6dfd: $f3
	di                                               ; $6dfe: $f3

Jump_061_6dff:
	ei                                               ; $6dff: $fb
	ei                                               ; $6e00: $fb
	xor $ef                                          ; $6e01: $ee $ef
	sbc $ff                                          ; $6e03: $de $ff
	sub c                                            ; $6e05: $91
	rst SubAFromDE                                          ; $6e06: $df
	ld c, [hl]                                       ; $6e07: $4e
	xor [hl]                                         ; $6e08: $ae
	rst $38                                          ; $6e09: $ff
	ei                                               ; $6e0a: $fb
	ld sp, hl                                        ; $6e0b: $f9
	rst $38                                          ; $6e0c: $ff
	push af                                          ; $6e0d: $f5
	db $e4                                           ; $6e0e: $e4
	ld b, $07                                        ; $6e0f: $06 $07
	adc a                                            ; $6e11: $8f
	sbc [hl]                                         ; $6e12: $9e
	ld d, c                                          ; $6e13: $51
	sbc $07                                          ; $6e14: $de $07
	sub l                                            ; $6e16: $95
	inc b                                            ; $6e17: $04
	ld [bc], a                                       ; $6e18: $02
	add b                                            ; $6e19: $80
	add b                                            ; $6e1a: $80
	nop                                              ; $6e1b: $00
	ld bc, $0301                                     ; $6e1c: $01 $01 $03
	ld b, $0f                                        ; $6e1f: $06 $0f
	ei                                               ; $6e21: $fb
	ld a, a                                          ; $6e22: $7f
	or $80                                           ; $6e23: $f6 $80
	rla                                              ; $6e25: $17
	ld e, a                                          ; $6e26: $5f
	ld a, a                                          ; $6e27: $7f
	rst $38                                          ; $6e28: $ff
	ld [hl], a                                       ; $6e29: $77
	db $fd                                           ; $6e2a: $fd
	rst $38                                          ; $6e2b: $ff
	add hl, sp                                       ; $6e2c: $39
	rrca                                             ; $6e2d: $0f
	ccf                                              ; $6e2e: $3f
	rst $38                                          ; $6e2f: $ff
	rst $38                                          ; $6e30: $ff
	ei                                               ; $6e31: $fb
	inc bc                                           ; $6e32: $03
	ld bc, $4600                                     ; $6e33: $01 $00 $46
	and d                                            ; $6e36: $a2
	add sp, $58                                      ; $6e37: $e8 $58
	ld a, [hl-]                                      ; $6e39: $3a
	xor d                                            ; $6e3a: $aa
	sub c                                            ; $6e3b: $91
	ret                                              ; $6e3c: $c9


	adc c                                            ; $6e3d: $89
	ld c, l                                          ; $6e3e: $4d
	ld b, a                                          ; $6e3f: $47
	rst SubAFromBC                                          ; $6e40: $e7
	rst SubAFromBC                                          ; $6e41: $e7
	rst FarCall                                          ; $6e42: $f7
	rst $38                                          ; $6e43: $ff
	add b                                            ; $6e44: $80
	ld a, a                                          ; $6e45: $7f
	db $ed                                           ; $6e46: $ed
	push af                                          ; $6e47: $f5
	rst $38                                          ; $6e48: $ff
	cp $ba                                           ; $6e49: $fe $ba
	cp [hl]                                          ; $6e4b: $be
	or $fe                                           ; $6e4c: $f6 $fe
	ccf                                              ; $6e4e: $3f
	rst SubAFromDE                                          ; $6e4f: $df
	rst $38                                          ; $6e50: $ff
	and e                                            ; $6e51: $a3
	add a                                            ; $6e52: $87
	add a                                            ; $6e53: $87
	adc a                                            ; $6e54: $8f
	dec bc                                           ; $6e55: $0b
	ld l, d                                          ; $6e56: $6a
	db $f4                                           ; $6e57: $f4
	db $dd                                           ; $6e58: $dd
	push af                                          ; $6e59: $f5
	or l                                             ; $6e5a: $b5
	ld [hl], l                                       ; $6e5b: $75
	sub $d6                                          ; $6e5c: $d6 $d6
	rra                                              ; $6e5e: $1f
	rra                                              ; $6e5f: $1f
	ld a, $3e                                        ; $6e60: $3e $3e
	ld a, [hl]                                       ; $6e62: $7e
	cp $df                                           ; $6e63: $fe $df
	db $fc                                           ; $6e65: $fc
	sub a                                            ; $6e66: $97
	ret c                                            ; $6e67: $d8

	ld e, b                                          ; $6e68: $58
	ld e, b                                          ; $6e69: $58
	ld c, h                                          ; $6e6a: $4c
	ld l, h                                          ; $6e6b: $6c
	xor l                                            ; $6e6c: $ad
	db $fd                                           ; $6e6d: $fd
	sbc l                                            ; $6e6e: $9d
	sbc $fc                                          ; $6e6f: $de $fc
	db $dd                                           ; $6e71: $dd
	ld hl, sp-$62                                    ; $6e72: $f8 $9e
	sbc c                                            ; $6e74: $99
	ld b, a                                          ; $6e75: $47
	nop                                              ; $6e76: $00
	adc a                                            ; $6e77: $8f
	rst JumpTable                                          ; $6e78: $c7
	add a                                            ; $6e79: $87
	rrca                                             ; $6e7a: $0f
	sbc [hl]                                         ; $6e7b: $9e
	cp l                                             ; $6e7c: $bd
	rst SubAFromDE                                          ; $6e7d: $df
	ld b, $a3                                        ; $6e7e: $06 $a3
	ret nz                                           ; $6e80: $c0

	nop                                              ; $6e81: $00
	inc bc                                           ; $6e82: $03
	inc c                                            ; $6e83: $0c
	cp c                                             ; $6e84: $b9
	sub a                                            ; $6e85: $97
	ld b, h                                          ; $6e86: $44
	ld [bc], a                                       ; $6e87: $02
	daa                                              ; $6e88: $27
	jr nz, jr_061_6f0a                               ; $6e89: $20 $7f

	add l                                            ; $6e8b: $85
	sbc l                                            ; $6e8c: $9d
	add b                                            ; $6e8d: $80
	ret nz                                           ; $6e8e: $c0

jr_061_6e8f:
	ld a, e                                          ; $6e8f: $7b

jr_061_6e90:
	rra                                              ; $6e90: $1f
	ccf                                              ; $6e91: $3f
	ld b, b                                          ; $6e92: $40
	rst SubAFromDE                                          ; $6e93: $df
	rst $38                                          ; $6e94: $ff
	sub d                                            ; $6e95: $92
	ld sp, hl                                        ; $6e96: $f9
	ei                                               ; $6e97: $fb
	rst AddAOntoHL                                          ; $6e98: $ef
	inc b                                            ; $6e99: $04
	rlca                                             ; $6e9a: $07
	add [hl]                                         ; $6e9b: $86
	add c                                            ; $6e9c: $81
	ld b, a                                          ; $6e9d: $47
	inc c                                            ; $6e9e: $0c
	add hl, de                                       ; $6e9f: $19
	rlca                                             ; $6ea0: $07
	ld b, $02                                        ; $6ea1: $06 $02
	scf                                              ; $6ea3: $37
	ld h, b                                          ; $6ea4: $60
	sbc [hl]                                         ; $6ea5: $9e
	ld a, [$6077]                                    ; $6ea6: $fa $77 $60
	rst SubAFromDE                                          ; $6ea9: $df
	rra                                              ; $6eaa: $1f
	sbc l                                            ; $6eab: $9d
	sub e                                            ; $6eac: $93
	rst SubAFromBC                                          ; $6ead: $e7
	ld a, e                                          ; $6eae: $7b
	ld h, b                                          ; $6eaf: $60
	ld d, a                                          ; $6eb0: $57
	add b                                            ; $6eb1: $80
	ld a, a                                          ; $6eb2: $7f
	ld a, a                                          ; $6eb3: $7f
	sbc [hl]                                         ; $6eb4: $9e
	xor h                                            ; $6eb5: $ac
	ld a, e                                          ; $6eb6: $7b
	add b                                            ; $6eb7: $80
	ld a, a                                          ; $6eb8: $7f
	dec b                                            ; $6eb9: $05
	sbc d                                            ; $6eba: $9a
	sbc a                                            ; $6ebb: $9f
	rst $38                                          ; $6ebc: $ff
	ld a, $af                                        ; $6ebd: $3e $af
	ret nz                                           ; $6ebf: $c0

	cp $9a                                           ; $6ec0: $fe $9a
	add b                                            ; $6ec2: $80
	add a                                            ; $6ec3: $87
	ld a, [hl]                                       ; $6ec4: $7e
	rrca                                             ; $6ec5: $0f
	rst JumpTable                                          ; $6ec6: $c7
	ld [bc], a                                       ; $6ec7: $02
	add b                                            ; $6ec8: $80
	dec sp                                           ; $6ec9: $3b
	ld h, b                                          ; $6eca: $60
	sbc h                                            ; $6ecb: $9c

jr_061_6ecc:
	ldh [$e2], a                                     ; $6ecc: $e0 $e2
	jp $e57a                                         ; $6ece: $c3 $7a $e5


	ld a, d                                          ; $6ed1: $7a
	sub e                                            ; $6ed2: $93
	ld a, a                                          ; $6ed3: $7f
	ld e, [hl]                                       ; $6ed4: $5e
	ld a, a                                          ; $6ed5: $7f
	ld sp, $8002                                     ; $6ed6: $31 $02 $80
	ld h, e                                          ; $6ed9: $63
	ld b, b                                          ; $6eda: $40
	ld a, [hl]                                       ; $6edb: $7e
	call Call_061_4073                               ; $6edc: $cd $73 $40
	sbc $ff                                          ; $6edf: $de $ff
	sub h                                            ; $6ee1: $94
	dec e                                            ; $6ee2: $1d
	rrca                                             ; $6ee3: $0f
	add [hl]                                         ; $6ee4: $86
	add c                                            ; $6ee5: $81
	ld b, b                                          ; $6ee6: $40
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	rlca                                             ; $6ee9: $07
	dec e                                            ; $6eea: $1d
	rrca                                             ; $6eeb: $0f
	add a                                            ; $6eec: $87
	ld [bc], a                                       ; $6eed: $02
	add b                                            ; $6eee: $80
	dec sp                                           ; $6eef: $3b
	jr nz, jr_061_6e90                               ; $6ef0: $20 $9e

	cp $73                                           ; $6ef2: $fe $73
	jr nz, jr_061_6e8f                               ; $6ef4: $20 $99

	inc de                                           ; $6ef6: $13
	rlca                                             ; $6ef7: $07
	add a                                            ; $6ef8: $87
	rst AddAOntoHL                                          ; $6ef9: $ef
	set 5, d                                         ; $6efa: $cb $ea
	ld [bc], a                                       ; $6efc: $02
	add b                                            ; $6efd: $80
	scf                                              ; $6efe: $37
	nop                                              ; $6eff: $00
	sbc [hl]                                         ; $6f00: $9e
	ccf                                              ; $6f01: $3f
	ld l, e                                          ; $6f02: $6b
	nop                                              ; $6f03: $00
	sbc l                                            ; $6f04: $9d
	ld [hl], b                                       ; $6f05: $70
	rrca                                             ; $6f06: $0f
	rrca                                             ; $6f07: $0f
	jr nz, @-$61                                     ; $6f08: $20 $9d

jr_061_6f0a:
	jr nz, jr_061_6ecc                               ; $6f0a: $20 $c0

	cpl                                              ; $6f0c: $2f
	ld b, b                                          ; $6f0d: $40
	sbc [hl]                                         ; $6f0e: $9e
	rra                                              ; $6f0f: $1f
	ld l, a                                          ; $6f10: $6f
	ld b, b                                          ; $6f11: $40
	sbc h                                            ; $6f12: $9c
	rrca                                             ; $6f13: $0f
	db $10                                           ; $6f14: $10
	rrca                                             ; $6f15: $0f
	inc de                                           ; $6f16: $13
	ld h, b                                          ; $6f17: $60
	sbc h                                            ; $6f18: $9c
	rlca                                             ; $6f19: $07
	ld l, a                                          ; $6f1a: $6f
	adc e                                            ; $6f1b: $8b
	db $fd                                           ; $6f1c: $fd
	sbc [hl]                                         ; $6f1d: $9e
	dec b                                            ; $6f1e: $05
	ei                                               ; $6f1f: $fb
	ld a, a                                          ; $6f20: $7f
	db $d3                                           ; $6f21: $d3
	ld a, a                                          ; $6f22: $7f
	rrca                                             ; $6f23: $0f
	push hl                                          ; $6f24: $e5
	ld a, [hl]                                       ; $6f25: $7e
	jp nc, $9eea                                     ; $6f26: $d2 $ea $9e

	dec bc                                           ; $6f29: $0b
	ld l, a                                          ; $6f2a: $6f
	ret                                              ; $6f2b: $c9


	sbc h                                            ; $6f2c: $9c
	db $10                                           ; $6f2d: $10
	inc c                                            ; $6f2e: $0c
	rlca                                             ; $6f2f: $07
	cpl                                              ; $6f30: $2f
	ret nz                                           ; $6f31: $c0

	ld l, e                                          ; $6f32: $6b
	ret z                                            ; $6f33: $c8

	rra                                              ; $6f34: $1f
	ret nz                                           ; $6f35: $c0

	sbc l                                            ; $6f36: $9d
	rrca                                             ; $6f37: $0f
	ld [bc], a                                       ; $6f38: $02
	db $fc                                           ; $6f39: $fc
	sbc [hl]                                         ; $6f3a: $9e
	inc e                                            ; $6f3b: $1c
	ld l, d                                          ; $6f3c: $6a
	ld d, h                                          ; $6f3d: $54
	ld b, e                                          ; $6f3e: $43
	ret nz                                           ; $6f3f: $c0

	dec bc                                           ; $6f40: $0b
	cp a                                             ; $6f41: $bf
	ld a, a                                          ; $6f42: $7f
	ret nz                                           ; $6f43: $c0

	ld l, a                                          ; $6f44: $6f
	ret z                                            ; $6f45: $c8

	ld a, a                                          ; $6f46: $7f
	ret nz                                           ; $6f47: $c0

	cpl                                              ; $6f48: $2f
	cp a                                             ; $6f49: $bf
	ld e, a                                          ; $6f4a: $5f
	ret nz                                           ; $6f4b: $c0

	ccf                                              ; $6f4c: $3f
	cp a                                             ; $6f4d: $bf
	db $d3                                           ; $6f4e: $d3
	ld bc, $ea80                                     ; $6f4f: $01 $80 $ea
	and a                                            ; $6f52: $a7
	cp $a7                                           ; $6f53: $fe $a7
	rst FarCall                                          ; $6f55: $f7
	xor l                                            ; $6f56: $ad
	rst SubAFromBC                                          ; $6f57: $e7
	sbc l                                            ; $6f58: $9d
	rst FarCall                                          ; $6f59: $f7
	sbc l                                            ; $6f5a: $9d
	rst FarCall                                          ; $6f5b: $f7
	sbc a                                            ; $6f5c: $9f
	rst $38                                          ; $6f5d: $ff
	xor h                                            ; $6f5e: $ac
	ld l, a                                          ; $6f5f: $6f
	call nz, $c0c7                                   ; $6f60: $c4 $c7 $c0
	adc a                                            ; $6f63: $8f
	rlca                                             ; $6f64: $07
	ld e, $0c                                        ; $6f65: $1e $0c
	cp c                                             ; $6f67: $b9
	add hl, sp                                       ; $6f68: $39
	sub a                                            ; $6f69: $97
	sub a                                            ; $6f6a: $97
	call $0687                                       ; $6f6b: $cd $87 $06
	ld b, h                                          ; $6f6e: $44
	and e                                            ; $6f6f: $a3
	add b                                            ; $6f70: $80
	ld [bc], a                                       ; $6f71: $02
	ret nz                                           ; $6f72: $c0

	add b                                            ; $6f73: $80
	ret nz                                           ; $6f74: $c0

	ldh [$b0], a                                     ; $6f75: $e0 $b0
	ldh [hDisp1_SCY], a                                     ; $6f77: $e0 $90
	ldh a, [$d0]                                     ; $6f79: $f0 $d0
	cp b                                             ; $6f7b: $b8
	ret z                                            ; $6f7c: $c8

	cp h                                             ; $6f7d: $bc
	adc h                                            ; $6f7e: $8c
	cp [hl]                                          ; $6f7f: $be
	adc e                                            ; $6f80: $8b
	ccf                                              ; $6f81: $3f
	ld c, e                                          ; $6f82: $4b
	ccf                                              ; $6f83: $3f
	dec hl                                           ; $6f84: $2b
	ld e, a                                          ; $6f85: $5f
	dec bc                                           ; $6f86: $0b
	ld e, [hl]                                       ; $6f87: $5e
	dec de                                           ; $6f88: $1b
	ld c, [hl]                                       ; $6f89: $4e
	add hl, bc                                       ; $6f8a: $09
	ld c, $4b                                        ; $6f8b: $0e $4b
	ld c, $df                                        ; $6f8d: $0e $df
	dec bc                                           ; $6f8f: $0b
	add b                                            ; $6f90: $80
	rst AddAOntoHL                                          ; $6f91: $ef
	ld e, e                                          ; $6f92: $5b
	ld e, e                                          ; $6f93: $5b
	ld h, [hl]                                       ; $6f94: $66
	db $eb                                           ; $6f95: $eb
	halt                                             ; $6f96: $76
	ld l, e                                          ; $6f97: $6b
	rst FarCall                                          ; $6f98: $f7
	ld [hl], e                                       ; $6f99: $73
	rst SubAFromDE                                          ; $6f9a: $df
	ld [hl], c                                       ; $6f9b: $71
	rst SubAFromDE                                          ; $6f9c: $df
	ld sp, hl                                        ; $6f9d: $f9
	rst GetHLinHL                                          ; $6f9e: $cf
	ld sp, hl                                        ; $6f9f: $f9
	ld c, a                                          ; $6fa0: $4f
	db $fc                                           ; $6fa1: $fc
	ld b, a                                          ; $6fa2: $47
	cp $03                                           ; $6fa3: $fe $03
	rst $38                                          ; $6fa5: $ff
	add c                                            ; $6fa6: $81
	rst $38                                          ; $6fa7: $ff
	ret nz                                           ; $6fa8: $c0

	rst $38                                          ; $6fa9: $ff
	ret nz                                           ; $6faa: $c0

	di                                               ; $6fab: $f3
	ret nz                                           ; $6fac: $c0

	ld b, b                                          ; $6fad: $40
	ret nz                                           ; $6fae: $c0

	ld b, d                                          ; $6faf: $42
	sub a                                            ; $6fb0: $97
	ret nz                                           ; $6fb1: $c0

	add e                                            ; $6fb2: $83
	add b                                            ; $6fb3: $80
	rlca                                             ; $6fb4: $07
	inc b                                            ; $6fb5: $04
	rrca                                             ; $6fb6: $0f
	inc b                                            ; $6fb7: $04
	rlca                                             ; $6fb8: $07
	or $7f                                           ; $6fb9: $f6 $7f
	or b                                             ; $6fbb: $b0
	add b                                            ; $6fbc: $80
	ldh a, [$e0]                                     ; $6fbd: $f0 $e0
	ei                                               ; $6fbf: $fb
	db $fc                                           ; $6fc0: $fc
	ld c, a                                          ; $6fc1: $4f
	rst $38                                          ; $6fc2: $ff
	ld a, a                                          ; $6fc3: $7f
	ret nz                                           ; $6fc4: $c0

	cp c                                             ; $6fc5: $b9
	ret nz                                           ; $6fc6: $c0

	ldh a, [$80]                                     ; $6fc7: $f0 $80
	ld [hl], b                                       ; $6fc9: $70
	add b                                            ; $6fca: $80
	ld d, l                                          ; $6fcb: $55
	xor $56                                          ; $6fcc: $ee $56
	rst AddAOntoHL                                          ; $6fce: $ef
	ld h, [hl]                                       ; $6fcf: $66
	rst $38                                          ; $6fd0: $ff
	ld h, [hl]                                       ; $6fd1: $66
	rst $38                                          ; $6fd2: $ff
	di                                               ; $6fd3: $f3
	rst SubAFromDE                                          ; $6fd4: $df
	di                                               ; $6fd5: $f3
	rst $38                                          ; $6fd6: $ff
	ei                                               ; $6fd7: $fb
	ld c, [hl]                                       ; $6fd8: $4e
	ei                                               ; $6fd9: $fb
	xor [hl]                                         ; $6fda: $ae
	rst $38                                          ; $6fdb: $ff
	adc l                                            ; $6fdc: $8d
	add a                                            ; $6fdd: $87
	rst $38                                          ; $6fde: $ff
	adc a                                            ; $6fdf: $8f
	ld a, [$f95c]                                    ; $6fe0: $fa $5c $f9
	ld de, $07f7                                     ; $6fe3: $11 $f7 $07
	db $ec                                           ; $6fe6: $ec
	rlca                                             ; $6fe7: $07
	ld b, $04                                        ; $6fe8: $06 $04
	rlca                                             ; $6fea: $07
	ld [bc], a                                       ; $6feb: $02
	add b                                            ; $6fec: $80
	nop                                              ; $6fed: $00
	add b                                            ; $6fee: $80
	cp $9e                                           ; $6fef: $fe $9e
	ld bc, $fe7b                                     ; $6ff1: $01 $7b $fe
	sub h                                            ; $6ff4: $94
	inc bc                                           ; $6ff5: $03
	nop                                              ; $6ff6: $00
	ld b, $01                                        ; $6ff7: $06 $01
	rrca                                             ; $6ff9: $0f
	inc bc                                           ; $6ffa: $03
	rla                                              ; $6ffb: $17
	rrca                                             ; $6ffc: $0f
	ld e, a                                          ; $6ffd: $5f
	ccf                                              ; $6ffe: $3f
	ld a, a                                          ; $6fff: $7f
	sbc $ff                                          ; $7000: $de $ff
	add b                                            ; $7002: $80
	ld [hl], a                                       ; $7003: $77

jr_061_7004:
	ei                                               ; $7004: $fb
	db $fd                                           ; $7005: $fd
	inc bc                                           ; $7006: $03
	rst $38                                          ; $7007: $ff
	ld bc, $0039                                     ; $7008: $01 $39 $00
	ld b, [hl]                                       ; $700b: $46
	adc c                                            ; $700c: $89
	and d                                            ; $700d: $a2
	ld c, l                                          ; $700e: $4d
	add sp, $47                                      ; $700f: $e8 $47
	ld e, b                                          ; $7011: $58
	rst SubAFromBC                                          ; $7012: $e7
	ld a, [hl-]                                      ; $7013: $3a
	rst SubAFromBC                                          ; $7014: $e7
	xor d                                            ; $7015: $aa
	rst FarCall                                          ; $7016: $f7
	sub c                                            ; $7017: $91
	rst $38                                          ; $7018: $ff
	ret                                              ; $7019: $c9


	ld a, a                                          ; $701a: $7f
	db $ed                                           ; $701b: $ed
	ccf                                              ; $701c: $3f
	push af                                          ; $701d: $f5
	sbc a                                            ; $701e: $9f
	rst $38                                          ; $701f: $ff
	rst GetHLinHL                                          ; $7020: $cf
	cp $83                                           ; $7021: $fe $83
	or e                                             ; $7023: $b3
	cp d                                             ; $7024: $ba
	and a                                            ; $7025: $a7
	cp [hl]                                          ; $7026: $be
	add a                                            ; $7027: $87
	or $8f                                           ; $7028: $f6 $8f
	cp $0b                                           ; $702a: $fe $0b
	ld l, d                                          ; $702c: $6a
	rra                                              ; $702d: $1f
	db $f4                                           ; $702e: $f4
	rra                                              ; $702f: $1f
	db $dd                                           ; $7030: $dd
	ld a, $f5                                        ; $7031: $3e $f5
	ld a, $b5                                        ; $7033: $3e $b5
	ld a, [hl]                                       ; $7035: $7e
	ld [hl], l                                       ; $7036: $75
	cp $d6                                           ; $7037: $fe $d6
	db $fc                                           ; $7039: $fc
	sub $fc                                          ; $703a: $d6 $fc
	ret c                                            ; $703c: $d8

	db $fc                                           ; $703d: $fc
	ld e, b                                          ; $703e: $58
	ld a, e                                          ; $703f: $7b
	cp $95                                           ; $7040: $fe $95
	ld c, h                                          ; $7042: $4c
	ld hl, sp+$6c                                    ; $7043: $f8 $6c
	ld hl, sp-$53                                    ; $7045: $f8 $ad
	ld hl, sp-$03                                    ; $7047: $f8 $fd
	ld hl, sp-$63                                    ; $7049: $f8 $9d
	sbc c                                            ; $704b: $99
	ccf                                              ; $704c: $3f
	nop                                              ; $704d: $00
	sub l                                            ; $704e: $95
	add a                                            ; $704f: $87
	nop                                              ; $7050: $00
	rrca                                             ; $7051: $0f
	inc bc                                           ; $7052: $03
	sbc [hl]                                         ; $7053: $9e
	inc c                                            ; $7054: $0c
	cp c                                             ; $7055: $b9
	cp c                                             ; $7056: $b9
	db $db                                           ; $7057: $db
	sub a                                            ; $7058: $97
	ld [hl], a                                       ; $7059: $77
	nop                                              ; $705a: $00
	dec sp                                           ; $705b: $3b
	jr nz, @-$64                                     ; $705c: $20 $9a

	ld bc, $00ff                                     ; $705e: $01 $ff $00

jr_061_7061:
	rst $38                                          ; $7061: $ff
	add b                                            ; $7062: $80
	ld [hl], a                                       ; $7063: $77
	jr nz, jr_061_7004                               ; $7064: $20 $9e

	jp nz, $207b                                     ; $7066: $c2 $7b $20

	ld b, e                                          ; $7069: $43
	ld b, b                                          ; $706a: $40
	sbc [hl]                                         ; $706b: $9e
	add [hl]                                         ; $706c: $86
	ld a, e                                          ; $706d: $7b
	nop                                              ; $706e: $00
	sub h                                            ; $706f: $94
	ld b, a                                          ; $7070: $47
	ld sp, hl                                        ; $7071: $f9
	inc c                                            ; $7072: $0c
	ei                                               ; $7073: $fb
	add hl, de                                       ; $7074: $19
	rst AddAOntoHL                                          ; $7075: $ef
	rlca                                             ; $7076: $07
	inc b                                            ; $7077: $04
	ld b, $07                                        ; $7078: $06 $07
	ld [bc], a                                       ; $707a: $02
	dec sp                                           ; $707b: $3b
	ld h, b                                          ; $707c: $60
	sub [hl]                                         ; $707d: $96
	rra                                              ; $707e: $1f
	rst $38                                          ; $707f: $ff
	adc a                                            ; $7080: $8f
	cp $c3                                           ; $7081: $fe $c3
	ld a, [$bef7]                                    ; $7083: $fa $f7 $be
	and a                                            ; $7086: $a7
	ld [hl], a                                       ; $7087: $77
	ld h, b                                          ; $7088: $60
	ld e, e                                          ; $7089: $5b
	add b                                            ; $708a: $80
	sbc d                                            ; $708b: $9a
	sbc h                                            ; $708c: $9c
	rst $38                                          ; $708d: $ff
	sbc a                                            ; $708e: $9f
	ld l, a                                          ; $708f: $6f
	db $e4                                           ; $7090: $e4
	ld [hl], e                                       ; $7091: $73
	add b                                            ; $7092: $80
	sub e                                            ; $7093: $93
	nop                                              ; $7094: $00
	sbc a                                            ; $7095: $9f
	nop                                              ; $7096: $00
	cp a                                             ; $7097: $bf
	add b                                            ; $7098: $80
	rst $38                                          ; $7099: $ff
	add a                                            ; $709a: $87
	ld a, $7e                                        ; $709b: $3e $7e
	xor a                                            ; $709d: $af
	rrca                                             ; $709e: $0f
	rst JumpTable                                          ; $709f: $c7
	ld [bc], a                                       ; $70a0: $02
	add b                                            ; $70a1: $80
	ld e, e                                          ; $70a2: $5b
	ld h, b                                          ; $70a3: $60
	sbc [hl]                                         ; $70a4: $9e
	rst GetHLinHL                                          ; $70a5: $cf
	ld h, e                                          ; $70a6: $63
	ld h, b                                          ; $70a7: $60
	sbc l                                            ; $70a8: $9d
	nop                                              ; $70a9: $00
	di                                               ; $70aa: $f3
	ld a, d                                          ; $70ab: $7a
	sub [hl]                                         ; $70ac: $96
	ld a, a                                          ; $70ad: $7f
	ld h, b                                          ; $70ae: $60
	sbc h                                            ; $70af: $9c
	jp $8780                                         ; $70b0: $c3 $80 $87


	ld [bc], a                                       ; $70b3: $02
	add b                                            ; $70b4: $80
	ld h, e                                          ; $70b5: $63
	ld b, b                                          ; $70b6: $40
	sbc h                                            ; $70b7: $9c
	sbc $fb                                          ; $70b8: $de $fb
	ld a, a                                          ; $70ba: $7f
	ld l, e                                          ; $70bb: $6b
	ld b, b                                          ; $70bc: $40
	sbc [hl]                                         ; $70bd: $9e
	ld b, b                                          ; $70be: $40
	ld [hl], a                                       ; $70bf: $77
	cp [hl]                                          ; $70c0: $be
	sbc b                                            ; $70c1: $98
	rst $38                                          ; $70c2: $ff
	rlca                                             ; $70c3: $07
	ld e, $1e                                        ; $70c4: $1e $1e
	rrca                                             ; $70c6: $0f
	rrca                                             ; $70c7: $0f
	add a                                            ; $70c8: $87
	ld [bc], a                                       ; $70c9: $02
	add b                                            ; $70ca: $80
	dec sp                                           ; $70cb: $3b
	jr nz, jr_061_7061                               ; $70cc: $20 $93

	rrca                                             ; $70ce: $0f
	cp $03                                           ; $70cf: $fe $03
	ld a, [$fe07]                                    ; $70d1: $fa $07 $fe
	add a                                            ; $70d4: $87
	or $ff                                           ; $70d5: $f6 $ff
	cp $cb                                           ; $70d7: $fe $cb
	ld [$8002], a                                    ; $70d9: $ea $02 $80
	rra                                              ; $70dc: $1f
	nop                                              ; $70dd: $00
	sbc e                                            ; $70de: $9b
	ccf                                              ; $70df: $3f
	ld [hl], b                                       ; $70e0: $70
	xor a                                            ; $70e1: $af
	rrca                                             ; $70e2: $0f
	rra                                              ; $70e3: $1f
	jr nz, @-$1f                                     ; $70e4: $20 $df

	add b                                            ; $70e6: $80
	sbc h                                            ; $70e7: $9c
	jp nz, $c340                                     ; $70e8: $c2 $40 $c3

	inc de                                           ; $70eb: $13
	ld b, b                                          ; $70ec: $40
	sbc e                                            ; $70ed: $9b
	rra                                              ; $70ee: $1f
	jr jr_061_7100                                   ; $70ef: $18 $0f

	rlca                                             ; $70f1: $07
	inc de                                           ; $70f2: $13
	ld h, b                                          ; $70f3: $60
	sbc h                                            ; $70f4: $9c
	ccf                                              ; $70f5: $3f
	cp $cb                                           ; $70f6: $fe $cb
	ld sp, hl                                        ; $70f8: $f9
	sbc l                                            ; $70f9: $9d
	dec b                                            ; $70fa: $05
	rrca                                             ; $70fb: $0f
	cp $56                                           ; $70fc: $fe $56
	rst SubAFromHL                                          ; $70fe: $d7
	di                                               ; $70ff: $f3

jr_061_7100:
	halt                                             ; $7100: $76
	ei                                               ; $7101: $fb
	db $e4                                           ; $7102: $e4
	sbc e                                            ; $7103: $9b
	rrca                                             ; $7104: $0f
	add hl, bc                                       ; $7105: $09
	ld b, $07                                        ; $7106: $06 $07
	dec de                                           ; $7108: $1b
	ret nz                                           ; $7109: $c0

	inc bc                                           ; $710a: $03
	cp [hl]                                          ; $710b: $be
	ld a, a                                          ; $710c: $7f
	ret nz                                           ; $710d: $c0

	rst SubAFromDE                                          ; $710e: $df
	rrca                                             ; $710f: $0f
	ld a, e                                          ; $7110: $7b
	cp [hl]                                          ; $7111: $be
	rra                                              ; $7112: $1f
	pop bc                                           ; $7113: $c1
	ld l, h                                          ; $7114: $6c
	rst FarCall                                          ; $7115: $f7
	inc de                                           ; $7116: $13
	ret nz                                           ; $7117: $c0

	sbc l                                            ; $7118: $9d
	rlca                                             ; $7119: $07
	rrca                                             ; $711a: $0f
	rra                                              ; $711b: $1f
	ld a, [hl]                                       ; $711c: $7e
	db $dd                                           ; $711d: $dd
	add b                                            ; $711e: $80
	scf                                              ; $711f: $37
	cp [hl]                                          ; $7120: $be
	sub $01                                          ; $7121: $d6 $01
	add b                                            ; $7123: $80
	ld [$fea7], a                                    ; $7124: $ea $a7 $fe
	and a                                            ; $7127: $a7
	rst FarCall                                          ; $7128: $f7
	xor l                                            ; $7129: $ad
	rst SubAFromBC                                          ; $712a: $e7
	sbc l                                            ; $712b: $9d
	rst FarCall                                          ; $712c: $f7
	sbc l                                            ; $712d: $9d
	rst FarCall                                          ; $712e: $f7
	sbc a                                            ; $712f: $9f
	rst $38                                          ; $7130: $ff
	sbc h                                            ; $7131: $9c
	ld l, a                                          ; $7132: $6f
	db $e4                                           ; $7133: $e4
	rst JumpTable                                          ; $7134: $c7
	ret nz                                           ; $7135: $c0

	adc a                                            ; $7136: $8f
	rlca                                             ; $7137: $07
	ld e, $0c                                        ; $7138: $1e $0c
	cp c                                             ; $713a: $b9
	add hl, sp                                       ; $713b: $39
	sub a                                            ; $713c: $97
	add a                                            ; $713d: $87
	call $0687                                       ; $713e: $cd $87 $06
	ld b, h                                          ; $7141: $44
	and e                                            ; $7142: $a3
	add b                                            ; $7143: $80
	ld [bc], a                                       ; $7144: $02
	ret nz                                           ; $7145: $c0

	add b                                            ; $7146: $80
	ret nz                                           ; $7147: $c0

	ldh [$b0], a                                     ; $7148: $e0 $b0
	ldh [hDisp1_SCY], a                                     ; $714a: $e0 $90
	ldh a, [$d0]                                     ; $714c: $f0 $d0
	cp b                                             ; $714e: $b8
	ret z                                            ; $714f: $c8

	cp h                                             ; $7150: $bc
	adc h                                            ; $7151: $8c
	cp [hl]                                          ; $7152: $be
	adc e                                            ; $7153: $8b
	ccf                                              ; $7154: $3f
	ld c, e                                          ; $7155: $4b
	ccf                                              ; $7156: $3f
	dec hl                                           ; $7157: $2b
	ld e, a                                          ; $7158: $5f
	dec bc                                           ; $7159: $0b
	ld e, [hl]                                       ; $715a: $5e
	dec de                                           ; $715b: $1b
	ld c, [hl]                                       ; $715c: $4e
	add hl, bc                                       ; $715d: $09
	ld c, $4b                                        ; $715e: $0e $4b
	ld c, $df                                        ; $7160: $0e $df
	dec bc                                           ; $7162: $0b
	add b                                            ; $7163: $80
	rst AddAOntoHL                                          ; $7164: $ef
	ld e, e                                          ; $7165: $5b
	ld e, e                                          ; $7166: $5b
	ld h, [hl]                                       ; $7167: $66
	db $eb                                           ; $7168: $eb
	halt                                             ; $7169: $76
	ld l, e                                          ; $716a: $6b
	rst FarCall                                          ; $716b: $f7
	ld [hl], e                                       ; $716c: $73
	rst SubAFromDE                                          ; $716d: $df
	ld [hl], c                                       ; $716e: $71
	rst SubAFromDE                                          ; $716f: $df
	ld sp, hl                                        ; $7170: $f9
	rst GetHLinHL                                          ; $7171: $cf
	ld sp, hl                                        ; $7172: $f9
	ld c, a                                          ; $7173: $4f
	db $fc                                           ; $7174: $fc
	ld b, a                                          ; $7175: $47
	cp $03                                           ; $7176: $fe $03
	rst $38                                          ; $7178: $ff
	add c                                            ; $7179: $81
	rst $38                                          ; $717a: $ff
	ret nz                                           ; $717b: $c0

	rst $38                                          ; $717c: $ff
	ret nz                                           ; $717d: $c0

	di                                               ; $717e: $f3
	ret nz                                           ; $717f: $c0

	ld b, b                                          ; $7180: $40
	ret nz                                           ; $7181: $c0

	ld b, d                                          ; $7182: $42
	sub a                                            ; $7183: $97
	ret nz                                           ; $7184: $c0

	add e                                            ; $7185: $83
	add b                                            ; $7186: $80
	rlca                                             ; $7187: $07
	inc b                                            ; $7188: $04
	rrca                                             ; $7189: $0f
	inc b                                            ; $718a: $04
	rlca                                             ; $718b: $07
	or $7f                                           ; $718c: $f6 $7f
	or b                                             ; $718e: $b0
	add b                                            ; $718f: $80
	ldh a, [$e0]                                     ; $7190: $f0 $e0
	ei                                               ; $7192: $fb
	db $fc                                           ; $7193: $fc
	ld c, a                                          ; $7194: $4f
	rst $38                                          ; $7195: $ff
	ld a, a                                          ; $7196: $7f
	ret nz                                           ; $7197: $c0

	cp c                                             ; $7198: $b9
	ret nz                                           ; $7199: $c0

	ldh a, [$80]                                     ; $719a: $f0 $80
	ld [hl], b                                       ; $719c: $70
	add b                                            ; $719d: $80
	ld d, l                                          ; $719e: $55
	xor $56                                          ; $719f: $ee $56
	rst AddAOntoHL                                          ; $71a1: $ef
	ld h, [hl]                                       ; $71a2: $66
	rst $38                                          ; $71a3: $ff
	ld h, [hl]                                       ; $71a4: $66
	rst $38                                          ; $71a5: $ff
	di                                               ; $71a6: $f3
	rst SubAFromDE                                          ; $71a7: $df
	di                                               ; $71a8: $f3
	rst $38                                          ; $71a9: $ff
	ei                                               ; $71aa: $fb
	ld c, [hl]                                       ; $71ab: $4e
	ei                                               ; $71ac: $fb
	xor [hl]                                         ; $71ad: $ae
	rst $38                                          ; $71ae: $ff
	adc l                                            ; $71af: $8d
	add a                                            ; $71b0: $87
	rst $38                                          ; $71b1: $ff
	adc a                                            ; $71b2: $8f
	ld a, [$f95c]                                    ; $71b3: $fa $5c $f9
	ld de, $07f7                                     ; $71b6: $11 $f7 $07
	db $ec                                           ; $71b9: $ec
	rlca                                             ; $71ba: $07
	ld b, $04                                        ; $71bb: $06 $04
	rlca                                             ; $71bd: $07
	ld [bc], a                                       ; $71be: $02
	add b                                            ; $71bf: $80
	nop                                              ; $71c0: $00
	add b                                            ; $71c1: $80
	cp $9e                                           ; $71c2: $fe $9e
	ld bc, $fe7b                                     ; $71c4: $01 $7b $fe
	sub h                                            ; $71c7: $94
	inc bc                                           ; $71c8: $03
	nop                                              ; $71c9: $00
	ld b, $01                                        ; $71ca: $06 $01
	rrca                                             ; $71cc: $0f
	inc bc                                           ; $71cd: $03
	rla                                              ; $71ce: $17
	rrca                                             ; $71cf: $0f
	ld e, a                                          ; $71d0: $5f
	ccf                                              ; $71d1: $3f
	ld a, a                                          ; $71d2: $7f
	sbc $ff                                          ; $71d3: $de $ff
	add b                                            ; $71d5: $80
	ld [hl], a                                       ; $71d6: $77

jr_061_71d7:
	ei                                               ; $71d7: $fb
	db $fd                                           ; $71d8: $fd
	inc bc                                           ; $71d9: $03
	rst $38                                          ; $71da: $ff
	ld bc, $0039                                     ; $71db: $01 $39 $00
	ld b, [hl]                                       ; $71de: $46
	adc c                                            ; $71df: $89
	and d                                            ; $71e0: $a2
	ld c, l                                          ; $71e1: $4d
	add sp, $47                                      ; $71e2: $e8 $47
	ld e, b                                          ; $71e4: $58
	rst SubAFromBC                                          ; $71e5: $e7
	ld a, [hl-]                                      ; $71e6: $3a
	rst SubAFromBC                                          ; $71e7: $e7
	xor d                                            ; $71e8: $aa
	rst FarCall                                          ; $71e9: $f7
	sub c                                            ; $71ea: $91
	rst $38                                          ; $71eb: $ff
	ret                                              ; $71ec: $c9


	ld a, a                                          ; $71ed: $7f
	db $ed                                           ; $71ee: $ed
	ccf                                              ; $71ef: $3f
	push af                                          ; $71f0: $f5
	sbc a                                            ; $71f1: $9f
	rst $38                                          ; $71f2: $ff
	rst GetHLinHL                                          ; $71f3: $cf
	cp $83                                           ; $71f4: $fe $83
	or e                                             ; $71f6: $b3
	cp d                                             ; $71f7: $ba
	add a                                            ; $71f8: $87
	cp [hl]                                          ; $71f9: $be
	add a                                            ; $71fa: $87
	or $8f                                           ; $71fb: $f6 $8f
	cp $0b                                           ; $71fd: $fe $0b
	ld l, d                                          ; $71ff: $6a
	rra                                              ; $7200: $1f
	db $f4                                           ; $7201: $f4
	rra                                              ; $7202: $1f
	db $dd                                           ; $7203: $dd
	ld a, $f5                                        ; $7204: $3e $f5
	ld a, $b5                                        ; $7206: $3e $b5
	ld a, [hl]                                       ; $7208: $7e
	ld [hl], l                                       ; $7209: $75
	cp $d6                                           ; $720a: $fe $d6
	db $fc                                           ; $720c: $fc
	sub $fc                                          ; $720d: $d6 $fc
	ret c                                            ; $720f: $d8

	db $fc                                           ; $7210: $fc
	ld e, b                                          ; $7211: $58
	ld a, e                                          ; $7212: $7b
	cp $95                                           ; $7213: $fe $95
	ld c, h                                          ; $7215: $4c
	ld hl, sp+$6c                                    ; $7216: $f8 $6c
	ld hl, sp-$53                                    ; $7218: $f8 $ad
	ld hl, sp-$03                                    ; $721a: $f8 $fd
	ld hl, sp-$63                                    ; $721c: $f8 $9d
	sbc c                                            ; $721e: $99
	ccf                                              ; $721f: $3f
	nop                                              ; $7220: $00
	sub l                                            ; $7221: $95
	add a                                            ; $7222: $87
	nop                                              ; $7223: $00
	rrca                                             ; $7224: $0f
	inc bc                                           ; $7225: $03
	cp [hl]                                          ; $7226: $be
	inc c                                            ; $7227: $0c
	cp c                                             ; $7228: $b9
	cp c                                             ; $7229: $b9
	res 1, a                                         ; $722a: $cb $8f
	ld [hl], a                                       ; $722c: $77
	nop                                              ; $722d: $00
	dec sp                                           ; $722e: $3b
	jr nz, @-$64                                     ; $722f: $20 $9a

	ld bc, $00ff                                     ; $7231: $01 $ff $00
	rst $38                                          ; $7234: $ff
	add b                                            ; $7235: $80

jr_061_7236:
	ld [hl], a                                       ; $7236: $77
	jr nz, jr_061_71d7                               ; $7237: $20 $9e

	jp nz, $207b                                     ; $7239: $c2 $7b $20

	ld b, e                                          ; $723c: $43

jr_061_723d:
	ld b, b                                          ; $723d: $40
	sbc [hl]                                         ; $723e: $9e
	add [hl]                                         ; $723f: $86
	ld a, e                                          ; $7240: $7b
	nop                                              ; $7241: $00
	sub h                                            ; $7242: $94
	ld b, a                                          ; $7243: $47
	db $fc                                           ; $7244: $fc
	ld [$19fb], sp                                   ; $7245: $08 $fb $19
	rst AddAOntoHL                                          ; $7248: $ef
	rlca                                             ; $7249: $07
	inc b                                            ; $724a: $04
	ld b, $07                                        ; $724b: $06 $07
	ld [bc], a                                       ; $724d: $02
	dec sp                                           ; $724e: $3b
	ld h, b                                          ; $724f: $60
	sbc b                                            ; $7250: $98
	rra                                              ; $7251: $1f
	rst $38                                          ; $7252: $ff
	adc a                                            ; $7253: $8f
	cp $c3                                           ; $7254: $fe $c3
	ld a, [$6ff7]                                    ; $7256: $fa $f7 $6f
	ld h, b                                          ; $7259: $60
	ld e, e                                          ; $725a: $5b
	add b                                            ; $725b: $80
	sbc d                                            ; $725c: $9a
	sbc h                                            ; $725d: $9c
	rst $38                                          ; $725e: $ff
	adc a                                            ; $725f: $8f
	ld a, a                                          ; $7260: $7f
	db $f4                                           ; $7261: $f4
	ld [hl], e                                       ; $7262: $73
	add b                                            ; $7263: $80
	sub e                                            ; $7264: $93
	nop                                              ; $7265: $00
	sbc a                                            ; $7266: $9f
	nop                                              ; $7267: $00
	cp a                                             ; $7268: $bf
	add b                                            ; $7269: $80
	rst $38                                          ; $726a: $ff
	add a                                            ; $726b: $87
	ld a, $7e                                        ; $726c: $3e $7e
	xor a                                            ; $726e: $af
	rrca                                             ; $726f: $0f
	rst JumpTable                                          ; $7270: $c7
	ld [bc], a                                       ; $7271: $02
	add b                                            ; $7272: $80
	ld e, e                                          ; $7273: $5b
	ld h, b                                          ; $7274: $60
	sbc [hl]                                         ; $7275: $9e
	rst GetHLinHL                                          ; $7276: $cf
	ld h, e                                          ; $7277: $63
	ld h, b                                          ; $7278: $60
	sbc l                                            ; $7279: $9d
	nop                                              ; $727a: $00
	di                                               ; $727b: $f3
	ld a, d                                          ; $727c: $7a
	sub [hl]                                         ; $727d: $96
	ld a, a                                          ; $727e: $7f
	ld h, b                                          ; $727f: $60
	sbc h                                            ; $7280: $9c
	jp $8780                                         ; $7281: $c3 $80 $87


	ld [bc], a                                       ; $7284: $02
	add b                                            ; $7285: $80
	ld h, e                                          ; $7286: $63
	ld b, b                                          ; $7287: $40
	sbc h                                            ; $7288: $9c
	sbc $fb                                          ; $7289: $de $fb
	ld a, a                                          ; $728b: $7f
	ld l, e                                          ; $728c: $6b
	ld b, b                                          ; $728d: $40
	sbc [hl]                                         ; $728e: $9e
	ld b, b                                          ; $728f: $40
	ld [hl], a                                       ; $7290: $77
	cp [hl]                                          ; $7291: $be
	sbc b                                            ; $7292: $98
	rst $38                                          ; $7293: $ff
	rlca                                             ; $7294: $07
	ld e, $1e                                        ; $7295: $1e $1e
	rrca                                             ; $7297: $0f
	rrca                                             ; $7298: $0f
	add a                                            ; $7299: $87

jr_061_729a:
	ld [bc], a                                       ; $729a: $02
	add b                                            ; $729b: $80
	ld d, e                                          ; $729c: $53
	jr nz, jr_061_723d                               ; $729d: $20 $9e

	rst $38                                          ; $729f: $ff
	ld [hl], e                                       ; $72a0: $73
	jr nz, jr_061_7236                               ; $72a1: $20 $93

	rrca                                             ; $72a3: $0f
	cp $03                                           ; $72a4: $fe $03
	ld a, [$fe07]                                    ; $72a6: $fa $07 $fe
	add a                                            ; $72a9: $87
	or $ff                                           ; $72aa: $f6 $ff
	cp $cb                                           ; $72ac: $fe $cb
	ld [$8002], a                                    ; $72ae: $ea $02 $80
	rra                                              ; $72b1: $1f
	nop                                              ; $72b2: $00
	sbc e                                            ; $72b3: $9b
	ccf                                              ; $72b4: $3f
	ld [hl], b                                       ; $72b5: $70
	xor a                                            ; $72b6: $af
	rrca                                             ; $72b7: $0f
	rra                                              ; $72b8: $1f
	jr nz, jr_061_729a                               ; $72b9: $20 $df

	add b                                            ; $72bb: $80
	sbc h                                            ; $72bc: $9c
	jp nz, $c340                                     ; $72bd: $c2 $40 $c3

	inc de                                           ; $72c0: $13
	ld b, b                                          ; $72c1: $40
	sbc e                                            ; $72c2: $9b
	rra                                              ; $72c3: $1f
	jr jr_061_72d5                                   ; $72c4: $18 $0f

	rlca                                             ; $72c6: $07
	inc de                                           ; $72c7: $13
	ld h, b                                          ; $72c8: $60
	sbc h                                            ; $72c9: $9c
	ccf                                              ; $72ca: $3f
	cp $cb                                           ; $72cb: $fe $cb
	ld sp, hl                                        ; $72cd: $f9
	sbc l                                            ; $72ce: $9d
	dec b                                            ; $72cf: $05
	rrca                                             ; $72d0: $0f
	cp $56                                           ; $72d1: $fe $56
	rst SubAFromHL                                          ; $72d3: $d7
	pop af                                           ; $72d4: $f1

jr_061_72d5:
	halt                                             ; $72d5: $76
	ld sp, hl                                        ; $72d6: $f9
	and $9b                                          ; $72d7: $e6 $9b
	rlca                                             ; $72d9: $07
	inc c                                            ; $72da: $0c
	rlca                                             ; $72db: $07
	rlca                                             ; $72dc: $07
	dec bc                                           ; $72dd: $0b
	ret nz                                           ; $72de: $c0

	inc de                                           ; $72df: $13
	cp [hl]                                          ; $72e0: $be
	ld [hl], a                                       ; $72e1: $77
	ret nz                                           ; $72e2: $c0

	sbc [hl]                                         ; $72e3: $9e
	inc bc                                           ; $72e4: $03
	dec de                                           ; $72e5: $1b
	ret nz                                           ; $72e6: $c0

	ld a, l                                          ; $72e7: $7d
	ld sp, hl                                        ; $72e8: $f9
	ld a, a                                          ; $72e9: $7f
	cp $17                                           ; $72ea: $fe $17
	cp [hl]                                          ; $72ec: $be
	ld a, e                                          ; $72ed: $7b
	ret nz                                           ; $72ee: $c0

	ld a, a                                          ; $72ef: $7f
	inc de                                           ; $72f0: $13
	dec de                                           ; $72f1: $1b
	cp [hl]                                          ; $72f2: $be
	sbc $80                                          ; $72f3: $de $80
	inc sp                                           ; $72f5: $33
	cp [hl]                                          ; $72f6: $be
	ret nz                                           ; $72f7: $c0

	add c                                            ; $72f8: $81
	add b                                            ; $72f9: $80
	ld [$f7fe], a                                    ; $72fa: $ea $fe $f7
	rst SubAFromBC                                          ; $72fd: $e7
	rst FarCall                                          ; $72fe: $f7
	rst FarCall                                          ; $72ff: $f7
	rst $38                                          ; $7300: $ff
	ld l, a                                          ; $7301: $6f
	and a                                            ; $7302: $a7
	and a                                            ; $7303: $a7
	xor l                                            ; $7304: $ad
	sbc l                                            ; $7305: $9d
	sbc l                                            ; $7306: $9d
	cp h                                             ; $7307: $bc
	adc a                                            ; $7308: $8f
	call nz, $8fc7                                   ; $7309: $c4 $c7 $8f
	ld e, $b9                                        ; $730c: $1e $b9
	sub a                                            ; $730e: $97
	call $a306                                       ; $730f: $cd $06 $a3
	ret nz                                           ; $7312: $c0

	rlca                                             ; $7313: $07
	inc c                                            ; $7314: $0c
	add hl, sp                                       ; $7315: $39
	sub a                                            ; $7316: $97
	add a                                            ; $7317: $87
	ld b, h                                          ; $7318: $44
	add b                                            ; $7319: $80
	ld [bc], a                                       ; $731a: $02
	ret nz                                           ; $731b: $c0

	ret nz                                           ; $731c: $c0

	or b                                             ; $731d: $b0
	sub b                                            ; $731e: $90
	ret nc                                           ; $731f: $d0

	ret z                                            ; $7320: $c8

	adc h                                            ; $7321: $8c
	adc e                                            ; $7322: $8b
	add b                                            ; $7323: $80
	ldh [$e0], a                                     ; $7324: $e0 $e0
	ldh a, [$b8]                                     ; $7326: $f0 $b8
	cp h                                             ; $7328: $bc
	cp [hl]                                          ; $7329: $be
	ccf                                              ; $732a: $3f
	ld c, e                                          ; $732b: $4b
	dec hl                                           ; $732c: $2b
	dec bc                                           ; $732d: $0b
	dec de                                           ; $732e: $1b
	add hl, bc                                       ; $732f: $09
	ld c, e                                          ; $7330: $4b
	rst SubAFromDE                                          ; $7331: $df
	rst AddAOntoHL                                          ; $7332: $ef
	ccf                                              ; $7333: $3f
	ld e, a                                          ; $7334: $5f
	ld e, [hl]                                       ; $7335: $5e
	ld c, [hl]                                       ; $7336: $4e
	ld c, $0e                                        ; $7337: $0e $0e
	adc h                                            ; $7339: $8c
	dec bc                                           ; $733a: $0b
	ld e, e                                          ; $733b: $5b
	ld e, e                                          ; $733c: $5b
	db $eb                                           ; $733d: $eb
	ld l, e                                          ; $733e: $6b
	ld [hl], e                                       ; $733f: $73
	ld [hl], c                                       ; $7340: $71
	ld sp, hl                                        ; $7341: $f9
	ld sp, hl                                        ; $7342: $f9
	db $fc                                           ; $7343: $fc
	ld h, [hl]                                       ; $7344: $66
	halt                                             ; $7345: $76
	rst FarCall                                          ; $7346: $f7
	rst SubAFromDE                                          ; $7347: $df
	rst SubAFromDE                                          ; $7348: $df
	rst GetHLinHL                                          ; $7349: $cf
	ld c, a                                          ; $734a: $4f
	rst JumpTable                                          ; $734b: $c7
	cp $de                                           ; $734c: $fe $de
	rst $38                                          ; $734e: $ff
	sbc c                                            ; $734f: $99
	di                                               ; $7350: $f3
	ld b, b                                          ; $7351: $40
	ld b, d                                          ; $7352: $42
	add e                                            ; $7353: $83
	inc bc                                           ; $7354: $03
	add c                                            ; $7355: $81
	call c, $9bc0                                    ; $7356: $dc $c0 $9b
	add b                                            ; $7359: $80
	rlca                                             ; $735a: $07
	rrca                                             ; $735b: $0f
	rlca                                             ; $735c: $07
	db $fc                                           ; $735d: $fc
	rst SubAFromDE                                          ; $735e: $df
	inc b                                            ; $735f: $04
	ei                                               ; $7360: $fb
	sub e                                            ; $7361: $93
	ret nz                                           ; $7362: $c0

	ldh a, [$fb]                                     ; $7363: $f0 $fb
	ld c, a                                          ; $7365: $4f
	ld a, a                                          ; $7366: $7f
	cp c                                             ; $7367: $b9
	ldh a, [rSVBK]                                   ; $7368: $f0 $70
	add b                                            ; $736a: $80
	ldh [$fc], a                                     ; $736b: $e0 $fc
	rst $38                                          ; $736d: $ff
	ld a, e                                          ; $736e: $7b
	pop hl                                           ; $736f: $e1
	add b                                            ; $7370: $80
	add b                                            ; $7371: $80
	ld d, l                                          ; $7372: $55
	ld d, [hl]                                       ; $7373: $56
	ld h, [hl]                                       ; $7374: $66
	ld h, [hl]                                       ; $7375: $66
	di                                               ; $7376: $f3
	di                                               ; $7377: $f3
	ei                                               ; $7378: $fb
	ei                                               ; $7379: $fb
	xor $ef                                          ; $737a: $ee $ef
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst SubAFromDE                                          ; $737e: $df
	rst SubAFromDE                                          ; $737f: $df
	ld l, [hl]                                       ; $7380: $6e
	xor [hl]                                         ; $7381: $ae
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	ld a, [$f7f9]                                    ; $7384: $fa $f9 $f7
	db $ec                                           ; $7387: $ec
	ld b, $07                                        ; $7388: $06 $07
	add a                                            ; $738a: $87
	adc a                                            ; $738b: $8f
	ld e, h                                          ; $738c: $5c
	ld de, $0707                                     ; $738d: $11 $07 $07
	sub l                                            ; $7390: $95
	inc b                                            ; $7391: $04
	ld [bc], a                                       ; $7392: $02
	add b                                            ; $7393: $80
	add b                                            ; $7394: $80
	nop                                              ; $7395: $00
	ld bc, $0301                                     ; $7396: $01 $01 $03
	ld b, $0f                                        ; $7399: $06 $0f
	ei                                               ; $739b: $fb
	ld a, a                                          ; $739c: $7f
	or $80                                           ; $739d: $f6 $80
	rla                                              ; $739f: $17
	ld e, a                                          ; $73a0: $5f
	ld a, a                                          ; $73a1: $7f
	rst $38                                          ; $73a2: $ff
	ld [hl], a                                       ; $73a3: $77
	db $fd                                           ; $73a4: $fd
	rst $38                                          ; $73a5: $ff
	add hl, sp                                       ; $73a6: $39
	rrca                                             ; $73a7: $0f
	ccf                                              ; $73a8: $3f
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	ei                                               ; $73ab: $fb
	inc bc                                           ; $73ac: $03
	ld bc, $4600                                     ; $73ad: $01 $00 $46
	and d                                            ; $73b0: $a2
	add sp, $58                                      ; $73b1: $e8 $58
	ld a, [hl-]                                      ; $73b3: $3a
	xor d                                            ; $73b4: $aa
	sub c                                            ; $73b5: $91
	ret                                              ; $73b6: $c9


	adc c                                            ; $73b7: $89
	ld c, l                                          ; $73b8: $4d
	ld b, a                                          ; $73b9: $47
	rst SubAFromBC                                          ; $73ba: $e7
	rst SubAFromBC                                          ; $73bb: $e7
	rst FarCall                                          ; $73bc: $f7
	rst $38                                          ; $73bd: $ff
	add b                                            ; $73be: $80
	ld a, a                                          ; $73bf: $7f
	db $ed                                           ; $73c0: $ed
	push af                                          ; $73c1: $f5
	rst $38                                          ; $73c2: $ff
	cp $ba                                           ; $73c3: $fe $ba
	cp [hl]                                          ; $73c5: $be
	or $fe                                           ; $73c6: $f6 $fe
	ccf                                              ; $73c8: $3f
	sbc a                                            ; $73c9: $9f
	rst GetHLinHL                                          ; $73ca: $cf
	or e                                             ; $73cb: $b3
	and a                                            ; $73cc: $a7
	add a                                            ; $73cd: $87
	adc a                                            ; $73ce: $8f
	dec bc                                           ; $73cf: $0b
	ld l, d                                          ; $73d0: $6a
	db $f4                                           ; $73d1: $f4
	db $dd                                           ; $73d2: $dd
	push af                                          ; $73d3: $f5
	or l                                             ; $73d4: $b5
	ld [hl], l                                       ; $73d5: $75
	sub $d6                                          ; $73d6: $d6 $d6
	rra                                              ; $73d8: $1f
	rra                                              ; $73d9: $1f
	ld a, $3e                                        ; $73da: $3e $3e
	ld a, [hl]                                       ; $73dc: $7e
	cp $df                                           ; $73dd: $fe $df
	db $fc                                           ; $73df: $fc
	sub a                                            ; $73e0: $97
	ret c                                            ; $73e1: $d8

	ld e, b                                          ; $73e2: $58
	ld e, b                                          ; $73e3: $58
	ld c, h                                          ; $73e4: $4c
	ld l, h                                          ; $73e5: $6c
	xor l                                            ; $73e6: $ad
	db $fd                                           ; $73e7: $fd
	sbc l                                            ; $73e8: $9d
	sbc $fc                                          ; $73e9: $de $fc
	db $dd                                           ; $73eb: $dd
	ld hl, sp-$62                                    ; $73ec: $f8 $9e
	sbc c                                            ; $73ee: $99
	ld b, e                                          ; $73ef: $43
	nop                                              ; $73f0: $00
	sbc d                                            ; $73f1: $9a
	add a                                            ; $73f2: $87
	rrca                                             ; $73f3: $0f
	cp h                                             ; $73f4: $bc
	cp a                                             ; $73f5: $bf
	db $dd                                           ; $73f6: $dd
	ld a, e                                          ; $73f7: $7b
	nop                                              ; $73f8: $00
	sbc b                                            ; $73f9: $98
	nop                                              ; $73fa: $00
	rlca                                             ; $73fb: $07
	inc c                                            ; $73fc: $0c
	cp a                                             ; $73fd: $bf
	sub a                                            ; $73fe: $97
	ld b, h                                          ; $73ff: $44
	ld [bc], a                                       ; $7400: $02
	cpl                                              ; $7401: $2f
	jr nz, @-$64                                     ; $7402: $20 $9a

	jp nz, $0383                                     ; $7404: $c2 $83 $03

	ld bc, $7380                                     ; $7407: $01 $80 $73
	jr nz, @+$41                                     ; $740a: $20 $3f

	ld b, b                                          ; $740c: $40
	ld a, a                                          ; $740d: $7f
	add b                                            ; $740e: $80
	ld a, a                                          ; $740f: $7f
	ld b, b                                          ; $7410: $40
	sub l                                            ; $7411: $95
	inc b                                            ; $7412: $04
	rlca                                             ; $7413: $07
	add [hl]                                         ; $7414: $86
	add c                                            ; $7415: $81
	ld c, a                                          ; $7416: $4f

jr_061_7417:
	inc e                                            ; $7417: $1c
	rla                                              ; $7418: $17

jr_061_7419:
	rlca                                             ; $7419: $07
	ld b, $02                                        ; $741a: $06 $02
	scf                                              ; $741c: $37
	ld h, b                                          ; $741d: $60
	sbc [hl]                                         ; $741e: $9e
	ld a, [$6077]                                    ; $741f: $fa $77 $60
	sbc b                                            ; $7422: $98
	rra                                              ; $7423: $1f
	adc a                                            ; $7424: $8f
	jp $a7f7                                         ; $7425: $c3 $f7 $a7


	adc a                                            ; $7428: $8f
	dec bc                                           ; $7429: $0b
	ld d, e                                          ; $742a: $53
	add b                                            ; $742b: $80
	sbc h                                            ; $742c: $9c
	sbc h                                            ; $742d: $9c
	cp h                                             ; $742e: $bc
	rst JumpTable                                          ; $742f: $c7
	ld a, e                                          ; $7430: $7b
	add b                                            ; $7431: $80
	rst SubAFromDE                                          ; $7432: $df
	cp a                                             ; $7433: $bf
	sbc e                                            ; $7434: $9b
	rst $38                                          ; $7435: $ff
	dec a                                            ; $7436: $3d
	xor a                                            ; $7437: $af
	ret nz                                           ; $7438: $c0

	cp $9a                                           ; $7439: $fe $9a
	add b                                            ; $743b: $80
	add a                                            ; $743c: $87
	ld a, l                                          ; $743d: $7d
	rrca                                             ; $743e: $0f
	rst JumpTable                                          ; $743f: $c7
	ld [bc], a                                       ; $7440: $02
	add b                                            ; $7441: $80
	ld d, e                                          ; $7442: $53
	ld h, b                                          ; $7443: $60
	sbc [hl]                                         ; $7444: $9e
	rlca                                             ; $7445: $07
	ld [hl], e                                       ; $7446: $73
	ld h, b                                          ; $7447: $60
	sbc d                                            ; $7448: $9a
	ret nz                                           ; $7449: $c0

	jp nz, $c3c3                                     ; $744a: $c2 $c3 $c3

	ld bc, $bf77                                     ; $744d: $01 $77 $bf
	ld b, a                                          ; $7450: $47
	ld h, b                                          ; $7451: $60
	sbc [hl]                                         ; $7452: $9e
	ld e, [hl]                                       ; $7453: $5e
	ld [hl], a                                       ; $7454: $77
	ld h, b                                          ; $7455: $60
	sbc $ff                                          ; $7456: $de $ff
	sub h                                            ; $7458: $94
	dec e                                            ; $7459: $1d
	rrca                                             ; $745a: $0f
	add [hl]                                         ; $745b: $86
	add c                                            ; $745c: $81
	ld b, b                                          ; $745d: $40
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	rlca                                             ; $7460: $07
	dec e                                            ; $7461: $1d
	rlca                                             ; $7462: $07
	add e                                            ; $7463: $83
	ld [bc], a                                       ; $7464: $02
	and b                                            ; $7465: $a0
	dec sp                                           ; $7466: $3b
	ld b, b                                          ; $7467: $40
	sbc [hl]                                         ; $7468: $9e
	cp $77                                           ; $7469: $fe $77
	ld b, b                                          ; $746b: $40
	sbc b                                            ; $746c: $98
	rrca                                             ; $746d: $0f
	inc bc                                           ; $746e: $03
	rlca                                             ; $746f: $07
	add a                                            ; $7470: $87
	rst $38                                          ; $7471: $ff
	set 5, d                                         ; $7472: $cb $ea
	ld [bc], a                                       ; $7474: $02
	and b                                            ; $7475: $a0
	scf                                              ; $7476: $37
	jr nz, jr_061_7417                               ; $7477: $20 $9e

	ccf                                              ; $7479: $3f
	ld l, a                                          ; $747a: $6f
	jr nz, jr_061_7419                               ; $747b: $20 $9c

	adc a                                            ; $747d: $8f
	ld [hl], b                                       ; $747e: $70
	rrca                                             ; $747f: $0f
	inc de                                           ; $7480: $13
	ld b, b                                          ; $7481: $40
	sbc l                                            ; $7482: $9d
	nop                                              ; $7483: $00
	ld b, b                                          ; $7484: $40
	dec hl                                           ; $7485: $2b
	ld b, b                                          ; $7486: $40
	ld a, a                                          ; $7487: $7f
	add e                                            ; $7488: $83
	ld [hl], e                                       ; $7489: $73
	ld b, b                                          ; $748a: $40
	sbc h                                            ; $748b: $9c
	inc bc                                           ; $748c: $03
	jr jr_061_7496                                   ; $748d: $18 $07

	inc de                                           ; $748f: $13
	ld h, b                                          ; $7490: $60
	sbc h                                            ; $7491: $9c
	rst JumpTable                                          ; $7492: $c7
	ccf                                              ; $7493: $3f
	set 6, l                                         ; $7494: $cb $f5

jr_061_7496:
	sbc l                                            ; $7496: $9d
	dec bc                                           ; $7497: $0b
	ld bc, $746d                                     ; $7498: $01 $6d $74
	add sp, $7e                                      ; $749b: $e8 $7e
	db $f4                                           ; $749d: $f4
	db $ec                                           ; $749e: $ec
	ld h, a                                          ; $749f: $67
	jp z, $0f9e                                      ; $74a0: $ca $9e $0f

	inc bc                                           ; $74a3: $03
	ret nz                                           ; $74a4: $c0

	dec hl                                           ; $74a5: $2b
	ret nz                                           ; $74a6: $c0

	ld l, e                                          ; $74a7: $6b
	ret                                              ; $74a8: $c9


	ld a, h                                          ; $74a9: $7c
	push af                                          ; $74aa: $f5
	inc bc                                           ; $74ab: $03
	ret nz                                           ; $74ac: $c0

	dec hl                                           ; $74ad: $2b
	ret nz                                           ; $74ae: $c0

	ld l, a                                          ; $74af: $6f
	ret z                                            ; $74b0: $c8

	rst SubAFromDE                                          ; $74b1: $df
	rrca                                             ; $74b2: $0f
	rlca                                             ; $74b3: $07
	ret nz                                           ; $74b4: $c0

	ccf                                              ; $74b5: $3f
	cp a                                             ; $74b6: $bf
	add sp, -$7e                                     ; $74b7: $e8 $82
	ldh a, [$dd]                                     ; $74b9: $f0 $dd
	ld bc, $009c                                     ; $74bb: $01 $9c $00
	inc bc                                           ; $74be: $03
	inc bc                                           ; $74bf: $03
	ld [hl], e                                       ; $74c0: $73
	ld hl, sp-$66                                    ; $74c1: $f8 $9a
	ld bc, $0202                                     ; $74c3: $01 $02 $02
	inc bc                                           ; $74c6: $03
	inc bc                                           ; $74c7: $03
	call c, $9e02                                    ; $74c8: $dc $02 $9e
	nop                                              ; $74cb: $00
	ld [hl], a                                       ; $74cc: $77
	or $de                                           ; $74cd: $f6 $de
	inc bc                                           ; $74cf: $03
	reti                                             ; $74d0: $d9


	ld bc, $e16f                                     ; $74d1: $01 $6f $e1
	ld l, a                                          ; $74d4: $6f
	sbc $df                                          ; $74d5: $de $df
	ld bc, $05df                                     ; $74d7: $01 $df $05
	sbc $03                                          ; $74da: $de $03
	sbc $02                                          ; $74dc: $de $02
	rst SubAFromDE                                          ; $74de: $df
	ld b, $80                                        ; $74df: $06 $80
	inc b                                            ; $74e1: $04
	inc bc                                           ; $74e2: $03
	ld [bc], a                                       ; $74e3: $02
	ld a, [bc]                                       ; $74e4: $0a
	ld a, [bc]                                       ; $74e5: $0a
	ld c, $07                                        ; $74e6: $0e $07
	dec d                                            ; $74e8: $15
	dec d                                            ; $74e9: $15
	inc b                                            ; $74ea: $04
	dec b                                            ; $74eb: $05
	dec c                                            ; $74ec: $0d
	dec c                                            ; $74ed: $0d
	add hl, bc                                       ; $74ee: $09
	ld [$1a1a], sp                                   ; $74ef: $08 $1a $1a
	rla                                              ; $74f2: $17
	rra                                              ; $74f3: $1f
	ld l, $2a                                        ; $74f4: $2e $2a
	ld a, [hl+]                                      ; $74f6: $2a
	ld a, [de]                                       ; $74f7: $1a
	ld d, $55                                        ; $74f8: $16 $55
	jr jr_061_750c                                   ; $74fa: $18 $10

	ld sp, $3535                                     ; $74fc: $31 $35 $35
	dec h                                            ; $74ff: $25
	sub c                                            ; $7500: $91
	add hl, hl                                       ; $7501: $29
	ld l, d                                          ; $7502: $6a
	ld d, l                                          ; $7503: $55
	ld [hl], l                                       ; $7504: $75
	ld l, l                                          ; $7505: $6d
	ld l, l                                          ; $7506: $6d
	jp z, $9a8a                                      ; $7507: $ca $8a $9a

	sbc d                                            ; $750a: $9a
	ld l, d                                          ; $750b: $6a

jr_061_750c:
	ld c, d                                          ; $750c: $4a
	ld d, d                                          ; $750d: $52
	ld d, d                                          ; $750e: $52
	db $dd                                           ; $750f: $dd
	push af                                          ; $7510: $f5
	db $eb                                           ; $7511: $eb
	sbc l                                            ; $7512: $9d
	inc bc                                           ; $7513: $03
	inc b                                            ; $7514: $04
	ld l, e                                          ; $7515: $6b
	ld hl, sp-$80                                    ; $7516: $f8 $80
	rlca                                             ; $7518: $07
	add hl, bc                                       ; $7519: $09
	rla                                              ; $751a: $17
	inc l                                            ; $751b: $2c
	inc sp                                           ; $751c: $33
	ld h, [hl]                                       ; $751d: $66
	ld c, l                                          ; $751e: $4d
	sbc e                                            ; $751f: $9b
	or [hl]                                          ; $7520: $b6
	ld c, $18                                        ; $7521: $0e $18
	inc sp                                           ; $7523: $33
	inc l                                            ; $7524: $2c
	ld e, c                                          ; $7525: $59
	ld [hl], d                                       ; $7526: $72
	db $e4                                           ; $7527: $e4
	ret                                              ; $7528: $c9


	dec de                                           ; $7529: $1b
	ld h, l                                          ; $752a: $65
	dec d                                            ; $752b: $15
	call $8baa                                       ; $752c: $cd $aa $8b
	dec de                                           ; $752f: $1b
	ld d, $c1                                        ; $7530: $16 $c1
	sub e                                            ; $7532: $93
	and e                                            ; $7533: $a3
	inc hl                                           ; $7534: $23
	ld b, a                                          ; $7535: $47
	ld b, [hl]                                       ; $7536: $46
	adc d                                            ; $7537: $8a
	rst JumpTable                                          ; $7538: $c7
	bit 6, [hl]                                      ; $7539: $cb $76
	ld [hl], a                                       ; $753b: $77
	ld l, a                                          ; $753c: $6f
	ld l, d                                          ; $753d: $6a
	ld l, d                                          ; $753e: $6a
	ld l, e                                          ; $753f: $6b
	ld l, e                                          ; $7540: $6b
	ld l, d                                          ; $7541: $6a
	adc e                                            ; $7542: $8b
	adc e                                            ; $7543: $8b
	sub d                                            ; $7544: $92
	sub a                                            ; $7545: $97
	sub a                                            ; $7546: $97
	sub l                                            ; $7547: $95
	sub l                                            ; $7548: $95
	sub a                                            ; $7549: $97
	ld e, d                                          ; $754a: $5a
	ld e, d                                          ; $754b: $5a
	ld d, [hl]                                       ; $754c: $56
	db $dd                                           ; $754d: $dd
	sub $9b                                          ; $754e: $d6 $9b
	or d                                             ; $7550: $b2
	and a                                            ; $7551: $a7
	and a                                            ; $7552: $a7
	xor e                                            ; $7553: $ab
	db $dd                                           ; $7554: $dd
	dec hl                                           ; $7555: $2b
	sub l                                            ; $7556: $95
	ld c, a                                          ; $7557: $4f
	or d                                             ; $7558: $b2
	xor a                                            ; $7559: $af
	xor l                                            ; $755a: $ad
	xor l                                            ; $755b: $ad
	ld l, l                                          ; $755c: $6d
	ld h, l                                          ; $755d: $65
	ld d, h                                          ; $755e: $54
	inc d                                            ; $755f: $14
	ld c, a                                          ; $7560: $4f
	sbc $56                                          ; $7561: $de $56
	sub c                                            ; $7563: $91
	sub [hl]                                         ; $7564: $96
	sbc [hl]                                         ; $7565: $9e
	xor [hl]                                         ; $7566: $ae
	xor [hl]                                         ; $7567: $ae
	inc e                                            ; $7568: $1c
	call z, $35ac                                    ; $7569: $cc $ac $35
	dec d                                            ; $756c: $15

Jump_061_756d:
	sub l                                            ; $756d: $95
	ld l, a                                          ; $756e: $6f
	ld l, $ae                                        ; $756f: $2e $ae
	ld a, $dd                                        ; $7571: $3e $dd
	ld e, [hl]                                       ; $7573: $5e
	sub e                                            ; $7574: $93
	cp [hl]                                          ; $7575: $be
	cp a                                             ; $7576: $bf
	ld l, $6f                                        ; $7577: $2e $6f
	push de                                          ; $7579: $d5
	ld d, l                                          ; $757a: $55
	ld d, h                                          ; $757b: $54
	ld d, h                                          ; $757c: $54
	call nc, $bf54                                   ; $757d: $d4 $54 $bf
	cp a                                             ; $7580: $bf
	call c, $997f                                    ; $7581: $dc $7f $99
	rst $38                                          ; $7584: $ff
	sub h                                            ; $7585: $94
	sub [hl]                                         ; $7586: $96
	sub d                                            ; $7587: $92
	sub d                                            ; $7588: $92
	sub [hl]                                         ; $7589: $96
	sbc $97                                          ; $758a: $de $97
	db $dd                                           ; $758c: $dd
	rst $38                                          ; $758d: $ff
	db $dd                                           ; $758e: $dd
	ei                                               ; $758f: $fb
	db $fd                                           ; $7590: $fd
	sbc e                                            ; $7591: $9b
	inc b                                            ; $7592: $04
	ld [$1219], sp                                   ; $7593: $08 $19 $12
	ld l, e                                          ; $7596: $6b
	ld hl, sp-$80                                    ; $7597: $f8 $80
	ld a, [de]                                       ; $7599: $1a
	inc d                                            ; $759a: $14
	inc d                                            ; $759b: $14
	ld a, [bc]                                       ; $759c: $0a
	rrca                                             ; $759d: $0f
	ld sp, $61de                                     ; $759e: $31 $de $61
	rra                                              ; $75a1: $1f
	ld e, $1e                                        ; $75a2: $1e $1e
	ld c, $0f                                        ; $75a4: $0e $0f
	ccf                                              ; $75a6: $3f
	pop hl                                           ; $75a7: $e1
	sbc a                                            ; $75a8: $9f
	db $e3                                           ; $75a9: $e3
	adc a                                            ; $75aa: $8f
	rst $38                                          ; $75ab: $ff
	cp $f3                                           ; $75ac: $fe $f3
	db $fc                                           ; $75ae: $fc
	rst JumpTable                                          ; $75af: $c7
	db $e3                                           ; $75b0: $e3
	or $06                                           ; $75b1: $f6 $06
	add hl, bc                                       ; $75b3: $09
	rra                                              ; $75b4: $1f
	ccf                                              ; $75b5: $3f
	ld [hl], a                                       ; $75b6: $77
	ld l, e                                          ; $75b7: $6b
	adc l                                            ; $75b8: $8d
	sub [hl]                                         ; $75b9: $96
	db $ec                                           ; $75ba: $ec
	ld a, l                                          ; $75bb: $7d
	sbc e                                            ; $75bc: $9b
	ld [hl], a                                       ; $75bd: $77
	and [hl]                                         ; $75be: $a6
	ld l, h                                          ; $75bf: $6c
	call $d3d3                                       ; $75c0: $cd $d3 $d3
	ld hl, sp-$10                                    ; $75c3: $f8 $f0
	ldh [$e0], a                                     ; $75c5: $e0 $e0
	ld b, b                                          ; $75c7: $40
	ld b, b                                          ; $75c8: $40
	ret nz                                           ; $75c9: $c0

	add b                                            ; $75ca: $80
	ldh [$c1], a                                     ; $75cb: $e0 $c1
	sbc [hl]                                         ; $75cd: $9e
	ld [hl], b                                       ; $75ce: $70
	ld a, e                                          ; $75cf: $7b
	cp b                                             ; $75d0: $b8
	sbc [hl]                                         ; $75d1: $9e
	ldh [$de], a                                     ; $75d2: $e0 $de
	ret nz                                           ; $75d4: $c0

	sbc $3f                                          ; $75d5: $de $3f
	rst SubAFromDE                                          ; $75d7: $df
	cp a                                             ; $75d8: $bf
	sbc h                                            ; $75d9: $9c
	db $fd                                           ; $75da: $fd
	ld a, [$ddf9]                                    ; $75db: $fa $f9 $dd
	add b                                            ; $75de: $80
	sbc [hl]                                         ; $75df: $9e
	and b                                            ; $75e0: $a0
	ld a, e                                          ; $75e1: $7b
	xor c                                            ; $75e2: $a9
	sub a                                            ; $75e3: $97
	push af                                          ; $75e4: $f5
	rst FarCall                                          ; $75e5: $f7
	xor $fe                                          ; $75e6: $ee $fe
	ld sp, hl                                        ; $75e8: $f9
	or $f6                                           ; $75e9: $f6 $f6
	rst GetHLinHL                                          ; $75eb: $cf
	ldh a, [$9e]                                     ; $75ec: $f0 $9e
	rra                                              ; $75ee: $1f
	sbc $ff                                          ; $75ef: $de $ff
	adc c                                            ; $75f1: $89
	ldh a, [$df]                                     ; $75f2: $f0 $df
	add c                                            ; $75f4: $81
	nop                                              ; $75f5: $00
	ld e, $e0                                        ; $75f6: $1e $e0
	add e                                            ; $75f8: $83
	call c, $ff7f                                    ; $75f9: $dc $7f $ff
	cp $e3                                           ; $75fc: $fe $e3
	rst $38                                          ; $75fe: $ff
	ccf                                              ; $75ff: $3f
	rst $38                                          ; $7600: $ff
	db $fd                                           ; $7601: $fd
	db $fd                                           ; $7602: $fd
	db $f4                                           ; $7603: $f4
	db $f4                                           ; $7604: $f4
	rla                                              ; $7605: $17
	db $fc                                           ; $7606: $fc
	ldh a, [$73]                                     ; $7607: $f0 $73
	ld [hl], e                                       ; $7609: $73
	sub a                                            ; $760a: $97
	and h                                            ; $760b: $a4
	ld h, h                                          ; $760c: $64
	ld l, h                                          ; $760d: $6c
	call z, $c4c4                                    ; $760e: $cc $c4 $c4
	add l                                            ; $7611: $85
	adc l                                            ; $7612: $8d
	ld a, [$986a]                                    ; $7613: $fa $6a $98
	ldh [$c7], a                                     ; $7616: $e0 $c7
	sbc l                                            ; $7618: $9d
	jr nz, jr_061_7627                               ; $7619: $20 $0c

	halt                                             ; $761b: $76
	dec b                                            ; $761c: $05
	rst SubAFromDE                                          ; $761d: $df
	inc bc                                           ; $761e: $03
	add a                                            ; $761f: $87
	di                                               ; $7620: $f3
	cp $ff                                           ; $7621: $fe $ff
	cp e                                             ; $7623: $bb
	cp a                                             ; $7624: $bf
	ld e, e                                          ; $7625: $5b
	ld d, e                                          ; $7626: $53

jr_061_7627:
	ld c, e                                          ; $7627: $4b
	ld [bc], a                                       ; $7628: $02
	inc b                                            ; $7629: $04
	inc b                                            ; $762a: $04
	ld [$1008], sp                                   ; $762b: $08 $08 $10
	jr nz, jr_061_7630                               ; $762e: $20 $00

jr_061_7630:
	xor a                                            ; $7630: $af
	cp a                                             ; $7631: $bf
	ld c, [hl]                                       ; $7632: $4e
	sbc a                                            ; $7633: $9f
	dec de                                           ; $7634: $1b
	dec a                                            ; $7635: $3d
	ld a, l                                          ; $7636: $7d
	ld [$80f0], a                                    ; $7637: $ea $f0 $80
	db $fc                                           ; $763a: $fc
	rst $38                                          ; $763b: $ff
	rst $38                                          ; $763c: $ff
	dec e                                            ; $763d: $1d
	ld h, a                                          ; $763e: $67
	sbc a                                            ; $763f: $9f
	rst $38                                          ; $7640: $ff
	nop                                              ; $7641: $00
	inc a                                            ; $7642: $3c
	ld bc, $fffe                                     ; $7643: $01 $fe $ff
	rst SubAFromDE                                          ; $7646: $df
	rst $38                                          ; $7647: $ff
	ldh [$3f], a                                     ; $7648: $e0 $3f
	db $fd                                           ; $764a: $fd
	rst FarCall                                          ; $764b: $f7
	db $fc                                           ; $764c: $fc
	or e                                             ; $764d: $b3
	cp [hl]                                          ; $764e: $be
	adc b                                            ; $764f: $88
	xor c                                            ; $7650: $a9
	ret nz                                           ; $7651: $c0

	ld [bc], a                                       ; $7652: $02
	ld [$4401], sp                                   ; $7653: $08 $01 $44
	ld b, b                                          ; $7656: $40
	ld d, d                                          ; $7657: $52
	ld d, d                                          ; $7658: $52
	sub [hl]                                         ; $7659: $96
	xor d                                            ; $765a: $aa
	add b                                            ; $765b: $80
	add b                                            ; $765c: $80
	add h                                            ; $765d: $84
	add h                                            ; $765e: $84
	sub b                                            ; $765f: $90
	jr c, jr_061_768a                                ; $7660: $38 $28

	ld b, c                                          ; $7662: $41
	db $dd                                           ; $7663: $dd
	ld l, c                                          ; $7664: $69
	sbc h                                            ; $7665: $9c
	ld l, l                                          ; $7666: $6d
	db $ed                                           ; $7667: $ed
	db $fd                                           ; $7668: $fd
	ldh [$be], a                                     ; $7669: $e0 $be
	sub b                                            ; $766b: $90

jr_061_766c:
	ld h, b                                          ; $766c: $60

Jump_061_766d:
	jr jr_061_7676                                   ; $766d: $18 $07

	ld b, $02                                        ; $766f: $06 $02
	sub d                                            ; $7671: $92
	ld [hl], h                                       ; $7672: $74
	ld a, $f1                                        ; $7673: $3e $f1
	db $fc                                           ; $7675: $fc

jr_061_7676:
	rra                                              ; $7676: $1f
	sub a                                            ; $7677: $97
	rst SubAFromHL                                          ; $7678: $d7
	add e                                            ; $7679: $83
	ld b, c                                          ; $767a: $41
	cp $94                                           ; $767b: $fe $94
	add b                                            ; $767d: $80
	ld b, b                                          ; $767e: $40
	jr nz, jr_061_766c                               ; $767f: $20 $eb

	rst AddAOntoHL                                          ; $7681: $ef
	ld [hl], c                                       ; $7682: $71
	sbc b                                            ; $7683: $98
	ret c                                            ; $7684: $d8

	xor $ee                                          ; $7685: $ee $ee
	ld a, [$99ef]                                    ; $7687: $fa $ef $99

jr_061_768a:
	add b                                            ; $768a: $80
	ld h, b                                          ; $768b: $60
	ret c                                            ; $768c: $d8

	ld [hl], h                                       ; $768d: $74
	ld a, [$7b0f]                                    ; $768e: $fa $0f $7b
	ld hl, sp-$80                                    ; $7691: $f8 $80
	ldh [$b8], a                                     ; $7693: $e0 $b8
	db $ec                                           ; $7695: $ec
	cp $ff                                           ; $7696: $fe $ff
	pop bc                                           ; $7698: $c1
	db $f4                                           ; $7699: $f4
	cp e                                             ; $769a: $bb
	db $dd                                           ; $769b: $dd
	ld l, d                                          ; $769c: $6a
	xor a                                            ; $769d: $af
	or l                                             ; $769e: $b5
	sub $3f                                          ; $769f: $d6 $3f
	dec bc                                           ; $76a1: $0b
	ld b, h                                          ; $76a2: $44
	ld [hl+], a                                      ; $76a3: $22
	sub l                                            ; $76a4: $95
	ld d, b                                          ; $76a5: $50
	ld c, d                                          ; $76a6: $4a
	add hl, hl                                       ; $76a7: $29
	ld e, d                                          ; $76a8: $5a
	dec bc                                           ; $76a9: $0b
	xor l                                            ; $76aa: $ad
	dec h                                            ; $76ab: $25
	ld h, [hl]                                       ; $76ac: $66
	xor d                                            ; $76ad: $aa
	jp z, $25ce                                      ; $76ae: $ca $ce $25

	inc [hl]                                         ; $76b1: $34
	sbc c                                            ; $76b2: $99
	ld [de], a                                       ; $76b3: $12
	sbc d                                            ; $76b4: $9a
	sbc e                                            ; $76b5: $9b
	rst SubAFromDE                                          ; $76b6: $df
	rst $38                                          ; $76b7: $ff
	rst $38                                          ; $76b8: $ff
	ldh [$c1], a                                     ; $76b9: $e0 $c1
	adc e                                            ; $76bb: $8b
	dec e                                            ; $76bc: $1d
	ld a, [de]                                       ; $76bd: $1a
	ld e, $1e                                        ; $76be: $1e $1e
	db $10                                           ; $76c0: $10
	jr @-$02                                         ; $76c1: $18 $fc

	inc b                                            ; $76c3: $04
	ccf                                              ; $76c4: $3f
	sub e                                            ; $76c5: $93
	inc de                                           ; $76c6: $13
	cp $3f                                           ; $76c7: $fe $3f
	db $fc                                           ; $76c9: $fc
	rst $38                                          ; $76ca: $ff
	sub [hl]                                         ; $76cb: $96
	ld [bc], a                                       ; $76cc: $02
	ld [bc], a                                       ; $76cd: $02
	add c                                            ; $76ce: $81
	ld b, b                                          ; $76cf: $40
	db $fd                                           ; $76d0: $fd
	add b                                            ; $76d1: $80
	rst SubAFromDE                                          ; $76d2: $df
	ei                                               ; $76d3: $fb
	db $d3                                           ; $76d4: $d3
	push hl                                          ; $76d5: $e5
	db $f4                                           ; $76d6: $f4
	ld [hl], d                                       ; $76d7: $72
	ld a, [hl-]                                      ; $76d8: $3a
	inc e                                            ; $76d9: $1c
	pop hl                                           ; $76da: $e1
	ld a, $48                                        ; $76db: $3e $48
	sub h                                            ; $76dd: $94
	jp z, $b165                                      ; $76de: $ca $65 $b1

	jp nc, $fee1                                     ; $76e1: $d2 $e1 $fe

	cp b                                             ; $76e4: $b8
	ld l, h                                          ; $76e5: $6c
	ld [hl], $9b                                     ; $76e6: $36 $9b
	ld c, a                                          ; $76e8: $4f
	dec l                                            ; $76e9: $2d
	ret c                                            ; $76ea: $d8

	ld l, b                                          ; $76eb: $68
	ld h, d                                          ; $76ec: $62
	and d                                            ; $76ed: $a2
	add d                                            ; $76ee: $82
	sub d                                            ; $76ef: $92
	jp nc, $d29b                                     ; $76f0: $d2 $9b $d2

	daa                                              ; $76f3: $27
	sub a                                            ; $76f4: $97
	sbc a                                            ; $76f5: $9f
	ld a, e                                          ; $76f6: $7b
	add d                                            ; $76f7: $82
	inc bc                                           ; $76f8: $03
	add b                                            ; $76f9: $80
	ldh [$e0], a                                     ; $76fa: $e0 $e0
	sub a                                            ; $76fc: $97
	cpl                                              ; $76fd: $2f
	sub a                                            ; $76fe: $97
	db $d3                                           ; $76ff: $d3
	ld c, e                                          ; $7700: $4b
	ld l, c                                          ; $7701: $69
	dec h                                            ; $7702: $25
	ld [hl-], a                                      ; $7703: $32
	add hl, de                                       ; $7704: $19
	call c, $8cff                                    ; $7705: $dc $ff $8c
	ld a, a                                          ; $7708: $7f
	ccf                                              ; $7709: $3f
	ccf                                              ; $770a: $3f
	inc d                                            ; $770b: $14
	ld a, [bc]                                       ; $770c: $0a
	dec b                                            ; $770d: $05
	adc l                                            ; $770e: $8d

Call_061_770f:
	ld e, e                                          ; $770f: $5b
	ld e, [hl]                                       ; $7710: $5e
	ld l, $22                                        ; $7711: $2e $22
	cp a                                             ; $7713: $bf
	sbc a                                            ; $7714: $9f
	adc a                                            ; $7715: $8f
	rst SubAFromDE                                          ; $7716: $df
	di                                               ; $7717: $f3
	ld [hl], e                                       ; $7718: $73
	ld a, a                                          ; $7719: $7f
	scf                                              ; $771a: $37
	ld h, [hl]                                       ; $771b: $66
	db $eb                                           ; $771c: $eb
	ld h, a                                          ; $771d: $67
	ld hl, sp+$7e                                    ; $771e: $f8 $7e
	push bc                                          ; $7720: $c5
	db $dd                                           ; $7721: $dd
	ld b, b                                          ; $7722: $40
	ld a, l                                          ; $7723: $7d
	or l                                             ; $7724: $b5
	sbc [hl]                                         ; $7725: $9e
	add b                                            ; $7726: $80
	db $db                                           ; $7727: $db
	ret nz                                           ; $7728: $c0

	ld h, a                                          ; $7729: $67
	add sp, -$62                                     ; $772a: $e8 $9e
	ld l, b                                          ; $772c: $68
	ld a, [$988f]                                    ; $772d: $fa $8f $98
	xor $da                                          ; $7730: $ee $da
	push bc                                          ; $7732: $c5
	rst $38                                          ; $7733: $ff
	pop hl                                           ; $7734: $e1
	call c, $e0be                                    ; $7735: $dc $be $e0
	ldh a, [c]                                       ; $7738: $f2
	db $dd                                           ; $7739: $dd
	add $fe                                          ; $773a: $c6 $fe
	sbc $a3                                          ; $773c: $de $a3
	ld a, l                                          ; $773e: $7d
	ld [hl], a                                       ; $773f: $77
	ld e, h                                          ; $7740: $5c
	sub e                                            ; $7741: $93
	rst AddAOntoHL                                          ; $7742: $ef
	xor e                                            ; $7743: $ab
	add hl, hl                                       ; $7744: $29
	ld l, b                                          ; $7745: $68
	ld [hl], b                                       ; $7746: $70
	inc a                                            ; $7747: $3c
	ld b, b                                          ; $7748: $40
	sbc h                                            ; $7749: $9c
	ld a, [hl]                                       ; $774a: $7e
	ld a, [$f8f9]                                    ; $774b: $fa $f9 $f8
	sbc $f0                                          ; $774e: $de $f0
	rst SubAFromDE                                          ; $7750: $df
	ldh [$9b], a                                     ; $7751: $e0 $9b
	ldh a, [$f1]                                     ; $7753: $f0 $f1
	pop af                                           ; $7755: $f1
	di                                               ; $7756: $f3
	ld h, a                                          ; $7757: $67
	ld hl, sp+$3e                                    ; $7758: $f8 $3e
	add c                                            ; $775a: $81
	add a                                            ; $775b: $87
	ld b, b                                          ; $775c: $40
	and b                                            ; $775d: $a0
	ldh a, [$c8]                                     ; $775e: $f0 $c8
	and h                                            ; $7760: $a4
	add d                                            ; $7761: $82
	nop                                              ; $7762: $00
	add b                                            ; $7763: $80
	ret nz                                           ; $7764: $c0

	ld h, b                                          ; $7765: $60
	db $10                                           ; $7766: $10
	jr c, @+$5e                                      ; $7767: $38 $5c

	ld a, [hl]                                       ; $7769: $7e
	ccf                                              ; $776a: $3f
	ld a, a                                          ; $776b: $7f
	ld a, a                                          ; $776c: $7f
	cp a                                             ; $776d: $bf
	cp a                                             ; $776e: $bf
	rst SubAFromDE                                          ; $776f: $df
	rst SubAFromDE                                          ; $7770: $df
	rst AddAOntoHL                                          ; $7771: $ef
	ld bc, $7301                                     ; $7772: $01 $01 $73
	db $e3                                           ; $7775: $e3
	sbc c                                            ; $7776: $99
	ret nz                                           ; $7777: $c0

	ld a, a                                          ; $7778: $7f
	ld a, a                                          ; $7779: $7f
	ld e, a                                          ; $777a: $5f
	adc a                                            ; $777b: $8f
	add a                                            ; $777c: $87
	ld a, e                                          ; $777d: $7b
	db $f4                                           ; $777e: $f4
	sbc d                                            ; $777f: $9a
	ld h, b                                          ; $7780: $60
	ld [hl], b                                       ; $7781: $70
	ld a, b                                          ; $7782: $78
	db $fc                                           ; $7783: $fc
	cp $6f                                           ; $7784: $fe $6f
	nop                                              ; $7786: $00
	ld [hl], a                                       ; $7787: $77
	ld [hl], h                                       ; $7788: $74
	sbc [hl]                                         ; $7789: $9e
	ldh [$73], a                                     ; $778a: $e0 $73
	ld e, h                                          ; $778c: $5c
	ld a, [hl]                                       ; $778d: $7e
	add $96                                          ; $778e: $c6 $96

jr_061_7790:
	jr nz, jr_061_7790                               ; $7790: $20 $fe

	ldh [c], a                                       ; $7792: $e2
	ld a, [$eff4]                                    ; $7793: $fa $f4 $ef
	pop af                                           ; $7796: $f1
	ld bc, $de03                                     ; $7797: $01 $03 $de
	ld e, $9e                                        ; $779a: $1e $9e
	inc e                                            ; $779c: $1c
	ld [hl], h                                       ; $779d: $74
	push af                                          ; $779e: $f5
	inc hl                                           ; $779f: $23
	nop                                              ; $77a0: $00
	call c, $9e99                                    ; $77a1: $dc $99 $9e
	sub c                                            ; $77a4: $91
	sbc $11                                          ; $77a5: $de $11
	sbc c                                            ; $77a7: $99
	sbc c                                            ; $77a8: $99
	nop                                              ; $77a9: $00
	adc b                                            ; $77aa: $88
	adc b                                            ; $77ab: $88
	inc sp                                           ; $77ac: $33
	xor $7b                                          ; $77ad: $ee $7b
	ei                                               ; $77af: $fb
	sbc h                                            ; $77b0: $9c
	ld [hl+], a                                      ; $77b1: $22
	xor $11                                          ; $77b2: $ee $11
	ld a, e                                          ; $77b4: $7b
	ei                                               ; $77b5: $fb
	sbc [hl]                                         ; $77b6: $9e
	sbc c                                            ; $77b7: $99
	ld [hl], e                                       ; $77b8: $73
	ei                                               ; $77b9: $fb
	ld [hl], a                                       ; $77ba: $77
	db $fc                                           ; $77bb: $fc
	sbc d                                            ; $77bc: $9a
	rst $38                                          ; $77bd: $ff
	sbc c                                            ; $77be: $99
	rst $38                                          ; $77bf: $ff
	ld a, [hl+]                                      ; $77c0: $2a
	xor d                                            ; $77c1: $aa
	db $e3                                           ; $77c2: $e3
	ld bc, $a38c                                     ; $77c3: $01 $8c $a3
	sub b                                            ; $77c6: $90
	and [hl]                                         ; $77c7: $a6
	sub c                                            ; $77c8: $91
	and [hl]                                         ; $77c9: $a6
	sub c                                            ; $77ca: $91
	call $ddb3                                       ; $77cb: $cd $b3 $dd
	or e                                             ; $77ce: $b3
	sbc e                                            ; $77cf: $9b
	rst FarCall                                          ; $77d0: $f7
	sbc d                                            ; $77d1: $9a
	rst FarCall                                          ; $77d2: $f7
	sub [hl]                                         ; $77d3: $96
	rst $38                                          ; $77d4: $ff
	call nc, $dcff                                   ; $77d5: $d4 $ff $dc
	sbc $ff                                          ; $77d8: $de $ff
	add b                                            ; $77da: $80
	db $dd                                           ; $77db: $dd
	rst AddAOntoHL                                          ; $77dc: $ef
	push de                                          ; $77dd: $d5
	rst SubAFromHL                                          ; $77de: $d7
	db $fd                                           ; $77df: $fd
	res 5, a                                         ; $77e0: $cb $af
	db $e3                                           ; $77e2: $e3
	sub a                                            ; $77e3: $97
	ldh a, [c]                                       ; $77e4: $f2
	sbc b                                            ; $77e5: $98
	db $fc                                           ; $77e6: $fc
	adc a                                            ; $77e7: $8f
	rst $38                                          ; $77e8: $ff
	dec c                                            ; $77e9: $0d
	rst $38                                          ; $77ea: $ff
	dec c                                            ; $77eb: $0d
	rst SubAFromDE                                          ; $77ec: $df
	inc c                                            ; $77ed: $0c
	rst SubAFromDE                                          ; $77ee: $df
	inc b                                            ; $77ef: $04
	ld e, a                                          ; $77f0: $5f
	dec b                                            ; $77f1: $05
	ld c, a                                          ; $77f2: $4f
	dec b                                            ; $77f3: $05
	rrca                                             ; $77f4: $0f
	rlca                                             ; $77f5: $07
	rrca                                             ; $77f6: $0f
	rlca                                             ; $77f7: $07
	ld c, $07                                        ; $77f8: $0e $07
	add b                                            ; $77fa: $80
	ld c, a                                          ; $77fb: $4f
	rlca                                             ; $77fc: $07
	ld e, [hl]                                       ; $77fd: $5e
	rlca                                             ; $77fe: $07
	call c, $dc4f                                    ; $77ff: $dc $4f $dc
	ld c, a                                          ; $7802: $4f
	ld a, [$78df]                                    ; $7803: $fa $df $78
	rrca                                             ; $7806: $0f
	add h                                            ; $7807: $84
	and [hl]                                         ; $7808: $a6
	adc l                                            ; $7809: $8d
	halt                                             ; $780a: $76
	adc l                                            ; $780b: $8d
	ld c, b                                          ; $780c: $48
	rra                                              ; $780d: $1f
	jr z, jr_061_782f                                ; $780e: $28 $1f

	reti                                             ; $7810: $d9


	ccf                                              ; $7811: $3f
	sbc e                                            ; $7812: $9b
	ld a, [hl]                                       ; $7813: $7e
	ccf                                              ; $7814: $3f
	db $ec                                           ; $7815: $ec
	ld a, a                                          ; $7816: $7f
	ret z                                            ; $7817: $c8

	rst $38                                          ; $7818: $ff
	sub e                                            ; $7819: $93
	sub h                                            ; $781a: $94
	cp $04                                           ; $781b: $fe $04
	sbc c                                            ; $781d: $99
	add hl, bc                                       ; $781e: $09
	ccf                                              ; $781f: $3f
	ccf                                              ; $7820: $3f
	ld d, $14                                        ; $7821: $16 $14
	rlca                                             ; $7823: $07
	ld [bc], a                                       ; $7824: $02
	adc a                                            ; $7825: $8f
	cp a                                             ; $7826: $bf
	add a                                            ; $7827: $87
	ret nz                                           ; $7828: $c0

	adc b                                            ; $7829: $88
	add b                                            ; $782a: $80
	ldh [$c0], a                                     ; $782b: $e0 $c0
	ldh a, [$e0]                                     ; $782d: $f0 $e0

jr_061_782f:
	ld hl, sp-$10                                    ; $782f: $f8 $f0
	cp [hl]                                          ; $7831: $be
	db $e4                                           ; $7832: $e4
	ei                                               ; $7833: $fb
	pop hl                                           ; $7834: $e1
	sbc h                                            ; $7835: $9c
	ld hl, sp-$72                                    ; $7836: $f8 $8e
	db $fc                                           ; $7838: $fc
	ld d, e                                          ; $7839: $53
	rst $38                                          ; $783a: $ff
	ret nz                                           ; $783b: $c0

	rst $38                                          ; $783c: $ff
	and b                                            ; $783d: $a0
	rst $38                                          ; $783e: $ff

jr_061_783f:
	jr nz, jr_061_783f                               ; $783f: $20 $fe

	cp a                                             ; $7841: $bf
	cp $bd                                           ; $7842: $fe $bd
	sbc d                                            ; $7844: $9a
	add b                                            ; $7845: $80
	db $dd                                           ; $7846: $dd
	jr z, @+$01                                      ; $7847: $28 $ff

	ld l, l                                          ; $7849: $6d
	ld a, e                                          ; $784a: $7b
	cp $93                                           ; $784b: $fe $93
	db $fd                                           ; $784d: $fd
	or a                                             ; $784e: $b7
	rst $38                                          ; $784f: $ff
	or $ff                                           ; $7850: $f6 $ff
	and [hl]                                         ; $7852: $a6
	rst $38                                          ; $7853: $ff
	inc l                                            ; $7854: $2c
	rst $38                                          ; $7855: $ff
	ld [$00ff], sp                                   ; $7856: $08 $ff $00
	ld a, e                                          ; $7859: $7b
	pop hl                                           ; $785a: $e1
	sub a                                            ; $785b: $97
	ldh a, [$de]                                     ; $785c: $f0 $de
	ret nz                                           ; $785e: $c0

	ld b, b                                          ; $785f: $40
	ret nz                                           ; $7860: $c0

	add b                                            ; $7861: $80
	add b                                            ; $7862: $80
	ld h, b                                          ; $7863: $60
	cp a                                             ; $7864: $bf
	ret nz                                           ; $7865: $c0

	rst AddAOntoHL                                          ; $7866: $ef
	sub [hl]                                         ; $7867: $96
	cp l                                             ; $7868: $bd
	rst AddAOntoHL                                          ; $7869: $ef
	dec a                                            ; $786a: $3d
	rst AddAOntoHL                                          ; $786b: $ef
	ccf                                              ; $786c: $3f
	rst $38                                          ; $786d: $ff
	add hl, sp                                       ; $786e: $39
	rst $38                                          ; $786f: $ff
	jr nc, jr_061_78ed                               ; $7870: $30 $7b

	call $2793                                       ; $7872: $cd $93 $27
	ei                                               ; $7875: $fb
	add hl, bc                                       ; $7876: $09
	rst $38                                          ; $7877: $ff
	rrca                                             ; $7878: $0f
	db $fd                                           ; $7879: $fd
	rrca                                             ; $787a: $0f
	add hl, sp                                       ; $787b: $39
	inc c                                            ; $787c: $0c
	ld a, $04                                        ; $787d: $3e $04

Call_061_787f:
	inc sp                                           ; $787f: $33
	cp a                                             ; $7880: $bf
	rra                                              ; $7881: $1f
	rra                                              ; $7882: $1f
	adc b                                            ; $7883: $88
	db $10                                           ; $7884: $10
	ccf                                              ; $7885: $3f
	db $10                                           ; $7886: $10
	rst SubAFromHL                                          ; $7887: $d7
	ld a, a                                          ; $7888: $7f
	push af                                          ; $7889: $f5
	ld a, l                                          ; $788a: $7d
	db $fd                                           ; $788b: $fd
	dec a                                            ; $788c: $3d
	ld hl, sp-$48                                    ; $788d: $f8 $b8
	ldh a, [$30]                                     ; $788f: $f0 $30
	ldh a, [rSVBK]                                   ; $7891: $f0 $70
	ld hl, sp+$38                                    ; $7893: $f8 $38
	ld hl, sp-$18                                    ; $7895: $f8 $e8
	ld hl, sp-$48                                    ; $7897: $f8 $b8
	ld hl, sp+$28                                    ; $7899: $f8 $28
	ld [hl], a                                       ; $789b: $77
	cp $7f                                           ; $789c: $fe $7f
	ldh a, [$80]                                     ; $789e: $f0 $80
	or b                                             ; $78a0: $b0
	ld [hl], b                                       ; $78a1: $70
	ret nz                                           ; $78a2: $c0

	ld [hl], b                                       ; $78a3: $70
	ret z                                            ; $78a4: $c8

	ld a, b                                          ; $78a5: $78
	ld c, b                                          ; $78a6: $48
	ld hl, sp-$1c                                    ; $78a7: $f8 $e4
	db $fc                                           ; $78a9: $fc
	and h                                            ; $78aa: $a4
	db $fc                                           ; $78ab: $fc
	jp nc, Jump_061_52fe                             ; $78ac: $d2 $fe $52

	cp $29                                           ; $78af: $fe $29
	rst $38                                          ; $78b1: $ff
	dec h                                            ; $78b2: $25
	rst $38                                          ; $78b3: $ff
	ld d, $ff                                        ; $78b4: $16 $ff
	sub e                                            ; $78b6: $93
	rst $38                                          ; $78b7: $ff
	jp nc, $e97f                                     ; $78b8: $d2 $7f $e9

	cp a                                             ; $78bb: $bf
	ld sp, hl                                        ; $78bc: $f9
	rst SubAFromDE                                          ; $78bd: $df
	ld sp, hl                                        ; $78be: $f9
	sbc b                                            ; $78bf: $98
	rst SubAFromDE                                          ; $78c0: $df
	ld hl, sp+$6f                                    ; $78c1: $f8 $6f
	ld sp, hl                                        ; $78c3: $f9
	ld c, a                                          ; $78c4: $4f
	ld hl, sp+$4f                                    ; $78c5: $f8 $4f
	dec sp                                           ; $78c7: $3b
	ld b, b                                          ; $78c8: $40
	sub [hl]                                         ; $78c9: $96
	sub b                                            ; $78ca: $90
	ei                                               ; $78cb: $fb
	inc bc                                           ; $78cc: $03
	add [hl]                                         ; $78cd: $86
	inc b                                            ; $78ce: $04
	rrca                                             ; $78cf: $0f
	rrca                                             ; $78d0: $0f
	ld a, $3c                                        ; $78d1: $3e $3c
	ld [hl], a                                       ; $78d3: $77
	ld b, b                                          ; $78d4: $40
	dec sp                                           ; $78d5: $3b
	ld h, b                                          ; $78d6: $60
	ld a, e                                          ; $78d7: $7b
	ld e, [hl]                                       ; $78d8: $5e

jr_061_78d9:
	sbc l                                            ; $78d9: $9d
	cp $f0                                           ; $78da: $fe $f0
	scf                                              ; $78dc: $37
	ld h, b                                          ; $78dd: $60
	ld a, e                                          ; $78de: $7b
	ld e, [hl]                                       ; $78df: $5e
	sbc e                                            ; $78e0: $9b
	rlca                                             ; $78e1: $07
	ei                                               ; $78e2: $fb
	add hl, bc                                       ; $78e3: $09
	cp $17                                           ; $78e4: $fe $17
	ld h, b                                          ; $78e6: $60
	ld a, a                                          ; $78e7: $7f
	ld h, [hl]                                       ; $78e8: $66
	rst SubAFromDE                                          ; $78e9: $df
	ld hl, sp-$62                                    ; $78ea: $f8 $9e
	xor b                                            ; $78ec: $a8

jr_061_78ed:
	ld d, a                                          ; $78ed: $57
	ld h, b                                          ; $78ee: $60
	ld d, e                                          ; $78ef: $53
	add b                                            ; $78f0: $80
	sbc h                                            ; $78f1: $9c
	ld a, a                                          ; $78f2: $7f
	ccf                                              ; $78f3: $3f
	xor $77                                          ; $78f4: $ee $77
	add b                                            ; $78f6: $80
	ld a, a                                          ; $78f7: $7f
	sbc [hl]                                         ; $78f8: $9e
	ld a, [hl]                                       ; $78f9: $7e
	jp z, $0f99                                      ; $78fa: $ca $99 $0f

	inc bc                                           ; $78fd: $03
	ld c, $0e                                        ; $78fe: $0e $0e
	ccf                                              ; $7900: $3f
	ccf                                              ; $7901: $3f
	ld e, e                                          ; $7902: $5b
	add b                                            ; $7903: $80
	ld a, a                                          ; $7904: $7f
	add d                                            ; $7905: $82
	sbc h                                            ; $7906: $9c
	halt                                             ; $7907: $76
	rst $38                                          ; $7908: $ff
	xor h                                            ; $7909: $ac
	ld l, e                                          ; $790a: $6b
	add b                                            ; $790b: $80
	cp a                                             ; $790c: $bf
	cp $f0                                           ; $790d: $fe $f0
	sbc d                                            ; $790f: $9a
	ldh a, [$c0]                                     ; $7910: $f0 $c0
	ret nz                                           ; $7912: $c0

	ldh [$80], a                                     ; $7913: $e0 $80
	ld l, e                                          ; $7915: $6b
	add b                                            ; $7916: $80
	sbc h                                            ; $7917: $9c
	dec a                                            ; $7918: $3d
	rst $38                                          ; $7919: $ff

jr_061_791a:
	dec sp                                           ; $791a: $3b
	ld l, a                                          ; $791b: $6f
	add b                                            ; $791c: $80
	ld [hl], e                                       ; $791d: $73
	ldh [c], a                                       ; $791e: $e2
	sbc d                                            ; $791f: $9a
	rlca                                             ; $7920: $07
	dec a                                            ; $7921: $3d
	dec c                                            ; $7922: $0d
	ccf                                              ; $7923: $3f
	rlca                                             ; $7924: $07

jr_061_7925:
	ld c, e                                          ; $7925: $4b
	add b                                            ; $7926: $80
	sbc h                                            ; $7927: $9c
	jr c, jr_061_791a                                ; $7928: $38 $f0

	or b                                             ; $792a: $b0
	ld l, e                                          ; $792b: $6b
	add b                                            ; $792c: $80
	halt                                             ; $792d: $76
	call c, Call_061_7e7b                            ; $792e: $dc $7b $7e
	inc bc                                           ; $7931: $03
	add b                                            ; $7932: $80
	ld a, a                                          ; $7933: $7f
	jp nz, $039a                                     ; $7934: $c2 $9a $03

	ccf                                              ; $7937: $3f
	jr c, jr_061_78d9                                ; $7938: $38 $9f

	rrca                                             ; $793a: $0f
	inc hl                                           ; $793b: $23
	add b                                            ; $793c: $80
	sbc b                                            ; $793d: $98
	ld h, b                                          ; $793e: $60
	ldh [$80], a                                     ; $793f: $e0 $80
	ldh a, [$30]                                     ; $7941: $f0 $30
	ret nz                                           ; $7943: $c0

	ret nz                                           ; $7944: $c0

	dec sp                                           ; $7945: $3b
	add b                                            ; $7946: $80
	sbc b                                            ; $7947: $98
	ld bc, $063f                                     ; $7948: $01 $3f $06
	ccf                                              ; $794b: $3f
	add hl, bc                                       ; $794c: $09
	scf                                              ; $794d: $37
	ld b, $23                                        ; $794e: $06 $23
	add b                                            ; $7950: $80
	ld a, a                                          ; $7951: $7f
	add d                                            ; $7952: $82
	sbc h                                            ; $7953: $9c
	ld l, b                                          ; $7954: $68
	ld hl, sp-$58                                    ; $7955: $f8 $a8
	ld h, a                                          ; $7957: $67
	add b                                            ; $7958: $80
	push af                                          ; $7959: $f5
	ld a, [hl]                                       ; $795a: $7e
	xor l                                            ; $795b: $ad
	sub l                                            ; $795c: $95
	cp $38                                           ; $795d: $fe $38
	ccf                                              ; $795f: $3f
	rlca                                             ; $7960: $07
	adc a                                            ; $7961: $8f
	ld bc, $c0ff                                     ; $7962: $01 $ff $c0
	rra                                              ; $7965: $1f
	jr c, jr_061_7925                                ; $7966: $38 $bd

	rst JumpTable                                          ; $7968: $c7
	ld b, b                                          ; $7969: $40
	ld l, b                                          ; $796a: $68
	rst AddAOntoHL                                          ; $796b: $ef
	add b                                            ; $796c: $80
	ccf                                              ; $796d: $3f
	nop                                              ; $796e: $00
	ccf                                              ; $796f: $3f
	ld [$109f], sp                                   ; $7970: $08 $9f $10
	rra                                              ; $7973: $1f
	ld bc, $017f                                     ; $7974: $01 $7f $01
	ccf                                              ; $7977: $3f
	inc bc                                           ; $7978: $03
	ccf                                              ; $7979: $3f
	rlca                                             ; $797a: $07
	ld a, a                                          ; $797b: $7f
	rrca                                             ; $797c: $0f
	di                                               ; $797d: $f3
	rst $38                                          ; $797e: $ff
	ld hl, sp-$01                                    ; $797f: $f8 $ff
	cp $7f                                           ; $7981: $fe $7f
	cp $7f                                           ; $7983: $fe $7f
	ld [$06ff], sp                                   ; $7985: $08 $ff $06
	rrca                                             ; $7988: $0f
	ld hl, $3133                                     ; $7989: $21 $33 $31
	rst SubAFromDE                                          ; $798c: $df
	ccf                                              ; $798d: $3f
	ld [hl], e                                       ; $798e: $73
	ldh [$9d], a                                     ; $798f: $e0 $9d
	ld a, a                                          ; $7991: $7f
	ld h, c                                          ; $7992: $61
	dec de                                           ; $7993: $1b
	ldh [$98], a                                     ; $7994: $e0 $98
	nop                                              ; $7996: $00
	sbc a                                            ; $7997: $9f
	jr @+$01                                         ; $7998: $18 $ff

	pop af                                           ; $799a: $f1
	ld a, a                                          ; $799b: $7f
	ld h, c                                          ; $799c: $61
	rrca                                             ; $799d: $0f
	ldh [$7b], a                                     ; $799e: $e0 $7b
	sbc $9e                                          ; $79a0: $de $9e
	ld h, e                                          ; $79a2: $63
	scf                                              ; $79a3: $37
	ldh [rIE], a                                     ; $79a4: $e0 $ff
	ld bc, $a38c                                     ; $79a6: $01 $8c $a3
	sub b                                            ; $79a9: $90
	and [hl]                                         ; $79aa: $a6
	sub c                                            ; $79ab: $91
	and [hl]                                         ; $79ac: $a6
	sub c                                            ; $79ad: $91
	call $ddb3                                       ; $79ae: $cd $b3 $dd
	or e                                             ; $79b1: $b3
	sbc e                                            ; $79b2: $9b
	rst FarCall                                          ; $79b3: $f7
	sbc d                                            ; $79b4: $9a
	rst FarCall                                          ; $79b5: $f7
	sub [hl]                                         ; $79b6: $96
	rst $38                                          ; $79b7: $ff
	call nc, $dcff                                   ; $79b8: $d4 $ff $dc
	sbc $ff                                          ; $79bb: $de $ff
	add b                                            ; $79bd: $80
	db $dd                                           ; $79be: $dd
	rst AddAOntoHL                                          ; $79bf: $ef
	push de                                          ; $79c0: $d5
	rst SubAFromHL                                          ; $79c1: $d7
	db $fd                                           ; $79c2: $fd
	res 5, a                                         ; $79c3: $cb $af
	db $e3                                           ; $79c5: $e3
	sub a                                            ; $79c6: $97
	ldh a, [c]                                       ; $79c7: $f2
	sbc b                                            ; $79c8: $98
	db $fc                                           ; $79c9: $fc
	adc a                                            ; $79ca: $8f
	rst $38                                          ; $79cb: $ff
	dec c                                            ; $79cc: $0d
	rst $38                                          ; $79cd: $ff
	dec c                                            ; $79ce: $0d
	rst SubAFromDE                                          ; $79cf: $df
	inc c                                            ; $79d0: $0c
	rst SubAFromDE                                          ; $79d1: $df
	inc b                                            ; $79d2: $04
	ld e, a                                          ; $79d3: $5f
	dec b                                            ; $79d4: $05
	ld c, a                                          ; $79d5: $4f
	dec b                                            ; $79d6: $05
	rrca                                             ; $79d7: $0f
	rlca                                             ; $79d8: $07
	rrca                                             ; $79d9: $0f
	rlca                                             ; $79da: $07
	ld c, $07                                        ; $79db: $0e $07
	add b                                            ; $79dd: $80
	ld c, a                                          ; $79de: $4f
	rlca                                             ; $79df: $07
	ld e, [hl]                                       ; $79e0: $5e
	rlca                                             ; $79e1: $07
	call c, $dc4f                                    ; $79e2: $dc $4f $dc
	ld c, a                                          ; $79e5: $4f
	ld a, [$78df]                                    ; $79e6: $fa $df $78
	rrca                                             ; $79e9: $0f
	add h                                            ; $79ea: $84
	and [hl]                                         ; $79eb: $a6
	adc l                                            ; $79ec: $8d
	halt                                             ; $79ed: $76
	adc l                                            ; $79ee: $8d
	ld c, b                                          ; $79ef: $48
	rra                                              ; $79f0: $1f
	jr z, jr_061_7a12                                ; $79f1: $28 $1f

	reti                                             ; $79f3: $d9


	ccf                                              ; $79f4: $3f
	sbc e                                            ; $79f5: $9b
	ld a, [hl]                                       ; $79f6: $7e
	ccf                                              ; $79f7: $3f
	db $ed                                           ; $79f8: $ed
	ld a, a                                          ; $79f9: $7f
	jp z, $94fc                                      ; $79fa: $ca $fc $94

	add b                                            ; $79fd: $80
	rst $38                                          ; $79fe: $ff
	rrca                                             ; $79ff: $0f
	cp a                                             ; $7a00: $bf
	ccf                                              ; $7a01: $3f
	dec bc                                           ; $7a02: $0b
	rrca                                             ; $7a03: $0f
	ld b, $04                                        ; $7a04: $06 $04
	inc bc                                           ; $7a06: $03
	ld [bc], a                                       ; $7a07: $02
	add b                                            ; $7a08: $80
	nop                                              ; $7a09: $00
	add b                                            ; $7a0a: $80
	nop                                              ; $7a0b: $00
	ret nz                                           ; $7a0c: $c0

	add b                                            ; $7a0d: $80
	ldh [$c0], a                                     ; $7a0e: $e0 $c0
	ldh a, [$e0]                                     ; $7a10: $f0 $e0

jr_061_7a12:
	ld hl, sp-$10                                    ; $7a12: $f8 $f0
	cp [hl]                                          ; $7a14: $be
	db $e4                                           ; $7a15: $e4
	ei                                               ; $7a16: $fb
	pop hl                                           ; $7a17: $e1
	sbc h                                            ; $7a18: $9c
	ld hl, sp-$72                                    ; $7a19: $f8 $8e
	db $fc                                           ; $7a1b: $fc
	ld d, e                                          ; $7a1c: $53
	adc a                                            ; $7a1d: $8f
	rst $38                                          ; $7a1e: $ff
	ret nz                                           ; $7a1f: $c0

	rst $38                                          ; $7a20: $ff
	and b                                            ; $7a21: $a0
	rst $38                                          ; $7a22: $ff

jr_061_7a23:
	jr nz, jr_061_7a23                               ; $7a23: $20 $fe

	nop                                              ; $7a25: $00
	cp $00                                           ; $7a26: $fe $00
	cp l                                             ; $7a28: $bd
	add b                                            ; $7a29: $80
	db $dd                                           ; $7a2a: $dd
	jr z, @+$01                                      ; $7a2b: $28 $ff

	ld l, l                                          ; $7a2d: $6d
	ld a, e                                          ; $7a2e: $7b
	cp $89                                           ; $7a2f: $fe $89
	db $fd                                           ; $7a31: $fd
	or a                                             ; $7a32: $b7
	rst $38                                          ; $7a33: $ff
	or $ff                                           ; $7a34: $f6 $ff
	ld h, $ff                                        ; $7a36: $26 $ff
	inc l                                            ; $7a38: $2c
	rst $38                                          ; $7a39: $ff
	ret z                                            ; $7a3a: $c8

	ld a, a                                          ; $7a3b: $7f
	ld h, b                                          ; $7a3c: $60
	rst $38                                          ; $7a3d: $ff
	ret nc                                           ; $7a3e: $d0

	rst SubAFromDE                                          ; $7a3f: $df
	ret nz                                           ; $7a40: $c0

	ld e, [hl]                                       ; $7a41: $5e
	ret nz                                           ; $7a42: $c0

	ret nz                                           ; $7a43: $c0

	ld b, b                                          ; $7a44: $40
	add b                                            ; $7a45: $80
	add b                                            ; $7a46: $80
	db $fd                                           ; $7a47: $fd
	add b                                            ; $7a48: $80
	rst AddAOntoHL                                          ; $7a49: $ef
	cp l                                             ; $7a4a: $bd
	rst AddAOntoHL                                          ; $7a4b: $ef
	ccf                                              ; $7a4c: $3f
	rst AddAOntoHL                                          ; $7a4d: $ef
	dec a                                            ; $7a4e: $3d
	rst $38                                          ; $7a4f: $ff
	add hl, sp                                       ; $7a50: $39
	rst $38                                          ; $7a51: $ff
	ld [hl], $ff                                     ; $7a52: $36 $ff
	dec l                                            ; $7a54: $2d
	ei                                               ; $7a55: $fb
	dec hl                                           ; $7a56: $2b
	rst $38                                          ; $7a57: $ff
	rrca                                             ; $7a58: $0f
	db $fd                                           ; $7a59: $fd
	rrca                                             ; $7a5a: $0f
	ei                                               ; $7a5b: $fb
	dec c                                            ; $7a5c: $0d
	dec a                                            ; $7a5d: $3d
	ld [$043e], sp                                   ; $7a5e: $08 $3e $04
	inc sp                                           ; $7a61: $33
	nop                                              ; $7a62: $00
	rra                                              ; $7a63: $1f
	nop                                              ; $7a64: $00
	rra                                              ; $7a65: $1f
	db $10                                           ; $7a66: $10
	ccf                                              ; $7a67: $3f
	adc h                                            ; $7a68: $8c
	db $10                                           ; $7a69: $10
	rst SubAFromHL                                          ; $7a6a: $d7
	ld a, a                                          ; $7a6b: $7f
	push af                                          ; $7a6c: $f5
	db $fd                                           ; $7a6d: $fd
	db $fd                                           ; $7a6e: $fd
	dec a                                            ; $7a6f: $3d
	ld hl, sp+$38                                    ; $7a70: $f8 $38
	ldh a, [$30]                                     ; $7a72: $f0 $30
	ldh a, [$f0]                                     ; $7a74: $f0 $f0
	ld a, b                                          ; $7a76: $78
	ld hl, sp-$08                                    ; $7a77: $f8 $f8
	jr z, @-$06                                      ; $7a79: $28 $f8

	jr c, jr_061_7af8                                ; $7a7b: $38 $7b

	db $fc                                           ; $7a7d: $fc
	ld a, e                                          ; $7a7e: $7b
	cp $7f                                           ; $7a7f: $fe $7f
	ldh a, [$80]                                     ; $7a81: $f0 $80
	or b                                             ; $7a83: $b0
	ld [hl], b                                       ; $7a84: $70
	ret nz                                           ; $7a85: $c0

	ld [hl], b                                       ; $7a86: $70
	ret z                                            ; $7a87: $c8

	ld a, b                                          ; $7a88: $78
	ld c, b                                          ; $7a89: $48
	ld hl, sp-$1c                                    ; $7a8a: $f8 $e4
	db $fc                                           ; $7a8c: $fc
	and h                                            ; $7a8d: $a4
	db $fc                                           ; $7a8e: $fc
	jp nc, Jump_061_52fe                             ; $7a8f: $d2 $fe $52

	cp $29                                           ; $7a92: $fe $29
	rst $38                                          ; $7a94: $ff
	dec h                                            ; $7a95: $25
	rst $38                                          ; $7a96: $ff
	ld d, $ff                                        ; $7a97: $16 $ff
	sub e                                            ; $7a99: $93
	rst $38                                          ; $7a9a: $ff
	jp nc, $e97f                                     ; $7a9b: $d2 $7f $e9

	cp a                                             ; $7a9e: $bf
	ld sp, hl                                        ; $7a9f: $f9
	rst SubAFromDE                                          ; $7aa0: $df
	ld sp, hl                                        ; $7aa1: $f9
	sbc b                                            ; $7aa2: $98
	rst SubAFromDE                                          ; $7aa3: $df
	ld hl, sp+$6f                                    ; $7aa4: $f8 $6f
	ld sp, hl                                        ; $7aa6: $f9
	ld c, a                                          ; $7aa7: $4f
	ld hl, sp+$4f                                    ; $7aa8: $f8 $4f
	ld c, e                                          ; $7aaa: $4b
	ld b, b                                          ; $7aab: $40
	sbc h                                            ; $7aac: $9c
	db $ec                                           ; $7aad: $ec
	ld a, a                                          ; $7aae: $7f
	ret z                                            ; $7aaf: $c8

	ld a, e                                          ; $7ab0: $7b
	db $dd                                           ; $7ab1: $dd
	sbc d                                            ; $7ab2: $9a
	ld b, $bf                                        ; $7ab3: $06 $bf
	rrca                                             ; $7ab5: $0f
	dec sp                                           ; $7ab6: $3b
	ccf                                              ; $7ab7: $3f
	ld l, a                                          ; $7ab8: $6f
	ld b, b                                          ; $7ab9: $40
	ld c, e                                          ; $7aba: $4b
	ld h, b                                          ; $7abb: $60
	sub h                                            ; $7abc: $94
	ld [$00ff], sp                                   ; $7abd: $08 $ff $00
	rst $38                                          ; $7ac0: $ff
	ret nz                                           ; $7ac1: $c0

	ld a, a                                          ; $7ac2: $7f
	ld h, b                                          ; $7ac3: $60
	sbc $c0                                          ; $7ac4: $de $c0
	ld b, b                                          ; $7ac6: $40
	ret nz                                           ; $7ac7: $c0

	ld c, e                                          ; $7ac8: $4b
	ld h, b                                          ; $7ac9: $60
	sbc [hl]                                         ; $7aca: $9e
	jr nc, jr_061_7b48                               ; $7acb: $30 $7b

	dec l                                            ; $7acd: $2d
	sub [hl]                                         ; $7ace: $96
	daa                                              ; $7acf: $27
	rst $38                                          ; $7ad0: $ff
	dec c                                            ; $7ad1: $0d
	ei                                               ; $7ad2: $fb
	dec bc                                           ; $7ad3: $0b
	db $fd                                           ; $7ad4: $fd

jr_061_7ad5:
	rrca                                             ; $7ad5: $0f
	add hl, sp                                       ; $7ad6: $39
	inc c                                            ; $7ad7: $0c
	inc sp                                           ; $7ad8: $33
	ld h, b                                          ; $7ad9: $60
	sbc b                                            ; $7ada: $98
	jr nc, jr_061_7ad5                               ; $7adb: $30 $f8

	ld a, b                                          ; $7add: $78
	ld hl, sp-$18                                    ; $7ade: $f8 $e8
	ld a, b                                          ; $7ae0: $78
	cp b                                             ; $7ae1: $b8
	ld c, a                                          ; $7ae2: $4f
	ld h, b                                          ; $7ae3: $60
	dec sp                                           ; $7ae4: $3b
	add b                                            ; $7ae5: $80
	sub e                                            ; $7ae6: $93
	sub b                                            ; $7ae7: $90
	rst $38                                          ; $7ae8: $ff
	nop                                              ; $7ae9: $00
	cp a                                             ; $7aea: $bf
	nop                                              ; $7aeb: $00
	rrca                                             ; $7aec: $0f
	rlca                                             ; $7aed: $07
	ld a, $3e                                        ; $7aee: $3e $3e
	rrca                                             ; $7af0: $0f
	rlca                                             ; $7af1: $07
	add e                                            ; $7af2: $83
	ld e, a                                          ; $7af3: $5f
	add b                                            ; $7af4: $80
	sbc h                                            ; $7af5: $9c
	or [hl]                                          ; $7af6: $b6
	rst $38                                          ; $7af7: $ff

jr_061_7af8:
	and $6b                                          ; $7af8: $e6 $6b
	add b                                            ; $7afa: $80
	ld a, e                                          ; $7afb: $7b
	cp $7e                                           ; $7afc: $fe $7e
	push bc                                          ; $7afe: $c5
	rst SubAFromDE                                          ; $7aff: $df
	ldh [$7a], a                                     ; $7b00: $e0 $7a
	db $dd                                           ; $7b02: $dd
	ld a, d                                          ; $7b03: $7a
	and d                                            ; $7b04: $a2
	ld a, e                                          ; $7b05: $7b
	add b                                            ; $7b06: $80
	sbc h                                            ; $7b07: $9c
	dec a                                            ; $7b08: $3d
	rst AddAOntoHL                                          ; $7b09: $ef
	ccf                                              ; $7b0a: $3f
	ld l, a                                          ; $7b0b: $6f
	add b                                            ; $7b0c: $80
	ld a, e                                          ; $7b0d: $7b
	cp $77                                           ; $7b0e: $fe $77
	ldh [c], a                                       ; $7b10: $e2
	sbc d                                            ; $7b11: $9a
	rlca                                             ; $7b12: $07
	dec a                                            ; $7b13: $3d
	dec c                                            ; $7b14: $0d
	ccf                                              ; $7b15: $3f
	ld b, $5b                                        ; $7b16: $06 $5b
	add b                                            ; $7b18: $80
	sbc h                                            ; $7b19: $9c
	ld a, l                                          ; $7b1a: $7d
	db $fd                                           ; $7b1b: $fd
	db $fd                                           ; $7b1c: $fd
	ld h, e                                          ; $7b1d: $63
	add b                                            ; $7b1e: $80
	ld a, a                                          ; $7b1f: $7f
	add [hl]                                         ; $7b20: $86
	rst SubAFromDE                                          ; $7b21: $df
	ld hl, sp-$62                                    ; $7b22: $f8 $9e
	xor b                                            ; $7b24: $a8
	inc bc                                           ; $7b25: $03
	add b                                            ; $7b26: $80
	ld [hl], a                                       ; $7b27: $77
	add b                                            ; $7b28: $80
	sbc h                                            ; $7b29: $9c
	inc bc                                           ; $7b2a: $03
	ccf                                              ; $7b2b: $3f
	jr c, jr_061_7b49                                ; $7b2c: $38 $1b

	add b                                            ; $7b2e: $80
	sbc d                                            ; $7b2f: $9a
	ret nz                                           ; $7b30: $c0

	ldh [rP1], a                                     ; $7b31: $e0 $00
	ldh [$60], a                                     ; $7b33: $e0 $60
	halt                                             ; $7b35: $76
	db $fd                                           ; $7b36: $fd
	ld b, e                                          ; $7b37: $43
	add b                                            ; $7b38: $80
	sbc d                                            ; $7b39: $9a
	ld bc, $06ff                                     ; $7b3a: $01 $ff $06
	ccf                                              ; $7b3d: $3f
	add hl, bc                                       ; $7b3e: $09
	dec de                                           ; $7b3f: $1b
	add b                                            ; $7b40: $80
	ld a, a                                          ; $7b41: $7f
	nop                                              ; $7b42: $00
	sbc [hl]                                         ; $7b43: $9e
	ld l, b                                          ; $7b44: $68
	ld [hl], a                                       ; $7b45: $77
	ld a, [hl]                                       ; $7b46: $7e
	ld h, a                                          ; $7b47: $67

jr_061_7b48:
	add b                                            ; $7b48: $80

jr_061_7b49:
	rst $38                                          ; $7b49: $ff
	sbc [hl]                                         ; $7b4a: $9e
	ld [bc], a                                       ; $7b4b: $02
	ld hl, sp+$7f                                    ; $7b4c: $f8 $7f
	or b                                             ; $7b4e: $b0
	add b                                            ; $7b4f: $80
	cp $38                                           ; $7b50: $fe $38
	ccf                                              ; $7b52: $3f
	rlca                                             ; $7b53: $07
	adc a                                            ; $7b54: $8f
	ld bc, $c0ff                                     ; $7b55: $01 $ff $c0
	rra                                              ; $7b58: $1f
	jr c, jr_061_7b5b                                ; $7b59: $38 $00

jr_061_7b5b:
	rst JumpTable                                          ; $7b5b: $c7
	nop                                              ; $7b5c: $00
	ld b, b                                          ; $7b5d: $40
	nop                                              ; $7b5e: $00
	ld l, b                                          ; $7b5f: $68
	nop                                              ; $7b60: $00
	rst AddAOntoHL                                          ; $7b61: $ef
	ccf                                              ; $7b62: $3f
	nop                                              ; $7b63: $00
	ccf                                              ; $7b64: $3f
	ld [$20ff], sp                                   ; $7b65: $08 $ff $20
	rra                                              ; $7b68: $1f
	ld bc, $017f                                     ; $7b69: $01 $7f $01
	ccf                                              ; $7b6c: $3f
	inc bc                                           ; $7b6d: $03
	ccf                                              ; $7b6e: $3f
	adc h                                            ; $7b6f: $8c
	rlca                                             ; $7b70: $07
	ld a, a                                          ; $7b71: $7f
	rrca                                             ; $7b72: $0f
	di                                               ; $7b73: $f3
	rst $38                                          ; $7b74: $ff
	ld hl, sp-$01                                    ; $7b75: $f8 $ff
	cp $7f                                           ; $7b77: $fe $7f
	cp $7f                                           ; $7b79: $fe $7f
	ld [$06ff], sp                                   ; $7b7b: $08 $ff $06
	rrca                                             ; $7b7e: $0f
	ld hl, $3133                                     ; $7b7f: $21 $33 $31
	ccf                                              ; $7b82: $3f
	inc bc                                           ; $7b83: $03
	ret nz                                           ; $7b84: $c0

	ld a, e                                          ; $7b85: $7b
	ret nz                                           ; $7b86: $c0

	sbc l                                            ; $7b87: $9d
	sbc a                                            ; $7b88: $9f
	db $10                                           ; $7b89: $10
	rrca                                             ; $7b8a: $0f
	ret nz                                           ; $7b8b: $c0

	rst SubAFromDE                                          ; $7b8c: $df
	ld bc, $c00f                                     ; $7b8d: $01 $0f $c0
	sbc e                                            ; $7b90: $9b
	rst SubAFromDE                                          ; $7b91: $df
	sub b                                            ; $7b92: $90
	rst $38                                          ; $7b93: $ff
	pop hl                                           ; $7b94: $e1
	rra                                              ; $7b95: $1f
	ret nz                                           ; $7b96: $c0

	sbc [hl]                                         ; $7b97: $9e
	inc bc                                           ; $7b98: $03
	inc bc                                           ; $7b99: $03
	ret nz                                           ; $7b9a: $c0

	sbc c                                            ; $7b9b: $99
	rst SubAFromDE                                          ; $7b9c: $df
	db $10                                           ; $7b9d: $10
	rst $38                                          ; $7b9e: $ff
	pop af                                           ; $7b9f: $f1
	ld a, a                                          ; $7ba0: $7f
	ld h, c                                          ; $7ba1: $61
	cpl                                              ; $7ba2: $2f
	ret nz                                           ; $7ba3: $c0

	jp nc, $8c01                                     ; $7ba4: $d2 $01 $8c

	and e                                            ; $7ba7: $a3
	sub b                                            ; $7ba8: $90
	and [hl]                                         ; $7ba9: $a6
	sub c                                            ; $7baa: $91
	and [hl]                                         ; $7bab: $a6
	sub c                                            ; $7bac: $91
	call $ddb3                                       ; $7bad: $cd $b3 $dd
	or e                                             ; $7bb0: $b3
	sbc e                                            ; $7bb1: $9b
	rst FarCall                                          ; $7bb2: $f7
	sbc d                                            ; $7bb3: $9a
	rst FarCall                                          ; $7bb4: $f7
	sub [hl]                                         ; $7bb5: $96
	rst $38                                          ; $7bb6: $ff
	call nc, $dcff                                   ; $7bb7: $d4 $ff $dc
	sbc $ff                                          ; $7bba: $de $ff
	add b                                            ; $7bbc: $80
	db $dd                                           ; $7bbd: $dd
	rst AddAOntoHL                                          ; $7bbe: $ef
	push de                                          ; $7bbf: $d5
	rst SubAFromHL                                          ; $7bc0: $d7
	db $fd                                           ; $7bc1: $fd
	res 5, a                                         ; $7bc2: $cb $af
	db $e3                                           ; $7bc4: $e3
	sub a                                            ; $7bc5: $97
	ldh a, [c]                                       ; $7bc6: $f2
	sbc b                                            ; $7bc7: $98
	db $fc                                           ; $7bc8: $fc
	adc a                                            ; $7bc9: $8f
	rst $38                                          ; $7bca: $ff
	dec c                                            ; $7bcb: $0d
	rst $38                                          ; $7bcc: $ff
	dec c                                            ; $7bcd: $0d
	rst SubAFromDE                                          ; $7bce: $df
	inc c                                            ; $7bcf: $0c
	rst SubAFromDE                                          ; $7bd0: $df
	inc b                                            ; $7bd1: $04
	ld e, a                                          ; $7bd2: $5f
	dec b                                            ; $7bd3: $05
	ld c, a                                          ; $7bd4: $4f
	dec b                                            ; $7bd5: $05
	rrca                                             ; $7bd6: $0f
	rlca                                             ; $7bd7: $07
	rrca                                             ; $7bd8: $0f
	rlca                                             ; $7bd9: $07
	ld c, $07                                        ; $7bda: $0e $07
	add b                                            ; $7bdc: $80
	ld c, a                                          ; $7bdd: $4f
	rlca                                             ; $7bde: $07
	ld e, [hl]                                       ; $7bdf: $5e
	rlca                                             ; $7be0: $07
	call c, $dc4f                                    ; $7be1: $dc $4f $dc
	ld c, a                                          ; $7be4: $4f
	ld a, [$78df]                                    ; $7be5: $fa $df $78
	rrca                                             ; $7be8: $0f
	add h                                            ; $7be9: $84
	and [hl]                                         ; $7bea: $a6
	adc l                                            ; $7beb: $8d
	halt                                             ; $7bec: $76
	adc l                                            ; $7bed: $8d
	ld c, b                                          ; $7bee: $48
	rra                                              ; $7bef: $1f
	jr z, jr_061_7c11                                ; $7bf0: $28 $1f

	reti                                             ; $7bf2: $d9


	ccf                                              ; $7bf3: $3f
	sbc e                                            ; $7bf4: $9b
	ld a, [hl]                                       ; $7bf5: $7e
	ccf                                              ; $7bf6: $3f
	db $ec                                           ; $7bf7: $ec
	ld a, a                                          ; $7bf8: $7f
	set 7, a                                         ; $7bf9: $cb $ff
	sub [hl]                                         ; $7bfb: $96
	sub h                                            ; $7bfc: $94
	db $f4                                           ; $7bfd: $f4
	inc c                                            ; $7bfe: $0c
	adc a                                            ; $7bff: $8f
	rrca                                             ; $7c00: $0f
	dec sp                                           ; $7c01: $3b
	ccf                                              ; $7c02: $3f
	ld b, $04                                        ; $7c03: $06 $04
	inc bc                                           ; $7c05: $03
	ld [bc], a                                       ; $7c06: $02
	add b                                            ; $7c07: $80
	cp a                                             ; $7c08: $bf
	add b                                            ; $7c09: $80
	ret nz                                           ; $7c0a: $c0

	adc b                                            ; $7c0b: $88
	add b                                            ; $7c0c: $80
	ldh [$c0], a                                     ; $7c0d: $e0 $c0
	ldh a, [$e0]                                     ; $7c0f: $f0 $e0

jr_061_7c11:
	ld hl, sp-$10                                    ; $7c11: $f8 $f0
	cp [hl]                                          ; $7c13: $be
	db $e4                                           ; $7c14: $e4
	ei                                               ; $7c15: $fb
	pop hl                                           ; $7c16: $e1
	sbc h                                            ; $7c17: $9c
	ld hl, sp-$72                                    ; $7c18: $f8 $8e
	db $fc                                           ; $7c1a: $fc
	ld d, e                                          ; $7c1b: $53
	rst $38                                          ; $7c1c: $ff
	ret nz                                           ; $7c1d: $c0

	rst $38                                          ; $7c1e: $ff
	and b                                            ; $7c1f: $a0
	rst $38                                          ; $7c20: $ff

jr_061_7c21:
	jr nz, jr_061_7c21                               ; $7c21: $20 $fe

	cp a                                             ; $7c23: $bf
	cp $bd                                           ; $7c24: $fe $bd
	sbc d                                            ; $7c26: $9a
	add b                                            ; $7c27: $80
	db $dd                                           ; $7c28: $dd
	jr z, @+$01                                      ; $7c29: $28 $ff

	ld l, l                                          ; $7c2b: $6d
	ld a, e                                          ; $7c2c: $7b
	cp $89                                           ; $7c2d: $fe $89
	db $fd                                           ; $7c2f: $fd
	or a                                             ; $7c30: $b7
	rst $38                                          ; $7c31: $ff
	or $ff                                           ; $7c32: $f6 $ff
	ld h, $ff                                        ; $7c34: $26 $ff
	inc l                                            ; $7c36: $2c
	rst $38                                          ; $7c37: $ff
	ld [$c0ff], sp                                   ; $7c38: $08 $ff $c0
	ld a, a                                          ; $7c3b: $7f
	ld h, b                                          ; $7c3c: $60
	rst $38                                          ; $7c3d: $ff
	ret nz                                           ; $7c3e: $c0

	sbc $c0                                          ; $7c3f: $de $c0
	ld b, b                                          ; $7c41: $40
	ret nz                                           ; $7c42: $c0

	add b                                            ; $7c43: $80
	add b                                            ; $7c44: $80
	db $fd                                           ; $7c45: $fd
	add [hl]                                         ; $7c46: $86
	rst AddAOntoHL                                          ; $7c47: $ef
	cp l                                             ; $7c48: $bd
	rst AddAOntoHL                                          ; $7c49: $ef
	dec a                                            ; $7c4a: $3d
	rst AddAOntoHL                                          ; $7c4b: $ef
	ccf                                              ; $7c4c: $3f
	rst $38                                          ; $7c4d: $ff
	add hl, sp                                       ; $7c4e: $39
	rst $38                                          ; $7c4f: $ff

jr_061_7c50:
	jr nc, jr_061_7c50                               ; $7c50: $30 $fe

	daa                                              ; $7c52: $27
	rst $38                                          ; $7c53: $ff
	dec l                                            ; $7c54: $2d
	ei                                               ; $7c55: $fb
	dec bc                                           ; $7c56: $0b
	rst $38                                          ; $7c57: $ff
	rrca                                             ; $7c58: $0f
	db $fd                                           ; $7c59: $fd
	rrca                                             ; $7c5a: $0f
	add hl, sp                                       ; $7c5b: $39
	inc c                                            ; $7c5c: $0c
	ld a, $04                                        ; $7c5d: $3e $04
	inc sp                                           ; $7c5f: $33
	cp a                                             ; $7c60: $bf
	rra                                              ; $7c61: $1f
	rra                                              ; $7c62: $1f
	adc b                                            ; $7c63: $88
	db $10                                           ; $7c64: $10
	ccf                                              ; $7c65: $3f
	db $10                                           ; $7c66: $10
	rst SubAFromHL                                          ; $7c67: $d7
	ld a, a                                          ; $7c68: $7f
	push af                                          ; $7c69: $f5
	ld a, l                                          ; $7c6a: $7d
	db $fd                                           ; $7c6b: $fd
	cp l                                             ; $7c6c: $bd
	ld hl, sp+$38                                    ; $7c6d: $f8 $38
	ldh a, [$30]                                     ; $7c6f: $f0 $30
	ldh a, [rSVBK]                                   ; $7c71: $f0 $70
	ld hl, sp-$08                                    ; $7c73: $f8 $f8
	ld a, b                                          ; $7c75: $78
	xor b                                            ; $7c76: $a8
	ld hl, sp+$38                                    ; $7c77: $f8 $38
	ld hl, sp+$28                                    ; $7c79: $f8 $28
	ld [hl], a                                       ; $7c7b: $77

Call_061_7c7c:
	cp $7f                                           ; $7c7c: $fe $7f
	ldh a, [$80]                                     ; $7c7e: $f0 $80
	or b                                             ; $7c80: $b0
	ld [hl], b                                       ; $7c81: $70
	ret nz                                           ; $7c82: $c0

	ld [hl], b                                       ; $7c83: $70
	ret z                                            ; $7c84: $c8

	ld a, b                                          ; $7c85: $78
	ld c, b                                          ; $7c86: $48
	ld hl, sp-$1c                                    ; $7c87: $f8 $e4
	db $fc                                           ; $7c89: $fc
	and h                                            ; $7c8a: $a4
	db $fc                                           ; $7c8b: $fc
	jp nc, Jump_061_52fe                             ; $7c8c: $d2 $fe $52

	cp $29                                           ; $7c8f: $fe $29
	rst $38                                          ; $7c91: $ff
	dec h                                            ; $7c92: $25
	rst $38                                          ; $7c93: $ff
	ld d, $ff                                        ; $7c94: $16 $ff
	sub e                                            ; $7c96: $93
	rst $38                                          ; $7c97: $ff
	jp nc, $e97f                                     ; $7c98: $d2 $7f $e9

	cp a                                             ; $7c9b: $bf
	ld sp, hl                                        ; $7c9c: $f9
	rst SubAFromDE                                          ; $7c9d: $df
	ld sp, hl                                        ; $7c9e: $f9
	sbc b                                            ; $7c9f: $98
	rst SubAFromDE                                          ; $7ca0: $df
	ld hl, sp+$6f                                    ; $7ca1: $f8 $6f
	ld sp, hl                                        ; $7ca3: $f9
	ld c, a                                          ; $7ca4: $4f
	ld hl, sp+$4f                                    ; $7ca5: $f8 $4f
	ld b, e                                          ; $7ca7: $43
	ld b, b                                          ; $7ca8: $40
	sbc d                                            ; $7ca9: $9a
	ret z                                            ; $7caa: $c8

	rst $38                                          ; $7cab: $ff
	sub e                                            ; $7cac: $93
	db $fd                                           ; $7cad: $fd
	inc b                                            ; $7cae: $04
	ld e, a                                          ; $7caf: $5f
	ld b, b                                          ; $7cb0: $40
	ld b, e                                          ; $7cb1: $43
	ld h, b                                          ; $7cb2: $60
	sbc [hl]                                         ; $7cb3: $9e
	nop                                              ; $7cb4: $00
	ld [hl], a                                       ; $7cb5: $77
	ld e, [hl]                                       ; $7cb6: $5e
	scf                                              ; $7cb7: $37
	ld h, b                                          ; $7cb8: $60
	ld a, e                                          ; $7cb9: $7b
	dec l                                            ; $7cba: $2d
	ld a, a                                          ; $7cbb: $7f
	ld e, [hl]                                       ; $7cbc: $5e
	sbc h                                            ; $7cbd: $9c
	dec c                                            ; $7cbe: $0d
	ei                                               ; $7cbf: $fb
	dec bc                                           ; $7cc0: $0b
	dec de                                           ; $7cc1: $1b
	ld h, b                                          ; $7cc2: $60
	ld a, a                                          ; $7cc3: $7f
	ld h, h                                          ; $7cc4: $64
	sbc [hl]                                         ; $7cc5: $9e
	add sp, $47                                      ; $7cc6: $e8 $47
	ld h, b                                          ; $7cc8: $60
	dec sp                                           ; $7cc9: $3b
	add b                                            ; $7cca: $80
	sbc l                                            ; $7ccb: $9d
	sub b                                            ; $7ccc: $90
	rst $38                                          ; $7ccd: $ff
	cp a                                             ; $7cce: $bf
	adc a                                            ; $7ccf: $8f
	rra                                              ; $7cd0: $1f
	sbc c                                            ; $7cd1: $99
	rlca                                             ; $7cd2: $07
	ld a, $3e                                        ; $7cd3: $3e $3e
	rrca                                             ; $7cd5: $0f
	rlca                                             ; $7cd6: $07
	add e                                            ; $7cd7: $83
	ld e, a                                          ; $7cd8: $5f
	add b                                            ; $7cd9: $80
	sbc [hl]                                         ; $7cda: $9e
	and [hl]                                         ; $7cdb: $a6
	ld a, e                                          ; $7cdc: $7b
	ld a, [hl]                                       ; $7cdd: $7e
	ld l, a                                          ; $7cde: $6f
	add b                                            ; $7cdf: $80
	cp [hl]                                          ; $7ce0: $be
	rst $38                                          ; $7ce1: $ff
	cp $f0                                           ; $7ce2: $fe $f0
	sbc [hl]                                         ; $7ce4: $9e
	ldh a, [$de]                                     ; $7ce5: $f0 $de
	ret nz                                           ; $7ce7: $c0

	ld a, e                                          ; $7ce8: $7b
	ld a, l                                          ; $7ce9: $7d
	ld [hl], e                                       ; $7cea: $73
	add b                                            ; $7ceb: $80
	sbc h                                            ; $7cec: $9c
	dec a                                            ; $7ced: $3d
	rst $38                                          ; $7cee: $ff
	ccf                                              ; $7cef: $3f
	ld [hl], a                                       ; $7cf0: $77
	add b                                            ; $7cf1: $80
	ld a, e                                          ; $7cf2: $7b
	cp $bf                                           ; $7cf3: $fe $bf
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	sbc d                                            ; $7cf7: $9a
	rlca                                             ; $7cf8: $07
	dec a                                            ; $7cf9: $3d
	dec c                                            ; $7cfa: $0d

jr_061_7cfb:
	ccf                                              ; $7cfb: $3f
	ld b, $53                                        ; $7cfc: $06 $53
	add b                                            ; $7cfe: $80
	sbc h                                            ; $7cff: $9c
	dec a                                            ; $7d00: $3d
	ld hl, sp-$48                                    ; $7d01: $f8 $b8
	ld l, e                                          ; $7d03: $6b
	add b                                            ; $7d04: $80
	ld a, a                                          ; $7d05: $7f
	add [hl]                                         ; $7d06: $86
	rst SubAFromDE                                          ; $7d07: $df
	ld hl, sp+$7e                                    ; $7d08: $f8 $7e
	call c, $8003                                    ; $7d0a: $dc $03 $80
	ld a, e                                          ; $7d0d: $7b
	add b                                            ; $7d0e: $80
	sbc h                                            ; $7d0f: $9c
	inc bc                                           ; $7d10: $03
	ccf                                              ; $7d11: $3f
	jr c, jr_061_7d2f                                ; $7d12: $38 $1b

	add b                                            ; $7d14: $80
	sbc d                                            ; $7d15: $9a
	ld h, b                                          ; $7d16: $60
	ldh a, [$80]                                     ; $7d17: $f0 $80
	ldh a, [$30]                                     ; $7d19: $f0 $30
	ld a, e                                          ; $7d1b: $7b
	ld a, a                                          ; $7d1c: $7f
	ccf                                              ; $7d1d: $3f
	add b                                            ; $7d1e: $80
	sbc d                                            ; $7d1f: $9a
	ld bc, $06ff                                     ; $7d20: $01 $ff $06
	ccf                                              ; $7d23: $3f
	add hl, bc                                       ; $7d24: $09
	dec de                                           ; $7d25: $1b
	add b                                            ; $7d26: $80
	sbc h                                            ; $7d27: $9c
	cp b                                             ; $7d28: $b8
	ld hl, sp+$68                                    ; $7d29: $f8 $68
	ld [hl], a                                       ; $7d2b: $77
	ld a, [hl]                                       ; $7d2c: $7e
	ld h, a                                          ; $7d2d: $67
	add b                                            ; $7d2e: $80

jr_061_7d2f:
	push af                                          ; $7d2f: $f5
	ld a, a                                          ; $7d30: $7f
	or c                                             ; $7d31: $b1
	sub l                                            ; $7d32: $95
	cp $38                                           ; $7d33: $fe $38
	ccf                                              ; $7d35: $3f
	rlca                                             ; $7d36: $07
	adc a                                            ; $7d37: $8f
	ld bc, $c0ff                                     ; $7d38: $01 $ff $c0
	rra                                              ; $7d3b: $1f
	jr c, jr_061_7cfb                                ; $7d3c: $38 $bd

	rst JumpTable                                          ; $7d3e: $c7
	ld b, b                                          ; $7d3f: $40
	ld l, b                                          ; $7d40: $68
	rst AddAOntoHL                                          ; $7d41: $ef
	add b                                            ; $7d42: $80
	ccf                                              ; $7d43: $3f
	nop                                              ; $7d44: $00
	ccf                                              ; $7d45: $3f
	ld [$60ff], sp                                   ; $7d46: $08 $ff $60
	rra                                              ; $7d49: $1f
	ld bc, $017f                                     ; $7d4a: $01 $7f $01
	ccf                                              ; $7d4d: $3f
	inc bc                                           ; $7d4e: $03
	ccf                                              ; $7d4f: $3f
	rlca                                             ; $7d50: $07
	ld a, a                                          ; $7d51: $7f
	rrca                                             ; $7d52: $0f
	di                                               ; $7d53: $f3
	rst $38                                          ; $7d54: $ff
	ld hl, sp-$01                                    ; $7d55: $f8 $ff
	cp $7f                                           ; $7d57: $fe $7f
	cp $7f                                           ; $7d59: $fe $7f
	ld [$06ff], sp                                   ; $7d5b: $08 $ff $06
	rrca                                             ; $7d5e: $0f
	ld hl, $3133                                     ; $7d5f: $21 $33 $31
	rst SubAFromDE                                          ; $7d62: $df
	ccf                                              ; $7d63: $3f
	ld a, e                                          ; $7d64: $7b
	ldh [$9d], a                                     ; $7d65: $e0 $9d
	sbc a                                            ; $7d67: $9f
	db $10                                           ; $7d68: $10
	rlca                                             ; $7d69: $07
	ldh [$9d], a                                     ; $7d6a: $e0 $9d
	rst $38                                          ; $7d6c: $ff
	pop hl                                           ; $7d6d: $e1
	dec bc                                           ; $7d6e: $0b
	ldh [$9c], a                                     ; $7d6f: $e0 $9c
	pop af                                           ; $7d71: $f1
	ld a, a                                          ; $7d72: $7f
	ld h, c                                          ; $7d73: $61
	cpl                                              ; $7d74: $2f
	ldh [$ea], a                                     ; $7d75: $e0 $ea
	ld bc, $a38c                                     ; $7d77: $01 $8c $a3
	sub b                                            ; $7d7a: $90
	and [hl]                                         ; $7d7b: $a6
	sub c                                            ; $7d7c: $91
	and [hl]                                         ; $7d7d: $a6
	sub c                                            ; $7d7e: $91
	call $ddb3                                       ; $7d7f: $cd $b3 $dd
	or e                                             ; $7d82: $b3
	sbc e                                            ; $7d83: $9b
	rst FarCall                                          ; $7d84: $f7
	sbc d                                            ; $7d85: $9a
	rst FarCall                                          ; $7d86: $f7
	sub [hl]                                         ; $7d87: $96
	rst $38                                          ; $7d88: $ff
	call nc, $dcff                                   ; $7d89: $d4 $ff $dc
	sbc $ff                                          ; $7d8c: $de $ff
	add b                                            ; $7d8e: $80
	db $dd                                           ; $7d8f: $dd
	rst AddAOntoHL                                          ; $7d90: $ef
	push de                                          ; $7d91: $d5
	rst SubAFromHL                                          ; $7d92: $d7
	db $fd                                           ; $7d93: $fd
	res 5, a                                         ; $7d94: $cb $af
	db $e3                                           ; $7d96: $e3
	sub a                                            ; $7d97: $97
	ldh a, [c]                                       ; $7d98: $f2
	sbc b                                            ; $7d99: $98
	db $fc                                           ; $7d9a: $fc
	adc a                                            ; $7d9b: $8f
	rst $38                                          ; $7d9c: $ff
	dec c                                            ; $7d9d: $0d
	rst $38                                          ; $7d9e: $ff
	dec c                                            ; $7d9f: $0d
	rst SubAFromDE                                          ; $7da0: $df
	inc c                                            ; $7da1: $0c
	rst SubAFromDE                                          ; $7da2: $df
	inc b                                            ; $7da3: $04
	ld e, a                                          ; $7da4: $5f
	dec b                                            ; $7da5: $05
	ld c, a                                          ; $7da6: $4f
	dec b                                            ; $7da7: $05
	rrca                                             ; $7da8: $0f
	rlca                                             ; $7da9: $07
	rrca                                             ; $7daa: $0f
	rlca                                             ; $7dab: $07
	ld c, $07                                        ; $7dac: $0e $07
	add b                                            ; $7dae: $80
	ld c, a                                          ; $7daf: $4f
	rlca                                             ; $7db0: $07
	ld e, [hl]                                       ; $7db1: $5e
	rlca                                             ; $7db2: $07
	call c, $dc4f                                    ; $7db3: $dc $4f $dc
	ld c, a                                          ; $7db6: $4f
	ld a, [$78df]                                    ; $7db7: $fa $df $78
	rrca                                             ; $7dba: $0f
	add h                                            ; $7dbb: $84
	and [hl]                                         ; $7dbc: $a6
	adc l                                            ; $7dbd: $8d
	halt                                             ; $7dbe: $76
	adc l                                            ; $7dbf: $8d
	ld c, b                                          ; $7dc0: $48
	rra                                              ; $7dc1: $1f
	jr z, jr_061_7de3                                ; $7dc2: $28 $1f

	reti                                             ; $7dc4: $d9


	ccf                                              ; $7dc5: $3f
	sbc e                                            ; $7dc6: $9b
	ld a, [hl]                                       ; $7dc7: $7e
	ccf                                              ; $7dc8: $3f
	db $ec                                           ; $7dc9: $ec
	ld a, a                                          ; $7dca: $7f
	ret                                              ; $7dcb: $c9


	rst $38                                          ; $7dcc: $ff
	sub d                                            ; $7dcd: $92
	add b                                            ; $7dce: $80
	db $fc                                           ; $7dcf: $fc
	inc b                                            ; $7dd0: $04
	sbc a                                            ; $7dd1: $9f
	rrca                                             ; $7dd2: $0f
	dec sp                                           ; $7dd3: $3b
	ccf                                              ; $7dd4: $3f
	ld b, $04                                        ; $7dd5: $06 $04
	inc bc                                           ; $7dd7: $03
	ld [bc], a                                       ; $7dd8: $02
	add b                                            ; $7dd9: $80
	nop                                              ; $7dda: $00
	add b                                            ; $7ddb: $80
	nop                                              ; $7ddc: $00
	ret nz                                           ; $7ddd: $c0

	add b                                            ; $7dde: $80
	ldh [$c0], a                                     ; $7ddf: $e0 $c0
	ldh a, [$e0]                                     ; $7de1: $f0 $e0

jr_061_7de3:
	ld hl, sp-$10                                    ; $7de3: $f8 $f0
	cp [hl]                                          ; $7de5: $be
	db $e4                                           ; $7de6: $e4
	ei                                               ; $7de7: $fb
	pop hl                                           ; $7de8: $e1
	sbc h                                            ; $7de9: $9c
	ld hl, sp-$72                                    ; $7dea: $f8 $8e
	db $fc                                           ; $7dec: $fc
	ld d, e                                          ; $7ded: $53
	adc a                                            ; $7dee: $8f
	rst $38                                          ; $7def: $ff
	ret nz                                           ; $7df0: $c0

	rst $38                                          ; $7df1: $ff
	and b                                            ; $7df2: $a0
	rst $38                                          ; $7df3: $ff

jr_061_7df4:
	jr nz, jr_061_7df4                               ; $7df4: $20 $fe

	nop                                              ; $7df6: $00
	cp $00                                           ; $7df7: $fe $00
	cp l                                             ; $7df9: $bd
	add b                                            ; $7dfa: $80
	db $dd                                           ; $7dfb: $dd
	jr z, @+$01                                      ; $7dfc: $28 $ff

	ld l, l                                          ; $7dfe: $6d
	ld a, e                                          ; $7dff: $7b
	cp $89                                           ; $7e00: $fe $89
	db $fd                                           ; $7e02: $fd
	or a                                             ; $7e03: $b7
	rst $38                                          ; $7e04: $ff
	or $ff                                           ; $7e05: $f6 $ff
	ld h, $ff                                        ; $7e07: $26 $ff
	inc l                                            ; $7e09: $2c
	rst $38                                          ; $7e0a: $ff
	ld [$c0ff], sp                                   ; $7e0b: $08 $ff $c0
	ld a, a                                          ; $7e0e: $7f
	ld h, b                                          ; $7e0f: $60
	rst $38                                          ; $7e10: $ff
	ret nz                                           ; $7e11: $c0

	sbc $c0                                          ; $7e12: $de $c0
	ld b, b                                          ; $7e14: $40
	ret nz                                           ; $7e15: $c0

	add b                                            ; $7e16: $80
	add b                                            ; $7e17: $80
	db $fd                                           ; $7e18: $fd
	sub l                                            ; $7e19: $95
	rst AddAOntoHL                                          ; $7e1a: $ef
	cp l                                             ; $7e1b: $bd
	rst AddAOntoHL                                          ; $7e1c: $ef
	dec a                                            ; $7e1d: $3d
	rst AddAOntoHL                                          ; $7e1e: $ef
	add hl, sp                                       ; $7e1f: $39
	rst $38                                          ; $7e20: $ff
	ccf                                              ; $7e21: $3f
	rst $38                                          ; $7e22: $ff
	jr nc, jr_061_7ea0                               ; $7e23: $30 $7b

	ldh [$80], a                                     ; $7e25: $e0 $80
	dec l                                            ; $7e27: $2d
	ei                                               ; $7e28: $fb
	dec bc                                           ; $7e29: $0b
	rst $38                                          ; $7e2a: $ff
	rrca                                             ; $7e2b: $0f
	db $fd                                           ; $7e2c: $fd
	rrca                                             ; $7e2d: $0f
	add hl, sp                                       ; $7e2e: $39
	inc c                                            ; $7e2f: $0c
	ld a, $04                                        ; $7e30: $3e $04
	inc sp                                           ; $7e32: $33
	nop                                              ; $7e33: $00
	rra                                              ; $7e34: $1f
	nop                                              ; $7e35: $00
	rra                                              ; $7e36: $1f
	db $10                                           ; $7e37: $10
	ccf                                              ; $7e38: $3f
	db $10                                           ; $7e39: $10
	rst SubAFromHL                                          ; $7e3a: $d7
	ld a, a                                          ; $7e3b: $7f
	push af                                          ; $7e3c: $f5
	ld a, l                                          ; $7e3d: $7d
	db $fd                                           ; $7e3e: $fd
	dec a                                            ; $7e3f: $3d
	ld hl, sp-$48                                    ; $7e40: $f8 $b8
	ldh a, [$30]                                     ; $7e42: $f0 $30
	ldh a, [rSVBK]                                   ; $7e44: $f0 $70
	rst SubAFromDE                                          ; $7e46: $df
	ld hl, sp-$67                                    ; $7e47: $f8 $99
	ld a, b                                          ; $7e49: $78
	xor b                                            ; $7e4a: $a8
	ld hl, sp+$38                                    ; $7e4b: $f8 $38
	ld hl, sp+$28                                    ; $7e4d: $f8 $28
	ld [hl], a                                       ; $7e4f: $77
	cp $7f                                           ; $7e50: $fe $7f
	ldh a, [$80]                                     ; $7e52: $f0 $80
	or b                                             ; $7e54: $b0
	ld [hl], b                                       ; $7e55: $70
	ret nz                                           ; $7e56: $c0

	ld [hl], b                                       ; $7e57: $70
	ret z                                            ; $7e58: $c8

	ld a, b                                          ; $7e59: $78
	ld c, b                                          ; $7e5a: $48
	ld hl, sp-$1c                                    ; $7e5b: $f8 $e4
	db $fc                                           ; $7e5d: $fc
	and h                                            ; $7e5e: $a4
	db $fc                                           ; $7e5f: $fc
	jp nc, Jump_061_52fe                             ; $7e60: $d2 $fe $52

	cp $29                                           ; $7e63: $fe $29
	rst $38                                          ; $7e65: $ff
	dec h                                            ; $7e66: $25
	rst $38                                          ; $7e67: $ff
	ld d, $ff                                        ; $7e68: $16 $ff
	sub e                                            ; $7e6a: $93
	rst $38                                          ; $7e6b: $ff
	jp nc, $e97f                                     ; $7e6c: $d2 $7f $e9

	cp a                                             ; $7e6f: $bf
	ld sp, hl                                        ; $7e70: $f9
	rst SubAFromDE                                          ; $7e71: $df
	ld sp, hl                                        ; $7e72: $f9
	sbc b                                            ; $7e73: $98
	rst SubAFromDE                                          ; $7e74: $df
	ld hl, sp+$6f                                    ; $7e75: $f8 $6f
	ld sp, hl                                        ; $7e77: $f9
	ld c, a                                          ; $7e78: $4f
	ld hl, sp+$4f                                    ; $7e79: $f8 $4f

Call_061_7e7b:
	ld b, e                                          ; $7e7b: $43
	ld b, b                                          ; $7e7c: $40
	sub h                                            ; $7e7d: $94
	ret z                                            ; $7e7e: $c8

	rst $38                                          ; $7e7f: $ff
	sub c                                            ; $7e80: $91
	rst $38                                          ; $7e81: $ff
	ld [bc], a                                       ; $7e82: $02
	adc a                                            ; $7e83: $8f
	rlca                                             ; $7e84: $07
	dec bc                                           ; $7e85: $0b
	rrca                                             ; $7e86: $0f
	ld a, $3c                                        ; $7e87: $3e $3c
	ld [hl], a                                       ; $7e89: $77
	ld b, b                                          ; $7e8a: $40
	ld b, e                                          ; $7e8b: $43
	ld h, b                                          ; $7e8c: $60
	sbc [hl]                                         ; $7e8d: $9e
	nop                                              ; $7e8e: $00
	ld [hl], a                                       ; $7e8f: $77
	ld e, [hl]                                       ; $7e90: $5e
	inc sp                                           ; $7e91: $33
	ld h, b                                          ; $7e92: $60
	sbc [hl]                                         ; $7e93: $9e
	jr nz, jr_061_7f11                               ; $7e94: $20 $7b

	sbc $9c                                          ; $7e96: $de $9c
	dec c                                            ; $7e98: $0d
	ei                                               ; $7e99: $fb
	dec bc                                           ; $7e9a: $0b
	dec de                                           ; $7e9b: $1b
	ld h, b                                          ; $7e9c: $60
	ld a, a                                          ; $7e9d: $7f
	ld h, h                                          ; $7e9e: $64
	sbc [hl]                                         ; $7e9f: $9e

jr_061_7ea0:
	add sp, $47                                      ; $7ea0: $e8 $47
	ld h, b                                          ; $7ea2: $60
	ld d, e                                          ; $7ea3: $53
	add b                                            ; $7ea4: $80
	sbc [hl]                                         ; $7ea5: $9e
	ld a, a                                          ; $7ea6: $7f
	ld [hl], e                                       ; $7ea7: $73
	add b                                            ; $7ea8: $80
	sub e                                            ; $7ea9: $93
	sub b                                            ; $7eaa: $90
	rst $38                                          ; $7eab: $ff
	nop                                              ; $7eac: $00
	adc a                                            ; $7ead: $8f
	nop                                              ; $7eae: $00
	rrca                                             ; $7eaf: $0f
	rlca                                             ; $7eb0: $07
	ld a, $3e                                        ; $7eb1: $3e $3e
	rrca                                             ; $7eb3: $0f
	rlca                                             ; $7eb4: $07
	add e                                            ; $7eb5: $83
	ld e, a                                          ; $7eb6: $5f
	add b                                            ; $7eb7: $80
	sbc h                                            ; $7eb8: $9c
	or [hl]                                          ; $7eb9: $b6
	rst $38                                          ; $7eba: $ff
	and $6b                                          ; $7ebb: $e6 $6b
	add b                                            ; $7ebd: $80
	ld a, e                                          ; $7ebe: $7b
	cp $7e                                           ; $7ebf: $fe $7e
	push bc                                          ; $7ec1: $c5
	rst SubAFromDE                                          ; $7ec2: $df
	ldh a, [$de]                                     ; $7ec3: $f0 $de
	ret nz                                           ; $7ec5: $c0

	ld a, d                                          ; $7ec6: $7a
	and d                                            ; $7ec7: $a2
	ld l, e                                          ; $7ec8: $6b
	add b                                            ; $7ec9: $80
	sbc h                                            ; $7eca: $9c
	inc a                                            ; $7ecb: $3c
	rst $38                                          ; $7ecc: $ff
	inc sp                                           ; $7ecd: $33
	ld a, e                                          ; $7ece: $7b

jr_061_7ecf:
	add b                                            ; $7ecf: $80
	ld a, a                                          ; $7ed0: $7f
	cp $77                                           ; $7ed1: $fe $77
	ldh [c], a                                       ; $7ed3: $e2
	sbc d                                            ; $7ed4: $9a
	rlca                                             ; $7ed5: $07
	dec a                                            ; $7ed6: $3d
	dec c                                            ; $7ed7: $0d
	ccf                                              ; $7ed8: $3f
	ld b, $4b                                        ; $7ed9: $06 $4b
	add b                                            ; $7edb: $80
	sbc h                                            ; $7edc: $9c
	jr c, jr_061_7ecf                                ; $7edd: $38 $f0

	or b                                             ; $7edf: $b0
	ld [hl], e                                       ; $7ee0: $73
	add b                                            ; $7ee1: $80
	ld a, a                                          ; $7ee2: $7f
	add [hl]                                         ; $7ee3: $86
	rst SubAFromDE                                          ; $7ee4: $df
	ld hl, sp+$7e                                    ; $7ee5: $f8 $7e
	call c, $8003                                    ; $7ee7: $dc $03 $80
	ld a, e                                          ; $7eea: $7b
	add b                                            ; $7eeb: $80
	sbc h                                            ; $7eec: $9c
	inc bc                                           ; $7eed: $03
	ccf                                              ; $7eee: $3f
	jr c, jr_061_7f0c                                ; $7eef: $38 $1b

	add b                                            ; $7ef1: $80
	sbc b                                            ; $7ef2: $98
	ld h, b                                          ; $7ef3: $60
	ldh a, [$80]                                     ; $7ef4: $f0 $80
	ldh a, [$30]                                     ; $7ef6: $f0 $30
	ret nz                                           ; $7ef8: $c0

	ret nz                                           ; $7ef9: $c0

	dec sp                                           ; $7efa: $3b
	add b                                            ; $7efb: $80
	sbc d                                            ; $7efc: $9a
	ld bc, $06ff                                     ; $7efd: $01 $ff $06
	ccf                                              ; $7f00: $3f
	add hl, bc                                       ; $7f01: $09
	dec de                                           ; $7f02: $1b
	add b                                            ; $7f03: $80
	sbc h                                            ; $7f04: $9c
	cp b                                             ; $7f05: $b8
	ld hl, sp+$68                                    ; $7f06: $f8 $68
	ld [hl], a                                       ; $7f08: $77
	ld a, [hl]                                       ; $7f09: $7e
	ld h, a                                          ; $7f0a: $67
	add b                                            ; $7f0b: $80

jr_061_7f0c:
	db $fd                                           ; $7f0c: $fd
	sbc [hl]                                         ; $7f0d: $9e
	ld bc, $7ffa                                     ; $7f0e: $01 $fa $7f

jr_061_7f11:
	or c                                             ; $7f11: $b1
	adc c                                            ; $7f12: $89
	cp $38                                           ; $7f13: $fe $38
	ccf                                              ; $7f15: $3f
	rlca                                             ; $7f16: $07
	adc a                                            ; $7f17: $8f
	ld bc, $c0ff                                     ; $7f18: $01 $ff $c0
	rra                                              ; $7f1b: $1f
	jr c, jr_061_7f1e                                ; $7f1c: $38 $00

jr_061_7f1e:
	rst JumpTable                                          ; $7f1e: $c7
	nop                                              ; $7f1f: $00
	ld b, b                                          ; $7f20: $40
	nop                                              ; $7f21: $00
	ld l, b                                          ; $7f22: $68
	nop                                              ; $7f23: $00
	rst AddAOntoHL                                          ; $7f24: $ef
	ccf                                              ; $7f25: $3f
	nop                                              ; $7f26: $00
	ccf                                              ; $7f27: $3f
	db $10                                           ; $7f28: $10
	ld a, e                                          ; $7f29: $7b
	ldh a, [hDisp0_OBP0]                                     ; $7f2a: $f0 $86
	ld bc, $017f                                     ; $7f2c: $01 $7f $01
	ccf                                              ; $7f2f: $3f
	inc bc                                           ; $7f30: $03
	ccf                                              ; $7f31: $3f
	rlca                                             ; $7f32: $07
	ld a, a                                          ; $7f33: $7f
	rrca                                             ; $7f34: $0f
	di                                               ; $7f35: $f3
	rst $38                                          ; $7f36: $ff
	ld hl, sp-$01                                    ; $7f37: $f8 $ff
	cp $7f                                           ; $7f39: $fe $7f
	cp $7f                                           ; $7f3b: $fe $7f
	ld [$06ff], sp                                   ; $7f3d: $08 $ff $06
	rrca                                             ; $7f40: $0f
	ld hl, $3133                                     ; $7f41: $21 $33 $31
	ccf                                              ; $7f44: $3f
	ld a, e                                          ; $7f45: $7b
	ldh [$9c], a                                     ; $7f46: $e0 $9c
	nop                                              ; $7f48: $00
	sbc a                                            ; $7f49: $9f
	sub b                                            ; $7f4a: $90
	rlca                                             ; $7f4b: $07
	ldh [$9d], a                                     ; $7f4c: $e0 $9d
	rst $38                                          ; $7f4e: $ff
	pop hl                                           ; $7f4f: $e1
	daa                                              ; $7f50: $27
	ldh [$6f], a                                     ; $7f51: $e0 $6f
	add b                                            ; $7f53: $80
	ld l, a                                          ; $7f54: $6f
	ld a, [hl]                                       ; $7f55: $7e
	dec hl                                           ; $7f56: $2b
	add b                                            ; $7f57: $80
	ld [hl], a                                       ; $7f58: $77
	ret nz                                           ; $7f59: $c0

	sbc h                                            ; $7f5a: $9c
	pop af                                           ; $7f5b: $f1
	rst $38                                          ; $7f5c: $ff
	pop hl                                           ; $7f5d: $e1
	cpl                                              ; $7f5e: $2f
	ret nz                                           ; $7f5f: $c0

	sub $01                                          ; $7f60: $d6 $01
	adc h                                            ; $7f62: $8c
	and e                                            ; $7f63: $a3
	sub b                                            ; $7f64: $90
	and [hl]                                         ; $7f65: $a6
	sub c                                            ; $7f66: $91
	and [hl]                                         ; $7f67: $a6
	sub c                                            ; $7f68: $91
	call $ddb3                                       ; $7f69: $cd $b3 $dd
	or e                                             ; $7f6c: $b3
	sbc e                                            ; $7f6d: $9b
	rst FarCall                                          ; $7f6e: $f7
	sbc d                                            ; $7f6f: $9a
	rst FarCall                                          ; $7f70: $f7
	sub [hl]                                         ; $7f71: $96
	rst $38                                          ; $7f72: $ff
	call nc, $dcff                                   ; $7f73: $d4 $ff $dc
	sbc $ff                                          ; $7f76: $de $ff
	add b                                            ; $7f78: $80
	db $dd                                           ; $7f79: $dd
	rst AddAOntoHL                                          ; $7f7a: $ef
	push de                                          ; $7f7b: $d5
	rst SubAFromHL                                          ; $7f7c: $d7
	db $fd                                           ; $7f7d: $fd
	res 5, a                                         ; $7f7e: $cb $af
	db $e3                                           ; $7f80: $e3
	sub a                                            ; $7f81: $97
	ldh a, [c]                                       ; $7f82: $f2
	sbc b                                            ; $7f83: $98
	db $fc                                           ; $7f84: $fc
	adc a                                            ; $7f85: $8f
	rst $38                                          ; $7f86: $ff
	dec c                                            ; $7f87: $0d
	rst $38                                          ; $7f88: $ff
	dec c                                            ; $7f89: $0d
	rst SubAFromDE                                          ; $7f8a: $df
	inc c                                            ; $7f8b: $0c
	rst SubAFromDE                                          ; $7f8c: $df
	inc b                                            ; $7f8d: $04
	ld e, a                                          ; $7f8e: $5f
	dec b                                            ; $7f8f: $05
	ld c, a                                          ; $7f90: $4f
	dec b                                            ; $7f91: $05
	rrca                                             ; $7f92: $0f
	rlca                                             ; $7f93: $07
	rrca                                             ; $7f94: $0f
	rlca                                             ; $7f95: $07
	ld c, $07                                        ; $7f96: $0e $07
	add b                                            ; $7f98: $80
	ld c, a                                          ; $7f99: $4f
	rlca                                             ; $7f9a: $07
	ld e, [hl]                                       ; $7f9b: $5e
	rlca                                             ; $7f9c: $07
	call c, $dc4f                                    ; $7f9d: $dc $4f $dc
	ld c, a                                          ; $7fa0: $4f
	ld a, [$78df]                                    ; $7fa1: $fa $df $78
	rrca                                             ; $7fa4: $0f
	add h                                            ; $7fa5: $84
	and [hl]                                         ; $7fa6: $a6
	adc l                                            ; $7fa7: $8d
	halt                                             ; $7fa8: $76
	adc l                                            ; $7fa9: $8d
	ld c, b                                          ; $7faa: $48
	rra                                              ; $7fab: $1f
	jr z, jr_061_7fcd                                ; $7fac: $28 $1f

	reti                                             ; $7fae: $d9


	ccf                                              ; $7faf: $3f
	sbc e                                            ; $7fb0: $9b
	ld a, [hl]                                       ; $7fb1: $7e
	ccf                                              ; $7fb2: $3f
	db $ec                                           ; $7fb3: $ec
	ld a, a                                          ; $7fb4: $7f
	set 7, a                                         ; $7fb5: $cb $ff
	sub [hl]                                         ; $7fb7: $96
	sub h                                            ; $7fb8: $94
	db $f4                                           ; $7fb9: $f4
	inc c                                            ; $7fba: $0c
	sbc a                                            ; $7fbb: $9f
	rrca                                             ; $7fbc: $0f
	dec sp                                           ; $7fbd: $3b
	ccf                                              ; $7fbe: $3f
	ld b, $04                                        ; $7fbf: $06 $04
	inc bc                                           ; $7fc1: $03
	ld [bc], a                                       ; $7fc2: $02
	add b                                            ; $7fc3: $80
	cp a                                             ; $7fc4: $bf
	add b                                            ; $7fc5: $80
	ret nz                                           ; $7fc6: $c0

	adc b                                            ; $7fc7: $88
	add b                                            ; $7fc8: $80
	ldh [$c0], a                                     ; $7fc9: $e0 $c0
	ldh a, [$e0]                                     ; $7fcb: $f0 $e0

jr_061_7fcd:
	ld hl, sp-$10                                    ; $7fcd: $f8 $f0
	cp [hl]                                          ; $7fcf: $be
	db $e4                                           ; $7fd0: $e4
	ei                                               ; $7fd1: $fb
	pop hl                                           ; $7fd2: $e1
	sbc h                                            ; $7fd3: $9c
	ld hl, sp-$72                                    ; $7fd4: $f8 $8e
	db $fc                                           ; $7fd6: $fc
	ld d, e                                          ; $7fd7: $53
	rst $38                                          ; $7fd8: $ff
	ret nz                                           ; $7fd9: $c0

	rst $38                                          ; $7fda: $ff
	and b                                            ; $7fdb: $a0
	rst $38                                          ; $7fdc: $ff

jr_061_7fdd:
	jr nz, jr_061_7fdd                               ; $7fdd: $20 $fe

	cp a                                             ; $7fdf: $bf
	cp $bd                                           ; $7fe0: $fe $bd
	sbc d                                            ; $7fe2: $9a
	add b                                            ; $7fe3: $80
	db $dd                                           ; $7fe4: $dd
	jr z, @+$01                                      ; $7fe5: $28 $ff

	ld l, l                                          ; $7fe7: $6d
	ld a, e                                          ; $7fe8: $7b
	cp $89                                           ; $7fe9: $fe $89
	db $fd                                           ; $7feb: $fd
	or a                                             ; $7fec: $b7
	rst $38                                          ; $7fed: $ff
	or [hl]                                          ; $7fee: $b6
	rst $38                                          ; $7fef: $ff
	and $ff                                          ; $7ff0: $e6 $ff
	inc a                                            ; $7ff2: $3c
	rst $38                                          ; $7ff3: $ff
	ld [$c0ff], sp                                   ; $7ff4: $08 $ff $c0
	ld a, a                                          ; $7ff7: $7f
	ld h, b                                          ; $7ff8: $60
	rst $38                                          ; $7ff9: $ff
	ret nz                                           ; $7ffa: $c0

	sbc $c0                                          ; $7ffb: $de $c0
	ld b, b                                          ; $7ffd: $40
	ret nz                                           ; $7ffe: $c0

Call_061_7fff:
	add b                                            ; $7fff: $80
