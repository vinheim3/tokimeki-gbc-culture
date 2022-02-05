; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

	inc a                                            ; $4000: $3c
	nop                                              ; $4001: $00
	rst SubAFromDE                                          ; $4002: $df
	ld bc, $039d                                     ; $4003: $01 $9d $03
	ld [bc], a                                       ; $4006: $02
	ld l, a                                          ; $4007: $6f
	cp $85                                           ; $4008: $fe $85
	rlca                                             ; $400a: $07
	ld b, $0f                                        ; $400b: $06 $0f
	inc c                                            ; $400d: $0c
	rla                                              ; $400e: $17
	inc e                                            ; $400f: $1c

jr_01e_4010:
	rra                                              ; $4010: $1f
	inc d                                            ; $4011: $14
	rra                                              ; $4012: $1f
	inc d                                            ; $4013: $14
	rla                                              ; $4014: $17
	jr jr_01e_4020                                   ; $4015: $18 $09

	ld c, $07                                        ; $4017: $0e $07
	rlca                                             ; $4019: $07
	ld [$0f0f], sp                                   ; $401a: $08 $0f $0f
	ld [$0707], sp                                   ; $401d: $08 $07 $07

jr_01e_4020:
	add b                                            ; $4020: $80
	add b                                            ; $4021: $80
	ld b, b                                          ; $4022: $40
	ret nz                                           ; $4023: $c0

	ld l, a                                          ; $4024: $6f
	cp $97                                           ; $4025: $fe $97
	ld [hl], b                                       ; $4027: $70
	ldh a, [$c8]                                     ; $4028: $f0 $c8
	jr c, jr_01e_4010                                ; $402a: $38 $e4

	inc e                                            ; $402c: $1c
	db $f4                                           ; $402d: $f4
	inc c                                            ; $402e: $0c
	ld [hl], a                                       ; $402f: $77
	cp $95                                           ; $4030: $fe $95
	ld hl, sp+$08                                    ; $4032: $f8 $08
	ldh a, [$f0]                                     ; $4034: $f0 $f0

jr_01e_4036:
	ld [$e8f8], sp                                   ; $4036: $08 $f8 $e8
	jr @-$0e                                         ; $4039: $18 $f0

	ldh a, [$0a]                                     ; $403b: $f0 $0a
	add c                                            ; $403d: $81
	cp $9a                                           ; $403e: $fe $9a
	rlca                                             ; $4040: $07
	inc c                                            ; $4041: $0c
	ld c, $08                                        ; $4042: $0e $08
	inc c                                            ; $4044: $0c
	cp $9e                                           ; $4045: $fe $9e
	ld [$10dd], sp                                   ; $4047: $08 $dd $10
	sbc e                                            ; $404a: $9b
	ld [$080f], sp                                   ; $404b: $08 $0f $08
	ld c, $77                                        ; $404e: $0e $77
	db $fc                                           ; $4050: $fc
	reti                                             ; $4051: $d9


	db $10                                           ; $4052: $10
	cp $9a                                           ; $4053: $fe $9a
	ldh a, [rAUD3HIGH]                               ; $4055: $f0 $1e
	rst $38                                          ; $4057: $ff
	ld b, $ef                                        ; $4058: $06 $ef
	cp $92                                           ; $405a: $fe $92
	ld c, $01                                        ; $405c: $0e $01
	nop                                              ; $405e: $00
	ld bc, $0700                                     ; $405f: $01 $00 $07
	ld c, a                                          ; $4062: $4f
	rlca                                             ; $4063: $07
	ld a, a                                          ; $4064: $7f
	rlca                                             ; $4065: $07
	rst SubAFromDE                                          ; $4066: $df
	rlca                                             ; $4067: $07
	sbc a                                            ; $4068: $9f
	reti                                             ; $4069: $d9


	inc bc                                           ; $406a: $03
	cp $9a                                           ; $406b: $fe $9a
	rrca                                             ; $406d: $0f
	jr c, jr_01e_40ef                                ; $406e: $38 $7f

	jr nz, jr_01e_40e9                               ; $4070: $20 $77

Jump_01e_4072:
	cp $9a                                           ; $4072: $fe $9a
	jr nc, jr_01e_4036                               ; $4074: $30 $c0

	add b                                            ; $4076: $80
	ret nz                                           ; $4077: $c0

	add b                                            ; $4078: $80
	xor $9a                                          ; $4079: $ee $9a
	ldh a, [$34]                                     ; $407b: $f0 $34
	ld [hl], h                                       ; $407d: $74
	inc d                                            ; $407e: $14
	inc [hl]                                         ; $407f: $34
	ld [hl], a                                       ; $4080: $77
	and b                                            ; $4081: $a0
	db $dd                                           ; $4082: $dd
	inc c                                            ; $4083: $0c
	pop af                                           ; $4084: $f1
	ld a, a                                          ; $4085: $7f
	db $eb                                           ; $4086: $eb
	ld a, a                                          ; $4087: $7f
	sub d                                            ; $4088: $92
	sbc e                                            ; $4089: $9b
	rrca                                             ; $408a: $0f
	inc c                                            ; $408b: $0c
	rrca                                             ; $408c: $0f
	nop                                              ; $408d: $00
	jp c, $9c10                                      ; $408e: $da $10 $9c

	rra                                              ; $4091: $1f
	nop                                              ; $4092: $00
	rra                                              ; $4093: $1f
	ei                                               ; $4094: $fb

Jump_01e_4095:
	sbc $1f                                          ; $4095: $de $1f
	db $fc                                           ; $4097: $fc
	sbc b                                            ; $4098: $98
	rlca                                             ; $4099: $07
	rst AddAOntoHL                                          ; $409a: $ef
	rlca                                             ; $409b: $07
	rst GetHLinHL                                          ; $409c: $cf
	rst $38                                          ; $409d: $ff
	rra                                              ; $409e: $1f
	rst $38                                          ; $409f: $ff
	reti                                             ; $40a0: $d9


	inc bc                                           ; $40a1: $03
	ld a, a                                          ; $40a2: $7f
	rst FarCall                                          ; $40a3: $f7
	ld a, e                                          ; $40a4: $7b
	push af                                          ; $40a5: $f5
	sbc [hl]                                         ; $40a6: $9e
	ld [bc], a                                       ; $40a7: $02
	cp $de                                           ; $40a8: $fe $de
	rst $38                                          ; $40aa: $ff
	ld [hl], e                                       ; $40ab: $73
	add e                                            ; $40ac: $83
	sbc d                                            ; $40ad: $9a
	rst $38                                          ; $40ae: $ff
	sub l                                            ; $40af: $95
	rst $38                                          ; $40b0: $ff
	push af                                          ; $40b1: $f5
	push af                                          ; $40b2: $f5
	sbc $ff                                          ; $40b3: $de $ff
	ld a, e                                          ; $40b5: $7b
	add h                                            ; $40b6: $84
	call c, $9bc0                                    ; $40b7: $dc $c0 $9b
	rst $38                                          ; $40ba: $ff
	pop af                                           ; $40bb: $f1
	rst $38                                          ; $40bc: $ff
	rst $38                                          ; $40bd: $ff
	db $fd                                           ; $40be: $fd
	rst SubAFromDE                                          ; $40bf: $df
	ret nz                                           ; $40c0: $c0

	sbc [hl]                                         ; $40c1: $9e
	ldh [$73], a                                     ; $40c2: $e0 $73
	rst FarCall                                          ; $40c4: $f7
	sbc l                                            ; $40c5: $9d
	db $f4                                           ; $40c6: $f4
	ld [hl], h                                       ; $40c7: $74
	db $db                                           ; $40c8: $db
	db $f4                                           ; $40c9: $f4
	reti                                             ; $40ca: $d9


	inc a                                            ; $40cb: $3c
	rst SubAFromDE                                          ; $40cc: $df
	db $f4                                           ; $40cd: $f4
	rst SubAFromDE                                          ; $40ce: $df
	ldh a, [$fd]                                     ; $40cf: $f0 $fd
	rst SubAFromDE                                          ; $40d1: $df
	inc a                                            ; $40d2: $3c
	sbc h                                            ; $40d3: $9c
	ld a, b                                          ; $40d4: $78
	ld hl, sp-$08                                    ; $40d5: $f8 $f8
	xor $de                                          ; $40d7: $ee $de
	rst $38                                          ; $40d9: $ff
	sub d                                            ; $40da: $92
	sbc e                                            ; $40db: $9b
	and e                                            ; $40dc: $a3
	db $10                                           ; $40dd: $10
	db $fd                                           ; $40de: $fd
	ei                                               ; $40df: $fb
	rst $38                                          ; $40e0: $ff
	ldh [$c0], a                                     ; $40e1: $e0 $c0
	add b                                            ; $40e3: $80
	add b                                            ; $40e4: $80
	nop                                              ; $40e5: $00
	db $fd                                           ; $40e6: $fd
	ret nz                                           ; $40e7: $c0

	pop af                                           ; $40e8: $f1

jr_01e_40e9:
	sbc $f4                                          ; $40e9: $de $f4
	sbc b                                            ; $40eb: $98
	or h                                             ; $40ec: $b4
	inc [hl]                                         ; $40ed: $34
	ld d, h                                          ; $40ee: $54

jr_01e_40ef:
	db $f4                                           ; $40ef: $f4
	db $f4                                           ; $40f0: $f4
	db $fc                                           ; $40f1: $fc
	ld a, h                                          ; $40f2: $7c
	sbc $3c                                          ; $40f3: $de $3c
	sbc h                                            ; $40f5: $9c
	ld e, h                                          ; $40f6: $5c
	db $fc                                           ; $40f7: $fc
	inc a                                            ; $40f8: $3c
	db $fd                                           ; $40f9: $fd
	sbc e                                            ; $40fa: $9b
	ld a, h                                          ; $40fb: $7c
	jr nz, @+$01                                     ; $40fc: $20 $ff

	ld h, d                                          ; $40fe: $62
	ld h, a                                          ; $40ff: $67
	ld hl, sp-$69                                    ; $4100: $f8 $97
	rst $38                                          ; $4102: $ff
	ld d, $ff                                        ; $4103: $16 $ff
	jr nc, @+$01                                     ; $4105: $30 $ff

	inc b                                            ; $4107: $04
	rst $38                                          ; $4108: $ff
	inc l                                            ; $4109: $2c
	ld h, e                                          ; $410a: $63
	ld hl, sp+$7f                                    ; $410b: $f8 $7f
	xor $9c                                          ; $410d: $ee $9c
	ld b, $00                                        ; $410f: $06 $00
	ld a, h                                          ; $4111: $7c
	ld a, e                                          ; $4112: $7b
	xor b                                            ; $4113: $a8
	ld l, e                                          ; $4114: $6b
	ld hl, sp-$13                                    ; $4115: $f8 $ed
	sbc e                                            ; $4117: $9b
	rlca                                             ; $4118: $07
	nop                                              ; $4119: $00
	rra                                              ; $411a: $1f
	ld [$f857], sp                                   ; $411b: $08 $57 $f8
	ld a, [$649a]                                    ; $411e: $fa $9a $64
	ld e, h                                          ; $4121: $5c
	rst AddAOntoHL                                          ; $4122: $ef
	ld [bc], a                                       ; $4123: $02
	inc b                                            ; $4124: $04
	ld [hl], e                                       ; $4125: $73
	inc [hl]                                         ; $4126: $34
	sbc l                                            ; $4127: $9d
	add b                                            ; $4128: $80
	ldh [$73], a                                     ; $4129: $e0 $73
	ld a, b                                          ; $412b: $78
	ld [hl], a                                       ; $412c: $77
	ld hl, sp-$27                                    ; $412d: $f8 $d9
	inc b                                            ; $412f: $04
	cp $9c                                           ; $4130: $fe $9c
	ld b, b                                          ; $4132: $40
	ret nz                                           ; $4133: $c0

	and b                                            ; $4134: $a0
	or $9b                                           ; $4135: $f6 $9b
	ld l, d                                          ; $4137: $6a
	nop                                              ; $4138: $00
	ld a, [bc]                                       ; $4139: $0a
	ld a, [bc]                                       ; $413a: $0a
	push af                                          ; $413b: $f5
	sbc [hl]                                         ; $413c: $9e
	ld c, $fb                                        ; $413d: $0e $fb
	ld h, e                                          ; $413f: $63
	ret nc                                           ; $4140: $d0

	ld l, d                                          ; $4141: $6a
	ld h, [hl]                                       ; $4142: $66
	ld [hl], e                                       ; $4143: $73
	add $f6                                          ; $4144: $c6 $f6
	or e                                             ; $4146: $b3
	nop                                              ; $4147: $00
	jp hl                                            ; $4148: $e9


	sbc e                                            ; $4149: $9b
	rra                                              ; $414a: $1f
	nop                                              ; $414b: $00
	nop                                              ; $414c: $00
	ld [$10dd], sp                                   ; $414d: $08 $dd $10
	rst FarCall                                          ; $4150: $f7
	adc c                                            ; $4151: $89
	ld bc, $0703                                     ; $4152: $01 $03 $07
	inc c                                            ; $4155: $0c
	inc b                                            ; $4156: $04
	dec de                                           ; $4157: $1b
	dec bc                                           ; $4158: $0b
	inc [hl]                                         ; $4159: $34
	scf                                              ; $415a: $37
	jr z, jr_01e_418c                                ; $415b: $28 $2f

	ld d, c                                          ; $415d: $51
	ld l, [hl]                                       ; $415e: $6e
	ld d, e                                          ; $415f: $53
	rst $38                                          ; $4160: $ff
	ld [bc], a                                       ; $4161: $02
	ld b, $07                                        ; $4162: $06 $07
	inc bc                                           ; $4164: $03
	inc bc                                           ; $4165: $03
	ld [bc], a                                       ; $4166: $02
	inc bc                                           ; $4167: $03

jr_01e_4168:
	ld sp, hl                                        ; $4168: $f9
	adc b                                            ; $4169: $88
	ld a, b                                          ; $416a: $78
	db $fc                                           ; $416b: $fc
	cp $03                                           ; $416c: $fe $03
	inc bc                                           ; $416e: $03
	db $fc                                           ; $416f: $fc
	db $fc                                           ; $4170: $fc
	inc bc                                           ; $4171: $03
	rst $38                                          ; $4172: $ff
	nop                                              ; $4173: $00
	ld a, e                                          ; $4174: $7b
	db $fc                                           ; $4175: $fc
	ld a, e                                          ; $4176: $7b
	add [hl]                                         ; $4177: $86
	db $fd                                           ; $4178: $fd
	inc bc                                           ; $4179: $03
	cp $01                                           ; $417a: $fe $01
	rst SubAFromDE                                          ; $417c: $df
	ldh [$6f], a                                     ; $417d: $e0 $6f
	sub b                                            ; $417f: $90
	rst $38                                          ; $4180: $ff
	ld e, e                                          ; $4181: $5b
	ret nz                                           ; $4182: $c0

	rst $38                                          ; $4183: $ff
	sub b                                            ; $4184: $90
	add b                                            ; $4185: $80
	ret nz                                           ; $4186: $c0

	add b                                            ; $4187: $80
	ld h, b                                          ; $4188: $60
	ld b, b                                          ; $4189: $40
	or b                                             ; $418a: $b0
	or b                                             ; $418b: $b0

jr_01e_418c:
	ld d, b                                          ; $418c: $50
	ret nc                                           ; $418d: $d0

	jr z, jr_01e_4168                                ; $418e: $28 $d8

	jr z, jr_01e_41fa                                ; $4190: $28 $68

	sub h                                            ; $4192: $94
	db $ec                                           ; $4193: $ec
	ld [hl], e                                       ; $4194: $73
	cp $df                                           ; $4195: $fe $df
	db $10                                           ; $4197: $10
	sbc l                                            ; $4198: $9d
	inc de                                           ; $4199: $13
	inc e                                            ; $419a: $1c
	ld c, a                                          ; $419b: $4f
	cp $de                                           ; $419c: $fe $de
	db $10                                           ; $419e: $10
	sbc $1f                                          ; $419f: $de $1f
	ld sp, hl                                        ; $41a1: $f9
	ld a, a                                          ; $41a2: $7f
	sbc l                                            ; $41a3: $9d
	sbc e                                            ; $41a4: $9b
	rst SubAFromBC                                          ; $41a5: $e7
	ld e, $e6                                        ; $41a6: $1e $e6
	rra                                              ; $41a8: $1f
	ld [hl], a                                       ; $41a9: $77
	cp $9e                                           ; $41aa: $fe $9e
	rst SubAFromBC                                          ; $41ac: $e7
	ld [hl], a                                       ; $41ad: $77
	cp $9c                                           ; $41ae: $fe $9c
	ld e, $e7                                        ; $41b0: $1e $e7
	rra                                              ; $41b2: $1f
	sbc $06                                          ; $41b3: $de $06
	sbc $fe                                          ; $41b5: $de $fe
	ld sp, hl                                        ; $41b7: $f9
	ld a, a                                          ; $41b8: $7f
	sbc [hl]                                         ; $41b9: $9e
	sub h                                            ; $41ba: $94
	sbc $31                                          ; $41bb: $de $31
	cp l                                             ; $41bd: $bd
	ld [hl], e                                       ; $41be: $73
	ld a, e                                          ; $41bf: $7b
	and $fb                                          ; $41c0: $e6 $fb
	db $fc                                           ; $41c2: $fc
	rst $38                                          ; $41c3: $ff
	nop                                              ; $41c4: $00
	db $fc                                           ; $41c5: $fc
	ld a, e                                          ; $41c6: $7b
	ld a, [hl]                                       ; $41c7: $7e
	ld a, a                                          ; $41c8: $7f
	ld a, d                                          ; $41c9: $7a
	ld a, a                                          ; $41ca: $7f
	halt                                             ; $41cb: $76
	push af                                          ; $41cc: $f5
	ld a, a                                          ; $41cd: $7f
	sbc [hl]                                         ; $41ce: $9e
	ld a, a                                          ; $41cf: $7f
	sub [hl]                                         ; $41d0: $96

jr_01e_41d1:
	ld a, a                                          ; $41d1: $7f
	sub d                                            ; $41d2: $92
	ld a, a                                          ; $41d3: $7f
	adc [hl]                                         ; $41d4: $8e
	ld a, a                                          ; $41d5: $7f
	adc d                                            ; $41d6: $8a
	ld a, a                                          ; $41d7: $7f
	add [hl]                                         ; $41d8: $86
	ld a, a                                          ; $41d9: $7f
	add d                                            ; $41da: $82
	ld a, a                                          ; $41db: $7f
	ld a, [hl]                                       ; $41dc: $7e
	ldh [$d6], a                                     ; $41dd: $e0 $d6
	sbc d                                            ; $41df: $9a
	rla                                              ; $41e0: $17
	dec bc                                           ; $41e1: $0b
	ld c, $07                                        ; $41e2: $0e $07
	inc c                                            ; $41e4: $0c
	and $98                                          ; $41e5: $e6 $98
	ld hl, sp-$14                                    ; $41e7: $f8 $ec
	inc a                                            ; $41e9: $3c
	ld [hl], h                                       ; $41ea: $74
	sbc h                                            ; $41eb: $9c
	rrca                                             ; $41ec: $0f
	ld a, [bc]                                       ; $41ed: $0a

jr_01e_41ee:
	pop af                                           ; $41ee: $f1
	ld c, a                                          ; $41ef: $4f
	xor $9d                                          ; $41f0: $ee $9d
	db $fc                                           ; $41f2: $fc
	inc l                                            ; $41f3: $2c
	ld b, e                                          ; $41f4: $43
	ret                                              ; $41f5: $c9


	sbc [hl]                                         ; $41f6: $9e
	jr z, jr_01e_41ee                                ; $41f7: $28 $f5

	halt                                             ; $41f9: $76

jr_01e_41fa:
	nop                                              ; $41fa: $00
	pop af                                           ; $41fb: $f1
	sbc [hl]                                         ; $41fc: $9e
	ld bc, $01bf                                     ; $41fd: $01 $bf $01
	nop                                              ; $4200: $00
	db $db                                           ; $4201: $db
	ld bc, $03df                                     ; $4202: $01 $df $03
	sbc h                                            ; $4205: $9c
	ld [bc], a                                       ; $4206: $02
	inc bc                                           ; $4207: $03
	ld [bc], a                                       ; $4208: $02
	push af                                          ; $4209: $f5
	adc e                                            ; $420a: $8b
	ret nz                                           ; $420b: $c0

	add b                                            ; $420c: $80
	add b                                            ; $420d: $80
	ret nz                                           ; $420e: $c0

	jr nz, jr_01e_41d1                               ; $420f: $20 $c0

	db $10                                           ; $4211: $10
	ldh [$08], a                                     ; $4212: $e0 $08
	ldh a, [$a4]                                     ; $4214: $f0 $a4
	ld a, b                                          ; $4216: $78
	or d                                             ; $4217: $b2
	ld a, h                                          ; $4218: $7c
	ld a, c                                          ; $4219: $79
	cp $fd                                           ; $421a: $fe $fd
	cp $ed                                           ; $421c: $fe $ed
	sbc $f1                                          ; $421e: $de $f1
	add b                                            ; $4220: $80
	ld [bc], a                                       ; $4221: $02
	ld bc, $070f                                     ; $4222: $01 $0f $07
	rra                                              ; $4225: $1f
	ld c, $2f                                        ; $4226: $0e $2f
	ld e, $2e                                        ; $4228: $1e $2e
	dec e                                            ; $422a: $1d
	ld a, $1d                                        ; $422b: $3e $1d
	ld [$081f], sp                                   ; $422d: $08 $1f $08
	rlca                                             ; $4230: $07
	ld [bc], a                                       ; $4231: $02
	rlca                                             ; $4232: $07
	rlca                                             ; $4233: $07
	dec b                                            ; $4234: $05
	rlca                                             ; $4235: $07
	dec b                                            ; $4236: $05
	inc b                                            ; $4237: $04
	rrca                                             ; $4238: $0f
	ld c, $0a                                        ; $4239: $0e $0a
	ld c, $0a                                        ; $423b: $0e $0a
	ld [$1c1e], sp                                   ; $423d: $08 $1e $1c
	add b                                            ; $4240: $80
	inc d                                            ; $4241: $14
	dec d                                            ; $4242: $15
	db $fd                                           ; $4243: $fd
	cp e                                             ; $4244: $bb
	ld a, a                                          ; $4245: $7f
	inc sp                                           ; $4246: $33
	rst $38                                          ; $4247: $ff
	ld [hl], e                                       ; $4248: $73
	rst $38                                          ; $4249: $ff
	ld h, a                                          ; $424a: $67
	rst $38                                          ; $424b: $ff
	pop hl                                           ; $424c: $e1
	ei                                               ; $424d: $fb
	ret nz                                           ; $424e: $c0

	ldh a, [rAUD4LEN]                                ; $424f: $f0 $20
	ret nz                                           ; $4251: $c0

	add l                                            ; $4252: $85
	adc [hl]                                         ; $4253: $8e
	dec c                                            ; $4254: $0d
	add [hl]                                         ; $4255: $86
	dec c                                            ; $4256: $0d
	ld c, $0a                                        ; $4257: $0e $0a
	inc e                                            ; $4259: $1c
	ld a, [hl-]                                      ; $425a: $3a
	inc e                                            ; $425b: $1c
	inc a                                            ; $425c: $3c
	jr c, jr_01e_42c7                                ; $425d: $38 $68

	ld [hl], b                                       ; $425f: $70
	sbc d                                            ; $4260: $9a
	ret nz                                           ; $4261: $c0

	ldh [$80], a                                     ; $4262: $e0 $80
	ret nz                                           ; $4264: $c0

	nop                                              ; $4265: $00
	sbc $80                                          ; $4266: $de $80
	sbc h                                            ; $4268: $9c
	nop                                              ; $4269: $00
	jr nz, @-$3e                                     ; $426a: $20 $c0

	ld a, e                                          ; $426c: $7b
	sub e                                            ; $426d: $93
	db $fd                                           ; $426e: $fd
	ld h, c                                          ; $426f: $61
	ld bc, $98f9                                     ; $4270: $01 $f9 $98
	ld hl, sp+$00                                    ; $4273: $f8 $00
	ldh [rP1], a                                     ; $4275: $e0 $00
	ret nz                                           ; $4277: $c0

	nop                                              ; $4278: $00
	add b                                            ; $4279: $80
	ld a, e                                          ; $427a: $7b
	cp $77                                           ; $427b: $fe $77
	ld a, [$9eff]                                    ; $427d: $fa $ff $9e
	ld bc, $f663                                     ; $4280: $01 $63 $f6
	ei                                               ; $4283: $fb
	sbc d                                            ; $4284: $9a
	ld a, a                                          ; $4285: $7f
	nop                                              ; $4286: $00
	inc bc                                           ; $4287: $03
	nop                                              ; $4288: $00
	ld b, b                                          ; $4289: $40
	ld l, e                                          ; $428a: $6b
	ldh a, [$9c]                                     ; $428b: $f0 $9c
	ld b, l                                          ; $428d: $45
	nop                                              ; $428e: $00
	add d                                            ; $428f: $82
	ld a, [$429d]                                    ; $4290: $fa $9d $42
	db $10                                           ; $4293: $10
	ld sp, hl                                        ; $4294: $f9
	sub d                                            ; $4295: $92
	db $fc                                           ; $4296: $fc
	ld bc, $01fc                                     ; $4297: $01 $fc $01
	inc a                                            ; $429a: $3c
	ld bc, $011c                                     ; $429b: $01 $1c $01
	adc h                                            ; $429e: $8c
	ld bc, $014c                      ; $429f: $01 $4c $01
	inc l                                            ; $42a2: $2c
	ld a, e                                          ; $42a3: $7b
	ld a, [$0c9e]                                    ; $42a4: $fa $9e $0c
	ld l, a                                          ; $42a7: $6f
	cp $9e                                           ; $42a8: $fe $9e
	add c                                            ; $42aa: $81
	ld e, e                                          ; $42ab: $5b
	cp h                                             ; $42ac: $bc
	rst SubAFromDE                                          ; $42ad: $df
	ld [bc], a                                       ; $42ae: $02
	sub l                                            ; $42af: $95
	inc b                                            ; $42b0: $04
	nop                                              ; $42b1: $00
	inc b                                            ; $42b2: $04
	ld [bc], a                                       ; $42b3: $02
	nop                                              ; $42b4: $00
	add l                                            ; $42b5: $85
	nop                                              ; $42b6: $00
	call $fd00                                       ; $42b7: $cd $00 $fd
	db $fd                                           ; $42ba: $fd
	sbc [hl]                                         ; $42bb: $9e
	rst $38                                          ; $42bc: $ff
	ld hl, sp-$74                                    ; $42bd: $f8 $8c
	ld b, b                                          ; $42bf: $40
	ld bc, $2c10                                     ; $42c0: $01 $10 $2c
	ld c, h                                          ; $42c3: $4c
	ld h, c                                          ; $42c4: $61
	ld [bc], a                                       ; $42c5: $02
	dec c                                            ; $42c6: $0d

jr_01e_42c7:
	ld e, $b9                                        ; $42c7: $1e $b9
	ld [bc], a                                       ; $42c9: $02
	ld hl, $b014                                     ; $42ca: $21 $14 $b0
	inc b                                            ; $42cd: $04
	sub b                                            ; $42ce: $90
	ld c, b                                          ; $42cf: $48
	and b                                            ; $42d0: $a0
	ld b, h                                          ; $42d1: $44
	ld h, a                                          ; $42d2: $67
	ldh [$7f], a                                     ; $42d3: $e0 $7f
	xor [hl]                                         ; $42d5: $ae
	ld a, a                                          ; $42d6: $7f
	xor d                                            ; $42d7: $aa
	adc e                                            ; $42d8: $8b
	ld a, h                                          ; $42d9: $7c
	pop hl                                           ; $42da: $e1
	sbc h                                            ; $42db: $9c
	ld h, c                                          ; $42dc: $61
	inc l                                            ; $42dd: $2c
	ld de, $4994                                     ; $42de: $11 $94 $49
	and h                                            ; $42e1: $a4
	add hl, bc                                       ; $42e2: $09
	or h                                             ; $42e3: $b4
	ld b, c                                          ; $42e4: $41
	inc h                                            ; $42e5: $24
	sub c                                            ; $42e6: $91
	adc h                                            ; $42e7: $8c
	ld hl, $411c                                     ; $42e8: $21 $1c $41
	inc e                                            ; $42eb: $1c
	pop hl                                           ; $42ec: $e1
	ld a, e                                          ; $42ed: $7b
	ld e, a                                          ; $42ee: $5f
	ld e, a                                          ; $42ef: $5f
	ret nz                                           ; $42f0: $c0

	ld a, a                                          ; $42f1: $7f
	push af                                          ; $42f2: $f5
	sbc [hl]                                         ; $42f3: $9e
	rst $38                                          ; $42f4: $ff
	rst SubAFromHL                                          ; $42f5: $d7
	add b                                            ; $42f6: $80
	db $db                                           ; $42f7: $db
	add c                                            ; $42f8: $81
	rst SubAFromDE                                          ; $42f9: $df
	add e                                            ; $42fa: $83
	sbc [hl]                                         ; $42fb: $9e
	add d                                            ; $42fc: $82
	ld [hl], e                                       ; $42fd: $73
	cp $67                                           ; $42fe: $fe $67

jr_01e_4300:
	ldh [rIE], a                                     ; $4300: $e0 $ff
	rst SubAFromDE                                          ; $4302: $df
	ld a, $8b                                        ; $4303: $3e $8b
	ld c, c                                          ; $4305: $49
	ld e, a                                          ; $4306: $5f
	adc d                                            ; $4307: $8a
	cp a                                             ; $4308: $bf
	sbc [hl]                                         ; $4309: $9e
	rst $38                                          ; $430a: $ff
	ld hl, $49ff                                     ; $430b: $21 $ff $49
	db $dd                                           ; $430e: $dd
	sbc h                                            ; $430f: $9c
	or [hl]                                          ; $4310: $b6
	ld a, $63                                        ; $4311: $3e $63
	ld a, a                                          ; $4313: $7f
	pop bc                                           ; $4314: $c1
	ld c, [hl]                                       ; $4315: $4e
	ret z                                            ; $4316: $c8

	add $c0                                          ; $4317: $c6 $c0
	ld h, a                                          ; $4319: $67
	ldh [$dd], a                                     ; $431a: $e0 $dd
	ld bc, $e1df                                     ; $431c: $01 $df $e1
	adc c                                            ; $431f: $89
	ld de, $89f1                                     ; $4320: $11 $f1 $89
	cp c                                             ; $4323: $b9
	ld c, c                                          ; $4324: $49
	reti                                             ; $4325: $d9


	add hl, hl                                       ; $4326: $29
	ld l, c                                          ; $4327: $69
	xor c                                            ; $4328: $a9
	cp c                                             ; $4329: $b9
	sbc c                                            ; $432a: $99
	ld sp, hl                                        ; $432b: $f9
	ld c, c                                          ; $432c: $49
	ld sp, hl                                        ; $432d: $f9
	ld d, c                                          ; $432e: $51
	ld e, c                                          ; $432f: $59
	ld sp, $8219                                     ; $4330: $31 $19 $82
	add e                                            ; $4333: $83
	add c                                            ; $4334: $81
	add c                                            ; $4335: $81
	db $dd                                           ; $4336: $dd
	add b                                            ; $4337: $80
	sbc [hl]                                         ; $4338: $9e
	adc h                                            ; $4339: $8c
	ld [hl], a                                       ; $433a: $77
	cp $7f                                           ; $433b: $fe $7f
	db $fd                                           ; $433d: $fd
	ret c                                            ; $433e: $d8

	add b                                            ; $433f: $80
	ld [hl], a                                       ; $4340: $77
	xor [hl]                                         ; $4341: $ae
	ld [hl], e                                       ; $4342: $73
	add $97                                          ; $4343: $c6 $97
	ret                                              ; $4345: $c9


	cp a                                             ; $4346: $bf
	and $9f                                          ; $4347: $e6 $9f
	ret nc                                           ; $4349: $d0

	add a                                            ; $434a: $87
	rst JumpTable                                          ; $434b: $c7
	add b                                            ; $434c: $80
	ld e, [hl]                                       ; $434d: $5e
	push de                                          ; $434e: $d5
	ld a, e                                          ; $434f: $7b
	ld h, l                                          ; $4350: $65
	ld l, a                                          ; $4351: $6f
	adc [hl]                                         ; $4352: $8e
	db $fd                                           ; $4353: $fd
	sbc c                                            ; $4354: $99
	pop hl                                           ; $4355: $e1
	ld sp, $61c1                                     ; $4356: $31 $c1 $61
	add c                                            ; $4359: $81
	add c                                            ; $435a: $81
	push de                                          ; $435b: $d5
	ld bc, $f37f                                     ; $435c: $01 $7f $f3
	ld [hl], a                                       ; $435f: $77
	pop af                                           ; $4360: $f1
	ld h, a                                          ; $4361: $67
	ldh [$f7], a                                     ; $4362: $e0 $f7
	ld a, [hl]                                       ; $4364: $7e
	and b                                            ; $4365: $a0
	adc e                                            ; $4366: $8b
	dec b                                            ; $4367: $05
	ld [bc], a                                       ; $4368: $02
	ld c, $01                                        ; $4369: $0e $01
	add hl, bc                                       ; $436b: $09
	ld b, $05                                        ; $436c: $06 $05
	ld [bc], a                                       ; $436e: $02
	inc c                                            ; $436f: $0c
	inc bc                                           ; $4370: $03
	ld a, [de]                                       ; $4371: $1a
	dec b                                            ; $4372: $05
	ld [de], a                                       ; $4373: $12
	dec c                                            ; $4374: $0d
	inc c                                            ; $4375: $0c
	inc bc                                           ; $4376: $03
	ld [bc], a                                       ; $4377: $02
	dec b                                            ; $4378: $05
	inc c                                            ; $4379: $0c
	inc bc                                           ; $437a: $03
	ld sp, hl                                        ; $437b: $f9
	sub a                                            ; $437c: $97
	ret nc                                           ; $437d: $d0

	jr nz, jr_01e_4300                               ; $437e: $20 $80

	ld [hl], b                                       ; $4380: $70
	nop                                              ; $4381: $00
	ldh [$80], a                                     ; $4382: $e0 $80
	ld b, b                                          ; $4384: $40
	ld l, d                                          ; $4385: $6a
	ld e, e                                          ; $4386: $5b
	ld [hl], e                                       ; $4387: $73
	sub d                                            ; $4388: $92
	rst SubAFromDE                                          ; $4389: $df
	inc c                                            ; $438a: $0c
	rst SubAFromDE                                          ; $438b: $df
	inc b                                            ; $438c: $04
	push hl                                          ; $438d: $e5
	rst SubAFromDE                                          ; $438e: $df

jr_01e_438f:
	ld l, b                                          ; $438f: $68
	rst SubAFromDE                                          ; $4390: $df
	jr nz, jr_01e_4411                               ; $4391: $20 $7e

	cp a                                             ; $4393: $bf
	adc d                                            ; $4394: $8a
	ld a, [hl+]                                      ; $4395: $2a
	inc d                                            ; $4396: $14
	ld l, d                                          ; $4397: $6a
	dec d                                            ; $4398: $15
	ld b, b                                          ; $4399: $40
	ccf                                              ; $439a: $3f
	ld hl, $4253                                     ; $439b: $21 $53 $42
	ld [hl-], a                                      ; $439e: $32
	jr nz, jr_01e_43f1                               ; $439f: $20 $50

	ld a, l                                          ; $43a1: $7d
	ld bc, $3e6a                                     ; $43a2: $01 $6a $3e
	dec a                                            ; $43a5: $3d

jr_01e_43a6:
	dec d                                            ; $43a6: $15
	add hl, de                                       ; $43a7: $19
	add hl, bc                                       ; $43a8: $09
	ld bc, $5d77                                     ; $43a9: $01 $77 $5d

jr_01e_43ac:
	or $df                                           ; $43ac: $f6 $df
	jr nc, jr_01e_438f                               ; $43ae: $30 $df

	ld c, c                                          ; $43b0: $49
	rst SubAFromDE                                          ; $43b1: $df
	adc $df                                          ; $43b2: $ce $df
	ldh a, [$df]                                     ; $43b4: $f0 $df
	and d                                            ; $43b6: $a2
	rst SubAFromDE                                          ; $43b7: $df
	push hl                                          ; $43b8: $e5
	rst SubAFromDE                                          ; $43b9: $df
	dec h                                            ; $43ba: $25
	rst SubAFromDE                                          ; $43bb: $df
	ld [de], a                                       ; $43bc: $12
	rst SubAFromDE                                          ; $43bd: $df
	dec c                                            ; $43be: $0d
	pop af                                           ; $43bf: $f1
	rst SubAFromDE                                          ; $43c0: $df
	ldh [$df], a                                     ; $43c1: $e0 $df
	db $10                                           ; $43c3: $10
	rst SubAFromDE                                          ; $43c4: $df
	jr z, jr_01e_43a6                                ; $43c5: $28 $df

	inc b                                            ; $43c7: $04
	rst SubAFromDE                                          ; $43c8: $df
	inc h                                            ; $43c9: $24
	rst SubAFromDE                                          ; $43ca: $df
	jr z, jr_01e_43ac                                ; $43cb: $28 $df

	ld d, b                                          ; $43cd: $50
	ld e, a                                          ; $43ce: $5f
	ld [de], a                                       ; $43cf: $12
	ld b, [hl]                                       ; $43d0: $46
	ld bc, $dffb                                     ; $43d1: $01 $fb $df
	rrca                                             ; $43d4: $0f
	rst SubAFromDE                                          ; $43d5: $df
	ld c, $df                                        ; $43d6: $0e $df
	inc c                                            ; $43d8: $0c
	db $dd                                           ; $43d9: $dd
	ld [$09df], sp                                   ; $43da: $08 $df $09
	rst SubAFromDE                                          ; $43dd: $df
	dec bc                                           ; $43de: $0b
	db $dd                                           ; $43df: $dd
	rrca                                             ; $43e0: $0f
	sbc e                                            ; $43e1: $9b
	inc c                                            ; $43e2: $0c
	rrca                                             ; $43e3: $0f
	dec c                                            ; $43e4: $0d
	ld c, $77                                        ; $43e5: $0e $77
	db $fc                                           ; $43e7: $fc
	ei                                               ; $43e8: $fb
	rst SubAFromDE                                          ; $43e9: $df
	rst $38                                          ; $43ea: $ff
	rst SubAFromDE                                          ; $43eb: $df
	rra                                              ; $43ec: $1f
	rst SubAFromDE                                          ; $43ed: $df
	ld sp, $60df                                     ; $43ee: $31 $df $60

jr_01e_43f1:
	rst SubAFromDE                                          ; $43f1: $df
	ret nz                                           ; $43f2: $c0

	rst SubAFromDE                                          ; $43f3: $df
	add b                                            ; $43f4: $80
	ld a, [$8099]                                    ; $43f5: $fa $99 $80
	ld c, $8e                                        ; $43f8: $0e $8e
	inc b                                            ; $43fa: $04
	add h                                            ; $43fb: $84
	nop                                              ; $43fc: $00
	ld l, e                                          ; $43fd: $6b
	ldh a, [c]                                       ; $43fe: $f2
	db $dd                                           ; $43ff: $dd
	rst $38                                          ; $4400: $ff
	rst SubAFromDE                                          ; $4401: $df
	rrca                                             ; $4402: $0f
	rst SubAFromDE                                          ; $4403: $df
	rlca                                             ; $4404: $07
	rst SubAFromDE                                          ; $4405: $df
	inc bc                                           ; $4406: $03
	reti                                             ; $4407: $d9


	ld bc, $0097                                     ; $4408: $01 $97 $00
	ld bc, $9190                                     ; $440b: $01 $90 $91
	ld h, b                                          ; $440e: $60
	ld h, c                                          ; $440f: $61
	ld [bc], a                                       ; $4410: $02

jr_01e_4411:
	inc bc                                           ; $4411: $03
	ld l, e                                          ; $4412: $6b
	db $d3                                           ; $4413: $d3
	rst SubAFromDE                                          ; $4414: $df
	ret nz                                           ; $4415: $c0

	rst SubAFromDE                                          ; $4416: $df
	ldh [$8e], a                                     ; $4417: $e0 $8e
	ret nc                                           ; $4419: $d0

	ldh [hDisp1_SCY], a                                     ; $441a: $e0 $90
	ldh a, [$08]                                     ; $441c: $f0 $08
	ldh a, [$c8]                                     ; $441e: $f0 $c8
	ld hl, sp-$0c                                    ; $4420: $f8 $f4
	db $fc                                           ; $4422: $fc
	ld hl, sp+$3c                                    ; $4423: $f8 $3c
	db $fc                                           ; $4425: $fc
	inc c                                            ; $4426: $0c
	db $fc                                           ; $4427: $fc
	xor h                                            ; $4428: $ac
	ld e, h                                          ; $4429: $5c
	ld [hl], e                                       ; $442a: $73
	db $fc                                           ; $442b: $fc
	ld [hl], a                                       ; $442c: $77
	sbc b                                            ; $442d: $98
	rst SubAFromDE                                          ; $442e: $df
	inc c                                            ; $442f: $0c
	ld a, a                                          ; $4430: $7f
	db $fc                                           ; $4431: $fc
	ld [hl], e                                       ; $4432: $73
	cp $df                                           ; $4433: $fe $df
	rrca                                             ; $4435: $0f
	sub e                                            ; $4436: $93
	jr jr_01e_4458                                   ; $4437: $18 $1f

	rra                                              ; $4439: $1f
	db $10                                           ; $443a: $10
	rra                                              ; $443b: $1f
	db $10                                           ; $443c: $10
	db $10                                           ; $443d: $10
	rra                                              ; $443e: $1f
	ld a, [de]                                       ; $443f: $1a
	rra                                              ; $4440: $1f
	rrca                                             ; $4441: $0f
	rrca                                             ; $4442: $0f
	db $fc                                           ; $4443: $fc
	sbc h                                            ; $4444: $9c
	and b                                            ; $4445: $a0
	ld b, b                                          ; $4446: $40
	and b                                            ; $4447: $a0
	cp $9c                                           ; $4448: $fe $9c
	jr nz, jr_01e_444c                               ; $444a: $20 $00

jr_01e_444c:
	ld b, b                                          ; $444c: $40
	ld [hl], e                                       ; $444d: $73
	cp b                                             ; $444e: $b8
	ld a, a                                          ; $444f: $7f
	sub b                                            ; $4450: $90
	rst SubAFromDE                                          ; $4451: $df
	rst $38                                          ; $4452: $ff
	ld a, a                                          ; $4453: $7f
	db $fd                                           ; $4454: $fd
	ld a, e                                          ; $4455: $7b
	adc a                                            ; $4456: $8f
	sbc [hl]                                         ; $4457: $9e

jr_01e_4458:
	xor d                                            ; $4458: $aa
	sbc $ff                                          ; $4459: $de $ff
	db $fd                                           ; $445b: $fd
	sbc e                                            ; $445c: $9b
	ld b, $07                                        ; $445d: $06 $07
	ld b, $07                                        ; $445f: $06 $07
	ld a, e                                          ; $4461: $7b
	sbc d                                            ; $4462: $9a
	ld a, a                                          ; $4463: $7f
	sub b                                            ; $4464: $90
	ld sp, hl                                        ; $4465: $f9
	rst SubAFromDE                                          ; $4466: $df
	rst $38                                          ; $4467: $ff
	sbc e                                            ; $4468: $9b
	ld bc, $01ff                                     ; $4469: $01 $ff $01
	ld bc, $e063                                     ; $446c: $01 $63 $e0
	ld h, e                                          ; $446f: $63
	sbc b                                            ; $4470: $98
	ld [hl], a                                       ; $4471: $77
	db $fc                                           ; $4472: $fc
	sbc b                                            ; $4473: $98
	ld a, h                                          ; $4474: $7c
	db $fc                                           ; $4475: $fc
	db $fc                                           ; $4476: $fc
	call c, $acbc                                    ; $4477: $dc $bc $ac
	ld a, h                                          ; $447a: $7c
	ld [hl], a                                       ; $447b: $77
	cp $9b                                           ; $447c: $fe $9b
	sbc h                                            ; $447e: $9c
	db $fc                                           ; $447f: $fc
	ld hl, sp-$08                                    ; $4480: $f8 $f8
	push af                                          ; $4482: $f5
	rst SubAFromDE                                          ; $4483: $df
	inc a                                            ; $4484: $3c
	rst SubAFromDE                                          ; $4485: $df
	ld a, b                                          ; $4486: $78
	sub [hl]                                         ; $4487: $96
	pop af                                           ; $4488: $f1
	ldh a, [$e2]                                     ; $4489: $f0 $e2
	ldh [$c0], a                                     ; $448b: $e0 $c0
	ret nz                                           ; $448d: $c0

	add c                                            ; $448e: $81
	add b                                            ; $448f: $80
	ld [bc], a                                       ; $4490: $02

jr_01e_4491:
	ld a, [$ab5f]                                    ; $4491: $fa $5f $ab
	ld sp, hl                                        ; $4494: $f9
	ld a, a                                          ; $4495: $7f
	and $9a                                          ; $4496: $e6 $9a
	add c                                            ; $4498: $81
	nop                                              ; $4499: $00
	inc d                                            ; $449a: $14
	nop                                              ; $449b: $00
	ld a, [bc]                                       ; $449c: $0a
	ld sp, hl                                        ; $449d: $f9
	ld [hl], e                                       ; $449e: $73
	ld l, h                                          ; $449f: $6c
	rst $38                                          ; $44a0: $ff
	sub h                                            ; $44a1: $94
	rra                                              ; $44a2: $1f
	ld c, $0e                                        ; $44a3: $0e $0e
	inc b                                            ; $44a5: $04
	nop                                              ; $44a6: $00
	ld bc, $0201                                     ; $44a7: $01 $01 $02
	dec bc                                           ; $44aa: $0b
	inc b                                            ; $44ab: $04
	ld bc, $c567                                     ; $44ac: $01 $67 $c5
	ld hl, sp-$21                                    ; $44af: $f8 $df
	inc c                                            ; $44b1: $0c
	ld a, e                                          ; $44b2: $7b
	cp b                                             ; $44b3: $b8
	sub h                                            ; $44b4: $94
	jr nc, @+$2f                                     ; $44b5: $30 $2d

	ld e, [hl]                                       ; $44b7: $5e
	ld [hl], c                                       ; $44b8: $71
	adc [hl]                                         ; $44b9: $8e
	xor l                                            ; $44ba: $ad
	ld e, [hl]                                       ; $44bb: $5e
	xor l                                            ; $44bc: $ad
	ld e, [hl]                                       ; $44bd: $5e
	ld l, h                                          ; $44be: $6c
	sbc a                                            ; $44bf: $9f
	rst AddAOntoHL                                          ; $44c0: $ef
	ld a, d                                          ; $44c1: $7a
	xor h                                            ; $44c2: $ac
	sub h                                            ; $44c3: $94
	ld h, b                                          ; $44c4: $60
	and b                                            ; $44c5: $a0
	ld d, b                                          ; $44c6: $50
	or b                                             ; $44c7: $b0
	ld c, b                                          ; $44c8: $48
	sub b                                            ; $44c9: $90
	ld l, b                                          ; $44ca: $68
	jr c, jr_01e_4491                                ; $44cb: $38 $c4

	jr jr_01e_44ef                                   ; $44cd: $18 $20

	rst SubAFromBC                                          ; $44cf: $e7
	rst SubAFromDE                                          ; $44d0: $df
	ld c, $90                                        ; $44d1: $0e $90
	ld de, $2717                                     ; $44d3: $11 $17 $27
	cpl                                              ; $44d6: $2f
	ld c, b                                          ; $44d7: $48
	ld a, e                                          ; $44d8: $7b
	sub d                                            ; $44d9: $92
	rst FarCall                                          ; $44da: $f7
	and a                                            ; $44db: $a7
	db $ed                                           ; $44dc: $ed
	rst GetHLinHL                                          ; $44dd: $cf
	ld hl, sp+$5f                                    ; $44de: $f8 $5f
	ld [hl], b                                       ; $44e0: $70
	ld d, c                                          ; $44e1: $51
	ld a, e                                          ; $44e2: $7b
	cp $9d                                           ; $44e3: $fe $9d
	ld a, a                                          ; $44e5: $7f
	ld [hl], b                                       ; $44e6: $70
	rst FarCall                                          ; $44e7: $f7
	rst SubAFromDE                                          ; $44e8: $df
	ldh a, [$80]                                     ; $44e9: $f0 $80
	ld c, b                                          ; $44eb: $48
	ld hl, sp+$64                                    ; $44ec: $f8 $64
	db $ec                                           ; $44ee: $ec

jr_01e_44ef:
	sub d                                            ; $44ef: $92
	or $4a                                           ; $44f0: $f6 $4a
	ld e, [hl]                                       ; $44f2: $5e
	ld h, $ae                                        ; $44f3: $26 $ae
	sub d                                            ; $44f5: $92
	cp $fe                                           ; $44f6: $fe $fe
	ld a, [hl]                                       ; $44f8: $7e
	ld l, d                                          ; $44f9: $6a
	ld c, $9c                                        ; $44fa: $0e $9c
	ld b, $f8                                        ; $44fc: $06 $f8
	inc c                                            ; $44fe: $0c
	inc de                                           ; $44ff: $13
	ld d, $03                                        ; $4500: $16 $03
	rlca                                             ; $4502: $07
	ld [bc], a                                       ; $4503: $02
	ld b, $00                                        ; $4504: $06 $00
	inc b                                            ; $4506: $04
	ld h, b                                          ; $4507: $60
	nop                                              ; $4508: $00
	ld h, b                                          ; $4509: $60
	db $ec                                           ; $450a: $ec
	sbc d                                            ; $450b: $9a
	sbc [hl]                                         ; $450c: $9e
	ld b, $f8                                        ; $450d: $06 $f8
	ld [$6370], sp                                   ; $450f: $08 $70 $63
	cp d                                             ; $4512: $ba
	ld a, a                                          ; $4513: $7f
	rst SubAFromHL                                          ; $4514: $d7
	pop af                                           ; $4515: $f1
	scf                                              ; $4516: $37
	ld bc, $9afb                                     ; $4517: $01 $fb $9a
	rst $38                                          ; $451a: $ff
	nop                                              ; $451b: $00
	inc c                                            ; $451c: $0c
	nop                                              ; $451d: $00
	ld bc, $9afa                                     ; $451e: $01 $fa $9a
	inc b                                            ; $4521: $04
	nop                                              ; $4522: $00
	ld [$1000], sp                                   ; $4523: $08 $00 $10
	cp $9e                                           ; $4526: $fe $9e
	add b                                            ; $4528: $80
	ld a, e                                          ; $4529: $7b
	cp $9d                                           ; $452a: $fe $9d
	adc b                                            ; $452c: $88
	ld [bc], a                                       ; $452d: $02
	ld h, a                                          ; $452e: $67
	ldh [$9a], a                                     ; $452f: $e0 $9a
	ld b, a                                          ; $4531: $47
	nop                                              ; $4532: $00
	db $ed                                           ; $4533: $ed
	nop                                              ; $4534: $00
	rlca                                             ; $4535: $07
	db $fc                                           ; $4536: $fc
	ld a, a                                          ; $4537: $7f
	ldh [c], a                                       ; $4538: $e2
	sbc h                                            ; $4539: $9c
	and h                                            ; $453a: $a4
	nop                                              ; $453b: $00
	ld d, b                                          ; $453c: $50
	ld a, [$409c]                                    ; $453d: $fa $9c $40
	db $10                                           ; $4540: $10
	ld b, b                                          ; $4541: $40
	ld a, e                                          ; $4542: $7b
	db $f4                                           ; $4543: $f4
	sub c                                            ; $4544: $91
	ld [hl], b                                       ; $4545: $70
	nop                                              ; $4546: $00
	ld h, b                                          ; $4547: $60
	rlca                                             ; $4548: $07
	halt                                             ; $4549: $76
	add hl, bc                                       ; $454a: $09
	ld l, d                                          ; $454b: $6a
	dec d                                            ; $454c: $15
	ld d, d                                          ; $454d: $52
	dec l                                            ; $454e: $2d
	ld e, b                                          ; $454f: $58
	daa                                              ; $4550: $27
	ld h, b                                          ; $4551: $60
	add hl, de                                       ; $4552: $19
	ld a, e                                          ; $4553: $7b
	or a                                             ; $4554: $b7
	sbc [hl]                                         ; $4555: $9e
	ld b, $f5                                        ; $4556: $06 $f5
	adc e                                            ; $4558: $8b
	jp nz, $0cc0                                     ; $4559: $c2 $c0 $0c

	inc c                                            ; $455c: $0c
	nop                                              ; $455d: $00
	inc e                                            ; $455e: $1c
	ret c                                            ; $455f: $d8

	db $e4                                           ; $4560: $e4
	sub b                                            ; $4561: $90
	add sp, -$30                                     ; $4562: $e8 $d0
	add sp, -$2e                                     ; $4564: $e8 $d2
	push hl                                          ; $4566: $e5
	ret nc                                           ; $4567: $d0

	ld l, d                                          ; $4568: $6a
	ld c, d                                          ; $4569: $4a
	inc d                                            ; $456a: $14
	ld h, d                                          ; $456b: $62
	inc c                                            ; $456c: $0c
	rst SubAFromBC                                          ; $456d: $e7
	rst SubAFromDE                                          ; $456e: $df
	ld [bc], a                                       ; $456f: $02
	sub l                                            ; $4570: $95
	inc b                                            ; $4571: $04
	rlca                                             ; $4572: $07
	add hl, bc                                       ; $4573: $09
	rrca                                             ; $4574: $0f
	ld a, [bc]                                       ; $4575: $0a
	ld c, $0c                                        ; $4576: $0e $0c
	rrca                                             ; $4578: $0f
	dec b                                            ; $4579: $05
	rlca                                             ; $457a: $07
	ld [hl], a                                       ; $457b: $77
	cp $f5                                           ; $457c: $fe $f5
	rst SubAFromDE                                          ; $457e: $df
	dec c                                            ; $457f: $0d
	adc [hl]                                         ; $4580: $8e
	sub h                                            ; $4581: $94
	cp l                                             ; $4582: $bd
	nop                                              ; $4583: $00
	adc b                                            ; $4584: $88
	adc c                                            ; $4585: $89
	cp a                                             ; $4586: $bf
	inc h                                            ; $4587: $24
	ld [hl], l                                       ; $4588: $75
	ld [hl], d                                       ; $4589: $72
	jp c, $8ff9                                      ; $458a: $da $f9 $8f

	cp $07                                           ; $458d: $fe $07
	jr c, jr_01e_45b1                                ; $458f: $38 $20

	jr @-$06                                         ; $4591: $18 $f8

	ld a, a                                          ; $4593: $7f
	ld c, d                                          ; $4594: $4a
	ld [hl], a                                       ; $4595: $77
	cp $89                                           ; $4596: $fe $89
	add h                                            ; $4598: $84
	add b                                            ; $4599: $80
	ld b, h                                          ; $459a: $44
	ret nz                                           ; $459b: $c0

	inc h                                            ; $459c: $24
	ld h, b                                          ; $459d: $60
	and h                                            ; $459e: $a4
	and b                                            ; $459f: $a0
	ld h, h                                          ; $45a0: $64
	ldh [rAUDVOL], a                                 ; $45a1: $e0 $24
	ldh [$e4], a                                     ; $45a3: $e0 $e4
	ldh [$a4], a                                     ; $45a5: $e0 $a4
	ldh [$c4], a                                     ; $45a7: $e0 $c4
	ld h, b                                          ; $45a9: $60

jr_01e_45aa:
	rlca                                             ; $45aa: $07
	rlca                                             ; $45ab: $07
	inc b                                            ; $45ac: $04
	dec b                                            ; $45ad: $05
	ld a, e                                          ; $45ae: $7b
	ld l, [hl]                                       ; $45af: $6e
	ld l, e                                          ; $45b0: $6b

jr_01e_45b1:
	jr c, jr_01e_45aa                                ; $45b1: $38 $f7

	sbc [hl]                                         ; $45b3: $9e
	ld a, a                                          ; $45b4: $7f
	ld a, [$267f]                                    ; $45b5: $fa $7f $26
	sbc c                                            ; $45b8: $99
	rst SubAFromBC                                          ; $45b9: $e7
	add c                                            ; $45ba: $81
	ld a, [hl]                                       ; $45bb: $7e
	ld h, d                                          ; $45bc: $62
	inc e                                            ; $45bd: $1c
	inc e                                            ; $45be: $1c
	ld sp, hl                                        ; $45bf: $f9
	sbc [hl]                                         ; $45c0: $9e
	ret nz                                           ; $45c1: $c0

	ld a, e                                          ; $45c2: $7b
	cp $6f                                           ; $45c3: $fe $6f
	add sp, -$05                                     ; $45c5: $e8 $fb
	sub c                                            ; $45c7: $91
	add h                                            ; $45c8: $84
	ret nz                                           ; $45c9: $c0

	inc b                                            ; $45ca: $04
	add b                                            ; $45cb: $80
	ld b, h                                          ; $45cc: $44
	ld b, b                                          ; $45cd: $40
	ld b, h                                          ; $45ce: $44
	nop                                              ; $45cf: $00
	ld b, h                                          ; $45d0: $44
	nop                                              ; $45d1: $00
	db $e4                                           ; $45d2: $e4
	ld b, b                                          ; $45d3: $40
	db $e4                                           ; $45d4: $e4
	add b                                            ; $45d5: $80
	ld l, a                                          ; $45d6: $6f
	sbc d                                            ; $45d7: $9a
	ld [hl], a                                       ; $45d8: $77
	cp $9e                                           ; $45d9: $fe $9e
	db $fc                                           ; $45db: $fc
	ld d, a                                          ; $45dc: $57
	or h                                             ; $45dd: $b4
	sbc b                                            ; $45de: $98
	ld a, a                                          ; $45df: $7f
	ldh a, [$a0]                                     ; $45e0: $f0 $a0
	rst $38                                          ; $45e2: $ff
	and a                                            ; $45e3: $a7
	rst $38                                          ; $45e4: $ff
	and h                                            ; $45e5: $a4
	ld a, e                                          ; $45e6: $7b
	db $fc                                           ; $45e7: $fc
	sbc c                                            ; $45e8: $99
	xor c                                            ; $45e9: $a9
	db $fd                                           ; $45ea: $fd
	xor c                                            ; $45eb: $a9
	ld hl, sp-$60                                    ; $45ec: $f8 $a0
	ldh a, [$5b]                                     ; $45ee: $f0 $5b
	cp $73                                           ; $45f0: $fe $73
	or h                                             ; $45f2: $b4
	ld a, e                                          ; $45f3: $7b
	or e                                             ; $45f4: $b3
	rst SubAFromDE                                          ; $45f5: $df
	dec sp                                           ; $45f6: $3b
	sub a                                            ; $45f7: $97
	pop hl                                           ; $45f8: $e1
	and c                                            ; $45f9: $a1
	ldh a, [c]                                       ; $45fa: $f2
	ld [hl], d                                       ; $45fb: $72
	ld b, d                                          ; $45fc: $42
	ld b, d                                          ; $45fd: $42
	ld [hl], a                                       ; $45fe: $77
	ld [hl], a                                       ; $45ff: $77
	rst FarCall                                          ; $4600: $f7
	rst SubAFromDE                                          ; $4601: $df
	rst JumpTable                                          ; $4602: $c7
	rst SubAFromDE                                          ; $4603: $df
	ld b, d                                          ; $4604: $42
	db $fd                                           ; $4605: $fd
	rst SubAFromDE                                          ; $4606: $df
	ld hl, sp-$21                                    ; $4607: $f8 $df
	inc c                                            ; $4609: $0c
	rst SubAFromDE                                          ; $460a: $df
	adc d                                            ; $460b: $8a
	rst SubAFromDE                                          ; $460c: $df
	ld a, [hl+]                                      ; $460d: $2a
	sbc b                                            ; $460e: $98
	adc d                                            ; $460f: $8a
	ld a, [bc]                                       ; $4610: $0a
	ld a, d                                          ; $4611: $7a
	ld l, d                                          ; $4612: $6a
	ld a, [hl-]                                      ; $4613: $3a
	ld a, [bc]                                       ; $4614: $0a
	ld a, [de]                                       ; $4615: $1a
	ld d, e                                          ; $4616: $53
	cp $6f                                           ; $4617: $fe $6f
	cp d                                             ; $4619: $ba
	sbc [hl]                                         ; $461a: $9e
	pop af                                           ; $461b: $f1
	ld e, e                                          ; $461c: $5b
	xor [hl]                                         ; $461d: $ae
	sub [hl]                                         ; $461e: $96
	rst $38                                          ; $461f: $ff
	xor l                                            ; $4620: $ad
	rst $38                                          ; $4621: $ff
	and b                                            ; $4622: $a0
	rst $38                                          ; $4623: $ff
	rst $38                                          ; $4624: $ff
	add b                                            ; $4625: $80
	add b                                            ; $4626: $80
	ld a, a                                          ; $4627: $7f
	ld h, a                                          ; $4628: $67
	dec a                                            ; $4629: $3d
	ld a, d                                          ; $462a: $7a
	ld e, b                                          ; $462b: $58
	ld sp, hl                                        ; $462c: $f9
	rst SubAFromDE                                          ; $462d: $df
	ld bc, $dfff                                     ; $462e: $01 $ff $df
	inc d                                            ; $4631: $14
	sbc l                                            ; $4632: $9d
	ld [hl-], a                                      ; $4633: $32
	ld [hl+], a                                      ; $4634: $22
	ld [hl], a                                       ; $4635: $77
	adc [hl]                                         ; $4636: $8e
	ld [hl], a                                       ; $4637: $77
	db $fc                                           ; $4638: $fc
	rst $38                                          ; $4639: $ff
	sbc l                                            ; $463a: $9d
	ld a, [hl-]                                      ; $463b: $3a
	ld a, [hl+]                                      ; $463c: $2a
	ld h, a                                          ; $463d: $67
	cp $6f                                           ; $463e: $fe $6f
	or b                                             ; $4640: $b0
	sbc l                                            ; $4641: $9d
	cp d                                             ; $4642: $ba
	xor d                                            ; $4643: $aa
	ld [hl], a                                       ; $4644: $77
	db $f4                                           ; $4645: $f4
	rst SubAFromDE                                          ; $4646: $df
	ld a, [$02df]                                    ; $4647: $fa $df $02
	rst SubAFromDE                                          ; $464a: $df
	cp $fd                                           ; $464b: $fe $fd
	rlc b                                            ; $464d: $cb $00
	pop af                                           ; $464f: $f1
	rst SubAFromDE                                          ; $4650: $df
	inc bc                                           ; $4651: $03
	sub c                                            ; $4652: $91
	rlca                                             ; $4653: $07
	inc b                                            ; $4654: $04
	dec c                                            ; $4655: $0d
	dec bc                                           ; $4656: $0b
	dec c                                            ; $4657: $0d
	dec bc                                           ; $4658: $0b
	ld c, $09                                        ; $4659: $0e $09
	rlca                                             ; $465b: $07
	inc b                                            ; $465c: $04
	ld [bc], a                                       ; $465d: $02
	inc bc                                           ; $465e: $03
	ld bc, $f101                                     ; $465f: $01 $01 $f1
	rst SubAFromDE                                          ; $4662: $df
	pop bc                                           ; $4663: $c1
	sub d                                            ; $4664: $92
	xor d                                            ; $4665: $aa
	ld a, a                                          ; $4666: $7f
	db $e3                                           ; $4667: $e3
	sbc h                                            ; $4668: $9c
	push de                                          ; $4669: $d5
	xor d                                            ; $466a: $aa
	db $eb                                           ; $466b: $eb
	inc d                                            ; $466c: $14
	ld a, [hl]                                       ; $466d: $7e
	nop                                              ; $466e: $00
	jr @+$1a                                         ; $466f: $18 $18

	add c                                            ; $4671: $81
	ldh a, [$df]                                     ; $4672: $f0 $df
	ldh [$80], a                                     ; $4674: $e0 $80
	ldh a, [rAUD1SWEEP]                              ; $4676: $f0 $10
	ret c                                            ; $4678: $d8

	add sp, -$28                                     ; $4679: $e8 $d8
	add sp, -$48                                     ; $467b: $e8 $b8
	ld c, b                                          ; $467d: $48
	ldh a, [rAUD1SWEEP]                              ; $467e: $f0 $10
	and b                                            ; $4680: $a0
	ld h, b                                          ; $4681: $60
	ret nz                                           ; $4682: $c0

	ld b, b                                          ; $4683: $40
	ld c, $08                                        ; $4684: $0e $08
	rlca                                             ; $4686: $07
	inc b                                            ; $4687: $04
	ld b, $07                                        ; $4688: $06 $07
	ld a, c                                          ; $468a: $79
	ld a, [hl]                                       ; $468b: $7e
	ccf                                              ; $468c: $3f
	jr nz, @+$71                                     ; $468d: $20 $6f

	ld [hl], b                                       ; $468f: $70
	dec a                                            ; $4690: $3d
	ld a, $09                                        ; $4691: $3e $09
	add hl, bc                                       ; $4693: $09
	ld a, a                                          ; $4694: $7f
	ld [hl], e                                       ; $4695: $73
	or $9b                                           ; $4696: $f6 $9b
	ld [hl-], a                                      ; $4698: $32
	dec a                                            ; $4699: $3d
	rrca                                             ; $469a: $0f
	rrca                                             ; $469b: $0f
	ei                                               ; $469c: $fb
	sub c                                            ; $469d: $91
	jp c, $3406                                      ; $469e: $da $06 $34

	inc c                                            ; $46a1: $0c
	call c, $9a3c                                    ; $46a2: $dc $3c $9a
	ld b, $ee                                        ; $46a5: $06 $ee
	ld [bc], a                                       ; $46a7: $02
	db $ed                                           ; $46a8: $ed
	inc bc                                           ; $46a9: $03
	rst $38                                          ; $46aa: $ff
	ld bc, $fe77                                     ; $46ab: $01 $77 $fe
	sub a                                            ; $46ae: $97
	dec a                                            ; $46af: $3d
	inc bc                                           ; $46b0: $03
	jp c, $ac06                                      ; $46b1: $da $06 $ac

	ld e, h                                          ; $46b4: $5c
	ldh a, [$f0]                                     ; $46b5: $f0 $f0
	di                                               ; $46b7: $f3
	sub l                                            ; $46b8: $95
	ld [bc], a                                       ; $46b9: $02
	dec b                                            ; $46ba: $05
	inc bc                                           ; $46bb: $03
	rrca                                             ; $46bc: $0f
	inc d                                            ; $46bd: $14
	inc e                                            ; $46be: $1c
	ld a, [hl+]                                      ; $46bf: $2a
	ld a, $22                                        ; $46c0: $3e $22
	ld [hl], $f9                                     ; $46c2: $36 $f9
	rst SubAFromDE                                          ; $46c4: $df
	add c                                            ; $46c5: $81
	sbc e                                            ; $46c6: $9b
	rst SubAFromBC                                          ; $46c7: $e7
	ld h, [hl]                                       ; $46c8: $66
	ld a, [hl]                                       ; $46c9: $7e
	ld e, d                                          ; $46ca: $5a
	ld sp, hl                                        ; $46cb: $f9

jr_01e_46cc:
	sub a                                            ; $46cc: $97
	add b                                            ; $46cd: $80
	ld b, b                                          ; $46ce: $40
	add b                                            ; $46cf: $80
	ldh [rLCDC], a                                   ; $46d0: $e0 $40
	ld h, b                                          ; $46d2: $60
	ld b, b                                          ; $46d3: $40
	ld h, b                                          ; $46d4: $60
	ld l, e                                          ; $46d5: $6b
	ld a, [hl-]                                      ; $46d6: $3a
	sub [hl]                                         ; $46d7: $96
	inc b                                            ; $46d8: $04
	nop                                              ; $46d9: $00
	rlca                                             ; $46da: $07
	rlca                                             ; $46db: $07
	rrca                                             ; $46dc: $0f
	ld [$101c], sp                                   ; $46dd: $08 $1c $10
	jr c, jr_01e_46cc                                ; $46e0: $38 $ea

	ld a, e                                          ; $46e2: $7b
	pop de                                           ; $46e3: $d1
	sub b                                            ; $46e4: $90
	and b                                            ; $46e5: $a0
	ret nz                                           ; $46e6: $c0

	ld d, b                                          ; $46e7: $50
	ldh [rAUD4LEN], a                                ; $46e8: $e0 $20
	ld [hl], b                                       ; $46ea: $70
	inc h                                            ; $46eb: $24
	inc h                                            ; $46ec: $24
	jr jr_01e_4707                                   ; $46ed: $18 $18

	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	inc c                                            ; $46f1: $0c
	nop                                              ; $46f2: $00
	ld [bc], a                                       ; $46f3: $02
	ld a, e                                          ; $46f4: $7b
	cp $ff                                           ; $46f5: $fe $ff
	sbc [hl]                                         ; $46f7: $9e
	ret nz                                           ; $46f8: $c0

	cp $7f                                           ; $46f9: $fe $7f
	pop af                                           ; $46fb: $f1
	ld a, a                                          ; $46fc: $7f
	jp $96f7                                         ; $46fd: $c3 $f7 $96


	db $10                                           ; $4700: $10
	jr nc, @+$12                                     ; $4701: $30 $10

	jr c, jr_01e_470d                                ; $4703: $38 $08

	inc a                                            ; $4705: $3c
	rlca                                             ; $4706: $07

jr_01e_4707:
	rra                                              ; $4707: $1f
	nop                                              ; $4708: $00
	ld l, e                                          ; $4709: $6b
	ld d, b                                          ; $470a: $50
	pop af                                           ; $470b: $f1
	sub a                                            ; $470c: $97

jr_01e_470d:
	jr nz, jr_01e_473f                               ; $470d: $20 $30

	jr nz, jr_01e_4781                               ; $470f: $20 $70

	ld b, b                                          ; $4711: $40
	ldh a, [$80]                                     ; $4712: $f0 $80
	ldh [$73], a                                     ; $4714: $e0 $73

jr_01e_4716:
	push bc                                          ; $4716: $c5
	xor $96                                          ; $4717: $ee $96
	nop                                              ; $4719: $00
	add sp, -$67                                     ; $471a: $e8 $99
	rlca                                             ; $471c: $07
	inc b                                            ; $471d: $04
	ld [$0003], sp                                   ; $471e: $08 $03 $00
	ld [$97f7], sp                                   ; $4721: $08 $f7 $97
	inc bc                                           ; $4724: $03
	ld [bc], a                                       ; $4725: $02
	inc b                                            ; $4726: $04
	inc b                                            ; $4727: $04
	nop                                              ; $4728: $00
	inc bc                                           ; $4729: $03
	nop                                              ; $472a: $00
	nop                                              ; $472b: $00
	ld [hl], e                                       ; $472c: $73
	ei                                               ; $472d: $fb
	cp $df                                           ; $472e: $fe $df
	add b                                            ; $4730: $80
	sbc e                                            ; $4731: $9b
	ld b, b                                          ; $4732: $40
	add b                                            ; $4733: $80

jr_01e_4734:
	nop                                              ; $4734: $00
	ld b, b                                          ; $4735: $40
	rst FarCall                                          ; $4736: $f7
	sub h                                            ; $4737: $94
	ret nz                                           ; $4738: $c0

	ld b, b                                          ; $4739: $40
	jr nz, jr_01e_4734                               ; $473a: $20 $f8

	ld e, $93                                        ; $473c: $1e $93
	inc a                                            ; $473e: $3c

jr_01e_473f:
	ld b, $27                                        ; $473f: $06 $27
	ld bc, $e6c1                                     ; $4741: $01 $c1 $e6
	ld a, e                                          ; $4744: $7b
	jp z, Jump_01e_4095                              ; $4745: $ca $95 $40

	and b                                            ; $4748: $a0
	and b                                            ; $4749: $a0
	ret nc                                           ; $474a: $d0

	ld h, b                                          ; $474b: $60
	ld d, b                                          ; $474c: $50
	db $10                                           ; $474d: $10
	ld l, b                                          ; $474e: $68
	jr nc, jr_01e_4779                               ; $474f: $30 $28

	ld [hl], a                                       ; $4751: $77
	cp $93                                           ; $4752: $fe $93
	nop                                              ; $4754: $00
	rrca                                             ; $4755: $0f
	rlca                                             ; $4756: $07
	nop                                              ; $4757: $00
	inc bc                                           ; $4758: $03
	inc bc                                           ; $4759: $03
	ld bc, $0103                                     ; $475a: $01 $03 $01
	ld [bc], a                                       ; $475d: $02
	nop                                              ; $475e: $00
	ld bc, $fe7b                                     ; $475f: $01 $7b $fe
	rst AddAOntoHL                                          ; $4762: $ef
	sbc l                                            ; $4763: $9d
	ret nz                                           ; $4764: $c0

	add b                                            ; $4765: $80
	ld l, a                                          ; $4766: $6f
	ret z                                            ; $4767: $c8

	ld a, a                                          ; $4768: $7f
	rst JumpTable                                          ; $4769: $c7
	sub h                                            ; $476a: $94
	ret nz                                           ; $476b: $c0

	and b                                            ; $476c: $a0
	ld h, b                                          ; $476d: $60
	ld d, b                                          ; $476e: $50
	cp b                                             ; $476f: $b8
	inc l                                            ; $4770: $2c
	ld e, a                                          ; $4771: $5f
	dec de                                           ; $4772: $1b
	daa                                              ; $4773: $27
	rlca                                             ; $4774: $07
	jr jr_01e_47e2                                   ; $4775: $18 $6b

	ld a, h                                          ; $4777: $7c
	ldh a, [c]                                       ; $4778: $f2

jr_01e_4779:
	rst SubAFromDE                                          ; $4779: $df
	ld bc, $0295                                     ; $477a: $01 $95 $02
	rlca                                             ; $477d: $07
	dec c                                            ; $477e: $0d
	ld e, $f7                                        ; $477f: $1e $f7

jr_01e_4781:
	ld hl, sp-$04                                    ; $4781: $f8 $fc
	inc bc                                           ; $4783: $03
	nop                                              ; $4784: $00
	ld hl, sp-$07                                    ; $4785: $f8 $f9
	ld [hl], e                                       ; $4787: $73
	sbc d                                            ; $4788: $9a
	sub c                                            ; $4789: $91
	ld l, b                                          ; $478a: $68
	ld d, b                                          ; $478b: $50
	ld l, b                                          ; $478c: $68
	ld h, b                                          ; $478d: $60
	ret nc                                           ; $478e: $d0

	and b                                            ; $478f: $a0
	ret nc                                           ; $4790: $d0

	ld b, b                                          ; $4791: $40
	and b                                            ; $4792: $a0
	ret nz                                           ; $4793: $c0

	jr nz, jr_01e_4716                               ; $4794: $20 $80

	ld b, b                                          ; $4796: $40
	nop                                              ; $4797: $00
	ld [hl], e                                       ; $4798: $73
	xor a                                            ; $4799: $af
	ldh [$df], a                                     ; $479a: $e0 $df
	ld a, a                                          ; $479c: $7f
	sbc e                                            ; $479d: $9b
	sbc e                                            ; $479e: $9b
	ld h, d                                          ; $479f: $62
	ld b, d                                          ; $47a0: $42
	inc a                                            ; $47a1: $3c
	inc a                                            ; $47a2: $3c
	rst FarCall                                          ; $47a3: $f7
	sbc [hl]                                         ; $47a4: $9e
	inc c                                            ; $47a5: $0c
	ld a, e                                          ; $47a6: $7b
	xor $df                                          ; $47a7: $ee $df
	ld [hl+], a                                      ; $47a9: $22
	sbc l                                            ; $47aa: $9d
	ld e, $1c                                        ; $47ab: $1e $1c
	di                                               ; $47ad: $f3
	cp l                                             ; $47ae: $bd
	add b                                            ; $47af: $80
	ld a, [$3f9e]                                    ; $47b0: $fa $9e $3f
	ld h, a                                          ; $47b3: $67
	ld hl, sp-$2f                                    ; $47b4: $f8 $d1
	jr nz, @-$04                                     ; $47b6: $20 $fa

	sbc [hl]                                         ; $47b8: $9e
	rst $38                                          ; $47b9: $ff
	ld d, a                                          ; $47ba: $57
	ld hl, sp-$62                                    ; $47bb: $f8 $9e
	add b                                            ; $47bd: $80
	ld a, [$f867]                                    ; $47be: $fa $67 $f8
	ld d, a                                          ; $47c1: $57
	ldh [$d9], a                                     ; $47c2: $e0 $d9
	inc bc                                           ; $47c4: $03
	reti                                             ; $47c5: $d9


	ld [bc], a                                       ; $47c6: $02
	ld a, [$fc9e]                                    ; $47c7: $fa $9e $fc
	ld h, a                                          ; $47ca: $67
	ld hl, sp-$27                                    ; $47cb: $f8 $d9
	db $fc                                           ; $47cd: $fc
	sbc [hl]                                         ; $47ce: $9e
	inc b                                            ; $47cf: $04
	sbc $14                                          ; $47d0: $de $14
	sbc [hl]                                         ; $47d2: $9e
	call nz, $d4de                                   ; $47d3: $c4 $de $d4
	sub [hl]                                         ; $47d6: $96
	jr nz, jr_01e_4818                               ; $47d7: $20 $3f

	jr nz, jr_01e_4808                               ; $47d9: $20 $2d

	add hl, hl                                       ; $47db: $29
	jr nz, jr_01e_4801                               ; $47dc: $20 $23

	ld hl, $d920                                     ; $47de: $21 $20 $d9
	ccf                                              ; $47e1: $3f

jr_01e_47e2:
	ld c, e                                          ; $47e2: $4b
	ld l, a                                          ; $47e3: $6f
	ld a, e                                          ; $47e4: $7b
	and [hl]                                         ; $47e5: $a6
	rst SubAFromDE                                          ; $47e6: $df
	or [hl]                                          ; $47e7: $b6
	sbc e                                            ; $47e8: $9b
	nop                                              ; $47e9: $00
	ld e, e                                          ; $47ea: $5b
	ld e, e                                          ; $47eb: $5b
	nop                                              ; $47ec: $00
	reti                                             ; $47ed: $d9


	rst $38                                          ; $47ee: $ff
	ld c, e                                          ; $47ef: $4b
	adc a                                            ; $47f0: $8f
	sbc l                                            ; $47f1: $9d
	inc bc                                           ; $47f2: $03
	rst $38                                          ; $47f3: $ff
	db $dd                                           ; $47f4: $dd
	ld bc, $6d9c                                     ; $47f5: $01 $9c $6d
	ld h, l                                          ; $47f8: $65
	ld [bc], a                                       ; $47f9: $02
	jp c, $47fe                                      ; $47fa: $da $fe $47

	ldh [$d9], a                                     ; $47fd: $e0 $d9
	db $fc                                           ; $47ff: $fc
	sub a                                            ; $4800: $97

jr_01e_4801:
	inc d                                            ; $4801: $14
	inc b                                            ; $4802: $04
	db $f4                                           ; $4803: $f4
	sub h                                            ; $4804: $94
	or h                                             ; $4805: $b4
	sub h                                            ; $4806: $94
	db $f4                                           ; $4807: $f4

jr_01e_4808:
	inc b                                            ; $4808: $04
	ld h, e                                          ; $4809: $63
	ld [hl], a                                       ; $480a: $77
	jp hl                                            ; $480b: $e9


	sub b                                            ; $480c: $90
	jr c, jr_01e_4864                                ; $480d: $38 $55

	xor e                                            ; $480f: $ab
	rst JumpTable                                          ; $4810: $c7
	cp d                                             ; $4811: $ba
	ld d, l                                          ; $4812: $55
	dec sp                                           ; $4813: $3b
	nop                                              ; $4814: $00
	jr c, jr_01e_485c                                ; $4815: $38 $45

	add d                                            ; $4817: $82

jr_01e_4818:
	add e                                            ; $4818: $83
	sub d                                            ; $4819: $92
	ld d, l                                          ; $481a: $55
	ld a, [hl-]                                      ; $481b: $3a
	ldh a, [hDisp1_LCDC]                                     ; $481c: $f0 $8f
	inc bc                                           ; $481e: $03
	ld h, e                                          ; $481f: $63
	rst FarCall                                          ; $4820: $f7
	cp l                                             ; $4821: $bd
	db $eb                                           ; $4822: $eb
	rst AddAOntoHL                                          ; $4823: $ef
	rst $38                                          ; $4824: $ff
	nop                                              ; $4825: $00
	ld h, e                                          ; $4826: $63
	sub l                                            ; $4827: $95
	ld l, e                                          ; $4828: $6b
	cp l                                             ; $4829: $bd
	db $eb                                           ; $482a: $eb
	dec l                                            ; $482b: $2d
	db $db                                           ; $482c: $db
	cp l                                             ; $482d: $bd
	ld a, [$ad9e]                                    ; $482e: $fa $9e $ad
	ld [$e89e], a                                    ; $4831: $ea $9e $e8
	ld a, [$289e]                                    ; $4834: $fa $9e $28
	ldh [$da], a                                     ; $4837: $e0 $da
	sbc b                                            ; $4839: $98
	rra                                              ; $483a: $1f
	ld e, $1d                                        ; $483b: $1e $1d
	ld a, [de]                                       ; $483d: $1a
	add hl, de                                       ; $483e: $19
	ld [de], a                                       ; $483f: $12
	dec b                                            ; $4840: $05
	ei                                               ; $4841: $fb
	sbc h                                            ; $4842: $9c
	ld [$1e18], sp                                   ; $4843: $08 $18 $1e
	pop af                                           ; $4846: $f1
	sbc b                                            ; $4847: $98
	rst $38                                          ; $4848: $ff
	inc a                                            ; $4849: $3c
	ld d, b                                          ; $484a: $50
	and b                                            ; $484b: $a0
	ld b, d                                          ; $484c: $42
	jr nz, jr_01e_488f                               ; $484d: $20 $40

	ld l, e                                          ; $484f: $6b
	ldh [$9e], a                                     ; $4850: $e0 $9e
	db $10                                           ; $4852: $10
	ld h, [hl]                                       ; $4853: $66
	ld h, b                                          ; $4854: $60
	ld hl, sp-$67                                    ; $4855: $f8 $99
	db $fc                                           ; $4857: $fc
	db $e4                                           ; $4858: $e4
	ld b, h                                          ; $4859: $44
	inc b                                            ; $485a: $04
	inc d                                            ; $485b: $14

jr_01e_485c:
	and b                                            ; $485c: $a0
	ld a, [$049c]                                    ; $485d: $fa $9c $04
	add h                                            ; $4860: $84
	inc b                                            ; $4861: $04
	ld h, e                                          ; $4862: $63
	xor b                                            ; $4863: $a8

jr_01e_4864:
	ldh [c], a                                       ; $4864: $e2
	sbc [hl]                                         ; $4865: $9e
	ld b, d                                          ; $4866: $42
	ldh [c], a                                       ; $4867: $e2
	sbc [hl]                                         ; $4868: $9e
	inc d                                            ; $4869: $14
	ld [$0097], a                                    ; $486a: $ea $97 $00
	db $fd                                           ; $486d: $fd
	rst SubAFromDE                                          ; $486e: $df
	rrca                                             ; $486f: $0f
	add l                                            ; $4870: $85
	ld d, $19                                        ; $4871: $16 $19

jr_01e_4873:
	cpl                                              ; $4873: $2f
	ccf                                              ; $4874: $3f
	ld d, b                                          ; $4875: $50
	ld [hl], b                                       ; $4876: $70
	ld [hl], l                                       ; $4877: $75
	ld d, l                                          ; $4878: $55
	ld d, b                                          ; $4879: $50

jr_01e_487a:
	ld [hl], b                                       ; $487a: $70
	jr nz, jr_01e_48bc                               ; $487b: $20 $3f

	rra                                              ; $487d: $1f
	rra                                              ; $487e: $1f
	jr nz, jr_01e_48c0                               ; $487f: $20 $3f

	ld c, a                                          ; $4881: $4f
	ld a, a                                          ; $4882: $7f
	ld hl, sp-$28                                    ; $4883: $f8 $d8
	ld a, b                                          ; $4885: $78
	ret c                                            ; $4886: $d8

	ld h, [hl]                                       ; $4887: $66
	ld b, [hl]                                       ; $4888: $46
	rst FarCall                                          ; $4889: $f7
	rst SubAFromHL                                          ; $488a: $d7
	db $fd                                           ; $488b: $fd
	rst SubAFromDE                                          ; $488c: $df
	ldh [hDisp0_BGP], a                                     ; $488d: $e0 $85

jr_01e_488f:
	ret nc                                           ; $488f: $d0

	jr nc, jr_01e_487a                               ; $4890: $30 $e8

	ld hl, sp+$14                                    ; $4892: $f8 $14
	inc e                                            ; $4894: $1c
	ld e, h                                          ; $4895: $5c
	ld d, h                                          ; $4896: $54
	inc e                                            ; $4897: $1c
	inc d                                            ; $4898: $14
	ld [$f0f8], sp                                   ; $4899: $08 $f8 $f0
	pop af                                           ; $489c: $f1
	add hl, bc                                       ; $489d: $09
	ei                                               ; $489e: $fb
	and $fe                                          ; $489f: $e6 $fe
	inc e                                            ; $48a1: $1c
	inc d                                            ; $48a2: $14
	sbc $d6                                          ; $48a3: $de $d6
	ld e, $14                                        ; $48a5: $1e $14
	call c, $f8d6                                    ; $48a7: $dc $d6 $f8
	rst SubAFromDE                                          ; $48aa: $df
	ld [$1896], sp                                   ; $48ab: $08 $96 $18
	jr nc, jr_01e_48c0                               ; $48ae: $30 $10

	ld h, b                                          ; $48b0: $60
	jr nz, jr_01e_4873                               ; $48b1: $20 $c0

	ld b, b                                          ; $48b3: $40
	add b                                            ; $48b4: $80
	add b                                            ; $48b5: $80
	push af                                          ; $48b6: $f5
	adc e                                            ; $48b7: $8b
	ld c, d                                          ; $48b8: $4a
	ld a, d                                          ; $48b9: $7a
	cpl                                              ; $48ba: $2f
	scf                                              ; $48bb: $37

jr_01e_48bc:
	ld h, a                                          ; $48bc: $67
	ld a, b                                          ; $48bd: $78
	rla                                              ; $48be: $17
	rra                                              ; $48bf: $1f

jr_01e_48c0:
	dec hl                                           ; $48c0: $2b
	inc a                                            ; $48c1: $3c
	ccf                                              ; $48c2: $3f
	ccf                                              ; $48c3: $3f
	inc de                                           ; $48c4: $13

jr_01e_48c5:
	inc e                                            ; $48c5: $1c
	rra                                              ; $48c6: $1f
	rra                                              ; $48c7: $1f
	add hl, bc                                       ; $48c8: $09
	ld c, $0f                                        ; $48c9: $0e $0f
	rrca                                             ; $48cb: $0f
	ld [hl], a                                       ; $48cc: $77
	db $fc                                           ; $48cd: $fc
	sbc e                                            ; $48ce: $9b
	ld [$070f], sp                                   ; $48cf: $08 $0f $07
	rlca                                             ; $48d2: $07
	db $fd                                           ; $48d3: $fd
	adc [hl]                                         ; $48d4: $8e
	and h                                            ; $48d5: $a4
	db $fc                                           ; $48d6: $fc
	xor $de                                          ; $48d7: $ee $de
	adc $3a                                          ; $48d9: $ce $3a
	ret c                                            ; $48db: $d8

	db $fc                                           ; $48dc: $fc
	xor b                                            ; $48dd: $a8
	ld a, b                                          ; $48de: $78
	ld hl, sp-$08                                    ; $48df: $f8 $f8
	sub b                                            ; $48e1: $90
	ld [hl], b                                       ; $48e2: $70
	ldh a, [$f0]                                     ; $48e3: $f0 $f0
	jr nz, jr_01e_48c5                               ; $48e5: $20 $de

	ldh [$6f], a                                     ; $48e7: $e0 $6f
	db $fc                                           ; $48e9: $fc
	rst SubAFromDE                                          ; $48ea: $df
	ret nz                                           ; $48eb: $c0

	ldh a, [c]                                       ; $48ec: $f2
	sbc e                                            ; $48ed: $9b
	ld a, a                                          ; $48ee: $7f
	inc d                                            ; $48ef: $14
	ld b, c                                          ; $48f0: $41
	ld a, a                                          ; $48f1: $7f
	ld hl, sp+$7f                                    ; $48f2: $f8 $7f
	ld e, h                                          ; $48f4: $5c
	sub a                                            ; $48f5: $97
	jr nc, jr_01e_4931                               ; $48f6: $30 $39

	rst JumpTable                                          ; $48f8: $c7
	ret z                                            ; $48f9: $c8

	ld b, c                                          ; $48fa: $41
	ld b, b                                          ; $48fb: $40
	add c                                            ; $48fc: $81
	add l                                            ; $48fd: $85
	db $fd                                           ; $48fe: $fd
	rst SubAFromDE                                          ; $48ff: $df
	ld h, b                                          ; $4900: $60
	jp hl                                            ; $4901: $e9


	ret nc                                           ; $4902: $d0

	nop                                              ; $4903: $00
	ld hl, sp-$22                                    ; $4904: $f8 $de
	ld [$0090], sp                                   ; $4906: $08 $90 $00
	inc b                                            ; $4909: $04
	nop                                              ; $490a: $00
	inc b                                            ; $490b: $04
	inc b                                            ; $490c: $04
	ld b, $04                                        ; $490d: $06 $04
	ld b, $00                                        ; $490f: $06 $00
	ld [bc], a                                       ; $4911: $02
	ld [bc], a                                       ; $4912: $02
	inc bc                                           ; $4913: $03
	ld [bc], a                                       ; $4914: $02
	inc bc                                           ; $4915: $03
	nop                                              ; $4916: $00
	call c, $f501                                    ; $4917: $dc $01 $f5
	rst SubAFromDE                                          ; $491a: $df
	ccf                                              ; $491b: $3f
	adc l                                            ; $491c: $8d
	ld de, $0f1e                                     ; $491d: $11 $1e $0f
	rrca                                             ; $4920: $0f
	db $10                                           ; $4921: $10
	rra                                              ; $4922: $1f
	inc d                                            ; $4923: $14
	inc e                                            ; $4924: $1c
	rla                                              ; $4925: $17
	rra                                              ; $4926: $1f
	dec l                                            ; $4927: $2d
	dec a                                            ; $4928: $3d
	ld a, [hl+]                                      ; $4929: $2a
	ld a, [hl-]                                      ; $492a: $3a
	dec l                                            ; $492b: $2d
	cp l                                             ; $492c: $bd
	ld e, a                                          ; $492d: $5f
	rst $38                                          ; $492e: $ff
	push af                                          ; $492f: $f5
	rst SubAFromDE                                          ; $4930: $df

jr_01e_4931:
	rst $38                                          ; $4931: $ff
	sbc e                                            ; $4932: $9b
	ld hl, sp+$07                                    ; $4933: $f8 $07
	rst $38                                          ; $4935: $ff
	rst $38                                          ; $4936: $ff
	ld a, e                                          ; $4937: $7b
	ld sp, hl                                        ; $4938: $f9
	sub [hl]                                         ; $4939: $96
	rst $38                                          ; $493a: $ff
	sub e                                            ; $493b: $93
	sub e                                            ; $493c: $93
	ld a, h                                          ; $493d: $7c
	ld a, h                                          ; $493e: $7c
	rst $38                                          ; $493f: $ff
	rst $38                                          ; $4940: $ff
	add h                                            ; $4941: $84
	add h                                            ; $4942: $84

jr_01e_4943:
	ld a, e                                          ; $4943: $7b
	xor h                                            ; $4944: $ac
	or $df                                           ; $4945: $f6 $df
	ldh a, [$98]                                     ; $4947: $f0 $98
	jr jr_01e_4943                                   ; $4949: $18 $f8

	db $fc                                           ; $494b: $fc
	db $fc                                           ; $494c: $fc

jr_01e_494d:
	inc d                                            ; $494d: $14
	db $fc                                           ; $494e: $fc
	call nc, $fe7b                                   ; $494f: $d4 $7b $fe
	adc [hl]                                         ; $4952: $8e
	and h                                            ; $4953: $a4
	db $fc                                           ; $4954: $fc
	xor b                                            ; $4955: $a8
	ld hl, sp+$68                                    ; $4956: $f8 $68
	ld a, b                                          ; $4958: $78
	ret nc                                           ; $4959: $d0

	ldh a, [rP1]                                     ; $495a: $f0 $00
	ld [bc], a                                       ; $495c: $02
	inc bc                                           ; $495d: $03
	inc bc                                           ; $495e: $03
	inc b                                            ; $495f: $04
	rlca                                             ; $4960: $07
	dec b                                            ; $4961: $05
	rlca                                             ; $4962: $07
	ld b, $7b                                        ; $4963: $06 $7b
	db $fc                                           ; $4965: $fc
	sbc b                                            ; $4966: $98
	dec bc                                           ; $4967: $0b
	ld c, $1f                                        ; $4968: $0e $1f
	rla                                              ; $496a: $17
	inc h                                            ; $496b: $24
	dec sp                                           ; $496c: $3b
	jr nz, jr_01e_494d                               ; $496d: $20 $de

	ccf                                              ; $496f: $3f
	rst FarCall                                          ; $4970: $f7
	sbc d                                            ; $4971: $9a
	ret nz                                           ; $4972: $c0

	rst $38                                          ; $4973: $ff
	ld a, a                                          ; $4974: $7f
	rst $38                                          ; $4975: $ff
	add b                                            ; $4976: $80
	ld a, e                                          ; $4977: $7b
	db $fc                                           ; $4978: $fc
	sbc l                                            ; $4979: $9d
	cp a                                             ; $497a: $bf
	push de                                          ; $497b: $d5
	sbc $ff                                          ; $497c: $de $ff
	sbc d                                            ; $497e: $9a
	xor d                                            ; $497f: $aa
	rst $38                                          ; $4980: $ff
	rst $38                                          ; $4981: $ff
	db $fc                                           ; $4982: $fc
	inc bc                                           ; $4983: $03
	ld [hl], a                                       ; $4984: $77
	and b                                            ; $4985: $a0
	ld d, a                                          ; $4986: $57
	adc h                                            ; $4987: $8c
	ld [hl], a                                       ; $4988: $77
	adc [hl]                                         ; $4989: $8e

jr_01e_498a:
	sub b                                            ; $498a: $90
	db $fc                                           ; $498b: $fc
	rst $38                                          ; $498c: $ff
	db $fd                                           ; $498d: $fd
	ld d, a                                          ; $498e: $57
	ld sp, hl                                        ; $498f: $f9
	rst $38                                          ; $4990: $ff
	ld a, [$f2af]                                    ; $4991: $fa $af $f2
	rst $38                                          ; $4994: $ff
	inc b                                            ; $4995: $04
	rst $38                                          ; $4996: $ff
	or l                                             ; $4997: $b5
	ld c, a                                          ; $4998: $4f
	cp $5b                                           ; $4999: $fe $5b
	ldh [$8b], a                                     ; $499b: $e0 $8b
	ld e, b                                          ; $499d: $58
	ld hl, sp-$14                                    ; $499e: $f8 $ec
	db $fc                                           ; $49a0: $fc
	ld d, h                                          ; $49a1: $54
	db $f4                                           ; $49a2: $f4

jr_01e_49a3:
	sub h                                            ; $49a3: $94
	db $fc                                           ; $49a4: $fc
	jr c, jr_01e_49a3                                ; $49a5: $38 $fc

	ld d, b                                          ; $49a7: $50
	cp b                                             ; $49a8: $b8
	ldh [$30], a                                     ; $49a9: $e0 $30
	ret nz                                           ; $49ab: $c0

	ld h, b                                          ; $49ac: $60
	add b                                            ; $49ad: $80
	ret nz                                           ; $49ae: $c0

	nop                                              ; $49af: $00
	add b                                            ; $49b0: $80
	ldh [$db], a                                     ; $49b1: $e0 $db
	rst SubAFromDE                                          ; $49b3: $df
	ld b, $ff                                        ; $49b4: $06 $ff
	rst SubAFromDE                                          ; $49b6: $df
	db $10                                           ; $49b7: $10
	db $ed                                           ; $49b8: $ed
	sub h                                            ; $49b9: $94
	jr jr_01e_49bc                                   ; $49ba: $18 $00

jr_01e_49bc:
	inc bc                                           ; $49bc: $03
	nop                                              ; $49bd: $00
	inc d                                            ; $49be: $14
	nop                                              ; $49bf: $00
	jr z, jr_01e_49c2                                ; $49c0: $28 $00

jr_01e_49c2:
	db $10                                           ; $49c2: $10
	inc bc                                           ; $49c3: $03
	ld bc, $dc7b                                     ; $49c4: $01 $7b $dc
	db $ed                                           ; $49c7: $ed

jr_01e_49c8:
	rst SubAFromDE                                          ; $49c8: $df
	ld h, b                                          ; $49c9: $60
	rst SubAFromDE                                          ; $49ca: $df
	jr @+$01                                         ; $49cb: $18 $ff

	sbc e                                            ; $49cd: $9b
	call c, $b81c                                    ; $49ce: $dc $1c $b8
	jr c, jr_01e_49c8                                ; $49d1: $38 $f5

	nop                                              ; $49d3: $00
	di                                               ; $49d4: $f3
	db $dd                                           ; $49d5: $dd
	ld bc, $0691                                     ; $49d6: $01 $91 $06
	rlca                                             ; $49d9: $07
	dec bc                                           ; $49da: $0b
	rrca                                             ; $49db: $0f
	ld d, $1f                                        ; $49dc: $16 $1f
	cpl                                              ; $49de: $2f
	ccf                                              ; $49df: $3f
	ccf                                              ; $49e0: $3f
	ld a, $2d                                        ; $49e1: $3e $2d
	inc a                                            ; $49e3: $3c
	dec a                                            ; $49e4: $3d
	inc a                                            ; $49e5: $3c
	ld sp, hl                                        ; $49e6: $f9
	rst SubAFromDE                                          ; $49e7: $df
	rra                                              ; $49e8: $1f
	rst SubAFromDE                                          ; $49e9: $df
	ld h, b                                          ; $49ea: $60
	sbc [hl]                                         ; $49eb: $9e
	ret nz                                           ; $49ec: $c0

	sbc $ff                                          ; $49ed: $de $ff
	adc a                                            ; $49ef: $8f
	ld c, a                                          ; $49f0: $4f
	ldh a, [$a0]                                     ; $49f1: $f0 $a0
	rst $38                                          ; $49f3: $ff
	ld a, a                                          ; $49f4: $7f
	rst $38                                          ; $49f5: $ff
	sub b                                            ; $49f6: $90
	sub b                                            ; $49f7: $90
	rlca                                             ; $49f8: $07
	rlca                                             ; $49f9: $07
	jr z, jr_01e_4a04                                ; $49fa: $28 $08

	rla                                              ; $49fc: $17
	rla                                              ; $49fd: $17
	ld hl, $f923                                     ; $49fe: $21 $23 $f9
	rst SubAFromDE                                          ; $4a01: $df
	ldh [$df], a                                     ; $4a02: $e0 $df

jr_01e_4a04:
	jr jr_01e_498a                                   ; $4a04: $18 $84

	inc c                                            ; $4a06: $0c
	db $fc                                           ; $4a07: $fc
	cp $fe                                           ; $4a08: $fe $fe
	srl a                                            ; $4a0a: $cb $3f
	rla                                              ; $4a0c: $17
	db $fd                                           ; $4a0d: $fd
	db $fc                                           ; $4a0e: $fc
	ld hl, sp+$26                                    ; $4a0f: $f8 $26
	inc h                                            ; $4a11: $24
	add d                                            ; $4a12: $82

jr_01e_4a13:
	add e                                            ; $4a13: $83
	ld b, d                                          ; $4a14: $42
	ld b, b                                          ; $4a15: $40
	and d                                            ; $4a16: $a2
	and b                                            ; $4a17: $a0
	ld [de], a                                       ; $4a18: $12
	db $10                                           ; $4a19: $10
	rla                                              ; $4a1a: $17
	rra                                              ; $4a1b: $1f
	dec bc                                           ; $4a1c: $0b
	rrca                                             ; $4a1d: $0f
	dec b                                            ; $4a1e: $05
	rlca                                             ; $4a1f: $07
	ld [bc], a                                       ; $4a20: $02
	sbc $03                                          ; $4a21: $de $03
	ld a, a                                          ; $4a23: $7f
	db $fc                                           ; $4a24: $fc
	rst SubAFromDE                                          ; $4a25: $df
	ld bc, $9e6f                                     ; $4a26: $01 $6f $9e
	ld [hl], a                                       ; $4a29: $77
	ld hl, sp-$07                                    ; $4a2a: $f8 $f9
	add a                                            ; $4a2c: $87
	sub c                                            ; $4a2d: $91
	dec d                                            ; $4a2e: $15
	sub l                                            ; $4a2f: $95
	rla                                              ; $4a30: $17
	sub [hl]                                         ; $4a31: $96
	ld d, $8a                                        ; $4a32: $16 $8a
	ld a, [bc]                                       ; $4a34: $0a
	add h                                            ; $4a35: $84
	inc b                                            ; $4a36: $04
	add e                                            ; $4a37: $83
	inc bc                                           ; $4a38: $03
	adc b                                            ; $4a39: $88
	ld [$7fff], sp                                   ; $4a3a: $08 $ff $7f
	and c                                            ; $4a3d: $a1
	rst $38                                          ; $4a3e: $ff
	ld d, c                                          ; $4a3f: $51
	rst SubAFromHL                                          ; $4a40: $d7
	and c                                            ; $4a41: $a1
	cp $ff                                           ; $4a42: $fe $ff
	rst $38                                          ; $4a44: $ff
	ld sp, hl                                        ; $4a45: $f9
	adc c                                            ; $4a46: $89
	add hl, bc                                       ; $4a47: $09
	xor b                                            ; $4a48: $a8
	xor c                                            ; $4a49: $a9
	add sp, $69                                      ; $4a4a: $e8 $69
	ld l, b                                          ; $4a4c: $68
	ld d, c                                          ; $4a4d: $51
	ld d, b                                          ; $4a4e: $50
	add hl, hl                                       ; $4a4f: $29
	jr nz, jr_01e_4a13                               ; $4a50: $20 $c1

	ret nz                                           ; $4a52: $c0

	ld de, $ff10                                     ; $4a53: $11 $10 $ff
	cp $c5                                           ; $4a56: $fe $c5
	cp a                                             ; $4a58: $bf
	jp z, $c5bf                                      ; $4a59: $ca $bf $c5

	and a                                            ; $4a5c: $a7
	ld e, a                                          ; $4a5d: $5f
	ldh [$fd], a                                     ; $4a5e: $e0 $fd
	rst SubAFromDE                                          ; $4a60: $df
	ret nz                                           ; $4a61: $c0

	adc l                                            ; $4a62: $8d
	and b                                            ; $4a63: $a0
	ldh [$d0], a                                     ; $4a64: $e0 $d0
	ldh a, [$f8]                                     ; $4a66: $f0 $f8
	ld hl, sp-$28                                    ; $4a68: $f8 $d8
	add sp, $68                                      ; $4a6a: $e8 $68
	ld a, b                                          ; $4a6c: $78
	ret c                                            ; $4a6d: $d8

	ld hl, sp-$58                                    ; $4a6e: $f8 $a8
	ld hl, sp-$10                                    ; $4a70: $f8 $f0
	ldh a, [$e0]                                     ; $4a72: $f0 $e0
	ldh [$ef], a                                     ; $4a74: $e0 $ef
	rst SubAFromDE                                          ; $4a76: $df
	rra                                              ; $4a77: $1f
	di                                               ; $4a78: $f3
	sbc [hl]                                         ; $4a79: $9e
	ld d, b                                          ; $4a7a: $50
	ldh a, [c]                                       ; $4a7b: $f2
	ld d, a                                          ; $4a7c: $57
	call z, Call_01e_566f                            ; $4a7d: $cc $6f $56
	sbc [hl]                                         ; $4a80: $9e
	ld h, c                                          ; $4a81: $61
	ld e, e                                          ; $4a82: $5b

jr_01e_4a83:
	ld e, b                                          ; $4a83: $58
	di                                               ; $4a84: $f3
	sub l                                            ; $4a85: $95
	scf                                              ; $4a86: $37
	ld sp, $386c                                     ; $4a87: $31 $6c $38

Call_01e_4a8a:
	ld b, b                                          ; $4a8a: $40
	dec hl                                           ; $4a8b: $2b
	ld h, b                                          ; $4a8c: $60
	inc [hl]                                         ; $4a8d: $34
	ld h, b                                          ; $4a8e: $60
	ld l, $ed                                        ; $4a8f: $2e $ed
	rst SubAFromDE                                          ; $4a91: $df
	ld bc, $ec95                                     ; $4a92: $01 $95 $ec
	ld l, h                                          ; $4a95: $6c
	ld e, $2c                                        ; $4a96: $1e $2c
	ld c, $d4                                        ; $4a98: $0e $d4
	ld c, $24                                        ; $4a9a: $0e $24
	ld b, $74                                        ; $4a9c: $06 $74
	db $ed                                           ; $4a9e: $ed
	rst SubAFromDE                                          ; $4a9f: $df
	ret nz                                           ; $4aa0: $c0

	db $db                                           ; $4aa1: $db
	jr nz, jr_01e_4a83                               ; $4aa2: $20 $df

	ld b, b                                          ; $4aa4: $40
	rst SubAFromDE                                          ; $4aa5: $df
	add b                                            ; $4aa6: $80
	sub c                                            ; $4aa7: $91
	ld h, b                                          ; $4aa8: $60
	ld a, [hl+]                                      ; $4aa9: $2a
	ld h, b                                          ; $4aaa: $60
	jr z, jr_01e_4b0d                                ; $4aab: $28 $60

	add hl, hl                                       ; $4aad: $29
	ld d, b                                          ; $4aae: $50
	dec h                                            ; $4aaf: $25
	ld a, b                                          ; $4ab0: $78
	inc sp                                           ; $4ab1: $33
	ld a, h                                          ; $4ab2: $7c
	jr c, jr_01e_4b2c                                ; $4ab3: $38 $77

	ld sp, $91ef                                     ; $4ab5: $31 $ef $91
	ld b, $54                                        ; $4ab8: $06 $54
	ld b, $14                                        ; $4aba: $06 $14
	ld b, $94                                        ; $4abc: $06 $94
	ld b, $ac                                        ; $4abe: $06 $ac
	ld [bc], a                                       ; $4ac0: $02
	call nc, $0c36                                   ; $4ac1: $d4 $36 $0c
	xor $6c                                          ; $4ac4: $ee $6c
	rst AddAOntoHL                                          ; $4ac6: $ef
	ld a, [de]                                       ; $4ac7: $1a
	ld bc, $dff9                                     ; $4ac8: $01 $f9 $df
	inc b                                            ; $4acb: $04
	sub h                                            ; $4acc: $94
	add hl, bc                                       ; $4acd: $09
	ld c, $10                                        ; $4ace: $0e $10
	db $10                                           ; $4ad0: $10
	jr nz, jr_01e_4b12                               ; $4ad1: $20 $3f

	rrca                                             ; $4ad3: $0f
	db $10                                           ; $4ad4: $10
	rrca                                             ; $4ad5: $0f
	rra                                              ; $4ad6: $1f
	nop                                              ; $4ad7: $00
	ld a, e                                          ; $4ad8: $7b
	cp $77                                           ; $4ad9: $fe $77
	ld hl, sp-$21                                    ; $4adb: $f8 $df
	ccf                                              ; $4add: $3f
	rst SubAFromDE                                          ; $4ade: $df
	ld b, b                                          ; $4adf: $40
	ei                                               ; $4ae0: $fb
	rst SubAFromDE                                          ; $4ae1: $df
	ld hl, $1edf                                     ; $4ae2: $21 $df $1e
	sbc l                                            ; $4ae5: $9d
	pop hl                                           ; $4ae6: $e1
	ccf                                              ; $4ae7: $3f
	cp $df                                           ; $4ae8: $fe $df
	rst $38                                          ; $4aea: $ff
	ld [hl], e                                       ; $4aeb: $73
	db $fd                                           ; $4aec: $fd
	ld l, a                                          ; $4aed: $6f
	ld hl, sp-$65                                    ; $4aee: $f8 $9b
	ret nz                                           ; $4af0: $c0

	rst $38                                          ; $4af1: $ff
	ld h, b                                          ; $4af2: $60
	ld a, h                                          ; $4af3: $7c
	ld sp, hl                                        ; $4af4: $f9
	rst SubAFromDE                                          ; $4af5: $df
	ld [bc], a                                       ; $4af6: $02
	sub h                                            ; $4af7: $94
	rst SubAFromBC                                          ; $4af8: $e7
	rra                                              ; $4af9: $1f
	ld e, $1e                                        ; $4afa: $1e $1e
	inc c                                            ; $4afc: $0c
	cp $e2                                           ; $4afd: $fe $e2
	ld [hl], $e2                                     ; $4aff: $36 $e2
	or $02                                           ; $4b01: $f6 $02
	ld a, e                                          ; $4b03: $7b
	cp $73                                           ; $4b04: $fe $73
	ld hl, sp-$6e                                    ; $4b06: $f8 $92
	ld [bc], a                                       ; $4b08: $02
	call nz, $04f4                                   ; $4b09: $c4 $f4 $04
	rlca                                             ; $4b0c: $07

jr_01e_4b0d:
	ld b, $06                                        ; $4b0d: $06 $06
	ld [bc], a                                       ; $4b0f: $02
	ld b, $07                                        ; $4b10: $06 $07

jr_01e_4b12:
	rlca                                             ; $4b12: $07
	ld [$7708], sp                                   ; $4b13: $08 $08 $77
	sbc h                                            ; $4b16: $9c
	rst SubAFromDE                                          ; $4b17: $df
	ld [bc], a                                       ; $4b18: $02
	rst SubAFromDE                                          ; $4b19: $df
	ld [$0adf], sp                                   ; $4b1a: $08 $df $0a
	rst SubAFromDE                                          ; $4b1d: $df
	inc b                                            ; $4b1e: $04
	rst $38                                          ; $4b1f: $ff
	rst SubAFromDE                                          ; $4b20: $df
	rrca                                             ; $4b21: $0f
	ei                                               ; $4b22: $fb
	sub a                                            ; $4b23: $97
	rst FarCall                                          ; $4b24: $f7
	inc d                                            ; $4b25: $14
	ld [hl], $36                                     ; $4b26: $36 $36
	sub h                                            ; $4b28: $94
	ld [hl], $70                                     ; $4b29: $36 $70
	ld [hl], b                                       ; $4b2b: $70

jr_01e_4b2c:
	ld [hl], a                                       ; $4b2c: $77
	ldh [rIE], a                                     ; $4b2d: $e0 $ff
	rst SubAFromDE                                          ; $4b2f: $df
	ld b, c                                          ; $4b30: $41
	rst $38                                          ; $4b31: $ff
	rst SubAFromDE                                          ; $4b32: $df
	and b                                            ; $4b33: $a0
	rst SubAFromDE                                          ; $4b34: $df
	add b                                            ; $4b35: $80
	ld l, a                                          ; $4b36: $6f
	jp nc, $8dfd                                     ; $4b37: $d2 $fd $8d

	ld a, h                                          ; $4b3a: $7c
	ld b, [hl]                                       ; $4b3b: $46
	db $fc                                           ; $4b3c: $fc
	cp $01                                           ; $4b3d: $fe $01
	rst $38                                          ; $4b3f: $ff
	ld [bc], a                                       ; $4b40: $02
	ld [bc], a                                       ; $4b41: $02
	add b                                            ; $4b42: $80
	add b                                            ; $4b43: $80
	ret nz                                           ; $4b44: $c0

	ret nz                                           ; $4b45: $c0

	ld h, b                                          ; $4b46: $60
	ld h, b                                          ; $4b47: $60
	ld h, $26                                        ; $4b48: $26 $26
	jr z, jr_01e_4b74                                ; $4b4a: $28 $28

	ld l, a                                          ; $4b4c: $6f
	and $df                                          ; $4b4d: $e6 $df
	ld hl, $e06f                                     ; $4b4f: $21 $6f $e0
	rst SubAFromDE                                          ; $4b52: $df
	ret nz                                           ; $4b53: $c0

	rst SubAFromDE                                          ; $4b54: $df
	ldh [$df], a                                     ; $4b55: $e0 $df
	ret c                                            ; $4b57: $d8

	rst SubAFromDE                                          ; $4b58: $df
	add b                                            ; $4b59: $80
	db $fd                                           ; $4b5a: $fd
	rst SubAFromDE                                          ; $4b5b: $df
	db $10                                           ; $4b5c: $10
	rst SubAFromDE                                          ; $4b5d: $df
	ld h, b                                          ; $4b5e: $60
	rst SubAFromDE                                          ; $4b5f: $df
	ld [$10df], sp                                   ; $4b60: $08 $df $10
	rst SubAFromDE                                          ; $4b63: $df
	ld b, b                                          ; $4b64: $40
	ld l, a                                          ; $4b65: $6f
	ldh a, [$f5]                                     ; $4b66: $f0 $f5
	rst SubAFromDE                                          ; $4b68: $df
	inc bc                                           ; $4b69: $03
	ld l, a                                          ; $4b6a: $6f
	adc h                                            ; $4b6b: $8c
	push de                                          ; $4b6c: $d5
	jr nz, @+$01                                     ; $4b6d: $20 $ff

	rst SubAFromDE                                          ; $4b6f: $df
	ccf                                              ; $4b70: $3f
	ei                                               ; $4b71: $fb
	ld a, e                                          ; $4b72: $7b
	ld [hl+], a                                      ; $4b73: $22

jr_01e_4b74:
	sbc [hl]                                         ; $4b74: $9e
	pop hl                                           ; $4b75: $e1
	ld [hl], e                                       ; $4b76: $73
	inc hl                                           ; $4b77: $23
	ldh a, [c]                                       ; $4b78: $f2
	rst SubAFromDE                                          ; $4b79: $df
	add e                                            ; $4b7a: $83
	ld sp, hl                                        ; $4b7b: $f9
	rst SubAFromDE                                          ; $4b7c: $df
	db $fc                                           ; $4b7d: $fc
	rst $38                                          ; $4b7e: $ff
	rst SubAFromDE                                          ; $4b7f: $df
	pop hl                                           ; $4b80: $e1
	rst SubAFromDE                                          ; $4b81: $df
	ld bc, $09d5                                     ; $4b82: $01 $d5 $09
	rst SubAFromDE                                          ; $4b85: $df
	db $fd                                           ; $4b86: $fd
	rst SubAFromDE                                          ; $4b87: $df
	dec bc                                           ; $4b88: $0b
	rst SubAFromDE                                          ; $4b89: $df
	ld [$09dd], sp                                   ; $4b8a: $08 $dd $09
	rst SubAFromDE                                          ; $4b8d: $df
	ld [$07df], sp                                   ; $4b8e: $08 $df $07
	ld [hl], a                                       ; $4b91: $77
	sbc h                                            ; $4b92: $9c
	sub a                                            ; $4b93: $97
	inc b                                            ; $4b94: $04
	dec b                                            ; $4b95: $05
	rlca                                             ; $4b96: $07
	rlca                                             ; $4b97: $07
	dec b                                            ; $4b98: $05
	dec b                                            ; $4b99: $05
	dec bc                                           ; $4b9a: $0b
	dec bc                                           ; $4b9b: $0b
	ld h, a                                          ; $4b9c: $67
	ld [hl+], a                                      ; $4b9d: $22
	rst $38                                          ; $4b9e: $ff
	rst SubAFromDE                                          ; $4b9f: $df
	ld [$c9df], sp                                   ; $4ba0: $08 $df $c9

jr_01e_4ba3:
	rst SubAFromDE                                          ; $4ba3: $df
	ld c, c                                          ; $4ba4: $49
	rst SubAFromDE                                          ; $4ba5: $df
	adc a                                            ; $4ba6: $8f
	rst SubAFromDE                                          ; $4ba7: $df
	pop af                                           ; $4ba8: $f1
	rst SubAFromDE                                          ; $4ba9: $df
	ld bc, $c1df                                     ; $4baa: $01 $df $c1
	db $dd                                           ; $4bad: $dd
	and b                                            ; $4bae: $a0
	db $db                                           ; $4baf: $db
	db $10                                           ; $4bb0: $10
	rst SubAFromDE                                          ; $4bb1: $df

jr_01e_4bb2:
	inc c                                            ; $4bb2: $0c
	ld [hl], a                                       ; $4bb3: $77
	ld l, [hl]                                       ; $4bb4: $6e
	rst $38                                          ; $4bb5: $ff
	rst SubAFromDE                                          ; $4bb6: $df
	add c                                            ; $4bb7: $81
	rst SubAFromDE                                          ; $4bb8: $df
	ld bc, $dfff                                     ; $4bb9: $01 $ff $df
	db $fd                                           ; $4bbc: $fd
	db $fd                                           ; $4bbd: $fd
	rst SubAFromDE                                          ; $4bbe: $df
	add b                                            ; $4bbf: $80
	sub c                                            ; $4bc0: $91
	ld b, c                                          ; $4bc1: $41
	pop bc                                           ; $4bc2: $c1
	ld b, a                                          ; $4bc3: $47
	rst JumpTable                                          ; $4bc4: $c7
	ld l, h                                          ; $4bc5: $6c
	ld l, a                                          ; $4bc6: $6f
	ld [hl+], a                                      ; $4bc7: $22
	inc hl                                           ; $4bc8: $23
	ld hl, $4621                                     ; $4bc9: $21 $21 $46
	ld b, [hl]                                       ; $4bcc: $46
	ld hl, sp-$08                                    ; $4bcd: $f8 $f8
	db $fd                                           ; $4bcf: $fd
	rst SubAFromDE                                          ; $4bd0: $df
	jr nz, jr_01e_4bb2                               ; $4bd1: $20 $df

	db $10                                           ; $4bd3: $10
	ld [hl], a                                       ; $4bd4: $77
	cp d                                             ; $4bd5: $ba
	db $db                                           ; $4bd6: $db
	ld [$98df], sp                                   ; $4bd7: $08 $df $98
	rst SubAFromDE                                          ; $4bda: $df
	ldh a, [$9d]                                     ; $4bdb: $f0 $9d
	ld h, b                                          ; $4bdd: $60
	ldh [$57], a                                     ; $4bde: $e0 $57
	ld [hl+], a                                      ; $4be0: $22
	and h                                            ; $4be1: $a4
	nop                                              ; $4be2: $00
	ei                                               ; $4be3: $fb
	rst SubAFromDE                                          ; $4be4: $df
	ld bc, $02dd                                     ; $4be5: $01 $dd $02
	rst SubAFromDE                                          ; $4be8: $df
	rlca                                             ; $4be9: $07
	sub e                                            ; $4bea: $93
	ld de, $031e                                     ; $4beb: $11 $1e $03
	inc a                                            ; $4bee: $3c
	ld a, a                                          ; $4bef: $7f
	ld a, a                                          ; $4bf0: $7f
	add b                                            ; $4bf1: $80
	add b                                            ; $4bf2: $80
	sub c                                            ; $4bf3: $91
	sub c                                            ; $4bf4: $91
	cp e                                             ; $4bf5: $bb
	cp e                                             ; $4bf6: $bb
	jp hl                                            ; $4bf7: $e9


	rst SubAFromDE                                          ; $4bf8: $df
	rra                                              ; $4bf9: $1f
	sbc d                                            ; $4bfa: $9a
	ccf                                              ; $4bfb: $3f
	nop                                              ; $4bfc: $00
	jr nz, jr_01e_4c3e                               ; $4bfd: $20 $3f

	jr nz, @-$20                                     ; $4bff: $20 $de

	ccf                                              ; $4c01: $3f
	db $eb                                           ; $4c02: $eb
	sbc $ff                                          ; $4c03: $de $ff
	sbc d                                            ; $4c05: $9a
	nop                                              ; $4c06: $00
	ld a, b                                          ; $4c07: $78
	add a                                            ; $4c08: $87
	ld a, b                                          ; $4c09: $78
	add a                                            ; $4c0a: $87
	ld a, e                                          ; $4c0b: $7b
	ld sp, hl                                        ; $4c0c: $f9
	ld [hl], e                                       ; $4c0d: $73
	jp nc, $10df                                     ; $4c0e: $d2 $df $10

	rst SubAFromDE                                          ; $4c11: $df
	rra                                              ; $4c12: $1f
	rst SubAFromDE                                          ; $4c13: $df
	jr nz, jr_01e_4ba3                               ; $4c14: $20 $8d

	ld b, c                                          ; $4c16: $41
	ld b, b                                          ; $4c17: $40
	ld b, d                                          ; $4c18: $42
	ld b, c                                          ; $4c19: $41
	ld b, l                                          ; $4c1a: $45
	ld b, d                                          ; $4c1b: $42
	ld c, d                                          ; $4c1c: $4a
	ld b, l                                          ; $4c1d: $45
	ld b, l                                          ; $4c1e: $45
	ld c, d                                          ; $4c1f: $4a
	jp c, $d4c4                                      ; $4c20: $da $c4 $d4

	ld c, b                                          ; $4c23: $48
	ld c, b                                          ; $4c24: $48
	ret nc                                           ; $4c25: $d0

	ld h, b                                          ; $4c26: $60
	ret nz                                           ; $4c27: $c0

	ld l, a                                          ; $4c28: $6f
	ldh [$df], a                                     ; $4c29: $e0 $df
	db $fc                                           ; $4c2b: $fc
	rst SubAFromDE                                          ; $4c2c: $df
	inc b                                            ; $4c2d: $04
	rst SubAFromDE                                          ; $4c2e: $df
	db $fc                                           ; $4c2f: $fc
	sbc b                                            ; $4c30: $98
	inc d                                            ; $4c31: $14
	sub h                                            ; $4c32: $94
	inc d                                            ; $4c33: $14
	sub h                                            ; $4c34: $94
	and h                                            ; $4c35: $a4
	inc h                                            ; $4c36: $24
	and h                                            ; $4c37: $a4
	call nc, $df24                                   ; $4c38: $d4 $24 $df
	ld hl, sp-$0f                                    ; $4c3b: $f8 $f1
	rst SubAFromDE                                          ; $4c3d: $df

jr_01e_4c3e:
	ld [$20df], sp                                   ; $4c3e: $08 $df $20
	rst SubAFromDE                                          ; $4c41: $df
	ld b, b                                          ; $4c42: $40
	rst SubAFromDE                                          ; $4c43: $df
	add b                                            ; $4c44: $80
	sub a                                            ; $4c45: $97
	ld d, l                                          ; $4c46: $55
	ld a, [hl+]                                      ; $4c47: $2a
	ld a, [hl+]                                      ; $4c48: $2a
	ld b, h                                          ; $4c49: $44
	ld b, h                                          ; $4c4a: $44
	nop                                              ; $4c4b: $00
	jp nc, $cbd2                                     ; $4c4c: $d2 $d2 $cb

	sub d                                            ; $4c4f: $92
	rst AddAOntoHL                                          ; $4c50: $ef
	sbc e                                            ; $4c51: $9b
	db $db                                           ; $4c52: $db

jr_01e_4c53:
	nop                                              ; $4c53: $00
	db $db                                           ; $4c54: $db
	db $db                                           ; $4c55: $db
	and $9e                                          ; $4c56: $e6 $9e
	rlca                                             ; $4c58: $07
	ld a, e                                          ; $4c59: $7b
	nop                                              ; $4c5a: $00
	sub [hl]                                         ; $4c5b: $96
	ld c, $00                                        ; $4c5c: $0e $00
	rra                                              ; $4c5e: $1f
	nop                                              ; $4c5f: $00
	ld e, $00                                        ; $4c60: $1e $00
	inc e                                            ; $4c62: $1c
	nop                                              ; $4c63: $00
	jr jr_01e_4ce1                                   ; $4c64: $18 $7b

	cp $98                                           ; $4c66: $fe $98
	stop                                             ; $4c68: $10 $00
	ld de, $1300                                     ; $4c6a: $11 $00 $13
	nop                                              ; $4c6d: $00
	rrca                                             ; $4c6e: $0f
	ld sp, hl                                        ; $4c6f: $f9
	sub d                                            ; $4c70: $92
	ld a, h                                          ; $4c71: $7c
	add b                                            ; $4c72: $80
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	or h                                             ; $4c75: $b4
	inc b                                            ; $4c76: $04
	inc [hl]                                         ; $4c77: $34
	inc d                                            ; $4c78: $14
	inc l                                            ; $4c79: $2c
	inc c                                            ; $4c7a: $0c
	inc l                                            ; $4c7b: $2c
	inc c                                            ; $4c7c: $0c
	ld l, h                                          ; $4c7d: $6c
	ld [hl], a                                       ; $4c7e: $77
	cp $9e                                           ; $4c7f: $fe $9e
	adc h                                            ; $4c81: $8c
	ld l, a                                          ; $4c82: $6f
	cp $fb                                           ; $4c83: $fe $fb
	or b                                             ; $4c85: $b0
	nop                                              ; $4c86: $00
	jp hl                                            ; $4c87: $e9


	add b                                            ; $4c88: $80
	ld a, [hl-]                                      ; $4c89: $3a
	jr c, jr_01e_4d08                                ; $4c8a: $38 $7c

	ld b, h                                          ; $4c8c: $44

jr_01e_4c8d:
	cp $a4                                           ; $4c8d: $fe $a4
	rst $38                                          ; $4c8f: $ff
	add e                                            ; $4c90: $83
	rra                                              ; $4c91: $1f
	inc de                                           ; $4c92: $13
	dec c                                            ; $4c93: $0d
	dec c                                            ; $4c94: $0d
	dec b                                            ; $4c95: $05
	dec b                                            ; $4c96: $05
	ld bc, $0301                                     ; $4c97: $01 $01 $03
	ld [bc], a                                       ; $4c9a: $02
	inc bc                                           ; $4c9b: $03
	inc bc                                           ; $4c9c: $03
	rrca                                             ; $4c9d: $0f
	dec c                                            ; $4c9e: $0d
	rra                                              ; $4c9f: $1f
	dec d                                            ; $4ca0: $15
	rra                                              ; $4ca1: $1f
	db $10                                           ; $4ca2: $10
	rrca                                             ; $4ca3: $0f
	ld [$0507], sp                                   ; $4ca4: $08 $07 $05
	ld [bc], a                                       ; $4ca7: $02
	sbc [hl]                                         ; $4ca8: $9e
	ld [bc], a                                       ; $4ca9: $02
	ld sp, hl                                        ; $4caa: $f9
	sub e                                            ; $4cab: $93
	ldh a, [rAUD1SWEEP]                              ; $4cac: $f0 $10
	jr nc, jr_01e_4cc0                               ; $4cae: $30 $10

	ld [hl], b                                       ; $4cb0: $70
	db $10                                           ; $4cb1: $10
	ldh [rAUD4LEN], a                                ; $4cb2: $e0 $20
	ret nz                                           ; $4cb4: $c0

	ld b, b                                          ; $4cb5: $40
	add b                                            ; $4cb6: $80
	add b                                            ; $4cb7: $80
	ld [hl], a                                       ; $4cb8: $77
	jp c, $01df                                      ; $4cb9: $da $df $01

	rst SubAFromDE                                          ; $4cbc: $df
	add b                                            ; $4cbd: $80

jr_01e_4cbe:
	db $ed                                           ; $4cbe: $ed
	rst SubAFromDE                                          ; $4cbf: $df

jr_01e_4cc0:
	jr nz, jr_01e_4c53                               ; $4cc0: $20 $91

	ldh a, [$d0]                                     ; $4cc2: $f0 $d0
	ld hl, sp+$58                                    ; $4cc4: $f8 $58
	db $fc                                           ; $4cc6: $fc
	ld b, h                                          ; $4cc7: $44
	ld hl, sp+$08                                    ; $4cc8: $f8 $08
	ldh a, [hDisp1_SCY]                                     ; $4cca: $f0 $90
	ldh [$a0], a                                     ; $4ccc: $e0 $a0
	ld b, b                                          ; $4cce: $40
	ld b, b                                          ; $4ccf: $40
	pop hl                                           ; $4cd0: $e1
	sub b                                            ; $4cd1: $90
	jr jr_01e_4cd4                                   ; $4cd2: $18 $00

jr_01e_4cd4:
	jr c, jr_01e_4ce2                                ; $4cd4: $38 $0c

	jr jr_01e_4cdc                                   ; $4cd6: $18 $04

	nop                                              ; $4cd8: $00
	inc c                                            ; $4cd9: $0c
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00

jr_01e_4cdc:
	ld [bc], a                                       ; $4cdc: $02
	jr nc, jr_01e_4ce1                               ; $4cdd: $30 $02

	jr nz, @+$08                                     ; $4cdf: $20 $06

jr_01e_4ce1:
	ld a, e                                          ; $4ce1: $7b

jr_01e_4ce2:
	rst FarCall                                          ; $4ce2: $f7
	sbc h                                            ; $4ce3: $9c
	inc e                                            ; $4ce4: $1c
	nop                                              ; $4ce5: $00
	ld [$dae0], sp                                   ; $4ce6: $08 $e0 $da
	rst SubAFromDE                                          ; $4ce9: $df
	ld bc, $537f                                     ; $4cea: $01 $7f $53
	rst SubAFromDE                                          ; $4ced: $df
	jr c, jr_01e_4c8d                                ; $4cee: $38 $9d

	jr nz, jr_01e_4d22                               ; $4cf0: $20 $30

	pop af                                           ; $4cf2: $f1
	rst SubAFromDE                                          ; $4cf3: $df
	ld h, h                                          ; $4cf4: $64
	sub c                                            ; $4cf5: $91
	sbc d                                            ; $4cf6: $9a
	cp $4a                                           ; $4cf7: $fe $4a
	ld a, [hl]                                       ; $4cf9: $7e
	ld [$02fe], a                                    ; $4cfa: $ea $fe $02
	cp $01                                           ; $4cfd: $fe $01
	rst $38                                          ; $4cff: $ff
	ld bc, $008f                                     ; $4d00: $01 $8f $00
	rlca                                             ; $4d03: $07
	ld [hl], e                                       ; $4d04: $73
	cp $ea                                           ; $4d05: $fe $ea
	rst SubAFromDE                                          ; $4d07: $df

jr_01e_4d08:
	inc e                                            ; $4d08: $1c
	sub h                                            ; $4d09: $94
	db $e4                                           ; $4d0a: $e4
	db $fc                                           ; $4d0b: $fc
	adc b                                            ; $4d0c: $88
	ld hl, sp+$10                                    ; $4d0d: $f8 $10
	ldh a, [rP1]                                     ; $4d0f: $f0 $00
	rrca                                             ; $4d11: $0f
	nop                                              ; $4d12: $00
	rlca                                             ; $4d13: $07
	inc b                                            ; $4d14: $04
	ld a, e                                          ; $4d15: $7b
	cp $91                                           ; $4d16: $fe $91
	ld [$080f], sp                                   ; $4d18: $08 $0f $08
	rrca                                             ; $4d1b: $0f
	ret nc                                           ; $4d1c: $d0

	sbc $68                                          ; $4d1d: $de $68
	db $fc                                           ; $4d1f: $fc

jr_01e_4d20:
	jr z, jr_01e_4d20                                ; $4d20: $28 $fe

jr_01e_4d22:
	inc e                                            ; $4d22: $1c
	ld a, a                                          ; $4d23: $7f
	ld h, e                                          ; $4d24: $63
	ld h, e                                          ; $4d25: $63
	ld e, e                                          ; $4d26: $5b
	jr z, jr_01e_4cbe                                ; $4d27: $28 $95

	ldh [rWY], a                                     ; $4d29: $e0 $4a
	jp z, $9f95                                      ; $4d2b: $ca $95 $9f

	ld h, d                                          ; $4d2e: $62
	cp $44                                           ; $4d2f: $fe $44
	call c, $3308                                    ; $4d31: $dc $08 $33
	ld h, c                                          ; $4d34: $61
	inc bc                                           ; $4d35: $03
	ld bc, $dff7                                     ; $4d36: $01 $f7 $df
	ld bc, $02df                                     ; $4d39: $01 $df $02
	rst SubAFromDE                                          ; $4d3c: $df
	inc b                                            ; $4d3d: $04
	rst SubAFromDE                                          ; $4d3e: $df
	ld [$dbff], sp                                   ; $4d3f: $08 $ff $db
	db $10                                           ; $4d42: $10
	rst SubAFromDE                                          ; $4d43: $df
	ld [$06df], sp                                   ; $4d44: $08 $df $06
	sbc l                                            ; $4d47: $9d
	dec b                                            ; $4d48: $05
	rlca                                             ; $4d49: $07
	ei                                               ; $4d4a: $fb
	rst SubAFromDE                                          ; $4d4b: $df
	rlca                                             ; $4d4c: $07
	sub h                                            ; $4d4d: $94
	ld a, e                                          ; $4d4e: $7b
	ld a, l                                          ; $4d4f: $7d
	ld c, $0b                                        ; $4d50: $0e $0b
	dec b                                            ; $4d52: $05
	rlca                                             ; $4d53: $07
	ld b, $07                                        ; $4d54: $06 $07
	ld bc, $0203                                     ; $4d56: $01 $03 $02
	sbc $03                                          ; $4d59: $de $03
	sbc [hl]                                         ; $4d5b: $9e
	ld bc, $d27b                                     ; $4d5c: $01 $7b $d2
	rst SubAFromDE                                          ; $4d5f: $df
	ld bc, $dfff                                     ; $4d60: $01 $ff $df
	add b                                            ; $4d63: $80
	db $fd                                           ; $4d64: $fd
	rst SubAFromDE                                          ; $4d65: $df
	ld a, h                                          ; $4d66: $7c
	add l                                            ; $4d67: $85
	ld [hl+], a                                      ; $4d68: $22
	ld a, $9f                                        ; $4d69: $3e $9f
	sub c                                            ; $4d6b: $91
	rst AddAOntoHL                                          ; $4d6c: $ef
	jp hl                                            ; $4d6d: $e9


	ld d, a                                          ; $4d6e: $57
	db $f4                                           ; $4d6f: $f4
	xor a                                            ; $4d70: $af
	db $fc                                           ; $4d71: $fc
	rra                                              ; $4d72: $1f
	db $ec                                           ; $4d73: $ec
	sub a                                            ; $4d74: $97
	db $ec                                           ; $4d75: $ec
	rra                                              ; $4d76: $1f
	add sp, -$31                                     ; $4d77: $e8 $cf
	cp c                                             ; $4d79: $b9
	db $fd                                           ; $4d7a: $fd
	ld d, d                                          ; $4d7b: $52
	rst $38                                          ; $4d7c: $ff
	and e                                            ; $4d7d: $a3
	rst $38                                          ; $4d7e: $ff
	call nz, $8ff9                                   ; $4d7f: $c4 $f9 $8f

jr_01e_4d82:
	push af                                          ; $4d82: $f5
	push de                                          ; $4d83: $d5
	add b                                            ; $4d84: $80
	adc a                                            ; $4d85: $8f
	ret nz                                           ; $4d86: $c0

	ld b, b                                          ; $4d87: $40
	ldh [$e0], a                                     ; $4d88: $e0 $e0
	or b                                             ; $4d8a: $b0
	ld [hl], b                                       ; $4d8b: $70
	ret nc                                           ; $4d8c: $d0

	ldh a, [rP1]                                     ; $4d8d: $f0 $00
	ld bc, $0406                                     ; $4d8f: $01 $06 $04
	dec b                                            ; $4d92: $05
	ld b, $02                                        ; $4d93: $06 $02
	inc bc                                           ; $4d95: $03
	ld [hl], a                                       ; $4d96: $77
	add b                                            ; $4d97: $80
	db $ed                                           ; $4d98: $ed
	add e                                            ; $4d99: $83
	ld h, b                                          ; $4d9a: $60
	ldh [rAUD2LOW], a                                ; $4d9b: $e0 $18
	ld hl, sp+$00                                    ; $4d9d: $f8 $00
	nop                                              ; $4d9f: $00
	adc h                                            ; $4da0: $8c
	inc b                                            ; $4da1: $04
	dec a                                            ; $4da2: $3d
	ld h, e                                          ; $4da3: $63
	ld a, [hl]                                       ; $4da4: $7e
	and a                                            ; $4da5: $a7
	db $fd                                           ; $4da6: $fd
	rst JumpTable                                          ; $4da7: $c7
	ld a, d                                          ; $4da8: $7a
	ld c, a                                          ; $4da9: $4f
	ld a, l                                          ; $4daa: $7d
	ld c, e                                          ; $4dab: $4b
	ld a, e                                          ; $4dac: $7b
	ld c, l                                          ; $4dad: $4d
	ld a, [hl]                                       ; $4dae: $7e
	ld c, [hl]                                       ; $4daf: $4e
	ld a, h                                          ; $4db0: $7c
	ld b, h                                          ; $4db1: $44
	ld a, $22                                        ; $4db2: $3e $22
	db $10                                           ; $4db4: $10
	rra                                              ; $4db5: $1f
	db $fd                                           ; $4db6: $fd
	adc h                                            ; $4db7: $8c
	ld [hl], h                                       ; $4db8: $74
	ld e, e                                          ; $4db9: $5b
	dec hl                                           ; $4dba: $2b
	dec [hl]                                         ; $4dbb: $35
	ld d, h                                          ; $4dbc: $54
	ld a, e                                          ; $4dbd: $7b
	and c                                            ; $4dbe: $a1
	rst $38                                          ; $4dbf: $ff
	ld d, d                                          ; $4dc0: $52
	rst $38                                          ; $4dc1: $ff
	and l                                            ; $4dc2: $a5
	db $fd                                           ; $4dc3: $fd
	nop                                              ; $4dc4: $00
	nop                                              ; $4dc5: $00
	ld a, a                                          ; $4dc6: $7f
	nop                                              ; $4dc7: $00
	ld c, e                                          ; $4dc8: $4b
	nop                                              ; $4dc9: $00
	ld c, c                                          ; $4dca: $49
	ld a, e                                          ; $4dcb: $7b
	ld a, [$926f]                                    ; $4dcc: $fa $6f $92
	db $fd                                           ; $4dcf: $fd
	sub c                                            ; $4dd0: $91
	xor b                                            ; $4dd1: $a8
	ld hl, sp+$5c                                    ; $4dd2: $f8 $5c
	db $f4                                           ; $4dd4: $f4
	or h                                             ; $4dd5: $b4
	db $ec                                           ; $4dd6: $ec
	ld l, b                                          ; $4dd7: $68
	ret c                                            ; $4dd8: $d8

	ret nc                                           ; $4dd9: $d0

	or b                                             ; $4dda: $b0
	and b                                            ; $4ddb: $a0
	ld h, b                                          ; $4ddc: $60
	ld b, b                                          ; $4ddd: $40
	ld b, b                                          ; $4dde: $40
	ldh [c], a                                       ; $4ddf: $e2
	ld a, a                                          ; $4de0: $7f
	ld a, [hl]                                       ; $4de1: $7e
	rst SubAFromDE                                          ; $4de2: $df
	inc bc                                           ; $4de3: $03
	ld a, a                                          ; $4de4: $7f
	dec e                                            ; $4de5: $1d
	sub [hl]                                         ; $4de6: $96
	dec c                                            ; $4de7: $0d
	ld a, [bc]                                       ; $4de8: $0a
	rrca                                             ; $4de9: $0f
	dec c                                            ; $4dea: $0d
	rrca                                             ; $4deb: $0f
	ld c, $0f                                        ; $4dec: $0e $0f
	rlca                                             ; $4dee: $07
	rlca                                             ; $4def: $07
	ld c, a                                          ; $4df0: $4f
	ld l, [hl]                                       ; $4df1: $6e
	add h                                            ; $4df2: $84
	ld d, b                                          ; $4df3: $50
	ldh a, [$28]                                     ; $4df4: $f0 $28
	ld hl, sp-$28                                    ; $4df6: $f8 $d8
	jr c, jr_01e_4d82                                ; $4df8: $38 $88

	ld a, h                                          ; $4dfa: $7c
	ld hl, sp+$0c                                    ; $4dfb: $f8 $0c
	call nz, $ecbc                                   ; $4dfd: $c4 $bc $ec
	ld d, d                                          ; $4e00: $52
	cp b                                             ; $4e01: $b8
	and $fe                                          ; $4e02: $e6 $fe
	ret nc                                           ; $4e04: $d0

	add sp, -$09                                     ; $4e05: $e8 $f7
	ld a, l                                          ; $4e07: $7d
	halt                                             ; $4e08: $76
	inc e                                            ; $4e09: $1c
	nop                                              ; $4e0a: $00
	ld [hl+], a                                      ; $4e0b: $22
	nop                                              ; $4e0c: $00
	ld b, c                                          ; $4e0d: $41
	cp $7f                                           ; $4e0e: $fe $7f
	ld [hl], e                                       ; $4e10: $73
	sbc l                                            ; $4e11: $9d
	jr nz, jr_01e_4e14                               ; $4e12: $20 $00

jr_01e_4e14:
	scf                                              ; $4e14: $37
	and c                                            ; $4e15: $a1
	sub a                                            ; $4e16: $97
	scf                                              ; $4e17: $37
	add hl, sp                                       ; $4e18: $39
	ld c, $03                                        ; $4e19: $0e $03
	db $fd                                           ; $4e1b: $fd
	rlca                                             ; $4e1c: $07
	ldh [c], a                                       ; $4e1d: $e2
	ld b, $6e                                        ; $4e1e: $06 $6e
	sbc [hl]                                         ; $4e20: $9e
	ld a, e                                          ; $4e21: $7b
	sbc [hl]                                         ; $4e22: $9e
	ld [hl], e                                       ; $4e23: $73
	cp $57                                           ; $4e24: $fe $57
	and [hl]                                         ; $4e26: $a6
	ld l, a                                          ; $4e27: $6f
	ld e, b                                          ; $4e28: $58
	ld [hl], e                                       ; $4e29: $73
	ldh [$98], a                                     ; $4e2a: $e0 $98
	rst $38                                          ; $4e2c: $ff
	nop                                              ; $4e2d: $00
	ld bc, $6948                                     ; $4e2e: $01 $48 $69
	ld h, b                                          ; $4e31: $60
	ld l, l                                          ; $4e32: $6d
	ld a, e                                          ; $4e33: $7b
	ldh [$7f], a                                     ; $4e34: $e0 $7f
	or $fa                                           ; $4e36: $f6 $fa
	call nc, $f700                                   ; $4e38: $d4 $00 $f7
	sbc [hl]                                         ; $4e3b: $9e
	ld bc, $fe7b                                     ; $4e3c: $01 $7b $fe
	adc l                                            ; $4e3f: $8d
	ld [bc], a                                       ; $4e40: $02
	ld bc, $0103                                     ; $4e41: $01 $03 $01
	ld b, $03                                        ; $4e44: $06 $03
	add hl, bc                                       ; $4e46: $09
	rlca                                             ; $4e47: $07
	inc c                                            ; $4e48: $0c
	rlca                                             ; $4e49: $07
	ld a, [de]                                       ; $4e4a: $1a
	rrca                                             ; $4e4b: $0f
	dec sp                                           ; $4e4c: $3b
	rra                                              ; $4e4d: $1f
	inc l                                            ; $4e4e: $2c
	rra                                              ; $4e4f: $1f
	ld [hl], d                                       ; $4e50: $72
	ccf                                              ; $4e51: $3f
	ei                                               ; $4e52: $fb
	sbc d                                            ; $4e53: $9a
	ld h, b                                          ; $4e54: $60
	nop                                              ; $4e55: $00
	db $fc                                           ; $4e56: $fc
	nop                                              ; $4e57: $00
	rst $38                                          ; $4e58: $ff
	ld [hl], a                                       ; $4e59: $77
	cp $8e                                           ; $4e5a: $fe $8e
	ret nz                                           ; $4e5c: $c0

	cp [hl]                                          ; $4e5d: $be
	ldh a, [$e9]                                     ; $4e5e: $f0 $e9
	ld hl, sp-$4d                                    ; $4e60: $f8 $b3
	rst FarCall                                          ; $4e62: $f7
	add c                                            ; $4e63: $81

jr_01e_4e64:
	db $eb                                           ; $4e64: $eb
	ld h, b                                          ; $4e65: $60
	pop hl                                           ; $4e66: $e1
	ret nz                                           ; $4e67: $c0

	ret nc                                           ; $4e68: $d0

	db $10                                           ; $4e69: $10
	and b                                            ; $4e6a: $a0
	sub b                                            ; $4e6b: $90
	and b                                            ; $4e6c: $a0
	push af                                          ; $4e6d: $f5
	add b                                            ; $4e6e: $80
	add b                                            ; $4e6f: $80
	nop                                              ; $4e70: $00
	ld d, b                                          ; $4e71: $50
	nop                                              ; $4e72: $00
	and b                                            ; $4e73: $a0
	nop                                              ; $4e74: $00
	ld b, d                                          ; $4e75: $42
	nop                                              ; $4e76: $00
	add h                                            ; $4e77: $84
	nop                                              ; $4e78: $00
	call nz, $f8c0                                   ; $4e79: $c4 $c0 $f8
	ldh a, [$78]                                     ; $4e7c: $f0 $78
	ldh a, [$f0]                                     ; $4e7e: $f0 $f0
	ldh [$60], a                                     ; $4e80: $e0 $60
	ret nz                                           ; $4e82: $c0

	add hl, bc                                       ; $4e83: $09
	rlca                                             ; $4e84: $07
	ld c, $07                                        ; $4e85: $0e $07

jr_01e_4e87:
	dec d                                            ; $4e87: $15
	rrca                                             ; $4e88: $0f

jr_01e_4e89:
	inc e                                            ; $4e89: $1c
	rrca                                             ; $4e8a: $0f
	ld [hl-], a                                      ; $4e8b: $32
	rra                                              ; $4e8c: $1f
	ld c, h                                          ; $4e8d: $4c
	sub l                                            ; $4e8e: $95
	ccf                                              ; $4e8f: $3f
	ld b, e                                          ; $4e90: $43
	ccf                                              ; $4e91: $3f
	jr nc, jr_01e_4ea2                               ; $4e92: $30 $0e

	inc c                                            ; $4e94: $0c
	ld [bc], a                                       ; $4e95: $02
	ld [bc], a                                       ; $4e96: $02
	ld bc, $f601                                     ; $4e97: $01 $01 $f6
	sbc b                                            ; $4e9a: $98
	sub e                                            ; $4e9b: $93
	db $f4                                           ; $4e9c: $f4
	ld h, [hl]                                       ; $4e9d: $66
	add sp, -$7c                                     ; $4e9e: $e8 $84
	add sp, -$34                                     ; $4ea0: $e8 $cc

jr_01e_4ea2:
	ld a, e                                          ; $4ea2: $7b
	or h                                             ; $4ea3: $b4
	ld a, a                                          ; $4ea4: $7f
	pop bc                                           ; $4ea5: $c1
	sbc e                                            ; $4ea6: $9b
	ld bc, $0340                                     ; $4ea7: $01 $40 $03
	ldh [rPCM34], a                                  ; $4eaa: $e0 $77
	sbc e                                            ; $4eac: $9b
	sbc b                                            ; $4ead: $98
	add b                                            ; $4eae: $80
	ld a, a                                          ; $4eaf: $7f
	ld h, c                                          ; $4eb0: $61
	ld e, $19                                        ; $4eb1: $1e $19
	ld b, $06                                        ; $4eb3: $06 $06
	db $fc                                           ; $4eb5: $fc
	adc h                                            ; $4eb6: $8c
	ld a, [de]                                       ; $4eb7: $1a
	inc c                                            ; $4eb8: $0c
	inc d                                            ; $4eb9: $14
	ld [$180c], sp                                   ; $4eba: $08 $0c $18
	ld [$1010], sp                                   ; $4ebd: $08 $10 $10
	jr nz, jr_01e_4f12                               ; $4ec0: $20 $50

	jr nz, jr_01e_4e64                               ; $4ec2: $20 $a0

	ld b, b                                          ; $4ec4: $40
	jr nz, jr_01e_4e87                               ; $4ec5: $20 $c0

	ld b, b                                          ; $4ec7: $40
	add b                                            ; $4ec8: $80
	add b                                            ; $4ec9: $80
	ld a, e                                          ; $4eca: $7b
	sbc b                                            ; $4ecb: $98

jr_01e_4ecc:
	rst SubAFromBC                                          ; $4ecc: $e7
	rst SubAFromDE                                          ; $4ecd: $df
	ld bc, $06df                                     ; $4ece: $01 $df $06
	rst SubAFromDE                                          ; $4ed1: $df
	ld [$1095], sp                                   ; $4ed2: $08 $95 $10
	inc d                                            ; $4ed5: $14
	inc d                                            ; $4ed6: $14
	ld a, [de]                                       ; $4ed7: $1a
	ld h, $29                                        ; $4ed8: $26 $29
	ld b, [hl]                                       ; $4eda: $46
	ld c, c                                          ; $4edb: $49
	ld b, [hl]                                       ; $4edc: $46
	ld c, c                                          ; $4edd: $49
	push af                                          ; $4ede: $f5
	rst SubAFromDE                                          ; $4edf: $df
	ld b, b                                          ; $4ee0: $40
	rst SubAFromDE                                          ; $4ee1: $df
	and b                                            ; $4ee2: $a0
	rst SubAFromDE                                          ; $4ee3: $df
	ld e, h                                          ; $4ee4: $5c

jr_01e_4ee5:
	rst SubAFromDE                                          ; $4ee5: $df
	cp h                                             ; $4ee6: $bc
	rst SubAFromDE                                          ; $4ee7: $df
	ld a, b                                          ; $4ee8: $78
	rst SubAFromDE                                          ; $4ee9: $df
	jr c, jr_01e_4ee5                                ; $4eea: $38 $f9

	rst SubAFromDE                                          ; $4eec: $df
	ld [bc], a                                       ; $4eed: $02
	db $dd                                           ; $4eee: $dd
	inc b                                            ; $4eef: $04
	ld a, e                                          ; $4ef0: $7b
	adc $df                                          ; $4ef1: $ce $df
	inc de                                           ; $4ef3: $13
	sbc b                                            ; $4ef4: $98
	inc e                                            ; $4ef5: $1c
	daa                                              ; $4ef6: $27
	jr z, @+$42                                      ; $4ef7: $28 $40

	ld b, a                                          ; $4ef9: $47
	ld b, b                                          ; $4efa: $40
	ld b, b                                          ; $4efb: $40
	di                                               ; $4efc: $f3
	sub e                                            ; $4efd: $93
	db $10                                           ; $4efe: $10
	jr z, jr_01e_4f31                                ; $4eff: $28 $30

	ld c, b                                          ; $4f01: $48
	jr nc, jr_01e_4ecc                               ; $4f02: $30 $c8

	ld d, b                                          ; $4f04: $50
	xor b                                            ; $4f05: $a8
	ret nz                                           ; $4f06: $c0

	jr nc, jr_01e_4e89                               ; $4f07: $30 $80

	ld h, b                                          ; $4f09: $60
	scf                                              ; $4f0a: $37
	add a                                            ; $4f0b: $87
	inc hl                                           ; $4f0c: $23
	ld bc, $defd                                     ; $4f0d: $01 $fd $de
	rra                                              ; $4f10: $1f
	sub a                                            ; $4f11: $97

jr_01e_4f12:
	db $10                                           ; $4f12: $10
	jr jr_01e_4f2c                                   ; $4f13: $18 $17

	jr jr_01e_4f2b                                   ; $4f15: $18 $14

	dec de                                           ; $4f17: $1b
	inc d                                            ; $4f18: $14
	jr jr_01e_4f96                                   ; $4f19: $18 $7b

	cp $77                                           ; $4f1b: $fe $77
	ld a, [$f667]                                    ; $4f1d: $fa $67 $f6
	sbc l                                            ; $4f20: $9d
	add hl, de                                       ; $4f21: $19
	inc d                                            ; $4f22: $14
	db $fd                                           ; $4f23: $fd
	sbc $ff                                          ; $4f24: $de $ff
	ld a, e                                          ; $4f26: $7b
	ei                                               ; $4f27: $fb
	db $fd                                           ; $4f28: $fd
	sbc [hl]                                         ; $4f29: $9e
	add b                                            ; $4f2a: $80

jr_01e_4f2b:
	ld a, e                                          ; $4f2b: $7b

jr_01e_4f2c:
	cp $77                                           ; $4f2c: $fe $77
	ld a, [$f66f]                                    ; $4f2e: $fa $6f $f6

jr_01e_4f31:
	rst SubAFromDE                                          ; $4f31: $df
	ld h, a                                          ; $4f32: $67
	sbc l                                            ; $4f33: $9d
	ld h, [hl]                                       ; $4f34: $66
	ld [hl+], a                                      ; $4f35: $22
	db $fd                                           ; $4f36: $fd
	rst SubAFromDE                                          ; $4f37: $df
	ld hl, sp-$6c                                    ; $4f38: $f8 $94
	rst $38                                          ; $4f3a: $ff
	rrca                                             ; $4f3b: $0f
	rra                                              ; $4f3c: $1f
	rst AddAOntoHL                                          ; $4f3d: $ef
	rra                                              ; $4f3e: $1f
	cpl                                              ; $4f3f: $2f
	ld e, $2f                                        ; $4f40: $1e $2f
	dec e                                            ; $4f42: $1d
	cpl                                              ; $4f43: $2f
	ld a, [de]                                       ; $4f44: $1a
	ld a, e                                          ; $4f45: $7b
	db $fc                                           ; $4f46: $fc
	sbc e                                            ; $4f47: $9b
	dec de                                           ; $4f48: $1b
	cpl                                              ; $4f49: $2f
	rra                                              ; $4f4a: $1f
	add hl, hl                                       ; $4f4b: $29
	ld [hl], a                                       ; $4f4c: $77
	cp $9e                                           ; $4f4d: $fe $9e
	ld e, $7b                                        ; $4f4f: $1e $7b
	cp $fb                                           ; $4f51: $fe $fb
	rst SubAFromDE                                          ; $4f53: $df
	ld hl, sp-$64                                    ; $4f54: $f8 $9c
	ret z                                            ; $4f56: $c8

	ld hl, sp+$48                                    ; $4f57: $f8 $48
	ld [hl], e                                       ; $4f59: $73
	db $fc                                           ; $4f5a: $fc
	sbc e                                            ; $4f5b: $9b
	ret c                                            ; $4f5c: $d8

	add sp, -$18                                     ; $4f5d: $e8 $e8
	ret c                                            ; $4f5f: $d8

	ld l, a                                          ; $4f60: $6f
	db $fc                                           ; $4f61: $fc
	sbc l                                            ; $4f62: $9d
	ld a, b                                          ; $4f63: $78
	ret z                                            ; $4f64: $c8

	ld [hl], a                                       ; $4f65: $77
	cp $4f                                           ; $4f66: $fe $4f
	sub b                                            ; $4f68: $90
	ld h, a                                          ; $4f69: $67
	or $7f                                           ; $4f6a: $f6 $7f
	ld [hl], d                                       ; $4f6c: $72
	ld a, a                                          ; $4f6d: $7f
	ld l, [hl]                                       ; $4f6e: $6e
	rst SubAFromDE                                          ; $4f6f: $df
	rra                                              ; $4f70: $1f
	ld l, a                                          ; $4f71: $6f
	adc [hl]                                         ; $4f72: $8e
	ld e, a                                          ; $4f73: $5f
	sub b                                            ; $4f74: $90
	ld l, a                                          ; $4f75: $6f
	or $fc                                           ; $4f76: $f6 $fc
	ld a, e                                          ; $4f78: $7b
	ld l, [hl]                                       ; $4f79: $6e
	ld [hl], a                                       ; $4f7a: $77
	ld l, e                                          ; $4f7b: $6b
	rst $38                                          ; $4f7c: $ff
	ld [hl], a                                       ; $4f7d: $77
	sbc h                                            ; $4f7e: $9c
	ld [hl], a                                       ; $4f7f: $77
	sub [hl]                                         ; $4f80: $96
	ld a, a                                          ; $4f81: $7f
	db $fc                                           ; $4f82: $fc
	ld a, e                                          ; $4f83: $7b
	adc d                                            ; $4f84: $8a
	ld a, e                                          ; $4f85: $7b
	cp $6b                                           ; $4f86: $fe $6b
	ld a, h                                          ; $4f88: $7c
	sbc d                                            ; $4f89: $9a
	rst AddAOntoHL                                          ; $4f8a: $ef
	rst $38                                          ; $4f8b: $ff
	rrca                                             ; $4f8c: $0f
	ld hl, sp-$08                                    ; $4f8d: $f8 $f8
	db $fd                                           ; $4f8f: $fd
	sbc [hl]                                         ; $4f90: $9e
	ld l, b                                          ; $4f91: $68
	ld a, e                                          ; $4f92: $7b
	sub [hl]                                         ; $4f93: $96
	ld [hl], a                                       ; $4f94: $77
	db $fc                                           ; $4f95: $fc

jr_01e_4f96:
	ld a, a                                          ; $4f96: $7f
	adc [hl]                                         ; $4f97: $8e
	ld a, a                                          ; $4f98: $7f
	add d                                            ; $4f99: $82
	ld l, a                                          ; $4f9a: $6f
	add b                                            ; $4f9b: $80
	ld a, a                                          ; $4f9c: $7f
	ldh a, [c]                                       ; $4f9d: $f2
	ld [hl], a                                       ; $4f9e: $77
	or $6f                                           ; $4f9f: $f6 $6f
	ldh [c], a                                       ; $4fa1: $e2
	push af                                          ; $4fa2: $f5
	adc c                                            ; $4fa3: $89
	ccf                                              ; $4fa4: $3f
	nop                                              ; $4fa5: $00
	rrca                                             ; $4fa6: $0f
	nop                                              ; $4fa7: $00
	scf                                              ; $4fa8: $37
	jr nc, jr_01e_4fb2                               ; $4fa9: $30 $07

	scf                                              ; $4fab: $37
	ld [$170f], sp                                   ; $4fac: $08 $0f $17
	scf                                              ; $4faf: $37
	dec bc                                           ; $4fb0: $0b
	rrca                                             ; $4fb1: $0f

jr_01e_4fb2:
	ld [hl], $36                                     ; $4fb2: $36 $36
	inc b                                            ; $4fb4: $04
	inc [hl]                                         ; $4fb5: $34
	ld [$2808], sp                                   ; $4fb6: $08 $08 $28
	jr z, jr_01e_4fb2                                ; $4fb9: $28 $f7

	sbc [hl]                                         ; $4fbb: $9e
	db $fc                                           ; $4fbc: $fc
	ld l, a                                          ; $4fbd: $6f
	cp $80                                           ; $4fbe: $fe $80
	ld [hl], b                                       ; $4fc0: $70
	db $ec                                           ; $4fc1: $ec
	ld hl, sp-$24                                    ; $4fc2: $f8 $dc
	ld hl, sp-$58                                    ; $4fc4: $f8 $a8
	db $fc                                           ; $4fc6: $fc
	call nc, $3cfc                                   ; $4fc7: $d4 $fc $3c
	cp h                                             ; $4fca: $bc
	ld [$080c], sp                                   ; $4fcb: $08 $0c $08
	inc c                                            ; $4fce: $0c
	nop                                              ; $4fcf: $00
	jr nc, jr_01e_4fda                               ; $4fd0: $30 $08

	ld [$3616], sp                                   ; $4fd2: $08 $16 $36
	add hl, bc                                       ; $4fd5: $09
	rrca                                             ; $4fd6: $0f
	scf                                              ; $4fd7: $37
	inc sp                                           ; $4fd8: $33

jr_01e_4fd9:
	inc b                                            ; $4fd9: $04

jr_01e_4fda:
	jr nc, @+$0a                                     ; $4fda: $30 $08

	nop                                              ; $4fdc: $00
	db $10                                           ; $4fdd: $10
	jr nc, @+$01                                     ; $4fde: $30 $ff

	sbc [hl]                                         ; $4fe0: $9e
	jr nz, jr_01e_505e                               ; $4fe1: $20 $7b

	cp $f7                                           ; $4fe3: $fe $f7
	ld a, e                                          ; $4fe5: $7b
	call c, $1c93                                    ; $4fe6: $dc $93 $1c
	inc c                                            ; $4fe9: $0c
	inc e                                            ; $4fea: $1c
	jr jr_01e_5029                                   ; $4feb: $18 $3c

	inc l                                            ; $4fed: $2c
	jr z, jr_01e_4ff4                                ; $4fee: $28 $04

	inc c                                            ; $4ff0: $0c
	inc b                                            ; $4ff1: $04
	nop                                              ; $4ff2: $00
	inc c                                            ; $4ff3: $0c

jr_01e_4ff4:
	ld [hl], e                                       ; $4ff4: $73
	cp $7f                                           ; $4ff5: $fe $7f

jr_01e_4ff7:
	ld hl, sp-$20                                    ; $4ff7: $f8 $e0
	rst SubAFromDE                                          ; $4ff9: $df
	sub c                                            ; $4ffa: $91
	stop                                             ; $4ffb: $10 $00
	inc [hl]                                         ; $4ffd: $34
	nop                                              ; $4ffe: $00
	jr jr_01e_5001                                   ; $4fff: $18 $00

jr_01e_5001:
	add hl, de                                       ; $5001: $19
	nop                                              ; $5002: $00
	rlca                                             ; $5003: $07
	nop                                              ; $5004: $00
	inc bc                                           ; $5005: $03
	inc b                                            ; $5006: $04
	nop                                              ; $5007: $00
	ld bc, $94fc                                     ; $5008: $01 $fc $94
	inc bc                                           ; $500b: $03
	ld [bc], a                                       ; $500c: $02
	dec b                                            ; $500d: $05
	dec b                                            ; $500e: $05
	ld b, $07                                        ; $500f: $06 $07
	inc c                                            ; $5011: $0c
	dec bc                                           ; $5012: $0b
	inc d                                            ; $5013: $14
	ld b, $19                                        ; $5014: $06 $19
	rst FarCall                                          ; $5016: $f7
	adc c                                            ; $5017: $89
	ldh [rAUD1SWEEP], a                              ; $5018: $e0 $10
	ret nz                                           ; $501a: $c0

	jr nz, jr_01e_505d                               ; $501b: $20 $40

	and b                                            ; $501d: $a0
	nop                                              ; $501e: $00
	ret nz                                           ; $501f: $c0

	ld b, b                                          ; $5020: $40

jr_01e_5021:
	sub b                                            ; $5021: $90
	ldh [rAUD1SWEEP], a                              ; $5022: $e0 $10
	ret nc                                           ; $5024: $d0

	jr z, jr_01e_4ff7                                ; $5025: $28 $d0

	jr nc, jr_01e_4fd9                               ; $5027: $30 $b0

jr_01e_5029:
	ld [hl], b                                       ; $5029: $70
	ld [hl], b                                       ; $502a: $70
	sub b                                            ; $502b: $90
	ldh a, [$08]                                     ; $502c: $f0 $08
	rst FarCall                                          ; $502e: $f7
	ld b, $01                                        ; $502f: $06 $01
	ei                                               ; $5031: $fb
	rst SubAFromDE                                          ; $5032: $df
	ld bc, $02df                                     ; $5033: $01 $df $02
	rst SubAFromDE                                          ; $5036: $df
	dec b                                            ; $5037: $05
	rst SubAFromDE                                          ; $5038: $df
	rrca                                             ; $5039: $0f
	sbc b                                            ; $503a: $98
	rla                                              ; $503b: $17
	dec d                                            ; $503c: $15
	ccf                                              ; $503d: $3f
	ld a, [hl-]                                      ; $503e: $3a
	ccf                                              ; $503f: $3f
	ccf                                              ; $5040: $3f
	jr nz, jr_01e_5021                               ; $5041: $20 $de

	ccf                                              ; $5043: $3f
	ld h, a                                          ; $5044: $67
	db $fc                                           ; $5045: $fc
	ei                                               ; $5046: $fb
	rst SubAFromDE                                          ; $5047: $df
	rst $38                                          ; $5048: $ff
	rst SubAFromDE                                          ; $5049: $df
	xor d                                            ; $504a: $aa
	rst SubAFromDE                                          ; $504b: $df
	ld d, l                                          ; $504c: $55
	rst SubAFromDE                                          ; $504d: $df
	rst $38                                          ; $504e: $ff
	sbc c                                            ; $504f: $99
	db $fd                                           ; $5050: $fd
	ld d, l                                          ; $5051: $55
	ld a, [$ffaa]                                    ; $5052: $fa $aa $ff
	rst $38                                          ; $5055: $ff
	ld a, e                                          ; $5056: $7b
	pop af                                           ; $5057: $f1
	ld e, a                                          ; $5058: $5f
	db $fc                                           ; $5059: $fc
	ld d, e                                          ; $505a: $53
	ldh [$df], a                                     ; $505b: $e0 $df

jr_01e_505d:
	ld d, l                                          ; $505d: $55

jr_01e_505e:
	rst SubAFromDE                                          ; $505e: $df
	xor d                                            ; $505f: $aa
	scf                                              ; $5060: $37
	ldh [$df], a                                     ; $5061: $e0 $df
	db $fc                                           ; $5063: $fc
	rst SubAFromDE                                          ; $5064: $df
	xor h                                            ; $5065: $ac
	sbc b                                            ; $5066: $98
	ld d, h                                          ; $5067: $54
	ld e, h                                          ; $5068: $5c
	db $fc                                           ; $5069: $fc
	db $fc                                           ; $506a: $fc
	ld l, h                                          ; $506b: $6c
	ld a, h                                          ; $506c: $7c
	db $f4                                           ; $506d: $f4
	sbc $fc                                          ; $506e: $de $fc
	sbc [hl]                                         ; $5070: $9e
	ld d, h                                          ; $5071: $54
	sbc $fc                                          ; $5072: $de $fc
	ld a, a                                          ; $5074: $7f
	di                                               ; $5075: $f3
	sbc h                                            ; $5076: $9c
	db $ec                                           ; $5077: $ec
	db $fc                                           ; $5078: $fc
	ld a, h                                          ; $5079: $7c
	sbc $fc                                          ; $507a: $de $fc

Call_01e_507c:
	sbc [hl]                                         ; $507c: $9e
	ld hl, $3fde                                     ; $507d: $21 $de $3f
	scf                                              ; $5080: $37
	db $fc                                           ; $5081: $fc
	rst SubAFromDE                                          ; $5082: $df
	rra                                              ; $5083: $1f
	rst SubAFromDE                                          ; $5084: $df
	ld bc, $dffb                                     ; $5085: $01 $fb $df
	ld e, a                                          ; $5088: $5f
	rst SubAFromDE                                          ; $5089: $df
	ld l, d                                          ; $508a: $6a
	rst SubAFromDE                                          ; $508b: $df
	ld d, a                                          ; $508c: $57
	ei                                               ; $508d: $fb
	sbc h                                            ; $508e: $9c
	ld h, b                                          ; $508f: $60
	nop                                              ; $5090: $00
	ld [hl], b                                       ; $5091: $70
	ld a, e                                          ; $5092: $7b
	cp $99                                           ; $5093: $fe $99
	ld a, b                                          ; $5095: $78
	nop                                              ; $5096: $00
	ld e, e                                          ; $5097: $5b
	ld e, e                                          ; $5098: $5b
	ld d, d                                          ; $5099: $52
	ld d, d                                          ; $509a: $52
	ld h, a                                          ; $509b: $67
	and h                                            ; $509c: $a4
	db $dd                                           ; $509d: $dd
	add c                                            ; $509e: $81
	sbc e                                            ; $509f: $9b
	jp nz, $02c3                                     ; $50a0: $c2 $c3 $02

	inc bc                                           ; $50a3: $03
	ld h, a                                          ; $50a4: $67
	ret nc                                           ; $50a5: $d0

	db $fd                                           ; $50a6: $fd
	rst SubAFromDE                                          ; $50a7: $df
	ld l, l                                          ; $50a8: $6d
	rst SubAFromDE                                          ; $50a9: $df
	ld c, c                                          ; $50aa: $49
	ld l, a                                          ; $50ab: $6f
	ldh [hDisp1_OBP0], a                                     ; $50ac: $e0 $93
	sub h                                            ; $50ae: $94
	db $f4                                           ; $50af: $f4
	inc h                                            ; $50b0: $24
	db $e4                                           ; $50b1: $e4
	inc h                                            ; $50b2: $24
	db $e4                                           ; $50b3: $e4
	ld b, h                                          ; $50b4: $44
	call nz, $c444                                   ; $50b5: $c4 $44 $c4
	add h                                            ; $50b8: $84
	add h                                            ; $50b9: $84
	rst SubAFromHL                                          ; $50ba: $d7
	inc b                                            ; $50bb: $04
	rst SubAFromDE                                          ; $50bc: $df
	or h                                             ; $50bd: $b4
	rst SubAFromDE                                          ; $50be: $df
	inc h                                            ; $50bf: $24
	rst SubAFromDE                                          ; $50c0: $df
	db $fc                                           ; $50c1: $fc
	db $f4                                           ; $50c2: $f4
	sbc b                                            ; $50c3: $98
	dec d                                            ; $50c4: $15
	nop                                              ; $50c5: $00
	ld a, [hl+]                                      ; $50c6: $2a
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	add b                                            ; $50c9: $80
	add b                                            ; $50ca: $80
	jp hl                                            ; $50cb: $e9


	sbc e                                            ; $50cc: $9b
	dec d                                            ; $50cd: $15
	ld d, l                                          ; $50ce: $55
	ld a, [hl+]                                      ; $50cf: $2a
	xor d                                            ; $50d0: $aa
	cp $9c                                           ; $50d1: $fe $9c
	ld a, [hl+]                                      ; $50d3: $2a
	ld bc, $eb54                                     ; $50d4: $01 $54 $eb
	sbc h                                            ; $50d7: $9c
	ld b, b                                          ; $50d8: $40
	ld d, l                                          ; $50d9: $55
	add b                                            ; $50da: $80
	ld a, e                                          ; $50db: $7b
	ldh [$9c], a                                     ; $50dc: $e0 $9c
	xor b                                            ; $50de: $a8
	nop                                              ; $50df: $00
	ld d, b                                          ; $50e0: $50
	ldh a, [c]                                       ; $50e1: $f2
	add [hl]                                         ; $50e2: $86
	rst $38                                          ; $50e3: $ff
	push af                                          ; $50e4: $f5
	and b                                            ; $50e5: $a0
	and b                                            ; $50e6: $a0
	sub h                                            ; $50e7: $94
	sub l                                            ; $50e8: $95
	xor b                                            ; $50e9: $a8
	xor b                                            ; $50ea: $a8
	ld a, [$f4d5]                                    ; $50eb: $fa $d5 $f4
	xor e                                            ; $50ee: $ab
	ldh a, [$cf]                                     ; $50ef: $f0 $cf
	sub h                                            ; $50f1: $94
	adc e                                            ; $50f2: $8b
	add b                                            ; $50f3: $80
	adc a                                            ; $50f4: $8f
	add c                                            ; $50f5: $81
	adc [hl]                                         ; $50f6: $8e
	add b                                            ; $50f7: $80
	add a                                            ; $50f8: $87
	and h                                            ; $50f9: $a4
	add b                                            ; $50fa: $80
	xor l                                            ; $50fb: $ad
	ld l, e                                          ; $50fc: $6b
	sub [hl]                                         ; $50fd: $96
	add [hl]                                         ; $50fe: $86
	cp a                                             ; $50ff: $bf
	ld b, b                                          ; $5100: $40
	ld a, [hl]                                       ; $5101: $7e
	nop                                              ; $5102: $00
	ld a, [hl]                                       ; $5103: $7e
	ld c, $3c                                        ; $5104: $0e $3c
	db $10                                           ; $5106: $10
	cp h                                             ; $5107: $bc
	ld a, b                                          ; $5108: $78
	ld a, [hl]                                       ; $5109: $7e
	and b                                            ; $510a: $a0
	cp a                                             ; $510b: $bf
	ld l, b                                          ; $510c: $68
	ld a, a                                          ; $510d: $7f
	sub c                                            ; $510e: $91
	cp a                                             ; $510f: $bf
	ld d, [hl]                                       ; $5110: $56
	ld e, l                                          ; $5111: $5d
	xor e                                            ; $5112: $ab
	ld a, [bc]                                       ; $5113: $0a
	push af                                          ; $5114: $f5
	sub d                                            ; $5115: $92
	nop                                              ; $5116: $00
	or [hl]                                          ; $5117: $b6
	ld a, [$08df]                                    ; $5118: $fa $df $08
	sbc [hl]                                         ; $511b: $9e
	jr jr_01e_5199                                   ; $511c: $18 $7b

	cp $95                                           ; $511e: $fe $95
	jr c, jr_01e_512a                                ; $5120: $38 $08

	jr c, jr_01e_514c                                ; $5122: $38 $28

	ld a, b                                          ; $5124: $78
	jr z, @-$06                                      ; $5125: $28 $f8

	jr z, @-$06                                      ; $5127: $28 $f8

	ld c, b                                          ; $5129: $48

jr_01e_512a:
	ld a, e                                          ; $512a: $7b
	db $fc                                           ; $512b: $fc
	sbc b                                            ; $512c: $98
	ret c                                            ; $512d: $d8

	ld hl, sp+$28                                    ; $512e: $f8 $28
	ld c, b                                          ; $5130: $48
	ld c, b                                          ; $5131: $48
	ret c                                            ; $5132: $d8

	sbc b                                            ; $5133: $98
	ei                                               ; $5134: $fb
	push de                                          ; $5135: $d5
	nop                                              ; $5136: $00
	ld sp, hl                                        ; $5137: $f9
	add a                                            ; $5138: $87
	rrca                                             ; $5139: $0f
	rra                                              ; $513a: $1f
	db $10                                           ; $513b: $10
	rra                                              ; $513c: $1f
	dec d                                            ; $513d: $15
	ld a, [de]                                       ; $513e: $1a
	cpl                                              ; $513f: $2f
	inc [hl]                                         ; $5140: $34
	jr nz, jr_01e_5173                               ; $5141: $20 $30

	jr nz, jr_01e_5184                               ; $5143: $20 $3f

	ld c, a                                          ; $5145: $4f
	ld a, a                                          ; $5146: $7f
	ld d, h                                          ; $5147: $54
	halt                                             ; $5148: $76
	ld d, d                                          ; $5149: $52
	ld [hl], e                                       ; $514a: $73
	and h                                            ; $514b: $a4

jr_01e_514c:
	db $e4                                           ; $514c: $e4
	xor d                                            ; $514d: $aa
	ld [$f5b0], a                                    ; $514e: $ea $b0 $f5
	ld sp, hl                                        ; $5151: $f9

jr_01e_5152:
	rst SubAFromDE                                          ; $5152: $df
	rst $38                                          ; $5153: $ff
	ld a, a                                          ; $5154: $7f
	db $fd                                           ; $5155: $fd
	sbc e                                            ; $5156: $9b
	ld a, [hl+]                                      ; $5157: $2a
	push de                                          ; $5158: $d5
	ld d, [hl]                                       ; $5159: $56
	xor c                                            ; $515a: $a9
	ld [hl], e                                       ; $515b: $73
	push af                                          ; $515c: $f5
	sub h                                            ; $515d: $94
	rst $38                                          ; $515e: $ff
	and d                                            ; $515f: $a2
	xor $08                                          ; $5160: $ee $08
	inc e                                            ; $5162: $1c
	inc b                                            ; $5163: $04
	inc b                                            ; $5164: $04
	ld [bc], a                                       ; $5165: $02
	sub d                                            ; $5166: $92
	ld de, $f93b                                     ; $5167: $11 $3b $f9
	rst SubAFromDE                                          ; $516a: $df
	cp $7f                                           ; $516b: $fe $7f
	db $fd                                           ; $516d: $fd
	adc c                                            ; $516e: $89
	ld d, [hl]                                       ; $516f: $56
	xor h                                            ; $5170: $ac
	sub [hl]                                         ; $5171: $96
	ld l, h                                          ; $5172: $6c

jr_01e_5173:
	ld [bc], a                                       ; $5173: $02
	dec e                                            ; $5174: $1d
	rrca                                             ; $5175: $0f
	ld sp, hl                                        ; $5176: $f9
	adc $f9                                          ; $5177: $ce $f9
	ld b, h                                          ; $5179: $44
	ld a, d                                          ; $517a: $7a
	ld e, [hl]                                       ; $517b: $5e
	ld [hl], d                                       ; $517c: $72
	sbc h                                            ; $517d: $9c
	ldh a, [c]                                       ; $517e: $f2
	adc b                                            ; $517f: $88
	db $f4                                           ; $5180: $f4
	cp h                                             ; $5181: $bc
	db $e4                                           ; $5182: $e4
	dec b                                            ; $5183: $05

jr_01e_5184:
	rlca                                             ; $5184: $07
	ld [hl], a                                       ; $5185: $77
	cp $98                                           ; $5186: $fe $98
	ld a, [bc]                                       ; $5188: $0a
	ld c, $0b                                        ; $5189: $0e $0b
	rrca                                             ; $518b: $0f
	ld [$100f], sp                                   ; $518c: $08 $0f $10
	ld a, e                                          ; $518f: $7b
	sbc h                                            ; $5190: $9c
	sbc $1f                                          ; $5191: $de $1f
	sbc d                                            ; $5193: $9a
	db $10                                           ; $5194: $10
	rla                                              ; $5195: $17
	jr jr_01e_51a7                                   ; $5196: $18 $0f

	rrca                                             ; $5198: $0f

jr_01e_5199:
	ld sp, hl                                        ; $5199: $f9
	sub a                                            ; $519a: $97
	add b                                            ; $519b: $80
	and d                                            ; $519c: $a2
	ld a, [bc]                                       ; $519d: $0a
	ld c, a                                          ; $519e: $4f
	ld de, $229b                                     ; $519f: $11 $9b $22
	inc sp                                           ; $51a2: $33
	ld [hl], a                                       ; $51a3: $77
	and b                                            ; $51a4: $a0
	sbc l                                            ; $51a5: $9d
	xor e                                            ; $51a6: $ab

jr_01e_51a7:
	ld d, h                                          ; $51a7: $54
	ld [hl], a                                       ; $51a8: $77
	and h                                            ; $51a9: $a4
	ld a, e                                          ; $51aa: $7b
	rst FarCall                                          ; $51ab: $f7
	ld [hl], a                                       ; $51ac: $77
	sub d                                            ; $51ad: $92
	ld a, [$4489]                                    ; $51ae: $fa $89 $44
	ld d, a                                          ; $51b1: $57
	inc b                                            ; $51b2: $04
	rst GetHLinHL                                          ; $51b3: $cf
	dec b                                            ; $51b4: $05
	ld b, a                                          ; $51b5: $47
	add hl, hl                                       ; $51b6: $29
	ld l, a                                          ; $51b7: $6f
	ld hl, sp-$01                                    ; $51b8: $f8 $ff
	inc bc                                           ; $51ba: $03
	cp $43                                           ; $51bb: $fe $43
	cp [hl]                                          ; $51bd: $be
	dec b                                            ; $51be: $05
	cp $ff                                           ; $51bf: $fe $ff
	db $fc                                           ; $51c1: $fc
	rst $38                                          ; $51c2: $ff
	ld [bc], a                                       ; $51c3: $02
	db $fd                                           ; $51c4: $fd
	inc bc                                           ; $51c5: $03
	ld e, a                                          ; $51c6: $5f
	ldh [hDisp1_SCY], a                                     ; $51c7: $e0 $90
	ldh [hDisp1_SCY], a                                     ; $51c9: $e0 $90
	ld b, b                                          ; $51cb: $40
	and b                                            ; $51cc: $a0
	ldh [rAUD4LEN], a                                ; $51cd: $e0 $20
	ret nz                                           ; $51cf: $c0

	jr nz, jr_01e_5152                               ; $51d0: $20 $80

	ld b, b                                          ; $51d2: $40
	ret nz                                           ; $51d3: $c0

	ld b, b                                          ; $51d4: $40
	add b                                            ; $51d5: $80
	ld b, b                                          ; $51d6: $40
	nop                                              ; $51d7: $00
	call c, Call_01e_7f80                            ; $51d8: $dc $80 $7f
	ld a, [$dfe7]                                    ; $51db: $fa $e7 $df
	ld a, a                                          ; $51de: $7f
	db $fc                                           ; $51df: $fc
	sub [hl]                                         ; $51e0: $96
	ld c, b                                          ; $51e1: $48
	inc bc                                           ; $51e2: $03
	ld h, h                                          ; $51e3: $64
	rra                                              ; $51e4: $1f
	ret nz                                           ; $51e5: $c0

	dec hl                                           ; $51e6: $2b
	add b                                            ; $51e7: $80
	ld b, $54                                        ; $51e8: $06 $54
	pop af                                           ; $51ea: $f1
	ld l, e                                          ; $51eb: $6b
	and [hl]                                         ; $51ec: $a6
	adc [hl]                                         ; $51ed: $8e
	adc h                                            ; $51ee: $8c
	nop                                              ; $51ef: $00
	inc e                                            ; $51f0: $1c
	ret nz                                           ; $51f1: $c0

	jr jr_01e_5254                                   ; $51f2: $18 $60

	ld [$2000], sp                                   ; $51f4: $08 $00 $20
	ld bc, $0017                                     ; $51f7: $01 $17 $00
	inc l                                            ; $51fa: $2c
	ld bc, $0318                                     ; $51fb: $01 $18 $03
	ld [hl], b                                       ; $51fe: $70
	jp hl                                            ; $51ff: $e9


	sub a                                            ; $5200: $97
	ld h, b                                          ; $5201: $60
	ld c, d                                          ; $5202: $4a
	nop                                              ; $5203: $00
	inc c                                            ; $5204: $0c
	jr nz, jr_01e_5215                               ; $5205: $20 $0e

	jr nz, jr_01e_520d                               ; $5207: $20 $04

	jp hl                                            ; $5209: $e9


	push de                                          ; $520a: $d5
	nop                                              ; $520b: $00
	ld sp, hl                                        ; $520c: $f9

jr_01e_520d:
	add a                                            ; $520d: $87
	rrca                                             ; $520e: $0f
	rra                                              ; $520f: $1f
	db $10                                           ; $5210: $10
	rra                                              ; $5211: $1f
	db $10                                           ; $5212: $10
	ld e, $20                                        ; $5213: $1e $20

jr_01e_5215:
	ld a, $20                                        ; $5215: $3e $20
	ccf                                              ; $5217: $3f
	jr nz, jr_01e_5259                               ; $5218: $20 $3f

	ld b, d                                          ; $521a: $42
	ld a, d                                          ; $521b: $7a
	ld b, l                                          ; $521c: $45
	ld [hl], l                                       ; $521d: $75
	ld c, c                                          ; $521e: $49
	ld a, c                                          ; $521f: $79
	add h                                            ; $5220: $84
	db $e4                                           ; $5221: $e4
	add b                                            ; $5222: $80
	rst $38                                          ; $5223: $ff
	add e                                            ; $5224: $83
	db $fd                                           ; $5225: $fd
	ld sp, hl                                        ; $5226: $f9
	rst SubAFromDE                                          ; $5227: $df

jr_01e_5228:
	rst $38                                          ; $5228: $ff
	ld a, a                                          ; $5229: $7f
	db $fd                                           ; $522a: $fd
	sbc e                                            ; $522b: $9b
	nop                                              ; $522c: $00
	ld h, c                                          ; $522d: $61
	adc d                                            ; $522e: $8a
	adc d                                            ; $522f: $8a
	ld a, e                                          ; $5230: $7b
	ld a, [$ff98]                                    ; $5231: $fa $98 $ff
	adc c                                            ; $5234: $89
	call $2020                                       ; $5235: $cd $20 $20
	nop                                              ; $5238: $00
	xor d                                            ; $5239: $aa
	ld [hl], a                                       ; $523a: $77
	db $eb                                           ; $523b: $eb
	sbc l                                            ; $523c: $9d
	inc a                                            ; $523d: $3c
	rst JumpTable                                          ; $523e: $c7
	ld sp, hl                                        ; $523f: $f9
	rst SubAFromDE                                          ; $5240: $df
	cp $7f                                           ; $5241: $fe $7f
	db $fd                                           ; $5243: $fd
	adc c                                            ; $5244: $89
	ld h, $3c                                        ; $5245: $26 $3c
	ld b, [hl]                                       ; $5247: $46
	ld a, h                                          ; $5248: $7c
	ld [bc], a                                       ; $5249: $02
	db $fd                                           ; $524a: $fd
	rrca                                             ; $524b: $0f
	ld sp, hl                                        ; $524c: $f9
	ld l, $b9                                        ; $524d: $2e $b9
	ld b, h                                          ; $524f: $44
	ld a, d                                          ; $5250: $7a
	ld e, $32                                        ; $5251: $1e $32
	ld e, h                                          ; $5253: $5c

jr_01e_5254:
	ld [hl], d                                       ; $5254: $72
	ld [$3cf4], sp                                   ; $5255: $08 $f4 $3c
	db $e4                                           ; $5258: $e4

jr_01e_5259:
	inc b                                            ; $5259: $04
	rlca                                             ; $525a: $07
	ld [hl], a                                       ; $525b: $77
	cp $9d                                           ; $525c: $fe $9d
	ld [$770f], sp                                   ; $525e: $08 $0f $77
	cp $7f                                           ; $5261: $fe $7f
	and b                                            ; $5263: $a0
	ld a, a                                          ; $5264: $7f
	cp $de                                           ; $5265: $fe $de
	rra                                              ; $5267: $1f
	sbc d                                            ; $5268: $9a
	db $10                                           ; $5269: $10
	rla                                              ; $526a: $17
	jr jr_01e_527c                                   ; $526b: $18 $0f

	rrca                                             ; $526d: $0f
	ld sp, hl                                        ; $526e: $f9
	sbc e                                            ; $526f: $9b
	dec c                                            ; $5270: $0d
	or $17                                           ; $5271: $f6 $17
	ld [$ac77], a                                    ; $5273: $ea $77 $ac
	ld a, e                                          ; $5276: $7b
	cp $9a                                           ; $5277: $fe $9a
	ld d, l                                          ; $5279: $55
	xor b                                            ; $527a: $a8
	xor b                                            ; $527b: $a8

jr_01e_527c:
	add hl, bc                                       ; $527c: $09
	xor l                                            ; $527d: $ad
	sbc $ff                                          ; $527e: $de $ff
	ld [hl], a                                       ; $5280: $77
	di                                               ; $5281: $f3
	ld a, a                                          ; $5282: $7f
	db $fd                                           ; $5283: $fd
	ld a, [$f098]                                    ; $5284: $fa $98 $f0
	sbc a                                            ; $5287: $9f
	ldh [$bf], a                                     ; $5288: $e0 $bf
	ld bc, $01ff                                     ; $528a: $01 $ff $01
	ld a, e                                          ; $528d: $7b
	db $ed                                           ; $528e: $ed
	sub e                                            ; $528f: $93
	inc bc                                           ; $5290: $03
	ld e, [hl]                                       ; $5291: $5e
	and e                                            ; $5292: $a3
	cp [hl]                                          ; $5293: $be
	ld b, l                                          ; $5294: $45
	ld e, [hl]                                       ; $5295: $5e
	rst $38                                          ; $5296: $ff
	db $fc                                           ; $5297: $fc
	rst $38                                          ; $5298: $ff
	ld [bc], a                                       ; $5299: $02
	db $fd                                           ; $529a: $fd
	inc bc                                           ; $529b: $03
	ld e, a                                          ; $529c: $5f
	ldh [hDisp1_SCY], a                                     ; $529d: $e0 $90
	ldh [hDisp1_SCY], a                                     ; $529f: $e0 $90
	ld b, b                                          ; $52a1: $40
	and b                                            ; $52a2: $a0
	ldh [rAUD4LEN], a                                ; $52a3: $e0 $20
	ret nz                                           ; $52a5: $c0

	jr nz, jr_01e_5228                               ; $52a6: $20 $80

	ld b, b                                          ; $52a8: $40
	ret nz                                           ; $52a9: $c0

	ld b, b                                          ; $52aa: $40
	add b                                            ; $52ab: $80
	ld b, b                                          ; $52ac: $40
	nop                                              ; $52ad: $00
	call c, Call_01e_7f80                            ; $52ae: $dc $80 $7f
	ld a, [$9cea]                                    ; $52b1: $fa $ea $9c
	ld b, $00                                        ; $52b4: $06 $00
	dec b                                            ; $52b6: $05
	db $fd                                           ; $52b7: $fd
	rst SubAFromDE                                          ; $52b8: $df
	inc d                                            ; $52b9: $14
	sbc c                                            ; $52ba: $99
	dec hl                                           ; $52bb: $2b
	nop                                              ; $52bc: $00
	add hl, de                                       ; $52bd: $19
	nop                                              ; $52be: $00
	ld l, a                                          ; $52bf: $6f
	ld l, a                                          ; $52c0: $6f
	ldh a, [$9c]                                     ; $52c1: $f0 $9c
	ld a, e                                          ; $52c3: $7b
	nop                                              ; $52c4: $00
	sub $fd                                          ; $52c5: $d6 $fd
	rst SubAFromDE                                          ; $52c7: $df
	ret                                              ; $52c8: $c9


	sbc h                                            ; $52c9: $9c
	ld a, [hl]                                       ; $52ca: $7e
	nop                                              ; $52cb: $00
	ld d, a                                          ; $52cc: $57
	ld [hl], a                                       ; $52cd: $77
	ld l, $f4                                        ; $52ce: $2e $f4
	rst SubAFromDE                                          ; $52d0: $df
	dec d                                            ; $52d1: $15
	sbc e                                            ; $52d2: $9b
	ld a, [hl+]                                      ; $52d3: $2a
	nop                                              ; $52d4: $00
	ld a, [hl+]                                      ; $52d5: $2a
	ld a, [hl+]                                      ; $52d6: $2a
	rst SubAFromBC                                          ; $52d7: $e7
	rst SubAFromDE                                          ; $52d8: $df
	ld d, h                                          ; $52d9: $54
	sbc [hl]                                         ; $52da: $9e
	add sp, $7b                                      ; $52db: $e8 $7b
	db $fc                                           ; $52dd: $fc
	pop af                                           ; $52de: $f1
	call c, $fb00                                    ; $52df: $dc $00 $fb
	db $dd                                           ; $52e2: $dd
	ld bc, $03dd                                     ; $52e3: $01 $dd $03
	adc l                                            ; $52e6: $8d
	ld b, $07                                        ; $52e7: $06 $07
	ld b, $07                                        ; $52e9: $06 $07
	inc c                                            ; $52eb: $0c
	rrca                                             ; $52ec: $0f
	inc c                                            ; $52ed: $0c
	rrca                                             ; $52ee: $0f
	jr jr_01e_5310                                   ; $52ef: $18 $1f

	jr jr_01e_5312                                   ; $52f1: $18 $1f

	jr nc, jr_01e_5334                               ; $52f3: $30 $3f

	inc sp                                           ; $52f5: $33
	ccf                                              ; $52f6: $3f
	ld h, h                                          ; $52f7: $64
	ld a, a                                          ; $52f8: $7f
	db $fd                                           ; $52f9: $fd
	rst SubAFromDE                                          ; $52fa: $df
	add b                                            ; $52fb: $80
	rst SubAFromDE                                          ; $52fc: $df
	ldh [hDisp0_OBP1], a                                     ; $52fd: $e0 $87
	sbc h                                            ; $52ff: $9c
	db $fc                                           ; $5300: $fc
	inc bc                                           ; $5301: $03
	rst $38                                          ; $5302: $ff
	nop                                              ; $5303: $00
	and a                                            ; $5304: $a7
	nop                                              ; $5305: $00
	ld l, c                                          ; $5306: $69
	nop                                              ; $5307: $00
	ld d, [hl]                                       ; $5308: $56
	nop                                              ; $5309: $00
	add a                                            ; $530a: $87
	nop                                              ; $530b: $00
	db $fc                                           ; $530c: $fc
	nop                                              ; $530d: $00
	cp a                                             ; $530e: $bf
	nop                                              ; $530f: $00

jr_01e_5310:
	rst FarCall                                          ; $5310: $f7
	nop                                              ; $5311: $00

jr_01e_5312:
	db $fd                                           ; $5312: $fd
	nop                                              ; $5313: $00
	rst $38                                          ; $5314: $ff
	ldh [rIE], a                                     ; $5315: $e0 $ff
	rst FarCall                                          ; $5317: $f7
	rst SubAFromDE                                          ; $5318: $df
	add b                                            ; $5319: $80
	adc b                                            ; $531a: $88
	ld [hl], b                                       ; $531b: $70
	ldh a, [$0e]                                     ; $531c: $f0 $0e
	cp $02                                           ; $531e: $fe $02
	ld a, [hl]                                       ; $5320: $7e
	ld [bc], a                                       ; $5321: $02
	adc [hl]                                         ; $5322: $8e
	ld b, $fc                                        ; $5323: $06 $fc
	rlca                                             ; $5325: $07
	dec a                                            ; $5326: $3d
	rrca                                             ; $5327: $0f
	ld sp, hl                                        ; $5328: $f9
	ld c, $fa                                        ; $5329: $0e $fa
	ld e, $f2                                        ; $532b: $1e $f2
	inc e                                            ; $532d: $1c
	db $f4                                           ; $532e: $f4
	add hl, de                                       ; $532f: $19
	rra                                              ; $5330: $1f
	ld [hl-], a                                      ; $5331: $32
	ld a, e                                          ; $5332: $7b
	cp b                                             ; $5333: $b8

jr_01e_5334:
	adc l                                            ; $5334: $8d
	ld h, a                                          ; $5335: $67
	ld a, a                                          ; $5336: $7f
	ld h, a                                          ; $5337: $67
	ld a, a                                          ; $5338: $7f
	ld b, c                                          ; $5339: $41
	ld a, a                                          ; $533a: $7f
	ret nz                                           ; $533b: $c0

	rst $38                                          ; $533c: $ff
	ldh a, [rIE]                                     ; $533d: $f0 $ff
	ld a, [hl]                                       ; $533f: $7e
	rrca                                             ; $5340: $0f
	ld a, a                                          ; $5341: $7f
	ld [hl], c                                       ; $5342: $71
	rrca                                             ; $5343: $0f
	ld c, $01                                        ; $5344: $0e $01
	ld bc, $83f9                                     ; $5346: $01 $f9 $83
	ld e, a                                          ; $5349: $5f
	rst $38                                          ; $534a: $ff
	dec hl                                           ; $534b: $2b
	rst $38                                          ; $534c: $ff
	dec d                                            ; $534d: $15
	rst $38                                          ; $534e: $ff
	adc d                                            ; $534f: $8a
	rst $38                                          ; $5350: $ff
	add c                                            ; $5351: $81
	rst $38                                          ; $5352: $ff
	jp $3fff                                         ; $5353: $c3 $ff $3f


	rst $38                                          ; $5356: $ff
	ld b, $ff                                        ; $5357: $06 $ff
	nop                                              ; $5359: $00
	rst $38                                          ; $535a: $ff

jr_01e_535b:
	ret nz                                           ; $535b: $c0

	rst $38                                          ; $535c: $ff
	ld sp, hl                                        ; $535d: $f9
	ccf                                              ; $535e: $3f
	rst $38                                          ; $535f: $ff
	rst JumpTable                                          ; $5360: $c7
	ccf                                              ; $5361: $3f
	jr c, jr_01e_536b                                ; $5362: $38 $07

	ld b, $fd                                        ; $5364: $06 $fd
	ld a, a                                          ; $5366: $7f
	cp b                                             ; $5367: $b8
	add l                                            ; $5368: $85
	adc $fa                                          ; $5369: $ce $fa

jr_01e_536b:
	sbc $f2                                          ; $536b: $de $f2
	sbc h                                            ; $536d: $9c
	db $f4                                           ; $536e: $f4
	cp h                                             ; $536f: $bc
	db $e4                                           ; $5370: $e4
	jr c, jr_01e_535b                                ; $5371: $38 $e8

	ld a, b                                          ; $5373: $78
	ret z                                            ; $5374: $c8

	ld [hl], b                                       ; $5375: $70
	ret nc                                           ; $5376: $d0

	ldh a, [hDisp1_SCY]                                     ; $5377: $f0 $90
	ldh [$a0], a                                     ; $5379: $e0 $a0
	ldh [rAUD4LEN], a                                ; $537b: $e0 $20
	ret nz                                           ; $537d: $c0

	ld b, b                                          ; $537e: $40
	ret nz                                           ; $537f: $c0

	ld b, b                                          ; $5380: $40
	add b                                            ; $5381: $80
	add b                                            ; $5382: $80
	push hl                                          ; $5383: $e5
	adc e                                            ; $5384: $8b
	jr nz, @+$16                                     ; $5385: $20 $14

	db $10                                           ; $5387: $10
	inc c                                            ; $5388: $0c
	nop                                              ; $5389: $00
	inc b                                            ; $538a: $04
	ld [$0004], sp                                   ; $538b: $08 $04 $00
	ld [$0810], sp                                   ; $538e: $08 $10 $08
	nop                                              ; $5391: $00
	db $10                                           ; $5392: $10
	jr nz, jr_01e_53a5                               ; $5393: $20 $10

	nop                                              ; $5395: $00
	jr nz, jr_01e_5398                               ; $5396: $20 $00

jr_01e_5398:
	jr nz, @+$7d                                     ; $5398: $20 $7b

	ld a, [$10df]                                    ; $539a: $fa $df $10
	ld a, a                                          ; $539d: $7f
	ldh a, [c]                                       ; $539e: $f2
	add sp, -$21                                     ; $539f: $e8 $df
	ld d, $df                                        ; $53a1: $16 $df
	dec h                                            ; $53a3: $25
	rst SubAFromDE                                          ; $53a4: $df

jr_01e_53a5:
	ld a, [hl+]                                      ; $53a5: $2a
	rst SubAFromDE                                          ; $53a6: $df
	ld e, $ff                                        ; $53a7: $1e $ff
	rst SubAFromDE                                          ; $53a9: $df
	db $10                                           ; $53aa: $10
	rst SubAFromDE                                          ; $53ab: $df

jr_01e_53ac:
	ld [bc], a                                       ; $53ac: $02
	db $ed                                           ; $53ad: $ed
	rst SubAFromDE                                          ; $53ae: $df
	add b                                            ; $53af: $80
	rst SubAFromDE                                          ; $53b0: $df
	ld h, b                                          ; $53b1: $60
	rst SubAFromDE                                          ; $53b2: $df
	inc e                                            ; $53b3: $1c
	rst SubAFromDE                                          ; $53b4: $df
	ret nz                                           ; $53b5: $c0

	rst SubAFromDE                                          ; $53b6: $df
	jr nc, jr_01e_5430                               ; $53b7: $30 $77

	db $f4                                           ; $53b9: $f4
	db $fd                                           ; $53ba: $fd

jr_01e_53bb:
	rst SubAFromDE                                          ; $53bb: $df
	nop                                              ; $53bc: $00
	db $ed                                           ; $53bd: $ed
	rst SubAFromDE                                          ; $53be: $df
	inc b                                            ; $53bf: $04
	sub l                                            ; $53c0: $95
	ld [$100e], sp                                   ; $53c1: $08 $0e $10
	jr jr_01e_53d6                                   ; $53c4: $18 $10

	rra                                              ; $53c6: $1f
	ld bc, $171e                                     ; $53c7: $01 $1e $17
	jr jr_01e_53bb                                   ; $53ca: $18 $ef

	sub c                                            ; $53cc: $91
	add b                                            ; $53cd: $80
	ldh [rSB], a                                     ; $53ce: $e0 $01
	pop af                                           ; $53d0: $f1
	ld [bc], a                                       ; $53d1: $02
	dec sp                                           ; $53d2: $3b
	dec d                                            ; $53d3: $15
	xor $75                                          ; $53d4: $ee $75

jr_01e_53d6:
	adc [hl]                                         ; $53d6: $8e
	ei                                               ; $53d7: $fb
	inc b                                            ; $53d8: $04
	adc d                                            ; $53d9: $8a
	inc b                                            ; $53da: $04
	rst AddAOntoHL                                          ; $53db: $ef
	rst SubAFromDE                                          ; $53dc: $df
	and h                                            ; $53dd: $a4
	add c                                            ; $53de: $81
	nop                                              ; $53df: $00
	sbc h                                            ; $53e0: $9c
	nop                                              ; $53e1: $00
	add $80                                          ; $53e2: $c6 $80
	ld [hl], d                                       ; $53e4: $72
	ldh a, [rIF]                                     ; $53e5: $f0 $0f
	sbc h                                            ; $53e7: $9c
	inc bc                                           ; $53e8: $03
	ld c, h                                          ; $53e9: $4c
	ld [bc], a                                       ; $53ea: $02
	ld b, $18                                        ; $53eb: $06 $18
	ld b, $08                                        ; $53ed: $06 $08

jr_01e_53ef:
	nop                                              ; $53ef: $00
	inc c                                            ; $53f0: $0c
	ld [bc], a                                       ; $53f1: $02

jr_01e_53f2:
	inc b                                            ; $53f2: $04
	inc bc                                           ; $53f3: $03
	inc b                                            ; $53f4: $04
	ld bc, $0106                                     ; $53f5: $01 $06 $01
	ld [bc], a                                       ; $53f8: $02
	nop                                              ; $53f9: $00
	inc bc                                           ; $53fa: $03
	nop                                              ; $53fb: $00
	ld bc, $fe73                                     ; $53fc: $01 $73 $fe
	ld hl, sp-$7b                                    ; $53ff: $f8 $85
	ld [bc], a                                       ; $5401: $02
	inc c                                            ; $5402: $0c
	rla                                              ; $5403: $17
	ld [$0845], sp                                   ; $5404: $08 $45 $08
	ld b, l                                          ; $5407: $45
	jr jr_01e_5436                                   ; $5408: $18 $2c

	db $10                                           ; $540a: $10
	ret z                                            ; $540b: $c8

	db $10                                           ; $540c: $10
	ld c, b                                          ; $540d: $48
	jr nc, jr_01e_53ac                               ; $540e: $30 $9c

	jr nz, jr_01e_53ef                               ; $5410: $20 $dd

	ld [hl+], a                                      ; $5412: $22
	rst JumpTable                                          ; $5413: $c7
	jr c, jr_01e_548e                                ; $5414: $38 $78

	sbc a                                            ; $5416: $9f
	ld h, [hl]                                       ; $5417: $66
	sbc a                                            ; $5418: $9f
	nop                                              ; $5419: $00
	ldh a, [$fb]                                     ; $541a: $f0 $fb
	add l                                            ; $541c: $85
	adc b                                            ; $541d: $88
	ld b, [hl]                                       ; $541e: $46
	jr jr_01e_5425                                   ; $541f: $18 $04

	cp b                                             ; $5421: $b8
	inc b                                            ; $5422: $04
	ld [hl], b                                       ; $5423: $70
	inc c                                            ; $5424: $0c

jr_01e_5425:
	sub b                                            ; $5425: $90
	ld [$0830], sp                                   ; $5426: $08 $30 $08
	ld h, b                                          ; $5429: $60
	jr jr_01e_544c                                   ; $542a: $18 $20

	db $10                                           ; $542c: $10
	ldh [rAUD1SWEEP], a                              ; $542d: $e0 $10
	ret nz                                           ; $542f: $c0

jr_01e_5430:
	jr nc, jr_01e_53f2                               ; $5430: $30 $c0

	jr nz, jr_01e_5434                               ; $5432: $20 $00

jr_01e_5434:
	ldh [rP1], a                                     ; $5434: $e0 $00

jr_01e_5436:
	ret nz                                           ; $5436: $c0

	rst AddAOntoHL                                          ; $5437: $ef
	sub e                                            ; $5438: $93
	ld b, h                                          ; $5439: $44
	ld a, h                                          ; $543a: $7c
	sbc d                                            ; $543b: $9a
	and $2d                                          ; $543c: $e6 $2d
	inc sp                                           ; $543e: $33
	ld d, c                                          ; $543f: $51
	ld a, a                                          ; $5440: $7f
	dec hl                                           ; $5441: $2b
	ld l, e                                          ; $5442: $6b
	ld d, b                                          ; $5443: $50
	ld d, b                                          ; $5444: $50
	sbc $20                                          ; $5445: $de $20
	sbc d                                            ; $5447: $9a
	ld b, b                                          ; $5448: $40
	jr nz, jr_01e_54ab                               ; $5449: $20 $60

	ld b, b                                          ; $544b: $40

jr_01e_544c:
	ld b, b                                          ; $544c: $40
	ei                                               ; $544d: $fb
	sub c                                            ; $544e: $91
	ld sp, $9e3f                                     ; $544f: $31 $3f $9e
	pop hl                                           ; $5452: $e1
	daa                                              ; $5453: $27
	jr c, jr_01e_54d5                                ; $5454: $38 $7f

	ld a, a                                          ; $5456: $7f
	add hl, bc                                       ; $5457: $09
	rrca                                             ; $5458: $0f
	db $10                                           ; $5459: $10
	rra                                              ; $545a: $1f
	dec b                                            ; $545b: $05
	dec b                                            ; $545c: $05
	dec sp                                           ; $545d: $3b
	inc l                                            ; $545e: $2c
	sub d                                            ; $545f: $92
	add b                                            ; $5460: $80
	and b                                            ; $5461: $a0
	ldh [$50], a                                     ; $5462: $e0 $50
	ldh a, [$50]                                     ; $5464: $f0 $50
	ldh a, [$d0]                                     ; $5466: $f0 $d0
	ldh a, [$e0]                                     ; $5468: $f0 $e0
	ldh [$80], a                                     ; $546a: $e0 $80
	add b                                            ; $546c: $80
	ldh [$d6], a                                     ; $546d: $e0 $d6
	sbc [hl]                                         ; $546f: $9e
	rlca                                             ; $5470: $07
	push hl                                          ; $5471: $e5
	adc h                                            ; $5472: $8c
	ld b, $00                                        ; $5473: $06 $00
	dec de                                           ; $5475: $1b
	nop                                              ; $5476: $00
	nop                                              ; $5477: $00
	rra                                              ; $5478: $1f
	nop                                              ; $5479: $00
	ld e, $23                                        ; $547a: $1e $23
	dec sp                                           ; $547c: $3b
	ld [de], a                                       ; $547d: $12
	ld a, [de]                                       ; $547e: $1a
	inc c                                            ; $547f: $0c
	inc c                                            ; $5480: $0c
	ld [bc], a                                       ; $5481: $02
	ld [bc], a                                       ; $5482: $02
	ld [$0408], sp                                   ; $5483: $08 $08 $04
	ld b, d                                          ; $5486: $42
	ret nc                                           ; $5487: $d0

	adc a                                            ; $5488: $8f
	inc de                                           ; $5489: $13
	nop                                              ; $548a: $00
	ld c, $00                                        ; $548b: $0e $00
	inc h                                            ; $548d: $24

jr_01e_548e:
	jr nz, jr_01e_54b8                               ; $548e: $20 $28

	jr z, jr_01e_54c8                                ; $5490: $28 $36

	ld [hl], $7c                                     ; $5492: $36 $7c
	ld a, h                                          ; $5494: $7c
	ld a, b                                          ; $5495: $78
	ld a, b                                          ; $5496: $78
	inc a                                            ; $5497: $3c
	inc a                                            ; $5498: $3c
	pop af                                           ; $5499: $f1
	rst SubAFromDE                                          ; $549a: $df
	nop                                              ; $549b: $00
	ei                                               ; $549c: $fb
	db $dd                                           ; $549d: $dd
	ld bc, $03dd                                     ; $549e: $01 $dd $03
	adc l                                            ; $54a1: $8d
	ld b, $07                                        ; $54a2: $06 $07
	ld b, $07                                        ; $54a4: $06 $07
	inc c                                            ; $54a6: $0c
	rrca                                             ; $54a7: $0f
	dec c                                            ; $54a8: $0d
	ld c, $18                                        ; $54a9: $0e $18

jr_01e_54ab:
	rra                                              ; $54ab: $1f
	add hl, de                                       ; $54ac: $19
	ld e, $32                                        ; $54ad: $1e $32
	dec a                                            ; $54af: $3d
	inc sp                                           ; $54b0: $33
	ccf                                              ; $54b1: $3f
	ld h, l                                          ; $54b2: $65
	ld a, [hl]                                       ; $54b3: $7e
	db $fd                                           ; $54b4: $fd
	rst SubAFromDE                                          ; $54b5: $df
	add b                                            ; $54b6: $80
	rst SubAFromDE                                          ; $54b7: $df

jr_01e_54b8:
	ldh [hDisp0_OBP1], a                                     ; $54b8: $e0 $87
	sbc h                                            ; $54ba: $9c
	db $fc                                           ; $54bb: $fc
	cpl                                              ; $54bc: $2f
	db $d3                                           ; $54bd: $d3
	rla                                              ; $54be: $17
	adc b                                            ; $54bf: $88
	inc hl                                           ; $54c0: $23
	add b                                            ; $54c1: $80
	dec d                                            ; $54c2: $15
	nop                                              ; $54c3: $00
	xor d                                            ; $54c4: $aa
	ld b, b                                          ; $54c5: $40
	inc e                                            ; $54c6: $1c
	and b                                            ; $54c7: $a0

jr_01e_54c8:
	xor [hl]                                         ; $54c8: $ae
	ld b, c                                          ; $54c9: $41
	ld a, c                                          ; $54ca: $79
	add d                                            ; $54cb: $82
	xor d                                            ; $54cc: $aa
	ld b, h                                          ; $54cd: $44
	ld a, e                                          ; $54ce: $7b
	add d                                            ; $54cf: $82
	ld a, [$f7e5]                                    ; $54d0: $fa $e5 $f7
	rst SubAFromDE                                          ; $54d3: $df
	add b                                            ; $54d4: $80

jr_01e_54d5:
	add b                                            ; $54d5: $80
	ldh a, [rSVBK]                                   ; $54d6: $f0 $70
	xor [hl]                                         ; $54d8: $ae
	ld e, [hl]                                       ; $54d9: $5e
	ld d, d                                          ; $54da: $52
	ld l, $02                                        ; $54db: $2e $02
	ld c, [hl]                                       ; $54dd: $4e
	ld b, $9c                                        ; $54de: $06 $9c
	add a                                            ; $54e0: $87
	ld e, l                                          ; $54e1: $5d
	ld c, a                                          ; $54e2: $4f
	cp c                                             ; $54e3: $b9
	adc [hl]                                         ; $54e4: $8e
	ld a, d                                          ; $54e5: $7a
	ld e, $f2                                        ; $54e6: $1e $f2
	sbc h                                            ; $54e8: $9c
	ld [hl], h                                       ; $54e9: $74
	add hl, de                                       ; $54ea: $19
	rra                                              ; $54eb: $1f
	inc sp                                           ; $54ec: $33
	ld a, $32                                        ; $54ed: $3e $32
	ccf                                              ; $54ef: $3f
	ld h, a                                          ; $54f0: $67
	ld a, a                                          ; $54f1: $7f
	ld h, a                                          ; $54f2: $67
	ld a, a                                          ; $54f3: $7f
	ld c, e                                          ; $54f4: $4b
	sub d                                            ; $54f5: $92
	ld [hl], l                                       ; $54f6: $75
	push de                                          ; $54f7: $d5
	ld [$f4fb], a                                    ; $54f8: $ea $fb $f4
	ld a, a                                          ; $54fb: $7f
	ld c, $7f                                        ; $54fc: $0e $7f
	ld [hl], c                                       ; $54fe: $71
	rrca                                             ; $54ff: $0f
	ld c, $01                                        ; $5500: $0e $01
	ld bc, $83f9                                     ; $5502: $01 $f9 $83
	rst AddAOntoHL                                          ; $5505: $ef
	rla                                              ; $5506: $17
	or l                                             ; $5507: $b5
	ld c, d                                          ; $5508: $4a
	ld a, [de]                                       ; $5509: $1a
	push hl                                          ; $550a: $e5
	adc a                                            ; $550b: $8f
	ldh a, [$e7]                                     ; $550c: $f0 $e7
	ld hl, sp-$0d                                    ; $550e: $f8 $f3
	db $fd                                           ; $5510: $fd
	ld sp, hl                                        ; $5511: $f9
	ccf                                              ; $5512: $3f
	xor $17                                          ; $5513: $ee $17
	call nc, $e82b                                   ; $5515: $d4 $2b $e8
	rst SubAFromHL                                          ; $5518: $d7
	db $fd                                           ; $5519: $fd
	dec sp                                           ; $551a: $3b
	rst $38                                          ; $551b: $ff
	rst JumpTable                                          ; $551c: $c7
	ccf                                              ; $551d: $3f
	jr c, jr_01e_5527                                ; $551e: $38 $07

	ld b, $fd                                        ; $5520: $06 $fd
	ld a, a                                          ; $5522: $7f
	cp b                                             ; $5523: $b8
	add l                                            ; $5524: $85
	adc $fa                                          ; $5525: $ce $fa

jr_01e_5527:
	sbc $72                                          ; $5527: $de $72
	sbc h                                            ; $5529: $9c
	db $f4                                           ; $552a: $f4
	cp h                                             ; $552b: $bc
	db $e4                                           ; $552c: $e4
	jr c, @-$16                                      ; $552d: $38 $e8

	ld a, b                                          ; $552f: $78
	ret z                                            ; $5530: $c8

	ld [hl], b                                       ; $5531: $70
	ret nc                                           ; $5532: $d0

	ldh a, [hDisp1_SCY]                                     ; $5533: $f0 $90
	ldh [$a0], a                                     ; $5535: $e0 $a0
	ldh [rAUD4LEN], a                                ; $5537: $e0 $20
	ret nz                                           ; $5539: $c0

	ld b, b                                          ; $553a: $40
	ret nz                                           ; $553b: $c0

	ld b, b                                          ; $553c: $40
	add b                                            ; $553d: $80

jr_01e_553e:
	add b                                            ; $553e: $80
	push hl                                          ; $553f: $e5
	adc e                                            ; $5540: $8b
	jr nz, @+$16                                     ; $5541: $20 $14

	db $10                                           ; $5543: $10
	inc c                                            ; $5544: $0c
	nop                                              ; $5545: $00
	inc b                                            ; $5546: $04
	ld [$0004], sp                                   ; $5547: $08 $04 $00
	ld [$0810], sp                                   ; $554a: $08 $10 $08
	nop                                              ; $554d: $00
	db $10                                           ; $554e: $10
	jr nz, jr_01e_5561                               ; $554f: $20 $10

	nop                                              ; $5551: $00
	jr nz, jr_01e_5554                               ; $5552: $20 $00

jr_01e_5554:
	jr nz, jr_01e_55d1                               ; $5554: $20 $7b

	ld a, [$10df]                                    ; $5556: $fa $df $10
	ld a, a                                          ; $5559: $7f
	ldh a, [c]                                       ; $555a: $f2
	add sp, -$21                                     ; $555b: $e8 $df
	jr jr_01e_553e                                   ; $555d: $18 $df

	rla                                              ; $555f: $17
	rst SubAFromDE                                          ; $5560: $df

jr_01e_5561:
	ld a, [hl-]                                      ; $5561: $3a
	rst SubAFromDE                                          ; $5562: $df
	dec b                                            ; $5563: $05
	rst SubAFromDE                                          ; $5564: $df
	db $10                                           ; $5565: $10
	rst SubAFromDE                                          ; $5566: $df
	inc b                                            ; $5567: $04
	rst SubAFromDE                                          ; $5568: $df
	ld bc, $fc77                                     ; $5569: $01 $77 $fc
	rst AddAOntoHL                                          ; $556c: $ef
	rst SubAFromDE                                          ; $556d: $df
	and b                                            ; $556e: $a0
	rst SubAFromDE                                          ; $556f: $df
	ld l, h                                          ; $5570: $6c
	rst SubAFromDE                                          ; $5571: $df
	ret c                                            ; $5572: $d8

	rst SubAFromDE                                          ; $5573: $df
	ld [$dfff], sp                                   ; $5574: $08 $ff $df
	ld b, b                                          ; $5577: $40
	db $fd                                           ; $5578: $fd
	jp c, $f700                                      ; $5579: $da $00 $f7

	adc c                                            ; $557c: $89
	inc bc                                           ; $557d: $03
	nop                                              ; $557e: $00
	rra                                              ; $557f: $1f
	inc bc                                           ; $5580: $03
	ccf                                              ; $5581: $3f
	inc e                                            ; $5582: $1c
	ccf                                              ; $5583: $3f
	db $10                                           ; $5584: $10
	ld e, $09                                        ; $5585: $1e $09
	inc e                                            ; $5587: $1c
	dec bc                                           ; $5588: $0b
	inc e                                            ; $5589: $1c
	dec bc                                           ; $558a: $0b
	inc c                                            ; $558b: $0c
	rlca                                             ; $558c: $07
	ld c, $05                                        ; $558d: $0e $05
	rrca                                             ; $558f: $0f
	inc b                                            ; $5590: $04
	rlca                                             ; $5591: $07
	ld [bc], a                                       ; $5592: $02
	db $fd                                           ; $5593: $fd
	adc l                                            ; $5594: $8d
	rra                                              ; $5595: $1f
	nop                                              ; $5596: $00
	ccf                                              ; $5597: $3f
	scf                                              ; $5598: $37
	ld a, a                                          ; $5599: $7f
	ld a, [bc]                                       ; $559a: $0a
	rst $38                                          ; $559b: $ff
	ld [hl], l                                       ; $559c: $75
	rst $38                                          ; $559d: $ff
	add l                                            ; $559e: $85
	rst $38                                          ; $559f: $ff
	dec b                                            ; $55a0: $05
	rst GetHLinHL                                          ; $55a1: $cf
	ld [hl-], a                                      ; $55a2: $32
	scf                                              ; $55a3: $37
	rl a                                             ; $55a4: $cb $17
	db $ed                                           ; $55a6: $ed
	ld [hl], a                                       ; $55a7: $77
	cp $99                                           ; $55a8: $fe $99
	rlca                                             ; $55aa: $07
	db $fd                                           ; $55ab: $fd
	add a                                            ; $55ac: $87
	ld a, l                                          ; $55ad: $7d
	rst AddAOntoHL                                          ; $55ae: $ef
	dec d                                            ; $55af: $15
	db $fd                                           ; $55b0: $fd
	adc l                                            ; $55b1: $8d
	db $fc                                           ; $55b2: $fc
	nop                                              ; $55b3: $00
	cp $fc                                           ; $55b4: $fe $fc
	rst $38                                          ; $55b6: $ff
	dec b                                            ; $55b7: $05
	sub a                                            ; $55b8: $97
	dec c                                            ; $55b9: $0d
	ld l, a                                          ; $55ba: $6f
	dec d                                            ; $55bb: $15
	rra                                              ; $55bc: $1f
	dec b                                            ; $55bd: $05
	rst $38                                          ; $55be: $ff
	add b                                            ; $55bf: $80
	rst $38                                          ; $55c0: $ff
	rst $38                                          ; $55c1: $ff
	ret nz                                           ; $55c2: $c0

	ld b, b                                          ; $55c3: $40
	ld [hl], a                                       ; $55c4: $77
	cp $9d                                           ; $55c5: $fe $9d
	add b                                            ; $55c7: $80
	nop                                              ; $55c8: $00
	ld a, e                                          ; $55c9: $7b
	ld a, [$609e]                                    ; $55ca: $fa $9e $60
	ld sp, hl                                        ; $55cd: $f9
	ld a, a                                          ; $55ce: $7f
	ldh a, [c]                                       ; $55cf: $f2
	sub e                                            ; $55d0: $93

jr_01e_55d1:
	ldh [$80], a                                     ; $55d1: $e0 $80
	ld hl, sp+$60                                    ; $55d3: $f8 $60
	db $fc                                           ; $55d5: $fc
	ld hl, sp-$08                                    ; $55d6: $f8 $f8
	nop                                              ; $55d8: $00
	db $fc                                           ; $55d9: $fc
	ld hl, sp+$0c                                    ; $55da: $f8 $0c
	ld [$fe5f], sp                                   ; $55dc: $08 $5f $fe
	ld a, a                                          ; $55df: $7f
	sbc [hl]                                         ; $55e0: $9e
	ld a, a                                          ; $55e1: $7f
	cp $9d                                           ; $55e2: $fe $9d
	inc bc                                           ; $55e4: $03
	ld bc, $fe77                                     ; $55e5: $01 $77 $fe
	sbc h                                            ; $55e8: $9c
	ld bc, $0100                                     ; $55e9: $01 $00 $01
	xor $7f                                          ; $55ec: $ee $7f
	xor b                                            ; $55ee: $a8
	sub d                                            ; $55ef: $92
	cp a                                             ; $55f0: $bf
	ld b, l                                          ; $55f1: $45
	cp a                                             ; $55f2: $bf
	ld b, l                                          ; $55f3: $45
	sbc a                                            ; $55f4: $9f
	ld h, l                                          ; $55f5: $65
	xor a                                            ; $55f6: $af
	ld d, l                                          ; $55f7: $55
	rst SubAFromDE                                          ; $55f8: $df
	cp l                                             ; $55f9: $bd
	rst $38                                          ; $55fa: $ff
	pop hl                                           ; $55fb: $e1
	db $e3                                           ; $55fc: $e3
	ld [hl], e                                       ; $55fd: $73
	sub $67                                          ; $55fe: $d6 $67
	ret nc                                           ; $5600: $d0

	db $fd                                           ; $5601: $fd
	ld a, a                                          ; $5602: $7f
	sbc [hl]                                         ; $5603: $9e
	dec sp                                           ; $5604: $3b
	cp $98                                           ; $5605: $fe $98
	ld a, a                                          ; $5607: $7f
	ret nz                                           ; $5608: $c0

	ld a, a                                          ; $5609: $7f
	rst $38                                          ; $560a: $ff
	ld a, a                                          ; $560b: $7f
	rst $38                                          ; $560c: $ff
	add b                                            ; $560d: $80
	db $fd                                           ; $560e: $fd
	ld e, e                                          ; $560f: $5b
	sub h                                            ; $5610: $94
	sbc [hl]                                         ; $5611: $9e
	adc b                                            ; $5612: $88
	ld h, e                                          ; $5613: $63
	cp $7f                                           ; $5614: $fe $7f
	ld a, [hl]                                       ; $5616: $7e
	sbc [hl]                                         ; $5617: $9e
	ld hl, sp+$77                                    ; $5618: $f8 $77
	halt                                             ; $561a: $76
	di                                               ; $561b: $f3
	rst SubAFromDE                                          ; $561c: $df
	ld h, b                                          ; $561d: $60
	rst SubAFromDE                                          ; $561e: $df

jr_01e_561f:
	add b                                            ; $561f: $80
	rst SubAFromDE                                          ; $5620: $df
	ldh [$fd], a                                     ; $5621: $e0 $fd
	db $db                                           ; $5623: $db
	ccf                                              ; $5624: $3f
	sbc d                                            ; $5625: $9a
	ld a, a                                          ; $5626: $7f
	ld b, b                                          ; $5627: $40
	ccf                                              ; $5628: $3f
	scf                                              ; $5629: $37
	rra                                              ; $562a: $1f
	ld [hl], e                                       ; $562b: $73
	jr nz, jr_01e_561f                               ; $562c: $20 $f1

	jp c, $9ef0                                      ; $562e: $da $f0 $9e

	db $10                                           ; $5631: $10
	sbc $f0                                          ; $5632: $de $f0
	sbc h                                            ; $5634: $9c
	ret nc                                           ; $5635: $d0

	rra                                              ; $5636: $1f
	inc d                                            ; $5637: $14
	ld a, e                                          ; $5638: $7b
	cp $7f                                           ; $5639: $fe $7f
	ld [$fe57], sp                                   ; $563b: $08 $57 $fe
	ld a, [hl]                                       ; $563e: $7e
	pop de                                           ; $563f: $d1
	ld d, a                                          ; $5640: $57
	call nc, $909e                                   ; $5641: $d4 $9e $90
	ld a, e                                          ; $5644: $7b
	ret c                                            ; $5645: $d8

	sbc [hl]                                         ; $5646: $9e
	ld d, b                                          ; $5647: $50
	ld a, e                                          ; $5648: $7b
	cp $9c                                           ; $5649: $fe $9c
	ret nc                                           ; $564b: $d0

	ld [hl], b                                       ; $564c: $70
	ld d, b                                          ; $564d: $50
	ld l, e                                          ; $564e: $6b
	cp $9e                                           ; $564f: $fe $9e

jr_01e_5651:
	ld [hl], b                                       ; $5651: $70
	push af                                          ; $5652: $f5
	ld d, b                                          ; $5653: $50
	ld bc, $dbfd                                     ; $5654: $01 $fd $db
	ld bc, $03df                                     ; $5657: $01 $df $03
	rst SubAFromDE                                          ; $565a: $df
	ld [bc], a                                       ; $565b: $02
	db $dd                                           ; $565c: $dd
	dec b                                            ; $565d: $05
	rst SubAFromDE                                          ; $565e: $df
	ld a, [bc]                                       ; $565f: $0a
	db $dd                                           ; $5660: $dd
	dec bc                                           ; $5661: $0b
	add b                                            ; $5662: $80
	rla                                              ; $5663: $17
	dec d                                            ; $5664: $15
	rla                                              ; $5665: $17
	rla                                              ; $5666: $17
	cpl                                              ; $5667: $2f
	dec l                                            ; $5668: $2d
	cpl                                              ; $5669: $2f
	jr z, jr_01e_566c                                ; $566a: $28 $00

jr_01e_566c:
	nop                                              ; $566c: $00
	ret nz                                           ; $566d: $c0

	ret nz                                           ; $566e: $c0

Call_01e_566f:
	jr nz, jr_01e_5651                               ; $566f: $20 $e0

	jr nz, jr_01e_5693                               ; $5671: $20 $20

	ccf                                              ; $5673: $3f
	ccf                                              ; $5674: $3f
	inc hl                                           ; $5675: $23
	ld [hl+], a                                      ; $5676: $22
	cp l                                             ; $5677: $bd
	rst $38                                          ; $5678: $ff
	cp $fe                                           ; $5679: $fe $fe
	db $dd                                           ; $567b: $dd
	push af                                          ; $567c: $f5
	ld a, a                                          ; $567d: $7f
	ld a, a                                          ; $567e: $7f
	ld sp, hl                                        ; $567f: $f9
	ld sp, hl                                        ; $5680: $f9
	ld a, a                                          ; $5681: $7f
	add b                                            ; $5682: $80
	rst SubAFromHL                                          ; $5683: $d7
	ei                                               ; $5684: $fb
	cp $0f                                           ; $5685: $fe $0f
	rrca                                             ; $5687: $0f
	add l                                            ; $5688: $85
	add l                                            ; $5689: $85
	rst $38                                          ; $568a: $ff
	rst $38                                          ; $568b: $ff
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
	jr jr_01e_56a8                                   ; $568e: $18 $18

	inc h                                            ; $5690: $24
	inc a                                            ; $5691: $3c
	inc h                                            ; $5692: $24

jr_01e_5693:
	inc h                                            ; $5693: $24
	rst $38                                          ; $5694: $ff

jr_01e_5695:
	rst SubAFromBC                                          ; $5695: $e7
	cp h                                             ; $5696: $bc
	and h                                            ; $5697: $a4
	cp $fe                                           ; $5698: $fe $fe
	rlca                                             ; $569a: $07
	rlca                                             ; $569b: $07
	add l                                            ; $569c: $85
	add l                                            ; $569d: $85
	ld c, a                                          ; $569e: $4f
	ld c, e                                          ; $569f: $4b
	sbc $de                                          ; $56a0: $de $de
	sub a                                            ; $56a2: $97
	rst SubAFromHL                                          ; $56a3: $d7
	ld e, a                                          ; $56a4: $5f
	sbc $da                                          ; $56a5: $de $da
	adc a                                            ; $56a7: $8f

jr_01e_56a8:
	adc a                                            ; $56a8: $8f
	ld bc, $7701                                     ; $56a9: $01 $01 $77
	ldh [$f9], a                                     ; $56ac: $e0 $f9
	db $dd                                           ; $56ae: $dd
	add b                                            ; $56af: $80
	db $dd                                           ; $56b0: $dd
	ld b, b                                          ; $56b1: $40
	db $dd                                           ; $56b2: $dd
	and b                                            ; $56b3: $a0
	rst SubAFromDE                                          ; $56b4: $df
	jr nz, jr_01e_5695                               ; $56b5: $20 $de

	ret nc                                           ; $56b7: $d0

	adc [hl]                                         ; $56b8: $8e
	ld d, b                                          ; $56b9: $50
	add sp, -$18                                     ; $56ba: $e8 $e8
	db $fc                                           ; $56bc: $fc
	db $fc                                           ; $56bd: $fc

jr_01e_56be:
	ld b, a                                          ; $56be: $47
	ld b, a                                          ; $56bf: $47
	ld a, a                                          ; $56c0: $7f
	ld a, a                                          ; $56c1: $7f
	ld a, [bc]                                       ; $56c2: $0a
	rrca                                             ; $56c3: $0f
	ld [de], a                                       ; $56c4: $12
	rra                                              ; $56c5: $1f
	ld a, [bc]                                       ; $56c6: $0a
	rrca                                             ; $56c7: $0f
	rlca                                             ; $56c8: $07
	rlca                                             ; $56c9: $07
	ei                                               ; $56ca: $fb
	rst SubAFromDE                                          ; $56cb: $df
	inc e                                            ; $56cc: $1c
	rst SubAFromDE                                          ; $56cd: $df
	inc d                                            ; $56ce: $14
	rst SubAFromDE                                          ; $56cf: $df
	rra                                              ; $56d0: $1f
	sbc [hl]                                         ; $56d1: $9e
	dec b                                            ; $56d2: $05
	sbc $07                                          ; $56d3: $de $07
	db $fd                                           ; $56d5: $fd
	add e                                            ; $56d6: $83
	db $10                                           ; $56d7: $10
	rra                                              ; $56d8: $1f
	ldh a, [$f8]                                     ; $56d9: $f0 $f8
	ld d, b                                          ; $56db: $50
	ei                                               ; $56dc: $fb
	ld d, c                                          ; $56dd: $51
	ld a, [$fb70]                                    ; $56de: $fa $70 $fb
	pop de                                           ; $56e1: $d1
	jp c, $fbf0                                      ; $56e2: $da $f0 $fb

	pop af                                           ; $56e5: $f1
	sbc d                                            ; $56e6: $9a
	ldh a, [$9b]                                     ; $56e7: $f0 $9b
	ldh a, [$fb]                                     ; $56e9: $f0 $fb
	db $10                                           ; $56eb: $10
	jr jr_01e_56be                                   ; $56ec: $18 $d0

	rst SubAFromDE                                          ; $56ee: $df
	rst SubAFromDE                                          ; $56ef: $df
	ld e, a                                          ; $56f0: $5f
	ret nz                                           ; $56f1: $c0

	ret nz                                           ; $56f2: $c0

	db $fc                                           ; $56f3: $fc
	ld a, e                                          ; $56f4: $7b
	sbc [hl]                                         ; $56f5: $9e
	sub b                                            ; $56f6: $90

jr_01e_56f7:
	inc a                                            ; $56f7: $3c
	rst $38                                          ; $56f8: $ff
	ld h, e                                          ; $56f9: $63
	ldh [c], a                                       ; $56fa: $e2
	db $dd                                           ; $56fb: $dd
	ld e, l                                          ; $56fc: $5d
	ld a, l                                          ; $56fd: $7d
	db $fd                                           ; $56fe: $fd
	or d                                             ; $56ff: $b2
	ld [hl], e                                       ; $5700: $73
	ld c, a                                          ; $5701: $4f
	rst GetHLinHL                                          ; $5702: $cf
	pop bc                                           ; $5703: $c1
	ld b, c                                          ; $5704: $41
	ld a, a                                          ; $5705: $7f
	ld [hl], a                                       ; $5706: $77
	adc h                                            ; $5707: $8c
	sbc $ff                                          ; $5708: $de $ff
	ei                                               ; $570a: $fb
	sub l                                            ; $570b: $95
	inc b                                            ; $570c: $04
	db $fc                                           ; $570d: $fc
	inc b                                            ; $570e: $04
	inc c                                            ; $570f: $0c
	inc b                                            ; $5710: $04
	db $ec                                           ; $5711: $ec
	ld b, h                                          ; $5712: $44
	xor h                                            ; $5713: $ac
	add h                                            ; $5714: $84
	ld l, h                                          ; $5715: $6c
	ld h, a                                          ; $5716: $67
	db $fc                                           ; $5717: $fc
	ld a, a                                          ; $5718: $7f
	ldh a, [c]                                       ; $5719: $f2
	ld a, e                                          ; $571a: $7b
	xor $de                                          ; $571b: $ee $de
	db $fc                                           ; $571d: $fc
	rst AddAOntoHL                                          ; $571e: $ef
	sbc h                                            ; $571f: $9c
	ld bc, $0200                                     ; $5720: $01 $00 $02
	ld a, e                                          ; $5723: $7b
	cp $98                                           ; $5724: $fe $98
	dec b                                            ; $5726: $05
	ld bc, $0004                                     ; $5727: $01 $04 $00
	inc b                                            ; $572a: $04
	nop                                              ; $572b: $00
	ld [$fe7b], sp                                   ; $572c: $08 $7b $fe
	sbc [hl]                                         ; $572f: $9e
	db $10                                           ; $5730: $10
	ld a, e                                          ; $5731: $7b
	cp $fb                                           ; $5732: $fe $fb
	ld a, e                                          ; $5734: $7b
	sub l                                            ; $5735: $95
	sbc l                                            ; $5736: $9d
	ret nz                                           ; $5737: $c0

	inc e                                            ; $5738: $1c
	ld a, e                                          ; $5739: $7b
	ei                                               ; $573a: $fb
	rst SubAFromDE                                          ; $573b: $df
	ld bc, $df7f                                     ; $573c: $01 $7f $df
	rst SubAFromDE                                          ; $573f: $df
	add b                                            ; $5740: $80
	rst SubAFromDE                                          ; $5741: $df
	ld b, $fd                                        ; $5742: $06 $fd
	rst SubAFromDE                                          ; $5744: $df
	ldh a, [$9d]                                     ; $5745: $f0 $9d
	ld a, b                                          ; $5747: $78
	ld a, d                                          ; $5748: $7a
	ld sp, hl                                        ; $5749: $f9
	sbc [hl]                                         ; $574a: $9e

jr_01e_574b:
	jr jr_01e_574b                                   ; $574b: $18 $fe

	sub e                                            ; $574d: $93
	inc bc                                           ; $574e: $03
	ld b, b                                          ; $574f: $40
	ld bc, $f800                                     ; $5750: $01 $00 $f8
	ld hl, sp+$78                                    ; $5753: $f8 $78
	ld a, d                                          ; $5755: $7a
	or b                                             ; $5756: $b0
	or b                                             ; $5757: $b0
	ld hl, $de21                                     ; $5758: $21 $21 $de
	jr nz, jr_01e_56f7                               ; $575b: $20 $9a

	ld hl, $7070                                     ; $575d: $21 $70 $70
	cp $fe                                           ; $5760: $fe $fe
	pop af                                           ; $5762: $f1
	sbc [hl]                                         ; $5763: $9e
	add b                                            ; $5764: $80
	ld a, e                                          ; $5765: $7b
	cp $9e                                           ; $5766: $fe $9e
	ld b, b                                          ; $5768: $40
	ld a, e                                          ; $5769: $7b
	cp $9a                                           ; $576a: $fe $9a

jr_01e_576c:
	ret nz                                           ; $576c: $c0

	add b                                            ; $576d: $80
	jr nz, jr_01e_5770                               ; $576e: $20 $00

jr_01e_5770:
	jr nz, @+$75                                     ; $5770: $20 $73

	and d                                            ; $5772: $a2
	sbc [hl]                                         ; $5773: $9e
	jr c, jr_01e_576c                                ; $5774: $38 $f6

	sbc [hl]                                         ; $5776: $9e
	ld d, h                                          ; $5777: $54
	ld [hl], e                                       ; $5778: $73
	cp $fe                                           ; $5779: $fe $fe
	ld a, a                                          ; $577b: $7f
	add l                                            ; $577c: $85
	ld hl, sp-$64                                    ; $577d: $f8 $9c
	ldh [rP1], a                                     ; $577f: $e0 $00
	rlca                                             ; $5781: $07
	ld a, e                                          ; $5782: $7b
	ld [hl], d                                       ; $5783: $72
	ld c, a                                          ; $5784: $4f
	cp $6a                                           ; $5785: $fe $6a
	rst SubAFromHL                                          ; $5787: $d7
	ld a, [$1773]                                    ; $5788: $fa $73 $17
	sbc h                                            ; $578b: $9c
	inc e                                            ; $578c: $1c
	nop                                              ; $578d: $00
	ld [hl+], a                                      ; $578e: $22

jr_01e_578f:
	ld a, e                                          ; $578f: $7b
	ld b, l                                          ; $5790: $45
	sbc d                                            ; $5791: $9a
	inc c                                            ; $5792: $0c
	nop                                              ; $5793: $00
	jr nc, jr_01e_5796                               ; $5794: $30 $00

jr_01e_5796:
	ld a, $6b                                        ; $5796: $3e $6b
	xor $f8                                          ; $5798: $ee $f8
	sbc [hl]                                         ; $579a: $9e
	ldh a, [$73]                                     ; $579b: $f0 $73
	jr c, jr_01e_57f6                                ; $579d: $38 $57

	cp $7f                                           ; $579f: $fe $7f
	xor $f7                                          ; $57a1: $ee $f7
	ld [$9c03], sp                                   ; $57a3: $08 $03 $9c
	ld [$0800], sp                                   ; $57a6: $08 $00 $08
	cp $df                                           ; $57a9: $fe $df
	ldh a, [$9b]                                     ; $57ab: $f0 $9b
	ld e, $1c                                        ; $57ad: $1e $1c
	ld a, [de]                                       ; $57af: $1a
	jr jr_01e_578f                                   ; $57b0: $18 $dd

	inc h                                            ; $57b2: $24
	rst SubAFromDE                                          ; $57b3: $df
	push af                                          ; $57b4: $f5
	ld a, e                                          ; $57b5: $7b
	ldh a, [$de]                                     ; $57b6: $f0 $de
	ldh a, [hDisp1_OBP0]                                     ; $57b8: $f0 $93
	ld d, $14                                        ; $57ba: $16 $14
	ld [de], a                                       ; $57bc: $12
	db $10                                           ; $57bd: $10
	inc h                                            ; $57be: $24
	inc h                                            ; $57bf: $24
	ld [hl+], a                                      ; $57c0: $22
	ld [hl+], a                                      ; $57c1: $22
	ld [$f800], sp                                   ; $57c2: $08 $00 $f8
	ldh a, [$fd]                                     ; $57c5: $f0 $fd
	sub a                                            ; $57c7: $97
	ld c, $0c                                        ; $57c8: $0e $0c
	ld a, [bc]                                       ; $57ca: $0a
	ld [$2222], sp                                   ; $57cb: $08 $22 $22
	jr nz, jr_01e_57f0                               ; $57ce: $20 $20

	ld [hl], a                                       ; $57d0: $77
	ldh a, [$dd]                                     ; $57d1: $f0 $dd
	ldh a, [$9b]                                     ; $57d3: $f0 $9b
	ld b, $04                                        ; $57d5: $06 $04
	ld [bc], a                                       ; $57d7: $02
	nop                                              ; $57d8: $00
	sbc $20                                          ; $57d9: $de $20
	sbc h                                            ; $57db: $9c
	ld hl, $f0f8                                     ; $57dc: $21 $f8 $f0
	ld [hl], a                                       ; $57df: $77
	ldh [$6f], a                                     ; $57e0: $e0 $6f
	ret nc                                           ; $57e2: $d0

	call c, Call_01e_5b08                            ; $57e3: $dc $08 $5b
	ret nc                                           ; $57e6: $d0

	db $dd                                           ; $57e7: $dd
	ld b, $57                                        ; $57e8: $06 $57
	ret nc                                           ; $57ea: $d0

	sbc $06                                          ; $57eb: $de $06
	sbc d                                            ; $57ed: $9a
	rlca                                             ; $57ee: $07
	ld [bc], a                                       ; $57ef: $02

jr_01e_57f0:
	ld a, [$02f2]                                    ; $57f0: $fa $f2 $02
	sbc $fd                                          ; $57f3: $de $fd
	sbc l                                            ; $57f5: $9d

jr_01e_57f6:
	db $ed                                           ; $57f6: $ed
	ld [$ef7b], sp                                   ; $57f7: $08 $7b $ef
	db $dd                                           ; $57fa: $dd
	ld a, [bc]                                       ; $57fb: $0a
	sbc d                                            ; $57fc: $9a
	ld a, [$fc04]                                    ; $57fd: $fa $04 $fc
	db $f4                                           ; $5800: $f4
	db $ed                                           ; $5801: $ed
	db $fd                                           ; $5802: $fd
	ld a, a                                          ; $5803: $7f
	and h                                            ; $5804: $a4
	sbc l                                            ; $5805: $9d
	ld e, $0b                                        ; $5806: $1e $0b
	sbc $24                                          ; $5808: $de $24
	ld a, e                                          ; $580a: $7b
	ldh [$9e], a                                     ; $580b: $e0 $9e
	inc b                                            ; $580d: $04
	sbc $f0                                          ; $580e: $de $f0
	sbc [hl]                                         ; $5810: $9e
	nop                                              ; $5811: $00
	ld a, e                                          ; $5812: $7b
	ld [hl], c                                       ; $5813: $71
	sbc [hl]                                         ; $5814: $9e
	ld d, $de                                        ; $5815: $16 $de
	inc h                                            ; $5817: $24
	sbc d                                            ; $5818: $9a
	ld [hl+], a                                      ; $5819: $22
	db $fc                                           ; $581a: $fc
	db $f4                                           ; $581b: $f4
	inc b                                            ; $581c: $04
	db $fc                                           ; $581d: $fc
	ld [hl], a                                       ; $581e: $77
	and b                                            ; $581f: $a0
	ld a, e                                          ; $5820: $7b
	and c                                            ; $5821: $a1
	sbc [hl]                                         ; $5822: $9e
	ld c, $dd                                        ; $5823: $0e $dd
	ld [hl+], a                                      ; $5825: $22

jr_01e_5826:
	sbc e                                            ; $5826: $9b
	db $f4                                           ; $5827: $f4
	dec b                                            ; $5828: $05
	db $fd                                           ; $5829: $fd
	push af                                          ; $582a: $f5
	ld [hl], a                                       ; $582b: $77
	sbc a                                            ; $582c: $9f
	ld [hl], a                                       ; $582d: $77
	and c                                            ; $582e: $a1
	ld a, e                                          ; $582f: $7b
	ld [hl], c                                       ; $5830: $71
	sbc [hl]                                         ; $5831: $9e
	jr nz, jr_01e_58af                               ; $5832: $20 $7b

	pop af                                           ; $5834: $f1
	sbc [hl]                                         ; $5835: $9e
	cp $77                                           ; $5836: $fe $77
	ret nc                                           ; $5838: $d0

	ld l, e                                          ; $5839: $6b
	ld [hl], c                                       ; $583a: $71
	sbc d                                            ; $583b: $9a
	ld [hl+], a                                      ; $583c: $22
	or $00                                           ; $583d: $f6 $00

jr_01e_583f:
	ld hl, sp+$03                                    ; $583f: $f8 $03
	ld a, e                                          ; $5841: $7b
	pop de                                           ; $5842: $d1
	sbc [hl]                                         ; $5843: $9e
	nop                                              ; $5844: $00
	ld [hl], a                                       ; $5845: $77
	jr nc, jr_01e_5826                               ; $5846: $30 $de

	ld [hl+], a                                      ; $5848: $22
	sbc d                                            ; $5849: $9a
	jr nz, @-$03                                     ; $584a: $20 $fb

	di                                               ; $584c: $f3
	db $fd                                           ; $584d: $fd
	push af                                          ; $584e: $f5
	ld h, a                                          ; $584f: $67
	ld h, b                                          ; $5850: $60
	db $dd                                           ; $5851: $dd
	jr nz, jr_01e_58ab                               ; $5852: $20 $57

	ld h, b                                          ; $5854: $60
	db $dd                                           ; $5855: $dd
	ld h, $57                                        ; $5856: $26 $57
	ld h, b                                          ; $5858: $60
	sbc $26                                          ; $5859: $de $26
	sbc [hl]                                         ; $585b: $9e
	daa                                              ; $585c: $27
	ld a, e                                          ; $585d: $7b
	or b                                             ; $585e: $b0
	sbc [hl]                                         ; $585f: $9e
	dec b                                            ; $5860: $05
	halt                                             ; $5861: $76
	rst AddAOntoHL                                          ; $5862: $ef
	ld [hl], a                                       ; $5863: $77
	ret nz                                           ; $5864: $c0

	db $dd                                           ; $5865: $dd
	ld h, $7b                                        ; $5866: $26 $7b
	pop af                                           ; $5868: $f1
	sbc [hl]                                         ; $5869: $9e
	db $fd                                           ; $586a: $fd
	ld a, e                                          ; $586b: $7b
	or c                                             ; $586c: $b1
	sbc [hl]                                         ; $586d: $9e
	nop                                              ; $586e: $00
	ld [hl], a                                       ; $586f: $77
	ret nz                                           ; $5870: $c0

	rst SubAFromDE                                          ; $5871: $df
	ld h, $df                                        ; $5872: $26 $df
	ld [hl+], a                                      ; $5874: $22
	ld a, e                                          ; $5875: $7b
	pop af                                           ; $5876: $f1
	ld a, a                                          ; $5877: $7f
	or b                                             ; $5878: $b0
	sbc $f0                                          ; $5879: $de $f0
	ld l, [hl]                                       ; $587b: $6e
	ldh a, [$df]                                     ; $587c: $f0 $df
	ld [hl+], a                                      ; $587e: $22
	ld a, a                                          ; $587f: $7f
	pop bc                                           ; $5880: $c1
	sbc l                                            ; $5881: $9d
	ld bc, $77f9                                     ; $5882: $01 $f9 $77
	and b                                            ; $5885: $a0
	ld h, [hl]                                       ; $5886: $66
	ldh a, [$7f]                                     ; $5887: $f0 $7f
	ld d, d                                          ; $5889: $52
	db $dd                                           ; $588a: $dd
	ldh a, [$7f]                                     ; $588b: $f0 $7f
	rst AddAOntoHL                                          ; $588d: $ef
	ld a, e                                          ; $588e: $7b
	ld d, c                                          ; $588f: $51
	sbc [hl]                                         ; $5890: $9e
	inc c                                            ; $5891: $0c
	db $dd                                           ; $5892: $dd
	ld [hl+], a                                      ; $5893: $22
	ld a, e                                          ; $5894: $7b
	ld hl, $069e                                     ; $5895: $21 $9e $06
	ld [hl], a                                       ; $5898: $77
	or b                                             ; $5899: $b0
	ld a, e                                          ; $589a: $7b
	ld d, c                                          ; $589b: $51
	sbc [hl]                                         ; $589c: $9e
	inc b                                            ; $589d: $04
	db $dd                                           ; $589e: $dd
	jr nz, jr_01e_583f                               ; $589f: $20 $9e

	cp $7b                                           ; $58a1: $fe $7b
	ld e, a                                          ; $58a3: $5f
	ld [hl], a                                       ; $58a4: $77
	or b                                             ; $58a5: $b0
	ld a, a                                          ; $58a6: $7f
	jp nc, $207f                                     ; $58a7: $d2 $7f $20

	ld a, a                                          ; $58aa: $7f

jr_01e_58ab:
	jp nc, $0adf                                     ; $58ab: $d2 $df $0a

	ld a, a                                          ; $58ae: $7f

jr_01e_58af:
	ldh a, [c]                                       ; $58af: $f2
	ld a, a                                          ; $58b0: $7f
	ld a, [hl]                                       ; $58b1: $7e
	db $dd                                           ; $58b2: $dd
	ldh a, [rPCM34]                                  ; $58b3: $f0 $77
	jr nz, @-$1f                                     ; $58b5: $20 $df

	ld a, [bc]                                       ; $58b7: $0a
	rst SubAFromDE                                          ; $58b8: $df
	ld [$117b], sp                                   ; $58b9: $08 $7b $11
	sbc [hl]                                         ; $58bc: $9e
	db $f4                                           ; $58bd: $f4
	ld h, a                                          ; $58be: $67
	jr nz, jr_01e_5940                               ; $58bf: $20 $7f

	adc $de                                          ; $58c1: $ce $de
	inc b                                            ; $58c3: $04
	ld a, d                                          ; $58c4: $7a
	rst $38                                          ; $58c5: $ff
	db $dd                                           ; $58c6: $dd
	ldh a, [$7b]                                     ; $58c7: $f0 $7b
	and c                                            ; $58c9: $a1
	sbc d                                            ; $58ca: $9a
	ld [de], a                                       ; $58cb: $12
	inc b                                            ; $58cc: $04
	inc b                                            ; $58cd: $04
	dec b                                            ; $58ce: $05
	ld l, $7b                                        ; $58cf: $2e $7b
	and c                                            ; $58d1: $a1
	ld a, a                                          ; $58d2: $7f
	ldh a, [$7f]                                     ; $58d3: $f0 $7f
	adc $9e                                          ; $58d5: $ce $9e
	nop                                              ; $58d7: $00
	ld a, e                                          ; $58d8: $7b
	and c                                            ; $58d9: $a1
	sbc [hl]                                         ; $58da: $9e
	ld a, [bc]                                       ; $58db: $0a
	sbc $2e                                          ; $58dc: $de $2e
	sbc [hl]                                         ; $58de: $9e
	inc l                                            ; $58df: $2c
	ld a, e                                          ; $58e0: $7b
	and c                                            ; $58e1: $a1
	sbc [hl]                                         ; $58e2: $9e
	cp $77                                           ; $58e3: $fe $77
	add b                                            ; $58e5: $80
	halt                                             ; $58e6: $76
	or b                                             ; $58e7: $b0
	db $dd                                           ; $58e8: $dd
	inc l                                            ; $58e9: $2c
	sbc h                                            ; $58ea: $9c
	or $f8                                           ; $58eb: $f6 $f8
	ei                                               ; $58ed: $fb
	ld a, e                                          ; $58ee: $7b
	ldh [c], a                                       ; $58ef: $e2
	ld a, e                                          ; $58f0: $7b
	cp [hl]                                          ; $58f1: $be
	ld a, e                                          ; $58f2: $7b
	cp a                                             ; $58f3: $bf
	sbc [hl]                                         ; $58f4: $9e
	dec l                                            ; $58f5: $2d
	ld a, e                                          ; $58f6: $7b
	nop                                              ; $58f7: $00
	ld a, e                                          ; $58f8: $7b

jr_01e_58f9:
	and c                                            ; $58f9: $a1
	sbc [hl]                                         ; $58fa: $9e
	ld hl, sp+$77                                    ; $58fb: $f8 $77
	sbc a                                            ; $58fd: $9f
	ld h, a                                          ; $58fe: $67
	ld h, b                                          ; $58ff: $60
	sbc e                                            ; $5900: $9b
	inc bc                                           ; $5901: $03
	ei                                               ; $5902: $fb
	di                                               ; $5903: $f3
	ld [$5f77], sp                                   ; $5904: $08 $77 $5f
	ld l, d                                          ; $5907: $6a
	or b                                             ; $5908: $b0
	sbc [hl]                                         ; $5909: $9e
	jr nz, @+$7d                                     ; $590a: $20 $7b

	ld [hl], d                                       ; $590c: $72
	ld [hl], c                                       ; $590d: $71
	rst $38                                          ; $590e: $ff
	ld [hl], a                                       ; $590f: $77
	sub b                                            ; $5910: $90
	db $dd                                           ; $5911: $dd
	jr nz, jr_01e_598a                               ; $5912: $20 $76

	pop hl                                           ; $5914: $e1
	ld l, d                                          ; $5915: $6a
	or b                                             ; $5916: $b0
	sbc [hl]                                         ; $5917: $9e
	ld a, [de]                                       ; $5918: $1a
	ld a, e                                          ; $5919: $7b
	pop de                                           ; $591a: $d1
	sbc [hl]                                         ; $591b: $9e
	inc h                                            ; $591c: $24
	ld h, a                                          ; $591d: $67
	ret nz                                           ; $591e: $c0

	ld a, a                                          ; $591f: $7f
	ld d, d                                          ; $5920: $52
	ld a, a                                          ; $5921: $7f
	adc $dd                                          ; $5922: $ce $dd
	inc h                                            ; $5924: $24

jr_01e_5925:
	ld h, [hl]                                       ; $5925: $66
	ret nz                                           ; $5926: $c0

	ld h, a                                          ; $5927: $67
	ret nc                                           ; $5928: $d0

	ld a, a                                          ; $5929: $7f
	ld [bc], a                                       ; $592a: $02
	sbc l                                            ; $592b: $9d
	pop af                                           ; $592c: $f1
	ld [bc], a                                       ; $592d: $02
	sbc $f0                                          ; $592e: $de $f0
	sbc [hl]                                         ; $5930: $9e
	db $fc                                           ; $5931: $fc
	ld a, e                                          ; $5932: $7b
	ret nc                                           ; $5933: $d0

	halt                                             ; $5934: $76
	and b                                            ; $5935: $a0
	sbc d                                            ; $5936: $9a
	ld [hl+], a                                      ; $5937: $22
	ld sp, hl                                        ; $5938: $f9
	ld bc, $08f9                                     ; $5939: $01 $f9 $08
	ld a, e                                          ; $593c: $7b
	ld e, h                                          ; $593d: $5c
	ld a, [hl]                                       ; $593e: $7e
	and b                                            ; $593f: $a0

jr_01e_5940:
	ld a, a                                          ; $5940: $7f
	and c                                            ; $5941: $a1
	sbc e                                            ; $5942: $9b
	ld a, [de]                                       ; $5943: $1a
	ld [hl+], a                                      ; $5944: $22
	ld [hl+], a                                      ; $5945: $22
	inc hl                                           ; $5946: $23
	ld a, d                                          ; $5947: $7a
	ldh [$6e], a                                     ; $5948: $e0 $6e
	ld b, b                                          ; $594a: $40
	ld [hl], a                                       ; $594b: $77
	ret nz                                           ; $594c: $c0

	ld [hl], d                                       ; $594d: $72
	ld b, b                                          ; $594e: $40
	ld l, e                                          ; $594f: $6b
	cp a                                             ; $5950: $bf
	ld [hl], a                                       ; $5951: $77
	ld b, b                                          ; $5952: $40
	halt                                             ; $5953: $76
	ld b, b                                          ; $5954: $40
	ld a, e                                          ; $5955: $7b
	add d                                            ; $5956: $82

jr_01e_5957:
	ld [hl], e                                       ; $5957: $73
	and b                                            ; $5958: $a0
	ld [hl], a                                       ; $5959: $77
	ld b, b                                          ; $595a: $40
	db $dd                                           ; $595b: $dd
	jr nz, jr_01e_58f9                               ; $595c: $20 $9b

	ldh a, [$fe]                                     ; $595e: $f0 $fe
	or $01                                           ; $5960: $f6 $01
	ld [hl], l                                       ; $5962: $75
	xor a                                            ; $5963: $af
	ld [hl], a                                       ; $5964: $77
	ld e, a                                          ; $5965: $5f
	sbc [hl]                                         ; $5966: $9e
	ld hl, $06de                                     ; $5967: $21 $de $06
	ld a, a                                          ; $596a: $7f
	or d                                             ; $596b: $b2
	ld l, a                                          ; $596c: $6f
	ret nc                                           ; $596d: $d0

	ld [hl], c                                       ; $596e: $71
	or b                                             ; $596f: $b0
	sbc $04                                          ; $5970: $de $04
	ld a, a                                          ; $5972: $7f
	scf                                              ; $5973: $37
	ld a, d                                          ; $5974: $7a
	cp [hl]                                          ; $5975: $be
	ld l, e                                          ; $5976: $6b
	jr nc, jr_01e_5957                               ; $5977: $30 $de

	inc b                                            ; $5979: $04
	halt                                             ; $597a: $76
	ld [hl], d                                       ; $597b: $72
	ld a, a                                          ; $597c: $7f
	ret nz                                           ; $597d: $c0

	ld l, c                                          ; $597e: $69
	ldh [$dd], a                                     ; $597f: $e0 $dd
	ld a, [bc]                                       ; $5981: $0a

jr_01e_5982:
	ld d, a                                          ; $5982: $57
	ld h, b                                          ; $5983: $60
	db $dd                                           ; $5984: $dd
	ld [$d17b], sp                                   ; $5985: $08 $7b $d1
	ld a, a                                          ; $5988: $7f
	or b                                             ; $5989: $b0

jr_01e_598a:
	ld l, a                                          ; $598a: $6f
	jr nc, jr_01e_5925                               ; $598b: $30 $98

	jr jr_01e_5997                                   ; $598d: $18 $08

	ld [$2209], sp                                   ; $598f: $08 $09 $22
	ld sp, hl                                        ; $5992: $f9
	pop af                                           ; $5993: $f1
	ld e, l                                          ; $5994: $5d
	ld d, b                                          ; $5995: $50
	db $dd                                           ; $5996: $dd

jr_01e_5997:
	ld [hl+], a                                      ; $5997: $22
	ld d, l                                          ; $5998: $55
	ldh a, [$65]                                     ; $5999: $f0 $65
	ldh [rHDMA5], a                                  ; $599b: $e0 $55
	jr nz, jr_01e_5a1e                               ; $599d: $20 $7f

	pop af                                           ; $599f: $f1
	ld l, [hl]                                       ; $59a0: $6e
	and b                                            ; $59a1: $a0
	halt                                             ; $59a2: $76
	jr nc, jr_01e_5982                               ; $59a3: $30 $dd

	inc b                                            ; $59a5: $04
	ld a, c                                          ; $59a6: $79
	ld h, b                                          ; $59a7: $60

jr_01e_59a8:
	ld h, d                                          ; $59a8: $62
	jr nc, jr_01e_59a8                               ; $59a9: $30 $fd

	ld a, a                                          ; $59ab: $7f
	and c                                            ; $59ac: $a1
	ld a, d                                          ; $59ad: $7a
	ld d, b                                          ; $59ae: $50
	ld [hl], d                                       ; $59af: $72
	jr nc, jr_01e_5a2f                               ; $59b0: $30 $7d

	rst GetHLinHL                                          ; $59b2: $cf
	sub a                                            ; $59b3: $97
	nop                                              ; $59b4: $00
	ld bc, $0a0a                                     ; $59b5: $01 $0a $0a
	ld hl, sp-$04                                    ; $59b8: $f8 $fc
	db $f4                                           ; $59ba: $f4
	db $fc                                           ; $59bb: $fc
	ld [hl], a                                       ; $59bc: $77
	sbc a                                            ; $59bd: $9f
	ld [hl], a                                       ; $59be: $77
	db $10                                           ; $59bf: $10
	ld a, d                                          ; $59c0: $7a
	ld sp, $307e                                     ; $59c1: $31 $7e $30
	ld e, e                                          ; $59c4: $5b
	db $10                                           ; $59c5: $10
	ld [hl], h                                       ; $59c6: $74
	rst AddAOntoHL                                          ; $59c7: $ef
	ld d, a                                          ; $59c8: $57
	db $10                                           ; $59c9: $10
	db $dd                                           ; $59ca: $dd
	ld b, $77                                        ; $59cb: $06 $77
	ldh a, [$73]                                     ; $59cd: $f0 $73
	ld a, a                                          ; $59cf: $7f
	ld a, e                                          ; $59d0: $7b
	ld [hl], b                                       ; $59d1: $70
	ld a, h                                          ; $59d2: $7c
	db $e3                                           ; $59d3: $e3
	rst SubAFromDE                                          ; $59d4: $df
	ld [bc], a                                       ; $59d5: $02
	ld a, e                                          ; $59d6: $7b
	pop af                                           ; $59d7: $f1
	sbc [hl]                                         ; $59d8: $9e
	ei                                               ; $59d9: $fb
	ld [hl], a                                       ; $59da: $77
	ld d, b                                          ; $59db: $50
	ld [hl], a                                       ; $59dc: $77
	pop de                                           ; $59dd: $d1
	sbc $02                                          ; $59de: $de $02
	sbc l                                            ; $59e0: $9d
	nop                                              ; $59e1: $00
	di                                               ; $59e2: $f3
	ld l, d                                          ; $59e3: $6a
	ld l, a                                          ; $59e4: $6f
	ld [hl], a                                       ; $59e5: $77
	ld [hl], b                                       ; $59e6: $70
	cp $9e                                           ; $59e7: $fe $9e
	ld bc, $417a                                     ; $59e9: $01 $7a $41
	ld [hl], l                                       ; $59ec: $75
	ld hl, $f37d                                     ; $59ed: $21 $7d $f3
	ld a, e                                          ; $59f0: $7b
	xor a                                            ; $59f1: $af
	rst SubAFromDE                                          ; $59f2: $df
	ld h, $df                                        ; $59f3: $26 $df
	inc h                                            ; $59f5: $24
	ld l, d                                          ; $59f6: $6a
	ld b, c                                          ; $59f7: $41
	ld [hl], e                                       ; $59f8: $73
	ld [hl], b                                       ; $59f9: $70
	db $dd                                           ; $59fa: $dd
	inc h                                            ; $59fb: $24
	ld a, e                                          ; $59fc: $7b
	jp nc, $a069                                     ; $59fd: $d2 $69 $a0

jr_01e_5a00:
	ld a, [hl]                                       ; $5a00: $7e
	and d                                            ; $5a01: $a2
	sbc e                                            ; $5a02: $9b
	inc h                                            ; $5a03: $24
	dec h                                            ; $5a04: $25
	inc l                                            ; $5a05: $2c
	inc l                                            ; $5a06: $2c
	ld [hl], a                                       ; $5a07: $77
	pop af                                           ; $5a08: $f1
	ld [hl], a                                       ; $5a09: $77
	ret nz                                           ; $5a0a: $c0

	ld [hl], l                                       ; $5a0b: $75
	jr nc, @-$21                                     ; $5a0c: $30 $dd

	inc l                                            ; $5a0e: $2c
	ld a, a                                          ; $5a0f: $7f
	pop af                                           ; $5a10: $f1
	ld e, h                                          ; $5a11: $5c
	ldh a, [$dd]                                     ; $5a12: $f0 $dd
	ld a, [hl+]                                      ; $5a14: $2a
	ld d, a                                          ; $5a15: $57
	nop                                              ; $5a16: $00
	db $dd                                           ; $5a17: $dd
	jr z, jr_01e_5a71                                ; $5a18: $28 $57

	nop                                              ; $5a1a: $00
	sbc $28                                          ; $5a1b: $de $28
	sbc h                                            ; $5a1d: $9c

jr_01e_5a1e:
	add hl, hl                                       ; $5a1e: $29
	ld [$6f00], sp                                   ; $5a1f: $08 $00 $6f
	and b                                            ; $5a22: $a0
	ld [hl], a                                       ; $5a23: $77
	ret nc                                           ; $5a24: $d0

	db $dd                                           ; $5a25: $dd
	ld [bc], a                                       ; $5a26: $02
	ld d, a                                          ; $5a27: $57
	ret nc                                           ; $5a28: $d0

	db $fd                                           ; $5a29: $fd
	ld d, a                                          ; $5a2a: $57
	ret nc                                           ; $5a2b: $d0

	ld [hl], a                                       ; $5a2c: $77
	ld h, b                                          ; $5a2d: $60
	ld h, a                                          ; $5a2e: $67

jr_01e_5a2f:
	ldh [rPCM34], a                                  ; $5a2f: $e0 $77
	sub b                                            ; $5a31: $90
	ld h, l                                          ; $5a32: $65
	ret nc                                           ; $5a33: $d0

	db $dd                                           ; $5a34: $dd
	ldh a, [rPCM34]                                  ; $5a35: $f0 $77
	ret nz                                           ; $5a37: $c0

	ld d, l                                          ; $5a38: $55
	ret nz                                           ; $5a39: $c0

	ld h, h                                          ; $5a3a: $64
	ret nz                                           ; $5a3b: $c0

	ld d, a                                          ; $5a3c: $57
	ret nz                                           ; $5a3d: $c0

	sbc $22                                          ; $5a3e: $de $22
	sbc [hl]                                         ; $5a40: $9e
	inc hl                                           ; $5a41: $23
	ld h, a                                          ; $5a42: $67
	ldh [$7f], a                                     ; $5a43: $e0 $7f
	jp nz, $ce7f                                     ; $5a45: $c2 $7f $ce

	db $dd                                           ; $5a48: $dd
	ld [hl+], a                                      ; $5a49: $22
	ld h, l                                          ; $5a4a: $65
	ld d, b                                          ; $5a4b: $50
	ld l, b                                          ; $5a4c: $68
	or b                                             ; $5a4d: $b0
	ld [hl], l                                       ; $5a4e: $75
	ld h, b                                          ; $5a4f: $60
	sbc [hl]                                         ; $5a50: $9e
	inc bc                                           ; $5a51: $03
	ld d, h                                          ; $5a52: $54
	or b                                             ; $5a53: $b0
	ld a, a                                          ; $5a54: $7f
	pop hl                                           ; $5a55: $e1
	sbc l                                            ; $5a56: $9d
	rlca                                             ; $5a57: $07
	rst $38                                          ; $5a58: $ff
	ld l, a                                          ; $5a59: $6f
	db $10                                           ; $5a5a: $10
	ld a, a                                          ; $5a5b: $7f
	sbc $7e                                          ; $5a5c: $de $7e
	ld d, d                                          ; $5a5e: $52
	rst SubAFromDE                                          ; $5a5f: $df
	jr z, jr_01e_5a00                                ; $5a60: $28 $9e

	rst FarCall                                          ; $5a62: $f7
	ld l, d                                          ; $5a63: $6a
	rst SubAFromDE                                          ; $5a64: $df
	ld [hl], h                                       ; $5a65: $74
	or e                                             ; $5a66: $b3
	sbc e                                            ; $5a67: $9b
	jr z, jr_01e_5ad0                                ; $5a68: $28 $66

	ld h, $24                                        ; $5a6a: $26 $24
	ld a, e                                          ; $5a6c: $7b
	ret nc                                           ; $5a6d: $d0

	ld a, h                                          ; $5a6e: $7c
	rst AddAOntoHL                                          ; $5a6f: $ef
	ld a, e                                          ; $5a70: $7b

jr_01e_5a71:
	ret nc                                           ; $5a71: $d0

	ld [hl], a                                       ; $5a72: $77
	and b                                            ; $5a73: $a0
	sbc $24                                          ; $5a74: $de $24
	sbc e                                            ; $5a76: $9b
	ld h, h                                          ; $5a77: $64
	di                                               ; $5a78: $f3
	ei                                               ; $5a79: $fb
	di                                               ; $5a7a: $f3
	ld a, b                                          ; $5a7b: $78
	ret nz                                           ; $5a7c: $c0

	sub h                                            ; $5a7d: $94
	nop                                              ; $5a7e: $00

Call_01e_5a7f:
	rst $38                                          ; $5a7f: $ff
	nop                                              ; $5a80: $00
	inc c                                            ; $5a81: $0c
	inc c                                            ; $5a82: $0c
	inc d                                            ; $5a83: $14
	inc h                                            ; $5a84: $24
	ld h, [hl]                                       ; $5a85: $66
	daa                                              ; $5a86: $27
	inc c                                            ; $5a87: $0c
	db $fc                                           ; $5a88: $fc
	ld a, b                                          ; $5a89: $78
	sbc a                                            ; $5a8a: $9f
	sbc [hl]                                         ; $5a8b: $9e
	rst $38                                          ; $5a8c: $ff
	sbc $ef                                          ; $5a8d: $de $ef
	ld [hl], a                                       ; $5a8f: $77
	and b                                            ; $5a90: $a0
	db $dd                                           ; $5a91: $dd
	inc c                                            ; $5a92: $0c
	sub a                                            ; $5a93: $97
	ld a, [$04fb]                                    ; $5a94: $fa $fb $04
	db $fc                                           ; $5a97: $fc
	rst $38                                          ; $5a98: $ff
	rst AddAOntoHL                                          ; $5a99: $ef
	rst $38                                          ; $5a9a: $ff
	rst $38                                          ; $5a9b: $ff
	ld [hl], a                                       ; $5a9c: $77
	and b                                            ; $5a9d: $a0
	rst SubAFromDE                                          ; $5a9e: $df
	ld [bc], a                                       ; $5a9f: $02
	rst SubAFromDE                                          ; $5aa0: $df
	ld a, [bc]                                       ; $5aa1: $0a
	ld a, a                                          ; $5aa2: $7f
	db $e3                                           ; $5aa3: $e3
	ld a, a                                          ; $5aa4: $7f
	ei                                               ; $5aa5: $fb
	sbc e                                            ; $5aa6: $9b
	rst FarCall                                          ; $5aa7: $f7
	rst AddAOntoHL                                          ; $5aa8: $ef
	nop                                              ; $5aa9: $00
	dec bc                                           ; $5aaa: $0b
	xor c                                            ; $5aab: $a9
	ld [bc], a                                       ; $5aac: $02
	rst $38                                          ; $5aad: $ff
	rst SubAFromDE                                          ; $5aae: $df
	dec a                                            ; $5aaf: $3d
	add b                                            ; $5ab0: $80
	inc de                                           ; $5ab1: $13
	rra                                              ; $5ab2: $1f
	ld sp, hl                                        ; $5ab3: $f9
	rst $38                                          ; $5ab4: $ff
	ld b, a                                          ; $5ab5: $47
	ld a, a                                          ; $5ab6: $7f
	ld [hl-], a                                      ; $5ab7: $32
	ccf                                              ; $5ab8: $3f
	dec h                                            ; $5ab9: $25
	ccf                                              ; $5aba: $3f
	ld b, h                                          ; $5abb: $44
	ld a, a                                          ; $5abc: $7f
	ld c, h                                          ; $5abd: $4c
	ld a, a                                          ; $5abe: $7f
	ld c, [hl]                                       ; $5abf: $4e
	ld a, e                                          ; $5ac0: $7b
	ccf                                              ; $5ac1: $3f
	dec a                                            ; $5ac2: $3d
	dec hl                                           ; $5ac3: $2b
	ld [hl], $3f                                     ; $5ac4: $36 $3f
	ld h, $1f                                        ; $5ac6: $26 $1f
	ld d, $0f                                        ; $5ac8: $16 $0f
	add hl, bc                                       ; $5aca: $09
	ld b, $05                                        ; $5acb: $06 $05
	nop                                              ; $5acd: $00
	nop                                              ; $5ace: $00
	ret nz                                           ; $5acf: $c0

jr_01e_5ad0:
	add b                                            ; $5ad0: $80
	ret nz                                           ; $5ad1: $c0

	inc [hl]                                         ; $5ad2: $34
	db $f4                                           ; $5ad3: $f4
	adc [hl]                                         ; $5ad4: $8e
	cp $fc                                           ; $5ad5: $fe $fc
	db $fc                                           ; $5ad7: $fc
	adc d                                            ; $5ad8: $8a
	cp $26                                           ; $5ad9: $fe $26
	cp $96                                           ; $5adb: $fe $96
	cp $d5                                           ; $5add: $fe $d5
	rst $38                                          ; $5adf: $ff
	db $fd                                           ; $5ae0: $fd
	cp a                                             ; $5ae1: $bf
	ld a, [$be6e]                                    ; $5ae2: $fa $6e $be
	ld [hl], d                                       ; $5ae5: $72
	cp $62                                           ; $5ae6: $fe $62
	db $fc                                           ; $5ae8: $fc
	ld h, h                                          ; $5ae9: $64
	ld hl, sp-$78                                    ; $5aea: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $5aec: $f0 $90
	rrca                                             ; $5aee: $0f
	dec bc                                           ; $5aef: $0b
	sbc e                                            ; $5af0: $9b
	rra                                              ; $5af1: $1f
	dec d                                            ; $5af2: $15
	rra                                              ; $5af3: $1f
	inc de                                           ; $5af4: $13
	ld l, a                                          ; $5af5: $6f
	db $fc                                           ; $5af6: $fc
	sbc e                                            ; $5af7: $9b
	rrca                                             ; $5af8: $0f
	dec c                                            ; $5af9: $0d
	rrca                                             ; $5afa: $0f
	add hl, bc                                       ; $5afb: $09
	ld a, e                                          ; $5afc: $7b
	cp $8a                                           ; $5afd: $fe $8a
	dec bc                                           ; $5aff: $0b
	rlca                                             ; $5b00: $07
	rlca                                             ; $5b01: $07
	inc bc                                           ; $5b02: $03
	inc bc                                           ; $5b03: $03
	rlca                                             ; $5b04: $07
	rlca                                             ; $5b05: $07
	rrca                                             ; $5b06: $0f
	rrca                                             ; $5b07: $0f

Call_01e_5b08:
	ld a, a                                          ; $5b08: $7f
	ld a, a                                          ; $5b09: $7f
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	ld hl, sp-$18                                    ; $5b0c: $f8 $e8
	db $fc                                           ; $5b0e: $fc
	ld d, h                                          ; $5b0f: $54
	cp $62                                           ; $5b10: $fe $62
	cp $52                                           ; $5b12: $fe $52
	ld a, e                                          ; $5b14: $7b
	ret nc                                           ; $5b15: $d0

	sbc d                                            ; $5b16: $9a
	ld d, h                                          ; $5b17: $54
	db $fc                                           ; $5b18: $fc
	call z, $c8f8                                    ; $5b19: $cc $f8 $c8
	ld a, e                                          ; $5b1c: $7b
	cp $94                                           ; $5b1d: $fe $94
	ld c, b                                          ; $5b1f: $48
	ld hl, sp+$78                                    ; $5b20: $f8 $78
	ld h, b                                          ; $5b22: $60
	ld h, b                                          ; $5b23: $60
	ld [hl], b                                       ; $5b24: $70
	ld [hl], b                                       ; $5b25: $70
	ld a, b                                          ; $5b26: $78
	ld a, b                                          ; $5b27: $78
	rst $38                                          ; $5b28: $ff
	rst $38                                          ; $5b29: $ff
	ld sp, hl                                        ; $5b2a: $f9
	rst SubAFromDE                                          ; $5b2b: $df
	inc bc                                           ; $5b2c: $03
	adc b                                            ; $5b2d: $88
	inc a                                            ; $5b2e: $3c
	ccf                                              ; $5b2f: $3f
	ld de, $661f                                     ; $5b30: $11 $1f $66
	ld a, a                                          ; $5b33: $7f
	adc d                                            ; $5b34: $8a
	rst $38                                          ; $5b35: $ff
	ld d, e                                          ; $5b36: $53
	ld a, a                                          ; $5b37: $7f
	ld d, h                                          ; $5b38: $54
	ld a, a                                          ; $5b39: $7f
	ld h, h                                          ; $5b3a: $64
	ld a, a                                          ; $5b3b: $7f
	ld b, h                                          ; $5b3c: $44
	ld a, a                                          ; $5b3d: $7f
	ld b, [hl]                                       ; $5b3e: $46
	ld a, a                                          ; $5b3f: $7f
	ld h, $3f                                        ; $5b40: $26 $3f
	dec l                                            ; $5b42: $2d
	dec sp                                           ; $5b43: $3b
	rlca                                             ; $5b44: $07
	ld a, e                                          ; $5b45: $7b
	add b                                            ; $5b46: $80
	db $fd                                           ; $5b47: $fd
	rst SubAFromDE                                          ; $5b48: $df
	ldh a, [hDisp0_OBP1]                                     ; $5b49: $f0 $87
	ld [$8cf8], sp                                   ; $5b4b: $08 $f8 $8c
	db $fc                                           ; $5b4e: $fc
	ld [hl], d                                       ; $5b4f: $72
	cp $9a                                           ; $5b50: $fe $9a
	cp $05                                           ; $5b52: $fe $05
	rst $38                                          ; $5b54: $ff
	and l                                            ; $5b55: $a5
	rst $38                                          ; $5b56: $ff
	sub l                                            ; $5b57: $95
	rst $38                                          ; $5b58: $ff
	push de                                          ; $5b59: $d5
	rst $38                                          ; $5b5a: $ff
	jp z, $e6fe                                      ; $5b5b: $ca $fe $e6

	cp d                                             ; $5b5e: $ba
	ld a, b                                          ; $5b5f: $78
	adc b                                            ; $5b60: $88
	db $fc                                           ; $5b61: $fc
	sbc h                                            ; $5b62: $9c
	ld h, e                                          ; $5b63: $63
	add b                                            ; $5b64: $80
	sbc [hl]                                         ; $5b65: $9e
	dec de                                           ; $5b66: $1b
	ld [hl], e                                       ; $5b67: $73
	add h                                            ; $5b68: $84
	ld c, e                                          ; $5b69: $4b
	add d                                            ; $5b6a: $82
	rst $38                                          ; $5b6b: $ff
	sbc l                                            ; $5b6c: $9d
	db $fc                                           ; $5b6d: $fc
	db $e4                                           ; $5b6e: $e4
	ld [hl], a                                       ; $5b6f: $77
	add h                                            ; $5b70: $84
	ld a, a                                          ; $5b71: $7f
	db $fc                                           ; $5b72: $fc
	ld a, e                                          ; $5b73: $7b
	ld d, d                                          ; $5b74: $52
	ld [hl], a                                       ; $5b75: $77
	add h                                            ; $5b76: $84
	dec sp                                           ; $5b77: $3b
	add d                                            ; $5b78: $82
	rst SubAFromDE                                          ; $5b79: $df
	add hl, bc                                       ; $5b7a: $09
	add b                                            ; $5b7b: $80
	ld d, $1f                                        ; $5b7c: $16 $1f
	ld de, $281f                                     ; $5b7e: $11 $1f $28
	ccf                                              ; $5b81: $3f
	ld d, h                                          ; $5b82: $54
	ld a, a                                          ; $5b83: $7f
	ld l, e                                          ; $5b84: $6b
	ld a, a                                          ; $5b85: $7f
	ld c, c                                          ; $5b86: $49
	ld a, a                                          ; $5b87: $7f
	ld e, b                                          ; $5b88: $58
	ld a, a                                          ; $5b89: $7f
	ld e, [hl]                                       ; $5b8a: $5e
	ld [hl], a                                       ; $5b8b: $77
	ccf                                              ; $5b8c: $3f
	dec [hl]                                         ; $5b8d: $35
	rra                                              ; $5b8e: $1f
	ld e, $3b                                        ; $5b8f: $1e $3b
	ld h, $3f                                        ; $5b91: $26 $3f
	inc h                                            ; $5b93: $24
	rra                                              ; $5b94: $1f
	db $10                                           ; $5b95: $10
	rrca                                             ; $5b96: $0f

jr_01e_5b97:
	ld [rRAMG], sp                                   ; $5b97: $08 $00 $00
	ret nc                                           ; $5b9a: $d0

	sbc c                                            ; $5b9b: $99
	ret nc                                           ; $5b9c: $d0

	jr z, jr_01e_5b97                                ; $5b9d: $28 $f8

	inc d                                            ; $5b9f: $14
	db $fc                                           ; $5ba0: $fc
	add h                                            ; $5ba1: $84
	sbc $fc                                          ; $5ba2: $de $fc
	add b                                            ; $5ba4: $80
	add [hl]                                         ; $5ba5: $86
	cp $01                                           ; $5ba6: $fe $01
	rst $38                                          ; $5ba8: $ff
	call nz, $23ff                                   ; $5ba9: $c4 $ff $23
	rst $38                                          ; $5bac: $ff
	ld [de], a                                       ; $5bad: $12
	cp $32                                           ; $5bae: $fe $32
	cp $f2                                           ; $5bb0: $fe $f2
	sbc $f4                                          ; $5bb2: $de $f4
	inc e                                            ; $5bb4: $1c
	add sp, $38                                      ; $5bb5: $e8 $38
	ldh a, [rSVBK]                                   ; $5bb7: $f0 $70
	ld a, b                                          ; $5bb9: $78
	ld c, b                                          ; $5bba: $48
	ld a, h                                          ; $5bbb: $7c
	ld h, h                                          ; $5bbc: $64
	db $fc                                           ; $5bbd: $fc
	and h                                            ; $5bbe: $a4
	cp $a2                                           ; $5bbf: $fe $a2
	cp $c2                                           ; $5bc1: $fe $c2
	db $fc                                           ; $5bc3: $fc
	adc [hl]                                         ; $5bc4: $8e
	call nz, $acfc                                   ; $5bc5: $c4 $fc $ac
	db $fc                                           ; $5bc8: $fc
	sub h                                            ; $5bc9: $94
	cp $82                                           ; $5bca: $fe $82
	ld a, [hl]                                       ; $5bcc: $7e
	ld b, d                                          ; $5bcd: $42

jr_01e_5bce:
	ld a, [hl]                                       ; $5bce: $7e
	ld b, d                                          ; $5bcf: $42
	inc a                                            ; $5bd0: $3c
	inc a                                            ; $5bd1: $3c
	inc e                                            ; $5bd2: $1c
	inc e                                            ; $5bd3: $1c
	ld a, h                                          ; $5bd4: $7c
	ld a, h                                          ; $5bd5: $7c
	ld l, a                                          ; $5bd6: $6f
	sbc [hl]                                         ; $5bd7: $9e
	ld c, a                                          ; $5bd8: $4f
	and b                                            ; $5bd9: $a0
	sbc [hl]                                         ; $5bda: $9e
	ld e, h                                          ; $5bdb: $5c
	ld [hl], a                                       ; $5bdc: $77
	and b                                            ; $5bdd: $a0
	sbc d                                            ; $5bde: $9a
	inc sp                                           ; $5bdf: $33
	rra                                              ; $5be0: $1f
	inc d                                            ; $5be1: $14
	ccf                                              ; $5be2: $3f
	ld a, [hl+]                                      ; $5be3: $2a
	ld a, e                                          ; $5be4: $7b
	and b                                            ; $5be5: $a0
	sub d                                            ; $5be6: $92
	jr @+$09                                         ; $5be7: $18 $07

	inc b                                            ; $5be9: $04
	ld b, $06                                        ; $5bea: $06 $06
	rra                                              ; $5bec: $1f
	add hl, de                                       ; $5bed: $19
	rra                                              ; $5bee: $1f
	ld de, $090f                                     ; $5bef: $11 $0f $09
	rlca                                             ; $5bf2: $07
	rlca                                             ; $5bf3: $07
	rst AddAOntoHL                                          ; $5bf4: $ef
	rst SubAFromDE                                          ; $5bf5: $df
	ccf                                              ; $5bf6: $3f
	rst $38                                          ; $5bf7: $ff
	sub e                                            ; $5bf8: $93
	rra                                              ; $5bf9: $1f
	rla                                              ; $5bfa: $17
	rst $38                                          ; $5bfb: $ff
	ld [$06ff], a                                    ; $5bfc: $ea $ff $06
	rst $38                                          ; $5bff: $ff
	ld a, [bc]                                       ; $5c00: $0a
	rst $38                                          ; $5c01: $ff
	ld h, [hl]                                       ; $5c02: $66
	rra                                              ; $5c03: $1f
	ld [de], a                                       ; $5c04: $12
	ld a, e                                          ; $5c05: $7b
	jr jr_01e_5c83                                   ; $5c06: $18 $7b

	cp $95                                           ; $5c08: $fe $95
	ld e, $12                                        ; $5c0a: $1e $12
	ld e, $1e                                        ; $5c0c: $1e $1e
	ld b, $06                                        ; $5c0e: $06 $06
	ld c, $0e                                        ; $5c10: $0e $0e
	ld e, $1e                                        ; $5c12: $1e $1e
	ld [hl], a                                       ; $5c14: $77
	and b                                            ; $5c15: $a0
	sub c                                            ; $5c16: $91
	ld hl, sp-$28                                    ; $5c17: $f8 $d8
	rst $38                                          ; $5c19: $ff
	and a                                            ; $5c1a: $a7
	rst $38                                          ; $5c1b: $ff
	ret nz                                           ; $5c1c: $c0

	rst $38                                          ; $5c1d: $ff
	and b                                            ; $5c1e: $a0
	rst $38                                          ; $5c1f: $ff
	call z, $92f2                                    ; $5c20: $cc $f2 $92
	ldh a, [hDisp1_SCY]                                     ; $5c23: $f0 $90
	ld [hl], e                                       ; $5c25: $73
	cp $96                                           ; $5c26: $fe $96
	ret nc                                           ; $5c28: $d0

	ldh [$e0], a                                     ; $5c29: $e0 $e0
	ret nz                                           ; $5c2b: $c0

	ret nz                                           ; $5c2c: $c0

	ldh [$e0], a                                     ; $5c2d: $e0 $e0
	ldh a, [$f0]                                     ; $5c2f: $f0 $f0
	ld l, a                                          ; $5c31: $6f
	add b                                            ; $5c32: $80
	ld a, [hl-]                                      ; $5c33: $3a
	jr nz, jr_01e_5bce                               ; $5c34: $20 $98

	add hl, sp                                       ; $5c36: $39
	cpl                                              ; $5c37: $2f
	inc [hl]                                         ; $5c38: $34
	ccf                                              ; $5c39: $3f
	ld a, [hl+]                                      ; $5c3a: $2a
	rra                                              ; $5c3b: $1f
	inc d                                            ; $5c3c: $14
	ld a, e                                          ; $5c3d: $7b
	adc d                                            ; $5c3e: $8a
	ld l, $20                                        ; $5c3f: $2e $20
	sbc h                                            ; $5c41: $9c
	ld c, $fe                                        ; $5c42: $0e $fe
	ld [hl+], a                                      ; $5c44: $22
	ld a, d                                          ; $5c45: $7a
	adc $9e                                          ; $5c46: $ce $9e
	inc h                                            ; $5c48: $24
	halt                                             ; $5c49: $76
	jr nz, @-$07                                     ; $5c4a: $20 $f7

	sbc b                                            ; $5c4c: $98
	jr nc, jr_01e_5c80                               ; $5c4d: $30 $31

	ld c, a                                          ; $5c4f: $4f
	ld a, [hl]                                       ; $5c50: $7e
	cp b                                             ; $5c51: $b8
	rst $38                                          ; $5c52: $ff
	or b                                             ; $5c53: $b0
	ld a, e                                          ; $5c54: $7b
	sub l                                            ; $5c55: $95
	sbc b                                            ; $5c56: $98
	ld e, [hl]                                       ; $5c57: $5e
	ld a, a                                          ; $5c58: $7f
	ccf                                              ; $5c59: $3f
	dec [hl]                                         ; $5c5a: $35
	dec d                                            ; $5c5b: $15
	dec de                                           ; $5c5c: $1b
	ld de, $6f7b                                     ; $5c5d: $11 $7b $6f
	ld a, [hl]                                       ; $5c60: $7e
	sub c                                            ; $5c61: $91
	rst FarCall                                          ; $5c62: $f7
	rst SubAFromDE                                          ; $5c63: $df
	sbc h                                            ; $5c64: $9c
	ld a, [hl]                                       ; $5c65: $7e
	sbc c                                            ; $5c66: $99
	adc b                                            ; $5c67: $88
	dec e                                            ; $5c68: $1d
	rst $38                                          ; $5c69: $ff
	dec c                                            ; $5c6a: $0d
	rst $38                                          ; $5c6b: $ff
	dec b                                            ; $5c6c: $05
	rst $38                                          ; $5c6d: $ff
	ld a, l                                          ; $5c6e: $7d
	rst $38                                          ; $5c6f: $ff
	ei                                               ; $5c70: $fb
	xor a                                            ; $5c71: $af
	xor [hl]                                         ; $5c72: $ae
	sbc $84                                          ; $5c73: $de $84
	db $fc                                           ; $5c75: $fc
	ld b, h                                          ; $5c76: $44
	db $fc                                           ; $5c77: $fc
	adc b                                            ; $5c78: $88
	ld hl, sp+$7f                                    ; $5c79: $f8 $7f
	ld a, a                                          ; $5c7b: $7f
	ret nz                                           ; $5c7c: $c0

	rst $38                                          ; $5c7d: $ff
	add b                                            ; $5c7e: $80
	ld a, e                                          ; $5c7f: $7b

jr_01e_5c80:
	ld e, a                                          ; $5c80: $5f
	rst SubAFromDE                                          ; $5c81: $df
	ld a, a                                          ; $5c82: $7f

jr_01e_5c83:
	sbc l                                            ; $5c83: $9d
	inc b                                            ; $5c84: $04
	rlca                                             ; $5c85: $07
	ld l, a                                          ; $5c86: $6f
	db $f4                                           ; $5c87: $f4
	sbc l                                            ; $5c88: $9d
	ldh [rIE], a                                     ; $5c89: $e0 $ff
	ld [hl], a                                       ; $5c8b: $77
	jr z, @+$65                                      ; $5c8c: $28 $63

	xor d                                            ; $5c8e: $aa
	ld a, d                                          ; $5c8f: $7a
	ld h, $7f                                        ; $5c90: $26 $7f
	cp $9d                                           ; $5c92: $fe $9d
	inc b                                            ; $5c94: $04
	db $fc                                           ; $5c95: $fc
	ld e, a                                          ; $5c96: $5f
	cp $7f                                           ; $5c97: $fe $7f
	ldh a, [c]                                       ; $5c99: $f2
	rst SubAFromDE                                          ; $5c9a: $df
	ldh a, [$f5]                                     ; $5c9b: $f0 $f5
	rst SubAFromDE                                          ; $5c9d: $df
	ld b, $7f                                        ; $5c9e: $06 $7f
	sbc d                                            ; $5ca0: $9a
	adc l                                            ; $5ca1: $8d
	db $10                                           ; $5ca2: $10
	rra                                              ; $5ca3: $1f
	jr nz, jr_01e_5ce5                               ; $5ca4: $20 $3f

	ld h, b                                          ; $5ca6: $60
	ld a, a                                          ; $5ca7: $7f
	and l                                            ; $5ca8: $a5
	rst $38                                          ; $5ca9: $ff
	ld h, l                                          ; $5caa: $65
	rst $38                                          ; $5cab: $ff
	adc e                                            ; $5cac: $8b
	cp $4f                                           ; $5cad: $fe $4f
	ld a, h                                          ; $5caf: $7c
	ccf                                              ; $5cb0: $3f
	ld [hl], $3d                                     ; $5cb1: $36 $3d
	ld l, $6d                                        ; $5cb3: $2e $6d
	ld h, b                                          ; $5cb5: $60
	ld a, [hl]                                       ; $5cb6: $7e
	ret nz                                           ; $5cb7: $c0

	rst $38                                          ; $5cb8: $ff
	rst SubAFromDE                                          ; $5cb9: $df
	ldh [$9e], a                                     ; $5cba: $e0 $9e
	db $10                                           ; $5cbc: $10
	ld a, e                                          ; $5cbd: $7b
	cp h                                             ; $5cbe: $bc
	ld a, a                                          ; $5cbf: $7f
	ret z                                            ; $5cc0: $c8

	sub h                                            ; $5cc1: $94
	ld b, $fe                                        ; $5cc2: $06 $fe
	dec h                                            ; $5cc4: $25
	rst $38                                          ; $5cc5: $ff
	sub [hl]                                         ; $5cc6: $96
	rst $38                                          ; $5cc7: $ff
	ret                                              ; $5cc8: $c9


	ld a, a                                          ; $5cc9: $7f
	ldh a, [c]                                       ; $5cca: $f2
	ld a, $fe                                        ; $5ccb: $3e $fe
	ld e, l                                          ; $5ccd: $5d
	ld h, b                                          ; $5cce: $60
	sub [hl]                                         ; $5ccf: $96
	db $10                                           ; $5cd0: $10
	inc bc                                           ; $5cd1: $03
	inc bc                                           ; $5cd2: $03
	inc b                                            ; $5cd3: $04
	rlca                                             ; $5cd4: $07
	inc b                                            ; $5cd5: $04
	rlca                                             ; $5cd6: $07
	ld [$770f], sp                                   ; $5cd7: $08 $0f $77
	cp $96                                           ; $5cda: $fe $96
	ld c, $0f                                        ; $5cdc: $0e $0f
	rrca                                             ; $5cde: $0f
	dec bc                                           ; $5cdf: $0b
	ld b, $07                                        ; $5ce0: $06 $07
	ld [bc], a                                       ; $5ce2: $02
	inc bc                                           ; $5ce3: $03
	ld [bc], a                                       ; $5ce4: $02

jr_01e_5ce5:
	sbc $03                                          ; $5ce5: $de $03
	ld [hl], a                                       ; $5ce7: $77
	db $ec                                           ; $5ce8: $ec
	ld [hl], l                                       ; $5ce9: $75
	sbc $75                                          ; $5cea: $de $75
	and [hl]                                         ; $5cec: $a6
	ld a, a                                          ; $5ced: $7f
	ld e, d                                          ; $5cee: $5a
	ld a, a                                          ; $5cef: $7f
	jp nz, $9495                                     ; $5cf0: $c2 $95 $94

	db $fc                                           ; $5cf3: $fc
	inc d                                            ; $5cf4: $14
	db $fc                                           ; $5cf5: $fc
	sbc h                                            ; $5cf6: $9c
	db $fc                                           ; $5cf7: $fc
	ld a, h                                          ; $5cf8: $7c
	db $f4                                           ; $5cf9: $f4
	sbc b                                            ; $5cfa: $98
	ld hl, sp+$6e                                    ; $5cfb: $f8 $6e
	cp e                                             ; $5cfd: $bb
	sbc e                                            ; $5cfe: $9b
	add sp, -$08                                     ; $5cff: $e8 $f8
	add h                                            ; $5d01: $84
	db $fc                                           ; $5d02: $fc
	ld l, [hl]                                       ; $5d03: $6e
	ret nz                                           ; $5d04: $c0

	rst SubAFromDE                                          ; $5d05: $df
	rra                                              ; $5d06: $1f
	ld a, a                                          ; $5d07: $7f
	add [hl]                                         ; $5d08: $86
	adc d                                            ; $5d09: $8a
	sbc a                                            ; $5d0a: $9f
	rst $38                                          ; $5d0b: $ff
	cp a                                             ; $5d0c: $bf
	ldh [$bf], a                                     ; $5d0d: $e0 $bf
	rst $38                                          ; $5d0f: $ff
	and h                                            ; $5d10: $a4
	rst $38                                          ; $5d11: $ff
	cp e                                             ; $5d12: $bb
	rst $38                                          ; $5d13: $ff
	cp e                                             ; $5d14: $bb
	xor $bb                                          ; $5d15: $ee $bb
	cp $ab                                           ; $5d17: $fe $ab
	cp $bb                                           ; $5d19: $fe $bb
	rst $38                                          ; $5d1b: $ff
	db $fc                                           ; $5d1c: $fc
	rst JumpTable                                          ; $5d1d: $c7
	rst $38                                          ; $5d1e: $ff
	ld a, e                                          ; $5d1f: $7b
	ld a, [hl+]                                      ; $5d20: $2a
	sbc $ff                                          ; $5d21: $de $ff
	ld a, e                                          ; $5d23: $7b
	ei                                               ; $5d24: $fb
	ld [hl], e                                       ; $5d25: $73
	ld hl, sp+$7b                                    ; $5d26: $f8 $7b
	ldh [$7e], a                                     ; $5d28: $e0 $7e
	and $7f                                          ; $5d2a: $e6 $7f
	db $fc                                           ; $5d2c: $fc
	ld [hl], a                                       ; $5d2d: $77
	ret c                                            ; $5d2e: $d8

	ld [hl], a                                       ; $5d2f: $77
	ld hl, sp-$6e                                    ; $5d30: $f8 $92
	sbc a                                            ; $5d32: $9f
	ldh a, [hDisp1_LCDC]                                     ; $5d33: $f0 $8f
	rst $38                                          ; $5d35: $ff
	ld b, b                                          ; $5d36: $40
	ld a, a                                          ; $5d37: $7f
	ccf                                              ; $5d38: $3f
	ccf                                              ; $5d39: $3f
	rst SubAFromDE                                          ; $5d3a: $df
	ld l, e                                          ; $5d3b: $6b
	rst GetHLinHL                                          ; $5d3c: $cf
	rst $38                                          ; $5d3d: $ff
	inc sp                                           ; $5d3e: $33
	db $dd                                           ; $5d3f: $dd
	rst $38                                          ; $5d40: $ff
	sbc l                                            ; $5d41: $9d
	rlca                                             ; $5d42: $07
	db $fd                                           ; $5d43: $fd
	ld a, d                                          ; $5d44: $7a
	and $7f                                          ; $5d45: $e6 $7f
	db $fc                                           ; $5d47: $fc
	sbc [hl]                                         ; $5d48: $9e
	db $fd                                           ; $5d49: $fd
	ld l, e                                          ; $5d4a: $6b
	ld hl, sp-$66                                    ; $5d4b: $f8 $9a
	ld sp, hl                                        ; $5d4d: $f9
	rrca                                             ; $5d4e: $0f
	pop af                                           ; $5d4f: $f1
	rst $38                                          ; $5d50: $ff
	ld [bc], a                                       ; $5d51: $02
	ld a, d                                          ; $5d52: $7a
	adc d                                            ; $5d53: $8a
	add c                                            ; $5d54: $81
	ld [bc], a                                       ; $5d55: $02
	db $fd                                           ; $5d56: $fd
	rst SubAFromDE                                          ; $5d57: $df
	rlca                                             ; $5d58: $07
	adc e                                            ; $5d59: $8b
	jr jr_01e_5d7b                                   ; $5d5a: $18 $1f

	daa                                              ; $5d5c: $27
	jr c, @+$51                                      ; $5d5d: $38 $4f

	ld [hl], a                                       ; $5d5f: $77
	ld c, b                                          ; $5d60: $48
	ld a, a                                          ; $5d61: $7f
	sub l                                            ; $5d62: $95
	rst $38                                          ; $5d63: $ff
	push hl                                          ; $5d64: $e5
	rst $38                                          ; $5d65: $ff
	xor l                                            ; $5d66: $ad
	cp d                                             ; $5d67: $ba
	rra                                              ; $5d68: $1f
	ld d, $0b                                        ; $5d69: $16 $0b
	ld d, $2f                                        ; $5d6b: $16 $2f
	ld a, $7b                                        ; $5d6d: $3e $7b
	cp $9c                                           ; $5d6f: $fe $9c
	add hl, sp                                       ; $5d71: $39
	rlca                                             ; $5d72: $07
	inc e                                            ; $5d73: $1c
	db $fd                                           ; $5d74: $fd
	rst SubAFromDE                                          ; $5d75: $df
	ld a, b                                          ; $5d76: $78
	add c                                            ; $5d77: $81
	add h                                            ; $5d78: $84
	db $fc                                           ; $5d79: $fc
	ldh [c], a                                       ; $5d7a: $e2

jr_01e_5d7b:
	ld e, $f2                                        ; $5d7b: $1e $f2
	xor $19                                          ; $5d7d: $ee $19
	rst FarCall                                          ; $5d7f: $f7
	add hl, hl                                       ; $5d80: $29
	rst $38                                          ; $5d81: $ff
	dec h                                            ; $5d82: $25
	rst $38                                          ; $5d83: $ff
	or l                                             ; $5d84: $b5
	rst SubAFromDE                                          ; $5d85: $df
	ld sp, hl                                        ; $5d86: $f9
	ld l, a                                          ; $5d87: $6f
	cp l                                             ; $5d88: $bd
	ld [hl], a                                       ; $5d89: $77
	db $fd                                           ; $5d8a: $fd
	ld h, a                                          ; $5d8b: $67
	db $fd                                           ; $5d8c: $fd
	ld h, a                                          ; $5d8d: $67
	ld sp, hl                                        ; $5d8e: $f9
	adc a                                            ; $5d8f: $8f
	ldh a, [rAUD3HIGH]                               ; $5d90: $f0 $1e
	rst $38                                          ; $5d92: $ff
	or [hl]                                          ; $5d93: $b6
	rst $38                                          ; $5d94: $ff
	push de                                          ; $5d95: $d5
	ld [hl], a                                       ; $5d96: $77
	db $fc                                           ; $5d97: $fc
	sbc c                                            ; $5d98: $99
	rst FarCall                                          ; $5d99: $f7
	cp [hl]                                          ; $5d9a: $be
	ld a, a                                          ; $5d9b: $7f
	ld a, h                                          ; $5d9c: $7c
	ld a, a                                          ; $5d9d: $7f
	ld c, b                                          ; $5d9e: $48
	ld l, e                                          ; $5d9f: $6b
	cp $df                                           ; $5da0: $fe $df
	ld a, a                                          ; $5da2: $7f
	sbc l                                            ; $5da3: $9d
	ld c, c                                          ; $5da4: $49
	sub b                                            ; $5da5: $90
	sbc $ff                                          ; $5da6: $de $ff
	db $fd                                           ; $5da8: $fd
	sbc l                                            ; $5da9: $9d
	ret nz                                           ; $5daa: $c0

	ld b, b                                          ; $5dab: $40
	ld h, a                                          ; $5dac: $67
	cp $d7                                           ; $5dad: $fe $d7
	add b                                            ; $5daf: $80
	db $fd                                           ; $5db0: $fd
	rst SubAFromDE                                          ; $5db1: $df
	add b                                            ; $5db2: $80
	rst SubAFromDE                                          ; $5db3: $df
	ret nz                                           ; $5db4: $c0

	rst FarCall                                          ; $5db5: $f7
	rst SubAFromDE                                          ; $5db6: $df
	rlca                                             ; $5db7: $07
	sbc c                                            ; $5db8: $99
	inc c                                            ; $5db9: $0c
	rrca                                             ; $5dba: $0f
	db $10                                           ; $5dbb: $10
	rra                                              ; $5dbc: $1f
	jr nz, jr_01e_5dfe                               ; $5dbd: $20 $3f

	ld [hl], a                                       ; $5dbf: $77
	cp $7f                                           ; $5dc0: $fe $7f
	halt                                             ; $5dc2: $76
	sbc h                                            ; $5dc3: $9c
	cpl                                              ; $5dc4: $2f
	scf                                              ; $5dc5: $37
	jr z, @+$7d                                      ; $5dc6: $28 $7b

	ld hl, sp-$67                                    ; $5dc8: $f8 $99
	inc l                                            ; $5dca: $2c
	scf                                              ; $5dcb: $37
	ld [hl+], a                                      ; $5dcc: $22
	ccf                                              ; $5dcd: $3f
	ld [de], a                                       ; $5dce: $12
	rra                                              ; $5dcf: $1f
	ei                                               ; $5dd0: $fb
	rst SubAFromDE                                          ; $5dd1: $df
	ld [hl], b                                       ; $5dd2: $70
	adc h                                            ; $5dd3: $8c
	adc b                                            ; $5dd4: $88
	ld hl, sp+$04                                    ; $5dd5: $f8 $04
	db $fc                                           ; $5dd7: $fc
	ld [bc], a                                       ; $5dd8: $02
	cp $02                                           ; $5dd9: $fe $02
	cp $01                                           ; $5ddb: $fe $01
	rst $38                                          ; $5ddd: $ff
	pop hl                                           ; $5dde: $e1
	rra                                              ; $5ddf: $1f
	pop af                                           ; $5de0: $f1
	rst AddAOntoHL                                          ; $5de1: $ef
	ld de, $09ff                                     ; $5de2: $11 $ff $09
	rst FarCall                                          ; $5de5: $f7
	add hl, hl                                       ; $5de6: $29
	ld a, e                                          ; $5de7: $7b
	ld [hl], d                                       ; $5de8: $72
	sub b                                            ; $5de9: $90
	sbc b                                            ; $5dea: $98
	cp $00                                           ; $5deb: $fe $00
	nop                                              ; $5ded: $00
	ld bc, $0701                                     ; $5dee: $01 $01 $07
	nop                                              ; $5df1: $00
	cpl                                              ; $5df2: $2f
	inc a                                            ; $5df3: $3c
	ld d, e                                          ; $5df4: $53
	ld a, [hl]                                       ; $5df5: $7e
	ld h, c                                          ; $5df6: $61
	ld a, a                                          ; $5df7: $7f
	ld d, b                                          ; $5df8: $50
	ld a, e                                          ; $5df9: $7b
	cp $80                                           ; $5dfa: $fe $80
	ld a, [de]                                       ; $5dfc: $1a
	ccf                                              ; $5dfd: $3f

jr_01e_5dfe:
	ld e, $15                                        ; $5dfe: $1e $15
	dec de                                           ; $5e00: $1b
	ld e, $3f                                        ; $5e01: $1e $3f
	ld h, $3f                                        ; $5e03: $26 $3f
	ld h, $1f                                        ; $5e05: $26 $1f
	db $10                                           ; $5e07: $10
	rrca                                             ; $5e08: $0f
	ld [$0607], sp                                   ; $5e09: $08 $07 $06
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	ldh [$e0], a                                     ; $5e0e: $e0 $e0
	jr @-$06                                         ; $5e10: $18 $f8

	add h                                            ; $5e12: $84
	ld a, h                                          ; $5e13: $7c
	add h                                            ; $5e14: $84
	ld a, h                                          ; $5e15: $7c
	jp nz, $c23e                                     ; $5e16: $c2 $3e $c2

	cp [hl]                                          ; $5e19: $be
	ld h, d                                          ; $5e1a: $62
	sbc e                                            ; $5e1b: $9b
	sbc $e2                                          ; $5e1c: $de $e2
	sbc $22                                          ; $5e1e: $de $22
	ld a, e                                          ; $5e20: $7b
	cp d                                             ; $5e21: $ba
	sub l                                            ; $5e22: $95
	jp nz, $e2fe                                     ; $5e23: $c2 $fe $e2

	ld e, $e2                                        ; $5e26: $1e $e2
	ld a, $c2                                        ; $5e28: $3e $c2
	ld a, [hl]                                       ; $5e2a: $7e
	db $e4                                           ; $5e2b: $e4
	ld a, h                                          ; $5e2c: $7c
	sbc $07                                          ; $5e2d: $de $07
	sbc d                                            ; $5e2f: $9a
	inc b                                            ; $5e30: $04
	rlca                                             ; $5e31: $07
	ld b, $03                                        ; $5e32: $06 $03
	inc bc                                           ; $5e34: $03
	jp hl                                            ; $5e35: $e9


	sbc $ff                                          ; $5e36: $de $ff
	add [hl]                                         ; $5e38: $86
	sub e                                            ; $5e39: $93
	rst $38                                          ; $5e3a: $ff
	add e                                            ; $5e3b: $83
	cp $e6                                           ; $5e3c: $fe $e6
	db $fc                                           ; $5e3e: $fc
	cp h                                             ; $5e3f: $bc
	db $fc                                           ; $5e40: $fc
	add h                                            ; $5e41: $84
	cp $82                                           ; $5e42: $fe $82
	cp $82                                           ; $5e44: $fe $82
	ld a, a                                          ; $5e46: $7f
	ld b, c                                          ; $5e47: $41
	ld a, a                                          ; $5e48: $7f

jr_01e_5e49:
	ld b, c                                          ; $5e49: $41
	ld a, $22                                        ; $5e4a: $3e $22
	inc a                                            ; $5e4c: $3c
	inc a                                            ; $5e4d: $3c
	ld a, h                                          ; $5e4e: $7c
	ld h, h                                          ; $5e4f: $64
	add h                                            ; $5e50: $84
	db $fc                                           ; $5e51: $fc
	ld l, a                                          ; $5e52: $6f
	ld e, $e1                                        ; $5e53: $1e $e1
	scf                                              ; $5e55: $37
	ld h, b                                          ; $5e56: $60
	sbc [hl]                                         ; $5e57: $9e
	dec sp                                           ; $5e58: $3b

jr_01e_5e59:
	ld [hl], a                                       ; $5e59: $77
	ld h, b                                          ; $5e5a: $60
	sub h                                            ; $5e5b: $94
	jr jr_01e_5e9d                                   ; $5e5c: $18 $3f

	ld a, $3f                                        ; $5e5e: $3e $3f
	ld a, [hl+]                                      ; $5e60: $2a
	ld b, $06                                        ; $5e61: $06 $06
	rra                                              ; $5e63: $1f
	add hl, de                                       ; $5e64: $19
	rra                                              ; $5e65: $1f
	ld de, $567b                                     ; $5e66: $11 $7b $56
	ld a, a                                          ; $5e69: $7f
	db $db                                           ; $5e6a: $db
	ldh a, [c]                                       ; $5e6b: $f2
	rst SubAFromDE                                          ; $5e6c: $df
	ccf                                              ; $5e6d: $3f
	ld [hl], e                                       ; $5e6e: $73
	ld a, [$3e93]                                    ; $5e6f: $fa $93 $3e
	rst $38                                          ; $5e72: $ff
	jp z, $86ff                                      ; $5e73: $ca $ff $86

	rst $38                                          ; $5e76: $ff
	adc d                                            ; $5e77: $8a
	ld a, [hl]                                       ; $5e78: $7e
	ld a, a                                          ; $5e79: $7f
	ld c, $09                                        ; $5e7a: $0e $09
	rrca                                             ; $5e7c: $0f
	ld h, a                                          ; $5e7d: $67
	cp $df                                           ; $5e7e: $fe $df
	rrca                                             ; $5e80: $0f
	sbc h                                            ; $5e81: $9c
	add hl, bc                                       ; $5e82: $09
	ld [de], a                                       ; $5e83: $12
	rra                                              ; $5e84: $1f
	ld l, a                                          ; $5e85: $6f
	add d                                            ; $5e86: $82
	sub c                                            ; $5e87: $91
	db $fc                                           ; $5e88: $fc
	call z, $a3ff                                    ; $5e89: $cc $ff $a3
	rst $38                                          ; $5e8c: $ff
	pop bc                                           ; $5e8d: $c1
	rst $38                                          ; $5e8e: $ff
	or c                                             ; $5e8f: $b1
	cp $de                                           ; $5e90: $fe $de
	ldh a, [hDisp1_SCY]                                     ; $5e92: $f0 $90
	ldh a, [rAUD1SWEEP]                              ; $5e94: $f0 $10
	ld l, a                                          ; $5e96: $6f
	cp $de                                           ; $5e97: $fe $de
	ldh [$9c], a                                     ; $5e99: $e0 $9c
	jr nz, jr_01e_5ead                               ; $5e9b: $20 $10

jr_01e_5e9d:
	ldh a, [$5f]                                     ; $5e9d: $f0 $5f
	ld h, d                                          ; $5e9f: $62
	ld b, d                                          ; $5ea0: $42
	jr nz, jr_01e_5f21                               ; $5ea1: $20 $7e

	and $9a                                          ; $5ea3: $e6 $9a
	inc d                                            ; $5ea5: $14
	cpl                                              ; $5ea6: $2f
	ld a, [hl-]                                      ; $5ea7: $3a
	cpl                                              ; $5ea8: $2f
	inc a                                            ; $5ea9: $3c
	ld a, d                                          ; $5eaa: $7a
	jr nz, @-$60                                     ; $5eab: $20 $9e

jr_01e_5ead:
	dec e                                            ; $5ead: $1d
	ld [hl-], a                                      ; $5eae: $32
	jr nz, jr_01e_5e49                               ; $5eaf: $20 $98

	rrca                                             ; $5eb1: $0f
	db $fd                                           ; $5eb2: $fd
	daa                                              ; $5eb3: $27
	db $fd                                           ; $5eb4: $fd
	ld d, a                                          ; $5eb5: $57
	db $fd                                           ; $5eb6: $fd
	daa                                              ; $5eb7: $27
	ld a, d                                          ; $5eb8: $7a
	jr nz, jr_01e_5e59                               ; $5eb9: $20 $9e

	sbc [hl]                                         ; $5ebb: $9e
	rst FarCall                                          ; $5ebc: $f7
	adc c                                            ; $5ebd: $89
	jr nc, jr_01e_5ef1                               ; $5ebe: $30 $31

	ld c, a                                          ; $5ec0: $4f
	ld a, [hl]                                       ; $5ec1: $7e
	cp b                                             ; $5ec2: $b8
	rst $38                                          ; $5ec3: $ff
	or b                                             ; $5ec4: $b0
	rst $38                                          ; $5ec5: $ff
	and b                                            ; $5ec6: $a0
	rst $38                                          ; $5ec7: $ff
	ld e, [hl]                                       ; $5ec8: $5e
	ld a, a                                          ; $5ec9: $7f
	ccf                                              ; $5eca: $3f
	dec [hl]                                         ; $5ecb: $35
	dec d                                            ; $5ecc: $15
	dec de                                           ; $5ecd: $1b
	ld de, $121f                                     ; $5ece: $11 $1f $12
	rra                                              ; $5ed1: $1f
	add hl, bc                                       ; $5ed2: $09
	rrca                                             ; $5ed3: $0f
	rst FarCall                                          ; $5ed4: $f7
	rst SubAFromDE                                          ; $5ed5: $df
	sbc h                                            ; $5ed6: $9c
	add b                                            ; $5ed7: $80
	ld h, d                                          ; $5ed8: $62
	cp $1d                                           ; $5ed9: $fe $1d
	rst $38                                          ; $5edb: $ff
	dec c                                            ; $5edc: $0d
	rst $38                                          ; $5edd: $ff
	dec b                                            ; $5ede: $05
	rst $38                                          ; $5edf: $ff
	ld a, l                                          ; $5ee0: $7d
	rst $38                                          ; $5ee1: $ff
	ei                                               ; $5ee2: $fb
	xor a                                            ; $5ee3: $af
	xor [hl]                                         ; $5ee4: $ae
	sbc $84                                          ; $5ee5: $de $84
	db $fc                                           ; $5ee7: $fc
	ld b, h                                          ; $5ee8: $44
	db $fc                                           ; $5ee9: $fc
	adc b                                            ; $5eea: $88
	ld hl, sp+$7f                                    ; $5eeb: $f8 $7f
	ld a, a                                          ; $5eed: $7f
	ret nz                                           ; $5eee: $c0

	rst $38                                          ; $5eef: $ff
	add b                                            ; $5ef0: $80

jr_01e_5ef1:
	rst $38                                          ; $5ef1: $ff
	ret nz                                           ; $5ef2: $c0

	rst $38                                          ; $5ef3: $ff
	ld a, a                                          ; $5ef4: $7f
	ld a, a                                          ; $5ef5: $7f
	inc b                                            ; $5ef6: $04
	sbc [hl]                                         ; $5ef7: $9e
	rlca                                             ; $5ef8: $07
	ld l, a                                          ; $5ef9: $6f
	db $f4                                           ; $5efa: $f4
	sbc l                                            ; $5efb: $9d
	ldh [rIE], a                                     ; $5efc: $e0 $ff
	ld l, a                                          ; $5efe: $6f
	ld h, $6b                                        ; $5eff: $26 $6b
	xor d                                            ; $5f01: $aa
	sbc e                                            ; $5f02: $9b
	ldh a, [$08]                                     ; $5f03: $f0 $08
	ld hl, sp+$08                                    ; $5f05: $f8 $08
	ld a, d                                          ; $5f07: $7a
	inc h                                            ; $5f08: $24
	ld e, a                                          ; $5f09: $5f
	cp $7f                                           ; $5f0a: $fe $7f
	ldh a, [c]                                       ; $5f0c: $f2
	rst SubAFromDE                                          ; $5f0d: $df
	ldh a, [$f3]                                     ; $5f0e: $f0 $f3
	rst SubAFromDE                                          ; $5f10: $df
	rlca                                             ; $5f11: $07
	sbc [hl]                                         ; $5f12: $9e
	ld [$e279], sp                                   ; $5f13: $08 $79 $e2
	adc c                                            ; $5f16: $89
	ld [hl], $3f                                     ; $5f17: $36 $3f
	ld c, c                                          ; $5f19: $49
	ld a, a                                          ; $5f1a: $7f
	inc de                                           ; $5f1b: $13
	ld a, a                                          ; $5f1c: $7f
	daa                                              ; $5f1d: $27
	ld a, $2b                                        ; $5f1e: $3e $2b
	inc a                                            ; $5f20: $3c

jr_01e_5f21:
	ld c, a                                          ; $5f21: $4f
	halt                                             ; $5f22: $76
	ld a, l                                          ; $5f23: $7d
	ld l, [hl]                                       ; $5f24: $6e
	ld e, a                                          ; $5f25: $5f
	ld h, [hl]                                       ; $5f26: $66
	ld a, a                                          ; $5f27: $7f
	ld [hl], c                                       ; $5f28: $71
	xor $39                                          ; $5f29: $ee $39
	rst FarCall                                          ; $5f2b: $f7
	ld e, $6d                                        ; $5f2c: $1e $6d
	ldh [c], a                                       ; $5f2e: $e2
	rst SubAFromDE                                          ; $5f2f: $df
	ld hl, sp-$6e                                    ; $5f30: $f8 $92
	ld e, h                                          ; $5f32: $5c
	db $fc                                           ; $5f33: $fc
	inc l                                            ; $5f34: $2c
	db $fc                                           ; $5f35: $fc
	ld e, [hl]                                       ; $5f36: $5e
	cp $d6                                           ; $5f37: $fe $d6
	cp $ea                                           ; $5f39: $fe $ea
	ld a, [hl]                                       ; $5f3b: $7e
	push de                                          ; $5f3c: $d5
	ccf                                              ; $5f3d: $3f
	ei                                               ; $5f3e: $fb
	ld a, c                                          ; $5f3f: $79
	ld h, b                                          ; $5f40: $60
	adc h                                            ; $5f41: $8c
	rst $38                                          ; $5f42: $ff
	ld h, a                                          ; $5f43: $67
	rst $38                                          ; $5f44: $ff
	adc a                                            ; $5f45: $8f
	cp $9e                                           ; $5f46: $fe $9e
	ldh [$60], a                                     ; $5f48: $e0 $60
	ld a, [$7dcf]                                    ; $5f4a: $fa $cf $7d
	ld h, a                                          ; $5f4d: $67
	dec a                                            ; $5f4e: $3d
	ld h, $1f                                        ; $5f4f: $26 $1f
	rra                                              ; $5f51: $1f
	ld b, $07                                        ; $5f52: $06 $07
	ld [bc], a                                       ; $5f54: $02
	ld a, e                                          ; $5f55: $7b
	cp $7f                                           ; $5f56: $fe $7f
	ld a, [$03de]                                    ; $5f58: $fa $de $03
	sbc b                                            ; $5f5b: $98
	ld [bc], a                                       ; $5f5c: $02
	inc bc                                           ; $5f5d: $03
	inc bc                                           ; $5f5e: $03
	rlca                                             ; $5f5f: $07
	inc b                                            ; $5f60: $04
	ld [$6f0f], sp                                   ; $5f61: $08 $0f $6f
	ld a, d                                          ; $5f64: $7a
	ld a, a                                          ; $5f65: $7f
	jp z, $c496                                      ; $5f66: $ca $96 $c4

	ld a, h                                          ; $5f69: $7c
	ld e, h                                          ; $5f6a: $5c
	or b                                             ; $5f6b: $b0
	db $fc                                           ; $5f6c: $fc
	db $f4                                           ; $5f6d: $f4
	cp b                                             ; $5f6e: $b8
	ld hl, sp-$58                                    ; $5f6f: $f8 $a8
	ld a, e                                          ; $5f71: $7b
	cp $9e                                           ; $5f72: $fe $9e
	sbc b                                            ; $5f74: $98
	ld a, e                                          ; $5f75: $7b
	add h                                            ; $5f76: $84
	sub e                                            ; $5f77: $93
	ldh [$a0], a                                     ; $5f78: $e0 $a0
	ldh [$e0], a                                     ; $5f7a: $e0 $e0
	ldh a, [hDisp1_SCY]                                     ; $5f7c: $f0 $90
	sbc b                                            ; $5f7e: $98
	ld hl, sp-$78                                    ; $5f7f: $f8 $88
	ld hl, sp-$04                                    ; $5f81: $f8 $fc
	db $fc                                           ; $5f83: $fc
	db $fd                                           ; $5f84: $fd
	rst SubAFromDE                                          ; $5f85: $df
	rra                                              ; $5f86: $1f
	adc b                                            ; $5f87: $88
	ld h, b                                          ; $5f88: $60
	ld a, a                                          ; $5f89: $7f
	sbc a                                            ; $5f8a: $9f
	rst $38                                          ; $5f8b: $ff
	cp a                                             ; $5f8c: $bf
	ldh [$bf], a                                     ; $5f8d: $e0 $bf
	rst $38                                          ; $5f8f: $ff
	and h                                            ; $5f90: $a4
	rst $38                                          ; $5f91: $ff
	cp e                                             ; $5f92: $bb
	rst $38                                          ; $5f93: $ff
	cp e                                             ; $5f94: $bb
	xor $bb                                          ; $5f95: $ee $bb
	cp $ab                                           ; $5f97: $fe $ab
	cp $bb                                           ; $5f99: $fe $bb
	rst $38                                          ; $5f9b: $ff
	db $fc                                           ; $5f9c: $fc
	rst JumpTable                                          ; $5f9d: $c7
	rst $38                                          ; $5f9e: $ff
	ld a, e                                          ; $5f9f: $7b
	ld a, [hl+]                                      ; $5fa0: $2a
	sbc $ff                                          ; $5fa1: $de $ff
	ld a, e                                          ; $5fa3: $7b
	ei                                               ; $5fa4: $fb
	ld [hl], e                                       ; $5fa5: $73
	ld hl, sp+$7b                                    ; $5fa6: $f8 $7b
	ldh [$7e], a                                     ; $5fa8: $e0 $7e
	and $7f                                          ; $5faa: $e6 $7f
	db $fc                                           ; $5fac: $fc
	ld [hl], a                                       ; $5fad: $77
	ret c                                            ; $5fae: $d8

	ld [hl], a                                       ; $5faf: $77
	ld hl, sp-$6e                                    ; $5fb0: $f8 $92
	sbc a                                            ; $5fb2: $9f
	ldh a, [hDisp1_LCDC]                                     ; $5fb3: $f0 $8f
	rst $38                                          ; $5fb5: $ff
	ld b, b                                          ; $5fb6: $40
	ld a, a                                          ; $5fb7: $7f
	ccf                                              ; $5fb8: $3f
	ccf                                              ; $5fb9: $3f
	rst SubAFromDE                                          ; $5fba: $df
	ld l, e                                          ; $5fbb: $6b
	rst GetHLinHL                                          ; $5fbc: $cf
	rst $38                                          ; $5fbd: $ff
	inc sp                                           ; $5fbe: $33
	db $dd                                           ; $5fbf: $dd
	rst $38                                          ; $5fc0: $ff
	sbc l                                            ; $5fc1: $9d
	rlca                                             ; $5fc2: $07
	db $fd                                           ; $5fc3: $fd
	ld a, d                                          ; $5fc4: $7a
	and $7f                                          ; $5fc5: $e6 $7f
	db $fc                                           ; $5fc7: $fc
	sbc [hl]                                         ; $5fc8: $9e
	db $fd                                           ; $5fc9: $fd
	ld l, e                                          ; $5fca: $6b
	ld hl, sp+$7e                                    ; $5fcb: $f8 $7e
	sbc h                                            ; $5fcd: $9c
	sbc c                                            ; $5fce: $99
	pop af                                           ; $5fcf: $f1
	rst $38                                          ; $5fd0: $ff
	ld [bc], a                                       ; $5fd1: $02
	cp $fc                                           ; $5fd2: $fe $fc
	db $fc                                           ; $5fd4: $fc
	or c                                             ; $5fd5: $b1
	ld [bc], a                                       ; $5fd6: $02
	db $fd                                           ; $5fd7: $fd
	rst SubAFromDE                                          ; $5fd8: $df
	ld c, $85                                        ; $5fd9: $0e $85
	ld [hl], c                                       ; $5fdb: $71
	ld a, a                                          ; $5fdc: $7f
	add b                                            ; $5fdd: $80
	rst $38                                          ; $5fde: $ff
	ld h, e                                          ; $5fdf: $63
	ld a, a                                          ; $5fe0: $7f
	ld b, h                                          ; $5fe1: $44
	ld a, a                                          ; $5fe2: $7f
	adc b                                            ; $5fe3: $88
	rst $38                                          ; $5fe4: $ff
	adc c                                            ; $5fe5: $89
	rst $38                                          ; $5fe6: $ff
	sub e                                            ; $5fe7: $93
	cp $93                                           ; $5fe8: $fe $93
	cp $97                                           ; $5fea: $fe $97
	db $fc                                           ; $5fec: $fc
	ld d, a                                          ; $5fed: $57
	ld a, h                                          ; $5fee: $7c
	ld e, a                                          ; $5fef: $5f
	ld a, h                                          ; $5ff0: $7c
	ccf                                              ; $5ff1: $3f
	inc sp                                           ; $5ff2: $33
	ld c, $09                                        ; $5ff3: $0e $09
	db $fd                                           ; $5ff5: $fd
	rst SubAFromDE                                          ; $5ff6: $df
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5ff7: $f0 $81
	ld [$04f8], sp                                   ; $5ff9: $08 $f8 $04
	db $fc                                           ; $5ffc: $fc
	ld [hl+], a                                      ; $5ffd: $22
	cp $d2                                           ; $5ffe: $fe $d2
	cp $89                                           ; $6000: $fe $89
	rst $38                                          ; $6002: $ff
	push bc                                          ; $6003: $c5
	ld a, a                                          ; $6004: $7f
	db $e3                                           ; $6005: $e3
	ccf                                              ; $6006: $3f
	pop af                                           ; $6007: $f1
	rra                                              ; $6008: $1f
	cp a                                             ; $6009: $bf
	ld l, a                                          ; $600a: $6f
	ld a, d                                          ; $600b: $7a
	xor $fa                                          ; $600c: $ee $fa
	adc [hl]                                         ; $600e: $8e
	db $f4                                           ; $600f: $f4
	sbc h                                            ; $6010: $9c
	ld hl, sp-$48                                    ; $6011: $f8 $b8
	rrca                                             ; $6013: $0f
	rlca                                             ; $6014: $07
	rra                                              ; $6015: $1f
	ld [de], a                                       ; $6016: $12
	ld a, e                                          ; $6017: $7b
	cp $9c                                           ; $6018: $fe $9c
	ld de, $090f                                     ; $601a: $11 $0f $09
	sbc $07                                          ; $601d: $de $07
	sbc [hl]                                         ; $601f: $9e
	dec b                                            ; $6020: $05
	ld l, e                                          ; $6021: $6b
	cp $98                                           ; $6022: $fe $98
	rlca                                             ; $6024: $07
	rrca                                             ; $6025: $0f
	add hl, bc                                       ; $6026: $09
	ld de, $3f1f                                     ; $6027: $11 $1f $3f
	ccf                                              ; $602a: $3f
	db $fd                                           ; $602b: $fd
	sub e                                            ; $602c: $93
	ld hl, sp-$20                                    ; $602d: $f8 $e0
	db $fc                                           ; $602f: $fc
	inc h                                            ; $6030: $24
	db $fc                                           ; $6031: $fc
	inc b                                            ; $6032: $04
	db $fc                                           ; $6033: $fc
	add h                                            ; $6034: $84
	ld a, b                                          ; $6035: $78
	ld hl, sp+$78                                    ; $6036: $f8 $78
	ret z                                            ; $6038: $c8

	ld a, e                                          ; $6039: $7b
	cp $92                                           ; $603a: $fe $92
	ret nz                                           ; $603c: $c0

	ld hl, sp-$40                                    ; $603d: $f8 $c0
	ld a, h                                          ; $603f: $7c
	ld b, h                                          ; $6040: $44
	ld a, h                                          ; $6041: $7c
	ld a, h                                          ; $6042: $7c
	ld a, b                                          ; $6043: $78
	ld c, b                                          ; $6044: $48
	ld b, h                                          ; $6045: $44
	ld a, h                                          ; $6046: $7c
	rst $38                                          ; $6047: $ff
	rst $38                                          ; $6048: $ff
	ld sp, hl                                        ; $6049: $f9

jr_01e_604a:
	rra                                              ; $604a: $1f
	add b                                            ; $604b: $80
	sbc l                                            ; $604c: $9d
	inc c                                            ; $604d: $0c
	dec bc                                           ; $604e: $0b
	ld [hl], a                                       ; $604f: $77
	or h                                             ; $6050: $b4
	ld a, e                                          ; $6051: $7b
	and b                                            ; $6052: $a0
	sbc d                                            ; $6053: $9a
	inc d                                            ; $6054: $14
	rra                                              ; $6055: $1f
	inc de                                           ; $6056: $13
	rrca                                             ; $6057: $0f
	dec bc                                           ; $6058: $0b
	inc sp                                           ; $6059: $33
	and b                                            ; $605a: $a0
	ld a, e                                          ; $605b: $7b
	xor b                                            ; $605c: $a8
	ld [hl], e                                       ; $605d: $73
	sbc [hl]                                         ; $605e: $9e
	sbc [hl]                                         ; $605f: $9e
	adc h                                            ; $6060: $8c
	ld [hl], e                                       ; $6061: $73
	sbc [hl]                                         ; $6062: $9e
	ccf                                              ; $6063: $3f
	and b                                            ; $6064: $a0
	sub a                                            ; $6065: $97
	ld [$0f09], sp                                   ; $6066: $08 $09 $0f
	inc c                                            ; $6069: $0c
	rrca                                             ; $606a: $0f
	jr c, @+$41                                      ; $606b: $38 $3f

	ld c, e                                          ; $606d: $4b
	ld a, e                                          ; $606e: $7b
	and d                                            ; $606f: $a2
	ld a, a                                          ; $6070: $7f
	sbc h                                            ; $6071: $9c
	adc b                                            ; $6072: $88
	add h                                            ; $6073: $84
	rst $38                                          ; $6074: $ff
	adc [hl]                                         ; $6075: $8e
	ei                                               ; $6076: $fb
	ld e, a                                          ; $6077: $5f
	ld [hl], c                                       ; $6078: $71
	ld e, a                                          ; $6079: $5f
	ld a, [hl]                                       ; $607a: $7e
	dec sp                                           ; $607b: $3b
	ld h, $3f                                        ; $607c: $26 $3f
	inc h                                            ; $607e: $24
	rra                                              ; $607f: $1f
	db $10                                           ; $6080: $10
	rrca                                             ; $6081: $0f
	ld [$0407], sp                                   ; $6082: $08 $07 $04
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	ldh [$e0], a                                     ; $6087: $e0 $e0
	jr jr_01e_6106                                   ; $6089: $18 $7b

	ld [hl+], a                                      ; $608b: $22
	ld a, a                                          ; $608c: $7f
	cp $80                                           ; $608d: $fe $80
	add d                                            ; $608f: $82
	cp $c2                                           ; $6090: $fe $c2
	cp $42                                           ; $6092: $fe $42
	cp $22                                           ; $6094: $fe $22
	cp $12                                           ; $6096: $fe $12
	cp $f2                                           ; $6098: $fe $f2
	cp $c2                                           ; $609a: $fe $c2
	ld a, [hl]                                       ; $609c: $7e
	jp nz, $e47e                                     ; $609d: $c2 $7e $e4

	ld a, h                                          ; $60a0: $7c
	ret z                                            ; $60a1: $c8

	ld a, b                                          ; $60a2: $78
	sbc b                                            ; $60a3: $98
	ld hl, sp+$00                                    ; $60a4: $f8 $00
	nop                                              ; $60a6: $00
	rlca                                             ; $60a7: $07
	rlca                                             ; $60a8: $07
	jr @+$21                                         ; $60a9: $18 $1f

	jr nz, jr_01e_60ec                               ; $60ab: $20 $3f

	jr nz, jr_01e_604a                               ; $60ad: $20 $9b

	ccf                                              ; $60af: $3f
	ld b, b                                          ; $60b0: $40
	ld a, a                                          ; $60b1: $7f
	ld b, d                                          ; $60b2: $42
	ld a, e                                          ; $60b3: $7b
	cp $7f                                           ; $60b4: $fe $7f
	cp d                                             ; $60b6: $ba
	ld a, a                                          ; $60b7: $7f
	cp $9e                                           ; $60b8: $fe $9e
	ld b, l                                          ; $60ba: $45
	ld a, e                                          ; $60bb: $7b
	cp $7f                                           ; $60bc: $fe $7f
	or $80                                           ; $60be: $f6 $80

jr_01e_60c0:
	ld [hl+], a                                      ; $60c0: $22
	ccf                                              ; $60c1: $3f
	ld [de], a                                       ; $60c2: $12
	rra                                              ; $60c3: $1f
	add hl, de                                       ; $60c4: $19
	rra                                              ; $60c5: $1f
	nop                                              ; $60c6: $00
	db $10                                           ; $60c7: $10
	sub b                                            ; $60c8: $90
	ldh a, [$30]                                     ; $60c9: $f0 $30
	ldh a, [rAUD3LEVEL]                              ; $60cb: $f0 $1c
	db $fc                                           ; $60cd: $fc
	ld [bc], a                                       ; $60ce: $02
	cp $02                                           ; $60cf: $fe $02
	cp $01                                           ; $60d1: $fe $01
	rst $38                                          ; $60d3: $ff
	ld hl, $41ff                                     ; $60d4: $21 $ff $41
	rst $38                                          ; $60d7: $ff
	add d                                            ; $60d8: $82
	cp $0a                                           ; $60d9: $fe $0a
	cp $1c                                           ; $60db: $fe $1c
	db $fc                                           ; $60dd: $fc
	inc a                                            ; $60de: $3c
	add b                                            ; $60df: $80
	db $f4                                           ; $60e0: $f4
	ld a, b                                          ; $60e1: $78
	ret z                                            ; $60e2: $c8

	ldh a, [hDisp1_SCY]                                     ; $60e3: $f0 $90
	ldh [$60], a                                     ; $60e5: $e0 $60
	inc a                                            ; $60e7: $3c

jr_01e_60e8:
	inc a                                            ; $60e8: $3c
	ld a, [hl]                                       ; $60e9: $7e
	ld d, d                                          ; $60ea: $52
	ld a, a                                          ; $60eb: $7f

jr_01e_60ec:
	ld d, c                                          ; $60ec: $51
	rst $38                                          ; $60ed: $ff
	xor c                                            ; $60ee: $a9

jr_01e_60ef:
	rst $38                                          ; $60ef: $ff
	ret                                              ; $60f0: $c9


	rst $38                                          ; $60f1: $ff
	sub c                                            ; $60f2: $91
	cp $92                                           ; $60f3: $fe $92
	cp $8e                                           ; $60f5: $fe $8e
	ld a, a                                          ; $60f7: $7f

jr_01e_60f8:
	ld bc, $417f                                     ; $60f8: $01 $7f $41
	ld a, [hl]                                       ; $60fb: $7e
	ld h, d                                          ; $60fc: $62
	inc a                                            ; $60fd: $3c
	inc a                                            ; $60fe: $3c
	sbc e                                            ; $60ff: $9b
	ld a, h                                          ; $6100: $7c
	ld h, h                                          ; $6101: $64
	add h                                            ; $6102: $84
	db $fc                                           ; $6103: $fc
	ld [hl], a                                       ; $6104: $77
	ld e, [hl]                                       ; $6105: $5e

jr_01e_6106:
	rst SubAFromDE                                          ; $6106: $df
	ld b, $7b                                        ; $6107: $06 $7b
	cp e                                             ; $6109: $bb
	ld [hl], d                                       ; $610a: $72
	jp nz, $6ff1                                     ; $610b: $c2 $f1 $6f

	jr nz, jr_01e_60ef                               ; $610e: $20 $df

	rrca                                             ; $6110: $0f
	adc a                                            ; $6111: $8f
	rst $38                                          ; $6112: $ff
	jp z, $06ff                                      ; $6113: $ca $ff $06

	cp $0b                                           ; $6116: $fe $0b
	cp $37                                           ; $6118: $fe $37
	ld c, [hl]                                       ; $611a: $4e
	ld c, e                                          ; $611b: $4b
	ld c, $0b                                        ; $611c: $0e $0b
	rrca                                             ; $611e: $0f
	dec bc                                           ; $611f: $0b
	ld c, $0a                                        ; $6120: $0e $0a
	ld a, e                                          ; $6122: $7b
	cp $9a                                           ; $6123: $fe $9a
	ld c, $1e                                        ; $6125: $0e $1e
	ld [de], a                                       ; $6127: $12
	ld hl, $6f3f                                     ; $6128: $21 $3f $6f
	jr nz, jr_01e_60c0                               ; $612b: $20 $93

	ldh a, [$d0]                                     ; $612d: $f0 $d0
	rst $38                                          ; $612f: $ff
	and a                                            ; $6130: $a7
	rst $38                                          ; $6131: $ff
	ret nz                                           ; $6132: $c0

	rst $38                                          ; $6133: $ff
	and b                                            ; $6134: $a0
	rst $38                                          ; $6135: $ff
	adc $f0                                          ; $6136: $ce $f0
	sub b                                            ; $6138: $90
	ld a, e                                          ; $6139: $7b
	cp $94                                           ; $613a: $fe $94
	add b                                            ; $613c: $80
	ld hl, sp-$78                                    ; $613d: $f8 $88
	ld hl, sp-$38                                    ; $613f: $f8 $c8
	ld hl, sp-$48                                    ; $6141: $f8 $b8
	ldh a, [hDisp1_SCY]                                     ; $6143: $f0 $90
	ld [$02f8], sp                                   ; $6145: $08 $f8 $02
	and b                                            ; $6148: $a0
	ld a, d                                          ; $6149: $7a
	and b                                            ; $614a: $a0
	ld a, [hl]                                       ; $614b: $7e
	cp $32                                           ; $614c: $fe $32
	jr nz, jr_01e_60e8                               ; $614e: $20 $98

	rst SubAFromDE                                          ; $6150: $df
	rst $38                                          ; $6151: $ff
	rrca                                             ; $6152: $0f

jr_01e_6153:
	ld a, d                                          ; $6153: $7a
	adc $fa                                          ; $6154: $ce $fa
	ld c, $7a                                        ; $6156: $0e $7a
	jr nz, jr_01e_60f8                               ; $6158: $20 $9e

	jr c, jr_01e_6153                                ; $615a: $38 $f7

	sbc b                                            ; $615c: $98
	jr nc, jr_01e_6190                               ; $615d: $30 $31

	ld c, a                                          ; $615f: $4f
	ld a, [hl]                                       ; $6160: $7e
	cp b                                             ; $6161: $b8
	rst $38                                          ; $6162: $ff
	or b                                             ; $6163: $b0
	ld a, e                                          ; $6164: $7b
	sub l                                            ; $6165: $95
	sbc b                                            ; $6166: $98
	ld e, [hl]                                       ; $6167: $5e
	ld a, a                                          ; $6168: $7f
	ccf                                              ; $6169: $3f
	dec [hl]                                         ; $616a: $35
	dec d                                            ; $616b: $15
	dec de                                           ; $616c: $1b
	ld de, $697a                                     ; $616d: $11 $7a $69
	ld a, [hl]                                       ; $6170: $7e
	and h                                            ; $6171: $a4
	rst FarCall                                          ; $6172: $f7
	rst SubAFromDE                                          ; $6173: $df
	sbc h                                            ; $6174: $9c
	add [hl]                                         ; $6175: $86
	ld h, d                                          ; $6176: $62
	cp $1d                                           ; $6177: $fe $1d
	rst $38                                          ; $6179: $ff
	dec c                                            ; $617a: $0d
	rst $38                                          ; $617b: $ff
	dec b                                            ; $617c: $05
	rst $38                                          ; $617d: $ff
	ld a, l                                          ; $617e: $7d
	rst $38                                          ; $617f: $ff
	ei                                               ; $6180: $fb
	xor a                                            ; $6181: $af
	xor [hl]                                         ; $6182: $ae
	sbc $84                                          ; $6183: $de $84
	db $fc                                           ; $6185: $fc
	ld b, h                                          ; $6186: $44
	db $fc                                           ; $6187: $fc
	adc b                                            ; $6188: $88
	ld hl, sp+$7f                                    ; $6189: $f8 $7f
	ld a, a                                          ; $618b: $7f
	ret nz                                           ; $618c: $c0

	rst $38                                          ; $618d: $ff
	add b                                            ; $618e: $80
	ld a, e                                          ; $618f: $7b

jr_01e_6190:
	ld e, a                                          ; $6190: $5f
	rst SubAFromDE                                          ; $6191: $df
	ld a, a                                          ; $6192: $7f
	sbc l                                            ; $6193: $9d
	inc b                                            ; $6194: $04
	rlca                                             ; $6195: $07
	ld l, a                                          ; $6196: $6f
	db $f4                                           ; $6197: $f4
	sbc l                                            ; $6198: $9d
	ldh [rIE], a                                     ; $6199: $e0 $ff
	ld l, a                                          ; $619b: $6f
	ld h, $6b                                        ; $619c: $26 $6b
	xor d                                            ; $619e: $aa
	ld a, e                                          ; $619f: $7b
	add h                                            ; $61a0: $84
	ld [hl], a                                       ; $61a1: $77
	add d                                            ; $61a2: $82
	ld e, a                                          ; $61a3: $5f
	cp $7f                                           ; $61a4: $fe $7f
	ldh a, [c]                                       ; $61a6: $f2
	rst SubAFromDE                                          ; $61a7: $df
	ldh a, [$f5]                                     ; $61a8: $f0 $f5
	rst SubAFromDE                                          ; $61aa: $df
	ld b, $7f                                        ; $61ab: $06 $7f
	sbc d                                            ; $61ad: $9a
	sbc [hl]                                         ; $61ae: $9e
	db $10                                           ; $61af: $10
	ld a, d                                          ; $61b0: $7a
	ld a, [hl]                                       ; $61b1: $7e
	adc l                                            ; $61b2: $8d
	ld h, b                                          ; $61b3: $60
	ld a, a                                          ; $61b4: $7f
	and l                                            ; $61b5: $a5
	rst $38                                          ; $61b6: $ff
	ld h, l                                          ; $61b7: $65
	rst $38                                          ; $61b8: $ff
	adc e                                            ; $61b9: $8b
	cp $4f                                           ; $61ba: $fe $4f
	ld a, h                                          ; $61bc: $7c
	ccf                                              ; $61bd: $3f
	ld [hl], $3d                                     ; $61be: $36 $3d
	ld l, $3f                                        ; $61c0: $2e $3f
	ld h, $1f                                        ; $61c2: $26 $1f
	ld d, $7a                                        ; $61c4: $16 $7a
	jp z, Jump_01e_4072                              ; $61c6: $ca $72 $40

	sbc [hl]                                         ; $61c9: $9e
	db $10                                           ; $61ca: $10
	ld [hl], e                                       ; $61cb: $73
	ld b, b                                          ; $61cc: $40
	ld a, [hl]                                       ; $61cd: $7e
	db $db                                           ; $61ce: $db
	add e                                            ; $61cf: $83
	dec h                                            ; $61d0: $25
	rst $38                                          ; $61d1: $ff
	sub [hl]                                         ; $61d2: $96
	rst $38                                          ; $61d3: $ff
	ret                                              ; $61d4: $c9


	ld a, a                                          ; $61d5: $7f
	ldh a, [c]                                       ; $61d6: $f2
	ld a, $fe                                        ; $61d7: $3e $fe
	ld l, [hl]                                       ; $61d9: $6e
	cp [hl]                                          ; $61da: $be
	ld [hl], d                                       ; $61db: $72
	cp $62                                           ; $61dc: $fe $62
	db $fc                                           ; $61de: $fc
	ld h, h                                          ; $61df: $64
	ld hl, sp-$78                                    ; $61e0: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $61e2: $f0 $10
	inc bc                                           ; $61e4: $03
	inc bc                                           ; $61e5: $03
	inc b                                            ; $61e6: $04
	rlca                                             ; $61e7: $07
	inc b                                            ; $61e8: $04
	rlca                                             ; $61e9: $07
	ld [$770f], sp                                   ; $61ea: $08 $0f $77
	cp $96                                           ; $61ed: $fe $96
	ld c, $0f                                        ; $61ef: $0e $0f
	rrca                                             ; $61f1: $0f
	dec bc                                           ; $61f2: $0b
	ld b, $07                                        ; $61f3: $06 $07
	ld [bc], a                                       ; $61f5: $02
	inc bc                                           ; $61f6: $03
	ld [bc], a                                       ; $61f7: $02
	sbc $03                                          ; $61f8: $de $03
	ld [hl], a                                       ; $61fa: $77
	db $ec                                           ; $61fb: $ec
	rst SubAFromDE                                          ; $61fc: $df
	ld a, a                                          ; $61fd: $7f
	ld l, a                                          ; $61fe: $6f
	inc b                                            ; $61ff: $04
	ld a, a                                          ; $6200: $7f
	ld e, d                                          ; $6201: $5a
	ld a, a                                          ; $6202: $7f
	jp nz, $9495                                     ; $6203: $c2 $95 $94

	db $fc                                           ; $6206: $fc
	inc d                                            ; $6207: $14
	db $fc                                           ; $6208: $fc
	sbc h                                            ; $6209: $9c
	db $fc                                           ; $620a: $fc
	ld a, h                                          ; $620b: $7c
	db $f4                                           ; $620c: $f4
	sbc b                                            ; $620d: $98
	ld hl, sp+$76                                    ; $620e: $f8 $76
	cp c                                             ; $6210: $b9
	ld a, a                                          ; $6211: $7f
	cp $9d                                           ; $6212: $fe $9d
	add sp, -$08                                     ; $6214: $e8 $f8
	ld l, [hl]                                       ; $6216: $6e
	ld h, b                                          ; $6217: $60
	rst $38                                          ; $6218: $ff
	rst SubAFromDE                                          ; $6219: $df
	rra                                              ; $621a: $1f
	ld a, a                                          ; $621b: $7f
	add [hl]                                         ; $621c: $86
	adc d                                            ; $621d: $8a
	sbc a                                            ; $621e: $9f
	rst $38                                          ; $621f: $ff
	cp a                                             ; $6220: $bf
	ldh [$bf], a                                     ; $6221: $e0 $bf
	rst $38                                          ; $6223: $ff
	and h                                            ; $6224: $a4
	rst $38                                          ; $6225: $ff
	cp e                                             ; $6226: $bb
	rst $38                                          ; $6227: $ff
	cp e                                             ; $6228: $bb
	xor $bb                                          ; $6229: $ee $bb
	cp $ab                                           ; $622b: $fe $ab
	cp $bb                                           ; $622d: $fe $bb
	rst $38                                          ; $622f: $ff
	db $fc                                           ; $6230: $fc
	rst JumpTable                                          ; $6231: $c7
	rst $38                                          ; $6232: $ff
	ld a, e                                          ; $6233: $7b
	ld a, [hl+]                                      ; $6234: $2a
	sbc $ff                                          ; $6235: $de $ff
	ld a, e                                          ; $6237: $7b
	ei                                               ; $6238: $fb
	ld [hl], e                                       ; $6239: $73
	ld hl, sp+$7b                                    ; $623a: $f8 $7b
	ldh [$7e], a                                     ; $623c: $e0 $7e
	and $7f                                          ; $623e: $e6 $7f
	db $fc                                           ; $6240: $fc
	ld [hl], a                                       ; $6241: $77
	ret c                                            ; $6242: $d8

	ld [hl], a                                       ; $6243: $77
	ld hl, sp-$6e                                    ; $6244: $f8 $92
	sbc a                                            ; $6246: $9f
	ldh a, [hDisp1_LCDC]                                     ; $6247: $f0 $8f
	rst $38                                          ; $6249: $ff
	ld b, b                                          ; $624a: $40
	ld a, a                                          ; $624b: $7f
	ccf                                              ; $624c: $3f
	ccf                                              ; $624d: $3f
	rst SubAFromDE                                          ; $624e: $df
	ld l, e                                          ; $624f: $6b
	rst GetHLinHL                                          ; $6250: $cf
	rst $38                                          ; $6251: $ff
	inc sp                                           ; $6252: $33
	db $dd                                           ; $6253: $dd
	rst $38                                          ; $6254: $ff
	sbc l                                            ; $6255: $9d
	rlca                                             ; $6256: $07
	db $fd                                           ; $6257: $fd
	ld a, d                                          ; $6258: $7a
	and $7f                                          ; $6259: $e6 $7f
	db $fc                                           ; $625b: $fc
	sbc [hl]                                         ; $625c: $9e
	db $fd                                           ; $625d: $fd
	ld l, e                                          ; $625e: $6b
	ld hl, sp-$80                                    ; $625f: $f8 $80
	ld sp, hl                                        ; $6261: $f9
	rrca                                             ; $6262: $0f
	pop af                                           ; $6263: $f1
	rst $38                                          ; $6264: $ff
	ld [bc], a                                       ; $6265: $02
	cp $fc                                           ; $6266: $fe $fc
	db $fc                                           ; $6268: $fc
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	inc a                                            ; $626b: $3c
	inc a                                            ; $626c: $3c
	ld b, d                                          ; $626d: $42
	ld a, [hl]                                       ; $626e: $7e
	sbc c                                            ; $626f: $99
	rst $38                                          ; $6270: $ff
	and l                                            ; $6271: $a5
	rst SubAFromBC                                          ; $6272: $e7
	sbc l                                            ; $6273: $9d
	rst $38                                          ; $6274: $ff
	ld [hl], d                                       ; $6275: $72
	ld a, [hl]                                       ; $6276: $7e
	inc h                                            ; $6277: $24
	inc a                                            ; $6278: $3c
	jr z, jr_01e_62b3                                ; $6279: $28 $38

	db $10                                           ; $627b: $10
	stop                                             ; $627c: $10 $00
	nop                                              ; $627e: $00
	db $10                                           ; $627f: $10
	sbc h                                            ; $6280: $9c
	db $10                                           ; $6281: $10
	jr z, @+$3a                                      ; $6282: $28 $38

	ld l, a                                          ; $6284: $6f
	or $9a                                           ; $6285: $f6 $9a
	ld [bc], a                                       ; $6287: $02
	db $fd                                           ; $6288: $fd
	add e                                            ; $6289: $83
	inc bc                                           ; $628a: $03
	inc de                                           ; $628b: $13
	jr jr_01e_62cd                                   ; $628c: $18 $3f

	jr nz, jr_01e_62cf                               ; $628e: $20 $3f

	ld b, b                                          ; $6290: $40
	ld a, a                                          ; $6291: $7f
	ld b, h                                          ; $6292: $44
	ld a, a                                          ; $6293: $7f
	ld b, $7f                                        ; $6294: $06 $7f
	ld l, [hl]                                       ; $6296: $6e
	ld a, e                                          ; $6297: $7b
	cpl                                              ; $6298: $2f
	inc a                                            ; $6299: $3c
	rla                                              ; $629a: $17
	ld a, $2d                                        ; $629b: $3e $2d
	ld [hl], $3f                                     ; $629d: $36 $3f
	ld h, $1f                                        ; $629f: $26 $1f
	db $10                                           ; $62a1: $10
	rrca                                             ; $62a2: $0f
	add hl, bc                                       ; $62a3: $09
	rlca                                             ; $62a4: $07
	inc b                                            ; $62a5: $04
	db $fd                                           ; $62a6: $fd
	rst SubAFromDE                                          ; $62a7: $df
	ldh a, [$80]                                     ; $62a8: $f0 $80
	ld a, [bc]                                       ; $62aa: $0a
	ld a, [$fc04]                                    ; $62ab: $fa $04 $fc
	inc b                                            ; $62ae: $04
	db $fc                                           ; $62af: $fc
	ld [bc], a                                       ; $62b0: $02
	cp $82                                           ; $62b1: $fe $82

jr_01e_62b3:
	cp $e2                                           ; $62b3: $fe $e2
	ld a, $f4                                        ; $62b5: $3e $f4
	ld a, $fa                                        ; $62b7: $3e $fa
	ld l, [hl]                                       ; $62b9: $6e
	or [hl]                                          ; $62ba: $b6
	ld a, [$62fe]                                    ; $62bb: $fa $fe $62
	db $fc                                           ; $62be: $fc
	inc b                                            ; $62bf: $04
	cp b                                             ; $62c0: $b8
	ret z                                            ; $62c1: $c8

	ldh a, [rAUD1SWEEP]                              ; $62c2: $f0 $10
	rrca                                             ; $62c4: $0f
	dec bc                                           ; $62c5: $0b
	rra                                              ; $62c6: $1f
	dec d                                            ; $62c7: $15
	rra                                              ; $62c8: $1f
	sbc [hl]                                         ; $62c9: $9e
	inc de                                           ; $62ca: $13
	ld l, a                                          ; $62cb: $6f
	db $fc                                           ; $62cc: $fc

jr_01e_62cd:
	sbc e                                            ; $62cd: $9b
	rrca                                             ; $62ce: $0f

jr_01e_62cf:
	dec c                                            ; $62cf: $0d
	rrca                                             ; $62d0: $0f
	add hl, bc                                       ; $62d1: $09
	ld a, e                                          ; $62d2: $7b
	cp $8a                                           ; $62d3: $fe $8a
	dec bc                                           ; $62d5: $0b
	rlca                                             ; $62d6: $07
	rlca                                             ; $62d7: $07
	inc bc                                           ; $62d8: $03
	inc bc                                           ; $62d9: $03
	rlca                                             ; $62da: $07
	rlca                                             ; $62db: $07
	rrca                                             ; $62dc: $0f
	rrca                                             ; $62dd: $0f
	ld a, a                                          ; $62de: $7f
	ld a, a                                          ; $62df: $7f
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	ld hl, sp-$18                                    ; $62e2: $f8 $e8
	db $fc                                           ; $62e4: $fc
	ld d, h                                          ; $62e5: $54
	cp $62                                           ; $62e6: $fe $62
	cp $52                                           ; $62e8: $fe $52
	ld a, e                                          ; $62ea: $7b
	ret nc                                           ; $62eb: $d0

	sbc d                                            ; $62ec: $9a
	ld d, h                                          ; $62ed: $54
	db $fc                                           ; $62ee: $fc
	call z, $c8f8                                    ; $62ef: $cc $f8 $c8
	ld a, e                                          ; $62f2: $7b
	cp $94                                           ; $62f3: $fe $94
	ld c, b                                          ; $62f5: $48
	ld hl, sp+$78                                    ; $62f6: $f8 $78
	ld h, b                                          ; $62f8: $60
	ld h, b                                          ; $62f9: $60
	ld [hl], b                                       ; $62fa: $70
	ld [hl], b                                       ; $62fb: $70
	ld a, b                                          ; $62fc: $78
	ld a, b                                          ; $62fd: $78
	rst $38                                          ; $62fe: $ff
	rst $38                                          ; $62ff: $ff
	ld sp, hl                                        ; $6300: $f9
	rst SubAFromDE                                          ; $6301: $df
	rlca                                             ; $6302: $07
	sbc b                                            ; $6303: $98
	inc c                                            ; $6304: $0c
	rrca                                             ; $6305: $0f
	db $10                                           ; $6306: $10
	rra                                              ; $6307: $1f
	db $10                                           ; $6308: $10
	rra                                              ; $6309: $1f
	jr nz, jr_01e_6387                               ; $630a: $20 $7b

	ld a, b                                          ; $630c: $78
	sub e                                            ; $630d: $93
	nop                                              ; $630e: $00
	ccf                                              ; $630f: $3f
	jr nz, jr_01e_6391                               ; $6310: $20 $7f

	ld d, h                                          ; $6312: $54
	ld e, a                                          ; $6313: $5f
	inc d                                            ; $6314: $14
	rra                                              ; $6315: $1f
	ld d, $1b                                        ; $6316: $16 $1b
	rrca                                             ; $6318: $0f
	ld [$806f], sp                                   ; $6319: $08 $6f $80
	rst $38                                          ; $631c: $ff
	rst SubAFromDE                                          ; $631d: $df
	ld a, b                                          ; $631e: $78
	add a                                            ; $631f: $87
	adc h                                            ; $6320: $8c
	db $fc                                           ; $6321: $fc
	ld h, h                                          ; $6322: $64
	db $fc                                           ; $6323: $fc
	sub d                                            ; $6324: $92
	cp $42                                           ; $6325: $fe $42
	cp $01                                           ; $6327: $fe $01
	rst $38                                          ; $6329: $ff
	ld bc, $81ff                                     ; $632a: $01 $ff $81
	rst $38                                          ; $632d: $ff
	jp nc, $f6fe                                     ; $632e: $d2 $fe $f6

	xor d                                            ; $6331: $aa
	db $fc                                           ; $6332: $fc
	add b                                            ; $6333: $80
	ld hl, sp+$08                                    ; $6334: $f8 $08
	db $fc                                           ; $6336: $fc
	inc e                                            ; $6337: $1c
	ld h, e                                          ; $6338: $63
	add b                                            ; $6339: $80
	ld a, a                                          ; $633a: $7f
	jp nc, $8477                                     ; $633b: $d2 $77 $84

	ld c, e                                          ; $633e: $4b
	add d                                            ; $633f: $82
	rst $38                                          ; $6340: $ff
	sbc l                                            ; $6341: $9d
	db $fc                                           ; $6342: $fc
	db $e4                                           ; $6343: $e4
	ld [hl], a                                       ; $6344: $77
	add h                                            ; $6345: $84
	ld a, a                                          ; $6346: $7f
	db $fc                                           ; $6347: $fc
	ld a, a                                          ; $6348: $7f
	pop bc                                           ; $6349: $c1
	ld [hl], e                                       ; $634a: $73
	add h                                            ; $634b: $84
	inc sp                                           ; $634c: $33
	add d                                            ; $634d: $82
	sbc e                                            ; $634e: $9b
	ld a, [hl+]                                      ; $634f: $2a
	ld l, $29                                        ; $6350: $2e $29
	ccf                                              ; $6352: $3f
	ld [hl], a                                       ; $6353: $77
	add h                                            ; $6354: $84
	ld a, [hl]                                       ; $6355: $7e
	cp $91                                           ; $6356: $fe $91
	ld d, h                                          ; $6358: $54
	ld a, a                                          ; $6359: $7f
	inc l                                            ; $635a: $2c
	scf                                              ; $635b: $37
	ld a, $27                                        ; $635c: $3e $27
	ld a, $2d                                        ; $635e: $3e $2d
	halt                                             ; $6360: $76
	ld e, l                                          ; $6361: $5d
	ld a, a                                          ; $6362: $7f
	ld c, h                                          ; $6363: $4c
	ccf                                              ; $6364: $3f
	jr nz, @+$7c                                     ; $6365: $20 $7a

	cp $9e                                           ; $6367: $fe $9e
	inc c                                            ; $6369: $0c
	ei                                               ; $636a: $fb
	rst SubAFromDE                                          ; $636b: $df
	ldh [$9e], a                                     ; $636c: $e0 $9e
	jr nc, @+$7c                                     ; $636e: $30 $7a

	db $fc                                           ; $6370: $fc
	sbc e                                            ; $6371: $9b
	inc c                                            ; $6372: $0c
	db $fc                                           ; $6373: $fc
	ld b, $fe                                        ; $6374: $06 $fe
	halt                                             ; $6376: $76
	ld hl, sp-$77                                    ; $6377: $f8 $89
	call nz, $c4fc                                   ; $6379: $c4 $fc $c4
	ld a, h                                          ; $637c: $7c
	ret z                                            ; $637d: $c8

	ld a, b                                          ; $637e: $78
	adc b                                            ; $637f: $88
	ld hl, sp+$10                                    ; $6380: $f8 $10
	ldh a, [$f8]                                     ; $6382: $f0 $f8
	ld hl, sp+$78                                    ; $6384: $f8 $78
	ld c, b                                          ; $6386: $48

jr_01e_6387:
	ld a, h                                          ; $6387: $7c
	ld h, h                                          ; $6388: $64
	db $fc                                           ; $6389: $fc
	and h                                            ; $638a: $a4
	cp $a2                                           ; $638b: $fe $a2
	cp $c2                                           ; $638d: $fe $c2
	ld a, e                                          ; $638f: $7b
	jp hl                                            ; $6390: $e9


jr_01e_6391:
	sub b                                            ; $6391: $90
	xor h                                            ; $6392: $ac
	db $fc                                           ; $6393: $fc
	sub h                                            ; $6394: $94
	cp $82                                           ; $6395: $fe $82
	ld a, [hl]                                       ; $6397: $7e
	ld b, d                                          ; $6398: $42
	ld a, [hl]                                       ; $6399: $7e

jr_01e_639a:
	ld b, d                                          ; $639a: $42
	inc a                                            ; $639b: $3c
	inc a                                            ; $639c: $3c
	inc e                                            ; $639d: $1c
	inc e                                            ; $639e: $1c
	ld a, h                                          ; $639f: $7c
	ld a, h                                          ; $63a0: $7c
	ld h, a                                          ; $63a1: $67
	sbc [hl]                                         ; $63a2: $9e
	ld c, e                                          ; $63a3: $4b
	and b                                            ; $63a4: $a0
	adc h                                            ; $63a5: $8c
	inc hl                                           ; $63a6: $23
	ld a, $29                                        ; $63a7: $3e $29
	ld a, [hl]                                       ; $63a9: $7e
	ld d, l                                          ; $63aa: $55
	ld a, a                                          ; $63ab: $7f
	ld c, b                                          ; $63ac: $48
	ccf                                              ; $63ad: $3f
	jr nc, jr_01e_63bf                               ; $63ae: $30 $0f

	ld [$0c0f], sp                                   ; $63b0: $08 $0f $0c
	ld b, $06                                        ; $63b3: $06 $06
	rra                                              ; $63b5: $1f
	add hl, de                                       ; $63b6: $19
	rra                                              ; $63b7: $1f
	ld de, $967a                                     ; $63b8: $11 $7a $96
	sbc [hl]                                         ; $63bb: $9e
	rlca                                             ; $63bc: $07
	rst AddAOntoHL                                          ; $63bd: $ef
	rst SubAFromDE                                          ; $63be: $df

jr_01e_63bf:
	ccf                                              ; $63bf: $3f
	rst $38                                          ; $63c0: $ff
	sub e                                            ; $63c1: $93
	rra                                              ; $63c2: $1f
	rla                                              ; $63c3: $17
	rst $38                                          ; $63c4: $ff
	ld [$06ff], a                                    ; $63c5: $ea $ff $06
	rst $38                                          ; $63c8: $ff
	ld a, [bc]                                       ; $63c9: $0a
	rst $38                                          ; $63ca: $ff
	ld h, [hl]                                       ; $63cb: $66
	rra                                              ; $63cc: $1f
	ld [de], a                                       ; $63cd: $12
	ld a, e                                          ; $63ce: $7b
	jr jr_01e_644c                                   ; $63cf: $18 $7b

	cp $95                                           ; $63d1: $fe $95
	ld e, $12                                        ; $63d3: $1e $12
	ld e, $1e                                        ; $63d5: $1e $1e
	ld b, $06                                        ; $63d7: $06 $06
	ld c, $0e                                        ; $63d9: $0e $0e
	ld e, $1e                                        ; $63db: $1e $1e
	ld [hl], a                                       ; $63dd: $77
	and b                                            ; $63de: $a0
	sub c                                            ; $63df: $91
	ld hl, sp-$28                                    ; $63e0: $f8 $d8
	rst $38                                          ; $63e2: $ff
	and a                                            ; $63e3: $a7
	rst $38                                          ; $63e4: $ff
	ret nz                                           ; $63e5: $c0

	rst $38                                          ; $63e6: $ff
	and b                                            ; $63e7: $a0
	rst $38                                          ; $63e8: $ff
	call z, $92f2                                    ; $63e9: $cc $f2 $92
	ldh a, [hDisp1_SCY]                                     ; $63ec: $f0 $90
	ld [hl], e                                       ; $63ee: $73
	cp $96                                           ; $63ef: $fe $96
	ret nc                                           ; $63f1: $d0

	ldh [$e0], a                                     ; $63f2: $e0 $e0
	ret nz                                           ; $63f4: $c0

	ret nz                                           ; $63f5: $c0

	ldh [$e0], a                                     ; $63f6: $e0 $e0
	ldh a, [$f0]                                     ; $63f8: $f0 $f0
	ld h, a                                          ; $63fa: $67
	add b                                            ; $63fb: $80
	ld b, [hl]                                       ; $63fc: $46
	jr nz, jr_01e_639a                               ; $63fd: $20 $9b

	rra                                              ; $63ff: $1f
	ld [hl-], a                                      ; $6400: $32
	cpl                                              ; $6401: $2f
	inc a                                            ; $6402: $3c
	ld d, $20                                        ; $6403: $16 $20
	sbc c                                            ; $6405: $99

jr_01e_6406:
	ldh a, [c]                                       ; $6406: $f2
	xor $fe                                          ; $6407: $ee $fe
	ld [de], a                                       ; $6409: $12
	xor $72                                          ; $640a: $ee $72
	ld l, [hl]                                       ; $640c: $6e
	jr nz, jr_01e_6406                               ; $640d: $20 $f7

	sbc b                                            ; $640f: $98
	jr nc, jr_01e_6443                               ; $6410: $30 $31

	ld c, a                                          ; $6412: $4f
	ld a, [hl]                                       ; $6413: $7e
	cp b                                             ; $6414: $b8
	rst $38                                          ; $6415: $ff
	or b                                             ; $6416: $b0
	ld a, e                                          ; $6417: $7b
	sub l                                            ; $6418: $95
	sbc b                                            ; $6419: $98
	ld e, [hl]                                       ; $641a: $5e
	ld a, a                                          ; $641b: $7f
	ccf                                              ; $641c: $3f
	dec [hl]                                         ; $641d: $35
	dec d                                            ; $641e: $15
	dec de                                           ; $641f: $1b
	ld de, $6f7b                                     ; $6420: $11 $7b $6f
	ld a, [hl]                                       ; $6423: $7e
	sub c                                            ; $6424: $91
	rst FarCall                                          ; $6425: $f7
	rst SubAFromDE                                          ; $6426: $df
	sbc h                                            ; $6427: $9c
	ld a, [hl]                                       ; $6428: $7e
	sbc c                                            ; $6429: $99
	adc b                                            ; $642a: $88
	dec e                                            ; $642b: $1d
	rst $38                                          ; $642c: $ff
	dec c                                            ; $642d: $0d
	rst $38                                          ; $642e: $ff
	dec b                                            ; $642f: $05
	rst $38                                          ; $6430: $ff
	ld a, l                                          ; $6431: $7d
	rst $38                                          ; $6432: $ff
	ei                                               ; $6433: $fb
	xor a                                            ; $6434: $af
	xor [hl]                                         ; $6435: $ae
	sbc $84                                          ; $6436: $de $84
	db $fc                                           ; $6438: $fc
	ld b, h                                          ; $6439: $44
	db $fc                                           ; $643a: $fc
	adc b                                            ; $643b: $88
	ld hl, sp+$7f                                    ; $643c: $f8 $7f
	ld a, a                                          ; $643e: $7f
	ret nz                                           ; $643f: $c0

	rst $38                                          ; $6440: $ff
	add b                                            ; $6441: $80
	ld a, e                                          ; $6442: $7b

jr_01e_6443:
	ld e, a                                          ; $6443: $5f
	rst SubAFromDE                                          ; $6444: $df
	ld a, a                                          ; $6445: $7f
	sbc l                                            ; $6446: $9d
	inc b                                            ; $6447: $04
	rlca                                             ; $6448: $07
	ld l, a                                          ; $6449: $6f
	db $f4                                           ; $644a: $f4
	sbc l                                            ; $644b: $9d

jr_01e_644c:
	ldh [rIE], a                                     ; $644c: $e0 $ff
	ld [hl], a                                       ; $644e: $77
	jr z, @+$65                                      ; $644f: $28 $63

	xor d                                            ; $6451: $aa
	sbc d                                            ; $6452: $9a
	ldh a, [$08]                                     ; $6453: $f0 $08
	ld hl, sp+$08                                    ; $6455: $f8 $08
	ld hl, sp+$77                                    ; $6457: $f8 $77
	add d                                            ; $6459: $82
	ld h, a                                          ; $645a: $67
	cp $7f                                           ; $645b: $fe $7f
	ldh a, [c]                                       ; $645d: $f2
	rst SubAFromDE                                          ; $645e: $df
	ldh a, [$f5]                                     ; $645f: $f0 $f5
	rst SubAFromDE                                          ; $6461: $df
	ld b, $7f                                        ; $6462: $06 $7f
	sbc d                                            ; $6464: $9a
	halt                                             ; $6465: $76
	jp nz, $6091                                     ; $6466: $c2 $91 $60

	ld a, a                                          ; $6469: $7f
	and l                                            ; $646a: $a5
	rst $38                                          ; $646b: $ff
	ld h, l                                          ; $646c: $65
	rst $38                                          ; $646d: $ff
	adc e                                            ; $646e: $8b
	cp $4f                                           ; $646f: $fe $4f
	ld a, h                                          ; $6471: $7c
	ccf                                              ; $6472: $3f
	ld [hl], $3d                                     ; $6473: $36 $3d
	ld l, $7b                                        ; $6475: $2e $7b
	ld b, b                                          ; $6477: $40
	sbc [hl]                                         ; $6478: $9e
	ld d, $6f                                        ; $6479: $16 $6f
	ld b, b                                          ; $647b: $40
	rst SubAFromDE                                          ; $647c: $df
	ldh [$7e], a                                     ; $647d: $e0 $7e
	ld a, b                                          ; $647f: $78
	ld [hl], a                                       ; $6480: $77
	cp [hl]                                          ; $6481: $be
	ld a, [hl]                                       ; $6482: $7e
	ld h, h                                          ; $6483: $64
	sub e                                            ; $6484: $93
	dec h                                            ; $6485: $25
	rst $38                                          ; $6486: $ff
	sub [hl]                                         ; $6487: $96
	rst $38                                          ; $6488: $ff
	ret                                              ; $6489: $c9


	ld a, a                                          ; $648a: $7f
	ldh a, [c]                                       ; $648b: $f2
	ld a, $fe                                        ; $648c: $3e $fe
	ld l, [hl]                                       ; $648e: $6e
	cp [hl]                                          ; $648f: $be
	ld [hl], d                                       ; $6490: $72
	ld a, c                                          ; $6491: $79
	sub b                                            ; $6492: $90
	ld a, [hl]                                       ; $6493: $7e
	ld c, $95                                        ; $6494: $0e $95
	adc b                                            ; $6496: $88
	ldh a, [rAUD1SWEEP]                              ; $6497: $f0 $10
	inc bc                                           ; $6499: $03
	inc bc                                           ; $649a: $03
	inc b                                            ; $649b: $04
	rlca                                             ; $649c: $07
	inc b                                            ; $649d: $04
	rlca                                             ; $649e: $07
	ld [$957a], sp                                   ; $649f: $08 $7a $95
	ld a, a                                          ; $64a2: $7f
	cp $96                                           ; $64a3: $fe $96
	ld c, $0f                                        ; $64a5: $0e $0f
	rrca                                             ; $64a7: $0f
	dec bc                                           ; $64a8: $0b
	ld b, $07                                        ; $64a9: $06 $07
	ld [bc], a                                       ; $64ab: $02
	inc bc                                           ; $64ac: $03
	ld [bc], a                                       ; $64ad: $02
	sbc $03                                          ; $64ae: $de $03
	ld [hl], a                                       ; $64b0: $77
	db $ec                                           ; $64b1: $ec
	ld [hl], l                                       ; $64b2: $75
	sbc $df                                          ; $64b3: $de $df
	ldh a, [$7f]                                     ; $64b5: $f0 $7f
	call nz, Call_01e_5a7f                           ; $64b7: $c4 $7f $5a
	ld a, a                                          ; $64ba: $7f
	jp nz, $9495                                     ; $64bb: $c2 $95 $94

	db $fc                                           ; $64be: $fc
	inc d                                            ; $64bf: $14
	db $fc                                           ; $64c0: $fc
	sbc h                                            ; $64c1: $9c
	db $fc                                           ; $64c2: $fc
	ld a, h                                          ; $64c3: $7c
	db $f4                                           ; $64c4: $f4
	sbc b                                            ; $64c5: $98
	ld hl, sp+$6e                                    ; $64c6: $f8 $6e
	cp e                                             ; $64c8: $bb
	sbc e                                            ; $64c9: $9b
	add sp, -$08                                     ; $64ca: $e8 $f8
	add h                                            ; $64cc: $84
	db $fc                                           ; $64cd: $fc
	ld l, [hl]                                       ; $64ce: $6e
	ret nz                                           ; $64cf: $c0

	rst SubAFromDE                                          ; $64d0: $df
	rra                                              ; $64d1: $1f
	ld a, a                                          ; $64d2: $7f
	add [hl]                                         ; $64d3: $86
	adc d                                            ; $64d4: $8a
	sbc a                                            ; $64d5: $9f
	rst $38                                          ; $64d6: $ff
	cp a                                             ; $64d7: $bf
	ldh [$bf], a                                     ; $64d8: $e0 $bf
	rst $38                                          ; $64da: $ff
	and h                                            ; $64db: $a4
	rst $38                                          ; $64dc: $ff
	cp e                                             ; $64dd: $bb
	rst $38                                          ; $64de: $ff
	cp e                                             ; $64df: $bb
	xor $bb                                          ; $64e0: $ee $bb
	cp $ab                                           ; $64e2: $fe $ab
	cp $bb                                           ; $64e4: $fe $bb
	rst $38                                          ; $64e6: $ff
	db $fc                                           ; $64e7: $fc
	rst JumpTable                                          ; $64e8: $c7
	rst $38                                          ; $64e9: $ff
	ld a, e                                          ; $64ea: $7b
	ld a, [hl+]                                      ; $64eb: $2a
	sbc $ff                                          ; $64ec: $de $ff
	ld a, e                                          ; $64ee: $7b
	ei                                               ; $64ef: $fb
	ld [hl], e                                       ; $64f0: $73
	ld hl, sp+$7b                                    ; $64f1: $f8 $7b
	ldh [$7e], a                                     ; $64f3: $e0 $7e
	and $7f                                          ; $64f5: $e6 $7f
	db $fc                                           ; $64f7: $fc
	ld [hl], a                                       ; $64f8: $77
	ret c                                            ; $64f9: $d8

	ld [hl], a                                       ; $64fa: $77
	ld hl, sp-$6e                                    ; $64fb: $f8 $92
	sbc a                                            ; $64fd: $9f

jr_01e_64fe:
	ldh a, [hDisp1_LCDC]                                     ; $64fe: $f0 $8f
	rst $38                                          ; $6500: $ff
	ld b, b                                          ; $6501: $40
	ld a, a                                          ; $6502: $7f
	ccf                                              ; $6503: $3f
	ccf                                              ; $6504: $3f
	rst SubAFromDE                                          ; $6505: $df
	ld l, e                                          ; $6506: $6b
	rst GetHLinHL                                          ; $6507: $cf
	rst $38                                          ; $6508: $ff
	inc sp                                           ; $6509: $33
	db $dd                                           ; $650a: $dd
	rst $38                                          ; $650b: $ff
	sbc l                                            ; $650c: $9d
	rlca                                             ; $650d: $07
	db $fd                                           ; $650e: $fd
	ld a, d                                          ; $650f: $7a
	and $7f                                          ; $6510: $e6 $7f
	db $fc                                           ; $6512: $fc
	sbc [hl]                                         ; $6513: $9e
	db $fd                                           ; $6514: $fd
	ld l, e                                          ; $6515: $6b
	ld hl, sp-$69                                    ; $6516: $f8 $97
	ld sp, hl                                        ; $6518: $f9
	rrca                                             ; $6519: $0f
	pop af                                           ; $651a: $f1
	rst $38                                          ; $651b: $ff
	ld [bc], a                                       ; $651c: $02
	cp $fc                                           ; $651d: $fe $fc
	db $fc                                           ; $651f: $fc
	xor c                                            ; $6520: $a9
	ld bc, $289b                                     ; $6521: $01 $9b $28
	jr nz, jr_01e_64fe                               ; $6524: $20 $d8

	nop                                              ; $6526: $00
	sbc $dc                                          ; $6527: $de $dc
	sbc [hl]                                         ; $6529: $9e
	ldh a, [$de]                                     ; $652a: $f0 $de
	ld [hl-], a                                      ; $652c: $32
	adc l                                            ; $652d: $8d
	ld b, $68                                        ; $652e: $06 $68
	jr z, jr_01e_659a                                ; $6530: $28 $68

	ld a, [hl+]                                      ; $6532: $2a
	ld hl, sp+$00                                    ; $6533: $f8 $00
	ld hl, sp-$28                                    ; $6535: $f8 $d8
	ldh a, [$e0]                                     ; $6537: $f0 $e0
	ldh [$ec], a                                     ; $6539: $e0 $ec
	inc b                                            ; $653b: $04
	ld [bc], a                                       ; $653c: $02
	nop                                              ; $653d: $00
	ld [hl], $2a                                     ; $653e: $36 $2a
	sbc $28                                          ; $6540: $de $28
	sbc e                                            ; $6542: $9b
	ret nc                                           ; $6543: $d0

	jr z, jr_01e_6566                                ; $6544: $28 $20

	ret nc                                           ; $6546: $d0

	sbc $ec                                          ; $6547: $de $ec
	sbc d                                            ; $6549: $9a
	call c, $3634                                    ; $654a: $dc $34 $36
	inc [hl]                                         ; $654d: $34
	ld [hl-], a                                      ; $654e: $32
	sbc $28                                          ; $654f: $de $28
	sbc [hl]                                         ; $6551: $9e
	add hl, hl                                       ; $6552: $29
	ld a, e                                          ; $6553: $7b
	ret nc                                           ; $6554: $d0

	sbc [hl]                                         ; $6555: $9e
	ret nc                                           ; $6556: $d0

	db $dd                                           ; $6557: $dd
	call c, $32dd                                    ; $6558: $dc $dd $32
	ld a, e                                          ; $655b: $7b
	ret nc                                           ; $655c: $d0

	sbc l                                            ; $655d: $9d
	jr z, jr_01e_6560                                ; $655e: $28 $00

jr_01e_6560:
	ld a, e                                          ; $6560: $7b
	rst GetHLinHL                                          ; $6561: $cf

jr_01e_6562:
	rst SubAFromDE                                          ; $6562: $df
	pop af                                           ; $6563: $f1
	rst SubAFromDE                                          ; $6564: $df
	pop hl                                           ; $6565: $e1

jr_01e_6566:
	sbc d                                            ; $6566: $9a
	ld c, $0c                                        ; $6567: $0e $0c
	ld a, [bc]                                       ; $6569: $0a
	ld [$772a], sp                                   ; $656a: $08 $2a $77
	rst GetHLinHL                                          ; $656d: $cf
	ld a, e                                          ; $656e: $7b
	ldh [$dd], a                                     ; $656f: $e0 $dd
	db $ec                                           ; $6571: $ec
	ld a, a                                          ; $6572: $7f
	pop de                                           ; $6573: $d1
	ld a, a                                          ; $6574: $7f
	cp $77                                           ; $6575: $fe $77
	ret nc                                           ; $6577: $d0

	ld a, a                                          ; $6578: $7f
	ldh [c], a                                       ; $6579: $e2
	sub a                                            ; $657a: $97
	jr @+$12                                         ; $657b: $18 $10

	ldh [$e0], a                                     ; $657d: $e0 $e0
	call c, $10dc                                    ; $657f: $dc $dc $10
	ld [de], a                                       ; $6582: $12
	ld a, e                                          ; $6583: $7b
	ret nc                                           ; $6584: $d0

	rst SubAFromDE                                          ; $6585: $df

jr_01e_6586:
	ld l, b                                          ; $6586: $68
	sbc d                                            ; $6587: $9a
	jr z, jr_01e_6562                                ; $6588: $28 $d8

	ret nc                                           ; $658a: $d0

	ld bc, $7bf9                                     ; $658b: $01 $f9 $7b
	sub c                                            ; $658e: $91
	ld a, e                                          ; $658f: $7b
	sub b                                            ; $6590: $90
	sub a                                            ; $6591: $97
	inc e                                            ; $6592: $1c
	ld a, [de]                                       ; $6593: $1a
	ld l, b                                          ; $6594: $68
	jr z, jr_01e_65c1                                ; $6595: $28 $2a

	ld a, [hl+]                                      ; $6597: $2a
	jr jr_01e_65aa                                   ; $6598: $18 $10

jr_01e_659a:
	ld d, e                                          ; $659a: $53
	ret nc                                           ; $659b: $d0

	sub b                                            ; $659c: $90
	jr z, jr_01e_65a8                                ; $659d: $28 $09

	pop af                                           ; $659f: $f1
	jr z, jr_01e_65c2                                ; $65a0: $28 $20

	ldh a, [$f0]                                     ; $65a2: $f0 $f0
	db $ed                                           ; $65a4: $ed
	db $ed                                           ; $65a5: $ed
	jr @+$1a                                         ; $65a6: $18 $18

jr_01e_65a8:
	jr nc, jr_01e_65d8                               ; $65a8: $30 $2e

jr_01e_65aa:
	ld l, [hl]                                       ; $65aa: $6e
	ld l, $77                                        ; $65ab: $2e $77
	or b                                             ; $65ad: $b0
	ld a, a                                          ; $65ae: $7f
	cp [hl]                                          ; $65af: $be
	rst SubAFromDE                                          ; $65b0: $df
	db $dd                                           ; $65b1: $dd
	rst SubAFromDE                                          ; $65b2: $df
	ldh [$9b], a                                     ; $65b3: $e0 $9b
	inc l                                            ; $65b5: $2c
	ld a, [hl+]                                      ; $65b6: $2a
	ld [de], a                                       ; $65b7: $12
	db $10                                           ; $65b8: $10
	ld a, e                                          ; $65b9: $7b
	add d                                            ; $65ba: $82
	sbc d                                            ; $65bb: $9a
	jr z, jr_01e_6586                                ; $65bc: $28 $c8

	ret nz                                           ; $65be: $c0

	jr z, jr_01e_65e1                                ; $65bf: $28 $20

jr_01e_65c1:
	ld d, a                                          ; $65c1: $57

jr_01e_65c2:
	add b                                            ; $65c2: $80
	ld a, a                                          ; $65c3: $7f
	ldh a, [$99]                                     ; $65c4: $f0 $99
	rst SubAFromHL                                          ; $65c6: $d7
	rst GetHLinHL                                          ; $65c7: $cf
	db $ec                                           ; $65c8: $ec
	db $ec                                           ; $65c9: $ec
	xor $ee                                          ; $65ca: $ee $ee
	ld a, e                                          ; $65cc: $7b
	jp nz, $269d                                     ; $65cd: $c2 $9d $26

	jr z, jr_01e_664d                                ; $65d0: $28 $7b

	or b                                             ; $65d2: $b0
	ld a, a                                          ; $65d3: $7f
	ldh a, [c]                                       ; $65d4: $f2
	ld a, a                                          ; $65d5: $7f
	ldh [$df], a                                     ; $65d6: $e0 $df

jr_01e_65d8:
	sbc $df                                          ; $65d8: $de $df
	db $ec                                           ; $65da: $ec
	sbc e                                            ; $65db: $9b
	inc h                                            ; $65dc: $24
	ld [hl+], a                                      ; $65dd: $22
	ld [hl], $34                                     ; $65de: $36 $34
	ld [hl], a                                       ; $65e0: $77

jr_01e_65e1:
	ld [hl], b                                       ; $65e1: $70
	sbc e                                            ; $65e2: $9b
	add hl, bc                                       ; $65e3: $09
	ld bc, $f1f9                                     ; $65e4: $01 $f9 $f1
	db $dd                                           ; $65e7: $dd
	ldh a, [$97]                                     ; $65e8: $f0 $97
	jr jr_01e_6608                                   ; $65ea: $18 $1c

	ld a, [de]                                       ; $65ec: $1a
	jr jr_01e_665d                                   ; $65ed: $18 $6e

	ld a, [hl+]                                      ; $65ef: $2a
	ld a, [hl+]                                      ; $65f0: $2a
	cpl                                              ; $65f1: $2f
	scf                                              ; $65f2: $37
	ld b, b                                          ; $65f3: $40
	rst SubAFromDE                                          ; $65f4: $df
	ldh [$df], a                                     ; $65f5: $e0 $df
	ldh a, [$7f]                                     ; $65f7: $f0 $7f
	and d                                            ; $65f9: $a2
	sbc l                                            ; $65fa: $9d
	ld b, $04                                        ; $65fb: $06 $04
	ld [hl], a                                       ; $65fd: $77
	ret nz                                           ; $65fe: $c0

	ld a, a                                          ; $65ff: $7f
	ldh [c], a                                       ; $6600: $e2
	ld a, a                                          ; $6601: $7f
	sbc $57                                          ; $6602: $de $57
	ld b, b                                          ; $6604: $40
	ld b, a                                          ; $6605: $47
	ret nc                                           ; $6606: $d0

	ld a, e                                          ; $6607: $7b

jr_01e_6608:
	pop de                                           ; $6608: $d1
	sbc [hl]                                         ; $6609: $9e
	nop                                              ; $660a: $00
	ld a, e                                          ; $660b: $7b
	pop de                                           ; $660c: $d1
	sub [hl]                                         ; $660d: $96
	ldh [rAUD1ENV], a                                ; $660e: $e0 $12
	ld b, $04                                        ; $6610: $06 $04
	db $10                                           ; $6612: $10
	ld l, b                                          ; $6613: $68
	ld a, [hl+]                                      ; $6614: $2a
	ld a, [hl+]                                      ; $6615: $2a
	ld l, b                                          ; $6616: $68
	ccf                                              ; $6617: $3f
	ret nc                                           ; $6618: $d0

	ld a, a                                          ; $6619: $7f
	ld l, [hl]                                       ; $661a: $6e
	ld d, a                                          ; $661b: $57
	jr nc, jr_01e_6695                               ; $661c: $30 $77

	ldh a, [$57]                                     ; $661e: $f0 $57
	ret nz                                           ; $6620: $c0

	sbc h                                            ; $6621: $9c
	db $fc                                           ; $6622: $fc
	rst $38                                          ; $6623: $ff
	rst FarCall                                          ; $6624: $f7
	halt                                             ; $6625: $76
	and b                                            ; $6626: $a0
	sbc d                                            ; $6627: $9a
	sbc $14                                          ; $6628: $de $14
	ld [de], a                                       ; $662a: $12
	ld d, $2c                                        ; $662b: $16 $2c
	ld [hl], d                                       ; $662d: $72
	and b                                            ; $662e: $a0
	ld a, a                                          ; $662f: $7f
	ld c, a                                          ; $6630: $4f
	adc [hl]                                         ; $6631: $8e
	add hl, de                                       ; $6632: $19
	sbc $ee                                          ; $6633: $de $ee
	xor $dc                                          ; $6635: $ee $dc
	ld a, [hl+]                                      ; $6637: $2a
	jr z, jr_01e_6660                                ; $6638: $28 $26

	ld [hl-], a                                      ; $663a: $32
	jr z, jr_01e_6667                                ; $663b: $28 $2a

	dec hl                                           ; $663d: $2b
	ld l, b                                          ; $663e: $68
	ld de, $c0c8                                     ; $663f: $11 $c8 $c0
	add hl, de                                       ; $6642: $19
	sbc $dc                                          ; $6643: $de $dc
	sbc [hl]                                         ; $6645: $9e
	db $ec                                           ; $6646: $ec

jr_01e_6647:
	sbc $32                                          ; $6647: $de $32
	sbc [hl]                                         ; $6649: $9e
	ld [hl], $7b                                     ; $664a: $36 $7b
	pop de                                           ; $664c: $d1

jr_01e_664d:
	sbc [hl]                                         ; $664d: $9e
	jr z, @+$7d                                      ; $664e: $28 $7b

	ldh a, [$9e]                                     ; $6650: $f0 $9e
	db $fc                                           ; $6652: $fc
	sbc $ec                                          ; $6653: $de $ec
	sbc [hl]                                         ; $6655: $9e
	ldh a, [$7b]                                     ; $6656: $f0 $7b
	or c                                             ; $6658: $b1
	sbc [hl]                                         ; $6659: $9e
	inc d                                            ; $665a: $14
	sbc $28                                          ; $665b: $de $28

jr_01e_665d:
	sub d                                            ; $665d: $92
	ld l, d                                          ; $665e: $6a
	ld sp, hl                                        ; $665f: $f9

jr_01e_6660:
	ld bc, $2028                                     ; $6660: $01 $28 $20
	ldh [$e0], a                                     ; $6663: $e0 $e0
	db $ed                                           ; $6665: $ed
	db $ed                                           ; $6666: $ed

jr_01e_6667:
	ld [de], a                                       ; $6667: $12
	ld d, $30                                        ; $6668: $16 $30
	ld l, $7a                                        ; $666a: $2e $7a
	or c                                             ; $666c: $b1
	sub e                                            ; $666d: $93
	jr z, jr_01e_6647                                ; $666e: $28 $d7

	rst GetHLinHL                                          ; $6670: $cf
	ret c                                            ; $6671: $d8

	ret nc                                           ; $6672: $d0

	xor $ee                                          ; $6673: $ee $ee
	sbc $de                                          ; $6675: $de $de
	jr z, jr_01e_669f                                ; $6677: $28 $26

	inc l                                            ; $6679: $2c
	sbc $2a                                          ; $667a: $de $2a
	ld a, e                                          ; $667c: $7b
	ld a, a                                          ; $667d: $7f
	sbc [hl]                                         ; $667e: $9e
	ld hl, $d076                                     ; $667f: $21 $76 $d0
	rst SubAFromDE                                          ; $6682: $df
	ldh a, [$7f]                                     ; $6683: $f0 $7f
	nop                                              ; $6685: $00
	ld a, a                                          ; $6686: $7f
	ld e, a                                          ; $6687: $5f
	ld a, a                                          ; $6688: $7f
	or c                                             ; $6689: $b1
	rst SubAFromDE                                          ; $668a: $df
	ld a, [hl+]                                      ; $668b: $2a
	rst SubAFromDE                                          ; $668c: $df
	add hl, de                                       ; $668d: $19
	rst SubAFromDE                                          ; $668e: $df
	ld de, $b27f                                     ; $668f: $11 $7f $b2
	ld a, e                                          ; $6692: $7b
	or b                                             ; $6693: $b0
	sbc h                                            ; $6694: $9c

jr_01e_6695:
	ld [hl], $32                                     ; $6695: $36 $32
	inc [hl]                                         ; $6697: $34
	ld a, e                                          ; $6698: $7b
	pop de                                           ; $6699: $d1
	ld a, [hl]                                       ; $669a: $7e
	ret nc                                           ; $669b: $d0

	ld a, a                                          ; $669c: $7f
	or b                                             ; $669d: $b0
	ld a, a                                          ; $669e: $7f

jr_01e_669f:
	ld [hl], b                                       ; $669f: $70
	ld e, e                                          ; $66a0: $5b
	ldh a, [$7f]                                     ; $66a1: $f0 $7f
	ld [hl-], a                                      ; $66a3: $32
	ld a, a                                          ; $66a4: $7f
	call $b07b                                       ; $66a5: $cd $7b $b0
	sbc d                                            ; $66a8: $9a
	db $dd                                           ; $66a9: $dd
	ld e, $20                                        ; $66aa: $1e $20
	jr nc, jr_01e_66d2                               ; $66ac: $30 $24

	sbc $28                                          ; $66ae: $de $28
	sub h                                            ; $66b0: $94
	ld a, [hl+]                                      ; $66b1: $2a
	jr nz, jr_01e_66d5                               ; $66b2: $20 $21

	rst SubAFromHL                                          ; $66b4: $d7
	rst GetHLinHL                                          ; $66b5: $cf
	db $ed                                           ; $66b6: $ed
	db $dd                                           ; $66b7: $dd
	xor $ee                                          ; $66b8: $ee $ee
	ld l, $22                                        ; $66ba: $2e $22
	ld a, d                                          ; $66bc: $7a
	or b                                             ; $66bd: $b0
	sbc $2a                                          ; $66be: $de $2a
	sub a                                            ; $66c0: $97
	ret c                                            ; $66c1: $d8

	sbc $2c                                          ; $66c2: $de $2c
	jr z, @-$2e                                      ; $66c4: $28 $d0

	sbc $2a                                          ; $66c6: $de $2a
	add hl, hl                                       ; $66c8: $29
	xor h                                            ; $66c9: $ac
	ld bc, $289b                                     ; $66ca: $01 $9b $28
	jr nz, @-$26                                     ; $66cd: $20 $d8

	inc b                                            ; $66cf: $04
	sbc $dc                                          ; $66d0: $de $dc

jr_01e_66d2:
	sbc [hl]                                         ; $66d2: $9e
	ldh a, [$de]                                     ; $66d3: $f0 $de

jr_01e_66d5:
	ld [hl-], a                                      ; $66d5: $32
	adc l                                            ; $66d6: $8d
	ld b, $68                                        ; $66d7: $06 $68
	jr z, jr_01e_6743                                ; $66d9: $28 $68

	ld a, [hl+]                                      ; $66db: $2a
	db $fc                                           ; $66dc: $fc
	nop                                              ; $66dd: $00
	ld hl, sp-$28                                    ; $66de: $f8 $d8
	ldh a, [$e0]                                     ; $66e0: $f0 $e0
	ldh [$ec], a                                     ; $66e2: $e0 $ec
	inc b                                            ; $66e4: $04
	ld [bc], a                                       ; $66e5: $02
	nop                                              ; $66e6: $00
	ld [hl], $2a                                     ; $66e7: $36 $2a
	sbc $28                                          ; $66e9: $de $28
	sbc e                                            ; $66eb: $9b
	ret nc                                           ; $66ec: $d0

	jr z, @+$22                                      ; $66ed: $28 $20

	ret nc                                           ; $66ef: $d0

	sbc $ec                                          ; $66f0: $de $ec
	sbc d                                            ; $66f2: $9a
	call c, $3634                                    ; $66f3: $dc $34 $36
	inc [hl]                                         ; $66f6: $34
	ld [hl-], a                                      ; $66f7: $32
	sbc $28                                          ; $66f8: $de $28
	sbc [hl]                                         ; $66fa: $9e
	add hl, hl                                       ; $66fb: $29
	ld a, e                                          ; $66fc: $7b
	ret nc                                           ; $66fd: $d0

	sbc [hl]                                         ; $66fe: $9e
	ret nc                                           ; $66ff: $d0

	db $dd                                           ; $6700: $dd
	call c, $32dd                                    ; $6701: $dc $dd $32
	ld a, e                                          ; $6704: $7b
	ret nc                                           ; $6705: $d0

	sbc l                                            ; $6706: $9d
	jr z, @+$06                                      ; $6707: $28 $04

	ld a, e                                          ; $6709: $7b
	rst GetHLinHL                                          ; $670a: $cf
	rst SubAFromDE                                          ; $670b: $df
	ldh a, [$df]                                     ; $670c: $f0 $df
	ldh [$9a], a                                     ; $670e: $e0 $9a
	ld b, $04                                        ; $6710: $06 $04
	ld a, [bc]                                       ; $6712: $0a
	ld [$772a], sp                                   ; $6713: $08 $2a $77
	rst GetHLinHL                                          ; $6716: $cf
	ld a, e                                          ; $6717: $7b
	ldh [$dd], a                                     ; $6718: $e0 $dd
	db $ec                                           ; $671a: $ec
	ld a, a                                          ; $671b: $7f
	pop de                                           ; $671c: $d1
	ld a, a                                          ; $671d: $7f
	cp $77                                           ; $671e: $fe $77
	ret nc                                           ; $6720: $d0

	sbc l                                            ; $6721: $9d
	jr jr_01e_6734                                   ; $6722: $18 $10

	ld c, a                                          ; $6724: $4f

jr_01e_6725:
	ret nc                                           ; $6725: $d0

	adc a                                            ; $6726: $8f
	ld sp, hl                                        ; $6727: $f9
	ld bc, $f901                                     ; $6728: $01 $01 $f9
	ldh [$e0], a                                     ; $672b: $e0 $e0
	ldh a, [$f0]                                     ; $672d: $f0 $f0
	ld c, $0c                                        ; $672f: $0e $0c
	inc e                                            ; $6731: $1c
	ld a, [de]                                       ; $6732: $1a
	ld l, b                                          ; $6733: $68

jr_01e_6734:
	ld l, b                                          ; $6734: $68
	ld a, [hl+]                                      ; $6735: $2a
	ld a, [hl+]                                      ; $6736: $2a
	ld [hl], a                                       ; $6737: $77
	ldh [$5b], a                                     ; $6738: $e0 $5b
	ret nc                                           ; $673a: $d0

	sub b                                            ; $673b: $90
	jr z, jr_01e_6747                                ; $673c: $28 $09

	pop af                                           ; $673e: $f1
	jr z, @+$22                                      ; $673f: $28 $20

	ldh a, [$f0]                                     ; $6741: $f0 $f0

jr_01e_6743:
	db $dd                                           ; $6743: $dd
	db $dd                                           ; $6744: $dd
	jr @+$1a                                         ; $6745: $18 $18

jr_01e_6747:
	inc l                                            ; $6747: $2c
	ld a, [hl+]                                      ; $6748: $2a
	ld l, [hl]                                       ; $6749: $6e
	ld l, $77                                        ; $674a: $2e $77
	or b                                             ; $674c: $b0
	ld a, a                                          ; $674d: $7f
	cp $df                                           ; $674e: $fe $df
	db $ed                                           ; $6750: $ed
	rst SubAFromDE                                          ; $6751: $df
	call c, $308a                                    ; $6752: $dc $8a $30
	ld l, $32                                        ; $6755: $2e $32
	ld [hl-], a                                      ; $6757: $32
	ld l, $2f                                        ; $6758: $2e $2f
	ld l, b                                          ; $675a: $68
	jr z, jr_01e_6725                                ; $675b: $28 $c8

	ret nz                                           ; $675d: $c0

	ld hl, sp+$00                                    ; $675e: $f8 $00
	call c, $e0dc                                    ; $6760: $dc $dc $e0
	ldh [$32], a                                     ; $6763: $e0 $32
	ld [hl-], a                                      ; $6765: $32
	inc c                                            ; $6766: $0c
	ld c, $68                                        ; $6767: $0e $68
	sbc $28                                          ; $6769: $de $28
	ld a, a                                          ; $676b: $7f
	ldh a, [$99]                                     ; $676c: $f0 $99
	rst SubAFromHL                                          ; $676e: $d7
	rst GetHLinHL                                          ; $676f: $cf
	db $ec                                           ; $6770: $ec
	db $ec                                           ; $6771: $ec
	xor $ee                                          ; $6772: $ee $ee
	ld a, e                                          ; $6774: $7b
	jp nz, $268e                                     ; $6775: $c2 $8e $26

	jr z, jr_01e_67a2                                ; $6778: $28 $28

	ld a, [hl+]                                      ; $677a: $2a
	ld a, [hl+]                                      ; $677b: $2a
	rst SubAFromHL                                          ; $677c: $d7
	rst GetHLinHL                                          ; $677d: $cf
	jr z, @+$22                                      ; $677e: $28 $20

	sbc $de                                          ; $6780: $de $de
	db $ec                                           ; $6782: $ec
	db $ec                                           ; $6783: $ec
	inc h                                            ; $6784: $24
	ld [hl+], a                                      ; $6785: $22
	ld [hl], $34                                     ; $6786: $36 $34
	ld [hl], a                                       ; $6788: $77
	ld [hl], b                                       ; $6789: $70
	sbc e                                            ; $678a: $9b
	add hl, bc                                       ; $678b: $09
	ld bc, $f1f9                                     ; $678c: $01 $f9 $f1
	db $dd                                           ; $678f: $dd
	ldh a, [$97]                                     ; $6790: $f0 $97
	jr jr_01e_67b0                                   ; $6792: $18 $1c

	ld a, [de]                                       ; $6794: $1a
	jr jr_01e_6805                                   ; $6795: $18 $6e

	ld a, [hl+]                                      ; $6797: $2a
	ld a, [hl+]                                      ; $6798: $2a
	cpl                                              ; $6799: $2f
	ld b, a                                          ; $679a: $47
	ld b, b                                          ; $679b: $40
	ld a, a                                          ; $679c: $7f
	ld b, d                                          ; $679d: $42
	ld a, a                                          ; $679e: $7f
	ld a, $6f                                        ; $679f: $3e $6f
	ld [hl], b                                       ; $67a1: $70

jr_01e_67a2:
	ld a, a                                          ; $67a2: $7f
	ld a, $77                                        ; $67a3: $3e $77
	ret nz                                           ; $67a5: $c0

	ld a, a                                          ; $67a6: $7f
	ldh [c], a                                       ; $67a7: $e2
	ld a, a                                          ; $67a8: $7f
	sbc $57                                          ; $67a9: $de $57
	ld b, b                                          ; $67ab: $40
	ld b, a                                          ; $67ac: $47
	ret nc                                           ; $67ad: $d0

	ld a, a                                          ; $67ae: $7f
	or c                                             ; $67af: $b1

jr_01e_67b0:
	ld l, a                                          ; $67b0: $6f
	ret nc                                           ; $67b1: $d0

	ld a, a                                          ; $67b2: $7f
	add d                                            ; $67b3: $82
	ld a, a                                          ; $67b4: $7f
	ret nc                                           ; $67b5: $d0

	ld [hl], a                                       ; $67b6: $77
	ld b, b                                          ; $67b7: $40
	ccf                                              ; $67b8: $3f
	ret nc                                           ; $67b9: $d0

	ld a, a                                          ; $67ba: $7f
	ld l, [hl]                                       ; $67bb: $6e
	ld d, a                                          ; $67bc: $57
	jr nc, jr_01e_6836                               ; $67bd: $30 $77

	ldh a, [$57]                                     ; $67bf: $f0 $57
	ret nz                                           ; $67c1: $c0

	sub e                                            ; $67c2: $93
	db $fd                                           ; $67c3: $fd
	push af                                          ; $67c4: $f5
	nop                                              ; $67c5: $00
	ld hl, sp-$11                                    ; $67c6: $f8 $ef
	rst AddAOntoHL                                          ; $67c8: $ef
	rst SubAFromDE                                          ; $67c9: $df
	rst SubAFromDE                                          ; $67ca: $df
	ld [de], a                                       ; $67cb: $12
	db $10                                           ; $67cc: $10
	ld c, $16                                        ; $67cd: $0e $16
	ld [hl], a                                       ; $67cf: $77
	ld h, b                                          ; $67d0: $60
	ld a, a                                          ; $67d1: $7f
	ret nz                                           ; $67d2: $c0

	ld a, a                                          ; $67d3: $7f
	ld c, [hl]                                       ; $67d4: $4e
	rst SubAFromDE                                          ; $67d5: $df
	sbc $df                                          ; $67d6: $de $df
	xor $7f                                          ; $67d8: $ee $7f
	ld [de], a                                       ; $67da: $12
	ld [hl], e                                       ; $67db: $73
	ld b, b                                          ; $67dc: $40
	sbc d                                            ; $67dd: $9a
	dec hl                                           ; $67de: $2b
	jr nz, jr_01e_6809                               ; $67df: $20 $28

	add hl, de                                       ; $67e1: $19
	ld de, $1077                                     ; $67e2: $11 $77 $10
	sbc l                                            ; $67e5: $9d
	ld l, $30                                        ; $67e6: $2e $30
	ld a, e                                          ; $67e8: $7b
	db $10                                           ; $67e9: $10
	sbc [hl]                                         ; $67ea: $9e
	ld l, $77                                        ; $67eb: $2e $77
	db $10                                           ; $67ed: $10
	sub [hl]                                         ; $67ee: $96
	db $fd                                           ; $67ef: $fd
	ld sp, hl                                        ; $67f0: $f9
	call c, $efdc                                    ; $67f1: $dc $dc $ef
	rst SubAFromDE                                          ; $67f4: $df
	ld [hl-], a                                      ; $67f5: $32
	ld [hl-], a                                      ; $67f6: $32
	ld [de], a                                       ; $67f7: $12
	ld a, e                                          ; $67f8: $7b
	db $10                                           ; $67f9: $10
	sbc b                                            ; $67fa: $98
	ld l, d                                          ; $67fb: $6a
	ld l, b                                          ; $67fc: $68
	dec b                                            ; $67fd: $05
	add hl, de                                       ; $67fe: $19
	ld de, $efc8                                     ; $67ff: $11 $c8 $ef
	sbc $ec                                          ; $6802: $de $ec
	sbc [hl]                                         ; $6804: $9e

jr_01e_6805:
	db $10                                           ; $6805: $10
	ld a, e                                          ; $6806: $7b
	sbc a                                            ; $6807: $9f
	sbc [hl]                                         ; $6808: $9e

jr_01e_6809:
	ld l, d                                          ; $6809: $6a
	sbc $28                                          ; $680a: $de $28
	sbc l                                            ; $680c: $9d
	ret nz                                           ; $680d: $c0

	ld bc, $007b                                     ; $680e: $01 $7b $00
	sbc d                                            ; $6811: $9a
	rst SubAFromDE                                          ; $6812: $df
	xor $ee                                          ; $6813: $ee $ee
	inc [hl]                                         ; $6815: $34
	ld d, $7b                                        ; $6816: $16 $7b
	ret nz                                           ; $6818: $c0

	ld [hl], e                                       ; $6819: $73
	ld [hl], b                                       ; $681a: $70
	sub l                                            ; $681b: $95
	add hl, hl                                       ; $681c: $29
	ld hl, $dede                                     ; $681d: $21 $de $de
	db $dd                                           ; $6820: $dd
	db $dd                                           ; $6821: $dd
	inc l                                            ; $6822: $2c
	ld a, [hl+]                                      ; $6823: $2a
	inc h                                            ; $6824: $24
	ld [hl+], a                                      ; $6825: $22
	ld [hl], a                                       ; $6826: $77
	or b                                             ; $6827: $b0
	add d                                            ; $6828: $82
	inc bc                                           ; $6829: $03
	ei                                               ; $682a: $fb
	add hl, de                                       ; $682b: $19
	add hl, de                                       ; $682c: $19
	ldh a, [$f0]                                     ; $682d: $f0 $f0
	call c, $06ec                                    ; $682f: $dc $ec $06
	inc b                                            ; $6832: $04
	ld [hl-], a                                      ; $6833: $32
	ld [hl], $2a                                     ; $6834: $36 $2a

jr_01e_6836:
	ld a, [hl+]                                      ; $6836: $2a
	ld l, b                                          ; $6837: $68
	jr z, jr_01e_684b                                ; $6838: $28 $11

	ld de, $c7c7                                     ; $683a: $11 $c7 $c7
	db $ec                                           ; $683d: $ec
	call c, $ecdc                                    ; $683e: $dc $dc $ec
	inc [hl]                                         ; $6841: $34
	ld [hl-], a                                      ; $6842: $32
	ld [hl-], a                                      ; $6843: $32
	ld [hl], $28                                     ; $6844: $36 $28
	ld a, e                                          ; $6846: $7b
	ld [hl], b                                       ; $6847: $70
	rst SubAFromDE                                          ; $6848: $df
	cp a                                             ; $6849: $bf
	ld a, a                                          ; $684a: $7f

jr_01e_684b:
	adc [hl]                                         ; $684b: $8e
	ld a, a                                          ; $684c: $7f
	ldh a, [c]                                       ; $684d: $f2
	rst SubAFromDE                                          ; $684e: $df
	db $ed                                           ; $684f: $ed
	adc l                                            ; $6850: $8d
	ld [hl-], a                                      ; $6851: $32
	inc [hl]                                         ; $6852: $34

jr_01e_6853:
	ld l, $30                                        ; $6853: $2e $30
	jr z, jr_01e_687f                                ; $6855: $28 $28

	ld l, $2e                                        ; $6857: $2e $2e
	rst FarCall                                          ; $6859: $f7
	rst $38                                          ; $685a: $ff
	add hl, hl                                       ; $685b: $29
	ld hl, $e0e0                                     ; $685c: $21 $e0 $e0
	db $dd                                           ; $685f: $dd
	db $dd                                           ; $6860: $dd
	ld e, $20                                        ; $6861: $1e $20
	ld [hl], e                                       ; $6863: $73
	ret nz                                           ; $6864: $c0

	ld a, d                                          ; $6865: $7a
	or b                                             ; $6866: $b0
	ld a, a                                          ; $6867: $7f
	xor [hl]                                         ; $6868: $ae

jr_01e_6869:
	rst SubAFromDE                                          ; $6869: $df
	xor $df                                          ; $686a: $ee $df
	sbc $7f                                          ; $686c: $de $7f
	and d                                            ; $686e: $a2
	ld a, a                                          ; $686f: $7f
	xor [hl]                                         ; $6870: $ae
	ld a, e                                          ; $6871: $7b
	ld d, b                                          ; $6872: $50
	sbc [hl]                                         ; $6873: $9e
	add hl, hl                                       ; $6874: $29
	sbc b                                            ; $6875: $98
	ld bc, $289b                                     ; $6876: $01 $9b $28
	jr nz, jr_01e_6853                               ; $6879: $20 $d8

	nop                                              ; $687b: $00
	sbc $dc                                          ; $687c: $de $dc
	sbc [hl]                                         ; $687e: $9e

jr_01e_687f:
	ldh [$de], a                                     ; $687f: $e0 $de
	ld [hl-], a                                      ; $6881: $32
	add [hl]                                         ; $6882: $86
	ld [bc], a                                       ; $6883: $02

jr_01e_6884:
	ld l, b                                          ; $6884: $68
	jr z, @+$6a                                      ; $6885: $28 $68

	ld l, $f8                                        ; $6887: $2e $f8
	nop                                              ; $6889: $00
	ld hl, sp-$28                                    ; $688a: $f8 $d8
	ldh [$f0], a                                     ; $688c: $e0 $f0
	ldh a, [$ec]                                     ; $688e: $f0 $ec
	nop                                              ; $6890: $00
	ld b, $04                                        ; $6891: $06 $04
	ld [hl], $2e                                     ; $6893: $36 $2e
	ld a, [hl+]                                      ; $6895: $2a
	ld a, [hl+]                                      ; $6896: $2a
	jr z, jr_01e_6869                                ; $6897: $28 $d0

	jr z, jr_01e_68bb                                ; $6899: $28 $20

	ret nc                                           ; $689b: $d0

	sbc $ec                                          ; $689c: $de $ec
	sbc d                                            ; $689e: $9a
	call c, $3634                                    ; $689f: $dc $34 $36
	inc [hl]                                         ; $68a2: $34
	ld [hl-], a                                      ; $68a3: $32
	sbc $28                                          ; $68a4: $de $28
	sbc [hl]                                         ; $68a6: $9e
	add hl, hl                                       ; $68a7: $29
	ld a, e                                          ; $68a8: $7b
	ret nc                                           ; $68a9: $d0

	sbc [hl]                                         ; $68aa: $9e
	ret nc                                           ; $68ab: $d0

	db $dd                                           ; $68ac: $dd

jr_01e_68ad:
	call c, $32dd                                    ; $68ad: $dc $dd $32
	ld a, e                                          ; $68b0: $7b
	ret nc                                           ; $68b1: $d0

	sbc c                                            ; $68b2: $99
	jr z, jr_01e_68ad                                ; $68b3: $28 $f8

	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	ld hl, sp-$20                                    ; $68b7: $f8 $e0
	ld a, e                                          ; $68b9: $7b
	rst GetHLinHL                                          ; $68ba: $cf

jr_01e_68bb:
	sbc d                                            ; $68bb: $9a
	nop                                              ; $68bc: $00
	ld [bc], a                                       ; $68bd: $02
	inc c                                            ; $68be: $0c
	ld a, [bc]                                       ; $68bf: $0a
	ld l, $77                                        ; $68c0: $2e $77
	rst GetHLinHL                                          ; $68c2: $cf
	ld a, e                                          ; $68c3: $7b
	ldh [$dd], a                                     ; $68c4: $e0 $dd
	db $ec                                           ; $68c6: $ec
	ld a, a                                          ; $68c7: $7f
	pop de                                           ; $68c8: $d1
	ld a, a                                          ; $68c9: $7f
	cp $77                                           ; $68ca: $fe $77
	ret nc                                           ; $68cc: $d0

	sbc l                                            ; $68cd: $9d
	jr jr_01e_68e0                                   ; $68ce: $18 $10

	ld c, a                                          ; $68d0: $4f
	ret nc                                           ; $68d1: $d0

	sbc e                                            ; $68d2: $9b
	ld bc, $01f9                                     ; $68d3: $01 $f9 $01
	ld sp, hl                                        ; $68d6: $f9
	ld [hl], a                                       ; $68d7: $77

jr_01e_68d8:
	ret nc                                           ; $68d8: $d0

	sbc e                                            ; $68d9: $9b
	inc d                                            ; $68da: $14
	ld [de], a                                       ; $68db: $12
	inc e                                            ; $68dc: $1c
	ld a, [de]                                       ; $68dd: $1a
	ld [hl], a                                       ; $68de: $77
	ret nc                                           ; $68df: $d0

jr_01e_68e0:
	ld [hl], a                                       ; $68e0: $77
	ldh [$5b], a                                     ; $68e1: $e0 $5b
	ret nc                                           ; $68e3: $d0

	sub b                                            ; $68e4: $90
	jr z, jr_01e_68f0                                ; $68e5: $28 $09

	pop af                                           ; $68e7: $f1
	jr z, jr_01e_690a                                ; $68e8: $28 $20

	ldh a, [$f0]                                     ; $68ea: $f0 $f0
	db $ed                                           ; $68ec: $ed
	db $ed                                           ; $68ed: $ed
	jr jr_01e_6908                                   ; $68ee: $18 $18

jr_01e_68f0:
	jr nc, @+$30                                     ; $68f0: $30 $2e

	ld l, [hl]                                       ; $68f2: $6e
	ld l, $de                                        ; $68f3: $2e $de
	jr z, jr_01e_6884                                ; $68f5: $28 $8d

	jr nz, @+$2a                                     ; $68f7: $20 $28

	jr nz, jr_01e_68d8                               ; $68f9: $20 $dd

	db $dd                                           ; $68fb: $dd
	call c, $2cdc                                    ; $68fc: $dc $dc $2c
	ld a, [hl+]                                      ; $68ff: $2a
	ld [hl-], a                                      ; $6900: $32
	ld [hl-], a                                      ; $6901: $32
	jr z, jr_01e_692d                                ; $6902: $28 $29

	ld l, b                                          ; $6904: $68
	jr z, @-$36                                      ; $6905: $28 $c8

	ret nz                                           ; $6907: $c0

jr_01e_6908:
	ld hl, sp+$7b                                    ; $6908: $f8 $7b

jr_01e_690a:
	ld d, b                                          ; $690a: $50
	rst SubAFromDE                                          ; $690b: $df
	ldh [$df], a                                     ; $690c: $e0 $df
	ld [hl-], a                                      ; $690e: $32
	sub c                                            ; $690f: $91
	ld c, $10                                        ; $6910: $0e $10
	ld l, b                                          ; $6912: $68
	jr z, jr_01e_6943                                ; $6913: $28 $2e

	ld l, $c8                                        ; $6915: $2e $c8
	ret nz                                           ; $6917: $c0

	rst SubAFromHL                                          ; $6918: $d7
	rst GetHLinHL                                          ; $6919: $cf
	db $ec                                           ; $691a: $ec
	db $ec                                           ; $691b: $ec
	xor $ee                                          ; $691c: $ee $ee
	ld a, e                                          ; $691e: $7b
	jp nz, $268e                                     ; $691f: $c2 $8e $26

	jr z, jr_01e_694c                                ; $6922: $28 $28

	ld a, [hl+]                                      ; $6924: $2a
	ld a, [hl+]                                      ; $6925: $2a
	rst SubAFromHL                                          ; $6926: $d7
	rst GetHLinHL                                          ; $6927: $cf
	jr z, jr_01e_694a                                ; $6928: $28 $20

	sbc $de                                          ; $692a: $de $de
	db $ec                                           ; $692c: $ec

jr_01e_692d:
	db $ec                                           ; $692d: $ec
	inc h                                            ; $692e: $24
	ld [hl+], a                                      ; $692f: $22
	ld [hl], $34                                     ; $6930: $36 $34
	ld a, e                                          ; $6932: $7b
	ld [hl], d                                       ; $6933: $72
	ld a, a                                          ; $6934: $7f
	or b                                             ; $6935: $b0
	ld a, a                                          ; $6936: $7f
	sub c                                            ; $6937: $91
	sbc [hl]                                         ; $6938: $9e
	pop af                                           ; $6939: $f1
	db $dd                                           ; $693a: $dd
	ldh a, [$97]                                     ; $693b: $f0 $97
	jr jr_01e_695b                                   ; $693d: $18 $1c

	ld a, [de]                                       ; $693f: $1a
	jr jr_01e_69b0                                   ; $6940: $18 $6e

	ld a, [hl+]                                      ; $6942: $2a

jr_01e_6943:
	ld a, [hl+]                                      ; $6943: $2a
	cpl                                              ; $6944: $2f
	daa                                              ; $6945: $27
	ld b, b                                          ; $6946: $40
	ld a, a                                          ; $6947: $7f
	or d                                             ; $6948: $b2
	ld a, a                                          ; $6949: $7f

jr_01e_694a:
	rrca                                             ; $694a: $0f
	ld [hl], a                                       ; $694b: $77

jr_01e_694c:
	ld [hl], b                                       ; $694c: $70
	ld a, a                                          ; $694d: $7f
	ldh [c], a                                       ; $694e: $e2
	ld a, a                                          ; $694f: $7f
	sbc $57                                          ; $6950: $de $57
	ld b, b                                          ; $6952: $40
	ld b, a                                          ; $6953: $47
	ret nc                                           ; $6954: $d0

	ld a, a                                          ; $6955: $7f
	or c                                             ; $6956: $b1
	ld l, a                                          ; $6957: $6f
	ret nc                                           ; $6958: $d0

jr_01e_6959:
	ld a, a                                          ; $6959: $7f
	ld b, b                                          ; $695a: $40

jr_01e_695b:
	daa                                              ; $695b: $27
	ret nc                                           ; $695c: $d0

	ld a, a                                          ; $695d: $7f
	ld l, [hl]                                       ; $695e: $6e
	ld d, a                                          ; $695f: $57
	jr nc, jr_01e_69d9                               ; $6960: $30 $77

	ldh a, [$57]                                     ; $6962: $f0 $57
	ret nz                                           ; $6964: $c0

	ld a, a                                          ; $6965: $7f
	jp nz, $fc95                                     ; $6966: $c2 $95 $fc

	ret c                                            ; $6969: $d8

	rst SubAFromDE                                          ; $696a: $df
	rst SubAFromDE                                          ; $696b: $df
	rst AddAOntoHL                                          ; $696c: $ef
	sbc $10                                          ; $696d: $de $10
	ld c, $16                                        ; $696f: $0e $16
	inc l                                            ; $6971: $2c
	ld a, e                                          ; $6972: $7b
	ret nz                                           ; $6973: $c0

	ld a, [hl]                                       ; $6974: $7e
	and b                                            ; $6975: $a0
	ld a, a                                          ; $6976: $7f
	ld c, a                                          ; $6977: $4f
	adc [hl]                                         ; $6978: $8e
	jr jr_01e_6959                                   ; $6979: $18 $de

	xor $ee                                          ; $697b: $ee $ee
	call c, $282a                                    ; $697d: $dc $2a $28
	ld h, $32                                        ; $6980: $26 $32
	jr z, jr_01e_69ae                                ; $6982: $28 $2a

	dec hl                                           ; $6984: $2b
	ld l, b                                          ; $6985: $68
	db $10                                           ; $6986: $10
	ret z                                            ; $6987: $c8

	ret nz                                           ; $6988: $c0

	ei                                               ; $6989: $fb
	sbc $dc                                          ; $698a: $de $dc
	sbc [hl]                                         ; $698c: $9e
	rst AddAOntoHL                                          ; $698d: $ef
	sbc $32                                          ; $698e: $de $32
	sbc [hl]                                         ; $6990: $9e
	ld d, $7b                                        ; $6991: $16 $7b
	pop de                                           ; $6993: $d1
	sub c                                            ; $6994: $91
	ld l, d                                          ; $6995: $6a
	nop                                              ; $6996: $00
	ld hl, sp+$18                                    ; $6997: $f8 $18
	db $10                                           ; $6999: $10
	rst SubAFromDE                                          ; $699a: $df
	rst SubAFromDE                                          ; $699b: $df
	db $ec                                           ; $699c: $ec
	db $ec                                           ; $699d: $ec
	inc d                                            ; $699e: $14
	ld [de], a                                       ; $699f: $12
	ld [hl], $34                                     ; $69a0: $36 $34
	ld l, $7a                                        ; $69a2: $2e $7a
	ldh a, [$7f]                                     ; $69a4: $f0 $7f
	pop hl                                           ; $69a6: $e1
	ld [hl], a                                       ; $69a7: $77
	sub b                                            ; $69a8: $90
	rst SubAFromDE                                          ; $69a9: $df
	db $ed                                           ; $69aa: $ed
	ld a, a                                          ; $69ab: $7f
	ldh a, [c]                                       ; $69ac: $f2
	ld a, [hl]                                       ; $69ad: $7e

jr_01e_69ae:
	ldh [$dd], a                                     ; $69ae: $e0 $dd

jr_01e_69b0:
	jr z, jr_01e_6a31                                ; $69b0: $28 $7f

	pop bc                                           ; $69b2: $c1
	ld a, a                                          ; $69b3: $7f
	ld a, [hl]                                       ; $69b4: $7e
	rst SubAFromDE                                          ; $69b5: $df
	xor $df                                          ; $69b6: $ee $df
	sbc $7f                                          ; $69b8: $de $7f
	pop bc                                           ; $69ba: $c1
	ld a, [hl]                                       ; $69bb: $7e
	sbc $77                                          ; $69bc: $de $77
	db $10                                           ; $69be: $10
	sub c                                            ; $69bf: $91
	add hl, hl                                       ; $69c0: $29
	ld hl, $f800                                     ; $69c1: $21 $00 $f8
	db $dd                                           ; $69c4: $dd
	db $dd                                           ; $69c5: $dd
	ldh a, [$f0]                                     ; $69c6: $f0 $f0
	inc h                                            ; $69c8: $24
	ld [hl+], a                                      ; $69c9: $22
	ld b, $04                                        ; $69ca: $06 $04
	ld a, [hl+]                                      ; $69cc: $2a
	dec hl                                           ; $69cd: $2b
	ld a, d                                          ; $69ce: $7a
	and b                                            ; $69cf: $a0
	ld a, a                                          ; $69d0: $7f
	pop bc                                           ; $69d1: $c1
	sub l                                            ; $69d2: $95
	db $10                                           ; $69d3: $10
	call c, $dcec                                    ; $69d4: $dc $ec $dc
	db $ec                                           ; $69d7: $ec
	ld [hl-], a                                      ; $69d8: $32

jr_01e_69d9:
	ld [hl], $32                                     ; $69d9: $36 $32
	inc [hl]                                         ; $69db: $34
	ld l, b                                          ; $69dc: $68
	sbc $28                                          ; $69dd: $de $28
	rst SubAFromDE                                          ; $69df: $df
	ret z                                            ; $69e0: $c8

	rst SubAFromDE                                          ; $69e1: $df
	ret nz                                           ; $69e2: $c0

	ld d, a                                          ; $69e3: $57
	ldh a, [$7f]                                     ; $69e4: $f0 $7f
	jp nc, $cd7f                                     ; $69e6: $d2 $7f $cd

	rst SubAFromDE                                          ; $69e9: $df
	ldh [$99], a                                     ; $69ea: $e0 $99
	db $ed                                           ; $69ec: $ed
	db $dd                                           ; $69ed: $dd
	jr nz, jr_01e_6a0e                               ; $69ee: $20 $1e

	jr nc, jr_01e_6a16                               ; $69f0: $30 $24

	ld a, e                                          ; $69f2: $7b
	and b                                            ; $69f3: $a0
	sub h                                            ; $69f4: $94
	ld a, [hl+]                                      ; $69f5: $2a
	jr nz, jr_01e_6a19                               ; $69f6: $20 $21

	rst SubAFromHL                                          ; $69f8: $d7
	rst GetHLinHL                                          ; $69f9: $cf
	db $ed                                           ; $69fa: $ed
	db $dd                                           ; $69fb: $dd
	xor $ee                                          ; $69fc: $ee $ee
	ld l, $22                                        ; $69fe: $2e $22
	ld a, d                                          ; $6a00: $7a
	or b                                             ; $6a01: $b0
	sbc $2a                                          ; $6a02: $de $2a
	sub a                                            ; $6a04: $97
	ret c                                            ; $6a05: $d8

	sbc $2c                                          ; $6a06: $de $2c
	jr z, @-$2e                                      ; $6a08: $28 $d0

	sbc $2a                                          ; $6a0a: $de $2a
	add hl, hl                                       ; $6a0c: $29
	xor e                                            ; $6a0d: $ab

jr_01e_6a0e:
	ld bc, $289b                                     ; $6a0e: $01 $9b $28
	jr nz, @-$26                                     ; $6a11: $20 $d8

	nop                                              ; $6a13: $00
	sbc $dc                                          ; $6a14: $de $dc

jr_01e_6a16:
	sbc [hl]                                         ; $6a16: $9e
	ldh a, [$de]                                     ; $6a17: $f0 $de

jr_01e_6a19:
	ld [hl-], a                                      ; $6a19: $32
	adc l                                            ; $6a1a: $8d
	ld b, $68                                        ; $6a1b: $06 $68
	jr z, jr_01e_6a87                                ; $6a1d: $28 $68

	ld a, [hl+]                                      ; $6a1f: $2a
	ld hl, sp+$00                                    ; $6a20: $f8 $00
	ld hl, sp-$28                                    ; $6a22: $f8 $d8
	ldh a, [$e0]                                     ; $6a24: $f0 $e0
	ldh [$ec], a                                     ; $6a26: $e0 $ec
	inc b                                            ; $6a28: $04
	ld [bc], a                                       ; $6a29: $02
	nop                                              ; $6a2a: $00
	ld [hl], $2a                                     ; $6a2b: $36 $2a
	sbc $28                                          ; $6a2d: $de $28
	sbc e                                            ; $6a2f: $9b
	ret nc                                           ; $6a30: $d0

jr_01e_6a31:
	jr z, jr_01e_6a53                                ; $6a31: $28 $20

	ret nc                                           ; $6a33: $d0

	sbc $ec                                          ; $6a34: $de $ec
	sbc d                                            ; $6a36: $9a
	call c, $3634                                    ; $6a37: $dc $34 $36
	inc [hl]                                         ; $6a3a: $34
	ld [hl-], a                                      ; $6a3b: $32
	sbc $28                                          ; $6a3c: $de $28
	sbc [hl]                                         ; $6a3e: $9e
	add hl, hl                                       ; $6a3f: $29
	ld a, e                                          ; $6a40: $7b
	ret nc                                           ; $6a41: $d0

	sbc [hl]                                         ; $6a42: $9e
	ret nc                                           ; $6a43: $d0

	db $dd                                           ; $6a44: $dd
	call c, $32dd                                    ; $6a45: $dc $dd $32
	ld a, e                                          ; $6a48: $7b
	ret nc                                           ; $6a49: $d0

	sbc l                                            ; $6a4a: $9d
	jr z, jr_01e_6a4d                                ; $6a4b: $28 $00

jr_01e_6a4d:
	ld a, e                                          ; $6a4d: $7b
	rst GetHLinHL                                          ; $6a4e: $cf

jr_01e_6a4f:
	rst SubAFromDE                                          ; $6a4f: $df
	pop af                                           ; $6a50: $f1
	rst SubAFromDE                                          ; $6a51: $df
	pop hl                                           ; $6a52: $e1

jr_01e_6a53:
	sbc d                                            ; $6a53: $9a
	ld c, $0c                                        ; $6a54: $0e $0c
	ld a, [bc]                                       ; $6a56: $0a
	ld [$772a], sp                                   ; $6a57: $08 $2a $77
	rst GetHLinHL                                          ; $6a5a: $cf
	ld a, e                                          ; $6a5b: $7b
	ldh [$dd], a                                     ; $6a5c: $e0 $dd
	db $ec                                           ; $6a5e: $ec
	ld a, a                                          ; $6a5f: $7f
	pop de                                           ; $6a60: $d1
	ld a, a                                          ; $6a61: $7f
	cp $77                                           ; $6a62: $fe $77
	ret nc                                           ; $6a64: $d0

	ld a, a                                          ; $6a65: $7f
	ldh [c], a                                       ; $6a66: $e2
	sub a                                            ; $6a67: $97
	jr @+$12                                         ; $6a68: $18 $10

	ldh [$e0], a                                     ; $6a6a: $e0 $e0
	call c, $10dc                                    ; $6a6c: $dc $dc $10
	ld [de], a                                       ; $6a6f: $12
	ld a, e                                          ; $6a70: $7b
	ret nc                                           ; $6a71: $d0

	rst SubAFromDE                                          ; $6a72: $df
	ld l, b                                          ; $6a73: $68
	sbc d                                            ; $6a74: $9a
	jr z, jr_01e_6a4f                                ; $6a75: $28 $d8

	ret nc                                           ; $6a77: $d0

	ld bc, $7bf9                                     ; $6a78: $01 $f9 $7b
	sub c                                            ; $6a7b: $91
	ld a, e                                          ; $6a7c: $7b
	sub b                                            ; $6a7d: $90
	sub a                                            ; $6a7e: $97
	inc e                                            ; $6a7f: $1c
	ld a, [de]                                       ; $6a80: $1a
	ld l, b                                          ; $6a81: $68
	jr z, jr_01e_6aae                                ; $6a82: $28 $2a

	ld a, [hl+]                                      ; $6a84: $2a
	jr jr_01e_6a97                                   ; $6a85: $18 $10

jr_01e_6a87:
	ld d, e                                          ; $6a87: $53
	ret nc                                           ; $6a88: $d0

	sub b                                            ; $6a89: $90
	jr z, jr_01e_6a95                                ; $6a8a: $28 $09

	pop af                                           ; $6a8c: $f1
	jr z, jr_01e_6aaf                                ; $6a8d: $28 $20

	ldh a, [$f0]                                     ; $6a8f: $f0 $f0
	db $ed                                           ; $6a91: $ed
	db $ed                                           ; $6a92: $ed
	jr jr_01e_6aad                                   ; $6a93: $18 $18

jr_01e_6a95:
	jr nc, @+$30                                     ; $6a95: $30 $2e

jr_01e_6a97:
	ld l, [hl]                                       ; $6a97: $6e
	ld l, $77                                        ; $6a98: $2e $77
	or b                                             ; $6a9a: $b0
	ld a, a                                          ; $6a9b: $7f
	cp [hl]                                          ; $6a9c: $be
	rst SubAFromDE                                          ; $6a9d: $df
	db $dd                                           ; $6a9e: $dd
	rst SubAFromDE                                          ; $6a9f: $df
	ldh [$9b], a                                     ; $6aa0: $e0 $9b
	inc l                                            ; $6aa2: $2c
	ld a, [hl+]                                      ; $6aa3: $2a
	ld [de], a                                       ; $6aa4: $12
	db $10                                           ; $6aa5: $10
	ld a, e                                          ; $6aa6: $7b
	add d                                            ; $6aa7: $82
	ld a, e                                          ; $6aa8: $7b
	ldh a, [$9d]                                     ; $6aa9: $f0 $9d
	ret z                                            ; $6aab: $c8

	ret nz                                           ; $6aac: $c0

jr_01e_6aad:
	ld d, a                                          ; $6aad: $57

jr_01e_6aae:
	add b                                            ; $6aae: $80

jr_01e_6aaf:
	ld a, a                                          ; $6aaf: $7f
	ldh a, [c]                                       ; $6ab0: $f2
	sbc c                                            ; $6ab1: $99
	rst SubAFromHL                                          ; $6ab2: $d7
	rst GetHLinHL                                          ; $6ab3: $cf
	db $ec                                           ; $6ab4: $ec
	db $ec                                           ; $6ab5: $ec
	xor $ee                                          ; $6ab6: $ee $ee
	ld a, e                                          ; $6ab8: $7b
	jp nz, $269d                                     ; $6ab9: $c2 $9d $26

	jr z, @+$7d                                      ; $6abc: $28 $7b

	or b                                             ; $6abe: $b0
	ld a, a                                          ; $6abf: $7f
	ldh a, [c]                                       ; $6ac0: $f2
	ld a, a                                          ; $6ac1: $7f
	sbc $df                                          ; $6ac2: $de $df
	sbc $df                                          ; $6ac4: $de $df
	db $ec                                           ; $6ac6: $ec
	sbc e                                            ; $6ac7: $9b
	inc h                                            ; $6ac8: $24
	ld [hl+], a                                      ; $6ac9: $22
	ld [hl], $34                                     ; $6aca: $36 $34
	ld [hl], a                                       ; $6acc: $77
	ld [hl], b                                       ; $6acd: $70
	sbc e                                            ; $6ace: $9b
	add hl, bc                                       ; $6acf: $09
	ld bc, $f1f9                                     ; $6ad0: $01 $f9 $f1
	db $dd                                           ; $6ad3: $dd
	ldh a, [$97]                                     ; $6ad4: $f0 $97
	jr jr_01e_6af4                                   ; $6ad6: $18 $1c

	ld a, [de]                                       ; $6ad8: $1a
	jr jr_01e_6b49                                   ; $6ad9: $18 $6e

	ld a, [hl+]                                      ; $6adb: $2a
	ld a, [hl+]                                      ; $6adc: $2a
	cpl                                              ; $6add: $2f
	scf                                              ; $6ade: $37
	ld b, b                                          ; $6adf: $40
	rst SubAFromDE                                          ; $6ae0: $df
	ldh [$df], a                                     ; $6ae1: $e0 $df
	ldh a, [$7f]                                     ; $6ae3: $f0 $7f
	and d                                            ; $6ae5: $a2
	sbc l                                            ; $6ae6: $9d
	ld b, $04                                        ; $6ae7: $06 $04

jr_01e_6ae9:
	ld [hl], a                                       ; $6ae9: $77
	ret nz                                           ; $6aea: $c0

	ld a, a                                          ; $6aeb: $7f
	ldh [c], a                                       ; $6aec: $e2
	ld a, a                                          ; $6aed: $7f
	sbc $57                                          ; $6aee: $de $57
	ld b, b                                          ; $6af0: $40
	ld b, a                                          ; $6af1: $47
	ret nc                                           ; $6af2: $d0

	ld a, e                                          ; $6af3: $7b

jr_01e_6af4:
	pop de                                           ; $6af4: $d1
	sbc [hl]                                         ; $6af5: $9e
	nop                                              ; $6af6: $00
	ld a, e                                          ; $6af7: $7b
	pop de                                           ; $6af8: $d1
	sub [hl]                                         ; $6af9: $96
	ldh [rAUD1ENV], a                                ; $6afa: $e0 $12
	ld b, $04                                        ; $6afc: $06 $04
	db $10                                           ; $6afe: $10
	ld l, b                                          ; $6aff: $68
	ld a, [hl+]                                      ; $6b00: $2a
	ld a, [hl+]                                      ; $6b01: $2a
	ld l, b                                          ; $6b02: $68
	ccf                                              ; $6b03: $3f
	ret nc                                           ; $6b04: $d0

	ld [hl], a                                       ; $6b05: $77
	ldh a, [$df]                                     ; $6b06: $f0 $df
	call c, $d17a                                    ; $6b08: $dc $7a $d1
	ld a, d                                          ; $6b0b: $7a
	ret nc                                           ; $6b0c: $d0

	ld a, e                                          ; $6b0d: $7b
	ld h, b                                          ; $6b0e: $60

jr_01e_6b0f:
	ld a, a                                          ; $6b0f: $7f
	ld e, a                                          ; $6b10: $5f
	sbc c                                            ; $6b11: $99
	ret nz                                           ; $6b12: $c0

	db $dd                                           ; $6b13: $dd
	db $ed                                           ; $6b14: $ed
	db $ed                                           ; $6b15: $ed
	db $dd                                           ; $6b16: $dd
	ld [hl-], a                                      ; $6b17: $32
	ld a, e                                          ; $6b18: $7b
	rst AddAOntoHL                                          ; $6b19: $ef
	ld a, a                                          ; $6b1a: $7f
	ldh a, [c]                                       ; $6b1b: $f2
	rst SubAFromDE                                          ; $6b1c: $df
	jr z, @-$62                                      ; $6b1d: $28 $9c

	db $fc                                           ; $6b1f: $fc
	rst $38                                          ; $6b20: $ff
	rst FarCall                                          ; $6b21: $f7
	halt                                             ; $6b22: $76
	and b                                            ; $6b23: $a0
	sbc d                                            ; $6b24: $9a
	sbc $14                                          ; $6b25: $de $14
	ld [de], a                                       ; $6b27: $12
	ld d, $2c                                        ; $6b28: $16 $2c
	ld [hl], d                                       ; $6b2a: $72
	and b                                            ; $6b2b: $a0
	ld a, a                                          ; $6b2c: $7f
	ld c, a                                          ; $6b2d: $4f
	adc c                                            ; $6b2e: $89
	jr jr_01e_6b0f                                   ; $6b2f: $18 $de

	xor $ee                                          ; $6b31: $ee $ee
	call c, $282a                                    ; $6b33: $dc $2a $28
	ld h, $32                                        ; $6b36: $26 $32
	jr z, @+$2c                                      ; $6b38: $28 $2a

	dec hl                                           ; $6b3a: $2b
	ld l, b                                          ; $6b3b: $68
	db $10                                           ; $6b3c: $10
	ret z                                            ; $6b3d: $c8

	jr jr_01e_6b50                                   ; $6b3e: $18 $10

	call c, $ecdd                                    ; $6b40: $dc $dd $ec
	db $ec                                           ; $6b43: $ec
	ld [hl-], a                                      ; $6b44: $32
	ld a, e                                          ; $6b45: $7b
	rst GetHLinHL                                          ; $6b46: $cf
	ld a, e                                          ; $6b47: $7b
	pop bc                                           ; $6b48: $c1

jr_01e_6b49:
	ld a, e                                          ; $6b49: $7b
	jr nz, jr_01e_6ae9                               ; $6b4a: $20 $9d

	ret nz                                           ; $6b4c: $c0

	db $fc                                           ; $6b4d: $fc
	ld a, e                                          ; $6b4e: $7b
	pop bc                                           ; $6b4f: $c1

jr_01e_6b50:
	sbc [hl]                                         ; $6b50: $9e
	ldh a, [$7b]                                     ; $6b51: $f0 $7b
	pop bc                                           ; $6b53: $c1
	sbc [hl]                                         ; $6b54: $9e
	inc d                                            ; $6b55: $14
	sbc $28                                          ; $6b56: $de $28
	sub d                                            ; $6b58: $92
	ld l, d                                          ; $6b59: $6a
	ld sp, hl                                        ; $6b5a: $f9
	ld bc, $2028                                     ; $6b5b: $01 $28 $20
	ldh [$e0], a                                     ; $6b5e: $e0 $e0
	db $ed                                           ; $6b60: $ed
	db $ed                                           ; $6b61: $ed
	ld [de], a                                       ; $6b62: $12
	ld d, $30                                        ; $6b63: $16 $30
	ld l, $7a                                        ; $6b65: $2e $7a
	or c                                             ; $6b67: $b1
	sub e                                            ; $6b68: $93
	jr z, @-$27                                      ; $6b69: $28 $d7

	rst GetHLinHL                                          ; $6b6b: $cf
	ret c                                            ; $6b6c: $d8

	ret nc                                           ; $6b6d: $d0

	xor $ee                                          ; $6b6e: $ee $ee
	sbc $de                                          ; $6b70: $de $de
	jr z, @+$28                                      ; $6b72: $28 $26

	inc l                                            ; $6b74: $2c
	sbc $2a                                          ; $6b75: $de $2a
	ld a, e                                          ; $6b77: $7b
	ld a, a                                          ; $6b78: $7f
	sbc [hl]                                         ; $6b79: $9e
	ld hl, $d076                                     ; $6b7a: $21 $76 $d0
	rst SubAFromDE                                          ; $6b7d: $df
	ldh a, [$7f]                                     ; $6b7e: $f0 $7f
	nop                                              ; $6b80: $00
	ld a, [hl]                                       ; $6b81: $7e
	ld l, [hl]                                       ; $6b82: $6e
	ld a, a                                          ; $6b83: $7f
	or c                                             ; $6b84: $b1

jr_01e_6b85:
	ld a, d                                          ; $6b85: $7a
	and b                                            ; $6b86: $a0
	ld a, a                                          ; $6b87: $7f
	or c                                             ; $6b88: $b1
	ld a, a                                          ; $6b89: $7f
	or b                                             ; $6b8a: $b0
	ld a, e                                          ; $6b8b: $7b
	ld l, a                                          ; $6b8c: $6f
	ld h, a                                          ; $6b8d: $67
	add b                                            ; $6b8e: $80
	ld b, a                                          ; $6b8f: $47
	ld [hl], b                                       ; $6b90: $70
	ld a, a                                          ; $6b91: $7f
	ld [hl-], a                                      ; $6b92: $32
	ld a, a                                          ; $6b93: $7f
	call $b07b                                       ; $6b94: $cd $7b $b0
	sbc d                                            ; $6b97: $9a
	db $dd                                           ; $6b98: $dd
	ld e, $20                                        ; $6b99: $1e $20
	jr nc, @+$26                                     ; $6b9b: $30 $24

	sbc $28                                          ; $6b9d: $de $28
	sub h                                            ; $6b9f: $94
	ld a, [hl+]                                      ; $6ba0: $2a
	jr nz, jr_01e_6bc4                               ; $6ba1: $20 $21

	rst SubAFromHL                                          ; $6ba3: $d7
	rst GetHLinHL                                          ; $6ba4: $cf
	db $ed                                           ; $6ba5: $ed
	db $dd                                           ; $6ba6: $dd
	xor $ee                                          ; $6ba7: $ee $ee
	ld l, $22                                        ; $6ba9: $2e $22
	ld a, d                                          ; $6bab: $7a
	or b                                             ; $6bac: $b0
	sbc $2a                                          ; $6bad: $de $2a
	sub a                                            ; $6baf: $97
	ret c                                            ; $6bb0: $d8

	sbc $2c                                          ; $6bb1: $de $2c
	jr z, jr_01e_6b85                                ; $6bb3: $28 $d0

	sbc $2a                                          ; $6bb5: $de $2a
	add hl, hl                                       ; $6bb7: $29
	rst JumpTable                                          ; $6bb8: $c7
	inc bc                                           ; $6bb9: $03
	rst $38                                          ; $6bba: $ff
	rst SubAFromDE                                          ; $6bbb: $df
	add hl, bc                                       ; $6bbc: $09
	add b                                            ; $6bbd: $80
	ld d, $1f                                        ; $6bbe: $16 $1f
	ld de, $281f                                     ; $6bc0: $11 $1f $28
	ccf                                              ; $6bc3: $3f

jr_01e_6bc4:
	ld d, h                                          ; $6bc4: $54
	ld a, a                                          ; $6bc5: $7f
	ld l, e                                          ; $6bc6: $6b
	ld a, a                                          ; $6bc7: $7f
	ld c, c                                          ; $6bc8: $49
	ld a, a                                          ; $6bc9: $7f
	ld e, b                                          ; $6bca: $58
	ld a, a                                          ; $6bcb: $7f
	ld e, [hl]                                       ; $6bcc: $5e
	ld [hl], a                                       ; $6bcd: $77
	ccf                                              ; $6bce: $3f
	dec [hl]                                         ; $6bcf: $35
	rra                                              ; $6bd0: $1f
	ld e, $3b                                        ; $6bd1: $1e $3b
	ld h, $3f                                        ; $6bd3: $26 $3f
	inc h                                            ; $6bd5: $24
	rra                                              ; $6bd6: $1f
	db $10                                           ; $6bd7: $10
	rrca                                             ; $6bd8: $0f

jr_01e_6bd9:
	ld [rRAMG], sp                                   ; $6bd9: $08 $00 $00
	ret nc                                           ; $6bdc: $d0

	sbc c                                            ; $6bdd: $99
	ret nc                                           ; $6bde: $d0

	jr z, jr_01e_6bd9                                ; $6bdf: $28 $f8

	inc d                                            ; $6be1: $14
	db $fc                                           ; $6be2: $fc
	add h                                            ; $6be3: $84
	sbc $fc                                          ; $6be4: $de $fc
	add b                                            ; $6be6: $80
	add [hl]                                         ; $6be7: $86
	cp $01                                           ; $6be8: $fe $01
	rst $38                                          ; $6bea: $ff
	call nz, $23ff                                   ; $6beb: $c4 $ff $23
	rst $38                                          ; $6bee: $ff
	ld [de], a                                       ; $6bef: $12
	cp $32                                           ; $6bf0: $fe $32
	cp $f2                                           ; $6bf2: $fe $f2
	sbc $f4                                          ; $6bf4: $de $f4
	inc e                                            ; $6bf6: $1c
	add sp, $38                                      ; $6bf7: $e8 $38
	ldh a, [rSVBK]                                   ; $6bf9: $f0 $70
	rlca                                             ; $6bfb: $07
	rlca                                             ; $6bfc: $07
	ld [bc], a                                       ; $6bfd: $02
	inc bc                                           ; $6bfe: $03
	ld [bc], a                                       ; $6bff: $02

jr_01e_6c00:
	inc bc                                           ; $6c00: $03
	inc b                                            ; $6c01: $04
	rlca                                             ; $6c02: $07
	inc a                                            ; $6c03: $3c
	ccf                                              ; $6c04: $3f
	ld [hl], h                                       ; $6c05: $74
	add b                                            ; $6c06: $80
	ld l, a                                          ; $6c07: $6f
	ld a, h                                          ; $6c08: $7c
	ld c, a                                          ; $6c09: $4f
	ld [hl-], a                                      ; $6c0a: $32
	inc sp                                           ; $6c0b: $33
	dec b                                            ; $6c0c: $05
	rlca                                             ; $6c0d: $07
	inc c                                            ; $6c0e: $0c
	rrca                                             ; $6c0f: $0f
	ld a, b                                          ; $6c10: $78
	ld a, a                                          ; $6c11: $7f
	sub c                                            ; $6c12: $91
	rst $38                                          ; $6c13: $ff
	ld c, d                                          ; $6c14: $4a
	ld a, [hl]                                       ; $6c15: $7e
	inc h                                            ; $6c16: $24
	inc a                                            ; $6c17: $3c
	rst $38                                          ; $6c18: $ff
	rst $38                                          ; $6c19: $ff
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	ret nz                                           ; $6c1c: $c0

	ret nz                                           ; $6c1d: $c0

	jr nz, jr_01e_6c00                               ; $6c1e: $20 $e0

	db $10                                           ; $6c20: $10
	ldh a, [rOBP0]                                   ; $6c21: $f0 $48
	ld hl, sp+$28                                    ; $6c23: $f8 $28
	ld hl, sp-$73                                    ; $6c25: $f8 $8d
	inc e                                            ; $6c27: $1c
	db $f4                                           ; $6c28: $f4
	inc a                                            ; $6c29: $3c
	db $e4                                           ; $6c2a: $e4
	inc a                                            ; $6c2b: $3c
	db $f4                                           ; $6c2c: $f4
	ret z                                            ; $6c2d: $c8

	ret z                                            ; $6c2e: $c8

	ldh [$e0], a                                     ; $6c2f: $e0 $e0
	sbc b                                            ; $6c31: $98
	ld hl, sp+$54                                    ; $6c32: $f8 $54
	ld a, h                                          ; $6c34: $7c
	jr c, @+$3a                                      ; $6c35: $38 $38

	ld [hl], b                                       ; $6c37: $70
	ld [hl], b                                       ; $6c38: $70
	ld [hl], a                                       ; $6c39: $77
	ldh [rPCM34], a                                  ; $6c3a: $e0 $77
	ret nz                                           ; $6c3c: $c0

	rst SubAFromDE                                          ; $6c3d: $df
	inc bc                                           ; $6c3e: $03
	ld a, a                                          ; $6c3f: $7f
	jp z, $fe77                                      ; $6c40: $ca $77 $fe

	sbc [hl]                                         ; $6c43: $9e
	ld b, $dd                                        ; $6c44: $06 $dd
	rlca                                             ; $6c46: $07
	sbc [hl]                                         ; $6c47: $9e
	inc b                                            ; $6c48: $04
	ld a, e                                          ; $6c49: $7b
	or c                                             ; $6c4a: $b1
	ld a, e                                          ; $6c4b: $7b
	db $fd                                           ; $6c4c: $fd
	rst SubAFromDE                                          ; $6c4d: $df
	ld bc, $07df                                     ; $6c4e: $01 $df $07
	sbc b                                            ; $6c51: $98
	ld [$7f0f], sp                                   ; $6c52: $08 $0f $7f
	ld a, a                                          ; $6c55: $7f
	ret nz                                           ; $6c56: $c0

	ret nz                                           ; $6c57: $c0

	ld b, b                                          ; $6c58: $40
	ld a, e                                          ; $6c59: $7b
	cp [hl]                                          ; $6c5a: $be
	ld l, a                                          ; $6c5b: $6f
	cp $9b                                           ; $6c5c: $fe $9b
	ld d, b                                          ; $6c5e: $50
	ldh a, [$a0]                                     ; $6c5f: $f0 $a0
	ldh [$7b], a                                     ; $6c61: $e0 $7b
	pop af                                           ; $6c63: $f1
	sbc l                                            ; $6c64: $9d
	ld b, b                                          ; $6c65: $40
	and b                                            ; $6c66: $a0
	ld [hl], e                                       ; $6c67: $73
	ldh a, [c]                                       ; $6c68: $f2
	sbc [hl]                                         ; $6c69: $9e
	ld h, b                                          ; $6c6a: $60
	ld a, e                                          ; $6c6b: $7b
	db $fc                                           ; $6c6c: $fc
	rst SubAFromDE                                          ; $6c6d: $df
	cp $67                                           ; $6c6e: $fe $67
	add b                                            ; $6c70: $80
	ld a, a                                          ; $6c71: $7f
	cp $8b                                           ; $6c72: $fe $8b
	inc e                                            ; $6c74: $1c
	rla                                              ; $6c75: $17
	dec a                                            ; $6c76: $3d
	inc hl                                           ; $6c77: $23
	ccf                                              ; $6c78: $3f
	daa                                              ; $6c79: $27
	ld e, $1f                                        ; $6c7a: $1e $1f
	ld [bc], a                                       ; $6c7c: $02
	inc bc                                           ; $6c7d: $03
	dec e                                            ; $6c7e: $1d
	rra                                              ; $6c7f: $1f
	dec h                                            ; $6c80: $25
	ccf                                              ; $6c81: $3f
	inc sp                                           ; $6c82: $33
	ccf                                              ; $6c83: $3f
	inc c                                            ; $6c84: $0c
	inc c                                            ; $6c85: $0c
	ld a, a                                          ; $6c86: $7f
	ld a, a                                          ; $6c87: $7f
	ld [hl], a                                       ; $6c88: $77
	add b                                            ; $6c89: $80
	rst SubAFromDE                                          ; $6c8a: $df
	ldh [$7f], a                                     ; $6c8b: $e0 $7f
	ret z                                            ; $6c8d: $c8

	sub l                                            ; $6c8e: $95
	ret z                                            ; $6c8f: $c8

	ld hl, sp-$5c                                    ; $6c90: $f8 $a4
	db $fc                                           ; $6c92: $fc
	xor h                                            ; $6c93: $ac
	db $f4                                           ; $6c94: $f4
	inc e                                            ; $6c95: $1c
	db $f4                                           ; $6c96: $f4
	jr c, @-$06                                      ; $6c97: $38 $f8

	ld [hl], a                                       ; $6c99: $77
	or d                                             ; $6c9a: $b2
	ld a, a                                          ; $6c9b: $7f
	ld [hl-], a                                      ; $6c9c: $32
	sbc c                                            ; $6c9d: $99
	jp nc, $26fe                                     ; $6c9e: $d2 $fe $26

	ld a, $4c                                        ; $6ca1: $3e $4c
	ld a, h                                          ; $6ca3: $7c
	ld [hl], a                                       ; $6ca4: $77
	add b                                            ; $6ca5: $80
	rst $38                                          ; $6ca6: $ff
	rst SubAFromDE                                          ; $6ca7: $df
	dec a                                            ; $6ca8: $3d
	add e                                            ; $6ca9: $83
	inc de                                           ; $6caa: $13
	rra                                              ; $6cab: $1f
	ld sp, hl                                        ; $6cac: $f9
	rst $38                                          ; $6cad: $ff
	ld b, a                                          ; $6cae: $47
	ld a, a                                          ; $6caf: $7f
	ld [hl-], a                                      ; $6cb0: $32
	ccf                                              ; $6cb1: $3f
	dec h                                            ; $6cb2: $25
	ccf                                              ; $6cb3: $3f
	ld b, h                                          ; $6cb4: $44
	ld a, a                                          ; $6cb5: $7f
	ld c, h                                          ; $6cb6: $4c
	ld a, a                                          ; $6cb7: $7f
	ld c, [hl]                                       ; $6cb8: $4e
	ld a, e                                          ; $6cb9: $7b
	ccf                                              ; $6cba: $3f
	dec a                                            ; $6cbb: $3d
	dec hl                                           ; $6cbc: $2b
	ld [hl], $3f                                     ; $6cbd: $36 $3f
	ld h, $1f                                        ; $6cbf: $26 $1f
	ld d, $0f                                        ; $6cc1: $16 $0f
	add hl, bc                                       ; $6cc3: $09
	rlca                                             ; $6cc4: $07
	inc b                                            ; $6cc5: $04
	ld [hl], a                                       ; $6cc6: $77
	cp [hl]                                          ; $6cc7: $be
	add d                                            ; $6cc8: $82
	inc [hl]                                         ; $6cc9: $34
	db $f4                                           ; $6cca: $f4
	adc [hl]                                         ; $6ccb: $8e
	cp $fc                                           ; $6ccc: $fe $fc
	db $fc                                           ; $6cce: $fc
	adc d                                            ; $6ccf: $8a
	cp $26                                           ; $6cd0: $fe $26
	cp $96                                           ; $6cd2: $fe $96
	cp $d5                                           ; $6cd4: $fe $d5
	rst $38                                          ; $6cd6: $ff
	db $fd                                           ; $6cd7: $fd
	cp a                                             ; $6cd8: $bf
	ld a, [$be6e]                                    ; $6cd9: $fa $6e $be
	ld [hl], d                                       ; $6cdc: $72
	cp $62                                           ; $6cdd: $fe $62
	db $fc                                           ; $6cdf: $fc
	ld h, h                                          ; $6ce0: $64
	ld hl, sp-$78                                    ; $6ce1: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $6ce3: $f0 $10
	inc bc                                           ; $6ce5: $03
	ld [hl], e                                       ; $6ce6: $73
	add h                                            ; $6ce7: $84
	ld a, a                                          ; $6ce8: $7f
	ld d, [hl]                                       ; $6ce9: $56
	ld [hl], a                                       ; $6cea: $77
	cp $9a                                           ; $6ceb: $fe $9a
	ld c, $0f                                        ; $6ced: $0e $0f
	rrca                                             ; $6cef: $0f
	dec bc                                           ; $6cf0: $0b
	ld b, $73                                        ; $6cf1: $06 $73
	ld [hl], b                                       ; $6cf3: $70
	ld [hl], a                                       ; $6cf4: $77
	ld [$4277], a                                    ; $6cf5: $ea $77 $42
	rst $38                                          ; $6cf8: $ff
	rst SubAFromDE                                          ; $6cf9: $df
	ldh a, [$8d]                                     ; $6cfa: $f0 $8d
	ld [$88f8], sp                                   ; $6cfc: $08 $f8 $88
	ld hl, sp+$04                                    ; $6cff: $f8 $04
	db $fc                                           ; $6d01: $fc
	sub h                                            ; $6d02: $94
	db $fc                                           ; $6d03: $fc
	inc d                                            ; $6d04: $14
	db $fc                                           ; $6d05: $fc
	sbc h                                            ; $6d06: $9c
	db $fc                                           ; $6d07: $fc
	ld a, h                                          ; $6d08: $7c
	db $f4                                           ; $6d09: $f4
	sbc b                                            ; $6d0a: $98
	ld hl, sp-$70                                    ; $6d0b: $f8 $90
	ldh a, [rPCM34]                                  ; $6d0d: $f0 $77
	cp $9b                                           ; $6d0f: $fe $9b
	add sp, -$08                                     ; $6d11: $e8 $f8
	add h                                            ; $6d13: $84
	db $fc                                           ; $6d14: $fc
	ld l, a                                          ; $6d15: $6f
	add b                                            ; $6d16: $80
	ld sp, hl                                        ; $6d17: $f9
	rst SubAFromDE                                          ; $6d18: $df
	inc bc                                           ; $6d19: $03
	ld a, [hl]                                       ; $6d1a: $7e
	cp h                                             ; $6d1b: $bc
	ld a, [hl]                                       ; $6d1c: $7e
	ld a, b                                          ; $6d1d: $78
	adc a                                            ; $6d1e: $8f
	ld h, [hl]                                       ; $6d1f: $66
	ld a, a                                          ; $6d20: $7f
	adc d                                            ; $6d21: $8a
	rst $38                                          ; $6d22: $ff
	ld d, e                                          ; $6d23: $53
	ld a, a                                          ; $6d24: $7f
	ld d, h                                          ; $6d25: $54
	ld a, a                                          ; $6d26: $7f
	ld h, h                                          ; $6d27: $64
	ld a, a                                          ; $6d28: $7f
	ld b, h                                          ; $6d29: $44
	ld a, a                                          ; $6d2a: $7f
	ld b, [hl]                                       ; $6d2b: $46
	ld a, a                                          ; $6d2c: $7f
	ld h, $3f                                        ; $6d2d: $26 $3f
	rst FarCall                                          ; $6d2f: $f7
	ld [hl], a                                       ; $6d30: $77
	or [hl]                                          ; $6d31: $b6
	adc b                                            ; $6d32: $88
	adc h                                            ; $6d33: $8c
	db $fc                                           ; $6d34: $fc
	ld [hl], d                                       ; $6d35: $72
	cp $9a                                           ; $6d36: $fe $9a
	cp $05                                           ; $6d38: $fe $05
	rst $38                                          ; $6d3a: $ff
	and l                                            ; $6d3b: $a5
	rst $38                                          ; $6d3c: $ff
	sub l                                            ; $6d3d: $95
	rst $38                                          ; $6d3e: $ff
	push de                                          ; $6d3f: $d5
	rst $38                                          ; $6d40: $ff
	jp z, $e6fe                                      ; $6d41: $ca $fe $e6

	cp d                                             ; $6d44: $ba
	dec l                                            ; $6d45: $2d
	dec sp                                           ; $6d46: $3b
	rlca                                             ; $6d47: $07
	dec b                                            ; $6d48: $05
	dec bc                                           ; $6d49: $0b
	ld [hl], e                                       ; $6d4a: $73
	add d                                            ; $6d4b: $82
	ld a, a                                          ; $6d4c: $7f
	adc [hl]                                         ; $6d4d: $8e
	sbc l                                            ; $6d4e: $9d
	inc c                                            ; $6d4f: $0c
	dec bc                                           ; $6d50: $0b
	ld l, [hl]                                       ; $6d51: $6e
	ldh a, [c]                                       ; $6d52: $f2
	ld d, a                                          ; $6d53: $57
	add b                                            ; $6d54: $80
	sbc d                                            ; $6d55: $9a
	ld a, b                                          ; $6d56: $78
	adc b                                            ; $6d57: $88
	db $f4                                           ; $6d58: $f4
	sbc h                                            ; $6d59: $9c
	db $e4                                           ; $6d5a: $e4
	ld a, d                                          ; $6d5b: $7a
	ld b, d                                          ; $6d5c: $42
	ld a, a                                          ; $6d5d: $7f
	add d                                            ; $6d5e: $82
	ld a, a                                          ; $6d5f: $7f
	add [hl]                                         ; $6d60: $86
	ld a, a                                          ; $6d61: $7f
	nop                                              ; $6d62: $00
	rst SubAFromDE                                          ; $6d63: $df
	ld hl, sp+$6f                                    ; $6d64: $f8 $6f
	add d                                            ; $6d66: $82
	ld d, a                                          ; $6d67: $57
	add b                                            ; $6d68: $80
	ccf                                              ; $6d69: $3f
	nop                                              ; $6d6a: $00
	sub e                                            ; $6d6b: $93
	ld a, a                                          ; $6d6c: $7f
	ld a, l                                          ; $6d6d: $7d
	ei                                               ; $6d6e: $fb
	sub [hl]                                         ; $6d6f: $96
	rst $38                                          ; $6d70: $ff
	sub [hl]                                         ; $6d71: $96
	rst $38                                          ; $6d72: $ff
	or $8f                                           ; $6d73: $f6 $8f
	ld sp, hl                                        ; $6d75: $f9
	ld b, [hl]                                       ; $6d76: $46
	ld a, l                                          ; $6d77: $7d
	dec bc                                           ; $6d78: $0b
	nop                                              ; $6d79: $00
	sbc b                                            ; $6d7a: $98
	sub b                                            ; $6d7b: $90
	inc hl                                           ; $6d7c: $23
	ccf                                              ; $6d7d: $3f
	db $10                                           ; $6d7e: $10
	rra                                              ; $6d7f: $1f
	inc c                                            ; $6d80: $0c
	rrca                                             ; $6d81: $0f
	ld l, a                                          ; $6d82: $6f
	ld a, [bc]                                       ; $6d83: $0a
	ld [hl], a                                       ; $6d84: $77
	adc b                                            ; $6d85: $88
	ld l, a                                          ; $6d86: $6f
	ld hl, sp+$7f                                    ; $6d87: $f8 $7f
	cp $7e                                           ; $6d89: $fe $7e
	ld [hl-], a                                      ; $6d8b: $32
	ld a, a                                          ; $6d8c: $7f

jr_01e_6d8d:
	add b                                            ; $6d8d: $80
	ld [hl], a                                       ; $6d8e: $77
	and b                                            ; $6d8f: $a0
	rst SubAFromDE                                          ; $6d90: $df
	ldh a, [hDisp1_BGP]                                     ; $6d91: $f0 $92
	jr jr_01e_6d8d                                   ; $6d93: $18 $f8

	cp h                                             ; $6d95: $bc
	db $e4                                           ; $6d96: $e4
	ld a, [hl-]                                      ; $6d97: $3a
	xor $92                                          ; $6d98: $ee $92
	cp $1c                                           ; $6d9a: $fe $1c
	db $fc                                           ; $6d9c: $fc
	adc b                                            ; $6d9d: $88
	ld hl, sp+$70                                    ; $6d9e: $f8 $70
	ld a, c                                          ; $6da0: $79
	or $7f                                           ; $6da1: $f6 $7f
	cp $97                                           ; $6da3: $fe $97
	ld h, h                                          ; $6da5: $64
	db $fc                                           ; $6da6: $fc
	ld a, h                                          ; $6da7: $7c
	db $fc                                           ; $6da8: $fc
	ldh [c], a                                       ; $6da9: $e2
	cp $42                                           ; $6daa: $fe $42
	cp $6f                                           ; $6dac: $fe $6f
	add b                                            ; $6dae: $80
	ld a, d                                          ; $6daf: $7a
	ld d, $97                                        ; $6db0: $16 $97
	nop                                              ; $6db2: $00
	cpl                                              ; $6db3: $2f
	inc a                                            ; $6db4: $3c
	ld d, e                                          ; $6db5: $53
	ld a, [hl]                                       ; $6db6: $7e
	ld h, c                                          ; $6db7: $61
	ld a, a                                          ; $6db8: $7f
	ld d, b                                          ; $6db9: $50
	ld a, e                                          ; $6dba: $7b
	cp $97                                           ; $6dbb: $fe $97
	ld a, [de]                                       ; $6dbd: $1a
	ccf                                              ; $6dbe: $3f
	ld e, $15                                        ; $6dbf: $1e $15
	dec de                                           ; $6dc1: $1b
	ld e, $3f                                        ; $6dc2: $1e $3f
	ld h, $7a                                        ; $6dc4: $26 $7a
	add b                                            ; $6dc6: $80
	ld a, c                                          ; $6dc7: $79
	add d                                            ; $6dc8: $82
	rst SubAFromDE                                          ; $6dc9: $df
	rlca                                             ; $6dca: $07
	rst $38                                          ; $6dcb: $ff
	rst SubAFromDE                                          ; $6dcc: $df
	ldh [$7f], a                                     ; $6dcd: $e0 $7f
	cp [hl]                                          ; $6dcf: $be
	add b                                            ; $6dd0: $80
	add h                                            ; $6dd1: $84
	ld a, h                                          ; $6dd2: $7c
	add h                                            ; $6dd3: $84
	ld a, h                                          ; $6dd4: $7c
	jp nz, $c23e                                     ; $6dd5: $c2 $3e $c2

	cp [hl]                                          ; $6dd8: $be
	ld h, d                                          ; $6dd9: $62
	sbc $e2                                          ; $6dda: $de $e2
	sbc $22                                          ; $6ddc: $de $22
	cp $02                                           ; $6dde: $fe $02
	cp $c2                                           ; $6de0: $fe $c2
	cp [hl]                                          ; $6de2: $be
	ldh [c], a                                       ; $6de3: $e2
	ld e, $e2                                        ; $6de4: $1e $e2
	ld a, $c2                                        ; $6de6: $3e $c2
	ld a, [hl]                                       ; $6de8: $7e
	db $f4                                           ; $6de9: $f4
	db $fc                                           ; $6dea: $fc
	add hl, bc                                       ; $6deb: $09
	rrca                                             ; $6dec: $0f
	ld de, $231f                                     ; $6ded: $11 $1f $23
	sub l                                            ; $6df0: $95
	ccf                                              ; $6df1: $3f
	ld b, l                                          ; $6df2: $45
	ld a, a                                          ; $6df3: $7f
	rst AddAOntoHL                                          ; $6df4: $ef
	cp a                                             ; $6df5: $bf
	push af                                          ; $6df6: $f5
	sbc a                                            ; $6df7: $9f
	ld [hl], l                                       ; $6df8: $75
	ld a, a                                          ; $6df9: $7f
	ld [de], a                                       ; $6dfa: $12
	db $dd                                           ; $6dfb: $dd
	ccf                                              ; $6dfc: $3f
	sub [hl]                                         ; $6dfd: $96
	add hl, hl                                       ; $6dfe: $29
	ccf                                              ; $6dff: $3f
	ld a, $3b                                        ; $6e00: $3e $3b
	ld a, [hl+]                                      ; $6e02: $2a
	ld a, c                                          ; $6e03: $79
	ld a, c                                          ; $6e04: $79
	adc d                                            ; $6e05: $8a
	ei                                               ; $6e06: $fb
	ld [hl], a                                       ; $6e07: $77
	and b                                            ; $6e08: $a0
	ld [hl], a                                       ; $6e09: $77
	inc d                                            ; $6e0a: $14
	sbc c                                            ; $6e0b: $99
	ret nc                                           ; $6e0c: $d0

	ldh a, [$e0]                                     ; $6e0d: $f0 $e0
	ldh [$80], a                                     ; $6e0f: $e0 $80
	add b                                            ; $6e11: $80
	db $fd                                           ; $6e12: $fd
	ld l, a                                          ; $6e13: $6f
	ld a, [$e0de]                                    ; $6e14: $fa $de $e0
	ld a, c                                          ; $6e17: $79
	cp l                                             ; $6e18: $bd
	ld a, l                                          ; $6e19: $7d
	cp b                                             ; $6e1a: $b8
	rst SubAFromDE                                          ; $6e1b: $df
	ldh a, [rIE]                                     ; $6e1c: $f0 $ff
	ld a, a                                          ; $6e1e: $7f
	ld d, [hl]                                       ; $6e1f: $56
	sub d                                            ; $6e20: $92
	dec bc                                           ; $6e21: $0b
	dec c                                            ; $6e22: $0d
	ld [de], a                                       ; $6e23: $12
	dec e                                            ; $6e24: $1d
	inc hl                                           ; $6e25: $23
	ccf                                              ; $6e26: $3f
	halt                                             ; $6e27: $76
	ld e, a                                          ; $6e28: $5f
	ld a, b                                          ; $6e29: $78
	ld c, e                                          ; $6e2a: $4b
	dec [hl]                                         ; $6e2b: $35
	scf                                              ; $6e2c: $37
	dec b                                            ; $6e2d: $05
	db $dd                                           ; $6e2e: $dd
	rlca                                             ; $6e2f: $07
	sbc e                                            ; $6e30: $9b
	dec b                                            ; $6e31: $05
	ld c, $0a                                        ; $6e32: $0e $0a
	ccf                                              ; $6e34: $3f
	ld a, c                                          ; $6e35: $79
	or l                                             ; $6e36: $b5
	sbc l                                            ; $6e37: $9d
	add hl, de                                       ; $6e38: $19
	rra                                              ; $6e39: $1f
	halt                                             ; $6e3a: $76
	ret nz                                           ; $6e3b: $c0

	ld a, a                                          ; $6e3c: $7f
	ld d, [hl]                                       ; $6e3d: $56
	ld a, [hl]                                       ; $6e3e: $7e
	adc h                                            ; $6e3f: $8c
	sub h                                            ; $6e40: $94
	ld b, h                                          ; $6e41: $44
	db $fc                                           ; $6e42: $fc
	db $e4                                           ; $6e43: $e4
	db $fc                                           ; $6e44: $fc
	ld a, $f2                                        ; $6e45: $3e $f2
	ld e, [hl]                                       ; $6e47: $5e
	ld a, [$f454]                                    ; $6e48: $fa $54 $f4
	ld d, b                                          ; $6e4b: $50
	sbc $f0                                          ; $6e4c: $de $f0
	add b                                            ; $6e4e: $80
	ld [hl], b                                       ; $6e4f: $70
	ld d, b                                          ; $6e50: $50
	ld a, b                                          ; $6e51: $78
	ld e, b                                          ; $6e52: $58
	inc [hl]                                         ; $6e53: $34
	inc a                                            ; $6e54: $3c
	inc h                                            ; $6e55: $24
	inc a                                            ; $6e56: $3c
	ld c, b                                          ; $6e57: $48
	ld a, b                                          ; $6e58: $78
	cp $fe                                           ; $6e59: $fe $fe
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	dec d                                            ; $6e5d: $15
	rra                                              ; $6e5e: $1f
	inc e                                            ; $6e5f: $1c
	rrca                                             ; $6e60: $0f
	inc [hl]                                         ; $6e61: $34
	cpl                                              ; $6e62: $2f
	jr z, @+$41                                      ; $6e63: $28 $3f

	jr c, @+$41                                      ; $6e65: $38 $3f

	dec l                                            ; $6e67: $2d
	ccf                                              ; $6e68: $3f
	ld a, $33                                        ; $6e69: $3e $33
	ccf                                              ; $6e6b: $3f
	dec sp                                           ; $6e6c: $3b
	rra                                              ; $6e6d: $1f
	sub h                                            ; $6e6e: $94
	rla                                              ; $6e6f: $17
	rra                                              ; $6e70: $1f
	inc de                                           ; $6e71: $13
	rrca                                             ; $6e72: $0f
	add hl, bc                                       ; $6e73: $09
	rrca                                             ; $6e74: $0f
	rrca                                             ; $6e75: $0f
	jr jr_01e_6e97                                   ; $6e76: $18 $1f

	ld hl, $773f                                     ; $6e78: $21 $3f $77
	ret nz                                           ; $6e7b: $c0

	ld a, l                                          ; $6e7c: $7d
	inc b                                            ; $6e7d: $04
	ld a, a                                          ; $6e7e: $7f
	add b                                            ; $6e7f: $80
	ld a, c                                          ; $6e80: $79
	ld c, d                                          ; $6e81: $4a
	sbc [hl]                                         ; $6e82: $9e
	ret nz                                           ; $6e83: $c0

	ld [hl], a                                       ; $6e84: $77
	add [hl]                                         ; $6e85: $86
	ld l, a                                          ; $6e86: $6f
	add d                                            ; $6e87: $82
	ld [hl], a                                       ; $6e88: $77
	ld hl, sp-$25                                    ; $6e89: $f8 $db
	add b                                            ; $6e8b: $80
	rst SubAFromDE                                          ; $6e8c: $df
	ldh [$fd], a                                     ; $6e8d: $e0 $fd
	rst SubAFromDE                                          ; $6e8f: $df
	rlca                                             ; $6e90: $07
	ld a, a                                          ; $6e91: $7f
	call nc, $2785                                   ; $6e92: $d4 $85 $27
	jr c, jr_01e_6ee6                                ; $6e95: $38 $4f

jr_01e_6e97:
	ld [hl], a                                       ; $6e97: $77
	ld c, b                                          ; $6e98: $48
	ld a, a                                          ; $6e99: $7f
	sub l                                            ; $6e9a: $95
	rst $38                                          ; $6e9b: $ff
	push hl                                          ; $6e9c: $e5
	rst $38                                          ; $6e9d: $ff
	xor l                                            ; $6e9e: $ad
	cp d                                             ; $6e9f: $ba
	cpl                                              ; $6ea0: $2f
	ld [hl], $3d                                     ; $6ea1: $36 $3d
	ld a, $3f                                        ; $6ea3: $3e $3f
	ld [hl], $3f                                     ; $6ea5: $36 $3f
	ld [hl], $2f                                     ; $6ea7: $36 $2f
	add hl, sp                                       ; $6ea9: $39
	daa                                              ; $6eaa: $27
	inc a                                            ; $6eab: $3c
	inc de                                           ; $6eac: $13
	rra                                              ; $6ead: $1f
	ld a, d                                          ; $6eae: $7a
	ld a, $80                                        ; $6eaf: $3e $80
	ld a, b                                          ; $6eb1: $78
	add h                                            ; $6eb2: $84
	db $fc                                           ; $6eb3: $fc
	ldh [c], a                                       ; $6eb4: $e2
	ld e, $f2                                        ; $6eb5: $1e $f2
	xor $19                                          ; $6eb7: $ee $19
	rst FarCall                                          ; $6eb9: $f7
	add hl, hl                                       ; $6eba: $29
	rst $38                                          ; $6ebb: $ff
	dec h                                            ; $6ebc: $25
	rst $38                                          ; $6ebd: $ff
	or l                                             ; $6ebe: $b5
	rst SubAFromDE                                          ; $6ebf: $df
	ld sp, hl                                        ; $6ec0: $f9
	ld l, a                                          ; $6ec1: $6f
	cp l                                             ; $6ec2: $bd
	ld [hl], a                                       ; $6ec3: $77
	db $fd                                           ; $6ec4: $fd
	ld h, a                                          ; $6ec5: $67
	db $fd                                           ; $6ec6: $fd
	ld h, a                                          ; $6ec7: $67
	ld sp, hl                                        ; $6ec8: $f9
	adc a                                            ; $6ec9: $8f
	pop af                                           ; $6eca: $f1
	rra                                              ; $6ecb: $1f
	ldh [c], a                                       ; $6ecc: $e2
	cp $02                                           ; $6ecd: $fe $02
	rlca                                             ; $6ecf: $07
	ld a, [hl]                                       ; $6ed0: $7e
	ld [bc], a                                       ; $6ed1: $02
	sbc h                                            ; $6ed2: $9c
	dec bc                                           ; $6ed3: $0b
	ld c, $0b                                        ; $6ed4: $0e $0b
	halt                                             ; $6ed6: $76
	ld a, [hl]                                       ; $6ed7: $7e
	ld a, e                                          ; $6ed8: $7b
	cp $7f                                           ; $6ed9: $fe $7f
	ld a, [$7d72]                                    ; $6edb: $fa $72 $7d
	sbc c                                            ; $6ede: $99
	inc bc                                           ; $6edf: $03
	rlca                                             ; $6ee0: $07
	inc b                                            ; $6ee1: $04
	ld [$3f0f], sp                                   ; $6ee2: $08 $0f $3f
	ld [hl], c                                       ; $6ee5: $71

jr_01e_6ee6:
	call nz, $2c94                                   ; $6ee6: $c4 $94 $2c
	db $fc                                           ; $6ee9: $fc
	call nz, Call_01e_507c                           ; $6eea: $c4 $7c $50
	cp h                                             ; $6eed: $bc
	db $f4                                           ; $6eee: $f4
	db $fc                                           ; $6eef: $fc
	cp b                                             ; $6ef0: $b8
	ld hl, sp-$58                                    ; $6ef1: $f8 $a8
	ld a, e                                          ; $6ef3: $7b
	cp $7d                                           ; $6ef4: $fe $7d
	db $fc                                           ; $6ef6: $fc
	rst SubAFromDE                                          ; $6ef7: $df
	ldh a, [$7b]                                     ; $6ef8: $f0 $7b
	inc b                                            ; $6efa: $04
	sbc e                                            ; $6efb: $9b
	ldh [$f0], a                                     ; $6efc: $e0 $f0
	sub b                                            ; $6efe: $90
	sbc b                                            ; $6eff: $98
	ld a, c                                          ; $6f00: $79
	ld l, d                                          ; $6f01: $6a
	rst SubAFromDE                                          ; $6f02: $df
	db $fc                                           ; $6f03: $fc
	rra                                              ; $6f04: $1f
	add b                                            ; $6f05: $80
	ld a, l                                          ; $6f06: $7d
	ld [bc], a                                       ; $6f07: $02
	sbc c                                            ; $6f08: $99
	ld e, a                                          ; $6f09: $5f
	ld e, c                                          ; $6f0a: $59
	cp $ad                                           ; $6f0b: $fe $ad
	rst FarCall                                          ; $6f0d: $f7
	sbc a                                            ; $6f0e: $9f
	dec sp                                           ; $6f0f: $3b
	add b                                            ; $6f10: $80
	sbc [hl]                                         ; $6f11: $9e
	rrca                                             ; $6f12: $0f
	ld a, e                                          ; $6f13: $7b
	add d                                            ; $6f14: $82
	ld a, a                                          ; $6f15: $7f
	ld a, [hl]                                       ; $6f16: $7e
	sbc [hl]                                         ; $6f17: $9e
	ld d, a                                          ; $6f18: $57
	ld a, e                                          ; $6f19: $7b
	add b                                            ; $6f1a: $80
	sub h                                            ; $6f1b: $94
	sbc a                                            ; $6f1c: $9f
	ldh [c], a                                       ; $6f1d: $e2
	cp $ee                                           ; $6f1e: $fe $ee
	sbc a                                            ; $6f20: $9f
	ld b, e                                          ; $6f21: $43
	ld a, a                                          ; $6f22: $7f
	inc sp                                           ; $6f23: $33
	ld a, $0f                                        ; $6f24: $3e $0f
	rrca                                             ; $6f26: $0f
	ld a, d                                          ; $6f27: $7a
	inc c                                            ; $6f28: $0c
	inc bc                                           ; $6f29: $03
	add b                                            ; $6f2a: $80
	cpl                                              ; $6f2b: $2f
	add b                                            ; $6f2c: $80
	ld l, a                                          ; $6f2d: $6f
	ld a, h                                          ; $6f2e: $7c
	ld a, l                                          ; $6f2f: $7d
	cp h                                             ; $6f30: $bc
	ld a, l                                          ; $6f31: $7d
	cp b                                             ; $6f32: $b8
	sbc l                                            ; $6f33: $9d
	jr nz, jr_01e_6f75                               ; $6f34: $20 $3f

	ld [hl], a                                       ; $6f36: $77
	cp $7f                                           ; $6f37: $fe $7f
	ld [hl], h                                       ; $6f39: $74
	sbc h                                            ; $6f3a: $9c
	cpl                                              ; $6f3b: $2f
	scf                                              ; $6f3c: $37
	jr z, @+$7d                                      ; $6f3d: $28 $7b

	ld hl, sp-$66                                    ; $6f3f: $f8 $9a
	inc l                                            ; $6f41: $2c
	scf                                              ; $6f42: $37
	ld [hl+], a                                      ; $6f43: $22
	ccf                                              ; $6f44: $3f
	ld [de], a                                       ; $6f45: $12
	ld a, e                                          ; $6f46: $7b
	nop                                              ; $6f47: $00
	db $fd                                           ; $6f48: $fd
	rst SubAFromDE                                          ; $6f49: $df
	ld [hl], b                                       ; $6f4a: $70
	ld [hl], h                                       ; $6f4b: $74
	cp h                                             ; $6f4c: $bc
	ld a, [hl]                                       ; $6f4d: $7e
	ld [$fe7f], sp                                   ; $6f4e: $08 $7f $fe
	sub h                                            ; $6f51: $94
	ld bc, $e1ff                                     ; $6f52: $01 $ff $e1
	rra                                              ; $6f55: $1f
	pop af                                           ; $6f56: $f1
	rst AddAOntoHL                                          ; $6f57: $ef
	ld de, $09ff                                     ; $6f58: $11 $ff $09
	rst FarCall                                          ; $6f5b: $f7
	add hl, hl                                       ; $6f5c: $29
	ld a, e                                          ; $6f5d: $7b
	ld [hl], b                                       ; $6f5e: $70
	sbc h                                            ; $6f5f: $9c
	sbc b                                            ; $6f60: $98
	cp $04                                           ; $6f61: $fe $04
	ld l, a                                          ; $6f63: $6f
	nop                                              ; $6f64: $00
	sbc [hl]                                         ; $6f65: $9e
	ld c, $79                                        ; $6f66: $0e $79
	ld b, $77                                        ; $6f68: $06 $77
	cp $77                                           ; $6f6a: $fe $77
	add e                                            ; $6f6c: $83
	ld d, e                                          ; $6f6d: $53
	add b                                            ; $6f6e: $80
	ld a, l                                          ; $6f6f: $7d
	adc d                                            ; $6f70: $8a
	ld a, l                                          ; $6f71: $7d
	sub d                                            ; $6f72: $92
	sbc d                                            ; $6f73: $9a
	ret nc                                           ; $6f74: $d0

jr_01e_6f75:
	cp h                                             ; $6f75: $bc
	ld [hl], h                                       ; $6f76: $74
	cp h                                             ; $6f77: $bc
	ld hl, sp+$73                                    ; $6f78: $f8 $73
	add b                                            ; $6f7a: $80
	halt                                             ; $6f7b: $76
	ld [hl], h                                       ; $6f7c: $74
	ld c, a                                          ; $6f7d: $4f
	add b                                            ; $6f7e: $80
	call $ff02                                       ; $6f7f: $cd $02 $ff
	rst SubAFromDE                                          ; $6f82: $df
	inc bc                                           ; $6f83: $03
	add b                                            ; $6f84: $80
	inc e                                            ; $6f85: $1c
	rra                                              ; $6f86: $1f
	ld d, b                                          ; $6f87: $50
	ld a, a                                          ; $6f88: $7f
	and b                                            ; $6f89: $a0
	rst $38                                          ; $6f8a: $ff
	ret nz                                           ; $6f8b: $c0

	rst $38                                          ; $6f8c: $ff
	xor b                                            ; $6f8d: $a8
	rst $38                                          ; $6f8e: $ff
	and l                                            ; $6f8f: $a5
	rst $38                                          ; $6f90: $ff
	inc [hl]                                         ; $6f91: $34
	ld a, a                                          ; $6f92: $7f
	ld l, $3b                                        ; $6f93: $2e $3b
	inc hl                                           ; $6f95: $23
	ccf                                              ; $6f96: $3f
	ld l, a                                          ; $6f97: $6f

jr_01e_6f98:
	ld e, l                                          ; $6f98: $5d
	ld l, a                                          ; $6f99: $6f
	ld e, b                                          ; $6f9a: $58
	ccf                                              ; $6f9b: $3f
	jr nz, @+$21                                     ; $6f9c: $20 $1f

	db $10                                           ; $6f9e: $10
	ld c, $0f                                        ; $6f9f: $0e $0f
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	ret nz                                           ; $6fa3: $c0

	adc a                                            ; $6fa4: $8f
	ret nz                                           ; $6fa5: $c0

	jr nc, jr_01e_6f98                               ; $6fa6: $30 $f0

	ld [$08f8], sp                                   ; $6fa8: $08 $f8 $08
	ld hl, sp+$04                                    ; $6fab: $f8 $04
	db $fc                                           ; $6fad: $fc
	ld [bc], a                                       ; $6fae: $02
	cp $02                                           ; $6faf: $fe $02
	cp $82                                           ; $6fb1: $fe $82
	cp $42                                           ; $6fb3: $fe $42
	ld a, e                                          ; $6fb5: $7b
	cp $86                                           ; $6fb6: $fe $86
	and d                                            ; $6fb8: $a2
	cp $c4                                           ; $6fb9: $fe $c4
	inc a                                            ; $6fbb: $3c
	call nz, $887c                                   ; $6fbc: $c4 $7c $88
	ld hl, sp+$70                                    ; $6fbf: $f8 $70
	or b                                             ; $6fc1: $b0
	ld [bc], a                                       ; $6fc2: $02
	inc bc                                           ; $6fc3: $03
	dec bc                                           ; $6fc4: $0b
	dec c                                            ; $6fc5: $0d
	ld [de], a                                       ; $6fc6: $12
	dec e                                            ; $6fc7: $1d
	inc hl                                           ; $6fc8: $23
	ccf                                              ; $6fc9: $3f
	halt                                             ; $6fca: $76
	ld e, a                                          ; $6fcb: $5f
	ld a, b                                          ; $6fcc: $78
	ld c, e                                          ; $6fcd: $4b
	dec [hl]                                         ; $6fce: $35
	scf                                              ; $6fcf: $37
	dec b                                            ; $6fd0: $05
	db $dd                                           ; $6fd1: $dd
	rlca                                             ; $6fd2: $07
	add e                                            ; $6fd3: $83
	dec b                                            ; $6fd4: $05
	ld c, $0a                                        ; $6fd5: $0e $0a
	ccf                                              ; $6fd7: $3f
	dec a                                            ; $6fd8: $3d
	inc hl                                           ; $6fd9: $23
	ccf                                              ; $6fda: $3f
	add hl, de                                       ; $6fdb: $19
	rra                                              ; $6fdc: $1f
	ld a, a                                          ; $6fdd: $7f
	ld a, a                                          ; $6fde: $7f
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	ld [hl], b                                       ; $6fe1: $70
	ldh a, [hDisp0_WY]                                     ; $6fe2: $f0 $88
	ld hl, sp+$44                                    ; $6fe4: $f8 $44
	db $fc                                           ; $6fe6: $fc
	db $e4                                           ; $6fe7: $e4
	db $fc                                           ; $6fe8: $fc
	ld a, $f2                                        ; $6fe9: $3e $f2
	ld e, [hl]                                       ; $6feb: $5e
	ld a, [$f454]                                    ; $6fec: $fa $54 $f4
	ld d, b                                          ; $6fef: $50
	sbc $f0                                          ; $6ff0: $de $f0
	add b                                            ; $6ff2: $80
	ld [hl], b                                       ; $6ff3: $70
	ld d, b                                          ; $6ff4: $50
	ld a, b                                          ; $6ff5: $78
	ld e, b                                          ; $6ff6: $58
	inc [hl]                                         ; $6ff7: $34
	inc a                                            ; $6ff8: $3c
	inc h                                            ; $6ff9: $24
	inc a                                            ; $6ffa: $3c
	ld c, b                                          ; $6ffb: $48
	ld a, b                                          ; $6ffc: $78
	cp $fe                                           ; $6ffd: $fe $fe
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	ld a, [bc]                                       ; $7001: $0a
	rrca                                             ; $7002: $0f
	ld c, $07                                        ; $7003: $0e $07
	ld a, [de]                                       ; $7005: $1a
	rla                                              ; $7006: $17
	inc d                                            ; $7007: $14
	rra                                              ; $7008: $1f
	inc e                                            ; $7009: $1c
	rra                                              ; $700a: $1f
	ld d, $1f                                        ; $700b: $16 $1f
	rra                                              ; $700d: $1f
	add hl, de                                       ; $700e: $19
	rra                                              ; $700f: $1f
	dec e                                            ; $7010: $1d
	rrca                                             ; $7011: $0f
	adc h                                            ; $7012: $8c
	dec bc                                           ; $7013: $0b
	rrca                                             ; $7014: $0f
	add hl, bc                                       ; $7015: $09
	rlca                                             ; $7016: $07
	inc b                                            ; $7017: $04
	rlca                                             ; $7018: $07
	rlca                                             ; $7019: $07
	inc c                                            ; $701a: $0c
	rrca                                             ; $701b: $0f
	db $10                                           ; $701c: $10
	rra                                              ; $701d: $1f
	ccf                                              ; $701e: $3f
	ccf                                              ; $701f: $3f
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	add b                                            ; $7022: $80
	add b                                            ; $7023: $80
	ld b, b                                          ; $7024: $40
	ret nz                                           ; $7025: $c0

	ld l, a                                          ; $7026: $6f
	cp $77                                           ; $7027: $fe $77
	or $db                                           ; $7029: $f6 $db
	add b                                            ; $702b: $80
	db $dd                                           ; $702c: $dd
	ret nz                                           ; $702d: $c0

	ld a, a                                          ; $702e: $7f
	db $f4                                           ; $702f: $f4
	rst SubAFromDE                                          ; $7030: $df
	ret nz                                           ; $7031: $c0

	rst SubAFromDE                                          ; $7032: $df
	ldh a, [rIE]                                     ; $7033: $f0 $ff
	sub b                                            ; $7035: $90
	add hl, bc                                       ; $7036: $09
	rrca                                             ; $7037: $0f
	ld de, $231f                                     ; $7038: $11 $1f $23
	ccf                                              ; $703b: $3f
	ld b, l                                          ; $703c: $45
	ld a, a                                          ; $703d: $7f
	rst AddAOntoHL                                          ; $703e: $ef
	cp a                                             ; $703f: $bf
	push af                                          ; $7040: $f5
	sbc a                                            ; $7041: $9f
	ld [hl], l                                       ; $7042: $75
	ld a, a                                          ; $7043: $7f
	ld [de], a                                       ; $7044: $12
	db $dd                                           ; $7045: $dd
	ccf                                              ; $7046: $3f
	sub h                                            ; $7047: $94
	add hl, hl                                       ; $7048: $29
	ccf                                              ; $7049: $3f
	ld a, $3b                                        ; $704a: $3e $3b
	ld a, [hl+]                                      ; $704c: $2a
	ld a, c                                          ; $704d: $79
	ld a, c                                          ; $704e: $79
	adc d                                            ; $704f: $8a
	ei                                               ; $7050: $fb
	rst $38                                          ; $7051: $ff
	rst $38                                          ; $7052: $ff
	cp $9e                                           ; $7053: $fe $9e
	add b                                            ; $7055: $80
	ld a, e                                          ; $7056: $7b
	cp l                                             ; $7057: $bd
	call c, $fd80                                    ; $7058: $dc $80 $fd
	ld l, a                                          ; $705b: $6f
	ld a, [$e0df]                                    ; $705c: $fa $df $e0
	sbc d                                            ; $705f: $9a
	and b                                            ; $7060: $a0
	ldh [rAUD4LEN], a                                ; $7061: $e0 $20
	ldh [rLCDC], a                                   ; $7063: $e0 $40
	ld [hl], e                                       ; $7065: $73
	ret nz                                           ; $7066: $c0

	rst $38                                          ; $7067: $ff
	rst SubAFromDE                                          ; $7068: $df
	rlca                                             ; $7069: $07
	add b                                            ; $706a: $80
	jr jr_01e_708c                                   ; $706b: $18 $1f

	jr nz, @+$41                                     ; $706d: $20 $3f

	ld b, d                                          ; $706f: $42
	ld a, a                                          ; $7070: $7f
	and d                                            ; $7071: $a2
	rst $38                                          ; $7072: $ff
	ld b, d                                          ; $7073: $42
	ld a, a                                          ; $7074: $7f
	ld l, $35                                        ; $7075: $2e $35
	inc hl                                           ; $7077: $23
	inc a                                            ; $7078: $3c
	ld e, h                                          ; $7079: $5c
	ld l, a                                          ; $707a: $6f
	ld e, b                                          ; $707b: $58
	ld a, a                                          ; $707c: $7f
	ld e, l                                          ; $707d: $5d
	ld l, [hl]                                       ; $707e: $6e
	ld h, e                                          ; $707f: $63
	ld a, h                                          ; $7080: $7c
	ld e, a                                          ; $7081: $5f
	ld a, c                                          ; $7082: $79
	rrca                                             ; $7083: $0f
	inc [hl]                                         ; $7084: $34
	inc sp                                           ; $7085: $33
	cpl                                              ; $7086: $2f
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	ld a, b                                          ; $7089: $78
	sbc l                                            ; $708a: $9d
	ld a, b                                          ; $708b: $78

jr_01e_708c:
	add h                                            ; $708c: $84
	ld a, e                                          ; $708d: $7b
	ld b, $9c                                        ; $708e: $06 $9c
	ld [de], a                                       ; $7090: $12
	cp $09                                           ; $7091: $fe $09
	ld a, d                                          ; $7093: $7a
	ldh [c], a                                       ; $7094: $e2
	add d                                            ; $7095: $82
	push af                                          ; $7096: $f5
	rst SubAFromDE                                          ; $7097: $df
	add hl, bc                                       ; $7098: $09
	rst $38                                          ; $7099: $ff
	ld [hl], c                                       ; $709a: $71
	rst AddAOntoHL                                          ; $709b: $ef
	ld d, l                                          ; $709c: $55
	rst $38                                          ; $709d: $ff
	ld [hl], l                                       ; $709e: $75
	rst AddAOntoHL                                          ; $709f: $ef
	adc l                                            ; $70a0: $8d
	ld [hl], a                                       ; $70a1: $77
	ld sp, hl                                        ; $70a2: $f9
	adc a                                            ; $70a3: $8f
	ld a, [$e416]                                    ; $70a4: $fa $16 $e4
	ld hl, sp+$02                                    ; $70a7: $f8 $02
	rlca                                             ; $70a9: $07
	dec bc                                           ; $70aa: $0b
	rrca                                             ; $70ab: $0f
	dec bc                                           ; $70ac: $0b
	ld c, $0b                                        ; $70ad: $0e $0b
	rrca                                             ; $70af: $0f
	ld b, $07                                        ; $70b0: $06 $07
	ld [bc], a                                       ; $70b2: $02
	ld a, e                                          ; $70b3: $7b
	cp $7f                                           ; $70b4: $fe $7f
	ld a, [$03de]                                    ; $70b6: $fa $de $03
	ld a, [hl]                                       ; $70b9: $7e
	db $ed                                           ; $70ba: $ed
	sbc d                                            ; $70bb: $9a
	inc bc                                           ; $70bc: $03
	rlca                                             ; $70bd: $07
	inc b                                            ; $70be: $04
	ld [$770f], sp                                   ; $70bf: $08 $0f $77
	ld b, d                                          ; $70c2: $42
	rst $38                                          ; $70c3: $ff
	sub h                                            ; $70c4: $94
	inc l                                            ; $70c5: $2c
	db $fc                                           ; $70c6: $fc
	call nz, Call_01e_507c                           ; $70c7: $c4 $7c $50
	cp h                                             ; $70ca: $bc
	db $f4                                           ; $70cb: $f4
	db $fc                                           ; $70cc: $fc
	cp b                                             ; $70cd: $b8
	ld hl, sp-$58                                    ; $70ce: $f8 $a8
	ld a, e                                          ; $70d0: $7b
	cp $9b                                           ; $70d1: $fe $9b
	sbc b                                            ; $70d3: $98
	ld hl, sp-$10                                    ; $70d4: $f8 $f0
	ldh a, [$7b]                                     ; $70d6: $f0 $7b
	add e                                            ; $70d8: $83
	sub [hl]                                         ; $70d9: $96
	ldh [$f0], a                                     ; $70da: $e0 $f0
	sub b                                            ; $70dc: $90
	sbc b                                            ; $70dd: $98
	ld hl, sp-$78                                    ; $70de: $f8 $88
	ld hl, sp-$04                                    ; $70e0: $f8 $fc
	db $fc                                           ; $70e2: $fc

jr_01e_70e3:
	ld sp, hl                                        ; $70e3: $f9
	ld l, a                                          ; $70e4: $6f
	db $10                                           ; $70e5: $10
	ld a, a                                          ; $70e6: $7f
	ld a, d                                          ; $70e7: $7a
	ld h, a                                          ; $70e8: $67
	cp $96                                           ; $70e9: $fe $96
	ld b, b                                          ; $70eb: $40
	ld a, a                                          ; $70ec: $7f
	ld c, b                                          ; $70ed: $48
	ld a, a                                          ; $70ee: $7f
	ld d, b                                          ; $70ef: $50
	ld a, a                                          ; $70f0: $7f
	ld d, h                                          ; $70f1: $54
	ld a, a                                          ; $70f2: $7f
	ld a, [hl-]                                      ; $70f3: $3a
	ld a, e                                          ; $70f4: $7b
	add b                                            ; $70f5: $80
	db $fd                                           ; $70f6: $fd
	rst SubAFromDE                                          ; $70f7: $df
	ld [hl], b                                       ; $70f8: $70
	ld a, a                                          ; $70f9: $7f
	jp nc, $806e                                     ; $70fa: $d2 $6e $80

	sbc l                                            ; $70fd: $9d
	ld bc, $6fff                                     ; $70fe: $01 $ff $6f
	cp $96                                           ; $7101: $fe $96
	add hl, bc                                       ; $7103: $09
	rst FarCall                                          ; $7104: $f7
	add hl, hl                                       ; $7105: $29
	rst FarCall                                          ; $7106: $f7
	dec l                                            ; $7107: $2d
	ei                                               ; $7108: $fb
	sbc d                                            ; $7109: $9a
	db $fc                                           ; $710a: $fc
	inc b                                            ; $710b: $04
	ld l, a                                          ; $710c: $6f
	add b                                            ; $710d: $80
	ld a, [hl]                                       ; $710e: $7e
	cp e                                             ; $710f: $bb
	ld [hl], e                                       ; $7110: $73
	add b                                            ; $7111: $80
	ld a, a                                          ; $7112: $7f
	add l                                            ; $7113: $85
	ld a, e                                          ; $7114: $7b
	add e                                            ; $7115: $83
	ld d, e                                          ; $7116: $53
	add b                                            ; $7117: $80
	sub [hl]                                         ; $7118: $96
	inc e                                            ; $7119: $1c
	db $fc                                           ; $711a: $fc
	ld h, h                                          ; $711b: $64
	db $fc                                           ; $711c: $fc
	ret nc                                           ; $711d: $d0

	cp h                                             ; $711e: $bc
	ld [hl], h                                       ; $711f: $74
	cp h                                             ; $7120: $bc
	ld hl, sp+$73                                    ; $7121: $f8 $73
	add b                                            ; $7123: $80
	sbc l                                            ; $7124: $9d
	sub b                                            ; $7125: $90
	ldh a, [$7b]                                     ; $7126: $f0 $7b
	add e                                            ; $7128: $83
	ld b, e                                          ; $7129: $43
	add b                                            ; $712a: $80
	rst SubAFromDE                                          ; $712b: $df
	inc c                                            ; $712c: $0c
	adc c                                            ; $712d: $89
	inc de                                           ; $712e: $13
	rra                                              ; $712f: $1f
	ld hl, $2d3f                                     ; $7130: $21 $3f $2d
	ccf                                              ; $7133: $3f
	daa                                              ; $7134: $27
	inc [hl]                                         ; $7135: $34
	rla                                              ; $7136: $17
	inc e                                            ; $7137: $1c
	ld c, $09                                        ; $7138: $0e $09
	ld [de], a                                       ; $713a: $12
	rra                                              ; $713b: $1f
	nop                                              ; $713c: $00
	rra                                              ; $713d: $1f
	ld a, [bc]                                       ; $713e: $0a
	rrca                                             ; $713f: $0f
	ld [bc], a                                       ; $7140: $02
	rlca                                             ; $7141: $07
	dec b                                            ; $7142: $05
	dec b                                            ; $7143: $05
	rst FarCall                                          ; $7144: $f7
	rst SubAFromDE                                          ; $7145: $df
	ld [hl], a                                       ; $7146: $77
	sbc d                                            ; $7147: $9a
	ret z                                            ; $7148: $c8

	rst $38                                          ; $7149: $ff
	add b                                            ; $714a: $80
	rst $38                                          ; $714b: $ff
	nop                                              ; $714c: $00
	ld d, e                                          ; $714d: $53
	cp $9a                                           ; $714e: $fe $9a
	jp nz, $e27f                                     ; $7150: $c2 $7f $e2

	cp a                                             ; $7153: $bf
	ld l, c                                          ; $7154: $69
	ld a, d                                          ; $7155: $7a
	ld e, $ff                                        ; $7156: $1e $ff
	rst SubAFromDE                                          ; $7158: $df
	jr c, jr_01e_70e3                                ; $7159: $38 $88

	ld h, h                                          ; $715b: $64
	ld a, h                                          ; $715c: $7c
	add d                                            ; $715d: $82
	cp $b2                                           ; $715e: $fe $b2
	cp $e2                                           ; $7160: $fe $e2
	ld l, $e4                                        ; $7162: $2e $e4
	inc a                                            ; $7164: $3c
	ld a, b                                          ; $7165: $78
	sbc b                                            ; $7166: $98
	inc c                                            ; $7167: $0c
	db $fc                                           ; $7168: $fc
	inc b                                            ; $7169: $04
	db $fc                                           ; $716a: $fc
	db $10                                           ; $716b: $10
	db $fc                                           ; $716c: $fc
	ld [$a0f8], sp                                   ; $716d: $08 $f8 $a0
	ld a, b                                          ; $7170: $78
	add b                                            ; $7171: $80
	ld a, d                                          ; $7172: $7a
	ld d, b                                          ; $7173: $50
	rst SubAFromDE                                          ; $7174: $df
	ld c, $7e                                        ; $7175: $0e $7e
	ld h, b                                          ; $7177: $60
	adc c                                            ; $7178: $89
	ld h, $3f                                        ; $7179: $26 $3f
	dec hl                                           ; $717b: $2b
	jr c, jr_01e_71a9                                ; $717c: $38 $2b

	add hl, sp                                       ; $717e: $39
	ld h, $3f                                        ; $717f: $26 $3f
	inc d                                            ; $7181: $14
	rra                                              ; $7182: $1f
	inc c                                            ; $7183: $0c
	rrca                                             ; $7184: $0f
	inc c                                            ; $7185: $0c
	rrca                                             ; $7186: $0f
	add hl, bc                                       ; $7187: $09
	rrca                                             ; $7188: $0f
	rla                                              ; $7189: $17
	rra                                              ; $718a: $1f
	dec bc                                           ; $718b: $0b
	ld c, $01                                        ; $718c: $0e $01
	inc bc                                           ; $718e: $03
	ld a, [$049a]                                    ; $718f: $fa $9a $04
	or $fe                                           ; $7192: $f6 $fe
	ret                                              ; $7194: $c9


	ld a, a                                          ; $7195: $7f
	ld l, a                                          ; $7196: $6f
	and h                                            ; $7197: $a4
	sbc [hl]                                         ; $7198: $9e
	ld d, d                                          ; $7199: $52
	ld a, e                                          ; $719a: $7b
	cp $97                                           ; $719b: $fe $97
	db $db                                           ; $719d: $db
	xor l                                            ; $719e: $ad
	rst $38                                          ; $719f: $ff
	ld h, [hl]                                       ; $71a0: $66
	db $db                                           ; $71a1: $db
	rst SubAFromBC                                          ; $71a2: $e7
	rst $38                                          ; $71a3: $ff
	ld h, [hl]                                       ; $71a4: $66
	ld a, e                                          ; $71a5: $7b
	cp $80                                           ; $71a6: $fe $80
	sbc b                                            ; $71a8: $98

jr_01e_71a9:
	ld a, a                                          ; $71a9: $7f
	ld e, c                                          ; $71aa: $59
	ld a, $3e                                        ; $71ab: $3e $3e
	inc e                                            ; $71ad: $1c
	inc e                                            ; $71ae: $1c
	ldh [c], a                                       ; $71af: $e2
	ld a, $d9                                        ; $71b0: $3e $d9
	cp a                                             ; $71b2: $bf
	ld [hl], l                                       ; $71b3: $75
	rst JumpTable                                          ; $71b4: $c7
	dec [hl]                                         ; $71b5: $35
	rst SubAFromBC                                          ; $71b6: $e7
	add hl, sp                                       ; $71b7: $39
	rst $38                                          ; $71b8: $ff
	ld [de], a                                       ; $71b9: $12
	cp $4c                                           ; $71ba: $fe $4c
	db $fc                                           ; $71bc: $fc
	inc h                                            ; $71bd: $24
	db $fc                                           ; $71be: $fc
	xor b                                            ; $71bf: $a8
	db $fc                                           ; $71c0: $fc
	and b                                            ; $71c1: $a0
	ldh a, [$d0]                                     ; $71c2: $f0 $d0
	ld [hl], b                                       ; $71c4: $70
	ret nz                                           ; $71c5: $c0

	ld h, b                                          ; $71c6: $60
	ld l, [hl]                                       ; $71c7: $6e
	inc [hl]                                         ; $71c8: $34
	inc bc                                           ; $71c9: $03
	and b                                            ; $71ca: $a0
	rla                                              ; $71cb: $17
	and b                                            ; $71cc: $a0
	sbc [hl]                                         ; $71cd: $9e
	ld b, c                                          ; $71ce: $41
	inc bc                                           ; $71cf: $03
	and b                                            ; $71d0: $a0
	cp $df                                           ; $71d1: $fe $df
	ld bc, $059b                                     ; $71d3: $01 $9b $05
	ld b, $17                                        ; $71d6: $06 $17
	jr jr_01e_7254                                   ; $71d8: $18 $7a

	ld l, e                                          ; $71da: $6b
	sub [hl]                                         ; $71db: $96
	ccf                                              ; $71dc: $3f
	db $10                                           ; $71dd: $10
	rra                                              ; $71de: $1f
	rra                                              ; $71df: $1f
	rla                                              ; $71e0: $17
	inc e                                            ; $71e1: $1c
	rla                                              ; $71e2: $17
	dec e                                            ; $71e3: $1d
	ld d, $6f                                        ; $71e4: $16 $6f
	cp $7f                                           ; $71e6: $fe $7f
	db $f4                                           ; $71e8: $f4
	ld a, h                                          ; $71e9: $7c
	ldh [$9b], a                                     ; $71ea: $e0 $9b
	rrca                                             ; $71ec: $0f
	rra                                              ; $71ed: $1f
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	sbc $ff                                          ; $71f0: $de $ff
	ld l, [hl]                                       ; $71f2: $6e
	rst AddAOntoHL                                          ; $71f3: $ef
	ld [hl], a                                       ; $71f4: $77
	db $fd                                           ; $71f5: $fd
	sbc d                                            ; $71f6: $9a
	cp $03                                           ; $71f7: $fe $03
	cp $ff                                           ; $71f9: $fe $ff
	ld [bc], a                                       ; $71fb: $02
	ld l, e                                          ; $71fc: $6b
	cp $7f                                           ; $71fd: $fe $7f
	or $77                                           ; $71ff: $f6 $77
	db $ec                                           ; $7201: $ec
	ld c, a                                          ; $7202: $4f
	ldh [$9a], a                                     ; $7203: $e0 $9a
	ld a, a                                          ; $7205: $7f
	ret nz                                           ; $7206: $c0

	ld a, a                                          ; $7207: $7f
	rst $38                                          ; $7208: $ff
	ld b, b                                          ; $7209: $40
	ld l, e                                          ; $720a: $6b
	cp $7f                                           ; $720b: $fe $7f
	or $73                                           ; $720d: $f6 $73
	ldh [$df], a                                     ; $720f: $e0 $df
	add b                                            ; $7211: $80
	sbc e                                            ; $7212: $9b
	and b                                            ; $7213: $a0
	ld h, b                                          ; $7214: $60
	add sp, $18                                      ; $7215: $e8 $18
	ld a, d                                          ; $7217: $7a
	bit 7, d                                         ; $7218: $cb $7a
	call z, $f899                                    ; $721a: $cc $99 $f8
	add sp, $38                                      ; $721d: $e8 $38
	add sp, -$48                                     ; $721f: $e8 $b8
	ld l, b                                          ; $7221: $68
	ld l, a                                          ; $7222: $6f
	cp $7f                                           ; $7223: $fe $7f
	db $f4                                           ; $7225: $f4

jr_01e_7226:
	ld a, h                                          ; $7226: $7c

jr_01e_7227:
	adc e                                            ; $7227: $8b
	sbc l                                            ; $7228: $9d
	ldh a, [$f8]                                     ; $7229: $f0 $f8

jr_01e_722b:
	ld sp, hl                                        ; $722b: $f9
	daa                                              ; $722c: $27
	jr jr_01e_7227                                   ; $722d: $18 $f8

	dec hl                                           ; $722f: $2b
	jr jr_01e_722b                                   ; $7230: $18 $f9

	daa                                              ; $7232: $27
	jr jr_01e_7226                                   ; $7233: $18 $f1

	ld b, a                                          ; $7235: $47
	sbc b                                            ; $7236: $98
	ldh a, [rWX]                                     ; $7237: $f0 $4b
	sbc b                                            ; $7239: $98
	pop af                                           ; $723a: $f1
	ld b, a                                          ; $723b: $47
	sbc b                                            ; $723c: $98
	jp hl                                            ; $723d: $e9


	ld h, a                                          ; $723e: $67
	sbc b                                            ; $723f: $98
	add sp, $67                                      ; $7240: $e8 $67
	sbc b                                            ; $7242: $98
	ld [$9867], a                                    ; $7243: $ea $67 $98
	sbc e                                            ; $7246: $9b
	ld h, e                                          ; $7247: $63
	ld a, a                                          ; $7248: $7f
	sbc l                                            ; $7249: $9d
	rst FarCall                                          ; $724a: $f7
	push hl                                          ; $724b: $e5
	rst JumpTable                                          ; $724c: $c7
	ld bc, $dffd                                     ; $724d: $01 $fd $df
	rlca                                             ; $7250: $07
	add l                                            ; $7251: $85
	jr jr_01e_7273                                   ; $7252: $18 $1f

jr_01e_7254:
	daa                                              ; $7254: $27
	ccf                                              ; $7255: $3f
	ld e, c                                          ; $7256: $59
	ld a, a                                          ; $7257: $7f
	jr z, jr_01e_7299                                ; $7258: $28 $3f

	ld c, h                                          ; $725a: $4c
	ld a, a                                          ; $725b: $7f
	inc e                                            ; $725c: $1c
	ccf                                              ; $725d: $3f
	ld e, $13                                        ; $725e: $1e $13
	rlca                                             ; $7260: $07
	dec de                                           ; $7261: $1b
	db $10                                           ; $7262: $10
	rra                                              ; $7263: $1f
	scf                                              ; $7264: $37
	ld l, $37                                        ; $7265: $2e $37
	inc l                                            ; $7267: $2c
	rra                                              ; $7268: $1f
	db $10                                           ; $7269: $10
	rrca                                             ; $726a: $0f
	ld [$dffd], sp                                   ; $726b: $08 $fd $df
	ldh [$80], a                                     ; $726e: $e0 $80
	ld [$e4f8], sp                                   ; $7270: $08 $f8 $e4

jr_01e_7273:
	db $fc                                           ; $7273: $fc
	inc a                                            ; $7274: $3c
	db $fc                                           ; $7275: $fc
	sub [hl]                                         ; $7276: $96
	cp $9b                                           ; $7277: $fe $9b
	rst $38                                          ; $7279: $ff
	ld c, c                                          ; $727a: $49
	rst $38                                          ; $727b: $ff
	dec h                                            ; $727c: $25
	rst $38                                          ; $727d: $ff
	sbc c                                            ; $727e: $99
	rst $38                                          ; $727f: $ff
	ld [hl-], a                                      ; $7280: $32
	cp $72                                           ; $7281: $fe $72
	sbc $f4                                          ; $7283: $de $f4
	inc e                                            ; $7285: $1c
	add sp, $38                                      ; $7286: $e8 $38
	ldh a, [rSVBK]                                   ; $7288: $f0 $70
	rlca                                             ; $728a: $07
	rlca                                             ; $728b: $07
	ld [bc], a                                       ; $728c: $02
	inc bc                                           ; $728d: $03
	ld [bc], a                                       ; $728e: $02

jr_01e_728f:
	add b                                            ; $728f: $80
	inc bc                                           ; $7290: $03
	inc b                                            ; $7291: $04
	rlca                                             ; $7292: $07
	inc a                                            ; $7293: $3c
	ccf                                              ; $7294: $3f
	ld [hl], h                                       ; $7295: $74
	ld l, a                                          ; $7296: $6f
	ld a, h                                          ; $7297: $7c
	ld c, a                                          ; $7298: $4f

jr_01e_7299:
	ld [hl-], a                                      ; $7299: $32
	inc sp                                           ; $729a: $33
	dec b                                            ; $729b: $05
	rlca                                             ; $729c: $07
	inc c                                            ; $729d: $0c
	rrca                                             ; $729e: $0f
	ld a, b                                          ; $729f: $78
	ld a, a                                          ; $72a0: $7f
	sub c                                            ; $72a1: $91
	rst $38                                          ; $72a2: $ff
	ld c, d                                          ; $72a3: $4a
	ld a, [hl]                                       ; $72a4: $7e
	inc h                                            ; $72a5: $24
	inc a                                            ; $72a6: $3c
	rst $38                                          ; $72a7: $ff
	rst $38                                          ; $72a8: $ff
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	ret nz                                           ; $72ab: $c0

	ret nz                                           ; $72ac: $c0

	jr nz, jr_01e_728f                               ; $72ad: $20 $e0

	add a                                            ; $72af: $87
	db $10                                           ; $72b0: $10
	ldh a, [rOBP0]                                   ; $72b1: $f0 $48
	ld hl, sp+$28                                    ; $72b3: $f8 $28
	ld hl, sp+$1c                                    ; $72b5: $f8 $1c
	db $f4                                           ; $72b7: $f4
	inc a                                            ; $72b8: $3c
	db $e4                                           ; $72b9: $e4
	inc a                                            ; $72ba: $3c
	db $f4                                           ; $72bb: $f4
	ret z                                            ; $72bc: $c8

	ret z                                            ; $72bd: $c8

	ldh [$e0], a                                     ; $72be: $e0 $e0
	sbc b                                            ; $72c0: $98
	ld hl, sp+$54                                    ; $72c1: $f8 $54
	ld a, h                                          ; $72c3: $7c
	jr c, @+$3a                                      ; $72c4: $38 $38

	ld [hl], b                                       ; $72c6: $70
	ld [hl], b                                       ; $72c7: $70
	ld [hl], a                                       ; $72c8: $77
	ldh [rPCM34], a                                  ; $72c9: $e0 $77
	ret nz                                           ; $72cb: $c0

	rst SubAFromDE                                          ; $72cc: $df
	inc bc                                           ; $72cd: $03
	ld a, a                                          ; $72ce: $7f
	jp z, $fe77                                      ; $72cf: $ca $77 $fe

	sbc [hl]                                         ; $72d2: $9e
	ld b, $dd                                        ; $72d3: $06 $dd
	rlca                                             ; $72d5: $07
	sbc [hl]                                         ; $72d6: $9e
	inc b                                            ; $72d7: $04
	ld a, e                                          ; $72d8: $7b
	or c                                             ; $72d9: $b1
	ld a, e                                          ; $72da: $7b
	db $fd                                           ; $72db: $fd
	rst SubAFromDE                                          ; $72dc: $df
	ld bc, $07df                                     ; $72dd: $01 $df $07
	sbc b                                            ; $72e0: $98
	ld [$7f0f], sp                                   ; $72e1: $08 $0f $7f
	ld a, a                                          ; $72e4: $7f
	ret nz                                           ; $72e5: $c0

	ret nz                                           ; $72e6: $c0

	ld b, b                                          ; $72e7: $40
	ld a, e                                          ; $72e8: $7b
	cp [hl]                                          ; $72e9: $be
	ld l, a                                          ; $72ea: $6f
	cp $9b                                           ; $72eb: $fe $9b
	ld d, b                                          ; $72ed: $50
	ldh a, [$a0]                                     ; $72ee: $f0 $a0
	ldh [$7b], a                                     ; $72f0: $e0 $7b
	pop af                                           ; $72f2: $f1
	sbc l                                            ; $72f3: $9d
	ld b, b                                          ; $72f4: $40
	and b                                            ; $72f5: $a0
	ld [hl], e                                       ; $72f6: $73
	ldh a, [c]                                       ; $72f7: $f2
	sbc [hl]                                         ; $72f8: $9e
	ld h, b                                          ; $72f9: $60
	ld a, e                                          ; $72fa: $7b
	db $fc                                           ; $72fb: $fc
	rst SubAFromDE                                          ; $72fc: $df
	cp $67                                           ; $72fd: $fe $67
	add b                                            ; $72ff: $80
	ld a, a                                          ; $7300: $7f
	cp $8b                                           ; $7301: $fe $8b
	inc e                                            ; $7303: $1c
	rla                                              ; $7304: $17
	dec a                                            ; $7305: $3d
	inc hl                                           ; $7306: $23
	ccf                                              ; $7307: $3f
	daa                                              ; $7308: $27
	ld e, $1f                                        ; $7309: $1e $1f
	ld [bc], a                                       ; $730b: $02
	inc bc                                           ; $730c: $03
	dec e                                            ; $730d: $1d
	rra                                              ; $730e: $1f
	dec h                                            ; $730f: $25
	ccf                                              ; $7310: $3f
	inc sp                                           ; $7311: $33
	ccf                                              ; $7312: $3f
	inc c                                            ; $7313: $0c
	inc c                                            ; $7314: $0c
	ld a, a                                          ; $7315: $7f
	ld a, a                                          ; $7316: $7f
	ld [hl], a                                       ; $7317: $77
	add b                                            ; $7318: $80
	rst SubAFromDE                                          ; $7319: $df
	ldh [$7f], a                                     ; $731a: $e0 $7f
	ret z                                            ; $731c: $c8

	sub l                                            ; $731d: $95
	ret z                                            ; $731e: $c8

	ld hl, sp-$5c                                    ; $731f: $f8 $a4
	db $fc                                           ; $7321: $fc
	xor h                                            ; $7322: $ac
	db $f4                                           ; $7323: $f4
	inc e                                            ; $7324: $1c
	db $f4                                           ; $7325: $f4
	jr c, @-$06                                      ; $7326: $38 $f8

	ld [hl], a                                       ; $7328: $77
	or d                                             ; $7329: $b2
	sub a                                            ; $732a: $97
	inc d                                            ; $732b: $14
	db $fc                                           ; $732c: $fc
	jp nc, $26fe                                     ; $732d: $d2 $fe $26

	ld a, $4c                                        ; $7330: $3e $4c
	ld a, h                                          ; $7332: $7c
	ld [hl], a                                       ; $7333: $77
	add b                                            ; $7334: $80
	ld h, a                                          ; $7335: $67
	nop                                              ; $7336: $00
	add a                                            ; $7337: $87
	jr nz, jr_01e_7379                               ; $7338: $20 $3f

	ld [hl+], a                                      ; $733a: $22
	ccf                                              ; $733b: $3f
	ld d, a                                          ; $733c: $57
	ld a, a                                          ; $733d: $7f
	ld h, a                                          ; $733e: $67
	ld a, a                                          ; $733f: $7f
	ld l, a                                          ; $7340: $6f
	ld a, h                                          ; $7341: $7c
	ld l, b                                          ; $7342: $68
	ld a, a                                          ; $7343: $7f
	ld a, $3f                                        ; $7344: $3e $3f
	ld h, $3d                                        ; $7346: $26 $3d
	ld [hl], $2f                                     ; $7348: $36 $2f
	add hl, de                                       ; $734a: $19
	ld d, $0f                                        ; $734b: $16 $0f
	add hl, bc                                       ; $734d: $09
	rlca                                             ; $734e: $07
	inc b                                            ; $734f: $04
	db $fd                                           ; $7350: $fd
	rst SubAFromDE                                          ; $7351: $df
	ld [hl], b                                       ; $7352: $70
	sbc h                                            ; $7353: $9c
	adc b                                            ; $7354: $88
	ld hl, sp-$7c                                    ; $7355: $f8 $84
	ld a, e                                          ; $7357: $7b
	call z, Call_01e_4a8a                            ; $7358: $cc $8a $4a
	cp $ea                                           ; $735b: $fe $ea
	cp $f5                                           ; $735d: $fe $f5
	rra                                              ; $735f: $1f
	adc a                                            ; $7360: $8f
	ld a, a                                          ; $7361: $7f
	ld [hl-], a                                      ; $7362: $32
	cp $36                                           ; $7363: $fe $36
	jp c, Jump_01e_7ab6                              ; $7365: $da $b6 $7a

	call z, $f834                                    ; $7368: $cc $34 $f8
	ret z                                            ; $736b: $c8

	ldh a, [rAUD1SWEEP]                              ; $736c: $f0 $10
	inc bc                                           ; $736e: $03
	ld [hl], e                                       ; $736f: $73
	add h                                            ; $7370: $84
	ld a, a                                          ; $7371: $7f
	ld d, [hl]                                       ; $7372: $56
	ld [hl], a                                       ; $7373: $77
	cp $9a                                           ; $7374: $fe $9a
	ld c, $0f                                        ; $7376: $0e $0f
	rrca                                             ; $7378: $0f

jr_01e_7379:
	dec bc                                           ; $7379: $0b
	ld b, $73                                        ; $737a: $06 $73
	ld [hl], b                                       ; $737c: $70
	ld [hl], a                                       ; $737d: $77
	ld [$4277], a                                    ; $737e: $ea $77 $42
	rst $38                                          ; $7381: $ff
	rst SubAFromDE                                          ; $7382: $df
	ldh a, [$7e]                                     ; $7383: $f0 $7e
	call nz, $c27f                                   ; $7385: $c4 $7f $c2
	sub c                                            ; $7388: $91
	inc b                                            ; $7389: $04
	db $fc                                           ; $738a: $fc
	sub h                                            ; $738b: $94
	db $fc                                           ; $738c: $fc
	inc d                                            ; $738d: $14
	db $fc                                           ; $738e: $fc
	sbc h                                            ; $738f: $9c
	db $fc                                           ; $7390: $fc
	ld a, h                                          ; $7391: $7c
	db $f4                                           ; $7392: $f4
	sbc b                                            ; $7393: $98
	ld hl, sp-$70                                    ; $7394: $f8 $90
	ldh a, [rPCM34]                                  ; $7396: $f0 $77
	cp $9e                                           ; $7398: $fe $9e
	add sp, $7b                                      ; $739a: $e8 $7b
	xor [hl]                                         ; $739c: $ae
	ld h, a                                          ; $739d: $67
	add b                                            ; $739e: $80
	ei                                               ; $739f: $fb
	rst SubAFromDE                                          ; $73a0: $df
	inc bc                                           ; $73a1: $03
	ld a, [hl]                                       ; $73a2: $7e
	add $7e                                          ; $73a3: $c6 $7e
	adc b                                            ; $73a5: $88
	sbc h                                            ; $73a6: $9c
	ld h, $3f                                        ; $73a7: $26 $3f
	add hl, hl                                       ; $73a9: $29
	ld a, e                                          ; $73aa: $7b
	ld a, b                                          ; $73ab: $78
	sub l                                            ; $73ac: $95
	ld c, c                                          ; $73ad: $49
	ld a, a                                          ; $73ae: $7f
	ld [hl], d                                       ; $73af: $72
	ld a, a                                          ; $73b0: $7f
	ld d, [hl]                                       ; $73b1: $56
	ld a, a                                          ; $73b2: $7f
	ld b, a                                          ; $73b3: $47
	ld a, a                                          ; $73b4: $7f
	scf                                              ; $73b5: $37
	inc a                                            ; $73b6: $3c
	rst FarCall                                          ; $73b7: $f7
	rst SubAFromDE                                          ; $73b8: $df
	or b                                             ; $73b9: $b0
	ld a, [hl]                                       ; $73ba: $7e
	cp d                                             ; $73bb: $ba
	sbc b                                            ; $73bc: $98
	call z, $a2fc                                    ; $73bd: $cc $fc $a2
	cp $52                                           ; $73c0: $fe $52
	cp $29                                           ; $73c2: $fe $29
	ld a, d                                          ; $73c4: $7a
	ld a, h                                          ; $73c5: $7c
	sub d                                            ; $73c6: $92
	sub l                                            ; $73c7: $95
	rst $38                                          ; $73c8: $ff
	push de                                          ; $73c9: $d5
	rst $38                                          ; $73ca: $ff
	jp z, $eefe                                      ; $73cb: $ca $fe $ee

	ld a, [hl-]                                      ; $73ce: $3a
	rra                                              ; $73cf: $1f
	jr jr_01e_73d9                                   ; $73d0: $18 $07

	inc b                                            ; $73d2: $04
	dec bc                                           ; $73d3: $0b
	ld [hl], e                                       ; $73d4: $73
	add d                                            ; $73d5: $82
	ld a, a                                          ; $73d6: $7f
	adc [hl]                                         ; $73d7: $8e
	sbc l                                            ; $73d8: $9d

jr_01e_73d9:
	inc c                                            ; $73d9: $0c
	dec bc                                           ; $73da: $0b
	ld l, [hl]                                       ; $73db: $6e
	ldh a, [c]                                       ; $73dc: $f2
	ld d, a                                          ; $73dd: $57
	add b                                            ; $73de: $80
	sbc b                                            ; $73df: $98
	ld hl, sp+$08                                    ; $73e0: $f8 $08
	db $f4                                           ; $73e2: $f4
	inc e                                            ; $73e3: $1c
	db $e4                                           ; $73e4: $e4
	db $fc                                           ; $73e5: $fc
	add h                                            ; $73e6: $84
	ld a, e                                          ; $73e7: $7b
	add d                                            ; $73e8: $82
	ld a, a                                          ; $73e9: $7f
	add [hl]                                         ; $73ea: $86
	ld a, a                                          ; $73eb: $7f
	nop                                              ; $73ec: $00
	rst SubAFromDE                                          ; $73ed: $df
	ld hl, sp+$6f                                    ; $73ee: $f8 $6f
	add d                                            ; $73f0: $82
	ld e, a                                          ; $73f1: $5f
	add b                                            ; $73f2: $80
	sbc b                                            ; $73f3: $98
	rra                                              ; $73f4: $1f
	dec de                                           ; $73f5: $1b
	rrca                                             ; $73f6: $0f
	inc c                                            ; $73f7: $0c
	dec de                                           ; $73f8: $1b
	rra                                              ; $73f9: $1f
	db $10                                           ; $73fa: $10
	ld a, e                                          ; $73fb: $7b
	cp $7f                                           ; $73fc: $fe $7f
	add d                                            ; $73fe: $82
	ld a, e                                          ; $73ff: $7b
	ld a, l                                          ; $7400: $7d
	ld [hl], e                                       ; $7401: $73
	jp nz, $c053                                     ; $7402: $c2 $53 $c0

	sbc h                                            ; $7405: $9c
	adc b                                            ; $7406: $88
	db $f4                                           ; $7407: $f4

jr_01e_7408:
	sbc h                                            ; $7408: $9c
	ld l, a                                          ; $7409: $6f
	ret nz                                           ; $740a: $c0

	ld a, a                                          ; $740b: $7f
	ld a, $9c                                        ; $740c: $3e $9c
	jr jr_01e_7408                                   ; $740e: $18 $f8

	db $fc                                           ; $7410: $fc
	ld b, e                                          ; $7411: $43
	ld b, b                                          ; $7412: $40
	ld e, $01                                        ; $7413: $1e $01
	db $dd                                           ; $7415: $dd
	ld b, b                                          ; $7416: $40
	add a                                            ; $7417: $87
	xor $de                                          ; $7418: $ee $de

jr_01e_741a:
	db $dd                                           ; $741a: $dd
	db $ed                                           ; $741b: $ed
	inc b                                            ; $741c: $04
	nop                                              ; $741d: $00
	ld [bc], a                                       ; $741e: $02
	ld a, [bc]                                       ; $741f: $0a
	jr z, jr_01e_744b                                ; $7420: $28 $29

	jr z, @+$2a                                      ; $7422: $28 $28

	jr c, jr_01e_745e                                ; $7424: $38 $38

	inc a                                            ; $7426: $3c
	inc a                                            ; $7427: $3c
	db $ed                                           ; $7428: $ed
	db $dd                                           ; $7429: $dd
	sbc $ee                                          ; $742a: $de $ee
	ld [$0200], sp                                   ; $742c: $08 $00 $02
	ld b, $77                                        ; $742f: $06 $77
	ldh a, [$df]                                     ; $7431: $f0 $df
	inc [hl]                                         ; $7433: $34
	rst SubAFromDE                                          ; $7434: $df
	jr c, jr_01e_748e                                ; $7435: $38 $57

	ldh [$df], a                                     ; $7437: $e0 $df
	jr nc, jr_01e_741a                               ; $7439: $30 $df

	inc sp                                           ; $743b: $33
	ld l, e                                          ; $743c: $6b
	ldh [$9e], a                                     ; $743d: $e0 $9e
	ld c, $77                                        ; $743f: $0e $77
	ldh a, [$df]                                     ; $7441: $f0 $df
	dec hl                                           ; $7443: $2b
	rst SubAFromDE                                          ; $7444: $df
	ld l, $77                                        ; $7445: $2e $77
	ldh [$9e], a                                     ; $7447: $e0 $9e
	inc c                                            ; $7449: $0c
	ld l, e                                          ; $744a: $6b

jr_01e_744b:
	ldh [$df], a                                     ; $744b: $e0 $df
	ld h, $df                                        ; $744d: $26 $df
	add hl, hl                                       ; $744f: $29
	ld d, a                                          ; $7450: $57
	ret nz                                           ; $7451: $c0

	rst SubAFromDE                                          ; $7452: $df
	ld hl, $24df                                     ; $7453: $21 $df $24
	ld d, a                                          ; $7456: $57
	ret nz                                           ; $7457: $c0

	rst SubAFromDE                                          ; $7458: $df
	inc e                                            ; $7459: $1c
	rst SubAFromDE                                          ; $745a: $df
	rra                                              ; $745b: $1f
	ld d, a                                          ; $745c: $57
	ret nz                                           ; $745d: $c0

jr_01e_745e:
	rst SubAFromDE                                          ; $745e: $df
	rla                                              ; $745f: $17
	rst SubAFromDE                                          ; $7460: $df
	dec de                                           ; $7461: $1b
	ld d, a                                          ; $7462: $57
	ret nz                                           ; $7463: $c0

	rst SubAFromDE                                          ; $7464: $df
	inc de                                           ; $7465: $13
	rst SubAFromDE                                          ; $7466: $df
	ld d, $57                                        ; $7467: $16 $57
	ret nz                                           ; $7469: $c0

	rst SubAFromDE                                          ; $746a: $df
	ld c, $df                                        ; $746b: $0e $df
	rrca                                             ; $746d: $0f
	ld d, a                                          ; $746e: $57
	ret nz                                           ; $746f: $c0

	rst SubAFromDE                                          ; $7470: $df
	rlca                                             ; $7471: $07
	rst SubAFromDE                                          ; $7472: $df
	ld b, $57                                        ; $7473: $06 $57
	ret nz                                           ; $7475: $c0

	sbc $fe                                          ; $7476: $de $fe
	sub l                                            ; $7478: $95
	nop                                              ; $7479: $00
	xor $de                                          ; $747a: $ee $de
	xor $ee                                          ; $747c: $ee $ee
	inc c                                            ; $747e: $0c
	nop                                              ; $747f: $00
	inc c                                            ; $7480: $0c
	ld d, $28                                        ; $7481: $16 $28
	ld a, e                                          ; $7483: $7b
	rst AddAOntoHL                                          ; $7484: $ef
	sbc h                                            ; $7485: $9c
	ld hl, sp+$00                                    ; $7486: $f8 $00
	ld hl, sp+$7b                                    ; $7488: $f8 $7b
	ldh a, [$7f]                                     ; $748a: $f0 $7f
	rst AddAOntoHL                                          ; $748c: $ef
	sbc e                                            ; $748d: $9b

jr_01e_748e:
	inc d                                            ; $748e: $14
	ld [de], a                                       ; $748f: $12
	db $10                                           ; $7490: $10
	ld e, $5b                                        ; $7491: $1e $5b
	ldh a, [$9a]                                     ; $7493: $f0 $9a
	sbc $1c                                          ; $7495: $de $1c
	ld a, [de]                                       ; $7497: $1a
	jr jr_01e_74bc                                   ; $7498: $18 $22

	ld l, e                                          ; $749a: $6b
	ldh a, [$9e]                                     ; $749b: $f0 $9e
	cp $7b                                           ; $749d: $fe $7b
	pop de                                           ; $749f: $d1
	sbc d                                            ; $74a0: $9a
	xor $20                                          ; $74a1: $ee $20
	ld h, $24                                        ; $74a3: $26 $24
	ld b, $7b                                        ; $74a5: $06 $7b
	ldh a, [$9a]                                     ; $74a7: $f0 $9a
	ld l, b                                          ; $74a9: $68
	ld b, $fe                                        ; $74aa: $06 $fe
	ld b, $07                                        ; $74ac: $06 $07
	ld a, e                                          ; $74ae: $7b
	ldh [$7f], a                                     ; $74af: $e0 $7f
	and b                                            ; $74b1: $a0
	sub l                                            ; $74b2: $95
	ld [bc], a                                       ; $74b3: $02
	nop                                              ; $74b4: $00
	ld a, [bc]                                       ; $74b5: $0a
	ld l, b                                          ; $74b6: $68
	ld l, b                                          ; $74b7: $68
	ld l, c                                          ; $74b8: $69
	ld l, b                                          ; $74b9: $68
	rrca                                             ; $74ba: $0f
	rrca                                             ; $74bb: $0f

jr_01e_74bc:
	rlca                                             ; $74bc: $07
	ld a, e                                          ; $74bd: $7b
	add b                                            ; $74be: $80
	ld a, a                                          ; $74bf: $7f
	sbc a                                            ; $74c0: $9f
	ld a, e                                          ; $74c1: $7b
	and b                                            ; $74c2: $a0
	sbc [hl]                                         ; $74c3: $9e
	nop                                              ; $74c4: $00
	ld [hl], a                                       ; $74c5: $77
	ldh a, [$df]                                     ; $74c6: $f0 $df
	ld c, $9d                                        ; $74c8: $0e $9d
	ld d, $13                                        ; $74ca: $16 $13
	ld a, e                                          ; $74cc: $7b
	ret nc                                           ; $74cd: $d0

	sbc e                                            ; $74ce: $9b
	db $ed                                           ; $74cf: $ed
	ld [bc], a                                       ; $74d0: $02
	ld c, $0c                                        ; $74d1: $0e $0c
	ld [hl], e                                       ; $74d3: $73
	ldh [$df], a                                     ; $74d4: $e0 $df
	dec de                                           ; $74d6: $1b
	sbc l                                            ; $74d7: $9d
	inc de                                           ; $74d8: $13
	rla                                              ; $74d9: $17
	ld a, e                                          ; $74da: $7b
	ldh [$73], a                                     ; $74db: $e0 $73
	add b                                            ; $74dd: $80
	ld [hl], a                                       ; $74de: $77
	ldh a, [$df]                                     ; $74df: $f0 $df
	rra                                              ; $74e1: $1f
	sbc l                                            ; $74e2: $9d
	rla                                              ; $74e3: $17
	inc e                                            ; $74e4: $1c
	ld [hl], a                                       ; $74e5: $77
	ret nz                                           ; $74e6: $c0

	ld [hl], a                                       ; $74e7: $77
	ld b, b                                          ; $74e8: $40
	ld [hl], a                                       ; $74e9: $77
	ldh a, [$df]                                     ; $74ea: $f0 $df
	inc h                                            ; $74ec: $24
	sbc l                                            ; $74ed: $9d
	inc e                                            ; $74ee: $1c
	ld hl, $e06b                                     ; $74ef: $21 $6b $e0
	sbc [hl]                                         ; $74f2: $9e
	ld b, $77                                        ; $74f3: $06 $77
	ldh a, [$9b]                                     ; $74f5: $f0 $9b
	add hl, hl                                       ; $74f7: $29
	ld hl, $2629                                     ; $74f8: $21 $29 $26
	ld d, a                                          ; $74fb: $57
	and b                                            ; $74fc: $a0
	rst SubAFromDE                                          ; $74fd: $df
	ld l, $9d                                        ; $74fe: $2e $9d
	ld h, $2b                                        ; $7500: $26 $2b
	ld d, a                                          ; $7502: $57
	ret nz                                           ; $7503: $c0

	rst SubAFromDE                                          ; $7504: $df
	inc sp                                           ; $7505: $33
	sbc l                                            ; $7506: $9d
	dec hl                                           ; $7507: $2b
	jr nc, jr_01e_7561                               ; $7508: $30 $57

	ret nz                                           ; $750a: $c0

	rst SubAFromDE                                          ; $750b: $df
	jr c, @-$61                                      ; $750c: $38 $9d

	jr nc, jr_01e_7544                               ; $750e: $30 $34

	ld d, a                                          ; $7510: $57
	ret nz                                           ; $7511: $c0

	rst SubAFromDE                                          ; $7512: $df
	inc a                                            ; $7513: $3c
	sbc l                                            ; $7514: $9d
	inc [hl]                                         ; $7515: $34
	ld b, c                                          ; $7516: $41
	ld [hl], e                                       ; $7517: $73
	ret nz                                           ; $7518: $c0

	ld a, a                                          ; $7519: $7f
	ldh a, [$9e]                                     ; $751a: $f0 $9e
	ld [$f077], sp                                   ; $751c: $08 $77 $f0
	sub l                                            ; $751f: $95
	ld b, c                                          ; $7520: $41
	add hl, sp                                       ; $7521: $39
	add hl, sp                                       ; $7522: $39
	ld b, b                                          ; $7523: $40
	db $dd                                           ; $7524: $dd
	db $ed                                           ; $7525: $ed
	db $dd                                           ; $7526: $dd
	xor $00                                          ; $7527: $ee $00
	ld a, [bc]                                       ; $7529: $0a
	ld l, a                                          ; $752a: $6f
	ldh [$9b], a                                     ; $752b: $e0 $9b
	ld b, b                                          ; $752d: $40
	sbc $02                                          ; $752e: $de $02
	ld l, c                                          ; $7530: $69
	ld b, b                                          ; $7531: $40
	ld bc, $40df                                     ; $7532: $01 $df $40
	adc h                                            ; $7535: $8c
	ld b, d                                          ; $7536: $42
	ld a, [hl-]                                      ; $7537: $3a
	xor $de                                          ; $7538: $ee $de
	xor $ee                                          ; $753a: $ee $ee
	jr nc, @+$2a                                     ; $753c: $30 $28

	ld [hl], $34                                     ; $753e: $36 $34
	inc l                                            ; $7540: $2c
	cpl                                              ; $7541: $2f
	ld a, [hl+]                                      ; $7542: $2a
	inc l                                            ; $7543: $2c

jr_01e_7544:
	ld b, b                                          ; $7544: $40
	jr c, jr_01e_7583                                ; $7545: $38 $3c

	inc [hl]                                         ; $7547: $34
	sbc $7b                                          ; $7548: $de $7b
	ldh a, [hDisp1_OBP0]                                     ; $754a: $f0 $93
	ld a, [hl+]                                      ; $754c: $2a
	jr z, @+$34                                      ; $754d: $28 $32

	jr nc, jr_01e_757f                               ; $754f: $30 $2e

	cpl                                              ; $7551: $2f
	inc l                                            ; $7552: $2c
	inc l                                            ; $7553: $2c
	inc a                                            ; $7554: $3c
	inc [hl]                                         ; $7555: $34
	ld a, [hl-]                                      ; $7556: $3a
	ld [hl-], a                                      ; $7557: $32
	ld l, a                                          ; $7558: $6f
	ldh a, [$7f]                                     ; $7559: $f0 $7f
	ldh [$7f], a                                     ; $755b: $e0 $7f
	ldh a, [$7f]                                     ; $755d: $f0 $7f
	ldh [$9b], a                                     ; $755f: $e0 $9b

jr_01e_7561:
	jr c, jr_01e_7593                                ; $7561: $38 $30

	inc sp                                           ; $7563: $33
	ld sp, $f07b                                     ; $7564: $31 $7b $f0
	sbc d                                            ; $7567: $9a
	sbc $2a                                          ; $7568: $de $2a
	jr z, jr_01e_759a                                ; $756a: $28 $2e

	ld a, [hl+]                                      ; $756c: $2a
	ld a, e                                          ; $756d: $7b
	ldh a, [$9a]                                     ; $756e: $f0 $9a
	ld l, $2b                                        ; $7570: $2e $2b
	add hl, hl                                       ; $7572: $29
	jr nc, jr_01e_759d                               ; $7573: $30 $28

	ld [hl], a                                       ; $7575: $77
	ret nz                                           ; $7576: $c0

	sbc [hl]                                         ; $7577: $9e
	inc l                                            ; $7578: $2c
	ld l, e                                          ; $7579: $6b
	ret nz                                           ; $757a: $c0

	sbc e                                            ; $757b: $9b
	ld l, $26                                        ; $757c: $2e $26
	add hl, hl                                       ; $757e: $29

jr_01e_757f:
	ld hl, $c057                                     ; $757f: $21 $57 $c0
	ld a, a                                          ; $7582: $7f

jr_01e_7583:
	ldh a, [c]                                       ; $7583: $f2
	sbc l                                            ; $7584: $9d
	ld h, $1e                                        ; $7585: $26 $1e
	ld d, a                                          ; $7587: $57
	ret nz                                           ; $7588: $c0

	sbc e                                            ; $7589: $9b
	inc h                                            ; $758a: $24
	inc e                                            ; $758b: $1c
	ld hl, $6f19                                     ; $758c: $21 $19 $6f
	ldh a, [$9d]                                     ; $758f: $f0 $9d
	ld l, $2c                                        ; $7591: $2e $2c

jr_01e_7593:
	ld [hl], a                                       ; $7593: $77
	ldh a, [$9b]                                     ; $7594: $f0 $9b
	rra                                              ; $7596: $1f
	rla                                              ; $7597: $17
	dec e                                            ; $7598: $1d
	dec d                                            ; $7599: $15

jr_01e_759a:
	ld d, a                                          ; $759a: $57
	ldh [$9b], a                                     ; $759b: $e0 $9b

jr_01e_759d:
	dec de                                           ; $759d: $1b
	inc de                                           ; $759e: $13
	ld d, $0e                                        ; $759f: $16 $0e
	ld d, a                                          ; $75a1: $57
	ret nz                                           ; $75a2: $c0

	ld a, a                                          ; $75a3: $7f
	ldh a, [c]                                       ; $75a4: $f2
	sbc l                                            ; $75a5: $9d
	ld de, $6f0f                                     ; $75a6: $11 $0f $6f
	sub b                                            ; $75a9: $90
	sbc [hl]                                         ; $75aa: $9e
	ld [hl], $73                                     ; $75ab: $36 $73
	sub b                                            ; $75ad: $90
	sbc e                                            ; $75ae: $9b
	add hl, bc                                       ; $75af: $09
	rlca                                             ; $75b0: $07
	ld [$7b06], sp                                   ; $75b1: $08 $06 $7b
	sub b                                            ; $75b4: $90
	sbc l                                            ; $75b5: $9d
	sbc $34                                          ; $75b6: $de $34
	ld a, e                                          ; $75b8: $7b
	add b                                            ; $75b9: $80
	ld a, e                                          ; $75ba: $7b
	sub b                                            ; $75bb: $90
	sbc [hl]                                         ; $75bc: $9e
	ld l, $bf                                        ; $75bd: $2e $bf
	cp $f8                                           ; $75bf: $fe $f8
	ld l, a                                          ; $75c1: $6f
	add b                                            ; $75c2: $80
	sbc h                                            ; $75c3: $9c
	ld a, $3c                                        ; $75c4: $3e $3c
	inc l                                            ; $75c6: $2c
	ld a, e                                          ; $75c7: $7b
	ret nc                                           ; $75c8: $d0

	cp a                                             ; $75c9: $bf
	ld hl, sp-$08                                    ; $75ca: $f8 $f8
	ld [hl], a                                       ; $75cc: $77
	ret nz                                           ; $75cd: $c0

	sbc e                                            ; $75ce: $9b
	ld a, [hl-]                                      ; $75cf: $3a
	jr c, jr_01e_7620                                ; $75d0: $38 $4e

	ld c, h                                          ; $75d2: $4c
	ld [hl], a                                       ; $75d3: $77
	ret nz                                           ; $75d4: $c0

	ld h, a                                          ; $75d5: $67
	ldh a, [$9b]                                     ; $75d6: $f0 $9b
	ld c, d                                          ; $75d8: $4a
	ld c, b                                          ; $75d9: $48
	ld b, [hl]                                       ; $75da: $46
	ld b, h                                          ; $75db: $44
	ld l, a                                          ; $75dc: $6f
	ldh a, [$9d]                                     ; $75dd: $f0 $9d
	db $fc                                           ; $75df: $fc
	inc b                                            ; $75e0: $04
	ld [hl], a                                       ; $75e1: $77
	ldh a, [$9d]                                     ; $75e2: $f0 $9d
	ld b, d                                          ; $75e4: $42
	ld b, b                                          ; $75e5: $40
	ld [hl], a                                       ; $75e6: $77
	add b                                            ; $75e7: $80
	sbc c                                            ; $75e8: $99
	ld l, d                                          ; $75e9: $6a
	ld l, h                                          ; $75ea: $6c
	cp $06                                           ; $75eb: $fe $06
	rrca                                             ; $75ed: $0f
	dec b                                            ; $75ee: $05
	sbc $de                                          ; $75ef: $de $de
	ld a, e                                          ; $75f1: $7b
	sub b                                            ; $75f2: $90
	ld a, a                                          ; $75f3: $7f
	sbc a                                            ; $75f4: $9f
	sub a                                            ; $75f5: $97
	ld l, [hl]                                       ; $75f6: $6e
	ld l, a                                          ; $75f7: $6f
	ld l, [hl]                                       ; $75f8: $6e
	ld l, d                                          ; $75f9: $6a
	dec c                                            ; $75fa: $0d
	rlca                                             ; $75fb: $07
	ld c, $16                                        ; $75fc: $0e $16
	ld [hl], a                                       ; $75fe: $77
	or b                                             ; $75ff: $b0
	sub h                                            ; $7600: $94
	inc [hl]                                         ; $7601: $34
	ld a, [hl+]                                      ; $7602: $2a
	ld [hl-], a                                      ; $7603: $32
	jr nc, jr_01e_7672                               ; $7604: $30 $6c

	ld l, a                                          ; $7606: $6f
	ld l, h                                          ; $7607: $6c
	ld l, h                                          ; $7608: $6c
	ld c, $16                                        ; $7609: $0e $16
	ld de, $506b                                     ; $760b: $11 $6b $50
	ld a, a                                          ; $760e: $7f
	ld h, b                                          ; $760f: $60
	ld a, a                                          ; $7610: $7f
	ldh [$7f], a                                     ; $7611: $e0 $7f
	ret nc                                           ; $7613: $d0

	sbc e                                            ; $7614: $9b
	inc de                                           ; $7615: $13
	dec de                                           ; $7616: $1b
	dec d                                            ; $7617: $15
	dec e                                            ; $7618: $1d
	ld h, a                                          ; $7619: $67
	ld b, b                                          ; $761a: $40
	ld [hl], a                                       ; $761b: $77
	ldh a, [$9b]                                     ; $761c: $f0 $9b
	rla                                              ; $761e: $17
	rra                                              ; $761f: $1f

jr_01e_7620:
	ld a, [de]                                       ; $7620: $1a
	ld [hl+], a                                      ; $7621: $22
	ld d, a                                          ; $7622: $57
	ldh [$9b], a                                     ; $7623: $e0 $9b
	inc e                                            ; $7625: $1c
	inc h                                            ; $7626: $24
	ld hl, $6729                                     ; $7627: $21 $29 $67
	ld b, b                                          ; $762a: $40
	ld a, a                                          ; $762b: $7f
	ldh a, [$df]                                     ; $762c: $f0 $df
	ld l, h                                          ; $762e: $6c
	ld a, a                                          ; $762f: $7f
	ldh a, [c]                                       ; $7630: $f2
	sbc l                                            ; $7631: $9d
	inc h                                            ; $7632: $24
	inc l                                            ; $7633: $2c
	ld d, a                                          ; $7634: $57
	ldh [$9c], a                                     ; $7635: $e0 $9c
	ld h, $2e                                        ; $7637: $26 $2e
	add hl, hl                                       ; $7639: $29
	halt                                             ; $763a: $76
	ret nz                                           ; $763b: $c0

	ld h, e                                          ; $763c: $63
	ret nz                                           ; $763d: $c0

	sbc e                                            ; $763e: $9b
	dec hl                                           ; $763f: $2b
	inc sp                                           ; $7640: $33
	ld l, $36                                        ; $7641: $2e $36
	ld d, a                                          ; $7643: $57
	ldh [$9b], a                                     ; $7644: $e0 $9b
	jr nc, @+$3a                                     ; $7646: $30 $38

	inc a                                            ; $7648: $3c
	inc a                                            ; $7649: $3c
	ld l, a                                          ; $764a: $6f
	db $10                                           ; $764b: $10
	ld a, [hl]                                       ; $764c: $7e
	xor b                                            ; $764d: $a8
	ld a, e                                          ; $764e: $7b
	ret nz                                           ; $764f: $c0

	sbc d                                            ; $7650: $9a
	ld l, [hl]                                       ; $7651: $6e
	inc [hl]                                         ; $7652: $34
	inc [hl]                                         ; $7653: $34
	ccf                                              ; $7654: $3f
	ld b, c                                          ; $7655: $41
	ld [hl], a                                       ; $7656: $77
	db $10                                           ; $7657: $10
	sbc e                                            ; $7658: $9b
	ld [hl-], a                                      ; $7659: $32
	ld a, [hl+]                                      ; $765a: $2a
	inc [hl]                                         ; $765b: $34
	jr z, jr_01e_76d9                                ; $765c: $28 $7b

	ld [hl], b                                       ; $765e: $70
	sbc d                                            ; $765f: $9a
	ld l, [hl]                                       ; $7660: $6e
	add hl, sp                                       ; $7661: $39
	scf                                              ; $7662: $37
	ld b, b                                          ; $7663: $40
	ld b, b                                          ; $7664: $40
	ld a, e                                          ; $7665: $7b
	pop de                                           ; $7666: $d1
	ld a, a                                          ; $7667: $7f
	ldh [$98], a                                     ; $7668: $e0 $98
	ld [hl], $32                                     ; $766a: $36 $32
	ld a, [hl+]                                      ; $766c: $2a
	ld l, [hl]                                       ; $766d: $6e
	ld l, e                                          ; $766e: $6b
	ld l, h                                          ; $766f: $6c
	ld l, a                                          ; $7670: $6f
	rra                                              ; $7671: $1f

jr_01e_7672:
	ld bc, $40df                                     ; $7672: $01 $df $40
	add b                                            ; $7675: $80
	ld b, e                                          ; $7676: $43
	dec sp                                           ; $7677: $3b
	xor $de                                          ; $7678: $ee $de
	xor $ee                                          ; $767a: $ee $ee
	inc b                                            ; $767c: $04
	nop                                              ; $767d: $00
	ld a, [bc]                                       ; $767e: $0a
	ld [$2f2c], sp                                   ; $767f: $08 $2c $2f
	inc l                                            ; $7682: $2c
	inc l                                            ; $7683: $2c
	ld b, d                                          ; $7684: $42
	ld a, [hl-]                                      ; $7685: $3a
	dec a                                            ; $7686: $3d
	dec a                                            ; $7687: $3d
	sbc $de                                          ; $7688: $de $de
	xor $de                                          ; $768a: $ee $de
	ld [bc], a                                       ; $768c: $02
	nop                                              ; $768d: $00
	ld b, $02                                        ; $768e: $06 $02
	ld l, $2f                                        ; $7690: $2e $2f
	inc l                                            ; $7692: $2c
	ld l, $35                                        ; $7693: $2e $35
	sbc h                                            ; $7695: $9c
	dec [hl]                                         ; $7696: $35
	add hl, sp                                       ; $7697: $39
	ld sp, $e057                                     ; $7698: $31 $57 $e0
	sbc e                                            ; $769b: $9b
	jr c, jr_01e_76ce                                ; $769c: $38 $30

	inc [hl]                                         ; $769e: $34
	inc l                                            ; $769f: $2c
	ld a, e                                          ; $76a0: $7b
	ldh [hDisp1_BGP], a                                     ; $76a1: $e0 $92
	xor $02                                          ; $76a3: $ee $02
	nop                                              ; $76a5: $00
	ld c, $0c                                        ; $76a6: $0e $0c
	ld l, $2f                                        ; $76a8: $2e $2f
	ld a, [hl+]                                      ; $76aa: $2a
	inc l                                            ; $76ab: $2c
	inc sp                                           ; $76ac: $33
	dec hl                                           ; $76ad: $2b
	cpl                                              ; $76ae: $2f
	daa                                              ; $76af: $27
	ld l, a                                          ; $76b0: $6f
	ldh a, [$7f]                                     ; $76b1: $f0 $7f
	ldh [$7b], a                                     ; $76b3: $e0 $7b
	ret nc                                           ; $76b5: $d0

	ld a, a                                          ; $76b6: $7f
	rst GetHLinHL                                          ; $76b7: $cf
	sbc h                                            ; $76b8: $9c
	ld h, $29                                        ; $76b9: $26 $29
	ld hl, $f06f                                     ; $76bb: $21 $6f $f0
	sbc l                                            ; $76be: $9d
	ld b, $04                                        ; $76bf: $06 $04
	ld [hl], a                                       ; $76c1: $77
	ldh a, [$7f]                                     ; $76c2: $f0 $7f
	ldh a, [c]                                       ; $76c4: $f2
	sbc l                                            ; $76c5: $9d
	dec e                                            ; $76c6: $1d
	dec h                                            ; $76c7: $25
	ld l, a                                          ; $76c8: $6f
	ldh a, [$9d]                                     ; $76c9: $f0 $9d
	ld [$770a], sp                                   ; $76cb: $08 $0a $77

jr_01e_76ce:
	ldh a, [$9b]                                     ; $76ce: $f0 $9b
	inc h                                            ; $76d0: $24
	inc e                                            ; $76d1: $1c
	jr nz, jr_01e_76ec                               ; $76d2: $20 $18

	ld d, a                                          ; $76d4: $57
	ret nz                                           ; $76d5: $c0

	sbc e                                            ; $76d6: $9b
	rra                                              ; $76d7: $1f
	rla                                              ; $76d8: $17

jr_01e_76d9:
	ld de, $5719                                     ; $76d9: $11 $19 $57
	ldh [$9b], a                                     ; $76dc: $e0 $9b
	jr jr_01e_76f0                                   ; $76de: $18 $10

	ld d, $0e                                        ; $76e0: $16 $0e
	ld d, a                                          ; $76e2: $57
	ret nz                                           ; $76e3: $c0

	ld a, a                                          ; $76e4: $7f
	ldh a, [c]                                       ; $76e5: $f2
	sbc l                                            ; $76e6: $9d
	rlca                                             ; $76e7: $07
	rrca                                             ; $76e8: $0f
	ld d, a                                          ; $76e9: $57
	ldh [$9b], a                                     ; $76ea: $e0 $9b

jr_01e_76ec:
	rrca                                             ; $76ec: $0f
	rlca                                             ; $76ed: $07
	rlca                                             ; $76ee: $07
	rst $38                                          ; $76ef: $ff

jr_01e_76f0:
	ld d, a                                          ; $76f0: $57
	ret nz                                           ; $76f1: $c0

	sbc e                                            ; $76f2: $9b
	ld b, $fe                                        ; $76f3: $06 $fe
	nop                                              ; $76f5: $00
	ld hl, sp+$6f                                    ; $76f6: $f8 $6f
	ldh a, [$9d]                                     ; $76f8: $f0 $9d
	ld d, $14                                        ; $76fa: $16 $14
	ld [hl], a                                       ; $76fc: $77
	ldh [$7f], a                                     ; $76fd: $e0 $7f
	ldh a, [c]                                       ; $76ff: $f2
	ld l, a                                          ; $7700: $6f
	ldh a, [$9b]                                     ; $7701: $f0 $9b
	ld [de], a                                       ; $7703: $12
	db $10                                           ; $7704: $10
	ld e, $1c                                        ; $7705: $1e $1c
	ld [hl], a                                       ; $7707: $77
	ldh a, [$7f]                                     ; $7708: $f0 $7f
	pop af                                           ; $770a: $f1
	ld l, a                                          ; $770b: $6f
	ldh a, [$9d]                                     ; $770c: $f0 $9d
	jr @+$1c                                         ; $770e: $18 $1a

	ld l, a                                          ; $7710: $6f
	ldh a, [$7f]                                     ; $7711: $f0 $7f
	ldh a, [c]                                       ; $7713: $f2
	sbc l                                            ; $7714: $9d
	cp $06                                           ; $7715: $fe $06
	ld l, a                                          ; $7717: $6f
	ldh [rPCM34], a                                  ; $7718: $e0 $77
	and b                                            ; $771a: $a0
	rst SubAFromDE                                          ; $771b: $df
	ld l, h                                          ; $771c: $6c
	ld a, a                                          ; $771d: $7f
	ldh a, [c]                                       ; $771e: $f2
	ld a, a                                          ; $771f: $7f
	xor [hl]                                         ; $7720: $ae
	ld h, a                                          ; $7721: $67
	and b                                            ; $7722: $a0
	sub a                                            ; $7723: $97
	ld l, [hl]                                       ; $7724: $6e
	ld l, a                                          ; $7725: $6f
	ld l, h                                          ; $7726: $6c
	ld l, h                                          ; $7727: $6c
	ld [$0e10], sp                                   ; $7728: $08 $10 $0e
	ld d, $67                                        ; $772b: $16 $67
	and b                                            ; $772d: $a0
	ld a, a                                          ; $772e: $7f
	ldh a, [$99]                                     ; $772f: $f0 $99
	ld l, d                                          ; $7731: $6a
	ld l, h                                          ; $7732: $6c
	db $10                                           ; $7733: $10
	jr @+$1d                                         ; $7734: $18 $1b

	inc de                                           ; $7736: $13
	ld d, a                                          ; $7737: $57
	ldh [$9c], a                                     ; $7738: $e0 $9c
	inc d                                            ; $773a: $14
	inc e                                            ; $773b: $1c
	add hl, de                                       ; $773c: $19
	ld h, e                                          ; $773d: $63
	jr nz, jr_01e_77b7                               ; $773e: $20 $77

	ldh a, [$9b]                                     ; $7740: $f0 $9b
	jr @+$22                                         ; $7742: $18 $20

	inc h                                            ; $7744: $24
	inc e                                            ; $7745: $1c
	ld d, a                                          ; $7746: $57
	ldh [$7f], a                                     ; $7747: $e0 $7f
	ld [de], a                                       ; $7749: $12
	sbc l                                            ; $774a: $9d
	jr nz, jr_01e_7775                               ; $774b: $20 $28

	ld d, a                                          ; $774d: $57
	ret nz                                           ; $774e: $c0

	sbc e                                            ; $774f: $9b
	ld hl, $2e29                                     ; $7750: $21 $29 $2e
	ld h, $57                                        ; $7753: $26 $57
	ldh [$9b], a                                     ; $7755: $e0 $9b
	daa                                              ; $7757: $27
	cpl                                              ; $7758: $2f
	dec l                                            ; $7759: $2d
	dec [hl]                                         ; $775a: $35
	ld d, a                                          ; $775b: $57
	ret nz                                           ; $775c: $c0

	sbc e                                            ; $775d: $9b
	inc l                                            ; $775e: $2c
	inc [hl]                                         ; $775f: $34
	jr c, jr_01e_7792                                ; $7760: $38 $30

	ld d, a                                          ; $7762: $57
	ldh [$9b], a                                     ; $7763: $e0 $9b
	ld sp, $3a39                                     ; $7765: $31 $39 $3a
	inc a                                            ; $7768: $3c
	ld l, [hl]                                       ; $7769: $6e
	add b                                            ; $776a: $80
	sbc l                                            ; $776b: $9d
	inc c                                            ; $776c: $0c
	nop                                              ; $776d: $00
	ld a, e                                          ; $776e: $7b
	ldh a, [$9a]                                     ; $776f: $f0 $9a
	ld l, [hl]                                       ; $7771: $6e
	ld [hl-], a                                      ; $7772: $32
	inc [hl]                                         ; $7773: $34
	ccf                                              ; $7774: $3f

jr_01e_7775:
	ld b, b                                          ; $7775: $40
	ld a, d                                          ; $7776: $7a
	add b                                            ; $7777: $80
	sbc c                                            ; $7778: $99
	sbc $0e                                          ; $7779: $de $0e
	ld [bc], a                                       ; $777b: $02
	ld [$6a00], sp                                   ; $777c: $08 $00 $6a
	ld a, e                                          ; $777f: $7b
	ldh a, [$9c]                                     ; $7780: $f0 $9c
	scf                                              ; $7782: $37
	jr c, @+$42                                      ; $7783: $38 $40

	ld [hl], e                                       ; $7785: $73
	ldh a, [$97]                                     ; $7786: $f0 $97
	ld a, [bc]                                       ; $7788: $0a
	ld [bc], a                                       ; $7789: $02
	ld b, $02                                        ; $778a: $06 $02
	ld l, h                                          ; $778c: $6c
	ld l, a                                          ; $778d: $6f
	ld l, h                                          ; $778e: $6c
	ld l, a                                          ; $778f: $6f
	rst JumpTable                                          ; $7790: $c7
	nop                                              ; $7791: $00

jr_01e_7792:
	adc d                                            ; $7792: $8a
	nop                                              ; $7793: $00
	ld hl, sp+$04                                    ; $7794: $f8 $04
	db $fc                                           ; $7796: $fc
	ldh a, [$f0]                                     ; $7797: $f0 $f0
	pop hl                                           ; $7799: $e1
	pop hl                                           ; $779a: $e1
	ld [hl], $34                                     ; $779b: $36 $34
	ld c, d                                          ; $779d: $4a
	ld c, b                                          ; $779e: $48
	jr z, @+$2a                                      ; $779f: $28 $28

	ld l, $2e                                        ; $77a1: $2e $2e
	db $f4                                           ; $77a3: $f4
	ld [$f8f0], sp                                   ; $77a4: $08 $f0 $f8
	pop hl                                           ; $77a7: $e1
	sbc $f0                                          ; $77a8: $de $f0
	sub e                                            ; $77aa: $93
	ld b, [hl]                                       ; $77ab: $46
	jr c, jr_01e_77e0                                ; $77ac: $38 $32

	inc [hl]                                         ; $77ae: $34
	ld l, $28                                        ; $77af: $2e $28
	add hl, hl                                       ; $77b1: $29

jr_01e_77b2:
	jr z, jr_01e_77b4                                ; $77b2: $28 $00

jr_01e_77b4:
	inc b                                            ; $77b4: $04
	db $fc                                           ; $77b5: $fc
	db $f4                                           ; $77b6: $f4

jr_01e_77b7:
	ld a, e                                          ; $77b7: $7b
	pop hl                                           ; $77b8: $e1
	ld a, a                                          ; $77b9: $7f
	ldh [$9c], a                                     ; $77ba: $e0 $9c

jr_01e_77bc:
	ld b, h                                          ; $77bc: $44
	ld b, d                                          ; $77bd: $42
	ld b, b                                          ; $77be: $40
	ld a, e                                          ; $77bf: $7b
	pop hl                                           ; $77c0: $e1
	sbc d                                            ; $77c1: $9a
	ld l, $08                                        ; $77c2: $2e $08
	ldh a, [rP1]                                     ; $77c4: $f0 $00
	ld hl, sp-$23                                    ; $77c6: $f8 $dd
	ldh a, [$7f]                                     ; $77c8: $f0 $7f
	pop hl                                           ; $77ca: $e1
	ld a, a                                          ; $77cb: $7f
	adc $7b                                          ; $77cc: $ce $7b
	pop hl                                           ; $77ce: $e1
	sbc [hl]                                         ; $77cf: $9e
	jr z, @+$7d                                      ; $77d0: $28 $7b

	pop hl                                           ; $77d2: $e1
	sbc [hl]                                         ; $77d3: $9e
	ld [$e1de], sp                                   ; $77d4: $08 $de $e1
	sbc d                                            ; $77d7: $9a
	ldh a, [$3e]                                     ; $77d8: $f0 $3e
	inc a                                            ; $77da: $3c
	ld a, [hl-]                                      ; $77db: $3a
	jr c, jr_01e_77bc                                ; $77dc: $38 $de

	ld l, $9e                                        ; $77de: $2e $9e

jr_01e_77e0:
	jr z, @+$7d                                      ; $77e0: $28 $7b

	pop hl                                           ; $77e2: $e1
	ld a, a                                          ; $77e3: $7f
	db $dd                                           ; $77e4: $dd
	sbc $f0                                          ; $77e5: $de $f0
	ld a, e                                          ; $77e7: $7b
	pop hl                                           ; $77e8: $e1
	sbc [hl]                                         ; $77e9: $9e
	jr c, @+$7d                                      ; $77ea: $38 $7b

	pop hl                                           ; $77ec: $e1
	ld a, a                                          ; $77ed: $7f
	ldh a, [$df]                                     ; $77ee: $f0 $df
	db $fc                                           ; $77f0: $fc
	sub h                                            ; $77f1: $94
	inc b                                            ; $77f2: $04
	ldh a, [$ef]                                     ; $77f3: $f0 $ef
	rst SubAFromDE                                          ; $77f5: $df
	rst SubAFromDE                                          ; $77f6: $df
	ld [hl-], a                                      ; $77f7: $32
	ld c, h                                          ; $77f8: $4c
	ld l, $30                                        ; $77f9: $2e $30
	jr z, @+$2e                                      ; $77fb: $28 $2c

	ld a, e                                          ; $77fd: $7b
	and b                                            ; $77fe: $a0
	ld a, a                                          ; $77ff: $7f
	pop af                                           ; $7800: $f1
	sbc [hl]                                         ; $7801: $9e
	db $f4                                           ; $7802: $f4
	db $dd                                           ; $7803: $dd
	rst SubAFromDE                                          ; $7804: $df
	sbc d                                            ; $7805: $9a
	ld h, $28                                        ; $7806: $26 $28
	jr nc, jr_01e_7830                               ; $7808: $30 $26

	cpl                                              ; $780a: $2f
	sbc $2e                                          ; $780b: $de $2e
	ld l, e                                          ; $780d: $6b
	pop de                                           ; $780e: $d1
	sbc [hl]                                         ; $780f: $9e
	ldh a, [$7b]                                     ; $7810: $f0 $7b
	pop de                                           ; $7812: $d1
	sbc [hl]                                         ; $7813: $9e
	ld [hl-], a                                      ; $7814: $32
	db $dd                                           ; $7815: $dd

jr_01e_7816:
	jr z, jr_01e_77b2                                ; $7816: $28 $9a

	db $fc                                           ; $7818: $fc
	inc bc                                           ; $7819: $03
	ei                                               ; $781a: $fb
	di                                               ; $781b: $f3
	rst AddAOntoHL                                          ; $781c: $ef
	sbc $e0                                          ; $781d: $de $e0
	sbc d                                            ; $781f: $9a
	ld c, h                                          ; $7820: $4c
	inc h                                            ; $7821: $24
	ld [hl+], a                                      ; $7822: $22
	jr nz, jr_01e_7852                               ; $7823: $20 $2d

	scf                                              ; $7825: $37
	ldh [$9b], a                                     ; $7826: $e0 $9b
	ld [$f800], sp                                   ; $7828: $08 $00 $f8
	rst AddAOntoHL                                          ; $782b: $ef
	sbc $f0                                          ; $782c: $de $f0
	sbc d                                            ; $782e: $9a
	ld c, h                                          ; $782f: $4c

jr_01e_7830:
	jr c, jr_01e_7868                                ; $7830: $38 $36

	inc [hl]                                         ; $7832: $34
	dec l                                            ; $7833: $2d
	ld [hl], a                                       ; $7834: $77
	ldh a, [hDisp1_OBP0]                                     ; $7835: $f0 $93
	ldh a, [rDIV]                                    ; $7837: $f0 $04
	db $fc                                           ; $7839: $fc
	rst AddAOntoHL                                          ; $783a: $ef
	ldh a, [$df]                                     ; $783b: $f0 $df
	rst SubAFromDE                                          ; $783d: $df
	ld c, h                                          ; $783e: $4c
	ld [hl-], a                                      ; $783f: $32
	ld a, [hl+]                                      ; $7840: $2a
	jr z, @+$2e                                      ; $7841: $28 $2c

	ld [hl], e                                       ; $7843: $73
	ld b, b                                          ; $7844: $40
	ld a, a                                          ; $7845: $7f
	ldh [$9e], a                                     ; $7846: $e0 $9e
	rst SubAFromDE                                          ; $7848: $df
	sbc $f0                                          ; $7849: $de $f0
	sbc [hl]                                         ; $784b: $9e
	ld h, $7b                                        ; $784c: $26 $7b
	ldh [$9e], a                                     ; $784e: $e0 $9e
	cpl                                              ; $7850: $2f
	ld [hl], a                                       ; $7851: $77

jr_01e_7852:
	add b                                            ; $7852: $80
	ld a, a                                          ; $7853: $7f
	halt                                             ; $7854: $76
	sbc [hl]                                         ; $7855: $9e
	add hl, hl                                       ; $7856: $29
	add hl, sp                                       ; $7857: $39
	ld bc, $40dd                                     ; $7858: $01 $dd $40
	add a                                            ; $785b: $87
	sbc $ee                                          ; $785c: $de $ee
	db $dd                                           ; $785e: $dd
	db $ed                                           ; $785f: $ed
	nop                                              ; $7860: $00
	inc b                                            ; $7861: $04
	ld [bc], a                                       ; $7862: $02
	ld a, [bc]                                       ; $7863: $0a
	ld l, $29                                        ; $7864: $2e $29
	ld l, $28                                        ; $7866: $2e $28

jr_01e_7868:
	jr c, jr_01e_78a2                                ; $7868: $38 $38

	dec a                                            ; $786a: $3d
	dec a                                            ; $786b: $3d
	db $dd                                           ; $786c: $dd
	db $ed                                           ; $786d: $ed
	sbc $ee                                          ; $786e: $de $ee
	nop                                              ; $7870: $00
	ld [$0602], sp                                   ; $7871: $08 $02 $06
	ld [hl], a                                       ; $7874: $77
	ldh a, [$df]                                     ; $7875: $f0 $df
	dec [hl]                                         ; $7877: $35
	sbc b                                            ; $7878: $98
	jr c, jr_01e_78ab                                ; $7879: $38 $30

	xor $de                                          ; $787b: $ee $de
	db $dd                                           ; $787d: $dd
	db $dd                                           ; $787e: $dd
	inc b                                            ; $787f: $04
	cp a                                             ; $7880: $bf
	ld [bc], a                                       ; $7881: $02
	jr z, jr_01e_7816                                ; $7882: $28 $92

	cpl                                              ; $7884: $2f
	ld l, $2e                                        ; $7885: $2e $2e
	jr c, jr_01e_78b9                                ; $7887: $38 $30

	inc sp                                           ; $7889: $33
	dec hl                                           ; $788a: $2b
	db $ed                                           ; $788b: $ed
	db $ed                                           ; $788c: $ed
	sbc $de                                          ; $788d: $de $de
	ld a, [bc]                                       ; $788f: $0a
	ld [$f07b], sp                                   ; $7890: $08 $7b $f0
	ld a, a                                          ; $7893: $7f
	ldh [hDisp1_OBP1], a                                     ; $7894: $e0 $94
	ld l, $33                                        ; $7896: $2e $33
	dec hl                                           ; $7898: $2b
	ld l, $26                                        ; $7899: $2e $26
	xor $ee                                          ; $789b: $ee $ee
	db $dd                                           ; $789d: $dd
	db $dd                                           ; $789e: $dd
	ld c, $0c                                        ; $789f: $0e $0c
	ld l, a                                          ; $78a1: $6f

jr_01e_78a2:
	ldh a, [$7f]                                     ; $78a2: $f0 $7f
	ldh a, [c]                                       ; $78a4: $f2
	sbc l                                            ; $78a5: $9d
	add hl, hl                                       ; $78a6: $29
	ld hl, $e057                                     ; $78a7: $21 $57 $e0
	ld a, a                                          ; $78aa: $7f

jr_01e_78ab:
	ldh a, [c]                                       ; $78ab: $f2
	sbc l                                            ; $78ac: $9d
	inc h                                            ; $78ad: $24
	inc e                                            ; $78ae: $1c
	ld [hl], a                                       ; $78af: $77
	ldh [$9d], a                                     ; $78b0: $e0 $9d
	ld b, $04                                        ; $78b2: $06 $04
	ld l, a                                          ; $78b4: $6f
	ldh a, [$7f]                                     ; $78b5: $f0 $7f
	ldh a, [c]                                       ; $78b7: $f2
	sbc l                                            ; $78b8: $9d

jr_01e_78b9:
	jr nz, jr_01e_78d3                               ; $78b9: $20 $18

	ld d, a                                          ; $78bb: $57
	ldh [$9b], a                                     ; $78bc: $e0 $9b
	rra                                              ; $78be: $1f
	rla                                              ; $78bf: $17
	dec de                                           ; $78c0: $1b
	inc de                                           ; $78c1: $13
	ld d, a                                          ; $78c2: $57
	ret nz                                           ; $78c3: $c0

	ld a, a                                          ; $78c4: $7f
	ldh a, [c]                                       ; $78c5: $f2
	sbc l                                            ; $78c6: $9d
	rla                                              ; $78c7: $17
	rrca                                             ; $78c8: $0f
	ld d, a                                          ; $78c9: $57
	ldh [$9b], a                                     ; $78ca: $e0 $9b
	ld d, $0e                                        ; $78cc: $16 $0e
	rrca                                             ; $78ce: $0f
	rlca                                             ; $78cf: $07
	ld d, a                                          ; $78d0: $57
	ret nz                                           ; $78d1: $c0

	ld a, a                                          ; $78d2: $7f

jr_01e_78d3:
	ldh a, [c]                                       ; $78d3: $f2
	sbc l                                            ; $78d4: $9d
	ld b, $fe                                        ; $78d5: $06 $fe
	ld d, a                                          ; $78d7: $57
	ldh [$7f], a                                     ; $78d8: $e0 $7f
	ldh a, [c]                                       ; $78da: $f2
	sbc l                                            ; $78db: $9d
	cp $00                                           ; $78dc: $fe $00
	sbc $ee                                          ; $78de: $de $ee
	sbc c                                            ; $78e0: $99
	sbc $0e                                          ; $78e1: $de $0e
	inc c                                            ; $78e3: $0c
	inc c                                            ; $78e4: $0c
	ld [de], a                                       ; $78e5: $12
	jr z, jr_01e_7963                                ; $78e6: $28 $7b

	rst AddAOntoHL                                          ; $78e8: $ef
	sbc [hl]                                         ; $78e9: $9e
	ld hl, sp-$41                                    ; $78ea: $f8 $bf
	ld hl, sp-$22                                    ; $78ec: $f8 $de
	ld a, e                                          ; $78ee: $7b
	ldh a, [$9a]                                     ; $78ef: $f0 $9a
	db $10                                           ; $78f1: $10
	ld d, $14                                        ; $78f2: $16 $14
	ld a, [de]                                       ; $78f4: $1a
	ld l, $5b                                        ; $78f5: $2e $5b
	ldh a, [$9c]                                     ; $78f7: $f0 $9c
	jr jr_01e_7919                                   ; $78f9: $18 $1e

	inc e                                            ; $78fb: $1c
	ld h, a                                          ; $78fc: $67
	ldh a, [$9e]                                     ; $78fd: $f0 $9e

jr_01e_78ff:
	cp $73                                           ; $78ff: $fe $73
	ldh a, [$9c]                                     ; $7901: $f0 $9c
	ld [hl+], a                                      ; $7903: $22
	jr nz, @+$04                                     ; $7904: $20 $02

	ld a, e                                          ; $7906: $7b
	ldh a, [$9a]                                     ; $7907: $f0 $9a
	ld l, [hl]                                       ; $7909: $6e
	ld b, $fe                                        ; $790a: $06 $fe
	ld b, $0f                                        ; $790c: $06 $0f
	ld a, e                                          ; $790e: $7b
	ldh a, [hDisp1_SCX]                                     ; $790f: $f0 $91
	db $dd                                           ; $7911: $dd
	nop                                              ; $7912: $00
	ld b, $04                                        ; $7913: $06 $04
	nop                                              ; $7915: $00
	ld l, [hl]                                       ; $7916: $6e
	ld l, b                                          ; $7917: $68
	ld l, c                                          ; $7918: $69

jr_01e_7919:
	ld l, [hl]                                       ; $7919: $6e
	rlca                                             ; $791a: $07
	rlca                                             ; $791b: $07
	rrca                                             ; $791c: $0f
	ld d, $dd                                        ; $791d: $16 $dd
	ld a, e                                          ; $791f: $7b
	sbc a                                            ; $7920: $9f
	ld a, [hl]                                       ; $7921: $7e
	ldh a, [c]                                       ; $7922: $f2
	sbc [hl]                                         ; $7923: $9e
	ld [$f073], sp                                   ; $7924: $08 $73 $f0
	rst SubAFromDE                                          ; $7927: $df
	ld c, $9d                                        ; $7928: $0e $9d
	ld d, $1b                                        ; $792a: $16 $1b
	ld [hl], a                                       ; $792c: $77
	ldh [$9c], a                                     ; $792d: $e0 $9c
	ld [bc], a                                       ; $792f: $02
	ld c, $0c                                        ; $7930: $0e $0c
	ld [hl], e                                       ; $7932: $73
	ldh a, [$df]                                     ; $7933: $f0 $df
	inc de                                           ; $7935: $13
	sbc l                                            ; $7936: $9d
	dec de                                           ; $7937: $1b
	rra                                              ; $7938: $1f
	ld d, a                                          ; $7939: $57
	ldh [$df], a                                     ; $793a: $e0 $df
	rla                                              ; $793c: $17
	sbc l                                            ; $793d: $9d
	rra                                              ; $793e: $1f
	inc h                                            ; $793f: $24
	ld d, a                                          ; $7940: $57
	ldh [$df], a                                     ; $7941: $e0 $df
	inc e                                            ; $7943: $1c
	sbc l                                            ; $7944: $9d
	inc h                                            ; $7945: $24
	add hl, hl                                       ; $7946: $29
	ld d, a                                          ; $7947: $57
	ldh [$df], a                                     ; $7948: $e0 $df
	ld hl, $8c7f                                     ; $794a: $21 $7f $8c
	ld [hl], e                                       ; $794d: $73
	ldh [rOCPD], a                                   ; $794e: $e0 $6b
	and b                                            ; $7950: $a0
	rst SubAFromDE                                          ; $7951: $df
	ld h, $7e                                        ; $7952: $26 $7e
	call $e057                                       ; $7954: $cd $57 $e0
	rst SubAFromDE                                          ; $7957: $df
	dec hl                                           ; $7958: $2b
	sbc l                                            ; $7959: $9d
	inc sp                                           ; $795a: $33
	jr c, jr_01e_79b4                                ; $795b: $38 $57

	ret nz                                           ; $795d: $c0

	rst SubAFromDE                                          ; $795e: $df
	jr nc, jr_01e_78ff                               ; $795f: $30 $9e

	jr c, jr_01e_79da                                ; $7961: $38 $77

jr_01e_7963:
	ldh [$9e], a                                     ; $7963: $e0 $9e
	xor $7b                                          ; $7965: $ee $7b
	ldh [$9e], a                                     ; $7967: $e0 $9e
	ld b, $7b                                        ; $7969: $06 $7b
	ldh a, [$97]                                     ; $796b: $f0 $97
	ld l, b                                          ; $796d: $68
	dec sp                                           ; $796e: $3b
	dec sp                                           ; $796f: $3b
	inc sp                                           ; $7970: $33
	ld b, b                                          ; $7971: $40
	xor $de                                          ; $7972: $ee $de
	sbc $72                                          ; $7974: $de $72
	add b                                            ; $7976: $80
	sub [hl]                                         ; $7977: $96
	ld l, b                                          ; $7978: $68
	ld l, [hl]                                       ; $7979: $6e
	ld l, a                                          ; $797a: $6f
	ld l, [hl]                                       ; $797b: $6e
	ld b, b                                          ; $797c: $40
	jr c, jr_01e_79b7                                ; $797d: $38 $38

	ld b, b                                          ; $797f: $40
	db $ed                                           ; $7980: $ed
	ld a, d                                          ; $7981: $7a
	ld e, a                                          ; $7982: $5f
	ld a, a                                          ; $7983: $7f
	ld bc, $0a95                                     ; $7984: $01 $95 $0a
	ld [bc], a                                       ; $7987: $02
	ld l, b                                          ; $7988: $68
	ld l, [hl]                                       ; $7989: $6e
	ld l, c                                          ; $798a: $69
	ld l, [hl]                                       ; $798b: $6e
	ld b, b                                          ; $798c: $40
	xor $06                                          ; $798d: $ee $06
	ld l, c                                          ; $798f: $69
	rst $38                                          ; $7990: $ff
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	rst $38                                          ; $7993: $ff
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rst $38                                          ; $7999: $ff
	rst $38                                          ; $799a: $ff
	rst $38                                          ; $799b: $ff
	rst $38                                          ; $799c: $ff
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	rst $38                                          ; $79a1: $ff
	rst $38                                          ; $79a2: $ff
	rst $38                                          ; $79a3: $ff
	rst $38                                          ; $79a4: $ff
	rst $38                                          ; $79a5: $ff
	rst $38                                          ; $79a6: $ff
	rst $38                                          ; $79a7: $ff
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	rst $38                                          ; $79aa: $ff
	rst $38                                          ; $79ab: $ff
	rst $38                                          ; $79ac: $ff
	rst $38                                          ; $79ad: $ff
	rst $38                                          ; $79ae: $ff
	rst $38                                          ; $79af: $ff
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff

jr_01e_79b4:
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff

jr_01e_79b7:
	rst $38                                          ; $79b7: $ff
	rst $38                                          ; $79b8: $ff
	rst $38                                          ; $79b9: $ff
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff
	rst $38                                          ; $79cb: $ff
	rst $38                                          ; $79cc: $ff
	rst $38                                          ; $79cd: $ff
	rst $38                                          ; $79ce: $ff
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	rst $38                                          ; $79d4: $ff
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	rst $38                                          ; $79d7: $ff
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff

jr_01e_79da:
	rst $38                                          ; $79da: $ff
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst $38                                          ; $79df: $ff
	rst $38                                          ; $79e0: $ff
	rst $38                                          ; $79e1: $ff
	rst $38                                          ; $79e2: $ff
	rst $38                                          ; $79e3: $ff
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	rst $38                                          ; $79e6: $ff
	rst $38                                          ; $79e7: $ff
	rst $38                                          ; $79e8: $ff
	rst $38                                          ; $79e9: $ff
	rst $38                                          ; $79ea: $ff
	rst $38                                          ; $79eb: $ff
	rst $38                                          ; $79ec: $ff
	rst $38                                          ; $79ed: $ff
	rst $38                                          ; $79ee: $ff
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	rst $38                                          ; $79f5: $ff
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff
	rst $38                                          ; $7a15: $ff
	rst $38                                          ; $7a16: $ff
	rst $38                                          ; $7a17: $ff
	rst $38                                          ; $7a18: $ff
	rst $38                                          ; $7a19: $ff
	rst $38                                          ; $7a1a: $ff
	rst $38                                          ; $7a1b: $ff
	rst $38                                          ; $7a1c: $ff
	rst $38                                          ; $7a1d: $ff
	rst $38                                          ; $7a1e: $ff
	rst $38                                          ; $7a1f: $ff
	rst $38                                          ; $7a20: $ff
	rst $38                                          ; $7a21: $ff
	rst $38                                          ; $7a22: $ff
	rst $38                                          ; $7a23: $ff
	rst $38                                          ; $7a24: $ff
	rst $38                                          ; $7a25: $ff
	rst $38                                          ; $7a26: $ff
	rst $38                                          ; $7a27: $ff
	rst $38                                          ; $7a28: $ff
	rst $38                                          ; $7a29: $ff
	rst $38                                          ; $7a2a: $ff
	rst $38                                          ; $7a2b: $ff
	rst $38                                          ; $7a2c: $ff
	rst $38                                          ; $7a2d: $ff
	rst $38                                          ; $7a2e: $ff
	rst $38                                          ; $7a2f: $ff
	rst $38                                          ; $7a30: $ff
	rst $38                                          ; $7a31: $ff
	rst $38                                          ; $7a32: $ff
	rst $38                                          ; $7a33: $ff
	rst $38                                          ; $7a34: $ff
	rst $38                                          ; $7a35: $ff
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	rst $38                                          ; $7a38: $ff
	rst $38                                          ; $7a39: $ff
	rst $38                                          ; $7a3a: $ff
	rst $38                                          ; $7a3b: $ff
	rst $38                                          ; $7a3c: $ff
	rst $38                                          ; $7a3d: $ff
	rst $38                                          ; $7a3e: $ff
	rst $38                                          ; $7a3f: $ff
	rst $38                                          ; $7a40: $ff
	rst $38                                          ; $7a41: $ff
	rst $38                                          ; $7a42: $ff
	rst $38                                          ; $7a43: $ff
	rst $38                                          ; $7a44: $ff
	rst $38                                          ; $7a45: $ff
	rst $38                                          ; $7a46: $ff
	rst $38                                          ; $7a47: $ff
	rst $38                                          ; $7a48: $ff
	rst $38                                          ; $7a49: $ff
	rst $38                                          ; $7a4a: $ff
	rst $38                                          ; $7a4b: $ff
	rst $38                                          ; $7a4c: $ff
	rst $38                                          ; $7a4d: $ff
	rst $38                                          ; $7a4e: $ff
	rst $38                                          ; $7a4f: $ff
	rst $38                                          ; $7a50: $ff
	rst $38                                          ; $7a51: $ff
	rst $38                                          ; $7a52: $ff
	rst $38                                          ; $7a53: $ff
	rst $38                                          ; $7a54: $ff
	rst $38                                          ; $7a55: $ff
	rst $38                                          ; $7a56: $ff
	rst $38                                          ; $7a57: $ff
	rst $38                                          ; $7a58: $ff
	rst $38                                          ; $7a59: $ff
	rst $38                                          ; $7a5a: $ff
	rst $38                                          ; $7a5b: $ff
	rst $38                                          ; $7a5c: $ff
	rst $38                                          ; $7a5d: $ff
	rst $38                                          ; $7a5e: $ff
	rst $38                                          ; $7a5f: $ff
	rst $38                                          ; $7a60: $ff
	rst $38                                          ; $7a61: $ff
	rst $38                                          ; $7a62: $ff
	rst $38                                          ; $7a63: $ff
	rst $38                                          ; $7a64: $ff
	rst $38                                          ; $7a65: $ff
	rst $38                                          ; $7a66: $ff
	rst $38                                          ; $7a67: $ff
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	rst $38                                          ; $7a6a: $ff
	rst $38                                          ; $7a6b: $ff
	rst $38                                          ; $7a6c: $ff
	rst $38                                          ; $7a6d: $ff
	rst $38                                          ; $7a6e: $ff
	rst $38                                          ; $7a6f: $ff
	rst $38                                          ; $7a70: $ff
	rst $38                                          ; $7a71: $ff
	rst $38                                          ; $7a72: $ff
	rst $38                                          ; $7a73: $ff
	rst $38                                          ; $7a74: $ff
	rst $38                                          ; $7a75: $ff
	rst $38                                          ; $7a76: $ff
	rst $38                                          ; $7a77: $ff
	rst $38                                          ; $7a78: $ff
	rst $38                                          ; $7a79: $ff
	rst $38                                          ; $7a7a: $ff
	rst $38                                          ; $7a7b: $ff
	rst $38                                          ; $7a7c: $ff
	rst $38                                          ; $7a7d: $ff
	rst $38                                          ; $7a7e: $ff
	rst $38                                          ; $7a7f: $ff
	rst $38                                          ; $7a80: $ff
	rst $38                                          ; $7a81: $ff
	rst $38                                          ; $7a82: $ff
	rst $38                                          ; $7a83: $ff
	rst $38                                          ; $7a84: $ff
	rst $38                                          ; $7a85: $ff
	rst $38                                          ; $7a86: $ff
	rst $38                                          ; $7a87: $ff
	rst $38                                          ; $7a88: $ff
	rst $38                                          ; $7a89: $ff
	rst $38                                          ; $7a8a: $ff
	rst $38                                          ; $7a8b: $ff
	rst $38                                          ; $7a8c: $ff
	rst $38                                          ; $7a8d: $ff
	rst $38                                          ; $7a8e: $ff
	rst $38                                          ; $7a8f: $ff
	rst $38                                          ; $7a90: $ff
	rst $38                                          ; $7a91: $ff
	rst $38                                          ; $7a92: $ff
	rst $38                                          ; $7a93: $ff
	rst $38                                          ; $7a94: $ff
	rst $38                                          ; $7a95: $ff
	rst $38                                          ; $7a96: $ff
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	rst $38                                          ; $7a99: $ff
	rst $38                                          ; $7a9a: $ff
	rst $38                                          ; $7a9b: $ff
	rst $38                                          ; $7a9c: $ff
	rst $38                                          ; $7a9d: $ff
	rst $38                                          ; $7a9e: $ff
	rst $38                                          ; $7a9f: $ff
	rst $38                                          ; $7aa0: $ff
	rst $38                                          ; $7aa1: $ff
	rst $38                                          ; $7aa2: $ff
	rst $38                                          ; $7aa3: $ff
	rst $38                                          ; $7aa4: $ff
	rst $38                                          ; $7aa5: $ff
	rst $38                                          ; $7aa6: $ff
	rst $38                                          ; $7aa7: $ff
	rst $38                                          ; $7aa8: $ff
	rst $38                                          ; $7aa9: $ff
	rst $38                                          ; $7aaa: $ff
	rst $38                                          ; $7aab: $ff
	rst $38                                          ; $7aac: $ff
	rst $38                                          ; $7aad: $ff
	rst $38                                          ; $7aae: $ff
	rst $38                                          ; $7aaf: $ff
	rst $38                                          ; $7ab0: $ff
	rst $38                                          ; $7ab1: $ff
	rst $38                                          ; $7ab2: $ff
	rst $38                                          ; $7ab3: $ff
	rst $38                                          ; $7ab4: $ff
	rst $38                                          ; $7ab5: $ff

Jump_01e_7ab6:
	rst $38                                          ; $7ab6: $ff
	rst $38                                          ; $7ab7: $ff
	rst $38                                          ; $7ab8: $ff
	rst $38                                          ; $7ab9: $ff
	rst $38                                          ; $7aba: $ff
	rst $38                                          ; $7abb: $ff
	rst $38                                          ; $7abc: $ff
	rst $38                                          ; $7abd: $ff
	rst $38                                          ; $7abe: $ff
	rst $38                                          ; $7abf: $ff
	rst $38                                          ; $7ac0: $ff
	rst $38                                          ; $7ac1: $ff
	rst $38                                          ; $7ac2: $ff
	rst $38                                          ; $7ac3: $ff
	rst $38                                          ; $7ac4: $ff
	rst $38                                          ; $7ac5: $ff
	rst $38                                          ; $7ac6: $ff
	rst $38                                          ; $7ac7: $ff
	rst $38                                          ; $7ac8: $ff
	rst $38                                          ; $7ac9: $ff
	rst $38                                          ; $7aca: $ff
	rst $38                                          ; $7acb: $ff
	rst $38                                          ; $7acc: $ff
	rst $38                                          ; $7acd: $ff
	rst $38                                          ; $7ace: $ff
	rst $38                                          ; $7acf: $ff
	rst $38                                          ; $7ad0: $ff
	rst $38                                          ; $7ad1: $ff
	rst $38                                          ; $7ad2: $ff
	rst $38                                          ; $7ad3: $ff
	rst $38                                          ; $7ad4: $ff
	rst $38                                          ; $7ad5: $ff
	rst $38                                          ; $7ad6: $ff
	rst $38                                          ; $7ad7: $ff
	rst $38                                          ; $7ad8: $ff
	rst $38                                          ; $7ad9: $ff
	rst $38                                          ; $7ada: $ff
	rst $38                                          ; $7adb: $ff
	rst $38                                          ; $7adc: $ff
	rst $38                                          ; $7add: $ff
	rst $38                                          ; $7ade: $ff
	rst $38                                          ; $7adf: $ff
	rst $38                                          ; $7ae0: $ff
	rst $38                                          ; $7ae1: $ff
	rst $38                                          ; $7ae2: $ff
	rst $38                                          ; $7ae3: $ff
	rst $38                                          ; $7ae4: $ff
	rst $38                                          ; $7ae5: $ff
	rst $38                                          ; $7ae6: $ff
	rst $38                                          ; $7ae7: $ff
	rst $38                                          ; $7ae8: $ff
	rst $38                                          ; $7ae9: $ff
	rst $38                                          ; $7aea: $ff
	rst $38                                          ; $7aeb: $ff
	rst $38                                          ; $7aec: $ff
	rst $38                                          ; $7aed: $ff
	rst $38                                          ; $7aee: $ff
	rst $38                                          ; $7aef: $ff
	rst $38                                          ; $7af0: $ff
	rst $38                                          ; $7af1: $ff
	rst $38                                          ; $7af2: $ff
	rst $38                                          ; $7af3: $ff
	rst $38                                          ; $7af4: $ff
	rst $38                                          ; $7af5: $ff
	rst $38                                          ; $7af6: $ff
	rst $38                                          ; $7af7: $ff
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	rst $38                                          ; $7afe: $ff
	rst $38                                          ; $7aff: $ff
	rst $38                                          ; $7b00: $ff
	rst $38                                          ; $7b01: $ff
	rst $38                                          ; $7b02: $ff
	rst $38                                          ; $7b03: $ff
	rst $38                                          ; $7b04: $ff
	rst $38                                          ; $7b05: $ff
	rst $38                                          ; $7b06: $ff
	rst $38                                          ; $7b07: $ff
	rst $38                                          ; $7b08: $ff
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	rst $38                                          ; $7b0b: $ff
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	rst $38                                          ; $7b0e: $ff
	rst $38                                          ; $7b0f: $ff
	rst $38                                          ; $7b10: $ff
	rst $38                                          ; $7b11: $ff
	rst $38                                          ; $7b12: $ff
	rst $38                                          ; $7b13: $ff
	rst $38                                          ; $7b14: $ff
	rst $38                                          ; $7b15: $ff
	rst $38                                          ; $7b16: $ff
	rst $38                                          ; $7b17: $ff
	rst $38                                          ; $7b18: $ff
	rst $38                                          ; $7b19: $ff
	rst $38                                          ; $7b1a: $ff
	rst $38                                          ; $7b1b: $ff
	rst $38                                          ; $7b1c: $ff
	rst $38                                          ; $7b1d: $ff
	rst $38                                          ; $7b1e: $ff
	rst $38                                          ; $7b1f: $ff
	rst $38                                          ; $7b20: $ff
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	rst $38                                          ; $7b25: $ff
	rst $38                                          ; $7b26: $ff
	rst $38                                          ; $7b27: $ff
	rst $38                                          ; $7b28: $ff
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	rst $38                                          ; $7b2d: $ff
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rst $38                                          ; $7b30: $ff
	rst $38                                          ; $7b31: $ff
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	rst $38                                          ; $7b34: $ff
	rst $38                                          ; $7b35: $ff
	rst $38                                          ; $7b36: $ff
	rst $38                                          ; $7b37: $ff
	rst $38                                          ; $7b38: $ff
	rst $38                                          ; $7b39: $ff
	rst $38                                          ; $7b3a: $ff
	rst $38                                          ; $7b3b: $ff
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
	rst $38                                          ; $7b3f: $ff
	rst $38                                          ; $7b40: $ff
	rst $38                                          ; $7b41: $ff
	rst $38                                          ; $7b42: $ff
	rst $38                                          ; $7b43: $ff
	rst $38                                          ; $7b44: $ff
	rst $38                                          ; $7b45: $ff
	rst $38                                          ; $7b46: $ff
	rst $38                                          ; $7b47: $ff
	rst $38                                          ; $7b48: $ff
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	rst $38                                          ; $7b4b: $ff
	rst $38                                          ; $7b4c: $ff
	rst $38                                          ; $7b4d: $ff
	rst $38                                          ; $7b4e: $ff
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	rst $38                                          ; $7b51: $ff
	rst $38                                          ; $7b52: $ff
	rst $38                                          ; $7b53: $ff
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
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

Call_01e_7f80:
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
