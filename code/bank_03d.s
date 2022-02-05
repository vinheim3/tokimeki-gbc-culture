; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

	add sp, $0b                                      ; $4000: $e8 $0b
	ld a, [$d8fe]                                    ; $4002: $fa $fe $d8
	ldh [c], a                                       ; $4005: $e2
	cp $10                                           ; $4006: $fe $10
	db $10                                           ; $4008: $10
	di                                               ; $4009: $f3
	ei                                               ; $400a: $fb
	ei                                               ; $400b: $fb
	rst SubAFromBC                                          ; $400c: $e7
	ret nc                                           ; $400d: $d0

	ld h, b                                          ; $400e: $60
	ld h, c                                          ; $400f: $61
	nop                                              ; $4010: $00
	rst $38                                          ; $4011: $ff
	ld c, $0f                                        ; $4012: $0e $0f

jr_03d_4014:
	ld [hl], l                                       ; $4014: $75
	dec c                                            ; $4015: $0d
	rst SubAFromDE                                          ; $4016: $df
	rst $38                                          ; $4017: $ff
	ld a, h                                          ; $4018: $7c
	adc c                                            ; $4019: $89
	sub l                                            ; $401a: $95
	cp $3c                                           ; $401b: $fe $3c
	ld a, a                                          ; $401d: $7f
	cp $00                                           ; $401e: $fe $00
	rst $38                                          ; $4020: $ff
	ld a, a                                          ; $4021: $7f
	jr nc, @+$1a                                     ; $4022: $30 $18

	rla                                              ; $4024: $17
	halt                                             ; $4025: $76
	ld l, [hl]                                       ; $4026: $6e
	add b                                            ; $4027: $80
	ld sp, hl                                        ; $4028: $f9
	rra                                              ; $4029: $1f
	rra                                              ; $402a: $1f
	ccf                                              ; $402b: $3f
	ld h, c                                          ; $402c: $61
	ld b, e                                          ; $402d: $43
	and $fe                                          ; $402e: $e6 $fe
	cp $7c                                           ; $4030: $fe $7c
	ld a, a                                          ; $4032: $7f
	cp a                                             ; $4033: $bf
	ret nz                                           ; $4034: $c0

	ret nz                                           ; $4035: $c0

	and d                                            ; $4036: $a2
	and d                                            ; $4037: $a2
	call nc, $ecdc                                   ; $4038: $d4 $dc $ec
	cp $f1                                           ; $403b: $fe $f1
	ld hl, sp-$02                                    ; $403d: $f8 $fe
	cp a                                             ; $403f: $bf
	rst AddAOntoHL                                          ; $4040: $ef
	rst AddAOntoHL                                          ; $4041: $ef
	di                                               ; $4042: $f3
	ldh a, [rLCDC]                                   ; $4043: $f0 $40
	ld h, b                                          ; $4045: $60
	ld h, b                                          ; $4046: $60
	sub [hl]                                         ; $4047: $96
	ld a, b                                          ; $4048: $78
	ld a, [hl]                                       ; $4049: $7e
	ld [hl], a                                       ; $404a: $77
	ret nz                                           ; $404b: $c0

	ret nz                                           ; $404c: $c0

	rst $38                                          ; $404d: $ff
	ld a, [hl]                                       ; $404e: $7e
	jr jr_03d_4014                                   ; $404f: $18 $c3

	ld h, d                                          ; $4051: $62
	add sp, $7c                                      ; $4052: $e8 $7c
	ld l, [hl]                                       ; $4054: $6e
	sbc [hl]                                         ; $4055: $9e
	inc a                                            ; $4056: $3c
	ei                                               ; $4057: $fb
	sbc l                                            ; $4058: $9d
	ld [bc], a                                       ; $4059: $02
	dec d                                            ; $405a: $15
	db $db                                           ; $405b: $db

Call_03d_405c:
	rst $38                                          ; $405c: $ff
	sbc l                                            ; $405d: $9d
	db $fd                                           ; $405e: $fd
	ld [$3477], a                                    ; $405f: $ea $77 $34
	sbc e                                            ; $4062: $9b
	ld a, [bc]                                       ; $4063: $0a
	ld d, l                                          ; $4064: $55
	xor d                                            ; $4065: $aa
	ld d, l                                          ; $4066: $55
	ld [hl], l                                       ; $4067: $75
	and c                                            ; $4068: $a1
	adc e                                            ; $4069: $8b
	push af                                          ; $406a: $f5
	xor d                                            ; $406b: $aa
	ld d, l                                          ; $406c: $55
	xor d                                            ; $406d: $aa
	inc bc                                           ; $406e: $03
	ld c, $1e                                        ; $406f: $0e $1e
	ld a, $bc                                        ; $4071: $3e $bc
	ld a, h                                          ; $4073: $7c
	xor h                                            ; $4074: $ac
	ld e, h                                          ; $4075: $5c
	cp $f2                                           ; $4076: $fe $f2
	ldh [c], a                                       ; $4078: $e2
	call nz, $bc7c                                   ; $4079: $c4 $7c $bc
	ld e, h                                          ; $407c: $5c
	xor b                                            ; $407d: $a8
	ld [hl], l                                       ; $407e: $75
	ld [hl+], a                                      ; $407f: $22
	sbc e                                            ; $4080: $9b
	dec b                                            ; $4081: $05
	inc h                                            ; $4082: $24
	ld b, $16                                        ; $4083: $06 $16
	call c, $9c02                                    ; $4085: $dc $02 $9c
	inc bc                                           ; $4088: $03
	ld hl, $7a21                                     ; $4089: $21 $21 $7a
	sbc $9e                                          ; $408c: $de $9e
	nop                                              ; $408e: $00
	sbc $a0                                          ; $408f: $de $a0
	halt                                             ; $4091: $76
	ldh [c], a                                       ; $4092: $e2
	db $dd                                           ; $4093: $dd
	ld b, b                                          ; $4094: $40
	ld l, e                                          ; $4095: $6b
	rra                                              ; $4096: $1f
	ld a, c                                          ; $4097: $79
	sbc $fa                                          ; $4098: $de $fa
	sub a                                            ; $409a: $97
	jr nz, jr_03d_40be                               ; $409b: $20 $21

	ld hl, $a323                                     ; $409d: $21 $23 $a3
	and a                                            ; $40a0: $a7
	and a                                            ; $40a1: $a7
	or a                                             ; $40a2: $b7
	reti                                             ; $40a3: $d9


	ld b, b                                          ; $40a4: $40
	call c, $9c80                                    ; $40a5: $dc $80 $9c
	ld [bc], a                                       ; $40a8: $02
	ld b, $06                                        ; $40a9: $06 $06
	ld e, d                                          ; $40ab: $5a
	ret z                                            ; $40ac: $c8

	ld a, a                                          ; $40ad: $7f
	cp c                                             ; $40ae: $b9
	sbc h                                            ; $40af: $9c
	ld [bc], a                                       ; $40b0: $02
	add [hl]                                         ; $40b1: $86
	add [hl]                                         ; $40b2: $86
	db $dd                                           ; $40b3: $dd
	ld bc, $5876                                     ; $40b4: $01 $76 $58
	sbc $8f                                          ; $40b7: $de $8f
	sbc $87                                          ; $40b9: $de $87
	sbc l                                            ; $40bb: $9d
	add e                                            ; $40bc: $83
	inc hl                                           ; $40bd: $23

jr_03d_40be:
	ld [hl], b                                       ; $40be: $70
	inc [hl]                                         ; $40bf: $34
	cp $93                                           ; $40c0: $fe $93
	ld a, a                                          ; $40c2: $7f
	jr jr_03d_40cb                                   ; $40c3: $18 $06

	add c                                            ; $40c5: $81
	cp $80                                           ; $40c6: $fe $80
	sbc a                                            ; $40c8: $9f
	rst $38                                          ; $40c9: $ff
	ccf                                              ; $40ca: $3f

jr_03d_40cb:
	rlca                                             ; $40cb: $07
	ld bc, $6680                                     ; $40cc: $01 $80 $66
	cpl                                              ; $40cf: $2f
	ld a, a                                          ; $40d0: $7f
	rst FarCall                                          ; $40d1: $f7
	sbc l                                            ; $40d2: $9d
	ret nz                                           ; $40d3: $c0

	ld b, b                                          ; $40d4: $40
	ld h, b                                          ; $40d5: $60
	sub b                                            ; $40d6: $90
	sub a                                            ; $40d7: $97
	ld d, b                                          ; $40d8: $50
	ld d, d                                          ; $40d9: $52
	ld d, b                                          ; $40da: $50
	ld [hl], c                                       ; $40db: $71
	rst $38                                          ; $40dc: $ff
	pop af                                           ; $40dd: $f1
	pop de                                           ; $40de: $d1
	cp $de                                           ; $40df: $fe $de
	sbc $dd                                          ; $40e1: $de $dd
	cp $9c                                           ; $40e3: $fe $9c
	db $fc                                           ; $40e5: $fc
	rst GetHLinHL                                          ; $40e6: $cf
	rst SubAFromHL                                          ; $40e7: $d7
	call c, $dff7                                    ; $40e8: $dc $f7 $df
	rra                                              ; $40eb: $1f
	add h                                            ; $40ec: $84
	adc b                                            ; $40ed: $88
	ret z                                            ; $40ee: $c8

	rst GetHLinHL                                          ; $40ef: $cf
	adc a                                            ; $40f0: $8f
	sbc h                                            ; $40f1: $9c
	sbc h                                            ; $40f2: $9c
	db $f4                                           ; $40f3: $f4

jr_03d_40f4:
	db $fc                                           ; $40f4: $fc
	sbc $ef                                          ; $40f5: $de $ef
	rst SubAFromBC                                          ; $40f7: $e7
	db $ed                                           ; $40f8: $ed
	adc d                                            ; $40f9: $8a
	adc e                                            ; $40fa: $8b
	ei                                               ; $40fb: $fb
	cp $3f                                           ; $40fc: $fe $3f
	rra                                              ; $40fe: $1f
	rst AddAOntoHL                                          ; $40ff: $ef
	db $e3                                           ; $4100: $e3
	ld h, c                                          ; $4101: $61
	ld h, b                                          ; $4102: $60
	nop                                              ; $4103: $00
	add e                                            ; $4104: $83
	sub c                                            ; $4105: $91
	add b                                            ; $4106: $80
	rst $38                                          ; $4107: $ff
	ld a, e                                          ; $4108: $7b
	or [hl]                                          ; $4109: $b6
	sbc h                                            ; $410a: $9c
	cp $7e                                           ; $410b: $fe $7e

jr_03d_410d:
	rrca                                             ; $410d: $0f
	db $dd                                           ; $410e: $dd
	rst $38                                          ; $410f: $ff
	sbc b                                            ; $4110: $98
	ccf                                              ; $4111: $3f
	jr z, jr_03d_40f4                                ; $4112: $28 $e0

	ldh [$f6], a                                     ; $4114: $e0 $f6
	db $fd                                           ; $4116: $fd
	ld c, $79                                        ; $4117: $0e $79
	ld e, e                                          ; $4119: $5b
	sbc e                                            ; $411a: $9b
	jr nc, jr_03d_410d                               ; $411b: $30 $f0

	ld hl, sp-$04                                    ; $411d: $f8 $fc
	sbc $fd                                          ; $411f: $de $fd
	ld a, h                                          ; $4121: $7c
	ld d, d                                          ; $4122: $52
	sbc c                                            ; $4123: $99
	rlca                                             ; $4124: $07
	add b                                            ; $4125: $80
	ld a, a                                          ; $4126: $7f
	ld a, a                                          ; $4127: $7f
	ldh [$c0], a                                     ; $4128: $e0 $c0
	ld a, d                                          ; $412a: $7a
	or l                                             ; $412b: $b5
	ld a, e                                          ; $412c: $7b
	sbc b                                            ; $412d: $98
	rst SubAFromDE                                          ; $412e: $df
	rst $38                                          ; $412f: $ff
	rst SubAFromDE                                          ; $4130: $df
	or b                                             ; $4131: $b0
	ld a, a                                          ; $4132: $7f
	ld hl, sp+$7b                                    ; $4133: $f8 $7b
	adc e                                            ; $4135: $8b
	sbc [hl]                                         ; $4136: $9e
	db $10                                           ; $4137: $10
	sbc $c0                                          ; $4138: $de $c0
	halt                                             ; $413a: $76
	adc l                                            ; $413b: $8d
	sbc d                                            ; $413c: $9a
	ldh [$3c], a                                     ; $413d: $e0 $3c
	nop                                              ; $413f: $00
	rst $38                                          ; $4140: $ff
	inc bc                                           ; $4141: $03
	ld [hl], l                                       ; $4142: $75
	ld d, $6a                                        ; $4143: $16 $6a
	add hl, sp                                       ; $4145: $39
	sbc [hl]                                         ; $4146: $9e
	ld a, a                                          ; $4147: $7f
	dec a                                            ; $4148: $3d
	nop                                              ; $4149: $00
	rst SubAFromDE                                          ; $414a: $df
	inc sp                                           ; $414b: $33
	sbc [hl]                                         ; $414c: $9e
	inc [hl]                                         ; $414d: $34
	sbc $44                                          ; $414e: $de $44
	rst SubAFromDE                                          ; $4150: $df
	inc sp                                           ; $4151: $33
	sub e                                            ; $4152: $93
	ld [hl], $66                                     ; $4153: $36 $66
	inc sp                                           ; $4155: $33
	inc sp                                           ; $4156: $33
	ld b, h                                          ; $4157: $44
	ld b, h                                          ; $4158: $44
	ld b, e                                          ; $4159: $43
	inc sp                                           ; $415a: $33
	inc sp                                           ; $415b: $33

jr_03d_415c:
	ld b, a                                          ; $415c: $47
	ld [hl], e                                       ; $415d: $73
	ld h, [hl]                                       ; $415e: $66
	ld [hl], a                                       ; $415f: $77
	ld hl, sp-$21                                    ; $4160: $f8 $df
	ld b, h                                          ; $4162: $44
	sbc b                                            ; $4163: $98
	ld b, l                                          ; $4164: $45
	ld d, l                                          ; $4165: $55
	ld b, h                                          ; $4166: $44
	ld d, [hl]                                       ; $4167: $56
	ld b, h                                          ; $4168: $44
	ld b, h                                          ; $4169: $44
	ld d, e                                          ; $416a: $53
	ld a, e                                          ; $416b: $7b
	ldh [$9b], a                                     ; $416c: $e0 $9b
	ld b, e                                          ; $416e: $43
	scf                                              ; $416f: $37
	ld [hl], l                                       ; $4170: $75
	ld d, l                                          ; $4171: $55
	ld a, e                                          ; $4172: $7b
	pop af                                           ; $4173: $f1
	sbc [hl]                                         ; $4174: $9e
	dec [hl]                                         ; $4175: $35
	ld [hl], a                                       ; $4176: $77
	rst SubAFromDE                                          ; $4177: $df
	sbc e                                            ; $4178: $9b
	dec [hl]                                         ; $4179: $35
	ld d, l                                          ; $417a: $55
	ld b, h                                          ; $417b: $44
	ld b, e                                          ; $417c: $43
	ld a, e                                          ; $417d: $7b
	or $9a                                           ; $417e: $f6 $9a
	ld b, a                                          ; $4180: $47
	ld [hl], a                                       ; $4181: $77
	ld [hl], h                                       ; $4182: $74
	ld b, h                                          ; $4183: $44
	ld b, h                                          ; $4184: $44
	ld c, d                                          ; $4185: $4a
	add e                                            ; $4186: $83
	ld a, [$039e]                                    ; $4187: $fa $9e $03
	push af                                          ; $418a: $f5
	sbc e                                            ; $418b: $9b
	jr jr_03d_415c                                   ; $418c: $18 $ce

	ld l, e                                          ; $418e: $6b
	ld [hl-], a                                      ; $418f: $32
	ei                                               ; $4190: $fb
	sub l                                            ; $4191: $95
	inc b                                            ; $4192: $04
	rrca                                             ; $4193: $0f
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	dec c                                            ; $4196: $0d
	ld a, [hl]                                       ; $4197: $7e
	dec sp                                           ; $4198: $3b
	ld [hl], d                                       ; $4199: $72
	push de                                          ; $419a: $d5
	add sp, -$04                                     ; $419b: $e8 $fc
	sbc h                                            ; $419d: $9c
	inc c                                            ; $419e: $0c
	ld c, $1f                                        ; $419f: $0e $1f
	db $fd                                           ; $41a1: $fd
	sbc h                                            ; $41a2: $9c
	ld bc, $0f07                                     ; $41a3: $01 $07 $0f
	ld [hl], e                                       ; $41a6: $73
	ld hl, sp+$7f                                    ; $41a7: $f8 $7f
	jp z, $0e9d                                      ; $41a9: $ca $9d $0e

	inc c                                            ; $41ac: $0c
	ld a, e                                          ; $41ad: $7b
	ldh a, [c]                                       ; $41ae: $f2
	sbc [hl]                                         ; $41af: $9e
	rra                                              ; $41b0: $1f
	db $dd                                           ; $41b1: $dd
	rst $38                                          ; $41b2: $ff
	rst $38                                          ; $41b3: $ff
	sub a                                            ; $41b4: $97
	rrca                                             ; $41b5: $0f
	ld a, h                                          ; $41b6: $7c
	ldh [hLCDCIntHandlerIdx], a                                     ; $41b7: $e0 $81
	ld a, [bc]                                       ; $41b9: $0a
	ld d, a                                          ; $41ba: $57
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	db $db                                           ; $41bd: $db
	rst $38                                          ; $41be: $ff
	sbc c                                            ; $41bf: $99
	nop                                              ; $41c0: $00
	ccf                                              ; $41c1: $3f
	ldh [rP1], a                                     ; $41c2: $e0 $00
	ld a, [bc]                                       ; $41c4: $0a
	ld d, l                                          ; $41c5: $55
	ld [hl], a                                       ; $41c6: $77
	add sp, -$62                                     ; $41c7: $e8 $9e
	db $fc                                           ; $41c9: $fc
	ld l, a                                          ; $41ca: $6f
	ldh a, [$98]                                     ; $41cb: $f0 $98
	ldh a, [rAUD3LEN]                                ; $41cd: $f0 $1b
	inc bc                                           ; $41cf: $03
	adc d                                            ; $41d0: $8a
	rst SubAFromDE                                          ; $41d1: $df
	ld a, [$fef0]                                    ; $41d2: $fa $f0 $fe
	sbc [hl]                                         ; $41d5: $9e
	add b                                            ; $41d6: $80
	ld [hl], a                                       ; $41d7: $77
	xor $7b                                          ; $41d8: $ee $7b
	ld sp, hl                                        ; $41da: $f9
	sub d                                            ; $41db: $92
	ld a, h                                          ; $41dc: $7c
	dec bc                                           ; $41dd: $0b
	ld [hl], l                                       ; $41de: $75
	rst $38                                          ; $41df: $ff
	ld a, a                                          ; $41e0: $7f
	db $10                                           ; $41e1: $10
	ld [$0707], sp                                   ; $41e2: $08 $07 $07
	dec e                                            ; $41e5: $1d
	or e                                             ; $41e6: $b3
	rst AddAOntoHL                                          ; $41e7: $ef
	ld a, a                                          ; $41e8: $7f
	ei                                               ; $41e9: $fb
	sub l                                            ; $41ea: $95
	add b                                            ; $41eb: $80
	rst JumpTable                                          ; $41ec: $c7
	ld h, b                                          ; $41ed: $60
	add b                                            ; $41ee: $80
	ld bc, $6807                                     ; $41ef: $01 $07 $68
	ld hl, sp-$0f                                    ; $41f2: $f8 $f1
	rst AddAOntoHL                                          ; $41f4: $ef
	db $fd                                           ; $41f5: $fd
	sbc b                                            ; $41f6: $98
	add h                                            ; $41f7: $84
	ldh a, [$f8]                                     ; $41f8: $f0 $f8
	ldh a, [rAUD4LEN]                                ; $41fa: $f0 $20
	ret nz                                           ; $41fc: $c0

	add b                                            ; $41fd: $80
	ld a, e                                          ; $41fe: $7b
	jp hl                                            ; $41ff: $e9


	sbc l                                            ; $4200: $9d
	nop                                              ; $4201: $00
	dec b                                            ; $4202: $05
	ld a, [$0296]                                    ; $4203: $fa $96 $02
	nop                                              ; $4206: $00
	jr nz, jr_03d_421a                               ; $4207: $20 $11

	adc h                                            ; $4209: $8c
	ld b, $32                                        ; $420a: $06 $32
	dec b                                            ; $420c: $05
	ld b, a                                          ; $420d: $47
	db $fc                                           ; $420e: $fc
	sbc l                                            ; $420f: $9d
	ld bc, $7b03                                     ; $4210: $01 $03 $7b
	ld c, b                                          ; $4213: $48
	rst SubAFromDE                                          ; $4214: $df
	add b                                            ; $4215: $80
	sbc e                                            ; $4216: $9b
	ldh [$b8], a                                     ; $4217: $e0 $b8
	db $ed                                           ; $4219: $ed

jr_03d_421a:
	add $fc                                          ; $421a: $c6 $fc
	rst SubAFromDE                                          ; $421c: $df
	ret nz                                           ; $421d: $c0

	ld a, a                                          ; $421e: $7f
	adc e                                            ; $421f: $8b
	ld a, a                                          ; $4220: $7f
	db $eb                                           ; $4221: $eb
	rst $38                                          ; $4222: $ff

Call_03d_4223:
	sbc h                                            ; $4223: $9c
	add hl, bc                                       ; $4224: $09
	ld b, $4d                                        ; $4225: $06 $4d
	ld sp, hl                                        ; $4227: $f9
	sbc [hl]                                         ; $4228: $9e
	add d                                            ; $4229: $82
	sbc $c0                                          ; $422a: $de $c0
	sbc d                                            ; $422c: $9a
	db $e4                                           ; $422d: $e4
	ldh a, [c]                                       ; $422e: $f2
	db $fd                                           ; $422f: $fd
	di                                               ; $4230: $f3
	ld b, b                                          ; $4231: $40
	db $db                                           ; $4232: $db
	ret nz                                           ; $4233: $c0

	sbc [hl]                                         ; $4234: $9e
	adc $77                                          ; $4235: $ce $77
	dec hl                                           ; $4237: $2b
	sbc e                                            ; $4238: $9b
	jr jr_03d_425f                                   ; $4239: $18 $24

	halt                                             ; $423b: $76
	db $dd                                           ; $423c: $dd
	ei                                               ; $423d: $fb
	ld a, a                                          ; $423e: $7f
	cp a                                             ; $423f: $bf
	rst $38                                          ; $4240: $ff
	sbc c                                            ; $4241: $99
	ld b, b                                          ; $4242: $40
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	adc $3e                                          ; $4245: $ce $3e
	cp l                                             ; $4247: $bd
	ei                                               ; $4248: $fb
	rst SubAFromDE                                          ; $4249: $df
	ret nz                                           ; $424a: $c0

	ld [hl], e                                       ; $424b: $73
	ld a, d                                          ; $424c: $7a
	sbc h                                            ; $424d: $9c
	ld sp, $8441                                     ; $424e: $31 $41 $84
	ld d, d                                          ; $4251: $52
	add sp, -$64                                     ; $4252: $e8 $9c
	ld b, b                                          ; $4254: $40
	pop bc                                           ; $4255: $c1
	pop hl                                           ; $4256: $e1
	ld l, a                                          ; $4257: $6f
	ld h, c                                          ; $4258: $61
	ld a, e                                          ; $4259: $7b
	ldh [$98], a                                     ; $425a: $e0 $98
	inc b                                            ; $425c: $04
	inc c                                            ; $425d: $0c
	db $10                                           ; $425e: $10

jr_03d_425f:
	ld h, c                                          ; $425f: $61
	ld l, $1c                                        ; $4260: $2e $1c
	ld hl, $95fb                                     ; $4262: $21 $fb $95
	ld [$091e], sp                                   ; $4265: $08 $1e $09
	ld b, $02                                        ; $4268: $06 $02
	rrca                                             ; $426a: $0f
	rrca                                             ; $426b: $0f
	rla                                              ; $426c: $17
	ld b, d                                          ; $426d: $42
	ld hl, sp+$73                                    ; $426e: $f8 $73
	adc b                                            ; $4270: $88
	add b                                            ; $4271: $80
	rst $38                                          ; $4272: $ff
	db $fd                                           ; $4273: $fd
	ld bc, $e6e4                                     ; $4274: $01 $e4 $e6
	rst JumpTable                                          ; $4277: $c7
	cp $8c                                           ; $4278: $fe $8c
	rst $38                                          ; $427a: $ff
	ld a, l                                          ; $427b: $7d
	ld a, [$1f0f]                                    ; $427c: $fa $0f $1f
	ccf                                              ; $427f: $3f
	rra                                              ; $4280: $1f
	ld a, a                                          ; $4281: $7f
	rst $38                                          ; $4282: $ff
	rst $38                                          ; $4283: $ff
	db $fd                                           ; $4284: $fd
	ld [$0104], sp                              ; $4285: $08 $04 $01
	rla                                              ; $4288: $17
	inc bc                                           ; $4289: $03
	ld b, a                                          ; $428a: $47
	adc a                                            ; $428b: $8f
	ld c, a                                          ; $428c: $4f
	halt                                             ; $428d: $76
	ei                                               ; $428e: $fb
	cp a                                             ; $428f: $bf
	db $eb                                           ; $4290: $eb
	adc e                                            ; $4291: $8b
	adc a                                            ; $4292: $8f
	cp c                                             ; $4293: $b9
	ld a, b                                          ; $4294: $78
	cp h                                             ; $4295: $bc
	db $ed                                           ; $4296: $ed
	ldh a, [c]                                       ; $4297: $f2
	dec b                                            ; $4298: $05
	adc d                                            ; $4299: $8a
	add l                                            ; $429a: $85
	ld b, b                                          ; $429b: $40
	ld h, l                                          ; $429c: $65
	sbc d                                            ; $429d: $9a
	ldh a, [c]                                       ; $429e: $f2
	db $ed                                           ; $429f: $ed
	jp z, $0205                                      ; $42a0: $ca $05 $02

	add a                                            ; $42a3: $87
	add d                                            ; $42a4: $82
	ld h, l                                          ; $42a5: $65
	reti                                             ; $42a6: $d9


	rst $38                                          ; $42a7: $ff
	sub a                                            ; $42a8: $97
	xor [hl]                                         ; $42a9: $ae
	ld e, l                                          ; $42aa: $5d
	xor d                                            ; $42ab: $aa
	ld e, l                                          ; $42ac: $5d
	xor b                                            ; $42ad: $a8
	ld d, l                                          ; $42ae: $55
	cp d                                             ; $42af: $ba
	ld e, l                                          ; $42b0: $5d
	reti                                             ; $42b1: $d9


	rst $38                                          ; $42b2: $ff
	add a                                            ; $42b3: $87
	jr z, jr_03d_430b                                ; $42b4: $28 $55

	jr z, jr_03d_432d                                ; $42b6: $28 $75

	jr z, jr_03d_430f                                ; $42b8: $28 $55

	cpl                                              ; $42ba: $2f
	ld d, c                                          ; $42bb: $51
	rst SubAFromDE                                          ; $42bc: $df
	xor d                                            ; $42bd: $aa
	ld d, h                                          ; $42be: $54
	xor b                                            ; $42bf: $a8
	ld d, c                                          ; $42c0: $51
	ld a, [hl+]                                      ; $42c1: $2a
	inc b                                            ; $42c2: $04
	db $e4                                           ; $42c3: $e4
	jr nz, jr_03d_431b                               ; $42c4: $20 $55

	xor e                                            ; $42c6: $ab
	ld d, a                                          ; $42c7: $57
	xor [hl]                                         ; $42c8: $ae
	call nc, $18f8                                   ; $42c9: $d4 $f8 $18
	ld a, e                                          ; $42cc: $7b
	sbc d                                            ; $42cd: $9a
	ld a, a                                          ; $42ce: $7f
	ld e, d                                          ; $42cf: $5a
	sbc e                                            ; $42d0: $9b
	ld h, b                                          ; $42d1: $60
	jr jr_03d_42db                                   ; $42d2: $18 $07

	cp $de                                           ; $42d4: $fe $de
	rst $38                                          ; $42d6: $ff
	add b                                            ; $42d7: $80
	cp a                                             ; $42d8: $bf
	ld e, a                                          ; $42d9: $5f
	rla                                              ; $42da: $17

jr_03d_42db:
	inc b                                            ; $42db: $04
	db $ec                                           ; $42dc: $ec
	ldh [$e1], a                                     ; $42dd: $e0 $e1
	jp nz, $c1c4                                     ; $42df: $c2 $c4 $c1

	add b                                            ; $42e2: $80
	add b                                            ; $42e3: $80
	ld [hl], e                                       ; $42e4: $73
	ld a, a                                          ; $42e5: $7f
	cp $7d                                           ; $42e6: $fe $7d
	ld a, e                                          ; $42e8: $7b
	cp $ff                                           ; $42e9: $fe $ff
	and $ec                                          ; $42eb: $e6 $ec
	ld bc, $f776                                     ; $42ed: $01 $76 $f7
	ld a, b                                          ; $42f0: $78
	cp a                                             ; $42f1: $bf
	ldh [rSVBK], a                                   ; $42f2: $e0 $70
	di                                               ; $42f4: $f3
	rst $38                                          ; $42f5: $ff
	rst GetHLinHL                                          ; $42f6: $cf
	sub b                                            ; $42f7: $90
	adc a                                            ; $42f8: $8f
	rst JumpTable                                          ; $42f9: $c7
	rst $38                                          ; $42fa: $ff
	sbc a                                            ; $42fb: $9f
	rrca                                             ; $42fc: $0f
	cp e                                             ; $42fd: $bb
	bit 1, a                                         ; $42fe: $cb $4f
	cp e                                             ; $4300: $bb
	cp l                                             ; $4301: $bd
	xor h                                            ; $4302: $ac
	dec b                                            ; $4303: $05
	call c, $8606                                    ; $4304: $dc $06 $86
	ld a, d                                          ; $4307: $7a
	cp b                                             ; $4308: $b8
	add h                                            ; $4309: $84
	rst $38                                          ; $430a: $ff

jr_03d_430b:
	ld a, [$db3f]                                    ; $430b: $fa $3f $db
	di                                               ; $430e: $f3

jr_03d_430f:
	ei                                               ; $430f: $fb
	db $fd                                           ; $4310: $fd
	rst $38                                          ; $4311: $ff
	jr nz, @-$2b                                     ; $4312: $20 $d3

	ldh a, [c]                                       ; $4314: $f2
	rlca                                             ; $4315: $07
	rrca                                             ; $4316: $0f
	rlca                                             ; $4317: $07
	inc bc                                           ; $4318: $03
	nop                                              ; $4319: $00
	rst $38                                          ; $431a: $ff

jr_03d_431b:
	nop                                              ; $431b: $00
	ld bc, $f1f3                                     ; $431c: $01 $f3 $f1
	ld b, $4f                                        ; $431f: $06 $4f
	rst SubAFromDE                                          ; $4321: $df
	nop                                              ; $4322: $00
	ld a, h                                          ; $4323: $7c
	ld [hl], h                                       ; $4324: $74
	sbc $c0                                          ; $4325: $de $c0
	ld a, a                                          ; $4327: $7f
	rst SubAFromDE                                          ; $4328: $df
	add b                                            ; $4329: $80
	rst $38                                          ; $432a: $ff
	add e                                            ; $432b: $83
	add e                                            ; $432c: $83

jr_03d_432d:
	reti                                             ; $432d: $d9


	pop af                                           ; $432e: $f1
	adc e                                            ; $432f: $8b
	or h                                             ; $4330: $b4
	rst $38                                          ; $4331: $ff
	ld a, a                                          ; $4332: $7f
	rlca                                             ; $4333: $07
	add hl, bc                                       ; $4334: $09
	nop                                              ; $4335: $00
	nop                                              ; $4336: $00
	ld [hl], c                                       ; $4337: $71
	ld a, e                                          ; $4338: $7b
	nop                                              ; $4339: $00
	rst $38                                          ; $433a: $ff
	ld sp, hl                                        ; $433b: $f9
	ldh a, [$d7]                                     ; $433c: $f0 $d7
	rst GetHLinHL                                          ; $433e: $cf
	rst $38                                          ; $433f: $ff
	pop af                                           ; $4340: $f1
	rst AddAOntoHL                                          ; $4341: $ef
	or $de                                           ; $4342: $f6 $de
	rst SubAFromDE                                          ; $4344: $df
	rst AddAOntoHL                                          ; $4345: $ef
	rst $38                                          ; $4346: $ff
	rst GetHLinHL                                          ; $4347: $cf
	adc $80                                          ; $4348: $ce $80
	ret nz                                           ; $434a: $c0

	rst $38                                          ; $434b: $ff
	pop hl                                           ; $434c: $e1
	ldh [$b8], a                                     ; $434d: $e0 $b8
	ld e, l                                          ; $434f: $5d
	ld [hl], e                                       ; $4350: $73
	sbc b                                            ; $4351: $98
	db $e3                                           ; $4352: $e3
	ld a, a                                          ; $4353: $7f
	sbc $a8                                          ; $4354: $de $a8
	rlca                                             ; $4356: $07
	add e                                            ; $4357: $83
	adc l                                            ; $4358: $8d
	ld a, a                                          ; $4359: $7f
	inc e                                            ; $435a: $1c
	rst $38                                          ; $435b: $ff
	ccf                                              ; $435c: $3f
	rra                                              ; $435d: $1f
	rra                                              ; $435e: $1f
	cp e                                             ; $435f: $bb
	or a                                             ; $4360: $b7
	dec c                                            ; $4361: $0d
	cp a                                             ; $4362: $bf
	rst SubAFromDE                                          ; $4363: $df
	or b                                             ; $4364: $b0

jr_03d_4365:
	ret nc                                           ; $4365: $d0

	ldh [$c4], a                                     ; $4366: $e0 $c4
	ret z                                            ; $4368: $c8

	sub b                                            ; $4369: $90
	ldh a, [c]                                       ; $436a: $f2
	ld b, b                                          ; $436b: $40
	rst $38                                          ; $436c: $ff
	rrca                                             ; $436d: $0f
	rrca                                             ; $436e: $0f
	add hl, de                                       ; $436f: $19
	jr nc, jr_03d_432d                               ; $4370: $30 $bb

	rst SubAFromDE                                          ; $4372: $df
	rst $38                                          ; $4373: $ff
	set 7, b                                         ; $4374: $cb $f8
	halt                                             ; $4376: $76
	rlca                                             ; $4377: $07

jr_03d_4378:
	rrca                                             ; $4378: $0f
	ld a, c                                          ; $4379: $79
	push hl                                          ; $437a: $e5
	add b                                            ; $437b: $80
	rst $38                                          ; $437c: $ff
	rlca                                             ; $437d: $07
	adc a                                            ; $437e: $8f

Jump_03d_437f:
	and a                                            ; $437f: $a7
	call z, $9fdb                                    ; $4380: $cc $db $9f
	cp $ff                                           ; $4383: $fe $ff
	ld h, a                                          ; $4385: $67
	sub a                                            ; $4386: $97
	ret nz                                           ; $4387: $c0

	ldh [$e0], a                                     ; $4388: $e0 $e0
	ld h, b                                          ; $438a: $60
	nop                                              ; $438b: $00
	rst $38                                          ; $438c: $ff
	ld hl, sp-$08                                    ; $438d: $f8 $f8
	ld c, d                                          ; $438f: $4a
	ret nz                                           ; $4390: $c0

	ld [hl], h                                       ; $4391: $74
	ret nz                                           ; $4392: $c0

	rst SubAFromBC                                          ; $4393: $e7
	cp $71                                           ; $4394: $fe $71
	ld l, c                                          ; $4396: $69
	rlca                                             ; $4397: $07
	rlca                                             ; $4398: $07
	dec bc                                           ; $4399: $0b
	ccf                                              ; $439a: $3f
	add [hl]                                         ; $439b: $86
	jr @+$01                                         ; $439c: $18 $ff

	adc $c6                                          ; $439e: $ce $c6
	db $f4                                           ; $43a0: $f4
	add sp, -$0e                                     ; $43a1: $e8 $f2
	ld e, h                                          ; $43a3: $5c
	pop bc                                           ; $43a4: $c1
	add b                                            ; $43a5: $80
	jr nz, jr_03d_4378                               ; $43a6: $20 $d0

	inc bc                                           ; $43a8: $03
	rlca                                             ; $43a9: $07
	add hl, bc                                       ; $43aa: $09
	inc hl                                           ; $43ab: $23
	ld e, $1f                                        ; $43ac: $1e $1f
	rra                                              ; $43ae: $1f
	cpl                                              ; $43af: $2f
	ld a, [$fbfe]                                    ; $43b0: $fa $fe $fb
	ld a, e                                          ; $43b3: $7b
	ld [hl], a                                       ; $43b4: $77
	ld a, d                                          ; $43b5: $7a
	or h                                             ; $43b6: $b4
	sbc d                                            ; $43b7: $9a
	db $fd                                           ; $43b8: $fd
	db $fc                                           ; $43b9: $fc
	db $fc                                           ; $43ba: $fc
	db $fd                                           ; $43bb: $fd
	ld sp, hl                                        ; $43bc: $f9
	sbc $ff                                          ; $43bd: $de $ff

jr_03d_43bf:
	sbc d                                            ; $43bf: $9a
	pop af                                           ; $43c0: $f1
	ld hl, sp-$1c                                    ; $43c1: $f8 $e4
	ldh [c], a                                       ; $43c3: $e2
	pop bc                                           ; $43c4: $c1
	sbc $c0                                          ; $43c5: $de $c0
	adc b                                            ; $43c7: $88
	sbc $77                                          ; $43c8: $de $77
	di                                               ; $43ca: $f3
	or e                                             ; $43cb: $b3
	pop hl                                           ; $43cc: $e1
	ldh [$e0], a                                     ; $43cd: $e0 $e0
	and b                                            ; $43cf: $a0
	pop de                                           ; $43d0: $d1
	and d                                            ; $43d1: $a2
	ld d, c                                          ; $43d2: $51
	jr z, jr_03d_4365                                ; $43d3: $28 $90

	ld h, b                                          ; $43d5: $60
	jr nc, jr_03d_43f0                               ; $43d6: $30 $18

	ld l, $5d                                        ; $43d8: $2e $5d
	xor [hl]                                         ; $43da: $ae
	rst SubAFromHL                                          ; $43db: $d7
	ld l, a                                          ; $43dc: $6f
	ld e, a                                          ; $43dd: $5f
	cpl                                              ; $43de: $2f
	ld [hl], c                                       ; $43df: $71
	add h                                            ; $43e0: $84
	sbc $ff                                          ; $43e1: $de $ff
	sbc c                                            ; $43e3: $99
	db $fc                                           ; $43e4: $fc
	xor b                                            ; $43e5: $a8
	ld b, b                                          ; $43e6: $40
	xor d                                            ; $43e7: $aa
	ld d, l                                          ; $43e8: $55
	ld [$ffd7], a                                    ; $43e9: $ea $d7 $ff
	cp $7f                                           ; $43ec: $fe $7f
	ldh a, [$8b]                                     ; $43ee: $f0 $8b

jr_03d_43f0:
	xor d                                            ; $43f0: $aa
	ld d, a                                          ; $43f1: $57
	rst $38                                          ; $43f2: $ff
	rst $38                                          ; $43f3: $ff
	db $f4                                           ; $43f4: $f4
	db $e4                                           ; $43f5: $e4
	ld d, h                                          ; $43f6: $54
	and h                                            ; $43f7: $a4
	inc b                                            ; $43f8: $04
	rrca                                             ; $43f9: $0f
	rra                                              ; $43fa: $1f
	ld sp, hl                                        ; $43fb: $f9
	inc c                                            ; $43fc: $0c
	inc e                                            ; $43fd: $1c
	xor b                                            ; $43fe: $a8

Jump_03d_43ff:
	ld e, h                                          ; $43ff: $5c
	db $fc                                           ; $4400: $fc
	db $fd                                           ; $4401: $fd
	rst $38                                          ; $4402: $ff
	ld sp, hl                                        ; $4403: $f9
	ei                                               ; $4404: $fb
	ld a, l                                          ; $4405: $7d
	xor d                                            ; $4406: $aa
	ei                                               ; $4407: $fb
	rst SubAFromDE                                          ; $4408: $df
	ldh [$80], a                                     ; $4409: $e0 $80
	ld b, c                                          ; $440b: $41
	pop af                                           ; $440c: $f1

jr_03d_440d:
	ld [hl], $1f                                     ; $440d: $36 $1f
	rrca                                             ; $440f: $0f
	rrca                                             ; $4410: $0f
	dec b                                            ; $4411: $05
	rlca                                             ; $4412: $07
	pop bc                                           ; $4413: $c1
	pop af                                           ; $4414: $f1
	halt                                             ; $4415: $76
	ccf                                              ; $4416: $3f
	rra                                              ; $4417: $1f
	rrca                                             ; $4418: $0f
	dec c                                            ; $4419: $0d
	rlca                                             ; $441a: $07
	ldh [$fe], a                                     ; $441b: $e0 $fe
	push hl                                          ; $441d: $e5
	db $fd                                           ; $441e: $fd
	ldh a, [$c2]                                     ; $441f: $f0 $c2
	jr jr_03d_440d                                   ; $4421: $18 $ea

	rra                                              ; $4423: $1f
	ld bc, $0302                                     ; $4424: $01 $02 $03
	rrca                                             ; $4427: $0f
	ccf                                              ; $4428: $3f
	rst $38                                          ; $4429: $ff
	add b                                            ; $442a: $80
	ld [hl], l                                       ; $442b: $75
	xor [hl]                                         ; $442c: $ae
	db $ec                                           ; $442d: $ec
	xor a                                            ; $442e: $af
	sbc l                                            ; $442f: $9d
	dec e                                            ; $4430: $1d
	ld [bc], a                                       ; $4431: $02
	jr nc, jr_03d_43bf                               ; $4432: $30 $8b

	rra                                              ; $4434: $1f
	rra                                              ; $4435: $1f
	ld e, [hl]                                       ; $4436: $5e
	cp $fe                                           ; $4437: $fe $fe
	rst $38                                          ; $4439: $ff
	rst GetHLinHL                                          ; $443a: $cf
	call nz, $f6df                                   ; $443b: $c4 $df $f6
	ld [hl], b                                       ; $443e: $70
	ld [hl], e                                       ; $443f: $73
	pop hl                                           ; $4440: $e1
	call z, $f027                                    ; $4441: $cc $27 $f0
	jr nz, jr_03d_444f                               ; $4444: $20 $09

	rrca                                             ; $4446: $0f
	inc c                                            ; $4447: $0c
	jr jr_03d_447a                                   ; $4448: $18 $30

	add b                                            ; $444a: $80
	ret c                                            ; $444b: $d8

	rrca                                             ; $444c: $0f
	jr c, @+$3f                                      ; $444d: $38 $3d

jr_03d_444f:
	adc $d3                                          ; $444f: $ce $d3
	rrca                                             ; $4451: $0f
	rst JumpTable                                          ; $4452: $c7
	dec [hl]                                         ; $4453: $35
	rlca                                             ; $4454: $07
	rst JumpTable                                          ; $4455: $c7
	jp $2831                                         ; $4456: $c3 $31 $28


jr_03d_4459:
	ldh a, [$78]                                     ; $4459: $f0 $78
	ld a, [$59f8]                                    ; $445b: $fa $f8 $59
	ld l, $47                                        ; $445e: $2e $47
	and $f8                                          ; $4460: $e6 $f8
	jp hl                                            ; $4462: $e9


	adc $de                                          ; $4463: $ce $de
	ldh [$c1], a                                     ; $4465: $e0 $c1
	add c                                            ; $4467: $81
	ld bc, $8001                                     ; $4468: $01 $01 $80
	db $10                                           ; $446b: $10
	ld sp, $df61                                     ; $446c: $31 $61 $df
	ldh [c], a                                       ; $446f: $e2
	cp $dc                                           ; $4470: $fe $dc
	db $fd                                           ; $4472: $fd
	ei                                               ; $4473: $fb
	jp hl                                            ; $4474: $e9


	jp hl                                            ; $4475: $e9


	ldh [$d1], a                                     ; $4476: $e0 $d1
	pop bc                                           ; $4478: $c1
	db $e3                                           ; $4479: $e3

jr_03d_447a:
	db $e3                                           ; $447a: $e3
	ldh [$f0], a                                     ; $447b: $e0 $f0
	ldh a, [$eb]                                     ; $447d: $f0 $eb
	rst FarCall                                          ; $447f: $f7
	dec h                                            ; $4480: $25
	inc h                                            ; $4481: $24
	ld de, $a443                                     ; $4482: $11 $43 $a4
	db $db                                           ; $4485: $db
	inc e                                            ; $4486: $1c
	jr @-$26                                         ; $4487: $18 $d8

	ld hl, sp-$67                                    ; $4489: $f8 $99
	ld hl, sp-$04                                    ; $448b: $f8 $fc
	ld a, a                                          ; $448d: $7f
	ccf                                              ; $448e: $3f
	di                                               ; $448f: $f3
	add $79                                          ; $4490: $c6 $79
	adc $80                                          ; $4492: $ce $80
	inc bc                                           ; $4494: $03
	rst JumpTable                                          ; $4495: $c7
	ld b, l                                          ; $4496: $45
	inc c                                            ; $4497: $0c
	jr c, jr_03d_44b2                                ; $4498: $38 $18

	jr jr_03d_44d4                                   ; $449a: $18 $38

	db $fc                                           ; $449c: $fc
	jr c, jr_03d_4459                                ; $449d: $38 $ba

	pop af                                           ; $449f: $f1
	ld c, e                                          ; $44a0: $4b
	ld h, c                                          ; $44a1: $61
	ldh a, [c]                                       ; $44a2: $f2
	pop de                                           ; $44a3: $d1
	and d                                            ; $44a4: $a2
	call z, $0fd2                                    ; $44a5: $cc $d2 $0f
	scf                                              ; $44a8: $37
	rra                                              ; $44a9: $1f
	rrca                                             ; $44aa: $0f
	cpl                                              ; $44ab: $2f
	ld e, a                                          ; $44ac: $5f
	ccf                                              ; $44ad: $3f
	ccf                                              ; $44ae: $3f
	push hl                                          ; $44af: $e5
	cp c                                             ; $44b0: $b9
	ld a, e                                          ; $44b1: $7b

jr_03d_44b2:
	ld l, a                                          ; $44b2: $6f
	adc d                                            ; $44b3: $8a
	ld [hl], b                                       ; $44b4: $70
	ld c, b                                          ; $44b5: $48
	ld sp, $9871                                     ; $44b6: $31 $71 $98
	ret nz                                           ; $44b9: $c0

	add b                                            ; $44ba: $80
	sub b                                            ; $44bb: $90
	adc a                                            ; $44bc: $8f
	or a                                             ; $44bd: $b7
	rst GetHLinHL                                          ; $44be: $cf
	adc a                                            ; $44bf: $8f
	ld [hl], c                                       ; $44c0: $71
	inc bc                                           ; $44c1: $03
	ld [bc], a                                       ; $44c2: $02
	inc bc                                           ; $44c3: $03
	ld l, a                                          ; $44c4: $6f
	or $f8                                           ; $44c5: $f6 $f8
	ldh a, [c]                                       ; $44c7: $f2
	adc $de                                          ; $44c8: $ce $de
	db $fc                                           ; $44ca: $fc
	sbc [hl]                                         ; $44cb: $9e
	ldh a, [$7a]                                     ; $44cc: $f0 $7a
	rst SubAFromDE                                          ; $44ce: $df
	rla                                              ; $44cf: $17
	nop                                              ; $44d0: $00
	sbc e                                            ; $44d1: $9b
	ld b, h                                          ; $44d2: $44
	ld b, [hl]                                       ; $44d3: $46

jr_03d_44d4:
	ld h, [hl]                                       ; $44d4: $66
	ld h, [hl]                                       ; $44d5: $66
	jp c, $9b44                                      ; $44d6: $da $44 $9b

	ld h, e                                          ; $44d9: $63
	ld h, [hl]                                       ; $44da: $66
	inc sp                                           ; $44db: $33
	ld h, h                                          ; $44dc: $64
	db $db                                           ; $44dd: $db
	ld b, h                                          ; $44de: $44
	sbc e                                            ; $44df: $9b
	inc sp                                           ; $44e0: $33
	ld h, [hl]                                       ; $44e1: $66
	inc sp                                           ; $44e2: $33
	inc [hl]                                         ; $44e3: $34
	call c, $9544                                    ; $44e4: $dc $44 $95
	add l                                            ; $44e7: $85
	sub e                                            ; $44e8: $93
	ld h, b                                          ; $44e9: $60
	jr nz, jr_03d_44f0                               ; $44ea: $20 $04

	ld b, a                                          ; $44ec: $47
	rlca                                             ; $44ed: $07
	rlca                                             ; $44ee: $07
	rrca                                             ; $44ef: $0f

jr_03d_44f0:
	rra                                              ; $44f0: $1f
	sbc a                                            ; $44f1: $9f
	rst SubAFromDE                                          ; $44f2: $df
	rst $38                                          ; $44f3: $ff
	cp a                                             ; $44f4: $bf
	db $dd                                           ; $44f5: $dd
	rst $38                                          ; $44f6: $ff
	sub h                                            ; $44f7: $94
	ret nz                                           ; $44f8: $c0

	db $e3                                           ; $44f9: $e3
	pop hl                                           ; $44fa: $e1
	db $e4                                           ; $44fb: $e4
	rst $38                                          ; $44fc: $ff
	db $ed                                           ; $44fd: $ed
	rst SubAFromBC                                          ; $44fe: $e7
	rst SubAFromBC                                          ; $44ff: $e7
	rst $38                                          ; $4500: $ff
	db $fc                                           ; $4501: $fc
	cp $dc                                           ; $4502: $fe $dc
	rst $38                                          ; $4504: $ff
	sbc $80                                          ; $4505: $de $80
	rst SubAFromDE                                          ; $4507: $df
	ld b, b                                          ; $4508: $40
	rst $38                                          ; $4509: $ff
	sbc [hl]                                         ; $450a: $9e
	add b                                            ; $450b: $80
	call c, $dec0                                    ; $450c: $dc $c0 $de
	add b                                            ; $450f: $80
	add b                                            ; $4510: $80
	rrca                                             ; $4511: $0f
	inc hl                                           ; $4512: $23
	rrca                                             ; $4513: $0f
	rrca                                             ; $4514: $0f
	inc bc                                           ; $4515: $03
	ld c, $0c                                        ; $4516: $0e $0c
	rrca                                             ; $4518: $0f
	rra                                              ; $4519: $1f
	inc sp                                           ; $451a: $33
	rra                                              ; $451b: $1f
	rra                                              ; $451c: $1f
	inc de                                           ; $451d: $13
	ld e, $1c                                        ; $451e: $1e $1c
	rra                                              ; $4520: $1f
	jr nc, jr_03d_4556                               ; $4521: $30 $33

	bit 1, a                                         ; $4523: $cb $4f
	ld [de], a                                       ; $4525: $12
	nop                                              ; $4526: $00
	nop                                              ; $4527: $00
	ei                                               ; $4528: $fb
	rst $38                                          ; $4529: $ff
	db $fc                                           ; $452a: $fc
	db $fc                                           ; $452b: $fc
	ldh a, [$fd]                                     ; $452c: $f0 $fd
	rst $38                                          ; $452e: $ff
	rst $38                                          ; $452f: $ff
	sub h                                            ; $4530: $94
	db $fc                                           ; $4531: $fc
	inc bc                                           ; $4532: $03
	adc e                                            ; $4533: $8b
	inc hl                                           ; $4534: $23
	db $e3                                           ; $4535: $e3
	db $e3                                           ; $4536: $e3
	jp $c323                                         ; $4537: $c3 $23 $c3


	rst $38                                          ; $453a: $ff
	ld a, a                                          ; $453b: $7f
	ld a, e                                          ; $453c: $7b
	cp $df                                           ; $453d: $fe $df
	rst $38                                          ; $453f: $ff
	sub l                                            ; $4540: $95
	ccf                                              ; $4541: $3f
	sub a                                            ; $4542: $97
	add sp, -$08                                     ; $4543: $e8 $f8
	cp b                                             ; $4545: $b8
	db $ec                                           ; $4546: $ec
	or d                                             ; $4547: $b2
	adc b                                            ; $4548: $88
	call c, $daf8                                    ; $4549: $dc $f8 $da
	rst $38                                          ; $454c: $ff
	adc l                                            ; $454d: $8d
	ldh [rBCPS], a                                   ; $454e: $e0 $68
	ret nc                                           ; $4550: $d0

	sub b                                            ; $4551: $90
	call nc, Call_03d_6838                           ; $4552: $d4 $38 $68
	ret z                                            ; $4555: $c8

jr_03d_4556:
	ldh a, [$78]                                     ; $4556: $f0 $78
	ret c                                            ; $4558: $d8

	sbc b                                            ; $4559: $98
	call c, Call_03d_6c3c                            ; $455a: $dc $3c $6c
	call z, $0103                                    ; $455d: $cc $03 $01
	ei                                               ; $4560: $fb
	ld a, a                                          ; $4561: $7f
	ld hl, sp+$6f                                    ; $4562: $f8 $6f
	rst FarCall                                          ; $4564: $f7
	add b                                            ; $4565: $80
	rrca                                             ; $4566: $0f
	rlca                                             ; $4567: $07
	ld h, e                                          ; $4568: $63
	adc c                                            ; $4569: $89
	add d                                            ; $456a: $82
	ld b, b                                          ; $456b: $40
	jr nz, jr_03d_459e                               ; $456c: $20 $30

	ldh a, [$f8]                                     ; $456e: $f0 $f8
	sbc h                                            ; $4570: $9c
	or $4d                                           ; $4571: $f6 $4d
	ld h, a                                          ; $4573: $67

jr_03d_4574:
	scf                                              ; $4574: $37
	rra                                              ; $4575: $1f
	add hl, de                                       ; $4576: $19
	add c                                            ; $4577: $81
	nop                                              ; $4578: $00
	inc c                                            ; $4579: $0c
	cp a                                             ; $457a: $bf
	call c, $9860                                    ; $457b: $dc $60 $98
	and $fe                                          ; $457e: $e6 $fe
	rst $38                                          ; $4580: $ff
	di                                               ; $4581: $f3
	pop bc                                           ; $4582: $c1
	db $e3                                           ; $4583: $e3
	cp a                                             ; $4584: $bf
	add b                                            ; $4585: $80
	ld a, a                                          ; $4586: $7f
	ldh [$e0], a                                     ; $4587: $e0 $e0
	add c                                            ; $4589: $81
	ld b, h                                          ; $458a: $44
	sbc [hl]                                         ; $458b: $9e
	ld e, $06                                        ; $458c: $1e $06
	ld b, $1f                                        ; $458e: $06 $1f
	rra                                              ; $4590: $1f
	ld a, [hl]                                       ; $4591: $7e
	ei                                               ; $4592: $fb
	pop hl                                           ; $4593: $e1
	pop hl                                           ; $4594: $e1
	ld sp, hl                                        ; $4595: $f9
	ld sp, hl                                        ; $4596: $f9
	rrca                                             ; $4597: $0f
	rrca                                             ; $4598: $0f
	rst FarCall                                          ; $4599: $f7
	ldh a, [rSVBK]                                   ; $459a: $f0 $70
	inc a                                            ; $459c: $3c
	inc e                                            ; $459d: $1c

jr_03d_459e:
	ld e, $f0                                        ; $459e: $1e $f0
	ldh a, [$08]                                     ; $45a0: $f0 $08
	rrca                                             ; $45a2: $0f
	adc a                                            ; $45a3: $8f
	jp Jump_03d_437f                                 ; $45a4: $c3 $7f $43


	add d                                            ; $45a7: $82
	ld a, $7e                                        ; $45a8: $3e $7e
	dec a                                            ; $45aa: $3d
	add hl, de                                       ; $45ab: $19
	dec a                                            ; $45ac: $3d
	cp a                                             ; $45ad: $bf
	cp l                                             ; $45ae: $bd
	ld a, [de]                                       ; $45af: $1a
	pop bc                                           ; $45b0: $c1
	add c                                            ; $45b1: $81
	jp $c3e7                                         ; $45b2: $c3 $e7 $c3


	pop bc                                           ; $45b5: $c1
	jp $efe5                                         ; $45b6: $c3 $e5 $ef


	rst FarCall                                          ; $45b9: $f7
	or $f1                                           ; $45ba: $f6 $f1
	ldh [$e7], a                                     ; $45bc: $e0 $e7
	rst JumpTable                                          ; $45be: $c7
	rst JumpTable                                          ; $45bf: $c7
	ldh a, [$f8]                                     ; $45c0: $f0 $f8
	ld sp, hl                                        ; $45c2: $f9
	cp $ff                                           ; $45c3: $fe $ff
	sbc $f8                                          ; $45c5: $de $f8
	add b                                            ; $45c7: $80
	adc a                                            ; $45c8: $8f
	dec bc                                           ; $45c9: $0b
	rra                                              ; $45ca: $1f
	inc a                                            ; $45cb: $3c
	ld a, h                                          ; $45cc: $7c
	jr c, jr_03d_4574                                ; $45cd: $38 $a5

	add hl, sp                                       ; $45cf: $39
	ld a, a                                          ; $45d0: $7f
	rst FarCall                                          ; $45d1: $f7
	db $e3                                           ; $45d2: $e3
	jp $c783                                         ; $45d3: $c3 $83 $c7


	ld a, [hl]                                       ; $45d6: $7e
	cp $c3                                           ; $45d7: $fe $c3
	rst SubAFromBC                                          ; $45d9: $e7
	sub a                                            ; $45da: $97
	rst GetHLinHL                                          ; $45db: $cf
	ld a, $1e                                        ; $45dc: $3e $1e
	cp $dd                                           ; $45de: $fe $dd
	db $fc                                           ; $45e0: $fc
	ld hl, sp-$08                                    ; $45e1: $f8 $f8
	ldh a, [$e1]                                     ; $45e3: $f0 $e1
	pop hl                                           ; $45e5: $e1
	dec l                                            ; $45e6: $2d
	sub [hl]                                         ; $45e7: $96
	ei                                               ; $45e8: $fb
	add $dc                                          ; $45e9: $c6 $dc
	ret c                                            ; $45eb: $d8

	ld a, $2f                                        ; $45ec: $3e $2f
	xor $70                                          ; $45ee: $ee $70
	ld hl, sp-$22                                    ; $45f0: $f8 $de
	ccf                                              ; $45f2: $3f
	add b                                            ; $45f3: $80
	pop af                                           ; $45f4: $f1
	ldh a, [$f1]                                     ; $45f5: $f0 $f1
	rst $38                                          ; $45f7: $ff
	cp a                                             ; $45f8: $bf
	dec a                                            ; $45f9: $3d
	dec a                                            ; $45fa: $3d
	ld a, $2c                                        ; $45fb: $3e $2c
	add hl, sp                                       ; $45fd: $39
	ld a, b                                          ; $45fe: $78
	ld e, b                                          ; $45ff: $58
	xor h                                            ; $4600: $ac
	jp $c1c3                                         ; $4601: $c3 $c3 $c1


	db $d3                                           ; $4604: $d3
	rst $38                                          ; $4605: $ff
	rst AddAOntoHL                                          ; $4606: $ef
	rst SubAFromHL                                          ; $4607: $d7
	or e                                             ; $4608: $b3
	pop af                                           ; $4609: $f1
	db $eb                                           ; $460a: $eb
	call c, $0c5e                                    ; $460b: $dc $5e $0c
	add b                                            ; $460e: $80
	ldh [$e1], a                                     ; $460f: $e0 $e1
	rst $38                                          ; $4611: $ff
	rst FarCall                                          ; $4612: $f7
	ld a, a                                          ; $4613: $7f
	sub h                                            ; $4614: $94
	sbc c                                            ; $4615: $99
	di                                               ; $4616: $f3
	ld a, a                                          ; $4617: $7f
	rra                                              ; $4618: $1f
	rra                                              ; $4619: $1f
	rrca                                             ; $461a: $0f
	rst AddAOntoHL                                          ; $461b: $ef
	ld a, e                                          ; $461c: $7b
	xor b                                            ; $461d: $a8
	sbc c                                            ; $461e: $99
	cp $01                                           ; $461f: $fe $01
	ld bc, rIE                                     ; $4621: $01 $ff $ff
	cp $7b                                           ; $4624: $fe $7b
	ld bc, $fb7f                                     ; $4626: $01 $7f $fb
	rst SubAFromDE                                          ; $4629: $df
	cp $de                                           ; $462a: $fe $de
	db $fc                                           ; $462c: $fc
	sbc h                                            ; $462d: $9c
	ld hl, sp+$50                                    ; $462e: $f8 $50
	xor b                                            ; $4630: $a8
	ld l, a                                          ; $4631: $6f
	push af                                          ; $4632: $f5
	adc h                                            ; $4633: $8c
	ld d, l                                          ; $4634: $55
	xor a                                            ; $4635: $af
	nop                                              ; $4636: $00
	inc bc                                           ; $4637: $03
	ld [$5d26], sp                                   ; $4638: $08 $26 $5d
	ld a, [hl+]                                      ; $463b: $2a
	ld d, l                                          ; $463c: $55
	xor d                                            ; $463d: $aa
	nop                                              ; $463e: $00
	ld [bc], a                                       ; $463f: $02
	rlca                                             ; $4640: $07
	add hl, sp                                       ; $4641: $39
	ld [hl+], a                                      ; $4642: $22
	push de                                          ; $4643: $d5
	xor d                                            ; $4644: $aa
	ld d, l                                          ; $4645: $55
	ccf                                              ; $4646: $3f
	jp c, $94ff                                      ; $4647: $da $ff $94

	rra                                              ; $464a: $1f
	ldh a, [$a7]                                     ; $464b: $f0 $a7
	ld b, b                                          ; $464d: $40
	and b                                            ; $464e: $a0
	ld d, l                                          ; $464f: $55
	xor d                                            ; $4650: $aa
	ld d, l                                          ; $4651: $55
	inc bc                                           ; $4652: $03
	cp $0f                                           ; $4653: $fe $0f
	sbc $ff                                          ; $4655: $de $ff
	sbc d                                            ; $4657: $9a
	ld a, a                                          ; $4658: $7f
	xor d                                            ; $4659: $aa
	rst $38                                          ; $465a: $ff
	ld bc, $fef0                                     ; $465b: $01 $f0 $fe
	adc l                                            ; $465e: $8d
	add b                                            ; $465f: $80
	ld d, l                                          ; $4660: $55
	db $d3                                           ; $4661: $d3
	ld [hl], e                                       ; $4662: $73
	rra                                              ; $4663: $1f
	rst GetHLinHL                                          ; $4664: $cf
	rst AddAOntoHL                                          ; $4665: $ef
	ret nz                                           ; $4666: $c0

	sub l                                            ; $4667: $95
	ld a, [hl-]                                      ; $4668: $3a
	db $d3                                           ; $4669: $d3
	di                                               ; $466a: $f3
	rst $38                                          ; $466b: $ff
	ccf                                              ; $466c: $3f
	rra                                              ; $466d: $1f
	ccf                                              ; $466e: $3f
	ld l, d                                          ; $466f: $6a
	push bc                                          ; $4670: $c5
	call c, $8cff                                    ; $4671: $dc $ff $8c
	rrca                                             ; $4674: $0f
	db $e3                                           ; $4675: $e3
	ei                                               ; $4676: $fb
	rst SubAFromDE                                          ; $4677: $df
	ld [$eaf7], a                                    ; $4678: $ea $f7 $ea
	db $dd                                           ; $467b: $dd
	ld a, [$061d]                                    ; $467c: $fa $1d $06
	call nz, $8202                                   ; $467f: $c4 $02 $82
	jp nc, $d1d9                                     ; $4682: $d2 $d9 $d1

	or $af                                           ; $4685: $f6 $af
	ld a, e                                          ; $4687: $7b
	cp b                                             ; $4688: $b8
	sbc d                                            ; $4689: $9a
	rst SubAFromBC                                          ; $468a: $e7
	db $e3                                           ; $468b: $e3
	rst AddAOntoHL                                          ; $468c: $ef
	jp hl                                            ; $468d: $e9


	ld [hl], b                                       ; $468e: $70
	db $fd                                           ; $468f: $fd
	sbc e                                            ; $4690: $9b
	ld bc, $950f                                     ; $4691: $01 $0f $95
	ld [$f873], a                                    ; $4694: $ea $73 $f8
	sub h                                            ; $4697: $94
	inc c                                            ; $4698: $0c
	ld a, [bc]                                       ; $4699: $0a
	ld [hl], l                                       ; $469a: $75
	dec de                                           ; $469b: $1b
	rrca                                             ; $469c: $0f
	rlca                                             ; $469d: $07
	rlca                                             ; $469e: $07
	di                                               ; $469f: $f3
	cp a                                             ; $46a0: $bf
	ld a, a                                          ; $46a1: $7f
	cp a                                             ; $46a2: $bf
	ld [hl], e                                       ; $46a3: $73
	ld hl, sp-$7d                                    ; $46a4: $f8 $83
	ld b, c                                          ; $46a6: $41
	add b                                            ; $46a7: $80
	ld b, b                                          ; $46a8: $40
	sub h                                            ; $46a9: $94
	ld [hl], c                                       ; $46aa: $71
	ld sp, hl                                        ; $46ab: $f9
	ei                                               ; $46ac: $fb
	jp $eb03                                         ; $46ad: $c3 $03 $eb


	cp $6f                                           ; $46b0: $fe $6f
	adc a                                            ; $46b2: $8f

jr_03d_46b3:
	rlca                                             ; $46b3: $07
	rlca                                             ; $46b4: $07
	ccf                                              ; $46b5: $3f
	rst $38                                          ; $46b6: $ff
	rst FarCall                                          ; $46b7: $f7
	pop hl                                           ; $46b8: $e1
	ld c, [hl]                                       ; $46b9: $4e
	sbc [hl]                                         ; $46ba: $9e
	sbc $fe                                          ; $46bb: $de $fe
	call c, $d9dc                                    ; $46bd: $dc $dc $d9
	jr jr_03d_46b3                                   ; $46c0: $18 $f1

	sbc $e1                                          ; $46c2: $de $e1
	rst SubAFromDE                                          ; $46c4: $df
	db $e3                                           ; $46c5: $e3
	rst SubAFromDE                                          ; $46c6: $df
	rst SubAFromBC                                          ; $46c7: $e7
	add b                                            ; $46c8: $80
	jr c, @+$7a                                      ; $46c9: $38 $78

	ld a, d                                          ; $46cb: $7a
	dec sp                                           ; $46cc: $3b
	cpl                                              ; $46cd: $2f
	dec c                                            ; $46ce: $0d
	dec b                                            ; $46cf: $05
	ld de, $87c7                                     ; $46d0: $11 $c7 $87
	add l                                            ; $46d3: $85
	call nz, $fedc                                   ; $46d4: $c4 $dc $fe
	cp $ee                                           ; $46d7: $fe $ee
	ld c, d                                          ; $46d9: $4a
	ld a, [hl-]                                      ; $46da: $3a
	ld a, [hl-]                                      ; $46db: $3a
	cp c                                             ; $46dc: $b9
	reti                                             ; $46dd: $d9


	or c                                             ; $46de: $b1
	pop hl                                           ; $46df: $e1
	reti                                             ; $46e0: $d9


	push af                                          ; $46e1: $f5
	push bc                                          ; $46e2: $c5
	push bc                                          ; $46e3: $c5
	ld b, a                                          ; $46e4: $47
	daa                                              ; $46e5: $27
	ld c, a                                          ; $46e6: $4f
	rra                                              ; $46e7: $1f
	sub [hl]                                         ; $46e8: $96
	daa                                              ; $46e9: $27
	rst JumpTable                                          ; $46ea: $c7
	ret nz                                           ; $46eb: $c0

	call nz, $cfe8                                   ; $46ec: $c4 $e8 $cf
	adc $c9                                          ; $46ef: $ce $c9
	pop hl                                           ; $46f1: $e1
	ld a, d                                          ; $46f2: $7a
	ld b, b                                          ; $46f3: $40
	ld a, l                                          ; $46f4: $7d
	sbc $7f                                          ; $46f5: $de $7f
	inc l                                            ; $46f7: $2c
	sub [hl]                                         ; $46f8: $96
	sbc $7b                                          ; $46f9: $de $7b
	ld [hl], c                                       ; $46fb: $71
	inc bc                                           ; $46fc: $03
	add c                                            ; $46fd: $81
	add e                                            ; $46fe: $83
	ld de, $87f2                                     ; $46ff: $11 $f2 $87
	ld [hl], a                                       ; $4702: $77
	inc de                                           ; $4703: $13
	ld a, d                                          ; $4704: $7a
	ld hl, $7c9e                                     ; $4705: $21 $9e $7c
	ld [hl], a                                       ; $4708: $77
	ld b, e                                          ; $4709: $43
	rst SubAFromDE                                          ; $470a: $df
	add a                                            ; $470b: $87
	sbc d                                            ; $470c: $9a
	or a                                             ; $470d: $b7
	or l                                             ; $470e: $b5
	rst AddAOntoHL                                          ; $470f: $ef
	or a                                             ; $4710: $b7
	ld l, a                                          ; $4711: $6f
	sbc $ff                                          ; $4712: $de $ff
	sub l                                            ; $4714: $95
	ld c, a                                          ; $4715: $4f
	call $ad59                                       ; $4716: $cd $59 $ad
	ld d, d                                          ; $4719: $52
	and e                                            ; $471a: $a3
	ld b, c                                          ; $471b: $41
	add [hl]                                         ; $471c: $86
	ld c, d                                          ; $471d: $4a
	dec d                                            ; $471e: $15
	db $dd                                           ; $471f: $dd
	rst $38                                          ; $4720: $ff
	ld a, a                                          ; $4721: $7f
	call c, $fb80                                    ; $4722: $dc $80 $fb
	or $22                                           ; $4725: $f6 $22
	ld bc, $2726                                     ; $4727: $01 $26 $27
	sbc h                                            ; $472a: $9c
	cp b                                             ; $472b: $b8
	rst AddAOntoHL                                          ; $472c: $ef
	inc b                                            ; $472d: $04
	ld [hl], b                                       ; $472e: $70
	ld a, [$fc1d]                                    ; $472f: $fa $1d $fc
	rst $38                                          ; $4732: $ff
	sbc a                                            ; $4733: $9f
	call c, $e086                                    ; $4734: $dc $86 $e0
	inc b                                            ; $4737: $04
	rrca                                             ; $4738: $0f
	ld e, a                                          ; $4739: $5f
	add a                                            ; $473a: $87
	rlca                                             ; $473b: $07
	ld [$0f28], sp                                   ; $473c: $08 $28 $0f
	ei                                               ; $473f: $fb
	ldh a, [$e0]                                     ; $4740: $f0 $e0
	ld hl, sp+$7f                                    ; $4742: $f8 $7f
	xor e                                            ; $4744: $ab
	sbc c                                            ; $4745: $99
	rst SubAFromHL                                          ; $4746: $d7
	ld [bc], a                                       ; $4747: $02
	add b                                            ; $4748: $80
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	rst $38                                          ; $474b: $ff
	db $fd                                           ; $474c: $fd
	sbc [hl]                                         ; $474d: $9e
	ld d, l                                          ; $474e: $55
	db $db                                           ; $474f: $db
	rst $38                                          ; $4750: $ff
	ld [hl], l                                       ; $4751: $75
	ld [hl], h                                       ; $4752: $74
	ld a, [hl]                                       ; $4753: $7e
	db $e3                                           ; $4754: $e3
	rst SubAFromDE                                          ; $4755: $df
	rrca                                             ; $4756: $0f
	sub a                                            ; $4757: $97
	ld b, $5d                                        ; $4758: $06 $5d
	ld a, [$faf5]                                    ; $475a: $fa $f5 $fa
	db $fd                                           ; $475d: $fd
	ld a, [$d9f5]                                    ; $475e: $fa $f5 $d9
	rst $38                                          ; $4761: $ff
	ld a, [hl]                                       ; $4762: $7e
	sub $7f                                          ; $4763: $d6 $7f
	cp $9c                                           ; $4765: $fe $9c
	xor e                                            ; $4767: $ab
	ld [hl], l                                       ; $4768: $75
	xor d                                            ; $4769: $aa
	ld l, e                                          ; $476a: $6b
	jp c, $f06f                                      ; $476b: $da $6f $f0

	sbc [hl]                                         ; $476e: $9e
	ld [$fc7b], a                                    ; $476f: $ea $7b $fc
	ld d, a                                          ; $4772: $57
	ldh a, [rPCM34]                                  ; $4773: $f0 $77
	cp $83                                           ; $4775: $fe $83
	ld [hl], l                                       ; $4777: $75
	ld a, [$fefd]                                    ; $4778: $fa $fd $fe
	db $fd                                           ; $477b: $fd
	ldh a, [$e4]                                     ; $477c: $f0 $e4
	adc d                                            ; $477e: $8a
	adc d                                            ; $477f: $8a
	dec b                                            ; $4780: $05
	ld [bc], a                                       ; $4781: $02
	ld bc, $0f02                                     ; $4782: $01 $02 $0f
	rra                                              ; $4785: $1f
	ld a, e                                          ; $4786: $7b
	ld [hl], d                                       ; $4787: $72
	cp e                                             ; $4788: $bb
	ld d, a                                          ; $4789: $57
	xor a                                            ; $478a: $af
	nop                                              ; $478b: $00
	ld a, a                                          ; $478c: $7f
	ccf                                              ; $478d: $3f
	ld a, a                                          ; $478e: $7f
	adc [hl]                                         ; $478f: $8e
	ld b, a                                          ; $4790: $47
	xor a                                            ; $4791: $af
	ld e, a                                          ; $4792: $5f
	db $dd                                           ; $4793: $dd
	rst $38                                          ; $4794: $ff
	ld h, a                                          ; $4795: $67
	sbc b                                            ; $4796: $98
	sbc l                                            ; $4797: $9d
	ld b, b                                          ; $4798: $40
	xor d                                            ; $4799: $aa
	db $db                                           ; $479a: $db
	rst $38                                          ; $479b: $ff
	add b                                            ; $479c: $80
	sub l                                            ; $479d: $95
	ld a, [hl+]                                      ; $479e: $2a
	ld d, l                                          ; $479f: $55
	ld a, [hl+]                                      ; $47a0: $2a
	dec d                                            ; $47a1: $15
	jp z, $eaf5                                      ; $47a2: $ca $f5 $ea

	ld [$aad5], a                                    ; $47a5: $ea $d5 $aa
	push de                                          ; $47a8: $d5
	ld [$eaf5], a                                    ; $47a9: $ea $f5 $ea
	push af                                          ; $47ac: $f5
	ld a, a                                          ; $47ad: $7f
	cp a                                             ; $47ae: $bf
	ld e, a                                          ; $47af: $5f
	xor a                                            ; $47b0: $af
	ld e, a                                          ; $47b1: $5f
	xor a                                            ; $47b2: $af
	ld d, a                                          ; $47b3: $57
	xor a                                            ; $47b4: $af
	add b                                            ; $47b5: $80
	ld b, b                                          ; $47b6: $40
	and b                                            ; $47b7: $a0
	ld d, b                                          ; $47b8: $50
	and b                                            ; $47b9: $a0
	ld d, b                                          ; $47ba: $50
	xor b                                            ; $47bb: $a8
	sbc c                                            ; $47bc: $99
	ld d, b                                          ; $47bd: $50
	rst $38                                          ; $47be: $ff
	rst SubAFromDE                                          ; $47bf: $df
	rst AddAOntoHL                                          ; $47c0: $ef
	rst FarCall                                          ; $47c1: $f7
	db $eb                                           ; $47c2: $eb
	ld a, e                                          ; $47c3: $7b
	cp $df                                           ; $47c4: $fe $df
	ccf                                              ; $47c6: $3f
	ld a, a                                          ; $47c7: $7f
	ld l, e                                          ; $47c8: $6b
	sbc d                                            ; $47c9: $9a
	rla                                              ; $47ca: $17
	dec bc                                           ; $47cb: $0b
	rla                                              ; $47cc: $17
	dec bc                                           ; $47cd: $0b
	inc bc                                           ; $47ce: $03
	halt                                             ; $47cf: $76
	ld d, c                                          ; $47d0: $51
	ld [hl], a                                       ; $47d1: $77
	cp b                                             ; $47d2: $b8
	sbc [hl]                                         ; $47d3: $9e
	ldh a, [$db]                                     ; $47d4: $f0 $db
	rst $38                                          ; $47d6: $ff
	sbc [hl]                                         ; $47d7: $9e
	inc bc                                           ; $47d8: $03
	jp c, $7bff                                      ; $47d9: $da $ff $7b

	ld a, [hl-]                                      ; $47dc: $3a
	call c, $9eff                                    ; $47dd: $dc $ff $9e
	ld de, $f04b                                     ; $47e0: $11 $4b $f0
	sbc [hl]                                         ; $47e3: $9e
	ld a, [hl-]                                      ; $47e4: $3a
	jp c, $9eff                                      ; $47e5: $da $ff $9e

	ret nz                                           ; $47e8: $c0

	ld l, e                                          ; $47e9: $6b
	ldh a, [$97]                                     ; $47ea: $f0 $97
	ld bc, $f8fc                                     ; $47ec: $01 $fc $f8
	push af                                          ; $47ef: $f5
	push af                                          ; $47f0: $f5
	ld a, [$fef8]                                    ; $47f1: $fa $f8 $fe
	ld a, c                                          ; $47f4: $79
	rst GetHLinHL                                          ; $47f5: $cf
	ld a, [hl]                                       ; $47f6: $7e
	ldh [c], a                                       ; $47f7: $e2
	ld a, [hl]                                       ; $47f8: $7e
	ld h, l                                          ; $47f9: $65
	sub [hl]                                         ; $47fa: $96
	ei                                               ; $47fb: $fb
	add d                                            ; $47fc: $82
	ld a, c                                          ; $47fd: $79
	db $fc                                           ; $47fe: $fc
	inc b                                            ; $47ff: $04
	db $fd                                           ; $4800: $fd
	add l                                            ; $4801: $85
	ld sp, $7479                                     ; $4802: $31 $79 $74
	sub d                                            ; $4805: $92
	ld a, c                                          ; $4806: $79
	or a                                             ; $4807: $b7
	sub d                                            ; $4808: $92
	rst GetHLinHL                                          ; $4809: $cf
	db $fc                                           ; $480a: $fc
	rra                                              ; $480b: $1f
	add hl, sp                                       ; $480c: $39
	adc h                                            ; $480d: $8c
	add $83                                          ; $480e: $c6 $83
	add b                                            ; $4810: $80
	nop                                              ; $4811: $00
	halt                                             ; $4812: $76
	ret                                              ; $4813: $c9


	rst JumpTable                                          ; $4814: $c7
	ei                                               ; $4815: $fb
	ld [hl], h                                       ; $4816: $74
	cp [hl]                                          ; $4817: $be
	adc h                                            ; $4818: $8c
	add d                                            ; $4819: $82
	ld e, c                                          ; $481a: $59
	db $eb                                           ; $481b: $eb
	jr nz, @+$6e                                     ; $481c: $20 $6c

	cp a                                             ; $481e: $bf
	inc hl                                           ; $481f: $23
	jr nz, jr_03d_4825                               ; $4820: $20 $03

	add e                                            ; $4822: $83
	pop af                                           ; $4823: $f1
	pop hl                                           ; $4824: $e1

jr_03d_4825:
	di                                               ; $4825: $f3
	rst $38                                          ; $4826: $ff
	pop af                                           ; $4827: $f1
	ldh a, [$66]                                     ; $4828: $f0 $66
	rst $38                                          ; $482a: $ff
	nop                                              ; $482b: $00
	ld [hl], b                                       ; $482c: $70
	ld h, a                                          ; $482d: $67
	ld h, a                                          ; $482e: $67
	and b                                            ; $482f: $a0
	ld h, a                                          ; $4830: $67
	sub c                                            ; $4831: $91
	ld l, e                                          ; $4832: $6b
	ld a, [$008e]                                    ; $4833: $fa $8e $00
	ld sp, hl                                        ; $4836: $f9
	ld a, [$f8f9]                                    ; $4837: $fa $f9 $f8
	push hl                                          ; $483a: $e5
	ret z                                            ; $483b: $c8

	call nc, $f63f                                   ; $483c: $d4 $3f $f6
	db $fd                                           ; $483f: $fd
	cp $f7                                           ; $4840: $fe $f7
	ld a, [$ebf7]                                    ; $4842: $fa $f7 $eb
	ld c, a                                          ; $4845: $4f
	ld h, d                                          ; $4846: $62
	ldh [$74], a                                     ; $4847: $e0 $74
	ld [hl], d                                       ; $4849: $72
	sbc l                                            ; $484a: $9d
	ld a, a                                          ; $484b: $7f
	ret nz                                           ; $484c: $c0

	ld [hl], a                                       ; $484d: $77
	ld a, [$d066]                                    ; $484e: $fa $66 $d0
	ld a, a                                          ; $4851: $7f
	db $10                                           ; $4852: $10
	sbc [hl]                                         ; $4853: $9e
	push de                                          ; $4854: $d5
	ld [hl], e                                       ; $4855: $73
	pop af                                           ; $4856: $f1
	ld a, e                                          ; $4857: $7b
	adc c                                            ; $4858: $89
	ld a, a                                          ; $4859: $7f
	db $fd                                           ; $485a: $fd
	sbc d                                            ; $485b: $9a
	xor d                                            ; $485c: $aa
	ld d, h                                          ; $485d: $54
	xor e                                            ; $485e: $ab
	ld e, a                                          ; $485f: $5f
	cp [hl]                                          ; $4860: $be
	ld a, e                                          ; $4861: $7b
	db $f4                                           ; $4862: $f4
	sbc h                                            ; $4863: $9c
	pop bc                                           ; $4864: $c1
	ld bc, $dd81                                     ; $4865: $01 $81 $dd
	ld bc, $c09a                                     ; $4868: $01 $9a $c0
	di                                               ; $486b: $f3
	sub e                                            ; $486c: $93
	sub e                                            ; $486d: $93
	inc de                                           ; $486e: $13
	sbc $03                                          ; $486f: $de $03
	sbc [hl]                                         ; $4871: $9e
	jp nz, $a047                                     ; $4872: $c2 $47 $a0

	call c, $9cff                                    ; $4875: $dc $ff $9c
	cp $f1                                           ; $4878: $fe $f1
	ld [$ffdb], sp                                   ; $487a: $08 $db $ff
	sub l                                            ; $487d: $95
	cp $18                                           ; $487e: $fe $18
	push af                                          ; $4880: $f5
	ld [$abd5], a                                    ; $4881: $ea $d5 $ab
	ld d, a                                          ; $4884: $57
	xor a                                            ; $4885: $af
	ld a, a                                          ; $4886: $7f
	rlca                                             ; $4887: $07
	ld a, d                                          ; $4888: $7a
	call nz, $d498                                   ; $4889: $c4 $98 $d4
	xor b                                            ; $488c: $a8
	ld d, b                                          ; $488d: $50
	add b                                            ; $488e: $80
	ld [$ab5f], sp                                   ; $488f: $08 $5f $ab
	ld [hl], d                                       ; $4892: $72
	sbc c                                            ; $4893: $99
	sbc e                                            ; $4894: $9b
	rst $38                                          ; $4895: $ff
	and b                                            ; $4896: $a0
	ld d, h                                          ; $4897: $54
	and b                                            ; $4898: $a0
	db $fc                                           ; $4899: $fc
	adc a                                            ; $489a: $8f
	di                                               ; $489b: $f3
	ei                                               ; $489c: $fb
	di                                               ; $489d: $f3
	db $eb                                           ; $489e: $eb
	db $d3                                           ; $489f: $d3
	and a                                            ; $48a0: $a7
	ld b, a                                          ; $48a1: $47
	adc b                                            ; $48a2: $88
	rrca                                             ; $48a3: $0f
	rlca                                             ; $48a4: $07
	rrca                                             ; $48a5: $0f
	rla                                              ; $48a6: $17
	cpl                                              ; $48a7: $2f
	ld e, a                                          ; $48a8: $5f
	cp a                                             ; $48a9: $bf
	ld [hl], b                                       ; $48aa: $70
	inc sp                                           ; $48ab: $33
	or b                                             ; $48ac: $b0
	inc bc                                           ; $48ad: $03
	ldh a, [$5f]                                     ; $48ae: $f0 $5f
	ldh a, [$80]                                     ; $48b0: $f0 $80
	ei                                               ; $48b2: $fb
	ld a, [$fcfe]                                    ; $48b3: $fa $fe $fc
	ld a, [$f8fe]                                    ; $48b6: $fa $fe $f8
	dec bc                                           ; $48b9: $0b
	ei                                               ; $48ba: $fb
	ei                                               ; $48bb: $fb
	cp $fc                                           ; $48bc: $fe $fc
	db $fd                                           ; $48be: $fd
	ld hl, sp-$02                                    ; $48bf: $f8 $fe
	dec bc                                           ; $48c1: $0b
	ld a, e                                          ; $48c2: $7b
	or l                                             ; $48c3: $b5
	ld bc, $5830                                     ; $48c4: $01 $30 $58
	db $ed                                           ; $48c7: $ed
	dec [hl]                                         ; $48c8: $35
	inc bc                                           ; $48c9: $03
	rst GetHLinHL                                          ; $48ca: $cf
	rst $38                                          ; $48cb: $ff
	db $fd                                           ; $48cc: $fd
	db $fc                                           ; $48cd: $fc
	xor a                                            ; $48ce: $af
	ld d, h                                          ; $48cf: $54
	db $ec                                           ; $48d0: $ec
	ld a, d                                          ; $48d1: $7a
	add sp, $7f                                      ; $48d2: $e8 $7f
	ccf                                              ; $48d4: $3f
	rst SubAFromDE                                          ; $48d5: $df
	add d                                            ; $48d6: $82
	sbc l                                            ; $48d7: $9d
	add e                                            ; $48d8: $83
	add d                                            ; $48d9: $82
	ld l, a                                          ; $48da: $6f
	ld h, c                                          ; $48db: $61
	adc l                                            ; $48dc: $8d
	cp $81                                           ; $48dd: $fe $81
	ld d, b                                          ; $48df: $50
	add l                                            ; $48e0: $85
	adc e                                            ; $48e1: $8b
	ld d, $1c                                        ; $48e2: $16 $1c
	ld e, b                                          ; $48e4: $58
	ld h, b                                          ; $48e5: $60
	ld d, $e1                                        ; $48e6: $16 $e1
	jp $0f87                                         ; $48e8: $c3 $87 $0f


	ld a, $2d                                        ; $48eb: $3e $2d
	rrca                                             ; $48ed: $0f
	inc a                                            ; $48ee: $3c
	dec sp                                           ; $48ef: $3b
	and b                                            ; $48f0: $a0
	ld a, a                                          ; $48f1: $7f
	or a                                             ; $48f2: $b7
	sub e                                            ; $48f3: $93
	ld hl, sp-$10                                    ; $48f4: $f8 $f0
	ldh [rP1], a                                     ; $48f6: $e0 $00
	ld bc, $0703                                     ; $48f8: $01 $03 $07
	inc c                                            ; $48fb: $0c
	jr @+$3a                                         ; $48fc: $18 $38

	ld [hl], b                                       ; $48fe: $70
	ret nz                                           ; $48ff: $c0

	ld a, c                                          ; $4900: $79
	ld [hl], b                                       ; $4901: $70
	db $fd                                           ; $4902: $fd
	ld a, [hl]                                       ; $4903: $7e
	sub l                                            ; $4904: $95
	sbc [hl]                                         ; $4905: $9e
	pop bc                                           ; $4906: $c1
	cp $9d                                           ; $4907: $fe $9d
	inc c                                            ; $4909: $0c
	rlca                                             ; $490a: $07
	halt                                             ; $490b: $76
	jp z, $057a                                      ; $490c: $ca $7a $05

	sbc [hl]                                         ; $490f: $9e
	rrca                                             ; $4910: $0f
	ld [hl], d                                       ; $4911: $72
	pop bc                                           ; $4912: $c1
	ld a, a                                          ; $4913: $7f
	rst FarCall                                          ; $4914: $f7
	sbc [hl]                                         ; $4915: $9e
	inc e                                            ; $4916: $1c
	jp c, $9eff                                      ; $4917: $da $ff $9e

	jp c, $ffdb                                      ; $491a: $da $db $ff

	sbc l                                            ; $491d: $9d
	db $db                                           ; $491e: $db
	xor l                                            ; $491f: $ad
	ld [hl], d                                       ; $4920: $72
	ret nz                                           ; $4921: $c0

	call c, $8aff                                    ; $4922: $dc $ff $8a
	db $fd                                           ; $4925: $fd
	ld sp, hl                                        ; $4926: $f9
	ldh a, [$e0]                                     ; $4927: $f0 $e0
	pop bc                                           ; $4929: $c1
	add c                                            ; $492a: $81
	ld [bc], a                                       ; $492b: $02
	nop                                              ; $492c: $00
	ld b, b                                          ; $492d: $40
	inc b                                            ; $492e: $04
	stop                                             ; $492f: $10 $00
	inc h                                            ; $4931: $24
	ld bc, $84c6                                     ; $4932: $01 $c6 $84
	call z, $180c                                    ; $4935: $cc $0c $18
	jr jr_03d_4971                                   ; $4938: $18 $37

	ld [hl], e                                       ; $493a: $73
	ld a, d                                          ; $493b: $7a
	sbc l                                            ; $493c: $9d
	db $fc                                           ; $493d: $fc
	ldh [rPCM34], a                                  ; $493e: $e0 $77
	xor e                                            ; $4940: $ab
	sbc b                                            ; $4941: $98
	ld bc, $3e07                                     ; $4942: $01 $07 $3e
	ld hl, sp-$2b                                    ; $4945: $f8 $d5
	xor d                                            ; $4947: $aa
	cp a                                             ; $4948: $bf
	ld l, e                                          ; $4949: $6b
	sbc a                                            ; $494a: $9f
	sbc h                                            ; $494b: $9c
	ld a, a                                          ; $494c: $7f
	ldh [$c0], a                                     ; $494d: $e0 $c0
	cp $7d                                           ; $494f: $fe $7d
	sbc l                                            ; $4951: $9d
	sbc d                                            ; $4952: $9a
	pop bc                                           ; $4953: $c1
	jr nc, jr_03d_4962                               ; $4954: $30 $0c

	ld [bc], a                                       ; $4956: $02
	ld bc, $d876                                     ; $4957: $01 $76 $d8
	sbc h                                            ; $495a: $9c
	dec a                                            ; $495b: $3d
	ld c, $03                                        ; $495c: $0e $03
	ld [hl], a                                       ; $495e: $77
	ld hl, sp-$80                                    ; $495f: $f8 $80
	ld a, l                                          ; $4961: $7d

jr_03d_4962:
	cp d                                             ; $4962: $ba
	inc d                                            ; $4963: $14
	ld a, [hl+]                                      ; $4964: $2a
	add h                                            ; $4965: $84
	ld c, b                                          ; $4966: $48
	jr nz, jr_03d_49a9                               ; $4967: $20 $40

	add d                                            ; $4969: $82
	ld b, l                                          ; $496a: $45
	ld l, e                                          ; $496b: $6b
	dec d                                            ; $496c: $15
	cp e                                             ; $496d: $bb
	rst SubAFromHL                                          ; $496e: $d7
	ld l, a                                          ; $496f: $6f
	ld l, a                                          ; $4970: $6f

jr_03d_4971:
	or a                                             ; $4971: $b7
	ld e, a                                          ; $4972: $5f
	xor a                                            ; $4973: $af
	ld a, a                                          ; $4974: $7f
	rst SubAFromDE                                          ; $4975: $df
	ld a, a                                          ; $4976: $7f
	cp a                                             ; $4977: $bf
	rst $38                                          ; $4978: $ff
	ld hl, sp-$10                                    ; $4979: $f8 $f0
	ldh a, [$e0]                                     ; $497b: $f0 $e0
	ldh [$c0], a                                     ; $497d: $e0 $c0
	ret nz                                           ; $497f: $c0

	sbc [hl]                                         ; $4980: $9e
	add b                                            ; $4981: $80
	ld h, d                                          ; $4982: $62
	rrca                                             ; $4983: $0f
	ld a, [$f03b]                                    ; $4984: $fa $3b $f0
	sbc e                                            ; $4987: $9b
	db $fc                                           ; $4988: $fc
	di                                               ; $4989: $f3
	rst GetHLinHL                                          ; $498a: $cf
	rra                                              ; $498b: $1f
	ld hl, sp-$21                                    ; $498c: $f8 $df
	rst $38                                          ; $498e: $ff
	ld a, [hl]                                       ; $498f: $7e
	rla                                              ; $4990: $17
	ld a, h                                          ; $4991: $7c
	rst AddAOntoHL                                          ; $4992: $ef
	sbc l                                            ; $4993: $9d
	ld sp, hl                                        ; $4994: $f9
	inc bc                                           ; $4995: $03
	ld sp, hl                                        ; $4996: $f9
	sbc d                                            ; $4997: $9a
	ldh a, [$ee]                                     ; $4998: $f0 $ee
	ld [hl], a                                       ; $499a: $77
	scf                                              ; $499b: $37
	ld a, [hl]                                       ; $499c: $7e
	sbc $fc                                          ; $499d: $de $fc
	sbc [hl]                                         ; $499f: $9e
	inc de                                           ; $49a0: $13
	ld a, e                                          ; $49a1: $7b
	inc l                                            ; $49a2: $2c
	sbc [hl]                                         ; $49a3: $9e
	ld c, $fd                                        ; $49a4: $0e $fd
	ld a, l                                          ; $49a6: $7d
	ccf                                              ; $49a7: $3f
	sbc l                                            ; $49a8: $9d

jr_03d_49a9:
	rst AddAOntoHL                                          ; $49a9: $ef
	dec sp                                           ; $49aa: $3b
	cp $9a                                           ; $49ab: $fe $9a
	ld c, d                                          ; $49ad: $4a
	or a                                             ; $49ae: $b7
	rst $38                                          ; $49af: $ff
	rst $38                                          ; $49b0: $ff
	rst JumpTable                                          ; $49b1: $c7
	ld a, e                                          ; $49b2: $7b
	ld a, a                                          ; $49b3: $7f
	sub [hl]                                         ; $49b4: $96
	ccf                                              ; $49b5: $3f
	cp a                                             ; $49b6: $bf
	cp a                                             ; $49b7: $bf
	ld hl, sp-$07                                    ; $49b8: $f8 $f9
	ld [hl], d                                       ; $49ba: $72
	di                                               ; $49bb: $f3
	ldh a, [rLCDC]                                   ; $49bc: $f0 $40
	ld a, e                                          ; $49be: $7b
	sub h                                            ; $49bf: $94
	sub a                                            ; $49c0: $97
	ret nz                                           ; $49c1: $c0

	add c                                            ; $49c2: $81
	ld bc, $0300                                     ; $49c3: $01 $00 $03
	add e                                            ; $49c6: $83
	pop de                                           ; $49c7: $d1
	ld c, $79                                        ; $49c8: $0e $79
	cp e                                             ; $49ca: $bb
	sbc e                                            ; $49cb: $9b
	nop                                              ; $49cc: $00
	db $fc                                           ; $49cd: $fc
	ld a, h                                          ; $49ce: $7c
	ld a, $7a                                        ; $49cf: $3e $7a
	db $fd                                           ; $49d1: $fd
	sbc [hl]                                         ; $49d2: $9e
	ld hl, sp+$77                                    ; $49d3: $f8 $77
	and b                                            ; $49d5: $a0
	rst SubAFromDE                                          ; $49d6: $df
	ld a, a                                          ; $49d7: $7f
	rst SubAFromDE                                          ; $49d8: $df
	cp a                                             ; $49d9: $bf
	sbc [hl]                                         ; $49da: $9e
	ccf                                              ; $49db: $3f
	ld sp, hl                                        ; $49dc: $f9
	ld a, e                                          ; $49dd: $7b
	reti                                             ; $49de: $d9


	db $fc                                           ; $49df: $fc
	sbc d                                            ; $49e0: $9a
	ld h, d                                          ; $49e1: $62
	rst GetHLinHL                                          ; $49e2: $cf
	xor d                                            ; $49e3: $aa
	ld d, b                                          ; $49e4: $50
	add b                                            ; $49e5: $80
	ld a, b                                          ; $49e6: $78
	adc $77                                          ; $49e7: $ce $77
	rla                                              ; $49e9: $17
	rst SubAFromDE                                          ; $49ea: $df
	ld bc, $8bff                                     ; $49eb: $01 $ff $8b
	and c                                            ; $49ee: $a1
	ld hl, sp+$0c                                    ; $49ef: $f8 $0c
	dec b                                            ; $49f1: $05
	inc bc                                           ; $49f2: $03
	dec b                                            ; $49f3: $05
	inc sp                                           ; $49f4: $33
	dec d                                            ; $49f5: $15
	rrca                                             ; $49f6: $0f
	ld e, a                                          ; $49f7: $5f
	sbc a                                            ; $49f8: $9f
	ccf                                              ; $49f9: $3f
	ccf                                              ; $49fa: $3f
	sbc a                                            ; $49fb: $9f
	rst GetHLinHL                                          ; $49fc: $cf
	ld [hl], b                                       ; $49fd: $70
	jp c, $ea75                                      ; $49fe: $da $75 $ea

	sub l                                            ; $4a01: $95
	ld a, c                                          ; $4a02: $79
	adc [hl]                                         ; $4a03: $8e
	ld l, b                                          ; $4a04: $68
	jp z, $f896                                      ; $4a05: $ca $96 $f8

	inc bc                                           ; $4a08: $03
	adc b                                            ; $4a09: $88
	ld bc, $0482                                     ; $4a0a: $01 $82 $04
	ld a, [bc]                                       ; $4a0d: $0a
	dec d                                            ; $4a0e: $15
	xor b                                            ; $4a0f: $a8
	ld a, d                                          ; $4a10: $7a
	and b                                            ; $4a11: $a0
	adc a                                            ; $4a12: $8f
	db $fd                                           ; $4a13: $fd
	jp nc, $18c6                                     ; $4a14: $d2 $c6 $18

	ld h, b                                          ; $4a17: $60
	ret nz                                           ; $4a18: $c0

	ld bc, $0701                                     ; $4a19: $01 $01 $07
	scf                                              ; $4a1c: $37
	rst AddAOntoHL                                          ; $4a1d: $ef
	ld a, $fc                                        ; $4a1e: $3e $fc
	add sp, $70                                      ; $4a20: $e8 $70
	ld h, b                                          ; $4a22: $60
	ld l, a                                          ; $4a23: $6f
	or b                                             ; $4a24: $b0
	sbc h                                            ; $4a25: $9c
	ld a, [$c8f5]                                    ; $4a26: $fa $f5 $c8
	halt                                             ; $4a29: $76
	rst SubAFromDE                                          ; $4a2a: $df
	rst FarCall                                          ; $4a2b: $f7
	sbc c                                            ; $4a2c: $99
	ld b, b                                          ; $4a2d: $40
	nop                                              ; $4a2e: $00
	inc b                                            ; $4a2f: $04
	ld b, $02                                        ; $4a30: $06 $02
	ld [bc], a                                       ; $4a32: $02

jr_03d_4a33:
	ld h, e                                          ; $4a33: $63
	jr c, jr_03d_4a33                                ; $4a34: $38 $fd

	ld a, a                                          ; $4a36: $7f
	ret nz                                           ; $4a37: $c0

	sbc l                                            ; $4a38: $9d
	ld a, [bc]                                       ; $4a39: $0a
	add l                                            ; $4a3a: $85
	ld hl, sp-$75                                    ; $4a3b: $f8 $8b
	ld bc, $0502                                     ; $4a3d: $01 $02 $05
	ld a, [hl+]                                      ; $4a40: $2a
	ld d, l                                          ; $4a41: $55
	xor d                                            ; $4a42: $aa
	ld d, l                                          ; $4a43: $55
	daa                                              ; $4a44: $27
	rla                                              ; $4a45: $17
	ld d, $17                                        ; $4a46: $16 $17
	ld d, $16                                        ; $4a48: $16 $16
	rla                                              ; $4a4a: $17
	dec d                                            ; $4a4b: $15
	cp a                                             ; $4a4c: $bf
	ld e, a                                          ; $4a4d: $5f
	cp a                                             ; $4a4e: $bf
	ld e, [hl]                                       ; $4a4f: $5e
	cp [hl]                                          ; $4a50: $be
	ld a, e                                          ; $4a51: $7b
	cp $77                                           ; $4a52: $fe $77
	sub e                                            ; $4a54: $93
	halt                                             ; $4a55: $76
	dec sp                                           ; $4a56: $3b
	ld e, [hl]                                       ; $4a57: $5e
	ldh a, [$9e]                                     ; $4a58: $f0 $9e
	ret nz                                           ; $4a5a: $c0

	ld [hl], b                                       ; $4a5b: $70
	ld a, $63                                        ; $4a5c: $3e $63
	ldh a, [$9e]                                     ; $4a5e: $f0 $9e
	add b                                            ; $4a60: $80
	ld l, h                                          ; $4a61: $6c
	db $ed                                           ; $4a62: $ed
	ld sp, hl                                        ; $4a63: $f9
	sbc [hl]                                         ; $4a64: $9e
	add e                                            ; $4a65: $83
	ld l, b                                          ; $4a66: $68
	sbc $1a                                          ; $4a67: $de $1a
	and b                                            ; $4a69: $a0
	inc de                                           ; $4a6a: $13
	ldh a, [rOCPD]                                   ; $4a6b: $f0 $6b
	rra                                              ; $4a6d: $1f
	ld h, e                                          ; $4a6e: $63
	ldh a, [$7e]                                     ; $4a6f: $f0 $7e
	rst JumpTable                                          ; $4a71: $c7
	ld c, a                                          ; $4a72: $4f
	ldh a, [$9b]                                     ; $4a73: $f0 $9b
	ccf                                              ; $4a75: $3f
	ld a, a                                          ; $4a76: $7f
	add e                                            ; $4a77: $83
	ld hl, sp+$57                                    ; $4a78: $f8 $57
	ldh a, [$31]                                     ; $4a7a: $f0 $31
	nop                                              ; $4a7c: $00
	sbc d                                            ; $4a7d: $9a
	ld b, h                                          ; $4a7e: $44
	inc sp                                           ; $4a7f: $33
	ld b, h                                          ; $4a80: $44
	ld b, e                                          ; $4a81: $43
	inc [hl]                                         ; $4a82: $34
	call c, $9a44                                    ; $4a83: $dc $44 $9a
	ld b, e                                          ; $4a86: $43
	ld [hl], $33                                     ; $4a87: $36 $33
	inc [hl]                                         ; $4a89: $34
	inc sp                                           ; $4a8a: $33
	sbc $44                                          ; $4a8b: $de $44
	adc a                                            ; $4a8d: $8f
	inc [hl]                                         ; $4a8e: $34
	ld d, h                                          ; $4a8f: $54
	ld d, [hl]                                       ; $4a90: $56
	ld h, [hl]                                       ; $4a91: $66
	ld h, e                                          ; $4a92: $63
	inc [hl]                                         ; $4a93: $34
	inc sp                                           ; $4a94: $33
	inc [hl]                                         ; $4a95: $34
	ld b, h                                          ; $4a96: $44
	ld b, e                                          ; $4a97: $43
	dec [hl]                                         ; $4a98: $35
	ld d, h                                          ; $4a99: $54
	ld b, e                                          ; $4a9a: $43
	ld h, [hl]                                       ; $4a9b: $66
	ld h, e                                          ; $4a9c: $63
	ld b, e                                          ; $4a9d: $43
	ld l, a                                          ; $4a9e: $6f
	or $9a                                           ; $4a9f: $f6 $9a
	ld [hl], a                                       ; $4aa1: $77
	ld h, [hl]                                       ; $4aa2: $66
	ld [hl], e                                       ; $4aa3: $73
	ld [hl], a                                       ; $4aa4: $77
	ld [hl], e                                       ; $4aa5: $73
	call c, $dc55                                    ; $4aa6: $dc $55 $dc
	ld [hl], a                                       ; $4aa9: $77
	call c, $9155                                    ; $4aaa: $dc $55 $91
	add d                                            ; $4aad: $82
	ld hl, sp-$26                                    ; $4aae: $f8 $da
	rst $38                                          ; $4ab0: $ff
	inc bc                                           ; $4ab1: $03
	ldh a, [$03]                                     ; $4ab2: $f0 $03
	ldh a, [rBGP]                                    ; $4ab4: $f0 $47
	ldh a, [hDisp0_WY]                                     ; $4ab6: $f0 $88
	dec de                                           ; $4ab8: $1b
	inc h                                            ; $4ab9: $24
	inc hl                                           ; $4aba: $23
	jr nz, jr_03d_4aed                               ; $4abb: $20 $30

	jr nz, jr_03d_4ae3                               ; $4abd: $20 $24

	dec a                                            ; $4abf: $3d
	ld hl, $3d31                                     ; $4ac0: $21 $31 $3d
	dec a                                            ; $4ac3: $3d
	ld [hl+], a                                      ; $4ac4: $22
	add hl, sp                                       ; $4ac5: $39
	nop                                              ; $4ac6: $00
	inc b                                            ; $4ac7: $04
	ld a, [bc]                                       ; $4ac8: $0a
	inc h                                            ; $4ac9: $24
	ld [bc], a                                       ; $4aca: $02
	inc b                                            ; $4acb: $04
	ld [hl+], a                                      ; $4acc: $22
	dec b                                            ; $4acd: $05
	inc b                                            ; $4ace: $04
	jp c, $98ff                                      ; $4acf: $da $ff $98

	ld [bc], a                                       ; $4ad2: $02
	nop                                              ; $4ad3: $00
	ld bc, $2523                                     ; $4ad4: $01 $23 $25
	dec b                                            ; $4ad7: $05
	inc b                                            ; $4ad8: $04
	ld a, e                                          ; $4ad9: $7b
	ret nc                                           ; $4ada: $d0

	sbc d                                            ; $4adb: $9a
	cp $de                                           ; $4adc: $fe $de
	jp c, $fbfa                                      ; $4ade: $da $fa $fb

	ld a, e                                          ; $4ae1: $7b
	ret nc                                           ; $4ae2: $d0

jr_03d_4ae3:
	sub c                                            ; $4ae3: $91
	ld [$8909], sp                                   ; $4ae4: $08 $09 $89
	and c                                            ; $4ae7: $a1
	and l                                            ; $4ae8: $a5
	add c                                            ; $4ae9: $81
	nop                                              ; $4aea: $00
	rst $38                                          ; $4aeb: $ff
	rst FarCall                                          ; $4aec: $f7

jr_03d_4aed:
	or $76                                           ; $4aed: $f6 $76
	ld e, [hl]                                       ; $4aef: $5e
	ld e, d                                          ; $4af0: $5a
	ld a, [hl]                                       ; $4af1: $7e
	cp $9a                                           ; $4af2: $fe $9a
	ld d, d                                          ; $4af4: $52
	ld b, e                                          ; $4af5: $43
	ld b, e                                          ; $4af6: $43
	ld b, [hl]                                       ; $4af7: $46
	dec a                                            ; $4af8: $3d
	ld a, e                                          ; $4af9: $7b
	or b                                             ; $4afa: $b0
	sub c                                            ; $4afb: $91
	xor l                                            ; $4afc: $ad
	cp l                                             ; $4afd: $bd
	cp a                                             ; $4afe: $bf
	cp a                                             ; $4aff: $bf
	rst $38                                          ; $4b00: $ff
	ld [$1c00], sp                                   ; $4b01: $08 $00 $1c
	ld a, a                                          ; $4b04: $7f
	db $eb                                           ; $4b05: $eb
	ld b, c                                          ; $4b06: $41
	add b                                            ; $4b07: $80
	ld d, h                                          ; $4b08: $54
	db $10                                           ; $4b09: $10
	ld h, a                                          ; $4b0a: $67
	and b                                            ; $4b0b: $a0
	sbc b                                            ; $4b0c: $98
	rlca                                             ; $4b0d: $07
	rrca                                             ; $4b0e: $0f
	ld e, a                                          ; $4b0f: $5f
	rst GetHLinHL                                          ; $4b10: $cf
	ld a, [$60e5]                                    ; $4b11: $fa $e5 $60
	ld a, e                                          ; $4b14: $7b
	ldh [hDisp1_BGP], a                                     ; $4b15: $e0 $92
	xor a                                            ; $4b17: $af
	ld hl, sp-$03                                    ; $4b18: $f8 $fd
	rst SubAFromBC                                          ; $4b1a: $e7
	ldh a, [rP1]                                     ; $4b1b: $f0 $00
	nop                                              ; $4b1d: $00
	add b                                            ; $4b1e: $80
	rst JumpTable                                          ; $4b1f: $c7
	add l                                            ; $4b20: $85
	push hl                                          ; $4b21: $e5
	add hl, bc                                       ; $4b22: $09
	rlca                                             ; $4b23: $07
	ld a, e                                          ; $4b24: $7b
	ldh a, [hDisp1_WX]                                     ; $4b25: $f0 $96
	cp b                                             ; $4b27: $b8
	ld a, [$1efa]                                    ; $4b28: $fa $fa $1e
	ld c, a                                          ; $4b2b: $4f
	nop                                              ; $4b2c: $00
	nop                                              ; $4b2d: $00
	ld a, [bc]                                       ; $4b2e: $0a
	dec hl                                           ; $4b2f: $2b
	sbc $2a                                          ; $4b30: $de $2a
	sbc d                                            ; $4b32: $9a
	ld l, d                                          ; $4b33: $6a
	nop                                              ; $4b34: $00
	rst $38                                          ; $4b35: $ff
	push af                                          ; $4b36: $f5
	call nc, $d5de                                   ; $4b37: $d4 $de $d5
	add [hl]                                         ; $4b3a: $86
	sub l                                            ; $4b3b: $95
	dec bc                                           ; $4b3c: $0b
	nop                                              ; $4b3d: $00
	inc d                                            ; $4b3e: $14
	dec d                                            ; $4b3f: $15
	dec d                                            ; $4b40: $15
	inc d                                            ; $4b41: $14
	dec e                                            ; $4b42: $1d
	dec d                                            ; $4b43: $15
	nop                                              ; $4b44: $00
	rst $38                                          ; $4b45: $ff
	db $eb                                           ; $4b46: $eb
	ld [$ebea], a                                    ; $4b47: $ea $ea $eb
	ldh [c], a                                       ; $4b4a: $e2
	ld [$0080], a                                    ; $4b4b: $ea $80 $00
	nop                                              ; $4b4e: $00
	ld c, b                                          ; $4b4f: $48
	ld a, d                                          ; $4b50: $7a
	ld d, b                                          ; $4b51: $50
	ld [hl], b                                       ; $4b52: $70
	ld d, l                                          ; $4b53: $55
	ld a, e                                          ; $4b54: $7b
	ret nc                                           ; $4b55: $d0

	sbc d                                            ; $4b56: $9a
	or a                                             ; $4b57: $b7
	add l                                            ; $4b58: $85
	xor a                                            ; $4b59: $af
	adc a                                            ; $4b5a: $8f
	xor d                                            ; $4b5b: $aa
	ld a, e                                          ; $4b5c: $7b
	ret nz                                           ; $4b5d: $c0

	sbc $a2                                          ; $4b5e: $de $a2
	sbc d                                            ; $4b60: $9a
	xor d                                            ; $4b61: $aa
	ld a, [bc]                                       ; $4b62: $0a
	nop                                              ; $4b63: $00
	rst $38                                          ; $4b64: $ff
	ld a, a                                          ; $4b65: $7f
	sbc $5d                                          ; $4b66: $de $5d
	sbc l                                            ; $4b68: $9d
	ld d, l                                          ; $4b69: $55
	push af                                          ; $4b6a: $f5
	cp $9a                                           ; $4b6b: $fe $9a
	push de                                          ; $4b6d: $d5
	add b                                            ; $4b6e: $80
	add h                                            ; $4b6f: $84
	nop                                              ; $4b70: $00
	jr nz, @+$7d                                     ; $4b71: $20 $7b

	ldh [$98], a                                     ; $4b73: $e0 $98
	ld a, [hl+]                                      ; $4b75: $2a
	ld a, a                                          ; $4b76: $7f
	ld a, e                                          ; $4b77: $7b
	rst $38                                          ; $4b78: $ff
	rst SubAFromDE                                          ; $4b79: $df
	ld [bc], a                                       ; $4b7a: $02
	nop                                              ; $4b7b: $00
	ld l, a                                          ; $4b7c: $6f
	cp $9e                                           ; $4b7d: $fe $9e
	ld [hl-], a                                      ; $4b7f: $32
	jp c, $dffe                                      ; $4b80: $da $fe $df

	rst $38                                          ; $4b83: $ff
	sbc d                                            ; $4b84: $9a
	ld a, [$dbed]                                    ; $4b85: $fa $ed $db
	cp a                                             ; $4b88: $bf
	xor $7b                                          ; $4b89: $ee $7b
	ret c                                            ; $4b8b: $d8

	sbc h                                            ; $4b8c: $9c
	rlca                                             ; $4b8d: $07
	rra                                              ; $4b8e: $1f
	ccf                                              ; $4b8f: $3f
	sbc $7f                                          ; $4b90: $de $7f
	ld a, e                                          ; $4b92: $7b
	ld a, c                                          ; $4b93: $79
	sub a                                            ; $4b94: $97
	ld b, l                                          ; $4b95: $45
	and d                                            ; $4b96: $a2
	ld b, l                                          ; $4b97: $45
	xor e                                            ; $4b98: $ab
	ld e, l                                          ; $4b99: $5d
	nop                                              ; $4b9a: $00
	nop                                              ; $4b9b: $00
	ld hl, sp+$7b                                    ; $4b9c: $f8 $7b
	db $e4                                           ; $4b9e: $e4
	rst SubAFromHL                                          ; $4b9f: $d7
	rst $38                                          ; $4ba0: $ff
	db $fc                                           ; $4ba1: $fc
	sbc $80                                          ; $4ba2: $de $80
	ld d, e                                          ; $4ba4: $53
	ldh a, [$5e]                                     ; $4ba5: $f0 $5e
	reti                                             ; $4ba7: $d9


	inc hl                                           ; $4ba8: $23
	ldh a, [$97]                                     ; $4ba9: $f0 $97
	ld [$0411], sp                                   ; $4bab: $08 $11 $04
	ld [$5855], sp                                   ; $4bae: $08 $55 $58
	inc b                                            ; $4bb1: $04
	db $10                                           ; $4bb2: $10
	call c, $9420                                    ; $4bb3: $dc $20 $94
	ld [hl+], a                                      ; $4bb6: $22
	ld h, b                                          ; $4bb7: $60
	ld h, d                                          ; $4bb8: $62
	ld sp, hl                                        ; $4bb9: $f9
	and b                                            ; $4bba: $a0
	or c                                             ; $4bbb: $b1
	or h                                             ; $4bbc: $b4
	sbc h                                            ; $4bbd: $9c
	call c, $defc                                    ; $4bbe: $dc $fc $de
	sbc $06                                          ; $4bc1: $de $06
	db $dd                                           ; $4bc3: $dd
	inc bc                                           ; $4bc4: $03
	sub [hl]                                         ; $4bc5: $96
	ld bc, $00fb                                     ; $4bc6: $01 $fb $00
	dec hl                                           ; $4bc9: $2b
	cp l                                             ; $4bca: $bd
	xor l                                            ; $4bcb: $ad
	db $fd                                           ; $4bcc: $fd
	cp h                                             ; $4bcd: $bc
	ld b, a                                          ; $4bce: $47
	ei                                               ; $4bcf: $fb
	sub l                                            ; $4bd0: $95
	inc bc                                           ; $4bd1: $03
	cp b                                             ; $4bd2: $b8
	ld e, a                                          ; $4bd3: $5f
	nop                                              ; $4bd4: $00
	ld a, [hl]                                       ; $4bd5: $7e
	ld a, [hl+]                                      ; $4bd6: $2a
	ld a, a                                          ; $4bd7: $7f
	db $ed                                           ; $4bd8: $ed
	nop                                              ; $4bd9: $00
	cp l                                             ; $4bda: $bd
	ei                                               ; $4bdb: $fb
	add l                                            ; $4bdc: $85
	ccf                                              ; $4bdd: $3f
	nop                                              ; $4bde: $00
	sbc d                                            ; $4bdf: $9a
	call $f7fe                                       ; $4be0: $cd $fe $f7
	rst $38                                          ; $4be3: $ff
	cp [hl]                                          ; $4be4: $be
	and d                                            ; $4be5: $a2
	rst $38                                          ; $4be6: $ff
	ccf                                              ; $4be7: $3f
	rrca                                             ; $4be8: $0f
	rrca                                             ; $4be9: $0f
	rlca                                             ; $4bea: $07
	inc bc                                           ; $4beb: $03
	ld bc, $0055                                     ; $4bec: $01 $55 $00
	xor d                                            ; $4bef: $aa
	ld e, a                                          ; $4bf0: $5f
	ld hl, sp-$40                                    ; $4bf1: $f8 $c0
	ret nz                                           ; $4bf3: $c0

	ld b, b                                          ; $4bf4: $40
	add b                                            ; $4bf5: $80
	ldh [$de], a                                     ; $4bf6: $e0 $de
	rst $38                                          ; $4bf8: $ff
	adc [hl]                                         ; $4bf9: $8e
	or $e0                                           ; $4bfa: $f6 $e0
	ldh [c], a                                       ; $4bfc: $e2
	ld h, h                                          ; $4bfd: $64
	db $10                                           ; $4bfe: $10

Jump_03d_4bff:
	pop hl                                           ; $4bff: $e1
	ldh a, [$60]                                     ; $4c00: $f0 $60
	db $10                                           ; $4c02: $10
	rra                                              ; $4c03: $1f
	ccf                                              ; $4c04: $3f
	rra                                              ; $4c05: $1f
	nop                                              ; $4c06: $00
	ldh a, [$fa]                                     ; $4c07: $f0 $fa
	push af                                          ; $4c09: $f5
	ld a, d                                          ; $4c0a: $7a
	sbc $7f                                          ; $4c0b: $de $7f
	add b                                            ; $4c0d: $80
	ld hl, sp+$6a                                    ; $4c0e: $f8 $6a
	nop                                              ; $4c10: $00
	ld [$ca48], sp                                   ; $4c11: $08 $48 $ca
	ldh a, [$f8]                                     ; $4c14: $f0 $f8
	ld c, $20                                        ; $4c16: $0e $20
	rst $38                                          ; $4c18: $ff
	ld h, d                                          ; $4c19: $62
	ldh [$e0], a                                     ; $4c1a: $e0 $e0
	ld hl, sp-$05                                    ; $4c1c: $f8 $fb
	inc a                                            ; $4c1e: $3c
	cp l                                             ; $4c1f: $bd
	ld bc, $0115                                     ; $4c20: $01 $15 $01
	xor a                                            ; $4c23: $af
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	xor d                                            ; $4c26: $aa
	ret nz                                           ; $4c27: $c0

	and b                                            ; $4c28: $a0
	ldh [rP1], a                                     ; $4c29: $e0 $00
	nop                                              ; $4c2b: $00
	xor a                                            ; $4c2c: $af
	add h                                            ; $4c2d: $84
	cp a                                             ; $4c2e: $bf
	nop                                              ; $4c2f: $00
	ld e, b                                          ; $4c30: $58
	ld d, [hl]                                       ; $4c31: $56
	ld c, h                                          ; $4c32: $4c
	ld e, d                                          ; $4c33: $5a
	ld e, a                                          ; $4c34: $5f
	ld e, a                                          ; $4c35: $5f
	sbc c                                            ; $4c36: $99
	db $ec                                           ; $4c37: $ec
	rlca                                             ; $4c38: $07
	rrca                                             ; $4c39: $0f
	rra                                              ; $4c3a: $1f
	rra                                              ; $4c3b: $1f
	ccf                                              ; $4c3c: $3f
	cp a                                             ; $4c3d: $bf
	ld a, a                                          ; $4c3e: $7f
	rra                                              ; $4c3f: $1f
	db $eb                                           ; $4c40: $eb
	ld a, a                                          ; $4c41: $7f
	rla                                              ; $4c42: $17
	xor e                                            ; $4c43: $ab
	ld e, l                                          ; $4c44: $5d
	rst $38                                          ; $4c45: $ff
	rst $38                                          ; $4c46: $ff
	inc sp                                           ; $4c47: $33
	db $fc                                           ; $4c48: $fc
	ld h, a                                          ; $4c49: $67
	ld [de], a                                       ; $4c4a: $12
	ld a, [hl]                                       ; $4c4b: $7e
	push de                                          ; $4c4c: $d5
	sbc b                                            ; $4c4d: $98
	dec hl                                           ; $4c4e: $2b
	ret nz                                           ; $4c4f: $c0

	add b                                            ; $4c50: $80
	nop                                              ; $4c51: $00
	ld b, b                                          ; $4c52: $40
	nop                                              ; $4c53: $00
	ld bc, $80de                                     ; $4c54: $01 $de $80
	ld a, [hl]                                       ; $4c57: $7e
	and d                                            ; $4c58: $a2
	ld a, [hl]                                       ; $4c59: $7e
	ld c, a                                          ; $4c5a: $4f
	add b                                            ; $4c5b: $80
	ld d, h                                          ; $4c5c: $54
	dec b                                            ; $4c5d: $05
	ret nz                                           ; $4c5e: $c0

	add hl, bc                                       ; $4c5f: $09
	adc e                                            ; $4c60: $8b
	cp h                                             ; $4c61: $bc
	ret nz                                           ; $4c62: $c0

	nop                                              ; $4c63: $00
	ei                                               ; $4c64: $fb
	ld a, [$f63f]                                    ; $4c65: $fa $3f $f6
	rst $38                                          ; $4c68: $ff
	ld a, h                                          ; $4c69: $7c
	ret nz                                           ; $4c6a: $c0

	cp $66                                           ; $4c6b: $fe $66
	ld b, d                                          ; $4c6d: $42
	ld c, [hl]                                       ; $4c6e: $4e
	ld [bc], a                                       ; $4c6f: $02
	or $1a                                           ; $4c70: $f6 $1a
	ld c, $63                                        ; $4c72: $0e $63
	rst $38                                          ; $4c74: $ff
	rst $38                                          ; $4c75: $ff
	rst FarCall                                          ; $4c76: $f7
	rst $38                                          ; $4c77: $ff
	rst $38                                          ; $4c78: $ff
	rla                                              ; $4c79: $17
	rrca                                             ; $4c7a: $0f
	sbc $ff                                          ; $4c7b: $de $ff
	halt                                             ; $4c7d: $76
	call z, $0867                                    ; $4c7e: $cc $67 $08
	adc d                                            ; $4c81: $8a
	inc bc                                           ; $4c82: $03
	xor a                                            ; $4c83: $af
	rst $38                                          ; $4c84: $ff
	pop af                                           ; $4c85: $f1
	ldh [$e1], a                                     ; $4c86: $e0 $e1
	add c                                            ; $4c88: $81
	ld bc, $ff03                                     ; $4c89: $01 $03 $ff
	cp $fe                                           ; $4c8c: $fe $fe
	ldh a, [c]                                       ; $4c8e: $f2
	ld a, [$f2c2]                                    ; $4c8f: $fa $c2 $f2
	ld [hl], h                                       ; $4c92: $74
	rst $38                                          ; $4c93: $ff
	rst $38                                          ; $4c94: $ff
	ld d, l                                          ; $4c95: $55
	xor d                                            ; $4c96: $aa
	ld c, [hl]                                       ; $4c97: $4e
	ldh [$03], a                                     ; $4c98: $e0 $03
	ldh a, [rHDMA3]                                  ; $4c9a: $f0 $53
	ldh a, [$9b]                                     ; $4c9c: $f0 $9b
	inc b                                            ; $4c9e: $04
	inc e                                            ; $4c9f: $1c
	jr jr_03d_4ca9                                   ; $4ca0: $18 $07

	db $dd                                           ; $4ca2: $dd
	rst $38                                          ; $4ca3: $ff
	sbc e                                            ; $4ca4: $9b
	ld h, d                                          ; $4ca5: $62
	ld h, c                                          ; $4ca6: $61
	ld h, a                                          ; $4ca7: $67
	ld a, b                                          ; $4ca8: $78

jr_03d_4ca9:
	db $fd                                           ; $4ca9: $fd
	sbc h                                            ; $4caa: $9c
	ret c                                            ; $4cab: $d8

	jp Jump_03d_6f3f                                 ; $4cac: $c3 $3f $6f


	sub a                                            ; $4caf: $97
	sbc l                                            ; $4cb0: $9d
	inc a                                            ; $4cb1: $3c
	ret nz                                           ; $4cb2: $c0

	db $fc                                           ; $4cb3: $fc
	sbc [hl]                                         ; $4cb4: $9e
	ld [de], a                                       ; $4cb5: $12
	jp c, Jump_03d_6fff                              ; $4cb6: $da $ff $6f

	ldh a, [c]                                       ; $4cb9: $f2
	ld [hl-], a                                      ; $4cba: $32
	ld [hl], b                                       ; $4cbb: $70
	ld [hl], e                                       ; $4cbc: $73
	ld h, $ff                                        ; $4cbd: $26 $ff
	sbc l                                            ; $4cbf: $9d
	ld bc, $dd02                                     ; $4cc0: $01 $02 $dd
	inc bc                                           ; $4cc3: $03
	sub h                                            ; $4cc4: $94
	cp $3c                                           ; $4cc5: $fe $3c
	ld c, h                                          ; $4cc7: $4c
	inc a                                            ; $4cc8: $3c
	adc [hl]                                         ; $4cc9: $8e
	rlca                                             ; $4cca: $07
	add b                                            ; $4ccb: $80
	add b                                            ; $4ccc: $80
	rra                                              ; $4ccd: $1f
	rst $38                                          ; $4cce: $ff
	cp $7b                                           ; $4ccf: $fe $7b
	ld c, b                                          ; $4cd1: $48
	ld a, e                                          ; $4cd2: $7b
	add sp, -$6c                                     ; $4cd3: $e8 $94
	jr @+$12                                         ; $4cd5: $18 $10

	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	add c                                            ; $4cd9: $81
	nop                                              ; $4cda: $00
	ld bc, $9fdf                                     ; $4cdb: $01 $df $9f
	ccf                                              ; $4cde: $3f
	ccf                                              ; $4cdf: $3f
	ld [hl], a                                       ; $4ce0: $77
	rst AddAOntoHL                                          ; $4ce1: $ef
	sub l                                            ; $4ce2: $95
	inc bc                                           ; $4ce3: $03
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	jr z, jr_03d_4d26                                ; $4ce6: $28 $3e

	rra                                              ; $4ce8: $1f
	inc sp                                           ; $4ce9: $33
	ccf                                              ; $4cea: $3f
	rst SubAFromBC                                          ; $4ceb: $e7
	ld hl, sp-$24                                    ; $4cec: $f8 $dc
	rst $38                                          ; $4cee: $ff
	sbc b                                            ; $4cef: $98
	ldh a, [rIE]                                     ; $4cf0: $f0 $ff
	ret nz                                           ; $4cf2: $c0

	jr nz, jr_03d_4cf5                               ; $4cf3: $20 $00

jr_03d_4cf5:
	add b                                            ; $4cf5: $80
	push de                                          ; $4cf6: $d5
	ld a, e                                          ; $4cf7: $7b
	ret c                                            ; $4cf8: $d8

	ld [hl], a                                       ; $4cf9: $77
	add hl, de                                       ; $4cfa: $19
	ld a, e                                          ; $4cfb: $7b
	ld sp, hl                                        ; $4cfc: $f9
	adc a                                            ; $4cfd: $8f
	ld hl, sp+$12                                    ; $4cfe: $f8 $12
	jr c, @+$1b                                      ; $4d00: $38 $19

	ld [$d078], sp                                   ; $4d02: $08 $78 $d0
	ldh [rTMA], a                                    ; $4d05: $e0 $06
	db $ec                                           ; $4d07: $ec
	rst $38                                          ; $4d08: $ff
	ld hl, sp-$01                                    ; $4d09: $f8 $ff
	db $fc                                           ; $4d0b: $fc
	add sp, $10                                      ; $4d0c: $e8 $10
	ld a, e                                          ; $4d0e: $7b
	ret nc                                           ; $4d0f: $d0

jr_03d_4d10:
	db $fd                                           ; $4d10: $fd
	sub [hl]                                         ; $4d11: $96
	ld bc, $0117                                     ; $4d12: $01 $17 $01
	add hl, de                                       ; $4d15: $19
	pop af                                           ; $4d16: $f1
	db $e3                                           ; $4d17: $e3
	di                                               ; $4d18: $f3
	ei                                               ; $4d19: $fb
	cp $fb                                           ; $4d1a: $fe $fb
	sbc h                                            ; $4d1c: $9c
	add b                                            ; $4d1d: $80
	jr z, jr_03d_4d10                                ; $4d1e: $28 $f0

	call c, Call_03d_6ec0                            ; $4d20: $dc $c0 $6e
	dec hl                                           ; $4d23: $2b
	ld [hl], l                                       ; $4d24: $75
	and [hl]                                         ; $4d25: $a6

jr_03d_4d26:
	ld [hl], a                                       ; $4d26: $77
	call c, $038b                                    ; $4d27: $dc $8b $03
	inc c                                            ; $4d2a: $0c
	jr @+$32                                         ; $4d2b: $18 $30

	ld [$2040], sp                                   ; $4d2d: $08 $40 $20
	ld de, $94aa                                     ; $4d30: $11 $aa $94
	ret nz                                           ; $4d33: $c0

	db $e3                                           ; $4d34: $e3
	ld b, $26                                        ; $4d35: $06 $26
	jp nc, $55ea                                     ; $4d37: $d2 $ea $55

	ld l, e                                          ; $4d3a: $6b
	ccf                                              ; $4d3b: $3f
	inc e                                            ; $4d3c: $1c
	ld d, $00                                        ; $4d3d: $16 $00
	rst SubAFromHL                                          ; $4d3f: $d7
	ld h, [hl]                                       ; $4d40: $66
	sbc h                                            ; $4d41: $9c
	ld [hl], a                                       ; $4d42: $77
	ld [hl], e                                       ; $4d43: $73
	inc sp                                           ; $4d44: $33
	db $db                                           ; $4d45: $db
	ld [hl], a                                       ; $4d46: $77
	sub h                                            ; $4d47: $94
	ld d, l                                          ; $4d48: $55
	ld [hl], a                                       ; $4d49: $77
	inc sp                                           ; $4d4a: $33
	inc sp                                           ; $4d4b: $33
	ld [hl], a                                       ; $4d4c: $77
	ld [hl], e                                       ; $4d4d: $73
	inc [hl]                                         ; $4d4e: $34
	ld b, h                                          ; $4d4f: $44
	ld b, h                                          ; $4d50: $44
	ld [hl], e                                       ; $4d51: $73
	ld d, e                                          ; $4d52: $53
	rlca                                             ; $4d53: $07
	add h                                            ; $4d54: $84
	db $fc                                           ; $4d55: $fc
	sbc h                                            ; $4d56: $9c
	ret nz                                           ; $4d57: $c0

	rst $38                                          ; $4d58: $ff
	ld a, a                                          ; $4d59: $7f
	ei                                               ; $4d5a: $fb
	adc l                                            ; $4d5b: $8d
	ldh a, [$1f]                                     ; $4d5c: $f0 $1f
	ccf                                              ; $4d5e: $3f
	rrca                                             ; $4d5f: $0f
	inc bc                                           ; $4d60: $03
	nop                                              ; $4d61: $00
	ld bc, $0603                                     ; $4d62: $01 $03 $06
	adc [hl]                                         ; $4d65: $8e
	inc e                                            ; $4d66: $1c
	inc bc                                           ; $4d67: $03
	nop                                              ; $4d68: $00
	nop                                              ; $4d69: $00
	ld bc, $0402                                     ; $4d6a: $01 $02 $04
	ld [$ffdc], sp                                   ; $4d6d: $08 $dc $ff
	sbc $1f                                          ; $4d70: $de $1f
	rst $38                                          ; $4d72: $ff
	sbc c                                            ; $4d73: $99
	add b                                            ; $4d74: $80
	ret nz                                           ; $4d75: $c0

	jr nz, @+$22                                     ; $4d76: $20 $20

	jr nc, jr_03d_4daa                               ; $4d78: $30 $30

	reti                                             ; $4d7a: $d9


	rst $38                                          ; $4d7b: $ff
	ld sp, hl                                        ; $4d7c: $f9
	inc bc                                           ; $4d7d: $03
	ldh a, [$03]                                     ; $4d7e: $f0 $03

Jump_03d_4d80:
	ldh a, [$03]                                     ; $4d80: $f0 $03
	ldh a, [$df]                                     ; $4d82: $f0 $df
	db $fc                                           ; $4d84: $fc
	sbc h                                            ; $4d85: $9c
	ld hl, sp-$10                                    ; $4d86: $f8 $f0
	pop hl                                           ; $4d88: $e1
	call c, $9403                                    ; $4d89: $dc $03 $94

Call_03d_4d8c:
	rlca                                             ; $4d8c: $07
	rrca                                             ; $4d8d: $0f
	rra                                              ; $4d8e: $1f
	ret nz                                           ; $4d8f: $c0

	ldh [$60], a                                     ; $4d90: $e0 $60
	pop af                                           ; $4d92: $f1
	ld [hl], c                                       ; $4d93: $71
	ldh a, [c]                                       ; $4d94: $f2
	db $e4                                           ; $4d95: $e4
	reti                                             ; $4d96: $d9


	jp c, $96ff                                      ; $4d97: $da $ff $96

	rst SubAFromBC                                          ; $4d9a: $e7
	nop                                              ; $4d9b: $00
	ld b, c                                          ; $4d9c: $41
	add b                                            ; $4d9d: $80
	sbc b                                            ; $4d9e: $98
	jr nz, jr_03d_4de1                               ; $4d9f: $20 $40

	rst $38                                          ; $4da1: $ff
	ret nz                                           ; $4da2: $c0

	reti                                             ; $4da3: $d9


	rst $38                                          ; $4da4: $ff
	rst SubAFromDE                                          ; $4da5: $df
	cp a                                             ; $4da6: $bf
	sbc c                                            ; $4da7: $99
	sbc a                                            ; $4da8: $9f
	sub a                                            ; $4da9: $97

jr_03d_4daa:
	sub a                                            ; $4daa: $97
	scf                                              ; $4dab: $37
	adc a                                            ; $4dac: $8f
	ccf                                              ; $4dad: $3f
	sbc $f0                                          ; $4dae: $de $f0
	sbc $f8                                          ; $4db0: $de $f8
	sbc l                                            ; $4db2: $9d
	ldh a, [$e0]                                     ; $4db3: $f0 $e0
	call c, $deff                                    ; $4db5: $dc $ff $de
	cp $fe                                           ; $4db8: $fe $fe
	ld a, a                                          ; $4dba: $7f
	ld sp, $02de                                     ; $4dbb: $31 $de $02
	rst SubAFromDE                                          ; $4dbe: $df
	ldh [$9c], a                                     ; $4dbf: $e0 $9c
	add a                                            ; $4dc1: $87
	adc a                                            ; $4dc2: $8f
	rla                                              ; $4dc3: $17
	sbc $1f                                          ; $4dc4: $de $1f
	ld a, a                                          ; $4dc6: $7f
	call z, $8080                                    ; $4dc7: $cc $80 $80
	inc bc                                           ; $4dca: $03
	dec b                                            ; $4dcb: $05
	jr jr_03d_4dd6                                   ; $4dcc: $18 $08

	db $10                                           ; $4dce: $10
	inc c                                            ; $4dcf: $0c
	inc c                                            ; $4dd0: $0c
	dec b                                            ; $4dd1: $05
	cp $c3                                           ; $4dd2: $fe $c3
	cp $f0                                           ; $4dd4: $fe $f0

jr_03d_4dd6:
	ld hl, sp+$1e                                    ; $4dd6: $f8 $1e
	ld b, $3a                                        ; $4dd8: $06 $3a
	db $fd                                           ; $4dda: $fd
	jp $307e                                         ; $4ddb: $c3 $7e $30


	db $10                                           ; $4dde: $10
	ld a, l                                          ; $4ddf: $7d
	ld a, a                                          ; $4de0: $7f

jr_03d_4de1:
	cp $7f                                           ; $4de1: $fe $7f
	add b                                            ; $4de3: $80
	nop                                              ; $4de4: $00
	inc b                                            ; $4de5: $04
	ld b, $3f                                        ; $4de6: $06 $3f
	rst SubAFromDE                                          ; $4de8: $df
	rst $38                                          ; $4de9: $ff
	sbc l                                            ; $4dea: $9d
	db $fd                                           ; $4deb: $fd
	call nc, $8077                                   ; $4dec: $d4 $77 $80
	sub b                                            ; $4def: $90
	ld a, a                                          ; $4df0: $7f
	rst $38                                          ; $4df1: $ff
	rst $38                                          ; $4df2: $ff
	ld a, a                                          ; $4df3: $7f
	ld a, a                                          ; $4df4: $7f
	ccf                                              ; $4df5: $3f
	ld a, a                                          ; $4df6: $7f
	ldh a, [$50]                                     ; $4df7: $f0 $50
	or b                                             ; $4df9: $b0
	ld d, b                                          ; $4dfa: $50
	jr nc, @+$72                                     ; $4dfb: $30 $70

	jr c, jr_03d_4e57                                ; $4dfd: $38 $58

	sbc $e0                                          ; $4dff: $de $e0
	sbc [hl]                                         ; $4e01: $9e
	ldh a, [$dd]                                     ; $4e02: $f0 $dd
	rst $38                                          ; $4e04: $ff
	sbc e                                            ; $4e05: $9b
	jr @+$12                                         ; $4e06: $18 $10

	jr jr_03d_4e19                                   ; $4e08: $18 $0f

	db $fd                                           ; $4e0a: $fd
	sbc c                                            ; $4e0b: $99
	ld bc, $fcc0                                     ; $4e0c: $01 $c0 $fc
	ld e, $07                                        ; $4e0f: $1e $07
	ld bc, $9dfe                                     ; $4e11: $01 $fe $9d
	add b                                            ; $4e14: $80
	ld a, b                                          ; $4e15: $78
	ld a, d                                          ; $4e16: $7a
	add $ff                                          ; $4e17: $c6 $ff

jr_03d_4e19:
	sbc d                                            ; $4e19: $9a
	cp $7e                                           ; $4e1a: $fe $7e
	ld a, $1e                                        ; $4e1c: $3e $1e
	cp [hl]                                          ; $4e1e: $be
	ld a, e                                          ; $4e1f: $7b
	ei                                               ; $4e20: $fb
	sub [hl]                                         ; $4e21: $96
	call z, $1c3a                                    ; $4e22: $cc $3a $1c
	ld a, [de]                                       ; $4e25: $1a
	inc e                                            ; $4e26: $1c
	ld a, [$3a7c]                                    ; $4e27: $fa $7c $3a
	rra                                              ; $4e2a: $1f
	jp c, $df0f                                      ; $4e2b: $da $0f $df

	db $10                                           ; $4e2e: $10
	ld a, a                                          ; $4e2f: $7f
	sub e                                            ; $4e30: $93
	db $dd                                           ; $4e31: $dd
	ld [$1003], sp                                   ; $4e32: $08 $03 $10
	inc bc                                           ; $4e35: $03
	ldh a, [$03]                                     ; $4e36: $f0 $03
	ldh a, [$7f]                                     ; $4e38: $f0 $7f
	ld de, $fcde                                     ; $4e3a: $11 $de $fc
	ld [hl], e                                       ; $4e3d: $73
	ld h, h                                          ; $4e3e: $64
	sub [hl]                                         ; $4e3f: $96
	ld [bc], a                                       ; $4e40: $02
	dec b                                            ; $4e41: $05
	dec b                                            ; $4e42: $05
	pop bc                                           ; $4e43: $c1
	add a                                            ; $4e44: $87
	call $177b                                       ; $4e45: $cd $7b $17
	ccf                                              ; $4e48: $3f
	ld [hl], a                                       ; $4e49: $77
	ld a, $7f                                        ; $4e4a: $3e $7f
	ld [$389b], a                                    ; $4e4c: $ea $9b $38
	jr nz, jr_03d_4e91                               ; $4e4f: $20 $40

	ld b, b                                          ; $4e51: $40
	ld a, d                                          ; $4e52: $7a
	or h                                             ; $4e53: $b4
	sub d                                            ; $4e54: $92
	ldh [$cf], a                                     ; $4e55: $e0 $cf

jr_03d_4e57:
	ret nc                                           ; $4e57: $d0

	ldh [$e0], a                                     ; $4e58: $e0 $e0
	call z, $3b9c                                    ; $4e5a: $cc $9c $3b
	scf                                              ; $4e5d: $37
	ld a, a                                          ; $4e5e: $7f
	rst $38                                          ; $4e5f: $ff
	ld hl, sp-$10                                    ; $4e60: $f8 $f0
	cp $7f                                           ; $4e62: $fe $7f
	db $ec                                           ; $4e64: $ec
	sbc h                                            ; $4e65: $9c
	ld a, c                                          ; $4e66: $79
	ld a, [hl-]                                      ; $4e67: $3a
	ld e, $79                                        ; $4e68: $1e $79
	ei                                               ; $4e6a: $fb
	ld a, e                                          ; $4e6b: $7b
	jr z, @-$63                                      ; $4e6c: $28 $9b

	halt                                             ; $4e6e: $76
	dec a                                            ; $4e6f: $3d
	ccf                                              ; $4e70: $3f
	rra                                              ; $4e71: $1f
	ld a, e                                          ; $4e72: $7b
	ld c, [hl]                                       ; $4e73: $4e
	sub b                                            ; $4e74: $90
	rlca                                             ; $4e75: $07
	dec bc                                           ; $4e76: $0b
	rlca                                             ; $4e77: $07
	jr nc, jr_03d_4e8a                               ; $4e78: $30 $10

	db $10                                           ; $4e7a: $10
	ld [$84c8], sp                                   ; $4e7b: $08 $c8 $84
	adc d                                            ; $4e7e: $8a
	adc [hl]                                         ; $4e7f: $8e
	db $fc                                           ; $4e80: $fc
	db $fc                                           ; $4e81: $fc
	db $fd                                           ; $4e82: $fd
	db $fd                                           ; $4e83: $fd
	ld [hl], a                                       ; $4e84: $77
	or b                                             ; $4e85: $b0
	sbc $02                                          ; $4e86: $de $02
	sbc $03                                          ; $4e88: $de $03

jr_03d_4e8a:
	rst SubAFromDE                                          ; $4e8a: $df
	ld [bc], a                                       ; $4e8b: $02
	rst SubAFromDE                                          ; $4e8c: $df
	rrca                                             ; $4e8d: $0f
	ld a, e                                          ; $4e8e: $7b
	rst SubAFromDE                                          ; $4e8f: $df
	sbc l                                            ; $4e90: $9d

jr_03d_4e91:
	rlca                                             ; $4e91: $07
	inc bc                                           ; $4e92: $03
	ld a, e                                          ; $4e93: $7b
	ldh [$df], a                                     ; $4e94: $e0 $df
	ldh [$8e], a                                     ; $4e96: $e0 $8e
	sub b                                            ; $4e98: $90
	ld [$381c], sp                                   ; $4e99: $08 $1c $38
	ldh a, [$f0]                                     ; $4e9c: $f0 $f0
	ldh a, [c]                                       ; $4e9e: $f2
	ld hl, sp-$08                                    ; $4e9f: $f8 $f8
	ld a, [$fafb]                                    ; $4ea1: $fa $fb $fa
	ld [$0d08], sp                                   ; $4ea4: $08 $08 $0d
	ld b, $04                                        ; $4ea7: $06 $04
	sbc $07                                          ; $4ea9: $de $07
	sbc b                                            ; $4eab: $98
	nop                                              ; $4eac: $00
	adc h                                            ; $4ead: $8c
	sbc d                                            ; $4eae: $9a
	ld a, d                                          ; $4eaf: $7a
	or b                                             ; $4eb0: $b0
	nop                                              ; $4eb1: $00
	nop                                              ; $4eb2: $00
	ld a, c                                          ; $4eb3: $79
	add $9c                                          ; $4eb4: $c6 $9c
	ld [de], a                                       ; $4eb6: $12
	dec h                                            ; $4eb7: $25
	rst GetHLinHL                                          ; $4eb8: $cf
	sbc $ff                                          ; $4eb9: $de $ff
	sbc $07                                          ; $4ebb: $de $07
	sub d                                            ; $4ebd: $92
	xor a                                            ; $4ebe: $af
	dec de                                           ; $4ebf: $1b
	cpl                                              ; $4ec0: $2f
	dec d                                            ; $4ec1: $15
	add hl, hl                                       ; $4ec2: $29
	jr c, jr_03d_4f1d                                ; $4ec3: $38 $58

	xor b                                            ; $4ec5: $a8
	ld e, b                                          ; $4ec6: $58
	db $fc                                           ; $4ec7: $fc
	db $fc                                           ; $4ec8: $fc
	cp $fe                                           ; $4ec9: $fe $fe
	ld b, a                                          ; $4ecb: $47
	ld d, b                                          ; $4ecc: $50
	cp $9a                                           ; $4ecd: $fe $9a
	add c                                            ; $4ecf: $81
	ldh a, [rAUD1SWEEP]                              ; $4ed0: $f0 $10
	ld [$7bc4], sp                                   ; $4ed2: $08 $c4 $7b
	ld d, d                                          ; $4ed5: $52
	ld a, a                                          ; $4ed6: $7f
	ld d, c                                          ; $4ed7: $51
	sbc h                                            ; $4ed8: $9c
	push hl                                          ; $4ed9: $e5
	ldh a, [c]                                       ; $4eda: $f2
	ld sp, hl                                        ; $4edb: $f9
	ld a, d                                          ; $4edc: $7a
	sub c                                            ; $4edd: $91
	call c, $97ff                                    ; $4ede: $dc $ff $97
	dec a                                            ; $4ee1: $3d
	ld l, d                                          ; $4ee2: $6a
	db $ed                                           ; $4ee3: $ed
	ld c, [hl]                                       ; $4ee4: $4e
	call $c3c6                                       ; $4ee5: $cd $c6 $c3
	pop bc                                           ; $4ee8: $c1
	db $dd                                           ; $4ee9: $dd
	rlca                                             ; $4eea: $07
	sbc c                                            ; $4eeb: $99
	add b                                            ; $4eec: $80
	ldh [$f0], a                                     ; $4eed: $e0 $f0
	ld hl, sp+$08                                    ; $4eef: $f8 $08
	inc c                                            ; $4ef1: $0c
	ld a, e                                          ; $4ef2: $7b
	add b                                            ; $4ef3: $80
	sbc h                                            ; $4ef4: $9c
	and b                                            ; $4ef5: $a0
	ret nc                                           ; $4ef6: $d0

	add sp, -$23                                     ; $4ef7: $e8 $dd
	rst $38                                          ; $4ef9: $ff
	ld a, a                                          ; $4efa: $7f
	ld e, h                                          ; $4efb: $5c
	halt                                             ; $4efc: $76
	sub [hl]                                         ; $4efd: $96
	ld a, [hl]                                       ; $4efe: $7e
	adc [hl]                                         ; $4eff: $8e
	sbc h                                            ; $4f00: $9c
	ldh a, [$0c]                                     ; $4f01: $f0 $0c
	ld bc, $0067                                     ; $4f03: $01 $67 $00
	ld l, c                                          ; $4f06: $69
	ld b, b                                          ; $4f07: $40
	ld a, a                                          ; $4f08: $7f
	db $ec                                           ; $4f09: $ec
	ld [bc], a                                       ; $4f0a: $02
	ldh [$0b], a                                     ; $4f0b: $e0 $0b
	ldh a, [$9e]                                     ; $4f0d: $f0 $9e
	db $fc                                           ; $4f0f: $fc
	jp c, $9dff                                      ; $4f10: $da $ff $9d

	dec b                                            ; $4f13: $05
	ld [bc], a                                       ; $4f14: $02
	ld c, a                                          ; $4f15: $4f
	ldh [$7d], a                                     ; $4f16: $e0 $7d
	db $ec                                           ; $4f18: $ec
	ei                                               ; $4f19: $fb
	ld a, l                                          ; $4f1a: $7d
	add b                                            ; $4f1b: $80
	ld a, c                                          ; $4f1c: $79

jr_03d_4f1d:
	xor b                                            ; $4f1d: $a8
	ld a, e                                          ; $4f1e: $7b
	db $db                                           ; $4f1f: $db
	sbc d                                            ; $4f20: $9a
	ld h, b                                          ; $4f21: $60
	jr nc, jr_03d_4f3c                               ; $4f22: $30 $18

	jr jr_03d_4f42                                   ; $4f24: $18 $1c

	sbc $3f                                          ; $4f26: $de $3f
	ld a, a                                          ; $4f28: $7f
	ld c, c                                          ; $4f29: $49
	rst $38                                          ; $4f2a: $ff
	rst SubAFromDE                                          ; $4f2b: $df
	db $10                                           ; $4f2c: $10
	sub c                                            ; $4f2d: $91
	jr c, jr_03d_4f6c                                ; $4f2e: $38 $3c

	dec e                                            ; $4f30: $1d
	ld a, [de]                                       ; $4f31: $1a
	rra                                              ; $4f32: $1f
	rra                                              ; $4f33: $1f
	cpl                                              ; $4f34: $2f
	ld l, h                                          ; $4f35: $6c
	add $c2                                          ; $4f36: $c6 $c2
	ld bc, $9301                                     ; $4f38: $01 $01 $93
	rlca                                             ; $4f3b: $07

jr_03d_4f3c:
	ld [hl], l                                       ; $4f3c: $75
	ld d, [hl]                                       ; $4f3d: $56
	sbc d                                            ; $4f3e: $9a
	ld a, [bc]                                       ; $4f3f: $0a
	ld b, $0c                                        ; $4f40: $06 $0c

jr_03d_4f42:
	ld hl, sp-$14                                    ; $4f42: $f8 $ec
	sbc $04                                          ; $4f44: $de $04
	ld h, a                                          ; $4f46: $67
	rrca                                             ; $4f47: $0f
	ld [hl], l                                       ; $4f48: $75
	db $dd                                           ; $4f49: $dd
	db $fd                                           ; $4f4a: $fd
	sbc [hl]                                         ; $4f4b: $9e
	rrca                                             ; $4f4c: $0f
	ld a, c                                          ; $4f4d: $79
	and a                                            ; $4f4e: $a7
	db $dd                                           ; $4f4f: $dd
	rst $38                                          ; $4f50: $ff
	sbc l                                            ; $4f51: $9d
	ld [hl], b                                       ; $4f52: $70
	ret nz                                           ; $4f53: $c0

	ei                                               ; $4f54: $fb
	sbc e                                            ; $4f55: $9b
	ei                                               ; $4f56: $fb
	cp $fd                                           ; $4f57: $fe $fd
	rst $38                                          ; $4f59: $ff
	halt                                             ; $4f5a: $76
	ld l, h                                          ; $4f5b: $6c
	ld [hl], a                                       ; $4f5c: $77
	res 3, d                                         ; $4f5d: $cb $9a
	inc bc                                           ; $4f5f: $03
	inc b                                            ; $4f60: $04
	ld [$3810], sp                                   ; $4f61: $08 $10 $38
	halt                                             ; $4f64: $76
	ld l, [hl]                                       ; $4f65: $6e
	ld l, a                                          ; $4f66: $6f
	adc b                                            ; $4f67: $88
	sub d                                            ; $4f68: $92
	sbc a                                            ; $4f69: $9f
	rst SubAFromBC                                          ; $4f6a: $e7
	add hl, de                                       ; $4f6b: $19

jr_03d_4f6c:
	rlca                                             ; $4f6c: $07
	rrca                                             ; $4f6d: $0f
	dec d                                            ; $4f6e: $15
	dec l                                            ; $4f6f: $2d
	dec d                                            ; $4f70: $15
	dec hl                                           ; $4f71: $2b
	ld e, a                                          ; $4f72: $5f
	cp a                                             ; $4f73: $bf
	ld l, a                                          ; $4f74: $6f
	ccf                                              ; $4f75: $3f
	sbc $fe                                          ; $4f76: $de $fe
	ld a, e                                          ; $4f78: $7b
	reti                                             ; $4f79: $d9


	ld l, c                                          ; $4f7a: $69
	jr nc, jr_03d_4fd8                               ; $4f7b: $30 $5b

	ld d, b                                          ; $4f7d: $50
	sub l                                            ; $4f7e: $95
	jp z, $0f14                                      ; $4f7f: $ca $14 $0f

	rla                                              ; $4f82: $17
	ld c, $15                                        ; $4f83: $0e $15
	dec bc                                           ; $4f85: $0b
	dec d                                            ; $4f86: $15
	db $fd                                           ; $4f87: $fd
	rst $38                                          ; $4f88: $ff
	ld h, d                                          ; $4f89: $62
	and l                                            ; $4f8a: $a5
	ld e, e                                          ; $4f8b: $5b
	ld d, b                                          ; $4f8c: $50
	rst SubAFromDE                                          ; $4f8d: $df
	add b                                            ; $4f8e: $80
	reti                                             ; $4f8f: $d9


	rst $38                                          ; $4f90: $ff
	sbc [hl]                                         ; $4f91: $9e
	ld [hl], l                                       ; $4f92: $75
	ld l, l                                          ; $4f93: $6d
	ld e, d                                          ; $4f94: $5a
	rst $38                                          ; $4f95: $ff
	sbc [hl]                                         ; $4f96: $9e
	push hl                                          ; $4f97: $e5
	ld l, e                                          ; $4f98: $6b
	ret nz                                           ; $4f99: $c0

	sbc l                                            ; $4f9a: $9d
	and b                                            ; $4f9b: $a0
	ld d, l                                          ; $4f9c: $55
	ld [hl], e                                       ; $4f9d: $73
	cp h                                             ; $4f9e: $bc
	rst SubAFromDE                                          ; $4f9f: $df
	ld b, b                                          ; $4fa0: $40
	sbc $80                                          ; $4fa1: $de $80
	ld [hl], a                                       ; $4fa3: $77
	push bc                                          ; $4fa4: $c5
	rst SubAFromDE                                          ; $4fa5: $df
	ret nz                                           ; $4fa6: $c0

	adc e                                            ; $4fa7: $8b
	push de                                          ; $4fa8: $d5
	ld a, a                                          ; $4fa9: $7f
	ld bc, $0001                                     ; $4faa: $01 $01 $00
	rra                                              ; $4fad: $1f
	rrca                                             ; $4fae: $0f
	daa                                              ; $4faf: $27
	add a                                            ; $4fb0: $87
	rra                                              ; $4fb1: $1f
	ld e, a                                          ; $4fb2: $5f
	ld a, a                                          ; $4fb3: $7f
	rst $38                                          ; $4fb4: $ff
	ldh [rAUD1SWEEP], a                              ; $4fb5: $e0 $10
	xor b                                            ; $4fb7: $a8
	ld a, b                                          ; $4fb8: $78
	ldh a, [$e0]                                     ; $4fb9: $f0 $e0
	add b                                            ; $4fbb: $80
	ld [bc], a                                       ; $4fbc: $02
	ret nc                                           ; $4fbd: $d0

	inc bc                                           ; $4fbe: $03
	ldh a, [rBGP]                                    ; $4fbf: $f0 $47
	ldh a, [hDisp1_WY]                                     ; $4fc1: $f0 $95
	ld a, [$bdf5]                                    ; $4fc3: $fa $f5 $bd
	cp a                                             ; $4fc6: $bf
	cp l                                             ; $4fc7: $bd
	cp l                                             ; $4fc8: $bd
	rst $38                                          ; $4fc9: $ff
	ccf                                              ; $4fca: $3f
	ccf                                              ; $4fcb: $3f
	ld a, $dc                                        ; $4fcc: $3e $dc
	ld a, [hl]                                       ; $4fce: $7e
	sbc [hl]                                         ; $4fcf: $9e
	ld a, l                                          ; $4fd0: $7d
	ld l, e                                          ; $4fd1: $6b
	ld c, c                                          ; $4fd2: $49
	sbc [hl]                                         ; $4fd3: $9e
	add e                                            ; $4fd4: $83
	ld l, d                                          ; $4fd5: $6a
	rst SubAFromDE                                          ; $4fd6: $df
	sub d                                            ; $4fd7: $92

jr_03d_4fd8:
	inc bc                                           ; $4fd8: $03
	ld bc, $8101                                     ; $4fd9: $01 $01 $81
	pop bc                                           ; $4fdc: $c1
	db $e3                                           ; $4fdd: $e3
	rst FarCall                                          ; $4fde: $f7
	ei                                               ; $4fdf: $fb
	add h                                            ; $4fe0: $84
	add [hl]                                         ; $4fe1: $86
	jp $3f67                                         ; $4fe2: $c3 $67 $3f


	ld a, c                                          ; $4fe5: $79
	sub [hl]                                         ; $4fe6: $96
	ld a, d                                          ; $4fe7: $7a
	dec h                                            ; $4fe8: $25
	sbc d                                            ; $4fe9: $9a
	rst $38                                          ; $4fea: $ff
	rst GetHLinHL                                          ; $4feb: $cf
	add a                                            ; $4fec: $87
	jp $7be3                                         ; $4fed: $c3 $e3 $7b


	inc [hl]                                         ; $4ff0: $34
	ld a, l                                          ; $4ff1: $7d
	ld e, a                                          ; $4ff2: $5f
	ld a, [hl]                                       ; $4ff3: $7e
	add a                                            ; $4ff4: $87
	ld h, [hl]                                       ; $4ff5: $66
	ld h, c                                          ; $4ff6: $61
	ld h, e                                          ; $4ff7: $63
	or b                                             ; $4ff8: $b0
	sbc h                                            ; $4ff9: $9c
	ldh [$c0], a                                     ; $4ffa: $e0 $c0
	add b                                            ; $4ffc: $80
	ld a, e                                          ; $4ffd: $7b
	rst SubAFromBC                                          ; $4ffe: $e7
	ld a, e                                          ; $4fff: $7b
	ldh a, [$99]                                     ; $5000: $f0 $99
	jr nz, jr_03d_5045                               ; $5002: $20 $41

	ld b, e                                          ; $5004: $43
	inc hl                                           ; $5005: $23
	rrca                                             ; $5006: $0f
	ld bc, $717a                                     ; $5007: $01 $7a $71
	sbc c                                            ; $500a: $99
	dec d                                            ; $500b: $15
	ld [hl-], a                                      ; $500c: $32
	ld d, l                                          ; $500d: $55
	or d                                             ; $500e: $b2
	ld h, b                                          ; $500f: $60
	rst $38                                          ; $5010: $ff
	ld a, d                                          ; $5011: $7a
	sbc c                                            ; $5012: $99
	sbc $f8                                          ; $5013: $de $f8
	ld a, a                                          ; $5015: $7f
	jp hl                                            ; $5016: $e9


	sub d                                            ; $5017: $92
	adc a                                            ; $5018: $8f
	rrca                                             ; $5019: $0f
	ld b, a                                          ; $501a: $47
	daa                                              ; $501b: $27
	ld b, e                                          ; $501c: $43
	and e                                            ; $501d: $a3
	rlca                                             ; $501e: $07
	rra                                              ; $501f: $1f
	ldh a, [hDisp1_SCY]                                     ; $5020: $f0 $90
	ld hl, sp+$1f                                    ; $5022: $f8 $1f
	rlca                                             ; $5024: $07
	ld a, e                                          ; $5025: $7b
	or d                                             ; $5026: $b2
	db $db                                           ; $5027: $db
	rst $38                                          ; $5028: $ff
	sbc l                                            ; $5029: $9d
	cp a                                             ; $502a: $bf
	ld e, a                                          ; $502b: $5f
	ld [hl], d                                       ; $502c: $72
	ldh [c], a                                       ; $502d: $e2
	rst SubAFromDE                                          ; $502e: $df
	ret nz                                           ; $502f: $c0

	sbc c                                            ; $5030: $99
	ldh [$2f], a                                     ; $5031: $e0 $2f
	rra                                              ; $5033: $1f
	ld a, $78                                        ; $5034: $3e $78
	push af                                          ; $5036: $f5
	ld e, d                                          ; $5037: $5a
	push bc                                          ; $5038: $c5
	sub a                                            ; $5039: $97
	cp a                                             ; $503a: $bf
	xor a                                            ; $503b: $af
	rla                                              ; $503c: $17
	dec b                                            ; $503d: $05
	ld b, d                                          ; $503e: $42
	xor d                                            ; $503f: $aa
	ret c                                            ; $5040: $d8

	ldh a, [c]                                       ; $5041: $f2
	ld a, e                                          ; $5042: $7b
	sub e                                            ; $5043: $93
	ld a, [hl]                                       ; $5044: $7e

jr_03d_5045:
	ld h, [hl]                                       ; $5045: $66
	sbc h                                            ; $5046: $9c
	ld sp, hl                                        ; $5047: $f9
	ei                                               ; $5048: $fb
	ei                                               ; $5049: $fb
	ld [hl], c                                       ; $504a: $71
	and e                                            ; $504b: $a3
	ld a, a                                          ; $504c: $7f
	add $6d                                          ; $504d: $c6 $6d
	adc a                                            ; $504f: $8f
	sbc h                                            ; $5050: $9c
	ldh [rAUD2LOW], a                                ; $5051: $e0 $18
	add h                                            ; $5053: $84
	inc bc                                           ; $5054: $03
	jr nz, @+$05                                     ; $5055: $20 $03

	ldh a, [rAUD1LOW]                                ; $5057: $f0 $13
	ldh a, [$9e]                                     ; $5059: $f0 $9e
	ld bc, $ffdc                                     ; $505b: $01 $dc $ff
	sbc h                                            ; $505e: $9c
	db $f4                                           ; $505f: $f4
	ld b, b                                          ; $5060: $40
	rra                                              ; $5061: $1f
	db $fc                                           ; $5062: $fc
	sbc l                                            ; $5063: $9d
	dec sp                                           ; $5064: $3b
	ldh [$66], a                                     ; $5065: $e0 $66
	ld b, b                                          ; $5067: $40
	ld a, l                                          ; $5068: $7d
	sbc b                                            ; $5069: $98
	ld [hl], c                                       ; $506a: $71
	add e                                            ; $506b: $83
	sbc c                                            ; $506c: $99
	ld [hl], b                                       ; $506d: $70
	ld hl, sp-$41                                    ; $506e: $f8 $bf
	rst $38                                          ; $5070: $ff
	db $fd                                           ; $5071: $fd
	di                                               ; $5072: $f3
	db $dd                                           ; $5073: $dd
	rst $38                                          ; $5074: $ff
	sbc e                                            ; $5075: $9b
	ld a, [hl]                                       ; $5076: $7e
	ld a, $1e                                        ; $5077: $3e $1e

Call_03d_5079:
	inc c                                            ; $5079: $0c

Jump_03d_507a:
	scf                                              ; $507a: $37
	or b                                             ; $507b: $b0
	ld a, h                                          ; $507c: $7c
	ld d, e                                          ; $507d: $53
	db $db                                           ; $507e: $db
	rst $38                                          ; $507f: $ff
	ld a, [hl]                                       ; $5080: $7e
	cp b                                             ; $5081: $b8
	ei                                               ; $5082: $fb
	sbc b                                            ; $5083: $98
	pop af                                           ; $5084: $f1
	ld hl, sp-$44                                    ; $5085: $f8 $bc
	db $fc                                           ; $5087: $fc
	cp $fb                                           ; $5088: $fe $fb
	rst $38                                          ; $508a: $ff
	ld a, e                                          ; $508b: $7b
	jp hl                                            ; $508c: $e9


	ld a, a                                          ; $508d: $7f
	ld a, [hl-]                                      ; $508e: $3a
	ld a, b                                          ; $508f: $78
	ld c, b                                          ; $5090: $48
	sbc [hl]                                         ; $5091: $9e
	inc bc                                           ; $5092: $03
	ld [hl], a                                       ; $5093: $77
	ld sp, $3f9c                                     ; $5094: $31 $9c $3f
	ld e, a                                          ; $5097: $5f
	rst AddAOntoHL                                          ; $5098: $ef
	ld [hl], a                                       ; $5099: $77
	ret nc                                           ; $509a: $d0

	ld a, a                                          ; $509b: $7f
	ld bc, $347d                                     ; $509c: $01 $7d $34
	ld a, d                                          ; $509f: $7a
	add $0f                                          ; $50a0: $c6 $0f
	ld h, b                                          ; $50a2: $60
	sbc h                                            ; $50a3: $9c
	rst SubAFromDE                                          ; $50a4: $df
	db $e3                                           ; $50a5: $e3
	ld sp, hl                                        ; $50a6: $f9
	ld l, a                                          ; $50a7: $6f
	ld a, a                                          ; $50a8: $7f
	ld a, [hl]                                       ; $50a9: $7e
	db $fc                                           ; $50aa: $fc
	ld [hl], e                                       ; $50ab: $73
	xor [hl]                                         ; $50ac: $ae
	sub a                                            ; $50ad: $97
	cp a                                             ; $50ae: $bf
	rst FarCall                                          ; $50af: $f7
	rst $38                                          ; $50b0: $ff
	ei                                               ; $50b1: $fb
	ldh a, [$c8]                                     ; $50b2: $f0 $c8
	db $e4                                           ; $50b4: $e4
	ldh a, [c]                                       ; $50b5: $f2
	ld [hl], h                                       ; $50b6: $74
	ld a, [$f89b]                                    ; $50b7: $fa $9b $f8
	jr nc, jr_03d_50d6                               ; $50ba: $30 $1a

	inc c                                            ; $50bc: $0c
	sbc $ff                                          ; $50bd: $de $ff
	sbc h                                            ; $50bf: $9c
	db $fc                                           ; $50c0: $fc
	ld l, b                                          ; $50c1: $68
	push af                                          ; $50c2: $f5
	call c, $7eff                                    ; $50c3: $dc $ff $7e
	ret nc                                           ; $50c6: $d0

	ld a, e                                          ; $50c7: $7b
	ld c, d                                          ; $50c8: $4a
	sub h                                            ; $50c9: $94
	push hl                                          ; $50ca: $e5
	adc h                                            ; $50cb: $8c
	jr jr_03d_5123                                   ; $50cc: $18 $55

	and d                                            ; $50ce: $a2
	ld d, c                                          ; $50cf: $51
	ld a, [$f6ff]                                    ; $50d0: $fa $ff $f6
	adc $bf                                          ; $50d3: $ce $bf
	ld a, b                                          ; $50d5: $78

jr_03d_50d6:
	dec [hl]                                         ; $50d6: $35
	sbc [hl]                                         ; $50d7: $9e
	rlca                                             ; $50d8: $07
	ld l, l                                          ; $50d9: $6d
	ld a, d                                          ; $50da: $7a
	sbc e                                            ; $50db: $9b
	ld d, b                                          ; $50dc: $50
	xor d                                            ; $50dd: $aa
	push de                                          ; $50de: $d5
	ld b, e                                          ; $50df: $43
	ld a, e                                          ; $50e0: $7b
	ld b, d                                          ; $50e1: $42
	ld a, [hl]                                       ; $50e2: $7e
	xor [hl]                                         ; $50e3: $ae
	sbc l                                            ; $50e4: $9d
	rst $38                                          ; $50e5: $ff
	ld a, h                                          ; $50e6: $7c
	ld a, e                                          ; $50e7: $7b
	add d                                            ; $50e8: $82
	rst SubAFromDE                                          ; $50e9: $df
	rra                                              ; $50ea: $1f
	sub h                                            ; $50eb: $94
	adc a                                            ; $50ec: $8f
	ld b, e                                          ; $50ed: $43
	rlca                                             ; $50ee: $07
	nop                                              ; $50ef: $00
	add b                                            ; $50f0: $80
	ld b, b                                          ; $50f1: $40
	jr nz, jr_03d_50f4                               ; $50f2: $20 $00

jr_03d_50f4:
	db $10                                           ; $50f4: $10
	add h                                            ; $50f5: $84
	ld a, h                                          ; $50f6: $7c
	ld [bc], a                                       ; $50f7: $02
	ldh [$0b], a                                     ; $50f8: $e0 $0b
	ldh a, [$9e]                                     ; $50fa: $f0 $9e
	db $fd                                           ; $50fc: $fd
	ld a, e                                          ; $50fd: $7b
	xor e                                            ; $50fe: $ab
	db $dd                                           ; $50ff: $dd
	rst $38                                          ; $5100: $ff
	sbc l                                            ; $5101: $9d
	ld [bc], a                                       ; $5102: $02
	ld b, $dd                                        ; $5103: $06 $dd
	rlca                                             ; $5105: $07
	rst SubAFromDE                                          ; $5106: $df
	inc bc                                           ; $5107: $03
	add b                                            ; $5108: $80
	rra                                              ; $5109: $1f
	ccf                                              ; $510a: $3f
	cp [hl]                                          ; $510b: $be
	adc b                                            ; $510c: $88
	ld [$becc], sp                                   ; $510d: $08 $cc $be
	ld a, a                                          ; $5110: $7f
	ld a, $3e                                        ; $5111: $3e $3e
	ld a, a                                          ; $5113: $7f
	adc b                                            ; $5114: $88
	add b                                            ; $5115: $80
	sbc b                                            ; $5116: $98
	db $fd                                           ; $5117: $fd
	cp a                                             ; $5118: $bf
	rrca                                             ; $5119: $0f
	dec bc                                           ; $511a: $0b
	sub e                                            ; $511b: $93
	cp l                                             ; $511c: $bd
	ccf                                              ; $511d: $3f
	ld a, a                                          ; $511e: $7f
	ld a, a                                          ; $511f: $7f
	ld e, a                                          ; $5120: $5f
	inc e                                            ; $5121: $1c
	inc b                                            ; $5122: $04

jr_03d_5123:
	ld a, [bc]                                       ; $5123: $0a
	ld a, d                                          ; $5124: $7a
	ld a, [hl]                                       ; $5125: $7e
	ld a, [hl]                                       ; $5126: $7e
	cp [hl]                                          ; $5127: $be
	sbc [hl]                                         ; $5128: $9e
	inc a                                            ; $5129: $3c
	inc bc                                           ; $512a: $03
	and b                                            ; $512b: $a0
	ld l, a                                          ; $512c: $6f
	ld [hl], $6f                                     ; $512d: $36 $6f
	ldh a, [$9d]                                     ; $512f: $f0 $9d
	ld bc, $6e07                                     ; $5131: $01 $07 $6e
	or b                                             ; $5134: $b0
	ld a, [hl]                                       ; $5135: $7e
	adc e                                            ; $5136: $8b
	sbc [hl]                                         ; $5137: $9e
	cp $72                                           ; $5138: $fe $72
	or b                                             ; $513a: $b0
	ld a, b                                          ; $513b: $78
	add hl, sp                                       ; $513c: $39
	ld a, a                                          ; $513d: $7f
	ld [bc], a                                       ; $513e: $02
	sbc h                                            ; $513f: $9c
	push af                                          ; $5140: $f5
	ld a, d                                          ; $5141: $7a
	ld a, [hl]                                       ; $5142: $7e
	ld a, e                                          ; $5143: $7b
	sbc $7f                                          ; $5144: $de $7f
	ld [bc], a                                       ; $5146: $02
	ld c, h                                          ; $5147: $4c
	sub b                                            ; $5148: $90
	inc bc                                           ; $5149: $03
	ld d, b                                          ; $514a: $50
	ld a, [$c17e]                                    ; $514b: $fa $7e $c1
	ld a, b                                          ; $514e: $78
	ld d, a                                          ; $514f: $57
	ld a, e                                          ; $5150: $7b
	push bc                                          ; $5151: $c5
	sbc [hl]                                         ; $5152: $9e
	rrca                                             ; $5153: $0f
	ld a, d                                          ; $5154: $7a
	xor a                                            ; $5155: $af
	rst SubAFromDE                                          ; $5156: $df
	rlca                                             ; $5157: $07
	ld a, a                                          ; $5158: $7f
	ld d, d                                          ; $5159: $52
	inc [hl]                                         ; $515a: $34
	nop                                              ; $515b: $00
	rst SubAFromDE                                          ; $515c: $df
	ld d, l                                          ; $515d: $55
	sbc $33                                          ; $515e: $de $33
	rst SubAFromDE                                          ; $5160: $df
	ld b, h                                          ; $5161: $44
	rst SubAFromDE                                          ; $5162: $df
	ld d, l                                          ; $5163: $55
	sbc [hl]                                         ; $5164: $9e
	ld d, a                                          ; $5165: $57
	ld [hl], a                                       ; $5166: $77
	or $98                                           ; $5167: $f6 $98
	scf                                              ; $5169: $37
	ld b, l                                          ; $516a: $45
	ld d, l                                          ; $516b: $55
	ld [hl], a                                       ; $516c: $77
	inc sp                                           ; $516d: $33
	inc sp                                           ; $516e: $33
	dec [hl]                                         ; $516f: $35
	ld [hl], a                                       ; $5170: $77
	or $99                                           ; $5171: $f6 $99
	inc [hl]                                         ; $5173: $34
	ld [hl], a                                       ; $5174: $77
	scf                                              ; $5175: $37
	ld [hl], a                                       ; $5176: $77
	ld [hl], e                                       ; $5177: $73
	ld [hl], l                                       ; $5178: $75
	ld [hl], a                                       ; $5179: $77
	pop af                                           ; $517a: $f1
	rst SubAFromDE                                          ; $517b: $df
	inc [hl]                                         ; $517c: $34
	sbc [hl]                                         ; $517d: $9e
	ld b, e                                          ; $517e: $43
	sbc $77                                          ; $517f: $de $77
	sbc [hl]                                         ; $5181: $9e
	ld [hl], e                                       ; $5182: $73
	sbc $33                                          ; $5183: $de $33
	sbc e                                            ; $5185: $9b
	scf                                              ; $5186: $37
	inc sp                                           ; $5187: $33
	ld b, h                                          ; $5188: $44
	inc sp                                           ; $5189: $33
	sbc $77                                          ; $518a: $de $77
	reti                                             ; $518c: $d9


	inc sp                                           ; $518d: $33
	xor e                                            ; $518e: $ab
	ld [bc], a                                       ; $518f: $02
	sbc d                                            ; $5190: $9a

jr_03d_5191:
	ld [bc], a                                       ; $5191: $02
	db $fc                                           ; $5192: $fc
	db $fd                                           ; $5193: $fd
	cp $ff                                           ; $5194: $fe $ff
	cp a                                             ; $5196: $bf
	rst $38                                          ; $5197: $ff
	rst $38                                          ; $5198: $ff
	rst SubAFromDE                                          ; $5199: $df

jr_03d_519a:
	rst $38                                          ; $519a: $ff
	cp l                                             ; $519b: $bd
	rst $38                                          ; $519c: $ff
	rst $38                                          ; $519d: $ff
	rst AddAOntoHL                                          ; $519e: $ef
	ld a, l                                          ; $519f: $7d
	sbc b                                            ; $51a0: $98
	ld b, b                                          ; $51a1: $40
	ld l, e                                          ; $51a2: $6b
	jr nz, jr_03d_519a                               ; $51a3: $20 $f5

	jr nz, jr_03d_5191                               ; $51a5: $20 $ea

	ldh [$7b], a                                     ; $51a7: $e0 $7b
	db $fc                                           ; $51a9: $fc
	sbc h                                            ; $51aa: $9c
	jr nz, @+$01                                     ; $51ab: $20 $ff

	jr nz, jr_03d_5226                               ; $51ad: $20 $77

	db $ec                                           ; $51af: $ec
	sbc [hl]                                         ; $51b0: $9e
	cp $b1                                           ; $51b1: $fe $b1
	ld e, a                                          ; $51b3: $5f
	xor [hl]                                         ; $51b4: $ae
	ld d, a                                          ; $51b5: $57
	xor [hl]                                         ; $51b6: $ae
	rst $38                                          ; $51b7: $ff
	rst $38                                          ; $51b8: $ff
	ld d, l                                          ; $51b9: $55
	xor e                                            ; $51ba: $ab
	ld d, l                                          ; $51bb: $55
	xor a                                            ; $51bc: $af
	ld d, a                                          ; $51bd: $57
	xor a                                            ; $51be: $af
	rst $38                                          ; $51bf: $ff
	ldh [$f0], a                                     ; $51c0: $e0 $f0
	rst SubAFromBC                                          ; $51c2: $e7
	cp h                                             ; $51c3: $bc
	ldh [$e0], a                                     ; $51c4: $e0 $e0
	ldh [$e0], a                                     ; $51c6: $e0 $e0
	pop hl                                           ; $51c8: $e1
	sbc [hl]                                         ; $51c9: $9e
	ld [bc], a                                       ; $51ca: $02
	db $fd                                           ; $51cb: $fd
	ld a, a                                          ; $51cc: $7f
	ld [$0093], a                                    ; $51cd: $ea $93 $00
	ld bc, $0307                                     ; $51d0: $01 $07 $03
	rrca                                             ; $51d3: $0f
	rrca                                             ; $51d4: $0f
	rra                                              ; $51d5: $1f
	rra                                              ; $51d6: $1f
	cp b                                             ; $51d7: $b8
	rra                                              ; $51d8: $1f
	inc b                                            ; $51d9: $04
	inc b                                            ; $51da: $04
	ld a, e                                          ; $51db: $7b
	ldh a, [hDisp1_BGP]                                     ; $51dc: $f0 $92
	rst $38                                          ; $51de: $ff
	ret c                                            ; $51df: $d8

	ld hl, sp+$00                                    ; $51e0: $f8 $00
	rst $38                                          ; $51e2: $ff
	ld l, b                                          ; $51e3: $68
	rst GetHLinHL                                          ; $51e4: $cf
	ld d, h                                          ; $51e5: $54
	rst JumpTable                                          ; $51e6: $c7
	adc b                                            ; $51e7: $88
	adc a                                            ; $51e8: $8f
	add b                                            ; $51e9: $80
	ld a, a                                          ; $51ea: $7f
	ld [hl], e                                       ; $51eb: $73
	ldh [$bf], a                                     ; $51ec: $e0 $bf
	add b                                            ; $51ee: $80
	add b                                            ; $51ef: $80
	sbc d                                            ; $51f0: $9a
	add b                                            ; $51f1: $80
	ret nz                                           ; $51f2: $c0

	ret nz                                           ; $51f3: $c0

	ldh [$c0], a                                     ; $51f4: $e0 $c0
	ld [hl], a                                       ; $51f6: $77
	db $f4                                           ; $51f7: $f4
	ld [hl], a                                       ; $51f8: $77
	db $fc                                           ; $51f9: $fc
	ld sp, hl                                        ; $51fa: $f9
	ld b, a                                          ; $51fb: $47
	ldh a, [$9e]                                     ; $51fc: $f0 $9e
	cp $7b                                           ; $51fe: $fe $7b
	xor [hl]                                         ; $5200: $ae
	ld a, a                                          ; $5201: $7f
	ldh a, [$9e]                                     ; $5202: $f0 $9e
	db $10                                           ; $5204: $10
	cp h                                             ; $5205: $bc
	db $10                                           ; $5206: $10
	db $10                                           ; $5207: $10
	db $10                                           ; $5208: $10
	db $10                                           ; $5209: $10
	ld [hl], e                                       ; $520a: $73
	sbc [hl]                                         ; $520b: $9e
	ld [hl], e                                       ; $520c: $73
	ld c, a                                          ; $520d: $4f
	ldh [$9e], a                                     ; $520e: $e0 $9e
	db $10                                           ; $5210: $10
	ld a, e                                          ; $5211: $7b
	di                                               ; $5212: $f3
	ld d, a                                          ; $5213: $57
	ldh a, [$9d]                                     ; $5214: $f0 $9d
	ld l, $dd                                        ; $5216: $2e $dd

jr_03d_5218:
	ld c, a                                          ; $5218: $4f
	ldh a, [$9e]                                     ; $5219: $f0 $9e
	rst JumpTable                                          ; $521b: $c7
	ld c, e                                          ; $521c: $4b
	ldh [$7b], a                                     ; $521d: $e0 $7b
	add hl, de                                       ; $521f: $19
	cp d                                             ; $5220: $ba
	rst $38                                          ; $5221: $ff
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00

jr_03d_5226:
	nop                                              ; $5226: $00
	rst GetHLinHL                                          ; $5227: $cf
	inc sp                                           ; $5228: $33
	ldh [$5f], a                                     ; $5229: $e0 $5f
	sub b                                            ; $522b: $90
	cp a                                             ; $522c: $bf
	rst $38                                          ; $522d: $ff
	nop                                              ; $522e: $00
	ld a, e                                          ; $522f: $7b
	db $ec                                           ; $5230: $ec
	sub b                                            ; $5231: $90
	ld e, $0c                                        ; $5232: $1e $0c
	ld d, $18                                        ; $5234: $16 $18
	ld e, $33                                        ; $5236: $1e $33
	jr nz, jr_03d_5218                               ; $5238: $20 $de

	ld hl, sp-$01                                    ; $523a: $f8 $ff
	rst $38                                          ; $523c: $ff
	ld d, l                                          ; $523d: $55
	xor d                                            ; $523e: $aa
	ld a, [bc]                                       ; $523f: $0a
	dec d                                            ; $5240: $15
	db $fd                                           ; $5241: $fd
	sub a                                            ; $5242: $97
	jr jr_03d_5245                                   ; $5243: $18 $00

jr_03d_5245:
	or b                                             ; $5245: $b0
	ld h, b                                          ; $5246: $60
	ldh [$c0], a                                     ; $5247: $e0 $c0
	nop                                              ; $5249: $00
	nop                                              ; $524a: $00
	sbc $da                                          ; $524b: $de $da
	add b                                            ; $524d: $80
	ld e, d                                          ; $524e: $5a
	ld d, d                                          ; $524f: $52
	nop                                              ; $5250: $00
	sbc $04                                          ; $5251: $de $04
	ld a, [hl]                                       ; $5253: $7e
	sub $7e                                          ; $5254: $d6 $7e
	jp c, Jump_03d_7e5e                              ; $5256: $da $5e $7e

	nop                                              ; $5259: $00
	nop                                              ; $525a: $00
	ldh a, [c]                                       ; $525b: $f2
	ldh a, [c]                                       ; $525c: $f2
	rst FarCall                                          ; $525d: $f7
	and $b2                                          ; $525e: $e6 $b2
	inc d                                            ; $5260: $14
	or a                                             ; $5261: $b7
	ld h, [hl]                                       ; $5262: $66
	rst FarCall                                          ; $5263: $f7
	or a                                             ; $5264: $b7
	sbc a                                            ; $5265: $9f
	or a                                             ; $5266: $b7
	db $10                                           ; $5267: $10
	sbc $00                                          ; $5268: $de $00
	nop                                              ; $526a: $00
	xor a                                            ; $526b: $af
	xor h                                            ; $526c: $ac
	add b                                            ; $526d: $80
	xor l                                            ; $526e: $ad
	xor a                                            ; $526f: $af
	ld a, $11                                        ; $5270: $3e $11
	cp c                                             ; $5272: $b9
	xor e                                            ; $5273: $ab
	adc c                                            ; $5274: $89
	xor e                                            ; $5275: $ab
	and h                                            ; $5276: $a4
	cp a                                             ; $5277: $bf
	ld bc, $00bb                                     ; $5278: $01 $bb $00
	nop                                              ; $527b: $00
	xor d                                            ; $527c: $aa
	xor b                                            ; $527d: $a8
	ld e, d                                          ; $527e: $5a
	ld l, d                                          ; $527f: $6a
	xor h                                            ; $5280: $ac
	or [hl]                                          ; $5281: $b6
	ld a, [de]                                       ; $5282: $1a
	ld a, d                                          ; $5283: $7a
	ld b, d                                          ; $5284: $42
	ld l, e                                          ; $5285: $6b
	ld b, b                                          ; $5286: $40

jr_03d_5287:
	ld l, d                                          ; $5287: $6a
	ld a, [bc]                                       ; $5288: $0a
	ld l, d                                          ; $5289: $6a
	nop                                              ; $528a: $00
	nop                                              ; $528b: $00
	jp nz, Jump_03d_748c                             ; $528c: $c2 $8c $74

	jr nz, jr_03d_5287                               ; $528f: $20 $f6

	ld e, d                                          ; $5291: $5a
	rst SubAFromDE                                          ; $5292: $df
	ld [de], a                                       ; $5293: $12
	rst SubAFromHL                                          ; $5294: $d7
	ld b, a                                          ; $5295: $47
	rst SubAFromHL                                          ; $5296: $d7
	adc h                                            ; $5297: $8c
	call c, $d898                                    ; $5298: $dc $98 $d8
	ld a, [hl-]                                      ; $529b: $3a
	dec [hl]                                         ; $529c: $35
	cp a                                             ; $529d: $bf
	ld a, [hl]                                       ; $529e: $7e
	rst $38                                          ; $529f: $ff
	ccf                                              ; $52a0: $3f
	ld a, e                                          ; $52a1: $7b
	cp $9e                                           ; $52a2: $fe $9e
	db $e4                                           ; $52a4: $e4
	ei                                               ; $52a5: $fb
	sbc l                                            ; $52a6: $9d
	cp a                                             ; $52a7: $bf
	ld e, a                                          ; $52a8: $5f
	sbc $ff                                          ; $52a9: $de $ff
	adc [hl]                                         ; $52ab: $8e
	cp $f7                                           ; $52ac: $fe $f7
	cp $f7                                           ; $52ae: $fe $f7
	rst $38                                          ; $52b0: $ff
	ld a, a                                          ; $52b1: $7f
	ld [hl], a                                       ; $52b2: $77
	inc c                                            ; $52b3: $0c
	inc e                                            ; $52b4: $1c
	rlca                                             ; $52b5: $07
	rlca                                             ; $52b6: $07
	add a                                            ; $52b7: $87
	ld hl, sp-$80                                    ; $52b8: $f8 $80
	add b                                            ; $52ba: $80
	or l                                             ; $52bb: $b5
	nop                                              ; $52bc: $00
	db $db                                           ; $52bd: $db
	or l                                             ; $52be: $b5
	rst SubAFromDE                                          ; $52bf: $df
	ld [de], a                                       ; $52c0: $12
	halt                                             ; $52c1: $76
	ld c, d                                          ; $52c2: $4a
	rst $38                                          ; $52c3: $ff
	ld a, a                                          ; $52c4: $7f
	ldh a, [hDisp1_WY]                                     ; $52c5: $f0 $95
	inc h                                            ; $52c7: $24
	nop                                              ; $52c8: $00
	or l                                             ; $52c9: $b5
	and l                                            ; $52ca: $a5
	push hl                                          ; $52cb: $e5
	dec h                                            ; $52cc: $25
	dec h                                            ; $52cd: $25
	nop                                              ; $52ce: $00
	db $fd                                           ; $52cf: $fd
	or l                                             ; $52d0: $b5
	ld [hl], a                                       ; $52d1: $77
	ldh a, [$9e]                                     ; $52d2: $f0 $9e
	or a                                             ; $52d4: $b7
	cp a                                             ; $52d5: $bf
	nop                                              ; $52d6: $00
	cp a                                             ; $52d7: $bf
	sub a                                            ; $52d8: $97
	cpl                                              ; $52d9: $2f
	xor a                                            ; $52da: $af
	dec l                                            ; $52db: $2d
	jr z, jr_03d_52fe                                ; $52dc: $28 $20

	xor a                                            ; $52de: $af
	nop                                              ; $52df: $00
	rst AddAOntoHL                                          ; $52e0: $ef
	ld a, e                                          ; $52e1: $7b
	dec a                                            ; $52e2: $3d
	sbc [hl]                                         ; $52e3: $9e
	ld e, [hl]                                       ; $52e4: $5e
	cp a                                             ; $52e5: $bf
	ld [bc], a                                       ; $52e6: $02
	cp $9b                                           ; $52e7: $fe $9b
	ld a, d                                          ; $52e9: $7a
	ld b, b                                          ; $52ea: $40
	ld b, b                                          ; $52eb: $40
	ld c, $bb                                        ; $52ec: $0e $bb
	cp $ff                                           ; $52ee: $fe $ff
	nop                                              ; $52f0: $00
	or $a4                                           ; $52f1: $f6 $a4
	cp $9d                                           ; $52f3: $fe $9d
	sub $df                                          ; $52f5: $d6 $df
	cp d                                             ; $52f7: $ba
	sbc [hl]                                         ; $52f8: $9e
	add h                                            ; $52f9: $84
	rst $38                                          ; $52fa: $ff
	nop                                              ; $52fb: $00
	or h                                             ; $52fc: $b4
	and l                                            ; $52fd: $a5

jr_03d_52fe:
	rst FarCall                                          ; $52fe: $f7
	sbc l                                            ; $52ff: $9d
	sub h                                            ; $5300: $94
	and h                                            ; $5301: $a4
	cp d                                             ; $5302: $ba
	add l                                            ; $5303: $85
	or l                                             ; $5304: $b5
	rst $38                                          ; $5305: $ff
	nop                                              ; $5306: $00
	xor h                                            ; $5307: $ac
	inc c                                            ; $5308: $0c
	cp a                                             ; $5309: $bf
	sbc l                                            ; $530a: $9d
	or [hl]                                          ; $530b: $b6
	dec [hl]                                         ; $530c: $35
	cp d                                             ; $530d: $ba
	or [hl]                                          ; $530e: $b6
	cp [hl]                                          ; $530f: $be
	rst $38                                          ; $5310: $ff
	nop                                              ; $5311: $00
	or l                                             ; $5312: $b5
	dec [hl]                                         ; $5313: $35
	cp a                                             ; $5314: $bf
	sbc l                                            ; $5315: $9d
	or l                                             ; $5316: $b5
	xor l                                            ; $5317: $ad
	cp e                                             ; $5318: $bb
	cp a                                             ; $5319: $bf
	rst SubAFromBC                                          ; $531a: $e7
	rst $38                                          ; $531b: $ff

jr_03d_531c:
	nop                                              ; $531c: $00
	push hl                                          ; $531d: $e5
	ei                                               ; $531e: $fb

jr_03d_531f:
	sbc e                                            ; $531f: $9b
	jr nz, jr_03d_531f                               ; $5320: $20 $fd

	db $fd                                           ; $5322: $fd
	ld h, b                                          ; $5323: $60
	cp e                                             ; $5324: $bb
	xor l                                            ; $5325: $ad
	push af                                          ; $5326: $f5
	rst $38                                          ; $5327: $ff
	nop                                              ; $5328: $00
	ld bc, $9b23                                     ; $5329: $01 $23 $9b
	ld hl, sCurrOffsetIntoScript+1                                     ; $532c: $21 $bd $bd
	ld [$6fbe], sp                                   ; $532f: $08 $be $6f
	rst AddAOntoHL                                          ; $5332: $ef
	rst FarCall                                          ; $5333: $f7
	ld a, a                                          ; $5334: $7f
	di                                               ; $5335: $f3
	cp a                                             ; $5336: $bf
	jr nz, jr_03d_531c                               ; $5337: $20 $e3

	sbc e                                            ; $5339: $9b
	and c                                            ; $533a: $a1
	xor a                                            ; $533b: $af
	xor a                                            ; $533c: $af
	ld c, b                                          ; $533d: $48
	cp [hl]                                          ; $533e: $be
	db $fd                                           ; $533f: $fd
	jp hl                                            ; $5340: $e9


	db $fd                                           ; $5341: $fd
	sbc [hl]                                         ; $5342: $9e
	adc c                                            ; $5343: $89
	ld a, e                                          ; $5344: $7b
	rst AddAOntoHL                                          ; $5345: $ef
	sub e                                            ; $5346: $93
	nop                                              ; $5347: $00
	ld [hl], c                                       ; $5348: $71
	ld h, c                                          ; $5349: $61
	ld h, e                                          ; $534a: $63
	ld h, e                                          ; $534b: $63
	ld b, h                                          ; $534c: $44
	nop                                              ; $534d: $00
	ld l, e                                          ; $534e: $6b
	ld [$084b], sp                                   ; $534f: $08 $4b $08
	rst $38                                          ; $5352: $ff
	cp [hl]                                          ; $5353: $be
	rra                                              ; $5354: $1f
	nop                                              ; $5355: $00
	ld l, l                                          ; $5356: $6d
	sbc e                                            ; $5357: $9b
	ld l, l                                          ; $5358: $6d
	ld a, l                                          ; $5359: $7d
	ld l, l                                          ; $535a: $6d
	ld c, c                                          ; $535b: $49
	cp [hl]                                          ; $535c: $be
	db $fd                                           ; $535d: $fd
	ld l, l                                          ; $535e: $6d
	ld e, b                                          ; $535f: $58
	sbc h                                            ; $5360: $9c
	ld a, e                                          ; $5361: $7b
	ld b, b                                          ; $5362: $40
	ld e, d                                          ; $5363: $5a
	cp a                                             ; $5364: $bf
	ld c, b                                          ; $5365: $48
	ld e, d                                          ; $5366: $5a
	add b                                            ; $5367: $80
	ld b, h                                          ; $5368: $44
	ld e, [hl]                                       ; $5369: $5e
	inc d                                            ; $536a: $14
	ld e, a                                          ; $536b: $5f
	nop                                              ; $536c: $00
	adc d                                            ; $536d: $8a
	ld [de], a                                       ; $536e: $12
	sbc $80                                          ; $536f: $de $80
	or h                                             ; $5371: $b4
	ld de, $04b7                                     ; $5372: $11 $b7 $04
	sub $00                                          ; $5375: $d6 $00
	or $34                                           ; $5377: $f6 $34
	or [hl]                                          ; $5379: $b6
	and c                                            ; $537a: $a1
	or a                                             ; $537b: $b7
	inc b                                            ; $537c: $04
	or [hl]                                          ; $537d: $b6
	inc h                                            ; $537e: $24
	rst FarCall                                          ; $537f: $f7
	nop                                              ; $5380: $00
	di                                               ; $5381: $f3
	and b                                            ; $5382: $a0
	jp hl                                            ; $5383: $e9


	add hl, bc                                       ; $5384: $09
	cp e                                             ; $5385: $bb
	ld [$bb82], sp                                   ; $5386: $08 $82 $bb
	add hl, bc                                       ; $5389: $09
	ld a, e                                          ; $538a: $7b
	dec hl                                           ; $538b: $2b
	db $eb                                           ; $538c: $eb
	ld a, [bc]                                       ; $538d: $0a
	cp a                                             ; $538e: $bf
	add hl, hl                                       ; $538f: $29
	cp e                                             ; $5390: $bb
	ld [bc], a                                       ; $5391: $02
	ld h, $48                                        ; $5392: $26 $48
	ld l, d                                          ; $5394: $6a
	ld c, d                                          ; $5395: $4a
	ld l, d                                          ; $5396: $6a
	ld a, [de]                                       ; $5397: $1a
	ld a, [$6a42]                                    ; $5398: $fa $42 $6a
	ld b, d                                          ; $539b: $42
	ld l, e                                          ; $539c: $6b
	ld a, [de]                                       ; $539d: $1a
	ld a, e                                          ; $539e: $7b
	ld b, e                                          ; $539f: $43
	ld l, a                                          ; $53a0: $6f
	ld [hl], b                                       ; $53a1: $70
	ld [hl], b                                       ; $53a2: $70
	and b                                            ; $53a3: $a0
	ldh [$79], a                                     ; $53a4: $e0 $79
	cp c                                             ; $53a6: $b9
	sbc [hl]                                         ; $53a7: $9e
	ret nz                                           ; $53a8: $c0

	db $dd                                           ; $53a9: $dd
	add b                                            ; $53aa: $80
	db $ed                                           ; $53ab: $ed
	rst SubAFromDE                                          ; $53ac: $df
	inc bc                                           ; $53ad: $03
	sbc l                                            ; $53ae: $9d
	ld bc, $de03                                     ; $53af: $01 $03 $de
	ld bc, $0996                                     ; $53b2: $01 $96 $09
	ld bc, $0111                                     ; $53b5: $01 $11 $01
	ld sp, $6901                                     ; $53b8: $31 $01 $69
	ld b, b                                          ; $53bb: $40
	pop af                                           ; $53bc: $f1
	db $dd                                           ; $53bd: $dd
	or l                                             ; $53be: $b5
	sbc h                                            ; $53bf: $9c
	add c                                            ; $53c0: $81
	add b                                            ; $53c1: $80
	xor l                                            ; $53c2: $ad
	ld [hl], a                                       ; $53c3: $77
	cp $99                                           ; $53c4: $fe $99
	add [hl]                                         ; $53c6: $86
	and b                                            ; $53c7: $a0
	adc a                                            ; $53c8: $8f
	and e                                            ; $53c9: $a3
	sub a                                            ; $53ca: $97
	add c                                            ; $53cb: $81
	cp d                                             ; $53cc: $ba
	dec b                                            ; $53cd: $05
	rst SubAFromBC                                          ; $53ce: $e7
	ld a, b                                          ; $53cf: $78
	ld hl, $692d                                     ; $53d0: $21 $2d $69
	ld l, c                                          ; $53d3: $69
	sbc l                                            ; $53d4: $9d
	add b                                            ; $53d5: $80
	ccf                                              ; $53d6: $3f
	or c                                             ; $53d7: $b1
	dec hl                                           ; $53d8: $2b
	ldh [$0b], a                                     ; $53d9: $e0 $0b
	dec hl                                           ; $53db: $2b
	ld l, d                                          ; $53dc: $6a
	ld l, e                                          ; $53dd: $6b
	rst AddAOntoHL                                          ; $53de: $ef
	ld e, d                                          ; $53df: $5a
	ld b, d                                          ; $53e0: $42
	ld d, [hl]                                       ; $53e1: $56
	ld d, d                                          ; $53e2: $52
	ld e, h                                          ; $53e3: $5c
	ld d, h                                          ; $53e4: $54
	ld d, [hl]                                       ; $53e5: $56
	ld d, a                                          ; $53e6: $57
	sub [hl]                                         ; $53e7: $96
	or c                                             ; $53e8: $b1
	or $b6                                           ; $53e9: $f6 $b6
	rst FarCall                                          ; $53eb: $f7
	sub a                                            ; $53ec: $97
	cp [hl]                                          ; $53ed: $be
	or [hl]                                          ; $53ee: $b6
	or $b5                                           ; $53ef: $f6 $b5
	or a                                             ; $53f1: $b7
	xor l                                            ; $53f2: $ad
	and l                                            ; $53f3: $a5
	xor l                                            ; $53f4: $ad
	and l                                            ; $53f5: $a5
	and l                                            ; $53f6: $a5
	rst AddAOntoHL                                          ; $53f7: $ef
	sbc a                                            ; $53f8: $9f
	or c                                             ; $53f9: $b1
	or h                                             ; $53fa: $b4
	and h                                            ; $53fb: $a4
	inc h                                            ; $53fc: $24
	or a                                             ; $53fd: $b7
	xor h                                            ; $53fe: $ac
	cp h                                             ; $53ff: $bc
	sbc l                                            ; $5400: $9d
	xor l                                            ; $5401: $ad
	and l                                            ; $5402: $a5
	xor l                                            ; $5403: $ad
	ld hl, $afbf                                     ; $5404: $21 $bf $af
	add sp, -$19                                     ; $5407: $e8 $e7
	db $ed                                           ; $5409: $ed
	or c                                             ; $540a: $b1
	cp l                                             ; $540b: $bd
	xor c                                            ; $540c: $a9
	jr nz, jr_03d_5478                               ; $540d: $20 $69

	cpl                                              ; $540f: $2f
	ld l, l                                          ; $5410: $6d
	rst AddAOntoHL                                          ; $5411: $ef
	db $dd                                           ; $5412: $dd
	db $ed                                           ; $5413: $ed
	ld l, c                                          ; $5414: $69
	add hl, bc                                       ; $5415: $09
	ld l, [hl]                                       ; $5416: $6e
	ld a, e                                          ; $5417: $7b
	db $eb                                           ; $5418: $eb
	rst AddAOntoHL                                          ; $5419: $ef
	ld l, a                                          ; $541a: $6f
	cp c                                             ; $541b: $b9
	ld l, a                                          ; $541c: $6f
	ld l, e                                          ; $541d: $6b
	add hl, bc                                       ; $541e: $09
	db $eb                                           ; $541f: $eb
	ld a, e                                          ; $5420: $7b
	ld a, e                                          ; $5421: $7b
	ld a, a                                          ; $5422: $7f
	ld c, e                                          ; $5423: $4b

jr_03d_5424:
	sbc e                                            ; $5424: $9b
	ld [$089b], sp                                   ; $5425: $08 $9b $08
	res 6, h                                         ; $5428: $cb $b4
	ld [$7b5f], sp                                   ; $542a: $08 $5f $7b
	ld a, e                                          ; $542d: $7b
	ld a, c                                          ; $542e: $79
	ld c, a                                          ; $542f: $4f
	ld a, a                                          ; $5430: $7f
	ld l, e                                          ; $5431: $6b
	ld c, c                                          ; $5432: $49
	ld a, e                                          ; $5433: $7b
	ld a, e                                          ; $5434: $7b
	ld a, a                                          ; $5435: $7f
	dec bc                                           ; $5436: $0b
	sbc [hl]                                         ; $5437: $9e
	nop                                              ; $5438: $00
	inc c                                            ; $5439: $0c
	nop                                              ; $543a: $00
	sbc $55                                          ; $543b: $de $55
	sbc [hl]                                         ; $543d: $9e
	ld [hl], l                                       ; $543e: $75
	call c, $9e55                                    ; $543f: $dc $55 $9e
	ld [hl], l                                       ; $5442: $75
	call $a244                                       ; $5443: $cd $44 $a2
	inc b                                            ; $5446: $04
	add a                                            ; $5447: $87
	sub h                                            ; $5448: $94
	rst SubAFromDE                                          ; $5449: $df
	adc d                                            ; $544a: $8a
	rst GetHLinHL                                          ; $544b: $cf
	ld d, l                                          ; $544c: $55
	rst SubAFromDE                                          ; $544d: $df
	xor a                                            ; $544e: $af
	rst $38                                          ; $544f: $ff
	ld hl, sp-$01                                    ; $5450: $f8 $ff
	ld a, a                                          ; $5452: $7f
	ret nz                                           ; $5453: $c0

	rst $38                                          ; $5454: $ff
	nop                                              ; $5455: $00
	rst $38                                          ; $5456: $ff
	nop                                              ; $5457: $00
	dec d                                            ; $5458: $15
	or a                                             ; $5459: $b7
	xor e                                            ; $545a: $ab
	rst $38                                          ; $545b: $ff
	ld e, a                                          ; $545c: $5f
	rst $38                                          ; $545d: $ff
	rst FarCall                                          ; $545e: $f7
	ld hl, sp+$77                                    ; $545f: $f8 $77
	db $f4                                           ; $5461: $f4
	sub l                                            ; $5462: $95
	cp $00                                           ; $5463: $fe $00
	add b                                            ; $5465: $80
	dec hl                                           ; $5466: $2b
	jr z, jr_03d_5424                                ; $5467: $28 $bb

	ret nz                                           ; $5469: $c0

	ei                                               ; $546a: $fb
	cp a                                             ; $546b: $bf
	ldh a, [rPCM34]                                  ; $546c: $f0 $77
	ldh a, [c]                                       ; $546e: $f2
	adc c                                            ; $546f: $89
	ldh [$0a], a                                     ; $5470: $e0 $0a
	rrca                                             ; $5472: $0f
	or b                                             ; $5473: $b0
	rst $38                                          ; $5474: $ff
	nop                                              ; $5475: $00
	ld b, [hl]                                       ; $5476: $46
	ld c, c                                          ; $5477: $49

jr_03d_5478:
	or $0e                                           ; $5478: $f6 $0e
	cp $05                                           ; $547a: $fe $05
	cp $02                                           ; $547c: $fe $02
	add a                                            ; $547e: $87
	dec hl                                           ; $547f: $2b
	ccf                                              ; $5480: $3f
	jp $02fc                                         ; $5481: $c3 $fc $02


	db $fc                                           ; $5484: $fc
	inc b                                            ; $5485: $04
	ei                                               ; $5486: $fb
	add b                                            ; $5487: $80
	ld b, e                                          ; $5488: $43
	push hl                                          ; $5489: $e5
	rst $38                                          ; $548a: $ff
	rst $38                                          ; $548b: $ff
	ldh a, [$f9]                                     ; $548c: $f0 $f9
	nop                                              ; $548e: $00
	jr nz, jr_03d_5491                               ; $548f: $20 $00

jr_03d_5491:
	ld b, b                                          ; $5491: $40
	nop                                              ; $5492: $00
	ld bc, $2100                                     ; $5493: $01 $00 $21
	nop                                              ; $5496: $00
	jp nz, Jump_03d_4d80                             ; $5497: $c2 $80 $4d

	add c                                            ; $549a: $81
	ei                                               ; $549b: $fb
	ei                                               ; $549c: $fb
	sbc $7f                                          ; $549d: $de $7f
	db $fc                                           ; $549f: $fc
	rrca                                             ; $54a0: $0f
	inc a                                            ; $54a1: $3c
	ret nz                                           ; $54a2: $c0

	pop hl                                           ; $54a3: $e1
	add c                                            ; $54a4: $81
	ld sp, hl                                        ; $54a5: $f9
	adc a                                            ; $54a6: $8f
	add b                                            ; $54a7: $80
	rst FarCall                                          ; $54a8: $f7
	rst $38                                          ; $54a9: $ff
	cp l                                             ; $54aa: $bd
	add [hl]                                         ; $54ab: $86
	db $ed                                           ; $54ac: $ed
	adc [hl]                                         ; $54ad: $8e
	add sp, -$74                                     ; $54ae: $e8 $8c
	db $db                                           ; $54b0: $db
	sbc l                                            ; $54b1: $9d
	jp nc, $dfcd                                     ; $54b2: $d2 $cd $df

	sbc e                                            ; $54b5: $9b
	rst SubAFromDE                                          ; $54b6: $df
	cp a                                             ; $54b7: $bf
	sbc a                                            ; $54b8: $9f
	ld a, a                                          ; $54b9: $7f
	ld [hl], a                                       ; $54ba: $77
	rst $38                                          ; $54bb: $ff
	ld l, a                                          ; $54bc: $6f
	rst $38                                          ; $54bd: $ff
	ld d, a                                          ; $54be: $57
	rst $38                                          ; $54bf: $ff
	xor e                                            ; $54c0: $ab
	rst $38                                          ; $54c1: $ff
	sub $a5                                          ; $54c2: $d6 $a5
	ret                                              ; $54c4: $c9


	adc c                                            ; $54c5: $89
	ret nz                                           ; $54c6: $c0

	ld a, a                                          ; $54c7: $7f
	add a                                            ; $54c8: $87
	sbc l                                            ; $54c9: $9d
	add b                                            ; $54ca: $80
	rst $38                                          ; $54cb: $ff
	ld a, e                                          ; $54cc: $7b
	db $fd                                           ; $54cd: $fd
	sub [hl]                                         ; $54ce: $96
	add b                                            ; $54cf: $80
	ld a, a                                          ; $54d0: $7f
	add b                                            ; $54d1: $80
	rst $38                                          ; $54d2: $ff
	nop                                              ; $54d3: $00
	ld b, e                                          ; $54d4: $43
	jr z, jr_03d_5501                                ; $54d5: $28 $2a

	nop                                              ; $54d7: $00
	ld a, e                                          ; $54d8: $7b
	sub e                                            ; $54d9: $93
	rst SubAFromDE                                          ; $54da: $df
	rst $38                                          ; $54db: $ff
	ld [hl], a                                       ; $54dc: $77
	ei                                               ; $54dd: $fb
	ld a, e                                          ; $54de: $7b
	cp $99                                           ; $54df: $fe $99
	ld b, $50                                        ; $54e1: $06 $50
	inc e                                            ; $54e3: $1c
	ld b, b                                          ; $54e4: $40
	ld b, b                                          ; $54e5: $40
	cp a                                             ; $54e6: $bf
	ld h, a                                          ; $54e7: $67
	ldh a, [$97]                                     ; $54e8: $f0 $97
	db $fc                                           ; $54ea: $fc
	nop                                              ; $54eb: $00
	inc sp                                           ; $54ec: $33
	add h                                            ; $54ed: $84
	ld sp, $0184                                     ; $54ee: $31 $84 $01
	cp $77                                           ; $54f1: $fe $77
	ldh a, [$8e]                                     ; $54f3: $f0 $8e
	ldh a, [rP1]                                     ; $54f5: $f0 $00
	add e                                            ; $54f7: $83
	nop                                              ; $54f8: $00
	rrca                                             ; $54f9: $0f
	nop                                              ; $54fa: $00
	ld bc, $80a4                                     ; $54fb: $01 $a4 $80
	dec h                                            ; $54fe: $25
	add e                                            ; $54ff: $83
	ld a, h                                          ; $5500: $7c

jr_03d_5501:
	nop                                              ; $5501: $00
	ldh a, [rTAC]                                    ; $5502: $f0 $07
	nop                                              ; $5504: $00
	ccf                                              ; $5505: $3f
	ld [hl], e                                       ; $5506: $73
	sbc $99                                          ; $5507: $de $99
	sub h                                            ; $5509: $94
	jr nz, jr_03d_550c                               ; $550a: $20 $00

jr_03d_550c:
	and h                                            ; $550c: $a4
	jr nc, jr_03d_551e                               ; $550d: $30 $0f

	ld [hl], a                                       ; $550f: $77
	ldh [$9d], a                                     ; $5510: $e0 $9d
	db $fd                                           ; $5512: $fd
	ld [bc], a                                       ; $5513: $02
	ld [hl], a                                       ; $5514: $77
	ldh a, [$8b]                                     ; $5515: $f0 $8b
	inc l                                            ; $5517: $2c
	ld bc, $ad2f                                     ; $5518: $01 $2f $ad
	ld d, d                                          ; $551b: $52
	xor l                                            ; $551c: $ad
	dec b                                            ; $551d: $05

jr_03d_551e:
	rst $38                                          ; $551e: $ff
	xor d                                            ; $551f: $aa
	ld d, l                                          ; $5520: $55
	ld d, l                                          ; $5521: $55
	xor d                                            ; $5522: $aa
	ld [$ff15], a                                    ; $5523: $ea $15 $ff
	nop                                              ; $5526: $00
	inc c                                            ; $5527: $0c
	ld hl, $6dab                                     ; $5528: $21 $ab $6d
	ld [hl], a                                       ; $552b: $77
	and c                                            ; $552c: $a1
	ld a, a                                          ; $552d: $7f

jr_03d_552e:
	ldh a, [hDisp1_LCDC]                                     ; $552e: $f0 $8f
	ld d, b                                          ; $5530: $50
	xor a                                            ; $5531: $af
	xor d                                            ; $5532: $aa
	ld d, l                                          ; $5533: $55
	ld d, h                                          ; $5534: $54
	xor e                                            ; $5535: $ab
	ld c, d                                          ; $5536: $4a
	ld hl, $6bcd                                     ; $5537: $21 $cd $6b
	rla                                              ; $553a: $17
	ld l, b                                          ; $553b: $68
	rst $38                                          ; $553c: $ff
	rst $38                                          ; $553d: $ff
	xor b                                            ; $553e: $a8
	ld d, a                                          ; $553f: $57
	ld [hl], a                                       ; $5540: $77
	pop bc                                           ; $5541: $c1
	ld a, a                                          ; $5542: $7f
	sub [hl]                                         ; $5543: $96
	sbc d                                            ; $5544: $9a
	ld h, a                                          ; $5545: $67
	ld [$6b0d], sp                                   ; $5546: $08 $0d $6b
	ld c, e                                          ; $5549: $4b
	ld e, a                                          ; $554a: $5f
	add c                                            ; $554b: $81
	sub h                                            ; $554c: $94
	rst $38                                          ; $554d: $ff
	ld b, e                                          ; $554e: $43
	ld [$4b49], sp                                   ; $554f: $08 $49 $4b
	ld d, h                                          ; $5552: $54
	dec bc                                           ; $5553: $0b
	rst $38                                          ; $5554: $ff
	rst $38                                          ; $5555: $ff
	add [hl]                                         ; $5556: $86
	ld a, c                                          ; $5557: $79
	ld l, a                                          ; $5558: $6f
	ldh a, [hDisp0_WY]                                     ; $5559: $f0 $88
	ld [bc], a                                       ; $555b: $02
	ld a, c                                          ; $555c: $79
	ld c, d                                          ; $555d: $4a
	ld a, c                                          ; $555e: $79
	ld b, d                                          ; $555f: $42
	ld a, c                                          ; $5560: $79
	rst $38                                          ; $5561: $ff
	rst $38                                          ; $5562: $ff
	cp $01                                           ; $5563: $fe $01
	jr c, jr_03d_552e                                ; $5565: $38 $c7

	db $10                                           ; $5567: $10
	rst AddAOntoHL                                          ; $5568: $ef
	adc b                                            ; $5569: $88
	ld [hl], a                                       ; $556a: $77
	ldh [$f8], a                                     ; $556b: $e0 $f8
	adc h                                            ; $556d: $8c
	inc bc                                           ; $556e: $03
	ret c                                            ; $556f: $d8

	ccf                                              ; $5570: $3f
	ldh [$63], a                                     ; $5571: $e0 $63
	ret nc                                           ; $5573: $d0

	sub c                                            ; $5574: $91
	ld [hl], b                                       ; $5575: $70
	rrca                                             ; $5576: $0f
	ld [$05f7], sp                                   ; $5577: $08 $f7 $05
	ld a, [$fd02]                                    ; $557a: $fa $02 $fd
	dec d                                            ; $557d: $15
	ld [$d42b], a                                    ; $557e: $ea $2b $d4
	ld d, l                                          ; $5581: $55
	xor d                                            ; $5582: $aa
	ld [hl], a                                       ; $5583: $77
	ld hl, sp-$65                                    ; $5584: $f8 $9b
	xor a                                            ; $5586: $af
	ld d, b                                          ; $5587: $50
	ld e, a                                          ; $5588: $5f
	and b                                            ; $5589: $a0
	ld h, a                                          ; $558a: $67
	pop hl                                           ; $558b: $e1
	sub a                                            ; $558c: $97
	cp a                                             ; $558d: $bf
	ld b, b                                          ; $558e: $40
	ldh a, [$08]                                     ; $558f: $f0 $08
	ld hl, sp+$08                                    ; $5591: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5593: $f0 $10
	ld l, e                                          ; $5595: $6b
	cp $9c                                           ; $5596: $fe $9c

jr_03d_5598:
	jr jr_03d_5598                                   ; $5598: $18 $fe

	inc c                                            ; $559a: $0c
	ld a, d                                          ; $559b: $7a
	adc $9e                                          ; $559c: $ce $9e
	add b                                            ; $559e: $80
	ld h, e                                          ; $559f: $63
	cp $df                                           ; $55a0: $fe $df
	ld b, b                                          ; $55a2: $40
	sbc h                                            ; $55a3: $9c
	ldh [rTAC], a                                    ; $55a4: $e0 $07
	rrca                                             ; $55a6: $0f
	ld a, e                                          ; $55a7: $7b
	cp $98                                           ; $55a8: $fe $98
	ld c, $07                                        ; $55aa: $0e $07
	ld b, $02                                        ; $55ac: $06 $02
	rlca                                             ; $55ae: $07
	ld bc, $7a03                                     ; $55af: $01 $03 $7a
	or h                                             ; $55b2: $b4
	adc b                                            ; $55b3: $88
	ld a, [hl+]                                      ; $55b4: $2a
	dec e                                            ; $55b5: $1d
	ldh a, [$39]                                     ; $55b6: $f0 $39
	and a                                            ; $55b8: $a7
	ld [hl-], a                                      ; $55b9: $32
	ld l, l                                          ; $55ba: $6d
	ld [hl], b                                       ; $55bb: $70
	ld b, [hl]                                       ; $55bc: $46
	ld h, e                                          ; $55bd: $63
	rst SubAFromDE                                          ; $55be: $df
	rst SubAFromDE                                          ; $55bf: $df
	ld a, b                                          ; $55c0: $78
	rst $38                                          ; $55c1: $ff
	ldh [rIE], a                                     ; $55c2: $e0 $ff
	ld h, b                                          ; $55c4: $60
	rst $38                                          ; $55c5: $ff
	xor [hl]                                         ; $55c6: $ae

Call_03d_55c7:
	rst $38                                          ; $55c7: $ff
	call c, Call_03d_78ff                            ; $55c8: $dc $ff $78
	ld a, e                                          ; $55cb: $7b
	ld hl, sp+$72                                    ; $55cc: $f8 $72
	ldh a, [c]                                       ; $55ce: $f2
	sbc [hl]                                         ; $55cf: $9e
	ldh [$67], a                                     ; $55d0: $e0 $67
	adc c                                            ; $55d2: $89
	ld a, e                                          ; $55d3: $7b
	db $f4                                           ; $55d4: $f4
	sbc [hl]                                         ; $55d5: $9e
	pop bc                                           ; $55d6: $c1
	ld a, d                                          ; $55d7: $7a
	ldh a, [c]                                       ; $55d8: $f2
	sbc [hl]                                         ; $55d9: $9e
	ld a, a                                          ; $55da: $7f
	ld [hl], e                                       ; $55db: $73
	db $f4                                           ; $55dc: $f4
	sbc [hl]                                         ; $55dd: $9e

jr_03d_55de:
	ld hl, sp+$7a                                    ; $55de: $f8 $7a
	and $6e                                          ; $55e0: $e6 $6e
	ldh a, [c]                                       ; $55e2: $f2
	ld a, a                                          ; $55e3: $7f
	cp $9e                                           ; $55e4: $fe $9e
	pop hl                                           ; $55e6: $e1
	ld h, e                                          ; $55e7: $63
	ld [$fe03], a                                    ; $55e8: $ea $03 $fe
	inc bc                                           ; $55eb: $03
	cp $77                                           ; $55ec: $fe $77
	cp $7e                                           ; $55ee: $fe $7e
	call z, $d597                                    ; $55f0: $cc $97 $d5
	ld a, [hl+]                                      ; $55f3: $2a
	ld [$fd15], a                                    ; $55f4: $ea $15 $fd
	ld [bc], a                                       ; $55f7: $02
	cp $01                                           ; $55f8: $fe $01
	ld l, a                                          ; $55fa: $6f
	ldh a, [$9c]                                     ; $55fb: $f0 $9c
	jr nz, jr_03d_55de                               ; $55fd: $20 $df

	nop                                              ; $55ff: $00
	ld a, d                                          ; $5600: $7a
	call nz, $b87e                                   ; $5601: $c4 $7e $b8
	ld l, a                                          ; $5604: $6f
	add sp, $7f                                      ; $5605: $e8 $7f
	db $fc                                           ; $5607: $fc
	ld a, a                                          ; $5608: $7f
	ldh a, [c]                                       ; $5609: $f2
	halt                                             ; $560a: $76
	ld h, d                                          ; $560b: $62
	ld a, a                                          ; $560c: $7f
	cp $97                                           ; $560d: $fe $97
	add d                                            ; $560f: $82
	ld a, l                                          ; $5610: $7d
	ld d, l                                          ; $5611: $55
	xor d                                            ; $5612: $aa
	xor d                                            ; $5613: $aa
	ld d, l                                          ; $5614: $55
	ld b, c                                          ; $5615: $41
	cp [hl]                                          ; $5616: $be
	ld l, a                                          ; $5617: $6f
	ret                                              ; $5618: $c9


	ld a, [hl]                                       ; $5619: $7e
	xor b                                            ; $561a: $a8
	ld a, [hl]                                       ; $561b: $7e
	inc hl                                           ; $561c: $23
	sbc e                                            ; $561d: $9b
	ld b, h                                          ; $561e: $44
	cp e                                             ; $561f: $bb
	and b                                            ; $5620: $a0
	ld e, a                                          ; $5621: $5f
	halt                                             ; $5622: $76
	ld [hl], $4f                                     ; $5623: $36 $4f
	cp $7f                                           ; $5625: $fe $7f
	db $fd                                           ; $5627: $fd
	cp $96                                           ; $5628: $fe $96
	rst $38                                          ; $562a: $ff
	ld b, l                                          ; $562b: $45
	cp d                                             ; $562c: $ba
	xor a                                            ; $562d: $af
	ld d, b                                          ; $562e: $50
	ld e, e                                          ; $562f: $5b
	and h                                            ; $5630: $a4
	or a                                             ; $5631: $b7
	ld c, b                                          ; $5632: $48
	ld [hl], a                                       ; $5633: $77
	db $ed                                           ; $5634: $ed
	rst $38                                          ; $5635: $ff
	sbc e                                            ; $5636: $9b
	ld a, [bc]                                       ; $5637: $0a
	push af                                          ; $5638: $f5
	ld d, l                                          ; $5639: $55
	xor d                                            ; $563a: $aa
	ld e, a                                          ; $563b: $5f
	db $dd                                           ; $563c: $dd
	ld [hl], c                                       ; $563d: $71
	pop af                                           ; $563e: $f1
	ld h, e                                          ; $563f: $63
	cp $80                                           ; $5640: $fe $80
	ld sp, hl                                        ; $5642: $f9
	ld c, $08                                        ; $5643: $0e $08
	rrca                                             ; $5645: $0f
	db $fc                                           ; $5646: $fc
	rlca                                             ; $5647: $07
	cp $0f                                           ; $5648: $fe $0f
	di                                               ; $564a: $f3
	dec d                                            ; $564b: $15
	pop bc                                           ; $564c: $c1
	ld a, [hl+]                                      ; $564d: $2a
	ret nz                                           ; $564e: $c0

	ld d, a                                          ; $564f: $57
	add b                                            ; $5650: $80
	xor a                                            ; $5651: $af
	ld h, b                                          ; $5652: $60
	cp h                                             ; $5653: $bc
	rst $38                                          ; $5654: $ff
	rst $38                                          ; $5655: $ff
	ld a, a                                          ; $5656: $7f
	rst $38                                          ; $5657: $ff
	ccf                                              ; $5658: $3f
	ld sp, hl                                        ; $5659: $f9
	rst $38                                          ; $565a: $ff
	ldh a, [$9f]                                     ; $565b: $f0 $9f
	ld [hl], b                                       ; $565d: $70
	ccf                                              ; $565e: $3f
	ldh [$7f], a                                     ; $565f: $e0 $7f
	sbc c                                            ; $5661: $99
	ret nz                                           ; $5662: $c0

	ld h, b                                          ; $5663: $60
	push af                                          ; $5664: $f5
	add b                                            ; $5665: $80
	rst $38                                          ; $5666: $ff
	ld bc, $ffde                                     ; $5667: $01 $de $ff
	sbc e                                            ; $566a: $9b
	cp $7f                                           ; $566b: $fe $7f
	rst $38                                          ; $566d: $ff
	inc bc                                           ; $566e: $03
	ld a, e                                          ; $566f: $7b
	rst FarCall                                          ; $5670: $f7
	adc l                                            ; $5671: $8d
	ld bc, $f0df                                     ; $5672: $01 $df $f0
	adc b                                            ; $5675: $88
	call nz, $ec87                                   ; $5676: $c4 $87 $ec
	inc bc                                           ; $5679: $03
	and $01                                          ; $567a: $e6 $01
	ldh [c], a                                       ; $567c: $e2
	pop bc                                           ; $567d: $c1
	ldh [c], a                                       ; $567e: $e2
	pop bc                                           ; $567f: $c1
	or b                                             ; $5680: $b0
	add c                                            ; $5681: $81
	ld h, b                                          ; $5682: $60
	inc bc                                           ; $5683: $03
	ld c, e                                          ; $5684: $4b
	or b                                             ; $5685: $b0
	ld b, a                                          ; $5686: $47
	and b                                            ; $5687: $a0
	inc bc                                           ; $5688: $03
	ldh a, [$03]                                     ; $5689: $f0 $03
	ldh a, [$03]                                     ; $568b: $f0 $03
	ldh a, [$72]                                     ; $568d: $f0 $72
	cp d                                             ; $568f: $ba
	sbc e                                            ; $5690: $9b
	push af                                          ; $5691: $f5
	ld a, [bc]                                       ; $5692: $0a
	cp $01                                           ; $5693: $fe $01
	halt                                             ; $5695: $76
	cp d                                             ; $5696: $ba
	ld a, a                                          ; $5697: $7f
	or $77                                           ; $5698: $f6 $77
	ldh a, [$7e]                                     ; $569a: $f0 $7e
	and $76                                          ; $569c: $e6 $76
	jp nc, $fc77                                     ; $569e: $d2 $77 $fc

	ld [hl], a                                       ; $56a1: $77
	rst SubAFromDE                                          ; $56a2: $df
	ld [hl], a                                       ; $56a3: $77
	db $fd                                           ; $56a4: $fd
	sbc e                                            ; $56a5: $9b
	inc c                                            ; $56a6: $0c
	di                                               ; $56a7: $f3
	ld [$67f7], sp                                   ; $56a8: $08 $f7 $67
	rst GetHLinHL                                          ; $56ab: $cf
	ld a, a                                          ; $56ac: $7f
	db $fd                                           ; $56ad: $fd
	sub [hl]                                         ; $56ae: $96
	ld a, [bc]                                       ; $56af: $0a
	rst $38                                          ; $56b0: $ff
	pop bc                                           ; $56b1: $c1
	ccf                                              ; $56b2: $3f
	ld a, [bc]                                       ; $56b3: $0a
	rst $38                                          ; $56b4: $ff
	dec b                                            ; $56b5: $05
	rst $38                                          ; $56b6: $ff
	ld a, [bc]                                       ; $56b7: $0a
	halt                                             ; $56b8: $76
	and d                                            ; $56b9: $a2
	ld a, [hl]                                       ; $56ba: $7e
	inc d                                            ; $56bb: $14
	sub h                                            ; $56bc: $94
	ld bc, $f3a8                                     ; $56bd: $01 $a8 $f3
	ld d, h                                          ; $56c0: $54
	db $e3                                           ; $56c1: $e3
	and b                                            ; $56c2: $a0
	rst GetHLinHL                                          ; $56c3: $cf
	nop                                              ; $56c4: $00
	sbc a                                            ; $56c5: $9f
	nop                                              ; $56c6: $00
	ccf                                              ; $56c7: $3f
	ld [hl], a                                       ; $56c8: $77
	rst SubAFromDE                                          ; $56c9: $df
	ld [hl], h                                       ; $56ca: $74
	ret z                                            ; $56cb: $c8

	sbc l                                            ; $56cc: $9d
	ccf                                              ; $56cd: $3f
	ret nz                                           ; $56ce: $c0

	ld [hl], l                                       ; $56cf: $75
	sbc b                                            ; $56d0: $98
	sbc l                                            ; $56d1: $9d
	cp e                                             ; $56d2: $bb
	ld b, h                                          ; $56d3: $44
	ld b, d                                          ; $56d4: $42
	ld c, [hl]                                       ; $56d5: $4e
	ld a, a                                          ; $56d6: $7f
	rst GetHLinHL                                          ; $56d7: $cf
	ld a, a                                          ; $56d8: $7f
	cp $84                                           ; $56d9: $fe $84
	inc bc                                           ; $56db: $03
	db $fc                                           ; $56dc: $fc
	ld b, $f8                                        ; $56dd: $06 $f8
	dec b                                            ; $56df: $05
	db $f4                                           ; $56e0: $f4
	ld c, $f0                                        ; $56e1: $0e $f0
	dec de                                           ; $56e3: $1b
	ldh [$31], a                                     ; $56e4: $e0 $31
	nop                                              ; $56e6: $00
	ld e, a                                          ; $56e7: $5f
	ld bc, $03bf                                     ; $56e8: $01 $bf $03
	ld a, [hl]                                       ; $56eb: $7e
	rlca                                             ; $56ec: $07
	db $fc                                           ; $56ed: $fc
	rlca                                             ; $56ee: $07
	ld a, b                                          ; $56ef: $78
	rra                                              ; $56f0: $1f
	ldh a, [$3f]                                     ; $56f1: $f0 $3f
	ldh a, [$7f]                                     ; $56f3: $f0 $7f
	ldh [rPCM34], a                                  ; $56f5: $e0 $77
	call nz, $fe57                                   ; $56f7: $c4 $57 $fe
	ld a, e                                          ; $56fa: $7b
	jp nc, $fe7b                                     ; $56fb: $d2 $7b $fe

	ld e, a                                          ; $56fe: $5f
	ldh a, [hDisp1_LCDC]                                     ; $56ff: $f0 $8f
	ld bc, $01d0                                     ; $5701: $01 $d0 $01
	add sp, $00                                      ; $5704: $e8 $00
	pop af                                           ; $5706: $f1
	add b                                            ; $5707: $80
	ld sp, hl                                        ; $5708: $f9
	ret nz                                           ; $5709: $c0

	ld [hl], l                                       ; $570a: $75
	ret nz                                           ; $570b: $c0

	ld a, c                                          ; $570c: $79
	ret nz                                           ; $570d: $c0

	dec a                                            ; $570e: $3d
	ldh [$39], a                                     ; $570f: $e0 $39
	ld bc, $03de                                     ; $5711: $01 $de $03
	cp $03                                           ; $5714: $fe $03
	cp $5b                                           ; $5716: $fe $5b
	cp $74                                           ; $5718: $fe $74
	ld c, [hl]                                       ; $571a: $4e
	ld [hl], a                                       ; $571b: $77
	cp $9b                                           ; $571c: $fe $9b
	ld a, [$f505]                                    ; $571e: $fa $05 $f5
	ld a, [bc]                                       ; $5721: $0a
	ld [hl], h                                       ; $5722: $74
	ld d, d                                          ; $5723: $52
	ld a, a                                          ; $5724: $7f
	db $fc                                           ; $5725: $fc
	ld a, [hl]                                       ; $5726: $7e
	call z, $ec7f                                    ; $5727: $cc $7f $ec
	ld h, [hl]                                       ; $572a: $66
	call nc, $fc77                                   ; $572b: $d4 $77 $fc
	sbc e                                            ; $572e: $9b
	ld d, c                                          ; $572f: $51
	xor [hl]                                         ; $5730: $ae
	xor b                                            ; $5731: $a8
	ld d, a                                          ; $5732: $57
	ld [hl], a                                       ; $5733: $77
	ld hl, sp+$7c                                    ; $5734: $f8 $7c
	ld [hl-], a                                      ; $5736: $32
	sbc l                                            ; $5737: $9d
	and h                                            ; $5738: $a4
	ld e, e                                          ; $5739: $5b
	ld e, a                                          ; $573a: $5f
	rst JumpTable                                          ; $573b: $c7
	sbc [hl]                                         ; $573c: $9e
	ld [bc], a                                       ; $573d: $02
	ld [hl], d                                       ; $573e: $72
	call nc, $fc77                                   ; $573f: $d4 $77 $fc
	sub d                                            ; $5742: $92
	inc d                                            ; $5743: $14
	cp $28                                           ; $5744: $fe $28
	db $fc                                           ; $5746: $fc
	ld d, b                                          ; $5747: $50
	ld sp, hl                                        ; $5748: $f9
	and c                                            ; $5749: $a1
	di                                               ; $574a: $f3
	ld b, b                                          ; $574b: $40
	rst SubAFromBC                                          ; $574c: $e7
	add h                                            ; $574d: $84
	rst GetHLinHL                                          ; $574e: $cf
	ld [$d07a], sp                                   ; $574f: $08 $7a $d0
	ld a, [hl]                                       ; $5752: $7e
	db $d3                                           ; $5753: $d3
	sbc l                                            ; $5754: $9d
	ld b, b                                          ; $5755: $40
	rst $38                                          ; $5756: $ff
	ld d, a                                          ; $5757: $57
	dec c                                            ; $5758: $0d
	sub c                                            ; $5759: $91
	ld d, a                                          ; $575a: $57
	xor b                                            ; $575b: $a8
	xor e                                            ; $575c: $ab
	ld d, h                                          ; $575d: $54
	rlca                                             ; $575e: $07
	ld hl, sp+$22                                    ; $575f: $f8 $22
	db $dd                                           ; $5761: $dd
	ld b, l                                          ; $5762: $45
	cp d                                             ; $5763: $ba
	ld [hl+], a                                      ; $5764: $22
	db $dd                                           ; $5765: $dd
	db $10                                           ; $5766: $10
	rst AddAOntoHL                                          ; $5767: $ef
	ld [hl], l                                       ; $5768: $75
	ld [hl], b                                       ; $5769: $70
	ld l, [hl]                                       ; $576a: $6e
	jp z, $fe7b                                      ; $576b: $ca $7b $fe

	adc b                                            ; $576e: $88
	inc bc                                           ; $576f: $03
	cp $04                                           ; $5770: $fe $04
	db $fc                                           ; $5772: $fc
	inc c                                            ; $5773: $0c
	add b                                            ; $5774: $80
	ld h, b                                          ; $5775: $60
	pop bc                                           ; $5776: $c1
	ld h, c                                          ; $5777: $61
	add e                                            ; $5778: $83
	jp nz, $8407                                     ; $5779: $c2 $07 $84

	rlca                                             ; $577c: $07
	ld [$9c0f], sp                                   ; $577d: $08 $0f $9c
	rst $38                                          ; $5780: $ff
	db $fc                                           ; $5781: $fc
	rrca                                             ; $5782: $0f
	ld h, [hl]                                       ; $5783: $66
	rst $38                                          ; $5784: $ff
	ret nz                                           ; $5785: $c0

	ld [hl], a                                       ; $5786: $77
	pop bc                                           ; $5787: $c1
	ld l, a                                          ; $5788: $6f
	add h                                            ; $5789: $84
	ld a, h                                          ; $578a: $7c
	inc h                                            ; $578b: $24
	sbc $ff                                          ; $578c: $de $ff
	sbc b                                            ; $578e: $98
	nop                                              ; $578f: $00
	rst AddAOntoHL                                          ; $5790: $ef
	db $10                                           ; $5791: $10
	ld e, a                                          ; $5792: $5f
	and b                                            ; $5793: $a0
	cp d                                             ; $5794: $ba
	ld b, l                                          ; $5795: $45
	ld l, a                                          ; $5796: $6f
	ld [hl], b                                       ; $5797: $70
	sbc l                                            ; $5798: $9d
	ld [bc], a                                       ; $5799: $02
	db $fd                                           ; $579a: $fd
	ld h, a                                          ; $579b: $67
	and a                                            ; $579c: $a7
	sbc e                                            ; $579d: $9b
	rst SubAFromHL                                          ; $579e: $d7
	jr z, @-$4f                                      ; $579f: $28 $af

	ld d, b                                          ; $57a1: $50
	ld [hl], a                                       ; $57a2: $77
	db $ec                                           ; $57a3: $ec
	ld a, [hl]                                       ; $57a4: $7e
	sbc e                                            ; $57a5: $9b
	sub c                                            ; $57a6: $91
	db $fd                                           ; $57a7: $fd
	rra                                              ; $57a8: $1f
	ld hl, sp+$1c                                    ; $57a9: $f8 $1c
	ldh a, [rAUD3LEVEL]                              ; $57ab: $f0 $1c
	ldh a, [$0c]                                     ; $57ad: $f0 $0c
	ld hl, sp+$0c                                    ; $57af: $f8 $0c
	ld hl, sp+$0e                                    ; $57b1: $f8 $0e
	ld hl, sp+$0e                                    ; $57b3: $f8 $0e
	ld a, e                                          ; $57b5: $7b
	db $e4                                           ; $57b6: $e4
	ld a, a                                          ; $57b7: $7f
	ret nz                                           ; $57b8: $c0

	ld a, e                                          ; $57b9: $7b
	cp $7f                                           ; $57ba: $fe $7f
	ld a, c                                          ; $57bc: $79
	ld [hl], e                                       ; $57bd: $73
	cp $70                                           ; $57be: $fe $70
	jr c, jr_03d_5838                                ; $57c0: $38 $76

	adc d                                            ; $57c2: $8a
	ld l, a                                          ; $57c3: $6f
	jr z, jr_03d_5843                                ; $57c4: $28 $7d

	ld b, $64                                        ; $57c6: $06 $64
	sbc d                                            ; $57c8: $9a
	ld a, a                                          ; $57c9: $7f
	db $f4                                           ; $57ca: $f4

jr_03d_57cb:
	sbc e                                            ; $57cb: $9b
	ld a, [hl+]                                      ; $57cc: $2a
	push de                                          ; $57cd: $d5
	ld d, c                                          ; $57ce: $51
	xor [hl]                                         ; $57cf: $ae
	ld l, a                                          ; $57d0: $6f
	ld [hl], b                                       ; $57d1: $70
	ld a, a                                          ; $57d2: $7f
	db $e4                                           ; $57d3: $e4
	ld l, a                                          ; $57d4: $6f
	sub b                                            ; $57d5: $90
	ld a, a                                          ; $57d6: $7f
	ld e, h                                          ; $57d7: $5c
	ld a, l                                          ; $57d8: $7d
	db $ec                                           ; $57d9: $ec
	halt                                             ; $57da: $76
	db $f4                                           ; $57db: $f4
	ld a, h                                          ; $57dc: $7c
	sbc d                                            ; $57dd: $9a
	ld [hl], a                                       ; $57de: $77
	ldh a, [$99]                                     ; $57df: $f0 $99
	adc b                                            ; $57e1: $88
	ld [hl], a                                       ; $57e2: $77
	ld b, b                                          ; $57e3: $40
	cp a                                             ; $57e4: $bf
	and b                                            ; $57e5: $a0
	ld e, a                                          ; $57e6: $5f
	ld l, a                                          ; $57e7: $6f
	db $f4                                           ; $57e8: $f4
	halt                                             ; $57e9: $76

Call_03d_57ea:
	ld hl, sp+$6f                                    ; $57ea: $f8 $6f
	add a                                            ; $57ec: $87
	ld [hl], a                                       ; $57ed: $77
	db $f4                                           ; $57ee: $f4
	ld a, [hl]                                       ; $57ef: $7e
	ret c                                            ; $57f0: $d8

	sbc l                                            ; $57f1: $9d
	jr z, jr_03d_57cb                                ; $57f2: $28 $d7

	ld h, h                                          ; $57f4: $64
	sub [hl]                                         ; $57f5: $96
	ld a, a                                          ; $57f6: $7f
	db $f4                                           ; $57f7: $f4
	ld [hl], h                                       ; $57f8: $74
	ld h, d                                          ; $57f9: $62
	ld a, a                                          ; $57fa: $7f
	sub c                                            ; $57fb: $91
	ld h, a                                          ; $57fc: $67
	db $10                                           ; $57fd: $10
	ld a, a                                          ; $57fe: $7f
	ret c                                            ; $57ff: $d8

	ld d, h                                          ; $5800: $54
	ld a, d                                          ; $5801: $7a
	ld a, [hl]                                       ; $5802: $7e
	ret c                                            ; $5803: $d8

	sbc l                                            ; $5804: $9d
	inc b                                            ; $5805: $04
	ei                                               ; $5806: $fb
	ld e, [hl]                                       ; $5807: $5e
	ret nc                                           ; $5808: $d0

	adc d                                            ; $5809: $8a
	ld d, h                                          ; $580a: $54
	rst $38                                          ; $580b: $ff
	and b                                            ; $580c: $a0
	cp $16                                           ; $580d: $fe $16
	db $fc                                           ; $580f: $fc
	inc l                                            ; $5810: $2c
	ld hl, sp+$58                                    ; $5811: $f8 $58
	pop af                                           ; $5813: $f1
	or d                                             ; $5814: $b2
	db $e3                                           ; $5815: $e3
	ld h, c                                          ; $5816: $61
	rst JumpTable                                          ; $5817: $c7
	ld d, d                                          ; $5818: $52
	adc a                                            ; $5819: $8f
	dec [hl]                                         ; $581a: $35
	rra                                              ; $581b: $1f
	ld c, d                                          ; $581c: $4a
	ccf                                              ; $581d: $3f
	ld b, b                                          ; $581e: $40
	ld [hl], c                                       ; $581f: $71
	rst SubAFromDE                                          ; $5820: $df
	sub [hl]                                         ; $5821: $96
	and b                                            ; $5822: $a0
	rst $38                                          ; $5823: $ff
	ld b, c                                          ; $5824: $41
	rst $38                                          ; $5825: $ff
	xor d                                            ; $5826: $aa
	rst $38                                          ; $5827: $ff
	ld d, l                                          ; $5828: $55
	rst $38                                          ; $5829: $ff
	xor e                                            ; $582a: $ab
	ld a, d                                          ; $582b: $7a
	jp hl                                            ; $582c: $e9


	ld a, a                                          ; $582d: $7f
	ldh a, [c]                                       ; $582e: $f2
	sbc h                                            ; $582f: $9c
	ld de, $2aff                                     ; $5830: $11 $ff $2a
	ld a, e                                          ; $5833: $7b
	call nc, $a89e                                   ; $5834: $d4 $9e $a8
	ld a, e                                          ; $5837: $7b

jr_03d_5838:
	ldh a, [$7f]                                     ; $5838: $f0 $7f
	db $ec                                           ; $583a: $ec
	ld a, a                                          ; $583b: $7f
	ldh a, [$9e]                                     ; $583c: $f0 $9e
	adc d                                            ; $583e: $8a
	ld [hl], e                                       ; $583f: $73
	ld hl, sp-$64                                    ; $5840: $f8 $9c
	push de                                          ; $5842: $d5

jr_03d_5843:
	rst $38                                          ; $5843: $ff
	ld a, d                                          ; $5844: $7a
	call c, $9aff                                    ; $5845: $dc $ff $9a
	ld sp, hl                                        ; $5848: $f9
	db $fc                                           ; $5849: $fc
	ld hl, sp-$02                                    ; $584a: $f8 $fe
	db $fc                                           ; $584c: $fc
	sub $ff                                          ; $584d: $d6 $ff
	sbc d                                            ; $584f: $9a
	ei                                               ; $5850: $fb
	rlca                                             ; $5851: $07
	rlca                                             ; $5852: $07
	rrca                                             ; $5853: $0f
	rlca                                             ; $5854: $07
	pop bc                                           ; $5855: $c1
	rst $38                                          ; $5856: $ff
	sub $ff                                          ; $5857: $d6 $ff
	ld a, e                                          ; $5859: $7b
	ld c, $d4                                        ; $585a: $0e $d4
	rst $38                                          ; $585c: $ff
	add h                                            ; $585d: $84
	rst FarCall                                          ; $585e: $f7
	ld hl, sp-$08                                    ; $585f: $f8 $f8
	ei                                               ; $5861: $fb
	ldh a, [$fc]                                     ; $5862: $f0 $fc
	pop af                                           ; $5864: $f1
	ld hl, sp-$0f                                    ; $5865: $f8 $f1
	ld hl, sp-$10                                    ; $5867: $f8 $f0
	ld hl, sp-$10                                    ; $5869: $f8 $f0
	rst $38                                          ; $586b: $ff
	ld hl, sp-$01                                    ; $586c: $f8 $ff
	db $eb                                           ; $586e: $eb
	ccf                                              ; $586f: $3f
	dec b                                            ; $5870: $05
	cp a                                             ; $5871: $bf
	sbc $03                                          ; $5872: $de $03
	db $fc                                           ; $5874: $fc
	ld bc, $03fd                                     ; $5875: $01 $fd $03
	ei                                               ; $5878: $fb
	ld a, e                                          ; $5879: $7b
	xor b                                            ; $587a: $a8
	sbc [hl]                                         ; $587b: $9e
	rra                                              ; $587c: $1f
	halt                                             ; $587d: $76
	or c                                             ; $587e: $b1
	ld a, e                                          ; $587f: $7b
	inc h                                            ; $5880: $24
	sub [hl]                                         ; $5881: $96
	ldh [rIE], a                                     ; $5882: $e0 $ff
	ldh a, [rIE]                                     ; $5884: $f0 $ff
	add sp, -$01                                     ; $5886: $e8 $ff
	db $f4                                           ; $5888: $f4
	rst $38                                          ; $5889: $ff
	ld [$306b], a                                    ; $588a: $ea $6b $30
	ld l, d                                          ; $588d: $6a
	db $f4                                           ; $588e: $f4
	ld a, e                                          ; $588f: $7b
	ld l, b                                          ; $5890: $68
	ld e, a                                          ; $5891: $5f
	ldh a, [c]                                       ; $5892: $f2
	ld a, a                                          ; $5893: $7f
	jr nz, @+$59                                     ; $5894: $20 $57

	ldh a, [$7f]                                     ; $5896: $f0 $7f
	ld c, b                                          ; $5898: $48
	ld [hl], a                                       ; $5899: $77
	jr nc, jr_03d_58fb                               ; $589a: $30 $5f

	ldh a, [rPCM34]                                  ; $589c: $f0 $77
	db $f4                                           ; $589e: $f4
	ld h, a                                          ; $589f: $67
	ldh a, [$67]                                     ; $58a0: $f0 $67
	db $e4                                           ; $58a2: $e4
	ld l, a                                          ; $58a3: $6f
	jr nz, jr_03d_5925                               ; $58a4: $20 $7f

	inc d                                            ; $58a6: $14
	ld l, a                                          ; $58a7: $6f
	db $f4                                           ; $58a8: $f4
	sbc [hl]                                         ; $58a9: $9e
	cp d                                             ; $58aa: $ba
	ld h, e                                          ; $58ab: $63
	db $ec                                           ; $58ac: $ec
	ld l, a                                          ; $58ad: $6f
	db $fc                                           ; $58ae: $fc
	add h                                            ; $58af: $84
	ei                                               ; $58b0: $fb
	rst $38                                          ; $58b1: $ff
	sub $ff                                          ; $58b2: $d6 $ff
	cp h                                             ; $58b4: $bc
	cp $48                                           ; $58b5: $fe $48
	db $fc                                           ; $58b7: $fc
	sub c                                            ; $58b8: $91
	ld hl, sp+$23                                    ; $58b9: $f8 $23
	pop af                                           ; $58bb: $f1
	jp $87e7                                         ; $58bc: $c3 $e7 $87


	rst GetHLinHL                                          ; $58bf: $cf
	rrca                                             ; $58c0: $0f
	sbc a                                            ; $58c1: $9f
	rra                                              ; $58c2: $1f
	ccf                                              ; $58c3: $3f
	ccf                                              ; $58c4: $3f
	ld a, a                                          ; $58c5: $7f
	push de                                          ; $58c6: $d5
	ld a, a                                          ; $58c7: $7f
	or a                                             ; $58c8: $b7
	rst $38                                          ; $58c9: $ff
	rst SubAFromDE                                          ; $58ca: $df
	sub $ff                                          ; $58cb: $d6 $ff
	sbc d                                            ; $58cd: $9a
	rst SubAFromHL                                          ; $58ce: $d7
	rst $38                                          ; $58cf: $ff
	cp $ff                                           ; $58d0: $fe $ff
	db $fd                                           ; $58d2: $fd
	ld [hl], a                                       ; $58d3: $77
	jr c, jr_03d_5949                                ; $58d4: $38 $73

	ld a, [$ffdf]                                    ; $58d6: $fa $df $ff
	ld a, a                                          ; $58d9: $7f
	ret z                                            ; $58da: $c8

	ld a, a                                          ; $58db: $7f
	ld e, h                                          ; $58dc: $5c
	ld a, a                                          ; $58dd: $7f
	ldh [$9c], a                                     ; $58de: $e0 $9c
	cp [hl]                                          ; $58e0: $be
	rst $38                                          ; $58e1: $ff
	ld a, a                                          ; $58e2: $7f
	sbc $ff                                          ; $58e3: $de $ff
	ld [hl], a                                       ; $58e5: $77
	and $23                                          ; $58e6: $e6 $23
	nop                                              ; $58e8: $00
	db $dd                                           ; $58e9: $dd
	ld b, h                                          ; $58ea: $44
	jp c, $9c33                                      ; $58eb: $da $33 $9c

	ld [hl], $44                                     ; $58ee: $36 $44
	ld b, [hl]                                       ; $58f0: $46
	jp c, $9c33                                      ; $58f1: $da $33 $9c

	inc [hl]                                         ; $58f4: $34
	ld b, h                                          ; $58f5: $44
	ld b, e                                          ; $58f6: $43
	jp c, $7f33                                      ; $58f7: $da $33 $7f

	db $e4                                           ; $58fa: $e4

jr_03d_58fb:
	ld l, e                                          ; $58fb: $6b
	or $9c                                           ; $58fc: $f6 $9c
	ld [hl], $43                                     ; $58fe: $36 $43
	inc sp                                           ; $5900: $33
	ld l, e                                          ; $5901: $6b
	ldh [c], a                                       ; $5902: $e2
	sbc e                                            ; $5903: $9b
	scf                                              ; $5904: $37
	ld [hl], e                                       ; $5905: $73
	inc sp                                           ; $5906: $33
	ld [hl], a                                       ; $5907: $77
	db $db                                           ; $5908: $db
	inc sp                                           ; $5909: $33
	rra                                              ; $590a: $1f
	add d                                            ; $590b: $82
	sub a                                            ; $590c: $97
	xor d                                            ; $590d: $aa
	ld d, l                                          ; $590e: $55
	xor d                                            ; $590f: $aa
	ld d, l                                          ; $5910: $55
	rrca                                             ; $5911: $0f
	ld [de], a                                       ; $5912: $12
	rst $38                                          ; $5913: $ff
	rst $38                                          ; $5914: $ff
	db $fd                                           ; $5915: $fd
	sbc $ff                                          ; $5916: $de $ff
	sbc c                                            ; $5918: $99
	nop                                              ; $5919: $00
	xor b                                            ; $591a: $a8
	ld d, h                                          ; $591b: $54
	xor d                                            ; $591c: $aa
	ld d, l                                          ; $591d: $55
	rst $38                                          ; $591e: $ff
	ld a, e                                          ; $591f: $7b
	or $67                                           ; $5920: $f6 $67
	ldh a, [rIE]                                     ; $5922: $f0 $ff
	ld b, a                                          ; $5924: $47

jr_03d_5925:
	ldh a, [$7b]                                     ; $5925: $f0 $7b
	ld hl, sp-$62                                    ; $5927: $f8 $9e
	ld b, $4b                                        ; $5929: $06 $4b
	ldh a, [rBGP]                                    ; $592b: $f0 $47
	ldh [$03], a                                     ; $592d: $e0 $03
	ldh a, [rVBK]                                    ; $592f: $f0 $4f
	ldh a, [$9b]                                     ; $5931: $f0 $9b
	db $fd                                           ; $5933: $fd
	nop                                              ; $5934: $00
	rst $38                                          ; $5935: $ff
	db $fd                                           ; $5936: $fd
	ld l, e                                          ; $5937: $6b
	ldh a, [$9e]                                     ; $5938: $f0 $9e
	ld [bc], a                                       ; $593a: $02
	db $fd                                           ; $593b: $fd
	sbc e                                            ; $593c: $9b
	ld l, a                                          ; $593d: $6f
	nop                                              ; $593e: $00
	rst $38                                          ; $593f: $ff
	add b                                            ; $5940: $80
	ld l, e                                          ; $5941: $6b
	ldh a, [$9e]                                     ; $5942: $f0 $9e
	ld a, a                                          ; $5944: $7f
	db $fd                                           ; $5945: $fd
	sbc [hl]                                         ; $5946: $9e
	ldh [$7b], a                                     ; $5947: $e0 $7b

jr_03d_5949:
	adc $6b                                          ; $5949: $ce $6b
	ldh a, [$73]                                     ; $594b: $f0 $73
	rst FarCall                                          ; $594d: $f7
	sbc [hl]                                         ; $594e: $9e
	ld e, $4b                                        ; $594f: $1e $4b
	ldh a, [$9e]                                     ; $5951: $f0 $9e
	ld e, l                                          ; $5953: $5d
	ld c, e                                          ; $5954: $4b
	ldh a, [rPCM34]                                  ; $5955: $f0 $77
	sbc [hl]                                         ; $5957: $9e
	dec bc                                           ; $5958: $0b
	ldh a, [$9e]                                     ; $5959: $f0 $9e
	inc bc                                           ; $595b: $03
	ld e, a                                          ; $595c: $5f
	ldh a, [$9d]                                     ; $595d: $f0 $9d
	ld [bc], a                                       ; $595f: $02
	ld d, l                                          ; $5960: $55
	ld [hl], a                                       ; $5961: $77
	or $63                                           ; $5962: $f6 $63
	ldh a, [$9d]                                     ; $5964: $f0 $9d
	dec d                                            ; $5966: $15
	xor d                                            ; $5967: $aa
	ld d, e                                          ; $5968: $53
	ldh a, [$9e]                                     ; $5969: $f0 $9e
	ld a, [hl+]                                      ; $596b: $2a
	ld a, d                                          ; $596c: $7a
	ldh [$57], a                                     ; $596d: $e0 $57
	ldh a, [rPCM12]                                  ; $596f: $f0 $76
	ret nc                                           ; $5971: $d0

	ld d, a                                          ; $5972: $57
	ldh a, [$7f]                                     ; $5973: $f0 $7f
	pop af                                           ; $5975: $f1
	rst SubAFromDE                                          ; $5976: $df
	rst $38                                          ; $5977: $ff
	ld a, a                                          ; $5978: $7f
	ld d, b                                          ; $5979: $50
	ld [hl], a                                       ; $597a: $77
	ld e, c                                          ; $597b: $59
	ld [hl], a                                       ; $597c: $77
	db $ec                                           ; $597d: $ec
	sub [hl]                                         ; $597e: $96
	add b                                            ; $597f: $80
	rst $38                                          ; $5980: $ff
	ld d, h                                          ; $5981: $54
	xor d                                            ; $5982: $aa
	rst $38                                          ; $5983: $ff
	ret nz                                           ; $5984: $c0

	rst JumpTable                                          ; $5985: $c7
	nop                                              ; $5986: $00
	ld hl, sp+$73                                    ; $5987: $f8 $73
	ldh a, [$9e]                                     ; $5989: $f0 $9e
	ccf                                              ; $598b: $3f
	ld [hl], e                                       ; $598c: $73
	add a                                            ; $598d: $87
	ld a, a                                          ; $598e: $7f
	db $fd                                           ; $598f: $fd
	sbc e                                            ; $5990: $9b
	cp $19                                           ; $5991: $fe $19
	nop                                              ; $5993: $00
	ld h, b                                          ; $5994: $60
	ld [hl], e                                       ; $5995: $73
	jp nc, $079d                                     ; $5996: $d2 $9d $07

	nop                                              ; $5999: $00
	ld a, e                                          ; $599a: $7b
	jr z, jr_03d_5a18                                ; $599b: $28 $7b

	db $ed                                           ; $599d: $ed
	sbc [hl]                                         ; $599e: $9e
	sbc a                                            ; $599f: $9f
	ld [hl], a                                       ; $59a0: $77
	pop bc                                           ; $59a1: $c1
	ld h, a                                          ; $59a2: $67
	ld [hl], d                                       ; $59a3: $72
	ld a, e                                          ; $59a4: $7b
	ei                                               ; $59a5: $fb
	sbc [hl]                                         ; $59a6: $9e
	ldh a, [$57]                                     ; $59a7: $f0 $57
	ld h, d                                          ; $59a9: $62
	ld l, e                                          ; $59aa: $6b
	ld e, l                                          ; $59ab: $5d
	ld d, a                                          ; $59ac: $57
	ldh a, [$67]                                     ; $59ad: $f0 $67
	ld d, d                                          ; $59af: $52
	sbc [hl]                                         ; $59b0: $9e
	db $fc                                           ; $59b1: $fc
	ld l, a                                          ; $59b2: $6f
	ldh a, [$9b]                                     ; $59b3: $f0 $9b
	ld bc, $00fe                                     ; $59b5: $01 $fe $00
	add hl, bc                                       ; $59b8: $09
	ld l, d                                          ; $59b9: $6a
	jp nz, $369b                                     ; $59ba: $c2 $9b $36

	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00
	jr jr_03d_5a38                                   ; $59bf: $18 $77

	sbc $9e                                          ; $59c1: $de $9e
	ld a, l                                          ; $59c3: $7d
	ld l, e                                          ; $59c4: $6b
	ldh a, [$9e]                                     ; $59c5: $f0 $9e
	db $e3                                           ; $59c7: $e3
	db $fd                                           ; $59c8: $fd
	ld a, e                                          ; $59c9: $7b
	add d                                            ; $59ca: $82
	sbc [hl]                                         ; $59cb: $9e
	rst SubAFromDE                                          ; $59cc: $df
	ld l, e                                          ; $59cd: $6b
	ldh a, [$7e]                                     ; $59ce: $f0 $7e
	push bc                                          ; $59d0: $c5
	cp $7f                                           ; $59d1: $fe $7f
	add e                                            ; $59d3: $83
	sbc l                                            ; $59d4: $9d
	ld d, b                                          ; $59d5: $50
	ld l, e                                          ; $59d6: $6b
	ld l, a                                          ; $59d7: $6f
	ldh a, [$9e]                                     ; $59d8: $f0 $9e
	ldh [$73], a                                     ; $59da: $e0 $73
	cp [hl]                                          ; $59dc: $be
	ld a, e                                          ; $59dd: $7b
	ld l, b                                          ; $59de: $68
	ld a, a                                          ; $59df: $7f
	cp [hl]                                          ; $59e0: $be
	ld h, d                                          ; $59e1: $62
	add d                                            ; $59e2: $82
	ld [hl], e                                       ; $59e3: $73
	sbc [hl]                                         ; $59e4: $9e
	sbc [hl]                                         ; $59e5: $9e
	ret nz                                           ; $59e6: $c0

	ld c, e                                          ; $59e7: $4b
	ldh a, [$5a]                                     ; $59e8: $f0 $5a
	ld h, d                                          ; $59ea: $62
	ld a, e                                          ; $59eb: $7b
	or $9e                                           ; $59ec: $f6 $9e
	rrca                                             ; $59ee: $0f
	ld e, c                                          ; $59ef: $59
	ldh a, [c]                                       ; $59f0: $f2
	ld [hl], a                                       ; $59f1: $77
	or $9e                                           ; $59f2: $f6 $9e
	adc a                                            ; $59f4: $8f
	ld e, [hl]                                       ; $59f5: $5e
	ld h, d                                          ; $59f6: $62
	ld [hl], e                                       ; $59f7: $73
	ldh a, [$72]                                     ; $59f8: $f0 $72
	ld e, c                                          ; $59fa: $59
	ld l, a                                          ; $59fb: $6f
	ld d, b                                          ; $59fc: $50
	sbc l                                            ; $59fd: $9d
	xor d                                            ; $59fe: $aa
	db $10                                           ; $59ff: $10
	ld a, e                                          ; $5a00: $7b
	or $9d                                           ; $5a01: $f6 $9d
	push af                                          ; $5a03: $f5
	ld a, [$f06b]                                    ; $5a04: $fa $6b $f0
	ld a, a                                          ; $5a07: $7f
	rst JumpTable                                          ; $5a08: $c7
	ld [hl], d                                       ; $5a09: $72
	jp nc, $be79                                     ; $5a0a: $d2 $79 $be

	ld l, a                                          ; $5a0d: $6f
	ldh a, [$7f]                                     ; $5a0e: $f0 $7f
	ld hl, sp-$63                                    ; $5a10: $f8 $9d
	xor d                                            ; $5a12: $aa
	ld b, l                                          ; $5a13: $45
	ld [hl], a                                       ; $5a14: $77
	ldh a, [$9e]                                     ; $5a15: $f0 $9e
	xor e                                            ; $5a17: $ab

jr_03d_5a18:
	halt                                             ; $5a18: $76
	add sp, $5e                                      ; $5a19: $e8 $5e
	ld [hl], c                                       ; $5a1b: $71
	ld [hl], c                                       ; $5a1c: $71
	xor $9e                                          ; $5a1d: $ee $9e
	db $fd                                           ; $5a1f: $fd
	ld a, d                                          ; $5a20: $7a
	and l                                            ; $5a21: $a5
	sbc [hl]                                         ; $5a22: $9e
	cp $73                                           ; $5a23: $fe $73
	sub [hl]                                         ; $5a25: $96
	rst $38                                          ; $5a26: $ff
	sbc [hl]                                         ; $5a27: $9e
	sbc $72                                          ; $5a28: $de $72
	and [hl]                                         ; $5a2a: $a6
	ld a, a                                          ; $5a2b: $7f
	cp $9e                                           ; $5a2c: $fe $9e
	ld hl, $df63                                     ; $5a2e: $21 $63 $df
	sub [hl]                                         ; $5a31: $96
	add hl, bc                                       ; $5a32: $09
	rst $38                                          ; $5a33: $ff
	ld a, a                                          ; $5a34: $7f
	xor a                                            ; $5a35: $af
	ld e, h                                          ; $5a36: $5c
	xor d                                            ; $5a37: $aa

jr_03d_5a38:
	ld d, l                                          ; $5a38: $55
	ldh a, [$7f]                                     ; $5a39: $f0 $7f
	ld a, e                                          ; $5a3b: $7b
	rst SubAFromBC                                          ; $5a3c: $e7
	ld a, a                                          ; $5a3d: $7f
	ldh a, [c]                                       ; $5a3e: $f2
	sbc l                                            ; $5a3f: $9d
	ldh a, [$3f]                                     ; $5a40: $f0 $3f
	ld l, a                                          ; $5a42: $6f
	jp nz, $0f95                                     ; $5a43: $c2 $95 $0f

	ret nz                                           ; $5a46: $c0

	db $e3                                           ; $5a47: $e3
	rst $38                                          ; $5a48: $ff
	xor d                                            ; $5a49: $aa
	nop                                              ; $5a4a: $00
	db $fc                                           ; $5a4b: $fc
	pop hl                                           ; $5a4c: $e1
	nop                                              ; $5a4d: $00
	push hl                                          ; $5a4e: $e5
	db $dd                                           ; $5a4f: $dd
	rst $38                                          ; $5a50: $ff
	sbc d                                            ; $5a51: $9a
	inc bc                                           ; $5a52: $03
	ld e, $ff                                        ; $5a53: $1e $ff
	ld [$7bde], sp                                   ; $5a55: $08 $de $7b
	ldh a, [$9b]                                     ; $5a58: $f0 $9b
	ldh [$f9], a                                     ; $5a5a: $e0 $f9
	nop                                              ; $5a5c: $00
	rst GetHLinHL                                          ; $5a5d: $cf
	sbc $ff                                          ; $5a5e: $de $ff
	ld a, [hl]                                       ; $5a60: $7e
	xor d                                            ; $5a61: $aa
	ld a, l                                          ; $5a62: $7d
	ld e, b                                          ; $5a63: $58
	adc e                                            ; $5a64: $8b
	jr nc, jr_03d_5a87                               ; $5a65: $30 $20

	ld b, e                                          ; $5a67: $43
	add b                                            ; $5a68: $80
	nop                                              ; $5a69: $00
	ld bc, $00ff                                     ; $5a6a: $01 $ff $00
	adc [hl]                                         ; $5a6d: $8e
	rst $38                                          ; $5a6e: $ff
	sbc a                                            ; $5a6f: $9f
	ld bc, $0e00                                     ; $5a70: $01 $00 $0e
	nop                                              ; $5a73: $00
	rst $38                                          ; $5a74: $ff
	ld [hl], c                                       ; $5a75: $71

jr_03d_5a76:
	rra                                              ; $5a76: $1f
	rra                                              ; $5a77: $1f
	jr z, jr_03d_5a76                                ; $5a78: $28 $fc

	sbc [hl]                                         ; $5a7a: $9e
	pop af                                           ; $5a7b: $f1
	ld [hl], a                                       ; $5a7c: $77
	jp nz, $0e99                                     ; $5a7d: $c2 $99 $0e

	rst $38                                          ; $5a80: $ff
	add [hl]                                         ; $5a81: $86
	rst FarCall                                          ; $5a82: $f7
	rst $38                                          ; $5a83: $ff
	ld a, a                                          ; $5a84: $7f

jr_03d_5a85:
	ld a, d                                          ; $5a85: $7a
	or h                                             ; $5a86: $b4

jr_03d_5a87:
	ld [hl], a                                       ; $5a87: $77
	inc l                                            ; $5a88: $2c
	ld a, [hl]                                       ; $5a89: $7e
	ld h, e                                          ; $5a8a: $63
	add b                                            ; $5a8b: $80
	ldh [$0c], a                                     ; $5a8c: $e0 $0c
	rst $38                                          ; $5a8e: $ff
	ld [$f0e0], sp                                   ; $5a8f: $08 $e0 $f0
	ldh a, [rSB]                                     ; $5a92: $f0 $01
	ld bc, $0303                                     ; $5a94: $01 $03 $03
	ld bc, $f8f0                                     ; $5a97: $01 $f0 $f8
	rst $38                                          ; $5a9a: $ff
	add hl, hl                                       ; $5a9b: $29
	inc bc                                           ; $5a9c: $03
	rlca                                             ; $5a9d: $07
	rst AddAOntoHL                                          ; $5a9e: $ef
	ld hl, $3818                                     ; $5a9f: $21 $18 $38
	ld hl, sp-$10                                    ; $5aa2: $f8 $f0
	ldh [$c0], a                                     ; $5aa4: $e0 $c0
	ldh [$f0], a                                     ; $5aa6: $e0 $f0
	dec [hl]                                         ; $5aa8: $35
	ld l, h                                          ; $5aa9: $6c
	ret                                              ; $5aaa: $c9


	add e                                            ; $5aab: $83
	sbc d                                            ; $5aac: $9a
	dec [hl]                                         ; $5aad: $35
	ld [hl+], a                                      ; $5aae: $22
	sub b                                            ; $5aaf: $90
	ret z                                            ; $5ab0: $c8

	ld a, [hl]                                       ; $5ab1: $7e
	ld [bc], a                                       ; $5ab2: $02
	ld b, e                                          ; $5ab3: $43
	xor [hl]                                         ; $5ab4: $ae
	inc bc                                           ; $5ab5: $03
	ld a, a                                          ; $5ab6: $7f
	jr nc, @+$21                                     ; $5ab7: $30 $1f

	nop                                              ; $5ab9: $00
	add c                                            ; $5aba: $81
	cp h                                             ; $5abb: $bc
	ld d, b                                          ; $5abc: $50
	nop                                              ; $5abd: $00
	add b                                            ; $5abe: $80
	ret nz                                           ; $5abf: $c0

	ldh [hDisp0_OBP1], a                                     ; $5ac0: $e0 $87
	ld a, a                                          ; $5ac2: $7f
	cp $3f                                           ; $5ac3: $fe $3f
	inc bc                                           ; $5ac5: $03
	ret nz                                           ; $5ac6: $c0

	jr nc, jr_03d_5b44                               ; $5ac7: $30 $7b

	ccf                                              ; $5ac9: $3f
	ld a, a                                          ; $5aca: $7f
	and b                                            ; $5acb: $a0
	ld a, [hl]                                       ; $5acc: $7e
	and a                                            ; $5acd: $a7
	sbc [hl]                                         ; $5ace: $9e
	ld c, a                                          ; $5acf: $4f
	ld a, d                                          ; $5ad0: $7a
	add e                                            ; $5ad1: $83
	sbc b                                            ; $5ad2: $98
	cp $f7                                           ; $5ad3: $fe $f7
	rst FarCall                                          ; $5ad5: $f7
	ld bc, $9fc0                                     ; $5ad6: $01 $c0 $9f
	rst $38                                          ; $5ad9: $ff
	ld [hl], a                                       ; $5ada: $77
	ldh a, [$7e]                                     ; $5adb: $f0 $7e
	sbc d                                            ; $5add: $9a
	ld a, [hl]                                       ; $5ade: $7e
	add l                                            ; $5adf: $85
	ld a, a                                          ; $5ae0: $7f
	ld sp, hl                                        ; $5ae1: $f9
	sbc d                                            ; $5ae2: $9a
	db $fc                                           ; $5ae3: $fc
	ldh a, [$f4]                                     ; $5ae4: $f0 $f4
	rrca                                             ; $5ae6: $0f
	ldh a, [rOCPD]                                   ; $5ae7: $f0 $6b
	inc d                                            ; $5ae9: $14
	ld a, a                                          ; $5aea: $7f
	jr nz, jr_03d_5a85                               ; $5aeb: $20 $98

	ld a, a                                          ; $5aed: $7f
	add e                                            ; $5aee: $83
	ccf                                              ; $5aef: $3f
	nop                                              ; $5af0: $00
	ld bc, $08c0                                     ; $5af1: $01 $c0 $08
	ld l, a                                          ; $5af4: $6f
	pop af                                           ; $5af5: $f1
	ld a, a                                          ; $5af6: $7f
	add hl, sp                                       ; $5af7: $39
	ld a, a                                          ; $5af8: $7f
	ld a, $9d                                        ; $5af9: $3e $9d
	jp Jump_03d_7ac1                                 ; $5afb: $c3 $c1 $7a


	ld c, a                                          ; $5afe: $4f
	ld a, a                                          ; $5aff: $7f
	sub b                                            ; $5b00: $90
	ld [hl], l                                       ; $5b01: $75
	jp nc, $079c                                     ; $5b02: $d2 $9c $07

	rst $38                                          ; $5b05: $ff
	cp $7b                                           ; $5b06: $fe $7b
	or a                                             ; $5b08: $b7
	sbc d                                            ; $5b09: $9a
	db $10                                           ; $5b0a: $10
	ccf                                              ; $5b0b: $3f
	nop                                              ; $5b0c: $00
	ld a, a                                          ; $5b0d: $7f
	inc sp                                           ; $5b0e: $33
	ld [hl], c                                       ; $5b0f: $71
	or c                                             ; $5b10: $b1
	rst SubAFromDE                                          ; $5b11: $df
	rst $38                                          ; $5b12: $ff
	sbc [hl]                                         ; $5b13: $9e
	rst GetHLinHL                                          ; $5b14: $cf
	halt                                             ; $5b15: $76
	dec l                                            ; $5b16: $2d
	ld [hl], b                                       ; $5b17: $70
	ret nc                                           ; $5b18: $d0

	ld l, a                                          ; $5b19: $6f
	ldh a, [$7f]                                     ; $5b1a: $f0 $7f
	ei                                               ; $5b1c: $fb
	sbc d                                            ; $5b1d: $9a
	dec b                                            ; $5b1e: $05
	rst $38                                          ; $5b1f: $ff
	ld bc, $7bff                                     ; $5b20: $01 $ff $7b
	ld a, e                                          ; $5b23: $7b
	ld hl, sp-$62                                    ; $5b24: $f8 $9e
	ld a, [$f06f]                                    ; $5b26: $fa $6f $f0
	dec c                                            ; $5b29: $0d
	nop                                              ; $5b2a: $00
	call $9944                                       ; $5b2b: $cd $44 $99
	ld [hl], a                                       ; $5b2e: $77
	halt                                             ; $5b2f: $76
	ld h, [hl]                                       ; $5b30: $66
	ld h, l                                          ; $5b31: $65
	ld d, l                                          ; $5b32: $55
	ld d, [hl]                                       ; $5b33: $56
	db $dd                                           ; $5b34: $dd
	ld h, [hl]                                       ; $5b35: $66
	add a                                            ; $5b36: $87
	add l                                            ; $5b37: $85
	ld sp, hl                                        ; $5b38: $f9
	sbc [hl]                                         ; $5b39: $9e
	rst $38                                          ; $5b3a: $ff
	ld a, e                                          ; $5b3b: $7b
	db $fd                                           ; $5b3c: $fd
	rst SubAFromDE                                          ; $5b3d: $df
	rst $38                                          ; $5b3e: $ff
	sbc [hl]                                         ; $5b3f: $9e
	xor d                                            ; $5b40: $aa
	ld hl, sp-$63                                    ; $5b41: $f8 $9d
	rst $38                                          ; $5b43: $ff

jr_03d_5b44:
	ld bc, $f07b                                     ; $5b44: $01 $7b $f0
	sbc [hl]                                         ; $5b47: $9e
	push de                                          ; $5b48: $d5
	ld e, e                                          ; $5b49: $5b
	ldh a, [$9e]                                     ; $5b4a: $f0 $9e
	rrca                                             ; $5b4c: $0f
	sbc $ff                                          ; $5b4d: $de $ff
	sbc e                                            ; $5b4f: $9b
	ld d, l                                          ; $5b50: $55
	xor d                                            ; $5b51: $aa
	dec d                                            ; $5b52: $15
	ld c, a                                          ; $5b53: $4f
	ld h, a                                          ; $5b54: $67
	ldh a, [$dd]                                     ; $5b55: $f0 $dd
	rst $38                                          ; $5b57: $ff
	sbc h                                            ; $5b58: $9c
	db $fd                                           ; $5b59: $fd
	xor d                                            ; $5b5a: $aa
	ld d, l                                          ; $5b5b: $55
	ld a, e                                          ; $5b5c: $7b
	ret z                                            ; $5b5d: $c8

	db $fc                                           ; $5b5e: $fc
	sbc b                                            ; $5b5f: $98
	cp $ff                                           ; $5b60: $fe $ff
	db $fd                                           ; $5b62: $fd
	rst $38                                          ; $5b63: $ff
	ld [$ff55], a                                    ; $5b64: $ea $55 $ff
	ld h, e                                          ; $5b67: $63
	ldh a, [$98]                                     ; $5b68: $f0 $98
	add h                                            ; $5b6a: $84
	rst $38                                          ; $5b6b: $ff
	ld d, [hl]                                       ; $5b6c: $56
	ld hl, sp-$60                                    ; $5b6d: $f8 $a0
	ld d, h                                          ; $5b6f: $54
	ret nz                                           ; $5b70: $c0

	ld [hl], a                                       ; $5b71: $77
	xor b                                            ; $5b72: $a8
	db $fc                                           ; $5b73: $fc
	sbc [hl]                                         ; $5b74: $9e
	ld bc, $9f77                                     ; $5b75: $01 $77 $9f
	sbc l                                            ; $5b78: $9d
	ld a, a                                          ; $5b79: $7f
	ld a, [hl+]                                      ; $5b7a: $2a
	ld h, e                                          ; $5b7b: $63
	ldh a, [$7f]                                     ; $5b7c: $f0 $7f
	ldh [$7f], a                                     ; $5b7e: $e0 $7f
	xor $9c                                          ; $5b80: $ee $9c
	rst $38                                          ; $5b82: $ff
	di                                               ; $5b83: $f3
	add b                                            ; $5b84: $80
	ld h, e                                          ; $5b85: $63
	ldh a, [$7b]                                     ; $5b86: $f0 $7b
	xor a                                            ; $5b88: $af
	sbc l                                            ; $5b89: $9d
	db $eb                                           ; $5b8a: $eb
	push de                                          ; $5b8b: $d5
	ld l, a                                          ; $5b8c: $6f
	ld a, b                                          ; $5b8d: $78
	sbc h                                            ; $5b8e: $9c
	nop                                              ; $5b8f: $00
	inc bc                                           ; $5b90: $03
	rrca                                             ; $5b91: $0f
	ld l, a                                          ; $5b92: $6f
	sbc a                                            ; $5b93: $9f
	sbc l                                            ; $5b94: $9d
	ld l, a                                          ; $5b95: $6f
	inc c                                            ; $5b96: $0c
	ld a, e                                          ; $5b97: $7b
	xor b                                            ; $5b98: $a8
	sbc l                                            ; $5b99: $9d
	ld a, a                                          ; $5b9a: $7f
	ccf                                              ; $5b9b: $3f
	sbc $ff                                          ; $5b9c: $de $ff
	adc [hl]                                         ; $5b9e: $8e
	ccf                                              ; $5b9f: $3f
	nop                                              ; $5ba0: $00
	and $f1                                          ; $5ba1: $e6 $f1
	ldh a, [$c0]                                     ; $5ba3: $f0 $c0
	ld b, $3f                                        ; $5ba5: $06 $3f
	rra                                              ; $5ba7: $1f
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	cp a                                             ; $5baa: $bf
	rst GetHLinHL                                          ; $5bab: $cf
	ret c                                            ; $5bac: $d8

	rst $38                                          ; $5bad: $ff
	rst $38                                          ; $5bae: $ff
	adc h                                            ; $5baf: $8c
	ld [hl], e                                       ; $5bb0: $73
	rst SubAFromBC                                          ; $5bb1: $e7
	sbc h                                            ; $5bb2: $9c
	ccf                                              ; $5bb3: $3f
	sbc a                                            ; $5bb4: $9f
	ld b, $7b                                        ; $5bb5: $06 $7b
	ret c                                            ; $5bb7: $d8

	sub d                                            ; $5bb8: $92
	ret nz                                           ; $5bb9: $c0

	ld h, b                                          ; $5bba: $60
	ldh a, [$f0]                                     ; $5bbb: $f0 $f0
	ld h, b                                          ; $5bbd: $60
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	sbc d                                            ; $5bc0: $9a
	rst AddAOntoHL                                          ; $5bc1: $ef
	push af                                          ; $5bc2: $f5
	ld a, [$f0f0]                                    ; $5bc3: $fa $f0 $f0
	ld a, e                                          ; $5bc6: $7b
	ld c, d                                          ; $5bc7: $4a
	ld a, [$069b]                                    ; $5bc8: $fa $9b $06
	ldh [$15], a                                     ; $5bcb: $e0 $15
	and d                                            ; $5bcd: $a2
	ld l, e                                          ; $5bce: $6b
	adc b                                            ; $5bcf: $88
	db $fc                                           ; $5bd0: $fc
	sbc e                                            ; $5bd1: $9b
	add hl, bc                                       ; $5bd2: $09
	ld bc, $af5f                                     ; $5bd3: $01 $5f $af
	cp $7f                                           ; $5bd6: $fe $7f
	or d                                             ; $5bd8: $b2
	ld e, e                                          ; $5bd9: $5b
	ccf                                              ; $5bda: $3f
	cp $9d                                           ; $5bdb: $fe $9d
	ld a, a                                          ; $5bdd: $7f
	ld sp, hl                                        ; $5bde: $f9
	ld c, a                                          ; $5bdf: $4f
	ldh a, [$9d]                                     ; $5be0: $f0 $9d
	rst $38                                          ; $5be2: $ff
	rst SubAFromBC                                          ; $5be3: $e7
	ld e, e                                          ; $5be4: $5b
	ldh a, [$9a]                                     ; $5be5: $f0 $9a
	rlca                                             ; $5be7: $07
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	rst SubAFromDE                                          ; $5bea: $df
	rst SubAFromDE                                          ; $5beb: $df
	ld e, e                                          ; $5bec: $5b
	ldh a, [$9a]                                     ; $5bed: $f0 $9a
	ld [bc], a                                       ; $5bef: $02
	nop                                              ; $5bf0: $00
	dec d                                            ; $5bf1: $15
	nop                                              ; $5bf2: $00
	sbc [hl]                                         ; $5bf3: $9e
	ei                                               ; $5bf4: $fb
	rst SubAFromDE                                          ; $5bf5: $df
	ld h, b                                          ; $5bf6: $60
	ld [hl], e                                       ; $5bf7: $73
	ret nc                                           ; $5bf8: $d0

	sbc [hl]                                         ; $5bf9: $9e
	ld d, l                                          ; $5bfa: $55
	ld [hl], a                                       ; $5bfb: $77
	and $9e                                          ; $5bfc: $e6 $9e
	ld a, a                                          ; $5bfe: $7f
	db $fc                                           ; $5bff: $fc
	sbc d                                            ; $5c00: $9a
	ret nz                                           ; $5c01: $c0

	add b                                            ; $5c02: $80
	rst $38                                          ; $5c03: $ff
	cp $00                                           ; $5c04: $fe $00
	ld [hl], a                                       ; $5c06: $77
	ld b, [hl]                                       ; $5c07: $46
	sbc [hl]                                         ; $5c08: $9e
	rst FarCall                                          ; $5c09: $f7
	ld l, a                                          ; $5c0a: $6f
	sbc l                                            ; $5c0b: $9d
	rst SubAFromDE                                          ; $5c0c: $df
	ld [$ff9d], sp                                   ; $5c0d: $08 $9d $ff
	add b                                            ; $5c10: $80
	ld l, a                                          ; $5c11: $6f
	rst SubAFromBC                                          ; $5c12: $e7
	sbc l                                            ; $5c13: $9d
	rst $38                                          ; $5c14: $ff
	dec sp                                           ; $5c15: $3b
	db $fc                                           ; $5c16: $fc
	sbc d                                            ; $5c17: $9a
	scf                                              ; $5c18: $37
	ld h, $0f                                        ; $5c19: $26 $0f
	ld bc, $fd61                                     ; $5c1b: $01 $61 $fd
	sub h                                            ; $5c1e: $94
	ld hl, sp-$01                                    ; $5c1f: $f8 $ff
	inc bc                                           ; $5c21: $03
	nop                                              ; $5c22: $00
	and b                                            ; $5c23: $a0
	ld b, b                                          ; $5c24: $40
	xor d                                            ; $5c25: $aa
	rst $38                                          ; $5c26: $ff
	ld bc, $38fd                                     ; $5c27: $01 $fd $38
	ld h, a                                          ; $5c2a: $67
	and h                                            ; $5c2b: $a4
	sbc b                                            ; $5c2c: $98
	nop                                              ; $5c2d: $00
	jr z, jr_03d_5c30                                ; $5c2e: $28 $00

jr_03d_5c30:
	ld a, [bc]                                       ; $5c30: $0a
	ld d, l                                          ; $5c31: $55
	ei                                               ; $5c32: $fb
	ldh a, [$7b]                                     ; $5c33: $f0 $7b
	jr nz, jr_03d_5c9d                               ; $5c35: $20 $66

	ld [hl], d                                       ; $5c37: $72
	sbc [hl]                                         ; $5c38: $9e
	ld bc, $a47a                                     ; $5c39: $01 $7a $a4
	sbc h                                            ; $5c3c: $9c
	ld b, b                                          ; $5c3d: $40
	ld a, [hl]                                       ; $5c3e: $7e
	ccf                                              ; $5c3f: $3f
	ld l, e                                          ; $5c40: $6b
	ldh a, [$7f]                                     ; $5c41: $f0 $7f
	ld b, l                                          ; $5c43: $45
	sbc [hl]                                         ; $5c44: $9e
	ld d, b                                          ; $5c45: $50
	ld a, e                                          ; $5c46: $7b
	ldh a, [$9d]                                     ; $5c47: $f0 $9d
	sbc b                                            ; $5c49: $98
	sub b                                            ; $5c4a: $90
	ld l, e                                          ; $5c4b: $6b
	ld b, d                                          ; $5c4c: $42
	sbc [hl]                                         ; $5c4d: $9e
	ldh [$7b], a                                     ; $5c4e: $e0 $7b
	ld hl, sp+$7b                                    ; $5c50: $f8 $7b
	ldh a, [$9c]                                     ; $5c52: $f0 $9c
	ld a, a                                          ; $5c54: $7f
	inc c                                            ; $5c55: $0c
	rst AddAOntoHL                                          ; $5c56: $ef
	ld h, e                                          ; $5c57: $63
	rst GetHLinHL                                          ; $5c58: $cf
	ld a, [hl]                                       ; $5c59: $7e
	ld h, h                                          ; $5c5a: $64
	ld a, a                                          ; $5c5b: $7f
	ldh a, [$7f]                                     ; $5c5c: $f0 $7f
	ld e, a                                          ; $5c5e: $5f
	ld a, a                                          ; $5c5f: $7f
	ld e, [hl]                                       ; $5c60: $5e
	ld d, e                                          ; $5c61: $53
	ldh a, [$5e]                                     ; $5c62: $f0 $5e
	ld b, c                                          ; $5c64: $41
	ld l, a                                          ; $5c65: $6f
	ldh a, [$df]                                     ; $5c66: $f0 $df
	add b                                            ; $5c68: $80
	ei                                               ; $5c69: $fb
	sub [hl]                                         ; $5c6a: $96
	inc bc                                           ; $5c6b: $03
	rst $38                                          ; $5c6c: $ff
	nop                                              ; $5c6d: $00
	ld e, l                                          ; $5c6e: $5d
	xor a                                            ; $5c6f: $af
	rst $38                                          ; $5c70: $ff
	rst $38                                          ; $5c71: $ff
	ldh a, [rLCDC]                                   ; $5c72: $f0 $40
	ld l, a                                          ; $5c74: $6f
	ld b, l                                          ; $5c75: $45
	ld a, a                                          ; $5c76: $7f
	ld a, [de]                                       ; $5c77: $1a
	sbc l                                            ; $5c78: $9d
	add b                                            ; $5c79: $80
	ld a, [hl+]                                      ; $5c7a: $2a
	ld a, e                                          ; $5c7b: $7b
	ldh [c], a                                       ; $5c7c: $e2
	sbc e                                            ; $5c7d: $9b
	rst $38                                          ; $5c7e: $ff
	jr nz, jr_03d_5cb8                               ; $5c7f: $20 $37

	ldh [$6f], a                                     ; $5c81: $e0 $6f
	ld d, [hl]                                       ; $5c83: $56
	sub l                                            ; $5c84: $95
	ei                                               ; $5c85: $fb
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	ld h, a                                          ; $5c88: $67
	rst $38                                          ; $5c89: $ff
	rst $38                                          ; $5c8a: $ff
	db $fc                                           ; $5c8b: $fc
	ld [$18ff], sp                                   ; $5c8c: $08 $ff $18
	db $fc                                           ; $5c8f: $fc
	sbc [hl]                                         ; $5c90: $9e
	ld sp, hl                                        ; $5c91: $f9
	ld a, e                                          ; $5c92: $7b
	or a                                             ; $5c93: $b7
	sbc c                                            ; $5c94: $99
	db $e3                                           ; $5c95: $e3
	rst $38                                          ; $5c96: $ff
	ldh a, [c]                                       ; $5c97: $f2
	rlca                                             ; $5c98: $07
	ld [bc], a                                       ; $5c99: $02
	rst $38                                          ; $5c9a: $ff
	ld l, a                                          ; $5c9b: $6f
	ld e, a                                          ; $5c9c: $5f

jr_03d_5c9d:
	ld a, a                                          ; $5c9d: $7f
	ld l, $96                                        ; $5c9e: $2e $96
	pop af                                           ; $5ca0: $f1
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	add b                                            ; $5ca3: $80
	cp d                                             ; $5ca4: $ba
	ld d, a                                          ; $5ca5: $57
	add hl, hl                                       ; $5ca6: $29
	db $fc                                           ; $5ca7: $fc
	ld c, $6b                                        ; $5ca8: $0e $6b
	and c                                            ; $5caa: $a1
	ld a, d                                          ; $5cab: $7a
	ld [$5899], a                                    ; $5cac: $ea $99 $58
	db $f4                                           ; $5caf: $f4
	add sp, -$30                                     ; $5cb0: $e8 $d0
	add c                                            ; $5cb2: $81
	db $fc                                           ; $5cb3: $fc
	db $fc                                           ; $5cb4: $fc
	sub l                                            ; $5cb5: $95
	rrca                                             ; $5cb6: $0f
	rra                                              ; $5cb7: $1f

jr_03d_5cb8:
	ld a, c                                          ; $5cb8: $79
	nop                                              ; $5cb9: $00
	ld bc, $0000                                     ; $5cba: $01 $00 $00
	rlca                                             ; $5cbd: $07
	ld a, b                                          ; $5cbe: $78
	add b                                            ; $5cbf: $80
	halt                                             ; $5cc0: $76
	ldh a, [$7b]                                     ; $5cc1: $f0 $7b
	ld d, c                                          ; $5cc3: $51
	sbc e                                            ; $5cc4: $9b
	inc [hl]                                         ; $5cc5: $34
	rst SubAFromBC                                          ; $5cc6: $e7
	xor d                                            ; $5cc7: $aa
	ld d, b                                          ; $5cc8: $50
	ld a, e                                          ; $5cc9: $7b
	adc $9d                                          ; $5cca: $ce $9d
	ld [hl], b                                       ; $5ccc: $70
	ld c, $7b                                        ; $5ccd: $0e $7b
	ld [$9efc], a                                    ; $5ccf: $ea $fc $9e
	add e                                            ; $5cd2: $83
	ld l, l                                          ; $5cd3: $6d
	and [hl]                                         ; $5cd4: $a6
	sub d                                            ; $5cd5: $92
	ld d, l                                          ; $5cd6: $55
	ld hl, sp+$3f                                    ; $5cd7: $f8 $3f
	inc bc                                           ; $5cd9: $03
	ld hl, sp+$04                                    ; $5cda: $f8 $04
	rst $38                                          ; $5cdc: $ff
	ldh a, [$7f]                                     ; $5cdd: $f0 $7f
	nop                                              ; $5cdf: $00
	rst $38                                          ; $5ce0: $ff
	db $fc                                           ; $5ce1: $fc
	rlca                                             ; $5ce2: $07
	sbc $ff                                          ; $5ce3: $de $ff
	ld a, [hl]                                       ; $5ce5: $7e
	cp l                                             ; $5ce6: $bd
	sbc c                                            ; $5ce7: $99
	call c, $7ffe                                    ; $5ce8: $dc $fe $7f
	rrca                                             ; $5ceb: $0f
	cp $1f                                           ; $5cec: $fe $1f
	ld [hl], l                                       ; $5cee: $75
	add sp, $7f                                      ; $5cef: $e8 $7f
	db $f4                                           ; $5cf1: $f4
	sub a                                            ; $5cf2: $97
	rst $38                                          ; $5cf3: $ff
	ldh [$7f], a                                     ; $5cf4: $e0 $7f
	rst $38                                          ; $5cf6: $ff
	nop                                              ; $5cf7: $00
	ld h, d                                          ; $5cf8: $62
	di                                               ; $5cf9: $f3
	rst $38                                          ; $5cfa: $ff
	ld [hl], c                                       ; $5cfb: $71
	ld h, e                                          ; $5cfc: $63
	ld [hl], d                                       ; $5cfd: $72
	jp c, $ffdf                                      ; $5cfe: $da $df $ff

	ld a, a                                          ; $5d01: $7f
	sub $9d                                          ; $5d02: $d6 $9d
	ld a, $f8                                        ; $5d04: $3e $f8
	ld a, c                                          ; $5d06: $79
	ld [hl], e                                       ; $5d07: $73
	ld a, a                                          ; $5d08: $7f
	sbc $7e                                          ; $5d09: $de $7e
	or h                                             ; $5d0b: $b4
	ld a, e                                          ; $5d0c: $7b
	ldh a, [$9b]                                     ; $5d0d: $f0 $9b
	ldh a, [$e0]                                     ; $5d0f: $f0 $e0
	ld bc, $7bfd                                     ; $5d11: $01 $fd $7b
	add hl, sp                                       ; $5d14: $39
	sbc e                                            ; $5d15: $9b
	inc b                                            ; $5d16: $04
	nop                                              ; $5d17: $00
	add e                                            ; $5d18: $83
	cp $dd                                           ; $5d19: $fe $dd
	rst $38                                          ; $5d1b: $ff
	sbc [hl]                                         ; $5d1c: $9e
	ei                                               ; $5d1d: $fb
	ld a, e                                          ; $5d1e: $7b
	ld c, h                                          ; $5d1f: $4c
	ld [hl], a                                       ; $5d20: $77
	reti                                             ; $5d21: $d9


	rst $38                                          ; $5d22: $ff
	sbc l                                            ; $5d23: $9d
	sbc a                                            ; $5d24: $9f
	inc bc                                           ; $5d25: $03
	sbc $ff                                          ; $5d26: $de $ff
	sbc [hl]                                         ; $5d28: $9e
	rra                                              ; $5d29: $1f
	ld [hl], d                                       ; $5d2a: $72
	ld e, l                                          ; $5d2b: $5d
	ld a, e                                          ; $5d2c: $7b
	db $ed                                           ; $5d2d: $ed
	ld l, c                                          ; $5d2e: $69
	ld d, c                                          ; $5d2f: $51
	sbc [hl]                                         ; $5d30: $9e
	rst AddAOntoHL                                          ; $5d31: $ef
	ld [hl], a                                       ; $5d32: $77
	ldh a, [$9e]                                     ; $5d33: $f0 $9e
	ldh a, [$7b]                                     ; $5d35: $f0 $7b
	cp d                                             ; $5d37: $ba
	adc e                                            ; $5d38: $8b
	dec bc                                           ; $5d39: $0b
	nop                                              ; $5d3a: $00
	ldh [$fc], a                                     ; $5d3b: $e0 $fc
	rst $38                                          ; $5d3d: $ff
	rst $38                                          ; $5d3e: $ff

jr_03d_5d3f:
	ld hl, sp+$00                                    ; $5d3f: $f8 $00
	db $f4                                           ; $5d41: $f4
	rst $38                                          ; $5d42: $ff
	rst $38                                          ; $5d43: $ff
	db $ed                                           ; $5d44: $ed
	ret nz                                           ; $5d45: $c0

	rst $38                                          ; $5d46: $ff
	ld a, b                                          ; $5d47: $78
	rst $38                                          ; $5d48: $ff
	rst $38                                          ; $5d49: $ff
	inc c                                            ; $5d4a: $0c
	ld bc, $7253                                     ; $5d4b: $01 $53 $72
	ld [de], a                                       ; $5d4e: $12
	ld a, a                                          ; $5d4f: $7f
	sub h                                            ; $5d50: $94
	ld a, [hl]                                       ; $5d51: $7e
	db $fc                                           ; $5d52: $fc
	ld a, a                                          ; $5d53: $7f
	ldh [$9b], a                                     ; $5d54: $e0 $9b
	ld hl, sp-$7a                                    ; $5d56: $f8 $86
	rra                                              ; $5d58: $1f
	ret nz                                           ; $5d59: $c0

	ld [hl], c                                       ; $5d5a: $71
	pop af                                           ; $5d5b: $f1
	sbc l                                            ; $5d5c: $9d
	ld a, b                                          ; $5d5d: $78
	ldh [$7b], a                                     ; $5d5e: $e0 $7b
	ei                                               ; $5d60: $fb
	sbc d                                            ; $5d61: $9a
	ret nz                                           ; $5d62: $c0

	ld a, a                                          ; $5d63: $7f
	db $10                                           ; $5d64: $10
	add b                                            ; $5d65: $80
	ld h, $73                                        ; $5d66: $26 $73
	cp a                                             ; $5d68: $bf
	sbc h                                            ; $5d69: $9c
	cpl                                              ; $5d6a: $2f
	nop                                              ; $5d6b: $00
	ret c                                            ; $5d6c: $d8

	ld a, d                                          ; $5d6d: $7a
	dec e                                            ; $5d6e: $1d
	sbc c                                            ; $5d6f: $99
	inc bc                                           ; $5d70: $03
	cp $10                                           ; $5d71: $fe $10
	nop                                              ; $5d73: $00
	ld [$730a], sp                                   ; $5d74: $08 $0a $73
	or b                                             ; $5d77: $b0
	sub e                                            ; $5d78: $93
	ccf                                              ; $5d79: $3f
	scf                                              ; $5d7a: $37
	push af                                          ; $5d7b: $f5
	sub b                                            ; $5d7c: $90
	ccf                                              ; $5d7d: $3f
	rst $38                                          ; $5d7e: $ff
	jr nz, jr_03d_5dbd                               ; $5d7f: $20 $3c

	cp $00                                           ; $5d81: $fe $00
	ld bc, $de6f                                     ; $5d83: $01 $6f $de
	rst $38                                          ; $5d86: $ff
	sub d                                            ; $5d87: $92
	jp rIE                                         ; $5d88: $c3 $ff $ff


	cp $a8                                           ; $5d8b: $fe $a8
	ld bc, $0001                                     ; $5d8d: $01 $01 $00
	ld [$f000], sp                                   ; $5d90: $08 $00 $f0
	ld a, [hl]                                       ; $5d93: $7e
	ld b, a                                          ; $5d94: $47
	sbc $ff                                          ; $5d95: $de $ff
	sbc h                                            ; $5d97: $9c
	or $00                                           ; $5d98: $f6 $00
	ret nz                                           ; $5d9a: $c0

	halt                                             ; $5d9b: $76
	ld b, b                                          ; $5d9c: $40
	sbc [hl]                                         ; $5d9d: $9e
	inc bc                                           ; $5d9e: $03
	ld a, c                                          ; $5d9f: $79
	ld e, d                                          ; $5da0: $5a
	ld [hl], a                                       ; $5da1: $77
	ld a, [hl]                                       ; $5da2: $7e
	sbc [hl]                                         ; $5da3: $9e
	rrca                                             ; $5da4: $0f
	ld a, e                                          ; $5da5: $7b
	sbc a                                            ; $5da6: $9f
	cp $9b                                           ; $5da7: $fe $9b
	ld a, h                                          ; $5da9: $7c
	reti                                             ; $5daa: $d9


	cpl                                              ; $5dab: $2f
	ld e, a                                          ; $5dac: $5f
	ld a, d                                          ; $5dad: $7a
	ld e, c                                          ; $5dae: $59
	ld a, a                                          ; $5daf: $7f
	add c                                            ; $5db0: $81
	sub a                                            ; $5db1: $97
	ldh a, [$3f]                                     ; $5db2: $f0 $3f
	rst $38                                          ; $5db4: $ff
	rrca                                             ; $5db5: $0f
	ld h, b                                          ; $5db6: $60
	nop                                              ; $5db7: $00
	rrca                                             ; $5db8: $0f
	ld a, a                                          ; $5db9: $7f
	ld [hl], e                                       ; $5dba: $73
	ld e, d                                          ; $5dbb: $5a
	add l                                            ; $5dbc: $85

jr_03d_5dbd:
	jr nc, jr_03d_5d3f                               ; $5dbd: $30 $80

	inc bc                                           ; $5dbf: $03
	rlca                                             ; $5dc0: $07
	db $fc                                           ; $5dc1: $fc
	or $00                                           ; $5dc2: $f6 $00
	rrca                                             ; $5dc4: $0f
	rst $38                                          ; $5dc5: $ff
	db $fc                                           ; $5dc6: $fc
	rst $38                                          ; $5dc7: $ff
	adc a                                            ; $5dc8: $8f
	rrca                                             ; $5dc9: $0f
	ei                                               ; $5dca: $fb
	nop                                              ; $5dcb: $00
	rlca                                             ; $5dcc: $07
	ccf                                              ; $5dcd: $3f
	cp $bf                                           ; $5dce: $fe $bf
	rra                                              ; $5dd0: $1f
	rrca                                             ; $5dd1: $0f
	ld b, e                                          ; $5dd2: $43
	nop                                              ; $5dd3: $00
	rst $38                                          ; $5dd4: $ff
	dec a                                            ; $5dd5: $3d
	dec b                                            ; $5dd6: $05
	ei                                               ; $5dd7: $fb
	sbc h                                            ; $5dd8: $9c
	ld hl, sp+$1f                                    ; $5dd9: $f8 $1f
	add c                                            ; $5ddb: $81
	ld a, e                                          ; $5ddc: $7b
	ld c, l                                          ; $5ddd: $4d
	sbc c                                            ; $5dde: $99
	ld a, a                                          ; $5ddf: $7f
	rst JumpTable                                          ; $5de0: $c7
	rst $38                                          ; $5de1: $ff
	di                                               ; $5de2: $f3
	ld a, [hl]                                       ; $5de3: $7e
	ld a, h                                          ; $5de4: $7c
	db $fd                                           ; $5de5: $fd
	sbc h                                            ; $5de6: $9c
	ld [hl], b                                       ; $5de7: $70
	rra                                              ; $5de8: $1f
	and a                                            ; $5de9: $a7
	db $dd                                           ; $5dea: $dd
	rst $38                                          ; $5deb: $ff
	ld a, a                                          ; $5dec: $7f
	inc a                                            ; $5ded: $3c
	ld a, c                                          ; $5dee: $79
	or d                                             ; $5def: $b2
	sbc [hl]                                         ; $5df0: $9e
	cp a                                             ; $5df1: $bf
	ld [hl], e                                       ; $5df2: $73
	and c                                            ; $5df3: $a1
	sbc e                                            ; $5df4: $9b
	rlca                                             ; $5df5: $07
	inc c                                            ; $5df6: $0c
	rst $38                                          ; $5df7: $ff
	pop hl                                           ; $5df8: $e1
	ld l, l                                          ; $5df9: $6d
	dec a                                            ; $5dfa: $3d
	ld a, a                                          ; $5dfb: $7f
	ei                                               ; $5dfc: $fb
	sbc [hl]                                         ; $5dfd: $9e
	ld bc, $b376                                     ; $5dfe: $01 $76 $b3
	ld [hl], a                                       ; $5e01: $77
	ld c, h                                          ; $5e02: $4c
	ld a, a                                          ; $5e03: $7f
	ld h, [hl]                                       ; $5e04: $66
	ld a, d                                          ; $5e05: $7a
	inc hl                                           ; $5e06: $23
	sbc h                                            ; $5e07: $9c
	cp $f0                                           ; $5e08: $fe $f0
	pop bc                                           ; $5e0a: $c1
	ld [hl], a                                       ; $5e0b: $77
	ldh a, [hDisp1_SCY]                                     ; $5e0c: $f0 $90
	daa                                              ; $5e0e: $27
	ld a, h                                          ; $5e0f: $7c
	ldh [$80], a                                     ; $5e10: $e0 $80
	nop                                              ; $5e12: $00
	ld b, $3e                                        ; $5e13: $06 $3e
	ldh a, [c]                                       ; $5e15: $f2
	rst JumpTable                                          ; $5e16: $c7
	rra                                              ; $5e17: $1f
	ccf                                              ; $5e18: $3f
	cp $fc                                           ; $5e19: $fe $fc
	rst $38                                          ; $5e1b: $ff
	ld hl, sp+$7b                                    ; $5e1c: $f8 $7b
	di                                               ; $5e1e: $f3
	sub d                                            ; $5e1f: $92
	ld bc, $0f03                                     ; $5e20: $01 $03 $0f
	ld [hl], b                                       ; $5e23: $70
	ld a, h                                          ; $5e24: $7c
	rst SubAFromBC                                          ; $5e25: $e7
	ldh a, [$fc]                                     ; $5e26: $f0 $fc
	rst $38                                          ; $5e28: $ff
	ld a, a                                          ; $5e29: $7f
	rra                                              ; $5e2a: $1f
	rst $38                                          ; $5e2b: $ff
	rra                                              ; $5e2c: $1f
	ld a, d                                          ; $5e2d: $7a
	ld h, l                                          ; $5e2e: $65
	sbc l                                            ; $5e2f: $9d

Call_03d_5e30:
	add b                                            ; $5e30: $80
	ldh a, [$7b]                                     ; $5e31: $f0 $7b
	ret nc                                           ; $5e33: $d0

	sbc d                                            ; $5e34: $9a
	add b                                            ; $5e35: $80
	or d                                             ; $5e36: $b2
	dec a                                            ; $5e37: $3d
	adc a                                            ; $5e38: $8f
	db $e3                                           ; $5e39: $e3
	ld a, e                                          ; $5e3a: $7b
	or [hl]                                          ; $5e3b: $b6
	ld a, a                                          ; $5e3c: $7f
	db $eb                                           ; $5e3d: $eb
	sbc l                                            ; $5e3e: $9d
	dec de                                           ; $5e3f: $1b
	rlca                                             ; $5e40: $07
	ld [hl], d                                       ; $5e41: $72
	ld d, c                                          ; $5e42: $51
	ld a, l                                          ; $5e43: $7d
	ld d, a                                          ; $5e44: $57
	rst SubAFromDE                                          ; $5e45: $df
	rst $38                                          ; $5e46: $ff
	ld l, [hl]                                       ; $5e47: $6e
	ldh a, [$6e]                                     ; $5e48: $f0 $6e
	and h                                            ; $5e4a: $a4
	sbc l                                            ; $5e4b: $9d
	and c                                            ; $5e4c: $a1
	sbc l                                            ; $5e4d: $9d
	ld l, a                                          ; $5e4e: $6f
	and h                                            ; $5e4f: $a4
	sbc h                                            ; $5e50: $9c
	rst $38                                          ; $5e51: $ff
	ld a, $08                                        ; $5e52: $3e $08
	ld [hl], e                                       ; $5e54: $73
	ldh a, [$9d]                                     ; $5e55: $f0 $9d
	add b                                            ; $5e57: $80
	ld d, [hl]                                       ; $5e58: $56
	halt                                             ; $5e59: $76
	jp c, $ffde                                      ; $5e5a: $da $de $ff

	sbc [hl]                                         ; $5e5d: $9e
	xor b                                            ; $5e5e: $a8
	ld l, a                                          ; $5e5f: $6f
	ldh [$7d], a                                     ; $5e60: $e0 $7d
	ld [hl], $77                                     ; $5e62: $36 $77
	ld sp, hl                                        ; $5e64: $f9
	ld a, l                                          ; $5e65: $7d
	ld d, l                                          ; $5e66: $55
	ld a, [hl]                                       ; $5e67: $7e
	ld b, c                                          ; $5e68: $41
	ld a, h                                          ; $5e69: $7c
	call c, $d879                                    ; $5e6a: $dc $79 $d8
	rst $38                                          ; $5e6d: $ff
	sbc l                                            ; $5e6e: $9d
	xor c                                            ; $5e6f: $a9
	rst $38                                          ; $5e70: $ff
	ld a, c                                          ; $5e71: $79
	or b                                             ; $5e72: $b0
	ld a, [hl]                                       ; $5e73: $7e
	adc l                                            ; $5e74: $8d
	ld a, [hl]                                       ; $5e75: $7e
	ld e, c                                          ; $5e76: $59
	ld a, [hl]                                       ; $5e77: $7e
	ld d, $9e                                        ; $5e78: $16 $9e
	add c                                            ; $5e7a: $81
	db $fd                                           ; $5e7b: $fd
	sbc [hl]                                         ; $5e7c: $9e
	ld a, [$5e77]                                    ; $5e7d: $fa $77 $5e
	ld [hl], d                                       ; $5e80: $72
	ldh a, [c]                                       ; $5e81: $f2
	sbc l                                            ; $5e82: $9d
	rst $38                                          ; $5e83: $ff
	add hl, de                                       ; $5e84: $19
	db $fd                                           ; $5e85: $fd
	sbc d                                            ; $5e86: $9a
	adc d                                            ; $5e87: $8a
	cp $df                                           ; $5e88: $fe $df
	ld bc, $7bbf                                     ; $5e8a: $01 $bf $7b
	sub b                                            ; $5e8d: $90
	sbc l                                            ; $5e8e: $9d
	ld bc, $6920                                     ; $5e8f: $01 $20 $69
	ld c, [hl]                                       ; $5e92: $4e
	sbc [hl]                                         ; $5e93: $9e
	xor b                                            ; $5e94: $a8
	ld [hl], d                                       ; $5e95: $72
	ld [hl-], a                                      ; $5e96: $32
	ld a, a                                          ; $5e97: $7f
	rst AddAOntoHL                                          ; $5e98: $ef
	sbc l                                            ; $5e99: $9d
	inc bc                                           ; $5e9a: $03
	ld bc, $c777                                     ; $5e9b: $01 $77 $c7
	ld h, [hl]                                       ; $5e9e: $66
	ld b, c                                          ; $5e9f: $41
	ld a, e                                          ; $5ea0: $7b
	ld a, e                                          ; $5ea1: $7b
	ld h, h                                          ; $5ea2: $64
	ld [hl+], a                                      ; $5ea3: $22
	sbc [hl]                                         ; $5ea4: $9e
	ld b, c                                          ; $5ea5: $41
	db $dd                                           ; $5ea6: $dd
	rst $38                                          ; $5ea7: $ff
	ld a, a                                          ; $5ea8: $7f
	ld d, h                                          ; $5ea9: $54
	sbc h                                            ; $5eaa: $9c
	db $ed                                           ; $5eab: $ed
	inc e                                            ; $5eac: $1c
	sbc b                                            ; $5ead: $98
	ei                                               ; $5eae: $fb
	sbc [hl]                                         ; $5eaf: $9e
	ld d, h                                          ; $5eb0: $54
	ld [hl], e                                       ; $5eb1: $73
	ld h, c                                          ; $5eb2: $61
	sbc h                                            ; $5eb3: $9c
	ld b, b                                          ; $5eb4: $40
	cp $03                                           ; $5eb5: $fe $03
	ld l, c                                          ; $5eb7: $69
	and b                                            ; $5eb8: $a0
	halt                                             ; $5eb9: $76
	xor h                                            ; $5eba: $ac
	ld a, e                                          ; $5ebb: $7b
	push af                                          ; $5ebc: $f5
	sbc [hl]                                         ; $5ebd: $9e
	cp [hl]                                          ; $5ebe: $be
	ld l, c                                          ; $5ebf: $69
	ld de, $009d                                     ; $5ec0: $11 $9d $00
	rst GetHLinHL                                          ; $5ec3: $cf
	ld a, e                                          ; $5ec4: $7b
	jp nc, $f099                                     ; $5ec5: $d2 $99 $f0

	nop                                              ; $5ec8: $00
	ld [bc], a                                       ; $5ec9: $02
	ei                                               ; $5eca: $fb
	db $10                                           ; $5ecb: $10
	db $10                                           ; $5ecc: $10
	ei                                               ; $5ecd: $fb
	sub [hl]                                         ; $5ece: $96
	pop af                                           ; $5ecf: $f1

jr_03d_5ed0:
	rst $38                                          ; $5ed0: $ff
	ld hl, sp+$1f                                    ; $5ed1: $f8 $1f
	inc bc                                           ; $5ed3: $03
	nop                                              ; $5ed4: $00
	ld h, c                                          ; $5ed5: $61
	xor d                                            ; $5ed6: $aa
	rrca                                             ; $5ed7: $0f
	halt                                             ; $5ed8: $76
	ld h, l                                          ; $5ed9: $65
	sbc d                                            ; $5eda: $9a
	ccf                                              ; $5edb: $3f
	db $fc                                           ; $5edc: $fc
	pop bc                                           ; $5edd: $c1
	inc bc                                           ; $5ede: $03
	adc a                                            ; $5edf: $8f
	db $dd                                           ; $5ee0: $dd
	rst $38                                          ; $5ee1: $ff
	ld a, a                                          ; $5ee2: $7f
	sbc $ff                                          ; $5ee3: $de $ff
	sbc e                                            ; $5ee5: $9b
	inc c                                            ; $5ee6: $0c
	jr c, jr_03d_5ed0                                ; $5ee7: $38 $e7

	rst SubAFromDE                                          ; $5ee9: $df
	ld [hl], d                                       ; $5eea: $72
	and a                                            ; $5eeb: $a7
	sbc e                                            ; $5eec: $9b
	ldh a, [$c0]                                     ; $5eed: $f0 $c0
	add d                                            ; $5eef: $82
	inc b                                            ; $5ef0: $04
	ld a, c                                          ; $5ef1: $79
	ld [bc], a                                       ; $5ef2: $02
	ld a, [hl]                                       ; $5ef3: $7e
	ld e, h                                          ; $5ef4: $5c
	db $db                                           ; $5ef5: $db
	rst $38                                          ; $5ef6: $ff
	rst $38                                          ; $5ef7: $ff

jr_03d_5ef8:
	sub a                                            ; $5ef8: $97
	ld [bc], a                                       ; $5ef9: $02
	rrca                                             ; $5efa: $0f
	ccf                                              ; $5efb: $3f
	ld a, l                                          ; $5efc: $7d
	dec sp                                           ; $5efd: $3b
	jr c, jr_03d_5ef8                                ; $5efe: $38 $f8

	ret nz                                           ; $5f00: $c0

	ld a, c                                          ; $5f01: $79
	ld l, b                                          ; $5f02: $68
	sbc $ff                                          ; $5f03: $de $ff
	sbc l                                            ; $5f05: $9d
	ccf                                              ; $5f06: $3f
	ld a, a                                          ; $5f07: $7f
	ld [hl], a                                       ; $5f08: $77
	sbc h                                            ; $5f09: $9c
	ld a, a                                          ; $5f0a: $7f
	ld sp, hl                                        ; $5f0b: $f9
	ld a, b                                          ; $5f0c: $78
	ld d, a                                          ; $5f0d: $57
	ld a, [hl]                                       ; $5f0e: $7e
	rst $38                                          ; $5f0f: $ff
	ld a, a                                          ; $5f10: $7f
	dec h                                            ; $5f11: $25
	ld a, l                                          ; $5f12: $7d
	xor d                                            ; $5f13: $aa
	sbc e                                            ; $5f14: $9b
	push bc                                          ; $5f15: $c5
	rst $38                                          ; $5f16: $ff
	rst $38                                          ; $5f17: $ff
	add d                                            ; $5f18: $82
	ld [hl], a                                       ; $5f19: $77
	ld c, h                                          ; $5f1a: $4c
	sbc h                                            ; $5f1b: $9c
	rrca                                             ; $5f1c: $0f
	inc bc                                           ; $5f1d: $03
	ld hl, $7efd                                     ; $5f1e: $21 $fd $7e
	or [hl]                                          ; $5f21: $b6
	rst SubAFromDE                                          ; $5f22: $df
	rst $38                                          ; $5f23: $ff
	ld a, e                                          ; $5f24: $7b

jr_03d_5f25:
	inc l                                            ; $5f25: $2c
	ld a, a                                          ; $5f26: $7f
	xor h                                            ; $5f27: $ac
	sub c                                            ; $5f28: $91
	sbc $e7                                          ; $5f29: $de $e7
	db $fd                                           ; $5f2b: $fd
	rst $38                                          ; $5f2c: $ff
	ld a, a                                          ; $5f2d: $7f
	ld a, a                                          ; $5f2e: $7f
	rra                                              ; $5f2f: $1f
	jr c, jr_03d_5f41                                ; $5f30: $38 $0f

	ld b, e                                          ; $5f32: $43
	or b                                             ; $5f33: $b0
	adc $e7                                          ; $5f34: $ce $e7
	ei                                               ; $5f36: $fb
	ld a, e                                          ; $5f37: $7b
	cp b                                             ; $5f38: $b8
	sbc b                                            ; $5f39: $98
	add d                                            ; $5f3a: $82
	ret nz                                           ; $5f3b: $c0

	ret nz                                           ; $5f3c: $c0

	ldh [$f0], a                                     ; $5f3d: $e0 $f0
	rst $38                                          ; $5f3f: $ff
	rrca                                             ; $5f40: $0f

jr_03d_5f41:
	sbc $ff                                          ; $5f41: $de $ff
	sbc [hl]                                         ; $5f43: $9e
	ld h, b                                          ; $5f44: $60
	ld [hl], a                                       ; $5f45: $77
	rst SubAFromDE                                          ; $5f46: $df
	ld a, [hl]                                       ; $5f47: $7e
	dec d                                            ; $5f48: $15
	sbc [hl]                                         ; $5f49: $9e
	cp a                                             ; $5f4a: $bf
	ld a, b                                          ; $5f4b: $78
	db $db                                           ; $5f4c: $db
	ld a, e                                          ; $5f4d: $7b
	ld h, $9d                                        ; $5f4e: $26 $9d
	ld hl, sp+$40                                    ; $5f50: $f8 $40
	ld [hl], e                                       ; $5f52: $73
	add hl, de                                       ; $5f53: $19
	sbc h                                            ; $5f54: $9c
	jr jr_03d_5f25                                   ; $5f55: $18 $ce

	add a                                            ; $5f57: $87
	ld a, b                                          ; $5f58: $78
	ld [hl+], a                                      ; $5f59: $22
	ld a, a                                          ; $5f5a: $7f
	ld [hl], l                                       ; $5f5b: $75
	ld a, l                                          ; $5f5c: $7d
	ld h, $7f                                        ; $5f5d: $26 $7f
	bit 7, e                                         ; $5f5f: $cb $7b
	rst AddAOntoHL                                          ; $5f61: $ef
	ld a, e                                          ; $5f62: $7b
	db $e3                                           ; $5f63: $e3
	sbc h                                            ; $5f64: $9c
	ld [hl], b                                       ; $5f65: $70
	ld a, $f8                                        ; $5f66: $3e $f8
	ld [hl], h                                       ; $5f68: $74
	adc c                                            ; $5f69: $89
	rst SubAFromDE                                          ; $5f6a: $df
	rst $38                                          ; $5f6b: $ff
	sbc l                                            ; $5f6c: $9d
	pop bc                                           ; $5f6d: $c1
	nop                                              ; $5f6e: $00
	ld a, c                                          ; $5f6f: $79
	ld [hl], b                                       ; $5f70: $70
	ld [hl], d                                       ; $5f71: $72
	adc [hl]                                         ; $5f72: $8e
	ld l, [hl]                                       ; $5f73: $6e
	add hl, de                                       ; $5f74: $19
	ld a, b                                          ; $5f75: $78
	di                                               ; $5f76: $f3
	rst SubAFromDE                                          ; $5f77: $df
	rst $38                                          ; $5f78: $ff
	sbc d                                            ; $5f79: $9a
	rst FarCall                                          ; $5f7a: $f7
	inc e                                            ; $5f7b: $1c
	nop                                              ; $5f7c: $00
	nop                                              ; $5f7d: $00
	jr c, jr_03d_5ff9                                ; $5f7e: $38 $79

	ld sp, hl                                        ; $5f80: $f9
	sub l                                            ; $5f81: $95
	ld [$ffe3], sp                                   ; $5f82: $08 $e3 $ff
	rst $38                                          ; $5f85: $ff
	rst JumpTable                                          ; $5f86: $c7
	rlca                                             ; $5f87: $07
	rst $38                                          ; $5f88: $ff
	nop                                              ; $5f89: $00
	ld a, a                                          ; $5f8a: $7f
	ld a, b                                          ; $5f8b: $78
	ld a, e                                          ; $5f8c: $7b
	or c                                             ; $5f8d: $b1
	sbc [hl]                                         ; $5f8e: $9e
	ret nz                                           ; $5f8f: $c0

	ld a, e                                          ; $5f90: $7b
	call c, $337e                                    ; $5f91: $dc $7e $33
	ld a, e                                          ; $5f94: $7b
	ld h, c                                          ; $5f95: $61
	ld a, a                                          ; $5f96: $7f
	db $dd                                           ; $5f97: $dd
	sub a                                            ; $5f98: $97
	ld sp, hl                                        ; $5f99: $f9
	nop                                              ; $5f9a: $00
	db $fc                                           ; $5f9b: $fc
	inc bc                                           ; $5f9c: $03
	ld a, a                                          ; $5f9d: $7f
	nop                                              ; $5f9e: $00
	rrca                                             ; $5f9f: $0f
	inc b                                            ; $5fa0: $04
	ld a, e                                          ; $5fa1: $7b
	ld d, $9e                                        ; $5fa2: $16 $9e
	db $fc                                           ; $5fa4: $fc
	ld a, e                                          ; $5fa5: $7b
	ld b, l                                          ; $5fa6: $45
	sbc b                                            ; $5fa7: $98
	db $fc                                           ; $5fa8: $fc
	cp $07                                           ; $5fa9: $fe $07
	nop                                              ; $5fab: $00
	di                                               ; $5fac: $f3
	ld a, h                                          ; $5fad: $7c
	inc e                                            ; $5fae: $1c
	ld [hl], b                                       ; $5faf: $70
	db $eb                                           ; $5fb0: $eb
	ld a, h                                          ; $5fb1: $7c
	jp z, $bd7b                                      ; $5fb2: $ca $7b $bd

	sbc h                                            ; $5fb5: $9c
	db $10                                           ; $5fb6: $10
	or b                                             ; $5fb7: $b0
	ld h, h                                          ; $5fb8: $64
	halt                                             ; $5fb9: $76
	daa                                              ; $5fba: $27
	ld a, a                                          ; $5fbb: $7f
	db $dd                                           ; $5fbc: $dd
	ld a, a                                          ; $5fbd: $7f
	add c                                            ; $5fbe: $81
	ld [hl], e                                       ; $5fbf: $73
	add b                                            ; $5fc0: $80
	sbc l                                            ; $5fc1: $9d
	inc bc                                           ; $5fc2: $03
	add hl, bc                                       ; $5fc3: $09
	ld a, c                                          ; $5fc4: $79
	sub h                                            ; $5fc5: $94

jr_03d_5fc6:
	ld a, c                                          ; $5fc6: $79
	pop de                                           ; $5fc7: $d1
	cp $75                                           ; $5fc8: $fe $75
	res 3, h                                         ; $5fca: $cb $9c
	rst $38                                          ; $5fcc: $ff
	ld a, l                                          ; $5fcd: $7d
	cp a                                             ; $5fce: $bf
	ld l, [hl]                                       ; $5fcf: $6e
	db $fd                                           ; $5fd0: $fd
	ld a, c                                          ; $5fd1: $79
	and $6c                                          ; $5fd2: $e6 $6c
	cp e                                             ; $5fd4: $bb
	sbc l                                            ; $5fd5: $9d
	rst AddAOntoHL                                          ; $5fd6: $ef
	ld a, a                                          ; $5fd7: $7f
	ld [hl], c                                       ; $5fd8: $71
	di                                               ; $5fd9: $f3
	sbc l                                            ; $5fda: $9d
	rra                                              ; $5fdb: $1f
	db $10                                           ; $5fdc: $10
	ld l, a                                          ; $5fdd: $6f
	ldh a, [$7b]                                     ; $5fde: $f0 $7b
	sub d                                            ; $5fe0: $92
	rst FarCall                                          ; $5fe1: $f7
	sbc l                                            ; $5fe2: $9d
	add b                                            ; $5fe3: $80
	ld d, b                                          ; $5fe4: $50
	ld a, e                                          ; $5fe5: $7b
	rst SubAFromBC                                          ; $5fe6: $e7
	ei                                               ; $5fe7: $fb
	ld a, b                                          ; $5fe8: $78
	ld hl, sp-$02                                    ; $5fe9: $f8 $fe
	sbc [hl]                                         ; $5feb: $9e
	rst FarCall                                          ; $5fec: $f7
	ld l, [hl]                                       ; $5fed: $6e
	call nz, Call_03d_5079                           ; $5fee: $c4 $79 $50
	rst SubAFromDE                                          ; $5ff1: $df
	ldh [$9e], a                                     ; $5ff2: $e0 $9e
	ld b, a                                          ; $5ff4: $47
	ld [hl], l                                       ; $5ff5: $75
	ld a, [bc]                                       ; $5ff6: $0a
	sbc [hl]                                         ; $5ff7: $9e
	rst $38                                          ; $5ff8: $ff

jr_03d_5ff9:
	ld a, d                                          ; $5ff9: $7a
	and d                                            ; $5ffa: $a2
	ld a, a                                          ; $5ffb: $7f
	sub h                                            ; $5ffc: $94
	rst $38                                          ; $5ffd: $ff
	ld a, l                                          ; $5ffe: $7d
	ld a, h                                          ; $5fff: $7c
	sbc h                                            ; $6000: $9c
	inc sp                                           ; $6001: $33
	ld bc, $7b03                                     ; $6002: $01 $03 $7b
	ldh a, [$df]                                     ; $6005: $f0 $df
	ldh a, [$de]                                     ; $6007: $f0 $de
	ld hl, sp+$66                                    ; $6009: $f8 $66
	ld e, $95                                        ; $600b: $1e $95
	rlca                                             ; $600d: $07
	rra                                              ; $600e: $1f
	cp a                                             ; $600f: $bf
	rrca                                             ; $6010: $0f
	ld a, a                                          ; $6011: $7f
	inc e                                            ; $6012: $1c
	ld hl, sp-$7f                                    ; $6013: $f8 $81
	rst $38                                          ; $6015: $ff
	ld l, a                                          ; $6016: $6f
	ld a, e                                          ; $6017: $7b
	add l                                            ; $6018: $85
	sbc [hl]                                         ; $6019: $9e
	ldh [$fe], a                                     ; $601a: $e0 $fe
	ld a, c                                          ; $601c: $79
	cp e                                             ; $601d: $bb
	sbc [hl]                                         ; $601e: $9e
	jr nc, jr_03d_6098                               ; $601f: $30 $77

	ld a, c                                          ; $6021: $79
	ld a, e                                          ; $6022: $7b
	pop hl                                           ; $6023: $e1
	ld a, e                                          ; $6024: $7b
	dec l                                            ; $6025: $2d
	ld [hl], a                                       ; $6026: $77
	jp c, $a47c                                      ; $6027: $da $7c $a4

	ld a, h                                          ; $602a: $7c
	ld d, c                                          ; $602b: $51
	sbc l                                            ; $602c: $9d
	db $fc                                           ; $602d: $fc
	ldh a, [$7b]                                     ; $602e: $f0 $7b
	ret z                                            ; $6030: $c8

	ld [hl], h                                       ; $6031: $74
	and a                                            ; $6032: $a7
	ld a, d                                          ; $6033: $7a
	cp e                                             ; $6034: $bb
	ld a, b                                          ; $6035: $78
	di                                               ; $6036: $f3
	sbc d                                            ; $6037: $9a
	ld a, $cf                                        ; $6038: $3e $cf
	ld a, h                                          ; $603a: $7c
	rst $38                                          ; $603b: $ff
	db $fc                                           ; $603c: $fc
	ld a, e                                          ; $603d: $7b
	or h                                             ; $603e: $b4
	sub a                                            ; $603f: $97
	ret nz                                           ; $6040: $c0

	jr nc, jr_03d_5fc6                               ; $6041: $30 $83

	nop                                              ; $6043: $00
	rst $38                                          ; $6044: $ff
	ccf                                              ; $6045: $3f
	rlca                                             ; $6046: $07
	rrca                                             ; $6047: $0f
	ld a, b                                          ; $6048: $78
	xor c                                            ; $6049: $a9
	ld l, c                                          ; $604a: $69
	rst SubAFromHL                                          ; $604b: $d7
	ld a, e                                          ; $604c: $7b
	ret c                                            ; $604d: $d8

	sbc b                                            ; $604e: $98
	ret nz                                           ; $604f: $c0

	pop af                                           ; $6050: $f1
	add b                                            ; $6051: $80
	db $fc                                           ; $6052: $fc
	rst $38                                          ; $6053: $ff

jr_03d_6054:
	ldh a, [$9f]                                     ; $6054: $f0 $9f
	ld a, e                                          ; $6056: $7b
	db $ec                                           ; $6057: $ec
	db $fd                                           ; $6058: $fd
	sub [hl]                                         ; $6059: $96
	ld h, b                                          ; $605a: $60
	ret nz                                           ; $605b: $c0

	nop                                              ; $605c: $00
	rst $38                                          ; $605d: $ff
	ld b, a                                          ; $605e: $47
	ld a, [hl]                                       ; $605f: $7e
	rst $38                                          ; $6060: $ff
	inc bc                                           ; $6061: $03
	xor a                                            ; $6062: $af
	ld a, b                                          ; $6063: $78
	or h                                             ; $6064: $b4
	sbc [hl]                                         ; $6065: $9e
	ccf                                              ; $6066: $3f
	ld l, l                                          ; $6067: $6d
	call nc, $ec7e                                   ; $6068: $d4 $7e $ec
	sbc l                                            ; $606b: $9d
	inc a                                            ; $606c: $3c
	di                                               ; $606d: $f3
	jp c, $9eff                                      ; $606e: $da $ff $9e

	inc c                                            ; $6071: $0c
	db $fd                                           ; $6072: $fd
	ld a, e                                          ; $6073: $7b
	call nz, $d97a                                   ; $6074: $c4 $7a $d9
	ld [hl], c                                       ; $6077: $71
	ld a, a                                          ; $6078: $7f
	ld l, c                                          ; $6079: $69
	add [hl]                                         ; $607a: $86
	rst SubAFromDE                                          ; $607b: $df
	rrca                                             ; $607c: $0f
	db $db                                           ; $607d: $db
	rst $38                                          ; $607e: $ff
	ld [hl], a                                       ; $607f: $77
	adc l                                            ; $6080: $8d
	ld a, e                                          ; $6081: $7b
	ldh a, [$9d]                                     ; $6082: $f0 $9d
	ldh [$fc], a                                     ; $6084: $e0 $fc
	ld a, d                                          ; $6086: $7a
	sub [hl]                                         ; $6087: $96
	halt                                             ; $6088: $76
	db $fd                                           ; $6089: $fd
	sbc [hl]                                         ; $608a: $9e
	inc bc                                           ; $608b: $03
	ld a, d                                          ; $608c: $7a
	add [hl]                                         ; $608d: $86
	ld [hl], a                                       ; $608e: $77
	ldh [$9c], a                                     ; $608f: $e0 $9c
	jr c, jr_03d_6054                                ; $6091: $38 $c1

	add d                                            ; $6093: $82
	ld [hl], b                                       ; $6094: $70
	ldh a, [$9c]                                     ; $6095: $f0 $9c
	rst JumpTable                                          ; $6097: $c7

jr_03d_6098:
	nop                                              ; $6098: $00
	ld a, l                                          ; $6099: $7d
	ld [hl], e                                       ; $609a: $73
	ldh a, [$9a]                                     ; $609b: $f0 $9a
	nop                                              ; $609d: $00
	cp $0f                                           ; $609e: $fe $0f
	add b                                            ; $60a0: $80
	rra                                              ; $60a1: $1f
	db $dd                                           ; $60a2: $dd
	rst $38                                          ; $60a3: $ff
	sbc [hl]                                         ; $60a4: $9e
	ld bc, $ce7b                                     ; $60a5: $01 $7b $ce
	ld [hl], a                                       ; $60a8: $77
	ret c                                            ; $60a9: $d8

	ld a, a                                          ; $60aa: $7f
	xor a                                            ; $60ab: $af
	sbc [hl]                                         ; $60ac: $9e
	ld bc, $ffdb                                     ; $60ad: $01 $db $ff
	ld a, e                                          ; $60b0: $7b
	rlca                                             ; $60b1: $07
	ld [hl], a                                       ; $60b2: $77
	ldh [$9d], a                                     ; $60b3: $e0 $9d
	add hl, de                                       ; $60b5: $19
	ld b, b                                          ; $60b6: $40
	db $db                                           ; $60b7: $db
	rst $38                                          ; $60b8: $ff
	sbc [hl]                                         ; $60b9: $9e
	rst SubAFromBC                                          ; $60ba: $e7
	ld a, b                                          ; $60bb: $78
	ld b, a                                          ; $60bc: $47
	inc hl                                           ; $60bd: $23
	nop                                              ; $60be: $00
	sbc l                                            ; $60bf: $9d
	ld [hl], a                                       ; $60c0: $77
	ld [hl], l                                       ; $60c1: $75
	db $dd                                           ; $60c2: $dd
	ld d, l                                          ; $60c3: $55
	sbc [hl]                                         ; $60c4: $9e
	ld d, a                                          ; $60c5: $57
	db $dd                                           ; $60c6: $dd
	ld [hl], a                                       ; $60c7: $77
	ld h, e                                          ; $60c8: $63
	or $df                                           ; $60c9: $f6 $df
	inc sp                                           ; $60cb: $33
	call c, $df66                                    ; $60cc: $dc $66 $df
	ld d, l                                          ; $60cf: $55
	rst SubAFromDE                                          ; $60d0: $df
	ld [hl], a                                       ; $60d1: $77
	sbc $55                                          ; $60d2: $de $55
	db $db                                           ; $60d4: $db
	ld [hl], a                                       ; $60d5: $77
	db $dd                                           ; $60d6: $dd
	ld d, l                                          ; $60d7: $55
	db $db                                           ; $60d8: $db
	inc sp                                           ; $60d9: $33
	rst SubAFromDE                                          ; $60da: $df
	ld d, l                                          ; $60db: $55
	sbc [hl]                                         ; $60dc: $9e
	ld d, e                                          ; $60dd: $53
	jp c, $fb33                                      ; $60de: $da $33 $fb

	add d                                            ; $60e1: $82
	sub a                                            ; $60e2: $97
	ld d, l                                          ; $60e3: $55
	xor d                                            ; $60e4: $aa
	ld d, l                                          ; $60e5: $55
	xor d                                            ; $60e6: $aa
	ld d, h                                          ; $60e7: $54
	and b                                            ; $60e8: $a0
	ld d, a                                          ; $60e9: $57
	cp a                                             ; $60ea: $bf
	ld a, e                                          ; $60eb: $7b
	ld sp, hl                                        ; $60ec: $f9
	adc a                                            ; $60ed: $8f
	ld d, l                                          ; $60ee: $55
	xor e                                            ; $60ef: $ab
	ld e, a                                          ; $60f0: $5f
	xor a                                            ; $60f1: $af
	ld a, a                                          ; $60f2: $7f
	ld d, h                                          ; $60f3: $54
	and b                                            ; $60f4: $a0
	ld b, b                                          ; $60f5: $40
	inc bc                                           ; $60f6: $03
	rra                                              ; $60f7: $1f
	rst $38                                          ; $60f8: $ff
	ld hl, sp-$3d                                    ; $60f9: $f8 $c3
	xor e                                            ; $60fb: $ab
	ld e, a                                          ; $60fc: $5f
	cp a                                             ; $60fd: $bf
	sbc $ff                                          ; $60fe: $de $ff
	sub [hl]                                         ; $6100: $96
	ld hl, sp-$39                                    ; $6101: $f8 $c7
	inc bc                                           ; $6103: $03
	rra                                              ; $6104: $1f
	ld a, a                                          ; $6105: $7f
	db $fc                                           ; $6106: $fc
	pop hl                                           ; $6107: $e1
	rlca                                             ; $6108: $07
	ld a, a                                          ; $6109: $7f
	db $dd                                           ; $610a: $dd
	rst $38                                          ; $610b: $ff
	add l                                            ; $610c: $85
	db $fc                                           ; $610d: $fc
	db $e3                                           ; $610e: $e3
	rrca                                             ; $610f: $0f
	pop af                                           ; $6110: $f1
	add a                                            ; $6111: $87
	ldh a, [$80]                                     ; $6112: $f0 $80
	ld bc, $ff1f                                     ; $6114: $01 $1f $ff
	cp $f0                                           ; $6117: $fe $f0
	add b                                            ; $6119: $80
	rst $38                                          ; $611a: $ff
	ldh a, [hDisp0_OBP1]                                     ; $611b: $f0 $87
	ld a, c                                          ; $611d: $79
	rst SubAFromBC                                          ; $611e: $e7
	ld a, $f0                                        ; $611f: $3e $f0
	rst JumpTable                                          ; $6121: $c7
	rrca                                             ; $6122: $0f
	ld a, a                                          ; $6123: $7f
	rst $38                                          ; $6124: $ff
	ld hl, sp-$80                                    ; $6125: $f8 $80
	cp $99                                           ; $6127: $fe $99
	ccf                                              ; $6129: $3f
	rst $38                                          ; $612a: $ff
	cp a                                             ; $612b: $bf
	db $fc                                           ; $612c: $fc
	jp Jump_03d_7b1f                                 ; $612d: $c3 $1f $7b


	db $db                                           ; $6130: $db
	sbc l                                            ; $6131: $9d
	ldh [rP1], a                                     ; $6132: $e0 $00
	sbc $02                                          ; $6134: $de $02
	rst SubAFromDE                                          ; $6136: $df
	inc b                                            ; $6137: $04
	sbc l                                            ; $6138: $9d
	cp $e1                                           ; $6139: $fe $e1
	ld a, e                                          ; $613b: $7b
	and $de                                          ; $613c: $e6 $de
	rst $38                                          ; $613e: $ff
	db $db                                           ; $613f: $db
	rra                                              ; $6140: $1f
	rst SubAFromDE                                          ; $6141: $df
	rrca                                             ; $6142: $0f
	sub a                                            ; $6143: $97
	ld a, [$d2f1]                                    ; $6144: $fa $f1 $d2
	push af                                          ; $6147: $f5
	ldh a, [c]                                       ; $6148: $f2
	db $fd                                           ; $6149: $fd
	ld a, [$d9fd]                                    ; $614a: $fa $fd $d9
	rst $38                                          ; $614d: $ff
	ld a, a                                          ; $614e: $7f
	sub d                                            ; $614f: $92
	sbc e                                            ; $6150: $9b
	cp $ff                                           ; $6151: $fe $ff
	rst $38                                          ; $6153: $ff
	ld a, a                                          ; $6154: $7f
	ld a, e                                          ; $6155: $7b
	cp $da                                           ; $6156: $fe $da
	rst $38                                          ; $6158: $ff
	sub a                                            ; $6159: $97
	xor b                                            ; $615a: $a8
	ld d, b                                          ; $615b: $50
	xor b                                            ; $615c: $a8
	call nc, $f5ea                                   ; $615d: $d4 $ea $f5
	ld a, [$defd]                                    ; $6160: $fa $fd $de
	ret nz                                           ; $6163: $c0

	sbc e                                            ; $6164: $9b
	ldh [$f0], a                                     ; $6165: $e0 $f0
	ld hl, sp-$04                                    ; $6167: $f8 $fc
	ld a, e                                          ; $6169: $7b
	db $e3                                           ; $616a: $e3
	rst SubAFromDE                                          ; $616b: $df
	rst $38                                          ; $616c: $ff
	sbc e                                            ; $616d: $9b
	rst SubAFromDE                                          ; $616e: $df
	rst GetHLinHL                                          ; $616f: $cf
	add a                                            ; $6170: $87
	add e                                            ; $6171: $83
	ld sp, hl                                        ; $6172: $f9
	reti                                             ; $6173: $d9


	rst $38                                          ; $6174: $ff
	rst $38                                          ; $6175: $ff
	rst SubAFromDE                                          ; $6176: $df
	ld bc, $039b                                     ; $6177: $01 $9b $03
	ld b, $06                                        ; $617a: $06 $06
	inc c                                            ; $617c: $0c
	sbc $ff                                          ; $617d: $de $ff
	rst SubAFromDE                                          ; $617f: $df
	cp $99                                           ; $6180: $fe $99
	db $fd                                           ; $6182: $fd
	ld sp, hl                                        ; $6183: $f9
	ei                                               ; $6184: $fb
	ld e, b                                          ; $6185: $58
	ret c                                            ; $6186: $d8

	sbc b                                            ; $6187: $98
	call c, $9d18                                    ; $6188: $dc $18 $9d
	cp a                                             ; $618b: $bf
	ccf                                              ; $618c: $3f
	ld l, a                                          ; $618d: $6f
	or l                                             ; $618e: $b5
	ld a, [$039e]                                    ; $618f: $fa $9e $03
	ld e, a                                          ; $6192: $5f
	ret nc                                           ; $6193: $d0

	cp $9d                                           ; $6194: $fe $9d
	rlca                                             ; $6196: $07
	ccf                                              ; $6197: $3f
	jp c, $9dff                                      ; $6198: $da $ff $9d

	db $fc                                           ; $619b: $fc
	ret nz                                           ; $619c: $c0

	ld a, e                                          ; $619d: $7b
	ret nz                                           ; $619e: $c0

	sbc [hl]                                         ; $619f: $9e
	rrca                                             ; $61a0: $0f
	sbc $ff                                          ; $61a1: $de $ff
	sbc [hl]                                         ; $61a3: $9e
	ldh a, [$dd]                                     ; $61a4: $f0 $dd
	rst $38                                          ; $61a6: $ff
	sbc e                                            ; $61a7: $9b
	ld hl, sp-$40                                    ; $61a8: $f8 $c0
	nop                                              ; $61aa: $00
	rrca                                             ; $61ab: $0f
	ld a, e                                          ; $61ac: $7b
	inc de                                           ; $61ad: $13
	ld a, e                                          ; $61ae: $7b
	ld sp, $01df                                     ; $61af: $31 $df $01
	sbc h                                            ; $61b2: $9c
	cp $fc                                           ; $61b3: $fe $fc
	ldh a, [$6f]                                     ; $61b5: $f0 $6f
	and $de                                          ; $61b7: $e6 $de
	rst $38                                          ; $61b9: $ff
	sbc e                                            ; $61ba: $9b
	ld a, a                                          ; $61bb: $7f
	rst SubAFromBC                                          ; $61bc: $e7
	db $db                                           ; $61bd: $db
	and l                                            ; $61be: $a5
	db $fd                                           ; $61bf: $fd
	add h                                            ; $61c0: $84
	ret nz                                           ; $61c1: $c0

	ret c                                            ; $61c2: $d8

jr_03d_61c3:
	cp h                                             ; $61c3: $bc
	ld a, [hl]                                       ; $61c4: $7e
	ld hl, sp-$01                                    ; $61c5: $f8 $ff
	rst SubAFromDE                                          ; $61c7: $df
	ret nz                                           ; $61c8: $c0

	ldh [$f2], a                                     ; $61c9: $e0 $f2
	ld sp, hl                                        ; $61cb: $f9
	db $fc                                           ; $61cc: $fc
	rlca                                             ; $61cd: $07
	rra                                              ; $61ce: $1f
	ld hl, $7f7f                                     ; $61cf: $21 $7f $7f
	ccf                                              ; $61d2: $3f
	rra                                              ; $61d3: $1f
	rrca                                             ; $61d4: $0f
	rlca                                             ; $61d5: $07
	pop bc                                           ; $61d6: $c1
	rst $38                                          ; $61d7: $ff
	ccf                                              ; $61d8: $3f
	inc c                                            ; $61d9: $0c
	rra                                              ; $61da: $1f
	ld b, e                                          ; $61db: $43
	halt                                             ; $61dc: $76
	db $e3                                           ; $61dd: $e3
	sbc [hl]                                         ; $61de: $9e
	ret nz                                           ; $61df: $c0

	ld l, a                                          ; $61e0: $6f
	cp h                                             ; $61e1: $bc
	ld a, e                                          ; $61e2: $7b
	cp [hl]                                          ; $61e3: $be
	halt                                             ; $61e4: $76
	ldh a, [$80]                                     ; $61e5: $f0 $80
	ld hl, sp-$79                                    ; $61e7: $f8 $87
	ld a, h                                          ; $61e9: $7c
	db $e3                                           ; $61ea: $e3
	rra                                              ; $61eb: $1f
	db $f4                                           ; $61ec: $f4
	adc c                                            ; $61ed: $89
	rrca                                             ; $61ee: $0f
	ld a, a                                          ; $61ef: $7f
	cp $f8                                           ; $61f0: $fe $f8
	ret nz                                           ; $61f2: $c0

	ld bc, $0000                                     ; $61f3: $01 $00 $00
	ld a, $f1                                        ; $61f6: $3e $f1
	adc a                                            ; $61f8: $8f
	ld a, b                                          ; $61f9: $78
	push bc                                          ; $61fa: $c5
	inc hl                                           ; $61fb: $23
	ld b, l                                          ; $61fc: $45
	and d                                            ; $61fd: $a2
	db $fc                                           ; $61fe: $fc
	ldh [rTAC], a                                    ; $61ff: $e0 $07
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	add b                                            ; $6203: $80
	add b                                            ; $6204: $80
	sbc b                                            ; $6205: $98
	add e                                            ; $6206: $83
	ld a, [hl-]                                      ; $6207: $3a
	db $e3                                           ; $6208: $e3
	add c                                            ; $6209: $81
	inc b                                            ; $620a: $04
	ld c, d                                          ; $620b: $4a
	add h                                            ; $620c: $84
	jp z, $000c                                      ; $620d: $ca $0c $00

	nop                                              ; $6210: $00
	ld l, a                                          ; $6211: $6f
	jr c, jr_03d_6218                                ; $6212: $38 $04

	ld b, $02                                        ; $6214: $06 $02
	ld [bc], a                                       ; $6216: $02
	ccf                                              ; $6217: $3f

jr_03d_6218:
	rst $38                                          ; $6218: $ff
	ld h, e                                          ; $6219: $63
	ccf                                              ; $621a: $3f
	inc hl                                           ; $621b: $23
	ld b, a                                          ; $621c: $47
	and a                                            ; $621d: $a7
	ld b, c                                          ; $621e: $41
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	ldh [$7f], a                                     ; $6221: $e0 $7f
	ld l, a                                          ; $6223: $6f
	jr nz, jr_03d_61c3                               ; $6224: $20 $9d

	rst SubAFromDE                                          ; $6226: $df
	add e                                            ; $6227: $83
	db $dd                                           ; $6228: $dd
	rst $38                                          ; $6229: $ff
	rst SubAFromDE                                          ; $622a: $df
	inc b                                            ; $622b: $04
	sub b                                            ; $622c: $90
	ld [$19ff], sp                                   ; $622d: $08 $ff $19
	ld [$1818], sp                                   ; $6230: $08 $18 $18
	ei                                               ; $6233: $fb
	ei                                               ; $6234: $fb
	rst FarCall                                          ; $6235: $f7
	add d                                            ; $6236: $82
	xor $ff                                          ; $6237: $ee $ff
	rst AddAOntoHL                                          ; $6239: $ef
	rst AddAOntoHL                                          ; $623a: $ef
	rlca                                             ; $623b: $07
	ld a, e                                          ; $623c: $7b
	or h                                             ; $623d: $b4
	sbc [hl]                                         ; $623e: $9e
	cp $7b                                           ; $623f: $fe $7b
	db $fc                                           ; $6241: $fc
	db $dd                                           ; $6242: $dd
	rst $38                                          ; $6243: $ff
	ld a, a                                          ; $6244: $7f
	ld e, e                                          ; $6245: $5b
	call c, $9dff                                    ; $6246: $dc $ff $9d
	rra                                              ; $6249: $1f
	nop                                              ; $624a: $00
	ld a, e                                          ; $624b: $7b
	ld a, [hl+]                                      ; $624c: $2a
	rst SubAFromDE                                          ; $624d: $df
	rst $38                                          ; $624e: $ff
	ld [hl], a                                       ; $624f: $77
	ld a, l                                          ; $6250: $7d
	halt                                             ; $6251: $76
	ld a, [$8e7a]                                    ; $6252: $fa $7a $8e
	sbc d                                            ; $6255: $9a
	ldh a, [rIF]                                     ; $6256: $f0 $0f
	nop                                              ; $6258: $00
	ei                                               ; $6259: $fb
	rst FarCall                                          ; $625a: $f7
	db $db                                           ; $625b: $db
	rst $38                                          ; $625c: $ff
	ld a, a                                          ; $625d: $7f
	ld e, l                                          ; $625e: $5d
	sbc l                                            ; $625f: $9d
	rlca                                             ; $6260: $07
	inc bc                                           ; $6261: $03
	ld a, e                                          ; $6262: $7b
	adc $9a                                          ; $6263: $ce $9a
	nop                                              ; $6265: $00
	pop bc                                           ; $6266: $c1
	ldh [$f8], a                                     ; $6267: $e0 $f8
	db $fc                                           ; $6269: $fc
	db $dd                                           ; $626a: $dd
	rst $38                                          ; $626b: $ff
	sbc c                                            ; $626c: $99
	add b                                            ; $626d: $80

jr_03d_626e:
	ret nz                                           ; $626e: $c0

	ldh a, [$fc]                                     ; $626f: $f0 $fc
	rst $38                                          ; $6271: $ff
	ld a, a                                          ; $6272: $7f
	ld a, d                                          ; $6273: $7a
	db $e3                                           ; $6274: $e3
	ld a, e                                          ; $6275: $7b
	ld b, e                                          ; $6276: $43
	sub [hl]                                         ; $6277: $96
	rlca                                             ; $6278: $07
	add b                                            ; $6279: $80
	ret nz                                           ; $627a: $c0

	ldh [rAUD2LOW], a                                ; $627b: $e0 $18
	jr jr_03d_62af                                   ; $627d: $18 $30

	jr nz, @+$69                                     ; $627f: $20 $67

	ld a, d                                          ; $6281: $7a
	rst FarCall                                          ; $6282: $f7
	sub l                                            ; $6283: $95
	rst FarCall                                          ; $6284: $f7
	rst SubAFromBC                                          ; $6285: $e7
	rst AddAOntoHL                                          ; $6286: $ef
	rst SubAFromDE                                          ; $6287: $df
	rst SubAFromDE                                          ; $6288: $df
	inc e                                            ; $6289: $1c
	nop                                              ; $628a: $00
	inc bc                                           ; $628b: $03
	jr @+$1b                                         ; $628c: $18 $19

	ld a, d                                          ; $628e: $7a
	rst $38                                          ; $628f: $ff
	ld a, [hl]                                       ; $6290: $7e
	cp h                                             ; $6291: $bc
	sbc [hl]                                         ; $6292: $9e
	ld bc, $3577                                     ; $6293: $01 $77 $35
	sbc e                                            ; $6296: $9b
	sbc b                                            ; $6297: $98
	ccf                                              ; $6298: $3f
	ld h, a                                          ; $6299: $67
	ldh [c], a                                       ; $629a: $e2

jr_03d_629b:
	ld a, d                                          ; $629b: $7a
	sub $7a                                          ; $629c: $d6 $7a
	jp hl                                            ; $629e: $e9


	ld a, a                                          ; $629f: $7f
	dec b                                            ; $62a0: $05
	sbc l                                            ; $62a1: $9d
	cp $e0                                           ; $62a2: $fe $e0
	ld l, d                                          ; $62a4: $6a
	jp z, $2272                                      ; $62a5: $ca $72 $22

	halt                                             ; $62a8: $76
	cp h                                             ; $62a9: $bc
	ld d, d                                          ; $62aa: $52
	and b                                            ; $62ab: $a0
	ld h, d                                          ; $62ac: $62
	ld [hl], b                                       ; $62ad: $70
	ld a, [hl]                                       ; $62ae: $7e

jr_03d_62af:
	ld [hl], h                                       ; $62af: $74
	adc h                                            ; $62b0: $8c
	dec c                                            ; $62b1: $0d
	jr @+$32                                         ; $62b2: $18 $30

	ld h, b                                          ; $62b4: $60
	ret nz                                           ; $62b5: $c0

	ret nz                                           ; $62b6: $c0

	cp $fd                                           ; $62b7: $fe $fd
	ei                                               ; $62b9: $fb
	rst FarCall                                          ; $62ba: $f7
	rst AddAOntoHL                                          ; $62bb: $ef
	rst SubAFromDE                                          ; $62bc: $df
	cp a                                             ; $62bd: $bf
	cp a                                             ; $62be: $bf
	ld b, d                                          ; $62bf: $42
	add c                                            ; $62c0: $81
	ld [bc], a                                       ; $62c1: $02
	ld bc, $5b02                                     ; $62c2: $01 $02 $5b
	ldh [hDisp1_OBP0], a                                     ; $62c5: $e0 $93
	cp $7f                                           ; $62c7: $fe $7f
	cp a                                             ; $62c9: $bf
	ld e, a                                          ; $62ca: $5f
	xor a                                            ; $62cb: $af
	ld d, a                                          ; $62cc: $57
	inc sp                                           ; $62cd: $33
	ld e, l                                          ; $62ce: $5d
	rlca                                             ; $62cf: $07
	add e                                            ; $62d0: $83
	pop bc                                           ; $62d1: $c1
	pop hl                                           ; $62d2: $e1
	ld [hl], d                                       ; $62d3: $72
	jr z, jr_03d_626e                                ; $62d4: $28 $98

	ld a, a                                          ; $62d6: $7f
	xor a                                            ; $62d7: $af
	sbc a                                            ; $62d8: $9f
	rst GetHLinHL                                          ; $62d9: $cf
	rst SubAFromBC                                          ; $62da: $e7
	rst FarCall                                          ; $62db: $f7
	ei                                               ; $62dc: $fb
	ld l, [hl]                                       ; $62dd: $6e
	sub a                                            ; $62de: $97
	ld a, a                                          ; $62df: $7f
	ld l, h                                          ; $62e0: $6c
	rst $38                                          ; $62e1: $ff
	sbc l                                            ; $62e2: $9d
	jr nz, jr_03d_62f5                               ; $62e3: $20 $10

	db $fd                                           ; $62e5: $fd
	sub a                                            ; $62e6: $97
	call nz, $342a                                   ; $62e7: $c4 $2a $34
	sub b                                            ; $62ea: $90
	pop bc                                           ; $62eb: $c1
	ei                                               ; $62ec: $fb
	push af                                          ; $62ed: $f5
	db $fc                                           ; $62ee: $fc
	cp $9d                                           ; $62ef: $fe $9d
	inc de                                           ; $62f1: $13
	ld [hl+], a                                      ; $62f2: $22
	cp $93                                           ; $62f3: $fe $93

jr_03d_62f5:
	ld d, c                                          ; $62f5: $51
	and e                                            ; $62f6: $a3
	ld b, c                                          ; $62f7: $41
	inc de                                           ; $62f8: $13
	ld h, $21                                        ; $62f9: $26 $21
	ld [de], a                                       ; $62fb: $12
	and a                                            ; $62fc: $a7
	sbc h                                            ; $62fd: $9c
	inc c                                            ; $62fe: $0c
	inc b                                            ; $62ff: $04
	or h                                             ; $6300: $b4
	db $fd                                           ; $6301: $fd
	add a                                            ; $6302: $87
	ld c, $94                                        ; $6303: $0e $94
	jr nz, jr_03d_629b                               ; $6305: $20 $94

	ld [hl+], a                                      ; $6307: $22
	dec d                                            ; $6308: $15
	ld [hl+], a                                      ; $6309: $22
	ld [hl], l                                       ; $630a: $75
	ld [bc], a                                       ; $630b: $02
	sub b                                            ; $630c: $90
	add b                                            ; $630d: $80
	nop                                              ; $630e: $00
	inc e                                            ; $630f: $1c
	ld e, $3f                                        ; $6310: $1e $3f
	rrca                                             ; $6312: $0f
	db $db                                           ; $6313: $db
	rst SubAFromHL                                          ; $6314: $d7
	adc a                                            ; $6315: $8f
	rrca                                             ; $6316: $0f
	rra                                              ; $6317: $1f
	ld b, a                                          ; $6318: $47
	pop bc                                           ; $6319: $c1
	ld [hl], b                                       ; $631a: $70
	ld [hl], l                                       ; $631b: $75
	ldh a, [$df]                                     ; $631c: $f0 $df
	ld bc, $819d                                     ; $631e: $01 $9d $81
	db $e3                                           ; $6321: $e3
	ld [hl], e                                       ; $6322: $73
	sub h                                            ; $6323: $94
	ld a, e                                          ; $6324: $7b

jr_03d_6325:
	and d                                            ; $6325: $a2
	ld a, a                                          ; $6326: $7f
	ld [hl], e                                       ; $6327: $73
	sbc $b8                                          ; $6328: $de $b8
	sbc e                                            ; $632a: $9b
	ld a, c                                          ; $632b: $79
	xor c                                            ; $632c: $a9
	rst JumpTable                                          ; $632d: $c7
	rst $38                                          ; $632e: $ff
	ld a, d                                          ; $632f: $7a
	call nz, Call_03d_6fdf                           ; $6330: $c4 $df $6f
	sbc [hl]                                         ; $6333: $9e
	ld h, $77                                        ; $6334: $26 $77
	ld [hl], l                                       ; $6336: $75
	halt                                             ; $6337: $76
	add b                                            ; $6338: $80
	sbc [hl]                                         ; $6339: $9e
	add c                                            ; $633a: $81
	ld c, l                                          ; $633b: $4d
	ldh a, [$7b]                                     ; $633c: $f0 $7b
	inc c                                            ; $633e: $0c
	ld h, c                                          ; $633f: $61
	ldh a, [rPCM34]                                  ; $6340: $f0 $77
	ld h, $7f                                        ; $6342: $26 $7f
	ld hl, sp+$6a                                    ; $6344: $f8 $6a
	inc [hl]                                         ; $6346: $34
	sbc [hl]                                         ; $6347: $9e
	ccf                                              ; $6348: $3f
	ld [hl], l                                       ; $6349: $75
	db $fc                                           ; $634a: $fc
	ld [hl], a                                       ; $634b: $77
	dec c                                            ; $634c: $0d
	ld a, c                                          ; $634d: $79
	db $dd                                           ; $634e: $dd
	sbc [hl]                                         ; $634f: $9e
	add b                                            ; $6350: $80
	ld l, a                                          ; $6351: $6f
	dec c                                            ; $6352: $0d
	adc l                                            ; $6353: $8d
	ei                                               ; $6354: $fb
	add d                                            ; $6355: $82
	ld b, $0c                                        ; $6356: $06 $0c
	ld [$c018], sp                                   ; $6358: $08 $18 $c0
	nop                                              ; $635b: $00
	inc b                                            ; $635c: $04
	ld a, l                                          ; $635d: $7d
	ld sp, hl                                        ; $635e: $f9
	ei                                               ; $635f: $fb
	rst FarCall                                          ; $6360: $f7
	rst FarCall                                          ; $6361: $f7
	rst $38                                          ; $6362: $ff
	ldh a, [$fc]                                     ; $6363: $f0 $fc
	cp $75                                           ; $6365: $fe $75
	ld sp, hl                                        ; $6367: $f9
	sbc l                                            ; $6368: $9d
	rlca                                             ; $6369: $07
	rrca                                             ; $636a: $0f
	ld a, c                                          ; $636b: $79
	push af                                          ; $636c: $f5
	ld a, c                                          ; $636d: $79
	ld d, [hl]                                       ; $636e: $56
	sbc [hl]                                         ; $636f: $9e
	ld b, c                                          ; $6370: $41
	ld a, d                                          ; $6371: $7a
	ld h, h                                          ; $6372: $64
	ld a, a                                          ; $6373: $7f
	and b                                            ; $6374: $a0
	sbc h                                            ; $6375: $9c
	pop hl                                           ; $6376: $e1
	di                                               ; $6377: $f3
	pop bc                                           ; $6378: $c1
	ld [hl], e                                       ; $6379: $73
	ld a, [hl]                                       ; $637a: $7e
	add l                                            ; $637b: $85
	rst $38                                          ; $637c: $ff
	call c, $f9e0                                    ; $637d: $dc $e0 $f9
	rst $38                                          ; $6380: $ff
	ld a, a                                          ; $6381: $7f
	ld a, d                                          ; $6382: $7a
	rst AddAOntoHL                                          ; $6383: $ef
	rst GetHLinHL                                          ; $6384: $cf
	cp l                                             ; $6385: $bd
	rst $38                                          ; $6386: $ff
	rst AddAOntoHL                                          ; $6387: $ef
	or a                                             ; $6388: $b7
	ret nc                                           ; $6389: $d0

	add sp, -$1a                                     ; $638a: $e8 $e6
	ld h, c                                          ; $638c: $61
	ldh [rP1], a                                     ; $638d: $e0 $00
	add b                                            ; $638f: $80
	ret nz                                           ; $6390: $c0

	ld l, a                                          ; $6391: $6f
	and b                                            ; $6392: $a0
	jr nc, jr_03d_6325                               ; $6393: $30 $90

	ret nc                                           ; $6395: $d0

	ld [hl], a                                       ; $6396: $77
	inc de                                           ; $6397: $13
	ld a, a                                          ; $6398: $7f
	ret z                                            ; $6399: $c8

	sub b                                            ; $639a: $90
	rra                                              ; $639b: $1f
	sbc a                                            ; $639c: $9f
	ld bc, $d603                                     ; $639d: $01 $03 $d6
	rst $38                                          ; $63a0: $ff
	dec e                                            ; $63a1: $1d
	inc a                                            ; $63a2: $3c
	ld l, h                                          ; $63a3: $6c
	call z, $feff                                    ; $63a4: $cc $ff $fe
	db $fd                                           ; $63a7: $fd
	ld [hl], c                                       ; $63a8: $71
	xor $7a                                          ; $63a9: $ee $7a
	rst GetHLinHL                                          ; $63ab: $cf
	halt                                             ; $63ac: $76
	and d                                            ; $63ad: $a2
	ld [hl], a                                       ; $63ae: $77
	ld l, e                                          ; $63af: $6b
	ld [hl], a                                       ; $63b0: $77
	sub l                                            ; $63b1: $95
	sbc [hl]                                         ; $63b2: $9e
	rlca                                             ; $63b3: $07
	ld l, e                                          ; $63b4: $6b
	ld h, b                                          ; $63b5: $60
	sbc [hl]                                         ; $63b6: $9e
	ldh a, [$79]                                     ; $63b7: $f0 $79
	xor $dc                                          ; $63b9: $ee $dc
	rst $38                                          ; $63bb: $ff
	ld a, d                                          ; $63bc: $7a
	dec e                                            ; $63bd: $1d
	sbc b                                            ; $63be: $98
	ld l, $17                                        ; $63bf: $2e $17
	dec bc                                           ; $63c1: $0b
	rlca                                             ; $63c2: $07
	ld [bc], a                                       ; $63c3: $02
	rst $38                                          ; $63c4: $ff
	rra                                              ; $63c5: $1f
	halt                                             ; $63c6: $76
	ld h, b                                          ; $63c7: $60
	call c, $8fff                                    ; $63c8: $dc $ff $8f
	db $fd                                           ; $63cb: $fd
	ld a, [hl]                                       ; $63cc: $7e
	rst $38                                          ; $63cd: $ff
	rst SubAFromDE                                          ; $63ce: $df
	rst $38                                          ; $63cf: $ff
	xor a                                            ; $63d0: $af
	rst $38                                          ; $63d1: $ff
	rst $38                                          ; $63d2: $ff
	rrca                                             ; $63d3: $0f
	add a                                            ; $63d4: $87
	add e                                            ; $63d5: $83
	pop hl                                           ; $63d6: $e1
	ldh [$f0], a                                     ; $63d7: $e0 $f0
	ldh a, [$e0]                                     ; $63d9: $f0 $e0
	add hl, de                                       ; $63db: $19
	nop                                              ; $63dc: $00
	db $dd                                           ; $63dd: $dd
	ld d, l                                          ; $63de: $55
	sbc [hl]                                         ; $63df: $9e
	ld d, [hl]                                       ; $63e0: $56
	call c, $9a33                                    ; $63e1: $dc $33 $9a
	ld d, l                                          ; $63e4: $55
	inc sp                                           ; $63e5: $33
	inc sp                                           ; $63e6: $33
	ld h, l                                          ; $63e7: $65
	ld d, e                                          ; $63e8: $53
	jp c, $9e33                                      ; $63e9: $da $33 $9e

	inc [hl]                                         ; $63ec: $34
	sbc $33                                          ; $63ed: $de $33
	sbc e                                            ; $63ef: $9b
	ld b, h                                          ; $63f0: $44
	ld b, e                                          ; $63f1: $43
	inc sp                                           ; $63f2: $33
	inc sp                                           ; $63f3: $33
	ld l, d                                          ; $63f4: $6a
	add [hl]                                         ; $63f5: $86

jr_03d_63f6:
	rst $38                                          ; $63f6: $ff
	sbc [hl]                                         ; $63f7: $9e
	jr c, jr_03d_63f6                                ; $63f8: $38 $fc

	sbc d                                            ; $63fa: $9a
	ld sp, hl                                        ; $63fb: $f9
	cp $d2                                           ; $63fc: $fe $d2
	cp $fc                                           ; $63fe: $fe $fc
	sbc $ff                                          ; $6400: $de $ff
	rst $38                                          ; $6402: $ff
	sbc [hl]                                         ; $6403: $9e
	sub b                                            ; $6404: $90
	db $fc                                           ; $6405: $fc
	sub a                                            ; $6406: $97

jr_03d_6407:
	ld [de], a                                       ; $6407: $12
	or c                                             ; $6408: $b1
	adc d                                            ; $6409: $8a
	rla                                              ; $640a: $17
	cp e                                             ; $640b: $bb
	ld d, c                                          ; $640c: $51
	ld [hl+], a                                      ; $640d: $22
	ld b, c                                          ; $640e: $41
	ld sp, hl                                        ; $640f: $f9
	adc d                                            ; $6410: $8a
	ld a, [hl+]                                      ; $6411: $2a
	dec d                                            ; $6412: $15
	ld [$ba54], a                                    ; $6413: $ea $54 $ba
	dec d                                            ; $6416: $15
	add hl, hl                                       ; $6417: $29
	dec d                                            ; $6418: $15
	inc bc                                           ; $6419: $03
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	add b                                            ; $641c: $80
	inc c                                            ; $641d: $0c
	nop                                              ; $641e: $00
	ld bc, $7c1f                                     ; $641f: $01 $1f $7c
	rst $38                                          ; $6422: $ff
	rst $38                                          ; $6423: $ff
	ld a, a                                          ; $6424: $7f
	di                                               ; $6425: $f3
	sbc $ff                                          ; $6426: $de $ff
	sub h                                            ; $6428: $94
	ld a, [$3ffd]                                    ; $6429: $fa $fd $3f
	rrca                                             ; $642c: $0f
	rrca                                             ; $642d: $0f
	ccf                                              ; $642e: $3f
	rst $38                                          ; $642f: $ff
	ld hl, sp+$3e                                    ; $6430: $f8 $3e
	rrca                                             ; $6432: $0f
	ret nz                                           ; $6433: $c0

	sbc $f0                                          ; $6434: $de $f0
	add b                                            ; $6436: $80
	ret nz                                           ; $6437: $c0

	rlca                                             ; $6438: $07
	and d                                            ; $6439: $a2
	pop de                                           ; $643a: $d1
	ei                                               ; $643b: $fb
	di                                               ; $643c: $f3
	db $eb                                           ; $643d: $eb
	or $ab                                           ; $643e: $f6 $ab
	dec [hl]                                         ; $6440: $35
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	pop bc                                           ; $6443: $c1
	jp $e3e3                                         ; $6444: $c3 $e3 $e3


	pop hl                                           ; $6447: $e1
	pop hl                                           ; $6448: $e1
	sbc a                                            ; $6449: $9f
	rst $38                                          ; $644a: $ff

jr_03d_644b:
	rst $38                                          ; $644b: $ff
	ldh a, [rP1]                                     ; $644c: $f0 $00
	nop                                              ; $644e: $00
	ccf                                              ; $644f: $3f
	add b                                            ; $6450: $80
	cp $f0                                           ; $6451: $fe $f0
	nop                                              ; $6453: $00
	rrca                                             ; $6454: $0f
	rst $38                                          ; $6455: $ff
	sbc d                                            ; $6456: $9a
	rst $38                                          ; $6457: $ff
	rst SubAFromBC                                          ; $6458: $e7
	rst $38                                          ; $6459: $ff
	cp $e0                                           ; $645a: $fe $e0
	db $fd                                           ; $645c: $fd
	sbc e                                            ; $645d: $9b
	db $fc                                           ; $645e: $fc
	inc bc                                           ; $645f: $03
	ld bc, $dc1f                                     ; $6460: $01 $1f $dc
	rst $38                                          ; $6463: $ff
	sbc [hl]                                         ; $6464: $9e
	db $fc                                           ; $6465: $fc
	ld a, [$f59e]                                    ; $6466: $fa $9e $f5
	reti                                             ; $6469: $d9


	rst $38                                          ; $646a: $ff
	db $fc                                           ; $646b: $fc
	rst SubAFromDE                                          ; $646c: $df
	ld bc, $679e                                     ; $646d: $01 $9e $67
	db $db                                           ; $6470: $db
	rst $38                                          ; $6471: $ff
	rst SubAFromDE                                          ; $6472: $df
	cp $df                                           ; $6473: $fe $df
	jr nc, jr_03d_6407                               ; $6475: $30 $90

	ld h, b                                          ; $6477: $60
	ld b, b                                          ; $6478: $40
	ret nz                                           ; $6479: $c0

	add b                                            ; $647a: $80
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	rst AddAOntoHL                                          ; $647d: $ef
	rst GetHLinHL                                          ; $647e: $cf
	rst SubAFromDE                                          ; $647f: $df
	cp a                                             ; $6480: $bf
	cp a                                             ; $6481: $bf
	ld a, a                                          ; $6482: $7f
	rst $38                                          ; $6483: $ff
	rst $38                                          ; $6484: $ff
	ld bc, $9efa                                     ; $6485: $01 $fa $9e
	cp $6b                                           ; $6488: $fe $6b
	rst SubAFromDE                                          ; $648a: $df
	sub h                                            ; $648b: $94
	push de                                          ; $648c: $d5
	ld a, e                                          ; $648d: $7b
	ld d, l                                          ; $648e: $55
	xor d                                            ; $648f: $aa
	db $dd                                           ; $6490: $dd
	cp $dd                                           ; $6491: $fe $dd
	xor d                                            ; $6493: $aa
	db $dd                                           ; $6494: $dd
	ret c                                            ; $6495: $d8

	ret nz                                           ; $6496: $c0

	sbc $80                                          ; $6497: $de $80
	add b                                            ; $6499: $80
	nop                                              ; $649a: $00
	inc bc                                           ; $649b: $03
	halt                                             ; $649c: $76
	jp $fcdf                                         ; $649d: $c3 $df $fc


	ld [hl], b                                       ; $64a0: $70
	db $fc                                           ; $64a1: $fc
	ld hl, sp-$10                                    ; $64a2: $f8 $f0
	sbc h                                            ; $64a4: $9c
	ccf                                              ; $64a5: $3f
	ld a, a                                          ; $64a6: $7f
	rlca                                             ; $64a7: $07
	ccf                                              ; $64a8: $3f
	rlca                                             ; $64a9: $07
	rst $38                                          ; $64aa: $ff
	rst $38                                          ; $64ab: $ff
	cp b                                             ; $64ac: $b8
	ld h, a                                          ; $64ad: $67
	pop bc                                           ; $64ae: $c1
	ld d, b                                          ; $64af: $50
	add hl, hl                                       ; $64b0: $29
	rla                                              ; $64b1: $17
	ld c, $25                                        ; $64b2: $0e $25
	rra                                              ; $64b4: $1f
	inc hl                                           ; $64b5: $23
	pop bc                                           ; $64b6: $c1
	ret nc                                           ; $64b7: $d0

	jp hl                                            ; $64b8: $e9


	sub h                                            ; $64b9: $94
	push af                                          ; $64ba: $f5
	ld a, [$88fc]                                    ; $64bb: $fa $fc $88
	ld [$c808], sp                                   ; $64be: $08 $08 $c8
	xor b                                            ; $64c1: $a8
	jr jr_03d_644b                                   ; $64c2: $18 $87

	pop de                                           ; $64c4: $d1
	db $dd                                           ; $64c5: $dd
	rst $38                                          ; $64c6: $ff
	ld a, a                                          ; $64c7: $7f
	ld b, [hl]                                       ; $64c8: $46
	ld a, a                                          ; $64c9: $7f
	ld a, c                                          ; $64ca: $79
	ld [hl], a                                       ; $64cb: $77
	sub d                                            ; $64cc: $92
	ld a, e                                          ; $64cd: $7b
	ld [hl], l                                       ; $64ce: $75
	sbc [hl]                                         ; $64cf: $9e
	ldh [$dc], a                                     ; $64d0: $e0 $dc
	rst $38                                          ; $64d2: $ff
	ld a, a                                          ; $64d3: $7f
	ld e, h                                          ; $64d4: $5c
	sbc e                                            ; $64d5: $9b
	sbc a                                            ; $64d6: $9f
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	rlca                                             ; $64d9: $07
	ld a, e                                          ; $64da: $7b
	and l                                            ; $64db: $a5
	sbc l                                            ; $64dc: $9d
	rrca                                             ; $64dd: $0f
	inc b                                            ; $64de: $04
	ld [hl], a                                       ; $64df: $77
	and h                                            ; $64e0: $a4
	rst SubAFromDE                                          ; $64e1: $df
	rra                                              ; $64e2: $1f
	ld a, e                                          ; $64e3: $7b
	ld h, b                                          ; $64e4: $60
	sub [hl]                                         ; $64e5: $96
	db $fc                                           ; $64e6: $fc
	pop hl                                           ; $64e7: $e1
	rst $38                                          ; $64e8: $ff
	rst $38                                          ; $64e9: $ff
	pop af                                           ; $64ea: $f1
	rst JumpTable                                          ; $64eb: $c7
	ld e, a                                          ; $64ec: $5f
	rst $38                                          ; $64ed: $ff
	rst $38                                          ; $64ee: $ff
	ld a, e                                          ; $64ef: $7b
	ld hl, sp-$6b                                    ; $64f0: $f8 $95
	pop hl                                           ; $64f2: $e1
	add b                                            ; $64f3: $80
	ld c, $ff                                        ; $64f4: $0e $ff
	rst $38                                          ; $64f6: $ff
	rst GetHLinHL                                          ; $64f7: $cf
	ld l, [hl]                                       ; $64f8: $6e
	db $fc                                           ; $64f9: $fc
	ret c                                            ; $64fa: $d8

	ldh a, [$7b]                                     ; $64fb: $f0 $7b
	inc l                                            ; $64fd: $2c
	sbc e                                            ; $64fe: $9b
	db $fc                                           ; $64ff: $fc
	ld [hl], c                                       ; $6500: $71
	di                                               ; $6501: $f3
	rst SubAFromHL                                          ; $6502: $d7
	ld [hl], e                                       ; $6503: $73
	ld d, b                                          ; $6504: $50
	ld a, a                                          ; $6505: $7f
	cp h                                             ; $6506: $bc
	sbc l                                            ; $6507: $9d
	inc bc                                           ; $6508: $03
	ccf                                              ; $6509: $3f
	ld a, e                                          ; $650a: $7b
	ld d, [hl]                                       ; $650b: $56
	ld [hl], e                                       ; $650c: $73
	ld [hl], c                                       ; $650d: $71
	adc e                                            ; $650e: $8b
	ld h, b                                          ; $650f: $60
	ld b, d                                          ; $6510: $42
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	adc a                                            ; $6513: $8f
	ccf                                              ; $6514: $3f
	rst $38                                          ; $6515: $ff
	db $fc                                           ; $6516: $fc
	jp nz, $577f                                     ; $6517: $c2 $7f $57

	ld e, e                                          ; $651a: $5b
	rst $38                                          ; $651b: $ff
	ld hl, sp-$80                                    ; $651c: $f8 $80
	inc bc                                           ; $651e: $03
	ccf                                              ; $651f: $3f
	add b                                            ; $6520: $80
	ld bc, $7b03                                     ; $6521: $01 $03 $7b
	xor c                                            ; $6524: $a9
	ld a, a                                          ; $6525: $7f
	ld h, a                                          ; $6526: $67
	sbc e                                            ; $6527: $9b
	ld sp, hl                                        ; $6528: $f9
	push de                                          ; $6529: $d5
	ld e, h                                          ; $652a: $5c
	add b                                            ; $652b: $80
	ld a, d                                          ; $652c: $7a
	rst $38                                          ; $652d: $ff
	ld a, e                                          ; $652e: $7b
	ld c, $9e                                        ; $652f: $0e $9e
	ret nz                                           ; $6531: $c0

	db $fc                                           ; $6532: $fc
	sbc [hl]                                         ; $6533: $9e
	ldh a, [$7b]                                     ; $6534: $f0 $7b
	call z, $ffdd                                    ; $6536: $cc $dd $ff
	sbc c                                            ; $6539: $99
	ret nz                                           ; $653a: $c0

jr_03d_653b:
	ld [bc], a                                       ; $653b: $02
	ld [bc], a                                       ; $653c: $02
	nop                                              ; $653d: $00
	inc b                                            ; $653e: $04
	inc b                                            ; $653f: $04
	ld a, d                                          ; $6540: $7a
	sbc $df                                          ; $6541: $de $df
	db $fd                                           ; $6543: $fd
	sub [hl]                                         ; $6544: $96
	rst $38                                          ; $6545: $ff
	ei                                               ; $6546: $fb
	ei                                               ; $6547: $fb
	rst $38                                          ; $6548: $ff
	rst $38                                          ; $6549: $ff
	add hl, sp                                       ; $654a: $39
	dec [hl]                                         ; $654b: $35
	ld a, [hl-]                                      ; $654c: $3a
	inc [hl]                                         ; $654d: $34
	ld a, e                                          ; $654e: $7b
	cp $9d                                           ; $654f: $fe $9d
	inc e                                            ; $6551: $1c
	pop hl                                           ; $6552: $e1
	db $db                                           ; $6553: $db
	ldh [$7e], a                                     ; $6554: $e0 $7e
	xor [hl]                                         ; $6556: $ae
	sub b                                            ; $6557: $90
	ldh a, [$fc]                                     ; $6558: $f0 $fc
	ld e, $4f                                        ; $655a: $1e $4f
	ld b, e                                          ; $655c: $43
	jr nz, jr_03d_657f                               ; $655d: $20 $20

	rst $38                                          ; $655f: $ff
	sbc a                                            ; $6560: $9f
	add a                                            ; $6561: $87
	ld h, e                                          ; $6562: $63
	ld [hl], b                                       ; $6563: $70
	ld a, h                                          ; $6564: $7c
	ccf                                              ; $6565: $3f
	ccf                                              ; $6566: $3f
	cp $9e                                           ; $6567: $fe $9e
	add b                                            ; $6569: $80
	ld a, e                                          ; $656a: $7b
	db $ec                                           ; $656b: $ec
	db $db                                           ; $656c: $db
	rst $38                                          ; $656d: $ff
	sbc l                                            ; $656e: $9d
	ccf                                              ; $656f: $3f
	rra                                              ; $6570: $1f
	ld l, [hl]                                       ; $6571: $6e
	ret nc                                           ; $6572: $d0

	rst $38                                          ; $6573: $ff
	sbc [hl]                                         ; $6574: $9e
	ret nz                                           ; $6575: $c0

	reti                                             ; $6576: $d9


	rst $38                                          ; $6577: $ff
	adc l                                            ; $6578: $8d
	ccf                                              ; $6579: $3f
	ld b, $0e                                        ; $657a: $06 $0e
	ld a, [bc]                                       ; $657c: $0a
	ld a, [de]                                       ; $657d: $1a
	ld [hl-], a                                      ; $657e: $32

jr_03d_657f:
	ld h, d                                          ; $657f: $62
	ld h, d                                          ; $6580: $62
	jp z, $fbfb                                      ; $6581: $ca $fb $fb

	rst FarCall                                          ; $6584: $f7
	rst SubAFromBC                                          ; $6585: $e7
	rst AddAOntoHL                                          ; $6586: $ef
	rst SubAFromDE                                          ; $6587: $df
	rst SubAFromDE                                          ; $6588: $df
	ret nz                                           ; $6589: $c0

	ld [bc], a                                       ; $658a: $02
	ld [hl], d                                       ; $658b: $72
	xor a                                            ; $658c: $af
	sbc [hl]                                         ; $658d: $9e
	ld [bc], a                                       ; $658e: $02
	ld l, d                                          ; $658f: $6a
	pop de                                           ; $6590: $d1
	ld a, [hl]                                       ; $6591: $7e
	add a                                            ; $6592: $87
	sub a                                            ; $6593: $97
	and h                                            ; $6594: $a4
	add hl, bc                                       ; $6595: $09
	inc de                                           ; $6596: $13
	dec h                                            ; $6597: $25
	adc d                                            ; $6598: $8a
	rla                                              ; $6599: $17
	dec l                                            ; $659a: $2d
	cp $7a                                           ; $659b: $fe $7a
	call c, $a876                                    ; $659d: $dc $76 $a8
	ld a, a                                          ; $65a0: $7f
	add l                                            ; $65a1: $85
	adc a                                            ; $65a2: $8f
	db $10                                           ; $65a3: $10
	jr nz, jr_03d_65e8                               ; $65a4: $20 $42

	ld a, a                                          ; $65a6: $7f
	cp $f0                                           ; $65a7: $fe $f0
	rlca                                             ; $65a9: $07
	rrca                                             ; $65aa: $0f
	rra                                              ; $65ab: $1f
	ccf                                              ; $65ac: $3f
	ld a, l                                          ; $65ad: $7d
	ld h, b                                          ; $65ae: $60
	ld bc, $7f0f                                     ; $65af: $01 $0f $7f
	rra                                              ; $65b2: $1f
	ld a, e                                          ; $65b3: $7b
	ld l, b                                          ; $65b4: $68
	sub h                                            ; $65b5: $94
	rst SubAFromBC                                          ; $65b6: $e7
	inc c                                            ; $65b7: $0c
	jr jr_03d_653b                                   ; $65b8: $18 $81

	ldh [$e0], a                                     ; $65ba: $e0 $e0
	ret nz                                           ; $65bc: $c0

	nop                                              ; $65bd: $00
	jr @-$03                                         ; $65be: $18 $fb

	rst FarCall                                          ; $65c0: $f7
	ld a, e                                          ; $65c1: $7b
	add hl, hl                                       ; $65c2: $29
	adc e                                            ; $65c3: $8b
	ld hl, sp-$0d                                    ; $65c4: $f8 $f3
	db $fc                                           ; $65c6: $fc
	ld a, [hl]                                       ; $65c7: $7e
	ccf                                              ; $65c8: $3f
	cp h                                             ; $65c9: $bc
	ld bc, $0700                                     ; $65ca: $01 $00 $07
	inc c                                            ; $65cd: $0c

jr_03d_65ce:
	rrca                                             ; $65ce: $0f
	add a                                            ; $65cf: $87
	jp $f4e8                                         ; $65d0: $c3 $e8 $f4


	ld a, [$ff7d]                                    ; $65d3: $fa $7d $ff
	rra                                              ; $65d6: $1f
	rlca                                             ; $65d7: $07
	ld [hl], l                                       ; $65d8: $75
	ld sp, hl                                        ; $65d9: $f9
	adc [hl]                                         ; $65da: $8e
	ret nc                                           ; $65db: $d0

	db $ec                                           ; $65dc: $ec
	cp $c6                                           ; $65dd: $fe $c6
	db $e3                                           ; $65df: $e3
	ret nz                                           ; $65e0: $c0

	ld h, b                                          ; $65e1: $60
	jr nc, jr_03d_663c                               ; $65e2: $30 $58

	xor a                                            ; $65e4: $af
	call nc, $f5ea                                   ; $65e5: $d4 $ea $f5

jr_03d_65e8:
	ld a, a                                          ; $65e8: $7f
	ccf                                              ; $65e9: $3f
	rra                                              ; $65ea: $1f
	rrca                                             ; $65eb: $0f
	ld [hl], a                                       ; $65ec: $77
	db $eb                                           ; $65ed: $eb
	ld a, a                                          ; $65ee: $7f
	and $97                                          ; $65ef: $e6 $97
	inc bc                                           ; $65f1: $03
	ld [bc], a                                       ; $65f2: $02
	ld bc, $20c1                                     ; $65f3: $01 $c1 $20
	db $10                                           ; $65f6: $10
	db $fd                                           ; $65f7: $fd
	db $fd                                           ; $65f8: $fd
	sbc $fe                                          ; $65f9: $de $fe
	ld a, a                                          ; $65fb: $7f
	db $eb                                           ; $65fc: $eb
	add b                                            ; $65fd: $80
	rrca                                             ; $65fe: $0f
	cp l                                             ; $65ff: $bd
	ld hl, sp+$75                                    ; $6600: $f8 $75
	ld l, [hl]                                       ; $6602: $6e
	ld a, a                                          ; $6603: $7f
	cp [hl]                                          ; $6604: $be
	db $dd                                           ; $6605: $dd
	dec hl                                           ; $6606: $2b
	adc h                                            ; $6607: $8c
	add b                                            ; $6608: $80
	nop                                              ; $6609: $00
	inc b                                            ; $660a: $04
	inc l                                            ; $660b: $2c
	jr jr_03d_65ce                                   ; $660c: $18 $c0

	pop bc                                           ; $660e: $c1
	ld [hl], b                                       ; $660f: $70
	ldh a, [rSVBK]                                   ; $6610: $f0 $70
	and b                                            ; $6612: $a0
	ld [hl], b                                       ; $6613: $70
	ret nc                                           ; $6614: $d0

	ret c                                            ; $6615: $d8

	ret c                                            ; $6616: $d8

	ld e, a                                          ; $6617: $5f
	rra                                              ; $6618: $1f
	rra                                              ; $6619: $1f
	ccf                                              ; $661a: $3f
	ccf                                              ; $661b: $3f
	rra                                              ; $661c: $1f
	add b                                            ; $661d: $80
	rra                                              ; $661e: $1f
	adc a                                            ; $661f: $8f
	db $fc                                           ; $6620: $fc
	ldh a, [$fb]                                     ; $6621: $f0 $fb
	sbc [hl]                                         ; $6623: $9e
	adc b                                            ; $6624: $88
	ld de, $2000                                     ; $6625: $11 $00 $20
	inc bc                                           ; $6628: $03
	rrca                                             ; $6629: $0f
	rlca                                             ; $662a: $07
	ld h, [hl]                                       ; $662b: $66
	ld a, b                                          ; $662c: $78
	pop af                                           ; $662d: $f1
	ldh [$e0], a                                     ; $662e: $e0 $e0
	nop                                              ; $6630: $00
	ld h, b                                          ; $6631: $60
	ld hl, $d058                                     ; $6632: $21 $58 $d0
	jr nc, jr_03d_66b6                               ; $6635: $30 $7f

	adc a                                            ; $6637: $8f
	rst $38                                          ; $6638: $ff
	rst $38                                          ; $6639: $ff
	ld a, $7f                                        ; $663a: $3e $7f

jr_03d_663c:
	rst SubAFromDE                                          ; $663c: $df
	sbc d                                            ; $663d: $9a
	cpl                                              ; $663e: $2f
	ld b, b                                          ; $663f: $40
	ldh a, [rP1]                                     ; $6640: $f0 $00
	ldh [rPCM34], a                                  ; $6642: $e0 $77
	dec e                                            ; $6644: $1d
	ld a, a                                          ; $6645: $7f
	ld c, $7b                                        ; $6646: $0e $7b
	ld h, $dd                                        ; $6648: $26 $dd
	rst $38                                          ; $664a: $ff
	sbc [hl]                                         ; $664b: $9e
	ld a, a                                          ; $664c: $7f
	halt                                             ; $664d: $76
	add $fd                                          ; $664e: $c6 $fd
	ld [hl], a                                       ; $6650: $77
	inc sp                                           ; $6651: $33
	db $dd                                           ; $6652: $dd
	rst $38                                          ; $6653: $ff
	sbc $08                                          ; $6654: $de $08
	sbc [hl]                                         ; $6656: $9e
	cp a                                             ; $6657: $bf
	sbc $18                                          ; $6658: $de $18
	sbc [hl]                                         ; $665a: $9e
	jr c, @-$20                                      ; $665b: $38 $de

	rst $38                                          ; $665d: $ff
	sbc l                                            ; $665e: $9d
	jp $deef                                         ; $665f: $c3 $ef $de


	rst $38                                          ; $6662: $ff
	sub [hl]                                         ; $6663: $96
	ld e, $1d                                        ; $6664: $1e $1d
	ld e, $0d                                        ; $6666: $1e $0d
	ld c, $0d                                        ; $6668: $0e $0d
	ld c, $0f                                        ; $666a: $0e $0f
	ldh a, [$db]                                     ; $666c: $f0 $db
	ld hl, sp-$64                                    ; $666e: $f8 $9c
	db $fc                                           ; $6670: $fc
	ld h, e                                          ; $6671: $63
	ld l, a                                          ; $6672: $6f
	sbc $3f                                          ; $6673: $de $3f
	ld a, l                                          ; $6675: $7d
	ret z                                            ; $6676: $c8

	ld a, a                                          ; $6677: $7f
	halt                                             ; $6678: $76
	sbc l                                            ; $6679: $9d
	ld a, $3d                                        ; $667a: $3e $3d
	ld a, e                                          ; $667c: $7b
	ld hl, sp-$21                                    ; $667d: $f8 $df
	ld a, a                                          ; $667f: $7f
	sbc l                                            ; $6680: $9d

Jump_03d_6681:
	rst $38                                          ; $6681: $ff
	and $75                                          ; $6682: $e6 $75
	ld c, d                                          ; $6684: $4a
	ld a, e                                          ; $6685: $7b
	jp $8280                                         ; $6686: $c3 $80 $82


	ld d, b                                          ; $6689: $50
	ld l, e                                          ; $668a: $6b
	push af                                          ; $668b: $f5
	xor $ff                                          ; $668c: $ee $ff
	rst $38                                          ; $668e: $ff
	ld [hl], b                                       ; $668f: $70
	inc a                                            ; $6690: $3c
	db $fc                                           ; $6691: $fc
	db $fd                                           ; $6692: $fd
	rst $38                                          ; $6693: $ff
	xor a                                            ; $6694: $af
	cp a                                             ; $6695: $bf
	jr jr_03d_6717                                   ; $6696: $18 $7f

	ccf                                              ; $6698: $3f
	rst $38                                          ; $6699: $ff
	ld a, [$b0f8]                                    ; $669a: $fa $f8 $b0
	and b                                            ; $669d: $a0
	rla                                              ; $669e: $17
	ld b, b                                          ; $669f: $40
	add b                                            ; $66a0: $80
	add d                                            ; $66a1: $82
	cp a                                             ; $66a2: $bf
	cp $e3                                           ; $66a3: $fe $e3
	cp $fc                                           ; $66a5: $fe $fc
	ld a, l                                          ; $66a7: $7d
	sub h                                            ; $66a8: $94
	sub c                                            ; $66a9: $91
	ld a, a                                          ; $66aa: $7f
	ld [hl], b                                       ; $66ab: $70
	inc bc                                           ; $66ac: $03
	rra                                              ; $66ad: $1f
	ld [bc], a                                       ; $66ae: $02
	inc b                                            ; $66af: $04
	inc b                                            ; $66b0: $04
	ld e, $fd                                        ; $66b1: $1e $fd
	ld a, [$8a45]                                    ; $66b3: $fa $45 $8a

jr_03d_66b6:
	dec d                                            ; $66b6: $15
	dec hl                                           ; $66b7: $2b
	ld a, d                                          ; $66b8: $7a
	pop de                                           ; $66b9: $d1
	ld a, d                                          ; $66ba: $7a
	rst AddAOntoHL                                          ; $66bb: $ef
	ld a, [hl]                                       ; $66bc: $7e
	or a                                             ; $66bd: $b7
	sub l                                            ; $66be: $95
	ld e, [hl]                                       ; $66bf: $5e
	cp [hl]                                          ; $66c0: $be
	ld d, h                                          ; $66c1: $54
	xor b                                            ; $66c2: $a8
	ld d, b                                          ; $66c3: $50
	ldh [$80], a                                     ; $66c4: $e0 $80
	cp h                                             ; $66c6: $bc
	ld bc, $7a03                                     ; $66c7: $01 $03 $7a
	adc $79                                          ; $66ca: $ce $79
	ld [hl], b                                       ; $66cc: $70
	halt                                             ; $66cd: $76
	and e                                            ; $66ce: $a3
	ld a, a                                          ; $66cf: $7f
	ld c, $9e                                        ; $66d0: $0e $9e
	inc b                                            ; $66d2: $04
	ld [hl], d                                       ; $66d3: $72
	ld l, a                                          ; $66d4: $6f
	sbc c                                            ; $66d5: $99
	cp $fd                                           ; $66d6: $fe $fd
	ei                                               ; $66d8: $fb
	di                                               ; $66d9: $f3
	jr nc, @+$62                                     ; $66da: $30 $60

	halt                                             ; $66dc: $76
	xor d                                            ; $66dd: $aa
	ld a, c                                          ; $66de: $79
	ld d, b                                          ; $66df: $50
	ld a, l                                          ; $66e0: $7d
	ld d, c                                          ; $66e1: $51
	ld a, e                                          ; $66e2: $7b
	ldh [c], a                                       ; $66e3: $e2
	rst SubAFromDE                                          ; $66e4: $df
	rst $38                                          ; $66e5: $ff
	ld a, d                                          ; $66e6: $7a
	push de                                          ; $66e7: $d5
	ld [hl], c                                       ; $66e8: $71
	ld c, l                                          ; $66e9: $4d
	sbc h                                            ; $66ea: $9c
	ldh [$f8], a                                     ; $66eb: $e0 $f8
	db $fc                                           ; $66ed: $fc
	ld [hl], e                                       ; $66ee: $73
	ld d, b                                          ; $66ef: $50
	ld a, d                                          ; $66f0: $7a
	ld b, e                                          ; $66f1: $43
	ld a, a                                          ; $66f2: $7f
	or $9c                                           ; $66f3: $f6 $9c
	ld a, $1f                                        ; $66f5: $3e $1f
	rrca                                             ; $66f7: $0f
	ld a, e                                          ; $66f8: $7b
	ld l, [hl]                                       ; $66f9: $6e
	ld a, a                                          ; $66fa: $7f
	push hl                                          ; $66fb: $e5
	sub h                                            ; $66fc: $94
	jp $f0e1                                         ; $66fd: $c3 $e1 $f0


	ld a, e                                          ; $6700: $7b
	dec a                                            ; $6701: $3d
	ld e, $0f                                        ; $6702: $1e $0f
	rlca                                             ; $6704: $07
	ld bc, $8603                                     ; $6705: $01 $03 $86
	ld a, d                                          ; $6708: $7a
	dec d                                            ; $6709: $15
	sbc [hl]                                         ; $670a: $9e
	ld hl, sp+$77                                    ; $670b: $f8 $77
	rst SubAFromDE                                          ; $670d: $df
	sub a                                            ; $670e: $97
	adc a                                            ; $670f: $8f
	call nc, Call_03d_57ea                           ; $6710: $d4 $ea $57
	db $eb                                           ; $6713: $eb
	rst FarCall                                          ; $6714: $f7
	ld a, e                                          ; $6715: $7b
	dec e                                            ; $6716: $1d

jr_03d_6717:
	ld [hl], c                                       ; $6717: $71
	ld h, a                                          ; $6718: $67
	sub b                                            ; $6719: $90
	add c                                            ; $671a: $81
	pop hl                                           ; $671b: $e1
	ld hl, sp-$61                                    ; $671c: $f8 $9f
	ld l, a                                          ; $671e: $6f
	ccf                                              ; $671f: $3f
	dec de                                           ; $6720: $1b
	xor h                                            ; $6721: $ac
	ret c                                            ; $6722: $d8

	ld hl, sp-$05                                    ; $6723: $f8 $fb
	rst $38                                          ; $6725: $ff
	ld a, $1a                                        ; $6726: $3e $1a
	ld bc, $067a                                     ; $6728: $01 $7a $06
	sub h                                            ; $672b: $94
	ret nz                                           ; $672c: $c0

	xor h                                            ; $672d: $ac
	rst JumpTable                                          ; $672e: $c7
	xor e                                            ; $672f: $ab
	or $80                                           ; $6730: $f6 $80
	ldh [$7f], a                                     ; $6732: $e0 $7f
	ld a, a                                          ; $6734: $7f
	adc a                                            ; $6735: $8f
	rlca                                             ; $6736: $07
	cp $91                                           ; $6737: $fe $91
	ld b, b                                          ; $6739: $40
	ld bc, $3507                                     ; $673a: $01 $07 $35
	ld l, d                                          ; $673d: $6a
	db $dd                                           ; $673e: $dd
	xor a                                            ; $673f: $af
	ld e, h                                          ; $6740: $5c
	dec [hl]                                         ; $6741: $35
	ld l, d                                          ; $6742: $6a
	rst FarCall                                          ; $6743: $f7
	ret nz                                           ; $6744: $c0

	ret nz                                           ; $6745: $c0

	add b                                            ; $6746: $80
	halt                                             ; $6747: $76
	dec a                                            ; $6748: $3d
	sbc l                                            ; $6749: $9d
	ld a, a                                          ; $674a: $7f
	db $d3                                           ; $674b: $d3
	ld a, b                                          ; $674c: $78
	ret nc                                           ; $674d: $d0

	ld a, [hl]                                       ; $674e: $7e
	db $e3                                           ; $674f: $e3
	sbc h                                            ; $6750: $9c
	add b                                            ; $6751: $80
	ld b, b                                          ; $6752: $40
	call c, $0b7b                                    ; $6753: $dc $7b $0b
	ld a, a                                          ; $6756: $7f
	ld h, e                                          ; $6757: $63
	ld a, c                                          ; $6758: $79
	sub c                                            ; $6759: $91
	ld a, a                                          ; $675a: $7f
	sub $98                                          ; $675b: $d6 $98
	add e                                            ; $675d: $83
	ret nz                                           ; $675e: $c0

	rst $38                                          ; $675f: $ff
	ld bc, $1ff0                                     ; $6760: $01 $f0 $1f
	add e                                            ; $6763: $83
	ld l, l                                          ; $6764: $6d
	bit 6, a                                         ; $6765: $cb $77
	halt                                             ; $6767: $76
	sbc l                                            ; $6768: $9d
	ld a, [hl]                                       ; $6769: $7e
	rst SubAFromDE                                          ; $676a: $df
	ld l, l                                          ; $676b: $6d
	push de                                          ; $676c: $d5
	sbc [hl]                                         ; $676d: $9e
	add a                                            ; $676e: $87
	ld a, e                                          ; $676f: $7b
	adc h                                            ; $6770: $8c
	ld a, [hl]                                       ; $6771: $7e
	add $9d                                          ; $6772: $c6 $9d
	ld c, b                                          ; $6774: $48
	ld [$1979], sp                                   ; $6775: $08 $79 $19
	ld a, a                                          ; $6778: $7f
	add l                                            ; $6779: $85
	ld [hl], a                                       ; $677a: $77
	db $ec                                           ; $677b: $ec
	sub h                                            ; $677c: $94
	ld [$0303], sp                                   ; $677d: $08 $03 $03
	inc c                                            ; $6780: $0c
	inc c                                            ; $6781: $0c
	inc b                                            ; $6782: $04
	ld c, $fe                                        ; $6783: $0e $fe
	db $e3                                           ; $6785: $e3
	inc bc                                           ; $6786: $03
	inc bc                                           ; $6787: $03
	sbc $fc                                          ; $6788: $de $fc
	sbc l                                            ; $678a: $9d
	or $06                                           ; $678b: $f6 $06
	ld [hl], h                                       ; $678d: $74
	ld e, h                                          ; $678e: $5c
	sub a                                            ; $678f: $97
	ld a, a                                          ; $6790: $7f
	cp a                                             ; $6791: $bf
	ld e, a                                          ; $6792: $5f
	adc a                                            ; $6793: $8f
	push bc                                          ; $6794: $c5
	add h                                            ; $6795: $84
	ld b, [hl]                                       ; $6796: $46
	ld a, a                                          ; $6797: $7f
	ld a, d                                          ; $6798: $7a
	ld d, d                                          ; $6799: $52
	ld a, [hl]                                       ; $679a: $7e
	rra                                              ; $679b: $1f
	rst SubAFromDE                                          ; $679c: $df
	inc bc                                           ; $679d: $03
	halt                                             ; $679e: $76
	adc d                                            ; $679f: $8a
	ld a, [hl]                                       ; $67a0: $7e
	ldh [c], a                                       ; $67a1: $e2
	sbc l                                            ; $67a2: $9d
	ld a, l                                          ; $67a3: $7d
	ldh [c], a                                       ; $67a4: $e2
	ld [hl], a                                       ; $67a5: $77
	call $f87f                                       ; $67a6: $cd $7f $f8
	add l                                            ; $67a9: $85
	ldh a, [$c1]                                     ; $67aa: $f0 $c1
	sub b                                            ; $67ac: $90
	sub b                                            ; $67ad: $90
	sbc b                                            ; $67ae: $98
	ret c                                            ; $67af: $d8

	ld [hl], e                                       ; $67b0: $73
	ld c, h                                          ; $67b1: $4c
	sub b                                            ; $67b2: $90
	ld a, d                                          ; $67b3: $7a
	sbc a                                            ; $67b4: $9f
	sbc a                                            ; $67b5: $9f
	rrca                                             ; $67b6: $0f
	rrca                                             ; $67b7: $0f
	ld a, [hl]                                       ; $67b8: $7e
	ld a, b                                          ; $67b9: $78
	ldh a, [$e0]                                     ; $67ba: $f0 $e0
	inc a                                            ; $67bc: $3c
	ld [$6a31], sp                                   ; $67bd: $08 $31 $6a
	dec d                                            ; $67c0: $15
	ld a, [hl+]                                      ; $67c1: $2a
	ld d, l                                          ; $67c2: $55
	xor e                                            ; $67c3: $ab
	ld l, [hl]                                       ; $67c4: $6e
	pop de                                           ; $67c5: $d1
	rst $38                                          ; $67c6: $ff
	sub l                                            ; $67c7: $95
	ld d, h                                          ; $67c8: $54
	xor d                                            ; $67c9: $aa
	ld d, h                                          ; $67ca: $54
	xor b                                            ; $67cb: $a8
	ld a, b                                          ; $67cc: $78
	db $fc                                           ; $67cd: $fc
	rst SubAFromBC                                          ; $67ce: $e7
	pop bc                                           ; $67cf: $c1
	ld bc, $7603                                     ; $67d0: $01 $03 $76
	rst GetHLinHL                                          ; $67d3: $cf
	ld a, a                                          ; $67d4: $7f
	ld l, e                                          ; $67d5: $6b
	ld [hl], c                                       ; $67d6: $71
	ld [hl], d                                       ; $67d7: $72
	sbc h                                            ; $67d8: $9c
	inc bc                                           ; $67d9: $03
	add $e4                                          ; $67da: $c6 $e4
	ld l, h                                          ; $67dc: $6c
	ld [hl+], a                                      ; $67dd: $22
	sbc c                                            ; $67de: $99
	ld sp, hl                                        ; $67df: $f9
	dec sp                                           ; $67e0: $3b
	ccf                                              ; $67e1: $3f
	jr c, jr_03d_684c                                ; $67e2: $38 $68

	ret z                                            ; $67e4: $c8

	ld a, d                                          ; $67e5: $7a
	rst GetHLinHL                                          ; $67e6: $cf
	sbc e                                            ; $67e7: $9b
	dec bc                                           ; $67e8: $0b
	jp $9fcf                                         ; $67e9: $c3 $cf $9f


	ld [hl], a                                       ; $67ec: $77
	ld c, [hl]                                       ; $67ed: $4e
	ld a, a                                          ; $67ee: $7f
	db $ec                                           ; $67ef: $ec
	ld [hl], e                                       ; $67f0: $73
	rst SubAFromDE                                          ; $67f1: $df
	ld l, h                                          ; $67f2: $6c
	db $e4                                           ; $67f3: $e4
	ld a, b                                          ; $67f4: $78
	ldh [c], a                                       ; $67f5: $e2
	rst $38                                          ; $67f6: $ff
	ld a, e                                          ; $67f7: $7b
	adc $7f                                          ; $67f8: $ce $7f
	ld a, c                                          ; $67fa: $79
	add h                                            ; $67fb: $84
	ldh a, [$80]                                     ; $67fc: $f0 $80
	rst $38                                          ; $67fe: $ff
	add b                                            ; $67ff: $80
	rst $38                                          ; $6800: $ff
	rst $38                                          ; $6801: $ff
	db $ec                                           ; $6802: $ec
	add b                                            ; $6803: $80
	rrca                                             ; $6804: $0f
	ld a, a                                          ; $6805: $7f
	inc bc                                           ; $6806: $03
	pop bc                                           ; $6807: $c1
	rra                                              ; $6808: $1f
	rst $38                                          ; $6809: $ff
	ld sp, hl                                        ; $680a: $f9

jr_03d_680b:
	add d                                            ; $680b: $82
	inc c                                            ; $680c: $0c
	jr jr_03d_680b                                   ; $680d: $18 $fc

	ld a, $ec                                        ; $680f: $3e $ec
	jr nz, @+$08                                     ; $6811: $20 $06

	ld a, l                                          ; $6813: $7d
	di                                               ; $6814: $f3
	rst SubAFromBC                                          ; $6815: $e7
	db $fd                                           ; $6816: $fd
	ld a, e                                          ; $6817: $7b
	call $857f                                       ; $6818: $cd $7f $85
	ld a, [hl]                                       ; $681b: $7e
	sbc e                                            ; $681c: $9b
	ld a, c                                          ; $681d: $79
	add hl, de                                       ; $681e: $19
	sbc l                                            ; $681f: $9d
	ld bc, $7a61                                     ; $6820: $01 $61 $7a
	and l                                            ; $6823: $a5
	rst SubAFromDE                                          ; $6824: $df
	db $fc                                           ; $6825: $fc
	sub l                                            ; $6826: $95
	add [hl]                                         ; $6827: $86
	ld a, d                                          ; $6828: $7a
	ld bc, $c081                                     ; $6829: $01 $81 $c0
	ldh [$8c], a                                     ; $682c: $e0 $8c
	inc b                                            ; $682e: $04
	ld a, d                                          ; $682f: $7a
	add [hl]                                         ; $6830: $86
	ld a, e                                          ; $6831: $7b
	ld b, e                                          ; $6832: $43
	sub [hl]                                         ; $6833: $96
	ccf                                              ; $6834: $3f
	jp hl                                            ; $6835: $e9


	ld e, c                                          ; $6836: $59
	xor e                                            ; $6837: $ab

Call_03d_6838:
	ld e, e                                          ; $6838: $5b
	cp e                                             ; $6839: $bb
	rst FarCall                                          ; $683a: $f7
	rst AddAOntoHL                                          ; $683b: $ef
	ccf                                              ; $683c: $3f
	ld [hl], d                                       ; $683d: $72
	ld a, e                                          ; $683e: $7b
	ld a, [hl]                                       ; $683f: $7e
	ret nz                                           ; $6840: $c0

	ld a, l                                          ; $6841: $7d
	or d                                             ; $6842: $b2
	ld [hl], a                                       ; $6843: $77
	jr jr_03d_68c5                                   ; $6844: $18 $7f

	rst SubAFromDE                                          ; $6846: $df
	rst SubAFromDE                                          ; $6847: $df
	rst $38                                          ; $6848: $ff
	ld a, e                                          ; $6849: $7b
	ld hl, sp+$76                                    ; $684a: $f8 $76

jr_03d_684c:
	ld d, a                                          ; $684c: $57
	ld a, c                                          ; $684d: $79
	db $fd                                           ; $684e: $fd
	sbc $ff                                          ; $684f: $de $ff
	sbc [hl]                                         ; $6851: $9e
	cp e                                             ; $6852: $bb
	ld a, e                                          ; $6853: $7b
	cp c                                             ; $6854: $b9
	sbc b                                            ; $6855: $98
	xor $9b                                          ; $6856: $ee $9b
	rst $38                                          ; $6858: $ff
	ld sp, hl                                        ; $6859: $f9
	or c                                             ; $685a: $b1
	ld hl, sp+$60                                    ; $685b: $f8 $60
	ld l, l                                          ; $685d: $6d
	rst JumpTable                                          ; $685e: $c7
	ld a, l                                          ; $685f: $7d
	sub b                                            ; $6860: $90
	ld a, a                                          ; $6861: $7f
	ld [hl], e                                       ; $6862: $73
	sbc [hl]                                         ; $6863: $9e
	cp a                                             ; $6864: $bf
	ld a, e                                          ; $6865: $7b
	ret nz                                           ; $6866: $c0

	ld a, h                                          ; $6867: $7c
	adc c                                            ; $6868: $89
	ld a, a                                          ; $6869: $7f
	and c                                            ; $686a: $a1
	sbc [hl]                                         ; $686b: $9e
	ret nc                                           ; $686c: $d0

	ld [hl], a                                       ; $686d: $77
	ret c                                            ; $686e: $d8

	ld a, h                                          ; $686f: $7c
	ld a, [$c39e]                                    ; $6870: $fa $9e $c3
	ld [hl], e                                       ; $6873: $73
	ld l, e                                          ; $6874: $6b
	ld [hl], h                                       ; $6875: $74
	ld b, c                                          ; $6876: $41
	db $dd                                           ; $6877: $dd
	ld bc, $839e                                     ; $6878: $01 $9e $83
	ld a, e                                          ; $687b: $7b
	ldh a, [c]                                       ; $687c: $f2
	db $dd                                           ; $687d: $dd
	cp $9e                                           ; $687e: $fe $9e
	add e                                            ; $6880: $83
	ld l, [hl]                                       ; $6881: $6e
	ld hl, $009b                                     ; $6882: $21 $9b $00
	ld l, l                                          ; $6885: $6d
	ldh [$e2], a                                     ; $6886: $e0 $e2
	call c, $dfff                                    ; $6888: $dc $ff $df
	inc bc                                           ; $688b: $03
	sbc h                                            ; $688c: $9c
	jp $0f7b                                         ; $688d: $c3 $7b $0f


	ld a, e                                          ; $6890: $7b
	db $ec                                           ; $6891: $ec
	halt                                             ; $6892: $76
	and c                                            ; $6893: $a1
	sub e                                            ; $6894: $93
	pop af                                           ; $6895: $f1
	db $fd                                           ; $6896: $fd
	cp $ff                                           ; $6897: $fe $ff
	xor e                                            ; $6899: $ab
	ret c                                            ; $689a: $d8

	ld hl, sp-$0f                                    ; $689b: $f8 $f1
	ldh [c], a                                       ; $689d: $e2
	push hl                                          ; $689e: $e5
	db $e3                                           ; $689f: $e3
	ld h, a                                          ; $68a0: $67
	ld a, e                                          ; $68a1: $7b
	inc bc                                           ; $68a2: $03
	sbc [hl]                                         ; $68a3: $9e
	rra                                              ; $68a4: $1f
	ld a, e                                          ; $68a5: $7b
	xor a                                            ; $68a6: $af
	sub a                                            ; $68a7: $97
	rst $38                                          ; $68a8: $ff
	or $55                                           ; $68a9: $f6 $55
	ld a, [bc]                                       ; $68ab: $0a
	ld d, h                                          ; $68ac: $54
	jr z, jr_03d_68cb                                ; $68ad: $28 $1c

	ld a, [$3f6c]                                    ; $68af: $fa $6c $3f
	sub c                                            ; $68b2: $91
	rst AddAOntoHL                                          ; $68b3: $ef
	rrca                                             ; $68b4: $0f
	ld c, a                                          ; $68b5: $4f
	dec [hl]                                         ; $68b6: $35
	ld l, d                                          ; $68b7: $6a
	ld [hl], l                                       ; $68b8: $75
	ld l, d                                          ; $68b9: $6a
	dec [hl]                                         ; $68ba: $35
	dec sp                                           ; $68bb: $3b
	scf                                              ; $68bc: $37
	rra                                              ; $68bd: $1f
	ldh [$c0], a                                     ; $68be: $e0 $c0
	ret nz                                           ; $68c0: $c0

	sbc $e0                                          ; $68c1: $de $e0
	sub h                                            ; $68c3: $94
	pop af                                           ; $68c4: $f1

jr_03d_68c5:
	ei                                               ; $68c5: $fb
	ld d, a                                          ; $68c6: $57
	rst AddAOntoHL                                          ; $68c7: $ef
	ld a, h                                          ; $68c8: $7c
	ret c                                            ; $68c9: $d8

	di                                               ; $68ca: $f3

jr_03d_68cb:
	rst $38                                          ; $68cb: $ff
	ldh a, [$b0]                                     ; $68cc: $f0 $b0
	nop                                              ; $68ce: $00
	ld [hl], d                                       ; $68cf: $72
	pop de                                           ; $68d0: $d1
	sub l                                            ; $68d1: $95
	cp a                                             ; $68d2: $bf
	ccf                                              ; $68d3: $3f
	add b                                            ; $68d4: $80
	nop                                              ; $68d5: $00
	inc bc                                           ; $68d6: $03
	ccf                                              ; $68d7: $3f
	db $fc                                           ; $68d8: $fc
	add c                                            ; $68d9: $81
	ld b, $0c                                        ; $68da: $06 $0c
	ld a, e                                          ; $68dc: $7b
	add [hl]                                         ; $68dd: $86
	sub [hl]                                         ; $68de: $96

jr_03d_68df:
	ldh [$03], a                                     ; $68df: $e0 $03
	ld a, [hl]                                       ; $68e1: $7e
	db $fd                                           ; $68e2: $fd
	di                                               ; $68e3: $f3
	ld a, h                                          ; $68e4: $7c
	ld a, a                                          ; $68e5: $7f
	rst $38                                          ; $68e6: $ff
	di                                               ; $68e7: $f3
	ld [hl], a                                       ; $68e8: $77
	ld [hl], b                                       ; $68e9: $70
	sbc e                                            ; $68ea: $9b
	sub e                                            ; $68eb: $93
	add b                                            ; $68ec: $80
	nop                                              ; $68ed: $00
	inc c                                            ; $68ee: $0c
	halt                                             ; $68ef: $76
	ret nc                                           ; $68f0: $d0

	adc h                                            ; $68f1: $8c
	ld a, a                                          ; $68f2: $7f
	ld hl, sp-$38                                    ; $68f3: $f8 $c8
	ret nz                                           ; $68f5: $c0

	ldh [rLCDC], a                                   ; $68f6: $e0 $40
	rlca                                             ; $68f8: $07
	rlca                                             ; $68f9: $07
	ret z                                            ; $68fa: $c8

	rlca                                             ; $68fb: $07
	scf                                              ; $68fc: $37
	ld a, a                                          ; $68fd: $7f
	inc bc                                           ; $68fe: $03
	and e                                            ; $68ff: $a3
	ei                                               ; $6900: $fb
	ld sp, hl                                        ; $6901: $f9
	ldh [rP1], a                                     ; $6902: $e0 $00
	nop                                              ; $6904: $00
	ld [hl], l                                       ; $6905: $75
	and $9e                                          ; $6906: $e6 $9e
	add b                                            ; $6908: $80
	ld a, d                                          ; $6909: $7a
	ld b, l                                          ; $690a: $45
	sbc [hl]                                         ; $690b: $9e
	ld hl, sp+$6e                                    ; $690c: $f8 $6e
	db $10                                           ; $690e: $10
	sbc c                                            ; $690f: $99
	ld bc, $06ff                                     ; $6910: $01 $ff $06
	jr jr_03d_6945                                   ; $6913: $18 $30

	ld b, d                                          ; $6915: $42
	halt                                             ; $6916: $76
	and [hl]                                         ; $6917: $a6
	sub a                                            ; $6918: $97
	ld sp, hl                                        ; $6919: $f9
	rst SubAFromBC                                          ; $691a: $e7
	rst AddAOntoHL                                          ; $691b: $ef
	cp a                                             ; $691c: $bf
	jr nc, jr_03d_68df                               ; $691d: $30 $c0

	add b                                            ; $691f: $80
	db $fc                                           ; $6920: $fc
	ld a, e                                          ; $6921: $7b
	db $ec                                           ; $6922: $ec
	sbc d                                            ; $6923: $9a
	ld a, a                                          ; $6924: $7f
	rst AddAOntoHL                                          ; $6925: $ef
	ccf                                              ; $6926: $3f
	ld a, a                                          ; $6927: $7f
	inc bc                                           ; $6928: $03
	ld [hl], a                                       ; $6929: $77
	ld sp, $9efc                                     ; $692a: $31 $fc $9e
	rlca                                             ; $692d: $07
	jp c, $99ff                                      ; $692e: $da $ff $99

	ld sp, hl                                        ; $6931: $f9
	ldh a, [rP1]                                     ; $6932: $f0 $00
	ldh a, [$7c]                                     ; $6934: $f0 $7c
	ld a, $76                                        ; $6936: $3e $76
	ld a, [bc]                                       ; $6938: $0a
	ld a, l                                          ; $6939: $7d
	ld c, b                                          ; $693a: $48
	add [hl]                                         ; $693b: $86
	adc a                                            ; $693c: $8f
	jp $20e0                                         ; $693d: $c3 $e0 $20


	ldh [rTIMA], a                                   ; $6940: $e0 $05
	ld a, [bc]                                       ; $6942: $0a
	db $10                                           ; $6943: $10
	db $10                                           ; $6944: $10

jr_03d_6945:
	jr @+$01                                         ; $6945: $18 $ff

	db $fd                                           ; $6947: $fd
	rst $38                                          ; $6948: $ff
	cp $80                                           ; $6949: $fe $80
	ldh a, [$f0]                                     ; $694b: $f0 $f0
	add sp, -$3d                                     ; $694d: $e8 $c3
	rlca                                             ; $694f: $07
	xor d                                            ; $6950: $aa
	ld d, l                                          ; $6951: $55
	rst $38                                          ; $6952: $ff
	rra                                              ; $6953: $1f
	pop bc                                           ; $6954: $c1
	ld [hl], a                                       ; $6955: $77
	ld b, l                                          ; $6956: $45
	ld a, [hl]                                       ; $6957: $7e
	xor b                                            ; $6958: $a8
	ld a, a                                          ; $6959: $7f
	sbc e                                            ; $695a: $9b
	sub d                                            ; $695b: $92
	db $10                                           ; $695c: $10
	ld c, $07                                        ; $695d: $0e $07
	sbc a                                            ; $695f: $9f
	rst SubAFromDE                                          ; $6960: $df
	rst AddAOntoHL                                          ; $6961: $ef
	adc d                                            ; $6962: $8a
	ld d, l                                          ; $6963: $55
	db $eb                                           ; $6964: $eb
	ld [hl], a                                       ; $6965: $77
	db $eb                                           ; $6966: $eb
	push af                                          ; $6967: $f5
	cp a                                             ; $6968: $bf
	ld [hl], h                                       ; $6969: $74
	ld hl, sp+$7c                                    ; $696a: $f8 $7c
	ld l, b                                          ; $696c: $68
	sub h                                            ; $696d: $94
	and b                                            ; $696e: $a0
	cp b                                             ; $696f: $b8
	sub d                                            ; $6970: $92
	and b                                            ; $6971: $a0
	ld h, b                                          ; $6972: $60
	cp [hl]                                          ; $6973: $be
	rst AddAOntoHL                                          ; $6974: $ef
	rst $38                                          ; $6975: $ff
	ld l, d                                          ; $6976: $6a
	push af                                          ; $6977: $f5
	cp $de                                           ; $6978: $fe $de

jr_03d_697a:
	ccf                                              ; $697a: $3f
	sbc e                                            ; $697b: $9b
	xor a                                            ; $697c: $af
	ld a, [hl+]                                      ; $697d: $2a
	ld l, b                                          ; $697e: $68
	ldh [rPCM34], a                                  ; $697f: $e0 $77
	and b                                            ; $6981: $a0
	ld a, c                                          ; $6982: $79
	add a                                            ; $6983: $87
	sbc l                                            ; $6984: $9d
	ld d, a                                          ; $6985: $57
	xor d                                            ; $6986: $aa
	call c, $9eff                                    ; $6987: $dc $ff $9e
	ld d, a                                          ; $698a: $57
	ld a, b                                          ; $698b: $78
	ld b, l                                          ; $698c: $45
	ld a, [hl]                                       ; $698d: $7e
	push hl                                          ; $698e: $e5
	ld a, e                                          ; $698f: $7b
	cp $9d                                           ; $6990: $fe $9d
	db $e3                                           ; $6992: $e3
	cp l                                             ; $6993: $bd
	db $db                                           ; $6994: $db
	rst $38                                          ; $6995: $ff
	sbc l                                            ; $6996: $9d
	sbc $ba                                          ; $6997: $de $ba
	ld [hl], d                                       ; $6999: $72
	ld l, c                                          ; $699a: $69
	ld l, h                                          ; $699b: $6c
	jr nc, jr_03d_697a                               ; $699c: $30 $dc

	rst $38                                          ; $699e: $ff
	db $fc                                           ; $699f: $fc
	sbc h                                            ; $69a0: $9c
	inc d                                            ; $69a1: $14
	ld a, $6d                                        ; $69a2: $3e $6d
	db $db                                           ; $69a4: $db
	rst $38                                          ; $69a5: $ff
	sub l                                            ; $69a6: $95
	di                                               ; $69a7: $f3
	ret                                              ; $69a8: $c9


	ld l, e                                          ; $69a9: $6b
	ld [hl], a                                       ; $69aa: $77
	ld a, [hl+]                                      ; $69ab: $2a
	ld de, $111a                                     ; $69ac: $11 $1a $11
	jr jr_03d_69c6                                   ; $69af: $18 $15

	ld a, b                                          ; $69b1: $78
	ld e, d                                          ; $69b2: $5a
	call c, $8cff                                    ; $69b3: $dc $ff $8c
	cp [hl]                                          ; $69b6: $be
	ld a, l                                          ; $69b7: $7d
	ld a, [$ea75]                                    ; $69b8: $fa $75 $ea
	push af                                          ; $69bb: $f5
	ld [$e754], a                                    ; $69bc: $ea $54 $e7
	rst GetHLinHL                                          ; $69bf: $cf
	sbc a                                            ; $69c0: $9f
	cp a                                             ; $69c1: $bf
	ccf                                              ; $69c2: $3f
	ccf                                              ; $69c3: $3f
	cp a                                             ; $69c4: $bf
	rst $38                                          ; $69c5: $ff

jr_03d_69c6:
	adc a                                            ; $69c6: $8f
	ld b, $81                                        ; $69c7: $06 $81
	ld a, b                                          ; $69c9: $78
	ld h, c                                          ; $69ca: $61
	sbc h                                            ; $69cb: $9c
	ld a, [hl+]                                      ; $69cc: $2a
	ld d, h                                          ; $69cd: $54
	db $fc                                           ; $69ce: $fc
	ld l, e                                          ; $69cf: $6b
	rst SubAFromDE                                          ; $69d0: $df
	sub h                                            ; $69d1: $94
	ld [hl], b                                       ; $69d2: $70
	sub b                                            ; $69d3: $90
	jr jr_03d_69ee                                   ; $69d4: $18 $18

	sub b                                            ; $69d6: $90
	jr nz, jr_03d_697a                               ; $69d7: $20 $a1

	ld h, d                                          ; $69d9: $62
	ccf                                              ; $69da: $3f
	ld a, a                                          ; $69db: $7f
	cp a                                             ; $69dc: $bf
	ld a, e                                          ; $69dd: $7b
	cp $79                                           ; $69de: $fe $79
	dec l                                            ; $69e0: $2d
	sbc d                                            ; $69e1: $9a
	db $10                                           ; $69e2: $10
	jr nz, jr_03d_6a05                               ; $69e3: $20 $20

	ld b, b                                          ; $69e5: $40
	add b                                            ; $69e6: $80
	ld h, e                                          ; $69e7: $63
	ld e, $9e                                        ; $69e8: $1e $9e
	ld hl, sp-$05                                    ; $69ea: $f8 $fb
	ld [hl], e                                       ; $69ec: $73
	dec e                                            ; $69ed: $1d

jr_03d_69ee:
	sbc $ff                                          ; $69ee: $de $ff
	ld a, [hl]                                       ; $69f0: $7e
	jp nc, $4276                                     ; $69f1: $d2 $76 $42

	ld h, a                                          ; $69f4: $67
	ldh a, [c]                                       ; $69f5: $f2
	ld a, [hl]                                       ; $69f6: $7e
	adc c                                            ; $69f7: $89
	ld a, b                                          ; $69f8: $78
	adc l                                            ; $69f9: $8d
	sbc l                                            ; $69fa: $9d
	ld h, c                                          ; $69fb: $61
	ccf                                              ; $69fc: $3f
	ld a, e                                          ; $69fd: $7b
	pop af                                           ; $69fe: $f1
	sbc l                                            ; $69ff: $9d
	pop af                                           ; $6a00: $f1
	ld sp, hl                                        ; $6a01: $f9
	ld [hl], a                                       ; $6a02: $77
	ldh a, [c]                                       ; $6a03: $f2
	sub h                                            ; $6a04: $94

jr_03d_6a05:
	cp a                                             ; $6a05: $bf
	add hl, de                                       ; $6a06: $19
	ldh a, [$c0]                                     ; $6a07: $f0 $c0
	nop                                              ; $6a09: $00
	dec d                                            ; $6a0a: $15
	cp a                                             ; $6a0b: $bf
	rst $38                                          ; $6a0c: $ff
	ld a, [$cefd]                                    ; $6a0d: $fa $fd $ce
	ld a, d                                          ; $6a10: $7a
	call nc, $d47f                                   ; $6a11: $d4 $7f $d4
	ld a, h                                          ; $6a14: $7c
	add $93                                          ; $6a15: $c6 $93
	ld b, $03                                        ; $6a17: $06 $03
	rlca                                             ; $6a19: $07
	ld a, a                                          ; $6a1a: $7f
	rst $38                                          ; $6a1b: $ff
	rst FarCall                                          ; $6a1c: $f7
	xor d                                            ; $6a1d: $aa
	ld d, [hl]                                       ; $6a1e: $56
	xor d                                            ; $6a1f: $aa
	ld e, [hl]                                       ; $6a20: $5e
	ld hl, sp-$80                                    ; $6a21: $f8 $80
	ld a, c                                          ; $6a23: $79
	ld sp, hl                                        ; $6a24: $f9
	ld [hl], e                                       ; $6a25: $73
	ld c, b                                          ; $6a26: $48
	sbc l                                            ; $6a27: $9d
	db $10                                           ; $6a28: $10
	ld a, [hl]                                       ; $6a29: $7e
	sbc $02                                          ; $6a2a: $de $02
	ld a, e                                          ; $6a2c: $7b
	daa                                              ; $6a2d: $27
	sbc [hl]                                         ; $6a2e: $9e
	rst AddAOntoHL                                          ; $6a2f: $ef
	ld [hl], a                                       ; $6a30: $77
	add hl, sp                                       ; $6a31: $39
	sbc e                                            ; $6a32: $9b
	inc bc                                           ; $6a33: $03
	ldh a, [$f5]                                     ; $6a34: $f0 $f5
	jp nz, $02de                                     ; $6a36: $c2 $de $02

	sbc e                                            ; $6a39: $9b
	inc b                                            ; $6a3a: $04
	rst $38                                          ; $6a3b: $ff
	rrca                                             ; $6a3c: $0f
	rrca                                             ; $6a3d: $0f
	ld l, [hl]                                       ; $6a3e: $6e
	and a                                            ; $6a3f: $a7
	sbc [hl]                                         ; $6a40: $9e
	dec de                                           ; $6a41: $1b
	db $dd                                           ; $6a42: $dd
	ld bc, $0d9b                                     ; $6a43: $01 $9b $0d
	rst $38                                          ; $6a46: $ff
	rst $38                                          ; $6a47: $ff
	ld a, [$99fd]                                    ; $6a48: $fa $fd $99
	rrca                                             ; $6a4b: $0f
	rst $38                                          ; $6a4c: $ff
	pop af                                           ; $6a4d: $f1
	ccf                                              ; $6a4e: $3f
	rra                                              ; $6a4f: $1f
	inc e                                            ; $6a50: $1c
	ld a, c                                          ; $6a51: $79
	jr @-$69                                         ; $6a52: $18 $95

	rst AddAOntoHL                                          ; $6a54: $ef
	pop bc                                           ; $6a55: $c1
	ccf                                              ; $6a56: $3f
	jr jr_03d_6a69                                   ; $6a57: $18 $10

	ld a, $78                                        ; $6a59: $3e $78
	cp $83                                           ; $6a5b: $fe $83
	nop                                              ; $6a5d: $00
	dec a                                            ; $6a5e: $3d
	nop                                              ; $6a5f: $00
	rst SubAFromDE                                          ; $6a60: $df
	inc sp                                           ; $6a61: $33
	sbc [hl]                                         ; $6a62: $9e
	inc [hl]                                         ; $6a63: $34
	sbc $33                                          ; $6a64: $de $33
	rst SubAFromDE                                          ; $6a66: $df
	ld b, h                                          ; $6a67: $44
	sbc l                                            ; $6a68: $9d

jr_03d_6a69:
	ld [hl], $46                                     ; $6a69: $36 $46
	ld a, e                                          ; $6a6b: $7b
	or $92                                           ; $6a6c: $f6 $92
	ld h, e                                          ; $6a6e: $63
	inc sp                                           ; $6a6f: $33
	ld b, h                                          ; $6a70: $44
	ld h, e                                          ; $6a71: $63
	inc [hl]                                         ; $6a72: $34
	ld b, h                                          ; $6a73: $44
	ld b, h                                          ; $6a74: $44
	ld h, [hl]                                       ; $6a75: $66
	inc sp                                           ; $6a76: $33
	inc [hl]                                         ; $6a77: $34
	ld b, h                                          ; $6a78: $44
	ld h, [hl]                                       ; $6a79: $66
	ld b, h                                          ; $6a7a: $44
	ld [hl], a                                       ; $6a7b: $77
	ld [$eb7f], a                                    ; $6a7c: $ea $7f $eb
	sbc d                                            ; $6a7f: $9a
	ld [hl], $44                                     ; $6a80: $36 $44
	ld b, h                                          ; $6a82: $44
	ld b, e                                          ; $6a83: $43
	inc sp                                           ; $6a84: $33
	ld [hl], a                                       ; $6a85: $77
	ld a, [$33df]                                    ; $6a86: $fa $df $33
	sbc [hl]                                         ; $6a89: $9e
	ld b, l                                          ; $6a8a: $45
	ld a, e                                          ; $6a8b: $7b
	db $fc                                           ; $6a8c: $fc
	sub [hl]                                         ; $6a8d: $96
	inc sp                                           ; $6a8e: $33
	halt                                             ; $6a8f: $76
	ld h, h                                          ; $6a90: $64
	ld b, h                                          ; $6a91: $44
	ld b, e                                          ; $6a92: $43
	inc [hl]                                         ; $6a93: $34
	ld d, l                                          ; $6a94: $55
	ld b, h                                          ; $6a95: $44
	inc sp                                           ; $6a96: $33
	sbc $77                                          ; $6a97: $de $77
	sbc [hl]                                         ; $6a99: $9e
	ld [hl], h                                       ; $6a9a: $74
	sub b                                            ; $6a9b: $90
	add d                                            ; $6a9c: $82
	sbc l                                            ; $6a9d: $9d
	ld a, a                                          ; $6a9e: $7f
	cp $6f                                           ; $6a9f: $fe $6f
	cp $d9                                           ; $6aa1: $fe $d9
	rst $38                                          ; $6aa3: $ff
	sbc l                                            ; $6aa4: $9d
	ld [hl], l                                       ; $6aa5: $75
	xor d                                            ; $6aa6: $aa
	ld l, a                                          ; $6aa7: $6f
	cp $d9                                           ; $6aa8: $fe $d9
	rst $38                                          ; $6aaa: $ff
	sub a                                            ; $6aab: $97
	ld d, h                                          ; $6aac: $54
	xor h                                            ; $6aad: $ac
	ld d, h                                          ; $6aae: $54
	xor h                                            ; $6aaf: $ac
	ld d, [hl]                                       ; $6ab0: $56
	xor [hl]                                         ; $6ab1: $ae
	ld d, [hl]                                       ; $6ab2: $56
	xor h                                            ; $6ab3: $ac
	sbc $fd                                          ; $6ab4: $de $fd
	ld a, a                                          ; $6ab6: $7f
	call c, $fedf                                    ; $6ab7: $dc $df $fe
	sbc d                                            ; $6aba: $9a
	rst $38                                          ; $6abb: $ff
	ld [bc], a                                       ; $6abc: $02
	ld bc, $0102                                     ; $6abd: $01 $02 $01
	db $fd                                           ; $6ac0: $fd
	sbc d                                            ; $6ac1: $9a
	ld d, a                                          ; $6ac2: $57
	xor e                                            ; $6ac3: $ab
	ld d, a                                          ; $6ac4: $57
	xor e                                            ; $6ac5: $ab
	ld d, l                                          ; $6ac6: $55
	ld a, e                                          ; $6ac7: $7b
	cp $d9                                           ; $6ac8: $fe $d9
	add b                                            ; $6aca: $80
	sbc l                                            ; $6acb: $9d
	push de                                          ; $6acc: $d5
	adc d                                            ; $6acd: $8a
	ld a, e                                          ; $6ace: $7b
	cp $9a                                           ; $6acf: $fe $9a
	xor d                                            ; $6ad1: $aa
	push de                                          ; $6ad2: $d5
	xor d                                            ; $6ad3: $aa
	xor e                                            ; $6ad4: $ab
	rst SubAFromHL                                          ; $6ad5: $d7
	ld l, a                                          ; $6ad6: $6f
	cp $d9                                           ; $6ad7: $fe $d9
	rst $38                                          ; $6ad9: $ff
	call c, $9c59                                    ; $6ada: $dc $59 $9c
	ld d, c                                          ; $6add: $51
	ld e, c                                          ; $6ade: $59
	ld c, l                                          ; $6adf: $4d
	call c, $9ae3                                    ; $6ae0: $dc $e3 $9a
	db $eb                                           ; $6ae3: $eb
	db $e3                                           ; $6ae4: $e3
	di                                               ; $6ae5: $f3
	db $fd                                           ; $6ae6: $fd
	db $eb                                           ; $6ae7: $eb
	ld l, a                                          ; $6ae8: $6f
	cp $d9                                           ; $6ae9: $fe $d9
	rst $38                                          ; $6aeb: $ff
	sbc l                                            ; $6aec: $9d
	ld d, l                                          ; $6aed: $55
	cp e                                             ; $6aee: $bb
	ld l, a                                          ; $6aef: $6f
	cp $03                                           ; $6af0: $fe $03
	ldh a, [$2b]                                     ; $6af2: $f0 $2b
	ldh a, [$9d]                                     ; $6af4: $f0 $9d
	ld e, l                                          ; $6af6: $5d
	xor b                                            ; $6af7: $a8
	ld [hl], a                                       ; $6af8: $77
	cp $9d                                           ; $6af9: $fe $9d
	ld c, h                                          ; $6afb: $4c
	adc b                                            ; $6afc: $88
	reti                                             ; $6afd: $d9


	rst $38                                          ; $6afe: $ff
	sub a                                            ; $6aff: $97
	call z, $cc88                                    ; $6b00: $cc $88 $cc
	adc b                                            ; $6b03: $88
	call nz, $8088                                   ; $6b04: $c4 $88 $80
	ld [$ffd9], sp                                   ; $6b07: $08 $d9 $ff
	sub a                                            ; $6b0a: $97
	ld b, h                                          ; $6b0b: $44
	adc h                                            ; $6b0c: $8c
	ld b, h                                          ; $6b0d: $44
	inc c                                            ; $6b0e: $0c
	ld b, h                                          ; $6b0f: $44
	nop                                              ; $6b10: $00
	ld b, h                                          ; $6b11: $44
	nop                                              ; $6b12: $00
	ld h, e                                          ; $6b13: $63
	ldh a, [$9a]                                     ; $6b14: $f0 $9a
	adc $44                                          ; $6b16: $ce $44
	jp z, $0844                                      ; $6b18: $ca $44 $08

	ld e, a                                          ; $6b1b: $5f
	ldh a, [$9d]                                     ; $6b1c: $f0 $9d
	push bc                                          ; $6b1e: $c5
	ld [bc], a                                       ; $6b1f: $02
	ld [hl], a                                       ; $6b20: $77
	ldh [c], a                                       ; $6b21: $e2
	ld e, a                                          ; $6b22: $5f
	ldh a, [hDisp1_WY]                                     ; $6b23: $f0 $95
	ld d, b                                          ; $6b25: $50
	ld l, b                                          ; $6b26: $68
	ld b, b                                          ; $6b27: $40
	ld c, b                                          ; $6b28: $48
	ld b, b                                          ; $6b29: $40
	ld [$0840], sp                                   ; $6b2a: $08 $40 $08
	ld a, [$6ffd]                                    ; $6b2d: $fa $fd $6f
	cp $9d                                           ; $6b30: $fe $9d
	xor d                                            ; $6b32: $aa
	ld d, l                                          ; $6b33: $55
	ld l, a                                          ; $6b34: $6f
	cp $f9                                           ; $6b35: $fe $f9
	sbc e                                            ; $6b37: $9b
	xor b                                            ; $6b38: $a8
	ld d, h                                          ; $6b39: $54
	xor d                                            ; $6b3a: $aa
	ld d, h                                          ; $6b3b: $54
	ld d, a                                          ; $6b3c: $57
	ldh a, [$9d]                                     ; $6b3d: $f0 $9d
	ld a, e                                          ; $6b3f: $7b
	xor $7a                                          ; $6b40: $ee $7a
	jp nz, sList1ForCompactScriptLocs                                     ; $6b42: $c2 $9d $bb

	ld a, a                                          ; $6b45: $7f
	ret c                                            ; $6b46: $d8

	rst $38                                          ; $6b47: $ff
	ld l, [hl]                                       ; $6b48: $6e
	jp nz, $f59e                                     ; $6b49: $c2 $9e $f5

	ld d, d                                          ; $6b4c: $52
	ret nz                                           ; $6b4d: $c0

	ld [hl], a                                       ; $6b4e: $77
	cp $de                                           ; $6b4f: $fe $de
	rst $38                                          ; $6b51: $ff
	ld a, d                                          ; $6b52: $7a
	ret nz                                           ; $6b53: $c0

	ld a, a                                          ; $6b54: $7f
	cp $f9                                           ; $6b55: $fe $f9
	halt                                             ; $6b57: $76
	call nz, $c052                                   ; $6b58: $c4 $52 $c0
	ld a, d                                          ; $6b5b: $7a

jr_03d_6b5c:
	call nz, $c06e                                   ; $6b5c: $c4 $6e $c0
	sbc d                                            ; $6b5f: $9a
	cp e                                             ; $6b60: $bb
	rst SubAFromDE                                          ; $6b61: $df
	cp e                                             ; $6b62: $bb
	rst $38                                          ; $6b63: $ff
	cp a                                             ; $6b64: $bf
	ret c                                            ; $6b65: $d8

	rst $38                                          ; $6b66: $ff
	add a                                            ; $6b67: $87
	ld c, l                                          ; $6b68: $4d
	ld b, l                                          ; $6b69: $45
	ld c, c                                          ; $6b6a: $49

jr_03d_6b6b:
	ld d, l                                          ; $6b6b: $55
	ld c, c                                          ; $6b6c: $49
	ld [hl], l                                       ; $6b6d: $75
	ld a, c                                          ; $6b6e: $79
	ld e, a                                          ; $6b6f: $5f
	di                                               ; $6b70: $f3
	ei                                               ; $6b71: $fb
	rst FarCall                                          ; $6b72: $f7
	db $eb                                           ; $6b73: $eb
	rst FarCall                                          ; $6b74: $f7
	ei                                               ; $6b75: $fb
	rst $38                                          ; $6b76: $ff
	rst $38                                          ; $6b77: $ff
	db $fd                                           ; $6b78: $fd
	db $eb                                           ; $6b79: $eb
	db $dd                                           ; $6b7a: $dd
	xor e                                            ; $6b7b: $ab
	db $dd                                           ; $6b7c: $dd
	ld [$abd5], a                                    ; $6b7d: $ea $d5 $ab
	jp c, $96ff                                      ; $6b80: $da $ff $96

	cp $55                                           ; $6b83: $fe $55
	cp e                                             ; $6b85: $bb
	ld d, a                                          ; $6b86: $57
	cp h                                             ; $6b87: $bc
	ld d, d                                          ; $6b88: $52
	xor h                                            ; $6b89: $ac
	rst SubAFromDE                                          ; $6b8a: $df
	jr jr_03d_6b6b                                   ; $6b8b: $18 $de

	rst $38                                          ; $6b8d: $ff
	sbc l                                            ; $6b8e: $9d
	ld sp, hl                                        ; $6b8f: $f9
	db $fd                                           ; $6b90: $fd
	ld l, d                                          ; $6b91: $6a
	ldh [$7b], a                                     ; $6b92: $e0 $7b
	cp b                                             ; $6b94: $b8
	sbc [hl]                                         ; $6b95: $9e
	ld a, [$ffdd]                                    ; $6b96: $fa $dd $ff
	ld [hl], a                                       ; $6b99: $77
	ld l, d                                          ; $6b9a: $6a
	ld a, e                                          ; $6b9b: $7b
	ldh a, [$9a]                                     ; $6b9c: $f0 $9a
	ld a, [hl+]                                      ; $6b9e: $2a
	ld a, l                                          ; $6b9f: $7d
	ld c, a                                          ; $6ba0: $4f
	adc [hl]                                         ; $6ba1: $8e
	xor a                                            ; $6ba2: $af
	call c, $9aff                                    ; $6ba3: $dc $ff $9a
	db $fc                                           ; $6ba6: $fc
	call Call_03d_55c7                               ; $6ba7: $cd $c7 $55
	cp d                                             ; $6baa: $ba
	ld a, e                                          ; $6bab: $7b
	ld b, e                                          ; $6bac: $43
	sbc l                                            ; $6bad: $9d
	rst $38                                          ; $6bae: $ff
	rra                                              ; $6baf: $1f
	db $db                                           ; $6bb0: $db
	rst $38                                          ; $6bb1: $ff
	sub l                                            ; $6bb2: $95
	nop                                              ; $6bb3: $00
	pop hl                                           ; $6bb4: $e1
	rst $38                                          ; $6bb5: $ff
	ld [$4830], sp                                   ; $6bb6: $08 $30 $48
	jr nc, jr_03d_6c33                               ; $6bb9: $30 $78

	db $fd                                           ; $6bbb: $fd
	db $fd                                           ; $6bbc: $fd
	ld [hl], a                                       ; $6bbd: $77
	or b                                             ; $6bbe: $b0
	sbc [hl]                                         ; $6bbf: $9e
	rst SubAFromDE                                          ; $6bc0: $df
	ld a, d                                          ; $6bc1: $7a
	jr nz, jr_03d_6b5c                               ; $6bc2: $20 $98

	ld a, a                                          ; $6bc4: $7f
	add b                                            ; $6bc5: $80
	add hl, de                                       ; $6bc6: $19
	and d                                            ; $6bc7: $a2
	ld e, l                                          ; $6bc8: $5d
	and d                                            ; $6bc9: $a2
	ld e, l                                          ; $6bca: $5d
	ld a, e                                          ; $6bcb: $7b
	pop af                                           ; $6bcc: $f1
	add d                                            ; $6bcd: $82
	xor $dd                                          ; $6bce: $ee $dd
	xor d                                            ; $6bd0: $aa
	db $dd                                           ; $6bd1: $dd
	xor d                                            ; $6bd2: $aa
	ld d, h                                          ; $6bd3: $54
	rst $38                                          ; $6bd4: $ff
	ld h, [hl]                                       ; $6bd5: $66
	ld de, $8962                                     ; $6bd6: $11 $62 $89
	ld [hl], d                                       ; $6bd9: $72
	pop af                                           ; $6bda: $f1
	dec bc                                           ; $6bdb: $0b
	rst SubAFromDE                                          ; $6bdc: $df
	db $dd                                           ; $6bdd: $dd
	xor $dd                                          ; $6bde: $ee $dd
	halt                                             ; $6be0: $76
	db $fd                                           ; $6be1: $fd
	rst $38                                          ; $6be2: $ff
	sbc l                                            ; $6be3: $9d
	adc a                                            ; $6be4: $8f
	ld b, h                                          ; $6be5: $44
	ld h, b                                          ; $6be6: $60
	inc d                                            ; $6be7: $14
	or b                                             ; $6be8: $b0
	ld hl, sp-$04                                    ; $6be9: $f8 $fc
	call c, $9eff                                    ; $6beb: $dc $ff $9e
	sbc a                                            ; $6bee: $9f
	ld a, e                                          ; $6bef: $7b
	xor a                                            ; $6bf0: $af
	ld a, [hl]                                       ; $6bf1: $7e
	or b                                             ; $6bf2: $b0
	ld l, [hl]                                       ; $6bf3: $6e
	jp nz, $c06a                                     ; $6bf4: $c2 $6a $c0

	ld a, a                                          ; $6bf7: $7f
	ld sp, hl                                        ; $6bf8: $f9
	add b                                            ; $6bf9: $80
	ld b, l                                          ; $6bfa: $45
	ld a, [bc]                                       ; $6bfb: $0a
	ld b, l                                          ; $6bfc: $45
	ld a, [bc]                                       ; $6bfd: $0a
	ld b, a                                          ; $6bfe: $47
	rrca                                             ; $6bff: $0f
	db $fc                                           ; $6c00: $fc
	dec b                                            ; $6c01: $05
	ld a, [$fbfd]                                    ; $6c02: $fa $fd $fb
	db $fd                                           ; $6c05: $fd
	ei                                               ; $6c06: $fb
	rst $38                                          ; $6c07: $ff
	rlca                                             ; $6c08: $07
	cp $aa                                           ; $6c09: $fe $aa
	push de                                          ; $6c0b: $d5
	xor $57                                          ; $6c0c: $ee $57
	rst AddAOntoHL                                          ; $6c0e: $ef
	rst $38                                          ; $6c0f: $ff
	ld [hl], b                                       ; $6c10: $70
	ld [hl], a                                       ; $6c11: $77
	nop                                              ; $6c12: $00
	add b                                            ; $6c13: $80
	ld b, b                                          ; $6c14: $40
	ld b, b                                          ; $6c15: $40
	ldh [$f0], a                                     ; $6c16: $e0 $f0
	ld [hl], b                                       ; $6c18: $70
	sbc c                                            ; $6c19: $99
	ld a, b                                          ; $6c1a: $78
	xor d                                            ; $6c1b: $aa
	ld d, l                                          ; $6c1c: $55
	ld [$fef5], a                                    ; $6c1d: $ea $f5 $fe
	ld a, e                                          ; $6c20: $7b
	ret c                                            ; $6c21: $d8

	ld sp, hl                                        ; $6c22: $f9
	rst SubAFromDE                                          ; $6c23: $df
	ei                                               ; $6c24: $fb
	sbc $ff                                          ; $6c25: $de $ff
	sbc l                                            ; $6c27: $9d
	ldh [rP1], a                                     ; $6c28: $e0 $00
	ld l, e                                          ; $6c2a: $6b
	ret nz                                           ; $6c2b: $c0

	ld a, a                                          ; $6c2c: $7f
	rst FarCall                                          ; $6c2d: $f7
	sbc c                                            ; $6c2e: $99
	push af                                          ; $6c2f: $f5
	ld [$fefd], a                                    ; $6c30: $ea $fd $fe

jr_03d_6c33:
	add d                                            ; $6c33: $82
	ld b, c                                          ; $6c34: $41
	ld l, a                                          ; $6c35: $6f
	ldh a, [hDisp1_OBP0]                                     ; $6c36: $f0 $93
	cp $c1                                           ; $6c38: $fe $c1
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00

Call_03d_6c3c:
	ld e, h                                          ; $6c3c: $5c
	cp [hl]                                          ; $6c3d: $be
	ld [hl], e                                       ; $6c3e: $73
	or l                                             ; $6c3f: $b5
	rra                                              ; $6c40: $1f
	ld [$3e71], sp                                   ; $6c41: $08 $71 $3e
	sbc $ff                                          ; $6c44: $de $ff
	sub c                                            ; $6c46: $91
	db $e3                                           ; $6c47: $e3
	ldh [$f1], a                                     ; $6c48: $e0 $f1
	sbc a                                            ; $6c4a: $9f
	sbc a                                            ; $6c4b: $9f
	nop                                              ; $6c4c: $00
	inc bc                                           ; $6c4d: $03
	ld a, b                                          ; $6c4e: $78
	add b                                            ; $6c4f: $80
	ld b, b                                          ; $6c50: $40
	ldh a, [$78]                                     ; $6c51: $f0 $78
	cp $55                                           ; $6c53: $fe $55
	ld a, e                                          ; $6c55: $7b
	ld l, $99                                        ; $6c56: $2e $99
	ldh a, [$f8]                                     ; $6c58: $f0 $f8
	rst GetHLinHL                                          ; $6c5a: $cf
	cp a                                             ; $6c5b: $bf
	sbc a                                            ; $6c5c: $9f
	ld [$7572], a                                    ; $6c5d: $ea $72 $75
	ld a, a                                          ; $6c60: $7f
	ld b, e                                          ; $6c61: $43
	ld a, a                                          ; $6c62: $7f
	ld hl, sp-$63                                    ; $6c63: $f8 $9d
	rst $38                                          ; $6c65: $ff
	inc bc                                           ; $6c66: $03
	ld a, e                                          ; $6c67: $7b
	jp z, $ae7e                                      ; $6c68: $ca $7e $ae

	sbc h                                            ; $6c6b: $9c
	ld d, h                                          ; $6c6c: $54
	ld bc, $7b02                                     ; $6c6d: $01 $02 $7b
	ldh a, [$7a]                                     ; $6c70: $f0 $7a
	and h                                            ; $6c72: $a4
	sbc l                                            ; $6c73: $9d
	rst $38                                          ; $6c74: $ff
	rst SubAFromBC                                          ; $6c75: $e7
	ld a, e                                          ; $6c76: $7b
	ldh a, [hDisp1_BGP]                                     ; $6c77: $f0 $92
	inc d                                            ; $6c79: $14
	ld c, b                                          ; $6c7a: $48
	jr c, jr_03d_6c8d                                ; $6c7b: $38 $10

	ld a, [hl-]                                      ; $6c7d: $3a
	inc b                                            ; $6c7e: $04
	nop                                              ; $6c7f: $00
	db $fd                                           ; $6c80: $fd
	rst GetHLinHL                                          ; $6c81: $cf
	cp l                                             ; $6c82: $bd
	cp l                                             ; $6c83: $bd
	sbc l                                            ; $6c84: $9d
	pop bc                                           ; $6c85: $c1
	ld a, e                                          ; $6c86: $7b
	sub h                                            ; $6c87: $94
	sub e                                            ; $6c88: $93
	dec a                                            ; $6c89: $3d
	db $e3                                           ; $6c8a: $e3
	db $dd                                           ; $6c8b: $dd
	dec b                                            ; $6c8c: $05

jr_03d_6c8d:
	inc hl                                           ; $6c8d: $23
	ld a, [hl]                                       ; $6c8e: $7e
	rst SubAFromDE                                          ; $6c8f: $df
	xor $fe                                          ; $6c90: $ee $fe
	cp $e2                                           ; $6c92: $fe $e2
	di                                               ; $6c94: $f3
	db $dd                                           ; $6c95: $dd
	rst $38                                          ; $6c96: $ff
	sbc l                                            ; $6c97: $9d
	xor $01                                          ; $6c98: $ee $01
	ld a, e                                          ; $6c9a: $7b
	adc d                                            ; $6c9b: $8a
	ld a, e                                          ; $6c9c: $7b
	or l                                             ; $6c9d: $b5
	sbc [hl]                                         ; $6c9e: $9e
	add hl, de                                       ; $6c9f: $19
	ld [hl], e                                       ; $6ca0: $73
	add c                                            ; $6ca1: $81
	sub [hl]                                         ; $6ca2: $96
	ldh a, [rIE]                                     ; $6ca3: $f0 $ff
	ld d, l                                          ; $6ca5: $55
	xor d                                            ; $6ca6: $aa
	cp $fc                                           ; $6ca7: $fe $fc
	ld [$3ce4], sp                                   ; $6ca9: $08 $e4 $3c
	ld a, e                                          ; $6cac: $7b
	add $79                                          ; $6cad: $c6 $79
	inc de                                           ; $6caf: $13
	adc e                                            ; $6cb0: $8b
	dec de                                           ; $6cb1: $1b
	inc bc                                           ; $6cb2: $03
	rst $38                                          ; $6cb3: $ff
	rst SubAFromBC                                          ; $6cb4: $e7
	scf                                              ; $6cb5: $37
	ld h, c                                          ; $6cb6: $61
	ld h, [hl]                                       ; $6cb7: $66
	or h                                             ; $6cb8: $b4
	dec l                                            ; $6cb9: $2d
	ccf                                              ; $6cba: $3f
	rst $38                                          ; $6cbb: $ff
	ld h, a                                          ; $6cbc: $67
	ld l, c                                          ; $6cbd: $69
	ld a, c                                          ; $6cbe: $79
	ld a, l                                          ; $6cbf: $7d
	add hl, bc                                       ; $6cc0: $09
	inc bc                                           ; $6cc1: $03
	db $fc                                           ; $6cc2: $fc
	di                                               ; $6cc3: $f3
	ld d, l                                          ; $6cc4: $55
	ld a, d                                          ; $6cc5: $7a
	ld h, $ff                                        ; $6cc6: $26 $ff
	ld a, a                                          ; $6cc8: $7f
	add sp, -$25                                     ; $6cc9: $e8 $db
	rst $38                                          ; $6ccb: $ff
	ld a, a                                          ; $6ccc: $7f
	nop                                              ; $6ccd: $00
	add a                                            ; $6cce: $87
	ld e, [hl]                                       ; $6ccf: $5e
	cp a                                             ; $6cd0: $bf
	dec l                                            ; $6cd1: $2d
	inc de                                           ; $6cd2: $13
	db $10                                           ; $6cd3: $10
	sub c                                            ; $6cd4: $91
	di                                               ; $6cd5: $f3
	ld a, e                                          ; $6cd6: $7b
	cp a                                             ; $6cd7: $bf
	ld a, a                                          ; $6cd8: $7f
	di                                               ; $6cd9: $f3
	pop af                                           ; $6cda: $f1
	pop af                                           ; $6cdb: $f1
	ld a, e                                          ; $6cdc: $7b
	ld a, c                                          ; $6cdd: $79
	db $f4                                           ; $6cde: $f4
	xor e                                            ; $6cdf: $ab
	ld d, a                                          ; $6ce0: $57
	xor [hl]                                         ; $6ce1: $ae
	ld a, l                                          ; $6ce2: $7d
	add $ec                                          ; $6ce3: $c6 $ec
	ldh a, [c]                                       ; $6ce5: $f2
	ldh a, [$73]                                     ; $6ce6: $f0 $73
	ld b, b                                          ; $6ce8: $40
	sub e                                            ; $6ce9: $93
	ldh a, [c]                                       ; $6cea: $f2
	pop af                                           ; $6ceb: $f1
	rst $38                                          ; $6cec: $ff
	rlca                                             ; $6ced: $07
	ld b, e                                          ; $6cee: $43
	sub e                                            ; $6cef: $93
	add c                                            ; $6cf0: $81
	ld bc, $807f                                     ; $6cf1: $01 $7f $80
	rst $38                                          ; $6cf4: $ff
	rst SubAFromDE                                          ; $6cf5: $df
	halt                                             ; $6cf6: $76
	call z, $f87f                                    ; $6cf7: $cc $7f $f8
	ld a, e                                          ; $6cfa: $7b
	xor b                                            ; $6cfb: $a8
	ld [hl], e                                       ; $6cfc: $73
	db $fd                                           ; $6cfd: $fd
	ld l, d                                          ; $6cfe: $6a
	adc $77                                          ; $6cff: $ce $77
	ei                                               ; $6d01: $fb
	ld c, a                                          ; $6d02: $4f
	ldh a, [$8e]                                     ; $6d03: $f0 $8e
	cp $fb                                           ; $6d05: $fe $fb
	rra                                              ; $6d07: $1f
	ld a, a                                          ; $6d08: $7f
	cp h                                             ; $6d09: $bc
	ld l, d                                          ; $6d0a: $6a
	db $dd                                           ; $6d0b: $dd
	sbc a                                            ; $6d0c: $9f
	cp $0d                                           ; $6d0d: $fe $0d
	rst $38                                          ; $6d0f: $ff
	cp $fa                                           ; $6d10: $fe $fa
	call c, Call_03d_7f3e                            ; $6d12: $dc $3e $7f
	ld a, a                                          ; $6d15: $7f
	ld a, e                                          ; $6d16: $7b
	ld h, d                                          ; $6d17: $62
	sbc e                                            ; $6d18: $9b
	ccf                                              ; $6d19: $3f
	or b                                             ; $6d1a: $b0
	ld a, a                                          ; $6d1b: $7f
	ei                                               ; $6d1c: $fb
	ld a, e                                          ; $6d1d: $7b
	ld sp, hl                                        ; $6d1e: $f9
	sbc h                                            ; $6d1f: $9c
	ld a, a                                          ; $6d20: $7f
	cp a                                             ; $6d21: $bf
	ld a, a                                          ; $6d22: $7f
	ld a, d                                          ; $6d23: $7a
	add [hl]                                         ; $6d24: $86
	halt                                             ; $6d25: $76
	push hl                                          ; $6d26: $e5
	ld l, e                                          ; $6d27: $6b
	ret                                              ; $6d28: $c9


	ld [hl], a                                       ; $6d29: $77
	halt                                             ; $6d2a: $76
	dec e                                            ; $6d2b: $1d
	nop                                              ; $6d2c: $00
	sbc $33                                          ; $6d2d: $de $33
	sbc [hl]                                         ; $6d2f: $9e
	ld h, e                                          ; $6d30: $63
	call c, $9e33                                    ; $6d31: $dc $33 $9e
	ld b, h                                          ; $6d34: $44
	ld [hl], a                                       ; $6d35: $77
	or $9e                                           ; $6d36: $f6 $9e
	ld h, [hl]                                       ; $6d38: $66
	ld a, e                                          ; $6d39: $7b
	db $fd                                           ; $6d3a: $fd
	sbc l                                            ; $6d3b: $9d
	ld [hl], $44                                     ; $6d3c: $36 $44
	ld a, e                                          ; $6d3e: $7b
	xor $98                                          ; $6d3f: $ee $98
	ld h, [hl]                                       ; $6d41: $66
	ld h, e                                          ; $6d42: $63
	ld d, e                                          ; $6d43: $53
	ld h, [hl]                                       ; $6d44: $66
	ld b, e                                          ; $6d45: $43
	ld [hl], $63                                     ; $6d46: $36 $63
	call z, $9c84                                    ; $6d48: $cc $84 $9c
	nop                                              ; $6d4b: $00
	ld a, a                                          ; $6d4c: $7f
	rst $38                                          ; $6d4d: $ff
	db $fc                                           ; $6d4e: $fc
	reti                                             ; $6d4f: $d9


	rst $38                                          ; $6d50: $ff
	sbc b                                            ; $6d51: $98
	ld bc, $ffc1                                     ; $6d52: $01 $c1 $ff
	rrca                                             ; $6d55: $0f
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	ld [de], a                                       ; $6d58: $12
	ld l, e                                          ; $6d59: $6b
	ldh a, [hDisp0_BGP]                                     ; $6d5a: $f0 $85
	db $ed                                           ; $6d5c: $ed
	rst $38                                          ; $6d5d: $ff
	pop af                                           ; $6d5e: $f1
	db $ec                                           ; $6d5f: $ec
	pop de                                           ; $6d60: $d1
	xor [hl]                                         ; $6d61: $ae
	ld d, a                                          ; $6d62: $57
	dec l                                            ; $6d63: $2d
	ld d, h                                          ; $6d64: $54
	nop                                              ; $6d65: $00
	cp a                                             ; $6d66: $bf
	di                                               ; $6d67: $f3
	rst $38                                          ; $6d68: $ff
	rst $38                                          ; $6d69: $ff
	ei                                               ; $6d6a: $fb
	ei                                               ; $6d6b: $fb
	xor l                                            ; $6d6c: $ad
	ld hl, sp+$5d                                    ; $6d6d: $f8 $5d
	xor [hl]                                         ; $6d6f: $ae
	ld e, a                                          ; $6d70: $5f
	xor a                                            ; $6d71: $af
	rst $38                                          ; $6d72: $ff
	xor a                                            ; $6d73: $af
	xor a                                            ; $6d74: $af
	ld e, a                                          ; $6d75: $5f
	sbc $ff                                          ; $6d76: $de $ff
	sbc d                                            ; $6d78: $9a
	cp $fc                                           ; $6d79: $fe $fc
	ret c                                            ; $6d7b: $d8

	sbc b                                            ; $6d7c: $98
	inc a                                            ; $6d7d: $3c
	sbc $ff                                          ; $6d7e: $de $ff
	sbc d                                            ; $6d80: $9a
	nop                                              ; $6d81: $00
	ld d, l                                          ; $6d82: $55
	xor d                                            ; $6d83: $aa
	ld d, l                                          ; $6d84: $55
	xor d                                            ; $6d85: $aa
	db $dd                                           ; $6d86: $dd
	rst $38                                          ; $6d87: $ff
	ld a, e                                          ; $6d88: $7b
	ld sp, hl                                        ; $6d89: $f9
	sbc [hl]                                         ; $6d8a: $9e
	ld d, l                                          ; $6d8b: $55
	dec sp                                           ; $6d8c: $3b
	ldh a, [$7f]                                     ; $6d8d: $f0 $7f
	rst SubAFromHL                                          ; $6d8f: $d7
	sub a                                            ; $6d90: $97
	ld [hl], a                                       ; $6d91: $77
	xor e                                            ; $6d92: $ab
	ld d, [hl]                                       ; $6d93: $56
	db $fd                                           ; $6d94: $fd
	ei                                               ; $6d95: $fb
	ei                                               ; $6d96: $fb
	ld b, $01                                        ; $6d97: $06 $01
	ld [hl], e                                       ; $6d99: $73
	sbc b                                            ; $6d9a: $98
	sub c                                            ; $6d9b: $91
	sbc a                                            ; $6d9c: $9f
	add h                                            ; $6d9d: $84
	sbc d                                            ; $6d9e: $9a
	add c                                            ; $6d9f: $81
	add hl, de                                       ; $6da0: $19
	ld b, h                                          ; $6da1: $44
	rst $38                                          ; $6da2: $ff
	sbc a                                            ; $6da3: $9f
	adc a                                            ; $6da4: $8f
	dec bc                                           ; $6da5: $0b
	ld b, c                                          ; $6da6: $41
	rra                                              ; $6da7: $1f
	cp $bb                                           ; $6da8: $fe $bb
	ld [hl], e                                       ; $6daa: $73
	ldh [$9d], a                                     ; $6dab: $e0 $9d
	db $fd                                           ; $6dad: $fd
	ld a, [$d873]                                    ; $6dae: $fa $73 $d8
	sbc l                                            ; $6db1: $9d
	ldh a, [$c0]                                     ; $6db2: $f0 $c0
	ld a, e                                          ; $6db4: $7b
	ldh [$df], a                                     ; $6db5: $e0 $df
	db $fd                                           ; $6db7: $fd
	adc b                                            ; $6db8: $88
	rst $38                                          ; $6db9: $ff
	ld b, e                                          ; $6dba: $43
	cp l                                             ; $6dbb: $bd
	ld a, [hl]                                       ; $6dbc: $7e
	db $fd                                           ; $6dbd: $fd
	rst $38                                          ; $6dbe: $ff
	cp $ff                                           ; $6dbf: $fe $ff
	rst $38                                          ; $6dc1: $ff
	cp a                                             ; $6dc2: $bf
	ld b, e                                          ; $6dc3: $43
	add c                                            ; $6dc4: $81
	inc bc                                           ; $6dc5: $03
	ld h, l                                          ; $6dc6: $65
	cp b                                             ; $6dc7: $b8
	ld d, b                                          ; $6dc8: $50
	ld a, [hl-]                                      ; $6dc9: $3a
	sbc a                                            ; $6dca: $9f
	rla                                              ; $6dcb: $17
	ld [hl+], a                                      ; $6dcc: $22
	or d                                             ; $6dcd: $b2
	add e                                            ; $6dce: $83
	rst JumpTable                                          ; $6dcf: $c7
	sbc $ff                                          ; $6dd0: $de $ff
	sbc h                                            ; $6dd2: $9c
	db $e3                                           ; $6dd3: $e3
	add a                                            ; $6dd4: $87
	call $ffdc                                       ; $6dd5: $cd $dc $ff
	sbc h                                            ; $6dd8: $9c
	add b                                            ; $6dd9: $80
	nop                                              ; $6dda: $00
	add b                                            ; $6ddb: $80
	ld l, a                                          ; $6ddc: $6f
	ld sp, hl                                        ; $6ddd: $f9
	ld a, e                                          ; $6dde: $7b
	ret nc                                           ; $6ddf: $d0

	sub b                                            ; $6de0: $90
	rst GetHLinHL                                          ; $6de1: $cf
	rst SubAFromDE                                          ; $6de2: $df
	reti                                             ; $6de3: $d9


	ld c, b                                          ; $6de4: $48
	nop                                              ; $6de5: $00
	ld bc, $ff73                                     ; $6de6: $01 $73 $ff
	rst $38                                          ; $6de9: $ff
	rst AddAOntoHL                                          ; $6dea: $ef
	rst SubAFromBC                                          ; $6deb: $e7
	push hl                                          ; $6dec: $e5
	rst JumpTable                                          ; $6ded: $c7
	or $8c                                           ; $6dee: $f6 $8c
	db $dd                                           ; $6df0: $dd
	ei                                               ; $6df1: $fb
	sbc e                                            ; $6df2: $9b
	ret nz                                           ; $6df3: $c0

	dec c                                            ; $6df4: $0d
	ld a, [hl]                                       ; $6df5: $7e
	adc a                                            ; $6df6: $8f
	call c, $9cff                                    ; $6df7: $dc $ff $9c
	cp $f9                                           ; $6dfa: $fe $f9
	ld [hl], b                                       ; $6dfc: $70
	db $dd                                           ; $6dfd: $dd
	rst $38                                          ; $6dfe: $ff
	sbc h                                            ; $6dff: $9c
	nop                                              ; $6e00: $00
	ld b, b                                          ; $6e01: $40
	xor b                                            ; $6e02: $a8
	ld [hl], e                                       ; $6e03: $73
	and b                                            ; $6e04: $a0
	ld a, a                                          ; $6e05: $7f
	xor a                                            ; $6e06: $af
	sbc [hl]                                         ; $6e07: $9e
	ld d, a                                          ; $6e08: $57
	ld [hl], e                                       ; $6e09: $73
	ld l, b                                          ; $6e0a: $68
	ld d, a                                          ; $6e0b: $57
	db $10                                           ; $6e0c: $10
	ld l, a                                          ; $6e0d: $6f
	ldh a, [$9e]                                     ; $6e0e: $f0 $9e
	ld a, [bc]                                       ; $6e10: $0a
	ld l, e                                          ; $6e11: $6b
	ldh a, [hDisp1_WY]                                     ; $6e12: $f0 $95
	rst FarCall                                          ; $6e14: $f7
	rst $38                                          ; $6e15: $ff
	ccf                                              ; $6e16: $3f
	ld a, [hl]                                       ; $6e17: $7e
	ld a, l                                          ; $6e18: $7d
	ld a, h                                          ; $6e19: $7c
	ld a, a                                          ; $6e1a: $7f
	ld e, $05                                        ; $6e1b: $1e $05
	ld c, a                                          ; $6e1d: $4f
	ld a, e                                          ; $6e1e: $7b
	jp $ad7b                                         ; $6e1f: $c3 $7b $ad


	sub l                                            ; $6e22: $95
	rst $38                                          ; $6e23: $ff
	or h                                             ; $6e24: $b4
	db $fc                                           ; $6e25: $fc
	ld c, $de                                        ; $6e26: $0e $de
	xor $1c                                          ; $6e28: $ee $1c
	ccf                                              ; $6e2a: $3f
	adc a                                            ; $6e2b: $8f
	ld a, a                                          ; $6e2c: $7f
	ld [hl], a                                       ; $6e2d: $77
	di                                               ; $6e2e: $f3
	sbc e                                            ; $6e2f: $9b
	cp a                                             ; $6e30: $bf
	inc e                                            ; $6e31: $1c
	or h                                             ; $6e32: $b4
	adc b                                            ; $6e33: $88
	ld h, a                                          ; $6e34: $67
	ret nz                                           ; $6e35: $c0

	ld sp, hl                                        ; $6e36: $f9
	pop bc                                           ; $6e37: $c1
	rst $38                                          ; $6e38: $ff
	sub e                                            ; $6e39: $93
	db $fc                                           ; $6e3a: $fc
	ei                                               ; $6e3b: $fb
	pop af                                           ; $6e3c: $f1
	push hl                                          ; $6e3d: $e5
	rst SubAFromBC                                          ; $6e3e: $e7
	rst SubAFromBC                                          ; $6e3f: $e7
	jp $e0c7                                         ; $6e40: $c3 $c7 $e0


	pop af                                           ; $6e43: $f1
	ld hl, sp-$08                                    ; $6e44: $f8 $f8
	db $dd                                           ; $6e46: $dd
	rst $38                                          ; $6e47: $ff
	add a                                            ; $6e48: $87
	ld [hl], e                                       ; $6e49: $73
	ld sp, $f632                                     ; $6e4a: $31 $32 $f6
	xor $e7                                          ; $6e4d: $ee $e7
	add a                                            ; $6e4f: $87
	daa                                              ; $6e50: $27
	rra                                              ; $6e51: $1f
	cpl                                              ; $6e52: $2f
	cpl                                              ; $6e53: $2f
	ld b, e                                          ; $6e54: $43
	ld b, a                                          ; $6e55: $47
	cp a                                             ; $6e56: $bf
	dec sp                                           ; $6e57: $3b
	rra                                              ; $6e58: $1f
	rst $38                                          ; $6e59: $ff
	rst $38                                          ; $6e5a: $ff
	ld a, a                                          ; $6e5b: $7f
	ld a, a                                          ; $6e5c: $7f
	ccf                                              ; $6e5d: $3f
	ld a, $9e                                        ; $6e5e: $3e $9e
	sbc a                                            ; $6e60: $9f
	ld a, e                                          ; $6e61: $7b
	or a                                             ; $6e62: $b7
	sub d                                            ; $6e63: $92
	xor e                                            ; $6e64: $ab
	sub $ec                                          ; $6e65: $d6 $ec
	db $f4                                           ; $6e67: $f4
	rst $38                                          ; $6e68: $ff
	nop                                              ; $6e69: $00
	rst $38                                          ; $6e6a: $ff
	push de                                          ; $6e6b: $d5
	and d                                            ; $6e6c: $a2
	dec c                                            ; $6e6d: $0d
	dec d                                            ; $6e6e: $15
	sbc $3f                                          ; $6e6f: $de $3f
	db $dd                                           ; $6e71: $dd
	rst $38                                          ; $6e72: $ff
	sbc e                                            ; $6e73: $9b
	db $e3                                           ; $6e74: $e3
	rrca                                             ; $6e75: $0f
	ccf                                              ; $6e76: $3f
	ld sp, hl                                        ; $6e77: $f9
	ld [hl], a                                       ; $6e78: $77
	sbc a                                            ; $6e79: $9f
	ld a, e                                          ; $6e7a: $7b
	add e                                            ; $6e7b: $83
	ld e, a                                          ; $6e7c: $5f
	ld d, h                                          ; $6e7d: $54
	jp nc, Jump_03d_43ff                             ; $6e7e: $d2 $ff $43

	ld a, a                                          ; $6e81: $7f
	sub a                                            ; $6e82: $97
	db $fc                                           ; $6e83: $fc
	ld a, [$f3f2]                                    ; $6e84: $fa $f2 $f3
	rst SubAFromBC                                          ; $6e87: $e7
	add $ce                                          ; $6e88: $c6 $ce
	ld bc, $ffda                                     ; $6e8a: $01 $da $ff
	sub c                                            ; $6e8d: $91
	sbc e                                            ; $6e8e: $9b
	ld [hl], b                                       ; $6e8f: $70
	inc [hl]                                         ; $6e90: $34
	jr nc, jr_03d_6ecc                               ; $6e91: $30 $39

	ld sp, $2534                                     ; $6e93: $31 $34 $25
	pop hl                                           ; $6e96: $e1
	add e                                            ; $6e97: $83
	sub e                                            ; $6e98: $93
	and a                                            ; $6e99: $a7
	rst SubAFromHL                                          ; $6e9a: $d7
	rst AddAOntoHL                                          ; $6e9b: $ef
	ld a, e                                          ; $6e9c: $7b
	or h                                             ; $6e9d: $b4
	sbc h                                            ; $6e9e: $9c
	ccf                                              ; $6e9f: $3f
	rra                                              ; $6ea0: $1f
	adc a                                            ; $6ea1: $8f
	sbc $0f                                          ; $6ea2: $de $0f
	sbc h                                            ; $6ea4: $9c
	adc a                                            ; $6ea5: $8f
	ret nz                                           ; $6ea6: $c0

	ldh [rVBK], a                                    ; $6ea7: $e0 $4f
	cp a                                             ; $6ea9: $bf
	ld h, e                                          ; $6eaa: $63
	cp b                                             ; $6eab: $b8
	ld c, e                                          ; $6eac: $4b
	ldh a, [$9e]                                     ; $6ead: $f0 $9e
	ld [$f76b], a                                    ; $6eaf: $ea $6b $f7
	sbc [hl]                                         ; $6eb2: $9e
	dec d                                            ; $6eb3: $15
	jp c, $7eff                                      ; $6eb4: $da $ff $7e

	adc h                                            ; $6eb7: $8c
	db $db                                           ; $6eb8: $db
	rst $38                                          ; $6eb9: $ff
	ld h, a                                          ; $6eba: $67
	ld l, h                                          ; $6ebb: $6c
	sbc [hl]                                         ; $6ebc: $9e
	ld e, $6b                                        ; $6ebd: $1e $6b
	sub a                                            ; $6ebf: $97

Call_03d_6ec0:
	sbc [hl]                                         ; $6ec0: $9e
	pop hl                                           ; $6ec1: $e1
	ld a, d                                          ; $6ec2: $7a
	pop de                                           ; $6ec3: $d1
	db $dd                                           ; $6ec4: $dd
	rst $38                                          ; $6ec5: $ff
	add b                                            ; $6ec6: $80
	sbc d                                            ; $6ec7: $9a
	ld sp, $dfe2                                     ; $6ec8: $31 $e2 $df
	ld sp, hl                                        ; $6ecb: $f9

jr_03d_6ecc:
	jp nz, $ff77                                     ; $6ecc: $c2 $77 $ff

	ld b, $0e                                        ; $6ecf: $06 $0e
	cp l                                             ; $6ed1: $bd
	db $eb                                           ; $6ed2: $eb
	ldh a, [rP1]                                     ; $6ed3: $f0 $00
	ld [bc], a                                       ; $6ed5: $02
	ld e, c                                          ; $6ed6: $59
	ld d, d                                          ; $6ed7: $52
	ld de, $02e2                                     ; $6ed8: $11 $e2 $02
	add h                                            ; $6edb: $84
	ldh [$f0], a                                     ; $6edc: $e0 $f0
	pop af                                           ; $6ede: $f1
	inc c                                            ; $6edf: $0c
	ld e, $1d                                        ; $6ee0: $1e $1d
	sbc l                                            ; $6ee2: $9d
	ei                                               ; $6ee3: $fb
	ld a, a                                          ; $6ee4: $7f
	cp a                                             ; $6ee5: $bf
	sub a                                            ; $6ee6: $97
	ld e, a                                          ; $6ee7: $5f
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	add b                                            ; $6eea: $80
	ld a, a                                          ; $6eeb: $7f
	ccf                                              ; $6eec: $3f
	ccf                                              ; $6eed: $3f
	rra                                              ; $6eee: $1f
	ld a, c                                          ; $6eef: $79
	sbc h                                            ; $6ef0: $9c
	ld h, [hl]                                       ; $6ef1: $66
	add h                                            ; $6ef2: $84
	sbc h                                            ; $6ef3: $9c
	nop                                              ; $6ef4: $00
	inc bc                                           ; $6ef5: $03
	ld [bc], a                                       ; $6ef6: $02
	ld l, [hl]                                       ; $6ef7: $6e

jr_03d_6ef8:
	cp b                                             ; $6ef8: $b8
	rst SubAFromDE                                          ; $6ef9: $df
	cp $77                                           ; $6efa: $fe $77
	ldh a, [$9b]                                     ; $6efc: $f0 $9b
	jr c, jr_03d_6ef8                                ; $6efe: $38 $f8

	ret nc                                           ; $6f00: $d0

	and b                                            ; $6f01: $a0
	ld [hl], a                                       ; $6f02: $77
	ldh a, [hDisp1_WY]                                     ; $6f03: $f0 $95
	rst JumpTable                                          ; $6f05: $c7
	rrca                                             ; $6f06: $0f
	rra                                              ; $6f07: $1f
	cp [hl]                                          ; $6f08: $be
	db $fc                                           ; $6f09: $fc
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	ld b, a                                          ; $6f0c: $47
	cp a                                             ; $6f0d: $bf
	call nc, $1972                                   ; $6f0e: $d4 $72 $19
	sbc h                                            ; $6f11: $9c
	rst $38                                          ; $6f12: $ff
	ld a, h                                          ; $6f13: $7c
	jr c, jr_03d_6f8d                                ; $6f14: $38 $77

	ld sp, hl                                        ; $6f16: $f9
	add a                                            ; $6f17: $87
	nop                                              ; $6f18: $00
	inc hl                                           ; $6f19: $23
	add c                                            ; $6f1a: $81
	ld d, e                                          ; $6f1b: $53
	cp a                                             ; $6f1c: $bf
	rst $38                                          ; $6f1d: $ff
	ld a, a                                          ; $6f1e: $7f
	ld a, l                                          ; $6f1f: $7d
	xor d                                            ; $6f20: $aa
	dec e                                            ; $6f21: $1d
	rra                                              ; $6f22: $1f
	rrca                                             ; $6f23: $0f
	ld l, a                                          ; $6f24: $6f
	ld d, [hl]                                       ; $6f25: $56
	add b                                            ; $6f26: $80
	add b                                            ; $6f27: $80
	nop                                              ; $6f28: $00
	sbc [hl]                                         ; $6f29: $9e
	ld [hl], e                                       ; $6f2a: $73
	pop bc                                           ; $6f2b: $c1
	nop                                              ; $6f2c: $00
	dec bc                                           ; $6f2d: $0b
	dec d                                            ; $6f2e: $15
	and b                                            ; $6f2f: $a0
	ld a, d                                          ; $6f30: $7a
	ld d, b                                          ; $6f31: $50
	rst SubAFromDE                                          ; $6f32: $df
	rst $38                                          ; $6f33: $ff
	add h                                            ; $6f34: $84
	push af                                          ; $6f35: $f5
	ld [$bf5f], a                                    ; $6f36: $ea $5f $bf
	cp e                                             ; $6f39: $bb
	ld [hl], h                                       ; $6f3a: $74
	sub l                                            ; $6f3b: $95
	and $1a                                          ; $6f3c: $e6 $1a
	ld l, c                                          ; $6f3e: $69

Jump_03d_6f3f:
	or [hl]                                          ; $6f3f: $b6
	db $fd                                           ; $6f40: $fd
	pop hl                                           ; $6f41: $e1
	db $e3                                           ; $6f42: $e3
	xor $4c                                          ; $6f43: $ee $4c
	call nz, $d990                                   ; $6f45: $c4 $90 $d9
	jp $40ea                                         ; $6f48: $c3 $ea $40


	push bc                                          ; $6f4b: $c5
	ld c, d                                          ; $6f4c: $4a
	add l                                            ; $6f4d: $85
	ld c, e                                          ; $6f4e: $4b
	db $fd                                           ; $6f4f: $fd
	ld a, e                                          ; $6f50: $7b
	ld c, a                                          ; $6f51: $4f
	sbc b                                            ; $6f52: $98
	ld a, d                                          ; $6f53: $7a
	push af                                          ; $6f54: $f5
	ld a, [$fef4]                                    ; $6f55: $fa $f4 $fe
	rst $38                                          ; $6f58: $ff
	xor d                                            ; $6f59: $aa
	ld l, a                                          ; $6f5a: $6f
	adc b                                            ; $6f5b: $88
	ld a, e                                          ; $6f5c: $7b
	ld b, c                                          ; $6f5d: $41
	db $fc                                           ; $6f5e: $fc
	sbc [hl]                                         ; $6f5f: $9e
	add b                                            ; $6f60: $80
	ld [hl], e                                       ; $6f61: $73
	ldh a, [$9c]                                     ; $6f62: $f0 $9c
	cp $fb                                           ; $6f64: $fe $fb
	rst SubAFromHL                                          ; $6f66: $d7
	ld h, [hl]                                       ; $6f67: $66
	ld a, [hl+]                                      ; $6f68: $2a
	sub e                                            ; $6f69: $93
	rst SubAFromDE                                          ; $6f6a: $df
	add sp, -$1d                                     ; $6f6b: $e8 $e3
	ret nc                                           ; $6f6d: $d0

	stop                                             ; $6f6e: $10 $00
	ld bc, $ef00                                     ; $6f70: $01 $00 $ef
	ld c, a                                          ; $6f73: $4f
	inc e                                            ; $6f74: $1c
	jr nz, @+$7d                                     ; $6f75: $20 $7b

	add a                                            ; $6f77: $87
	ld a, l                                          ; $6f78: $7d
	ldh a, [hDisp0_SCX]                                     ; $6f79: $f0 $84
	ld b, $02                                        ; $6f7b: $06 $02
	ld [$4b08], sp                                   ; $6f7d: $08 $08 $4b
	rst $38                                          ; $6f80: $ff
	ld a, b                                          ; $6f81: $78
	rst $38                                          ; $6f82: $ff
	ld sp, hl                                        ; $6f83: $f9
	ld bc, $0f07                                     ; $6f84: $01 $07 $0f
	dec b                                            ; $6f87: $05
	adc h                                            ; $6f88: $8c
	ldh a, [hDisp1_LCDC]                                     ; $6f89: $f0 $8f
	adc a                                            ; $6f8b: $8f
	rra                                              ; $6f8c: $1f

jr_03d_6f8d:
	rra                                              ; $6f8d: $1f
	ld a, a                                          ; $6f8e: $7f
	rst $38                                          ; $6f8f: $ff
	cpl                                              ; $6f90: $2f
	rla                                              ; $6f91: $17
	ld a, [$faf5]                                    ; $6f92: $fa $f5 $fa
	ldh a, [$73]                                     ; $6f95: $f0 $73
	ld e, b                                          ; $6f97: $58
	sbc [hl]                                         ; $6f98: $9e
	ld d, l                                          ; $6f99: $55
	ld e, [hl]                                       ; $6f9a: $5e
	add $71                                          ; $6f9b: $c6 $71
	ldh a, [$9b]                                     ; $6f9d: $f0 $9b
	ld d, a                                          ; $6f9f: $57
	nop                                              ; $6fa0: $00
	cp $d5                                           ; $6fa1: $fe $d5
	ld l, b                                          ; $6fa3: $68
	or l                                             ; $6fa4: $b5
	sbc [hl]                                         ; $6fa5: $9e
	ld a, [hl+]                                      ; $6fa6: $2a
	ld [hl], a                                       ; $6fa7: $77
	ldh a, [$99]                                     ; $6fa8: $f0 $99
	push de                                          ; $6faa: $d5
	nop                                              ; $6fab: $00
	xor d                                            ; $6fac: $aa
	ld d, l                                          ; $6fad: $55
	ld [$77fd], a                                    ; $6fae: $ea $fd $77
	dec h                                            ; $6fb1: $25
	ld a, h                                          ; $6fb2: $7c
	ldh a, [c]                                       ; $6fb3: $f2
	sbc h                                            ; $6fb4: $9c
	dec d                                            ; $6fb5: $15
	ld [bc], a                                       ; $6fb6: $02
	ld bc, $e07b                                     ; $6fb7: $01 $7b $e0
	ld a, l                                          ; $6fba: $7d
	ld [hl], e                                       ; $6fbb: $73
	sbc [hl]                                         ; $6fbc: $9e
	xor c                                            ; $6fbd: $a9
	ld [hl], b                                       ; $6fbe: $70
	ldh [hDisp1_BGP], a                                     ; $6fbf: $e0 $92
	ld d, a                                          ; $6fc1: $57
	xor e                                            ; $6fc2: $ab
	ld d, a                                          ; $6fc3: $57
	xor d                                            ; $6fc4: $aa
	ld d, l                                          ; $6fc5: $55
	ld a, [hl]                                       ; $6fc6: $7e
	rst $38                                          ; $6fc7: $ff
	rra                                              ; $6fc8: $1f
	push hl                                          ; $6fc9: $e5
	adc a                                            ; $6fca: $8f
	ccf                                              ; $6fcb: $3f
	cp $ec                                           ; $6fcc: $fe $ec
	ld [hl], a                                       ; $6fce: $77
	ld l, h                                          ; $6fcf: $6c
	sub e                                            ; $6fd0: $93
	pop af                                           ; $6fd1: $f1
	pop bc                                           ; $6fd2: $c1
	add e                                            ; $6fd3: $83
	rra                                              ; $6fd4: $1f
	rst AddAOntoHL                                          ; $6fd5: $ef
	pop bc                                           ; $6fd6: $c1
	sbc h                                            ; $6fd7: $9c
	inc b                                            ; $6fd8: $04
	inc de                                           ; $6fd9: $13
	call $a058                                       ; $6fda: $cd $58 $a0
	ld a, d                                          ; $6fdd: $7a
	xor [hl]                                         ; $6fde: $ae

Call_03d_6fdf:
	add h                                            ; $6fdf: $84
	adc d                                            ; $6fe0: $8a
	sub l                                            ; $6fe1: $95
	ld [hl], d                                       ; $6fe2: $72
	rst AddAOntoHL                                          ; $6fe3: $ef
	ld hl, sp-$0f                                    ; $6fe4: $f8 $f1
	ldh a, [$e5]                                     ; $6fe6: $f0 $e5
	ld [hl-], a                                      ; $6fe8: $32
	ld [hl], c                                       ; $6fe9: $71
	ldh a, [$d1]                                     ; $6fea: $f0 $d1
	adc b                                            ; $6fec: $88
	cp a                                             ; $6fed: $bf
	rst $38                                          ; $6fee: $ff
	or e                                             ; $6fef: $b3
	ld hl, $6121                                     ; $6ff0: $21 $21 $61
	ld a, h                                          ; $6ff3: $7c
	cp a                                             ; $6ff4: $bf
	rlca                                             ; $6ff5: $07
	add a                                            ; $6ff6: $87
	rlca                                             ; $6ff7: $07
	rrca                                             ; $6ff8: $0f
	ld e, a                                          ; $6ff9: $5f
	ccf                                              ; $6ffa: $3f
	ld a, b                                          ; $6ffb: $78
	ld a, h                                          ; $6ffc: $7c
	ld a, [hl]                                       ; $6ffd: $7e
	rla                                              ; $6ffe: $17

Jump_03d_6fff:
	sbc h                                            ; $6fff: $9c
	ld hl, sp-$10                                    ; $7000: $f8 $f0
	ldh [$fd], a                                     ; $7002: $e0 $fd
	ld a, b                                          ; $7004: $78
	sbc h                                            ; $7005: $9c
	ld [hl], c                                       ; $7006: $71
	ld a, [hl+]                                      ; $7007: $2a
	ld h, a                                          ; $7008: $67
	ld a, e                                          ; $7009: $7b
	ld c, a                                          ; $700a: $4f
	ldh a, [rSVBK]                                   ; $700b: $f0 $70
	ld a, h                                          ; $700d: $7c
	ld a, e                                          ; $700e: $7b
	ldh a, [$6c]                                     ; $700f: $f0 $6c
	ld l, [hl]                                       ; $7011: $6e
	ld l, e                                          ; $7012: $6b
	ldh a, [$9e]                                     ; $7013: $f0 $9e
	xor e                                            ; $7015: $ab
	ld e, a                                          ; $7016: $5f
	ldh a, [$80]                                     ; $7017: $f0 $80
	sbc [hl]                                         ; $7019: $9e
	ccf                                              ; $701a: $3f
	db $ed                                           ; $701b: $ed
	ld hl, sp-$10                                    ; $701c: $f8 $f0
	and b                                            ; $701e: $a0
	and $ff                                          ; $701f: $e6 $ff
	ld a, e                                          ; $7021: $7b
	db $fd                                           ; $7022: $fd
	cp $fc                                           ; $7023: $fe $fc
	ld hl, sp-$0f                                    ; $7025: $f8 $f1
	di                                               ; $7027: $f3
	di                                               ; $7028: $f3
	push de                                          ; $7029: $d5
	ld l, e                                          ; $702a: $6b
	cp a                                             ; $702b: $bf
	rla                                              ; $702c: $17
	ld e, d                                          ; $702d: $5a
	ld a, a                                          ; $702e: $7f
	cp $f7                                           ; $702f: $fe $f7
	db $e3                                           ; $7031: $e3
	rst FarCall                                          ; $7032: $f7
	ld a, [hl]                                       ; $7033: $7e
	ld a, e                                          ; $7034: $7b
	cp a                                             ; $7035: $bf
	rst $38                                          ; $7036: $ff
	cp a                                             ; $7037: $bf
	sbc e                                            ; $7038: $9b
	ei                                               ; $7039: $fb
	cp e                                             ; $703a: $bb
	push de                                          ; $703b: $d5
	cp a                                             ; $703c: $bf
	ld a, d                                          ; $703d: $7a
	ld c, d                                          ; $703e: $4a
	ld a, a                                          ; $703f: $7f
	db $fc                                           ; $7040: $fc
	ld h, [hl]                                       ; $7041: $66
	rrca                                             ; $7042: $0f
	sub l                                            ; $7043: $95
	rst SubAFromDE                                          ; $7044: $df
	rst AddAOntoHL                                          ; $7045: $ef
	ld [$dfb5], a                                    ; $7046: $ea $b5 $df
	cp d                                             ; $7049: $ba
	ld l, a                                          ; $704a: $6f
	rst $38                                          ; $704b: $ff
	ldh [$f0], a                                     ; $704c: $e0 $f0
	db $db                                           ; $704e: $db
	rst $38                                          ; $704f: $ff
	sbc l                                            ; $7050: $9d
	xor b                                            ; $7051: $a8
	call nc, $a06f                                   ; $7052: $d4 $6f $a0
	ld e, [hl]                                       ; $7055: $5e
	jr nc, @+$11                                     ; $7056: $30 $0f

	ldh a, [$9d]                                     ; $7058: $f0 $9d
	dec hl                                           ; $705a: $2b
	dec d                                            ; $705b: $15
	ld c, a                                          ; $705c: $4f
	ldh a, [rPCM34]                                  ; $705d: $f0 $77
	ld l, [hl]                                       ; $705f: $6e
	inc bc                                           ; $7060: $03
	ldh a, [$5b]                                     ; $7061: $f0 $5b
	ldh a, [$9d]                                     ; $7063: $f0 $9d
	push de                                          ; $7065: $d5
	cp $6f                                           ; $7066: $fe $6f
	ldh a, [$9e]                                     ; $7068: $f0 $9e
	ld a, [hl+]                                      ; $706a: $2a
	ld l, c                                          ; $706b: $69
	adc b                                            ; $706c: $88
	sub [hl]                                         ; $706d: $96
	ld de, $4121                                     ; $706e: $11 $21 $41
	add b                                            ; $7071: $80
	add b                                            ; $7072: $80
	ld [$0c08], sp                                   ; $7073: $08 $08 $0c
	ccf                                              ; $7076: $3f
	ld l, e                                          ; $7077: $6b
	ld h, b                                          ; $7078: $60
	add b                                            ; $7079: $80
	ld a, $2c                                        ; $707a: $3e $2c
	inc h                                            ; $707c: $24
	and a                                            ; $707d: $a7
	ld d, a                                          ; $707e: $57
	rst SubAFromHL                                          ; $707f: $d7
	sbc a                                            ; $7080: $9f
	ld c, a                                          ; $7081: $4f
	ld a, [$e4ec]                                    ; $7082: $fa $ec $e4
	ldh a, [c]                                       ; $7085: $f2
	or $f3                                           ; $7086: $f6 $f3
	db $fd                                           ; $7088: $fd
	ld a, [$6888]                                    ; $7089: $fa $88 $68
	jr nc, jr_03d_70a7                               ; $708c: $30 $19

	sub c                                            ; $708e: $91
	ld h, e                                          ; $708f: $63
	inc bc                                           ; $7090: $03
	ld b, e                                          ; $7091: $43
	ld a, a                                          ; $7092: $7f
	scf                                              ; $7093: $37
	rra                                              ; $7094: $1f
	rrca                                             ; $7095: $0f
	rla                                              ; $7096: $17
	and a                                            ; $7097: $a7
	adc a                                            ; $7098: $8f
	sub d                                            ; $7099: $92
	db $dd                                           ; $709a: $dd
	ld d, l                                          ; $709b: $55
	ld l, d                                          ; $709c: $6a
	rst $38                                          ; $709d: $ff
	sub l                                            ; $709e: $95
	sbc a                                            ; $709f: $9f
	rra                                              ; $70a0: $1f
	rrca                                             ; $70a1: $0f
	rrca                                             ; $70a2: $0f
	push de                                          ; $70a3: $d5
	ld [$f5ff], a                                    ; $70a4: $ea $ff $f5

jr_03d_70a7:
	ld d, [hl]                                       ; $70a7: $56
	jp z, $aa48                                      ; $70a8: $ca $48 $aa

	ld b, a                                          ; $70ab: $47
	ldh a, [$7f]                                     ; $70ac: $f0 $7f
	adc h                                            ; $70ae: $8c
	ld l, e                                          ; $70af: $6b
	ld [hl], e                                       ; $70b0: $73
	db $db                                           ; $70b1: $db
	rst $38                                          ; $70b2: $ff
	sbc l                                            ; $70b3: $9d
	rlca                                             ; $70b4: $07
	ld d, a                                          ; $70b5: $57
	jp c, $92ff                                      ; $70b6: $da $ff $92

	xor e                                            ; $70b9: $ab
	db $ed                                           ; $70ba: $ed
	ei                                               ; $70bb: $fb
	db $eb                                           ; $70bc: $eb
	ei                                               ; $70bd: $fb
	or l                                             ; $70be: $b5
	db $eb                                           ; $70bf: $eb
	ret nz                                           ; $70c0: $c0

	sub l                                            ; $70c1: $95
	rst $38                                          ; $70c2: $ff
	rst AddAOntoHL                                          ; $70c3: $ef
	rst $38                                          ; $70c4: $ff
	cp a                                             ; $70c5: $bf
	ld [hl], h                                       ; $70c6: $74
	pop de                                           ; $70c7: $d1
	sbc [hl]                                         ; $70c8: $9e
	ld a, [$ffde]                                    ; $70c9: $fa $de $ff
	sbc l                                            ; $70cc: $9d
	rst FarCall                                          ; $70cd: $f7
	ei                                               ; $70ce: $fb
	ld l, a                                          ; $70cf: $6f
	ret nc                                           ; $70d0: $d0

	sbc [hl]                                         ; $70d1: $9e
	ei                                               ; $70d2: $fb
	ld l, e                                          ; $70d3: $6b
	ret nc                                           ; $70d4: $d0

	ld a, [hl]                                       ; $70d5: $7e
	inc bc                                           ; $70d6: $03
	ld h, e                                          ; $70d7: $63
	ret nz                                           ; $70d8: $c0

	ld a, a                                          ; $70d9: $7f
	ret nc                                           ; $70da: $d0

	sbc b                                            ; $70db: $98
	sbc $df                                          ; $70dc: $de $df
	cp $ff                                           ; $70de: $fe $ff
	ld a, a                                          ; $70e0: $7f
	ld e, a                                          ; $70e1: $5f
	adc [hl]                                         ; $70e2: $8e
	pop bc                                           ; $70e3: $c1
	rst $38                                          ; $70e4: $ff
	inc bc                                           ; $70e5: $03
	rst $38                                          ; $70e6: $ff
	db $d3                                           ; $70e7: $d3
	rst $38                                          ; $70e8: $ff
	sbc [hl]                                         ; $70e9: $9e
	add b                                            ; $70ea: $80
	jp nc, Jump_03d_4bff                             ; $70eb: $d2 $ff $4b

	ld b, b                                          ; $70ee: $40
	ld e, a                                          ; $70ef: $5f
	ldh a, [$de]                                     ; $70f0: $f0 $de
	cp $dd                                           ; $70f2: $fe $dd
	db $fc                                           ; $70f4: $fc
	sbc [hl]                                         ; $70f5: $9e
	ld [bc], a                                       ; $70f6: $02
	jp c, $97ff                                      ; $70f7: $da $ff $97

	rst FarCall                                          ; $70fa: $f7
	ld [$1a0c], sp                                   ; $70fb: $08 $0c $1a
	inc e                                            ; $70fe: $1c
	ld e, $3d                                        ; $70ff: $1e $3d
	ld b, [hl]                                       ; $7101: $46
	ld h, a                                          ; $7102: $67
	ldh a, [hDisp1_WX]                                     ; $7103: $f0 $96
	cp $2e                                           ; $7105: $fe $2e
	ld e, $0e                                        ; $7107: $1e $0e
	ld b, $04                                        ; $7109: $06 $04
	inc b                                            ; $710b: $04
	add h                                            ; $710c: $84
	rst $38                                          ; $710d: $ff
	sbc $f9                                          ; $710e: $de $f9
	call c, Call_03d_7aff                            ; $7110: $dc $ff $7a
	and c                                            ; $7113: $a1
	sbc d                                            ; $7114: $9a
	ld b, b                                          ; $7115: $40
	jr nz, jr_03d_7128                               ; $7116: $20 $10

	inc e                                            ; $7118: $1c
	cp $7b                                           ; $7119: $fe $7b
	dec sp                                           ; $711b: $3b
	call c, $97ff                                    ; $711c: $dc $ff $97
	rrca                                             ; $711f: $0f
	adc a                                            ; $7120: $8f
	rst GetHLinHL                                          ; $7121: $cf
	rrca                                             ; $7122: $0f
	rrca                                             ; $7123: $0f
	rra                                              ; $7124: $1f
	ccf                                              ; $7125: $3f
	ccf                                              ; $7126: $3f
	ld d, c                                          ; $7127: $51

jr_03d_7128:
	dec bc                                           ; $7128: $0b
	ld l, h                                          ; $7129: $6c
	ld b, b                                          ; $712a: $40
	ld l, a                                          ; $712b: $6f
	ldh a, [$8c]                                     ; $712c: $f0 $8c
	dec b                                            ; $712e: $05
	ld a, [bc]                                       ; $712f: $0a
	dec d                                            ; $7130: $15
	ld a, [hl+]                                      ; $7131: $2a
	dec d                                            ; $7132: $15
	ld a, [hl+]                                      ; $7133: $2a
	ld d, l                                          ; $7134: $55
	rst $38                                          ; $7135: $ff
	ld a, [$eaf5]                                    ; $7136: $fa $f5 $ea
	push de                                          ; $7139: $d5
	ld [$aad5], a                                    ; $713a: $ea $d5 $aa
	and b                                            ; $713d: $a0
	ld c, e                                          ; $713e: $4b
	xor d                                            ; $713f: $aa
	ld c, l                                          ; $7140: $4d
	ld a, e                                          ; $7141: $7b
	cp $84                                           ; $7142: $fe $84
	ld d, l                                          ; $7144: $55
	ld e, a                                          ; $7145: $5f
	cp a                                             ; $7146: $bf
	ld e, [hl]                                       ; $7147: $5e
	cp [hl]                                          ; $7148: $be
	ld e, l                                          ; $7149: $5d
	cp d                                             ; $714a: $ba
	ld d, l                                          ; $714b: $55
	xor d                                            ; $714c: $aa
	xor b                                            ; $714d: $a8
	ld d, l                                          ; $714e: $55
	xor d                                            ; $714f: $aa
	ld d, [hl]                                       ; $7150: $56
	xor b                                            ; $7151: $a8
	ld e, b                                          ; $7152: $58
	and b                                            ; $7153: $a0
	ld d, b                                          ; $7154: $50
	ld d, a                                          ; $7155: $57
	xor d                                            ; $7156: $aa
	push de                                          ; $7157: $d5
	xor b                                            ; $7158: $a8
	ld d, h                                          ; $7159: $54
	and b                                            ; $715a: $a0
	ld d, b                                          ; $715b: $50
	xor a                                            ; $715c: $af
	ld a, $40                                        ; $715d: $3e $40
	ld [hl], h                                       ; $715f: $74
	ld hl, $9eff                                     ; $7160: $21 $ff $9e
	ret nz                                           ; $7163: $c0

	ld l, a                                          ; $7164: $6f
	ld sp, hl                                        ; $7165: $f9
	ld a, a                                          ; $7166: $7f
	ret nz                                           ; $7167: $c0

	add b                                            ; $7168: $80
	inc b                                            ; $7169: $04
	dec b                                            ; $716a: $05
	ld [$020b], sp                                   ; $716b: $08 $0b $02
	dec b                                            ; $716e: $05
	rlca                                             ; $716f: $07
	rlca                                             ; $7170: $07
	inc bc                                           ; $7171: $03
	ld [bc], a                                       ; $7172: $02
	rlca                                             ; $7173: $07
	rlca                                             ; $7174: $07
	dec b                                            ; $7175: $05
	ld a, [bc]                                       ; $7176: $0a
	ld hl, sp+$06                                    ; $7177: $f8 $06
	db $d3                                           ; $7179: $d3
	pop de                                           ; $717a: $d1
	ld l, a                                          ; $717b: $6f
	ld e, l                                          ; $717c: $5d
	cp e                                             ; $717d: $bb
	ld b, a                                          ; $717e: $47
	rst $38                                          ; $717f: $ff
	rst $38                                          ; $7180: $ff
	scf                                              ; $7181: $37
	dec bc                                           ; $7182: $0b
	add c                                            ; $7183: $81
	and a                                            ; $7184: $a7
	db $fc                                           ; $7185: $fc
	cp b                                             ; $7186: $b8
	nop                                              ; $7187: $00
	sub e                                            ; $7188: $93
	ld a, a                                          ; $7189: $7f
	db $fc                                           ; $718a: $fc
	rst FarCall                                          ; $718b: $f7
	sbc $7d                                          ; $718c: $de $7d
	ld a, [$fafd]                                    ; $718e: $fa $fd $fa
	cp $fe                                           ; $7191: $fe $fe
	ld hl, sp-$20                                    ; $7193: $f8 $e0
	ld [hl], a                                       ; $7195: $77
	call $3179                                       ; $7196: $cd $79 $31
	ld [hl], e                                       ; $7199: $73
	cp $f9                                           ; $719a: $fe $f9
	sbc h                                            ; $719c: $9c
	ld d, b                                          ; $719d: $50
	and b                                            ; $719e: $a0
	ld b, b                                          ; $719f: $40
	ld [hl], e                                       ; $71a0: $73
	cp $e0                                           ; $71a1: $fe $e0
	reti                                             ; $71a3: $d9


	sbc h                                            ; $71a4: $9c
	ld d, l                                          ; $71a5: $55
	ld a, [hl+]                                      ; $71a6: $2a
	ld d, l                                          ; $71a7: $55
	ld a, e                                          ; $71a8: $7b
	ld d, c                                          ; $71a9: $51
	ld a, a                                          ; $71aa: $7f
	cp $f9                                           ; $71ab: $fe $f9
	ld a, a                                          ; $71ad: $7f
	ld e, b                                          ; $71ae: $58
	ld a, h                                          ; $71af: $7c
	and h                                            ; $71b0: $a4
	ld a, a                                          ; $71b1: $7f
	cp $9d                                           ; $71b2: $fe $9d
	ld d, a                                          ; $71b4: $57
	xor a                                            ; $71b5: $af
	ld hl, sp-$80                                    ; $71b6: $f8 $80
	ld b, b                                          ; $71b8: $40
	adc b                                            ; $71b9: $88
	add b                                            ; $71ba: $80
	ld b, l                                          ; $71bb: $45
	ld b, c                                          ; $71bc: $41
	ld h, e                                          ; $71bd: $63
	ld [hl+], a                                      ; $71be: $22
	nop                                              ; $71bf: $00
	or b                                             ; $71c0: $b0
	sub c                                            ; $71c1: $91
	ret c                                            ; $71c2: $d8

	ld e, b                                          ; $71c3: $58
	ld l, h                                          ; $71c4: $6c
	inc l                                            ; $71c5: $2c
	inc h                                            ; $71c6: $24
	rst FarCall                                          ; $71c7: $f7
	ld e, e                                          ; $71c8: $5b
	and l                                            ; $71c9: $a5
	ld b, $4e                                        ; $71ca: $06 $4e
	rst $38                                          ; $71cc: $ff
	rst JumpTable                                          ; $71cd: $c7
	xor e                                            ; $71ce: $ab
	rrca                                             ; $71cf: $0f
	adc a                                            ; $71d0: $8f
	rst SubAFromDE                                          ; $71d1: $df
	ei                                               ; $71d2: $fb
	or c                                             ; $71d3: $b1
	sub b                                            ; $71d4: $90
	sbc b                                            ; $71d5: $98
	sbc h                                            ; $71d6: $9c
	sbc h                                            ; $71d7: $9c
	rlca                                             ; $71d8: $07
	adc [hl]                                         ; $71d9: $8e
	call c, $e676                                    ; $71da: $dc $76 $e6
	sub b                                            ; $71dd: $90
	db $fc                                           ; $71de: $fc
	db $fd                                           ; $71df: $fd
	ld hl, sp+$70                                    ; $71e0: $f8 $70
	cp b                                             ; $71e2: $b8
	ld d, h                                          ; $71e3: $54
	xor e                                            ; $71e4: $ab
	dec d                                            ; $71e5: $15
	nop                                              ; $71e6: $00
	ret nz                                           ; $71e7: $c0

	ld b, a                                          ; $71e8: $47
	ld l, a                                          ; $71e9: $6f
	ldh [hDisp1_SCY], a                                     ; $71ea: $e0 $90
	ld b, b                                          ; $71ec: $40
	ld a, e                                          ; $71ed: $7b
	scf                                              ; $71ee: $37
	sbc e                                            ; $71ef: $9b
	jr c, jr_03d_7202                                ; $71f0: $38 $10

	jr nc, @+$72                                     ; $71f2: $30 $70

	ld a, e                                          ; $71f4: $7b
	dec hl                                           ; $71f5: $2b
	sub e                                            ; $71f6: $93
	inc bc                                           ; $71f7: $03
	ldh a, [$f8]                                     ; $71f8: $f0 $f8
	ld [bc], a                                       ; $71fa: $02
	ld bc, $0100                                     ; $71fb: $01 $00 $01
	nop                                              ; $71fe: $00
	rst $38                                          ; $71ff: $ff
	rrca                                             ; $7200: $0f
	rlca                                             ; $7201: $07

jr_03d_7202:
	ld bc, $f77b                                     ; $7202: $01 $7b $f7
	sbc d                                            ; $7205: $9a
	nop                                              ; $7206: $00
	pop hl                                           ; $7207: $e1
	jp nz, $2a05                                     ; $7208: $c2 $05 $2a

	ld [hl], a                                       ; $720b: $77
	ld d, b                                          ; $720c: $50
	sbc e                                            ; $720d: $9b
	cp $fd                                           ; $720e: $fe $fd
	ld a, [$77d5]                                    ; $7210: $fa $d5 $77
	ld b, a                                          ; $7213: $47
	add hl, sp                                       ; $7214: $39
	nop                                              ; $7215: $00
	add b                                            ; $7216: $80
	inc sp                                           ; $7217: $33
	ld h, [hl]                                       ; $7218: $66
	inc sp                                           ; $7219: $33
	ld b, [hl]                                       ; $721a: $46
	ld b, e                                          ; $721b: $43
	ld h, h                                          ; $721c: $64

jr_03d_721d:
	ld h, [hl]                                       ; $721d: $66
	inc sp                                           ; $721e: $33
	ld [hl], $64                                     ; $721f: $36 $64
	ld d, h                                          ; $7221: $54
	ld b, h                                          ; $7222: $44
	ld b, [hl]                                       ; $7223: $46
	inc sp                                           ; $7224: $33
	dec [hl]                                         ; $7225: $35
	ld d, l                                          ; $7226: $55
	inc sp                                           ; $7227: $33
	inc sp                                           ; $7228: $33
	inc [hl]                                         ; $7229: $34
	ld b, h                                          ; $722a: $44
	ld [hl], $55                                     ; $722b: $36 $55
	ld h, [hl]                                       ; $722d: $66
	ld h, e                                          ; $722e: $63
	ld h, l                                          ; $722f: $65
	ld d, l                                          ; $7230: $55
	ld h, e                                          ; $7231: $63
	inc sp                                           ; $7232: $33
	ld d, [hl]                                       ; $7233: $56
	ld d, h                                          ; $7234: $54
	inc sp                                           ; $7235: $33
	ld a, a                                          ; $7236: $7f
	pop hl                                           ; $7237: $e1
	sbc $66                                          ; $7238: $de $66
	rst SubAFromDE                                          ; $723a: $df
	inc sp                                           ; $723b: $33
	rst SubAFromDE                                          ; $723c: $df
	ld [hl], a                                       ; $723d: $77
	ld a, a                                          ; $723e: $7f
	rst SubAFromDE                                          ; $723f: $df
	ld [hl], a                                       ; $7240: $77
	ld hl, sp-$63                                    ; $7241: $f8 $9d
	inc sp                                           ; $7243: $33
	scf                                              ; $7244: $37
	ld l, a                                          ; $7245: $6f
	or $de                                           ; $7246: $f6 $de
	ld h, [hl]                                       ; $7248: $66
	sbc h                                            ; $7249: $9c
	ld b, [hl]                                       ; $724a: $46
	ld d, [hl]                                       ; $724b: $56
	ld h, e                                          ; $724c: $63
	ld h, c                                          ; $724d: $61
	adc b                                            ; $724e: $88
	adc a                                            ; $724f: $8f
	nop                                              ; $7250: $00
	jr nz, @+$06                                     ; $7251: $20 $04

	ret nz                                           ; $7253: $c0

	jr c, jr_03d_721d                                ; $7254: $38 $c7

	jr c, jr_03d_725f                                ; $7256: $38 $07

	rst $38                                          ; $7258: $ff
	rra                                              ; $7259: $1f
	inc bc                                           ; $725a: $03
	ret nz                                           ; $725b: $c0

	ld hl, sp-$01                                    ; $725c: $f8 $ff
	ccf                                              ; $725e: $3f

jr_03d_725f:
	rlca                                             ; $725f: $07
	cp $9a                                           ; $7260: $fe $9a
	add b                                            ; $7262: $80
	stop                                             ; $7263: $10 $00
	ldh [rAUD3LEVEL], a                              ; $7265: $e0 $1c
	sbc $ff                                          ; $7267: $de $ff
	sbc d                                            ; $7269: $9a
	ld a, a                                          ; $726a: $7f
	rrca                                             ; $726b: $0f
	inc bc                                           ; $726c: $03
	ldh [$fc], a                                     ; $726d: $e0 $fc
	ei                                               ; $726f: $fb
	sbc l                                            ; $7270: $9d
	ld b, b                                          ; $7271: $40
	ld [$ffdb], sp                                   ; $7272: $08 $db $ff
	ld [hl], e                                       ; $7275: $73
	ldh [$fc], a                                     ; $7276: $e0 $fc
	reti                                             ; $7278: $d9


	rst $38                                          ; $7279: $ff
	rlca                                             ; $727a: $07
	ldh a, [$9b]                                     ; $727b: $f0 $9b
	db $fc                                           ; $727d: $fc
	ldh a, [c]                                       ; $727e: $f2
	db $fd                                           ; $727f: $fd
	cp $73                                           ; $7280: $fe $73
	add $da                                          ; $7282: $c6 $da
	ccf                                              ; $7284: $3f
	ld a, e                                          ; $7285: $7b
	and c                                            ; $7286: $a1
	sbc d                                            ; $7287: $9a
	ld b, b                                          ; $7288: $40
	or b                                             ; $7289: $b0
	ret z                                            ; $728a: $c8

	sub $29                                          ; $728b: $d6 $29
	inc bc                                           ; $728d: $03
	ret nz                                           ; $728e: $c0

	dec hl                                           ; $728f: $2b
	ldh a, [$9d]                                     ; $7290: $f0 $9d
	ld [bc], a                                       ; $7292: $02
	ld bc, $6ffb                                     ; $7293: $01 $fb $6f
	xor d                                            ; $7296: $aa
	rst SubAFromDE                                          ; $7297: $df
	rst $38                                          ; $7298: $ff
	sub a                                            ; $7299: $97
	xor d                                            ; $729a: $aa
	ld d, l                                          ; $729b: $55
	xor d                                            ; $729c: $aa
	ld d, l                                          ; $729d: $55
	ld a, [hl+]                                      ; $729e: $2a
	dec d                                            ; $729f: $15
	ld a, [bc]                                       ; $72a0: $0a
	dec b                                            ; $72a1: $05
	ld a, e                                          ; $72a2: $7b
	ld sp, hl                                        ; $72a3: $f9
	add [hl]                                         ; $72a4: $86
	xor d                                            ; $72a5: $aa
	push de                                          ; $72a6: $d5
	ld [$faf5], a                                    ; $72a7: $ea $f5 $fa
	cp a                                             ; $72aa: $bf
	ld e, a                                          ; $72ab: $5f
	xor a                                            ; $72ac: $af
	ld d, a                                          ; $72ad: $57
	xor e                                            ; $72ae: $ab
	ld d, a                                          ; $72af: $57
	xor e                                            ; $72b0: $ab
	ld d, l                                          ; $72b1: $55
	ld b, b                                          ; $72b2: $40
	and b                                            ; $72b3: $a0
	ld d, b                                          ; $72b4: $50
	xor b                                            ; $72b5: $a8
	ld d, h                                          ; $72b6: $54
	xor b                                            ; $72b7: $a8
	ld d, h                                          ; $72b8: $54
	xor d                                            ; $72b9: $aa
	push af                                          ; $72ba: $f5
	push af                                          ; $72bb: $f5
	db $f4                                           ; $72bc: $f4
	cp $dd                                           ; $72bd: $fe $dd
	ld a, [$0dde]                                    ; $72bf: $fa $de $0d
	sbc [hl]                                         ; $72c2: $9e
	inc b                                            ; $72c3: $04
	db $dd                                           ; $72c4: $dd
	ld b, $9b                                        ; $72c5: $06 $9b
	add hl, bc                                       ; $72c7: $09
	add hl, hl                                       ; $72c8: $29
	xor c                                            ; $72c9: $a9
	adc c                                            ; $72ca: $89
	sbc $c8                                          ; $72cb: $de $c8
	sbc l                                            ; $72cd: $9d
	adc b                                            ; $72ce: $88
	cp h                                             ; $72cf: $bc
	sbc $9c                                          ; $72d0: $de $9c
	sbc $9d                                          ; $72d2: $de $9d
	sbc [hl]                                         ; $72d4: $9e
	db $dd                                           ; $72d5: $dd
	sbc $cf                                          ; $72d6: $de $cf
	rst SubAFromDE                                          ; $72d8: $df
	adc a                                            ; $72d9: $8f
	sbc $9f                                          ; $72da: $de $9f
	sbc $d0                                          ; $72dc: $de $d0
	rst SubAFromDE                                          ; $72de: $df
	sub b                                            ; $72df: $90
	sbc $a0                                          ; $72e0: $de $a0
	db $dd                                           ; $72e2: $dd
	rst $38                                          ; $72e3: $ff
	ld a, a                                          ; $72e4: $7f
	and l                                            ; $72e5: $a5
	sbc l                                            ; $72e6: $9d
	cp $fd                                           ; $72e7: $fe $fd
	db $fd                                           ; $72e9: $fd
	ld a, a                                          ; $72ea: $7f
	sub l                                            ; $72eb: $95
	sbc e                                            ; $72ec: $9b
	ld bc, $ea02                                     ; $72ed: $01 $02 $ea
	push de                                          ; $72f0: $d5
	ld [hl], a                                       ; $72f1: $77
	sbc [hl]                                         ; $72f2: $9e
	sbc e                                            ; $72f3: $9b
	xor d                                            ; $72f4: $aa
	ld d, h                                          ; $72f5: $54
	dec d                                            ; $72f6: $15
	ld a, [hl+]                                      ; $72f7: $2a
	ld [hl], a                                       ; $72f8: $77
	ld sp, hl                                        ; $72f9: $f9
	sbc b                                            ; $72fa: $98
	ld d, l                                          ; $72fb: $55
	xor e                                            ; $72fc: $ab
	xor b                                            ; $72fd: $a8
	ld d, b                                          ; $72fe: $50
	and b                                            ; $72ff: $a0
	ld b, b                                          ; $7300: $40
	add b                                            ; $7301: $80
	cp $9a                                           ; $7302: $fe $9a
	ld d, a                                          ; $7304: $57
	xor a                                            ; $7305: $af
	ld e, a                                          ; $7306: $5f
	cp a                                             ; $7307: $bf
	ld a, a                                          ; $7308: $7f
	sbc $ff                                          ; $7309: $de $ff
	sbc [hl]                                         ; $730b: $9e
	ld a, [bc]                                       ; $730c: $0a
	ld a, e                                          ; $730d: $7b
	sub d                                            ; $730e: $92
	sbc [hl]                                         ; $730f: $9e
	cp a                                             ; $7310: $bf
	ld a, e                                          ; $7311: $7b
	ld hl, $696b                                     ; $7312: $21 $6b $69
	sbc e                                            ; $7315: $9b
	ret nz                                           ; $7316: $c0

	db $e3                                           ; $7317: $e3
	sbc h                                            ; $7318: $9c
	rst GetHLinHL                                          ; $7319: $cf
	call c, Call_03d_7ecd                            ; $731a: $dc $cd $7e
	jp nz, $3f9e                                     ; $731d: $c2 $9e $3f

	call c, $9a3e                                    ; $7320: $dc $3e $9a
	add b                                            ; $7323: $80
	ld [hl], b                                       ; $7324: $70
	adc a                                            ; $7325: $8f
	ld [hl], b                                       ; $7326: $70
	rrca                                             ; $7327: $0f
	halt                                             ; $7328: $76
	xor e                                            ; $7329: $ab
	sbc [hl]                                         ; $732a: $9e
	ldh a, [$7a]                                     ; $732b: $f0 $7a
	or b                                             ; $732d: $b0
	ld [hl], d                                       ; $732e: $72
	and e                                            ; $732f: $a3
	sbc c                                            ; $7330: $99
	ld bc, $1ce0                                     ; $7331: $01 $e0 $1c
	db $e3                                           ; $7334: $e3
	inc e                                            ; $7335: $1c
	inc bc                                           ; $7336: $03
	ld a, e                                          ; $7337: $7b
	di                                               ; $7338: $f3
	ld a, [hl]                                       ; $7339: $7e
	and e                                            ; $733a: $a3
	ld a, d                                          ; $733b: $7a
	adc e                                            ; $733c: $8b
	cp $7e                                           ; $733d: $fe $7e
	ld a, [hl]                                       ; $733f: $7e
	sbc h                                            ; $7340: $9c
	add b                                            ; $7341: $80
	ld a, b                                          ; $7342: $78
	add [hl]                                         ; $7343: $86
	sbc $ff                                          ; $7344: $de $ff
	ld a, a                                          ; $7346: $7f
	di                                               ; $7347: $f3
	sbc h                                            ; $7348: $9c
	add b                                            ; $7349: $80
	ld hl, sp-$02                                    ; $734a: $f8 $fe
	ei                                               ; $734c: $fb
	sbc l                                            ; $734d: $9d
	add d                                            ; $734e: $82
	add l                                            ; $734f: $85
	db $db                                           ; $7350: $db
	rst $38                                          ; $7351: $ff
	sub l                                            ; $7352: $95
	ld a, l                                          ; $7353: $7d
	ld a, d                                          ; $7354: $7a
	cp $fc                                           ; $7355: $fe $fc
	db $fc                                           ; $7357: $fc
	ld hl, sp-$08                                    ; $7358: $f8 $f8
	ld sp, hl                                        ; $735a: $f9
	ldh a, [$f1]                                     ; $735b: $f0 $f1
	sbc $3f                                          ; $735d: $de $3f
	rst SubAFromDE                                          ; $735f: $df
	ld a, $de                                        ; $7360: $3e $de
	inc a                                            ; $7362: $3c
	sub e                                            ; $7363: $93
	nop                                              ; $7364: $00
	inc d                                            ; $7365: $14
	jr z, jr_03d_73bc                                ; $7366: $28 $54

	xor [hl]                                         ; $7368: $ae
	ld a, [hl]                                       ; $7369: $7e
	cp $7e                                           ; $736a: $fe $7e
	di                                               ; $736c: $f3
	jp $0303                                         ; $736d: $c3 $03 $03


	db $dd                                           ; $7370: $dd
	ld bc, $c097                                     ; $7371: $01 $97 $c0
	or b                                             ; $7374: $b0
	call z, $f8f3                                    ; $7375: $cc $f3 $f8
	ld sp, hl                                        ; $7378: $f9
	rst FarCall                                          ; $7379: $f7
	db $fd                                           ; $737a: $fd
	ld d, [hl]                                       ; $737b: $56
	ret nc                                           ; $737c: $d0

	sbc e                                            ; $737d: $9b
	ret nz                                           ; $737e: $c0

	ld [hl], b                                       ; $737f: $70
	ret z                                            ; $7380: $c8

	add $db                                          ; $7381: $c6 $db
	rst $38                                          ; $7383: $ff
	sbc l                                            ; $7384: $9d
	rst GetHLinHL                                          ; $7385: $cf
	rst JumpTable                                          ; $7386: $c7
	ld [bc], a                                       ; $7387: $02
	or b                                             ; $7388: $b0
	ld a, [bc]                                       ; $7389: $0a
	or b                                             ; $738a: $b0
	add h                                            ; $738b: $84
	ei                                               ; $738c: $fb
	ld a, l                                          ; $738d: $7d
	cp l                                             ; $738e: $bd
	ld a, l                                          ; $738f: $7d
	cp a                                             ; $7390: $bf
	ld e, [hl]                                       ; $7391: $5e
	xor [hl]                                         ; $7392: $ae

jr_03d_7393:
	ld d, a                                          ; $7393: $57
	ld b, $83                                        ; $7394: $06 $83
	ld b, e                                          ; $7396: $43
	add e                                            ; $7397: $83
	ld b, c                                          ; $7398: $41
	and c                                            ; $7399: $a1
	ld d, c                                          ; $739a: $51
	xor b                                            ; $739b: $a8
	sbc b                                            ; $739c: $98
	sbc b                                            ; $739d: $98
	adc b                                            ; $739e: $88
	xor b                                            ; $739f: $a8
	xor d                                            ; $73a0: $aa
	ld [$ebca], a                                    ; $73a1: $ea $ca $eb
	call $ddcd                                       ; $73a4: $cd $cd $dd
	sbc $cd                                          ; $73a7: $de $cd
	rst SubAFromDE                                          ; $73a9: $df
	db $ed                                           ; $73aa: $ed
	call c, $df9f                                    ; $73ab: $dc $9f $df
	cp a                                             ; $73ae: $bf
	sbc [hl]                                         ; $73af: $9e
	dec a                                            ; $73b0: $3d
	call c, $dfa0                                    ; $73b1: $dc $a0 $df
	add b                                            ; $73b4: $80
	sbc d                                            ; $73b5: $9a
	ld b, d                                          ; $73b6: $42
	ld a, [$eaf5]                                    ; $73b7: $fa $f5 $ea
	push af                                          ; $73ba: $f5
	halt                                             ; $73bb: $76

jr_03d_73bc:
	call z, $059b                                    ; $73bc: $cc $9b $05
	ld a, [bc]                                       ; $73bf: $0a
	dec d                                            ; $73c0: $15
	ld a, [bc]                                       ; $73c1: $0a
	halt                                             ; $73c2: $76
	call z, $c67e                                    ; $73c3: $cc $7e $c6
	ld l, [hl]                                       ; $73c6: $6e
	adc $7e                                          ; $73c7: $ce $7e
	add $6e                                          ; $73c9: $c6 $6e
	adc $47                                          ; $73cb: $ce $47
	add b                                            ; $73cd: $80
	sub d                                            ; $73ce: $92
	rrca                                             ; $73cf: $0f
	jp $1ff0                                         ; $73d0: $c3 $f0 $1f


	ret nz                                           ; $73d3: $c0

	rst $38                                          ; $73d4: $ff
	cp $fe                                           ; $73d5: $fe $fe
	ldh a, [$3c]                                     ; $73d7: $f0 $3c
	rrca                                             ; $73d9: $0f
	nop                                              ; $73da: $00
	pop hl                                           ; $73db: $e1
	ld a, e                                          ; $73dc: $7b
	ld a, h                                          ; $73dd: $7c
	call c, $decd                                    ; $73de: $dc $cd $de
	ld c, l                                          ; $73e1: $4d
	reti                                             ; $73e2: $d9


	ld a, $9b                                        ; $73e3: $3e $9b
	nop                                              ; $73e5: $00
	ld [bc], a                                       ; $73e6: $02
	ld d, l                                          ; $73e7: $55
	xor d                                            ; $73e8: $aa
	sbc $ff                                          ; $73e9: $de $ff
	sbc [hl]                                         ; $73eb: $9e
	and b                                            ; $73ec: $a0
	ld a, [$609b]                                    ; $73ed: $fa $9b $60
	rla                                              ; $73f0: $17
	xor a                                            ; $73f1: $af
	ld e, a                                          ; $73f2: $5f
	ld d, e                                          ; $73f3: $53
	jr c, jr_03d_7393                                ; $73f4: $38 $9d

	ei                                               ; $73f6: $fb
	rst FarCall                                          ; $73f7: $f7
	db $db                                           ; $73f8: $db
	di                                               ; $73f9: $f3
	sbc [hl]                                         ; $73fa: $9e
	ld a, [hl]                                       ; $73fb: $7e
	jp c, $8d0e                                      ; $73fc: $da $0e $8d

	adc d                                            ; $73ff: $8a
	add l                                            ; $7400: $85
	adc e                                            ; $7401: $8b
	add l                                            ; $7402: $85
	adc e                                            ; $7403: $8b
	sub a                                            ; $7404: $97
	xor e                                            ; $7405: $ab
	rst SubAFromHL                                          ; $7406: $d7
	ld [hl], l                                       ; $7407: $75
	ld a, d                                          ; $7408: $7a
	ld [hl], h                                       ; $7409: $74
	ld a, d                                          ; $740a: $7a
	ld [hl], h                                       ; $740b: $74
	ld l, b                                          ; $740c: $68
	ld d, h                                          ; $740d: $54
	jr z, jr_03d_744a                                ; $740e: $28 $3a

	ccf                                              ; $7410: $3f
	ld a, d                                          ; $7411: $7a
	adc d                                            ; $7412: $8a
	sbc e                                            ; $7413: $9b
	ld a, b                                          ; $7414: $78
	rst AddAOntoHL                                          ; $7415: $ef
	rst $38                                          ; $7416: $ff
	db $fc                                           ; $7417: $fc
	ld a, e                                          ; $7418: $7b
	and h                                            ; $7419: $a4
	sbc b                                            ; $741a: $98
	add a                                            ; $741b: $87
	inc b                                            ; $741c: $04
	jr nc, jr_03d_743e                               ; $741d: $30 $1f

	sbc [hl]                                         ; $741f: $9e
	ldh [c], a                                       ; $7420: $e2
	cp $76                                           ; $7421: $fe $76
	adc e                                            ; $7423: $8b
	sub e                                            ; $7424: $93
	ldh a, [rSB]                                     ; $7425: $f0 $01
	ld bc, $fce1                                     ; $7427: $01 $e1 $fc
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	adc a                                            ; $742c: $8f
	ld [$e7fb], sp                                   ; $742d: $08 $fb $e7
	rst SubAFromDE                                          ; $7430: $df
	ld a, c                                          ; $7431: $79
	ld d, $9d                                        ; $7432: $16 $9d
	ld c, $01                                        ; $7434: $0e $01
	ld a, d                                          ; $7436: $7a
	ld a, [bc]                                       ; $7437: $0a
	sbc l                                            ; $7438: $9d
	db $fc                                           ; $7439: $fc
	ld sp, hl                                        ; $743a: $f9
	ld a, e                                          ; $743b: $7b
	or $de                                           ; $743c: $f6 $de

jr_03d_743e:
	di                                               ; $743e: $f3
	rst SubAFromDE                                          ; $743f: $df
	ei                                               ; $7440: $fb
	sbc c                                            ; $7441: $99
	ld a, e                                          ; $7442: $7b
	ld [hl], e                                       ; $7443: $73
	di                                               ; $7444: $f3

jr_03d_7445:
	rst JumpTable                                          ; $7445: $c7
	ld b, a                                          ; $7446: $47
	ld b, a                                          ; $7447: $47
	db $dd                                           ; $7448: $dd
	rst JumpTable                                          ; $7449: $c7

jr_03d_744a:
	sbc h                                            ; $744a: $9c
	rst SubAFromBC                                          ; $744b: $e7
	ld [hl], b                                       ; $744c: $70
	ld [hl], b                                       ; $744d: $70
	db $db                                           ; $744e: $db
	ld [hl], a                                       ; $744f: $77
	ld e, [hl]                                       ; $7450: $5e
	ret nz                                           ; $7451: $c0

	db $dd                                           ; $7452: $dd
	rst $38                                          ; $7453: $ff
	sbc l                                            ; $7454: $9d
	ld [$5355], a                                    ; $7455: $ea $55 $53
	ldh a, [$7a]                                     ; $7458: $f0 $7a
	db $d3                                           ; $745a: $d3
	ld h, d                                          ; $745b: $62
	or b                                             ; $745c: $b0
	ld a, e                                          ; $745d: $7b
	ldh a, [$7f]                                     ; $745e: $f0 $7f
	ldh [c], a                                       ; $7460: $e2
	ld a, a                                          ; $7461: $7f
	ldh a, [$66]                                     ; $7462: $f0 $66
	ld l, a                                          ; $7464: $6f
	ld a, a                                          ; $7465: $7f
	or $9e                                           ; $7466: $f6 $9e
	cp d                                             ; $7468: $ba
	ld [hl], d                                       ; $7469: $72
	xor h                                            ; $746a: $ac
	ld [hl], e                                       ; $746b: $73
	ld a, [hl-]                                      ; $746c: $3a
	sbc $ff                                          ; $746d: $de $ff
	sbc [hl]                                         ; $746f: $9e
	cp a                                             ; $7470: $bf
	ld a, e                                          ; $7471: $7b
	rst FarCall                                          ; $7472: $f7
	ld [hl], a                                       ; $7473: $77
	ldh a, [$9e]                                     ; $7474: $f0 $9e
	ld a, a                                          ; $7476: $7f
	ld l, e                                          ; $7477: $6b
	ldh a, [$7e]                                     ; $7478: $f0 $7e
	db $dd                                           ; $747a: $dd
	sbc [hl]                                         ; $747b: $9e
	cp e                                             ; $747c: $bb
	ld [hl], e                                       ; $747d: $73
	ldh a, [$7e]                                     ; $747e: $f0 $7e
	call $d06b                                       ; $7480: $cd $6b $d0
	sbc [hl]                                         ; $7483: $9e
	ld d, b                                          ; $7484: $50
	ld l, [hl]                                       ; $7485: $6e
	ld a, h                                          ; $7486: $7c
	sbc l                                            ; $7487: $9d
	ld d, l                                          ; $7488: $55
	xor a                                            ; $7489: $af
	ld e, a                                          ; $748a: $5f
	and b                                            ; $748b: $a0

Jump_03d_748c:
	sbc [hl]                                         ; $748c: $9e
	cp a                                             ; $748d: $bf
	ld a, c                                          ; $748e: $79
	jr nc, jr_03d_74e0                               ; $748f: $30 $4f

	add b                                            ; $7491: $80
	rst SubAFromHL                                          ; $7492: $d7
	rst $38                                          ; $7493: $ff
	jp c, $9efe                                      ; $7494: $da $fe $9e

	ld [bc], a                                       ; $7497: $02
	reti                                             ; $7498: $d9


	rst $38                                          ; $7499: $ff
	reti                                             ; $749a: $d9


	ld c, l                                          ; $749b: $4d
	reti                                             ; $749c: $d9


	ld a, $d9                                        ; $749d: $3e $d9
	xor a                                            ; $749f: $af
	reti                                             ; $74a0: $d9


	ld l, a                                          ; $74a1: $6f
	sbc [hl]                                         ; $74a2: $9e
	ld b, c                                          ; $74a3: $41
	ld l, d                                          ; $74a4: $6a
	jr jr_03d_7445                                   ; $74a5: $18 $9e

	add b                                            ; $74a7: $80
	jp c, $9dff                                      ; $74a8: $da $ff $9d

	di                                               ; $74ab: $f3
	adc e                                            ; $74ac: $8b
	db $db                                           ; $74ad: $db
	di                                               ; $74ae: $f3
	sbc l                                            ; $74af: $9d
	ld c, $06                                        ; $74b0: $0e $06
	db $db                                           ; $74b2: $db
	and $8f                                          ; $74b3: $e6 $8f
	cpl                                              ; $74b5: $2f
	ld e, a                                          ; $74b6: $5f
	ccf                                              ; $74b7: $3f
	ld e, a                                          ; $74b8: $5f
	ccf                                              ; $74b9: $3f
	ld a, a                                          ; $74ba: $7f
	ccf                                              ; $74bb: $3f
	ld a, a                                          ; $74bc: $7f
	ld d, b                                          ; $74bd: $50
	jr nz, jr_03d_7500                               ; $74be: $20 $40

	jr nz, jr_03d_7502                               ; $74c0: $20 $40

	nop                                              ; $74c2: $00
	ld b, b                                          ; $74c3: $40
	nop                                              ; $74c4: $00
	call c, $de3f                                    ; $74c5: $dc $3f $de
	cp a                                             ; $74c8: $bf
	call c, $de9f                                    ; $74c9: $dc $9f $de
	rra                                              ; $74cc: $1f
	reti                                             ; $74cd: $d9


	rst $38                                          ; $74ce: $ff
	ld a, l                                          ; $74cf: $7d
	ld sp, $706b                                     ; $74d0: $31 $6b $70
	sbc [hl]                                         ; $74d3: $9e
	ldh a, [$6f]                                     ; $74d4: $f0 $6f
	xor a                                            ; $74d6: $af
	ld a, [hl]                                       ; $74d7: $7e
	or [hl]                                          ; $74d8: $b6

jr_03d_74d9:
	sbc l                                            ; $74d9: $9d
	pop af                                           ; $74da: $f1
	rst AddAOntoHL                                          ; $74db: $ef
	db $dd                                           ; $74dc: $dd
	rst SubAFromBC                                          ; $74dd: $e7
	ld a, d                                          ; $74de: $7a
	and e                                            ; $74df: $a3

jr_03d_74e0:
	sbc [hl]                                         ; $74e0: $9e
	ldh [$6f], a                                     ; $74e1: $e0 $6f
	xor $9c                                          ; $74e3: $ee $9c
	sbc a                                            ; $74e5: $9f
	jr jr_03d_74d9                                   ; $74e6: $18 $f1

	sbc $fe                                          ; $74e8: $de $fe
	sbc d                                            ; $74ea: $9a
	ld [hl], a                                       ; $74eb: $77
	ld [hl], b                                       ; $74ec: $70
	ld [hl], b                                       ; $74ed: $70
	ld [hl], d                                       ; $74ee: $72
	ld [hl], l                                       ; $74ef: $75
	sbc $77                                          ; $74f0: $de $77
	sbc d                                            ; $74f2: $9a
	ld hl, sp-$01                                    ; $74f3: $f8 $ff
	rst $38                                          ; $74f5: $ff
	db $fd                                           ; $74f6: $fd
	ld a, [$f8de]                                    ; $74f7: $fa $de $f8
	cp $dd                                           ; $74fa: $fe $dd
	ld a, a                                          ; $74fc: $7f
	sbc [hl]                                         ; $74fd: $9e
	rrca                                             ; $74fe: $0f
	ld a, e                                          ; $74ff: $7b

jr_03d_7500:
	scf                                              ; $7500: $37
	sbc [hl]                                         ; $7501: $9e

jr_03d_7502:
	pop af                                           ; $7502: $f1
	sbc $f0                                          ; $7503: $de $f0
	ld a, [hl]                                       ; $7505: $7e
	ld a, h                                          ; $7506: $7c
	ld a, b                                          ; $7507: $78
	db $ed                                           ; $7508: $ed
	sbc e                                            ; $7509: $9b
	add b                                            ; $750a: $80
	ret nz                                           ; $750b: $c0

	rst SubAFromBC                                          ; $750c: $e7
	push hl                                          ; $750d: $e5
	ld h, c                                          ; $750e: $61
	db $ed                                           ; $750f: $ed
	db $fd                                           ; $7510: $fd
	sbc h                                            ; $7511: $9c
	dec d                                            ; $7512: $15
	rst $38                                          ; $7513: $ff
	ld d, h                                          ; $7514: $54
	ld [hl], e                                       ; $7515: $73
	ldh a, [$9e]                                     ; $7516: $f0 $9e
	ld [$f073], a                                    ; $7518: $ea $73 $f0
	sbc h                                            ; $751b: $9c
	dec b                                            ; $751c: $05
	xor e                                            ; $751d: $ab
	ld e, a                                          ; $751e: $5f
	ld [hl], e                                       ; $751f: $73
	ld [$fa9d], a                                    ; $7520: $ea $9d $fa
	ld d, h                                          ; $7523: $54
	ld [hl], h                                       ; $7524: $74
	ld h, d                                          ; $7525: $62
	rst $38                                          ; $7526: $ff
	sbc e                                            ; $7527: $9b
	cp e                                             ; $7528: $bb
	xor [hl]                                         ; $7529: $ae
	rst SubAFromDE                                          ; $752a: $df
	ldh a, [$fd]                                     ; $752b: $f0 $fd
	sbc h                                            ; $752d: $9c
	ld l, c                                          ; $752e: $69
	ld l, e                                          ; $752f: $6b
	ld a, $73                                        ; $7530: $3e $73
	ldh a, [$9a]                                     ; $7532: $f0 $9a
	xor b                                            ; $7534: $a8
	push af                                          ; $7535: $f5
	rst $38                                          ; $7536: $ff
	nop                                              ; $7537: $00
	ld d, l                                          ; $7538: $55
	ld [hl], h                                       ; $7539: $74
	ld l, l                                          ; $753a: $6d
	sbc e                                            ; $753b: $9b
	ld a, [bc]                                       ; $753c: $0a
	nop                                              ; $753d: $00
	rst $38                                          ; $753e: $ff
	xor d                                            ; $753f: $aa
	ld [hl], a                                       ; $7540: $77
	sub $7e                                          ; $7541: $d6 $7e
	pop bc                                           ; $7543: $c1
	ld a, e                                          ; $7544: $7b
	ld b, a                                          ; $7545: $47
	ld a, e                                          ; $7546: $7b
	ret nz                                           ; $7547: $c0

	ld a, d                                          ; $7548: $7a
	ld l, d                                          ; $7549: $6a
	ld a, h                                          ; $754a: $7c
	ld h, l                                          ; $754b: $65
	cp $9b                                           ; $754c: $fe $9b
	ld d, h                                          ; $754e: $54
	xor e                                            ; $754f: $ab
	rlca                                             ; $7550: $07
	rlca                                             ; $7551: $07
	ld [hl], a                                       ; $7552: $77
	ldh a, [$9b]                                     ; $7553: $f0 $9b
	xor e                                            ; $7555: $ab
	ld d, h                                          ; $7556: $54
	add sp, -$18                                     ; $7557: $e8 $e8
	ld a, e                                          ; $7559: $7b
	ldh a, [$9a]                                     ; $755a: $f0 $9a
	ld a, a                                          ; $755c: $7f
	cp $f9                                           ; $755d: $fe $f9
	db $e4                                           ; $755f: $e4
	sub b                                            ; $7560: $90
	ld [hl], h                                       ; $7561: $74
	ld [hl], l                                       ; $7562: $75
	sub e                                            ; $7563: $93
	ld bc, $1806                                     ; $7564: $01 $06 $18
	ld h, b                                          ; $7567: $60
	ld [bc], a                                       ; $7568: $02
	ld a, [bc]                                       ; $7569: $0a
	ld c, $16                                        ; $756a: $0e $16
	ld e, $fe                                        ; $756c: $1e $fe
	ld [bc], a                                       ; $756e: $02
	ld [bc], a                                       ; $756f: $02
	jp c, $3e03                                      ; $7570: $da $03 $3e

	ret nz                                           ; $7573: $c0

	sub [hl]                                         ; $7574: $96
	and b                                            ; $7575: $a0
	xor b                                            ; $7576: $a8
	xor l                                            ; $7577: $ad
	and a                                            ; $7578: $a7
	and a                                            ; $7579: $a7
	xor a                                            ; $757a: $af
	and b                                            ; $757b: $a0
	ld l, a                                          ; $757c: $6f
	ld l, a                                          ; $757d: $6f
	call c, $9760                                    ; $757e: $dc $60 $97
	ld l, a                                          ; $7581: $6f
	rst $38                                          ; $7582: $ff
	ld [bc], a                                       ; $7583: $02
	jp $fbf2                                         ; $7584: $c3 $f2 $fb


	ld a, [$7afb]                                    ; $7587: $fa $fb $7a
	sub b                                            ; $758a: $90
	call c, Call_03d_7e06                            ; $758b: $dc $06 $7e
	ret nz                                           ; $758e: $c0

	sbc b                                            ; $758f: $98
	di                                               ; $7590: $f3
	inc sp                                           ; $7591: $33
	inc sp                                           ; $7592: $33
	di                                               ; $7593: $f3
	ld [hl-], a                                      ; $7594: $32
	di                                               ; $7595: $f3
	ld [hl-], a                                      ; $7596: $32
	sbc $e6                                          ; $7597: $de $e6
	db $dd                                           ; $7599: $dd
	ld h, $9e                                        ; $759a: $26 $9e
	and $76                                          ; $759c: $e6 $76
	call nz, Call_03d_7f9b                           ; $759e: $c4 $9b $7f
	ld a, [hl]                                       ; $75a1: $7e
	ld a, a                                          ; $75a2: $7f
	ld a, [hl]                                       ; $75a3: $7e
	halt                                             ; $75a4: $76
	call nz, $defd                                   ; $75a5: $c4 $fd $de
	cp a                                             ; $75a8: $bf
	sbc d                                            ; $75a9: $9a
	and b                                            ; $75aa: $a0
	cp a                                             ; $75ab: $bf
	and b                                            ; $75ac: $a0
	and b                                            ; $75ad: $a0
	xor b                                            ; $75ae: $a8
	db $dd                                           ; $75af: $dd
	rra                                              ; $75b0: $1f
	rst $38                                          ; $75b1: $ff
	sbc l                                            ; $75b2: $9d
	rra                                              ; $75b3: $1f
	rla                                              ; $75b4: $17
	sbc $ff                                          ; $75b5: $de $ff
	sbc h                                            ; $75b7: $9c
	ccf                                              ; $75b8: $3f
	sbc a                                            ; $75b9: $9f
	ld a, a                                          ; $75ba: $7f
	ld a, e                                          ; $75bb: $7b
	sub a                                            ; $75bc: $97
	sbc $ff                                          ; $75bd: $de $ff
	sbc e                                            ; $75bf: $9b
	ld a, a                                          ; $75c0: $7f
	ld bc, $fdfd                                     ; $75c1: $01 $fd $fd
	sbc $ef                                          ; $75c4: $de $ef
	sbc $e7                                          ; $75c6: $de $e7
	rst SubAFromDE                                          ; $75c8: $df
	rst AddAOntoHL                                          ; $75c9: $ef
	sbc $f7                                          ; $75ca: $de $f7
	ld a, d                                          ; $75cc: $7a
	inc sp                                           ; $75cd: $33
	sbc l                                            ; $75ce: $9d
	or $f0                                           ; $75cf: $f6 $f0
	call c, $defe                                    ; $75d1: $dc $fe $de
	or $dc                                           ; $75d4: $f6 $dc
	cp $99                                           ; $75d6: $fe $99
	ld c, $ee                                        ; $75d8: $0e $ee
	ld c, $7f                                        ; $75da: $0e $7f
	ld a, l                                          ; $75dc: $7d
	ld a, d                                          ; $75dd: $7a
	ld a, c                                          ; $75de: $79
	dec [hl]                                         ; $75df: $35
	sbc l                                            ; $75e0: $9d
	ld a, b                                          ; $75e1: $78
	ld [hl], b                                       ; $75e2: $70
	reti                                             ; $75e3: $d9


	ldh a, [$7e]                                     ; $75e4: $f0 $7e
	and c                                            ; $75e6: $a1
	sbc [hl]                                         ; $75e7: $9e
	ld [hl], b                                       ; $75e8: $70
	db $dd                                           ; $75e9: $dd
	ld a, a                                          ; $75ea: $7f
	sbc $ff                                          ; $75eb: $de $ff
	sbc [hl]                                         ; $75ed: $9e
	rst AddAOntoHL                                          ; $75ee: $ef
	ld a, c                                          ; $75ef: $79
	ld b, b                                          ; $75f0: $40
	sbc e                                            ; $75f1: $9b
	rst $38                                          ; $75f2: $ff
	inc b                                            ; $75f3: $04
	rlca                                             ; $75f4: $07
	add a                                            ; $75f5: $87
	db $db                                           ; $75f6: $db
	rst SubAFromBC                                          ; $75f7: $e7
	adc c                                            ; $75f8: $89
	ld hl, sp+$78                                    ; $75f9: $f8 $78
	jr @+$1a                                         ; $75fb: $18 $18

	ret c                                            ; $75fd: $d8

	ld hl, sp-$08                                    ; $75fe: $f8 $f8

jr_03d_7600:
	jr c, jr_03d_7600                                ; $7600: $38 $fe

	nop                                              ; $7602: $00
	ld bc, $7323                                     ; $7603: $01 $23 $73
	ld a, [hl-]                                      ; $7606: $3a
	ld c, $86                                        ; $7607: $0e $86
	nop                                              ; $7609: $00
	rst $38                                          ; $760a: $ff
	cp $dc                                           ; $760b: $fe $dc
	adc h                                            ; $760d: $8c
	inc b                                            ; $760e: $04
	ld a, e                                          ; $760f: $7b
	dec de                                           ; $7610: $1b
	ld [hl], d                                       ; $7611: $72
	xor h                                            ; $7612: $ac
	sbc h                                            ; $7613: $9c
	ld hl, sp-$07                                    ; $7614: $f8 $f9
	ld a, a                                          ; $7616: $7f
	ld [hl], b                                       ; $7617: $70
	adc e                                            ; $7618: $8b
	sbc l                                            ; $7619: $9d
	ld [hl], a                                       ; $761a: $77
	halt                                             ; $761b: $76
	ld [hl], d                                       ; $761c: $72
	sbc d                                            ; $761d: $9a
	halt                                             ; $761e: $76
	and h                                            ; $761f: $a4
	ld l, b                                          ; $7620: $68
	ld a, e                                          ; $7621: $7b
	ld l, e                                          ; $7622: $6b
	ldh a, [$7e]                                     ; $7623: $f0 $7e
	ld c, l                                          ; $7625: $4d
	ld l, a                                          ; $7626: $6f
	ldh a, [$9e]                                     ; $7627: $f0 $9e
	db $fd                                           ; $7629: $fd
	ld a, e                                          ; $762a: $7b
	db $fc                                           ; $762b: $fc
	sbc l                                            ; $762c: $9d
	db $fc                                           ; $762d: $fc
	ldh a, [$de]                                     ; $762e: $f0 $de
	ret nz                                           ; $7630: $c0

	ld a, e                                          ; $7631: $7b
	ldh a, [$97]                                     ; $7632: $f0 $97
	inc bc                                           ; $7634: $03
	rrca                                             ; $7635: $0f
	inc a                                            ; $7636: $3c
	jr nc, @+$22                                     ; $7637: $30 $20

	ld l, a                                          ; $7639: $6f
	xor $e8                                          ; $763a: $ee $e8
	call c, $9ce0                                    ; $763c: $dc $e0 $9c
	sub b                                            ; $763f: $90
	ld de, $dc14                                     ; $7640: $11 $14 $dc
	db $10                                           ; $7643: $10
	sbc [hl]                                         ; $7644: $9e
	ret nz                                           ; $7645: $c0

	ldh a, [c]                                       ; $7646: $f2
	sbc h                                            ; $7647: $9c
	sbc $02                                          ; $7648: $de $02
	sbc $dc                                          ; $764a: $de $dc
	ld [bc], a                                       ; $764c: $02
	sbc l                                            ; $764d: $9d
	inc hl                                           ; $764e: $23
	rst $38                                          ; $764f: $ff
	call c, Call_03d_4223                            ; $7650: $dc $23 $42
	ret nz                                           ; $7653: $c0

	sbc h                                            ; $7654: $9c
	and c                                            ; $7655: $a1
	xor a                                            ; $7656: $af
	xor a                                            ; $7657: $af
	sbc $a7                                          ; $7658: $de $a7
	sbc d                                            ; $765a: $9a
	and c                                            ; $765b: $a1
	and b                                            ; $765c: $a0
	ld l, [hl]                                       ; $765d: $6e
	ld h, b                                          ; $765e: $60
	ld h, b                                          ; $765f: $60
	sbc $68                                          ; $7660: $de $68
	ld a, a                                          ; $7662: $7f
	ld a, [$fbda]                                    ; $7663: $fa $da $fb
	sbc [hl]                                         ; $7666: $9e
	ld [bc], a                                       ; $7667: $02
	jp c, $9b06                                      ; $7668: $da $06 $9b

	rrca                                             ; $766b: $0f
	ld h, d                                          ; $766c: $62
	inc sp                                           ; $766d: $33
	inc sp                                           ; $766e: $33
	call c, $9e32                                    ; $766f: $dc $32 $9e
	or [hl]                                          ; $7672: $b6
	db $db                                           ; $7673: $db
	ld h, $96                                        ; $7674: $26 $96
	and $75                                          ; $7676: $e6 $75
	ld l, d                                          ; $7678: $6a
	ld d, l                                          ; $7679: $55
	ld a, [hl+]                                      ; $767a: $2a
	ld b, l                                          ; $767b: $45
	ld [hl+], a                                      ; $767c: $22
	ld b, c                                          ; $767d: $41
	ld [bc], a                                       ; $767e: $02
	ld sp, hl                                        ; $767f: $f9
	add b                                            ; $7680: $80
	and d                                            ; $7681: $a2
	or a                                             ; $7682: $b7
	and a                                            ; $7683: $a7
	xor a                                            ; $7684: $af
	xor e                                            ; $7685: $ab
	cp a                                             ; $7686: $bf
	xor a                                            ; $7687: $af
	or a                                             ; $7688: $b7
	dec d                                            ; $7689: $15
	inc bc                                           ; $768a: $03
	inc bc                                           ; $768b: $03
	rlca                                             ; $768c: $07
	rrca                                             ; $768d: $0f
	rrca                                             ; $768e: $0f
	inc bc                                           ; $768f: $03
	rrca                                             ; $7690: $0f
	inc bc                                           ; $7691: $03
	and e                                            ; $7692: $a3
	add e                                            ; $7693: $83
	db $e3                                           ; $7694: $e3
	or a                                             ; $7695: $b7
	rst FarCall                                          ; $7696: $f7
	dec c                                            ; $7697: $0d
	db $fd                                           ; $7698: $fd
	db $fd                                           ; $7699: $fd
	ld e, l                                          ; $769a: $5d
	adc l                                            ; $769b: $8d
	pop bc                                           ; $769c: $c1
	pop hl                                           ; $769d: $e1
	ei                                               ; $769e: $fb
	rst FarCall                                          ; $769f: $f7
	sub [hl]                                         ; $76a0: $96
	db $fd                                           ; $76a1: $fd
	ldh [$e0], a                                     ; $76a2: $e0 $e0
	pop hl                                           ; $76a4: $e1
	ldh a, [$f1]                                     ; $76a5: $f0 $f1
	rst SubAFromBC                                          ; $76a7: $e7
	db $e3                                           ; $76a8: $e3
	rst SubAFromBC                                          ; $76a9: $e7
	sbc $f0                                          ; $76aa: $de $f0
	sbc l                                            ; $76ac: $9d
	pop hl                                           ; $76ad: $e1
	ldh [$de], a                                     ; $76ae: $e0 $de
	di                                               ; $76b0: $f3
	rst SubAFromDE                                          ; $76b1: $df
	ld b, $90                                        ; $76b2: $06 $90
	add $e6                                          ; $76b4: $c6 $e6
	and $f6                                          ; $76b6: $e6 $f6
	cp $f6                                           ; $76b8: $fe $f6
	ld c, $8e                                        ; $76ba: $0e $8e
	adc [hl]                                         ; $76bc: $8e
	adc $ce                                          ; $76bd: $ce $ce
	xor $e6                                          ; $76bf: $ee $e6
	or $78                                           ; $76c1: $f6 $78
	jp c, $d970                                      ; $76c3: $da $70 $d9

	ldh a, [$d9]                                     ; $76c6: $f0 $d9
	rst $38                                          ; $76c8: $ff
	db $db                                           ; $76c9: $db
	inc b                                            ; $76ca: $04
	sbc l                                            ; $76cb: $9d
	ld b, h                                          ; $76cc: $44
	ld a, h                                          ; $76cd: $7c
	reti                                             ; $76ce: $d9


	rst SubAFromBC                                          ; $76cf: $e7
	jp c, $9d38                                      ; $76d0: $da $38 $9d

	ld a, b                                          ; $76d3: $78
	ldh [$da], a                                     ; $76d4: $e0 $da
	ldh a, [$9e]                                     ; $76d6: $f0 $9e
	ld d, $dd                                        ; $76d8: $16 $dd
	ld h, [hl]                                       ; $76da: $66
	sbc e                                            ; $76db: $9b
	ld h, $06                                        ; $76dc: $26 $06
	ld b, $70                                        ; $76de: $06 $70
	cp $df                                           ; $76e0: $fe $df
	ld [$78df], sp                                   ; $76e2: $08 $df $78
	sbc d                                            ; $76e5: $9a
	adc c                                            ; $76e6: $89
	ld bc, $7101                                     ; $76e7: $01 $01 $71
	ld sp, hl                                        ; $76ea: $f9
	ld a, d                                          ; $76eb: $7a
	sbc a                                            ; $76ec: $9f
	ld h, l                                          ; $76ed: $65
	ld e, l                                          ; $76ee: $5d
	ld a, l                                          ; $76ef: $7d
	ld hl, $057e                                     ; $76f0: $21 $7e $05
	ld [hl], a                                       ; $76f3: $77
	rst FarCall                                          ; $76f4: $f7
	sbc e                                            ; $76f5: $9b
	ld l, h                                          ; $76f6: $6c
	inc c                                            ; $76f7: $0c
	db $fc                                           ; $76f8: $fc
	db $fc                                           ; $76f9: $fc
	db $fd                                           ; $76fa: $fd
	sbc l                                            ; $76fb: $9d
	sbc [hl]                                         ; $76fc: $9e
	adc [hl]                                         ; $76fd: $8e
	sbc $fe                                          ; $76fe: $de $fe
	cp $db                                           ; $7700: $fe $db
	ret nz                                           ; $7702: $c0

	ld a, a                                          ; $7703: $7f
	reti                                             ; $7704: $d9


	db $dd                                           ; $7705: $dd
	jr nz, @-$63                                     ; $7706: $20 $9b

	jr nc, jr_03d_7746                               ; $7708: $30 $3c

	rlca                                             ; $770a: $07
	nop                                              ; $770b: $00
	reti                                             ; $770c: $d9


	ldh [$da], a                                     ; $770d: $e0 $da
	db $10                                           ; $770f: $10
	sbc [hl]                                         ; $7710: $9e
	inc e                                            ; $7711: $1c
	pop af                                           ; $7712: $f1
	ld a, c                                          ; $7713: $79
	add l                                            ; $7714: $85
	call c, $d902                                    ; $7715: $dc $02 $d9
	inc bc                                           ; $7718: $03
	ld b, [hl]                                       ; $7719: $46
	ret nz                                           ; $771a: $c0

	sbc [hl]                                         ; $771b: $9e
	and b                                            ; $771c: $a0
	ld h, h                                          ; $771d: $64
	ld b, b                                          ; $771e: $40
	jp c, $9b60                                      ; $771f: $da $60 $9b

	ld [bc], a                                       ; $7722: $02
	set 6, e                                         ; $7723: $cb $f3
	di                                               ; $7725: $f3
	db $dd                                           ; $7726: $dd
	ei                                               ; $7727: $fb
	ld l, l                                          ; $7728: $6d
	add c                                            ; $7729: $81
	rst SubAFromDE                                          ; $772a: $df
	ld b, $9b                                        ; $772b: $06 $9b
	ld [hl+], a                                      ; $772d: $22
	or d                                             ; $772e: $b2
	or d                                             ; $772f: $b2
	and d                                            ; $7730: $a2
	db $dd                                           ; $7731: $dd
	ld [hl-], a                                      ; $7732: $32
	sbc e                                            ; $7733: $9b
	or $26                                           ; $7734: $f6 $26
	ld h, $36                                        ; $7736: $26 $36
	db $dd                                           ; $7738: $dd
	ld h, $9c                                        ; $7739: $26 $9c
	ld b, c                                          ; $773b: $41
	nop                                              ; $773c: $00
	ld bc, $fe7b                                     ; $773d: $01 $7b $fe
	rst FarCall                                          ; $7740: $f7
	add b                                            ; $7741: $80
	xor a                                            ; $7742: $af
	cp a                                             ; $7743: $bf
	and c                                            ; $7744: $a1
	cp d                                             ; $7745: $ba

jr_03d_7746:
	cp e                                             ; $7746: $bb
	sub e                                            ; $7747: $93
	adc a                                            ; $7748: $8f
	adc a                                            ; $7749: $8f
	rra                                              ; $774a: $1f
	rrca                                             ; $774b: $0f
	nop                                              ; $774c: $00
	rra                                              ; $774d: $1f
	rrca                                             ; $774e: $0f
	rrca                                             ; $774f: $0f
	dec de                                           ; $7750: $1b
	dec de                                           ; $7751: $1b
	ei                                               ; $7752: $fb
	pop hl                                           ; $7753: $e1
	di                                               ; $7754: $f3
	rra                                              ; $7755: $1f
	rst FarCall                                          ; $7756: $f7
	cp l                                             ; $7757: $bd
	rst $38                                          ; $7758: $ff
	call c, $e0fd                                    ; $7759: $dc $fd $e0
	rrca                                             ; $775c: $0f
	rst $38                                          ; $775d: $ff
	cp l                                             ; $775e: $bd
	db $db                                           ; $775f: $db
	rst $38                                          ; $7760: $ff
	sbc h                                            ; $7761: $9c
	rst $38                                          ; $7762: $ff
	db $ed                                           ; $7763: $ed
	rst AddAOntoHL                                          ; $7764: $ef
	sbc $e3                                          ; $7765: $de $e3
	sub l                                            ; $7767: $95
	rst SubAFromBC                                          ; $7768: $e7
	add a                                            ; $7769: $87
	ld h, [hl]                                       ; $776a: $66
	di                                               ; $776b: $f3
	scf                                              ; $776c: $37
	rst FarCall                                          ; $776d: $f7
	rst FarCall                                          ; $776e: $f7
	ld [hl], a                                       ; $776f: $77
	ld [hl], a                                       ; $7770: $77
	ldh a, [$78]                                     ; $7771: $f0 $78
	ld c, l                                          ; $7773: $4d
	sub c                                            ; $7774: $91
	or $fa                                           ; $7775: $f6 $fa
	ldh a, [c]                                       ; $7777: $f2
	cp $ee                                           ; $7778: $fe $ee
	ldh a, [$f6]                                     ; $777a: $f0 $f6
	cp $e0                                           ; $777c: $fe $e0
	or $f6                                           ; $777e: $f6 $f6
	ldh [c], a                                       ; $7780: $e2
	ld e, $ff                                        ; $7781: $1e $ff
	sbc $70                                          ; $7783: $de $70
	call c, Call_03d_5e30                            ; $7785: $dc $30 $5e
	ret nz                                           ; $7788: $c0

	sbc l                                            ; $7789: $9d
	db $fc                                           ; $778a: $fc
	ldh [$fd], a                                     ; $778b: $e0 $fd
	sbc l                                            ; $778d: $9d
	ld a, e                                          ; $778e: $7b
	inc e                                            ; $778f: $1c
	ld [hl], e                                       ; $7790: $73
	ld sp, hl                                        ; $7791: $f9
	sbc l                                            ; $7792: $9d
	nop                                              ; $7793: $00
	rst SubAFromBC                                          ; $7794: $e7
	db $db                                           ; $7795: $db
	ld h, a                                          ; $7796: $67
	sbc l                                            ; $7797: $9d
	rst SubAFromBC                                          ; $7798: $e7
	sbc b                                            ; $7799: $98
	jp c, $dd18                                      ; $779a: $da $18 $dd

	ldh a, [$9b]                                     ; $779d: $f0 $9b
	pop af                                           ; $779f: $f1
	di                                               ; $77a0: $f3
	rst AddAOntoHL                                          ; $77a1: $ef
	rst $38                                          ; $77a2: $ff
	db $dd                                           ; $77a3: $dd
	ld h, $df                                        ; $77a4: $26 $df
	daa                                              ; $77a6: $27
	sub [hl]                                         ; $77a7: $96
	cpl                                              ; $77a8: $2f
	ccf                                              ; $77a9: $3f
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	ld b, b                                          ; $77ac: $40
	xor d                                            ; $77ad: $aa
	db $fd                                           ; $77ae: $fd
	rst $38                                          ; $77af: $ff
	ld d, l                                          ; $77b0: $55
	ret c                                            ; $77b1: $d8

	rst $38                                          ; $77b2: $ff
	ld [hl], h                                       ; $77b3: $74
	adc b                                            ; $77b4: $88
	sbc e                                            ; $77b5: $9b
	ld d, b                                          ; $77b6: $50
	xor b                                            ; $77b7: $a8
	ld d, b                                          ; $77b8: $50
	pop af                                           ; $77b9: $f1
	jp c, $76ff                                      ; $77ba: $da $ff $76

	call $019a                                       ; $77bd: $cd $9a $01
	ld a, [bc]                                       ; $77c0: $0a
	rlca                                             ; $77c1: $07
	inc bc                                           ; $77c2: $03
	ld b, c                                          ; $77c3: $41
	jp c, Jump_03d_7cff                              ; $77c4: $da $ff $7c

	ld d, b                                          ; $77c7: $50
	ld h, e                                          ; $77c8: $63
	ret c                                            ; $77c9: $d8

	sbc b                                            ; $77ca: $98
	add b                                            ; $77cb: $80
	ld [hl], b                                       ; $77cc: $70
	ld hl, sp-$02                                    ; $77cd: $f8 $fe
	cp $ff                                           ; $77cf: $fe $ff
	db $ec                                           ; $77d1: $ec
	jp c, $9eef                                      ; $77d2: $da $ef $9e

	inc de                                           ; $77d5: $13
	jp c, Jump_03d_7e10                              ; $77d6: $da $10 $7e

	xor a                                            ; $77d9: $af
	db $db                                           ; $77da: $db
	rst $38                                          ; $77db: $ff
	sbc [hl]                                         ; $77dc: $9e
	ldh [$78], a                                     ; $77dd: $e0 $78
	or d                                             ; $77df: $b2
	db $fd                                           ; $77e0: $fd
	rst SubAFromDE                                          ; $77e1: $df
	ld [bc], a                                       ; $77e2: $02
	ld a, e                                          ; $77e3: $7b
	cp l                                             ; $77e4: $bd
	sbc b                                            ; $77e5: $98
	inc bc                                           ; $77e6: $03
	sub a                                            ; $77e7: $97
	xor e                                            ; $77e8: $ab
	inc bc                                           ; $77e9: $03
	add e                                            ; $77ea: $83
	inc bc                                           ; $77eb: $03
	nop                                              ; $77ec: $00
	ld [hl], a                                       ; $77ed: $77
	and e                                            ; $77ee: $a3
	db $dd                                           ; $77ef: $dd
	ld c, l                                          ; $77f0: $4d
	db $dd                                           ; $77f1: $dd
	call Call_03d_405c                               ; $77f2: $cd $5c $40
	sbc [hl]                                         ; $77f5: $9e
	sbc a                                            ; $77f6: $9f
	ld [hl], e                                       ; $77f7: $73
	adc $de                                          ; $77f8: $ce $de
	ld h, b                                          ; $77fa: $60
	ld [hl], e                                       ; $77fb: $73
	adc $7f                                          ; $77fc: $ce $7f
	ret z                                            ; $77fe: $c8

	ld a, a                                          ; $77ff: $7f
	cp $6f                                           ; $7800: $fe $6f
	and b                                            ; $7802: $a0
	ld a, a                                          ; $7803: $7f
	rst FarCall                                          ; $7804: $f7
	ld [hl], e                                       ; $7805: $73
	ret nz                                           ; $7806: $c0

	sbc l                                            ; $7807: $9d
	ld a, [$dc02]                                    ; $7808: $fa $02 $dc
	ldh a, [c]                                       ; $780b: $f2
	rst SubAFromDE                                          ; $780c: $df
	ld b, $7c                                        ; $780d: $06 $7c
	sub d                                            ; $780f: $92
	db $dd                                           ; $7810: $dd

jr_03d_7811:
	ld c, $fd                                        ; $7811: $0e $fd
	ld a, b                                          ; $7813: $78
	ld b, h                                          ; $7814: $44
	sbc [hl]                                         ; $7815: $9e
	jr nz, jr_03d_7811                               ; $7816: $20 $f9

	sbc d                                            ; $7818: $9a
	rst SubAFromDE                                          ; $7819: $df
	db $fc                                           ; $781a: $fc
	jp $f8ff                                         ; $781b: $c3 $ff $f8


	cp $7b                                           ; $781e: $fe $7b
	jp $039d                                         ; $7820: $c3 $9d $03


	ld a, h                                          ; $7823: $7c
	cp $9b                                           ; $7824: $fe $9b
	jp $f83f                                         ; $7826: $c3 $3f $f8


	add b                                            ; $7829: $80
	db $fc                                           ; $782a: $fc
	sbc l                                            ; $782b: $9d
	inc bc                                           ; $782c: $03
	inc a                                            ; $782d: $3c
	ld [hl], b                                       ; $782e: $70
	push af                                          ; $782f: $f5
	sbc [hl]                                         ; $7830: $9e
	rst FarCall                                          ; $7831: $f7
	ld l, a                                          ; $7832: $6f
	ldh a, [c]                                       ; $7833: $f2
	sbc l                                            ; $7834: $9d
	nop                                              ; $7835: $00
	scf                                              ; $7836: $37
	ld l, b                                          ; $7837: $68
	rst SubAFromBC                                          ; $7838: $e7
	reti                                             ; $7839: $d9


	rlca                                             ; $783a: $07
	ld sp, hl                                        ; $783b: $f9
	sub a                                            ; $783c: $97
	jr jr_03d_7877                                   ; $783d: $18 $38

	jr jr_03d_786d                                   ; $783f: $18 $2c

	inc e                                            ; $7841: $1c
	ld c, $1e                                        ; $7842: $0e $1e
	rrca                                             ; $7844: $0f
	reti                                             ; $7845: $d9


	ldh a, [$fb]                                     ; $7846: $f0 $fb
	sub b                                            ; $7848: $90
	ld bc, $0003                                     ; $7849: $01 $03 $00
	ld bc, $0502                                     ; $784c: $01 $02 $05
	xor d                                            ; $784f: $aa
	ld d, l                                          ; $7850: $55
	xor e                                            ; $7851: $ab
	ld e, a                                          ; $7852: $5f
	rst SubAFromBC                                          ; $7853: $e7
	and $e1                                          ; $7854: $e6 $e1
	rst GetHLinHL                                          ; $7856: $cf
	add a                                            ; $7857: $87
	ld a, b                                          ; $7858: $78
	ld sp, $189b                                     ; $7859: $31 $9b $18
	add hl, de                                       ; $785c: $19
	rra                                              ; $785d: $1f
	ccf                                              ; $785e: $3f
	ld [hl], h                                       ; $785f: $74
	ld a, [hl+]                                      ; $7860: $2a
	sbc [hl]                                         ; $7861: $9e
	ld l, d                                          ; $7862: $6a
	db $d3                                           ; $7863: $d3
	rst $38                                          ; $7864: $ff
	sbc l                                            ; $7865: $9d
	ldh [$aa], a                                     ; $7866: $e0 $aa
	ld a, e                                          ; $7868: $7b
	db $fc                                           ; $7869: $fc
	sub $ff                                          ; $786a: $d6 $ff
	ld a, h                                          ; $786c: $7c

jr_03d_786d:
	ldh a, [hDisp0_SCY]                                     ; $786d: $f0 $83
	rst SubAFromBC                                          ; $786f: $e7
	db $ec                                           ; $7870: $ec
	ld [$d3d1], sp                                   ; $7871: $08 $d1 $d3
	sbc h                                            ; $7874: $9c
	add hl, sp                                       ; $7875: $39
	db $fd                                           ; $7876: $fd

jr_03d_7877:
	ld hl, sp-$10                                    ; $7877: $f8 $f0
	ldh a, [$e0]                                     ; $7879: $f0 $e0
	ldh [$e3], a                                     ; $787b: $e0 $e3
	rst JumpTable                                          ; $787d: $c7
	xor c                                            ; $787e: $a9
	ret nc                                           ; $787f: $d0

	ld l, c                                          ; $7880: $69
	db $d3                                           ; $7881: $d3
	xor a                                            ; $7882: $af
	rra                                              ; $7883: $1f
	ld a, a                                          ; $7884: $7f
	cp $57                                           ; $7885: $fe $57
	cpl                                              ; $7887: $2f
	rla                                              ; $7888: $17
	cpl                                              ; $7889: $2f
	ld e, a                                          ; $788a: $5f
	reti                                             ; $788b: $d9


	rst $38                                          ; $788c: $ff
	sbc h                                            ; $788d: $9c
	rst SubAFromBC                                          ; $788e: $e7
	add e                                            ; $788f: $83
	ld hl, $ffda                                     ; $7890: $21 $da $ff
	sbc d                                            ; $7893: $9a
	rst GetHLinHL                                          ; $7894: $cf
	adc a                                            ; $7895: $8f
	di                                               ; $7896: $f3
	db $fd                                           ; $7897: $fd
	cp $dd                                           ; $7898: $fe $dd
	rst $38                                          ; $789a: $ff
	sbc l                                            ; $789b: $9d
	ldh a, [$fc]                                     ; $789c: $f0 $fc
	ld [hl], e                                       ; $789e: $73
	ld sp, hl                                        ; $789f: $f9
	ld a, d                                          ; $78a0: $7a
	adc [hl]                                         ; $78a1: $8e
	sbc c                                            ; $78a2: $99
	db $fc                                           ; $78a3: $fc
	ld l, d                                          ; $78a4: $6a
	sub h                                            ; $78a5: $94
	ret nz                                           ; $78a6: $c0

	ldh a, [$fc]                                     ; $78a7: $f0 $fc
	ld a, e                                          ; $78a9: $7b
	ld a, l                                          ; $78aa: $7d
	sbc l                                            ; $78ab: $9d
	sub l                                            ; $78ac: $95
	db $eb                                           ; $78ad: $eb
	sbc $ff                                          ; $78ae: $de $ff
	sbc c                                            ; $78b0: $99
	ld d, a                                          ; $78b1: $57
	xor e                                            ; $78b2: $ab
	rst SubAFromHL                                          ; $78b3: $d7
	xor a                                            ; $78b4: $af
	rst $38                                          ; $78b5: $ff
	rst AddAOntoHL                                          ; $78b6: $ef
	ld l, l                                          ; $78b7: $6d
	inc l                                            ; $78b8: $2c
	db $fd                                           ; $78b9: $fd
	reti                                             ; $78ba: $d9


	call $3ed9                                       ; $78bb: $cd $d9 $3e
	ld e, d                                          ; $78be: $5a
	ld c, b                                          ; $78bf: $48
	db $fc                                           ; $78c0: $fc
	ld b, a                                          ; $78c1: $47
	ldh a, [$d9]                                     ; $78c2: $f0 $d9
	ldh a, [c]                                       ; $78c4: $f2
	reti                                             ; $78c5: $d9


	ld c, $97                                        ; $78c6: $0e $97
	ld d, b                                          ; $78c8: $50
	jr nz, jr_03d_791b                               ; $78c9: $20 $50

	jr z, @-$2e                                      ; $78cb: $28 $d0

	add sp, -$4e                                     ; $78cd: $e8 $b2
	db $dd                                           ; $78cf: $dd
	ei                                               ; $78d0: $fb
	ld e, [hl]                                       ; $78d1: $5e
	cp b                                             ; $78d2: $b8
	ldh [$d9], a                                     ; $78d3: $e0 $d9
	db $db                                           ; $78d5: $db
	rlca                                             ; $78d6: $07
	sbc [hl]                                         ; $78d7: $9e
	rrca                                             ; $78d8: $0f
	ld a, c                                          ; $78d9: $79
	ret z                                            ; $78da: $c8

	ei                                               ; $78db: $fb
	jp c, Jump_03d_7f0f                              ; $78dc: $da $0f $7f

	ld b, b                                          ; $78df: $40
	ld [hl], c                                       ; $78e0: $71
	xor b                                            ; $78e1: $a8
	rst SubAFromDE                                          ; $78e2: $df
	rst $38                                          ; $78e3: $ff
	sbc l                                            ; $78e4: $9d
	rrca                                             ; $78e5: $0f
	rra                                              ; $78e6: $1f
	halt                                             ; $78e7: $76
	jp c, $d779                                      ; $78e8: $da $79 $d7

	ld l, a                                          ; $78eb: $6f
	ld sp, hl                                        ; $78ec: $f9
	sbc l                                            ; $78ed: $9d
	ld c, h                                          ; $78ee: $4c
	add b                                            ; $78ef: $80
	ld l, e                                          ; $78f0: $6b
	ld [hl], c                                       ; $78f1: $71
	ld h, e                                          ; $78f2: $63
	ld l, b                                          ; $78f3: $68
	ld a, l                                          ; $78f4: $7d
	sub e                                            ; $78f5: $93
	rst SubAFromDE                                          ; $78f6: $df
	rst $38                                          ; $78f7: $ff
	sbc h                                            ; $78f8: $9c
	rst AddAOntoHL                                          ; $78f9: $ef
	rst SubAFromDE                                          ; $78fa: $df
	ret nz                                           ; $78fb: $c0

	db $dd                                           ; $78fc: $dd
	rst $38                                          ; $78fd: $ff
	ld a, a                                          ; $78fe: $7f

Call_03d_78ff:
	ld sp, hl                                        ; $78ff: $f9
	sbc l                                            ; $7900: $9d
	rst $38                                          ; $7901: $ff
	ccf                                              ; $7902: $3f
	ld h, e                                          ; $7903: $63
	rst SubAFromBC                                          ; $7904: $e7
	ld l, e                                          ; $7905: $6b
	pop hl                                           ; $7906: $e1
	sbc l                                            ; $7907: $9d
	rlca                                             ; $7908: $07
	ccf                                              ; $7909: $3f
	ld a, c                                          ; $790a: $79
	ld a, $9d                                        ; $790b: $3e $9d
	pop af                                           ; $790d: $f1
	bit 6, a                                         ; $790e: $cb $77
	jp c, $f47a                                      ; $7910: $da $7a $f4

	sbc c                                            ; $7913: $99
	db $f4                                           ; $7914: $f4
	nop                                              ; $7915: $00
	db $fc                                           ; $7916: $fc
	pop af                                           ; $7917: $f1
	jp z, Jump_03d_7b17                              ; $7918: $ca $17 $7b

jr_03d_791b:
	or h                                             ; $791b: $b4
	sbc c                                            ; $791c: $99
	add e                                            ; $791d: $83
	rst $38                                          ; $791e: $ff
	cp $f5                                           ; $791f: $fe $f5
	add sp, $40                                      ; $7921: $e8 $40
	ld a, d                                          ; $7923: $7a
	inc [hl]                                         ; $7924: $34
	add a                                            ; $7925: $87
	jr nc, @+$26                                     ; $7926: $30 $24

	or d                                             ; $7928: $b2
	ld d, c                                          ; $7929: $51
	cp b                                             ; $792a: $b8
	ret nc                                           ; $792b: $d0

	xor b                                            ; $792c: $a8
	ld [hl], h                                       ; $792d: $74
	rst JumpTable                                          ; $792e: $c7
	jp $a041                                         ; $792f: $c3 $41 $a0


	ld b, b                                          ; $7932: $40
	jr nz, jr_03d_7975                               ; $7933: $20 $40

	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	ld a, a                                          ; $7937: $7f
	ld a, a                                          ; $7938: $7f
	ccf                                              ; $7939: $3f
	sbc a                                            ; $793a: $9f
	rrca                                             ; $793b: $0f
	ld h, a                                          ; $793c: $67
	inc l                                            ; $793d: $2c
	db $dd                                           ; $793e: $dd
	rst $38                                          ; $793f: $ff
	rst SubAFromDE                                          ; $7940: $df
	ld a, a                                          ; $7941: $7f
	sbc h                                            ; $7942: $9c
	rra                                              ; $7943: $1f
	inc de                                           ; $7944: $13
	rrca                                             ; $7945: $0f
	ld c, e                                          ; $7946: $4b
	sub b                                            ; $7947: $90
	ld [hl], a                                       ; $7948: $77
	jp hl                                            ; $7949: $e9


	ld a, a                                          ; $794a: $7f
	cp $7f                                           ; $794b: $fe $7f
	cp [hl]                                          ; $794d: $be
	ld [hl], l                                       ; $794e: $75
	jr z, jr_03d_79d0                                ; $794f: $28 $7f

	cp $7f                                           ; $7951: $fe $7f
	cp [hl]                                          ; $7953: $be
	ld [bc], a                                       ; $7954: $02
	ret nz                                           ; $7955: $c0

	ld c, e                                          ; $7956: $4b
	ldh a, [$df]                                     ; $7957: $f0 $df
	di                                               ; $7959: $f3
	adc b                                            ; $795a: $88
	ldh [c], a                                       ; $795b: $e2
	ldh a, [c]                                       ; $795c: $f2
	ldh [c], a                                       ; $795d: $e2
	jp nc, $d3e3                                     ; $795e: $d2 $e3 $d3

	ld c, $0e                                        ; $7961: $0e $0e
	ld e, $0e                                        ; $7963: $1e $0e
	ld e, $2e                                        ; $7965: $1e $2e
	ld e, $2e                                        ; $7967: $1e $2e
	cp [hl]                                          ; $7969: $be
	rst SubAFromDE                                          ; $796a: $df
	xor a                                            ; $796b: $af
	rst SubAFromHL                                          ; $796c: $d7
	xor a                                            ; $796d: $af
	sub a                                            ; $796e: $97
	adc e                                            ; $796f: $8b
	add l                                            ; $7970: $85
	ld b, b                                          ; $7971: $40
	ld a, d                                          ; $7972: $7a
	cp b                                             ; $7973: $b8
	sub a                                            ; $7974: $97

jr_03d_7975:
	ld d, b                                          ; $7975: $50
	ld l, b                                          ; $7976: $68
	ld [hl], h                                       ; $7977: $74
	ld a, d                                          ; $7978: $7a
	add b                                            ; $7979: $80
	xor b                                            ; $797a: $a8
	push de                                          ; $797b: $d5
	ld a, [$9c77]                                    ; $797c: $fa $77 $9c
	ld a, [$9275]                                    ; $797f: $fa $75 $92
	ld a, l                                          ; $7982: $7d
	ret                                              ; $7983: $c9


	ld e, e                                          ; $7984: $5b
	ret nz                                           ; $7985: $c0

	ld l, l                                          ; $7986: $6d
	or d                                             ; $7987: $b2
	ld a, d                                          ; $7988: $7a
	ret nc                                           ; $7989: $d0

	sbc l                                            ; $798a: $9d
	inc bc                                           ; $798b: $03
	ld d, a                                          ; $798c: $57
	ld [hl], d                                       ; $798d: $72
	db $ed                                           ; $798e: $ed
	ld a, a                                          ; $798f: $7f
	push af                                          ; $7990: $f5
	ld l, [hl]                                       ; $7991: $6e
	rst SubAFromDE                                          ; $7992: $df
	ld l, [hl]                                       ; $7993: $6e

Jump_03d_7994:
	pop hl                                           ; $7994: $e1
	inc bc                                           ; $7995: $03
	rst $38                                          ; $7996: $ff
	ld a, a                                          ; $7997: $7f
	add hl, bc                                       ; $7998: $09
	ld a, l                                          ; $7999: $7d
	ldh a, [$9a]                                     ; $799a: $f0 $9a
	ld sp, hl                                        ; $799c: $f9
	di                                               ; $799d: $f3
	rst SubAFromBC                                          ; $799e: $e7
	rst SubAFromBC                                          ; $799f: $e7
	rst GetHLinHL                                          ; $79a0: $cf
	ld e, a                                          ; $79a1: $5f
	inc sp                                           ; $79a2: $33
	ld b, a                                          ; $79a3: $47
	ldh [$99], a                                     ; $79a4: $e0 $99
	cp $fd                                           ; $79a6: $fe $fd
	db $fc                                           ; $79a8: $fc
	db $fd                                           ; $79a9: $fd
	ld a, [$77f9]                                    ; $79aa: $fa $f9 $77
	push af                                          ; $79ad: $f5
	ld a, a                                          ; $79ae: $7f
	cp $7d                                           ; $79af: $fe $7d
	or h                                             ; $79b1: $b4
	rst SubAFromDE                                          ; $79b2: $df
	ld a, a                                          ; $79b3: $7f
	db $db                                           ; $79b4: $db
	rst $38                                          ; $79b5: $ff
	rst SubAFromDE                                          ; $79b6: $df
	add b                                            ; $79b7: $80
	cpl                                              ; $79b8: $2f
	jr nc, jr_03d_7a38                               ; $79b9: $30 $7d

	sbc c                                            ; $79bb: $99
	ld a, a                                          ; $79bc: $7f
	cp $7f                                           ; $79bd: $fe $7f

Call_03d_79bf:
	jp c, $e49e                                      ; $79bf: $da $9e $e4

	ld a, b                                          ; $79c2: $78
	ldh a, [c]                                       ; $79c3: $f2
	adc c                                            ; $79c4: $89
	ld [bc], a                                       ; $79c5: $02
	ld bc, $0102                                     ; $79c6: $01 $02 $01
	dec de                                           ; $79c9: $1b
	ccf                                              ; $79ca: $3f
	dec de                                           ; $79cb: $1b
	ld bc, $1204                                     ; $79cc: $01 $04 $12
	and d                                            ; $79cf: $a2

jr_03d_79d0:
	ld l, h                                          ; $79d0: $6c
	ret                                              ; $79d1: $c9


	daa                                              ; $79d2: $27
	rlca                                             ; $79d3: $07
	rlca                                             ; $79d4: $07
	inc bc                                           ; $79d5: $03
	ld bc, $1311                                     ; $79d6: $01 $11 $13
	scf                                              ; $79d9: $37
	rst SubAFromDE                                          ; $79da: $df
	ld [hl], d                                       ; $79db: $72
	cp c                                             ; $79dc: $b9
	sub $ff                                          ; $79dd: $d6 $ff
	add e                                            ; $79df: $83
	cp a                                             ; $79e0: $bf
	ld e, a                                          ; $79e1: $5f
	cpl                                              ; $79e2: $2f
	rra                                              ; $79e3: $1f
	ld a, [hl+]                                      ; $79e4: $2a
	dec d                                            ; $79e5: $15
	ld [bc], a                                       ; $79e6: $02
	dec b                                            ; $79e7: $05
	ld b, b                                          ; $79e8: $40
	and b                                            ; $79e9: $a0
	ret nc                                           ; $79ea: $d0

	ldh [$d5], a                                     ; $79eb: $e0 $d5
	ld [$fafd], a                                    ; $79ed: $ea $fd $fa
	adc h                                            ; $79f0: $8c
	call Call_03d_4d8c                               ; $79f1: $cd $8c $4d
	adc h                                            ; $79f4: $8c
	ld c, h                                          ; $79f5: $4c
	adc h                                            ; $79f6: $8c
	ld c, h                                          ; $79f7: $4c
	ld a, a                                          ; $79f8: $7f
	ld a, $7f                                        ; $79f9: $3e $7f
	cp [hl]                                          ; $79fb: $be
	ld a, d                                          ; $79fc: $7a
	xor c                                            ; $79fd: $a9
	sbc [hl]                                         ; $79fe: $9e
	cp a                                             ; $79ff: $bf
	ld a, d                                          ; $7a00: $7a
	and h                                            ; $7a01: $a4
	sbc h                                            ; $7a02: $9c
	rrca                                             ; $7a03: $0f
	ld [bc], a                                       ; $7a04: $02
	ld bc, $0677                                     ; $7a05: $01 $77 $06
	sbc l                                            ; $7a08: $9d
	ld b, b                                          ; $7a09: $40
	ldh a, [$6d]                                     ; $7a0a: $f0 $6d
	ld [hl], $9b                                     ; $7a0c: $36 $9b
	ld a, [$aad5]                                    ; $7a0e: $fa $d5 $aa
	ld b, h                                          ; $7a11: $44
	db $fd                                           ; $7a12: $fd
	sub [hl]                                         ; $7a13: $96
	dec b                                            ; $7a14: $05
	ld a, [hl+]                                      ; $7a15: $2a
	ld d, l                                          ; $7a16: $55
	cp e                                             ; $7a17: $bb
	rst $38                                          ; $7a18: $ff
	rst $38                                          ; $7a19: $ff
	and d                                            ; $7a1a: $a2
	ld d, d                                          ; $7a1b: $52
	and e                                            ; $7a1c: $a3
	call c, $9c03                                    ; $7a1d: $dc $03 $9c
	ld e, [hl]                                       ; $7a20: $5e
	xor [hl]                                         ; $7a21: $ae
	ld e, [hl]                                       ; $7a22: $5e
	call c, $d9fe                                    ; $7a23: $dc $fe $d9
	add b                                            ; $7a26: $80
	reti                                             ; $7a27: $d9


	ld a, a                                          ; $7a28: $7f
	sbc h                                            ; $7a29: $9c
	xor a                                            ; $7a2a: $af
	ld a, [hl+]                                      ; $7a2b: $2a
	dec d                                            ; $7a2c: $15
	ld [hl], b                                       ; $7a2d: $70
	ld d, d                                          ; $7a2e: $52
	sbc h                                            ; $7a2f: $9c
	ld d, b                                          ; $7a30: $50
	push de                                          ; $7a31: $d5
	ld [$ffdc], a                                    ; $7a32: $ea $dc $ff
	sbc l                                            ; $7a35: $9d
	db $fc                                           ; $7a36: $fc
	xor c                                            ; $7a37: $a9

jr_03d_7a38:
	ld a, d                                          ; $7a38: $7a
	db $d3                                           ; $7a39: $d3
	ld a, e                                          ; $7a3a: $7b
	ld a, a                                          ; $7a3b: $7f
	ld a, [hl]                                       ; $7a3c: $7e
	pop de                                           ; $7a3d: $d1
	ld c, e                                          ; $7a3e: $4b
	db $10                                           ; $7a3f: $10
	sbc [hl]                                         ; $7a40: $9e
	ld hl, sp-$26                                    ; $7a41: $f8 $da
	rst $38                                          ; $7a43: $ff
	sbc [hl]                                         ; $7a44: $9e
	ld b, $d2                                        ; $7a45: $06 $d2
	rst $38                                          ; $7a47: $ff
	ld c, c                                          ; $7a48: $49
	cp a                                             ; $7a49: $bf
	ld a, e                                          ; $7a4a: $7b
	ldh a, [$7a]                                     ; $7a4b: $f0 $7a
	adc $9e                                          ; $7a4d: $ce $9e
	ei                                               ; $7a4f: $fb
	ld a, c                                          ; $7a50: $79
	halt                                             ; $7a51: $76
	db $db                                           ; $7a52: $db
	rst $38                                          ; $7a53: $ff
	sbc l                                            ; $7a54: $9d
	sbc a                                            ; $7a55: $9f
	ld h, b                                          ; $7a56: $60
	ld [hl], b                                       ; $7a57: $70
	ld c, c                                          ; $7a58: $49
	ld a, e                                          ; $7a59: $7b
	rst FarCall                                          ; $7a5a: $f7
	jp c, $9eff                                      ; $7a5b: $da $ff $9e

	ld bc, $c766                                     ; $7a5e: $01 $66 $c7
	db $db                                           ; $7a61: $db
	rst $38                                          ; $7a62: $ff
	adc l                                            ; $7a63: $8d
	ei                                               ; $7a64: $fb
	rst $38                                          ; $7a65: $ff
	di                                               ; $7a66: $f3
	push hl                                          ; $7a67: $e5
	db $eb                                           ; $7a68: $eb
	push hl                                          ; $7a69: $e5
	set 0, a                                         ; $7a6a: $cb $c7
	db $fc                                           ; $7a6c: $fc
	nop                                              ; $7a6d: $00
	db $fc                                           ; $7a6e: $fc
	ld a, [$faf4]                                    ; $7a6f: $fa $f4 $fa
	db $f4                                           ; $7a72: $f4
	ld hl, sp-$01                                    ; $7a73: $f8 $ff
	db $ed                                           ; $7a75: $ed
	ld c, c                                          ; $7a76: $49
	ldh a, [$7b]                                     ; $7a77: $f0 $7b
	ret nc                                           ; $7a79: $d0

	ld a, a                                          ; $7a7a: $7f
	ld a, [bc]                                       ; $7a7b: $0a
	sbc [hl]                                         ; $7a7c: $9e
	push de                                          ; $7a7d: $d5
	ld [hl], d                                       ; $7a7e: $72
	or d                                             ; $7a7f: $b2
	ld a, [hl]                                       ; $7a80: $7e
	ld a, [$2a85]                                    ; $7a81: $fa $85 $2a
	ld a, a                                          ; $7a84: $7f
	ldh [$5e], a                                     ; $7a85: $e0 $5e
	push af                                          ; $7a87: $f5
	xor c                                            ; $7a88: $a9
	ld d, e                                          ; $7a89: $53
	xor a                                            ; $7a8a: $af
	ld e, a                                          ; $7a8b: $5f
	ccf                                              ; $7a8c: $3f
	rra                                              ; $7a8d: $1f
	ld bc, $570a                                     ; $7a8e: $01 $0a $57
	xor a                                            ; $7a91: $af
	ld e, a                                          ; $7a92: $5f
	cp a                                             ; $7a93: $bf
	rst $38                                          ; $7a94: $ff
	rra                                              ; $7a95: $1f
	add b                                            ; $7a96: $80
	ld a, a                                          ; $7a97: $7f
	rst $38                                          ; $7a98: $ff
	db $fc                                           ; $7a99: $fc
	ldh a, [$e0]                                     ; $7a9a: $f0 $e0
	add b                                            ; $7a9c: $80
	ld [hl], e                                       ; $7a9d: $73
	ld d, a                                          ; $7a9e: $57
	ld a, a                                          ; $7a9f: $7f
	add [hl]                                         ; $7aa0: $86
	sbc d                                            ; $7aa1: $9a
	ldh a, [rIE]                                     ; $7aa2: $f0 $ff
	nop                                              ; $7aa4: $00
	jp Jump_03d_6681                                 ; $7aa5: $c3 $81 $66


	adc b                                            ; $7aa8: $88
	ld a, l                                          ; $7aa9: $7d
	ld l, b                                          ; $7aaa: $68
	sbc l                                            ; $7aab: $9d
	rrca                                             ; $7aac: $0f
	dec c                                            ; $7aad: $0d
	ld d, e                                          ; $7aae: $53
	nop                                              ; $7aaf: $00
	sbc $66                                          ; $7ab0: $de $66
	sub h                                            ; $7ab2: $94
	ld d, [hl]                                       ; $7ab3: $56
	ld h, [hl]                                       ; $7ab4: $66
	ld b, h                                          ; $7ab5: $44
	ld b, h                                          ; $7ab6: $44
	ld b, e                                          ; $7ab7: $43
	ld b, h                                          ; $7ab8: $44
	ld b, h                                          ; $7ab9: $44
	inc sp                                           ; $7aba: $33
	ld [hl], $66                                     ; $7abb: $36 $66
	ld d, l                                          ; $7abd: $55
	ld l, e                                          ; $7abe: $6b
	or $7f                                           ; $7abf: $f6 $7f

Jump_03d_7ac1:
	push af                                          ; $7ac1: $f5
	rst SubAFromDE                                          ; $7ac2: $df
	ld d, l                                          ; $7ac3: $55
	call c, $df44                                    ; $7ac4: $dc $44 $df
	inc sp                                           ; $7ac7: $33
	sbc e                                            ; $7ac8: $9b
	inc [hl]                                         ; $7ac9: $34
	inc sp                                           ; $7aca: $33
	ld d, l                                          ; $7acb: $55
	ld b, l                                          ; $7acc: $45
	ld h, a                                          ; $7acd: $67
	or $99                                           ; $7ace: $f6 $99
	inc sp                                           ; $7ad0: $33
	ld b, l                                          ; $7ad1: $45
	ld h, h                                          ; $7ad2: $64
	ld [hl], a                                       ; $7ad3: $77
	ld [hl], a                                       ; $7ad4: $77
	ld [hl], e                                       ; $7ad5: $73

jr_03d_7ad6:
	ld l, a                                          ; $7ad6: $6f
	or $9c                                           ; $7ad7: $f6 $9c
	ld h, l                                          ; $7ad9: $65
	ld d, l                                          ; $7ada: $55
	ld d, a                                          ; $7adb: $57
	ld l, e                                          ; $7adc: $6b
	or $9b                                           ; $7add: $f6 $9b
	ld b, l                                          ; $7adf: $45
	inc sp                                           ; $7ae0: $33
	ld [hl], $77                                     ; $7ae1: $36 $77
	ld a, e                                          ; $7ae3: $7b
	or $98                                           ; $7ae4: $f6 $98
	ld d, l                                          ; $7ae6: $55
	ld d, h                                          ; $7ae7: $54
	ld b, l                                          ; $7ae8: $45
	ld h, e                                          ; $7ae9: $63
	inc sp                                           ; $7aea: $33
	inc sp                                           ; $7aeb: $33
	ld h, [hl]                                       ; $7aec: $66
	ld a, e                                          ; $7aed: $7b
	or $df                                           ; $7aee: $f6 $df
	ld b, h                                          ; $7af0: $44
	sbc [hl]                                         ; $7af1: $9e
	ld h, l                                          ; $7af2: $65
	db $db                                           ; $7af3: $db
	inc sp                                           ; $7af4: $33
	ld a, a                                          ; $7af5: $7f
	or $9e                                           ; $7af6: $f6 $9e
	ld d, l                                          ; $7af8: $55
	jp c, $7f33                                      ; $7af9: $da $33 $7f

	and l                                            ; $7afc: $a5
	sbc [hl]                                         ; $7afd: $9e
	ld d, e                                          ; $7afe: $53

Call_03d_7aff:
	call c, $6133                                    ; $7aff: $dc $33 $61
	add hl, bc                                       ; $7b02: $09
	sub d                                            ; $7b03: $92
	ld a, h                                          ; $7b04: $7c
	rst $38                                          ; $7b05: $ff
	jr c, @+$01                                      ; $7b06: $38 $ff

	ld de, $32ff                                     ; $7b08: $11 $ff $32
	rst $38                                          ; $7b0b: $ff
	ld h, a                                          ; $7b0c: $67
	rst $38                                          ; $7b0d: $ff
	inc bc                                           ; $7b0e: $03
	rst $38                                          ; $7b0f: $ff
	inc de                                           ; $7b10: $13
	ld a, e                                          ; $7b11: $7b
	or $8b                                           ; $7b12: $f6 $8b
	ld c, $ff                                        ; $7b14: $0e $ff
	rlca                                             ; $7b16: $07

Jump_03d_7b17:
	rst $38                                          ; $7b17: $ff
	dec sp                                           ; $7b18: $3b
	rst JumpTable                                          ; $7b19: $c7
	rrca                                             ; $7b1a: $0f
	pop af                                           ; $7b1b: $f1
	rst GetHLinHL                                          ; $7b1c: $cf
	ldh a, [$6f]                                     ; $7b1d: $f0 $6f

Jump_03d_7b1f:
	pop af                                           ; $7b1f: $f1
	and a                                            ; $7b20: $a7
	ld sp, hl                                        ; $7b21: $f9
	di                                               ; $7b22: $f3
	rst AddAOntoHL                                          ; $7b23: $ef
	rst FarCall                                          ; $7b24: $f7
	ld a, [hl]                                       ; $7b25: $7e
	cp a                                             ; $7b26: $bf
	ld h, [hl]                                       ; $7b27: $66
	ld a, e                                          ; $7b28: $7b
	db $eb                                           ; $7b29: $eb
	sub [hl]                                         ; $7b2a: $96
	rrca                                             ; $7b2b: $0f
	ld hl, sp+$7f                                    ; $7b2c: $f8 $7f
	cp $ff                                           ; $7b2e: $fe $ff
	sbc h                                            ; $7b30: $9c
	ld hl, sp+$60                                    ; $7b31: $f8 $60
	ldh a, [$7b]                                     ; $7b33: $f0 $7b
	db $f4                                           ; $7b35: $f4
	add b                                            ; $7b36: $80
	ld c, $cd                                        ; $7b37: $0e $cd
	add h                                            ; $7b39: $84
	adc c                                            ; $7b3a: $89
	pop bc                                           ; $7b3b: $c1
	ld bc, $c180                                     ; $7b3c: $01 $80 $c1
	add b                                            ; $7b3f: $80
	ld [hl], b                                       ; $7b40: $70
	ld sp, $2174                                     ; $7b41: $31 $74 $21
	call c, $8c09                                    ; $7b44: $dc $09 $8c
	inc c                                            ; $7b47: $0c
	db $e4                                           ; $7b48: $e4
	inc b                                            ; $7b49: $04
	ld hl, sp-$08                                    ; $7b4a: $f8 $f8
	rst $38                                          ; $7b4c: $ff
	rst GetHLinHL                                          ; $7b4d: $cf
	rst SubAFromBC                                          ; $7b4e: $e7
	ld h, e                                          ; $7b4f: $63
	ret                                              ; $7b50: $c9


	ld bc, $00c0                                     ; $7b51: $01 $c0 $00
	jr jr_03d_7ad6                                   ; $7b54: $18 $80

	ld a, a                                          ; $7b56: $7f
	db $fd                                           ; $7b57: $fd
	sbc $e0                                          ; $7b58: $de $e0
	add b                                            ; $7b5a: $80
	pop bc                                           ; $7b5b: $c1
	ldh [$e3], a                                     ; $7b5c: $e0 $e3
	call nz, $fdc7                                   ; $7b5e: $c4 $c7 $fd
	rst $38                                          ; $7b61: $ff
	ldh [$7f], a                                     ; $7b62: $e0 $7f
	ld a, [hl]                                       ; $7b64: $7e
	nop                                              ; $7b65: $00
	jr jr_03d_7b68                                   ; $7b66: $18 $00

jr_03d_7b68:
	stop                                             ; $7b68: $10 $00
	ld bc, $0701                                     ; $7b6a: $01 $01 $07
	inc bc                                           ; $7b6d: $03
	rlca                                             ; $7b6e: $07
	add b                                            ; $7b6f: $80
	add e                                            ; $7b70: $83
	ret nz                                           ; $7b71: $c0

	ldh [$e0], a                                     ; $7b72: $e0 $e0
	ld [bc], a                                       ; $7b74: $02
	nop                                              ; $7b75: $00
	ld [bc], a                                       ; $7b76: $02
	nop                                              ; $7b77: $00
	inc b                                            ; $7b78: $04

jr_03d_7b79:
	nop                                              ; $7b79: $00
	add l                                            ; $7b7a: $85
	push bc                                          ; $7b7b: $c5
	nop                                              ; $7b7c: $00
	rst $38                                          ; $7b7d: $ff
	add hl, bc                                       ; $7b7e: $09
	rst $38                                          ; $7b7f: $ff
	rrca                                             ; $7b80: $0f
	or h                                             ; $7b81: $b4
	ld a, a                                          ; $7b82: $7f
	add d                                            ; $7b83: $82
	sub e                                            ; $7b84: $93
	ld d, $fc                                        ; $7b85: $16 $fc
	jr @+$01                                         ; $7b87: $18 $ff

	dec [hl]                                         ; $7b89: $35
	cp $f7                                           ; $7b8a: $fe $f7
	ld hl, sp-$20                                    ; $7b8c: $f8 $e0
	ldh [$ca], a                                     ; $7b8e: $e0 $ca
	ldh a, [$7b]                                     ; $7b90: $f0 $7b
	cp $c6                                           ; $7b92: $fe $c6
	ld sp, hl                                        ; $7b94: $f9
	ei                                               ; $7b95: $fb
	sbc [hl]                                         ; $7b96: $9e
	rst $38                                          ; $7b97: $ff
	ldh a, [c]                                       ; $7b98: $f2
	inc bc                                           ; $7b99: $03
	ldh a, [$03]                                     ; $7b9a: $f0 $03
	ldh a, [$f9]                                     ; $7b9c: $f0 $f9
	sbc l                                            ; $7b9e: $9d
	inc bc                                           ; $7b9f: $03
	inc b                                            ; $7ba0: $04
	ld [hl], a                                       ; $7ba1: $77
	cp $99                                           ; $7ba2: $fe $99
	ei                                               ; $7ba4: $fb
	inc b                                            ; $7ba5: $04
	nop                                              ; $7ba6: $00
	rlca                                             ; $7ba7: $07
	dec b                                            ; $7ba8: $05
	ld [bc], a                                       ; $7ba9: $02
	ld [hl], a                                       ; $7baa: $77
	cp $9d                                           ; $7bab: $fe $9d
	db $10                                           ; $7bad: $10
	ldh [rPCM34], a                                  ; $7bae: $e0 $77
	cp $92                                           ; $7bb0: $fe $92
	ld d, b                                          ; $7bb2: $50
	and b                                            ; $7bb3: $a0
	db $10                                           ; $7bb4: $10
	ldh [$c0], a                                     ; $7bb5: $e0 $c0
	jr nc, jr_03d_7b79                               ; $7bb7: $30 $c0

	jr nc, @-$2e                                     ; $7bb9: $30 $d0

	jr nz, @+$03                                     ; $7bbb: $20 $01

	ld b, $07                                        ; $7bbd: $06 $07
	ld a, e                                          ; $7bbf: $7b
	ld [$fc7f], a                                    ; $7bc0: $ea $7f $fc
	ld a, a                                          ; $7bc3: $7f
	db $db                                           ; $7bc4: $db
	ld h, a                                          ; $7bc5: $67
	add $97                                          ; $7bc6: $c6 $97
	db $fd                                           ; $7bc8: $fd
	ld [bc], a                                       ; $7bc9: $02
	db $fc                                           ; $7bca: $fc
	inc bc                                           ; $7bcb: $03
	db $fd                                           ; $7bcc: $fd
	ld [bc], a                                       ; $7bcd: $02
	inc e                                            ; $7bce: $1c
	db $e3                                           ; $7bcf: $e3
	ei                                               ; $7bd0: $fb
	sbc e                                            ; $7bd1: $9b
	ld a, [$fe05]                                    ; $7bd2: $fa $05 $fe
	ld bc, $fe77                                     ; $7bd5: $01 $77 $fe
	sbc l                                            ; $7bd8: $9d
	or b                                             ; $7bd9: $b0
	ld c, a                                          ; $7bda: $4f
	ei                                               ; $7bdb: $fb
	ld a, [hl]                                       ; $7bdc: $7e
	adc $7f                                          ; $7bdd: $ce $7f
	cp $9e                                           ; $7bdf: $fe $9e
	adc a                                            ; $7be1: $8f
	sbc $ff                                          ; $7be2: $de $ff
	sbc e                                            ; $7be4: $9b
	ccf                                              ; $7be5: $3f
	rst $38                                          ; $7be6: $ff
	rla                                              ; $7be7: $17
	rst $38                                          ; $7be8: $ff
	ld a, e                                          ; $7be9: $7b
	db $d3                                           ; $7bea: $d3
	sub c                                            ; $7beb: $91
	rst $38                                          ; $7bec: $ff
	pop hl                                           ; $7bed: $e1
	rst $38                                          ; $7bee: $ff
	scf                                              ; $7bef: $37
	rst $38                                          ; $7bf0: $ff
	ld [hl], a                                       ; $7bf1: $77
	rst $38                                          ; $7bf2: $ff
	ld a, a                                          ; $7bf3: $7f
	rst $38                                          ; $7bf4: $ff
	ld sp, hl                                        ; $7bf5: $f9
	rst $38                                          ; $7bf6: $ff
	ld a, b                                          ; $7bf7: $78
	rst $38                                          ; $7bf8: $ff
	adc [hl]                                         ; $7bf9: $8e
	ld a, d                                          ; $7bfa: $7a
	or h                                             ; $7bfb: $b4
	add b                                            ; $7bfc: $80
	rst JumpTable                                          ; $7bfd: $c7
	ld hl, sp-$09                                    ; $7bfe: $f8 $f7
	ld hl, sp-$1d                                    ; $7c00: $f8 $e3
	rst $38                                          ; $7c02: $ff
	rst AddAOntoHL                                          ; $7c03: $ef
	pop af                                           ; $7c04: $f1
	ld a, [hl]                                       ; $7c05: $7e
	pop af                                           ; $7c06: $f1
	jr c, @+$01                                      ; $7c07: $38 $ff

	ld [$81ff], sp                                   ; $7c09: $08 $ff $81
	cp $29                                           ; $7c0c: $fe $29
	ld [hl], b                                       ; $7c0e: $70
	rst $38                                          ; $7c0f: $ff
	ld hl, sp-$02                                    ; $7c10: $f8 $fe
	db $fc                                           ; $7c12: $fc
	and $fe                                          ; $7c13: $e6 $fe
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	ld sp, hl                                        ; $7c17: $f9
	rrca                                             ; $7c18: $0f
	rst $38                                          ; $7c19: $ff
	rra                                              ; $7c1a: $1f
	rst FarCall                                          ; $7c1b: $f7
	add b                                            ; $7c1c: $80
	rra                                              ; $7c1d: $1f
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	ld l, $18                                        ; $7c20: $2e $18
	add hl, sp                                       ; $7c22: $39
	rrca                                             ; $7c23: $0f
	ccf                                              ; $7c24: $3f
	rra                                              ; $7c25: $1f
	cp $ff                                           ; $7c26: $fe $ff
	or a                                             ; $7c28: $b7
	rst $38                                          ; $7c29: $ff
	sbc a                                            ; $7c2a: $9f
	rst $38                                          ; $7c2b: $ff
	inc e                                            ; $7c2c: $1c
	rst $38                                          ; $7c2d: $ff
	cpl                                              ; $7c2e: $2f
	rra                                              ; $7c2f: $1f
	ld a, a                                          ; $7c30: $7f
	rra                                              ; $7c31: $1f
	sbc a                                            ; $7c32: $9f
	rrca                                             ; $7c33: $0f
	rst GetHLinHL                                          ; $7c34: $cf
	adc a                                            ; $7c35: $8f
	inc bc                                           ; $7c36: $03
	db $fd                                           ; $7c37: $fd
	ld b, [hl]                                       ; $7c38: $46
	db $fd                                           ; $7c39: $fd
	di                                               ; $7c3a: $f3
	db $fc                                           ; $7c3b: $fc
	sbc l                                            ; $7c3c: $9d
	rst $38                                          ; $7c3d: $ff
	call c, $d27b                                    ; $7c3e: $dc $7b $d2
	add b                                            ; $7c41: $80
	jp hl                                            ; $7c42: $e9


	or $c9                                           ; $7c43: $f6 $c9
	ld c, $01                                        ; $7c45: $0e $01
	add a                                            ; $7c47: $87
	add c                                            ; $7c48: $81
	ret nc                                           ; $7c49: $d0

	db $d3                                           ; $7c4a: $d3
	pop hl                                           ; $7c4b: $e1
	and $f7                                          ; $7c4c: $e6 $f7
	db $f4                                           ; $7c4e: $f4
	jr nz, jr_03d_7c72                               ; $7c4f: $20 $21

	nop                                              ; $7c51: $00
	add e                                            ; $7c52: $83
	adc b                                            ; $7c53: $88
	ret nz                                           ; $7c54: $c0

	adc l                                            ; $7c55: $8d
	ret nz                                           ; $7c56: $c0

	ld c, $02                                        ; $7c57: $0e $02
	ld b, $17                                        ; $7c59: $06 $17
	call nz, $0207                                   ; $7c5b: $c4 $07 $02
	pop bc                                           ; $7c5e: $c1
	add c                                            ; $7c5f: $81
	ld hl, sp-$73                                    ; $7c60: $f8 $8d
	and a                                            ; $7c62: $a7
	and b                                            ; $7c63: $a0
	add a                                            ; $7c64: $87
	nop                                              ; $7c65: $00
	cp a                                             ; $7c66: $bf
	nop                                              ; $7c67: $00
	ccf                                              ; $7c68: $3f
	ret nz                                           ; $7c69: $c0

	rrca                                             ; $7c6a: $0f
	ldh [rTAC], a                                    ; $7c6b: $e0 $07
	ldh [$99], a                                     ; $7c6d: $e0 $99
	ld a, [hl]                                       ; $7c6f: $7e
	nop                                              ; $7c70: $00
	ld b, b                                          ; $7c71: $40

jr_03d_7c72:
	nop                                              ; $7c72: $00
	add b                                            ; $7c73: $80
	ld a, e                                          ; $7c74: $7b
	ld [de], a                                       ; $7c75: $12
	sub [hl]                                         ; $7c76: $96
	rst $38                                          ; $7c77: $ff
	ret nz                                           ; $7c78: $c0

	nop                                              ; $7c79: $00
	adc b                                            ; $7c7a: $88
	ld [hl], b                                       ; $7c7b: $70
	nop                                              ; $7c7c: $00
	ldh a, [$9f]                                     ; $7c7d: $f0 $9f
	ld [hl], b                                       ; $7c7f: $70
	ld l, e                                          ; $7c80: $6b
	ld [bc], a                                       ; $7c81: $02
	ld l, d                                          ; $7c82: $6a
	rst $38                                          ; $7c83: $ff
	ld l, a                                          ; $7c84: $6f
	ld sp, hl                                        ; $7c85: $f9
	ld e, a                                          ; $7c86: $5f
	ldh a, [$9d]                                     ; $7c87: $f0 $9d
	ret nz                                           ; $7c89: $c0

	ccf                                              ; $7c8a: $3f
	ld c, a                                          ; $7c8b: $4f
	ldh a, [$6f]                                     ; $7c8c: $f0 $6f
	ld hl, sp+$1b                                    ; $7c8e: $f8 $1b
	ldh a, [$9e]                                     ; $7c90: $f0 $9e
	ldh [rPCM12], a                                  ; $7c92: $e0 $76
	call z, $f37f                                    ; $7c94: $cc $7f $f3
	sub e                                            ; $7c97: $93
	ld [hl], a                                       ; $7c98: $77
	adc a                                            ; $7c99: $8f
	ld bc, $0006                                     ; $7c9a: $01 $06 $00
	rlca                                             ; $7c9d: $07
	inc b                                            ; $7c9e: $04
	rst $38                                          ; $7c9f: $ff
	ld a, a                                          ; $7ca0: $7f
	db $fc                                           ; $7ca1: $fc
	ret nc                                           ; $7ca2: $d0

	jr nz, jr_03d_7d1b                               ; $7ca3: $20 $76

	jp z, $d09d                                      ; $7ca5: $ca $9d $d0

	ldh [$7b], a                                     ; $7ca8: $e0 $7b
	db $fc                                           ; $7caa: $fc
	sbc d                                            ; $7cab: $9a
	jr nz, jr_03d_7cfe                               ; $7cac: $20 $50

	and b                                            ; $7cae: $a0
	ld d, b                                          ; $7caf: $50
	and b                                            ; $7cb0: $a0
	ldh [$d1], a                                     ; $7cb1: $e0 $d1
	sbc b                                            ; $7cb3: $98
	inc c                                            ; $7cb4: $0c
	rst $38                                          ; $7cb5: $ff
	ld c, a                                          ; $7cb6: $4f
	rst $38                                          ; $7cb7: $ff
	ld l, l                                          ; $7cb8: $6d
	rst $38                                          ; $7cb9: $ff
	ldh [$7a], a                                     ; $7cba: $e0 $7a
	ret z                                            ; $7cbc: $c8

	sbc d                                            ; $7cbd: $9a
	add d                                            ; $7cbe: $82
	rst $38                                          ; $7cbf: $ff
	and l                                            ; $7cc0: $a5
	rst $38                                          ; $7cc1: $ff
	db $ed                                           ; $7cc2: $ed
	ld a, c                                          ; $7cc3: $79
	jp hl                                            ; $7cc4: $e9


	sbc [hl]                                         ; $7cc5: $9e
	ld bc, $f67b                                     ; $7cc6: $01 $7b $f6
	ld a, a                                          ; $7cc9: $7f
	db $fc                                           ; $7cca: $fc
	sub d                                            ; $7ccb: $92
	ld h, c                                          ; $7ccc: $61
	rst $38                                          ; $7ccd: $ff
	dec sp                                           ; $7cce: $3b
	rst $38                                          ; $7ccf: $ff
	rst SubAFromDE                                          ; $7cd0: $df
	rst $38                                          ; $7cd1: $ff
	db $fd                                           ; $7cd2: $fd
	rst $38                                          ; $7cd3: $ff
	ret                                              ; $7cd4: $c9


	rst $38                                          ; $7cd5: $ff
	reti                                             ; $7cd6: $d9


	rst AddAOntoHL                                          ; $7cd7: $ef
	rst AddAOntoHL                                          ; $7cd8: $ef
	sbc $ff                                          ; $7cd9: $de $ff
	sbc c                                            ; $7cdb: $99
	cp [hl]                                          ; $7cdc: $be
	rst $38                                          ; $7cdd: $ff
	inc a                                            ; $7cde: $3c
	rst $38                                          ; $7cdf: $ff
	sbc $ff                                          ; $7ce0: $de $ff
	ld a, d                                          ; $7ce2: $7a
	ret                                              ; $7ce3: $c9


	ld a, c                                          ; $7ce4: $79
	ld a, b                                          ; $7ce5: $78
	sbc h                                            ; $7ce6: $9c
	cp a                                             ; $7ce7: $bf
	rst $38                                          ; $7ce8: $ff
	cpl                                              ; $7ce9: $2f
	ld a, e                                          ; $7cea: $7b
	ldh a, [c]                                       ; $7ceb: $f2
	halt                                             ; $7cec: $76
	db $e3                                           ; $7ced: $e3
	ld a, a                                          ; $7cee: $7f
	ldh [$7e], a                                     ; $7cef: $e0 $7e
	xor d                                            ; $7cf1: $aa
	sbc [hl]                                         ; $7cf2: $9e
	ld a, l                                          ; $7cf3: $7d
	ld a, e                                          ; $7cf4: $7b
	ldh a, [$9c]                                     ; $7cf5: $f0 $9c
	ld h, b                                          ; $7cf7: $60
	rst $38                                          ; $7cf8: $ff
	ld b, c                                          ; $7cf9: $41

jr_03d_7cfa:
	ld [hl], e                                       ; $7cfa: $73
	or $7e                                           ; $7cfb: $f6 $7e
	sub b                                            ; $7cfd: $90

jr_03d_7cfe:
	sbc d                                            ; $7cfe: $9a

Jump_03d_7cff:
	rst AddAOntoHL                                          ; $7cff: $ef
	sbc $ff                                          ; $7d00: $de $ff

jr_03d_7d02:
	rst GetHLinHL                                          ; $7d02: $cf
	sbc a                                            ; $7d03: $9f
	ld a, c                                          ; $7d04: $79
	inc [hl]                                         ; $7d05: $34

jr_03d_7d06:
	ld a, a                                          ; $7d06: $7f
	or b                                             ; $7d07: $b0
	adc [hl]                                         ; $7d08: $8e
	ld l, h                                          ; $7d09: $6c
	rst $38                                          ; $7d0a: $ff
	jp $f6ff                                         ; $7d0b: $c3 $ff $f6


	rst $38                                          ; $7d0e: $ff
	push af                                          ; $7d0f: $f5
	halt                                             ; $7d10: $76
	db $f4                                           ; $7d11: $f4
	rrca                                             ; $7d12: $0f
	add $3f                                          ; $7d13: $c6 $3f
	ld c, [hl]                                       ; $7d15: $4e
	rst $38                                          ; $7d16: $ff
	adc l                                            ; $7d17: $8d
	rst $38                                          ; $7d18: $ff
	ld c, c                                          ; $7d19: $49
	ld a, e                                          ; $7d1a: $7b

jr_03d_7d1b:
	ldh a, [hDisp0_LCDC]                                     ; $7d1b: $f0 $82
	add e                                            ; $7d1d: $83

jr_03d_7d1e:
	rst $38                                          ; $7d1e: $ff
	jr jr_03d_7d02                                   ; $7d1f: $18 $e1

	add b                                            ; $7d21: $80
	ld a, h                                          ; $7d22: $7c
	add d                                            ; $7d23: $82
	ld a, h                                          ; $7d24: $7c
	jr nz, jr_03d_7d06                               ; $7d25: $20 $df

	ld [hl], b                                       ; $7d27: $70
	adc a                                            ; $7d28: $8f
	jr nc, jr_03d_7cfa                               ; $7d29: $30 $cf

	jr @-$17                                         ; $7d2b: $18 $e7

	ld sp, $64ef                                     ; $7d2d: $31 $ef $64
	ei                                               ; $7d30: $fb
	jp $33fc                                         ; $7d31: $c3 $fc $33


	ld a, h                                          ; $7d34: $7c
	ld b, l                                          ; $7d35: $45
	ld a, d                                          ; $7d36: $7a
	ld [hl], c                                       ; $7d37: $71
	ld a, $6e                                        ; $7d38: $3e $6e
	ld a, c                                          ; $7d3a: $79
	ld d, c                                          ; $7d3b: $51
	ld a, a                                          ; $7d3c: $7f
	cp $8e                                           ; $7d3d: $fe $8e
	cp a                                             ; $7d3f: $bf
	ld e, a                                          ; $7d40: $5f
	sub b                                            ; $7d41: $90
	db $10                                           ; $7d42: $10
	sub d                                            ; $7d43: $92
	inc d                                            ; $7d44: $14
	jr nc, jr_03d_7d1e                               ; $7d45: $30 $d7

	sbc b                                            ; $7d47: $98
	ld [hl], a                                       ; $7d48: $77
	ld d, a                                          ; $7d49: $57
	cp b                                             ; $7d4a: $b8
	ld a, a                                          ; $7d4b: $7f
	sub b                                            ; $7d4c: $90
	ld a, a                                          ; $7d4d: $7f
	sub b                                            ; $7d4e: $90
	rst $38                                          ; $7d4f: $ff
	ld [hl], e                                       ; $7d50: $73
	ld b, $7f                                        ; $7d51: $06 $7f
	dec de                                           ; $7d53: $1b
	ld a, l                                          ; $7d54: $7d
	dec hl                                           ; $7d55: $2b
	sub l                                            ; $7d56: $95
	add e                                            ; $7d57: $83
	ld a, h                                          ; $7d58: $7c
	ldh [$1f], a                                     ; $7d59: $e0 $1f
	cp $01                                           ; $7d5b: $fe $01
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	ret nz                                           ; $7d5f: $c0

	add b                                            ; $7d60: $80
	ld [hl], a                                       ; $7d61: $77
	cp $93                                           ; $7d62: $fe $93
	rst SubAFromDE                                          ; $7d64: $df
	add b                                            ; $7d65: $80
	ldh [$9f], a                                     ; $7d66: $e0 $9f
	rst SubAFromDE                                          ; $7d68: $df
	and b                                            ; $7d69: $a0
	sbc a                                            ; $7d6a: $9f
	ldh [rIE], a                                     ; $7d6b: $e0 $ff
	rst $38                                          ; $7d6d: $ff
	ld b, $04                                        ; $7d6e: $06 $04
	ld [hl], a                                       ; $7d70: $77
	cp $97                                           ; $7d71: $fe $97
	ld h, [hl]                                       ; $7d73: $66
	inc b                                            ; $7d74: $04
	or $04                                           ; $7d75: $f6 $04
	ld b, $f4                                        ; $7d77: $06 $f4
	rst FarCall                                          ; $7d79: $f7
	inc b                                            ; $7d7a: $04
	ld l, a                                          ; $7d7b: $6f
	ret nc                                           ; $7d7c: $d0

	ei                                               ; $7d7d: $fb
	sub a                                            ; $7d7e: $97
	ld a, h                                          ; $7d7f: $7c
	nop                                              ; $7d80: $00
	ld bc, $c0fe                                     ; $7d81: $01 $fe $c0
	ldh [rLCDC], a                                   ; $7d84: $e0 $40
	ld h, b                                          ; $7d86: $60
	ld h, a                                          ; $7d87: $67
	cp $8b                                           ; $7d88: $fe $8b
	ret nz                                           ; $7d8a: $c0

	ld h, b                                          ; $7d8b: $60
	ld b, b                                          ; $7d8c: $40
	ldh [rVBK], a                                    ; $7d8d: $e0 $4f
	add h                                            ; $7d8f: $84
	ld c, a                                          ; $7d90: $4f
	add h                                            ; $7d91: $84
	call z, $cf07                                    ; $7d92: $cc $07 $cf
	inc b                                            ; $7d95: $04
	ld c, a                                          ; $7d96: $4f
	add h                                            ; $7d97: $84
	dec bc                                           ; $7d98: $0b
	call nz, $876c                                   ; $7d99: $c4 $6c $87
	dec bc                                           ; $7d9c: $0b
	add h                                            ; $7d9d: $84
	halt                                             ; $7d9e: $76
	call z, $8275                                    ; $7d9f: $cc $75 $82
	ld h, l                                          ; $7da2: $65
	ld a, d                                          ; $7da3: $7a
	db $fd                                           ; $7da4: $fd
	sub a                                            ; $7da5: $97
	rra                                              ; $7da6: $1f
	rrca                                             ; $7da7: $0f
	rra                                              ; $7da8: $1f
	ld [$081d], sp                                   ; $7da9: $08 $1d $08
	rra                                              ; $7dac: $1f
	ld [$f877], sp                                   ; $7dad: $08 $77 $f8
	db $fd                                           ; $7db0: $fd
	ld a, a                                          ; $7db1: $7f
	ld c, $95                                        ; $7db2: $0e $95
	ei                                               ; $7db4: $fb
	inc c                                            ; $7db5: $0c
	ld c, h                                          ; $7db6: $4c
	ld [$2fd8], sp                                   ; $7db7: $08 $d8 $2f
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	add b                                            ; $7dbc: $80
	ret nz                                           ; $7dbd: $c0

	db $fd                                           ; $7dbe: $fd
	adc a                                            ; $7dbf: $8f
	or l                                             ; $7dc0: $b5
	rst $38                                          ; $7dc1: $ff
	rst AddAOntoHL                                          ; $7dc2: $ef
	jr nc, jr_03d_7df5                               ; $7dc3: $30 $30

	jr nz, jr_03d_7e27                               ; $7dc5: $20 $60

	cp a                                             ; $7dc7: $bf
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	jr nz, jr_03d_7e3c                               ; $7dca: $20 $70

	ld a, [$9bfe]                                    ; $7dcc: $fa $fe $9b
	ldh a, [$79]                                     ; $7dcf: $f0 $79
	sub e                                            ; $7dd1: $93
	sbc c                                            ; $7dd2: $99
	db $fd                                           ; $7dd3: $fd
	ldh a, [c]                                       ; $7dd4: $f2
	ldh [$bf], a                                     ; $7dd5: $e0 $bf
	ld h, b                                          ; $7dd7: $60
	nop                                              ; $7dd8: $00
	ld a, b                                          ; $7dd9: $78
	sub h                                            ; $7dda: $94
	ld a, a                                          ; $7ddb: $7f
	call nc, $3391                                   ; $7ddc: $d4 $91 $33
	rst $38                                          ; $7ddf: $ff
	rst GetHLinHL                                          ; $7de0: $cf
	rst $38                                          ; $7de1: $ff
	ld a, [$cf7d]                                    ; $7de2: $fa $7d $cf
	dec e                                            ; $7de5: $1d
	rst $38                                          ; $7de6: $ff
	ld bc, $0301                                     ; $7de7: $01 $01 $03
	ld bc, $d903                                     ; $7dea: $01 $03 $d9
	rst $38                                          ; $7ded: $ff
	sub a                                            ; $7dee: $97
	rst GetHLinHL                                          ; $7def: $cf
	rst AddAOntoHL                                          ; $7df0: $ef
	rst AddAOntoHL                                          ; $7df1: $ef
	rst GetHLinHL                                          ; $7df2: $cf
	rst SubAFromBC                                          ; $7df3: $e7
	rrca                                             ; $7df4: $0f

jr_03d_7df5:
	rlca                                             ; $7df5: $07
	rrca                                             ; $7df6: $0f
	db $db                                           ; $7df7: $db
	rst $38                                          ; $7df8: $ff
	ld a, a                                          ; $7df9: $7f
	jp c, Jump_03d_7994                              ; $7dfa: $da $94 $79

	ld a, [$fc73]                                    ; $7dfd: $fa $73 $fc
	pop hl                                           ; $7e00: $e1
	db $fc                                           ; $7e01: $fc
	ld sp, hl                                        ; $7e02: $f9
	db $ec                                           ; $7e03: $ec
	rst SubAFromDE                                          ; $7e04: $df
	rst $38                                          ; $7e05: $ff

Call_03d_7e06:
	rst SubAFromHL                                          ; $7e06: $d7
	sbc $ff                                          ; $7e07: $de $ff
	sub h                                            ; $7e09: $94
	rst SubAFromBC                                          ; $7e0a: $e7
	rst $38                                          ; $7e0b: $ff
	ld c, a                                          ; $7e0c: $4f
	ld h, e                                          ; $7e0d: $63
	ld l, a                                          ; $7e0e: $6f
	rst SubAFromDE                                          ; $7e0f: $df

Jump_03d_7e10:
	xor $df                                          ; $7e10: $ee $df
	sbc h                                            ; $7e12: $9c
	ld a, d                                          ; $7e13: $7a
	db $fd                                           ; $7e14: $fd
	ld a, e                                          ; $7e15: $7b
	db $f4                                           ; $7e16: $f4
	call c, $97ff                                    ; $7e17: $dc $ff $97
	ei                                               ; $7e1a: $fb
	cp [hl]                                          ; $7e1b: $be
	ld [hl], b                                       ; $7e1c: $70
	halt                                             ; $7e1d: $76
	ld [hl+], a                                      ; $7e1e: $22
	ld b, $02                                        ; $7e1f: $06 $02
	ld c, $79                                        ; $7e21: $0e $79
	inc [hl]                                         ; $7e23: $34
	ld [hl], e                                       ; $7e24: $73
	rst GetHLinHL                                          ; $7e25: $cf
	ld a, h                                          ; $7e26: $7c

jr_03d_7e27:
	ldh [$73], a                                     ; $7e27: $e0 $73
	add h                                            ; $7e29: $84
	ld a, a                                          ; $7e2a: $7f
	pop hl                                           ; $7e2b: $e1
	sbc l                                            ; $7e2c: $9d
	call c, Call_03d_79bf                            ; $7e2d: $dc $bf $79
	inc de                                           ; $7e30: $13
	sbc h                                            ; $7e31: $9c
	scf                                              ; $7e32: $37
	xor $11                                          ; $7e33: $ee $11
	ei                                               ; $7e35: $fb
	sub [hl]                                         ; $7e36: $96
	ld hl, sp-$01                                    ; $7e37: $f8 $ff
	ret c                                            ; $7e39: $d8

	or a                                             ; $7e3a: $b7
	ret nz                                           ; $7e3b: $c0

jr_03d_7e3c:
	rst $38                                          ; $7e3c: $ff
	rst SubAFromDE                                          ; $7e3d: $df
	ldh [$1f], a                                     ; $7e3e: $e0 $1f
	ld [hl], e                                       ; $7e40: $73
	ld b, [hl]                                       ; $7e41: $46
	ld a, e                                          ; $7e42: $7b
	ldh [$dd], a                                     ; $7e43: $e0 $dd
	db $10                                           ; $7e45: $10
	rst SubAFromDE                                          ; $7e46: $df
	rst $38                                          ; $7e47: $ff
	ld a, a                                          ; $7e48: $7f
	db $fd                                           ; $7e49: $fd
	sbc [hl]                                         ; $7e4a: $9e
	db $10                                           ; $7e4b: $10
	ld d, l                                          ; $7e4c: $55
	cp a                                             ; $7e4d: $bf
	ld [hl], h                                       ; $7e4e: $74
	push hl                                          ; $7e4f: $e5
	ei                                               ; $7e50: $fb
	sbc l                                            ; $7e51: $9d
	cp a                                             ; $7e52: $bf
	ret nz                                           ; $7e53: $c0

	sbc $80                                          ; $7e54: $de $80
	ld a, e                                          ; $7e56: $7b
	scf                                              ; $7e57: $37
	ld a, a                                          ; $7e58: $7f
	cp $fb                                           ; $7e59: $fe $fb
	sbc l                                            ; $7e5b: $9d
	db $f4                                           ; $7e5c: $f4
	rlca                                             ; $7e5d: $07

Jump_03d_7e5e:
	sbc $04                                          ; $7e5e: $de $04
	rst SubAFromDE                                          ; $7e60: $df
	rst $38                                          ; $7e61: $ff
	ld a, a                                          ; $7e62: $7f
	db $fd                                           ; $7e63: $fd
	ld a, h                                          ; $7e64: $7c
	ld l, [hl]                                       ; $7e65: $6e
	db $fc                                           ; $7e66: $fc
	ld a, [hl]                                       ; $7e67: $7e
	sbc [hl]                                         ; $7e68: $9e
	ld c, a                                          ; $7e69: $4f
	ret nc                                           ; $7e6a: $d0

	ld a, [hl]                                       ; $7e6b: $7e
	call z, $7eff                                    ; $7e6c: $cc $ff $7e
	jp z, $fa7f                                      ; $7e6f: $ca $7f $fa

	ld [hl], a                                       ; $7e72: $77
	ld hl, sp-$03                                    ; $7e73: $f8 $fd
	sub l                                            ; $7e75: $95
	daa                                              ; $7e76: $27
	call z, $df24                                    ; $7e77: $cc $24 $df
	ld a, [bc]                                       ; $7e7a: $0a
	dec d                                            ; $7e7b: $15
	rrca                                             ; $7e7c: $0f
	db $10                                           ; $7e7d: $10
	ld b, $19                                        ; $7e7e: $06 $19
	ld [hl], a                                       ; $7e80: $77
	cp $9b                                           ; $7e81: $fe $9b
	inc b                                            ; $7e83: $04
	dec de                                           ; $7e84: $1b
	nop                                              ; $7e85: $00
	ldh a, [$6e]                                     ; $7e86: $f0 $6e
	cp [hl]                                          ; $7e88: $be
	ld l, l                                          ; $7e89: $6d
	add d                                            ; $7e8a: $82
	ld a, a                                          ; $7e8b: $7f
	cp $7e                                           ; $7e8c: $fe $7e
	adc $97                                          ; $7e8e: $ce $97
	dec de                                           ; $7e90: $1b
	inc c                                            ; $7e91: $0c
	add hl, de                                       ; $7e92: $19
	ld c, $19                                        ; $7e93: $0e $19
	ld c, $18                                        ; $7e95: $0e $18
	rrca                                             ; $7e97: $0f
	ld l, a                                          ; $7e98: $6f
	cp $99                                           ; $7e99: $fe $99
	or b                                             ; $7e9b: $b0
	ret                                              ; $7e9c: $c9


	cp e                                             ; $7e9d: $bb
	call nz, $c0bf                                   ; $7e9e: $c4 $bf $c0
	ld l, a                                          ; $7ea1: $6f
	cp $7b                                           ; $7ea2: $fe $7b

jr_03d_7ea4:
	adc b                                            ; $7ea4: $88
	ld a, d                                          ; $7ea5: $7a
	adc $7f                                          ; $7ea6: $ce $7f
	cp $92                                           ; $7ea8: $fe $92
	and b                                            ; $7eaa: $a0
	ld [hl], b                                       ; $7eab: $70
	inc h                                            ; $7eac: $24
	ld [hl], b                                       ; $7ead: $70
	and [hl]                                         ; $7eae: $a6
	ld [hl], b                                       ; $7eaf: $70
	and a                                            ; $7eb0: $a7
	ld [hl], b                                       ; $7eb1: $70
	jr nz, jr_03d_7ea4                               ; $7eb2: $20 $f0

	rst AddAOntoHL                                          ; $7eb4: $ef
	rst $38                                          ; $7eb5: $ff
	and b                                            ; $7eb6: $a0
	ld [hl], h                                       ; $7eb7: $74
	ld c, e                                          ; $7eb8: $4b
	sbc $ff                                          ; $7eb9: $de $ff
	ld [hl], a                                       ; $7ebb: $77
	adc a                                            ; $7ebc: $8f
	sbc e                                            ; $7ebd: $9b
	rrca                                             ; $7ebe: $0f
	ldh a, [rTAC]                                    ; $7ebf: $f0 $07
	ld hl, sp+$77                                    ; $7ec1: $f8 $77
	ld c, [hl]                                       ; $7ec3: $4e
	ld h, a                                          ; $7ec4: $67
	ldh a, [rPCM34]                                  ; $7ec5: $f0 $77
	ei                                               ; $7ec7: $fb
	ld a, [hl]                                       ; $7ec8: $7e
	call $ab7d                                       ; $7ec9: $cd $7d $ab
	sbc [hl]                                         ; $7ecc: $9e

Call_03d_7ecd:
	rst FarCall                                          ; $7ecd: $f7
	sbc $ff                                          ; $7ece: $de $ff
	add c                                            ; $7ed0: $81
	rra                                              ; $7ed1: $1f
	rst AddAOntoHL                                          ; $7ed2: $ef
	rra                                              ; $7ed3: $1f
	rrca                                             ; $7ed4: $0f
	cp [hl]                                          ; $7ed5: $be
	ld c, a                                          ; $7ed6: $4f
	cp a                                             ; $7ed7: $bf
	ld c, [hl]                                       ; $7ed8: $4e
	ret c                                            ; $7ed9: $d8

	ld hl, sp-$6d                                    ; $7eda: $f8 $93
	ldh [$e3], a                                     ; $7edc: $e0 $e3
	jp $c383                                         ; $7ede: $c3 $83 $c3


	inc bc                                           ; $7ee1: $03
	or b                                             ; $7ee2: $b0
	nop                                              ; $7ee3: $00
	jr nc, jr_03d_7f09                               ; $7ee4: $30 $23

	ld h, b                                          ; $7ee6: $60
	ld h, e                                          ; $7ee7: $63
	ldh a, [$3c]                                     ; $7ee8: $f0 $3c
	ld a, b                                          ; $7eea: $78
	db $ec                                           ; $7eeb: $ec
	nop                                              ; $7eec: $00
	ldh [$c0], a                                     ; $7eed: $e0 $c0
	ld a, e                                          ; $7eef: $7b
	cp $7d                                           ; $7ef0: $fe $7d
	call c, $1f9e                                    ; $7ef2: $dc $9e $1f
	ld [hl], a                                       ; $7ef5: $77
	ret nc                                           ; $7ef6: $d0

	sbc [hl]                                         ; $7ef7: $9e
	inc b                                            ; $7ef8: $04
	ld a, b                                          ; $7ef9: $78
	ldh [$97], a                                     ; $7efa: $e0 $97
	rlca                                             ; $7efc: $07
	ld bc, $0305                                     ; $7efd: $01 $05 $03
	dec b                                            ; $7f00: $05
	ld [bc], a                                       ; $7f01: $02
	ld bc, $77fe                                     ; $7f02: $01 $fe $77
	xor l                                            ; $7f05: $ad
	ld h, a                                          ; $7f06: $67
	or b                                             ; $7f07: $b0
	ld a, a                                          ; $7f08: $7f

jr_03d_7f09:
	ld a, [$a57f]                                    ; $7f09: $fa $7f $a5
	ld a, a                                          ; $7f0c: $7f
	db $fc                                           ; $7f0d: $fc
	sbc l                                            ; $7f0e: $9d

Jump_03d_7f0f:
	cp a                                             ; $7f0f: $bf
	ld b, b                                          ; $7f10: $40
	ld e, a                                          ; $7f11: $5f
	ldh a, [$9e]                                     ; $7f12: $f0 $9e
	ld [hl+], a                                      ; $7f14: $22
	ld a, e                                          ; $7f15: $7b
	or $9e                                           ; $7f16: $f6 $9e
	di                                               ; $7f18: $f3
	ld [hl], d                                       ; $7f19: $72
	sbc $6f                                          ; $7f1a: $de $6f
	ldh a, [$9e]                                     ; $7f1c: $f0 $9e
	ld [bc], a                                       ; $7f1e: $02
	ld h, b                                          ; $7f1f: $60
	ld h, d                                          ; $7f20: $62
	ld l, a                                          ; $7f21: $6f
	ldh a, [$7f]                                     ; $7f22: $f0 $7f
	ld h, [hl]                                       ; $7f24: $66
	sbc [hl]                                         ; $7f25: $9e
	ld [$f05b], a                                    ; $7f26: $ea $5b $f0
	sbc l                                            ; $7f29: $9d
	xor b                                            ; $7f2a: $a8
	ld d, a                                          ; $7f2b: $57
	ld sp, hl                                        ; $7f2c: $f9
	ld e, a                                          ; $7f2d: $5f
	ld h, b                                          ; $7f2e: $60
	inc bc                                           ; $7f2f: $03
	ldh a, [$3b]                                     ; $7f30: $f0 $3b
	ldh a, [$7f]                                     ; $7f32: $f0 $7f
	ld l, a                                          ; $7f34: $6f
	sbc l                                            ; $7f35: $9d
	ld a, [$5705]                                    ; $7f36: $fa $05 $57
	ldh a, [$7e]                                     ; $7f39: $f0 $7e
	ret z                                            ; $7f3b: $c8

	ld a, l                                          ; $7f3c: $7d
	db $ed                                           ; $7f3d: $ed

Call_03d_7f3e:
	ld a, [hl]                                       ; $7f3e: $7e
	ld sp, hl                                        ; $7f3f: $f9
	ld a, a                                          ; $7f40: $7f
	cp $9e                                           ; $7f41: $fe $9e
	jr jr_03d_7fc0                                   ; $7f43: $18 $7b

	jr nz, @-$60                                     ; $7f45: $20 $9e

	rra                                              ; $7f47: $1f
	ld [hl], l                                       ; $7f48: $75
	add h                                            ; $7f49: $84
	sbc d                                            ; $7f4a: $9a
	ld [$f8ff], sp                                   ; $7f4b: $08 $ff $f8
	rst $38                                          ; $7f4e: $ff
	ld [$fe7b], sp                                   ; $7f4f: $08 $7b $fe
	sbc b                                            ; $7f52: $98
	rrca                                             ; $7f53: $0f
	ldh [$cf], a                                     ; $7f54: $e0 $cf
	ret nc                                           ; $7f56: $d0

	rrca                                             ; $7f57: $0f
	ld a, a                                          ; $7f58: $7f
	ld a, a                                          ; $7f59: $7f
	halt                                             ; $7f5a: $76
	ld d, [hl]                                       ; $7f5b: $56
	ld [hl], e                                       ; $7f5c: $73
	cp $77                                           ; $7f5d: $fe $77
	adc $de                                          ; $7f5f: $ce $de
	rst $38                                          ; $7f61: $ff
	sbc h                                            ; $7f62: $9c
	db $f4                                           ; $7f63: $f4
	jr nz, @+$01                                     ; $7f64: $20 $ff

	ld l, a                                          ; $7f66: $6f
	cp $6b                                           ; $7f67: $fe $6b
	ldh a, [$72]                                     ; $7f69: $f0 $72
	db $db                                           ; $7f6b: $db
	ld a, e                                          ; $7f6c: $7b
	cp $8f                                           ; $7f6d: $fe $8f
	pop af                                           ; $7f6f: $f1
	ld c, $3f                                        ; $7f70: $0e $3f
	nop                                              ; $7f72: $00
	ld e, $00                                        ; $7f73: $1e $00
	ld b, b                                          ; $7f75: $40
	cp a                                             ; $7f76: $bf
	nop                                              ; $7f77: $00
	rst $38                                          ; $7f78: $ff
	ld b, $f9                                        ; $7f79: $06 $f9
	nop                                              ; $7f7b: $00
	rst $38                                          ; $7f7c: $ff
	add b                                            ; $7f7d: $80
	ld a, a                                          ; $7f7e: $7f
	ld l, a                                          ; $7f7f: $6f
	sbc a                                            ; $7f80: $9f

jr_03d_7f81:
	add e                                            ; $7f81: $83
	ret nc                                           ; $7f82: $d0

	cpl                                              ; $7f83: $2f
	inc a                                            ; $7f84: $3c
	adc $3f                                          ; $7f85: $ce $3f
	rst GetHLinHL                                          ; $7f87: $cf
	cpl                                              ; $7f88: $2f
	rst SubAFromDE                                          ; $7f89: $df
	cpl                                              ; $7f8a: $2f
	rst SubAFromDE                                          ; $7f8b: $df
	xor [hl]                                         ; $7f8c: $ae
	rra                                              ; $7f8d: $1f
	inc e                                            ; $7f8e: $1c
	rra                                              ; $7f8f: $1f
	inc a                                            ; $7f90: $3c
	inc e                                            ; $7f91: $1c
	inc e                                            ; $7f92: $1c
	cp $b3                                           ; $7f93: $fe $b3
	ret nz                                           ; $7f95: $c0

	add e                                            ; $7f96: $83
	ret nz                                           ; $7f97: $c0

	add e                                            ; $7f98: $83
	ldh [rP1], a                                     ; $7f99: $e0 $00

Call_03d_7f9b:
	ldh [$80], a                                     ; $7f9b: $e0 $80
	ld [hl], b                                       ; $7f9d: $70
	ld [hl], l                                       ; $7f9e: $75
	ld c, $96                                        ; $7f9f: $0e $96
	scf                                              ; $7fa1: $37
	ret nz                                           ; $7fa2: $c0

	cp $00                                           ; $7fa3: $fe $00
	db $fc                                           ; $7fa5: $fc
	nop                                              ; $7fa6: $00
	ld hl, sp+$01                                    ; $7fa7: $f8 $01
	nop                                              ; $7fa9: $00
	ld [hl], l                                       ; $7faa: $75
	ld d, l                                          ; $7fab: $55
	add b                                            ; $7fac: $80
	inc bc                                           ; $7fad: $03
	ccf                                              ; $7fae: $3f
	inc bc                                           ; $7faf: $03
	inc bc                                           ; $7fb0: $03
	rst $38                                          ; $7fb1: $ff
	rrca                                             ; $7fb2: $0f
	inc a                                            ; $7fb3: $3c
	rst JumpTable                                          ; $7fb4: $c7
	jr c, @+$73                                      ; $7fb5: $38 $71

	ld hl, sp-$67                                    ; $7fb7: $f8 $99
	ldh [$6c], a                                     ; $7fb9: $e0 $6c
	add e                                            ; $7fbb: $83
	cp c                                             ; $7fbc: $b9
	ld b, a                                          ; $7fbd: $47
	cp d                                             ; $7fbe: $ba
	rst GetHLinHL                                          ; $7fbf: $cf

jr_03d_7fc0:
	add e                                            ; $7fc0: $83
	rst $38                                          ; $7fc1: $ff
	ld b, d                                          ; $7fc2: $42
	ld hl, sp+$00                                    ; $7fc3: $f8 $00
	adc a                                            ; $7fc5: $8f
	nop                                              ; $7fc6: $00
	rrca                                             ; $7fc7: $0f
	sub a                                            ; $7fc8: $97
	dec bc                                           ; $7fc9: $0b
	ld h, c                                          ; $7fca: $61
	add c                                            ; $7fcb: $81
	sbc d                                            ; $7fcc: $9a
	cp b                                             ; $7fcd: $b8
	ret nz                                           ; $7fce: $c0

jr_03d_7fcf:
	ld c, $f1                                        ; $7fcf: $0e $f1
	jp c, Jump_03d_507a                              ; $7fd1: $da $7a $50

	ld a, c                                          ; $7fd4: $79
	add hl, hl                                       ; $7fd5: $29
	add b                                            ; $7fd6: $80
	inc bc                                           ; $7fd7: $03
	add c                                            ; $7fd8: $81
	ld bc, $0383                                     ; $7fd9: $01 $83 $03
	rlca                                             ; $7fdc: $07
	rla                                              ; $7fdd: $17
	ld a, e                                          ; $7fde: $7b
	sbc [hl]                                         ; $7fdf: $9e
	ccf                                              ; $7fe0: $3f
	db $fc                                           ; $7fe1: $fc
	ld c, e                                          ; $7fe2: $4b
	jr jr_03d_7fcf                                   ; $7fe3: $18 $ea

	ld e, h                                          ; $7fe5: $5c
	adc b                                            ; $7fe6: $88
	call nz, $b2ec                                   ; $7fe7: $c4 $ec $b2
	adc e                                            ; $7fea: $8b
	ld a, [$beda]                                    ; $7feb: $fa $da $be
	jp $ef3d                                         ; $7fee: $c3 $3d $ef


	add hl, sp                                       ; $7ff1: $39
	sub h                                            ; $7ff2: $94
	jr z, jr_03d_7f81                                ; $7ff3: $28 $8c

	ld [de], a                                       ; $7ff5: $12
	sub e                                            ; $7ff6: $93
	db $10                                           ; $7ff7: $10
	daa                                              ; $7ff8: $27
	nop                                              ; $7ff9: $00
	rlca                                             ; $7ffa: $07
	and c                                            ; $7ffb: $a1
	dec e                                            ; $7ffc: $1d
	jr nc, @+$3e                                     ; $7ffd: $30 $3c

	add b                                            ; $7fff: $80
