; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

	and d                                            ; $4000: $a2
	sbc e                                            ; $4001: $9b
	nop                                              ; $4002: $00
	ld a, [hl+]                                      ; $4003: $2a
	ld de, $7ad2                                     ; $4004: $11 $d2 $7a
	add $9a                                          ; $4007: $c6 $9a
	ld [hl-], a                                      ; $4009: $32
	ld bc, $3106                                     ; $400a: $01 $06 $31
	ldh a, [c]                                       ; $400d: $f2
	ld [hl], e                                       ; $400e: $73
	ld hl, sp+$7c                                    ; $400f: $f8 $7c
	ld c, d                                          ; $4011: $4a
	ld [hl], a                                       ; $4012: $77
	cp $7e                                           ; $4013: $fe $7e
	add $77                                          ; $4015: $c6 $77
	db $fc                                           ; $4017: $fc
	ld a, a                                          ; $4018: $7f
	cp $9d                                           ; $4019: $fe $9d
	sub [hl]                                         ; $401b: $96
	db $fc                                           ; $401c: $fc
	ld [hl], a                                       ; $401d: $77
	ld b, h                                          ; $401e: $44
	halt                                             ; $401f: $76
	cp h                                             ; $4020: $bc
	sbc [hl]                                         ; $4021: $9e
	rst SubAFromHL                                          ; $4022: $d7
	ld [hl], d                                       ; $4023: $72
	cp h                                             ; $4024: $bc
	ld a, a                                          ; $4025: $7f
	ld hl, sp-$6d                                    ; $4026: $f8 $93
	push de                                          ; $4028: $d5
	dec hl                                           ; $4029: $2b
	ld l, a                                          ; $402a: $6f
	db $10                                           ; $402b: $10
	ld d, l                                          ; $402c: $55
	ld a, [hl+]                                      ; $402d: $2a
	ld l, e                                          ; $402e: $6b
	inc d                                            ; $402f: $14
	ld d, h                                          ; $4030: $54
	dec hl                                           ; $4031: $2b
	ld l, d                                          ; $4032: $6a
	dec d                                            ; $4033: $15
	ld [hl], a                                       ; $4034: $77
	db $fc                                           ; $4035: $fc
	sub [hl]                                         ; $4036: $96
	di                                               ; $4037: $f3
	rst $38                                          ; $4038: $ff
	inc bc                                           ; $4039: $03
	rst $38                                          ; $403a: $ff
	ldh a, [rIF]                                     ; $403b: $f0 $0f
	ldh a, [rIF]                                     ; $403d: $f0 $0f
	add b                                            ; $403f: $80
	ld a, d                                          ; $4040: $7a
	jp c, $1479                                      ; $4041: $da $79 $14

	ld a, l                                          ; $4044: $7d
	inc c                                            ; $4045: $0c
	ld a, e                                          ; $4046: $7b
	add b                                            ; $4047: $80
	sbc h                                            ; $4048: $9c
	ld [de], a                                       ; $4049: $12
	rst $38                                          ; $404a: $ff
	inc bc                                           ; $404b: $03
	ld h, [hl]                                       ; $404c: $66
	xor a                                            ; $404d: $af
	ld [hl], a                                       ; $404e: $77
	adc c                                            ; $404f: $89
	ld a, l                                          ; $4050: $7d
	halt                                             ; $4051: $76
	ld l, e                                          ; $4052: $6b
	add h                                            ; $4053: $84
	ld [hl], a                                       ; $4054: $77
	ldh a, [$9e]                                     ; $4055: $f0 $9e
	ld [hl], a                                       ; $4057: $77
	ld a, e                                          ; $4058: $7b
	ldh a, [$78]                                     ; $4059: $f0 $78
	jp hl                                            ; $405b: $e9


	ld h, e                                          ; $405c: $63
	ldh a, [$9e]                                     ; $405d: $f0 $9e
	ldh a, [$7b]                                     ; $405f: $f0 $7b
	halt                                             ; $4061: $76
	ld a, d                                          ; $4062: $7a
	ret z                                            ; $4063: $c8

	db $fc                                           ; $4064: $fc
	sbc [hl]                                         ; $4065: $9e
	db $10                                           ; $4066: $10
	ld a, d                                          ; $4067: $7a
	db $f4                                           ; $4068: $f4
	ld a, l                                          ; $4069: $7d
	adc b                                            ; $406a: $88
	adc h                                            ; $406b: $8c
	rlca                                             ; $406c: $07
	ld a, a                                          ; $406d: $7f
	inc bc                                           ; $406e: $03
	ld a, a                                          ; $406f: $7f
	ld bc, $0078                                     ; $4070: $01 $78 $00
	ld a, b                                          ; $4073: $78
	ld [$0370], sp                                   ; $4074: $08 $70 $03
	ld a, b                                          ; $4077: $78
	ld l, b                                          ; $4078: $68
	nop                                              ; $4079: $00
	rlca                                             ; $407a: $07
	rst $38                                          ; $407b: $ff
	dec c                                            ; $407c: $0d
	rst $38                                          ; $407d: $ff
	cp h                                             ; $407e: $bc
	ld a, d                                          ; $407f: $7a
	ld [$d26f], a                                    ; $4080: $ea $6f $d2
	ld l, a                                          ; $4083: $6f
	xor l                                            ; $4084: $ad
	ld h, h                                          ; $4085: $64
	ld b, a                                          ; $4086: $47
	ld a, a                                          ; $4087: $7f
	ld sp, hl                                        ; $4088: $f9
	ld a, d                                          ; $4089: $7a
	cp $53                                           ; $408a: $fe $53
	ldh a, [$75]                                     ; $408c: $f0 $75
	add b                                            ; $408e: $80
	ld a, a                                          ; $408f: $7f
	cp $9c                                           ; $4090: $fe $9c
	ei                                               ; $4092: $fb
	nop                                              ; $4093: $00
	ld h, b                                          ; $4094: $60
	ld [hl], a                                       ; $4095: $77
	or $9d                                           ; $4096: $f6 $9d
	ld a, a                                          ; $4098: $7f
	add c                                            ; $4099: $81
	ld [hl], e                                       ; $409a: $73
	and $9e                                          ; $409b: $e6 $9e
	add hl, sp                                       ; $409d: $39
	ld h, e                                          ; $409e: $63
	pop hl                                           ; $409f: $e1
	ld a, a                                          ; $40a0: $7f
	ld a, b                                          ; $40a1: $78
	ld [hl], a                                       ; $40a2: $77
	push af                                          ; $40a3: $f5
	ld a, a                                          ; $40a4: $7f
	or h                                             ; $40a5: $b4
	ld [hl], b                                       ; $40a6: $70
	ld [hl], h                                       ; $40a7: $74
	ld a, a                                          ; $40a8: $7f
	ld a, [hl+]                                      ; $40a9: $2a
	sbc l                                            ; $40aa: $9d
	rst $38                                          ; $40ab: $ff
	ld [$b87a], sp                                   ; $40ac: $08 $7a $b8
	ld a, [hl]                                       ; $40af: $7e
	call z, $8f9e                                    ; $40b0: $cc $9e $8f
	halt                                             ; $40b3: $76
	ld b, e                                          ; $40b4: $43
	ld a, e                                          ; $40b5: $7b
	ldh a, [$7e]                                     ; $40b6: $f0 $7e
	adc d                                            ; $40b8: $8a
	sbc e                                            ; $40b9: $9b
	cp a                                             ; $40ba: $bf
	ld a, a                                          ; $40bb: $7f
	db $ec                                           ; $40bc: $ec
	rra                                              ; $40bd: $1f
	ld l, e                                          ; $40be: $6b
	sbc d                                            ; $40bf: $9a
	ld [hl], d                                       ; $40c0: $72
	ld h, d                                          ; $40c1: $62
	sbc h                                            ; $40c2: $9c
	ldh [rIE], a                                     ; $40c3: $e0 $ff
	ld h, b                                          ; $40c5: $60
	ld l, l                                          ; $40c6: $6d
	dec hl                                           ; $40c7: $2b
	cp $9a                                           ; $40c8: $fe $9a
	xor d                                            ; $40ca: $aa
	ld d, l                                          ; $40cb: $55
	rst $38                                          ; $40cc: $ff
	rst $38                                          ; $40cd: $ff
	ld [hl], e                                       ; $40ce: $73
	ld a, e                                          ; $40cf: $7b
	di                                               ; $40d0: $f3
	ld a, a                                          ; $40d1: $7f
	jp nz, $a27f                                     ; $40d2: $c2 $7f $a2

	db $fc                                           ; $40d5: $fc
	ld a, l                                          ; $40d6: $7d
	ld d, a                                          ; $40d7: $57
	sbc $f8                                          ; $40d8: $de $f8
	ld a, a                                          ; $40da: $7f
	ld b, d                                          ; $40db: $42
	adc [hl]                                         ; $40dc: $8e
	ld [de], a                                       ; $40dd: $12
	ld hl, $23dc                                     ; $40de: $21 $dc $23
	nop                                              ; $40e1: $00
	inc bc                                           ; $40e2: $03
	ld [hl-], a                                      ; $40e3: $32
	ld bc, $3102                                     ; $40e4: $01 $02 $31
	db $fc                                           ; $40e7: $fc
	inc bc                                           ; $40e8: $03
	ld [bc], a                                       ; $40e9: $02
	ld bc, $0300                                     ; $40ea: $01 $00 $03
	add h                                            ; $40ed: $84
	ld a, d                                          ; $40ee: $7a
	call z, $a49a                                    ; $40ef: $cc $9a $a4
	db $fc                                           ; $40f2: $fc
	sub h                                            ; $40f3: $94
	db $fc                                           ; $40f4: $fc
	and [hl]                                         ; $40f5: $a6
	ld [hl], e                                       ; $40f6: $73
	ld hl, sp+$7f                                    ; $40f7: $f8 $7f
	ldh a, [c]                                       ; $40f9: $f2
	ld a, [hl]                                       ; $40fa: $7e
	adc $9e                                          ; $40fb: $ce $9e
	db $dd                                           ; $40fd: $dd
	ld [hl], d                                       ; $40fe: $72
	ret z                                            ; $40ff: $c8

	ld a, a                                          ; $4100: $7f
	cp $9e                                           ; $4101: $fe $9e
	xor d                                            ; $4103: $aa
	db $fc                                           ; $4104: $fc
	adc a                                            ; $4105: $8f
	ld d, a                                          ; $4106: $57
	jr z, jr_050_412d                                ; $4107: $28 $24

	ld e, b                                          ; $4109: $58
	ld d, l                                          ; $410a: $55
	jr z, jr_050_4171                                ; $410b: $28 $64

	jr @+$52                                         ; $410d: $18 $50

	cpl                                              ; $410f: $2f
	xor a                                            ; $4110: $af
	ld d, a                                          ; $4111: $57
	ld e, e                                          ; $4112: $5b
	daa                                              ; $4113: $27
	ld e, c                                          ; $4114: $59
	daa                                              ; $4115: $27
	ld l, a                                          ; $4116: $6f
	ld h, $6c                                        ; $4117: $26 $6c
	cp d                                             ; $4119: $ba
	sbc h                                            ; $411a: $9c
	cp $ff                                           ; $411b: $fe $ff
	db $fc                                           ; $411d: $fc
	ld h, [hl]                                       ; $411e: $66
	rst SubAFromBC                                          ; $411f: $e7
	ld [hl], e                                       ; $4120: $73
	ldh a, [$7e]                                     ; $4121: $f0 $7e
	or h                                             ; $4123: $b4
	ld a, h                                          ; $4124: $7c
	jr c, jr_050_417e                                ; $4125: $38 $57

	ldh a, [rPCM34]                                  ; $4127: $f0 $77
	sbc $4f                                          ; $4129: $de $4f
	ldh a, [$57]                                     ; $412b: $f0 $57

jr_050_412d:
	ret nc                                           ; $412d: $d0

	ld a, a                                          ; $412e: $7f
	ld l, a                                          ; $412f: $6f
	sbc [hl]                                         ; $4130: $9e
	rst FarCall                                          ; $4131: $f7
	ld a, b                                          ; $4132: $78
	inc a                                            ; $4133: $3c
	ld sp, hl                                        ; $4134: $f9
	ld a, a                                          ; $4135: $7f
	ld [hl-], a                                      ; $4136: $32
	rst SubAFromDE                                          ; $4137: $df
	rst $38                                          ; $4138: $ff
	ld a, a                                          ; $4139: $7f
	db $fc                                           ; $413a: $fc
	ld a, l                                          ; $413b: $7d
	ld a, [hl]                                       ; $413c: $7e
	ld sp, hl                                        ; $413d: $f9
	sbc [hl]                                         ; $413e: $9e
	daa                                              ; $413f: $27
	ld [hl], a                                       ; $4140: $77
	ldh a, [c]                                       ; $4141: $f2
	ld a, e                                          ; $4142: $7b
	cp $53                                           ; $4143: $fe $53
	pop bc                                           ; $4145: $c1
	ld a, b                                          ; $4146: $78
	sub h                                            ; $4147: $94
	ld c, a                                          ; $4148: $4f
	ldh a, [$7b]                                     ; $4149: $f0 $7b
	inc de                                           ; $414b: $13
	sub a                                            ; $414c: $97
	ccf                                              ; $414d: $3f
	db $10                                           ; $414e: $10
	rrca                                             ; $414f: $0f
	ld sp, $5a07                                     ; $4150: $31 $07 $5a
	ld bc, $7b44                                     ; $4153: $01 $44 $7b
	push af                                          ; $4156: $f5
	ld [hl], c                                       ; $4157: $71
	ld [$a072], sp                                   ; $4158: $08 $72 $a0
	sbc l                                            ; $415b: $9d
	dec d                                            ; $415c: $15
	ld [$007b], a                                    ; $415d: $ea $7b $00
	ld l, h                                          ; $4160: $6c
	cp l                                             ; $4161: $bd
	ld [hl], h                                       ; $4162: $74
	ld c, c                                          ; $4163: $49
	ld a, e                                          ; $4164: $7b
	cp $9c                                           ; $4165: $fe $9c
	db $f4                                           ; $4167: $f4
	ld [$79ac], sp                                   ; $4168: $08 $ac $79
	ld [hl], h                                       ; $416b: $74
	sbc b                                            ; $416c: $98
	ccf                                              ; $416d: $3f
	nop                                              ; $416e: $00
	ldh a, [c]                                       ; $416f: $f2

Jump_050_4170:
	rrca                                             ; $4170: $0f

jr_050_4171:
	db $fc                                           ; $4171: $fc
	inc bc                                           ; $4172: $03
	cp $78                                           ; $4173: $fe $78
	db $ec                                           ; $4175: $ec
	ld [hl], a                                       ; $4176: $77
	cp $7c                                           ; $4177: $fe $7c
	ld h, d                                          ; $4179: $62
	sub b                                            ; $417a: $90
	ld e, $e0                                        ; $417b: $1e $e0
	ld h, b                                          ; $417d: $60

jr_050_417e:
	rst $38                                          ; $417e: $ff
	and b                                            ; $417f: $a0
	rst $38                                          ; $4180: $ff
	ld b, e                                          ; $4181: $43
	rst $38                                          ; $4182: $ff
	xor b                                            ; $4183: $a8
	ld a, a                                          ; $4184: $7f
	ret nz                                           ; $4185: $c0

	ccf                                              ; $4186: $3f
	rst SubAFromBC                                          ; $4187: $e7
	jr @+$72                                         ; $4188: $18 $70

	ld a, e                                          ; $418a: $7b
	cp a                                             ; $418b: $bf
	sbc d                                            ; $418c: $9a
	xor e                                            ; $418d: $ab
	rst $38                                          ; $418e: $ff
	ld e, [hl]                                       ; $418f: $5e
	rst $38                                          ; $4190: $ff
	push af                                          ; $4191: $f5
	halt                                             ; $4192: $76
	inc c                                            ; $4193: $0c
	sbc b                                            ; $4194: $98
	db $fc                                           ; $4195: $fc
	db $e3                                           ; $4196: $e3
	nop                                              ; $4197: $00
	rlca                                             ; $4198: $07
	nop                                              ; $4199: $00
	dec de                                           ; $419a: $1b
	inc b                                            ; $419b: $04
	ld a, e                                          ; $419c: $7b
	adc l                                            ; $419d: $8d
	sbc h                                            ; $419e: $9c
	ldh [$3f], a                                     ; $419f: $e0 $3f
	ret nz                                           ; $41a1: $c0

	ld [hl], a                                       ; $41a2: $77
	jp nc, $ca7f                                     ; $41a3: $d2 $7f $ca

	ld a, a                                          ; $41a6: $7f
	add $86                                          ; $41a7: $c6 $86
	ld a, [$ff06]                                    ; $41a9: $fa $06 $ff
	ld [bc], a                                       ; $41ac: $02
	ldh a, [c]                                       ; $41ad: $f2
	inc c                                            ; $41ae: $0c
	ldh [rAUD2LOW], a                                ; $41af: $e0 $18
	ret nc                                           ; $41b1: $d0

	jr nz, jr_050_41d4                               ; $41b2: $20 $20

	ret nz                                           ; $41b4: $c0

	nop                                              ; $41b5: $00
	add b                                            ; $41b6: $80
	add b                                            ; $41b7: $80
	nop                                              ; $41b8: $00
	ld bc, $ff00                                     ; $41b9: $01 $00 $ff
	inc b                                            ; $41bc: $04
	ld [bc], a                                       ; $41bd: $02
	ld bc, $000f                                     ; $41be: $01 $0f $00
	rra                                              ; $41c1: $1f
	ld a, e                                          ; $41c2: $7b
	and [hl]                                         ; $41c3: $a6
	ld a, a                                          ; $41c4: $7f
	ld b, l                                          ; $41c5: $45
	ld l, a                                          ; $41c6: $6f
	xor d                                            ; $41c7: $aa
	add b                                            ; $41c8: $80
	ld bc, $fefe                                     ; $41c9: $01 $fe $fe
	ld bc, $03fd                                     ; $41cc: $01 $fd $03
	ei                                               ; $41cf: $fb
	rlca                                             ; $41d0: $07
	rst FarCall                                          ; $41d1: $f7
	rrca                                             ; $41d2: $0f
	rst AddAOntoHL                                          ; $41d3: $ef

jr_050_41d4:
	ld e, $de                                        ; $41d4: $1e $de
	inc a                                            ; $41d6: $3c
	cp b                                             ; $41d7: $b8
	ld a, l                                          ; $41d8: $7d
	ld [hl], b                                       ; $41d9: $70
	ld a, [$f7e0]                                    ; $41da: $fa $e0 $f7
	ret nz                                           ; $41dd: $c0

	jp hl                                            ; $41de: $e9


	add b                                            ; $41df: $80
	jp z, $9500                                      ; $41e0: $ca $00 $95

	nop                                              ; $41e3: $00
	ld l, d                                          ; $41e4: $6a
	nop                                              ; $41e5: $00
	push de                                          ; $41e6: $d5
	db $fc                                           ; $41e7: $fc
	sub d                                            ; $41e8: $92
	rst $38                                          ; $41e9: $ff
	inc a                                            ; $41ea: $3c
	rst $38                                          ; $41eb: $ff
	inc e                                            ; $41ec: $1c
	ccf                                              ; $41ed: $3f
	rrca                                             ; $41ee: $0f
	sbc a                                            ; $41ef: $9f
	ld [bc], a                                       ; $41f0: $02
	call Call_050_6112                               ; $41f1: $cd $12 $61
	rla                                              ; $41f4: $17
	xor e                                            ; $41f5: $ab
	ld [hl], c                                       ; $41f6: $71
	adc a                                            ; $41f7: $8f
	call c, $9aff                                    ; $41f8: $dc $ff $9a
	ei                                               ; $41fb: $fb
	db $fd                                           ; $41fc: $fd
	ld c, b                                          ; $41fd: $48
	db $fd                                           ; $41fe: $fd
	rst $38                                          ; $41ff: $ff
	ld l, l                                          ; $4200: $6d
	ld [$ffdc], sp                                   ; $4201: $08 $dc $ff
	sub a                                            ; $4204: $97
	sbc a                                            ; $4205: $9f
	rst $38                                          ; $4206: $ff
	add hl, bc                                       ; $4207: $09
	cp $7c                                           ; $4208: $fe $7c
	rst AddAOntoHL                                          ; $420a: $ef
	jr nc, @-$2f                                     ; $420b: $30 $cf

	ld h, a                                          ; $420d: $67
	ldh a, [$7e]                                     ; $420e: $f0 $7e
	ldh a, [c]                                       ; $4210: $f2
	sbc b                                            ; $4211: $98
	call z, $fe7f                                    ; $4212: $cc $7f $fe
	db $fd                                           ; $4215: $fd
	jr @+$01                                         ; $4216: $18 $ff

	ld [hl], b                                       ; $4218: $70
	ld a, d                                          ; $4219: $7a
	inc a                                            ; $421a: $3c
	db $dd                                           ; $421b: $dd
	ld hl, sp-$66                                    ; $421c: $f8 $9a
	ld sp, hl                                        ; $421e: $f9
	cp $db                                           ; $421f: $fe $db
	db $fc                                           ; $4221: $fc
	sbc h                                            ; $4222: $9c
	ld a, e                                          ; $4223: $7b
	ld [$df90], a                                    ; $4224: $ea $90 $df
	ccf                                              ; $4227: $3f
	xor a                                            ; $4228: $af
	ld e, a                                          ; $4229: $5f
	rst SubAFromHL                                          ; $422a: $d7

jr_050_422b:
	cpl                                              ; $422b: $2f
	xor c                                            ; $422c: $a9
	ld d, a                                          ; $422d: $57
	jr nz, @-$1f                                     ; $422e: $20 $df

	nop                                              ; $4230: $00
	rst GetHLinHL                                          ; $4231: $cf
	pop de                                           ; $4232: $d1
	xor $db                                          ; $4233: $ee $db
	ld a, e                                          ; $4235: $7b
	xor $77                                          ; $4236: $ee $77
	cp $96                                           ; $4238: $fe $96
	sbc l                                            ; $423a: $9d
	rst $38                                          ; $423b: $ff
	cp $fe                                           ; $423c: $fe $fe
	ld a, [hl]                                       ; $423e: $7e
	rst $38                                          ; $423f: $ff
	ld c, a                                          ; $4240: $4f
	ld sp, hl                                        ; $4241: $f9
	ei                                               ; $4242: $fb
	ret c                                            ; $4243: $d8

	rst $38                                          ; $4244: $ff
	sub a                                            ; $4245: $97
	ld c, c                                          ; $4246: $49
	di                                               ; $4247: $f3
	ld d, h                                          ; $4248: $54
	db $e3                                           ; $4249: $e3
	xor h                                            ; $424a: $ac
	db $d3                                           ; $424b: $d3
	rst JumpTable                                          ; $424c: $c7
	ld hl, sp-$25                                    ; $424d: $f8 $db
	rst $38                                          ; $424f: $ff
	sub l                                            ; $4250: $95
	ld a, e                                          ; $4251: $7b
	rst $38                                          ; $4252: $ff
	ld a, [de]                                       ; $4253: $1a
	db $fd                                           ; $4254: $fd
	ld b, d                                          ; $4255: $42
	cp l                                             ; $4256: $bd
	ld b, b                                          ; $4257: $40
	cp a                                             ; $4258: $bf
	reti                                             ; $4259: $d9


	ld h, [hl]                                       ; $425a: $66
	db $fd                                           ; $425b: $fd
	sub d                                            ; $425c: $92
	ld sp, $3f80                                     ; $425d: $31 $80 $3f
	add b                                            ; $4260: $80
	ld a, l                                          ; $4261: $7d
	nop                                              ; $4262: $00
	ld a, a                                          ; $4263: $7f
	add b                                            ; $4264: $80
	add a                                            ; $4265: $87
	add b                                            ; $4266: $80
	ei                                               ; $4267: $fb
	nop                                              ; $4268: $00
	ld a, [hl-]                                      ; $4269: $3a
	ld a, e                                          ; $426a: $7b
	ld [hl], $9e                                     ; $426b: $36 $9e
	cp a                                             ; $426d: $bf
	ld l, e                                          ; $426e: $6b
	ld [hl], $79                                     ; $426f: $36 $79
	xor h                                            ; $4271: $ac
	sbc e                                            ; $4272: $9b
	nop                                              ; $4273: $00
	rst SubAFromDE                                          ; $4274: $df
	nop                                              ; $4275: $00
	rst AddAOntoHL                                          ; $4276: $ef
	ld [hl], e                                       ; $4277: $73
	db $f4                                           ; $4278: $f4
	sub [hl]                                         ; $4279: $96
	xor e                                            ; $427a: $ab
	ld d, h                                          ; $427b: $54
	rst SubAFromHL                                          ; $427c: $d7
	jr z, jr_050_422b                                ; $427d: $28 $ac

	ld d, e                                          ; $427f: $53
	rst $38                                          ; $4280: $ff
	nop                                              ; $4281: $00
	jp nz, $f06b                                     ; $4282: $c2 $6b $f0

	ld a, a                                          ; $4285: $7f
	cp $7e                                           ; $4286: $fe $7e
	xor e                                            ; $4288: $ab
	sbc e                                            ; $4289: $9b
	ld a, b                                          ; $428a: $78
	add b                                            ; $428b: $80
	pop de                                           ; $428c: $d1
	ld [bc], a                                       ; $428d: $02
	db $fd                                           ; $428e: $fd
	ld a, c                                          ; $428f: $79
	cp c                                             ; $4290: $b9
	sbc d                                            ; $4291: $9a
	nop                                              ; $4292: $00
	dec b                                            ; $4293: $05
	ld [bc], a                                       ; $4294: $02
	dec de                                           ; $4295: $1b
	inc b                                            ; $4296: $04
	halt                                             ; $4297: $76
	db $fc                                           ; $4298: $fc
	sbc h                                            ; $4299: $9c
	daa                                              ; $429a: $27
	jr jr_050_42fc                                   ; $429b: $18 $5f

	ld a, b                                          ; $429d: $78
	ld h, $76                                        ; $429e: $26 $76
	jp nc, $fd9c                                     ; $42a0: $d2 $9c $fd

	ld [bc], a                                       ; $42a3: $02
	ldh a, [$7a]                                     ; $42a4: $f0 $7a
	sub $7e                                          ; $42a6: $d6 $7e
	adc b                                            ; $42a8: $88
	sbc c                                            ; $42a9: $99
	add sp, $10                                      ; $42aa: $e8 $10
	add b                                            ; $42ac: $80
	ld h, b                                          ; $42ad: $60
	nop                                              ; $42ae: $00
	ret nz                                           ; $42af: $c0

	halt                                             ; $42b0: $76
	ld h, h                                          ; $42b1: $64
	ld a, a                                          ; $42b2: $7f
	ret c                                            ; $42b3: $d8

	ld a, [hl]                                       ; $42b4: $7e
	xor [hl]                                         ; $42b5: $ae
	ld a, a                                          ; $42b6: $7f
	sub $7f                                          ; $42b7: $d6 $7f
	db $fc                                           ; $42b9: $fc
	ld d, [hl]                                       ; $42ba: $56
	jp nc, $fe73                                     ; $42bb: $d2 $73 $fe

	ld a, [hl]                                       ; $42be: $7e
	ld [hl], b                                       ; $42bf: $70
	ld a, h                                          ; $42c0: $7c
	sbc l                                            ; $42c1: $9d
	add b                                            ; $42c2: $80
	rlca                                             ; $42c3: $07
	cp $0f                                           ; $42c4: $fe $0f
	db $fc                                           ; $42c6: $fc
	ld e, $f8                                        ; $42c7: $1e $f8
	inc a                                            ; $42c9: $3c
	ldh a, [$79]                                     ; $42ca: $f0 $79
	ldh [$f3], a                                     ; $42cc: $e0 $f3
	ret nz                                           ; $42ce: $c0

	and $80                                          ; $42cf: $e6 $80
	push bc                                          ; $42d1: $c5
	nop                                              ; $42d2: $00
	add d                                            ; $42d3: $82
	nop                                              ; $42d4: $00
	dec h                                            ; $42d5: $25
	nop                                              ; $42d6: $00
	ld c, d                                          ; $42d7: $4a
	nop                                              ; $42d8: $00
	push de                                          ; $42d9: $d5
	nop                                              ; $42da: $00
	xor e                                            ; $42db: $ab
	nop                                              ; $42dc: $00
	ld d, a                                          ; $42dd: $57
	ld bc, $02ae                                     ; $42de: $01 $ae $02
	ld e, h                                          ; $42e1: $5c
	adc l                                            ; $42e2: $8d
	dec b                                            ; $42e3: $05
	cp b                                             ; $42e4: $b8
	ld [$0470], sp                                   ; $42e5: $08 $70 $04
	ldh [rAUD4LEN], a                                ; $42e8: $e0 $20
	ret nz                                           ; $42ea: $c0

	xor d                                            ; $42eb: $aa
	ld d, h                                          ; $42ec: $54
	ld d, l                                          ; $42ed: $55
	xor d                                            ; $42ee: $aa
	xor a                                            ; $42ef: $af
	ld d, b                                          ; $42f0: $50
	ld d, a                                          ; $42f1: $57
	xor b                                            ; $42f2: $a8
	xor a                                            ; $42f3: $af
	ld d, b                                          ; $42f4: $50
	ld h, h                                          ; $42f5: $64
	or a                                             ; $42f6: $b7
	sbc [hl]                                         ; $42f7: $9e
	cp $6b                                           ; $42f8: $fe $6b
	cp d                                             ; $42fa: $ba
	sbc c                                            ; $42fb: $99

jr_050_42fc:
	ld sp, hl                                        ; $42fc: $f9
	ld b, $f7                                        ; $42fd: $06 $f7
	ld [$15ea], sp                                   ; $42ff: $08 $ea $15
	db $fd                                           ; $4302: $fd
	ld a, a                                          ; $4303: $7f
	sub h                                            ; $4304: $94
	ld a, [hl]                                       ; $4305: $7e
	ld h, e                                          ; $4306: $63
	ld a, a                                          ; $4307: $7f
	cp $9d                                           ; $4308: $fe $9d
	ld a, h                                          ; $430a: $7c
	add b                                            ; $430b: $80
	ld a, b                                          ; $430c: $78
	call c, $809d                                    ; $430d: $dc $9d $80
	rrca                                             ; $4310: $0f
	or $7f                                           ; $4311: $f6 $7f
	ldh a, [$9a]                                     ; $4313: $f0 $9a
	ld b, $00                                        ; $4315: $06 $00
	ldh a, [rIF]                                     ; $4317: $f0 $0f
	ld bc, $7cf8                                     ; $4319: $01 $f8 $7c
	xor b                                            ; $431c: $a8
	sbc e                                            ; $431d: $9b
	ret nc                                           ; $431e: $d0

	nop                                              ; $431f: $00
	ld b, $f9                                        ; $4320: $06 $f9
	ld [hl], c                                       ; $4322: $71
	jp z, $9efa                                      ; $4323: $ca $fa $9e

	adc d                                            ; $4326: $8a
	ld a, b                                          ; $4327: $78
	ld b, b                                          ; $4328: $40
	ld sp, hl                                        ; $4329: $f9
	ld a, a                                          ; $432a: $7f
	cp [hl]                                          ; $432b: $be
	sub h                                            ; $432c: $94
	add c                                            ; $432d: $81
	ret nz                                           ; $432e: $c0

	ld [$1ac0], sp                                   ; $432f: $08 $c0 $1a
	ldh [rP1], a                                     ; $4332: $e0 $00
	nop                                              ; $4334: $00
	dec sp                                           ; $4335: $3b
	nop                                              ; $4336: $00
	dec de                                           ; $4337: $1b
	ld a, e                                          ; $4338: $7b
	ld c, b                                          ; $4339: $48
	ld [hl], a                                       ; $433a: $77
	ret nz                                           ; $433b: $c0

	sbc h                                            ; $433c: $9c
	dec e                                            ; $433d: $1d
	nop                                              ; $433e: $00
	ld h, h                                          ; $433f: $64
	ld a, e                                          ; $4340: $7b
	ld c, $9e                                        ; $4341: $0e $9e
	db $ec                                           ; $4343: $ec
	ld a, c                                          ; $4344: $79
	add $7b                                          ; $4345: $c6 $7b
	and h                                            ; $4347: $a4
	ld [hl], e                                       ; $4348: $73
	adc d                                            ; $4349: $8a
	ld a, a                                          ; $434a: $7f
	ld [hl], $7f                                     ; $434b: $36 $7f
	or b                                             ; $434d: $b0
	ld a, l                                          ; $434e: $7d
	sub h                                            ; $434f: $94
	ld a, a                                          ; $4350: $7f
	inc d                                            ; $4351: $14
	ld [hl], a                                       ; $4352: $77
	db $f4                                           ; $4353: $f4
	sbc h                                            ; $4354: $9c
	adc $00                                          ; $4355: $ce $00
	call c, Call_050_746b                            ; $4357: $dc $6b $74
	ld a, a                                          ; $435a: $7f
	ld e, h                                          ; $435b: $5c
	halt                                             ; $435c: $76
	call nz, $ce77                                   ; $435d: $c4 $77 $ce
	ld a, a                                          ; $4360: $7f
	ld h, d                                          ; $4361: $62
	ld a, a                                          ; $4362: $7f
	sbc d                                            ; $4363: $9a
	ld a, [hl]                                       ; $4364: $7e
	sub $9b                                          ; $4365: $d6 $9b
	ld e, a                                          ; $4367: $5f
	and b                                            ; $4368: $a0
	xor b                                            ; $4369: $a8
	ld d, a                                          ; $436a: $57
	ld l, a                                          ; $436b: $6f
	and $77                                          ; $436c: $e6 $77
	nop                                              ; $436e: $00
	sub [hl]                                         ; $436f: $96
	dec c                                            ; $4370: $0d
	ld [bc], a                                       ; $4371: $02
	db $10                                           ; $4372: $10
	rrca                                             ; $4373: $0f
	pop de                                           ; $4374: $d1
	ld c, $70                                        ; $4375: $0e $70
	rrca                                             ; $4377: $0f
	db $10                                           ; $4378: $10
	ld a, e                                          ; $4379: $7b
	cp $6f                                           ; $437a: $fe $6f
	jp nc, $be7f                                     ; $437c: $d2 $7f $be

	sub c                                            ; $437f: $91
	ld d, l                                          ; $4380: $55
	xor e                                            ; $4381: $ab
	dec hl                                           ; $4382: $2b
	push de                                          ; $4383: $d5
	dec b                                            ; $4384: $05
	ei                                               ; $4385: $fb
	dec bc                                           ; $4386: $0b
	push af                                          ; $4387: $f5
	ldh a, [$30]                                     ; $4388: $f0 $30
	ret nz                                           ; $438a: $c0

	ld h, b                                          ; $438b: $60
	add b                                            ; $438c: $80
	ret nz                                           ; $438d: $c0

	ld [hl], a                                       ; $438e: $77
	push bc                                          ; $438f: $c5
	sbc c                                            ; $4390: $99
	ld a, [bc]                                       ; $4391: $0a
	rst $38                                          ; $4392: $ff
	inc b                                            ; $4393: $04
	rst $38                                          ; $4394: $ff
	add d                                            ; $4395: $82
	rst $38                                          ; $4396: $ff
	ld e, l                                          ; $4397: $5d
	and h                                            ; $4398: $a4
	ld a, a                                          ; $4399: $7f
	call c, $2a7d                                    ; $439a: $dc $7d $2a
	sbc l                                            ; $439d: $9d
	add d                                            ; $439e: $82
	ld a, l                                          ; $439f: $7d
	ld e, [hl]                                       ; $43a0: $5e
	ret nc                                           ; $43a1: $d0

	sbc c                                            ; $43a2: $99
	and $0f                                          ; $43a3: $e6 $0f
	ld d, $ef                                        ; $43a5: $16 $ef
	or [hl]                                          ; $43a7: $b6
	ld c, a                                          ; $43a8: $4f
	ld a, d                                          ; $43a9: $7a
	ret nc                                           ; $43aa: $d0

	sub h                                            ; $43ab: $94
	push af                                          ; $43ac: $f5
	ret nz                                           ; $43ad: $c0

	ld [$d580], a                                    ; $43ae: $ea $80 $d5
	nop                                              ; $43b1: $00
	xor d                                            ; $43b2: $aa
	nop                                              ; $43b3: $00
	ld [hl], l                                       ; $43b4: $75
	nop                                              ; $43b5: $00
	ld h, a                                          ; $43b6: $67
	ld a, e                                          ; $43b7: $7b
	rst SubAFromHL                                          ; $43b8: $d7
	adc a                                            ; $43b9: $8f
	xor a                                            ; $43ba: $af
	nop                                              ; $43bb: $00
	ld d, a                                          ; $43bc: $57
	nop                                              ; $43bd: $00
	xor [hl]                                         ; $43be: $ae
	ld [$007c], sp                                   ; $43bf: $08 $7c $00
	cp b                                             ; $43c2: $b8
	inc hl                                           ; $43c3: $23
	ld [hl], b                                       ; $43c4: $70
	nop                                              ; $43c5: $00
	ldh [$bf], a                                     ; $43c6: $e0 $bf
	ret nz                                           ; $43c8: $c0

	ld a, a                                          ; $43c9: $7f
	ld a, d                                          ; $43ca: $7a
	ld a, [$526e]                                    ; $43cb: $fa $6e $52
	ld a, a                                          ; $43ce: $7f
	cp $7f                                           ; $43cf: $fe $7f
	dec [hl]                                         ; $43d1: $35
	ld a, l                                          ; $43d2: $7d
	ld a, [hl+]                                      ; $43d3: $2a
	ld [hl], a                                       ; $43d4: $77
	ldh a, [$9e]                                     ; $43d5: $f0 $9e
	di                                               ; $43d7: $f3
	ld [hl], l                                       ; $43d8: $75
	ld e, d                                          ; $43d9: $5a
	sbc l                                            ; $43da: $9d
	nop                                              ; $43db: $00
	db $ed                                           ; $43dc: $ed
	cp $9e                                           ; $43dd: $fe $9e
	pop af                                           ; $43df: $f1
	ld a, e                                          ; $43e0: $7b
	or $9d                                           ; $43e1: $f6 $9d
	db $d3                                           ; $43e3: $d3
	inc l                                            ; $43e4: $2c
	ld [hl], a                                       ; $43e5: $77
	ldh [$7f], a                                     ; $43e6: $e0 $7f
	sbc b                                            ; $43e8: $98
	sbc [hl]                                         ; $43e9: $9e
	and c                                            ; $43ea: $a1
	cp $7f                                           ; $43eb: $fe $7f
	sbc $7f                                          ; $43ed: $de $7f
	ld d, d                                          ; $43ef: $52
	sbc [hl]                                         ; $43f0: $9e
	or $79                                           ; $43f1: $f6 $79
	inc l                                            ; $43f3: $2c
	sub h                                            ; $43f4: $94
	rst SubAFromBC                                          ; $43f5: $e7
	ld [$0ef0], sp                                   ; $43f6: $08 $f0 $0e
	cp h                                             ; $43f9: $bc
	ld b, $24                                        ; $43fa: $06 $24
	ld b, $0c                                        ; $43fc: $06 $0c
	ld b, $00                                        ; $43fe: $06 $00
	ld a, e                                          ; $4400: $7b
	ret z                                            ; $4401: $c8

	ld l, a                                          ; $4402: $6f
	cp [hl]                                          ; $4403: $be
	ld a, l                                          ; $4404: $7d
	db $e4                                           ; $4405: $e4
	ld [hl], a                                       ; $4406: $77
	jp z, $7eff                                      ; $4407: $ca $ff $7e

	ld h, a                                          ; $440a: $67
	ld a, e                                          ; $440b: $7b
	db $f4                                           ; $440c: $f4
	sbc h                                            ; $440d: $9c
	inc b                                            ; $440e: $04
	rst GetHLinHL                                          ; $440f: $cf
	jr nc, jr_050_4489                               ; $4410: $30 $77

	inc h                                            ; $4412: $24
	ld a, a                                          ; $4413: $7f
	db $fc                                           ; $4414: $fc
	sbc [hl]                                         ; $4415: $9e
	ld b, b                                          ; $4416: $40
	ld [hl], d                                       ; $4417: $72
	ld a, [hl]                                       ; $4418: $7e
	sbc b                                            ; $4419: $98
	rst AddAOntoHL                                          ; $441a: $ef
	db $10                                           ; $441b: $10
	ld [hl], $c9                                     ; $441c: $36 $c9
	cp a                                             ; $441e: $bf
	ld b, b                                          ; $441f: $40
	rra                                              ; $4420: $1f
	ld a, e                                          ; $4421: $7b
	ldh a, [$9a]                                     ; $4422: $f0 $9a
	sbc a                                            ; $4424: $9f
	ret nz                                           ; $4425: $c0

	add b                                            ; $4426: $80
	ret nz                                           ; $4427: $c0

	ldh a, [rPCM34]                                  ; $4428: $f0 $77
	jr jr_050_449f                                   ; $442a: $18 $73

	sub [hl]                                         ; $442c: $96
	ld a, a                                          ; $442d: $7f
	cp $9a                                           ; $442e: $fe $9a
	jp $ff3c                                         ; $4430: $c3 $3c $ff


	nop                                              ; $4433: $00
	rst JumpTable                                          ; $4434: $c7
	ld e, d                                          ; $4435: $5a
	inc d                                            ; $4436: $14
	ld a, h                                          ; $4437: $7c
	ldh [c], a                                       ; $4438: $e2
	ld e, a                                          ; $4439: $5f
	db $f4                                           ; $443a: $f4
	ld l, a                                          ; $443b: $6f

Call_050_443c:
	sbc $7e                                          ; $443c: $de $7e
	dec d                                            ; $443e: $15
	sbc d                                            ; $443f: $9a
	pop hl                                           ; $4440: $e1
	rra                                              ; $4441: $1f
	rst $38                                          ; $4442: $ff
	rst $38                                          ; $4443: $ff
	cp $dc                                           ; $4444: $fe $dc
	rst $38                                          ; $4446: $ff
	ld a, a                                          ; $4447: $7f
	ld a, [$d39c]                                    ; $4448: $fa $9c $d3
	nop                                              ; $444b: $00
	db $e3                                           ; $444c: $e3
	ld a, e                                          ; $444d: $7b
	ldh a, [c]                                       ; $444e: $f2
	rst SubAFromHL                                          ; $444f: $d7
	rst $38                                          ; $4450: $ff
	ld [hl], a                                       ; $4451: $77
	ldh a, [c]                                       ; $4452: $f2
	sbc [hl]                                         ; $4453: $9e
	rst AddAOntoHL                                          ; $4454: $ef
	ld [hl], e                                       ; $4455: $73
	and $78                                          ; $4456: $e6 $78
	call c, $fa73                                    ; $4458: $dc $73 $fa
	ld a, a                                          ; $445b: $7f
	db $fc                                           ; $445c: $fc
	ld a, b                                          ; $445d: $78
	rst SubAFromHL                                          ; $445e: $d7
	ld [hl], e                                       ; $445f: $73
	ldh a, [c]                                       ; $4460: $f2
	ld a, l                                          ; $4461: $7d
	inc sp                                           ; $4462: $33
	sbc l                                            ; $4463: $9d
	rrca                                             ; $4464: $0f
	ldh a, [$dd]                                     ; $4465: $f0 $dd
	rst $38                                          ; $4467: $ff
	sbc [hl]                                         ; $4468: $9e
	rst FarCall                                          ; $4469: $f7
	ld [hl], e                                       ; $446a: $73
	add sp, -$65                                     ; $446b: $e8 $9b
	pop hl                                           ; $446d: $e1
	cp $7f                                           ; $446e: $fe $7f
	add b                                            ; $4470: $80
	ld h, h                                          ; $4471: $64
	pop bc                                           ; $4472: $c1
	ld a, l                                          ; $4473: $7d
	inc b                                            ; $4474: $04
	sub [hl]                                         ; $4475: $96
	ld c, $f0                                        ; $4476: $0e $f0
	db $fd                                           ; $4478: $fd
	nop                                              ; $4479: $00
	ld [$5500], a                                    ; $447a: $ea $00 $55
	nop                                              ; $447d: $00
	ld a, [$ffde]                                    ; $447e: $fa $de $ff
	sub d                                            ; $4481: $92
	pop af                                           ; $4482: $f1
	cp $7d                                           ; $4483: $fe $7d
	add b                                            ; $4485: $80
	xor d                                            ; $4486: $aa
	nop                                              ; $4487: $00
	ld d, h                                          ; $4488: $54

jr_050_4489:
	nop                                              ; $4489: $00
	and b                                            ; $448a: $a0
	nop                                              ; $448b: $00
	ld d, b                                          ; $448c: $50
	nop                                              ; $448d: $00
	xor [hl]                                         ; $448e: $ae
	ld a, e                                          ; $448f: $7b
	call nc, $da9d                                   ; $4490: $d4 $9d $da
	jr nz, jr_050_450c                               ; $4493: $20 $77

	db $f4                                           ; $4495: $f4
	ei                                               ; $4496: $fb
	ld a, h                                          ; $4497: $7c
	cp b                                             ; $4498: $b8
	halt                                             ; $4499: $76
	sub e                                            ; $449a: $93
	rst FarCall                                          ; $449b: $f7
	sbc b                                            ; $449c: $98
	add a                                            ; $449d: $87
	inc c                                            ; $449e: $0c

jr_050_449f:
	ld b, $0c                                        ; $449f: $06 $0c
	stop                                             ; $44a1: $10 $00
	db $10                                           ; $44a3: $10
	ld a, d                                          ; $44a4: $7a
	ld c, $97                                        ; $44a5: $0e $97
	db $10                                           ; $44a7: $10
	ld c, $02                                        ; $44a8: $0e $02
	inc c                                            ; $44aa: $0c
	nop                                              ; $44ab: $00
	inc c                                            ; $44ac: $0c
	ldh [$1f], a                                     ; $44ad: $e0 $1f
	ldh a, [c]                                       ; $44af: $f2
	ld h, c                                          ; $44b0: $61
	ldh [$fb], a                                     ; $44b1: $e0 $fb
	ld a, a                                          ; $44b3: $7f
	adc h                                            ; $44b4: $8c
	sbc [hl]                                         ; $44b5: $9e
	dec bc                                           ; $44b6: $0b
	db $f4                                           ; $44b7: $f4
	ld a, [hl]                                       ; $44b8: $7e
	db $f4                                           ; $44b9: $f4
	sbc l                                            ; $44ba: $9d
	ret nz                                           ; $44bb: $c0

	ccf                                              ; $44bc: $3f
	rla                                              ; $44bd: $17
	adc $7e                                          ; $44be: $ce $7e
	ld [bc], a                                       ; $44c0: $02
	sbc l                                            ; $44c1: $9d
	ld l, a                                          ; $44c2: $6f
	sub b                                            ; $44c3: $90
	ld d, a                                          ; $44c4: $57
	rst SubAFromDE                                          ; $44c5: $df
	ld a, h                                          ; $44c6: $7c
	or d                                             ; $44c7: $b2
	ld d, a                                          ; $44c8: $57
	adc $7e                                          ; $44c9: $ce $7e
	and b                                            ; $44cb: $a0
	ld [hl], d                                       ; $44cc: $72
	xor [hl]                                         ; $44cd: $ae
	ld a, d                                          ; $44ce: $7a
	ld a, [bc]                                       ; $44cf: $0a
	ei                                               ; $44d0: $fb
	ld a, a                                          ; $44d1: $7f
	ld b, b                                          ; $44d2: $40
	ld a, a                                          ; $44d3: $7f
	ldh a, [$7e]                                     ; $44d4: $f0 $7e
	dec hl                                           ; $44d6: $2b
	ld a, a                                          ; $44d7: $7f
	ei                                               ; $44d8: $fb
	sbc l                                            ; $44d9: $9d
	or $09                                           ; $44da: $f6 $09
	ld [hl], a                                       ; $44dc: $77
	db $e4                                           ; $44dd: $e4
	ld a, a                                          ; $44de: $7f
	inc a                                            ; $44df: $3c
	ld [hl], a                                       ; $44e0: $77
	ldh a, [$7f]                                     ; $44e1: $f0 $7f
	cp $7d                                           ; $44e3: $fe $7d
	ld h, $7f                                        ; $44e5: $26 $7f
	ei                                               ; $44e7: $fb
	ld a, l                                          ; $44e8: $7d
	cp b                                             ; $44e9: $b8
	ld a, a                                          ; $44ea: $7f
	db $f4                                           ; $44eb: $f4
	ld [hl], a                                       ; $44ec: $77
	ldh a, [$97]                                     ; $44ed: $f0 $97
	sbc a                                            ; $44ef: $9f
	rst $38                                          ; $44f0: $ff
	cp a                                             ; $44f1: $bf
	rst $38                                          ; $44f2: $ff
	db $fc                                           ; $44f3: $fc
	rst $38                                          ; $44f4: $ff
	ccf                                              ; $44f5: $3f
	ret nz                                           ; $44f6: $c0

	ld h, [hl]                                       ; $44f7: $66
	xor h                                            ; $44f8: $ac
	ld a, [hl]                                       ; $44f9: $7e
	ld [$c19e], a                                    ; $44fa: $ea $9e $c1
	ld e, d                                          ; $44fd: $5a
	sbc [hl]                                         ; $44fe: $9e
	ld a, d                                          ; $44ff: $7a
	add h                                            ; $4500: $84
	ld a, [hl]                                       ; $4501: $7e
	db $db                                           ; $4502: $db
	ld d, h                                          ; $4503: $54
	sub [hl]                                         ; $4504: $96
	ld [hl], e                                       ; $4505: $73
	cp $7f                                           ; $4506: $fe $7f
	adc [hl]                                         ; $4508: $8e
	ld a, d                                          ; $4509: $7a
	inc e                                            ; $450a: $1c
	ld l, e                                          ; $450b: $6b

jr_050_450c:
	cp $9e                                           ; $450c: $fe $9e
	ld a, [$9d78]                                    ; $450e: $fa $78 $9d
	ld a, a                                          ; $4511: $7f
	cp b                                             ; $4512: $b8
	ld a, a                                          ; $4513: $7f
	db $fc                                           ; $4514: $fc
	ld a, a                                          ; $4515: $7f
	db $ec                                           ; $4516: $ec
	sbc [hl]                                         ; $4517: $9e
	push af                                          ; $4518: $f5
	ld [hl], e                                       ; $4519: $73
	ldh a, [rPCM34]                                  ; $451a: $f0 $77
	xor h                                            ; $451c: $ac
	ld h, a                                          ; $451d: $67
	db $fc                                           ; $451e: $fc
	ld [hl], l                                       ; $451f: $75
	inc e                                            ; $4520: $1c
	ld e, a                                          ; $4521: $5f
	ldh a, [$7d]                                     ; $4522: $f0 $7d
	and c                                            ; $4524: $a1
	halt                                             ; $4525: $76
	db $10                                           ; $4526: $10
	ld e, a                                          ; $4527: $5f
	ldh a, [$7f]                                     ; $4528: $f0 $7f
	db $f4                                           ; $452a: $f4
	ld a, a                                          ; $452b: $7f
	cp d                                             ; $452c: $ba
	sbc [hl]                                         ; $452d: $9e
	rst FarCall                                          ; $452e: $f7
	cp $7e                                           ; $452f: $fe $7e
	or h                                             ; $4531: $b4
	ld h, a                                          ; $4532: $67
	db $ec                                           ; $4533: $ec
	sbc [hl]                                         ; $4534: $9e
	cp e                                             ; $4535: $bb
	ld a, e                                          ; $4536: $7b
	ldh a, [$9c]                                     ; $4537: $f0 $9c
	inc bc                                           ; $4539: $03
	inc c                                            ; $453a: $0c
	rrca                                             ; $453b: $0f
	ld h, e                                          ; $453c: $63
	ldh a, [$9c]                                     ; $453d: $f0 $9c
	cp d                                             ; $453f: $ba
	nop                                              ; $4540: $00
	ld [hl], a                                       ; $4541: $77
	ld a, b                                          ; $4542: $78
	ld [hl], h                                       ; $4543: $74
	ld a, a                                          ; $4544: $7f
	cp $7e                                           ; $4545: $fe $7e
	sub h                                            ; $4547: $94
	ld l, a                                          ; $4548: $6f
	ret nz                                           ; $4549: $c0

	ld [hl], a                                       ; $454a: $77
	call z, $9efd                                    ; $454b: $cc $fd $9e
	ld a, [hl+]                                      ; $454e: $2a
	ld [hl], e                                       ; $454f: $73
	ldh a, [$7d]                                     ; $4550: $f0 $7d
	ld e, c                                          ; $4552: $59
	sbc [hl]                                         ; $4553: $9e
	cp a                                             ; $4554: $bf
	ld l, e                                          ; $4555: $6b
	ldh a, [$6f]                                     ; $4556: $f0 $6f
	ret nc                                           ; $4558: $d0

	ld a, a                                          ; $4559: $7f
	ldh a, [$6c]                                     ; $455a: $f0 $6c
	jr nc, @-$60                                     ; $455c: $30 $9e

	dec b                                            ; $455e: $05
	ld h, e                                          ; $455f: $63
	and b                                            ; $4560: $a0
	ld [hl], a                                       ; $4561: $77
	cp $7c                                           ; $4562: $fe $7c
	sub c                                            ; $4564: $91
	ld l, a                                          ; $4565: $6f
	or h                                             ; $4566: $b4
	ld a, l                                          ; $4567: $7d
	add hl, hl                                       ; $4568: $29
	ld e, a                                          ; $4569: $5f
	ldh a, [$9c]                                     ; $456a: $f0 $9c
	xor e                                            ; $456c: $ab
	nop                                              ; $456d: $00
	ld e, l                                          ; $456e: $5d
	ld h, e                                          ; $456f: $63
	ld b, b                                          ; $4570: $40
	ld [hl], a                                       ; $4571: $77
	db $e4                                           ; $4572: $e4
	ld a, a                                          ; $4573: $7f
	ldh a, [$5f]                                     ; $4574: $f0 $5f
	inc h                                            ; $4576: $24
	ld d, a                                          ; $4577: $57
	call nc, $fe77                                   ; $4578: $d4 $77 $fe
	ld a, a                                          ; $457b: $7f
	db $e4                                           ; $457c: $e4
	ld l, h                                          ; $457d: $6c
	ld e, b                                          ; $457e: $58
	daa                                              ; $457f: $27
	cp $27                                           ; $4580: $fe $27
	nop                                              ; $4582: $00
	call nc, $9c44                                   ; $4583: $d4 $44 $9c
	ld b, l                                          ; $4586: $45
	ld d, l                                          ; $4587: $55
	ld d, h                                          ; $4588: $54
	jp c, $9d44                                      ; $4589: $da $44 $9d

	ld d, l                                          ; $458c: $55
	ld h, l                                          ; $458d: $65
	ret c                                            ; $458e: $d8

	ld d, l                                          ; $458f: $55
	rla                                              ; $4590: $17
	or $9b                                           ; $4591: $f6 $9b
	ld d, a                                          ; $4593: $57
	ld h, [hl]                                       ; $4594: $66
	ld h, [hl]                                       ; $4595: $66
	ld [hl], a                                       ; $4596: $77
	db $dd                                           ; $4597: $dd
	ld d, l                                          ; $4598: $55
	rst SubAFromDE                                          ; $4599: $df
	inc sp                                           ; $459a: $33
	ld a, e                                          ; $459b: $7b
	rst FarCall                                          ; $459c: $f7
	sbc [hl]                                         ; $459d: $9e
	ld [hl], e                                       ; $459e: $73
	call c, $9b33                                    ; $459f: $dc $33 $9b
	ld [hl], $67                                     ; $45a2: $36 $67
	ld h, a                                          ; $45a4: $67
	ld [hl], a                                       ; $45a5: $77
	ret z                                            ; $45a6: $c8

	inc sp                                           ; $45a7: $33
	adc l                                            ; $45a8: $8d
	adc b                                            ; $45a9: $88
	db $fd                                           ; $45aa: $fd
	sbc h                                            ; $45ab: $9c
	ccf                                              ; $45ac: $3f
	ld sp, hl                                        ; $45ad: $f9
	add hl, bc                                       ; $45ae: $09
	ei                                               ; $45af: $fb
	sbc h                                            ; $45b0: $9c
	ld c, $1c                                        ; $45b1: $0e $1c
	inc e                                            ; $45b3: $1c
	cp $9a                                           ; $45b4: $fe $9a
	rst $38                                          ; $45b6: $ff
	ld a, h                                          ; $45b7: $7c
	inc bc                                           ; $45b8: $03
	pop bc                                           ; $45b9: $c1
	ld a, e                                          ; $45ba: $7b
	db $fd                                           ; $45bb: $fd
	sbc h                                            ; $45bc: $9c
	add e                                            ; $45bd: $83
	ld b, $06                                        ; $45be: $06 $06
	cp $99                                           ; $45c0: $fe $99
	ld a, a                                          ; $45c2: $7f
	add b                                            ; $45c3: $80
	rst $38                                          ; $45c4: $ff
	nop                                              ; $45c5: $00
	nop                                              ; $45c6: $00
	rra                                              ; $45c7: $1f
	ld [hl], a                                       ; $45c8: $77
	rst FarCall                                          ; $45c9: $f7
	ei                                               ; $45ca: $fb
	sbc c                                            ; $45cb: $99
	rst $38                                          ; $45cc: $ff
	sbc a                                            ; $45cd: $9f
	ld b, b                                          ; $45ce: $40
	nop                                              ; $45cf: $00
	ld [hl], b                                       ; $45d0: $70
	rst GetHLinHL                                          ; $45d1: $cf
	cp $93                                           ; $45d2: $fe $93
	ld h, b                                          ; $45d4: $60
	rst $38                                          ; $45d5: $ff
	ldh [rP1], a                                     ; $45d6: $e0 $00
	jr nc, jr_050_45da                               ; $45d8: $30 $00

jr_050_45da:
	nop                                              ; $45da: $00
	ld hl, sp-$01                                    ; $45db: $f8 $ff
	nop                                              ; $45dd: $00
	dec b                                            ; $45de: $05
	dec b                                            ; $45df: $05
	ld a, e                                          ; $45e0: $7b
	db $dd                                           ; $45e1: $dd
	ld a, e                                          ; $45e2: $7b
	and $6b                                          ; $45e3: $e6 $6b
	rst SubAFromDE                                          ; $45e5: $df
	sbc e                                            ; $45e6: $9b
	ccf                                              ; $45e7: $3f
	ret nz                                           ; $45e8: $c0

	ld b, c                                          ; $45e9: $41
	ld b, b                                          ; $45ea: $40
	db $fd                                           ; $45eb: $fd
	sbc e                                            ; $45ec: $9b
	ret nz                                           ; $45ed: $c0

	ccf                                              ; $45ee: $3f
	add b                                            ; $45ef: $80
	add b                                            ; $45f0: $80
	cp $7f                                           ; $45f1: $fe $7f
	ret nz                                           ; $45f3: $c0

	sbc h                                            ; $45f4: $9c
	rlca                                             ; $45f5: $07
	ld hl, sp+$18                                    ; $45f6: $f8 $18
	db $fc                                           ; $45f8: $fc
	sbc h                                            ; $45f9: $9c
	ld hl, sp+$07                                    ; $45fa: $f8 $07
	rlca                                             ; $45fc: $07
	ld l, a                                          ; $45fd: $6f
	ld hl, sp-$63                                    ; $45fe: $f8 $9d
	ld a, a                                          ; $4600: $7f
	ld b, a                                          ; $4601: $47

jr_050_4602:
	ei                                               ; $4602: $fb
	sbc l                                            ; $4603: $9d
	add b                                            ; $4604: $80
	jr c, jr_050_4602                                ; $4605: $38 $fb

	sbc l                                            ; $4607: $9d
	ret nz                                           ; $4608: $c0

	cp $e0                                           ; $4609: $fe $e0
	ld c, c                                          ; $460b: $49
	sub h                                            ; $460c: $94
	ld [bc], a                                       ; $460d: $02
	inc hl                                           ; $460e: $23
	ldh a, [c]                                       ; $460f: $f2
	inc d                                            ; $4610: $14
	ld d, h                                          ; $4611: $54
	ld d, l                                          ; $4612: $55
	ld [hl], $16                                     ; $4613: $36 $16
	inc e                                            ; $4615: $1c
	inc c                                            ; $4616: $0c
	inc c                                            ; $4617: $0c
	sbc $2a                                          ; $4618: $de $2a
	rst SubAFromDE                                          ; $461a: $df
	ld c, c                                          ; $461b: $49
	adc l                                            ; $461c: $8d
	dec b                                            ; $461d: $05
	di                                               ; $461e: $f3
	ld c, $05                                        ; $461f: $0e $05
	dec d                                            ; $4621: $15
	inc c                                            ; $4622: $0c
	inc c                                            ; $4623: $0c
	dec h                                            ; $4624: $25
	ld a, [de]                                       ; $4625: $1a
	inc c                                            ; $4626: $0c
	nop                                              ; $4627: $00
	ld a, [bc]                                       ; $4628: $0a
	ld a, [bc]                                       ; $4629: $0a
	inc de                                           ; $462a: $13
	inc de                                           ; $462b: $13
	ld [de], a                                       ; $462c: $12
	ldh [rP1], a                                     ; $462d: $e0 $00
	sbc $01                                          ; $462f: $de $01
	sbc h                                            ; $4631: $9c
	ld [bc], a                                       ; $4632: $02
	add d                                            ; $4633: $82
	ld [bc], a                                       ; $4634: $02
	ld a, [$8094]                                    ; $4635: $fa $94 $80
	ret nz                                           ; $4638: $c0

	xor b                                            ; $4639: $a8
	sub b                                            ; $463a: $90
	add b                                            ; $463b: $80
	add h                                            ; $463c: $84
	adc b                                            ; $463d: $88
	add b                                            ; $463e: $80
	add d                                            ; $463f: $82
	jr nc, jr_050_4692                               ; $4640: $30 $50

	sbc $48                                          ; $4642: $de $48
	sbc $44                                          ; $4644: $de $44
	sbc l                                            ; $4646: $9d
	ld a, [bc]                                       ; $4647: $0a
	add hl, bc                                       ; $4648: $09
	sbc $11                                          ; $4649: $de $11
	rst SubAFromDE                                          ; $464b: $df
	ld hl, $419d                                     ; $464c: $21 $9d $41
	ld bc, $85fa                                     ; $464f: $01 $fa $85
	ld a, h                                          ; $4652: $7c
	ld h, e                                          ; $4653: $63
	ld b, b                                          ; $4654: $40
	ld d, b                                          ; $4655: $50
	ld h, b                                          ; $4656: $60
	ld l, b                                          ; $4657: $68
	ld d, b                                          ; $4658: $50
	ld d, b                                          ; $4659: $50
	add b                                            ; $465a: $80
	add b                                            ; $465b: $80
	and b                                            ; $465c: $a0

jr_050_465d:
	and b                                            ; $465d: $a0
	sub b                                            ; $465e: $90
	sub b                                            ; $465f: $90
	adc b                                            ; $4660: $88
	adc b                                            ; $4661: $88
	jr jr_050_465d                                   ; $4662: $18 $f9

	dec d                                            ; $4664: $15
	inc h                                            ; $4665: $24
	inc h                                            ; $4666: $24
	ld b, h                                          ; $4667: $44
	ld b, h                                          ; $4668: $44
	add h                                            ; $4669: $84
	rlca                                             ; $466a: $07
	ld b, $db                                        ; $466b: $06 $db
	ld [bc], a                                       ; $466d: $02
	sub [hl]                                         ; $466e: $96
	add h                                            ; $466f: $84
	nop                                              ; $4670: $00
	ld [hl], b                                       ; $4671: $70
	ld c, $40                                        ; $4672: $0e $40
	add c                                            ; $4674: $81
	ld bc, $0301                                     ; $4675: $01 $01 $03
	db $dd                                           ; $4678: $dd
	add c                                            ; $4679: $81
	sbc $40                                          ; $467a: $de $40
	sub d                                            ; $467c: $92
	ccf                                              ; $467d: $3f
	inc bc                                           ; $467e: $03
	ld [bc], a                                       ; $467f: $02
	nop                                              ; $4680: $00
	jr c, jr_050_46ca                                ; $4681: $38 $47

	nop                                              ; $4683: $00
	db $10                                           ; $4684: $10
	ret nz                                           ; $4685: $c0

	db $fc                                           ; $4686: $fc
	pop bc                                           ; $4687: $c1
	ret nz                                           ; $4688: $c0

	ret nz                                           ; $4689: $c0

	sbc $a0                                          ; $468a: $de $a0
	sub a                                            ; $468c: $97
	ldh [$fe], a                                     ; $468d: $e0 $fe
	ccf                                              ; $468f: $3f
	db $e3                                           ; $4690: $e3
	and [hl]                                         ; $4691: $a6

jr_050_4692:
	adc h                                            ; $4692: $8c
	rrca                                             ; $4693: $0f
	jr nz, jr_050_4710                               ; $4694: $20 $7a

	xor h                                            ; $4696: $ac
	sub d                                            ; $4697: $92
	inc e                                            ; $4698: $1c
	ld e, c                                          ; $4699: $59
	ld [hl], b                                       ; $469a: $70
	ld [hl], b                                       ; $469b: $70
	ld e, b                                          ; $469c: $58
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	ldh [$fc], a                                     ; $469f: $e0 $fc
	ccf                                              ; $46a1: $3f
	daa                                              ; $46a2: $27
	adc b                                            ; $46a3: $88
	ld a, l                                          ; $46a4: $7d
	ld [hl], d                                       ; $46a5: $72
	sbc d                                            ; $46a6: $9a
	sbc l                                            ; $46a7: $9d
	jr @+$09                                         ; $46a8: $18 $07

	ld [hl], e                                       ; $46aa: $73
	ld a, b                                          ; $46ab: $78
	sbc e                                            ; $46ac: $9b
	add b                                            ; $46ad: $80
	ldh [$f8], a                                     ; $46ae: $e0 $f8
	ld a, $fa                                        ; $46b0: $3e $fa
	sbc [hl]                                         ; $46b2: $9e
	ret nz                                           ; $46b3: $c0

	ldh [$8b], a                                     ; $46b4: $e0 $8b
	sbc [hl]                                         ; $46b6: $9e
	ld b, b                                          ; $46b7: $40
	ld [hl], l                                       ; $46b8: $75
	add sp, $73                                      ; $46b9: $e8 $73
	rst FarCall                                          ; $46bb: $f7
	sbc e                                            ; $46bc: $9b
	sub h                                            ; $46bd: $94
	inc d                                            ; $46be: $14
	dec d                                            ; $46bf: $15
	sub h                                            ; $46c0: $94
	db $dd                                           ; $46c1: $dd
	inc d                                            ; $46c2: $14
	sbc h                                            ; $46c3: $9c
	ld c, c                                          ; $46c4: $49
	adc c                                            ; $46c5: $89
	adc b                                            ; $46c6: $88
	call c, $9b08                                    ; $46c7: $dc $08 $9b

jr_050_46ca:
	inc d                                            ; $46ca: $14
	sub h                                            ; $46cb: $94
	ld b, h                                          ; $46cc: $44
	inc h                                            ; $46cd: $24
	db $dd                                           ; $46ce: $dd
	inc b                                            ; $46cf: $04
	rst SubAFromDE                                          ; $46d0: $df
	ld [hl+], a                                      ; $46d1: $22
	sbc [hl]                                         ; $46d2: $9e
	and d                                            ; $46d3: $a2
	call c, Call_050_7fc2                            ; $46d4: $dc $c2 $7f
	ld b, $94                                        ; $46d7: $06 $94
	inc h                                            ; $46d9: $24
	ld c, b                                          ; $46da: $48
	ld [$0028], sp                                   ; $46db: $08 $28 $00
	ld [$4080], sp                                   ; $46de: $08 $80 $40
	ld b, b                                          ; $46e1: $40
	jr nz, jr_050_4704                               ; $46e2: $20 $20

	sbc $10                                          ; $46e4: $de $10
	sbc d                                            ; $46e6: $9a
	add h                                            ; $46e7: $84
	add b                                            ; $46e8: $80
	add c                                            ; $46e9: $81
	add d                                            ; $46ea: $82
	add b                                            ; $46eb: $80
	ld a, e                                          ; $46ec: $7b
	db $fc                                           ; $46ed: $fc
	sbc $42                                          ; $46ee: $de $42
	sbc $41                                          ; $46f0: $de $41
	rst SubAFromDE                                          ; $46f2: $df
	ld b, b                                          ; $46f3: $40
	rst SubAFromDE                                          ; $46f4: $df
	ld b, c                                          ; $46f5: $41
	rst SubAFromDE                                          ; $46f6: $df
	add c                                            ; $46f7: $81
	sbc [hl]                                         ; $46f8: $9e
	ld bc, $f07a                                     ; $46f9: $01 $7a $f0
	ld l, d                                          ; $46fc: $6a
	and c                                            ; $46fd: $a1
	sub e                                            ; $46fe: $93
	add b                                            ; $46ff: $80
	ld b, h                                          ; $4700: $44
	ld c, c                                          ; $4701: $49
	ld c, e                                          ; $4702: $4b
	ld b, h                                          ; $4703: $44

jr_050_4704:
	ld b, h                                          ; $4704: $44
	ld b, l                                          ; $4705: $45
	ld b, [hl]                                       ; $4706: $46
	ld c, d                                          ; $4707: $4a
	adc b                                            ; $4708: $88
	add h                                            ; $4709: $84
	add h                                            ; $470a: $84
	sbc $82                                          ; $470b: $de $82
	rst SubAFromDE                                          ; $470d: $df
	add c                                            ; $470e: $81
	sbc [hl]                                         ; $470f: $9e

jr_050_4710:
	add h                                            ; $4710: $84
	db $db                                           ; $4711: $db
	inc b                                            ; $4712: $04
	sbc [hl]                                         ; $4713: $9e
	add h                                            ; $4714: $84
	reti                                             ; $4715: $d9


	ld [bc], a                                       ; $4716: $02
	sub a                                            ; $4717: $97
	inc hl                                           ; $4718: $23
	ld b, e                                          ; $4719: $43
	inc bc                                           ; $471a: $03
	dec b                                            ; $471b: $05
	dec d                                            ; $471c: $15
	dec h                                            ; $471d: $25
	add hl, bc                                       ; $471e: $09
	add hl, bc                                       ; $471f: $09
	ld a, e                                          ; $4720: $7b
	or d                                             ; $4721: $b2
	ld [hl], e                                       ; $4722: $73
	or b                                             ; $4723: $b0
	ld a, [hl]                                       ; $4724: $7e
	rst SubAFromHL                                          ; $4725: $d7
	sbc c                                            ; $4726: $99
	ld [$0010], sp                                   ; $4727: $08 $10 $00
	add hl, bc                                       ; $472a: $09
	ld bc, $de02                                     ; $472b: $01 $02 $de
	sub b                                            ; $472e: $90
	rst SubAFromDE                                          ; $472f: $df
	adc b                                            ; $4730: $88
	sbc $84                                          ; $4731: $de $84
	adc h                                            ; $4733: $8c
	ld c, b                                          ; $4734: $48
	ld h, h                                          ; $4735: $64
	and b                                            ; $4736: $a0
	and b                                            ; $4737: $a0
	xor d                                            ; $4738: $aa
	dec h                                            ; $4739: $25
	ld hl, $3022                                     ; $473a: $21 $22 $30
	jr jr_050_475b                                   ; $473d: $18 $1c

	inc e                                            ; $473f: $1c
	inc d                                            ; $4740: $14
	ld [de], a                                       ; $4741: $12
	ld [de], a                                       ; $4742: $12
	ld de, $0001                                     ; $4743: $11 $01 $00
	dec e                                            ; $4746: $1d
	ld a, d                                          ; $4747: $7a
	jr nc, jr_050_46ca                               ; $4748: $30 $80

	inc h                                            ; $474a: $24
	inc d                                            ; $474b: $14
	ld b, $07                                        ; $474c: $06 $07
	ld [bc], a                                       ; $474e: $02
	ld a, [bc]                                       ; $474f: $0a
	ld a, [bc]                                       ; $4750: $0a
	ld [de], a                                       ; $4751: $12
	ld [de], a                                       ; $4752: $12
	ld [hl+], a                                      ; $4753: $22
	rst GetHLinHL                                          ; $4754: $cf
	sub e                                            ; $4755: $93
	inc b                                            ; $4756: $04
	ld b, c                                          ; $4757: $41

jr_050_4758:
	ld b, b                                          ; $4758: $40
	and c                                            ; $4759: $a1
	ld [hl+], a                                      ; $475a: $22

jr_050_475b:
	ld b, l                                          ; $475b: $45
	jr nc, jr_050_476a                               ; $475c: $30 $0c

	add e                                            ; $475e: $83
	add b                                            ; $475f: $80
	add b                                            ; $4760: $80
	ld b, b                                          ; $4761: $40
	ld b, c                                          ; $4762: $41
	ld [hl+], a                                      ; $4763: $22
	add b                                            ; $4764: $80
	ldh [hDisp1_SCY], a                                     ; $4765: $e0 $90
	jr z, jr_050_4775                                ; $4767: $28 $0c

	sbc h                                            ; $4769: $9c

jr_050_476a:
	ld l, $57                                        ; $476a: $2e $57
	ld e, e                                          ; $476c: $5b
	ld a, b                                          ; $476d: $78
	pop af                                           ; $476e: $f1
	rst SubAFromDE                                          ; $476f: $df
	ldh a, [$9c]                                     ; $4770: $f0 $9c
	ret nc                                           ; $4772: $d0

	xor b                                            ; $4773: $a8
	and h                                            ; $4774: $a4

jr_050_4775:
	ld h, [hl]                                       ; $4775: $66
	jr jr_050_4758                                   ; $4776: $18 $e0

	rst SubAFromHL                                          ; $4778: $d7
	sbc [hl]                                         ; $4779: $9e
	inc b                                            ; $477a: $04
	db $dd                                           ; $477b: $dd
	db $10                                           ; $477c: $10
	ld a, d                                          ; $477d: $7a
	ld d, b                                          ; $477e: $50
	sbc [hl]                                         ; $477f: $9e
	inc bc                                           ; $4780: $03
	db $dd                                           ; $4781: $dd
	rrca                                             ; $4782: $0f
	ld a, h                                          ; $4783: $7c
	sbc b                                            ; $4784: $98
	sbc [hl]                                         ; $4785: $9e
	ld bc, $8c74                                     ; $4786: $01 $74 $8c
	sbc d                                            ; $4789: $9a
	rlca                                             ; $478a: $07
	stop                                             ; $478b: $10 $00
	nop                                              ; $478d: $00
	ld bc, $0fde                                     ; $478e: $01 $de $0f
	rst $38                                          ; $4791: $ff
	sbc l                                            ; $4792: $9d
	dec sp                                           ; $4793: $3b
	add b                                            ; $4794: $80
	ld [hl], a                                       ; $4795: $77
	rst SubAFromBC                                          ; $4796: $e7
	sbc e                                            ; $4797: $9b
	rst $38                                          ; $4798: $ff
	rra                                              ; $4799: $1f
	nop                                              ; $479a: $00
	ld a, a                                          ; $479b: $7f
	db $dd                                           ; $479c: $dd
	rst $38                                          ; $479d: $ff
	rst SubAFromDE                                          ; $479e: $df
	rrca                                             ; $479f: $0f
	sbc d                                            ; $47a0: $9a
	inc b                                            ; $47a1: $04
	ld b, $18                                        ; $47a2: $06 $18
	sub [hl]                                         ; $47a4: $96
	call c, $ffde                                    ; $47a5: $dc $de $ff
	rst SubAFromDE                                          ; $47a8: $df
	ret nz                                           ; $47a9: $c0

	sbc l                                            ; $47aa: $9d
	add $cc                                          ; $47ab: $c6 $cc
	db $dd                                           ; $47ad: $dd
	rst $38                                          ; $47ae: $ff
	sub [hl]                                         ; $47af: $96
	dec d                                            ; $47b0: $15
	inc d                                            ; $47b1: $14
	ld d, $16                                        ; $47b2: $16 $16
	dec d                                            ; $47b4: $15
	inc d                                            ; $47b5: $14
	sub h                                            ; $47b6: $94
	ld [de], a                                       ; $47b7: $12
	ld [$09de], sp                                   ; $47b8: $08 $de $09
	sbc $0a                                          ; $47bb: $de $0a
	sub h                                            ; $47bd: $94
	inc c                                            ; $47be: $0c
	inc b                                            ; $47bf: $04
	and h                                            ; $47c0: $a4
	ld b, h                                          ; $47c1: $44
	ld b, h                                          ; $47c2: $44
	inc b                                            ; $47c3: $04
	inc d                                            ; $47c4: $14
	inc h                                            ; $47c5: $24
	inc b                                            ; $47c6: $04
	jp nz, $dd42                                     ; $47c7: $c2 $42 $dd

	ld [hl+], a                                      ; $47ca: $22
	rst SubAFromDE                                          ; $47cb: $df
	ld [de], a                                       ; $47cc: $12
	adc [hl]                                         ; $47cd: $8e
	db $10                                           ; $47ce: $10
	inc h                                            ; $47cf: $24
	jr nz, jr_050_47f4                               ; $47d0: $20 $22

	ld b, h                                          ; $47d2: $44
	ld b, c                                          ; $47d3: $41
	ld b, b                                          ; $47d4: $40
	add b                                            ; $47d5: $80
	ld [$0408], sp                                   ; $47d6: $08 $08 $04
	inc b                                            ; $47d9: $04
	ld [bc], a                                       ; $47da: $02
	ld [bc], a                                       ; $47db: $02
	ld bc, $8201                                     ; $47dc: $01 $01 $82
	sbc $84                                          ; $47df: $de $84
	rst SubAFromDE                                          ; $47e1: $df
	adc b                                            ; $47e2: $88
	rst SubAFromDE                                          ; $47e3: $df
	sub b                                            ; $47e4: $90
	reti                                             ; $47e5: $d9


	ld b, b                                          ; $47e6: $40
	ld a, [hl]                                       ; $47e7: $7e
	pop bc                                           ; $47e8: $c1
	sbc [hl]                                         ; $47e9: $9e
	ld bc, $8379                                     ; $47ea: $01 $79 $83
	ld a, l                                          ; $47ed: $7d
	ld a, [hl]                                       ; $47ee: $7e
	ld a, d                                          ; $47ef: $7a
	and b                                            ; $47f0: $a0
	halt                                             ; $47f1: $76
	db $ed                                           ; $47f2: $ed
	sbc c                                            ; $47f3: $99

jr_050_47f4:
	db $10                                           ; $47f4: $10
	ld c, c                                          ; $47f5: $49
	ld d, c                                          ; $47f6: $51
	ld d, b                                          ; $47f7: $50
	ld h, b                                          ; $47f8: $60
	ld h, b                                          ; $47f9: $60
	sbc $40                                          ; $47fa: $de $40
	reti                                             ; $47fc: $d9


	add b                                            ; $47fd: $80
	sub [hl]                                         ; $47fe: $96
	inc b                                            ; $47ff: $04
	ld b, h                                          ; $4800: $44
	add h                                            ; $4801: $84
	add h                                            ; $4802: $84
	inc h                                            ; $4803: $24
	ld b, h                                          ; $4804: $44
	ld d, h                                          ; $4805: $54
	inc h                                            ; $4806: $24
	add d                                            ; $4807: $82
	halt                                             ; $4808: $76
	adc [hl]                                         ; $4809: $8e
	ld a, e                                          ; $480a: $7b
	xor a                                            ; $480b: $af
	sbc $11                                          ; $480c: $de $11
	sbc d                                            ; $480e: $9a
	dec d                                            ; $480f: $15
	add hl, hl                                       ; $4810: $29
	ld hl, $4341                                     ; $4811: $21 $41 $43
	db $dd                                           ; $4814: $dd
	ld [$04db], sp                                   ; $4815: $08 $db $04
	sbc h                                            ; $4818: $9c
	dec b                                            ; $4819: $05
	ld a, [bc]                                       ; $481a: $0a
	ld [$10de], sp                                   ; $481b: $08 $de $10
	ld [hl], d                                       ; $481e: $72
	sub e                                            ; $481f: $93
	sbc d                                            ; $4820: $9a
	add c                                            ; $4821: $81
	add b                                            ; $4822: $80
	add b                                            ; $4823: $80
	jr nz, jr_050_4847                               ; $4824: $20 $21

	sbc $20                                          ; $4826: $de $20
	sbc e                                            ; $4828: $9b
	and c                                            ; $4829: $a1
	jr nz, jr_050_488c                               ; $482a: $20 $60

	ld de, $10dc                                     ; $482c: $11 $dc $10
	rst SubAFromDE                                          ; $482f: $df
	sub c                                            ; $4830: $91
	sub [hl]                                         ; $4831: $96
	call nz, $2424                                   ; $4832: $c4 $24 $24
	inc b                                            ; $4835: $04
	inc h                                            ; $4836: $24
	ld b, h                                          ; $4837: $44
	sub h                                            ; $4838: $94
	inc h                                            ; $4839: $24
	ld [hl+], a                                      ; $483a: $22
	db $dd                                           ; $483b: $dd
	jp nz, $a282                                     ; $483c: $c2 $82 $a2

	ld [hl+], a                                      ; $483f: $22
	ld [de], a                                       ; $4840: $12
	ld b, e                                          ; $4841: $43
	add hl, de                                       ; $4842: $19
	dec h                                            ; $4843: $25
	add hl, bc                                       ; $4844: $09
	add hl, hl                                       ; $4845: $29
	ld d, l                                          ; $4846: $55

jr_050_4847:
	and l                                            ; $4847: $a5
	ld c, c                                          ; $4848: $49
	inc h                                            ; $4849: $24
	inc h                                            ; $484a: $24
	jr jr_050_485d                                   ; $484b: $18 $10

	db $10                                           ; $484d: $10
	jr z, jr_050_4898                                ; $484e: $28 $48

	add h                                            ; $4850: $84
	ld l, l                                          ; $4851: $6d
	ld c, d                                          ; $4852: $4a
	ld d, l                                          ; $4853: $55
	ld b, h                                          ; $4854: $44
	ld c, d                                          ; $4855: $4a
	ld b, d                                          ; $4856: $42
	ld b, l                                          ; $4857: $45
	ld b, l                                          ; $4858: $45
	sub d                                            ; $4859: $92
	sub c                                            ; $485a: $91
	halt                                             ; $485b: $76
	add c                                            ; $485c: $81

jr_050_485d:
	rst SubAFromDE                                          ; $485d: $df
	add d                                            ; $485e: $82
	adc a                                            ; $485f: $8f
	ret nz                                           ; $4860: $c0

	ldh [$60], a                                     ; $4861: $e0 $60
	or b                                             ; $4863: $b0
	ld e, b                                          ; $4864: $58
	xor b                                            ; $4865: $a8
	dec sp                                           ; $4866: $3b
	ld d, c                                          ; $4867: $51
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	sub b                                            ; $486a: $90
	ld c, b                                          ; $486b: $48
	inc h                                            ; $486c: $24
	ld d, $1f                                        ; $486d: $16 $1f
	ccf                                              ; $486f: $3f
	ldh a, [c]                                       ; $4870: $f2
	ld l, [hl]                                       ; $4871: $6e
	xor b                                            ; $4872: $a8
	ld a, c                                          ; $4873: $79
	ld bc, $7bfb                                     ; $4874: $01 $fb $7b
	ld hl, sp-$68                                    ; $4877: $f8 $98
	rlca                                             ; $4879: $07
	rra                                              ; $487a: $1f
	ld e, a                                          ; $487b: $5f
	ld a, a                                          ; $487c: $7f
	ld a, a                                          ; $487d: $7f
	rst SubAFromBC                                          ; $487e: $e7
	cp a                                             ; $487f: $bf
	call c, $7a3f                                    ; $4880: $dc $3f $7a
	jp hl                                            ; $4883: $e9


	add b                                            ; $4884: $80
	inc hl                                           ; $4885: $23
	inc a                                            ; $4886: $3c
	add a                                            ; $4887: $87
	db $ec                                           ; $4888: $ec
	ld c, l                                          ; $4889: $4d
	ret nz                                           ; $488a: $c0

	rst SubAFromDE                                          ; $488b: $df

jr_050_488c:
	ld a, h                                          ; $488c: $7c
	nop                                              ; $488d: $00
	inc bc                                           ; $488e: $03
	ld a, [hl]                                       ; $488f: $7e
	ld h, [hl]                                       ; $4890: $66
	and $ff                                          ; $4891: $e6 $ff
	ldh [hDisp0_SCY], a                                     ; $4893: $e0 $83
	rst GetHLinHL                                          ; $4895: $cf
	ccf                                              ; $4896: $3f
	adc a                                            ; $4897: $8f

jr_050_4898:
	ld a, a                                          ; $4898: $7f
	adc a                                            ; $4899: $8f
	rrca                                             ; $489a: $0f
	rst AddAOntoHL                                          ; $489b: $ef
	rrca                                             ; $489c: $0f
	ccf                                              ; $489d: $3f
	rst $38                                          ; $489e: $ff
	rra                                              ; $489f: $1f
	rrca                                             ; $48a0: $0f
	ld a, a                                          ; $48a1: $7f
	rst $38                                          ; $48a2: $ff
	rra                                              ; $48a3: $1f
	ret nc                                           ; $48a4: $d0

	rst $38                                          ; $48a5: $ff
	add b                                            ; $48a6: $80
	ret z                                            ; $48a7: $c8

	ld d, b                                          ; $48a8: $50
	ld [hl], h                                       ; $48a9: $74
	sub a                                            ; $48aa: $97
	db $10                                           ; $48ab: $10
	jr @+$01                                         ; $48ac: $18 $ff

	inc b                                            ; $48ae: $04
	inc e                                            ; $48af: $1c
	inc c                                            ; $48b0: $0c
	ld [$ef68], sp                                   ; $48b1: $08 $68 $ef
	rst AddAOntoHL                                          ; $48b4: $ef
	ld [$0c08], sp                                   ; $48b5: $08 $08 $0c
	inc c                                            ; $48b8: $0c
	dec d                                            ; $48b9: $15

jr_050_48ba:
	pop af                                           ; $48ba: $f1
	ld de, $fe19                                     ; $48bb: $11 $19 $fe
	ld [bc], a                                       ; $48be: $02
	ld [de], a                                       ; $48bf: $12
	ld [de], a                                       ; $48c0: $12
	ld a, [bc]                                       ; $48c1: $0a
	ld c, $ee                                        ; $48c2: $0e $ee
	and $05                                          ; $48c4: $e6 $05
	sbc c                                            ; $48c6: $99
	dec b                                            ; $48c7: $05
	add c                                            ; $48c8: $81
	add c                                            ; $48c9: $81
	nop                                              ; $48ca: $00
	rst $38                                          ; $48cb: $ff
	nop                                              ; $48cc: $00
	ld [hl], a                                       ; $48cd: $77
	db $fd                                           ; $48ce: $fd
	cp $df                                           ; $48cf: $fe $df
	rst $38                                          ; $48d1: $ff
	rst $38                                          ; $48d2: $ff
	ld a, [hl]                                       ; $48d3: $7e
	ld d, [hl]                                       ; $48d4: $56
	sbc c                                            ; $48d5: $99
	jr nz, jr_050_48f7                               ; $48d6: $20 $1f

	db $10                                           ; $48d8: $10
	ld d, b                                          ; $48d9: $50
	cp a                                             ; $48da: $bf
	nop                                              ; $48db: $00
	sbc $c0                                          ; $48dc: $de $c0
	adc d                                            ; $48de: $8a
	ldh [$ef], a                                     ; $48df: $e0 $ef
	rst AddAOntoHL                                          ; $48e1: $ef
	ld b, b                                          ; $48e2: $40
	ld b, b                                          ; $48e3: $40
	ld bc, $1109                                     ; $48e4: $01 $09 $11
	rst FarCall                                          ; $48e7: $f7
	nop                                              ; $48e8: $00
	nop                                              ; $48e9: $00
	cp $01                                           ; $48ea: $fe $01
	db $10                                           ; $48ec: $10
	db $10                                           ; $48ed: $10
	ld [$ff08], sp                                   ; $48ee: $08 $08 $ff
	rst $38                                          ; $48f1: $ff
	ld bc, $7400                                     ; $48f2: $01 $00 $74
	ld l, l                                          ; $48f5: $6d
	rst $38                                          ; $48f6: $ff

jr_050_48f7:
	ld a, a                                          ; $48f7: $7f
	ldh [$de], a                                     ; $48f8: $e0 $de
	add b                                            ; $48fa: $80
	add [hl]                                         ; $48fb: $86
	ret nz                                           ; $48fc: $c0

	rst $38                                          ; $48fd: $ff
	rst $38                                          ; $48fe: $ff
	ld b, b                                          ; $48ff: $40
	add b                                            ; $4900: $80
	inc l                                            ; $4901: $2c
	inc d                                            ; $4902: $14
	inc d                                            ; $4903: $14
	pop hl                                           ; $4904: $e1
	ld [$f518], sp                                   ; $4905: $08 $18 $f5
	inc b                                            ; $4908: $04
	ld [de], a                                       ; $4909: $12
	ld a, [bc]                                       ; $490a: $0a
	ld a, [bc]                                       ; $490b: $0a
	ld c, $e7                                        ; $490c: $0e $e7
	rst SubAFromBC                                          ; $490e: $e7
	ld a, [bc]                                       ; $490f: $0a
	ld [bc], a                                       ; $4910: $02
	ld b, l                                          ; $4911: $45
	add c                                            ; $4912: $81
	add c                                            ; $4913: $81
	db $fd                                           ; $4914: $fd
	ld a, e                                          ; $4915: $7b
	or [hl]                                          ; $4916: $b6
	ld a, l                                          ; $4917: $7d
	adc a                                            ; $4918: $8f
	sbc $02                                          ; $4919: $de $02
	ld [hl], a                                       ; $491b: $77
	or b                                             ; $491c: $b0
	rst SubAFromDE                                          ; $491d: $df
	jr nz, jr_050_48ba                               ; $491e: $20 $9a

	ld b, b                                          ; $4920: $40
	ld a, a                                          ; $4921: $7f
	nop                                              ; $4922: $00
	nop                                              ; $4923: $00
	ld a, a                                          ; $4924: $7f
	ld [hl], a                                       ; $4925: $77
	ret nc                                           ; $4926: $d0

	sub d                                            ; $4927: $92
	add b                                            ; $4928: $80
	rst $38                                          ; $4929: $ff
	rst $38                                          ; $492a: $ff
	add b                                            ; $492b: $80
	add b                                            ; $492c: $80
	and c                                            ; $492d: $a1
	ld hl, $cb24                                     ; $492e: $21 $24 $cb
	nop                                              ; $4931: $00
	ld b, b                                          ; $4932: $40
	rst JumpTable                                          ; $4933: $c7
	nop                                              ; $4934: $00
	sbc $52                                          ; $4935: $de $52
	sub b                                            ; $4937: $90
	inc [hl]                                         ; $4938: $34
	rst $38                                          ; $4939: $ff
	cp a                                             ; $493a: $bf
	jr c, jr_050_4955                                ; $493b: $38 $18

	dec h                                            ; $493d: $25
	inc d                                            ; $493e: $14
	nop                                              ; $493f: $00
	ldh a, [rP1]                                     ; $4940: $f0 $00
	nop                                              ; $4942: $00
	db $fd                                           ; $4943: $fd
	inc b                                            ; $4944: $04
	ld [de], a                                       ; $4945: $12
	dec bc                                           ; $4946: $0b
	ld a, c                                          ; $4947: $79
	ld a, [$ff98]                                    ; $4948: $fa $98 $ff
	ld [bc], a                                       ; $494b: $02
	ld [bc], a                                       ; $494c: $02
	inc bc                                           ; $494d: $03
	add l                                            ; $494e: $85
	dec b                                            ; $494f: $05
	cp $7b                                           ; $4950: $fe $7b
	add $9e                                          ; $4952: $c6 $9e
	nop                                              ; $4954: $00

jr_050_4955:
	ld a, c                                          ; $4955: $79
	cpl                                              ; $4956: $2f
	sbc l                                            ; $4957: $9d
	ld bc, $7bfd                                     ; $4958: $01 $fd $7b
	or [hl]                                          ; $495b: $b6
	sub a                                            ; $495c: $97
	ld c, d                                          ; $495d: $4a
	ld d, b                                          ; $495e: $50
	ld h, c                                          ; $495f: $61
	ld e, [hl]                                       ; $4960: $5e
	ld b, b                                          ; $4961: $40
	ld e, a                                          ; $4962: $5f
	ld b, a                                          ; $4963: $47
	ret nz                                           ; $4964: $c0

	ld a, d                                          ; $4965: $7a
	add h                                            ; $4966: $84
	sbc [hl]                                         ; $4967: $9e
	and c                                            ; $4968: $a1
	db $dd                                           ; $4969: $dd
	cp a                                             ; $496a: $bf
	sub e                                            ; $496b: $93
	sbc $16                                          ; $496c: $de $16
	ld [de], a                                       ; $496e: $12
	rla                                              ; $496f: $17
	db $10                                           ; $4970: $10
	rst SubAFromHL                                          ; $4971: $d7
	rst SubAFromHL                                          ; $4972: $d7
	inc de                                           ; $4973: $13
	inc [hl]                                         ; $4974: $34
	ldh a, [c]                                       ; $4975: $f2
	pop af                                           ; $4976: $f1
	ldh a, [$dd]                                     ; $4977: $f0 $dd
	rst $38                                          ; $4979: $ff
	ld a, a                                          ; $497a: $7f
	ld e, d                                          ; $497b: $5a
	sub l                                            ; $497c: $95
	db $10                                           ; $497d: $10
	ld a, l                                          ; $497e: $7d
	ld e, b                                          ; $497f: $58
	db $ed                                           ; $4980: $ed
	rst $38                                          ; $4981: $ff
	push de                                          ; $4982: $d5
	add b                                            ; $4983: $80
	ld b, b                                          ; $4984: $40
	ld h, b                                          ; $4985: $60
	or b                                             ; $4986: $b0
	db $dd                                           ; $4987: $dd
	rst $38                                          ; $4988: $ff
	sbc l                                            ; $4989: $9d
	inc bc                                           ; $498a: $03
	inc sp                                           ; $498b: $33
	sbc $03                                          ; $498c: $de $03
	rst SubAFromDE                                          ; $498e: $df
	jp $1b9a                                         ; $498f: $c3 $9a $1b


	inc bc                                           ; $4992: $03
	inc bc                                           ; $4993: $03
	ccf                                              ; $4994: $3f
	ccf                                              ; $4995: $3f
	sbc $bf                                          ; $4996: $de $bf
	ld a, a                                          ; $4998: $7f
	sbc l                                            ; $4999: $9d
	rst SubAFromDE                                          ; $499a: $df
	rst $38                                          ; $499b: $ff
	sbc l                                            ; $499c: $9d
	sbc a                                            ; $499d: $9f
	cp h                                             ; $499e: $bc
	ld a, e                                          ; $499f: $7b
	ld a, b                                          ; $49a0: $78
	ld a, e                                          ; $49a1: $7b

jr_050_49a2:
	ld d, e                                          ; $49a2: $53
	sbc l                                            ; $49a3: $9d
	rst $38                                          ; $49a4: $ff
	pop bc                                           ; $49a5: $c1
	sbc $ff                                          ; $49a6: $de $ff
	sub a                                            ; $49a8: $97
	add e                                            ; $49a9: $83
	rst $38                                          ; $49aa: $ff
	rst $38                                          ; $49ab: $ff
	db $fc                                           ; $49ac: $fc
	add b                                            ; $49ad: $80
	add b                                            ; $49ae: $80
	ldh a, [rLY]                                     ; $49af: $f0 $44
	ret c                                            ; $49b1: $d8

	rst $38                                          ; $49b2: $ff
	ld a, [hl]                                       ; $49b3: $7e
	rst JumpTable                                          ; $49b4: $c7
	call c, Call_050_7a0f                            ; $49b5: $dc $0f $7a
	and h                                            ; $49b8: $a4
	call z, $7eff                                    ; $49b9: $cc $ff $7e
	rst JumpTable                                          ; $49bc: $c7
	sbc l                                            ; $49bd: $9d
	rst $38                                          ; $49be: $ff
	sbc b                                            ; $49bf: $98
	ld [hl], a                                       ; $49c0: $77
	jr c, jr_050_49a2                                ; $49c1: $38 $df

	ld [$bb7e], sp                                   ; $49c3: $08 $7e $bb
	ld [hl], a                                       ; $49c6: $77
	ld hl, sp-$65                                    ; $49c7: $f8 $9b
	ld b, $0c                                        ; $49c9: $06 $0c
	cp $06                                           ; $49cb: $fe $06
	ld [hl], a                                       ; $49cd: $77
	ld hl, sp+$7e                                    ; $49ce: $f8 $7e
	ld h, [hl]                                       ; $49d0: $66
	sbc [hl]                                         ; $49d1: $9e
	rlca                                             ; $49d2: $07
	ld [hl], e                                       ; $49d3: $73
	ldh a, [rPCM12]                                  ; $49d4: $f0 $76
	call nz, $f86f                                   ; $49d6: $c4 $6f $f8
	ld a, e                                          ; $49d9: $7b
	ld sp, hl                                        ; $49da: $f9
	ld [hl], a                                       ; $49db: $77
	ld hl, sp-$63                                    ; $49dc: $f8 $9d
	and b                                            ; $49de: $a0
	ld e, a                                          ; $49df: $5f
	ld a, e                                          ; $49e0: $7b
	sub l                                            ; $49e1: $95
	rst $38                                          ; $49e2: $ff
	rst SubAFromDE                                          ; $49e3: $df
	ld b, b                                          ; $49e4: $40
	sbc [hl]                                         ; $49e5: $9e
	ldh [$de], a                                     ; $49e6: $e0 $de
	rst $38                                          ; $49e8: $ff
	sbc c                                            ; $49e9: $99
	ld a, a                                          ; $49ea: $7f
	rrca                                             ; $49eb: $0f
	ld bc, $fe01                                     ; $49ec: $01 $01 $fe
	ld bc, $e06f                                     ; $49ef: $01 $6f $e0
	ld a, e                                          ; $49f2: $7b
	ld sp, hl                                        ; $49f3: $f9
	ld [hl], e                                       ; $49f4: $73
	sbc $7e                                          ; $49f5: $de $7e
	ei                                               ; $49f7: $fb
	ld a, e                                          ; $49f8: $7b
	ld a, [$0f9e]                                    ; $49f9: $fa $9e $0f
	ld [hl], d                                       ; $49fc: $72
	pop af                                           ; $49fd: $f1
	rst SubAFromDE                                          ; $49fe: $df
	rst $38                                          ; $49ff: $ff
	sbc e                                            ; $4a00: $9b
	ldh a, [rDIV]                                    ; $4a01: $f0 $04
	inc b                                            ; $4a03: $04
	ei                                               ; $4a04: $fb
	ld [hl], a                                       ; $4a05: $77
	or b                                             ; $4a06: $b0
	sbc h                                            ; $4a07: $9c
	ldh [rSC], a                                     ; $4a08: $e0 $02
	ld [bc], a                                       ; $4a0a: $02
	ld a, e                                          ; $4a0b: $7b
	ld sp, hl                                        ; $4a0c: $f9
	rst SubAFromDE                                          ; $4a0d: $df
	rst $38                                          ; $4a0e: $ff
	sbc [hl]                                         ; $4a0f: $9e
	rra                                              ; $4a10: $1f
	ld l, a                                          ; $4a11: $6f
	ret nc                                           ; $4a12: $d0

	ld a, d                                          ; $4a13: $7a
	call $d06b                                       ; $4a14: $cd $6b $d0
	ld a, e                                          ; $4a17: $7b
	reti                                             ; $4a18: $d9


	ld [hl], a                                       ; $4a19: $77
	rst SubAFromHL                                          ; $4a1a: $d7
	sbc [hl]                                         ; $4a1b: $9e
	rlca                                             ; $4a1c: $07
	ld a, c                                          ; $4a1d: $79
	push hl                                          ; $4a1e: $e5
	call c, $dfff                                    ; $4a1f: $dc $ff $df
	jr @-$60                                         ; $4a22: $18 $9e

	rst AddAOntoHL                                          ; $4a24: $ef
	ld [hl], a                                       ; $4a25: $77
	ld [hl], a                                       ; $4a26: $77
	ld a, e                                          ; $4a27: $7b
	cp b                                             ; $4a28: $b8
	ld [hl], e                                       ; $4a29: $73
	ld sp, hl                                        ; $4a2a: $f9
	sbc h                                            ; $4a2b: $9c
	rst $38                                          ; $4a2c: $ff
	ld b, $06                                        ; $4a2d: $06 $06
	ld [hl], e                                       ; $4a2f: $73
	ret nz                                           ; $4a30: $c0

	cp $73                                           ; $4a31: $fe $73
	ret nz                                           ; $4a33: $c0

	ld [hl], d                                       ; $4a34: $72
	inc [hl]                                         ; $4a35: $34
	ld e, a                                          ; $4a36: $5f
	ld [hl], b                                       ; $4a37: $70
	ld a, d                                          ; $4a38: $7a
	ld e, [hl]                                       ; $4a39: $5e
	sbc l                                            ; $4a3a: $9d
	ret nz                                           ; $4a3b: $c0

	ld a, a                                          ; $4a3c: $7f
	ld [hl], a                                       ; $4a3d: $77
	ld [hl], b                                       ; $4a3e: $70
	sbc l                                            ; $4a3f: $9d
	ld bc, $7280                                     ; $4a40: $01 $80 $72
	cp $df                                           ; $4a43: $fe $df
	rst $38                                          ; $4a45: $ff
	sub h                                            ; $4a46: $94
	dec [hl]                                         ; $4a47: $35
	dec h                                            ; $4a48: $25
	ret                                              ; $4a49: $c9


	ld c, $f1                                        ; $4a4a: $0e $f1
	rst SubAFromBC                                          ; $4a4c: $e7
	sub e                                            ; $4a4d: $93
	or a                                             ; $4a4e: $b7
	ld [bc], a                                       ; $4a4f: $02
	ld [de], a                                       ; $4a50: $12
	scf                                              ; $4a51: $37
	call c, $96ff                                    ; $4a52: $dc $ff $96
	sub l                                            ; $4a55: $95
	and a                                            ; $4a56: $a7
	ld l, l                                          ; $4a57: $6d
	adc [hl]                                         ; $4a58: $8e
	ld e, $5c                                        ; $4a59: $1e $5c
	cp d                                             ; $4a5b: $ba
	rst AddAOntoHL                                          ; $4a5c: $ef
	cp $dd                                           ; $4a5d: $fe $dd
	rst $38                                          ; $4a5f: $ff
	adc b                                            ; $4a60: $88
	cp $fd                                           ; $4a61: $fe $fd
	di                                               ; $4a63: $f3
	add b                                            ; $4a64: $80
	add sp, -$7a                                     ; $4a65: $e8 $86
	adc h                                            ; $4a67: $8c
	ld l, b                                          ; $4a68: $68
	sub b                                            ; $4a69: $90
	add b                                            ; $4a6a: $80
	nop                                              ; $4a6b: $00
	ld a, a                                          ; $4a6c: $7f
	rst FarCall                                          ; $4a6d: $f7
	ld hl, sp-$08                                    ; $4a6e: $f8 $f8
	db $10                                           ; $4a70: $10
	ld h, b                                          ; $4a71: $60
	ret nz                                           ; $4a72: $c0

	add b                                            ; $4a73: $80
	halt                                             ; $4a74: $76
	ld [bc], a                                       ; $4a75: $02
	add b                                            ; $4a76: $80
	jr z, jr_050_4aed                                ; $4a77: $28 $74

	ld c, [hl]                                       ; $4a79: $4e
	sbc e                                            ; $4a7a: $9b

Jump_050_4a7b:
	adc c                                            ; $4a7b: $89
	db $fd                                           ; $4a7c: $fd
	ld a, a                                          ; $4a7d: $7f
	rla                                              ; $4a7e: $17
	db $fd                                           ; $4a7f: $fd
	sub e                                            ; $4a80: $93
	rra                                              ; $4a81: $1f
	dec bc                                           ; $4a82: $0b
	inc b                                            ; $4a83: $04
	and b                                            ; $4a84: $a0
	ld e, b                                          ; $4a85: $58
	rla                                              ; $4a86: $17
	ld bc, $e000                                     ; $4a87: $01 $00 $e0
	ldh a, [$fb]                                     ; $4a8a: $f0 $fb
	ld e, a                                          ; $4a8c: $5f
	ld a, e                                          ; $4a8d: $7b
	ld l, e                                          ; $4a8e: $6b
	adc a                                            ; $4a8f: $8f
	nop                                              ; $4a90: $00
	or b                                             ; $4a91: $b0
	jr nc, @+$12                                     ; $4a92: $30 $10

	dec bc                                           ; $4a94: $0b
	cp h                                             ; $4a95: $bc
	sbc [hl]                                         ; $4a96: $9e
	scf                                              ; $4a97: $37
	ld e, c                                          ; $4a98: $59
	ld c, a                                          ; $4a99: $4f
	rst GetHLinHL                                          ; $4a9a: $cf
	rst AddAOntoHL                                          ; $4a9b: $ef
	db $fc                                           ; $4a9c: $fc
	ld a, a                                          ; $4a9d: $7f
	ld a, a                                          ; $4a9e: $7f
	rrca                                             ; $4a9f: $0f
	ld [hl], a                                       ; $4aa0: $77
	db $ed                                           ; $4aa1: $ed
	sbc d                                            ; $4aa2: $9a
	jr nc, jr_050_4b04                               ; $4aa3: $30 $5f

	ldh [c], a                                       ; $4aa5: $e2
	pop af                                           ; $4aa6: $f1
	dec sp                                           ; $4aa7: $3b
	ld [hl], d                                       ; $4aa8: $72
	ld h, l                                          ; $4aa9: $65
	sbc [hl]                                         ; $4aaa: $9e
	db $fd                                           ; $4aab: $fd
	ld l, e                                          ; $4aac: $6b
	halt                                             ; $4aad: $76
	ldh [$d6], a                                     ; $4aae: $e0 $d6
	sbc [hl]                                         ; $4ab0: $9e
	rrca                                             ; $4ab1: $0f
	ld [hl], a                                       ; $4ab2: $77
	ld b, $9c                                        ; $4ab3: $06 $9c
	ld e, e                                          ; $4ab5: $5b
	nop                                              ; $4ab6: $00
	ld bc, $7ef9                                     ; $4ab7: $01 $f9 $7e
	push af                                          ; $4aba: $f5
	sbc d                                            ; $4abb: $9a
	ld [bc], a                                       ; $4abc: $02
	jr @+$01                                         ; $4abd: $18 $ff

	ldh a, [$3c]                                     ; $4abf: $f0 $3c
	ld [hl], a                                       ; $4ac1: $77
	cp b                                             ; $4ac2: $b8
	ld a, a                                          ; $4ac3: $7f
	and h                                            ; $4ac4: $a4
	sub a                                            ; $4ac5: $97
	rrca                                             ; $4ac6: $0f
	inc bc                                           ; $4ac7: $03
	nop                                              ; $4ac8: $00
	rst $38                                          ; $4ac9: $ff
	db $fc                                           ; $4aca: $fc
	rst $38                                          ; $4acb: $ff
	rst $38                                          ; $4acc: $ff
	call z, Call_050_78fd                            ; $4acd: $cc $fd $78
	sbc $9e                                          ; $4ad0: $de $9e
	inc sp                                           ; $4ad2: $33
	ld [hl], e                                       ; $4ad3: $73
	rrca                                             ; $4ad4: $0f
	sbc [hl]                                         ; $4ad5: $9e
	ldh [rOCPD], a                                   ; $4ad6: $e0 $6b
	rst SubAFromHL                                          ; $4ad8: $d7
	ld l, l                                          ; $4ad9: $6d
	inc b                                            ; $4ada: $04
	sbc b                                            ; $4adb: $98
	cp a                                             ; $4adc: $bf
	rra                                              ; $4add: $1f
	ld c, $0d                                        ; $4ade: $0e $0d
	ld a, [bc]                                       ; $4ae0: $0a
	dec c                                            ; $4ae1: $0d
	dec bc                                           ; $4ae2: $0b
	ld a, b                                          ; $4ae3: $78
	db $f4                                           ; $4ae4: $f4
	ld l, a                                          ; $4ae5: $6f
	cpl                                              ; $4ae6: $2f
	sbc c                                            ; $4ae7: $99
	rst $38                                          ; $4ae8: $ff
	rst FarCall                                          ; $4ae9: $f7
	xor a                                            ; $4aea: $af
	ld d, a                                          ; $4aeb: $57
	rst $38                                          ; $4aec: $ff

jr_050_4aed:
	rst FarCall                                          ; $4aed: $f7

jr_050_4aee:
	ld a, e                                          ; $4aee: $7b
	cp $de                                           ; $4aef: $fe $de
	rst $38                                          ; $4af1: $ff
	sbc d                                            ; $4af2: $9a
	xor a                                            ; $4af3: $af
	ld e, a                                          ; $4af4: $5f
	xor a                                            ; $4af5: $af
	ld e, a                                          ; $4af6: $5f
	ld hl, sp-$26                                    ; $4af7: $f8 $da
	ldh a, [$d9]                                     ; $4af9: $f0 $d9
	rst $38                                          ; $4afb: $ff
	ld h, e                                          ; $4afc: $63
	sbc b                                            ; $4afd: $98
	ld e, a                                          ; $4afe: $5f
	ldh a, [$7d]                                     ; $4aff: $f0 $7d
	ld b, h                                          ; $4b01: $44
	sbc l                                            ; $4b02: $9d
	rrca                                             ; $4b03: $0f

jr_050_4b04:
	ld e, $79                                        ; $4b04: $1e $79
	ld [hl], h                                       ; $4b06: $74
	db $db                                           ; $4b07: $db
	rst $38                                          ; $4b08: $ff
	sbc b                                            ; $4b09: $98
	rlca                                             ; $4b0a: $07
	inc [hl]                                         ; $4b0b: $34
	jr c, jr_050_4aee                                ; $4b0c: $38 $e0

	add hl, hl                                       ; $4b0e: $29
	ld e, $1f                                        ; $4b0f: $1e $1f
	ld [hl], d                                       ; $4b11: $72
	pop hl                                           ; $4b12: $e1
	ld a, c                                          ; $4b13: $79
	push bc                                          ; $4b14: $c5
	sub [hl]                                         ; $4b15: $96
	pop af                                           ; $4b16: $f1
	ld a, a                                          ; $4b17: $7f
	ld a, [hl]                                       ; $4b18: $7e
	db $fd                                           ; $4b19: $fd
	db $ed                                           ; $4b1a: $ed
	or a                                             ; $4b1b: $b7
	rst SubAFromDE                                          ; $4b1c: $df
	cp l                                             ; $4b1d: $bd
	ei                                               ; $4b1e: $fb
	ld a, e                                          ; $4b1f: $7b
	and h                                            ; $4b20: $a4
	adc l                                            ; $4b21: $8d
	di                                               ; $4b22: $f3
	rst GetHLinHL                                          ; $4b23: $cf
	ccf                                              ; $4b24: $3f
	ld a, [hl]                                       ; $4b25: $7e
	db $fc                                           ; $4b26: $fc
	add a                                            ; $4b27: $87
	ret c                                            ; $4b28: $d8

	ld [hl], b                                       ; $4b29: $70
	ldh a, [$80]                                     ; $4b2a: $f0 $80
	add b                                            ; $4b2c: $80
	nop                                              ; $4b2d: $00

jr_050_4b2e:
	ldh [$fe], a                                     ; $4b2e: $e0 $fe
	inc a                                            ; $4b30: $3c
	ld hl, sp-$20                                    ; $4b31: $f8 $e0
	ret nz                                           ; $4b33: $c0

	rst FarCall                                          ; $4b34: $f7
	sbc [hl]                                         ; $4b35: $9e
	ld [$9df3], sp                                   ; $4b36: $08 $f3 $9d
	inc b                                            ; $4b39: $04
	jr nz, jr_050_4b2e                               ; $4b3a: $20 $f2

	sbc [hl]                                         ; $4b3c: $9e
	add h                                            ; $4b3d: $84
	ld sp, hl                                        ; $4b3e: $f9
	sub a                                            ; $4b3f: $97
	ld l, $0c                                        ; $4b40: $2e $0c
	inc bc                                           ; $4b42: $03
	inc b                                            ; $4b43: $04
	ld de, $8100                                     ; $4b44: $11 $00 $81
	jp hl                                            ; $4b47: $e9


	ld h, a                                          ; $4b48: $67
	rrca                                             ; $4b49: $0f
	sub c                                            ; $4b4a: $91
	add a                                            ; $4b4b: $87
	ld e, [hl]                                       ; $4b4c: $5e
	ld a, a                                          ; $4b4d: $7f
	rst GetHLinHL                                          ; $4b4e: $cf
	jr z, jr_050_4b86                                ; $4b4f: $28 $35

	add hl, bc                                       ; $4b51: $09
	ld b, d                                          ; $4b52: $42
	ld a, a                                          ; $4b53: $7f
	ccf                                              ; $4b54: $3f
	rst $38                                          ; $4b55: $ff
	ccf                                              ; $4b56: $3f
	rlca                                             ; $4b57: $07
	ld [bc], a                                       ; $4b58: $02
	ld e, [hl]                                       ; $4b59: $5e
	ld hl, sp-$20                                    ; $4b5a: $f8 $e0
	ret c                                            ; $4b5c: $d8

	sbc [hl]                                         ; $4b5d: $9e
	inc b                                            ; $4b5e: $04
	ld [hl], d                                       ; $4b5f: $72
	ld e, c                                          ; $4b60: $59
	ld hl, sp-$65                                    ; $4b61: $f8 $9b
	rra                                              ; $4b63: $1f
	ld [hl], a                                       ; $4b64: $77
	scf                                              ; $4b65: $37
	rlca                                             ; $4b66: $07
	ld a, b                                          ; $4b67: $78
	ld [hl], e                                       ; $4b68: $73
	sbc [hl]                                         ; $4b69: $9e
	dec b                                            ; $4b6a: $05
	db $fc                                           ; $4b6b: $fc
	rst SubAFromDE                                          ; $4b6c: $df
	ld bc, $187f                                     ; $4b6d: $01 $7f $18
	sub c                                            ; $4b70: $91
	ld hl, sp-$02                                    ; $4b71: $f8 $fe
	ret nz                                           ; $4b73: $c0

	ldh [$fe], a                                     ; $4b74: $e0 $fe
	ld [hl], b                                       ; $4b76: $70
	db $fc                                           ; $4b77: $fc
	nop                                              ; $4b78: $00
	rlca                                             ; $4b79: $07
	ld bc, $1f3f                                     ; $4b7a: $01 $3f $1f
	ld bc, $7a8f                                     ; $4b7d: $01 $8f $7a
	cp d                                             ; $4b80: $ba
	cp $9e                                           ; $4b81: $fe $9e
	add l                                            ; $4b83: $85
	ld l, e                                          ; $4b84: $6b
	nop                                              ; $4b85: $00

jr_050_4b86:
	sbc l                                            ; $4b86: $9d
	ld a, b                                          ; $4b87: $78
	rst $38                                          ; $4b88: $ff
	ld l, h                                          ; $4b89: $6c
	di                                               ; $4b8a: $f3
	rst SubAFromDE                                          ; $4b8b: $df
	rra                                              ; $4b8c: $1f
	sbc h                                            ; $4b8d: $9c
	cpl                                              ; $4b8e: $2f
	ld a, [$77fd]                                    ; $4b8f: $fa $fd $77
	cp $7e                                           ; $4b92: $fe $7e
	add [hl]                                         ; $4b94: $86
	ld [hl], d                                       ; $4b95: $72
	call nz, $f79c                                   ; $4b96: $c4 $9c $f7
	db $fc                                           ; $4b99: $fc
	rst FarCall                                          ; $4b9a: $f7
	halt                                             ; $4b9b: $76
	call nz, $fe7f                                   ; $4b9c: $c4 $7f $fe
	ld a, a                                          ; $4b9f: $7f
	pop hl                                           ; $4ba0: $e1
	call c, $9ef0                                    ; $4ba1: $dc $f0 $9e
	ld a, $d7                                        ; $4ba4: $3e $d7
	rst $38                                          ; $4ba6: $ff
	db $fc                                           ; $4ba7: $fc
	ld a, [hl]                                       ; $4ba8: $7e
	rst GetHLinHL                                          ; $4ba9: $cf
	sbc [hl]                                         ; $4baa: $9e
	and d                                            ; $4bab: $a2
	ld l, [hl]                                       ; $4bac: $6e
	pop hl                                           ; $4bad: $e1
	sub a                                            ; $4bae: $97
	ldh a, [$c1]                                     ; $4baf: $f0 $c1
	ld a, [de]                                       ; $4bb1: $1a
	add hl, de                                       ; $4bb2: $19
	dec h                                            ; $4bb3: $25
	ld [hl-], a                                      ; $4bb4: $32
	sbc e                                            ; $4bb5: $9b
	cpl                                              ; $4bb6: $2f
	ld a, b                                          ; $4bb7: $78
	adc d                                            ; $4bb8: $8a
	adc a                                            ; $4bb9: $8f
	cp $f8                                           ; $4bba: $fe $f8
	pop bc                                           ; $4bbc: $c1
	rlca                                             ; $4bbd: $07
	rra                                              ; $4bbe: $1f
	ld a, a                                          ; $4bbf: $7f
	rst $38                                          ; $4bc0: $ff
	cp e                                             ; $4bc1: $bb
	cpl                                              ; $4bc2: $2f
	cp a                                             ; $4bc3: $bf
	cp $fb                                           ; $4bc4: $fe $fb
	rst FarCall                                          ; $4bc6: $f7
	rst $38                                          ; $4bc7: $ff
	cp h                                             ; $4bc8: $bc
	rst JumpTable                                          ; $4bc9: $c7
	ld a, e                                          ; $4bca: $7b
	db $f4                                           ; $4bcb: $f4
	sbc [hl]                                         ; $4bcc: $9e
	db $fc                                           ; $4bcd: $fc
	ld a, d                                          ; $4bce: $7a
	db $dd                                           ; $4bcf: $dd
	sub h                                            ; $4bd0: $94
	db $eb                                           ; $4bd1: $eb
	db $dd                                           ; $4bd2: $dd
	or $fd                                           ; $4bd3: $f6 $fd
	add $09                                          ; $4bd5: $c6 $09
	and h                                            ; $4bd7: $a4
	nop                                              ; $4bd8: $00
	ldh a, [$e0]                                     ; $4bd9: $f0 $e0
	add b                                            ; $4bdb: $80
	ei                                               ; $4bdc: $fb
	sbc b                                            ; $4bdd: $98
	add b                                            ; $4bde: $80
	add d                                            ; $4bdf: $82
	push hl                                          ; $4be0: $e5
	ld e, h                                          ; $4be1: $5c
	add hl, hl                                       ; $4be2: $29
	nop                                              ; $4be3: $00

jr_050_4be4:
	inc b                                            ; $4be4: $04
	rst FarCall                                          ; $4be5: $f7
	sbc h                                            ; $4be6: $9c
	ld b, b                                          ; $4be7: $40
	adc [hl]                                         ; $4be8: $8e
	jr c, jr_050_4c66                                ; $4be9: $38 $7b

	ei                                               ; $4beb: $fb

jr_050_4bec:
	ld sp, hl                                        ; $4bec: $f9
	ld a, a                                          ; $4bed: $7f
	ld c, [hl]                                       ; $4bee: $4e
	sbc c                                            ; $4bef: $99
	sub d                                            ; $4bf0: $92
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	jr nz, jr_050_4bf6                               ; $4bf3: $20 $01

	add hl, bc                                       ; $4bf5: $09

jr_050_4bf6:
	ld sp, hl                                        ; $4bf6: $f9
	ld a, [hl]                                       ; $4bf7: $7e
	call nc, $029c                                   ; $4bf8: $d4 $9c $02
	ld bc, $7b84                                     ; $4bfb: $01 $84 $7b
	jr c, @-$05                                      ; $4bfe: $38 $f9

	sbc b                                            ; $4c00: $98
	xor [hl]                                         ; $4c01: $ae
	ld de, $eba4                                     ; $4c02: $11 $a4 $eb
	inc b                                            ; $4c05: $04
	sbc a                                            ; $4c06: $9f
	db $eb                                           ; $4c07: $eb
	ld hl, sp-$69                                    ; $4c08: $f8 $97
	db $fc                                           ; $4c0a: $fc
	add hl, bc                                       ; $4c0b: $09
	ld [hl], $cd                                     ; $4c0c: $36 $cd
	and h                                            ; $4c0e: $a4
	set 3, c                                         ; $4c0f: $cb $d9
	ld d, d                                          ; $4c11: $52
	ld a, [bc]                                       ; $4c12: $0a
	rst JumpTable                                          ; $4c13: $c7
	sbc [hl]                                         ; $4c14: $9e
	cp [hl]                                          ; $4c15: $be
	or $7e                                           ; $4c16: $f6 $7e
	db $fc                                           ; $4c18: $fc
	sbc h                                            ; $4c19: $9c
	ld d, a                                          ; $4c1a: $57
	jp nz, Jump_050_67f4                             ; $4c1b: $c2 $f4 $67

	sub d                                            ; $4c1e: $92
	ld a, l                                          ; $4c1f: $7d
	sbc h                                            ; $4c20: $9c
	sbc c                                            ; $4c21: $99
	jr c, jr_050_4be4                                ; $4c22: $38 $c0

	jr nc, jr_050_4bec                               ; $4c24: $30 $c6

	db $10                                           ; $4c26: $10
	adc e                                            ; $4c27: $8b
	ld a, c                                          ; $4c28: $79
	sub c                                            ; $4c29: $91
	add c                                            ; $4c2a: $81
	ccf                                              ; $4c2b: $3f
	rrca                                             ; $4c2c: $0f
	add hl, sp                                       ; $4c2d: $39
	ldh [rSVBK], a                                   ; $4c2e: $e0 $70
	dec b                                            ; $4c30: $05
	ld l, h                                          ; $4c31: $6c
	ret nc                                           ; $4c32: $d0

	ld [bc], a                                       ; $4c33: $02
	add d                                            ; $4c34: $82
	nop                                              ; $4c35: $00
	jr nc, jr_050_4c3a                               ; $4c36: $30 $02

	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00

jr_050_4c3a:
	dec l                                            ; $4c3a: $2d
	db $fd                                           ; $4c3b: $fd
	ld a, l                                          ; $4c3c: $7d
	ld a, a                                          ; $4c3d: $7f
	rrca                                             ; $4c3e: $0f
	db $fc                                           ; $4c3f: $fc
	ld [de], a                                       ; $4c40: $12
	add b                                            ; $4c41: $80
	rlca                                             ; $4c42: $07
	ld bc, $00fe                                     ; $4c43: $01 $fe $00
	inc bc                                           ; $4c46: $03
	cp a                                             ; $4c47: $bf
	db $ed                                           ; $4c48: $ed
	ld l, l                                          ; $4c49: $6d
	sbc a                                            ; $4c4a: $9f
	ld a, a                                          ; $4c4b: $7f
	xor $74                                          ; $4c4c: $ee $74
	ld e, c                                          ; $4c4e: $59
	sbc [hl]                                         ; $4c4f: $9e
	inc bc                                           ; $4c50: $03
	ld [hl], l                                       ; $4c51: $75
	ld l, d                                          ; $4c52: $6a
	ret c                                            ; $4c53: $d8

	rst $38                                          ; $4c54: $ff
	sbc d                                            ; $4c55: $9a
	rst FarCall                                          ; $4c56: $f7
	rst AddAOntoHL                                          ; $4c57: $ef
	ret z                                            ; $4c58: $c8

	and c                                            ; $4c59: $a1
	xor e                                            ; $4c5a: $ab
	ret c                                            ; $4c5b: $d8

	rst $38                                          ; $4c5c: $ff
	sbc b                                            ; $4c5d: $98
	or $60                                           ; $4c5e: $f6 $60
	and e                                            ; $4c60: $a3
	ld b, $7a                                        ; $4c61: $06 $7a
	db $ec                                           ; $4c63: $ec
	and c                                            ; $4c64: $a1
	ld l, [hl]                                       ; $4c65: $6e

jr_050_4c66:
	ldh [$97], a                                     ; $4c66: $e0 $97
	di                                               ; $4c68: $f3
	ret nz                                           ; $4c69: $c0

	cp $3a                                           ; $4c6a: $fe $3a
	rst GetHLinHL                                          ; $4c6c: $cf
	and d                                            ; $4c6d: $a2
	adc c                                            ; $4c6e: $89
	daa                                              ; $4c6f: $27
	halt                                             ; $4c70: $76
	di                                               ; $4c71: $f3
	ld a, [hl]                                       ; $4c72: $7e
	call nc, $e07e                                   ; $4c73: $d4 $7e $e0
	rst SubAFromDE                                          ; $4c76: $df
	rst $38                                          ; $4c77: $ff
	sbc h                                            ; $4c78: $9c
	adc e                                            ; $4c79: $8b
	daa                                              ; $4c7a: $27
	sbc a                                            ; $4c7b: $9f
	ld a, e                                          ; $4c7c: $7b
	or [hl]                                          ; $4c7d: $b6
	ld a, h                                          ; $4c7e: $7c
	adc b                                            ; $4c7f: $88
	halt                                             ; $4c80: $76
	call nc, $cb7a                                   ; $4c81: $d4 $7a $cb
	sub [hl]                                         ; $4c84: $96
	db $fc                                           ; $4c85: $fc
	cp $ff                                           ; $4c86: $fe $ff
	or $ec                                           ; $4c88: $f6 $ec
	cp l                                             ; $4c8a: $bd
	sub $e0                                          ; $4c8b: $d6 $e0
	ret nc                                           ; $4c8d: $d0

	ld a, d                                          ; $4c8e: $7a
	db $d3                                           ; $4c8f: $d3
	sbc [hl]                                         ; $4c90: $9e
	ldh a, [$75]                                     ; $4c91: $f0 $75
	or b                                             ; $4c93: $b0
	sbc d                                            ; $4c94: $9a
	add sp, -$7f                                     ; $4c95: $e8 $81
	inc c                                            ; $4c97: $0c
	di                                               ; $4c98: $f3
	add a                                            ; $4c99: $87
	ld e, c                                          ; $4c9a: $59
	and a                                            ; $4c9b: $a7
	sbc e                                            ; $4c9c: $9b
	jr nz, jr_050_4ca3                               ; $4c9d: $20 $04

	daa                                              ; $4c9f: $27
	dec c                                            ; $4ca0: $0d
	ld a, c                                          ; $4ca1: $79
	and e                                            ; $4ca2: $a3

jr_050_4ca3:
	ld a, e                                          ; $4ca3: $7b
	ld [hl], b                                       ; $4ca4: $70
	ld l, d                                          ; $4ca5: $6a
	pop bc                                           ; $4ca6: $c1
	sbc b                                            ; $4ca7: $98
	inc d                                            ; $4ca8: $14
	rst AddAOntoHL                                          ; $4ca9: $ef
	ld a, c                                          ; $4caa: $79
	sub b                                            ; $4cab: $90
	inc b                                            ; $4cac: $04
	dec hl                                           ; $4cad: $2b
	ld d, a                                          ; $4cae: $57
	ld h, d                                          ; $4caf: $62
	ld bc, $9098                                     ; $4cb0: $01 $98 $90
	adc e                                            ; $4cb3: $8b
	ld b, [hl]                                       ; $4cb4: $46
	nop                                              ; $4cb5: $00
	ld b, b                                          ; $4cb6: $40
	xor h                                            ; $4cb7: $ac
	ld e, h                                          ; $4cb8: $5c
	ld e, a                                          ; $4cb9: $5f
	rst GetHLinHL                                          ; $4cba: $cf
	sbc c                                            ; $4cbb: $99
	ld [hl], h                                       ; $4cbc: $74
	rst SubAFromDE                                          ; $4cbd: $df
	ld [hl], $5d                                     ; $4cbe: $36 $5d
	ld l, a                                          ; $4cc0: $6f
	cp c                                             ; $4cc1: $b9
	ld e, a                                          ; $4cc2: $5f
	ldh a, [$99]                                     ; $4cc3: $f0 $99
	ld bc, $77f7                                     ; $4cc5: $01 $f7 $77
	ld a, e                                          ; $4cc8: $7b
	daa                                              ; $4cc9: $27
	ld d, l                                          ; $4cca: $55
	ld sp, hl                                        ; $4ccb: $f9
	sub a                                            ; $4ccc: $97
	daa                                              ; $4ccd: $27
	ld de, $ffee                                     ; $4cce: $11 $ee $ff
	cp d                                             ; $4cd1: $ba
	pop hl                                           ; $4cd2: $e1
	cp a                                             ; $4cd3: $bf
	rst SubAFromDE                                          ; $4cd4: $df
	ld sp, hl                                        ; $4cd5: $f9
	sub a                                            ; $4cd6: $97
	or a                                             ; $4cd7: $b7
	db $dd                                           ; $4cd8: $dd
	db $eb                                           ; $4cd9: $eb
	cp $e5                                           ; $4cda: $fe $e5
	cp e                                             ; $4cdc: $bb
	rst AddAOntoHL                                          ; $4cdd: $ef
	push de                                          ; $4cde: $d5
	jp hl                                            ; $4cdf: $e9


	sbc [hl]                                         ; $4ce0: $9e
	ld b, $f2                                        ; $4ce1: $06 $f2
	ld a, [hl]                                       ; $4ce3: $7e
	rst JumpTable                                          ; $4ce4: $c7
	sbc [hl]                                         ; $4ce5: $9e
	dec d                                            ; $4ce6: $15
	ld [hl], d                                       ; $4ce7: $72
	sub l                                            ; $4ce8: $95
	ld l, l                                          ; $4ce9: $6d
	or a                                             ; $4cea: $b7
	rst $38                                          ; $4ceb: $ff
	add b                                            ; $4cec: $80
	inc d                                            ; $4ced: $14
	ldh [c], a                                       ; $4cee: $e2
	reti                                             ; $4cef: $d9


	ret c                                            ; $4cf0: $d8

	rrca                                             ; $4cf1: $0f
	ret nc                                           ; $4cf2: $d0

	dec c                                            ; $4cf3: $0d
	ld [bc], a                                       ; $4cf4: $02
	ld hl, sp+$1c                                    ; $4cf5: $f8 $1c
	ld b, $07                                        ; $4cf7: $06 $07
	nop                                              ; $4cf9: $00
	inc c                                            ; $4cfa: $0c
	nop                                              ; $4cfb: $00
	ld bc, $1881                                     ; $4cfc: $01 $81 $18
	ld [hl], d                                       ; $4cff: $72
	add hl, bc                                       ; $4d00: $09
	dec d                                            ; $4d01: $15
	add c                                            ; $4d02: $81
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld a, [hl]                                       ; $4d05: $7e
	rst SubAFromBC                                          ; $4d06: $e7
	add c                                            ; $4d07: $81
	ldh [$eb], a                                     ; $4d08: $e0 $eb
	ld a, [hl]                                       ; $4d0a: $7e
	cp $96                                           ; $4d0b: $fe $96
	ei                                               ; $4d0d: $fb
	rrca                                             ; $4d0e: $0f
	rlca                                             ; $4d0f: $07
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	pop de                                           ; $4d12: $d1
	push hl                                          ; $4d13: $e5
	inc bc                                           ; $4d14: $03
	ld b, e                                          ; $4d15: $43
	sbc $ff                                          ; $4d16: $de $ff
	sbc [hl]                                         ; $4d18: $9e
	rst SubAFromDE                                          ; $4d19: $df
	ld [hl], h                                       ; $4d1a: $74
	ld d, c                                          ; $4d1b: $51
	sub a                                            ; $4d1c: $97
	cp $f1                                           ; $4d1d: $fe $f1
	add hl, de                                       ; $4d1f: $19
	ld bc, $f21c                                     ; $4d20: $01 $1c $f2
	ret z                                            ; $4d23: $c8

	ld b, c                                          ; $4d24: $41
	ld l, c                                          ; $4d25: $69
	ret nz                                           ; $4d26: $c0

	sub a                                            ; $4d27: $97
	add b                                            ; $4d28: $80
	ld e, [hl]                                       ; $4d29: $5e
	ld a, [$a3e8]                                    ; $4d2a: $fa $e8 $a3
	pop bc                                           ; $4d2d: $c1
	rla                                              ; $4d2e: $17
	ld e, a                                          ; $4d2f: $5f
	halt                                             ; $4d30: $76
	ldh [$99], a                                     ; $4d31: $e0 $99
	ret nz                                           ; $4d33: $c0

	ccf                                              ; $4d34: $3f
	rrca                                             ; $4d35: $0f

jr_050_4d36:
	ccf                                              ; $4d36: $3f
	rst $38                                          ; $4d37: $ff
	adc l                                            ; $4d38: $8d
	ld [hl], a                                       ; $4d39: $77
	db $f4                                           ; $4d3a: $f4
	halt                                             ; $4d3b: $76
	sbc l                                            ; $4d3c: $9d
	ld a, e                                          ; $4d3d: $7b
	db $f4                                           ; $4d3e: $f4
	reti                                             ; $4d3f: $d9


	rst $38                                          ; $4d40: $ff
	sbc h                                            ; $4d41: $9c
	ei                                               ; $4d42: $fb
	rst SubAFromBC                                          ; $4d43: $e7
	sbc h                                            ; $4d44: $9c
	ld [hl], l                                       ; $4d45: $75
	ld a, [hl]                                       ; $4d46: $7e
	ld a, [hl]                                       ; $4d47: $7e
	db $d3                                           ; $4d48: $d3
	sub d                                            ; $4d49: $92
	ld hl, sp-$1e                                    ; $4d4a: $f8 $e2
	pop bc                                           ; $4d4c: $c1
	jp hl                                            ; $4d4d: $e9


	cp l                                             ; $4d4e: $bd
	ld l, e                                          ; $4d4f: $6b
	or $dc                                           ; $4d50: $f6 $dc
	xor $bd                                          ; $4d52: $ee $bd
	ld a, $f0                                        ; $4d54: $3e $f0
	ret nz                                           ; $4d56: $c0

	ld [hl], l                                       ; $4d57: $75
	or b                                             ; $4d58: $b0
	sub l                                            ; $4d59: $95
	ld b, b                                          ; $4d5a: $40
	ret nz                                           ; $4d5b: $c0

	jr nz, jr_050_4d36                               ; $4d5c: $20 $d8

	nop                                              ; $4d5e: $00
	ld [bc], a                                       ; $4d5f: $02
	add b                                            ; $4d60: $80
	ret c                                            ; $4d61: $d8

	or a                                             ; $4d62: $b7
	xor l                                            ; $4d63: $ad
	ld h, d                                          ; $4d64: $62
	ldh a, [$98]                                     ; $4d65: $f0 $98
	add d                                            ; $4d67: $82
	jr nz, jr_050_4d72                               ; $4d68: $20 $08

	ld bc, $51a7                                     ; $4d6a: $01 $a7 $51
	xor l                                            ; $4d6d: $ad
	ld h, h                                          ; $4d6e: $64
	or [hl]                                          ; $4d6f: $b6
	ld a, a                                          ; $4d70: $7f
	sub [hl]                                         ; $4d71: $96

jr_050_4d72:
	sbc b                                            ; $4d72: $98
	ld [hl+], a                                      ; $4d73: $22
	dec bc                                           ; $4d74: $0b
	ld a, $ff                                        ; $4d75: $3e $ff
	ccf                                              ; $4d77: $3f
	ld e, c                                          ; $4d78: $59
	nop                                              ; $4d79: $00
	ld l, c                                          ; $4d7a: $69
	add c                                            ; $4d7b: $81
	sbc d                                            ; $4d7c: $9a
	inc a                                            ; $4d7d: $3c
	rst SubAFromHL                                          ; $4d7e: $d7
	ld a, e                                          ; $4d7f: $7b
	ld l, [hl]                                       ; $4d80: $6e
	call c, $3865                                    ; $4d81: $dc $65 $38
	cp $9c                                           ; $4d84: $fe $9c
	ld a, [$d42f]                                    ; $4d86: $fa $2f $d4
	ld a, c                                          ; $4d89: $79
	ld b, e                                          ; $4d8a: $43
	ld e, a                                          ; $4d8b: $5f
	ldh a, [$9a]                                     ; $4d8c: $f0 $9a
	xor $7e                                          ; $4d8e: $ee $7e
	cp a                                             ; $4d90: $bf
	db $dd                                           ; $4d91: $dd
	cpl                                              ; $4d92: $2f
	ld e, e                                          ; $4d93: $5b
	ldh a, [$97]                                     ; $4d94: $f0 $97
	ld d, c                                          ; $4d96: $51
	ld l, b                                          ; $4d97: $68
	ld a, h                                          ; $4d98: $7c
	db $fd                                           ; $4d99: $fd
	ldh [c], a                                       ; $4d9a: $e2
	rst $38                                          ; $4d9b: $ff
	ld d, a                                          ; $4d9c: $57
	db $fd                                           ; $4d9d: $fd
	ld sp, hl                                        ; $4d9e: $f9
	sbc b                                            ; $4d9f: $98
	ld [hl], l                                       ; $4da0: $75
	nop                                              ; $4da1: $00
	jp hl                                            ; $4da2: $e9


	rla                                              ; $4da3: $17
	ld a, [hl-]                                      ; $4da4: $3a
	call Call_050_63eb                               ; $4da5: $cd $eb $63
	ldh [$97], a                                     ; $4da8: $e0 $97
	or b                                             ; $4daa: $b0
	nop                                              ; $4dab: $00
	add b                                            ; $4dac: $80
	ld a, l                                          ; $4dad: $7d
	sub $bb                                          ; $4dae: $d6 $bb
	db $fd                                           ; $4db0: $fd
	rst FarCall                                          ; $4db1: $f7
	ldh [$c9], a                                     ; $4db2: $e0 $c9
	sub a                                            ; $4db4: $97
	ld bc, $0c03                                     ; $4db5: $01 $03 $0c
	ld a, [bc]                                       ; $4db8: $0a
	db $fc                                           ; $4db9: $fc
	ld [hl+], a                                      ; $4dba: $22
	ld b, h                                          ; $4dbb: $44

jr_050_4dbc:
	jr nc, jr_050_4dbc                               ; $4dbc: $30 $fe

	adc a                                            ; $4dbe: $8f
	dec b                                            ; $4dbf: $05
	inc bc                                           ; $4dc0: $03
	rra                                              ; $4dc1: $1f
	add hl, sp                                       ; $4dc2: $39
	rrca                                             ; $4dc3: $0f
	inc b                                            ; $4dc4: $04
	ret nz                                           ; $4dc5: $c0

	ld h, b                                          ; $4dc6: $60
	nop                                              ; $4dc7: $00
	ld bc, $0806                                     ; $4dc8: $01 $06 $08
	ld hl, $3ffb                                     ; $4dcb: $21 $fb $3f
	rra                                              ; $4dce: $1f
	ld a, b                                          ; $4dcf: $78
	xor l                                            ; $4dd0: $ad
	ld a, a                                          ; $4dd1: $7f
	ld a, [de]                                       ; $4dd2: $1a
	sub e                                            ; $4dd3: $93
	ld bc, $1804                                     ; $4dd4: $01 $04 $18
	ld [hl], b                                       ; $4dd7: $70
	add l                                            ; $4dd8: $85
	rla                                              ; $4dd9: $17
	ld e, a                                          ; $4dda: $5f
	ccf                                              ; $4ddb: $3f
	cp $f8                                           ; $4ddc: $fe $f8
	ldh [hDisp1_LCDC], a                                     ; $4dde: $e0 $8f
	halt                                             ; $4de0: $76
	db $ec                                           ; $4de1: $ec
	sbc [hl]                                         ; $4de2: $9e
	dec b                                            ; $4de3: $05
	ld a, [hl-]                                      ; $4de4: $3a
	ldh [rPCM12], a                                  ; $4de5: $e0 $76
	sbc $dc                                          ; $4de7: $de $dc
	rst $38                                          ; $4de9: $ff
	ld a, d                                          ; $4dea: $7a
	sbc $97                                          ; $4deb: $de $97
	db $fc                                           ; $4ded: $fc
	ei                                               ; $4dee: $fb
	rst SubAFromBC                                          ; $4def: $e7
	rst SubAFromHL                                          ; $4df0: $d7
	rra                                              ; $4df1: $1f
	rst AddAOntoHL                                          ; $4df2: $ef
	rst $38                                          ; $4df3: $ff
	or e                                             ; $4df4: $b3
	ld [hl], b                                       ; $4df5: $70
	add e                                            ; $4df6: $83
	cp $df                                           ; $4df7: $fe $df
	rst $38                                          ; $4df9: $ff
	ld a, [hl]                                       ; $4dfa: $7e
	inc h                                            ; $4dfb: $24
	sbc e                                            ; $4dfc: $9b
	ld a, a                                          ; $4dfd: $7f
	or $bb                                           ; $4dfe: $f6 $bb
	db $dd                                           ; $4e00: $dd
	ld sp, hl                                        ; $4e01: $f9
	rst SubAFromDE                                          ; $4e02: $df
	rst $38                                          ; $4e03: $ff
	sbc c                                            ; $4e04: $99
	db $ed                                           ; $4e05: $ed
	rst $38                                          ; $4e06: $ff
	ld a, d                                          ; $4e07: $7a
	rst SubAFromDE                                          ; $4e08: $df
	db $eb                                           ; $4e09: $eb
	ld a, a                                          ; $4e0a: $7f
	ld sp, hl                                        ; $4e0b: $f9
	ld a, l                                          ; $4e0c: $7d
	add b                                            ; $4e0d: $80
	sbc d                                            ; $4e0e: $9a
	db $dd                                           ; $4e0f: $dd
	ld d, d                                          ; $4e10: $52
	rst AddAOntoHL                                          ; $4e11: $ef
	cp $f7                                           ; $4e12: $fe $f7
	ld h, e                                          ; $4e14: $63
	jr nc, @-$66                                     ; $4e15: $30 $98

	ld e, d                                          ; $4e17: $5a
	db $fd                                           ; $4e18: $fd
	ld d, l                                          ; $4e19: $55
	rst SubAFromDE                                          ; $4e1a: $df
	or l                                             ; $4e1b: $b5
	rst $38                                          ; $4e1c: $ff
	ld a, a                                          ; $4e1d: $7f
	ld h, e                                          ; $4e1e: $63
	ldh a, [$9b]                                     ; $4e1f: $f0 $9b
	xor a                                            ; $4e21: $af
	push af                                          ; $4e22: $f5
	ld e, a                                          ; $4e23: $5f
	rst AddAOntoHL                                          ; $4e24: $ef
	halt                                             ; $4e25: $76
	rst SubAFromDE                                          ; $4e26: $df
	ld sp, hl                                        ; $4e27: $f9
	sbc l                                            ; $4e28: $9d
	ld a, a                                          ; $4e29: $7f
	db $eb                                           ; $4e2a: $eb
	db $db                                           ; $4e2b: $db
	rst $38                                          ; $4e2c: $ff
	ld e, a                                          ; $4e2d: $5f
	or b                                             ; $4e2e: $b0
	inc bc                                           ; $4e2f: $03
	ldh a, [$03]                                     ; $4e30: $f0 $03
	ldh a, [$57]                                     ; $4e32: $f0 $57
	ldh a, [rAUDENA]                                 ; $4e34: $f0 $26
	nop                                              ; $4e36: $00
	jp c, $9c44                                      ; $4e37: $da $44 $9c

	ld b, a                                          ; $4e3a: $47
	ld [hl], a                                       ; $4e3b: $77
	ld [hl], a                                       ; $4e3c: $77
	inc bc                                           ; $4e3d: $03
	or $6b                                           ; $4e3e: $f6 $6b
	or $de                                           ; $4e40: $f6 $de
	ld d, l                                          ; $4e42: $55
	sbc [hl]                                         ; $4e43: $9e
	ld d, [hl]                                       ; $4e44: $56
	sbc $66                                          ; $4e45: $de $66
	sbc $33                                          ; $4e47: $de $33
	db $dd                                           ; $4e49: $dd
	ld d, l                                          ; $4e4a: $55
	sbc [hl]                                         ; $4e4b: $9e
	ld d, e                                          ; $4e4c: $53
	call c, $5333                                    ; $4e4d: $dc $33 $53
	or $6f                                           ; $4e50: $f6 $6f
	rst FarCall                                          ; $4e52: $f7
	ld [hl], a                                       ; $4e53: $77
	or $da                                           ; $4e54: $f6 $da
	inc sp                                           ; $4e56: $33
	ld h, e                                          ; $4e57: $63
	rst FarCall                                          ; $4e58: $f7
	sbc [hl]                                         ; $4e59: $9e
	inc sp                                           ; $4e5a: $33
	jp c, $f183                                      ; $4e5b: $da $83 $f1

	sub e                                            ; $4e5e: $93
	rra                                              ; $4e5f: $1f
	nop                                              ; $4e60: $00
	ccf                                              ; $4e61: $3f
	ccf                                              ; $4e62: $3f
	ld a, a                                          ; $4e63: $7f
	rst $38                                          ; $4e64: $ff
	rst $38                                          ; $4e65: $ff
	add b                                            ; $4e66: $80
	nop                                              ; $4e67: $00
	rra                                              ; $4e68: $1f
	ccf                                              ; $4e69: $3f
	nop                                              ; $4e6a: $00
	ld a, e                                          ; $4e6b: $7b
	ld hl, sp-$21                                    ; $4e6c: $f8 $df
	rst $38                                          ; $4e6e: $ff
	sbc [hl]                                         ; $4e6f: $9e
	nop                                              ; $4e70: $00
	call c, rIE                                    ; $4e71: $dc $ff $ff
	ld h, e                                          ; $4e74: $63
	or $03                                           ; $4e75: $f6 $03
	ldh a, [$03]                                     ; $4e77: $f0 $03
	ldh a, [$03]                                     ; $4e79: $f0 $03
	ldh a, [$03]                                     ; $4e7b: $f0 $03
	ldh a, [$03]                                     ; $4e7d: $f0 $03
	ldh a, [$03]                                     ; $4e7f: $f0 $03
	ldh a, [$03]                                     ; $4e81: $f0 $03
	ldh a, [rOCPD]                                   ; $4e83: $f0 $6b
	or $93                                           ; $4e85: $f6 $93
	ld hl, sp+$00                                    ; $4e87: $f8 $00
	db $fc                                           ; $4e89: $fc
	db $fc                                           ; $4e8a: $fc
	cp $ff                                           ; $4e8b: $fe $ff
	rst $38                                          ; $4e8d: $ff
	ld bc, $f800                                     ; $4e8e: $01 $00 $f8
	db $fc                                           ; $4e91: $fc
	nop                                              ; $4e92: $00
	ld a, e                                          ; $4e93: $7b
	ld hl, sp+$7b                                    ; $4e94: $f8 $7b
	rst SubAFromBC                                          ; $4e96: $e7
	db $ed                                           ; $4e97: $ed
	sub h                                            ; $4e98: $94
	inc bc                                           ; $4e99: $03
	rrca                                             ; $4e9a: $0f
	nop                                              ; $4e9b: $00
	nop                                              ; $4e9c: $00
	ld bc, $0301                                     ; $4e9d: $01 $01 $03
	inc bc                                           ; $4ea0: $03
	inc b                                            ; $4ea1: $04
	nop                                              ; $4ea2: $00
	add b                                            ; $4ea3: $80
	ld a, e                                          ; $4ea4: $7b
	di                                               ; $4ea5: $f3
	sbc [hl]                                         ; $4ea6: $9e
	rra                                              ; $4ea7: $1f
	db $db                                           ; $4ea8: $db
	rst $38                                          ; $4ea9: $ff
	sbc l                                            ; $4eaa: $9d
	db $fc                                           ; $4eab: $fc
	ldh [rPCM12], a                                  ; $4eac: $e0 $76
	or b                                             ; $4eae: $b0
	sbc [hl]                                         ; $4eaf: $9e
	ccf                                              ; $4eb0: $3f
	db $db                                           ; $4eb1: $db
	rst $38                                          ; $4eb2: $ff
	sbc l                                            ; $4eb3: $9d
	ldh [$c0], a                                     ; $4eb4: $e0 $c0
	ei                                               ; $4eb6: $fb
	reti                                             ; $4eb7: $d9


	rst $38                                          ; $4eb8: $ff
	ld sp, hl                                        ; $4eb9: $f9
	inc bc                                           ; $4eba: $03
	ldh a, [$03]                                     ; $4ebb: $f0 $03
	ldh a, [$03]                                     ; $4ebd: $f0 $03
	ldh a, [$03]                                     ; $4ebf: $f0 $03
	ldh a, [$03]                                     ; $4ec1: $f0 $03
	ldh a, [$03]                                     ; $4ec3: $f0 $03
	ldh a, [$1f]                                     ; $4ec5: $f0 $1f
	ldh a, [$9a]                                     ; $4ec7: $f0 $9a
	ld bc, $c080                                     ; $4ec9: $01 $80 $c0
	ldh a, [$fc]                                     ; $4ecc: $f0 $fc
	db $dd                                           ; $4ece: $dd
	rst $38                                          ; $4ecf: $ff
	sbc e                                            ; $4ed0: $9b
	ld a, a                                          ; $4ed1: $7f
	ccf                                              ; $4ed2: $3f
	rrca                                             ; $4ed3: $0f
	inc bc                                           ; $4ed4: $03
	ld hl, sp+$7f                                    ; $4ed5: $f8 $7f
	db $ec                                           ; $4ed7: $ec
	rst $38                                          ; $4ed8: $ff
	rst SubAFromDE                                          ; $4ed9: $df
	add b                                            ; $4eda: $80
	rst SubAFromDE                                          ; $4edb: $df
	ret nz                                           ; $4edc: $c0

	sbc [hl]                                         ; $4edd: $9e
	jr nz, jr_050_4f51                               ; $4ede: $20 $71

	sbc c                                            ; $4ee0: $99
	sbc e                                            ; $4ee1: $9b
	ld a, a                                          ; $4ee2: $7f
	ld [hl], a                                       ; $4ee3: $77
	ld a, e                                          ; $4ee4: $7b
	ld [hl], l                                       ; $4ee5: $75
	cp $dc                                           ; $4ee6: $fe $dc
	ld a, a                                          ; $4ee8: $7f
	ld [hl], d                                       ; $4ee9: $72
	adc c                                            ; $4eea: $89
	sbc h                                            ; $4eeb: $9c
	ld a, [$eff5]                                    ; $4eec: $fa $f5 $ef
	ld l, e                                          ; $4eef: $6b
	or l                                             ; $4ef0: $b5
	sbc [hl]                                         ; $4ef1: $9e
	ld hl, sp+$73                                    ; $4ef2: $f8 $73
	ldh a, [$9c]                                     ; $4ef4: $f0 $9c
	xor d                                            ; $4ef6: $aa
	ld d, l                                          ; $4ef7: $55
	xor a                                            ; $4ef8: $af
	ld l, e                                          ; $4ef9: $6b
	ldh a, [$9e]                                     ; $4efa: $f0 $9e
	ldh a, [$6f]                                     ; $4efc: $f0 $6f
	ldh a, [$9e]                                     ; $4efe: $f0 $9e
	ld d, h                                          ; $4f00: $54
	halt                                             ; $4f01: $76
	and l                                            ; $4f02: $a5
	db $dd                                           ; $4f03: $dd
	rst $38                                          ; $4f04: $ff
	ld a, d                                          ; $4f05: $7a
	and d                                            ; $4f06: $a2
	ld a, e                                          ; $4f07: $7b
	ld hl, sp+$7e                                    ; $4f08: $f8 $7e
	adc e                                            ; $4f0a: $8b
	sbc [hl]                                         ; $4f0b: $9e
	inc c                                            ; $4f0c: $0c
	ld l, e                                          ; $4f0d: $6b
	ldh a, [$9e]                                     ; $4f0e: $f0 $9e
	add e                                            ; $4f10: $83
	ld [hl], e                                       ; $4f11: $73
	ldh a, [$9c]                                     ; $4f12: $f0 $9c
	ld [hl], b                                       ; $4f14: $70
	nop                                              ; $4f15: $00
	ld b, b                                          ; $4f16: $40
	ld l, e                                          ; $4f17: $6b
	ldh a, [$9e]                                     ; $4f18: $f0 $9e
	cp h                                             ; $4f1a: $bc
	ld l, [hl]                                       ; $4f1b: $6e
	add hl, sp                                       ; $4f1c: $39
	sbc l                                            ; $4f1d: $9d
	nop                                              ; $4f1e: $00
	ld d, c                                          ; $4f1f: $51
	ld l, e                                          ; $4f20: $6b
	ldh a, [rOCPS]                                   ; $4f21: $f0 $6a
	add hl, hl                                       ; $4f23: $29
	ld h, e                                          ; $4f24: $63
	ld d, l                                          ; $4f25: $55
	ld l, a                                          ; $4f26: $6f
	ret nz                                           ; $4f27: $c0

	ld e, a                                          ; $4f28: $5f
	ldh a, [rBCPD]                                   ; $4f29: $f0 $69
	rst $38                                          ; $4f2b: $ff
	inc bc                                           ; $4f2c: $03
	ldh a, [$03]                                     ; $4f2d: $f0 $03
	ldh a, [rHDMA3]                                  ; $4f2f: $f0 $53
	ldh a, [$9e]                                     ; $4f31: $f0 $9e
	inc e                                            ; $4f33: $1c
	ld c, e                                          ; $4f34: $4b
	ldh a, [rHDMA2]                                  ; $4f35: $f0 $52
	push de                                          ; $4f37: $d5
	ld a, e                                          ; $4f38: $7b
	ld hl, sp-$64                                    ; $4f39: $f8 $9c
	ld d, l                                          ; $4f3b: $55
	ld a, [bc]                                       ; $4f3c: $0a
	ld bc, $f04f                                     ; $4f3d: $01 $4f $f0
	ld a, a                                          ; $4f40: $7f
	rrca                                             ; $4f41: $0f
	ld d, e                                          ; $4f42: $53
	ldh a, [$9c]                                     ; $4f43: $f0 $9c
	ld d, a                                          ; $4f45: $57
	xor e                                            ; $4f46: $ab
	ld d, a                                          ; $4f47: $57
	ld h, a                                          ; $4f48: $67
	ldh a, [$75]                                     ; $4f49: $f0 $75
	ld a, c                                          ; $4f4b: $79
	rst SubAFromDE                                          ; $4f4c: $df
	cp $9d                                           ; $4f4d: $fe $9d
	xor [hl]                                         ; $4f4f: $ae
	ld d, [hl]                                       ; $4f50: $56

jr_050_4f51:
	cp $dc                                           ; $4f51: $fe $dc
	cp $80                                           ; $4f53: $fe $80
	ld a, d                                          ; $4f55: $7a
	add hl, sp                                       ; $4f56: $39
	ld e, [hl]                                       ; $4f57: $5e
	dec l                                            ; $4f58: $2d
	ld d, [hl]                                       ; $4f59: $56
	ld c, d                                          ; $4f5a: $4a
	ld h, l                                          ; $4f5b: $65
	ld [hl], d                                       ; $4f5c: $72
	ld a, a                                          ; $4f5d: $7f
	ld a, [hl]                                       ; $4f5e: $7e
	ld a, l                                          ; $4f5f: $7d
	ld a, [hl]                                       ; $4f60: $7e
	ccf                                              ; $4f61: $3f
	ccf                                              ; $4f62: $3f
	rra                                              ; $4f63: $1f
	rrca                                             ; $4f64: $0f
	rst FarCall                                          ; $4f65: $f7
	ld a, d                                          ; $4f66: $7a
	xor e                                            ; $4f67: $ab
	ld d, h                                          ; $4f68: $54
	xor h                                            ; $4f69: $ac
	ret nc                                           ; $4f6a: $d0

	ld l, a                                          ; $4f6b: $6f
	sbc a                                            ; $4f6c: $9f
	db $fd                                           ; $4f6d: $fd
	db $fd                                           ; $4f6e: $fd
	ld a, l                                          ; $4f6f: $7d
	xor c                                            ; $4f70: $a9
	ld d, c                                          ; $4f71: $51
	xor b                                            ; $4f72: $a8
	ret nc                                           ; $4f73: $d0

	adc l                                            ; $4f74: $8d
	ldh [$5c], a                                     ; $4f75: $e0 $5c
	xor c                                            ; $4f77: $a9
	ld a, [bc]                                       ; $4f78: $0a
	add hl, bc                                       ; $4f79: $09
	jr z, jr_050_4f7f                                ; $4f7a: $28 $03

	ld hl, sp-$01                                    ; $4f7c: $f8 $ff
	di                                               ; $4f7e: $f3

jr_050_4f7f:
	ldh a, [c]                                       ; $4f7f: $f2
	ldh a, [$f2]                                     ; $4f80: $f0 $f2
	db $d3                                           ; $4f82: $d3
	db $10                                           ; $4f83: $10
	rlca                                             ; $4f84: $07
	nop                                              ; $4f85: $00
	ld b, b                                          ; $4f86: $40
	sbc $01                                          ; $4f87: $de $01
	ld a, d                                          ; $4f89: $7a
	db $e3                                           ; $4f8a: $e3
	sbc l                                            ; $4f8b: $9d
	rst $38                                          ; $4f8c: $ff
	cp a                                             ; $4f8d: $bf
	sbc $fe                                          ; $4f8e: $de $fe
	sbc d                                            ; $4f90: $9a
	cp a                                             ; $4f91: $bf
	ccf                                              ; $4f92: $3f
	rst $38                                          ; $4f93: $ff
	nop                                              ; $4f94: $00
	ld c, b                                          ; $4f95: $48
	cp $9e                                           ; $4f96: $fe $9e
	ld b, l                                          ; $4f98: $45
	ld a, c                                          ; $4f99: $79
	ld c, c                                          ; $4f9a: $49
	sbc [hl]                                         ; $4f9b: $9e
	inc sp                                           ; $4f9c: $33
	sbc $7f                                          ; $4f9d: $de $7f
	add b                                            ; $4f9f: $80
	ld a, [hl-]                                      ; $4fa0: $3a
	add d                                            ; $4fa1: $82
	rst $38                                          ; $4fa2: $ff
	ld a, a                                          ; $4fa3: $7f
	ld [bc], a                                       ; $4fa4: $02
	nop                                              ; $4fa5: $00
	sub b                                            ; $4fa6: $90
	ld b, d                                          ; $4fa7: $42
	ld l, d                                          ; $4fa8: $6a
	and [hl]                                         ; $4fa9: $a6
	nop                                              ; $4faa: $00
	nop                                              ; $4fab: $00
	sbc h                                            ; $4fac: $9c
	sbc [hl]                                         ; $4fad: $9e
	ld c, [hl]                                       ; $4fae: $4e
	inc c                                            ; $4faf: $0c
	inc b                                            ; $4fb0: $04
	ld b, b                                          ; $4fb1: $40
	rst $38                                          ; $4fb2: $ff
	rst $38                                          ; $4fb3: $ff
	ld a, [de]                                       ; $4fb4: $1a
	ld a, [bc]                                       ; $4fb5: $0a
	xor d                                            ; $4fb6: $aa
	ld [$898a], a                                    ; $4fb7: $ea $8a $89
	nop                                              ; $4fba: $00
	rlca                                             ; $4fbb: $07
	pop hl                                           ; $4fbc: $e1
	pop af                                           ; $4fbd: $f1
	db $10                                           ; $4fbe: $10
	sub [hl]                                         ; $4fbf: $96
	ld de, $7071                                     ; $4fc0: $11 $71 $70
	rst $38                                          ; $4fc3: $ff
	ld hl, sp+$40                                    ; $4fc4: $f8 $40
	add b                                            ; $4fc6: $80
	nop                                              ; $4fc7: $00
	add b                                            ; $4fc8: $80
	ld [hl], e                                       ; $4fc9: $73
	ret nz                                           ; $4fca: $c0

	sbc $7f                                          ; $4fcb: $de $7f
	ld [hl], a                                       ; $4fcd: $77
	ret nz                                           ; $4fce: $c0

	ld bc, $03f9                                     ; $4fcf: $01 $f9 $03
	ldh a, [$fc]                                     ; $4fd2: $f0 $fc
	sbc [hl]                                         ; $4fd4: $9e
	di                                               ; $4fd5: $f3
	jp c, Jump_050_76ff                              ; $4fd6: $da $ff $76

	jr c, @-$01                                      ; $4fd9: $38 $fd

	ld [hl], c                                       ; $4fdb: $71
	call $ffde                                       ; $4fdc: $cd $de $ff
	ld h, c                                          ; $4fdf: $61
	call $cf4b                                       ; $4fe0: $cd $4b $cf
	ld l, b                                          ; $4fe3: $68
	xor d                                            ; $4fe4: $aa
	sbc [hl]                                         ; $4fe5: $9e
	rst $38                                          ; $4fe6: $ff
	ld l, b                                          ; $4fe7: $68
	xor d                                            ; $4fe8: $aa
	ld e, a                                          ; $4fe9: $5f
	pop hl                                           ; $4fea: $e1
	sbc h                                            ; $4feb: $9c
	ld a, [hl+]                                      ; $4fec: $2a
	dec b                                            ; $4fed: $05
	ld [bc], a                                       ; $4fee: $02
	db $fd                                           ; $4fef: $fd
	sbc [hl]                                         ; $4ff0: $9e
	sbc a                                            ; $4ff1: $9f
	jp c, $83ff                                      ; $4ff2: $da $ff $83

	ld h, b                                          ; $4ff5: $60
	xor d                                            ; $4ff6: $aa
	ld d, l                                          ; $4ff7: $55
	xor [hl]                                         ; $4ff8: $ae
	ld d, l                                          ; $4ff9: $55
	ld a, [hl+]                                      ; $4ffa: $2a
	ld d, l                                          ; $4ffb: $55
	xor d                                            ; $4ffc: $aa
	pop de                                           ; $4ffd: $d1
	rst $38                                          ; $4ffe: $ff
	cp $fd                                           ; $4fff: $fe $fd
	ld a, [$aaf5]                                    ; $5001: $fa $f5 $aa
	ld d, l                                          ; $5004: $55
	cpl                                              ; $5005: $2f
	xor [hl]                                         ; $5006: $ae
	ld a, $fa                                        ; $5007: $3e $fa
	inc [hl]                                         ; $5009: $34
	add sp, $70                                      ; $500a: $e8 $70
	ld [$7ed2], a                                    ; $500c: $ea $d2 $7e
	cp $7e                                           ; $500f: $fe $7e
	sbc $fe                                          ; $5011: $de $fe
	rst SubAFromDE                                          ; $5013: $df
	db $fc                                           ; $5014: $fc
	ld [hl], h                                       ; $5015: $74
	ld c, b                                          ; $5016: $48
	sbc e                                            ; $5017: $9b
	ret z                                            ; $5018: $c8

	ld c, $53                                        ; $5019: $0e $53
	ld [hl], e                                       ; $501b: $73
	db $fc                                           ; $501c: $fc
	sbc e                                            ; $501d: $9b
	ld b, c                                          ; $501e: $41
	jr z, jr_050_502d                                ; $501f: $28 $0c

	cp l                                             ; $5021: $bd
	sbc $a5                                          ; $5022: $de $a5
	ld [hl], a                                       ; $5024: $77
	db $fc                                           ; $5025: $fc
	sbc l                                            ; $5026: $9d
	nop                                              ; $5027: $00

jr_050_5028:
	jr jr_050_5028                                   ; $5028: $18 $fe

	ld a, e                                          ; $502a: $7b
	db $fc                                           ; $502b: $fc
	reti                                             ; $502c: $d9


jr_050_502d:
	ld a, a                                          ; $502d: $7f
	reti                                             ; $502e: $d9


	cp a                                             ; $502f: $bf
	pop bc                                           ; $5030: $c1
	rst $38                                          ; $5031: $ff
	reti                                             ; $5032: $d9


	ld d, d                                          ; $5033: $52
	reti                                             ; $5034: $d9


	add c                                            ; $5035: $81
	pop bc                                           ; $5036: $c1
	rst $38                                          ; $5037: $ff
	inc bc                                           ; $5038: $03
	rst $38                                          ; $5039: $ff
	inc bc                                           ; $503a: $03
	rst $38                                          ; $503b: $ff
	inc bc                                           ; $503c: $03
	rst $38                                          ; $503d: $ff
	inc bc                                           ; $503e: $03
	rst $38                                          ; $503f: $ff
	push bc                                          ; $5040: $c5
	rst $38                                          ; $5041: $ff
	reti                                             ; $5042: $d9


	ld sp, $c0d9                                     ; $5043: $31 $d9 $c0
	rst $38                                          ; $5046: $ff
	sbc c                                            ; $5047: $99
	inc b                                            ; $5048: $04
	add l                                            ; $5049: $85
	add l                                            ; $504a: $85
	jr z, jr_050_509f                                ; $504b: $28 $52

	sub c                                            ; $504d: $91
	db $fd                                           ; $504e: $fd
	adc e                                            ; $504f: $8b
	ld [bc], a                                       ; $5050: $02
	ld b, $2c                                        ; $5051: $06 $2c
	ld l, [hl]                                       ; $5053: $6e
	ld l, b                                          ; $5054: $68
	ldh [$33], a                                     ; $5055: $e0 $33
	db $e3                                           ; $5057: $e3
	rst SubAFromBC                                          ; $5058: $e7
	jp nz, $3070                                     ; $5059: $c2 $70 $30

	db $10                                           ; $505c: $10
	dec e                                            ; $505d: $1d
	ret z                                            ; $505e: $c8

	stop                                             ; $505f: $10 $00
	ld hl, $c383                                     ; $5061: $21 $83 $c3
	ld [bc], a                                       ; $5064: $02
	ret nz                                           ; $5065: $c0

	jp c, $9aff                                      ; $5066: $da $ff $9a

	ldh [$f0], a                                     ; $5069: $e0 $f0
	ld hl, sp-$04                                    ; $506b: $f8 $fc
	cp $d6                                           ; $506d: $fe $d6
	rst $38                                          ; $506f: $ff
	ei                                               ; $5070: $fb
	sbc l                                            ; $5071: $9d
	add b                                            ; $5072: $80
	ret nz                                           ; $5073: $c0

	ld h, $c0                                        ; $5074: $26 $c0
	reti                                             ; $5076: $d9


	add b                                            ; $5077: $80
	ld c, d                                          ; $5078: $4a
	ld [$db60], sp                                   ; $5079: $08 $60 $db
	ld b, a                                          ; $507c: $47
	ldh a, [$7c]                                     ; $507d: $f0 $7c
	or $9d                                           ; $507f: $f6 $9d
	rlca                                             ; $5081: $07
	inc bc                                           ; $5082: $03
	ld e, b                                          ; $5083: $58
	xor e                                            ; $5084: $ab
	sbc [hl]                                         ; $5085: $9e
	ld h, b                                          ; $5086: $60
	db $db                                           ; $5087: $db
	rst $38                                          ; $5088: $ff
	sbc [hl]                                         ; $5089: $9e
	ld a, a                                          ; $508a: $7f

Call_050_508b:
	ld h, l                                          ; $508b: $65
	ret z                                            ; $508c: $c8

	ld h, c                                          ; $508d: $61
	rst GetHLinHL                                          ; $508e: $cf
	ld h, a                                          ; $508f: $67
	ldh a, [$9b]                                     ; $5090: $f0 $9b
	rst GetHLinHL                                          ; $5092: $cf
	rst SubAFromBC                                          ; $5093: $e7
	di                                               ; $5094: $f3
	ld sp, hl                                        ; $5095: $f9
	ld e, e                                          ; $5096: $5b
	ld l, a                                          ; $5097: $6f
	sbc [hl]                                         ; $5098: $9e
	add b                                            ; $5099: $80
	ld [hl], e                                       ; $509a: $73
	push af                                          ; $509b: $f5
	ld a, a                                          ; $509c: $7f
	pop de                                           ; $509d: $d1
	ld h, l                                          ; $509e: $65

jr_050_509f:
	cp b                                             ; $509f: $b8
	sbc [hl]                                         ; $50a0: $9e
	ld b, $77                                        ; $50a1: $06 $77
	ld h, h                                          ; $50a3: $64
	ld [hl], a                                       ; $50a4: $77
	ld c, h                                          ; $50a5: $4c
	dec hl                                           ; $50a6: $2b
	sub b                                            ; $50a7: $90

Call_050_50a8:
	sbc [hl]                                         ; $50a8: $9e
	rrca                                             ; $50a9: $0f
	ld b, l                                          ; $50aa: $45
	ld e, b                                          ; $50ab: $58
	reti                                             ; $50ac: $d9


	ld bc, $c046                                     ; $50ad: $01 $46 $c0
	add b                                            ; $50b0: $80
	or c                                             ; $50b1: $b1
	ldh [c], a                                       ; $50b2: $e2
	sub e                                            ; $50b3: $93
	or a                                             ; $50b4: $b7
	rst AddAOntoHL                                          ; $50b5: $ef
	ld c, a                                          ; $50b6: $4f
	xor a                                            ; $50b7: $af
	rst GetHLinHL                                          ; $50b8: $cf
	ld c, [hl]                                       ; $50b9: $4e
	rra                                              ; $50ba: $1f
	ld a, a                                          ; $50bb: $7f
	ld l, a                                          ; $50bc: $6f
	ld e, a                                          ; $50bd: $5f
	cp a                                             ; $50be: $bf
	ld e, a                                          ; $50bf: $5f
	dec a                                            ; $50c0: $3d
	rlca                                             ; $50c1: $07
	jr nz, @+$3a                                     ; $50c2: $20 $38

	ld l, b                                          ; $50c4: $68
	ld b, b                                          ; $50c5: $40
	ld h, b                                          ; $50c6: $60
	ld b, d                                          ; $50c7: $42
	ld [hl], e                                       ; $50c8: $73
	ld hl, sp+$1f                                    ; $50c9: $f8 $1f
	ld b, l                                          ; $50cb: $45
	sub a                                            ; $50cc: $97
	cp a                                             ; $50cd: $bf
	sbc a                                            ; $50ce: $9f
	cp l                                             ; $50cf: $bd
	sbc d                                            ; $50d0: $9a
	rrca                                             ; $50d1: $0f
	cp l                                             ; $50d2: $bd
	and l                                            ; $50d3: $a5
	and h                                            ; $50d4: $a4
	and h                                            ; $50d5: $a4
	ld d, d                                          ; $50d6: $52
	ret nz                                           ; $50d7: $c0

	ld [hl], e                                       ; $50d8: $73
	xor h                                            ; $50d9: $ac
	ld a, a                                          ; $50da: $7f
	ld sp, hl                                        ; $50db: $f9
	ld a, a                                          ; $50dc: $7f
	rlca                                             ; $50dd: $07
	ld [hl], e                                       ; $50de: $73
	and d                                            ; $50df: $a2
	ld [hl], e                                       ; $50e0: $73
	ld sp, hl                                        ; $50e1: $f9
	ld [hl], a                                       ; $50e2: $77
	ld b, c                                          ; $50e3: $41
	ld a, e                                          ; $50e4: $7b
	cp $77                                           ; $50e5: $fe $77
	or $73                                           ; $50e7: $f6 $73
	ld sp, hl                                        ; $50e9: $f9
	ld d, a                                          ; $50ea: $57
	ldh a, [$df]                                     ; $50eb: $f0 $df
	ld d, d                                          ; $50ed: $52
	rst SubAFromDE                                          ; $50ee: $df
	ld [de], a                                       ; $50ef: $12
	rst SubAFromDE                                          ; $50f0: $df
	jp nc, $c076                                     ; $50f1: $d2 $76 $c0

	db $dd                                           ; $50f4: $dd
	ld bc, $c022                                     ; $50f5: $01 $22 $c0
	nop                                              ; $50f8: $00
	ld h, a                                          ; $50f9: $67
	ld b, a                                          ; $50fa: $47
	ldh a, [rWY]                                     ; $50fb: $f0 $4a
	or b                                             ; $50fd: $b0
	jp c, Jump_050_62ff                              ; $50fe: $da $ff $62

	or b                                             ; $5101: $b0
	ret nc                                           ; $5102: $d0

	rst $38                                          ; $5103: $ff
	ld c, d                                          ; $5104: $4a
	or b                                             ; $5105: $b0
	ld a, h                                          ; $5106: $7c
	add c                                            ; $5107: $81
	ld c, [hl]                                       ; $5108: $4e
	or b                                             ; $5109: $b0
	ld a, e                                          ; $510a: $7b
	and b                                            ; $510b: $a0
	ld l, [hl]                                       ; $510c: $6e
	or b                                             ; $510d: $b0
	reti                                             ; $510e: $d9


	rst AddAOntoHL                                          ; $510f: $ef
	ld [bc], a                                       ; $5110: $02
	ret nz                                           ; $5111: $c0

	jp c, $80c0                                      ; $5112: $da $c0 $80

	ei                                               ; $5115: $fb
	inc bc                                           ; $5116: $03
	rla                                              ; $5117: $17
	rla                                              ; $5118: $17
	scf                                              ; $5119: $37
	and a                                            ; $511a: $a7
	ld h, a                                          ; $511b: $67
	ld d, e                                          ; $511c: $53
	dec e                                            ; $511d: $1d
	db $fd                                           ; $511e: $fd
	db $eb                                           ; $511f: $eb
	rst AddAOntoHL                                          ; $5120: $ef
	rst JumpTable                                          ; $5121: $c7
	ld e, a                                          ; $5122: $5f
	dec de                                           ; $5123: $1b
	ld l, c                                          ; $5124: $69
	ld [$0f07], sp                                   ; $5125: $08 $07 $0f
	rra                                              ; $5128: $1f
	ld a, [hl]                                       ; $5129: $7e
	cp d                                             ; $512a: $ba
	ld sp, hl                                        ; $512b: $f9
	cp e                                             ; $512c: $bb
	cp $79                                           ; $512d: $fe $79
	ld [hl], c                                       ; $512f: $71
	ld h, c                                          ; $5130: $61
	db $e3                                           ; $5131: $e3
	rst JumpTable                                          ; $5132: $c7
	add [hl]                                         ; $5133: $86
	sbc [hl]                                         ; $5134: $9e
	call nz, $8071                                   ; $5135: $c4 $71 $80
	ld a, e                                          ; $5138: $7b
	ei                                               ; $5139: $fb
	ld [hl], d                                       ; $513a: $72
	ret nz                                           ; $513b: $c0

	cp $51                                           ; $513c: $fe $51
	add b                                            ; $513e: $80
	sbc h                                            ; $513f: $9c
	xor a                                            ; $5140: $af
	and a                                            ; $5141: $a7
	and e                                            ; $5142: $a3
	nop                                              ; $5143: $00
	ld b, b                                          ; $5144: $40
	dec c                                            ; $5145: $0d
	add b                                            ; $5146: $80
	sbc [hl]                                         ; $5147: $9e
	ret nz                                           ; $5148: $c0

	ld [bc], a                                       ; $5149: $02
	ret nc                                           ; $514a: $d0

	inc bc                                           ; $514b: $03
	ldh a, [rSC]                                     ; $514c: $f0 $02
	or b                                             ; $514e: $b0
	ld [bc], a                                       ; $514f: $02
	or b                                             ; $5150: $b0
	ld d, [hl]                                       ; $5151: $56
	or b                                             ; $5152: $b0
	rst SubAFromDE                                          ; $5153: $df
	rst AddAOntoHL                                          ; $5154: $ef
	ld c, [hl]                                       ; $5155: $4e
	or b                                             ; $5156: $b0
	ld b, $c0                                        ; $5157: $06 $c0
	add h                                            ; $5159: $84
	xor e                                            ; $515a: $ab
	and e                                            ; $515b: $a3
	db $db                                           ; $515c: $db
	ld l, a                                          ; $515d: $6f
	sbc [hl]                                         ; $515e: $9e
	call c, $f6f8                                    ; $515f: $dc $f8 $f6

jr_050_5162:
	ld [hl], a                                       ; $5162: $77
	ld a, c                                          ; $5163: $79
	ld h, a                                          ; $5164: $67
	sbc a                                            ; $5165: $9f
	ld a, a                                          ; $5166: $7f
	rst $38                                          ; $5167: $ff
	cp $f1                                           ; $5168: $fe $f1
	or b                                             ; $516a: $b0
	cp d                                             ; $516b: $ba
	cp $64                                           ; $516c: $fe $64
	rst $38                                          ; $516e: $ff
	ld h, c                                          ; $516f: $61
	pop bc                                           ; $5170: $c1
	jr c, jr_050_5162                                ; $5171: $38 $ef

	rst FarCall                                          ; $5173: $f7
	db $fd                                           ; $5174: $fd
	call c, Call_050_76ff                            ; $5175: $dc $ff $76
	call nz, $c072                                   ; $5178: $c4 $72 $c0
	ld a, [$7fd9]                                    ; $517b: $fa $d9 $7f
	sbc [hl]                                         ; $517e: $9e
	and c                                            ; $517f: $a1
	jp c, Jump_050_57a0                              ; $5180: $da $a0 $57

	ld d, h                                          ; $5183: $54
	ld [hl], a                                       ; $5184: $77
	inc a                                            ; $5185: $3c
	ld [bc], a                                       ; $5186: $02
	ret nz                                           ; $5187: $c0

	jp c, Jump_050_77ff                              ; $5188: $da $ff $77

	ld h, h                                          ; $518b: $64
	ld e, e                                          ; $518c: $5b
	ld b, c                                          ; $518d: $41
	ld l, d                                          ; $518e: $6a
	ldh a, [rSC]                                     ; $518f: $f0 $02
	or b                                             ; $5191: $b0
	inc bc                                           ; $5192: $03
	ldh a, [rSC]                                     ; $5193: $f0 $02
	or b                                             ; $5195: $b0
	ld [bc], a                                       ; $5196: $02
	or b                                             ; $5197: $b0
	dec l                                            ; $5198: $2d
	ld h, b                                          ; $5199: $60
	ld a, b                                          ; $519a: $78
	call nz, $c19a                                   ; $519b: $c4 $9a $c1
	pop hl                                           ; $519e: $e1
	pop af                                           ; $519f: $f1
	ld sp, hl                                        ; $51a0: $f9
	db $fd                                           ; $51a1: $fd
	ld b, [hl]                                       ; $51a2: $46
	ret nz                                           ; $51a3: $c0

	sub l                                            ; $51a4: $95
	xor b                                            ; $51a5: $a8
	ld a, [hl-]                                      ; $51a6: $3a
	ld c, a                                          ; $51a7: $4f
	db $ed                                           ; $51a8: $ed
	rst $38                                          ; $51a9: $ff
	ld d, a                                          ; $51aa: $57
	ld e, a                                          ; $51ab: $5f
	rst SubAFromHL                                          ; $51ac: $d7
	db $e3                                           ; $51ad: $e3
	ei                                               ; $51ae: $fb
	ld [hl], d                                       ; $51af: $72
	add a                                            ; $51b0: $87
	sbc e                                            ; $51b1: $9b
	rst FarCall                                          ; $51b2: $f7
	di                                               ; $51b3: $f3
	pop af                                           ; $51b4: $f1
	push hl                                          ; $51b5: $e5
	call nc, $26ff                                   ; $51b6: $d4 $ff $26
	ret nz                                           ; $51b9: $c0

	reti                                             ; $51ba: $d9


	and b                                            ; $51bb: $a0
	ld h, e                                          ; $51bc: $63
	and b                                            ; $51bd: $a0
	ld c, e                                          ; $51be: $4b
	ld b, b                                          ; $51bf: $40
	ld h, [hl]                                       ; $51c0: $66
	or b                                             ; $51c1: $b0
	ld h, $c0                                        ; $51c2: $26 $c0
	pop de                                           ; $51c4: $d1
	rst $38                                          ; $51c5: $ff
	ld [bc], a                                       ; $51c6: $02
	or b                                             ; $51c7: $b0
	ld [bc], a                                       ; $51c8: $02
	ret nz                                           ; $51c9: $c0

	ld d, e                                          ; $51ca: $53
	ldh a, [$9e]                                     ; $51cb: $f0 $9e
	rst GetHLinHL                                          ; $51cd: $cf
	ld [bc], a                                       ; $51ce: $02
	or b                                             ; $51cf: $b0
	ld d, $b0                                        ; $51d0: $16 $b0
	sbc h                                            ; $51d2: $9c
	db $fc                                           ; $51d3: $fc
	pop af                                           ; $51d4: $f1
	db $e3                                           ; $51d5: $e3
	ld d, d                                          ; $51d6: $52
	or b                                             ; $51d7: $b0
	sbc h                                            ; $51d8: $9c
	rra                                              ; $51d9: $1f
	rst AddAOntoHL                                          ; $51da: $ef
	rst FarCall                                          ; $51db: $f7
	ld l, e                                          ; $51dc: $6b
	pop de                                           ; $51dd: $d1
	sbc [hl]                                         ; $51de: $9e
	sbc a                                            ; $51df: $9f
	ld b, [hl]                                       ; $51e0: $46
	ret nz                                           ; $51e1: $c0

	sbc c                                            ; $51e2: $99
	rst SubAFromDE                                          ; $51e3: $df
	rst $38                                          ; $51e4: $ff
	rst $38                                          ; $51e5: $ff
	db $fd                                           ; $51e6: $fd
	cp $db                                           ; $51e7: $fe $db
	rst JumpTable                                          ; $51e9: $c7
	rst $38                                          ; $51ea: $ff
	ld [bc], a                                       ; $51eb: $02
	ret nz                                           ; $51ec: $c0

	dec hl                                           ; $51ed: $2b
	jr nc, jr_050_5256                               ; $51ee: $30 $66

	or b                                             ; $51f0: $b0
	ld [bc], a                                       ; $51f1: $02
	ret nz                                           ; $51f2: $c0

	ld [bc], a                                       ; $51f3: $02
	or b                                             ; $51f4: $b0
	ld [bc], a                                       ; $51f5: $02
	or b                                             ; $51f6: $b0
	ld d, e                                          ; $51f7: $53
	ldh a, [$9a]                                     ; $51f8: $f0 $9a
	rst JumpTable                                          ; $51fa: $c7
	rst SubAFromBC                                          ; $51fb: $e7
	db $e3                                           ; $51fc: $e3
	di                                               ; $51fd: $f3
	pop af                                           ; $51fe: $f1
	sbc $f9                                          ; $51ff: $de $f9
	ld h, e                                          ; $5201: $63
	ldh [$de], a                                     ; $5202: $e0 $de
	add b                                            ; $5204: $80
	ld d, e                                          ; $5205: $53
	ret nc                                           ; $5206: $d0

	sbc h                                            ; $5207: $9c
	jr jr_050_5216                                   ; $5208: $18 $0c

	ld b, $52                                        ; $520a: $06 $52
	or b                                             ; $520c: $b0
	cp $9b                                           ; $520d: $fe $9b
	rra                                              ; $520f: $1f
	sbc a                                            ; $5210: $9f
	rst SubAFromDE                                          ; $5211: $df
	ld a, a                                          ; $5212: $7f
	ld h, [hl]                                       ; $5213: $66
	or b                                             ; $5214: $b0
	sbc [hl]                                         ; $5215: $9e

jr_050_5216:
	rst JumpTable                                          ; $5216: $c7
	sbc $01                                          ; $5217: $de $01
	sbc [hl]                                         ; $5219: $9e
	rra                                              ; $521a: $1f
	sbc $3e                                          ; $521b: $de $3e
	reti                                             ; $521d: $d9


	rst $38                                          ; $521e: $ff
	sub a                                            ; $521f: $97
	rst SubAFromBC                                          ; $5220: $e7
	rst JumpTable                                          ; $5221: $c7
	adc a                                            ; $5222: $8f
	rra                                              ; $5223: $1f
	ccf                                              ; $5224: $3f
	ccf                                              ; $5225: $3f
	ld a, a                                          ; $5226: $7f
	ld a, a                                          ; $5227: $7f
	ld h, [hl]                                       ; $5228: $66
	or b                                             ; $5229: $b0
	ld b, [hl]                                       ; $522a: $46
	ret nz                                           ; $522b: $c0

	sbc l                                            ; $522c: $9d
	rst $38                                          ; $522d: $ff
	cp a                                             ; $522e: $bf
	call c, Call_050_6cff                            ; $522f: $dc $ff $6c
	ld d, e                                          ; $5232: $53
	sbc $ff                                          ; $5233: $de $ff
	jr nz, jr_050_5237                               ; $5235: $20 $00

jr_050_5237:
	pop bc                                           ; $5237: $c1
	ld d, l                                          ; $5238: $55
	reti                                             ; $5239: $d9


	ld d, l                                          ; $523a: $55
	sbc [hl]                                         ; $523b: $9e
	ld [hl], h                                       ; $523c: $74
	reti                                             ; $523d: $d9


	ld b, h                                          ; $523e: $44
	sbc e                                            ; $523f: $9b
	ld b, a                                          ; $5240: $47
	ld [hl], e                                       ; $5241: $73
	ld b, h                                          ; $5242: $44
	ld b, e                                          ; $5243: $43

jr_050_5244:
	call c, $9a66                                    ; $5244: $dc $66 $9a
	ld h, h                                          ; $5247: $64
	scf                                              ; $5248: $37
	ld [hl], e                                       ; $5249: $73
	inc sp                                           ; $524a: $33
	inc sp                                           ; $524b: $33
	ld h, a                                          ; $524c: $67
	or $9d                                           ; $524d: $f6 $9d
	ld b, h                                          ; $524f: $44
	ld h, e                                          ; $5250: $63
	inc bc                                           ; $5251: $03
	or $77                                           ; $5252: $f6 $77
	or $67                                           ; $5254: $f6 $67

jr_050_5256:
	ld b, $e0                                        ; $5256: $06 $e0
	nop                                              ; $5258: $00
	ldh [$a6], a                                     ; $5259: $e0 $a6
	rst SubAFromDE                                          ; $525b: $df
	ld a, a                                          ; $525c: $7f
	rst SubAFromDE                                          ; $525d: $df
	ld b, c                                          ; $525e: $41
	ldh [$d5], a                                     ; $525f: $e0 $d5

jr_050_5261:
	rst SubAFromDE                                          ; $5261: $df
	db $fc                                           ; $5262: $fc
	rst SubAFromDE                                          ; $5263: $df
	add h                                            ; $5264: $84
	rla                                              ; $5265: $17
	ldh a, [$df]                                     ; $5266: $f0 $df
	ccf                                              ; $5268: $3f
	rst SubAFromDE                                          ; $5269: $df
	jr nz, jr_050_5261                               ; $526a: $20 $f5

	rst SubAFromDE                                          ; $526c: $df
	cp $df                                           ; $526d: $fe $df
	ld [bc], a                                       ; $526f: $02
	push af                                          ; $5270: $f5
	rst SubAFromDE                                          ; $5271: $df
	rra                                              ; $5272: $1f
	sbc l                                            ; $5273: $9d
	db $10                                           ; $5274: $10
	rra                                              ; $5275: $1f
	push af                                          ; $5276: $f5
	db $dd                                           ; $5277: $dd
	add b                                            ; $5278: $80
	ldh [$c5], a                                     ; $5279: $e0 $c5
	rst SubAFromDE                                          ; $527b: $df
	ccf                                              ; $527c: $3f
	rst SubAFromDE                                          ; $527d: $df
	ld hl, $a7e0                                     ; $527e: $21 $e0 $a7
	rst SubAFromDE                                          ; $5281: $df
	db $10                                           ; $5282: $10
	sbc e                                            ; $5283: $9b
	jr c, @+$2a                                      ; $5284: $38 $28

	ld l, h                                          ; $5286: $6c
	ld d, h                                          ; $5287: $54
	di                                               ; $5288: $f3
	rst SubAFromDE                                          ; $5289: $df
	ld bc, $418d                                     ; $528a: $01 $8d $41
	ld a, l                                          ; $528d: $7d
	ld b, b                                          ; $528e: $40
	ld a, h                                          ; $528f: $7c
	ld b, b                                          ; $5290: $40
	ld a, a                                          ; $5291: $7f
	ret nz                                           ; $5292: $c0

	rst $38                                          ; $5293: $ff
	cp [hl]                                          ; $5294: $be
	jp nz, $fe82                                     ; $5295: $c2 $82 $fe

	ld a, [$7d86]                                    ; $5298: $fa $86 $7d
	add l                                            ; $529b: $85
	rst $38                                          ; $529c: $ff
	rst $38                                          ; $529d: $ff
	cp [hl]                                          ; $529e: $be
	nop                                              ; $529f: $00
	rst $38                                          ; $52a0: $ff
	rst $38                                          ; $52a1: $ff
	ld a, e                                          ; $52a2: $7b
	ld sp, hl                                        ; $52a3: $f9
	rst SubAFromDE                                          ; $52a4: $df
	rst $38                                          ; $52a5: $ff
	add h                                            ; $52a6: $84
	ld c, $bb                                        ; $52a7: $0e $bb
	adc d                                            ; $52a9: $8a
	pop hl                                           ; $52aa: $e1
	pop hl                                           ; $52ab: $e1
	ld hl, $2321                                     ; $52ac: $21 $21 $23
	and d                                            ; $52af: $a2

jr_050_52b0:
	ld h, e                                          ; $52b0: $63
	and d                                            ; $52b1: $a2
	rst SubAFromBC                                          ; $52b2: $e7
	inc h                                            ; $52b3: $24
	ld l, h                                          ; $52b4: $6c
	xor e                                            ; $52b5: $ab
	rst $38                                          ; $52b6: $ff
	jr nc, jr_050_52b0                               ; $52b7: $30 $f7

	jr nc, jr_050_5244                               ; $52b9: $30 $89

	ld a, c                                          ; $52bb: $79
	adc c                                            ; $52bc: $89
	ld a, c                                          ; $52bd: $79
	inc de                                           ; $52be: $13
	ldh a, [c]                                       ; $52bf: $f2
	ccf                                              ; $52c0: $3f
	cp $73                                           ; $52c1: $fe $73
	ldh [$8a], a                                     ; $52c3: $e0 $8a
	nop                                              ; $52c5: $00
	pop hl                                           ; $52c6: $e1
	ld e, $88                                        ; $52c7: $1e $88
	ld a, b                                          ; $52c9: $78
	adc b                                            ; $52ca: $88
	ld a, b                                          ; $52cb: $78
	db $10                                           ; $52cc: $10
	ldh a, [$1f]                                     ; $52cd: $f0 $1f
	rst $38                                          ; $52cf: $ff
	pop hl                                           ; $52d0: $e1
	ld bc, $ff01                                     ; $52d1: $01 $01 $ff
	rst $38                                          ; $52d4: $ff
	ld bc, $3fc1                                     ; $52d5: $01 $c1 $3f
	jr nz, jr_050_5309                               ; $52d8: $20 $2f

	ld [hl], a                                       ; $52da: $77
	cp $9b                                           ; $52db: $fe $9b
	ld hl, $2f2f                                     ; $52dd: $21 $2f $2f
	ld hl, $fc6f                                     ; $52e0: $21 $6f $fc
	sbc l                                            ; $52e3: $9d
	ld b, $fa                                        ; $52e4: $06 $fa
	ld [hl], a                                       ; $52e6: $77
	cp $94                                           ; $52e7: $fe $94
	rst JumpTable                                          ; $52e9: $c7
	ei                                               ; $52ea: $fb
	ld a, h                                          ; $52eb: $7c
	ld b, b                                          ; $52ec: $40
	ld b, h                                          ; $52ed: $44
	ld a, l                                          ; $52ee: $7d
	ld [hl], l                                       ; $52ef: $75
	ld c, h                                          ; $52f0: $4c
	adc l                                            ; $52f1: $8d
	db $fc                                           ; $52f2: $fc
	db $10                                           ; $52f3: $10
	ld a, d                                          ; $52f4: $7a
	call z, $fe7f                                    ; $52f5: $cc $7f $fe
	sbc [hl]                                         ; $52f8: $9e
	ldh a, [rPCM34]                                  ; $52f9: $f0 $77
	sbc d                                            ; $52fb: $9a
	ld a, d                                          ; $52fc: $7a

jr_050_52fd:
	db $d3                                           ; $52fd: $d3
	sbc [hl]                                         ; $52fe: $9e
	ret nz                                           ; $52ff: $c0

	ld [hl], d                                       ; $5300: $72
	call z, $80df                                    ; $5301: $cc $df $80
	rst SubAFromDE                                          ; $5304: $df
	ldh [$e0], a                                     ; $5305: $e0 $e0
	ret                                              ; $5307: $c9


	ld a, a                                          ; $5308: $7f

jr_050_5309:
	sbc [hl]                                         ; $5309: $9e
	ld l, a                                          ; $530a: $6f
	cp $67                                           ; $530b: $fe $67
	sub b                                            ; $530d: $90
	ldh [$bd], a                                     ; $530e: $e0 $bd
	rst SubAFromDE                                          ; $5310: $df
	ld bc, $0285                                     ; $5311: $01 $85 $02
	inc bc                                           ; $5314: $03
	dec b                                            ; $5315: $05
	ld b, $0a                                        ; $5316: $06 $0a
	dec c                                            ; $5318: $0d
	rla                                              ; $5319: $17
	jr jr_050_5344                                   ; $531a: $18 $28

	scf                                              ; $531c: $37
	and $9a                                          ; $531d: $e6 $9a
	jp $81bd                                         ; $531f: $c3 $bd $81


	ld a, [hl]                                       ; $5322: $7e
	inc bc                                           ; $5323: $03
	db $fd                                           ; $5324: $fd
	cp $02                                           ; $5325: $fe $02
	inc c                                            ; $5327: $0c
	db $f4                                           ; $5328: $f4
	ld hl, sp+$08                                    ; $5329: $f8 $08
	jr nc, jr_050_52fd                               ; $532b: $30 $d0

	db $dd                                           ; $532d: $dd
	ld bc, $e27f                                     ; $532e: $01 $7f $e2
	ld [hl], a                                       ; $5331: $77
	ldh [$7f], a                                     ; $5332: $e0 $7f
	cp $89                                           ; $5334: $fe $89
	dec bc                                           ; $5336: $0b
	inc c                                            ; $5337: $0c
	dec bc                                           ; $5338: $0b
	inc c                                            ; $5339: $0c
	ld [hl], h                                       ; $533a: $74

jr_050_533b:
	adc h                                            ; $533b: $8c
	db $f4                                           ; $533c: $f4
	inc c                                            ; $533d: $0c
	ld hl, sp+$08                                    ; $533e: $f8 $08
	add sp, $18                                      ; $5340: $e8 $18
	add sp, $18                                      ; $5342: $e8 $18

jr_050_5344:
	ldh a, [rAUD1SWEEP]                              ; $5344: $f0 $10
	db $d3                                           ; $5346: $d3
	inc sp                                           ; $5347: $33
	jp nc, $bb32                                     ; $5348: $d2 $32 $bb

	adc d                                            ; $534b: $8a
	ld e, a                                          ; $534c: $5f
	cp $93                                           ; $534d: $fe $93
	cp a                                             ; $534f: $bf
	adc [hl]                                         ; $5350: $8e
	ccf                                              ; $5351: $3f
	nop                                              ; $5352: $00
	db $eb                                           ; $5353: $eb
	jr z, jr_050_533b                                ; $5354: $28 $e5

	inc h                                            ; $5356: $24
	db $e3                                           ; $5357: $e3
	inc hl                                           ; $5358: $23
	pop hl                                           ; $5359: $e1
	ld hl, $fe77                                     ; $535a: $21 $77 $fe
	sub [hl]                                         ; $535d: $96
	ld sp, hl                                        ; $535e: $f9
	add hl, sp                                       ; $535f: $39
	ld sp, hl                                        ; $5360: $f9
	add hl, bc                                       ; $5361: $09
	rst $38                                          ; $5362: $ff
	ld e, $f3                                        ; $5363: $1e $f3
	ld [de], a                                       ; $5365: $12
	ld [hl], e                                       ; $5366: $73
	ld a, e                                          ; $5367: $7b
	cp $9c                                           ; $5368: $fe $9c
	ld a, a                                          ; $536a: $7f
	ld e, $7f                                        ; $536b: $1e $7f
	cp [hl]                                          ; $536d: $be
	ld a, a                                          ; $536e: $7f
	ld a, a                                          ; $536f: $7f
	rst $38                                          ; $5370: $ff
	sbc h                                            ; $5371: $9c
	ccf                                              ; $5372: $3f
	ldh [rAUD4LEN], a                                ; $5373: $e0 $20
	ld [hl], a                                       ; $5375: $77
	cp $9b                                           ; $5376: $fe $9b
	cp $3e                                           ; $5378: $fe $3e
	cp $02                                           ; $537a: $fe $02
	ld [hl], a                                       ; $537c: $77
	cp $73                                           ; $537d: $fe $73
	inc sp                                           ; $537f: $33
	ld l, [hl]                                       ; $5380: $6e
	cp e                                             ; $5381: $bb
	ld [hl], e                                       ; $5382: $73
	cp $99                                           ; $5383: $fe $99
	ld l, l                                          ; $5385: $6d
	sbc h                                            ; $5386: $9c
	db $ed                                           ; $5387: $ed
	inc e                                            ; $5388: $1c
	push de                                          ; $5389: $d5
	inc [hl]                                         ; $538a: $34
	ld e, a                                          ; $538b: $5f
	cp $9d                                           ; $538c: $fe $9d
	ret nz                                           ; $538e: $c0

	ccf                                              ; $538f: $3f
	ld h, a                                          ; $5390: $67
	adc $6f                                          ; $5391: $ce $6f
	cp $9e                                           ; $5393: $fe $9e
	nop                                              ; $5395: $00
	sbc $e0                                          ; $5396: $de $e0
	ldh [$c5], a                                     ; $5398: $e0 $c5
	ld l, d                                          ; $539a: $6a
	pop bc                                           ; $539b: $c1
	ld h, e                                          ; $539c: $63
	cp $e0                                           ; $539d: $fe $e0
	call $ee76                                       ; $539f: $cd $76 $ee
	adc a                                            ; $53a2: $8f
	inc b                                            ; $53a3: $04
	ld b, $09                                        ; $53a4: $06 $09
	inc c                                            ; $53a6: $0c
	inc de                                           ; $53a7: $13
	jr jr_050_53d1                                   ; $53a8: $18 $27

	jr nc, @+$51                                     ; $53aa: $30 $4f

	ld h, b                                          ; $53ac: $60
	sbc a                                            ; $53ad: $9f
	ret nz                                           ; $53ae: $c0

	ccf                                              ; $53af: $3f
	add b                                            ; $53b0: $80
	ld a, a                                          ; $53b1: $7f
	ld bc, $326f                                     ; $53b2: $01 $6f $32
	ld a, a                                          ; $53b5: $7f
	cp $7f                                           ; $53b6: $fe $7f
	ld e, [hl]                                       ; $53b8: $5e
	sbc l                                            ; $53b9: $9d
	ret nz                                           ; $53ba: $c0

	ld b, b                                          ; $53bb: $40
	ld d, h                                          ; $53bc: $54
	ld [$ac7e], a                                    ; $53bd: $ea $7e $ac
	ld a, a                                          ; $53c0: $7f
	cp $91                                           ; $53c1: $fe $91
	cpl                                              ; $53c3: $2f
	jr nc, jr_050_5445                               ; $53c4: $30 $7f

	ld h, b                                          ; $53c6: $60
	ret nz                                           ; $53c7: $c0

	ret nz                                           ; $53c8: $c0

	rst $38                                          ; $53c9: $ff
	add b                                            ; $53ca: $80
	nop                                              ; $53cb: $00
	add b                                            ; $53cc: $80
	cp a                                             ; $53cd: $bf
	jp nz, $22e3                                     ; $53ce: $c2 $e3 $22

jr_050_53d1:
	ld [hl], a                                       ; $53d1: $77
	cp $9e                                           ; $53d2: $fe $9e
	ldh [c], a                                       ; $53d4: $e2
	sbc $23                                          ; $53d5: $de $23
	ld a, a                                          ; $53d7: $7f
	sub $df                                          ; $53d8: $d6 $df
	jr nz, jr_050_545b                               ; $53da: $20 $7f

	db $fc                                           ; $53dc: $fc
	ld a, c                                          ; $53dd: $79
	add l                                            ; $53de: $85
	cp a                                             ; $53df: $bf
	rst $38                                          ; $53e0: $ff
	ld [hl], c                                       ; $53e1: $71
	sbc $8e                                          ; $53e2: $de $8e
	sbc [hl]                                         ; $53e4: $9e
	ei                                               ; $53e5: $fb
	sbc $8a                                          ; $53e6: $de $8a
	ld a, a                                          ; $53e8: $7f
	db $fc                                           ; $53e9: $fc
	ld a, [hl]                                       ; $53ea: $7e
	adc $77                                          ; $53eb: $ce $77
	cp $9e                                           ; $53ed: $fe $9e
	ret                                              ; $53ef: $c9


	sbc $39                                          ; $53f0: $de $39
	ld a, c                                          ; $53f2: $79
	ld [hl], a                                       ; $53f3: $77
	ld a, d                                          ; $53f4: $7a
	cp h                                             ; $53f5: $bc
	sbc e                                            ; $53f6: $9b

jr_050_53f7:
	ld h, c                                          ; $53f7: $61
	ld e, $7f                                        ; $53f8: $1e $7f
	ld e, $76                                        ; $53fa: $1e $76
	ret nz                                           ; $53fc: $c0

	rst SubAFromDE                                          ; $53fd: $df
	ld [de], a                                       ; $53fe: $12
	ld a, a                                          ; $53ff: $7f
	ld hl, sp-$01                                    ; $5400: $f8 $ff
	ld a, [hl]                                       ; $5402: $7e
	ret nz                                           ; $5403: $c0

	sbc e                                            ; $5404: $9b
	jp nz, $fe3e                                     ; $5405: $c2 $3e $fe

	ld a, $76                                        ; $5408: $3e $76
	ld hl, sp-$21                                    ; $540a: $f8 $df
	jr nz, jr_050_548d                               ; $540c: $20 $7f

	ld hl, sp-$21                                    ; $540e: $f8 $df
	ld [bc], a                                       ; $5410: $02
	ld a, d                                          ; $5411: $7a
	ret nz                                           ; $5412: $c0

	ld l, d                                          ; $5413: $6a
	ret z                                            ; $5414: $c8

	rst SubAFromDE                                          ; $5415: $df
	jr nz, @+$7b                                     ; $5416: $20 $79

	ldh a, [c]                                       ; $5418: $f2
	ld a, e                                          ; $5419: $7b
	jr nc, jr_050_548a                               ; $541a: $30 $6e

	jp z, $d495                                      ; $541c: $ca $95 $d4

	dec [hl]                                         ; $541f: $35
	rla                                              ; $5420: $17
	scf                                              ; $5421: $37
	ret nc                                           ; $5422: $d0

	jr nc, @+$12                                     ; $5423: $30 $10

	jr nc, jr_050_53f7                               ; $5425: $30 $d0

	jr nc, jr_050_5497                               ; $5427: $30 $6e

	jp z, $209d                                      ; $5429: $ca $9d $20

	rst AddAOntoHL                                          ; $542c: $ef
	ld c, d                                          ; $542d: $4a
	jp z, $8e9e                                      ; $542e: $ca $9e $8e

	ldh [$c9], a                                     ; $5431: $e0 $c9
	ld l, [hl]                                       ; $5433: $6e
	jp z, $9677                                      ; $5434: $ca $77 $96

	ld l, a                                          ; $5437: $6f
	db $fc                                           ; $5438: $fc
	ldh [$dd], a                                     ; $5439: $e0 $dd
	ld l, [hl]                                       ; $543b: $6e
	ret nc                                           ; $543c: $d0

	ld a, l                                          ; $543d: $7d
	call nz, $109e                                   ; $543e: $c4 $9e $10

jr_050_5441:
	ld a, d                                          ; $5441: $7a
	or $6a                                           ; $5442: $f6 $6a
	ret nc                                           ; $5444: $d0

jr_050_5445:
	ld a, e                                          ; $5445: $7b
	db $ec                                           ; $5446: $ec
	ld a, a                                          ; $5447: $7f
	ld b, h                                          ; $5448: $44
	rst SubAFromDE                                          ; $5449: $df
	inc b                                            ; $544a: $04
	ld a, l                                          ; $544b: $7d
	or [hl]                                          ; $544c: $b6
	ld l, [hl]                                       ; $544d: $6e
	jp z, $be9e                                      ; $544e: $ca $9e $be

	sbc $82                                          ; $5451: $de $82
	ld l, a                                          ; $5453: $6f
	db $fc                                           ; $5454: $fc
	pop af                                           ; $5455: $f1
	sbc c                                            ; $5456: $99
	ld b, [hl]                                       ; $5457: $46
	ld l, [hl]                                       ; $5458: $6e
	ld a, [hl+]                                      ; $5459: $2a
	ld a, [hl-]                                      ; $545a: $3a

jr_050_545b:
	ld [de], a                                       ; $545b: $12
	ld [de], a                                       ; $545c: $12
	rst SubAFromHL                                          ; $545d: $d7
	ld [bc], a                                       ; $545e: $02
	reti                                             ; $545f: $d9


	jr nz, jr_050_5441                               ; $5460: $20 $df

	inc hl                                           ; $5462: $23
	rst SubAFromDE                                          ; $5463: $df
	ld [hl+], a                                      ; $5464: $22
	sbc [hl]                                         ; $5465: $9e
	ldh [c], a                                       ; $5466: $e2
	ld a, e                                          ; $5467: $7b
	db $fd                                           ; $5468: $fd
	reti                                             ; $5469: $d9


	adc d                                            ; $546a: $8a
	rst SubAFromDE                                          ; $546b: $df
	adc [hl]                                         ; $546c: $8e
	ld [hl], h                                       ; $546d: $74
	add hl, sp                                       ; $546e: $39
	ld a, a                                          ; $546f: $7f
	db $fd                                           ; $5470: $fd
	push de                                          ; $5471: $d5
	ld hl, $be7a                                     ; $5472: $21 $7a $be
	sbc l                                            ; $5475: $9d
	pop hl                                           ; $5476: $e1
	nop                                              ; $5477: $00
	cp a                                             ; $5478: $bf
	ld e, $1e                                        ; $5479: $1e $1e
	sbc [hl]                                         ; $547b: $9e
	ld e, $db                                        ; $547c: $1e $db
	ld [de], a                                       ; $547e: $12
	ld a, l                                          ; $547f: $7d
	ld [hl], h                                       ; $5480: $74
	ld a, a                                          ; $5481: $7f
	add a                                            ; $5482: $87
	rst SubAFromDE                                          ; $5483: $df
	ld [bc], a                                       ; $5484: $02
	ld a, [hl]                                       ; $5485: $7e
	ret                                              ; $5486: $c9


	rst SubAFromDE                                          ; $5487: $df
	ld a, $db                                        ; $5488: $3e $db

jr_050_548a:
	jr nz, jr_050_5509                               ; $548a: $20 $7d

	and [hl]                                         ; $548c: $a6

jr_050_548d:
	ld a, h                                          ; $548d: $7c
	inc a                                            ; $548e: $3c
	push de                                          ; $548f: $d5
	ld hl, $b074                                     ; $5490: $21 $74 $b0
	ld a, [hl]                                       ; $5493: $7e
	call z, $8b91                                    ; $5494: $cc $91 $8b

jr_050_5497:
	dec de                                           ; $5497: $1b
	dec bc                                           ; $5498: $0b
	sbc d                                            ; $5499: $9a
	sbc d                                            ; $549a: $9a
	adc d                                            ; $549b: $8a
	jp c, $9a8a                                      ; $549c: $da $8a $9a

	jp z, Jump_050_4a7b                              ; $549f: $ca $7b $4a

	ld b, [hl]                                       ; $54a2: $46
	ld a, a                                          ; $54a3: $7f
	ld a, e                                          ; $54a4: $7b
	xor l                                            ; $54a5: $ad
	sbc l                                            ; $54a6: $9d
	rst $38                                          ; $54a7: $ff
	ldh a, [$bc]                                     ; $54a8: $f0 $bc
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	db $fc                                           ; $54ad: $fc
	nop                                              ; $54ae: $00
	ld [hl], a                                       ; $54af: $77
	sbc l                                            ; $54b0: $9d
	sbc [hl]                                         ; $54b1: $9e
	rst $38                                          ; $54b2: $ff
	ld h, [hl]                                       ; $54b3: $66
	or l                                             ; $54b4: $b5
	ld a, e                                          ; $54b5: $7b
	ld hl, sp+$7b                                    ; $54b6: $f8 $7b
	ldh a, [$df]                                     ; $54b8: $f0 $df
	ret nz                                           ; $54ba: $c0

	sub $40                                          ; $54bb: $d6 $40
	sbc [hl]                                         ; $54bd: $9e
	ret nz                                           ; $54be: $c0

	nop                                              ; $54bf: $00
	ld b, b                                          ; $54c0: $40
	ld c, e                                          ; $54c1: $4b
	sub b                                            ; $54c2: $90
	or e                                             ; $54c3: $b3
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	ld [$6494], sp                                   ; $54c7: $08 $94 $64
	dec sp                                           ; $54ca: $3b
	ret                                              ; $54cb: $c9


	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	nop                                              ; $54d1: $00
	rst SubAFromDE                                          ; $54d2: $df
	ld a, h                                          ; $54d3: $7c
	rst SubAFromDE                                          ; $54d4: $df
	ld b, e                                          ; $54d5: $43
	add a                                            ; $54d6: $87
	ld b, b                                          ; $54d7: $40
	ld h, b                                          ; $54d8: $60
	add b                                            ; $54d9: $80
	ret nz                                           ; $54da: $c0

	ld h, b                                          ; $54db: $60
	ld b, b                                          ; $54dc: $40
	ld b, c                                          ; $54dd: $41
	ld h, b                                          ; $54de: $60
	inc sp                                           ; $54df: $33
	ld hl, $322e                                     ; $54e0: $21 $2e $32
	inc d                                            ; $54e3: $14
	inc e                                            ; $54e4: $1c
	sbc b                                            ; $54e5: $98
	sbc b                                            ; $54e6: $98
	db $10                                           ; $54e7: $10
	db $10                                           ; $54e8: $10
	jr nz, jr_050_550b                               ; $54e9: $20 $20

	ld b, b                                          ; $54eb: $40
	ld b, b                                          ; $54ec: $40
	add b                                            ; $54ed: $80
	add h                                            ; $54ee: $84
	cp l                                             ; $54ef: $bd
	ld c, $3b                                        ; $54f0: $0e $3b
	ld d, c                                          ; $54f2: $51
	ld a, h                                          ; $54f3: $7c
	push de                                          ; $54f4: $d5
	add d                                            ; $54f5: $82
	ld a, d                                          ; $54f6: $7a
	cp [hl]                                          ; $54f7: $be
	sbc [hl]                                         ; $54f8: $9e
	cp [hl]                                          ; $54f9: $be
	pop af                                           ; $54fa: $f1
	sbc $02                                          ; $54fb: $de $02
	sub d                                            ; $54fd: $92
	add d                                            ; $54fe: $82
	ld [bc], a                                       ; $54ff: $02
	ld e, d                                          ; $5500: $5a
	ld [bc], a                                       ; $5501: $02
	ld l, $02                                        ; $5502: $2e $02
	ld h, [hl]                                       ; $5504: $66
	ld [bc], a                                       ; $5505: $02
	or d                                             ; $5506: $b2
	ld [bc], a                                       ; $5507: $02
	ld a, [de]                                       ; $5508: $1a

jr_050_5509:
	ld [bc], a                                       ; $5509: $02
	halt                                             ; $550a: $76

jr_050_550b:
	ld a, d                                          ; $550b: $7a
	bit 7, l                                         ; $550c: $cb $7d
	add e                                            ; $550e: $83
	sbc h                                            ; $550f: $9c
	db $e3                                           ; $5510: $e3
	ld hl, $76e1                                     ; $5511: $21 $e1 $76
	db $e4                                           ; $5514: $e4
	ld [hl], d                                       ; $5515: $72
	ldh [$79], a                                     ; $5516: $e0 $79
	add c                                            ; $5518: $81
	sbc c                                            ; $5519: $99
	rrca                                             ; $551a: $0f
	rst $38                                          ; $551b: $ff
	ld [$f8f8], sp                                   ; $551c: $08 $f8 $f8
	ld [$fc6f], sp                                   ; $551f: $08 $6f $fc
	ld [hl], h                                       ; $5522: $74
	ld b, a                                          ; $5523: $47
	rst SubAFromDE                                          ; $5524: $df
	pop hl                                           ; $5525: $e1
	db $dd                                           ; $5526: $dd
	ld bc, $7efb                                     ; $5527: $01 $fb $7e
	adc $7f                                          ; $552a: $ce $7f
	cp $96                                           ; $552c: $fe $96
	adc a                                            ; $552e: $8f
	ld a, a                                          ; $552f: $7f
	adc b                                            ; $5530: $88
	ld a, b                                          ; $5531: $78
	rst $38                                          ; $5532: $ff
	rst $38                                          ; $5533: $ff
	ld [$0b08], sp                                   ; $5534: $08 $08 $0b
	ld a, e                                          ; $5537: $7b
	cp $7e                                           ; $5538: $fe $7e
	adc $7f                                          ; $553a: $ce $7f
	cp $df                                           ; $553c: $fe $df
	rst $38                                          ; $553e: $ff
	ld a, e                                          ; $553f: $7b
	inc b                                            ; $5540: $04
	ld a, c                                          ; $5541: $79
	xor e                                            ; $5542: $ab
	ld [hl], l                                       ; $5543: $75
	and [hl]                                         ; $5544: $a6
	ld h, h                                          ; $5545: $64
	or a                                             ; $5546: $b7
	ld [hl], a                                       ; $5547: $77
	inc [hl]                                         ; $5548: $34
	ld a, a                                          ; $5549: $7f
	db $fc                                           ; $554a: $fc
	ld a, l                                          ; $554b: $7d
	ld a, e                                          ; $554c: $7b
	sbc e                                            ; $554d: $9b
	ld b, a                                          ; $554e: $47
	ld a, a                                          ; $554f: $7f
	ld b, h                                          ; $5550: $44
	ld a, h                                          ; $5551: $7c
	ld [hl], a                                       ; $5552: $77
	cp $93                                           ; $5553: $fe $93
	ld a, [hl]                                       ; $5555: $7e
	ld b, d                                          ; $5556: $42
	ld b, d                                          ; $5557: $42
	ld a, [hl]                                       ; $5558: $7e
	cp $c2                                           ; $5559: $fe $c2
	ld [bc], a                                       ; $555b: $02
	cp $87                                           ; $555c: $fe $87
	rst $38                                          ; $555e: $ff
	add l                                            ; $555f: $85
	db $fd                                           ; $5560: $fd
	ld [hl], a                                       ; $5561: $77
	cp $7f                                           ; $5562: $fe $7f
	db $fd                                           ; $5564: $fd
	ld a, a                                          ; $5565: $7f
	db $fc                                           ; $5566: $fc
	sbc [hl]                                         ; $5567: $9e
	push hl                                          ; $5568: $e5
	sbc $85                                          ; $5569: $de $85
	ld [hl], a                                       ; $556b: $77
	sub h                                            ; $556c: $94
	ld [hl], a                                       ; $556d: $77
	cp $9e                                           ; $556e: $fe $9e
	adc b                                            ; $5570: $88
	jp c, $df08                                      ; $5571: $da $08 $df

	ret nz                                           ; $5574: $c0

	ldh [$d3], a                                     ; $5575: $e0 $d3
	ld d, h                                          ; $5577: $54
	ld b, e                                          ; $5578: $43
	ld [hl], d                                       ; $5579: $72
	ret nz                                           ; $557a: $c0

	sbc [hl]                                         ; $557b: $9e
	dec a                                            ; $557c: $3d
	cp [hl]                                          ; $557d: $be
	ld d, l                                          ; $557e: $55
	ld h, h                                          ; $557f: $64
	cp e                                             ; $5580: $bb
	add e                                            ; $5581: $83
	ld bc, $01c3                                     ; $5582: $01 $c3 $01
	ld h, l                                          ; $5585: $65
	ld [bc], a                                       ; $5586: $02
	sbc [hl]                                         ; $5587: $9e
	ld c, $da                                        ; $5588: $0e $da
	ld b, b                                          ; $558a: $40
	ld a, h                                          ; $558b: $7c
	ld b, b                                          ; $558c: $40
	ld a, a                                          ; $558d: $7f
	add c                                            ; $558e: $81
	cp a                                             ; $558f: $bf
	add c                                            ; $5590: $81
	cp a                                             ; $5591: $bf
	ld a, [hl]                                       ; $5592: $7e
	ld [bc], a                                       ; $5593: $02
	ld [bc], a                                       ; $5594: $02
	ld a, [hl]                                       ; $5595: $7e
	db $fc                                           ; $5596: $fc
	inc b                                            ; $5597: $04
	inc b                                            ; $5598: $04
	db $fc                                           ; $5599: $fc
	add b                                            ; $559a: $80
	add c                                            ; $559b: $81

Call_050_559c:
	add b                                            ; $559c: $80
	add d                                            ; $559d: $82
	or e                                             ; $559e: $b3
	inc b                                            ; $559f: $04
	inc c                                            ; $55a0: $0c
	add hl, bc                                       ; $55a1: $09
	add hl, de                                       ; $55a2: $19
	dec h                                            ; $55a3: $25
	ld b, e                                          ; $55a4: $43
	ld l, a                                          ; $55a5: $6f
	jp c, $e2c3                                      ; $55a6: $da $c3 $e2

	or l                                             ; $55a9: $b5
	dec de                                           ; $55aa: $1b
	ld c, $84                                        ; $55ab: $0e $84
	ld a, d                                          ; $55ad: $7a
	bit 6, e                                         ; $55ae: $cb $73
	cp $6b                                           ; $55b0: $fe $6b
	ld sp, hl                                        ; $55b2: $f9
	ld e, l                                          ; $55b3: $5d
	add b                                            ; $55b4: $80
	sbc [hl]                                         ; $55b5: $9e
	dec b                                            ; $55b6: $05
	cp [hl]                                          ; $55b7: $be
	ld e, d                                          ; $55b8: $5a
	xor e                                            ; $55b9: $ab
	sub d                                            ; $55ba: $92
	sub a                                            ; $55bb: $97
	ld [bc], a                                       ; $55bc: $02
	sub [hl]                                         ; $55bd: $96
	ld [bc], a                                       ; $55be: $02
	and [hl]                                         ; $55bf: $a6
	ld [bc], a                                       ; $55c0: $02
	ld c, d                                          ; $55c1: $4a
	ld [bc], a                                       ; $55c2: $02
	sub d                                            ; $55c3: $92
	ld a, d                                          ; $55c4: $7a
	ret nz                                           ; $55c5: $c0

	sbc d                                            ; $55c6: $9a
	adc $02                                          ; $55c7: $ce $02
	ld a, d                                          ; $55c9: $7a
	ld [bc], a                                       ; $55ca: $02
	add [hl]                                         ; $55cb: $86
	ld a, d                                          ; $55cc: $7a
	pop hl                                           ; $55cd: $e1
	ld d, e                                          ; $55ce: $53
	cp $73                                           ; $55cf: $fe $73
	inc sp                                           ; $55d1: $33
	ld e, e                                          ; $55d2: $5b
	cp $df                                           ; $55d3: $fe $df
	rrca                                             ; $55d5: $0f
	ld l, [hl]                                       ; $55d6: $6e
	ret c                                            ; $55d7: $d8

	ld a, a                                          ; $55d8: $7f
	cp $7f                                           ; $55d9: $fe $7f
	db $fd                                           ; $55db: $fd
	rst SubAFromDE                                          ; $55dc: $df
	rrca                                             ; $55dd: $0f
	rst $38                                          ; $55de: $ff
	sbc h                                            ; $55df: $9c
	ei                                               ; $55e0: $fb
	ld hl, sp+$03                                    ; $55e1: $f8 $03
	cp l                                             ; $55e3: $bd
	rst $38                                          ; $55e4: $ff
	rst $38                                          ; $55e5: $ff
	rst $38                                          ; $55e6: $ff
	rrca                                             ; $55e7: $0f
	sub a                                            ; $55e8: $97
	ldh a, [rIE]                                     ; $55e9: $f0 $ff
	ldh a, [$1f]                                     ; $55eb: $f0 $1f
	db $10                                           ; $55ed: $10
	rst $38                                          ; $55ee: $ff
	ccf                                              ; $55ef: $3f
	ret nz                                           ; $55f0: $c0

	cp l                                             ; $55f1: $bd
	rst $38                                          ; $55f2: $ff
	rst $38                                          ; $55f3: $ff
	rst $38                                          ; $55f4: $ff
	ldh [$98], a                                     ; $55f5: $e0 $98
	rra                                              ; $55f7: $1f
	rst $38                                          ; $55f8: $ff
	rra                                              ; $55f9: $1f
	ldh a, [rAUD1SWEEP]                              ; $55fa: $f0 $10
	xor a                                            ; $55fc: $af
	and b                                            ; $55fd: $a0
	ld [hl], e                                       ; $55fe: $73
	cp $9e                                           ; $55ff: $fe $9e
	and c                                            ; $5601: $a1
	ld l, a                                          ; $5602: $6f
	cp $7f                                           ; $5603: $fe $7f
	ld l, $6c                                        ; $5605: $2e $6c
	ldh a, [$7f]                                     ; $5607: $f0 $7f
	cp $9b                                           ; $5609: $fe $9b
	db $fc                                           ; $560b: $fc
	add h                                            ; $560c: $84
	ld a, b                                          ; $560d: $78
	ld a, b                                          ; $560e: $78
	db $fd                                           ; $560f: $fd
	db $dd                                           ; $5610: $dd
	add l                                            ; $5611: $85
	reti                                             ; $5612: $d9


	add h                                            ; $5613: $84
	ld [hl], c                                       ; $5614: $71
	rst SubAFromHL                                          ; $5615: $d7
	sbc $08                                          ; $5616: $de $08
	ldh [$c5], a                                     ; $5618: $e0 $c5
	ld a, a                                          ; $561a: $7f
	sbc [hl]                                         ; $561b: $9e
	sbc [hl]                                         ; $561c: $9e
	inc hl                                           ; $561d: $23
	call nc, $9421                                   ; $561e: $d4 $21 $94
	dec [hl]                                         ; $5621: $35
	inc [hl]                                         ; $5622: $34
	dec c                                            ; $5623: $0d
	inc c                                            ; $5624: $0c
	ld l, e                                          ; $5625: $6b
	ld l, b                                          ; $5626: $68
	dec sp                                           ; $5627: $3b
	jr c, jr_050_5641                                ; $5628: $38 $17

	db $10                                           ; $562a: $10
	cpl                                              ; $562b: $2f
	ld a, c                                          ; $562c: $79
	xor b                                            ; $562d: $a8
	sbc h                                            ; $562e: $9c
	cp a                                             ; $562f: $bf
	add b                                            ; $5630: $80
	db $fc                                           ; $5631: $fc
	ld a, b                                          ; $5632: $78
	ld l, h                                          ; $5633: $6c
	ld a, a                                          ; $5634: $7f
	cp $7f                                           ; $5635: $fe $7f
	ld l, b                                          ; $5637: $68
	ld a, a                                          ; $5638: $7f
	cp $7e                                           ; $5639: $fe $7e
	inc h                                            ; $563b: $24
	rst SubAFromDE                                          ; $563c: $df
	daa                                              ; $563d: $27
	sbc l                                            ; $563e: $9d
	ld hl, sp+$78                                    ; $563f: $f8 $78

jr_050_5641:
	cp h                                             ; $5641: $bc
	ldh [c], a                                       ; $5642: $e2
	inc e                                            ; $5643: $1c
	inc b                                            ; $5644: $04
	rrca                                             ; $5645: $0f
	ld bc, $f1df                                     ; $5646: $01 $df $f1
	sbc e                                            ; $5649: $9b
	daa                                              ; $564a: $27
	ld h, $40                                        ; $564b: $26 $40
	ld b, b                                          ; $564d: $40
	cp h                                             ; $564e: $bc
	add [hl]                                         ; $564f: $86
	db $e3                                           ; $5650: $e3
	ld a, [hl]                                       ; $5651: $7e
	ldh [$f9], a                                     ; $5652: $e0 $f9
	sbc c                                            ; $5654: $99
	cp [hl]                                          ; $5655: $be
	ld h, e                                          ; $5656: $63
	rst $38                                          ; $5657: $ff

jr_050_5658:
	reti                                             ; $5658: $d9


	rst FarCall                                          ; $5659: $f7
	sub h                                            ; $565a: $94
	ld h, [hl]                                       ; $565b: $66
	ret z                                            ; $565c: $c8

	sbc l                                            ; $565d: $9d
	cp [hl]                                          ; $565e: $be
	add e                                            ; $565f: $83
	ld [hl], a                                       ; $5660: $77
	cp $9d                                           ; $5661: $fe $9d
	add d                                            ; $5663: $82
	add e                                            ; $5664: $83
	cp c                                             ; $5665: $b9
	sub d                                            ; $5666: $92
	sbc c                                            ; $5667: $99
	adc $d2                                          ; $5668: $ce $d2
	inc sp                                           ; $566a: $33
	ld [$d0a7], sp                                   ; $566b: $08 $a7 $d0
	ld a, [hl]                                       ; $566e: $7e
	jp z, $0e95                                      ; $566f: $ca $95 $0e

	ld a, d                                          ; $5672: $7a
	ld c, $12                                        ; $5673: $0e $12
	ld b, $7e                                        ; $5675: $06 $7e
	ld [bc], a                                       ; $5677: $02
	adc [hl]                                         ; $5678: $8e
	ld [bc], a                                       ; $5679: $02
	halt                                             ; $567a: $76
	ld a, d                                          ; $567b: $7a
	or h                                             ; $567c: $b4
	sbc [hl]                                         ; $567d: $9e
	ld [$ca6e], a                                    ; $567e: $ea $6e $ca
	sub l                                            ; $5681: $95
	ld [hl+], a                                      ; $5682: $22
	inc hl                                           ; $5683: $23
	db $e3                                           ; $5684: $e3
	ld [hl+], a                                      ; $5685: $22
	inc h                                            ; $5686: $24
	ld h, $e7                                        ; $5687: $26 $e7
	inc h                                            ; $5689: $24
	inc l                                            ; $568a: $2c
	jr z, jr_050_56fb                                ; $568b: $28 $6e

	jp z, $08df                                      ; $568d: $ca $df $08

	sub a                                            ; $5690: $97
	add sp, $18                                      ; $5691: $e8 $18
	db $10                                           ; $5693: $10
	db $10                                           ; $5694: $10
	ret nc                                           ; $5695: $d0

	jr nc, jr_050_56b8                               ; $5696: $30 $20

	jr nz, jr_050_5658                               ; $5698: $20 $be

jr_050_569a:
	inc e                                            ; $569a: $1c
	ld [hl+], a                                      ; $569b: $22
	scf                                              ; $569c: $37
	add e                                            ; $569d: $83
	ld bc, $027d                                     ; $569e: $01 $7d $02
	ldh [c], a                                       ; $56a1: $e2
	inc b                                            ; $56a2: $04
	cp h                                             ; $56a3: $bc
	ld [$10c8], sp                                   ; $56a4: $08 $c8 $10
	ld [hl], b                                       ; $56a7: $70
	scf                                              ; $56a8: $37
	jr nz, jr_050_569a                               ; $56a9: $20 $ef

	ret nz                                           ; $56ab: $c0

	rst SubAFromDE                                          ; $56ac: $df
	add b                                            ; $56ad: $80
	cp a                                             ; $56ae: $bf
	nop                                              ; $56af: $00
	nop                                              ; $56b0: $00
	inc b                                            ; $56b1: $04
	rst $38                                          ; $56b2: $ff
	inc b                                            ; $56b3: $04
	inc c                                            ; $56b4: $0c
	inc c                                            ; $56b5: $0c
	rst FarCall                                          ; $56b6: $f7
	inc d                                            ; $56b7: $14

jr_050_56b8:
	ldh a, [rAUD1SWEEP]                              ; $56b8: $f0 $10
	ld [hl], a                                       ; $56ba: $77
	ret nc                                           ; $56bb: $d0

	ld a, a                                          ; $56bc: $7f
	ld e, d                                          ; $56bd: $5a
	sub a                                            ; $56be: $97
	ld [bc], a                                       ; $56bf: $02
	ld [hl+], a                                      ; $56c0: $22
	db $fd                                           ; $56c1: $fd

jr_050_56c2:
	ld hl, $3020                                     ; $56c2: $21 $20 $30
	rst $38                                          ; $56c5: $ff
	jr nc, jr_050_5735                               ; $56c6: $30 $6d

	push af                                          ; $56c8: $f5
	sbc [hl]                                         ; $56c9: $9e
	daa                                              ; $56ca: $27
	ld a, e                                          ; $56cb: $7b
	cp $7f                                           ; $56cc: $fe $7f
	ld a, [$bf9b]                                    ; $56ce: $fa $9b $bf
	and c                                            ; $56d1: $a1
	ld a, a                                          ; $56d2: $7f
	ld h, c                                          ; $56d3: $61
	cp l                                             ; $56d4: $bd
	nop                                              ; $56d5: $00
	ld bc, $0101                                     ; $56d6: $01 $01 $01
	rst SubAFromDE                                          ; $56d9: $df
	ld [bc], a                                       ; $56da: $02

jr_050_56db:
	rst SubAFromDE                                          ; $56db: $df
	inc b                                            ; $56dc: $04
	ld a, d                                          ; $56dd: $7a
	sub $9e                                          ; $56de: $d6 $9e
	jr nc, jr_050_56c2                               ; $56e0: $30 $e0

	or c                                             ; $56e2: $b1
	reti                                             ; $56e3: $d9


	jr nz, jr_050_56db                               ; $56e4: $20 $f5

	db $dd                                           ; $56e6: $dd
	ld bc, $907b                                     ; $56e7: $01 $7b $90
	sub h                                            ; $56ea: $94
	rlca                                             ; $56eb: $07

jr_050_56ec:
	ld [$100a], sp                                   ; $56ec: $08 $0a $10
	inc d                                            ; $56ef: $14
	ld h, e                                          ; $56f0: $63
	ld b, b                                          ; $56f1: $40
	rst $38                                          ; $56f2: $ff
	add c                                            ; $56f3: $81

Call_050_56f4:
	jp nz, $bcbe                                     ; $56f4: $c2 $be $bc

	ld b, e                                          ; $56f7: $43
	jp hl                                            ; $56f8: $e9


	dec [hl]                                         ; $56f9: $35
	push hl                                          ; $56fa: $e5

jr_050_56fb:
	dec h                                            ; $56fb: $25
	rst SubAFromDE                                          ; $56fc: $df
	add c                                            ; $56fd: $81
	ld l, e                                          ; $56fe: $6b
	call c, $c188                                    ; $56ff: $dc $88 $c1
	rlca                                             ; $5702: $07
	or [hl]                                          ; $5703: $b6
	ld bc, $0009                                     ; $5704: $01 $09 $00
	jr nc, jr_050_56ec                               ; $5707: $30 $e3

	ldh [c], a                                       ; $5709: $e2
	inc bc                                           ; $570a: $03
	ld [bc], a                                       ; $570b: $02
	ccf                                              ; $570c: $3f
	ld a, $ff                                        ; $570d: $3e $ff
	jp nz, $0187                                     ; $570f: $c2 $87 $01

	rra                                              ; $5712: $1f
	ld bc, $82fe                                     ; $5713: $01 $fe $82
	ld a, h                                          ; $5716: $7c
	ld a, h                                          ; $5717: $7c
	ld a, d                                          ; $5718: $7a
	call z, $82dd                                    ; $5719: $cc $dd $82
	ld a, d                                          ; $571c: $7a
	add $db                                          ; $571d: $c6 $db
	add d                                            ; $571f: $82
	cp c                                             ; $5720: $b9
	ld [de], a                                       ; $5721: $12
	adc l                                            ; $5722: $8d
	ret                                              ; $5723: $c9


	ld [hl], e                                       ; $5724: $73
	inc a                                            ; $5725: $3c

jr_050_5726:
	adc b                                            ; $5726: $88
	reti                                             ; $5727: $d9


	or a                                             ; $5728: $b7
	ld a, c                                          ; $5729: $79
	add [hl]                                         ; $572a: $86
	ld [hl], l                                       ; $572b: $75
	add b                                            ; $572c: $80
	add b                                            ; $572d: $80
	ldh a, [c]                                       ; $572e: $f2
	ld [bc], a                                       ; $572f: $02
	jp nz, $0602                                     ; $5730: $c2 $02 $06

	inc bc                                           ; $5733: $03
	adc a                                            ; $5734: $8f

jr_050_5735:
	rlca                                             ; $5735: $07
	ld a, b                                          ; $5736: $78
	ld hl, sp+$30                                    ; $5737: $f8 $30
	inc [hl]                                         ; $5739: $34

jr_050_573a:
	jr c, jr_050_5726                                ; $573a: $38 $ea

	inc l                                            ; $573c: $2c

jr_050_573d:
	dec h                                            ; $573d: $25
	ld h, $22                                        ; $573e: $26 $22
	inc hl                                           ; $5740: $23
	ld hl, $e2e1                                     ; $5741: $21 $e1 $e2
	ldh [c], a                                       ; $5744: $e2
	add e                                            ; $5745: $83
	add e                                            ; $5746: $83
	jr nz, jr_050_5785                               ; $5747: $20 $3c

	ld b, b                                          ; $5749: $40
	ld [hl], e                                       ; $574a: $73
	ld b, b                                          ; $574b: $40
	ld h, [hl]                                       ; $574c: $66
	sbc e                                            ; $574d: $9b
	add b                                            ; $574e: $80
	call $d280                                       ; $574f: $cd $80 $d2
	cp [hl]                                          ; $5752: $be
	jp c, $1479                                      ; $5753: $da $79 $14

	ld a, h                                          ; $5756: $7c
	ld l, l                                          ; $5757: $6d
	sub l                                            ; $5758: $95
	db $10                                           ; $5759: $10
	jr nc, jr_050_5764                               ; $575a: $30 $08

	ret c                                            ; $575c: $d8

	dec b                                            ; $575d: $05
	dec l                                            ; $575e: $2d
	ld [bc], a                                       ; $575f: $02
	ld [$5f01], a                                    ; $5760: $ea $01 $5f
	cp a                                             ; $5763: $bf

jr_050_5764:
	cp e                                             ; $5764: $bb
	ld l, c                                          ; $5765: $69
	rst SubAFromDE                                          ; $5766: $df
	inc h                                            ; $5767: $24
	rst SubAFromDE                                          ; $5768: $df
	ld b, h                                          ; $5769: $44
	rst SubAFromDE                                          ; $576a: $df
	add h                                            ; $576b: $84
	db $dd                                           ; $576c: $dd
	inc b                                            ; $576d: $04
	rst SubAFromDE                                          ; $576e: $df
	add h                                            ; $576f: $84
	add l                                            ; $5770: $85
	db $e4                                           ; $5771: $e4
	ld h, h                                          ; $5772: $64
	ld [hl], a                                       ; $5773: $77
	rla                                              ; $5774: $17
	jr nc, jr_050_57a7                               ; $5775: $30 $30

	jr z, @+$2a                                      ; $5777: $28 $28

	dec h                                            ; $5779: $25

jr_050_577a:
	dec a                                            ; $577a: $3d

jr_050_577b:
	ld [hl+], a                                      ; $577b: $22
	scf                                              ; $577c: $37
	jr nz, @+$31                                     ; $577d: $20 $2f

	jr nz, jr_050_57b2                               ; $577f: $20 $31

	jr nz, jr_050_57c1                               ; $5781: $20 $3e

	ldh [$e2], a                                     ; $5783: $e0 $e2

jr_050_5785:
	ld a, a                                          ; $5785: $7f
	ld h, c                                          ; $5786: $61
	cp a                                             ; $5787: $bf
	and c                                            ; $5788: $a1
	ccf                                              ; $5789: $3f
	ld hl, $fe6f                                     ; $578a: $21 $6f $fe
	sbc b                                            ; $578d: $98
	ld hl, $3fff                                     ; $578e: $21 $ff $3f
	ccf                                              ; $5791: $3f
	ld b, b                                          ; $5792: $40
	ld h, b                                          ; $5793: $60
	nop                                              ; $5794: $00
	sbc $40                                          ; $5795: $de $40
	cp a                                             ; $5797: $bf
	jr nz, jr_050_573a                               ; $5798: $20 $a0

	sbc l                                            ; $579a: $9d
	jr nz, jr_050_573d                               ; $579b: $20 $a0

	ld a, e                                          ; $579d: $7b
	ld a, [de]                                       ; $579e: $1a
	ld a, [hl]                                       ; $579f: $7e

Jump_050_57a0:
	jr @-$1e                                         ; $57a0: $18 $e0

	xor h                                            ; $57a2: $ac
	halt                                             ; $57a3: $76
	ret nc                                           ; $57a4: $d0

	ld l, d                                          ; $57a5: $6a
	or b                                             ; $57a6: $b0

jr_050_57a7:
	sbc d                                            ; $57a7: $9a
	daa                                              ; $57a8: $27
	ld b, b                                          ; $57a9: $40
	ld c, e                                          ; $57aa: $4b
	add b                                            ; $57ab: $80
	call c, $66b1                                    ; $57ac: $dc $b1 $66
	ld hl, $9030                                     ; $57af: $21 $30 $90

jr_050_57b2:
	ret                                              ; $57b2: $c9


	ld c, e                                          ; $57b3: $4b
	sbc e                                            ; $57b4: $9b
	ld [hl], d                                       ; $57b5: $72
	rlca                                             ; $57b6: $07
	db $fc                                           ; $57b7: $fc
	jr nc, jr_050_577b                               ; $57b8: $30 $c1

	ld b, c                                          ; $57ba: $41
	rst $38                                          ; $57bb: $ff
	ld [bc], a                                       ; $57bc: $02
	inc b                                            ; $57bd: $04
	cp [hl]                                          ; $57be: $be
	ld b, h                                          ; $57bf: $44
	adc b                                            ; $57c0: $88

jr_050_57c1:
	sbc b                                            ; $57c1: $98
	sbc e                                            ; $57c2: $9b
	rrca                                             ; $57c3: $0f
	ccf                                              ; $57c4: $3f
	rra                                              ; $57c5: $1f
	pop hl                                           ; $57c6: $e1
	ld e, a                                          ; $57c7: $5f
	cp [hl]                                          ; $57c8: $be
	ld a, [hl]                                       ; $57c9: $7e
	cp b                                             ; $57ca: $b8
	sbc e                                            ; $57cb: $9b
	add a                                            ; $57cc: $87
	add h                                            ; $57cd: $84
	rrca                                             ; $57ce: $0f
	ld [$c672], sp                                   ; $57cf: $08 $72 $c6
	ld [hl], d                                       ; $57d2: $72
	jp nz, $b27e                                     ; $57d3: $c2 $7e $b2

	sbc e                                            ; $57d6: $9b
	add d                                            ; $57d7: $82
	rst $38                                          ; $57d8: $ff
	cp $ff                                           ; $57d9: $fe $ff
	cp c                                             ; $57db: $b9
	ld c, c                                          ; $57dc: $49
	xor h                                            ; $57dd: $ac
	jp nc, $d98a                                     ; $57de: $d2 $8a $d9

	inc sp                                           ; $57e1: $33
	dec de                                           ; $57e2: $1b
	call z, $1f80                                    ; $57e3: $cc $80 $1f
	db $d3                                           ; $57e6: $d3
	rst GetHLinHL                                          ; $57e7: $cf
	ld c, c                                          ; $57e8: $49
	rst SubAFromBC                                          ; $57e9: $e7
	inc h                                            ; $57ea: $24
	db $e3                                           ; $57eb: $e3
	inc hl                                           ; $57ec: $23
	ld hl, sp+$38                                    ; $57ed: $f8 $38
	cp $46                                           ; $57ef: $fe $46
	rst SubAFromBC                                          ; $57f1: $e7
	add c                                            ; $57f2: $81
	di                                               ; $57f3: $f3
	nop                                              ; $57f4: $00
	ret nz                                           ; $57f5: $c0

	rst JumpTable                                          ; $57f6: $c7
	nop                                              ; $57f7: $00
	jr jr_050_577a                                   ; $57f8: $18 $80

	adc h                                            ; $57fa: $8c
	call c, $3fdf                                    ; $57fb: $dc $df $3f
	inc hl                                           ; $57fe: $23
	ld a, a                                          ; $57ff: $7f
	ld b, c                                          ; $5800: $41
	rst $38                                          ; $5801: $ff
	pop bc                                           ; $5802: $c1
	di                                               ; $5803: $f3
	ld a, a                                          ; $5804: $7f
	and b                                            ; $5805: $a0
	sbc [hl]                                         ; $5806: $9e
	adc e                                            ; $5807: $8b
	cp l                                             ; $5808: $bd
	jp hl                                            ; $5809: $e9


	ld [hl], b                                       ; $580a: $70
	sbc c                                            ; $580b: $99
	add a                                            ; $580c: $87
	sub l                                            ; $580d: $95
	add b                                            ; $580e: $80
	ld b, e                                          ; $580f: $43
	ret nz                                           ; $5810: $c0

	ld [hl], d                                       ; $5811: $72
	and d                                            ; $5812: $a2
	rra                                              ; $5813: $1f
	nop                                              ; $5814: $00
	ld c, c                                          ; $5815: $49
	ld bc, $bd9e                                     ; $5816: $01 $9e $bd
	sbc e                                            ; $5819: $9b
	ldh a, [$80]                                     ; $581a: $f0 $80
	inc bc                                           ; $581c: $03
	adc e                                            ; $581d: $8b
	inc bc                                           ; $581e: $03
	inc a                                            ; $581f: $3c
	rrca                                             ; $5820: $0f
	ret z                                            ; $5821: $c8

	db $fc                                           ; $5822: $fc
	inc c                                            ; $5823: $0c
	add [hl]                                         ; $5824: $86
	ld [bc], a                                       ; $5825: $02
	inc a                                            ; $5826: $3c
	call nz, Call_050_443c                           ; $5827: $c4 $3c $44
	dec de                                           ; $582a: $1b
	adc e                                            ; $582b: $8b
	ld [hl], a                                       ; $582c: $77
	sub a                                            ; $582d: $97
	ld hl, sp+$78                                    ; $582e: $f8 $78
	inc e                                            ; $5830: $1c
	inc b                                            ; $5831: $04
	cp a                                             ; $5832: $bf
	ld h, $7a                                        ; $5833: $26 $7a
	add h                                            ; $5835: $84
	ld a, $3c                                        ; $5836: $3e $3c
	cp $c0                                           ; $5838: $fe $c0
	cp $01                                           ; $583a: $fe $01
	rst $38                                          ; $583c: $ff
	ld hl, sp+$1c                                    ; $583d: $f8 $1c
	db $10                                           ; $583f: $10
	jr c, @+$22                                      ; $5840: $38 $20

	nop                                              ; $5842: $00
	inc bc                                           ; $5843: $03
	ld [$3015], sp                                   ; $5844: $08 $15 $30
	ld c, c                                          ; $5847: $49
	ld [hl], b                                       ; $5848: $70
	add c                                            ; $5849: $81
	ldh [rP1], a                                     ; $584a: $e0 $00
	ldh [rAUD1SWEEP], a                              ; $584c: $e0 $10
	ret nz                                           ; $584e: $c0

	ld [hl+], a                                      ; $584f: $22
	ret nz                                           ; $5850: $c0

	db $fd                                           ; $5851: $fd
	ld a, d                                          ; $5852: $7a
	cp [hl]                                          ; $5853: $be
	ldh [$a4], a                                     ; $5854: $e0 $a4
	ld a, l                                          ; $5856: $7d
	ld [hl+], a                                      ; $5857: $22
	cp e                                             ; $5858: $bb
	nop                                              ; $5859: $00
	inc bc                                           ; $585a: $03
	ld [bc], a                                       ; $585b: $02
	inc bc                                           ; $585c: $03
	inc bc                                           ; $585d: $03
	nop                                              ; $585e: $00
	sub b                                            ; $585f: $90
	ld a, [hl+]                                      ; $5860: $2a
	jr @+$01                                         ; $5861: $18 $ff

	ld h, [hl]                                       ; $5863: $66
	add c                                            ; $5864: $81
	rra                                              ; $5865: $1f
	ld h, d                                          ; $5866: $62
	rrca                                             ; $5867: $0f
	inc e                                            ; $5868: $1c
	rst JumpTable                                          ; $5869: $c7
	inc b                                            ; $586a: $04
	ld l, a                                          ; $586b: $6f
	ld [$08af], sp                                   ; $586c: $08 $af $08
	ld a, d                                          ; $586f: $7a
	rst SubAFromBC                                          ; $5870: $e7
	ld a, l                                          ; $5871: $7d
	ret c                                            ; $5872: $d8

	add b                                            ; $5873: $80
	inc b                                            ; $5874: $04
	inc bc                                           ; $5875: $03
	rst GetHLinHL                                          ; $5876: $cf
	add a                                            ; $5877: $87
	ld a, b                                          ; $5878: $78
	cp a                                             ; $5879: $bf
	db $10                                           ; $587a: $10
	cp a                                             ; $587b: $bf
	ld [$0c9f], sp                                   ; $587c: $08 $9f $0c
	add $02                                          ; $587f: $c6 $02
	inc c                                            ; $5881: $0c
	inc b                                            ; $5882: $04
	ld hl, sp+$18                                    ; $5883: $f8 $18
	ldh [$e0], a                                     ; $5885: $e0 $e0
	ld hl, sp+$18                                    ; $5887: $f8 $18
	sbc h                                            ; $5889: $9c
	inc b                                            ; $588a: $04
	add $02                                          ; $588b: $c6 $02
	db $e3                                           ; $588d: $e3
	ld bc, $080f                                     ; $588e: $01 $0f $08
	rra                                              ; $5891: $1f
	db $10                                           ; $5892: $10
	sbc [hl]                                         ; $5893: $9e
	ld e, $7b                                        ; $5894: $1e $7b
	cp $7f                                           ; $5896: $fe $7f
	ld b, h                                          ; $5898: $44
	adc c                                            ; $5899: $89
	dec e                                            ; $589a: $1d
	db $10                                           ; $589b: $10
	dec de                                           ; $589c: $1b
	ld de, $121f                                     ; $589d: $11 $1f $12
	ret nz                                           ; $58a0: $c0

	ld e, e                                          ; $58a1: $5b
	ret nz                                           ; $58a2: $c0

	ld c, h                                          ; $58a3: $4c
	ret nz                                           ; $58a4: $c0

	ld c, e                                          ; $58a5: $4b
	ret nz                                           ; $58a6: $c0

	ld c, c                                          ; $58a7: $49
	or b                                             ; $58a8: $b0
	cp b                                             ; $58a9: $b8
	ld hl, sp-$34                                    ; $58aa: $f8 $cc
	call c, $8f07                                    ; $58ac: $dc $07 $8f
	inc bc                                           ; $58af: $03
	cp e                                             ; $58b0: $bb
	jr c, jr_050_5924                                ; $58b1: $38 $71

	add e                                            ; $58b3: $83
	inc c                                            ; $58b4: $0c
	ldh a, [rAUD3LOW]                                ; $58b5: $f0 $1d
	sbc e                                            ; $58b7: $9b
	dec b                                            ; $58b8: $05
	rrca                                             ; $58b9: $0f
	rrca                                             ; $58ba: $0f
	ld hl, sp+$26                                    ; $58bb: $f8 $26
	nop                                              ; $58bd: $00
	pop bc                                           ; $58be: $c1
	ld b, h                                          ; $58bf: $44
	ret z                                            ; $58c0: $c8

	ld b, h                                          ; $58c1: $44
	sbc e                                            ; $58c2: $9b
	inc [hl]                                         ; $58c3: $34
	ld b, e                                          ; $58c4: $43
	ld b, h                                          ; $58c5: $44
	inc [hl]                                         ; $58c6: $34
	ld l, e                                          ; $58c7: $6b
	or $9d                                           ; $58c8: $f6 $9d
	inc sp                                           ; $58ca: $33
	ld b, e                                          ; $58cb: $43
	ld l, e                                          ; $58cc: $6b
	or $9e                                           ; $58cd: $f6 $9e
	ld b, h                                          ; $58cf: $44
	ld a, e                                          ; $58d0: $7b
	or $7f                                           ; $58d1: $f6 $7f
	jp hl                                            ; $58d3: $e9


	ld [hl], e                                       ; $58d4: $73
	rst FarCall                                          ; $58d5: $f7
	ld a, e                                          ; $58d6: $7b
	or $df                                           ; $58d7: $f6 $df
	inc sp                                           ; $58d9: $33
	ld l, e                                          ; $58da: $6b
	or $de                                           ; $58db: $f6 $de
	inc sp                                           ; $58dd: $33
	ld l, a                                          ; $58de: $6f
	or $9e                                           ; $58df: $f6 $9e
	inc sp                                           ; $58e1: $33
	ld a, d                                          ; $58e2: $7a
	add c                                            ; $58e3: $81
	pop af                                           ; $58e4: $f1
	reti                                             ; $58e5: $d9


	ld [bc], a                                       ; $58e6: $02
	ld sp, hl                                        ; $58e7: $f9
	reti                                             ; $58e8: $d9


	rst $38                                          ; $58e9: $ff
	reti                                             ; $58ea: $d9


	ld bc, $d0d9                                     ; $58eb: $01 $d9 $d0
	reti                                             ; $58ee: $d9


	ccf                                              ; $58ef: $3f
	ld b, a                                          ; $58f0: $47
	ret c                                            ; $58f1: $d8

	rlca                                             ; $58f2: $07
	ldh a, [$d9]                                     ; $58f3: $f0 $d9
	ld bc, $fcd9                                     ; $58f5: $01 $d9 $fc
	reti                                             ; $58f8: $d9


	rst $38                                          ; $58f9: $ff
	reti                                             ; $58fa: $d9


	jr nz, @+$05                                     ; $58fb: $20 $03

	cp b                                             ; $58fd: $b8
	inc bc                                           ; $58fe: $03
	ldh a, [rIF]                                     ; $58ff: $f0 $0f
	ldh a, [$d9]                                     ; $5901: $f0 $d9
	ei                                               ; $5903: $fb
	ld b, a                                          ; $5904: $47
	ldh [$d9], a                                     ; $5905: $e0 $d9
	dec a                                            ; $5907: $3d
	inc bc                                           ; $5908: $03
	or b                                             ; $5909: $b0
	ld c, e                                          ; $590a: $4b
	ldh a, [rSC]                                     ; $590b: $f0 $02
	ret nz                                           ; $590d: $c0

	ld [bc], a                                       ; $590e: $02
	ret nz                                           ; $590f: $c0

	inc bc                                           ; $5910: $03
	sbc b                                            ; $5911: $98
	ld [bc], a                                       ; $5912: $02
	ret nz                                           ; $5913: $c0

	ld [bc], a                                       ; $5914: $02
	ret nz                                           ; $5915: $c0

	inc bc                                           ; $5916: $03
	ldh a, [$03]                                     ; $5917: $f0 $03
	ldh a, [rSC]                                     ; $5919: $f0 $02
	ret nz                                           ; $591b: $c0

	ld [bc], a                                       ; $591c: $02
	ret nz                                           ; $591d: $c0

	ld [bc], a                                       ; $591e: $02
	ret nz                                           ; $591f: $c0

	ld [bc], a                                       ; $5920: $02
	ret nz                                           ; $5921: $c0

	ld [bc], a                                       ; $5922: $02
	ret nz                                           ; $5923: $c0

jr_050_5924:
	inc bc                                           ; $5924: $03
	adc b                                            ; $5925: $88
	ld [bc], a                                       ; $5926: $02
	ret nz                                           ; $5927: $c0

	ld [bc], a                                       ; $5928: $02
	ret nz                                           ; $5929: $c0

	inc bc                                           ; $592a: $03
	ldh a, [rSC]                                     ; $592b: $f0 $02

jr_050_592d:
	ret nz                                           ; $592d: $c0

	ld [bc], a                                       ; $592e: $02
	ret nz                                           ; $592f: $c0

	inc bc                                           ; $5930: $03
	or b                                             ; $5931: $b0
	ld [bc], a                                       ; $5932: $02
	ret nz                                           ; $5933: $c0

	ld [bc], a                                       ; $5934: $02
	ret nz                                           ; $5935: $c0

	ld c, d                                          ; $5936: $4a
	ret nz                                           ; $5937: $c0

	sbc e                                            ; $5938: $9b
	jr jr_050_5957                                   ; $5939: $18 $1c

	inc d                                            ; $593b: $14
	ld d, $dd                                        ; $593c: $16 $dd
	rst $38                                          ; $593e: $ff
	sbc e                                            ; $593f: $9b
	rst SubAFromBC                                          ; $5940: $e7
	db $e3                                           ; $5941: $e3
	db $e3                                           ; $5942: $e3
	pop hl                                           ; $5943: $e1
	ld [bc], a                                       ; $5944: $02
	ret nz                                           ; $5945: $c0

	ld [bc], a                                       ; $5946: $02
	ret nz                                           ; $5947: $c0

	inc bc                                           ; $5948: $03
	ld b, b                                          ; $5949: $40
	sbc $ff                                          ; $594a: $de $ff
	rst SubAFromDE                                          ; $594c: $df
	ret nz                                           ; $594d: $c0

	ld c, a                                          ; $594e: $4f
	ldh a, [$f7]                                     ; $594f: $f0 $f7
	rlca                                             ; $5951: $07
	ldh a, [$db]                                     ; $5952: $f0 $db
	ei                                               ; $5954: $fb
	rst SubAFromDE                                          ; $5955: $df
	dec sp                                           ; $5956: $3b

jr_050_5957:
	ld [bc], a                                       ; $5957: $02
	ret nz                                           ; $5958: $c0

	ld [bc], a                                       ; $5959: $02
	ret nz                                           ; $595a: $c0

	ld [bc], a                                       ; $595b: $02
	ret nz                                           ; $595c: $c0

	ld [bc], a                                       ; $595d: $02
	ret nz                                           ; $595e: $c0

	db $dd                                           ; $595f: $dd
	ccf                                              ; $5960: $3f
	sbc e                                            ; $5961: $9b
	ld [de], a                                       ; $5962: $12
	inc de                                           ; $5963: $13
	ld de, $dd11                                     ; $5964: $11 $11 $dd
	db $10                                           ; $5967: $10
	sbc [hl]                                         ; $5968: $9e
	pop hl                                           ; $5969: $e1
	jp c, $fee0                                      ; $596a: $da $e0 $fe

	sbc d                                            ; $596d: $9a
	add b                                            ; $596e: $80
	ret nz                                           ; $596f: $c0

	ret nz                                           ; $5970: $c0

	ld h, b                                          ; $5971: $60
	ld h, b                                          ; $5972: $60
	sbc $ff                                          ; $5973: $de $ff
	sbc d                                            ; $5975: $9a
	ld a, a                                          ; $5976: $7f

jr_050_5977:
	ccf                                              ; $5977: $3f
	ccf                                              ; $5978: $3f
	rra                                              ; $5979: $1f
	rra                                              ; $597a: $1f
	ld [bc], a                                       ; $597b: $02
	ret nz                                           ; $597c: $c0

	ld [bc], a                                       ; $597d: $02
	ret nz                                           ; $597e: $c0

	ld c, a                                          ; $597f: $4f
	ldh a, [$d9]                                     ; $5980: $f0 $d9
	ret nz                                           ; $5982: $c0

	ldh [$c9], a                                     ; $5983: $e0 $c9
	reti                                             ; $5985: $d9


	dec sp                                           ; $5986: $3b
	ld [bc], a                                       ; $5987: $02
	ret nz                                           ; $5988: $c0

	ld [bc], a                                       ; $5989: $02
	ret nz                                           ; $598a: $c0

	ld [bc], a                                       ; $598b: $02
	ret nz                                           ; $598c: $c0

	ld [bc], a                                       ; $598d: $02
	ret nz                                           ; $598e: $c0

	db $dd                                           ; $598f: $dd
	ccf                                              ; $5990: $3f
	reti                                             ; $5991: $d9


	db $10                                           ; $5992: $10
	reti                                             ; $5993: $d9


	ldh [$df], a                                     ; $5994: $e0 $df
	jr nc, jr_050_5977                               ; $5996: $30 $df

	jr jr_050_592d                                   ; $5998: $18 $93

	inc c                                            ; $599a: $0c
	inc b                                            ; $599b: $04
	ld b, $02                                        ; $599c: $06 $02
	rrca                                             ; $599e: $0f
	rrca                                             ; $599f: $0f
	rlca                                             ; $59a0: $07
	rlca                                             ; $59a1: $07
	inc bc                                           ; $59a2: $03
	inc bc                                           ; $59a3: $03
	ld bc, $0201                                     ; $59a4: $01 $01 $02
	ret nz                                           ; $59a7: $c0

	ld [bc], a                                       ; $59a8: $02
	ret nz                                           ; $59a9: $c0

	ld [bc], a                                       ; $59aa: $02
	ret nz                                           ; $59ab: $c0

	ldh [$d4], a                                     ; $59ac: $e0 $d4
	ld [bc], a                                       ; $59ae: $02
	ret nz                                           ; $59af: $c0

	ld [bc], a                                       ; $59b0: $02
	ret nz                                           ; $59b1: $c0

	ld [bc], a                                       ; $59b2: $02
	ret nz                                           ; $59b3: $c0

	ld [bc], a                                       ; $59b4: $02
	ret nz                                           ; $59b5: $c0

	ld d, $c0                                        ; $59b6: $16 $c0
	ld e, d                                          ; $59b8: $5a
	call $dffa                                       ; $59b9: $cd $fa $df
	add b                                            ; $59bc: $80
	sbc h                                            ; $59bd: $9c
	ret nz                                           ; $59be: $c0

	ld b, b                                          ; $59bf: $40
	ld h, b                                          ; $59c0: $60
	ld a, d                                          ; $59c1: $7a
	add sp, -$21                                     ; $59c2: $e8 $df
	ld a, a                                          ; $59c4: $7f
	ld [hl], l                                       ; $59c5: $75
	ld [hl], b                                       ; $59c6: $70
	ld [bc], a                                       ; $59c7: $02
	ret nz                                           ; $59c8: $c0

	ld [bc], a                                       ; $59c9: $02
	ret nz                                           ; $59ca: $c0

	ld [bc], a                                       ; $59cb: $02
	ret nz                                           ; $59cc: $c0

	ld [bc], a                                       ; $59cd: $02
	ret nz                                           ; $59ce: $c0

	ld [bc], a                                       ; $59cf: $02
	ret nz                                           ; $59d0: $c0

	ld [bc], a                                       ; $59d1: $02
	ret nz                                           ; $59d2: $c0

	ld [bc], a                                       ; $59d3: $02
	ret nz                                           ; $59d4: $c0

	ld [bc], a                                       ; $59d5: $02
	ret nz                                           ; $59d6: $c0

	ld h, $c0                                        ; $59d7: $26 $c0
	pop af                                           ; $59d9: $f1
	sbc e                                            ; $59da: $9b
	jr nc, jr_050_59ed                               ; $59db: $30 $10

	jr jr_050_59e7                                   ; $59dd: $18 $08

	ld d, l                                          ; $59df: $55
	ld [hl], b                                       ; $59e0: $70
	ld [bc], a                                       ; $59e1: $02
	ret nz                                           ; $59e2: $c0

	ld [bc], a                                       ; $59e3: $02
	ret nz                                           ; $59e4: $c0

	ld [bc], a                                       ; $59e5: $02
	ret nz                                           ; $59e6: $c0

jr_050_59e7:
	ld [bc], a                                       ; $59e7: $02
	ret nz                                           ; $59e8: $c0

	ld [bc], a                                       ; $59e9: $02
	ret nz                                           ; $59ea: $c0

	ld [bc], a                                       ; $59eb: $02
	ret nz                                           ; $59ec: $c0

jr_050_59ed:
	ld [bc], a                                       ; $59ed: $02
	ret nz                                           ; $59ee: $c0

	ld [bc], a                                       ; $59ef: $02
	ret nz                                           ; $59f0: $c0

	ld [bc], a                                       ; $59f1: $02
	ret nz                                           ; $59f2: $c0

	ld a, [$7045]                                    ; $59f3: $fa $45 $70
	rst SubAFromDE                                          ; $59f6: $df
	ld bc, $81df                                     ; $59f7: $01 $df $81
	sub e                                            ; $59fa: $93
	pop bc                                           ; $59fb: $c1
	ld b, c                                          ; $59fc: $41
	ld h, c                                          ; $59fd: $61
	ld hl, $fcfc                                     ; $59fe: $21 $fc $fc
	ld a, h                                          ; $5a01: $7c
	ld a, h                                          ; $5a02: $7c
	inc a                                            ; $5a03: $3c
	inc a                                            ; $5a04: $3c
	inc e                                            ; $5a05: $1c
	inc e                                            ; $5a06: $1c
	ld [bc], a                                       ; $5a07: $02
	ret nz                                           ; $5a08: $c0

	ld [hl], $c0                                     ; $5a09: $36 $c0
	ld b, a                                          ; $5a0b: $47
	ld b, b                                          ; $5a0c: $40
	inc bc                                           ; $5a0d: $03
	ldh a, [$5f]                                     ; $5a0e: $f0 $5f
	ldh a, [$dc]                                     ; $5a10: $f0 $dc
	dec sp                                           ; $5a12: $3b
	sbc $fb                                          ; $5a13: $de $fb
	ld [bc], a                                       ; $5a15: $02
	ret nz                                           ; $5a16: $c0

	ld [bc], a                                       ; $5a17: $02
	ret nz                                           ; $5a18: $c0

	ld [bc], a                                       ; $5a19: $02
	ret nz                                           ; $5a1a: $c0

	ld [bc], a                                       ; $5a1b: $02
	ret nz                                           ; $5a1c: $c0

	ld [bc], a                                       ; $5a1d: $02
	ret nz                                           ; $5a1e: $c0

	xor $94                                          ; $5a1f: $ee $94
	ld sp, $1911                                     ; $5a21: $31 $11 $19
	dec c                                            ; $5a24: $0d
	dec c                                            ; $5a25: $0d
	dec b                                            ; $5a26: $05
	dec b                                            ; $5a27: $05
	ld bc, $0c0c                                     ; $5a28: $01 $0c $0c
	inc b                                            ; $5a2b: $04
	ld d, e                                          ; $5a2c: $53
	and b                                            ; $5a2d: $a0
	ld [bc], a                                       ; $5a2e: $02
	ret nz                                           ; $5a2f: $c0

	inc bc                                           ; $5a30: $03
	ldh a, [$03]                                     ; $5a31: $f0 $03
	ldh a, [$fc]                                     ; $5a33: $f0 $fc
	reti                                             ; $5a35: $d9


	ei                                               ; $5a36: $fb
	ld [bc], a                                       ; $5a37: $02
	ret nz                                           ; $5a38: $c0

	inc bc                                           ; $5a39: $03
	or b                                             ; $5a3a: $b0
	ld e, [hl]                                       ; $5a3b: $5e
	ld h, d                                          ; $5a3c: $62
	ld d, [hl]                                       ; $5a3d: $56
	ld h, b                                          ; $5a3e: $60
	sbc $02                                          ; $5a3f: $de $02
	sbc l                                            ; $5a41: $9d
	cp $01                                           ; $5a42: $fe $01
	dec sp                                           ; $5a44: $3b
	ret nc                                           ; $5a45: $d0

	ld [bc], a                                       ; $5a46: $02
	ret nz                                           ; $5a47: $c0

	ld [bc], a                                       ; $5a48: $02
	ret nz                                           ; $5a49: $c0

	ld h, l                                          ; $5a4a: $65
	add b                                            ; $5a4b: $80
	db $db                                           ; $5a4c: $db
	ld bc, $a047                                     ; $5a4d: $01 $47 $a0
	ld [bc], a                                       ; $5a50: $02
	ret nz                                           ; $5a51: $c0

	inc bc                                           ; $5a52: $03
	ldh a, [$03]                                     ; $5a53: $f0 $03
	ldh a, [rSC]                                     ; $5a55: $f0 $02
	ret nz                                           ; $5a57: $c0

	ld [bc], a                                       ; $5a58: $02
	ret nz                                           ; $5a59: $c0

	dec sp                                           ; $5a5a: $3b
	ldh a, [$0a]                                     ; $5a5b: $f0 $0a
	nop                                              ; $5a5d: $00
	pop bc                                           ; $5a5e: $c1
	inc sp                                           ; $5a5f: $33
	inc bc                                           ; $5a60: $03
	rst $38                                          ; $5a61: $ff
	inc bc                                           ; $5a62: $03
	rst $38                                          ; $5a63: $ff
	push de                                          ; $5a64: $d5
	inc sp                                           ; $5a65: $33
	ld e, h                                          ; $5a66: $5c
	ld b, $ff                                        ; $5a67: $06 $ff
	sbc h                                            ; $5a69: $9c
	ld b, b                                          ; $5a6a: $40
	nop                                              ; $5a6b: $00
	add b                                            ; $5a6c: $80
	ld a, e                                          ; $5a6d: $7b
	db $fc                                           ; $5a6e: $fc
	sbc d                                            ; $5a6f: $9a
	xor b                                            ; $5a70: $a8
	nop                                              ; $5a71: $00
	ld d, l                                          ; $5a72: $55
	nop                                              ; $5a73: $00
	xor d                                            ; $5a74: $aa
	ld a, e                                          ; $5a75: $7b
	db $fc                                           ; $5a76: $fc
	rst FarCall                                          ; $5a77: $f7
	ld b, a                                          ; $5a78: $47
	ldh a, [$9e]                                     ; $5a79: $f0 $9e
	dec d                                            ; $5a7b: $15
	ld l, a                                          ; $5a7c: $6f
	ldh a, [$9e]                                     ; $5a7d: $f0 $9e
	ld bc, $fe6f                                     ; $5a7f: $01 $6f $fe
	sbc d                                            ; $5a82: $9a
	xor b                                            ; $5a83: $a8
	ld bc, $0154                                     ; $5a84: $01 $54 $01
	xor d                                            ; $5a87: $aa
	ld a, e                                          ; $5a88: $7b
	db $fc                                           ; $5a89: $fc
	db $dd                                           ; $5a8a: $dd
	ret nz                                           ; $5a8b: $c0

	sbc [hl]                                         ; $5a8c: $9e
	ldh [$de], a                                     ; $5a8d: $e0 $de
	ret nz                                           ; $5a8f: $c0

	sub a                                            ; $5a90: $97
	ld [$d5c0], a                                    ; $5a91: $ea $c0 $d5
	ret nz                                           ; $5a94: $c0

	ld [$d5d0], a                                    ; $5a95: $ea $d0 $d5
	ldh a, [$f9]                                     ; $5a98: $f0 $f9
	ld [hl], a                                       ; $5a9a: $77
	call nc, $c05f                                   ; $5a9b: $d4 $5f $c0
	ld a, a                                          ; $5a9e: $7f
	and b                                            ; $5a9f: $a0
	ld c, a                                          ; $5aa0: $4f
	ldh a, [$9e]                                     ; $5aa1: $f0 $9e
	ld b, c                                          ; $5aa3: $41
	ld d, e                                          ; $5aa4: $53
	ldh a, [$9e]                                     ; $5aa5: $f0 $9e
	ld [bc], a                                       ; $5aa7: $02
	ld l, e                                          ; $5aa8: $6b
	db $f4                                           ; $5aa9: $f4
	ld [hl], a                                       ; $5aaa: $77
	db $fc                                           ; $5aab: $fc
	sbc [hl]                                         ; $5aac: $9e
	ld a, [hl+]                                      ; $5aad: $2a
	ld l, e                                          ; $5aae: $6b
	sbc b                                            ; $5aaf: $98
	ld l, a                                          ; $5ab0: $6f
	db $fc                                           ; $5ab1: $fc
	sbc l                                            ; $5ab2: $9d
	ld e, e                                          ; $5ab3: $5b
	inc b                                            ; $5ab4: $04
	ld e, a                                          ; $5ab5: $5f
	db $f4                                           ; $5ab6: $f4
	sbc [hl]                                         ; $5ab7: $9e
	ld d, h                                          ; $5ab8: $54
	ld h, e                                          ; $5ab9: $63
	ld e, h                                          ; $5aba: $5c
	ld [hl], a                                       ; $5abb: $77
	db $f4                                           ; $5abc: $f4
	ld a, a                                          ; $5abd: $7f
	ld c, h                                          ; $5abe: $4c
	ld l, a                                          ; $5abf: $6f
	ld e, h                                          ; $5ac0: $5c
	sbc l                                            ; $5ac1: $9d
	dec c                                            ; $5ac2: $0d
	inc bc                                           ; $5ac3: $03
	ld [hl], a                                       ; $5ac4: $77
	cp $9d                                           ; $5ac5: $fe $9d
	add hl, bc                                       ; $5ac7: $09
	rlca                                             ; $5ac8: $07
	ld [hl], a                                       ; $5ac9: $77
	cp $9e                                           ; $5aca: $fe $9e
	ld bc, $fe7b                                     ; $5acc: $01 $7b $fe
	adc e                                            ; $5acf: $8b
	ld [de], a                                       ; $5ad0: $12
	dec c                                            ; $5ad1: $0d
	ld [bc], a                                       ; $5ad2: $02
	dec c                                            ; $5ad3: $0d
	db $10                                           ; $5ad4: $10
	rrca                                             ; $5ad5: $0f
	db $10                                           ; $5ad6: $10
	rrca                                             ; $5ad7: $0f
	sub h                                            ; $5ad8: $94
	dec bc                                           ; $5ad9: $0b
	sub b                                            ; $5ada: $90
	rrca                                             ; $5adb: $0f
	sub b                                            ; $5adc: $90
	rrca                                             ; $5add: $0f
	db $10                                           ; $5ade: $10
	adc a                                            ; $5adf: $8f
	db $fd                                           ; $5ae0: $fd
	ldh a, [c]                                       ; $5ae1: $f2
	ei                                               ; $5ae2: $fb
	db $f4                                           ; $5ae3: $f4
	ld d, a                                          ; $5ae4: $57
	db $fc                                           ; $5ae5: $fc
	sbc l                                            ; $5ae6: $9d
	rrca                                             ; $5ae7: $0f
	rst $38                                          ; $5ae8: $ff
	ld c, a                                          ; $5ae9: $4f
	cp $03                                           ; $5aea: $fe $03
	rst $38                                          ; $5aec: $ff
	jp nz, $6fff                                     ; $5aed: $c2 $ff $6f

	ld [hl], b                                       ; $5af0: $70
	sbc d                                            ; $5af1: $9a
	push de                                          ; $5af2: $d5
	nop                                              ; $5af3: $00
	cp $00                                           ; $5af4: $fe $00
	rst $38                                          ; $5af6: $ff
	ld [hl], e                                       ; $5af7: $73
	cp $5f                                           ; $5af8: $fe $5f
	ld d, b                                          ; $5afa: $50
	ld b, a                                          ; $5afb: $47
	ldh a, [$9e]                                     ; $5afc: $f0 $9e
	db $fd                                           ; $5afe: $fd
	ld [hl], e                                       ; $5aff: $73
	call c, $c866                                    ; $5b00: $dc $66 $c8
	sbc [hl]                                         ; $5b03: $9e
	xor e                                            ; $5b04: $ab
	ld a, e                                          ; $5b05: $7b
	db $ec                                           ; $5b06: $ec
	ld [hl], a                                       ; $5b07: $77
	ldh [$9b], a                                     ; $5b08: $e0 $9b
	jp nc, $d5f8                                     ; $5b0a: $d2 $f8 $d5

	ldh a, [$72]                                     ; $5b0d: $f0 $72
	call nz, $fc73                                   ; $5b0f: $c4 $73 $fc
	sbc l                                            ; $5b12: $9d
	call nc, Call_050_67c0                           ; $5b13: $d4 $c0 $67
	jr nz, jr_050_5b87                               ; $5b16: $20 $6f

	ld hl, sp-$62                                    ; $5b18: $f8 $9e
	dec b                                            ; $5b1a: $05
	ld l, e                                          ; $5b1b: $6b
	ld hl, sp-$62                                    ; $5b1c: $f8 $9e
	inc b                                            ; $5b1e: $04
	ld [hl], e                                       ; $5b1f: $73
	inc d                                            ; $5b20: $14
	sbc e                                            ; $5b21: $9b
	xor c                                            ; $5b22: $a9
	rlca                                             ; $5b23: $07
	ld e, [hl]                                       ; $5b24: $5e
	ccf                                              ; $5b25: $3f
	ld sp, hl                                        ; $5b26: $f9
	sub a                                            ; $5b27: $97
	dec bc                                           ; $5b28: $0b
	rlca                                             ; $5b29: $07
	ld a, h                                          ; $5b2a: $7c
	ccf                                              ; $5b2b: $3f
	push bc                                          ; $5b2c: $c5
	ld a, [$d52a]                                    ; $5b2d: $fa $2a $d5
	cp $9a                                           ; $5b30: $fe $9a
	ld bc, $0f17                                     ; $5b32: $01 $17 $0f
	ld hl, sp+$7f                                    ; $5b35: $f8 $7f
	ld [hl], a                                       ; $5b37: $77
	db $f4                                           ; $5b38: $f4
	sub e                                            ; $5b39: $93
	ld d, l                                          ; $5b3a: $55
	xor d                                            ; $5b3b: $aa
	xor d                                            ; $5b3c: $aa
	ld d, l                                          ; $5b3d: $55
	ld e, $0c                                        ; $5b3e: $1e $0c
	di                                               ; $5b40: $f3
	ld a, a                                          ; $5b41: $7f
	sub h                                            ; $5b42: $94
	db $eb                                           ; $5b43: $eb
	xor d                                            ; $5b44: $aa
	ld d, l                                          ; $5b45: $55
	ld [hl], a                                       ; $5b46: $77
	db $f4                                           ; $5b47: $f4
	ld [hl], a                                       ; $5b48: $77
	db $fc                                           ; $5b49: $fc
	rst $38                                          ; $5b4a: $ff
	sub a                                            ; $5b4b: $97
	ret nz                                           ; $5b4c: $c0

	add b                                            ; $5b4d: $80
	db $f4                                           ; $5b4e: $f4
	ld hl, sp-$62                                    ; $5b4f: $f8 $9e
	ld a, a                                          ; $5b51: $7f
	ld d, e                                          ; $5b52: $53
	xor a                                            ; $5b53: $af
	ld h, a                                          ; $5b54: $67
	ldh a, [$fd]                                     ; $5b55: $f0 $fd
	sub c                                            ; $5b57: $91
	ret nz                                           ; $5b58: $c0

	nop                                              ; $5b59: $00
	add sp, -$10                                     ; $5b5a: $e8 $f0
	ld a, l                                          ; $5b5c: $7d
	cp $4f                                           ; $5b5d: $fe $4f
	cp a                                             ; $5b5f: $bf
	and b                                            ; $5b60: $a0
	ld e, a                                          ; $5b61: $5f
	ld bc, $0507                                     ; $5b62: $01 $07 $05
	inc bc                                           ; $5b65: $03
	ld l, a                                          ; $5b66: $6f
	cp $92                                           ; $5b67: $fe $92
	add h                                            ; $5b69: $84
	inc bc                                           ; $5b6a: $03
	sub $e1                                          ; $5b6b: $d6 $e1
	cp $f9                                           ; $5b6d: $fe $f9
	db $10                                           ; $5b6f: $10
	adc a                                            ; $5b70: $8f
	db $10                                           ; $5b71: $10
	adc a                                            ; $5b72: $8f
	ld de, $518f                                     ; $5b73: $11 $8f $51
	ld a, e                                          ; $5b76: $7b
	cp $9d                                           ; $5b77: $fe $9d
	ld b, c                                          ; $5b79: $41
	sbc a                                            ; $5b7a: $9f
	ld [hl], a                                       ; $5b7b: $77
	cp $66                                           ; $5b7c: $fe $66
	ret z                                            ; $5b7e: $c8

	sbc h                                            ; $5b7f: $9c
	db $ed                                           ; $5b80: $ed
	ldh a, [c]                                       ; $5b81: $f2
	db $eb                                           ; $5b82: $eb
	ld [hl], e                                       ; $5b83: $73
	db $fc                                           ; $5b84: $fc
	sbc l                                            ; $5b85: $9d
	inc b                                            ; $5b86: $04

jr_050_5b87:
	rst $38                                          ; $5b87: $ff
	ld l, a                                          ; $5b88: $6f
	cp $9d                                           ; $5b89: $fe $9d
	ld b, $fd                                        ; $5b8b: $06 $fd
	ld l, a                                          ; $5b8d: $6f
	cp $96                                           ; $5b8e: $fe $96
	ldh a, [rIE]                                     ; $5b90: $f0 $ff
	ld d, b                                          ; $5b92: $50
	cp a                                             ; $5b93: $bf
	db $10                                           ; $5b94: $10
	cp a                                             ; $5b95: $bf
	ld d, b                                          ; $5b96: $50
	cp a                                             ; $5b97: $bf
	ld d, d                                          ; $5b98: $52
	ld a, e                                          ; $5b99: $7b
	ld a, [$fc7f]                                    ; $5b9a: $fa $7f $fc
	ld a, a                                          ; $5b9d: $7f
	ld hl, sp-$6c                                    ; $5b9e: $f8 $94
	cp $ff                                           ; $5ba0: $fe $ff
	cp $ff                                           ; $5ba2: $fe $ff
	or d                                             ; $5ba4: $b2
	rst GetHLinHL                                          ; $5ba5: $cf
	sub d                                            ; $5ba6: $92
	rst AddAOntoHL                                          ; $5ba7: $ef
	jp nc, $82af                                     ; $5ba8: $d2 $af $82

	ld a, e                                          ; $5bab: $7b
	ld hl, sp+$7f                                    ; $5bac: $f8 $7f
	cp $8b                                           ; $5bae: $fe $8b
	inc e                                            ; $5bb0: $1c
	rst $38                                          ; $5bb1: $ff
	inc d                                            ; $5bb2: $14
	rst AddAOntoHL                                          ; $5bb3: $ef
	inc b                                            ; $5bb4: $04
	rst $38                                          ; $5bb5: $ff
	dec d                                            ; $5bb6: $15
	rst AddAOntoHL                                          ; $5bb7: $ef
	inc d                                            ; $5bb8: $14
	rst AddAOntoHL                                          ; $5bb9: $ef
	dec b                                            ; $5bba: $05
	rst $38                                          ; $5bbb: $ff
	inc c                                            ; $5bbc: $0c
	rst FarCall                                          ; $5bbd: $f7
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	and l                                            ; $5bc0: $a5
	rst $38                                          ; $5bc1: $ff
	ld h, l                                          ; $5bc2: $65
	cp a                                             ; $5bc3: $bf
	ld l, a                                          ; $5bc4: $6f
	cp $99                                           ; $5bc5: $fe $99
	ld l, l                                          ; $5bc7: $6d
	cp a                                             ; $5bc8: $bf
	push hl                                          ; $5bc9: $e5
	ccf                                              ; $5bca: $3f
	inc a                                            ; $5bcb: $3c
	inc bc                                           ; $5bcc: $03
	halt                                             ; $5bcd: $76
	db $fc                                           ; $5bce: $fc
	ld a, a                                          ; $5bcf: $7f
	dec sp                                           ; $5bd0: $3b
	ld a, a                                          ; $5bd1: $7f
	ld e, $9e                                        ; $5bd2: $1e $9e
	ld a, a                                          ; $5bd4: $7f
	ld a, e                                          ; $5bd5: $7b
	ld hl, sp+$7f                                    ; $5bd6: $f8 $7f
	ld h, e                                          ; $5bd8: $63
	sbc l                                            ; $5bd9: $9d
	adc d                                            ; $5bda: $8a
	ld h, b                                          ; $5bdb: $60
	ld [hl], a                                       ; $5bdc: $77
	ldh a, [$66]                                     ; $5bdd: $f0 $66
	jp nz, $579c                                     ; $5bdf: $c2 $9c $57

	nop                                              ; $5be2: $00
	xor e                                            ; $5be3: $ab
	ld l, e                                          ; $5be4: $6b
	ld hl, sp-$62                                    ; $5be5: $f8 $9e
	xor a                                            ; $5be7: $af
	ld [hl], e                                       ; $5be8: $73
	ld hl, sp-$65                                    ; $5be9: $f8 $9b
	db $eb                                           ; $5beb: $eb
	nop                                              ; $5bec: $00
	ld e, c                                          ; $5bed: $59
	rlca                                             ; $5bee: $07
	ld l, [hl]                                       ; $5bef: $6e
	xor d                                            ; $5bf0: $aa
	ld a, a                                          ; $5bf1: $7f
	cp $97                                           ; $5bf2: $fe $97
	cp $01                                           ; $5bf4: $fe $01
	di                                               ; $5bf6: $f3
	rrca                                             ; $5bf7: $0f
	inc a                                            ; $5bf8: $3c
	rst $38                                          ; $5bf9: $ff
	ret nz                                           ; $5bfa: $c0

	rst $38                                          ; $5bfb: $ff
	call c, $8cc0                                    ; $5bfc: $dc $c0 $8c
	pop bc                                           ; $5bff: $c1
	rst SubAFromHL                                          ; $5c00: $d7
	rst GetHLinHL                                          ; $5c01: $cf
	db $fc                                           ; $5c02: $fc
	rst $38                                          ; $5c03: $ff
	jp nz, $d5fd                                     ; $5c04: $c2 $fd $d5

	ld [$d5ea], a                                    ; $5c07: $ea $ea $d5
	ld [bc], a                                       ; $5c0a: $02
	ld bc, $0f3f                                     ; $5c0b: $01 $3f $0f
	pop af                                           ; $5c0e: $f1
	cp $8a                                           ; $5c0f: $fe $8a
	push af                                          ; $5c11: $f5
	ld h, a                                          ; $5c12: $67
	nop                                              ; $5c13: $00
	sbc [hl]                                         ; $5c14: $9e
	push hl                                          ; $5c15: $e5
	ld l, d                                          ; $5c16: $6a
	add sp, $6f                                      ; $5c17: $e8 $6f
	db $fc                                           ; $5c19: $fc
	sbc l                                            ; $5c1a: $9d
	xor a                                            ; $5c1b: $af
	ld d, b                                          ; $5c1c: $50
	ld e, a                                          ; $5c1d: $5f
	db $f4                                           ; $5c1e: $f4
	sbc l                                            ; $5c1f: $9d
	cp a                                             ; $5c20: $bf
	ld b, b                                          ; $5c21: $40
	ld [hl], e                                       ; $5c22: $73
	sub h                                            ; $5c23: $94
	ld a, e                                          ; $5c24: $7b
	db $f4                                           ; $5c25: $f4
	sbc l                                            ; $5c26: $9d
	ld d, a                                          ; $5c27: $57
	xor b                                            ; $5c28: $a8
	ld l, a                                          ; $5c29: $6f
	db $f4                                           ; $5c2a: $f4
	ld [hl], a                                       ; $5c2b: $77
	cp $9d                                           ; $5c2c: $fe $9d
	ld e, l                                          ; $5c2e: $5d
	and d                                            ; $5c2f: $a2
	ld h, a                                          ; $5c30: $67
	or $6f                                           ; $5c31: $f6 $6f
	cp $77                                           ; $5c33: $fe $77
	ldh [$9b], a                                     ; $5c35: $e0 $9b
	push af                                          ; $5c37: $f5
	ld a, [bc]                                       ; $5c38: $0a
	ld a, [$6705]                                    ; $5c39: $fa $05 $67
	ldh a, [$9e]                                     ; $5c3c: $f0 $9e
	ld b, b                                          ; $5c3e: $40
	ld a, d                                          ; $5c3f: $7a
	call z, Call_050_508b                            ; $5c40: $cc $8b $50
	xor a                                            ; $5c43: $af
	xor b                                            ; $5c44: $a8
	ld d, a                                          ; $5c45: $57
	ld d, h                                          ; $5c46: $54
	xor e                                            ; $5c47: $ab
	xor d                                            ; $5c48: $aa
	ld d, l                                          ; $5c49: $55
	push de                                          ; $5c4a: $d5
	ld a, [hl+]                                      ; $5c4b: $2a
	xor d                                            ; $5c4c: $aa
	ld d, l                                          ; $5c4d: $55
	ld a, [de]                                       ; $5c4e: $1a
	db $fd                                           ; $5c4f: $fd
	ld b, $f9                                        ; $5c50: $06 $f9
	ld b, $f9                                        ; $5c52: $06 $f9
	ld [bc], a                                       ; $5c54: $02
	db $fd                                           ; $5c55: $fd
	ld l, a                                          ; $5c56: $6f
	cp $99                                           ; $5c57: $fe $99
	add c                                            ; $5c59: $81
	ld a, [hl]                                       ; $5c5a: $7e
	pop bc                                           ; $5c5b: $c1
	sbc a                                            ; $5c5c: $9f
	adc c                                            ; $5c5d: $89
	rst SubAFromDE                                          ; $5c5e: $df
	ld [hl], a                                       ; $5c5f: $77
	cp $97                                           ; $5c60: $fe $97
	add b                                            ; $5c62: $80
	rst SubAFromDE                                          ; $5c63: $df
	ld c, h                                          ; $5c64: $4c
	di                                               ; $5c65: $f3
	rlc a                                            ; $5c66: $cb $07
	cpl                                              ; $5c68: $2f
	rra                                              ; $5c69: $1f
	halt                                             ; $5c6a: $76
	call z, $c076                                    ; $5c6b: $cc $76 $c0
	sbc e                                            ; $5c6e: $9b
	push af                                          ; $5c6f: $f5
	ld a, [$fcf3]                                    ; $5c70: $fa $f3 $fc
	ld [hl], a                                       ; $5c73: $77
	db $fc                                           ; $5c74: $fc
	ld h, [hl]                                       ; $5c75: $66
	ret z                                            ; $5c76: $c8

	ld [hl], a                                       ; $5c77: $77
	cp $77                                           ; $5c78: $fe $77
	xor a                                            ; $5c7a: $af
	ld a, [hl]                                       ; $5c7b: $7e
	adc $76                                          ; $5c7c: $ce $76
	ret nz                                           ; $5c7e: $c0

	ld l, a                                          ; $5c7f: $6f
	cp $7f                                           ; $5c80: $fe $7f
	ldh a, [c]                                       ; $5c82: $f2
	add [hl]                                         ; $5c83: $86
	ld [bc], a                                       ; $5c84: $02
	db $fc                                           ; $5c85: $fc
	or d                                             ; $5c86: $b2
	call z, $c8b4                                    ; $5c87: $cc $b4 $c8
	cp b                                             ; $5c8a: $b8
	ret nz                                           ; $5c8b: $c0

	or c                                             ; $5c8c: $b1
	ret nz                                           ; $5c8d: $c0

	add c                                            ; $5c8e: $81
	jp $8307                                         ; $5c8f: $c3 $07 $83


	inc c                                            ; $5c92: $0c
	rra                                              ; $5c93: $1f
	ld e, b                                          ; $5c94: $58
	ccf                                              ; $5c95: $3f
	nop                                              ; $5c96: $00
	rrca                                             ; $5c97: $0f
	rra                                              ; $5c98: $1f
	ccf                                              ; $5c99: $3f
	dec sp                                           ; $5c9a: $3b
	ld a, a                                          ; $5c9b: $7f
	ld [hl], b                                       ; $5c9c: $70
	call c, Call_050_77ff                            ; $5c9d: $dc $ff $77
	ret nc                                           ; $5ca0: $d0

	sbc [hl]                                         ; $5ca1: $9e
	ld bc, $f66b                                     ; $5ca2: $01 $6b $f6
	ld h, a                                          ; $5ca5: $67
	ldh a, [hDisp1_LCDC]                                     ; $5ca6: $f0 $8f
	inc b                                            ; $5ca8: $04
	ld hl, sp+$52                                    ; $5ca9: $f8 $52
	db $fd                                           ; $5cab: $fd
	xor d                                            ; $5cac: $aa
	rst $38                                          ; $5cad: $ff
	ld [hl], l                                       ; $5cae: $75
	rst $38                                          ; $5caf: $ff
	cp [hl]                                          ; $5cb0: $be

jr_050_5cb1:
	rst $38                                          ; $5cb1: $ff
	ld e, a                                          ; $5cb2: $5f
	rst $38                                          ; $5cb3: $ff
	xor e                                            ; $5cb4: $ab
	rst $38                                          ; $5cb5: $ff
	ld d, l                                          ; $5cb6: $55
	rst $38                                          ; $5cb7: $ff
	ld a, b                                          ; $5cb8: $78
	or d                                             ; $5cb9: $b2
	adc h                                            ; $5cba: $8c
	ld bc, $8747                                     ; $5cbb: $01 $47 $87
	ld b, h                                          ; $5cbe: $44
	ldh [c], a                                       ; $5cbf: $e2
	xor b                                            ; $5cc0: $a8
	ldh a, [$f0]                                     ; $5cc1: $f0 $f0
	ld hl, sp-$18                                    ; $5cc3: $f8 $e8
	db $fc                                           ; $5cc5: $fc
	ld a, h                                          ; $5cc6: $7c
	cp $4e                                           ; $5cc7: $fe $4e
	ccf                                              ; $5cc9: $3f
	ldh a, [c]                                       ; $5cca: $f2
	db $fd                                           ; $5ccb: $fd
	dec d                                            ; $5ccc: $15
	ld [$fc76], a                                    ; $5ccd: $ea $76 $fc
	ld a, a                                          ; $5cd0: $7f
	db $fc                                           ; $5cd1: $fc
	ld a, a                                          ; $5cd2: $7f
	ld hl, sp-$63                                    ; $5cd3: $f8 $9d
	dec hl                                           ; $5cd5: $2b
	call nc, $f456                                   ; $5cd6: $d4 $56 $f4
	sbc l                                            ; $5cd9: $9d
	ld a, a                                          ; $5cda: $7f
	add b                                            ; $5cdb: $80
	ld a, d                                          ; $5cdc: $7a
	add h                                            ; $5cdd: $84
	ld a, d                                          ; $5cde: $7a
	call z, $fc7f                                    ; $5cdf: $cc $7f $fc
	halt                                             ; $5ce2: $76
	or a                                             ; $5ce3: $b7
	ld l, a                                          ; $5ce4: $6f
	cp $77                                           ; $5ce5: $fe $77
	add sp, $7f                                      ; $5ce7: $e8 $7f
	scf                                              ; $5ce9: $37
	ld e, a                                          ; $5cea: $5f
	nop                                              ; $5ceb: $00
	ld a, a                                          ; $5cec: $7f
	call c, $eb9d                                    ; $5ced: $dc $9d $eb
	inc d                                            ; $5cf0: $14
	ld l, [hl]                                       ; $5cf1: $6e
	db $fc                                           ; $5cf2: $fc
	ld a, [hl]                                       ; $5cf3: $7e
	adc [hl]                                         ; $5cf4: $8e
	ld [hl], a                                       ; $5cf5: $77
	ldh a, [$7f]                                     ; $5cf6: $f0 $7f
	ld hl, sp+$5d                                    ; $5cf8: $f8 $5d
	and h                                            ; $5cfa: $a4
	ld a, a                                          ; $5cfb: $7f
	nop                                              ; $5cfc: $00
	ld a, a                                          ; $5cfd: $7f
	db $ec                                           ; $5cfe: $ec
	sbc e                                            ; $5cff: $9b
	rst SubAFromDE                                          ; $5d00: $df
	jr nz, jr_050_5cb1                               ; $5d01: $20 $ae

	ld d, c                                          ; $5d03: $51
	ld e, a                                          ; $5d04: $5f
	xor h                                            ; $5d05: $ac
	ld a, a                                          ; $5d06: $7f
	db $fc                                           ; $5d07: $fc
	ld a, c                                          ; $5d08: $79
	ld c, $63                                        ; $5d09: $0e $63
	db $f4                                           ; $5d0b: $f4
	scf                                              ; $5d0c: $37
	ldh a, [rBGP]                                    ; $5d0d: $f0 $47
	db $fc                                           ; $5d0f: $fc
	add d                                            ; $5d10: $82
	rrca                                             ; $5d11: $0f
	ldh a, [$8e]                                     ; $5d12: $f0 $8e
	ld [hl], c                                       ; $5d14: $71
	ld b, e                                          ; $5d15: $43
	cp a                                             ; $5d16: $bf
	add b                                            ; $5d17: $80
	ld a, a                                          ; $5d18: $7f
	ld c, l                                          ; $5d19: $4d
	or d                                             ; $5d1a: $b2
	and c                                            ; $5d1b: $a1
	ld e, [hl]                                       ; $5d1c: $5e
	ld c, e                                          ; $5d1d: $4b
	or h                                             ; $5d1e: $b4
	xor e                                            ; $5d1f: $ab
	ld d, h                                          ; $5d20: $54
	ld a, $7f                                        ; $5d21: $3e $7f
	cp $ff                                           ; $5d23: $fe $ff
	or [hl]                                          ; $5d25: $b6
	rst $38                                          ; $5d26: $ff
	or d                                             ; $5d27: $b2
	ld a, a                                          ; $5d28: $7f
	ld a, [de]                                       ; $5d29: $1a
	rst FarCall                                          ; $5d2a: $f7
	ld a, [de]                                       ; $5d2b: $1a
	rst FarCall                                          ; $5d2c: $f7
	ld [$fe7b], sp                                   ; $5d2d: $08 $7b $fe
	ld a, [hl]                                       ; $5d30: $7e
	ld b, b                                          ; $5d31: $40
	ld a, [hl]                                       ; $5d32: $7e
	ret nz                                           ; $5d33: $c0

	ld a, l                                          ; $5d34: $7d
	ld l, c                                          ; $5d35: $69
	ld l, a                                          ; $5d36: $6f
	db $fc                                           ; $5d37: $fc
	sbc d                                            ; $5d38: $9a
	jp hl                                            ; $5d39: $e9


	or $eb                                           ; $5d3a: $f6 $eb
	db $f4                                           ; $5d3c: $f4
	nop                                              ; $5d3d: $00
	ld c, b                                          ; $5d3e: $48
	ld b, b                                          ; $5d3f: $40
	sbc b                                            ; $5d40: $98
	nop                                              ; $5d41: $00
	ld hl, sp-$1a                                    ; $5d42: $f8 $e6
	pop af                                           ; $5d44: $f1
	di                                               ; $5d45: $f3
	rst SubAFromBC                                          ; $5d46: $e7
	rst FarCall                                          ; $5d47: $f7
	ret c                                            ; $5d48: $d8

	rst $38                                          ; $5d49: $ff
	sbc l                                            ; $5d4a: $9d
	ldh [$7f], a                                     ; $5d4b: $e0 $7f
	db $d3                                           ; $5d4d: $d3
	rst $38                                          ; $5d4e: $ff
	ld l, [hl]                                       ; $5d4f: $6e
	sub $1f                                          ; $5d50: $d6 $1f
	ldh a, [$9d]                                     ; $5d52: $f0 $9d
	ld a, [hl+]                                      ; $5d54: $2a
	rst $38                                          ; $5d55: $ff
	ld l, [hl]                                       ; $5d56: $6e
	dec h                                            ; $5d57: $25
	ld a, [hl]                                       ; $5d58: $7e
	push af                                          ; $5d59: $f5
	sub [hl]                                         ; $5d5a: $96
	ld d, h                                          ; $5d5b: $54
	ei                                               ; $5d5c: $fb
	xor b                                            ; $5d5d: $a8
	rst $38                                          ; $5d5e: $ff
	push de                                          ; $5d5f: $d5
	rst $38                                          ; $5d60: $ff
	cp d                                             ; $5d61: $ba
	cp $5d                                           ; $5d62: $fe $5d
	ld a, d                                          ; $5d64: $7a
	cp b                                             ; $5d65: $b8
	sbc h                                            ; $5d66: $9c
	dec d                                            ; $5d67: $15
	rst $38                                          ; $5d68: $ff
	inc bc                                           ; $5d69: $03
	ld a, d                                          ; $5d6a: $7a
	sub [hl]                                         ; $5d6b: $96
	ld a, [hl]                                       ; $5d6c: $7e
	jr nc, jr_050_5dee                               ; $5d6d: $30 $7f

	db $fc                                           ; $5d6f: $fc
	sub a                                            ; $5d70: $97
	rra                                              ; $5d71: $1f
	ldh [$3f], a                                     ; $5d72: $e0 $3f
	ret nz                                           ; $5d74: $c0

	ld a, a                                          ; $5d75: $7f
	add b                                            ; $5d76: $80
	ld a, a                                          ; $5d77: $7f
	add b                                            ; $5d78: $80
	ld [hl], a                                       ; $5d79: $77
	ld a, [$fc77]                                    ; $5d7a: $fa $77 $fc
	ld c, l                                          ; $5d7d: $4d
	ldh [c], a                                       ; $5d7e: $e2
	ld a, e                                          ; $5d7f: $7b
	cp $62                                           ; $5d80: $fe $62
	add $6b                                          ; $5d82: $c6 $6b
	cp $79                                           ; $5d84: $fe $79
	ld h, [hl]                                       ; $5d86: $66
	ld l, a                                          ; $5d87: $6f
	cp $77                                           ; $5d88: $fe $77
	or $75                                           ; $5d8a: $f6 $75
	ret nz                                           ; $5d8c: $c0

	rst SubAFromDE                                          ; $5d8d: $df
	rst $38                                          ; $5d8e: $ff
	sub e                                            ; $5d8f: $93
	and b                                            ; $5d90: $a0
	rst SubAFromDE                                          ; $5d91: $df
	cp c                                             ; $5d92: $b9
	rst GetHLinHL                                          ; $5d93: $cf
	xor l                                            ; $5d94: $ad
	db $db                                           ; $5d95: $db
	cp $8b                                           ; $5d96: $fe $8b
	and l                                            ; $5d98: $a5
	jp c, $8aff                                      ; $5d99: $da $ff $8a

	ld [hl], a                                       ; $5d9c: $77
	ldh a, [hDisp1_OBP0]                                     ; $5d9d: $f0 $93
	ld h, b                                          ; $5d9f: $60
	rst SubAFromDE                                          ; $5da0: $df
	ld de, $60ee                                     ; $5da1: $11 $ee $60
	rst SubAFromDE                                          ; $5da4: $df
	nop                                              ; $5da5: $00
	rst $38                                          ; $5da6: $ff
	ld l, b                                          ; $5da7: $68
	rst SubAFromHL                                          ; $5da8: $d7
	ld [hl], l                                       ; $5da9: $75
	jp z, Jump_050_7077                              ; $5daa: $ca $77 $70

	ld a, l                                          ; $5dad: $7d
	xor [hl]                                         ; $5dae: $ae
	ld l, [hl]                                       ; $5daf: $6e
	ldh a, [c]                                       ; $5db0: $f2
	ld a, [hl]                                       ; $5db1: $7e
	ld h, d                                          ; $5db2: $62
	sbc l                                            ; $5db3: $9d
	ld e, a                                          ; $5db4: $5f
	and b                                            ; $5db5: $a0
	ld [hl], a                                       ; $5db6: $77
	ldh a, [hDisp1_OBP1]                                     ; $5db7: $f0 $94
	ld a, [hl+]                                      ; $5db9: $2a
	db $dd                                           ; $5dba: $dd
	ld e, b                                          ; $5dbb: $58
	xor a                                            ; $5dbc: $af
	ld [$dd1d], a                                    ; $5dbd: $ea $1d $dd
	ld a, [hl+]                                      ; $5dc0: $2a
	xor d                                            ; $5dc1: $aa
	ld e, l                                          ; $5dc2: $5d
	ld e, l                                          ; $5dc3: $5d
	ld a, b                                          ; $5dc4: $78
	rst FarCall                                          ; $5dc5: $f7
	rst SubAFromDE                                          ; $5dc6: $df
	rst $38                                          ; $5dc7: $ff
	ld a, a                                          ; $5dc8: $7f
	add c                                            ; $5dc9: $81
	ld a, e                                          ; $5dca: $7b
	ld h, b                                          ; $5dcb: $60
	sbc [hl]                                         ; $5dcc: $9e
	ld a, a                                          ; $5dcd: $7f
	ld [hl], a                                       ; $5dce: $77
	call c, Call_050_759d                            ; $5dcf: $dc $9d $75
	adc d                                            ; $5dd2: $8a
	ld [hl], a                                       ; $5dd3: $77
	ldh a, [$7f]                                     ; $5dd4: $f0 $7f
	ld l, b                                          ; $5dd6: $68
	sbc c                                            ; $5dd7: $99
	dec b                                            ; $5dd8: $05
	ld a, [$f50a]                                    ; $5dd9: $fa $0a $f5
	dec d                                            ; $5ddc: $15
	ld [$3e76], a                                    ; $5ddd: $ea $76 $3e
	adc a                                            ; $5de0: $8f
	ldh a, [c]                                       ; $5de1: $f2
	inc b                                            ; $5de2: $04
	ldh a, [$f4]                                     ; $5de3: $f0 $f4
	ld sp, hl                                        ; $5de5: $f9
	inc b                                            ; $5de6: $04
	ld sp, hl                                        ; $5de7: $f9
	inc b                                            ; $5de8: $04
	db $ed                                           ; $5de9: $ed
	ld b, b                                          ; $5dea: $40
	ld h, l                                          ; $5deb: $65
	ld c, b                                          ; $5dec: $48
	ld h, h                                          ; $5ded: $64

jr_050_5dee:
	ld c, c                                          ; $5dee: $49
	inc h                                            ; $5def: $24
	add hl, hl                                       ; $5df0: $29
	halt                                             ; $5df1: $76
	call z, $189d                                    ; $5df2: $cc $9d $18
	rst SubAFromBC                                          ; $5df5: $e7
	ld [hl], a                                       ; $5df6: $77
	db $fc                                           ; $5df7: $fc
	sub a                                            ; $5df8: $97
	ld e, b                                          ; $5df9: $58
	rst SubAFromBC                                          ; $5dfa: $e7
	ld b, b                                          ; $5dfb: $40
	rst AddAOntoHL                                          ; $5dfc: $ef
	ret nz                                           ; $5dfd: $c0

	rst AddAOntoHL                                          ; $5dfe: $ef
	jp hl                                            ; $5dff: $e9


	or $4f                                           ; $5e00: $f6 $4f
	cp $4e                                           ; $5e02: $fe $4e
	jp nz, $fe7f                                     ; $5e04: $c2 $7f $fe

	inc bc                                           ; $5e07: $03
	rst $38                                          ; $5e08: $ff
	jp nz, $9eff                                     ; $5e09: $c2 $ff $9e

	ld a, [$ffdc]                                    ; $5e0c: $fa $dc $ff
	sbc h                                            ; $5e0f: $9c
	ld d, a                                          ; $5e10: $57
	rst $38                                          ; $5e11: $ff
	ld [$8479], a                                    ; $5e12: $ea $79 $84
	sbc d                                            ; $5e15: $9a
	add sp, -$01                                     ; $5e16: $e8 $ff
	ld d, b                                          ; $5e18: $50
	rst $38                                          ; $5e19: $ff
	and b                                            ; $5e1a: $a0
	ld a, e                                          ; $5e1b: $7b
	ld hl, sp+$77                                    ; $5e1c: $f8 $77
	db $ec                                           ; $5e1e: $ec
	sbc [hl]                                         ; $5e1f: $9e
	cp a                                             ; $5e20: $bf
	ld a, e                                          ; $5e21: $7b
	db $ec                                           ; $5e22: $ec
	sbc [hl]                                         ; $5e23: $9e
	ld a, [bc]                                       ; $5e24: $0a
	ld a, d                                          ; $5e25: $7a
	cp h                                             ; $5e26: $bc
	ld d, [hl]                                       ; $5e27: $56
	call nz, $c056                                   ; $5e28: $c4 $56 $c0
	ld h, [hl]                                       ; $5e2b: $66
	ldh [rDMA], a                                    ; $5e2c: $e0 $46
	ret nz                                           ; $5e2e: $c0

	ld h, a                                          ; $5e2f: $67
	add sp, -$80                                     ; $5e30: $e8 $80
	sub $29                                          ; $5e32: $d6 $29
	ld a, [$fe05]                                    ; $5e34: $fa $05 $fe
	ld bc, $15ea                                     ; $5e37: $01 $ea $15
	xor b                                            ; $5e3a: $a8
	rst SubAFromHL                                          ; $5e3b: $d7
	reti                                             ; $5e3c: $d9


	xor a                                            ; $5e3d: $af
	and e                                            ; $5e3e: $a3
	rst SubAFromDE                                          ; $5e3f: $df
	add e                                            ; $5e40: $83
	cp $94                                           ; $5e41: $fe $94
	rst $38                                          ; $5e43: $ff
	xor c                                            ; $5e44: $a9
	cp $d2                                           ; $5e45: $fe $d2
	db $fd                                           ; $5e47: $fd
	and l                                            ; $5e48: $a5
	ld a, [$d5aa]                                    ; $5e49: $fa $aa $d5
	push de                                          ; $5e4c: $d5
	xor d                                            ; $5e4d: $aa
	db $eb                                           ; $5e4e: $eb
	inc d                                            ; $5e4f: $14
	ld a, a                                          ; $5e50: $7f
	sbc h                                            ; $5e51: $9c
	add b                                            ; $5e52: $80
	cp a                                             ; $5e53: $bf
	ld b, b                                          ; $5e54: $40
	ld l, a                                          ; $5e55: $6f
	or h                                             ; $5e56: $b4
	sub l                                            ; $5e57: $95
	cp [hl]                                          ; $5e58: $be
	ld b, c                                          ; $5e59: $41
	ld a, l                                          ; $5e5a: $7d
	add d                                            ; $5e5b: $82
	ld a, [$f505]                                    ; $5e5c: $fa $05 $f5
	ld a, [bc]                                       ; $5e5f: $0a
	ld [$7415], a                                    ; $5e60: $ea $15 $74
	ld [hl], d                                       ; $5e63: $72
	ld a, d                                          ; $5e64: $7a
	call c, $cc7a                                    ; $5e65: $dc $7a $cc
	ld d, a                                          ; $5e68: $57
	db $fc                                           ; $5e69: $fc
	ld a, a                                          ; $5e6a: $7f
	call nc, $227c                                   ; $5e6b: $d4 $7c $22
	ld a, [hl]                                       ; $5e6e: $7e
	ret c                                            ; $5e6f: $d8

	ld a, [hl]                                       ; $5e70: $7e
	xor b                                            ; $5e71: $a8
	ld [hl], a                                       ; $5e72: $77
	ret nc                                           ; $5e73: $d0

	add [hl]                                         ; $5e74: $86
	cp $00                                           ; $5e75: $fe $00
	db $fc                                           ; $5e77: $fc
	nop                                              ; $5e78: $00
	db $fd                                           ; $5e79: $fd
	nop                                              ; $5e7a: $00
	ld hl, sp+$00                                    ; $5e7b: $f8 $00
	ldh a, [rP1]                                     ; $5e7d: $f0 $00

Call_050_5e7f:
	ldh [rP1], a                                     ; $5e7f: $e0 $00
	pop bc                                           ; $5e81: $c1
	nop                                              ; $5e82: $00
	rlca                                             ; $5e83: $07
	nop                                              ; $5e84: $00
	rrca                                             ; $5e85: $0f
	nop                                              ; $5e86: $00
	rra                                              ; $5e87: $1f
	nop                                              ; $5e88: $00
	jr nc, jr_050_5eb4                               ; $5e89: $30 $29

	db $10                                           ; $5e8b: $10
	add hl, de                                       ; $5e8c: $19
	nop                                              ; $5e8d: $00
	ld [hl], e                                       ; $5e8e: $73
	cp $98                                           ; $5e8f: $fe $98
	ld a, [hl+]                                      ; $5e91: $2a
	ld de, $112a                                     ; $5e92: $11 $2a $11
	ld a, [bc]                                       ; $5e95: $0a
	ld sp, $7ac0                                     ; $5e96: $31 $c0 $7a
	call z, $fe7f                                    ; $5e99: $cc $7f $fe
	sbc d                                            ; $5e9c: $9a
	ldh [$cf], a                                     ; $5e9d: $e0 $cf
	ldh [$cf], a                                     ; $5e9f: $e0 $cf
	ld h, b                                          ; $5ea1: $60
	ld a, e                                          ; $5ea2: $7b
	cp $9d                                           ; $5ea3: $fe $9d
	db $10                                           ; $5ea5: $10
	rst GetHLinHL                                          ; $5ea6: $cf
	ld l, $c0                                        ; $5ea7: $2e $c0
	sbc [hl]                                         ; $5ea9: $9e
	ld [$fe7b], sp                                   ; $5eaa: $08 $7b $fe
	ld a, a                                          ; $5ead: $7f
	ld [hl+], a                                      ; $5eae: $22
	ld [hl], a                                       ; $5eaf: $77
	db $fc                                           ; $5eb0: $fc
	db $db                                           ; $5eb1: $db
	rst $38                                          ; $5eb2: $ff
	sbc [hl]                                         ; $5eb3: $9e

jr_050_5eb4:
	adc c                                            ; $5eb4: $89
	ld a, e                                          ; $5eb5: $7b
	cp $9e                                           ; $5eb6: $fe $9e
	xor c                                            ; $5eb8: $a9
	ld [hl], e                                       ; $5eb9: $73
	db $fc                                           ; $5eba: $fc
	db $db                                           ; $5ebb: $db
	rst $38                                          ; $5ebc: $ff
	ld a, a                                          ; $5ebd: $7f
	scf                                              ; $5ebe: $37
	sbc d                                            ; $5ebf: $9a
	ret z                                            ; $5ec0: $c8

	rst FarCall                                          ; $5ec1: $f7
	rst SubAFromHL                                          ; $5ec2: $d7
	ld hl, sp-$30                                    ; $5ec3: $f8 $d0
	ld a, e                                          ; $5ec5: $7b
	cp $db                                           ; $5ec6: $fe $db
	rst $38                                          ; $5ec8: $ff
	ld [hl], a                                       ; $5ec9: $77
	rla                                              ; $5eca: $17
	sbc c                                            ; $5ecb: $99
	rst JumpTable                                          ; $5ecc: $c7
	ld a, $03                                        ; $5ecd: $3e $03
	ld [bc], a                                       ; $5ecf: $02
	nop                                              ; $5ed0: $00
	inc bc                                           ; $5ed1: $03
	jp c, $9dff                                      ; $5ed2: $da $ff $9d

	cp $7f                                           ; $5ed5: $fe $7f
	ld l, e                                          ; $5ed7: $6b
	cp $76                                           ; $5ed8: $fe $76
	di                                               ; $5eda: $f3
	ld a, c                                          ; $5edb: $79
	ld l, d                                          ; $5edc: $6a
	ld l, [hl]                                       ; $5edd: $6e
	ld [$2c68], a                                    ; $5ede: $ea $68 $2c
	inc bc                                           ; $5ee1: $03
	ldh a, [$5b]                                     ; $5ee2: $f0 $5b
	ldh a, [$9e]                                     ; $5ee4: $f0 $9e
	ld b, b                                          ; $5ee6: $40
	inc bc                                           ; $5ee7: $03
	ret nc                                           ; $5ee8: $d0

	inc bc                                           ; $5ee9: $03
	ldh a, [$df]                                     ; $5eea: $f0 $df
	cp $9b                                           ; $5eec: $fe $9b
	db $fd                                           ; $5eee: $fd
	ld b, $01                                        ; $5eef: $06 $01
	db $fc                                           ; $5ef1: $fc
	ld [hl], a                                       ; $5ef2: $77
	cp $9c                                           ; $5ef3: $fe $9c
	db $fd                                           ; $5ef5: $fd
	db $fc                                           ; $5ef6: $fc
	db $fd                                           ; $5ef7: $fd
	cp $6c                                           ; $5ef8: $fe $6c
	cp b                                             ; $5efa: $b8
	sbc b                                            ; $5efb: $98
	rst $38                                          ; $5efc: $ff
	sub b                                            ; $5efd: $90
	ret nz                                           ; $5efe: $c0

	add c                                            ; $5eff: $81
	ret nz                                           ; $5f00: $c0

	and b                                            ; $5f01: $a0
	ret nz                                           ; $5f02: $c0

	ld h, a                                          ; $5f03: $67
	ldh a, [$97]                                     ; $5f04: $f0 $97
	dec b                                            ; $5f06: $05
	ei                                               ; $5f07: $fb
	ld a, [de]                                       ; $5f08: $1a
	inc b                                            ; $5f09: $04
	inc a                                            ; $5f0a: $3c
	ld hl, sp+$60                                    ; $5f0b: $f8 $60
	ldh [$7a], a                                     ; $5f0d: $e0 $7a
	call $dfdf                                       ; $5f0f: $cd $df $df
	adc e                                            ; $5f12: $8b
	rst $38                                          ; $5f13: $ff
	adc $f1                                          ; $5f14: $ce $f1
	ret nz                                           ; $5f16: $c0

	ldh [$c0], a                                     ; $5f17: $e0 $c0
	ld a, a                                          ; $5f19: $7f
	ld e, b                                          ; $5f1a: $58
	rst SubAFromBC                                          ; $5f1b: $e7
	rst GetHLinHL                                          ; $5f1c: $cf
	ld a, a                                          ; $5f1d: $7f
	ld a, [bc]                                       ; $5f1e: $0a
	ld sp, $f308                                     ; $5f1f: $31 $08 $f3
	add sp, -$0d                                     ; $5f22: $e8 $f3
	cp b                                             ; $5f24: $b8
	di                                               ; $5f25: $f3
	ld sp, $8868                                     ; $5f26: $31 $68 $88
	ld a, [hl]                                       ; $5f29: $7e
	adc $67                                          ; $5f2a: $ce $67
	cp $99                                           ; $5f2c: $fe $99
	sub b                                            ; $5f2e: $90
	rst GetHLinHL                                          ; $5f2f: $cf
	sbc d                                            ; $5f30: $9a
	rst GetHLinHL                                          ; $5f31: $cf
	rst GetHLinHL                                          ; $5f32: $cf
	rst $38                                          ; $5f33: $ff
	ld d, [hl]                                       ; $5f34: $56
	call nz, $c99e                                   ; $5f35: $c4 $9e $c9
	ld a, e                                          ; $5f38: $7b
	cp $6e                                           ; $5f39: $fe $6e
	ret z                                            ; $5f3b: $c8

	ld e, a                                          ; $5f3c: $5f
	cp $6e                                           ; $5f3d: $fe $6e
	ret z                                            ; $5f3f: $c8

	ld e, a                                          ; $5f40: $5f
	cp $99                                           ; $5f41: $fe $99
	call nc, $e4f8                                   ; $5f43: $d4 $f8 $e4
	ld hl, sp-$38                                    ; $5f46: $f8 $c8
	db $fc                                           ; $5f48: $fc
	ld l, a                                          ; $5f49: $6f
	cp $82                                           ; $5f4a: $fe $82
	xor d                                            ; $5f4c: $aa
	db $fc                                           ; $5f4d: $fc
	and d                                            ; $5f4e: $a2
	db $fc                                           ; $5f4f: $fc
	jr nz, jr_050_5f55                               ; $5f50: $20 $03

	jr nz, @+$05                                     ; $5f52: $20 $03

	ld [bc], a                                       ; $5f54: $02

jr_050_5f55:
	ld bc, $0140                                     ; $5f55: $01 $40 $01
	ld [hl], b                                       ; $5f58: $70
	ld bc, $0110                                     ; $5f59: $01 $10 $01
	ld e, b                                          ; $5f5c: $58
	ld bc, $1168                                     ; $5f5d: $01 $68 $11
	ld a, [hl]                                       ; $5f60: $7e
	rst $38                                          ; $5f61: $ff
	ld a, a                                          ; $5f62: $7f
	cp $ff                                           ; $5f63: $fe $ff
	ld a, [hl]                                       ; $5f65: $7e
	cp $7f                                           ; $5f66: $fe $7f
	cp a                                             ; $5f68: $bf
	ld a, e                                          ; $5f69: $7b
	cp $9c                                           ; $5f6a: $fe $9c
	ccf                                              ; $5f6c: $3f
	rst $38                                          ; $5f6d: $ff
	ccf                                              ; $5f6e: $3f
	ld h, a                                          ; $5f6f: $67
	dec l                                            ; $5f70: $2d
	ld h, e                                          ; $5f71: $63
	jr nc, jr_050_5fee                               ; $5f72: $30 $7a

	and l                                            ; $5f74: $a5
	sub [hl]                                         ; $5f75: $96
	ld bc, $03fd                                     ; $5f76: $01 $fd $03
	ei                                               ; $5f79: $fb
	rlca                                             ; $5f7a: $07
	push af                                          ; $5f7b: $f5
	ld c, $ff                                        ; $5f7c: $0e $ff
	inc c                                            ; $5f7e: $0c
	db $db                                           ; $5f7f: $db
	rst $38                                          ; $5f80: $ff
	sbc [hl]                                         ; $5f81: $9e
	cp a                                             ; $5f82: $bf
	ld e, l                                          ; $5f83: $5d
	adc d                                            ; $5f84: $8a
	db $db                                           ; $5f85: $db
	rst $38                                          ; $5f86: $ff
	ld c, e                                          ; $5f87: $4b
	ret nc                                           ; $5f88: $d0

	ld b, a                                          ; $5f89: $47
	ldh a, [$9d]                                     ; $5f8a: $f0 $9d
	ld sp, hl                                        ; $5f8c: $f9
	rlca                                             ; $5f8d: $07
	ld c, a                                          ; $5f8e: $4f
	ldh a, [$99]                                     ; $5f8f: $f0 $99
	db $fd                                           ; $5f91: $fd
	cp $3f                                           ; $5f92: $fe $3f
	rst $38                                          ; $5f94: $ff
	rst SubAFromBC                                          ; $5f95: $e7
	rra                                              ; $5f96: $1f
	ld d, a                                          ; $5f97: $57
	ret nc                                           ; $5f98: $d0

	ld a, a                                          ; $5f99: $7f
	or b                                             ; $5f9a: $b0
	sbc c                                            ; $5f9b: $99
	rst SubAFromBC                                          ; $5f9c: $e7

Call_050_5f9d:
	ld hl, sp+$7e                                    ; $5f9d: $f8 $7e
	rst $38                                          ; $5f9f: $ff
	rst AddAOntoHL                                          ; $5fa0: $ef
	rra                                              ; $5fa1: $1f
	db $dd                                           ; $5fa2: $dd
	rst $38                                          ; $5fa3: $ff
	ld a, d                                          ; $5fa4: $7a
	call z, $3d96                                    ; $5fa5: $cc $96 $3d
	ld a, [$fd1d]                                    ; $5fa8: $fa $1d $fd
	rrca                                             ; $5fab: $0f
	ld a, a                                          ; $5fac: $7f
	add a                                            ; $5fad: $87
	sbc a                                            ; $5fae: $9f
	db $e3                                           ; $5faf: $e3
	db $dd                                           ; $5fb0: $dd
	rst $38                                          ; $5fb1: $ff
	ld a, [hl]                                       ; $5fb2: $7e
	jp z, $bd9d                                      ; $5fb3: $ca $9d $bd

	jp nz, $ffdd                                     ; $5fb6: $c2 $dd $ff

	ld a, a                                          ; $5fb9: $7f
	call z, $d16f                                    ; $5fba: $cc $6f $d1
	sbc e                                            ; $5fbd: $9b
	ld h, b                                          ; $5fbe: $60
	jr nc, @-$2f                                     ; $5fbf: $30 $cf

	jr nc, jr_050_602a                               ; $5fc1: $30 $67

	sbc c                                            ; $5fc3: $99
	db $dd                                           ; $5fc4: $dd
	rst $38                                          ; $5fc5: $ff
	sub [hl]                                         ; $5fc6: $96
	rst SubAFromDE                                          ; $5fc7: $df
	ld a, a                                          ; $5fc8: $7f
	ld c, a                                          ; $5fc9: $4f
	rst $38                                          ; $5fca: $ff
	rst JumpTable                                          ; $5fcb: $c7
	ld hl, sp-$03                                    ; $5fcc: $f8 $fd
	cp $fe                                           ; $5fce: $fe $fe
	ld h, e                                          ; $5fd0: $63
	or c                                             ; $5fd1: $b1
	ld l, a                                          ; $5fd2: $6f
	ld a, [hl]                                       ; $5fd3: $7e
	ld h, a                                          ; $5fd4: $67
	and c                                            ; $5fd5: $a1
	sub [hl]                                         ; $5fd6: $96
	db $fc                                           ; $5fd7: $fc
	rst $38                                          ; $5fd8: $ff
	ld hl, sp-$01                                    ; $5fd9: $f8 $ff
	db $fc                                           ; $5fdb: $fc
	ccf                                              ; $5fdc: $3f
	xor $1f                                          ; $5fdd: $ee $1f
	rlca                                             ; $5fdf: $07
	ld a, c                                          ; $5fe0: $79
	call z, $ffdd                                    ; $5fe1: $cc $dd $ff
	ld a, [hl]                                       ; $5fe4: $7e
	adc $9c                                          ; $5fe5: $ce $9c
	add c                                            ; $5fe7: $81
	cp $01                                           ; $5fe8: $fe $01
	ld a, c                                          ; $5fea: $79
	jp c, $ae7d                                      ; $5feb: $da $7d $ae

jr_050_5fee:
	ld a, [hl]                                       ; $5fee: $7e
	ld l, [hl]                                       ; $5fef: $6e
	sbc [hl]                                         ; $5ff0: $9e
	ldh a, [$7b]                                     ; $5ff1: $f0 $7b
	ldh [c], a                                       ; $5ff3: $e2
	ld h, [hl]                                       ; $5ff4: $66
	ret z                                            ; $5ff5: $c8

	ld [hl], e                                       ; $5ff6: $73
	ld l, a                                          ; $5ff7: $6f
	cp $66                                           ; $5ff8: $fe $66
	ret z                                            ; $5ffa: $c8

	ld [hl], a                                       ; $5ffb: $77
	cp e                                             ; $5ffc: $bb
	sbc b                                            ; $5ffd: $98
	db $10                                           ; $5ffe: $10
	rrca                                             ; $5fff: $0f
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	and h                                            ; $6002: $a4
	cp $74                                           ; $6003: $fe $74
	ld a, e                                          ; $6005: $7b
	cp $9c                                           ; $6006: $fe $9c
	ld [hl], l                                       ; $6008: $75
	cp $d0                                           ; $6009: $fe $d0
	ld a, c                                          ; $600b: $79
	ld e, d                                          ; $600c: $5a
	ld a, a                                          ; $600d: $7f
	xor $94                                          ; $600e: $ee $94
	inc b                                            ; $6010: $04
	inc bc                                           ; $6011: $03
	dec l                                            ; $6012: $2d
	db $10                                           ; $6013: $10
	ld bc, $0100                                     ; $6014: $01 $00 $01
	nop                                              ; $6017: $00
	ldh [$1f], a                                     ; $6018: $e0 $1f
	ccf                                              ; $601a: $3f
	ld a, e                                          ; $601b: $7b
	cp [hl]                                          ; $601c: $be
	ld [hl], a                                       ; $601d: $77
	sbc h                                            ; $601e: $9c
	ld a, h                                          ; $601f: $7c
	ld l, b                                          ; $6020: $68
	ld a, a                                          ; $6021: $7f
	cp $7f                                           ; $6022: $fe $7f
	ld h, e                                          ; $6024: $63
	ld a, a                                          ; $6025: $7f
	ldh a, [c]                                       ; $6026: $f2
	ld a, a                                          ; $6027: $7f
	or d                                             ; $6028: $b2
	ld d, [hl]                                       ; $6029: $56

jr_050_602a:
	db $fd                                           ; $602a: $fd
	inc bc                                           ; $602b: $03
	rst $38                                          ; $602c: $ff
	inc bc                                           ; $602d: $03
	rst $38                                          ; $602e: $ff
	inc bc                                           ; $602f: $03
	rst $38                                          ; $6030: $ff
	inc bc                                           ; $6031: $03
	rst $38                                          ; $6032: $ff
	inc bc                                           ; $6033: $03
	rst $38                                          ; $6034: $ff
	inc bc                                           ; $6035: $03
	rst $38                                          ; $6036: $ff
	call $80ff                                       ; $6037: $cd $ff $80
	rst SubAFromHL                                          ; $603a: $d7
	xor $db                                          ; $603b: $ee $db
	rst SubAFromBC                                          ; $603d: $e7
	rst GetHLinHL                                          ; $603e: $cf
	pop af                                           ; $603f: $f1
	rst AddAOntoHL                                          ; $6040: $ef
	ldh a, [$e7]                                     ; $6041: $f0 $e7
	ld hl, sp-$19                                    ; $6043: $f8 $e7
	ld hl, sp-$1d                                    ; $6045: $f8 $e3
	db $fc                                           ; $6047: $fc
	db $e3                                           ; $6048: $e3
	db $fc                                           ; $6049: $fc
	ldh [rP1], a                                     ; $604a: $e0 $00
	ld hl, sp+$00                                    ; $604c: $f8 $00
	cp h                                             ; $604e: $bc
	ret nz                                           ; $604f: $c0

	ld e, a                                          ; $6050: $5f
	ldh [$b7], a                                     ; $6051: $e0 $b7
	ld a, b                                          ; $6053: $78
	db $db                                           ; $6054: $db
	inc a                                            ; $6055: $3c
	rst FarCall                                          ; $6056: $f7
	ld c, $fb                                        ; $6057: $0e $fb
	sbc [hl]                                         ; $6059: $9e
	rlca                                             ; $605a: $07
	ld sp, hl                                        ; $605b: $f9
	sbc d                                            ; $605c: $9a
	add b                                            ; $605d: $80
	ccf                                              ; $605e: $3f
	add b                                            ; $605f: $80
	ccf                                              ; $6060: $3f
	ret nz                                           ; $6061: $c0

	ld a, e                                          ; $6062: $7b
	cp $63                                           ; $6063: $fe $63
	rst AddAOntoHL                                          ; $6065: $ef
	ld [hl], d                                       ; $6066: $72
	ret nz                                           ; $6067: $c0

	ld a, d                                          ; $6068: $7a
	ldh [$7a], a                                     ; $6069: $e0 $7a
	jp nz, $f06f                                     ; $606b: $c2 $6f $f0

	ld h, l                                          ; $606e: $65
	rst SubAFromHL                                          ; $606f: $d7
	ld [hl], d                                       ; $6070: $72
	adc c                                            ; $6071: $89
	ld h, e                                          ; $6072: $63
	ldh a, [$03]                                     ; $6073: $f0 $03
	rst $38                                          ; $6075: $ff
	inc bc                                           ; $6076: $03
	rst $38                                          ; $6077: $ff
	inc bc                                           ; $6078: $03
	rst $38                                          ; $6079: $ff
	inc bc                                           ; $607a: $03
	rst $38                                          ; $607b: $ff
	inc bc                                           ; $607c: $03
	rst $38                                          ; $607d: $ff
	inc bc                                           ; $607e: $03
	rst $38                                          ; $607f: $ff
	rst JumpTable                                          ; $6080: $c7
	rst $38                                          ; $6081: $ff
	ld a, [hl]                                       ; $6082: $7e
	adc $9a                                          ; $6083: $ce $9a
	pop hl                                           ; $6085: $e1
	cp $e1                                           ; $6086: $fe $e1
	cp $e0                                           ; $6088: $fe $e0
	ld a, c                                          ; $608a: $79
	ret nc                                           ; $608b: $d0

	ld l, a                                          ; $608c: $6f
	cp $79                                           ; $608d: $fe $79
	ld l, c                                          ; $608f: $69
	ld e, h                                          ; $6090: $5c
	ret nc                                           ; $6091: $d0

	ld [hl], d                                       ; $6092: $72
	rst $38                                          ; $6093: $ff
	sbc d                                            ; $6094: $9a
	ld a, a                                          ; $6095: $7f
	rst $38                                          ; $6096: $ff
	and c                                            ; $6097: $a1
	ld a, a                                          ; $6098: $7f
	add c                                            ; $6099: $81
	ld a, e                                          ; $609a: $7b
	cp $7f                                           ; $609b: $fe $7f
	ld a, [$fe77]                                    ; $609d: $fa $77 $fe
	inc bc                                           ; $60a0: $03
	xor a                                            ; $60a1: $af
	inc bc                                           ; $60a2: $03
	rst $38                                          ; $60a3: $ff
	inc bc                                           ; $60a4: $03
	rst $38                                          ; $60a5: $ff
	inc bc                                           ; $60a6: $03
	rst $38                                          ; $60a7: $ff
	inc bc                                           ; $60a8: $03
	rst $38                                          ; $60a9: $ff
	inc bc                                           ; $60aa: $03
	rst $38                                          ; $60ab: $ff
	inc bc                                           ; $60ac: $03
	rst $38                                          ; $60ad: $ff
	inc bc                                           ; $60ae: $03
	rst $38                                          ; $60af: $ff
	reti                                             ; $60b0: $d9


	rst $38                                          ; $60b1: $ff
	ld e, [hl]                                       ; $60b2: $5e
	add $6a                                          ; $60b3: $c6 $6a
	ret nz                                           ; $60b5: $c0

	ld c, [hl]                                       ; $60b6: $4e
	jp nz, $009e                                     ; $60b7: $c2 $9e $00

	ld l, [hl]                                       ; $60ba: $6e
	jp z, $fe5f                                      ; $60bb: $ca $5f $fe

	inc bc                                           ; $60be: $03
	xor a                                            ; $60bf: $af
	jp nc, $27ff                                     ; $60c0: $d2 $ff $27

	nop                                              ; $60c3: $00
	db $db                                           ; $60c4: $db
	ld [hl], a                                       ; $60c5: $77
	sbc e                                            ; $60c6: $9b
	ld h, l                                          ; $60c7: $65
	ld [hl], e                                       ; $60c8: $73
	inc sp                                           ; $60c9: $33
	inc sp                                           ; $60ca: $33
	sbc $77                                          ; $60cb: $de $77
	sbc h                                            ; $60cd: $9c
	halt                                             ; $60ce: $76
	ld h, [hl]                                       ; $60cf: $66
	ld h, [hl]                                       ; $60d0: $66
	ld l, a                                          ; $60d1: $6f
	or $dd                                           ; $60d2: $f6 $dd
	ld h, [hl]                                       ; $60d4: $66
	ld [hl], a                                       ; $60d5: $77
	or $db                                           ; $60d6: $f6 $db
	ld h, [hl]                                       ; $60d8: $66
	ld e, a                                          ; $60d9: $5f
	or $9e                                           ; $60da: $f6 $9e
	ld d, l                                          ; $60dc: $55
	ld d, e                                          ; $60dd: $53
	or $db                                           ; $60de: $f6 $db
	inc sp                                           ; $60e0: $33
	ld e, a                                          ; $60e1: $5f
	or $9e                                           ; $60e2: $f6 $9e
	inc sp                                           ; $60e4: $33
	ld a, e                                          ; $60e5: $7b
	or $c3                                           ; $60e6: $f6 $c3
	ld b, h                                          ; $60e8: $44
	cp e                                             ; $60e9: $bb
	ld b, $c1                                        ; $60ea: $06 $c1
	rst $38                                          ; $60ec: $ff
	inc bc                                           ; $60ed: $03
	rst $38                                          ; $60ee: $ff
	inc bc                                           ; $60ef: $03
	rst $38                                          ; $60f0: $ff
	inc bc                                           ; $60f1: $03
	rst $38                                          ; $60f2: $ff
	inc bc                                           ; $60f3: $03
	rst $38                                          ; $60f4: $ff
	inc bc                                           ; $60f5: $03
	rst $38                                          ; $60f6: $ff
	inc bc                                           ; $60f7: $03
	rst $38                                          ; $60f8: $ff
	inc bc                                           ; $60f9: $03
	rst $38                                          ; $60fa: $ff
	inc bc                                           ; $60fb: $03
	rst $38                                          ; $60fc: $ff
	inc bc                                           ; $60fd: $03
	rst $38                                          ; $60fe: $ff
	inc bc                                           ; $60ff: $03
	rst $38                                          ; $6100: $ff
	inc bc                                           ; $6101: $03
	rst $38                                          ; $6102: $ff
	inc bc                                           ; $6103: $03
	rst $38                                          ; $6104: $ff
	inc bc                                           ; $6105: $03
	rst $38                                          ; $6106: $ff
	inc bc                                           ; $6107: $03
	rst $38                                          ; $6108: $ff
	inc bc                                           ; $6109: $03
	rst $38                                          ; $610a: $ff
	inc bc                                           ; $610b: $03
	rst $38                                          ; $610c: $ff
	inc bc                                           ; $610d: $03
	rst $38                                          ; $610e: $ff
	inc bc                                           ; $610f: $03
	rst $38                                          ; $6110: $ff
	db $d3                                           ; $6111: $d3

Call_050_6112:
	rst $38                                          ; $6112: $ff
	sbc h                                            ; $6113: $9c
	xor d                                            ; $6114: $aa
	rst $38                                          ; $6115: $ff
	nop                                              ; $6116: $00
	sbc $ff                                          ; $6117: $de $ff
	sbc [hl]                                         ; $6119: $9e
	ld d, l                                          ; $611a: $55
	ld a, e                                          ; $611b: $7b
	ld a, [$1798]                                    ; $611c: $fa $98 $17
	rst $38                                          ; $611f: $ff
	rrca                                             ; $6120: $0f
	ret nz                                           ; $6121: $c0

	rst $38                                          ; $6122: $ff
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	ld [hl], e                                       ; $6125: $73
	ldh a, [$6f]                                     ; $6126: $f0 $6f
	ld a, [$f977]                                    ; $6128: $fa $77 $f9
	ld h, a                                          ; $612b: $67
	ldh a, [$9b]                                     ; $612c: $f0 $9b
	inc bc                                           ; $612e: $03
	rst $38                                          ; $612f: $ff
	nop                                              ; $6130: $00
	ldh [$57], a                                     ; $6131: $e0 $57
	ldh a, [$df]                                     ; $6133: $f0 $df
	db $fc                                           ; $6135: $fc
	sbc c                                            ; $6136: $99
	db $f4                                           ; $6137: $f4
	ld c, $f4                                        ; $6138: $0e $f4
	inc c                                            ; $613a: $0c
	db $f4                                           ; $613b: $f4
	ld c, $67                                        ; $613c: $0e $67
	ldh a, [$9e]                                     ; $613e: $f0 $9e
	dec bc                                           ; $6140: $0b
	ld a, e                                          ; $6141: $7b
	ret nz                                           ; $6142: $c0

	sbc e                                            ; $6143: $9b
	ld [bc], a                                       ; $6144: $02
	ccf                                              ; $6145: $3f
	sub a                                            ; $6146: $97
	rra                                              ; $6147: $1f
	sbc $ff                                          ; $6148: $de $ff
	rst SubAFromDE                                          ; $614a: $df
	ld a, a                                          ; $614b: $7f
	ld a, a                                          ; $614c: $7f
	db $fd                                           ; $614d: $fd
	jp c, Jump_050_7fff                              ; $614e: $da $ff $7f

	xor b                                            ; $6151: $a8
	ld a, a                                          ; $6152: $7f
	cp $9e                                           ; $6153: $fe $9e
	xor a                                            ; $6155: $af
	ld [hl], e                                       ; $6156: $73
	sbc d                                            ; $6157: $9a
	rst SubAFromDE                                          ; $6158: $df
	rst $38                                          ; $6159: $ff
	sbc d                                            ; $615a: $9a
	ld l, e                                          ; $615b: $6b
	rst $38                                          ; $615c: $ff
	add sp, -$02                                     ; $615d: $e8 $fe
	ld a, d                                          ; $615f: $7a
	ld a, e                                          ; $6160: $7b
	ldh a, [rPCM34]                                  ; $6161: $f0 $77
	db $f4                                           ; $6163: $f4
	ld a, a                                          ; $6164: $7f
	db $fc                                           ; $6165: $fc
	sub a                                            ; $6166: $97
	push af                                          ; $6167: $f5
	rst $38                                          ; $6168: $ff
	cp [hl]                                          ; $6169: $be
	rst $38                                          ; $616a: $ff
	dec l                                            ; $616b: $2d
	cp a                                             ; $616c: $bf
	ccf                                              ; $616d: $3f
	jr nc, jr_050_61d7                               ; $616e: $30 $67

	ldh a, [$7f]                                     ; $6170: $f0 $7f
	adc $7b                                          ; $6172: $ce $7b
	halt                                             ; $6174: $76
	sbc c                                            ; $6175: $99
	ld hl, sp-$01                                    ; $6176: $f8 $ff
	nop                                              ; $6178: $00
	ld d, l                                          ; $6179: $55
	rst $38                                          ; $617a: $ff
	add b                                            ; $617b: $80
	ld l, e                                          ; $617c: $6b
	ldh a, [$67]                                     ; $617d: $f0 $67
	add b                                            ; $617f: $80
	sbc [hl]                                         ; $6180: $9e
	jr z, jr_050_61ee                                ; $6181: $28 $6b

	ret nz                                           ; $6183: $c0

	sbc [hl]                                         ; $6184: $9e
	db $f4                                           ; $6185: $f4
	ld [hl], e                                       ; $6186: $73
	ldh a, [$6f]                                     ; $6187: $f0 $6f
	ld d, b                                          ; $6189: $50
	ld [hl], a                                       ; $618a: $77
	ld d, d                                          ; $618b: $52
	sbc [hl]                                         ; $618c: $9e
	rlca                                             ; $618d: $07
	ld a, e                                          ; $618e: $7b
	ld d, d                                          ; $618f: $52
	ld [hl], a                                       ; $6190: $77
	ldh a, [$7f]                                     ; $6191: $f0 $7f
	adc $73                                          ; $6193: $ce $73
	ld [hl], b                                       ; $6195: $70
	sub l                                            ; $6196: $95
	cp $fa                                           ; $6197: $fe $fa
	ld b, $fc                                        ; $6199: $06 $fc
	ld b, $fa                                        ; $619b: $06 $fa
	ld b, $aa                                        ; $619d: $06 $aa
	rst $38                                          ; $619f: $ff
	ld d, b                                          ; $61a0: $50
	ld l, e                                          ; $61a1: $6b
	ld [hl], b                                       ; $61a2: $70
	ld a, a                                          ; $61a3: $7f
	ld [hl], l                                       ; $61a4: $75
	sbc b                                            ; $61a5: $98
	ld c, e                                          ; $61a6: $4b
	cp a                                             ; $61a7: $bf
	ld d, a                                          ; $61a8: $57
	cp a                                             ; $61a9: $bf
	ccf                                              ; $61aa: $3f
	rst $38                                          ; $61ab: $ff
	ccf                                              ; $61ac: $3f
	ld a, e                                          ; $61ad: $7b
	or h                                             ; $61ae: $b4
	ld [hl], a                                       ; $61af: $77
	ld a, [$ffdd]                                    ; $61b0: $fa $dd $ff
	sbc [hl]                                         ; $61b3: $9e
	xor e                                            ; $61b4: $ab
	ld a, e                                          ; $61b5: $7b
	or [hl]                                          ; $61b6: $b6
	ld [hl], a                                       ; $61b7: $77
	ret nc                                           ; $61b8: $d0

	ld a, a                                          ; $61b9: $7f
	db $fc                                           ; $61ba: $fc
	sbc b                                            ; $61bb: $98
	xor [hl]                                         ; $61bc: $ae
	rst $38                                          ; $61bd: $ff
	ld a, [$e0ff]                                    ; $61be: $fa $ff $e0
	rst $38                                          ; $61c1: $ff
	cp d                                             ; $61c2: $ba
	ld h, e                                          ; $61c3: $63
	ldh a, [$9e]                                     ; $61c4: $f0 $9e
	cp $7b                                           ; $61c6: $fe $7b
	call z, $059b                                    ; $61c8: $cc $9b $05
	rra                                              ; $61cb: $1f
	ld c, a                                          ; $61cc: $4f
	jr jr_050_6236                                   ; $61cd: $18 $67

	ldh a, [$9e]                                     ; $61cf: $f0 $9e
	xor b                                            ; $61d1: $a8
	ld a, e                                          ; $61d2: $7b
	ldh a, [$9e]                                     ; $61d3: $f0 $9e
	ld b, b                                          ; $61d5: $40
	ld a, e                                          ; $61d6: $7b

jr_050_61d7:
	or a                                             ; $61d7: $b7
	ld a, a                                          ; $61d8: $7f
	ldh a, [$7b]                                     ; $61d9: $f0 $7b
	ld a, [$e072]                                    ; $61db: $fa $72 $e0
	ld a, e                                          ; $61de: $7b
	cp $7b                                           ; $61df: $fe $7b
	ld h, b                                          ; $61e1: $60
	ld l, a                                          ; $61e2: $6f
	add b                                            ; $61e3: $80
	ld a, a                                          ; $61e4: $7f
	sbc h                                            ; $61e5: $9c
	ld a, a                                          ; $61e6: $7f
	ld a, [$029c]                                    ; $61e7: $fa $9c $02
	rst $38                                          ; $61ea: $ff
	ccf                                              ; $61eb: $3f
	ld [hl], e                                       ; $61ec: $73
	db $eb                                           ; $61ed: $eb

jr_050_61ee:
	ld [hl], a                                       ; $61ee: $77
	cp $96                                           ; $61ef: $fe $96
	ld a, [$f505]                                    ; $61f1: $fa $05 $f5
	ld a, [bc]                                       ; $61f4: $0a
	xor e                                            ; $61f5: $ab
	ld d, a                                          ; $61f6: $57
	ld d, a                                          ; $61f7: $57
	xor a                                            ; $61f8: $af
	rlca                                             ; $61f9: $07
	ld l, [hl]                                       ; $61fa: $6e
	push bc                                          ; $61fb: $c5
	ld a, e                                          ; $61fc: $7b
	cp $97                                           ; $61fd: $fe $97
	ld e, a                                          ; $61ff: $5f
	and b                                            ; $6200: $a0
	rrca                                             ; $6201: $0f
	ldh a, [hDisp0_OBP1]                                     ; $6202: $f0 $87
	ld hl, sp-$3d                                    ; $6204: $f8 $c3
	db $fc                                           ; $6206: $fc
	ld h, a                                          ; $6207: $67
	ldh a, [$67]                                     ; $6208: $f0 $67
	cp $9e                                           ; $620a: $fe $9e
	ldh a, [$7a]                                     ; $620c: $f0 $7a
	call z, $f89e                                    ; $620e: $cc $9e $f8
	ld a, e                                          ; $6211: $7b
	db $fc                                           ; $6212: $fc
	ld [hl], a                                       ; $6213: $77
	ld hl, sp+$77                                    ; $6214: $f8 $77
	db $fc                                           ; $6216: $fc
	sbc [hl]                                         ; $6217: $9e
	add d                                            ; $6218: $82

jr_050_6219:
	ld a, d                                          ; $6219: $7a
	call z, $fc57                                    ; $621a: $cc $57 $fc
	ld [hl], a                                       ; $621d: $77
	add b                                            ; $621e: $80
	ld d, a                                          ; $621f: $57
	db $fc                                           ; $6220: $fc
	sbc [hl]                                         ; $6221: $9e
	cp b                                             ; $6222: $b8
	ld a, d                                          ; $6223: $7a
	call z, $fc57                                    ; $6224: $cc $57 $fc
	sbc e                                            ; $6227: $9b
	ld a, a                                          ; $6228: $7f
	jr nc, jr_050_626a                               ; $6229: $30 $3f

	jr nc, @+$59                                     ; $622b: $30 $57

	db $fc                                           ; $622d: $fc
	ld b, a                                          ; $622e: $47
	and b                                            ; $622f: $a0
	ld e, a                                          ; $6230: $5f
	cp $99                                           ; $6231: $fe $99
	ei                                               ; $6233: $fb
	rlca                                             ; $6234: $07
	rst $38                                          ; $6235: $ff

jr_050_6236:
	rlca                                             ; $6236: $07
	rst FarCall                                          ; $6237: $f7
	rrca                                             ; $6238: $0f
	ld e, a                                          ; $6239: $5f
	ldh a, [$9a]                                     ; $623a: $f0 $9a
	db $f4                                           ; $623c: $f4
	adc e                                            ; $623d: $8b
	ret nz                                           ; $623e: $c0

	rst $38                                          ; $623f: $ff
	ret nz                                           ; $6240: $c0

	ld h, e                                          ; $6241: $63
	ld h, b                                          ; $6242: $60
	ld [hl], a                                       ; $6243: $77
	cp $9b                                           ; $6244: $fe $9b
	ld a, a                                          ; $6246: $7f
	add b                                            ; $6247: $80
	ld a, a                                          ; $6248: $7f
	add b                                            ; $6249: $80
	halt                                             ; $624a: $76
	call z, $fc7f                                    ; $624b: $cc $7f $fc
	sbc [hl]                                         ; $624e: $9e
	ld hl, sp+$63                                    ; $624f: $f8 $63
	db $fc                                           ; $6251: $fc
	sbc d                                            ; $6252: $9a
	ld e, e                                          ; $6253: $5b
	sbc a                                            ; $6254: $9f
	ld d, a                                          ; $6255: $57
	cp a                                             ; $6256: $bf
	ld c, e                                          ; $6257: $4b
	ld h, e                                          ; $6258: $63
	db $fc                                           ; $6259: $fc
	sbc l                                            ; $625a: $9d
	ld b, a                                          ; $625b: $47
	cp a                                             ; $625c: $bf
	ld c, a                                          ; $625d: $4f
	ld [hl], d                                       ; $625e: $72
	ld a, a                                          ; $625f: $7f
	db $fc                                           ; $6260: $fc
	sbc [hl]                                         ; $6261: $9e
	ld d, [hl]                                       ; $6262: $56
	ld a, d                                          ; $6263: $7a
	call z, $549e                                    ; $6264: $cc $9e $54
	ld a, e                                          ; $6267: $7b
	db $fc                                           ; $6268: $fc
	ld a, [hl]                                       ; $6269: $7e

jr_050_626a:
	cp $6f                                           ; $626a: $fe $6f
	db $fc                                           ; $626c: $fc
	sbc d                                            ; $626d: $9a
	ld d, a                                          ; $626e: $57
	sbc b                                            ; $626f: $98
	ld b, a                                          ; $6270: $47
	jr jr_050_62ba                                   ; $6271: $18 $47

	ld [hl], e                                       ; $6273: $73
	db $fc                                           ; $6274: $fc
	sbc [hl]                                         ; $6275: $9e
	ld d, a                                          ; $6276: $57
	ld [hl], e                                       ; $6277: $73
	db $fc                                           ; $6278: $fc
	cpl                                              ; $6279: $2f
	ld [hl], h                                       ; $627a: $74
	sbc c                                            ; $627b: $99
	di                                               ; $627c: $f3
	inc c                                            ; $627d: $0c
	di                                               ; $627e: $f3
	inc c                                            ; $627f: $0c
	db $e3                                           ; $6280: $e3
	inc e                                            ; $6281: $1c
	ld [hl], a                                       ; $6282: $77
	cp $77                                           ; $6283: $fe $77
	ldh a, [c]                                       ; $6285: $f2
	sbc c                                            ; $6286: $99
	rst SubAFromDE                                          ; $6287: $df
	jr nz, jr_050_6219                               ; $6288: $20 $8f

	ld [hl], b                                       ; $628a: $70
	rrca                                             ; $628b: $0f
	ldh a, [rOCPD]                                   ; $628c: $f0 $6b
	cp $81                                           ; $628e: $fe $81
	rst FarCall                                          ; $6290: $f7
	rra                                              ; $6291: $1f
	rst SubAFromBC                                          ; $6292: $e7
	rra                                              ; $6293: $1f
	rst SubAFromBC                                          ; $6294: $e7
	rrca                                             ; $6295: $0f
	rst FarCall                                          ; $6296: $f7
	rlca                                             ; $6297: $07
	rst $38                                          ; $6298: $ff
	add e                                            ; $6299: $83
	ld a, a                                          ; $629a: $7f
	jp $e33f                                         ; $629b: $c3 $3f $e3


	rra                                              ; $629e: $1f
	pop hl                                           ; $629f: $e1
	sbc $f0                                          ; $62a0: $de $f0
	rst GetHLinHL                                          ; $62a2: $cf
	ld hl, sp-$39                                    ; $62a3: $f8 $c7
	ldh a, [$cf]                                     ; $62a5: $f0 $cf
	and c                                            ; $62a7: $a1
	sbc $81                                          ; $62a8: $de $81
	cp $83                                           ; $62aa: $fe $83
	db $fc                                           ; $62ac: $fc
	add e                                            ; $62ad: $83
	ld [hl-], a                                      ; $62ae: $32
	ret nz                                           ; $62af: $c0

	ld [hl], e                                       ; $62b0: $73
	db $fc                                           ; $62b1: $fc
	sbc c                                            ; $62b2: $99
	inc e                                            ; $62b3: $1c
	db $e4                                           ; $62b4: $e4
	ld c, $e0                                        ; $62b5: $0e $e0
	inc c                                            ; $62b7: $0c
	db $e4                                           ; $62b8: $e4
	ld l, d                                          ; $62b9: $6a

jr_050_62ba:
	ret nz                                           ; $62ba: $c0

	sbc [hl]                                         ; $62bb: $9e
	add a                                            ; $62bc: $87
	ld h, e                                          ; $62bd: $63
	db $fc                                           ; $62be: $fc
	ld e, $c0                                        ; $62bf: $1e $c0
	sbc h                                            ; $62c1: $9c
	ld l, d                                          ; $62c2: $6a
	rst $38                                          ; $62c3: $ff
	or b                                             ; $62c4: $b0
	ld a, e                                          ; $62c5: $7b
	db $fc                                           ; $62c6: $fc
	ld h, d                                          ; $62c7: $62
	call nz, $3898                                   ; $62c8: $c4 $98 $38
	ccf                                              ; $62cb: $3f
	jr c, jr_050_634d                                ; $62cc: $38 $7f

	jr c, jr_050_630b                                ; $62ce: $38 $3b

	jr c, jr_050_6319                                ; $62d0: $38 $47

	and b                                            ; $62d2: $a0
	ld a, [hl]                                       ; $62d3: $7e

jr_050_62d4:
	adc $7a                                          ; $62d4: $ce $7a
	call z, $c672                                    ; $62d6: $cc $72 $c6
	sub c                                            ; $62d9: $91
	rst JumpTable                                          ; $62da: $c7
	ccf                                              ; $62db: $3f
	add a                                            ; $62dc: $87
	ld a, a                                          ; $62dd: $7f
	rlca                                             ; $62de: $07
	rst $38                                          ; $62df: $ff
	call c, $f8e3                                    ; $62e0: $dc $e3 $f8
	rst JumpTable                                          ; $62e3: $c7
	or b                                             ; $62e4: $b0
	rst GetHLinHL                                          ; $62e5: $cf
	add c                                            ; $62e6: $81
	cp $77                                           ; $62e7: $fe $77
	ld [hl], d                                       ; $62e9: $72
	ld a, [hl]                                       ; $62ea: $7e
	jr nc, jr_050_636c                               ; $62eb: $30 $7f

	ld d, b                                          ; $62ed: $50
	ld a, [hl]                                       ; $62ee: $7e
	adc $57                                          ; $62ef: $ce $57
	jp nc, $fe9d                                     ; $62f1: $d2 $9d $fe

	nop                                              ; $62f4: $00
	ld h, [hl]                                       ; $62f5: $66
	ret z                                            ; $62f6: $c8

	sbc l                                            ; $62f7: $9d
	db $f4                                           ; $62f8: $f4
	ld b, $78                                        ; $62f9: $06 $78
	ldh a, [$7f]                                     ; $62fb: $f0 $7f
	ld l, d                                          ; $62fd: $6a
	sbc l                                            ; $62fe: $9d

Jump_050_62ff:
	ld c, $43                                        ; $62ff: $0e $43
	ld a, d                                          ; $6301: $7a
	call z, $fc6f                                    ; $6302: $cc $6f $fc
	sbc [hl]                                         ; $6305: $9e
	ld b, d                                          ; $6306: $42
	ld [hl], e                                       ; $6307: $73
	db $fc                                           ; $6308: $fc
	ld b, [hl]                                       ; $6309: $46
	ret nz                                           ; $630a: $c0

jr_050_630b:
	sbc l                                            ; $630b: $9d
	ld d, b                                          ; $630c: $50
	cp $7a                                           ; $630d: $fe $7a
	ret z                                            ; $630f: $c8

	ld h, e                                          ; $6310: $63

jr_050_6311:
	db $fc                                           ; $6311: $fc
	sbc l                                            ; $6312: $9d
	cp b                                             ; $6313: $b8
	rst $38                                          ; $6314: $ff

jr_050_6315:
	ld h, [hl]                                       ; $6315: $66
	ret z                                            ; $6316: $c8

	ld [hl], a                                       ; $6317: $77
	db $fc                                           ; $6318: $fc

jr_050_6319:
	sbc h                                            ; $6319: $9c
	ld b, e                                          ; $631a: $43

jr_050_631b:
	sbc h                                            ; $631b: $9c
	ld b, e                                          ; $631c: $43
	ld [hl], d                                       ; $631d: $72
	ldh [$57], a                                     ; $631e: $e0 $57
	cp $99                                           ; $6320: $fe $99
	pop hl                                           ; $6322: $e1
	ld e, $e0                                        ; $6323: $1e $e0
	rra                                              ; $6325: $1f
	ldh [$1f], a                                     ; $6326: $e0 $1f
	halt                                             ; $6328: $76
	rst SubAFromHL                                          ; $6329: $d7
	sub a                                            ; $632a: $97
	ld hl, sp+$07                                    ; $632b: $f8 $07
	ld hl, sp+$07                                    ; $632d: $f8 $07
	db $fc                                           ; $632f: $fc
	inc bc                                           ; $6330: $03
	rrca                                             ; $6331: $0f
	ldh a, [$7b]                                     ; $6332: $f0 $7b
	ld sp, hl                                        ; $6334: $f9
	ld e, e                                          ; $6335: $5b

jr_050_6336:
	cp $80                                           ; $6336: $fe $80
	di                                               ; $6338: $f3
	rrca                                             ; $6339: $0f
	di                                               ; $633a: $f3
	rrca                                             ; $633b: $0f
	ei                                               ; $633c: $fb
	rlca                                             ; $633d: $07
	cp c                                             ; $633e: $b9
	rlca                                             ; $633f: $07
	ld d, c                                          ; $6340: $51
	rlca                                             ; $6341: $07
	and b                                            ; $6342: $a0
	ld a, [bc]                                       ; $6343: $0a
	nop                                              ; $6344: $00
	dec d                                            ; $6345: $15
	nop                                              ; $6346: $00
	ld a, [hl+]                                      ; $6347: $2a
	add a                                            ; $6348: $87
	ld hl, sp-$71                                    ; $6349: $f8 $8f
	ldh a, [$0a]                                     ; $634b: $f0 $0a

jr_050_634d:
	ldh a, [$15]                                     ; $634d: $f0 $15
	ldh [$08], a                                     ; $634f: $e0 $08
	ret nz                                           ; $6351: $c0

	jr nz, jr_050_62d4                               ; $6352: $20 $80

	ld b, b                                          ; $6354: $40
	nop                                              ; $6355: $00
	and b                                            ; $6356: $a0
	ld a, l                                          ; $6357: $7d
	ld h, [hl]                                       ; $6358: $66
	sbc e                                            ; $6359: $9b
	nop                                              ; $635a: $00
	ld d, h                                          ; $635b: $54
	nop                                              ; $635c: $00
	xor b                                            ; $635d: $a8
	or $99                                           ; $635e: $f6 $99
	ld b, $1d                                        ; $6360: $06 $1d
	dec b                                            ; $6362: $05
	ld c, $06                                        ; $6363: $0e $06
	dec c                                            ; $6365: $0d
	ld e, a                                          ; $6366: $5f
	db $fc                                           ; $6367: $fc
	sbc l                                            ; $6368: $9d
	add d                                            ; $6369: $82
	rra                                              ; $636a: $1f
	ld a, d                                          ; $636b: $7a

jr_050_636c:
	ret z                                            ; $636c: $c8

	ld e, e                                          ; $636d: $5b
	db $fc                                           ; $636e: $fc
	ld h, a                                          ; $636f: $67
	ld d, [hl]                                       ; $6370: $56
	sbc [hl]                                         ; $6371: $9e
	add d                                            ; $6372: $82
	ld l, e                                          ; $6373: $6b
	ld a, a                                          ; $6374: $7f
	halt                                             ; $6375: $76
	call z, $fc6f                                    ; $6376: $cc $6f $fc
	sbc [hl]                                         ; $6379: $9e
	ld l, b                                          ; $637a: $68
	ld [hl], e                                       ; $637b: $73
	db $fc                                           ; $637c: $fc
	sub [hl]                                         ; $637d: $96
	sub b                                            ; $637e: $90
	jr c, jr_050_6311                                ; $637f: $38 $90

	jr c, jr_050_631b                                ; $6381: $38 $98

	jr nc, jr_050_6315                               ; $6383: $30 $90

	jr nc, @-$66                                     ; $6385: $30 $98

	ld a, e                                          ; $6387: $7b
	cp $9e                                           ; $6388: $fe $9e
	cp b                                             ; $638a: $b8
	ld a, e                                          ; $638b: $7b
	cp $94                                           ; $638c: $fe $94
	cp [hl]                                          ; $638e: $be
	ld bc, $0156                                     ; $638f: $01 $56 $01
	ld a, [hl+]                                      ; $6392: $2a
	ld bc, $0114                                     ; $6393: $01 $14 $01
	ld a, [bc]                                       ; $6396: $0a
	nop                                              ; $6397: $00
	dec b                                            ; $6398: $05
	db $fc                                           ; $6399: $fc
	ld a, [hl]                                       ; $639a: $7e
	adc $91                                          ; $639b: $ce $91
	ld b, $ff                                        ; $639d: $06 $ff
	ld [hl], $cf                                     ; $639f: $36 $cf
	ld a, d                                          ; $63a1: $7a
	add a                                            ; $63a2: $87
	inc l                                            ; $63a3: $2c
	add e                                            ; $63a4: $83
	inc d                                            ; $63a5: $14
	ld b, e                                          ; $63a6: $43
	and b                                            ; $63a7: $a0
	ld [bc], a                                       ; $63a8: $02
	nop                                              ; $63a9: $00
	dec b                                            ; $63aa: $05
	ld l, [hl]                                       ; $63ab: $6e
	ld a, [de]                                       ; $63ac: $1a
	ld a, a                                          ; $63ad: $7f
	ld l, [hl]                                       ; $63ae: $6e
	sub [hl]                                         ; $63af: $96
	dec b                                            ; $63b0: $05
	ldh a, [$0a]                                     ; $63b1: $f0 $0a
	ret nc                                           ; $63b3: $d0

	jr nz, jr_050_6336                               ; $63b4: $20 $80

	ld d, b                                          ; $63b6: $50
	nop                                              ; $63b7: $00
	db $fd                                           ; $63b8: $fd
	ld a, e                                          ; $63b9: $7b
	ld l, [hl]                                       ; $63ba: $6e
	sbc h                                            ; $63bb: $9c
	push de                                          ; $63bc: $d5
	nop                                              ; $63bd: $00
	xor d                                            ; $63be: $aa
	ld a, e                                          ; $63bf: $7b
	ld l, d                                          ; $63c0: $6a
	sbc [hl]                                         ; $63c1: $9e
	add b                                            ; $63c2: $80
	db $fc                                           ; $63c3: $fc
	ld a, a                                          ; $63c4: $7f
	ld a, [hl]                                       ; $63c5: $7e
	ld a, e                                          ; $63c6: $7b
	cp $9e                                           ; $63c7: $fe $9e
	ld b, $5f                                        ; $63c9: $06 $5f
	cp $66                                           ; $63cb: $fe $66
	ret z                                            ; $63cd: $c8

	ld b, [hl]                                       ; $63ce: $46
	ret nz                                           ; $63cf: $c0

	sbc [hl]                                         ; $63d0: $9e
	ld bc, $706b                                     ; $63d1: $01 $6b $70
	halt                                             ; $63d4: $76
	call z, $fc57                                    ; $63d5: $cc $57 $fc
	halt                                             ; $63d8: $76
	call z, $fc7f                                    ; $63d9: $cc $7f $fc
	ld e, [hl]                                       ; $63dc: $5e
	cp h                                             ; $63dd: $bc
	ld b, [hl]                                       ; $63de: $46
	ret nz                                           ; $63df: $c0

	ld a, [hl]                                       ; $63e0: $7e
	adc $57                                          ; $63e1: $ce $57
	cp $9d                                           ; $63e3: $fe $9d
	cp $01                                           ; $63e5: $fe $01
	ld e, [hl]                                       ; $63e7: $5e
	add $7f                                          ; $63e8: $c6 $7f
	pop af                                           ; $63ea: $f1

Call_050_63eb:
	ld a, [hl]                                       ; $63eb: $7e
	ld b, c                                          ; $63ec: $41
	sbc d                                            ; $63ed: $9a
	ld bc, $01f4                                     ; $63ee: $01 $f4 $01
	inc d                                            ; $63f1: $14
	nop                                              ; $63f2: $00
	ld a, e                                          ; $63f3: $7b
	ld b, c                                          ; $63f4: $41
	sbc d                                            ; $63f5: $9a
	nop                                              ; $63f6: $00
	ld a, [bc]                                       ; $63f7: $0a
	ld bc, $0004                                     ; $63f8: $01 $04 $00
	ld [hl], a                                       ; $63fb: $77
	dec a                                            ; $63fc: $3d
	sbc l                                            ; $63fd: $9d
	ld [$7b40], sp                                   ; $63fe: $08 $40 $7b
	ld l, b                                          ; $6401: $68
	ld e, a                                          ; $6402: $5f
	db $fc                                           ; $6403: $fc
	rst AddAOntoHL                                          ; $6404: $ef
	ld d, [hl]                                       ; $6405: $56
	call nz, $0e9c                                   ; $6406: $c4 $9c $0e
	dec c                                            ; $6409: $0d
	dec c                                            ; $640a: $0d
	ld e, [hl]                                       ; $640b: $5e
	ret nz                                           ; $640c: $c0

	ld l, c                                          ; $640d: $69
	add b                                            ; $640e: $80
	ld c, a                                          ; $640f: $4f
	add c                                            ; $6410: $81
	ld a, l                                          ; $6411: $7d
	db $d3                                           ; $6412: $d3
	ld h, [hl]                                       ; $6413: $66
	ret z                                            ; $6414: $c8

	ld [hl], a                                       ; $6415: $77
	db $fc                                           ; $6416: $fc
	ld [hl], l                                       ; $6417: $75
	ld a, h                                          ; $6418: $7c
	halt                                             ; $6419: $76
	call z, $c476                                    ; $641a: $cc $76 $c4
	ld l, a                                          ; $641d: $6f
	cp $9d                                           ; $641e: $fe $9d
	cp b                                             ; $6420: $b8
	ccf                                              ; $6421: $3f
	di                                               ; $6422: $f3
	ld a, b                                          ; $6423: $78
	ld h, c                                          ; $6424: $61
	ld [hl], a                                       ; $6425: $77
	ld a, d                                          ; $6426: $7a
	ld h, a                                          ; $6427: $67
	db $fc                                           ; $6428: $fc
	ld a, [hl]                                       ; $6429: $7e
	ret nz                                           ; $642a: $c0

	ld a, d                                          ; $642b: $7a
	ld a, $7e                                        ; $642c: $3e $7e
	call z, $c876                                    ; $642e: $cc $76 $c8
	ld [hl], a                                       ; $6431: $77
	db $fc                                           ; $6432: $fc
	ld l, d                                          ; $6433: $6a
	call Call_050_56f4                               ; $6434: $cd $f4 $56
	call nz, $c036                                   ; $6437: $c4 $36 $c0
	ld b, h                                          ; $643a: $44
	ld [hl], l                                       ; $643b: $75
	ld l, [hl]                                       ; $643c: $6e
	ret z                                            ; $643d: $c8

	sbc [hl]                                         ; $643e: $9e
	or b                                             ; $643f: $b0
	ld h, e                                          ; $6440: $63
	db $fc                                           ; $6441: $fc
	sbc d                                            ; $6442: $9a
	ld a, b                                          ; $6443: $78
	sbc b                                            ; $6444: $98
	or b                                             ; $6445: $b0
	jr @+$72                                         ; $6446: $18 $70

	ld [hl], e                                       ; $6448: $73
	db $fc                                           ; $6449: $fc
	ld a, a                                          ; $644a: $7f
	ld [hl], c                                       ; $644b: $71
	sbc b                                            ; $644c: $98
	ld h, b                                          ; $644d: $60
	sbc b                                            ; $644e: $98
	inc [hl]                                         ; $644f: $34
	sbc a                                            ; $6450: $9f
	xor e                                            ; $6451: $ab
	nop                                              ; $6452: $00
	ld d, l                                          ; $6453: $55
	ld a, d                                          ; $6454: $7a
	ld h, d                                          ; $6455: $62
	ld [hl], a                                       ; $6456: $77
	db $fc                                           ; $6457: $fc
	ld a, [hl]                                       ; $6458: $7e
	ld e, [hl]                                       ; $6459: $5e
	rst $38                                          ; $645a: $ff
	sub h                                            ; $645b: $94
	ld hl, sp-$01                                    ; $645c: $f8 $ff
	cp $01                                           ; $645e: $fe $01
	ld d, h                                          ; $6460: $54
	ld bc, $02a8                                     ; $6461: $01 $a8 $02
	ld d, b                                          ; $6464: $50
	dec b                                            ; $6465: $05
	xor b                                            ; $6466: $a8
	ld a, d                                          ; $6467: $7a
	inc [hl]                                         ; $6468: $34
	cp $91                                           ; $6469: $fe $91
	push hl                                          ; $646b: $e5
	nop                                              ; $646c: $00
	ld [$5401], a                                    ; $646d: $ea $01 $54
	ld [bc], a                                       ; $6470: $02
	xor b                                            ; $6471: $a8
	dec d                                            ; $6472: $15
	ld b, b                                          ; $6473: $40
	ld a, [hl+]                                      ; $6474: $2a
	add b                                            ; $6475: $80
	ld d, h                                          ; $6476: $54
	nop                                              ; $6477: $00
	jr z, jr_050_64f4                                ; $6478: $28 $7a

	db $dd                                           ; $647a: $dd
	sbc d                                            ; $647b: $9a
	rst JumpTable                                          ; $647c: $c7
	ld hl, sp-$80                                    ; $647d: $f8 $80
	ld a, a                                          ; $647f: $7f
	ld bc, $a15f                                     ; $6480: $01 $5f $a1
	sbc e                                            ; $6483: $9b
	rst $38                                          ; $6484: $ff
	ldh [rP1], a                                     ; $6485: $e0 $00
	ld a, a                                          ; $6487: $7f
	ld a, e                                          ; $6488: $7b
	dec sp                                           ; $6489: $3b
	ld a, h                                          ; $648a: $7c
	add sp, $67                                      ; $648b: $e8 $67
	ldh a, [rIE]                                     ; $648d: $f0 $ff
	sbc d                                            ; $648f: $9a
	rst FarCall                                          ; $6490: $f7
	ld hl, sp-$19                                    ; $6491: $f8 $e7
	rra                                              ; $6493: $1f
	xor e                                            ; $6494: $ab
	ld h, e                                          ; $6495: $63
	ldh a, [$df]                                     ; $6496: $f0 $df
	inc c                                            ; $6498: $0c
	sbc e                                            ; $6499: $9b
	db $fc                                           ; $649a: $fc
	inc c                                            ; $649b: $0c
	rst $38                                          ; $649c: $ff
	cp $5f                                           ; $649d: $fe $5f
	ret nc                                           ; $649f: $d0

	sbc d                                            ; $64a0: $9a
	ccf                                              ; $64a1: $3f
	rlca                                             ; $64a2: $07
	dec e                                            ; $64a3: $1d
	ld [bc], a                                       ; $64a4: $02
	sbc a                                            ; $64a5: $9f
	ld a, d                                          ; $64a6: $7a
	ld [hl], a                                       ; $64a7: $77
	ld h, e                                          ; $64a8: $63
	ret nc                                           ; $64a9: $d0

	ld [hl], d                                       ; $64aa: $72
	jp z, $fe5f                                      ; $64ab: $ca $5f $fe

	sbc b                                            ; $64ae: $98
	ld a, [hl]                                       ; $64af: $7e
	ldh a, [c]                                       ; $64b0: $f2
	ld a, a                                          ; $64b1: $7f
	add b                                            ; $64b2: $80
	ld b, c                                          ; $64b3: $41
	add b                                            ; $64b4: $80
	ld a, a                                          ; $64b5: $7f
	ld [hl], e                                       ; $64b6: $73
	cp $99                                           ; $64b7: $fe $99
	cp a                                             ; $64b9: $bf
	ret nz                                           ; $64ba: $c0

	rst $38                                          ; $64bb: $ff
	rst $38                                          ; $64bc: $ff
	inc e                                            ; $64bd: $1c
	inc bc                                           ; $64be: $03
	ld a, d                                          ; $64bf: $7a
	jp c, $905b                                      ; $64c0: $da $5b $90

	rst SubAFromDE                                          ; $64c3: $df
	rst $38                                          ; $64c4: $ff
	ld a, a                                          ; $64c5: $7f
	add d                                            ; $64c6: $82
	ld e, e                                          ; $64c7: $5b
	xor $9b                                          ; $64c8: $ee $9b
	rst $38                                          ; $64ca: $ff
	pop hl                                           ; $64cb: $e1
	cp $fe                                           ; $64cc: $fe $fe
	ld a, e                                          ; $64ce: $7b
	rst AddAOntoHL                                          ; $64cf: $ef
	ld e, a                                          ; $64d0: $5f
	ldh a, [$9a]                                     ; $64d1: $f0 $9a
	ldh a, [rP1]                                     ; $64d3: $f0 $00
	rra                                              ; $64d5: $1f
	rst $38                                          ; $64d6: $ff
	rrca                                             ; $64d7: $0f
	ld e, e                                          ; $64d8: $5b
	ldh a, [$7b]                                     ; $64d9: $f0 $7b
	db $e4                                           ; $64db: $e4
	sbc e                                            ; $64dc: $9b
	ld hl, sp-$1d                                    ; $64dd: $f8 $e3
	rra                                              ; $64df: $1f
	jp $f063                                         ; $64e0: $c3 $63 $f0


	rst SubAFromDE                                          ; $64e3: $df
	ld b, $9d                                        ; $64e4: $06 $9d
	cp $06                                           ; $64e6: $fe $06
	sbc $ff                                          ; $64e8: $de $ff
	ld h, e                                          ; $64ea: $63
	ldh a, [$9a]                                     ; $64eb: $f0 $9a
	xor a                                            ; $64ed: $af
	inc de                                           ; $64ee: $13
	sbc l                                            ; $64ef: $9d
	ld [bc], a                                       ; $64f0: $02
	rst SubAFromDE                                          ; $64f1: $df
	ld d, a                                          ; $64f2: $57
	ret nc                                           ; $64f3: $d0

jr_050_64f4:
	ld a, a                                          ; $64f4: $7f
	ld a, h                                          ; $64f5: $7c
	adc e                                            ; $64f6: $8b
	ld a, a                                          ; $64f7: $7f
	ret nc                                           ; $64f8: $d0

	ld l, a                                          ; $64f9: $6f
	ld a, c                                          ; $64fa: $79
	add $78                                          ; $64fb: $c6 $78
	rst JumpTable                                          ; $64fd: $c7
	halt                                             ; $64fe: $76
	ret                                              ; $64ff: $c9


	ccf                                              ; $6500: $3f
	ret nz                                           ; $6501: $c0

	rst $38                                          ; $6502: $ff
	ret nz                                           ; $6503: $c0

	ld e, $f8                                        ; $6504: $1e $f8
	ccf                                              ; $6506: $3f
	ret nz                                           ; $6507: $c0

	ld sp, $3fc0                                     ; $6508: $31 $c0 $3f
	ld [hl], e                                       ; $650b: $73
	cp $98                                           ; $650c: $fe $98
	ld a, e                                          ; $650e: $7b
	call nz, Call_050_7fff                           ; $650f: $c4 $ff $7f
	inc e                                            ; $6512: $1c
	inc de                                           ; $6513: $13
	add b                                            ; $6514: $80
	ld d, e                                          ; $6515: $53
	ld [hl], b                                       ; $6516: $70
	ld a, a                                          ; $6517: $7f
	ld [bc], a                                       ; $6518: $02
	rst $38                                          ; $6519: $ff
	ld a, [hl]                                       ; $651a: $7e
	db $fc                                           ; $651b: $fc
	ld e, a                                          ; $651c: $5f
	ldh a, [$9e]                                     ; $651d: $f0 $9e
	db $fc                                           ; $651f: $fc
	ld [hl], a                                       ; $6520: $77
	adc l                                            ; $6521: $8d
	ld e, e                                          ; $6522: $5b
	ldh a, [$9a]                                     ; $6523: $f0 $9a
	dec de                                           ; $6525: $1b
	db $e4                                           ; $6526: $e4
	ccf                                              ; $6527: $3f
	rst $38                                          ; $6528: $ff
	rlca                                             ; $6529: $07
	ld d, e                                          ; $652a: $53
	and b                                            ; $652b: $a0
	inc bc                                           ; $652c: $03
	cp $1b                                           ; $652d: $fe $1b
	cp $9d                                           ; $652f: $fe $9d
	inc d                                            ; $6531: $14
	db $eb                                           ; $6532: $eb
	ld c, a                                          ; $6533: $4f
	ldh a, [$9e]                                     ; $6534: $f0 $9e

jr_050_6536:
	ld bc, $8762                                     ; $6536: $01 $62 $87
	cpl                                              ; $6539: $2f
	ldh a, [$57]                                     ; $653a: $f0 $57

jr_050_653c:
	cp $9b                                           ; $653c: $fe $9b
	ld b, h                                          ; $653e: $44
	cp e                                             ; $653f: $bb
	ld a, [bc]                                       ; $6540: $0a
	push af                                          ; $6541: $f5
	ld h, a                                          ; $6542: $67
	ldh [$7f], a                                     ; $6543: $e0 $7f
	ld hl, sp-$80                                    ; $6545: $f8 $80
	ld d, c                                          ; $6547: $51
	xor [hl]                                         ; $6548: $ae
	add hl, bc                                       ; $6549: $09
	or $0e                                           ; $654a: $f6 $0e
	pop af                                           ; $654c: $f1
	jr jr_050_6536                                   ; $654d: $18 $e7

	nop                                              ; $654f: $00
	rst $38                                          ; $6550: $ff
	dec b                                            ; $6551: $05
	ld a, [$24db]                                    ; $6552: $fa $db $24
	dec e                                            ; $6555: $1d
	ldh [c], a                                       ; $6556: $e2
	ccf                                              ; $6557: $3f
	ret nz                                           ; $6558: $c0

	cp a                                             ; $6559: $bf
	ld b, b                                          ; $655a: $40
	ld a, a                                          ; $655b: $7f
	add b                                            ; $655c: $80
	ld a, e                                          ; $655d: $7b
	add h                                            ; $655e: $84
	nop                                              ; $655f: $00
	rst $38                                          ; $6560: $ff
	ld c, d                                          ; $6561: $4a
	or l                                             ; $6562: $b5
	rst FarCall                                          ; $6563: $f7
	ld [$92fb], sp                                   ; $6564: $08 $fb $92
	inc b                                            ; $6567: $04
	rst $38                                          ; $6568: $ff
	nop                                              ; $6569: $00
	rst AddAOntoHL                                          ; $656a: $ef
	db $10                                           ; $656b: $10
	ei                                               ; $656c: $fb
	inc b                                            ; $656d: $04
	push af                                          ; $656e: $f5
	ld a, [bc]                                       ; $656f: $0a
	nop                                              ; $6570: $00
	rst $38                                          ; $6571: $ff
	xor d                                            ; $6572: $aa
	ld d, l                                          ; $6573: $55
	ld [hl], a                                       ; $6574: $77
	db $f4                                           ; $6575: $f4
	ld l, a                                          ; $6576: $6f
	cp e                                             ; $6577: $bb
	sbc c                                            ; $6578: $99
	rst SubAFromDE                                          ; $6579: $df
	jr nz, jr_050_657c                               ; $657a: $20 $00

jr_050_657c:
	rst $38                                          ; $657c: $ff
	xor e                                            ; $657d: $ab
	ld d, h                                          ; $657e: $54
	ld h, a                                          ; $657f: $67
	xor l                                            ; $6580: $ad
	ld a, a                                          ; $6581: $7f
	ldh [$9d], a                                     ; $6582: $e0 $9d
	push de                                          ; $6584: $d5
	ld a, [hl+]                                      ; $6585: $2a
	ld [hl], a                                       ; $6586: $77
	dec l                                            ; $6587: $2d
	adc e                                            ; $6588: $8b
	xor a                                            ; $6589: $af
	ld d, b                                          ; $658a: $50
	rst SubAFromHL                                          ; $658b: $d7
	jr z, jr_050_653c                                ; $658c: $28 $ae

	ld d, c                                          ; $658e: $51
	rst $38                                          ; $658f: $ff
	nop                                              ; $6590: $00
	xor d                                            ; $6591: $aa
	ld d, l                                          ; $6592: $55
	db $fd                                           ; $6593: $fd
	ld [bc], a                                       ; $6594: $02
	ld a, [hl+]                                      ; $6595: $2a
	push de                                          ; $6596: $d5
	push de                                          ; $6597: $d5
	ld a, [hl+]                                      ; $6598: $2a
	xor a                                            ; $6599: $af
	ld d, b                                          ; $659a: $50
	rst FarCall                                          ; $659b: $f7
	ld [$de6f], sp                                   ; $659c: $08 $6f $de
	sbc c                                            ; $659f: $99
	ld d, l                                          ; $65a0: $55
	xor d                                            ; $65a1: $aa
	rst $38                                          ; $65a2: $ff
	nop                                              ; $65a3: $00
	ld a, a                                          ; $65a4: $7f
	add b                                            ; $65a5: $80
	ld [hl], a                                       ; $65a6: $77
	db $fc                                           ; $65a7: $fc
	ld a, a                                          ; $65a8: $7f
	and d                                            ; $65a9: $a2
	sub a                                            ; $65aa: $97
	ld e, a                                          ; $65ab: $5f
	and b                                            ; $65ac: $a0
	cp e                                             ; $65ad: $bb
	ld b, h                                          ; $65ae: $44
	ld d, l                                          ; $65af: $55
	xor d                                            ; $65b0: $aa
	db $fd                                           ; $65b1: $fd
	ld [bc], a                                       ; $65b2: $02
	ld [hl], a                                       ; $65b3: $77
	db $f4                                           ; $65b4: $f4
	ld a, a                                          ; $65b5: $7f
	ret nc                                           ; $65b6: $d0

	ld [hl], a                                       ; $65b7: $77
	xor [hl]                                         ; $65b8: $ae
	sbc l                                            ; $65b9: $9d
	ld [$7715], a                                    ; $65ba: $ea $15 $77
	ldh [$6f], a                                     ; $65bd: $e0 $6f
	cp $9d                                           ; $65bf: $fe $9d
	cp [hl]                                          ; $65c1: $be
	ld b, c                                          ; $65c2: $41
	ld l, a                                          ; $65c3: $6f
	call c, $f477                                    ; $65c4: $dc $77 $f4
	ld [hl], l                                       ; $65c7: $75
	ldh [c], a                                       ; $65c8: $e2
	ld a, a                                          ; $65c9: $7f
	sub [hl]                                         ; $65ca: $96
	sbc c                                            ; $65cb: $99
	ld e, l                                          ; $65cc: $5d
	and d                                            ; $65cd: $a2
	xor e                                            ; $65ce: $ab
	ld d, h                                          ; $65cf: $54
	ld d, a                                          ; $65d0: $57
	xor b                                            ; $65d1: $a8
	ld [hl], a                                       ; $65d2: $77
	ldh a, [$7f]                                     ; $65d3: $f0 $7f
	call z, $f87f                                    ; $65d5: $cc $7f $f8
	ld a, a                                          ; $65d8: $7f
	db $e4                                           ; $65d9: $e4
	ld a, a                                          ; $65da: $7f
	call nc, $cc7f                                   ; $65db: $d4 $7f $cc
	ld [hl], a                                       ; $65de: $77
	ld [hl], b                                       ; $65df: $70
	rla                                              ; $65e0: $17
	cp $9d                                           ; $65e1: $fe $9d
	db $10                                           ; $65e3: $10
	rst AddAOntoHL                                          ; $65e4: $ef
	ld l, c                                          ; $65e5: $69
	ld a, [bc]                                       ; $65e6: $0a
	sbc [hl]                                         ; $65e7: $9e
	xor a                                            ; $65e8: $af
	ld [hl], a                                       ; $65e9: $77
	ld a, [$209d]                                    ; $65ea: $fa $9d $20

jr_050_65ed:
	rst SubAFromDE                                          ; $65ed: $df
	ld h, a                                          ; $65ee: $67
	ldh a, [$7f]                                     ; $65ef: $f0 $7f
	or $80                                           ; $65f1: $f6 $80
	inc b                                            ; $65f3: $04
	ei                                               ; $65f4: $fb
	add hl, bc                                       ; $65f5: $09
	or $14                                           ; $65f6: $f6 $14
	db $eb                                           ; $65f8: $eb
	ld [bc], a                                       ; $65f9: $02
	db $fd                                           ; $65fa: $fd
	ld [$05f7], sp                                   ; $65fb: $08 $f7 $05
	ld a, [$d52a]                                    ; $65fe: $fa $2a $d5
	ld b, l                                          ; $6601: $45
	cp d                                             ; $6602: $ba
	add b                                            ; $6603: $80
	ld a, a                                          ; $6604: $7f
	dec b                                            ; $6605: $05
	ld a, [$57a8]                                    ; $6606: $fa $a8 $57
	ld d, l                                          ; $6609: $55
	xor d                                            ; $660a: $aa
	and d                                            ; $660b: $a2
	ld e, l                                          ; $660c: $5d
	ld d, b                                          ; $660d: $50
	xor a                                            ; $660e: $af
	jr nz, @-$1f                                     ; $660f: $20 $df

	ld b, l                                          ; $6611: $45
	sbc d                                            ; $6612: $9a
	cp d                                             ; $6613: $ba
	jr z, jr_050_65ed                                ; $6614: $28 $d7

	ld d, h                                          ; $6616: $54
	xor e                                            ; $6617: $ab
	ld [hl], a                                       ; $6618: $77
	ldh a, [rPCM12]                                  ; $6619: $f0 $76
	sbc $80                                          ; $661b: $de $80
	add c                                            ; $661d: $81
	ld a, [hl]                                       ; $661e: $7e
	nop                                              ; $661f: $00
	rst $38                                          ; $6620: $ff
	add h                                            ; $6621: $84
	ld a, e                                          ; $6622: $7b
	nop                                              ; $6623: $00
	rst $38                                          ; $6624: $ff
	add d                                            ; $6625: $82
	ld a, l                                          ; $6626: $7d
	ld b, l                                          ; $6627: $45
	cp d                                             ; $6628: $ba
	ld b, b                                          ; $6629: $40
	cp a                                             ; $662a: $bf
	add h                                            ; $662b: $84
	ld a, e                                          ; $662c: $7b
	ld [bc], a                                       ; $662d: $02
	db $fd                                           ; $662e: $fd
	ld b, $f9                                        ; $662f: $06 $f9
	ld [$10f7], sp                                   ; $6631: $08 $f7 $10
	rst AddAOntoHL                                          ; $6634: $ef
	adc b                                            ; $6635: $88
	ld [hl], a                                       ; $6636: $77
	ld d, h                                          ; $6637: $54
	xor e                                            ; $6638: $ab
	ld bc, $15fe                                     ; $6639: $01 $fe $15
	add b                                            ; $663c: $80
	ld [$d52a], a                                    ; $663d: $ea $2a $d5
	ld d, c                                          ; $6640: $51
	xor [hl]                                         ; $6641: $ae
	ld bc, $10fe                                     ; $6642: $01 $fe $10
	rst AddAOntoHL                                          ; $6645: $ef
	ld [$06f7], sp                                   ; $6646: $08 $f7 $06
	ld sp, hl                                        ; $6649: $f9
	push af                                          ; $664a: $f5
	ld a, [bc]                                       ; $664b: $0a
	ld c, a                                          ; $664c: $4f
	or b                                             ; $664d: $b0
	rra                                              ; $664e: $1f
	ldh [$ca], a                                     ; $664f: $e0 $ca
	dec [hl]                                         ; $6651: $35
	pop hl                                           ; $6652: $e1
	ld e, $7a                                        ; $6653: $1e $7a
	add l                                            ; $6655: $85
	cpl                                              ; $6656: $2f
	ret nc                                           ; $6657: $d0

	rra                                              ; $6658: $1f
	ldh [$fe], a                                     ; $6659: $e0 $fe
	ld bc, $527f                                     ; $665b: $01 $7f $52
	adc c                                            ; $665e: $89
	ld a, [$bd05]                                    ; $665f: $fa $05 $bd
	ld b, d                                          ; $6662: $42
	ld l, d                                          ; $6663: $6a
	sub l                                            ; $6664: $95
	push af                                          ; $6665: $f5
	ld a, [bc]                                       ; $6666: $0a
	ei                                               ; $6667: $fb
	inc b                                            ; $6668: $04
	rst FarCall                                          ; $6669: $f7
	ld [$01fe], sp                                   ; $666a: $08 $fe $01
	ld l, a                                          ; $666d: $6f
	sub b                                            ; $666e: $90
	push af                                          ; $666f: $f5
	ld a, [bc]                                       ; $6670: $0a
	ld l, e                                          ; $6671: $6b
	sub h                                            ; $6672: $94
	ld [hl], a                                       ; $6673: $77
	adc b                                            ; $6674: $88
	halt                                             ; $6675: $76
	cp b                                             ; $6676: $b8
	ld a, a                                          ; $6677: $7f
	cp $7f                                           ; $6678: $fe $7f
	inc l                                            ; $667a: $2c
	sub l                                            ; $667b: $95
	db $dd                                           ; $667c: $dd
	ld [hl+], a                                      ; $667d: $22
	xor [hl]                                         ; $667e: $ae
	ld d, c                                          ; $667f: $51
	push af                                          ; $6680: $f5
	ld a, [bc]                                       ; $6681: $0a
	ld a, [$fd05]                                    ; $6682: $fa $05 $fd
	ld [bc], a                                       ; $6685: $02
	halt                                             ; $6686: $76
	sbc d                                            ; $6687: $9a
	sub c                                            ; $6688: $91
	cp d                                             ; $6689: $ba
	ld b, l                                          ; $668a: $45
	ld d, l                                          ; $668b: $55
	xor d                                            ; $668c: $aa
	xor d                                            ; $668d: $aa
	ld d, l                                          ; $668e: $55
	rst SubAFromDE                                          ; $668f: $df
	jr nz, @-$40                                     ; $6690: $20 $be

	ld b, c                                          ; $6692: $41
	ld e, l                                          ; $6693: $5d
	and d                                            ; $6694: $a2
	cp a                                             ; $6695: $bf
	ld b, b                                          ; $6696: $40
	ld l, [hl]                                       ; $6697: $6e
	db $ec                                           ; $6698: $ec
	ld a, a                                          ; $6699: $7f
	or d                                             ; $669a: $b2
	ld a, [hl]                                       ; $669b: $7e
	ldh [$7f], a                                     ; $669c: $e0 $7f
	ld hl, sp+$7f                                    ; $669e: $f8 $7f
	adc $77                                          ; $66a0: $ce $77
	ret nc                                           ; $66a2: $d0

	ld a, a                                          ; $66a3: $7f
	ld hl, sp+$7f                                    ; $66a4: $f8 $7f
	sub h                                            ; $66a6: $94
	ld a, [hl]                                       ; $66a7: $7e
	or b                                             ; $66a8: $b0
	ld a, a                                          ; $66a9: $7f
	db $ec                                           ; $66aa: $ec
	ld a, a                                          ; $66ab: $7f
	call z, $dc7f                                    ; $66ac: $cc $7f $dc
	halt                                             ; $66af: $76
	add sp, $7f                                      ; $66b0: $e8 $7f
	ret nz                                           ; $66b2: $c0

	ld [hl], a                                       ; $66b3: $77
	ret nc                                           ; $66b4: $d0

	ld l, a                                          ; $66b5: $6f
	db $fc                                           ; $66b6: $fc
	ld a, a                                          ; $66b7: $7f
	call nz, $a07f                                   ; $66b8: $c4 $7f $a0
	ld h, a                                          ; $66bb: $67
	db $f4                                           ; $66bc: $f4
	halt                                             ; $66bd: $76
	add h                                            ; $66be: $84
	ld a, a                                          ; $66bf: $7f
	ldh a, [$7f]                                     ; $66c0: $f0 $7f
	db $fc                                           ; $66c2: $fc

Jump_050_66c3:
	ld l, a                                          ; $66c3: $6f
	db $f4                                           ; $66c4: $f4
	ld a, [hl]                                       ; $66c5: $7e
	cp b                                             ; $66c6: $b8
	halt                                             ; $66c7: $76
	ret nc                                           ; $66c8: $d0

	ld a, a                                          ; $66c9: $7f
	sbc h                                            ; $66ca: $9c
	sbc l                                            ; $66cb: $9d
	ld [hl], l                                       ; $66cc: $75
	adc d                                            ; $66cd: $8a
	ld h, a                                          ; $66ce: $67
	ldh [$7f], a                                     ; $66cf: $e0 $7f
	sub h                                            ; $66d1: $94
	ld a, a                                          ; $66d2: $7f
	ret nz                                           ; $66d3: $c0

	ld a, a                                          ; $66d4: $7f
	cp b                                             ; $66d5: $b8
	ld [hl], h                                       ; $66d6: $74
	pop af                                           ; $66d7: $f1
	scf                                              ; $66d8: $37
	cp $7f                                           ; $66d9: $fe $7f
	ld [hl-], a                                      ; $66db: $32
	sbc c                                            ; $66dc: $99
	sub d                                            ; $66dd: $92
	ld l, l                                          ; $66de: $6d
	ld b, l                                          ; $66df: $45
	cp d                                             ; $66e0: $ba
	ld [bc], a                                       ; $66e1: $02
	db $fd                                           ; $66e2: $fd
	ld l, a                                          ; $66e3: $6f
	db $f4                                           ; $66e4: $f4
	ld a, a                                          ; $66e5: $7f
	jr nz, jr_050_6767                               ; $66e6: $20 $7f

	jr jr_050_6768                                   ; $66e8: $18 $7e

	ldh [$7f], a                                     ; $66ea: $e0 $7f
	ldh a, [$9b]                                     ; $66ec: $f0 $9b
	sub b                                            ; $66ee: $90
	ld l, a                                          ; $66ef: $6f
	ld [$76f7], sp                                   ; $66f0: $08 $f7 $76
	db $ec                                           ; $66f3: $ec
	ld l, a                                          ; $66f4: $6f
	cp h                                             ; $66f5: $bc
	ld a, a                                          ; $66f6: $7f
	db $ec                                           ; $66f7: $ec
	ld a, a                                          ; $66f8: $7f
	db $e4                                           ; $66f9: $e4
	sub a                                            ; $66fa: $97
	sub l                                            ; $66fb: $95
	ld l, d                                          ; $66fc: $6a
	xor b                                            ; $66fd: $a8
	ld d, a                                          ; $66fe: $57
	ld b, c                                          ; $66ff: $41

jr_050_6700:
	cp [hl]                                          ; $6700: $be
	adc b                                            ; $6701: $88
	ld [hl], a                                       ; $6702: $77
	ld [hl], a                                       ; $6703: $77
	ldh a, [$7d]                                     ; $6704: $f0 $7d
	or b                                             ; $6706: $b0
	ld [hl], a                                       ; $6707: $77
	jp nc, $a067                                     ; $6708: $d2 $67 $a0

	sbc e                                            ; $670b: $9b

jr_050_670c:
	and b                                            ; $670c: $a0
	ld e, a                                          ; $670d: $5f
	ld d, l                                          ; $670e: $55
	xor d                                            ; $670f: $aa
	halt                                             ; $6710: $76
	add sp, $7f                                      ; $6711: $e8 $7f
	db $f4                                           ; $6713: $f4
	ld a, [hl]                                       ; $6714: $7e
	ldh [$7f], a                                     ; $6715: $e0 $7f
	cp b                                             ; $6717: $b8

jr_050_6718:
	ld a, [hl]                                       ; $6718: $7e
	xor h                                            ; $6719: $ac
	ld a, a                                          ; $671a: $7f
	ret c                                            ; $671b: $d8

	ld a, a                                          ; $671c: $7f
	ldh [$80], a                                     ; $671d: $e0 $80
	add sp, $17                                      ; $671f: $e8 $17
	ld d, b                                          ; $6721: $50
	xor a                                            ; $6722: $af
	and d                                            ; $6723: $a2
	ld e, l                                          ; $6724: $5d
	ld d, c                                          ; $6725: $51
	xor [hl]                                         ; $6726: $ae
	jr z, jr_050_6700                                ; $6727: $28 $d7

	ld d, d                                          ; $6729: $52
	xor l                                            ; $672a: $ad
	jr nz, jr_050_670c                               ; $672b: $20 $df

	dec d                                            ; $672d: $15
	ld [$df20], a                                    ; $672e: $ea $20 $df
	ld de, $0fee                                     ; $6731: $11 $ee $0f
	ldh a, [$57]                                     ; $6734: $f0 $57
	xor b                                            ; $6736: $a8
	jr nz, jr_050_6718                               ; $6737: $20 $df

	ld b, a                                          ; $6739: $47
	cp b                                             ; $673a: $b8
	dec bc                                           ; $673b: $0b
	db $f4                                           ; $673c: $f4
	dec d                                            ; $673d: $15
	sub d                                            ; $673e: $92
	ld [$b54a], a                                    ; $673f: $ea $4a $b5
	inc h                                            ; $6742: $24
	db $db                                           ; $6743: $db
	xor [hl]                                         ; $6744: $ae
	ld d, c                                          ; $6745: $51
	ld e, a                                          ; $6746: $5f
	and b                                            ; $6747: $a0
	ld a, $c1                                        ; $6748: $3e $c1
	ld d, a                                          ; $674a: $57
	xor b                                            ; $674b: $a8
	ld [hl], l                                       ; $674c: $75
	ldh a, [rPCM34]                                  ; $674d: $f0 $77
	jr jr_050_67c0                                   ; $674f: $18 $6f

	inc c                                            ; $6751: $0c
	nop                                              ; $6752: $00
	rst FarCall                                          ; $6753: $f7
	ld l, e                                          ; $6754: $6b
	cp $76                                           ; $6755: $fe $76
	xor $6f                                          ; $6757: $ee $6f
	cp $76                                           ; $6759: $fe $76
	call nz, $fe7f                                   ; $675b: $c4 $7f $fe
	sub a                                            ; $675e: $97
	sbc a                                            ; $675f: $9f
	ld h, b                                          ; $6760: $60
	rst $38                                          ; $6761: $ff
	nop                                              ; $6762: $00
	rst FarCall                                          ; $6763: $f7
	ld [$15ea], sp                                   ; $6764: $08 $ea $15

jr_050_6767:
	ld [hl], l                                       ; $6767: $75

jr_050_6768:
	adc h                                            ; $6768: $8c
	ld [hl], a                                       ; $6769: $77
	cp $7e                                           ; $676a: $fe $7e
	xor $4f                                          ; $676c: $ee $4f
	jp c, $f66f                                      ; $676e: $da $6f $f6

	ld a, [hl]                                       ; $6771: $7e
	cp h                                             ; $6772: $bc
	sub l                                            ; $6773: $95
	ld d, e                                          ; $6774: $53
	xor h                                            ; $6775: $ac

jr_050_6776:
	rst AddAOntoHL                                          ; $6776: $ef
	db $10                                           ; $6777: $10
	rst SubAFromHL                                          ; $6778: $d7
	jr z, jr_050_6776                                ; $6779: $28 $fb

	inc b                                            ; $677b: $04
	rst SubAFromHL                                          ; $677c: $d7
	jr z, jr_050_67ee                                ; $677d: $28 $6f

	ld [$c87e], a                                    ; $677f: $ea $7e $c8
	sbc c                                            ; $6782: $99
	xor $11                                          ; $6783: $ee $11
	rst FarCall                                          ; $6785: $f7
	ld [$11ee], sp                                   ; $6786: $08 $ee $11
	halt                                             ; $6789: $76
	ld c, h                                          ; $678a: $4c
	ld a, [hl]                                       ; $678b: $7e
	ld a, b                                          ; $678c: $78
	ld a, a                                          ; $678d: $7f
	xor $7f                                          ; $678e: $ee $7f
	db $fc                                           ; $6790: $fc
	ld a, a                                          ; $6791: $7f
	jr c, jr_050_6811                                ; $6792: $38 $7d

	jr c, jr_050_680d                                ; $6794: $38 $77

	jr z, jr_050_6807                                ; $6796: $28 $6f

	ret z                                            ; $6798: $c8

	sub l                                            ; $6799: $95
	ld e, e                                          ; $679a: $5b
	and h                                            ; $679b: $a4
	cp a                                             ; $679c: $bf
	ld b, b                                          ; $679d: $40
	ld a, d                                          ; $679e: $7a
	add l                                            ; $679f: $85
	or l                                             ; $67a0: $b5
	ld c, d                                          ; $67a1: $4a
	ld l, b                                          ; $67a2: $68
	sub a                                            ; $67a3: $97
	ld a, [hl+]                                      ; $67a4: $2a
	nop                                              ; $67a5: $00
	call $df55                                       ; $67a6: $cd $55 $df
	ld h, [hl]                                       ; $67a9: $66
	sbc [hl]                                         ; $67aa: $9e
	ld h, l                                          ; $67ab: $65
	db $dd                                           ; $67ac: $dd
	ld h, [hl]                                       ; $67ad: $66
	sub d                                            ; $67ae: $92
	ld d, [hl]                                       ; $67af: $56
	ld h, [hl]                                       ; $67b0: $66
	ld h, [hl]                                       ; $67b1: $66
	inc sp                                           ; $67b2: $33
	ld [hl], $65                                     ; $67b3: $36 $65
	ld h, [hl]                                       ; $67b5: $66
	inc sp                                           ; $67b6: $33
	inc sp                                           ; $67b7: $33
	ld h, [hl]                                       ; $67b8: $66
	ld d, [hl]                                       ; $67b9: $56
	ld h, e                                          ; $67ba: $63
	inc sp                                           ; $67bb: $33
	ld e, e                                          ; $67bc: $5b
	or $99                                           ; $67bd: $f6 $99
	scf                                              ; $67bf: $37

Call_050_67c0:
jr_050_67c0:
	ld h, l                                          ; $67c0: $65
	ld h, a                                          ; $67c1: $67
	inc sp                                           ; $67c2: $33
	inc sp                                           ; $67c3: $33
	halt                                             ; $67c4: $76
	ld e, e                                          ; $67c5: $5b
	or $9d                                           ; $67c6: $f6 $9d
	ld [hl], e                                       ; $67c8: $73
	inc sp                                           ; $67c9: $33
	pop bc                                           ; $67ca: $c1
	ld b, h                                          ; $67cb: $44
	reti                                             ; $67cc: $d9


	ld b, h                                          ; $67cd: $44
	db $d3                                           ; $67ce: $d3
	adc c                                            ; $67cf: $89
	db $fc                                           ; $67d0: $fc
	sbc l                                            ; $67d1: $9d
	rst $38                                          ; $67d2: $ff
	nop                                              ; $67d3: $00
	reti                                             ; $67d4: $d9


	rst $38                                          ; $67d5: $ff
	sbc d                                            ; $67d6: $9a
	nop                                              ; $67d7: $00
	dec b                                            ; $67d8: $05
	ld [bc], a                                       ; $67d9: $02
	ld bc, $5702                                     ; $67da: $01 $02 $57
	ldh a, [$9b]                                     ; $67dd: $f0 $9b
	ld a, a                                          ; $67df: $7f
	cp a                                             ; $67e0: $bf
	ld e, a                                          ; $67e1: $5f
	cp a                                             ; $67e2: $bf
	ld d, a                                          ; $67e3: $57
	ldh a, [$6f]                                     ; $67e4: $f0 $6f
	ei                                               ; $67e6: $fb
	sbc l                                            ; $67e7: $9d
	ld a, [bc]                                       ; $67e8: $0a
	db $e3                                           ; $67e9: $e3
	db $db                                           ; $67ea: $db
	rst $38                                          ; $67eb: $ff
	sbc [hl]                                         ; $67ec: $9e
	push bc                                          ; $67ed: $c5

jr_050_67ee:
	ld [hl], e                                       ; $67ee: $73
	ldh a, [$9b]                                     ; $67ef: $f0 $9b
	inc a                                            ; $67f1: $3c
	rst $38                                          ; $67f2: $ff
	db $10                                           ; $67f3: $10

Jump_050_67f4:
	add c                                            ; $67f4: $81
	call c, $9cff                                    ; $67f5: $dc $ff $9c
	rst SubAFromBC                                          ; $67f8: $e7
	db $e3                                           ; $67f9: $e3
	ld a, [hl]                                       ; $67fa: $7e
	ld l, a                                          ; $67fb: $6f
	ldh [$9d], a                                     ; $67fc: $e0 $9d
	nop                                              ; $67fe: $00
	add a                                            ; $67ff: $87
	jp c, $9eff                                      ; $6800: $da $ff $9e

	ld c, b                                          ; $6803: $48
	ld l, e                                          ; $6804: $6b
	ldh a, [$63]                                     ; $6805: $f0 $63

jr_050_6807:
	ret nz                                           ; $6807: $c0

	sbc e                                            ; $6808: $9b
	push af                                          ; $6809: $f5
	ld [$a0d0], a                                    ; $680a: $ea $d0 $a0

jr_050_680d:
	ld d, a                                          ; $680d: $57
	ldh a, [$7f]                                     ; $680e: $f0 $7f
	sub d                                            ; $6810: $92

jr_050_6811:
	ld c, a                                          ; $6811: $4f
	sub b                                            ; $6812: $90
	sbc h                                            ; $6813: $9c
	ld d, a                                          ; $6814: $57
	xor a                                            ; $6815: $af
	ld a, a                                          ; $6816: $7f
	ld d, e                                          ; $6817: $53
	ret nc                                           ; $6818: $d0

	ld b, a                                          ; $6819: $47
	ret nz                                           ; $681a: $c0

	ld b, a                                          ; $681b: $47
	ldh a, [$dd]                                     ; $681c: $f0 $dd
	cp $7f                                           ; $681e: $fe $7f
	ei                                               ; $6820: $fb
	ld a, a                                          ; $6821: $7f
	cp $da                                           ; $6822: $fe $da
	rst $38                                          ; $6824: $ff
	sbc [hl]                                         ; $6825: $9e
	ld bc, $9cf9                                     ; $6826: $01 $f9 $9c
	jr z, jr_050_6877                                ; $6829: $28 $4c

	xor b                                            ; $682b: $a8
	ld [hl], a                                       ; $682c: $77
	cp $9e                                           ; $682d: $fe $9e
	ld b, h                                          ; $682f: $44
	ld sp, hl                                        ; $6830: $f9
	sbc e                                            ; $6831: $9b
	rst SubAFromHL                                          ; $6832: $d7
	ld c, a                                          ; $6833: $4f
	rst SubAFromHL                                          ; $6834: $d7
	ld a, a                                          ; $6835: $7f
	ld a, e                                          ; $6836: $7b
	cp $96                                           ; $6837: $fe $96
	ld e, a                                          ; $6839: $5f
	ld a, $39                                        ; $683a: $3e $39
	halt                                             ; $683c: $76
	add hl, sp                                       ; $683d: $39
	ld b, a                                          ; $683e: $47
	rra                                              ; $683f: $1f
	cpl                                              ; $6840: $2f
	rra                                              ; $6841: $1f
	sbc $ff                                          ; $6842: $de $ff
	sbc c                                            ; $6844: $99
	cp $f8                                           ; $6845: $fe $f8
	ldh [$d0], a                                     ; $6847: $e0 $d0
	ldh [$67], a                                     ; $6849: $e0 $67
	ld [hl], a                                       ; $684b: $77
	or $de                                           ; $684c: $f6 $de
	rst $38                                          ; $684e: $ff
	ld a, a                                          ; $684f: $7f
	db $f4                                           ; $6850: $f4
	ei                                               ; $6851: $fb
	call c, $9cff                                    ; $6852: $dc $ff $9c
	rst AddAOntoHL                                          ; $6855: $ef
	ld e, a                                          ; $6856: $5f
	xor [hl]                                         ; $6857: $ae
	ld sp, hl                                        ; $6858: $f9
	sbc l                                            ; $6859: $9d
	ld b, b                                          ; $685a: $40
	add b                                            ; $685b: $80
	ld l, a                                          ; $685c: $6f
	cp $9d                                           ; $685d: $fe $9d
	add hl, bc                                       ; $685f: $09
	ld [$fe6f], sp                                   ; $6860: $08 $6f $fe
	reti                                             ; $6863: $d9


	ld [$af9d], sp                                   ; $6864: $08 $9d $af
	rst SubAFromDE                                          ; $6867: $df
	ld l, a                                          ; $6868: $6f
	cp $dd                                           ; $6869: $fe $dd
	rst $38                                          ; $686b: $ff
	sbc e                                            ; $686c: $9b
	db $fd                                           ; $686d: $fd
	ld a, [$eaf5]                                    ; $686e: $fa $f5 $ea
	ld sp, hl                                        ; $6871: $f9
	ld a, a                                          ; $6872: $7f
	xor d                                            ; $6873: $aa
	ld a, a                                          ; $6874: $7f
	db $f4                                           ; $6875: $f4
	sbc e                                            ; $6876: $9b

jr_050_6877:
	ld d, l                                          ; $6877: $55
	xor d                                            ; $6878: $aa
	ld d, h                                          ; $6879: $54
	add b                                            ; $687a: $80
	ld h, e                                          ; $687b: $63
	ldh a, [$9b]                                     ; $687c: $f0 $9b
	xor d                                            ; $687e: $aa
	ld d, l                                          ; $687f: $55
	xor d                                            ; $6880: $aa
	ld b, b                                          ; $6881: $40
	or $90                                           ; $6882: $f6 $90
	ld a, $0b                                        ; $6884: $3e $0b
	rlca                                             ; $6886: $07
	rrca                                             ; $6887: $0f
	rla                                              ; $6888: $17
	cpl                                              ; $6889: $2f
	rst FarCall                                          ; $688a: $f7
	xor $11                                          ; $688b: $ee $11
	rla                                              ; $688d: $17
	rrca                                             ; $688e: $0f
	rra                                              ; $688f: $1f
	ccf                                              ; $6890: $3f
	ld a, a                                          ; $6891: $7f
	ld a, a                                          ; $6892: $7f
	jp c, $9dff                                      ; $6893: $da $ff $9d

	db $fd                                           ; $6896: $fd
	xor d                                            ; $6897: $aa
	reti                                             ; $6898: $d9


	rst $38                                          ; $6899: $ff
	add a                                            ; $689a: $87
	inc c                                            ; $689b: $0c
	ret nc                                           ; $689c: $d0

	db $ec                                           ; $689d: $ec
	db $f4                                           ; $689e: $f4
	ld a, [rIE]                                    ; $689f: $fa $ff $ff
	xor e                                            ; $68a2: $ab
	ld hl, sp-$08                                    ; $68a3: $f8 $f8
	ldh a, [$f8]                                     ; $68a5: $f0 $f8
	db $fc                                           ; $68a7: $fc
	db $fc                                           ; $68a8: $fc
	cp $fe                                           ; $68a9: $fe $fe
	xor a                                            ; $68ab: $af
	ld d, a                                          ; $68ac: $57
	ld a, [bc]                                       ; $68ad: $0a
	dec b                                            ; $68ae: $05
	ld [bc], a                                       ; $68af: $02
	add b                                            ; $68b0: $80
	add b                                            ; $68b1: $80
	ret nz                                           ; $68b2: $c0

	ld sp, hl                                        ; $68b3: $f9
	sbc e                                            ; $68b4: $9b
	ld a, [$aa55]                                    ; $68b5: $fa $55 $aa
	ld d, b                                          ; $68b8: $50
	push af                                          ; $68b9: $f5
	ld a, e                                          ; $68ba: $7b
	and c                                            ; $68bb: $a1
	ld a, a                                          ; $68bc: $7f
	ldh [$f6], a                                     ; $68bd: $e0 $f6
	sbc l                                            ; $68bf: $9d
	rst $38                                          ; $68c0: $ff
	push de                                          ; $68c1: $d5
	ld a, e                                          ; $68c2: $7b
	xor $9c                                          ; $68c3: $ee $9c
	ld d, l                                          ; $68c5: $55
	ld a, [bc]                                       ; $68c6: $0a
	dec d                                            ; $68c7: $15
	ld h, e                                          ; $68c8: $63
	ldh a, [$df]                                     ; $68c9: $f0 $df
	rst $38                                          ; $68cb: $ff
	sbc d                                            ; $68cc: $9a
	ld a, a                                          ; $68cd: $7f
	xor a                                            ; $68ce: $af
	ld d, a                                          ; $68cf: $57
	xor e                                            ; $68d0: $ab
	ld d, l                                          ; $68d1: $55
	ld e, e                                          ; $68d2: $5b
	ldh a, [$6e]                                     ; $68d3: $f0 $6e
	rst JumpTable                                          ; $68d5: $c7
	ld a, [$fed9]                                    ; $68d6: $fa $d9 $fe
	reti                                             ; $68d9: $d9


	ld bc, $7ef9                                     ; $68da: $01 $f9 $7e
	add $6f                                          ; $68dd: $c6 $6f
	cp $62                                           ; $68df: $fe $62
	ret nz                                           ; $68e1: $c0

	halt                                             ; $68e2: $76
	jp nz, $fe7b                                     ; $68e3: $c2 $7b $fe

	ld a, [hl]                                       ; $68e6: $7e
	add $7b                                          ; $68e7: $c6 $7b
	cp $9b                                           ; $68e9: $fe $9b
	ld e, $2f                                        ; $68eb: $1e $2f
	ld e, $d0                                        ; $68ed: $1e $d0
	ld a, d                                          ; $68ef: $7a
	call nz, $fe77                                   ; $68f0: $c4 $77 $fe
	sbc b                                            ; $68f3: $98
	db $dd                                           ; $68f4: $dd
	xor d                                            ; $68f5: $aa
	ld d, l                                          ; $68f6: $55
	adc d                                            ; $68f7: $8a
	ld b, b                                          ; $68f8: $40
	add b                                            ; $68f9: $80
	nop                                              ; $68fa: $00
	ld h, e                                          ; $68fb: $63
	db $10                                           ; $68fc: $10
	sbc b                                            ; $68fd: $98
	ld d, a                                          ; $68fe: $57
	xor [hl]                                         ; $68ff: $ae
	rla                                              ; $6900: $17
	dec bc                                           ; $6901: $0b
	dec b                                            ; $6902: $05
	ld [bc], a                                       ; $6903: $02
	dec b                                            ; $6904: $05
	ld h, e                                          ; $6905: $63
	cp b                                             ; $6906: $b8
	ld b, $c0                                        ; $6907: $06 $c0
	sbc e                                            ; $6909: $9b
	call nc, Call_050_50a8                           ; $690a: $d4 $a8 $50
	and b                                            ; $690d: $a0
	ld a, e                                          ; $690e: $7b
	ret nz                                           ; $690f: $c0

	db $fd                                           ; $6910: $fd
	ld e, e                                          ; $6911: $5b
	add d                                            ; $6912: $82
	sbc l                                            ; $6913: $9d
	nop                                              ; $6914: $00
	ld c, b                                          ; $6915: $48
	db $fd                                           ; $6916: $fd
	rst SubAFromDE                                          ; $6917: $df
	add b                                            ; $6918: $80
	sbc l                                            ; $6919: $9d
	add sp, -$08                                     ; $691a: $e8 $f8
	sbc $01                                          ; $691c: $de $01
	rst SubAFromDE                                          ; $691e: $df
	inc bc                                           ; $691f: $03
	rst SubAFromDE                                          ; $6920: $df
	ld bc, $069e                                     ; $6921: $01 $9e $06
	ld [hl], a                                       ; $6924: $77
	ldh [c], a                                       ; $6925: $e2
	ld [hl], a                                       ; $6926: $77
	or $7f                                           ; $6927: $f6 $7f
	ld hl, $1f7b                                     ; $6929: $21 $7b $1f
	sbc h                                            ; $692c: $9c
	xor b                                            ; $692d: $a8
	ld d, h                                          ; $692e: $54
	and b                                            ; $692f: $a0
	reti                                             ; $6930: $d9


	rst $38                                          ; $6931: $ff
	sbc h                                            ; $6932: $9c
	ld d, h                                          ; $6933: $54
	xor b                                            ; $6934: $a8
	ld b, b                                          ; $6935: $40
	ld a, c                                          ; $6936: $79
	cp a                                             ; $6937: $bf
	sbc l                                            ; $6938: $9d
	ld [$de10], sp                                   ; $6939: $08 $10 $de
	rst $38                                          ; $693c: $ff
	sbc e                                            ; $693d: $9b
	db $fc                                           ; $693e: $fc
	ld hl, sp-$10                                    ; $693f: $f8 $f0
	ldh a, [$7a]                                     ; $6941: $f0 $7a
	ld a, [hl-]                                      ; $6943: $3a
	sbc c                                            ; $6944: $99
	dec hl                                           ; $6945: $2b
	ld d, l                                          ; $6946: $55
	ld [bc], a                                       ; $6947: $02
	ld bc, $0100                                     ; $6948: $01 $00 $01
	ld h, a                                          ; $694b: $67
	ld e, $de                                        ; $694c: $1e $de
	ret nz                                           ; $694e: $c0

	db $dd                                           ; $694f: $dd
	ldh [$9e], a                                     ; $6950: $e0 $9e
	ld [hl], b                                       ; $6952: $70
	ldh a, [c]                                       ; $6953: $f2
	sbc [hl]                                         ; $6954: $9e
	inc a                                            ; $6955: $3c
	ld [hl], e                                       ; $6956: $73
	adc a                                            ; $6957: $8f
	sbc h                                            ; $6958: $9c
	ld b, e                                          ; $6959: $43
	ld h, [hl]                                       ; $695a: $66
	ld a, h                                          ; $695b: $7c
	db $fd                                           ; $695c: $fd
	sbc e                                            ; $695d: $9b
	dec b                                            ; $695e: $05
	rlca                                             ; $695f: $07
	rlca                                             ; $6960: $07
	ld b, l                                          ; $6961: $45
	ld sp, hl                                        ; $6962: $f9
	ld a, d                                          ; $6963: $7a
	sub d                                            ; $6964: $92
	ld a, c                                          ; $6965: $79

jr_050_6966:
	ld l, l                                          ; $6966: $6d
	rst SubAFromDE                                          ; $6967: $df
	add b                                            ; $6968: $80
	ld e, d                                          ; $6969: $5a
	and b                                            ; $696a: $a0
	ld a, a                                          ; $696b: $7f
	cp $9e                                           ; $696c: $fe $9e
	dec d                                            ; $696e: $15
	ld a, e                                          ; $696f: $7b
	xor [hl]                                         ; $6970: $ae
	ld a, [$f178]                                    ; $6971: $fa $78 $f1
	sbc d                                            ; $6974: $9a
	ld e, a                                          ; $6975: $5f
	xor a                                            ; $6976: $af
	ld d, a                                          ; $6977: $57
	xor a                                            ; $6978: $af
	ld d, a                                          ; $6979: $57
	ld [bc], a                                       ; $697a: $02
	ret nz                                           ; $697b: $c0

	ld b, [hl]                                       ; $697c: $46
	ret nz                                           ; $697d: $c0

	sbc [hl]                                         ; $697e: $9e
	ld e, a                                          ; $697f: $5f
	ld a, d                                          ; $6980: $7a
	jp nz, Jump_050_6f9c                             ; $6981: $c2 $9c $6f

	rst SubAFromHL                                          ; $6984: $d7
	ld l, a                                          ; $6985: $6f
	ld l, [hl]                                       ; $6986: $6e
	ret nz                                           ; $6987: $c0

	sbc [hl]                                         ; $6988: $9e
	ld l, $62                                        ; $6989: $2e $62
	ret nz                                           ; $698b: $c0

	ld a, [$039e]                                    ; $698c: $fa $9e $03
	rst FarCall                                          ; $698f: $f7
	sbc c                                            ; $6990: $99
	inc bc                                           ; $6991: $03
	inc c                                            ; $6992: $0c
	db $10                                           ; $6993: $10
	rra                                              ; $6994: $1f
	rst $38                                          ; $6995: $ff
	sbc a                                            ; $6996: $9f
	ld a, [$6080]                                    ; $6997: $fa $80 $60
	ld b, b                                          ; $699a: $40
	add e                                            ; $699b: $83
	jp Jump_050_7f3f                                 ; $699c: $c3 $3f $7f


	ld [hl], d                                       ; $699f: $72
	ret c                                            ; $69a0: $d8

	add hl, sp                                       ; $69a1: $39
	add hl, bc                                       ; $69a2: $09
	ld [$7938], sp                                   ; $69a3: $08 $38 $79
	ld a, a                                          ; $69a6: $7f

jr_050_69a7:
	rst $38                                          ; $69a7: $ff
	ldh [rDIV], a                                    ; $69a8: $e0 $04
	ld [$c8c8], sp                                   ; $69aa: $08 $c8 $c8
	ldh [$c8], a                                     ; $69ad: $e0 $c8
	adc b                                            ; $69af: $88
	ldh [rPCM34], a                                  ; $69b0: $e0 $77
	xor a                                            ; $69b2: $af
	rra                                              ; $69b3: $1f
	ld l, a                                          ; $69b4: $6f
	rst $38                                          ; $69b5: $ff
	rst AddAOntoHL                                          ; $69b6: $ef
	rst SubAFromDE                                          ; $69b7: $df
	sbc l                                            ; $69b8: $9d
	rrca                                             ; $69b9: $0f
	xor b                                            ; $69ba: $a8
	pop af                                           ; $69bb: $f1
	sbc d                                            ; $69bc: $9a
	jr c, jr_050_69e7                                ; $69bd: $38 $28

	nop                                              ; $69bf: $00
	jr z, jr_050_69ca                                ; $69c0: $28 $08

	cp $9a                                           ; $69c2: $fe $9a
	ld [hl], b                                       ; $69c4: $70
	jr nz, jr_050_69cf                               ; $69c5: $20 $08

	db $10                                           ; $69c7: $10
	db $10                                           ; $69c8: $10
	ld [hl], a                                       ; $69c9: $77

jr_050_69ca:
	jr nc, jr_050_6966                               ; $69ca: $30 $9a

	ld a, [bc]                                       ; $69cc: $0a
	ld c, $04                                        ; $69cd: $0e $04

jr_050_69cf:
	ld bc, $7a03                                     ; $69cf: $01 $03 $7a
	rst AddAOntoHL                                          ; $69d2: $ef
	ld l, [hl]                                       ; $69d3: $6e
	cp b                                             ; $69d4: $b8
	sbc [hl]                                         ; $69d5: $9e
	ld bc, $7471                                     ; $69d6: $01 $71 $74
	sbc h                                            ; $69d9: $9c
	ld b, b                                          ; $69da: $40
	jr nz, @+$52                                     ; $69db: $20 $50

	reti                                             ; $69dd: $d9


	rst $38                                          ; $69de: $ff
	ld a, a                                          ; $69df: $7f
	jp c, $d27f                                      ; $69e0: $da $7f $d2

	sbc e                                            ; $69e3: $9b
	ld [$0204], sp                                   ; $69e4: $08 $04 $02

jr_050_69e7:
	nop                                              ; $69e7: $00
	sbc $e0                                          ; $69e8: $de $e0
	rst SubAFromDE                                          ; $69ea: $df
	ldh a, [$7d]                                     ; $69eb: $f0 $7d
	adc [hl]                                         ; $69ed: $8e
	ld a, b                                          ; $69ee: $78
	ld l, a                                          ; $69ef: $6f
	ld a, b                                          ; $69f0: $78
	ld l, l                                          ; $69f1: $6d
	sbc [hl]                                         ; $69f2: $9e
	dec b                                            ; $69f3: $05
	ld e, l                                          ; $69f4: $5d
	ret nc                                           ; $69f5: $d0

	sub a                                            ; $69f6: $97
	ldh [$60], a                                     ; $69f7: $e0 $60
	ldh [$50], a                                     ; $69f9: $e0 $50
	ldh [$e0], a                                     ; $69fb: $e0 $e0
	add b                                            ; $69fd: $80
	add b                                            ; $69fe: $80
	sbc $10                                          ; $69ff: $de $10
	add b                                            ; $6a01: $80
	and b                                            ; $6a02: $a0
	jr nz, jr_050_6a25                               ; $6a03: $20 $20

	ld h, b                                          ; $6a05: $60
	ld b, b                                          ; $6a06: $40
	add hl, de                                       ; $6a07: $19
	jr nz, jr_050_6a0a                               ; $6a08: $20 $00

jr_050_6a0a:
	inc [hl]                                         ; $6a0a: $34
	inc b                                            ; $6a0b: $04
	ld b, $02                                        ; $6a0c: $06 $02
	daa                                              ; $6a0e: $27
	jr c, jr_050_6a59                                ; $6a0f: $38 $48

	ld b, b                                          ; $6a11: $40
	ld [$0019], sp                                   ; $6a12: $08 $19 $00
	dec c                                            ; $6a15: $0d
	jr c, jr_050_69a7                                ; $6a16: $38 $8f

	ldh [$d6], a                                     ; $6a18: $e0 $d6
	ei                                               ; $6a1a: $fb
	ld h, [hl]                                       ; $6a1b: $66
	ld h, a                                          ; $6a1c: $67
	ld l, h                                          ; $6a1d: $6c
	cp a                                             ; $6a1e: $bf
	ld b, b                                          ; $6a1f: $40
	inc b                                            ; $6a20: $04
	ld a, a                                          ; $6a21: $7f
	sbc b                                            ; $6a22: $98
	add e                                            ; $6a23: $83
	adc h                                            ; $6a24: $8c

jr_050_6a25:
	add h                                            ; $6a25: $84
	sbc [hl]                                         ; $6a26: $9e
	ret nz                                           ; $6a27: $c0

	jr nc, jr_050_6a92                               ; $6a28: $30 $68

	db $e3                                           ; $6a2a: $e3
	ld bc, $8ad0                                     ; $6a2b: $01 $d0 $8a
	add e                                            ; $6a2e: $83
	ld l, d                                          ; $6a2f: $6a
	ld bc, $1010                                     ; $6a30: $01 $10 $10
	jr nz, @+$23                                     ; $6a33: $20 $21

	inc [hl]                                         ; $6a35: $34
	inc a                                            ; $6a36: $3c
	inc e                                            ; $6a37: $1c
	ld b, b                                          ; $6a38: $40
	ret nz                                           ; $6a39: $c0

	ld b, b                                          ; $6a3a: $40
	nop                                              ; $6a3b: $00
	add b                                            ; $6a3c: $80
	ld b, b                                          ; $6a3d: $40
	and b                                            ; $6a3e: $a0
	ld l, h                                          ; $6a3f: $6c
	halt                                             ; $6a40: $76
	xor a                                            ; $6a41: $af
	rst SubAFromDE                                          ; $6a42: $df
	ret nz                                           ; $6a43: $c0

	sbc h                                            ; $6a44: $9c
	ld b, b                                          ; $6a45: $40
	ldh [$ab], a                                     ; $6a46: $e0 $ab
	ld a, c                                          ; $6a48: $79
	ld [hl], h                                       ; $6a49: $74
	halt                                             ; $6a4a: $76
	xor h                                            ; $6a4b: $ac
	ld d, d                                          ; $6a4c: $52
	ret nz                                           ; $6a4d: $c0

	sbc h                                            ; $6a4e: $9c
	ld e, [hl]                                       ; $6a4f: $5e
	xor [hl]                                         ; $6a50: $ae
	ld d, h                                          ; $6a51: $54
	ld [hl], $c0                                     ; $6a52: $36 $c0
	sbc [hl]                                         ; $6a54: $9e
	add sp, $56                                      ; $6a55: $e8 $56
	ret nz                                           ; $6a57: $c0

	ld a, d                                          ; $6a58: $7a

jr_050_6a59:
	call nz, $be76                                   ; $6a59: $c4 $76 $be
	halt                                             ; $6a5c: $76
	jp nz, $289c                                     ; $6a5d: $c2 $9c $28

	jr @+$2a                                         ; $6a60: $18 $28

	ld l, d                                          ; $6a62: $6a
	ret nz                                           ; $6a63: $c0

	add h                                            ; $6a64: $84
	db $d3                                           ; $6a65: $d3
	pop hl                                           ; $6a66: $e1
	ld c, $1c                                        ; $6a67: $0e $1c
	dec de                                           ; $6a69: $1b
	sbc e                                            ; $6a6a: $9b
	inc sp                                           ; $6a6b: $33
	inc l                                            ; $6a6c: $2c
	inc de                                           ; $6a6d: $13
	cpl                                              ; $6a6e: $2f
	ld bc, $8603                                     ; $6a6f: $01 $03 $86
	ld b, $ce                                        ; $6a72: $06 $ce
	rst $38                                          ; $6a74: $ff
	db $ec                                           ; $6a75: $ec
	nop                                              ; $6a76: $00
	ld c, [hl]                                       ; $6a77: $4e
	ld bc, $f830                                     ; $6a78: $01 $30 $f8
	ld hl, sp+$70                                    ; $6a7b: $f8 $70
	ret nz                                           ; $6a7d: $c0

	push af                                          ; $6a7e: $f5
	add c                                            ; $6a7f: $81
	db $fd                                           ; $6a80: $fd
	sub e                                            ; $6a81: $93
	adc b                                            ; $6a82: $88
	ld sp, $0603                                     ; $6a83: $31 $03 $06
	ld [hl], l                                       ; $6a86: $75
	ccf                                              ; $6a87: $3f
	adc a                                            ; $6a88: $8f
	ld sp, $08fe                                     ; $6a89: $31 $fe $08
	and b                                            ; $6a8c: $a0
	ld sp, hl                                        ; $6a8d: $f9
	ld a, b                                          ; $6a8e: $78
	ld hl, sp-$75                                    ; $6a8f: $f8 $8b
	rrca                                             ; $6a91: $0f

jr_050_6a92:
	ld bc, $d0f0                                     ; $6a92: $01 $f0 $d0
	dec l                                            ; $6a95: $2d
	ld a, [hl]                                       ; $6a96: $7e
	rst $38                                          ; $6a97: $ff
	rst AddAOntoHL                                          ; $6a98: $ef
	or l                                             ; $6a99: $b5
	ld a, [bc]                                       ; $6a9a: $0a
	ld b, l                                          ; $6a9b: $45
	ld h, a                                          ; $6a9c: $67
	di                                               ; $6a9d: $f3
	pop af                                           ; $6a9e: $f1
	ldh a, [$f0]                                     ; $6a9f: $f0 $f0
	cp $ff                                           ; $6aa1: $fe $ff
	ccf                                              ; $6aa3: $3f
	rra                                              ; $6aa4: $1f
	halt                                             ; $6aa5: $76
	ldh a, [c]                                       ; $6aa6: $f2
	ld a, a                                          ; $6aa7: $7f
	ld e, a                                          ; $6aa8: $5f
	adc l                                            ; $6aa9: $8d
	ldh [c], a                                       ; $6aaa: $e2
	ld b, b                                          ; $6aab: $40
	nop                                              ; $6aac: $00
	ld b, $46                                        ; $6aad: $06 $46
	ld h, [hl]                                       ; $6aaf: $66
	ret nz                                           ; $6ab0: $c0

	add $e6                                          ; $6ab1: $c6 $e6
	add $00                                          ; $6ab3: $c6 $00
	nop                                              ; $6ab5: $00
	inc b                                            ; $6ab6: $04
	inc b                                            ; $6ab7: $04
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	halt                                             ; $6aba: $76
	jr nz, jr_050_6b38                               ; $6abb: $20 $7b

	ld sp, hl                                        ; $6abd: $f9
	sbc d                                            ; $6abe: $9a
	dec b                                            ; $6abf: $05
	inc bc                                           ; $6ac0: $03
	rlca                                             ; $6ac1: $07
	scf                                              ; $6ac2: $37
	ld d, [hl]                                       ; $6ac3: $56
	ld l, a                                          ; $6ac4: $6f
	ld l, a                                          ; $6ac5: $6f
	ld a, e                                          ; $6ac6: $7b
	ld a, [$7c78]                                    ; $6ac7: $fa $78 $7c
	rst SubAFromDE                                          ; $6aca: $df
	ret nz                                           ; $6acb: $c0

	adc [hl]                                         ; $6acc: $8e
	jp nz, $a8df                                     ; $6acd: $c2 $df $a8

	call nc, $156a                                   ; $6ad0: $d4 $6a $15
	jr jr_050_6aed                                   ; $6ad3: $18 $18

	rla                                              ; $6ad5: $17
	ld bc, $7fff                                     ; $6ad6: $01 $ff $7f
	ccf                                              ; $6ad9: $3f
	ccf                                              ; $6ada: $3f
	rrca                                             ; $6adb: $0f
	daa                                              ; $6adc: $27
	ld [$6879], sp                                   ; $6add: $08 $79 $68
	ld a, a                                          ; $6ae0: $7f
	cp $7f                                           ; $6ae1: $fe $7f
	ret c                                            ; $6ae3: $d8

	sbc c                                            ; $6ae4: $99
	rrca                                             ; $6ae5: $0f
	ld d, [hl]                                       ; $6ae6: $56
	rst $38                                          ; $6ae7: $ff
	cp $ff                                           ; $6ae8: $fe $ff
	cp $79                                           ; $6aea: $fe $79
	ld a, a                                          ; $6aec: $7f

jr_050_6aed:
	adc h                                            ; $6aed: $8c
	add hl, hl                                       ; $6aee: $29
	jp hl                                            ; $6aef: $e9


	rst FarCall                                          ; $6af0: $f7
	ld l, h                                          ; $6af1: $6c
	call c, wTaskParam0_word0                                    ; $6af2: $dc $b0 $d0
	ret nc                                           ; $6af5: $d0

	ld b, b                                          ; $6af6: $40
	ld [bc], a                                       ; $6af7: $02
	nop                                              ; $6af8: $00
	add c                                            ; $6af9: $81
	inc bc                                           ; $6afa: $03
	ld b, $0c                                        ; $6afb: $06 $0c
	jr c, @-$1e                                      ; $6afd: $38 $e0

	add b                                            ; $6aff: $80
	nop                                              ; $6b00: $00
	ld [hl], e                                       ; $6b01: $73
	halt                                             ; $6b02: $76
	ld a, b                                          ; $6b03: $78
	ld hl, sp+$6f                                    ; $6b04: $f8 $6f
	or [hl]                                          ; $6b06: $b6
	sub h                                            ; $6b07: $94
	ld [bc], a                                       ; $6b08: $02
	ld l, h                                          ; $6b09: $6c
	ld a, [$3f4b]                                    ; $6b0a: $fa $4b $3f
	ld a, $1c                                        ; $6b0d: $3e $1c
	dec c                                            ; $6b0f: $0d
	inc h                                            ; $6b10: $24
	ld de, $7b81                                     ; $6b11: $11 $81 $7b
	cp l                                             ; $6b14: $bd
	add d                                            ; $6b15: $82
	ld a, $1f                                        ; $6b16: $3e $1f
	call nz, $ffe1                                   ; $6b18: $c4 $e1 $ff
	cp a                                             ; $6b1b: $bf
	xor h                                            ; $6b1c: $ac
	adc h                                            ; $6b1d: $8c
	db $fd                                           ; $6b1e: $fd
	cp c                                             ; $6b1f: $b9
	pop hl                                           ; $6b20: $e1
	di                                               ; $6b21: $f3
	rst $38                                          ; $6b22: $ff
	rst $38                                          ; $6b23: $ff
	rst GetHLinHL                                          ; $6b24: $cf
	rst GetHLinHL                                          ; $6b25: $cf
	ei                                               ; $6b26: $fb
	rst $38                                          ; $6b27: $ff
	ld [hl+], a                                      ; $6b28: $22
	jr z, @+$6f                                      ; $6b29: $28 $6d

	db $d3                                           ; $6b2b: $d3
	di                                               ; $6b2c: $f3
	ld a, a                                          ; $6b2d: $7f
	cp $2c                                           ; $6b2e: $fe $2c
	db $dd                                           ; $6b30: $dd
	sub b                                            ; $6b31: $90
	sub e                                            ; $6b32: $93
	db $dd                                           ; $6b33: $dd
	rst $38                                          ; $6b34: $ff
	adc h                                            ; $6b35: $8c
	ccf                                              ; $6b36: $3f
	db $ec                                           ; $6b37: $ec

jr_050_6b38:
	cp $e0                                           ; $6b38: $fe $e0
	db $f4                                           ; $6b3a: $f4
	and [hl]                                         ; $6b3b: $a6
	ld c, d                                          ; $6b3c: $4a
	dec b                                            ; $6b3d: $05
	ld de, $f0f0                                     ; $6b3e: $11 $f0 $f0
	ret nz                                           ; $6b41: $c0

	ret nz                                           ; $6b42: $c0

	ld e, b                                          ; $6b43: $58
	or b                                             ; $6b44: $b0
	ld a, [$2aee]                                    ; $6b45: $fa $ee $2a
	ld d, l                                          ; $6b48: $55
	ld a, e                                          ; $6b49: $7b
	cp $9c                                           ; $6b4a: $fe $9c
	dec d                                            ; $6b4c: $15
	adc d                                            ; $6b4d: $8a
	sub l                                            ; $6b4e: $95
	ld h, c                                          ; $6b4f: $61
	ld h, b                                          ; $6b50: $60
	sbc [hl]                                         ; $6b51: $9e
	ld d, h                                          ; $6b52: $54
	ld l, a                                          ; $6b53: $6f
	cp $46                                           ; $6b54: $fe $46
	ret nz                                           ; $6b56: $c0

	sbc [hl]                                         ; $6b57: $9e
	xor h                                            ; $6b58: $ac
	ld l, l                                          ; $6b59: $6d
	add b                                            ; $6b5a: $80
	sbc [hl]                                         ; $6b5b: $9e
	call nz, $c052                                   ; $6b5c: $c4 $52 $c0
	sub h                                            ; $6b5f: $94
	ld c, a                                          ; $6b60: $4f
	rst SubAFromHL                                          ; $6b61: $d7
	ld c, a                                          ; $6b62: $4f
	or b                                             ; $6b63: $b0
	ld d, b                                          ; $6b64: $50
	or h                                             ; $6b65: $b4
	ld e, d                                          ; $6b66: $5a
	cp h                                             ; $6b67: $bc
	nop                                              ; $6b68: $00
	db $e3                                           ; $6b69: $e3
	dec b                                            ; $6b6a: $05
	sbc $e0                                          ; $6b6b: $de $e0
	sub d                                            ; $6b6d: $92
	db $e4                                           ; $6b6e: $e4
	ret nz                                           ; $6b6f: $c0

	add b                                            ; $6b70: $80
	add b                                            ; $6b71: $80
	cp $5e                                           ; $6b72: $fe $5e
	ld e, b                                          ; $6b74: $58
	ld [de], a                                       ; $6b75: $12
	inc hl                                           ; $6b76: $23
	ld b, h                                          ; $6b77: $44
	dec bc                                           ; $6b78: $0b
	scf                                              ; $6b79: $37
	add a                                            ; $6b7a: $87

jr_050_6b7b:
	ld a, e                                          ; $6b7b: $7b
	inc e                                            ; $6b7c: $1c
	ld a, a                                          ; $6b7d: $7f
	ld a, [hl-]                                      ; $6b7e: $3a
	add b                                            ; $6b7f: $80
	inc e                                            ; $6b80: $1c
	jr jr_050_6b7b                                   ; $6b81: $18 $f8

	ld [hl], e                                       ; $6b83: $73
	dec bc                                           ; $6b84: $0b
	inc c                                            ; $6b85: $0c
	sbc $2f                                          ; $6b86: $de $2f
	ld a, [$e3f0]                                    ; $6b88: $fa $f0 $e3
	rrca                                             ; $6b8b: $0f
	rlca                                             ; $6b8c: $07
	jp $f0e1                                         ; $6b8d: $c3 $e1 $f0


	inc b                                            ; $6b90: $04
	rrca                                             ; $6b91: $0f
	inc e                                            ; $6b92: $1c
	ld b, c                                          ; $6b93: $41
	di                                               ; $6b94: $f3
	di                                               ; $6b95: $f3
	ld sp, hl                                        ; $6b96: $f9
	ld hl, sp-$0c                                    ; $6b97: $f8 $f4
	ld l, d                                          ; $6b99: $6a
	cp b                                             ; $6b9a: $b8
	or b                                             ; $6b9b: $b0
	jr nc, jr_050_6c16                               ; $6b9c: $30 $78

	db $fc                                           ; $6b9e: $fc
	adc c                                            ; $6b9f: $89
	rst $38                                          ; $6ba0: $ff
	ld a, e                                          ; $6ba1: $7b
	or l                                             ; $6ba2: $b5
	ld e, a                                          ; $6ba3: $5f
	rst FarCall                                          ; $6ba4: $f7
	ei                                               ; $6ba5: $fb
	rst $38                                          ; $6ba6: $ff
	rst AddAOntoHL                                          ; $6ba7: $ef
	ld a, a                                          ; $6ba8: $7f
	dec b                                            ; $6ba9: $05
	rrca                                             ; $6baa: $0f
	ld a, [hl+]                                      ; $6bab: $2a
	rrca                                             ; $6bac: $0f
	rlca                                             ; $6bad: $07
	inc bc                                           ; $6bae: $03
	stop                                             ; $6baf: $10 $00
	ei                                               ; $6bb1: $fb
	rst $38                                          ; $6bb2: $ff
	push de                                          ; $6bb3: $d5
	ld d, l                                          ; $6bb4: $55
	cp a                                             ; $6bb5: $bf
	ld a, d                                          ; $6bb6: $7a
	inc sp                                           ; $6bb7: $33
	ld a, a                                          ; $6bb8: $7f
	dec de                                           ; $6bb9: $1b
	db $dd                                           ; $6bba: $dd
	rst $38                                          ; $6bbb: $ff
	sub a                                            ; $6bbc: $97
	rlca                                             ; $6bbd: $07
	nop                                              ; $6bbe: $00
	ccf                                              ; $6bbf: $3f
	rst $38                                          ; $6bc0: $ff
	rst $38                                          ; $6bc1: $ff
	ld d, l                                          ; $6bc2: $55
	rst $38                                          ; $6bc3: $ff
	ld [hl], l                                       ; $6bc4: $75
	ld a, d                                          ; $6bc5: $7a
	inc hl                                           ; $6bc6: $23
	sbc l                                            ; $6bc7: $9d
	ld bc, $dee2                                     ; $6bc8: $01 $e2 $de
	rst $38                                          ; $6bcb: $ff
	sbc l                                            ; $6bcc: $9d
	ldh a, [rP1]                                     ; $6bcd: $f0 $00
	ld a, d                                          ; $6bcf: $7a
	db $eb                                           ; $6bd0: $eb
	halt                                             ; $6bd1: $76
	inc de                                           ; $6bd2: $13
	sbc [hl]                                         ; $6bd3: $9e
	ld d, h                                          ; $6bd4: $54
	cp $de                                           ; $6bd5: $fe $de
	rst $38                                          ; $6bd7: $ff
	rst $38                                          ; $6bd8: $ff
	sbc b                                            ; $6bd9: $98
	ld hl, sp+$00                                    ; $6bda: $f8 $00
	rst $38                                          ; $6bdc: $ff
	nop                                              ; $6bdd: $00
	add c                                            ; $6bde: $81
	sub b                                            ; $6bdf: $90
	jr z, @+$7a                                      ; $6be0: $28 $78

	adc e                                            ; $6be2: $8b
	sub d                                            ; $6be3: $92
	ld d, l                                          ; $6be4: $55
	pop hl                                           ; $6be5: $e1
	db $fd                                           ; $6be6: $fd
	ret nz                                           ; $6be7: $c0

	nop                                              ; $6be8: $00
	ld a, b                                          ; $6be9: $78
	ld a, h                                          ; $6bea: $7c
	nop                                              ; $6beb: $00
	rst $38                                          ; $6bec: $ff
	ld a, d                                          ; $6bed: $7a
	cp l                                             ; $6bee: $bd
	xor $30                                          ; $6bef: $ee $30
	cp $9a                                           ; $6bf1: $fe $9a
	ld d, l                                          ; $6bf3: $55
	call $ffc3                                       ; $6bf4: $cd $c3 $ff
	ld a, [hl]                                       ; $6bf7: $7e
	ld [hl], a                                       ; $6bf8: $77
	reti                                             ; $6bf9: $d9


	sub [hl]                                         ; $6bfa: $96
	sbc b                                            ; $6bfb: $98
	jr jr_050_6c06                                   ; $6bfc: $18 $08

	nop                                              ; $6bfe: $00
	ld h, b                                          ; $6bff: $60
	ld [bc], a                                       ; $6c00: $02
	nop                                              ; $6c01: $00
	ld d, l                                          ; $6c02: $55
	ret nz                                           ; $6c03: $c0

	ld a, c                                          ; $6c04: $79
	rst GetHLinHL                                          ; $6c05: $cf

jr_050_6c06:
	rst SubAFromDE                                          ; $6c06: $df
	inc a                                            ; $6c07: $3c
	ld a, e                                          ; $6c08: $7b
	ret nc                                           ; $6c09: $d0

	ld l, [hl]                                       ; $6c0a: $6e
	add c                                            ; $6c0b: $81
	ld h, e                                          ; $6c0c: $63
	ld hl, sp-$62                                    ; $6c0d: $f8 $9e
	ld [hl+], a                                      ; $6c0f: $22
	ei                                               ; $6c10: $fb
	sbc l                                            ; $6c11: $9d
	ld d, [hl]                                       ; $6c12: $56
	inc bc                                           ; $6c13: $03
	sbc $0f                                          ; $6c14: $de $0f

jr_050_6c16:
	ld a, [hl]                                       ; $6c16: $7e
	ld a, e                                          ; $6c17: $7b
	ld a, h                                          ; $6c18: $7c
	rst SubAFromHL                                          ; $6c19: $d7
	sbc d                                            ; $6c1a: $9a
	ld [bc], a                                       ; $6c1b: $02
	inc hl                                           ; $6c1c: $23
	ld b, e                                          ; $6c1d: $43
	add l                                            ; $6c1e: $85
	ld a, [hl+]                                      ; $6c1f: $2a
	ld a, b                                          ; $6c20: $78
	ld l, c                                          ; $6c21: $69
	sbc [hl]                                         ; $6c22: $9e
	adc d                                            ; $6c23: $8a
	ld a, e                                          ; $6c24: $7b
	ret nc                                           ; $6c25: $d0

	sbc d                                            ; $6c26: $9a
	ld bc, $fbd7                                     ; $6c27: $01 $d7 $fb
	rst $38                                          ; $6c2a: $ff
	ld [de], a                                       ; $6c2b: $12
	cp $79                                           ; $6c2c: $fe $79
	ld [$697f], sp                                   ; $6c2e: $08 $7f $69
	add c                                            ; $6c31: $81
	rst SubAFromDE                                          ; $6c32: $df
	rst $38                                          ; $6c33: $ff
	rst SubAFromDE                                          ; $6c34: $df
	cp a                                             ; $6c35: $bf
	ld a, [hl]                                       ; $6c36: $7e
	rst $38                                          ; $6c37: $ff
	rst $38                                          ; $6c38: $ff
	ld bc, $140a                                     ; $6c39: $01 $0a $14
	and d                                            ; $6c3c: $a2
	dec bc                                           ; $6c3d: $0b
	inc b                                            ; $6c3e: $04
	ld b, e                                          ; $6c3f: $43
	ld [hl], d                                       ; $6c40: $72
	cp $f5                                           ; $6c41: $fe $f5
	ld [$845c], a                                    ; $6c43: $ea $5c $84
	jp nz, $e182                                     ; $6c46: $c2 $82 $e1

	ld a, [bc]                                       ; $6c49: $0a
	add l                                            ; $6c4a: $85
	jp nz, $00c1                                     ; $6c4b: $c2 $c1 $00

	ld b, c                                          ; $6c4e: $41
	nop                                              ; $6c4f: $00
	ld a, e                                          ; $6c50: $7b
	jp nc, Jump_050_6e75                             ; $6c51: $d2 $75 $6e

	ld e, $c0                                        ; $6c54: $1e $c0
	ld a, [hl]                                       ; $6c56: $7e
	add $7b                                          ; $6c57: $c6 $7b
	cp $5d                                           ; $6c59: $fe $5d
	add b                                            ; $6c5b: $80
	adc b                                            ; $6c5c: $88
	ld b, $d7                                        ; $6c5d: $06 $d7
	ld c, a                                          ; $6c5f: $4f
	ld d, a                                          ; $6c60: $57
	ld l, a                                          ; $6c61: $6f
	ld d, a                                          ; $6c62: $57
	ld l, a                                          ; $6c63: $6f
	ld b, e                                          ; $6c64: $43
	ld l, a                                          ; $6c65: $6f
	nop                                              ; $6c66: $00
	add b                                            ; $6c67: $80
	cp [hl]                                          ; $6c68: $be
	db $fc                                           ; $6c69: $fc
	db $fc                                           ; $6c6a: $fc
	ld hl, sp-$5e                                    ; $6c6b: $f8 $a2
	and h                                            ; $6c6d: $a4
	rst $38                                          ; $6c6e: $ff
	ld a, a                                          ; $6c6f: $7f
	db $dd                                           ; $6c70: $dd
	ei                                               ; $6c71: $fb
	ld a, [$7970]                                    ; $6c72: $fa $70 $79
	call nz, $0798                                   ; $6c75: $c4 $98 $07
	rra                                              ; $6c78: $1f
	ld a, a                                          ; $6c79: $7f
	ld a, [hl]                                       ; $6c7a: $7e
	cp $f9                                           ; $6c7b: $fe $f9
	or $de                                           ; $6c7d: $f6 $de
	rst $38                                          ; $6c7f: $ff
	add c                                            ; $6c80: $81
	db $eb                                           ; $6c81: $eb
	dec d                                            ; $6c82: $15
	inc hl                                           ; $6c83: $23
	ld c, a                                          ; $6c84: $4f
	add e                                            ; $6c85: $83
	call z, $ba1a                                    ; $6c86: $cc $1a $ba
	db $dd                                           ; $6c89: $dd
	ld a, e                                          ; $6c8a: $7b
	or a                                             ; $6c8b: $b7
	scf                                              ; $6c8c: $37
	sbc a                                            ; $6c8d: $9f
	inc sp                                           ; $6c8e: $33
	rst SubAFromBC                                          ; $6c8f: $e7
	push hl                                          ; $6c90: $e5
	and e                                            ; $6c91: $a3
	add a                                            ; $6c92: $87
	rst GetHLinHL                                          ; $6c93: $cf
	rst GetHLinHL                                          ; $6c94: $cf
	rst $38                                          ; $6c95: $ff
	adc a                                            ; $6c96: $8f
	add hl, bc                                       ; $6c97: $09
	inc c                                            ; $6c98: $0c
	add $c7                                          ; $6c99: $c6 $c7
	or e                                             ; $6c9b: $b3
	add c                                            ; $6c9c: $81
	jp z, $da7f                                      ; $6c9d: $ca $7f $da

	rst $38                                          ; $6ca0: $ff
	sub [hl]                                         ; $6ca1: $96
	inc b                                            ; $6ca2: $04
	ret nz                                           ; $6ca3: $c0

	ldh [$7f], a                                     ; $6ca4: $e0 $7f
	rra                                              ; $6ca6: $1f
	add b                                            ; $6ca7: $80
	ret nz                                           ; $6ca8: $c0

	rst $38                                          ; $6ca9: $ff
	ei                                               ; $6caa: $fb
	jp c, $94ff                                      ; $6cab: $da $ff $94

	db $fd                                           ; $6cae: $fd
	ld a, [hl-]                                      ; $6caf: $3a
	and l                                            ; $6cb0: $a5
	ld sp, hl                                        ; $6cb1: $f9
	nop                                              ; $6cb2: $00
	rra                                              ; $6cb3: $1f
	xor d                                            ; $6cb4: $aa
	ld d, a                                          ; $6cb5: $57
	rst $38                                          ; $6cb6: $ff
	nop                                              ; $6cb7: $00
	di                                               ; $6cb8: $f3
	ld a, b                                          ; $6cb9: $78
	sub e                                            ; $6cba: $93
	ld a, d                                          ; $6cbb: $7a
	rst $38                                          ; $6cbc: $ff
	sub l                                            ; $6cbd: $95
	and l                                            ; $6cbe: $a5
	ld e, c                                          ; $6cbf: $59
	ld a, [$ff00]                                    ; $6cc0: $fa $00 $ff
	xor d                                            ; $6cc3: $aa
	ld d, l                                          ; $6cc4: $55
	rst $38                                          ; $6cc5: $ff
	ld a, [de]                                       ; $6cc6: $1a
	rst SubAFromBC                                          ; $6cc7: $e7
	db $fc                                           ; $6cc8: $fc
	sub h                                            ; $6cc9: $94
	rst $38                                          ; $6cca: $ff
	ld l, e                                          ; $6ccb: $6b
	ld e, l                                          ; $6ccc: $5d
	ld sp, hl                                        ; $6ccd: $f9
	nop                                              ; $6cce: $00
	ret nc                                           ; $6ccf: $d0

	xor b                                            ; $6cd0: $a8
	ld d, l                                          ; $6cd1: $55
	rst $38                                          ; $6cd2: $ff
	sub h                                            ; $6cd3: $94
	db $e3                                           ; $6cd4: $e3
	ld l, a                                          ; $6cd5: $6f
	ldh a, [$9c]                                     ; $6cd6: $f0 $9c
	ld a, [hl-]                                      ; $6cd8: $3a
	ld d, l                                          ; $6cd9: $55
	ld h, d                                          ; $6cda: $62

jr_050_6cdb:
	halt                                             ; $6cdb: $76
	ret nc                                           ; $6cdc: $d0

	ld a, a                                          ; $6cdd: $7f
	ret nc                                           ; $6cde: $d0

	sbc [hl]                                         ; $6cdf: $9e
	xor $6f                                          ; $6ce0: $ee $6f
	ldh a, [$9d]                                     ; $6ce2: $f0 $9d
	and h                                            ; $6ce4: $a4
	cp d                                             ; $6ce5: $ba
	db $fd                                           ; $6ce6: $fd
	ld a, a                                          ; $6ce7: $7f
	ldh a, [$9d]                                     ; $6ce8: $f0 $9d
	jr jr_050_6cdb                                   ; $6cea: $18 $ef

	ld l, a                                          ; $6cec: $6f
	ldh a, [$df]                                     ; $6ced: $f0 $df
	ld d, c                                          ; $6cef: $51
	ld a, d                                          ; $6cf0: $7a
	rst FarCall                                          ; $6cf1: $f7
	sbc e                                            ; $6cf2: $9b
	ld [bc], a                                       ; $6cf3: $02
	ld d, l                                          ; $6cf4: $55
	rst $38                                          ; $6cf5: $ff
	inc b                                            ; $6cf6: $04
	ld l, [hl]                                       ; $6cf7: $6e
	call $ff99                                       ; $6cf8: $cd $99 $ff
	or b                                             ; $6cfb: $b0
	ld c, d                                          ; $6cfc: $4a
	nop                                              ; $6cfd: $00
	ld a, [bc]                                       ; $6cfe: $0a

Call_050_6cff:
	push de                                          ; $6cff: $d5
	ld a, e                                          ; $6d00: $7b
	ret nz                                           ; $6d01: $c0

	ld l, d                                          ; $6d02: $6a
	cp l                                             ; $6d03: $bd
	ld a, [hl]                                       ; $6d04: $7e
	cp a                                             ; $6d05: $bf
	sbc [hl]                                         ; $6d06: $9e
	db $eb                                           ; $6d07: $eb

jr_050_6d08:
	ld a, e                                          ; $6d08: $7b
	inc c                                            ; $6d09: $0c
	ld a, a                                          ; $6d0a: $7f
	ld c, b                                          ; $6d0b: $48
	ld a, a                                          ; $6d0c: $7f
	ldh a, [c]                                       ; $6d0d: $f2
	ld a, l                                          ; $6d0e: $7d
	ld a, [$f073]                                    ; $6d0f: $fa $73 $f0
	sub l                                            ; $6d12: $95
	add h                                            ; $6d13: $84
	ld d, [hl]                                       ; $6d14: $56
	nop                                              ; $6d15: $00
	xor d                                            ; $6d16: $aa
	dec b                                            ; $6d17: $05
	ld [bc], a                                       ; $6d18: $02
	ld bc, $00ff                                     ; $6d19: $01 $ff $00
	ei                                               ; $6d1c: $fb
	ld l, a                                          ; $6d1d: $6f
	ldh a, [$7e]                                     ; $6d1e: $f0 $7e
	ld d, c                                          ; $6d20: $51
	ld a, a                                          ; $6d21: $7f
	inc b                                            ; $6d22: $04
	ld a, d                                          ; $6d23: $7a
	ld c, e                                          ; $6d24: $4b
	sbc h                                            ; $6d25: $9c
	rst $38                                          ; $6d26: $ff
	jr nz, jr_050_6d08                               ; $6d27: $20 $df

	db $fc                                           ; $6d29: $fc
	ld a, h                                          ; $6d2a: $7c
	ld c, l                                          ; $6d2b: $4d
	ld a, a                                          ; $6d2c: $7f
	ldh a, [$9a]                                     ; $6d2d: $f0 $9a
	xor d                                            ; $6d2f: $aa
	ret nz                                           ; $6d30: $c0

	cp a                                             ; $6d31: $bf
	ld e, d                                          ; $6d32: $5a
	ldh [rPCM34], a                                  ; $6d33: $e0 $77
	ret nz                                           ; $6d35: $c0

	sbc [hl]                                         ; $6d36: $9e
	ccf                                              ; $6d37: $3f
	halt                                             ; $6d38: $76
	and e                                            ; $6d39: $a3
	sbc c                                            ; $6d3a: $99
	sub l                                            ; $6d3b: $95
	rlca                                             ; $6d3c: $07
	xor d                                            ; $6d3d: $aa
	nop                                              ; $6d3e: $00
	ld a, l                                          ; $6d3f: $7d
	ld [$d67b], a                                    ; $6d40: $ea $7b $d6
	ld [hl], e                                       ; $6d43: $73
	db $fd                                           ; $6d44: $fd
	rst SubAFromDE                                          ; $6d45: $df
	ld bc, $449a                                     ; $6d46: $01 $9a $44
	ld sp, hl                                        ; $6d49: $f9
	ld c, b                                          ; $6d4a: $48
	rlca                                             ; $6d4b: $07
	db $fd                                           ; $6d4c: $fd
	ld a, e                                          ; $6d4d: $7b
	ld a, e                                          ; $6d4e: $7b
	ld a, d                                          ; $6d4f: $7a
	nop                                              ; $6d50: $00
	ld a, [hl]                                       ; $6d51: $7e

jr_050_6d52:
	jr nz, jr_050_6d52                               ; $6d52: $20 $fe

	sub [hl]                                         ; $6d54: $96
	xor l                                            ; $6d55: $ad
	ld d, l                                          ; $6d56: $55
	rst $38                                          ; $6d57: $ff
	rst $38                                          ; $6d58: $ff
	ld hl, sp-$04                                    ; $6d59: $f8 $fc
	xor b                                            ; $6d5b: $a8
	ld b, h                                          ; $6d5c: $44
	db $10                                           ; $6d5d: $10
	ld a, e                                          ; $6d5e: $7b
	ldh [c], a                                       ; $6d5f: $e2
	ld a, l                                          ; $6d60: $7d
	db $db                                           ; $6d61: $db
	add b                                            ; $6d62: $80
	rst SubAFromDE                                          ; $6d63: $df
	ld a, a                                          ; $6d64: $7f
	ld sp, hl                                        ; $6d65: $f9
	dec a                                            ; $6d66: $3d
	ld l, a                                          ; $6d67: $6f
	ld d, a                                          ; $6d68: $57
	ccf                                              ; $6d69: $3f
	ld e, l                                          ; $6d6a: $5d
	ld c, l                                          ; $6d6b: $4d
	ld e, a                                          ; $6d6c: $5f
	ld c, $c8                                        ; $6d6d: $0e $c8
	sbc b                                            ; $6d6f: $98
	and b                                            ; $6d70: $a0
	ret nz                                           ; $6d71: $c0

	add b                                            ; $6d72: $80
	ret                                              ; $6d73: $c9


	inc sp                                           ; $6d74: $33
	ld h, a                                          ; $6d75: $67
	rst GetHLinHL                                          ; $6d76: $cf
	sbc a                                            ; $6d77: $9f
	cp l                                             ; $6d78: $bd
	db $fd                                           ; $6d79: $fd
	ei                                               ; $6d7a: $fb
	add c                                            ; $6d7b: $81
	nop                                              ; $6d7c: $00
	jr nz, jr_050_6d7f                               ; $6d7d: $20 $00

jr_050_6d7f:
	ld bc, $100a                                     ; $6d7f: $01 $0a $10
	sub l                                            ; $6d82: $95
	ld sp, $c1c1                                     ; $6d83: $31 $c1 $c1
	cp a                                             ; $6d86: $bf
	ld a, a                                          ; $6d87: $7f
	rst $38                                          ; $6d88: $ff
	ld [hl], a                                       ; $6d89: $77
	cp d                                             ; $6d8a: $ba
	push de                                          ; $6d8b: $d5
	rra                                              ; $6d8c: $1f
	ld a, c                                          ; $6d8d: $79
	call nz, $ffde                                   ; $6d8e: $c4 $de $ff
	sub [hl]                                         ; $6d91: $96
	rst AddAOntoHL                                          ; $6d92: $ef
	ld a, e                                          ; $6d93: $7b
	push af                                          ; $6d94: $f5
	cp d                                             ; $6d95: $ba
	ld [hl], l                                       ; $6d96: $75
	db $ed                                           ; $6d97: $ed
	ld e, b                                          ; $6d98: $58
	or [hl]                                          ; $6d99: $b6
	db $d3                                           ; $6d9a: $d3
	db $dd                                           ; $6d9b: $dd
	rst $38                                          ; $6d9c: $ff
	sbc d                                            ; $6d9d: $9a
	ldh a, [c]                                       ; $6d9e: $f2
	rst FarCall                                          ; $6d9f: $f7
	rst AddAOntoHL                                          ; $6da0: $ef
	ld l, a                                          ; $6da1: $6f
	rst FarCall                                          ; $6da2: $f7
	ld a, d                                          ; $6da3: $7a
	sub d                                            ; $6da4: $92
	add [hl]                                         ; $6da5: $86
	inc h                                            ; $6da6: $24
	jr nz, jr_050_6da9                               ; $6da7: $20 $00

jr_050_6da9:
	add hl, hl                                       ; $6da9: $29
	rst $38                                          ; $6daa: $ff
	cp $f8                                           ; $6dab: $fe $f8

jr_050_6dad:
	di                                               ; $6dad: $f3
	ld [hl], e                                       ; $6dae: $73
	rst SubAFromBC                                          ; $6daf: $e7
	rst SubAFromBC                                          ; $6db0: $e7
	rst JumpTable                                          ; $6db1: $c7
	ld hl, $0011                                     ; $6db2: $21 $11 $00
	inc d                                            ; $6db5: $14
	ld [bc], a                                       ; $6db6: $02
	nop                                              ; $6db7: $00
	ldh a, [$f0]                                     ; $6db8: $f0 $f0
	rst SubAFromDE                                          ; $6dba: $df
	ld l, $ff                                        ; $6dbb: $2e $ff
	ei                                               ; $6dbd: $fb
	db $fd                                           ; $6dbe: $fd
	sbc $ff                                          ; $6dbf: $de $ff
	ld a, [hl]                                       ; $6dc1: $7e
	add $7c                                          ; $6dc2: $c6 $7c
	ld d, c                                          ; $6dc4: $51
	add b                                            ; $6dc5: $80
	xor e                                            ; $6dc6: $ab
	adc [hl]                                         ; $6dc7: $8e
	jr z, jr_050_6dad                                ; $6dc8: $28 $e3

	nop                                              ; $6dca: $00
	add b                                            ; $6dcb: $80
	ei                                               ; $6dcc: $fb
	rst $38                                          ; $6dcd: $ff
	cp $00                                           ; $6dce: $fe $00
	nop                                              ; $6dd0: $00
	inc e                                            ; $6dd1: $1c
	xor d                                            ; $6dd2: $aa
	push af                                          ; $6dd3: $f5
	and [hl]                                         ; $6dd4: $a6
	nop                                              ; $6dd5: $00
	push de                                          ; $6dd6: $d5
	inc e                                            ; $6dd7: $1c
	ld b, b                                          ; $6dd8: $40
	ld a, d                                          ; $6dd9: $7a
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	ld e, c                                          ; $6ddc: $59
	rst $38                                          ; $6ddd: $ff
	ld a, a                                          ; $6dde: $7f
	ld [$0100], sp                                   ; $6ddf: $08 $00 $01
	xor d                                            ; $6de2: $aa
	ld d, l                                          ; $6de3: $55
	ld a, a                                          ; $6de4: $7f
	ld a, [hl]                                       ; $6de5: $7e
	db $e3                                           ; $6de6: $e3
	sbc h                                            ; $6de7: $9c
	or b                                             ; $6de8: $b0
	ld [$7a0b], sp                                   ; $6de9: $08 $0b $7a
	db $10                                           ; $6dec: $10
	rst SubAFromDE                                          ; $6ded: $df
	rst $38                                          ; $6dee: $ff
	sbc d                                            ; $6def: $9a
	ld h, b                                          ; $6df0: $60
	nop                                              ; $6df1: $00

jr_050_6df2:
	call nz, $f5aa                                   ; $6df2: $c4 $aa $f5
	ld a, e                                          ; $6df5: $7b
	ldh a, [$9c]                                     ; $6df6: $f0 $9c
	ld l, c                                          ; $6df8: $69
	nop                                              ; $6df9: $00
	sub d                                            ; $6dfa: $92
	ld [hl], e                                       ; $6dfb: $73
	ldh a, [$79]                                     ; $6dfc: $f0 $79
	add [hl]                                         ; $6dfe: $86
	sub a                                            ; $6dff: $97
	xor d                                            ; $6e00: $aa
	ld e, a                                          ; $6e01: $5f
	rst $38                                          ; $6e02: $ff
	nop                                              ; $6e03: $00
	ld d, l                                          ; $6e04: $55
	sbc e                                            ; $6e05: $9b
	ld b, $31                                        ; $6e06: $06 $31
	ld [hl], c                                       ; $6e08: $71
	ld e, l                                          ; $6e09: $5d
	sbc [hl]                                         ; $6e0a: $9e
	ld c, $7b                                        ; $6e0b: $0e $7b
	ldh a, [$98]                                     ; $6e0d: $f0 $98
	push de                                          ; $6e0f: $d5
	rst $38                                          ; $6e10: $ff
	nop                                              ; $6e11: $00
	ld b, h                                          ; $6e12: $44
	xor $18                                          ; $6e13: $ee $18
	ld b, $73                                        ; $6e15: $06 $73
	ldh a, [$9c]                                     ; $6e17: $f0 $9c
	add hl, sp                                       ; $6e19: $39
	nop                                              ; $6e1a: $00
	pop bc                                           ; $6e1b: $c1
	ld a, c                                          ; $6e1c: $79
	ld b, c                                          ; $6e1d: $41
	sbc d                                            ; $6e1e: $9a

jr_050_6e1f:
	ld a, $00                                        ; $6e1f: $3e $00
	or l                                             ; $6e21: $b5
	ld h, e                                          ; $6e22: $63
	inc b                                            ; $6e23: $04
	cp $9a                                           ; $6e24: $fe $9a
	pop bc                                           ; $6e26: $c1
	rst $38                                          ; $6e27: $ff
	rst GetHLinHL                                          ; $6e28: $cf
	nop                                              ; $6e29: $00
	jr c, @+$7c                                      ; $6e2a: $38 $7a

	db $e4                                           ; $6e2c: $e4
	ld a, a                                          ; $6e2d: $7f
	rst SubAFromDE                                          ; $6e2e: $df
	sbc h                                            ; $6e2f: $9c
	ld d, d                                          ; $6e30: $52
	adc [hl]                                         ; $6e31: $8e
	and a                                            ; $6e32: $a7
	ld [hl], d                                       ; $6e33: $72
	call nc, $f67f                                   ; $6e34: $d4 $7f $f6
	sub [hl]                                         ; $6e37: $96
	ld b, b                                          ; $6e38: $40
	ld [bc], a                                       ; $6e39: $02
	ld d, l                                          ; $6e3a: $55
	cp [hl]                                          ; $6e3b: $be
	add b                                            ; $6e3c: $80
	dec d                                            ; $6e3d: $15
	xor d                                            ; $6e3e: $aa
	ret nz                                           ; $6e3f: $c0

	ld h, h                                          ; $6e40: $64
	cp $7a                                           ; $6e41: $fe $7a
	dec e                                            ; $6e43: $1d
	sub l                                            ; $6e44: $95
	nop                                              ; $6e45: $00
	jr jr_050_6df2                                   ; $6e46: $18 $aa

	ld d, l                                          ; $6e48: $55
	xor a                                            ; $6e49: $af
	nop                                              ; $6e4a: $00
	ld d, l                                          ; $6e4b: $55
	xor d                                            ; $6e4c: $aa
	add l                                            ; $6e4d: $85
	ld e, $6d                                        ; $6e4e: $1e $6d
	dec c                                            ; $6e50: $0d
	sub l                                            ; $6e51: $95
	ld [bc], a                                       ; $6e52: $02
	pop hl                                           ; $6e53: $e1
	cp l                                             ; $6e54: $bd
	ld e, d                                          ; $6e55: $5a
	ret nz                                           ; $6e56: $c0

	nop                                              ; $6e57: $00
	ld d, l                                          ; $6e58: $55
	jr z, jr_050_6e1f                                ; $6e59: $28 $c4

	and d                                            ; $6e5b: $a2
	ld a, d                                          ; $6e5c: $7a
	jp $ffdf                                         ; $6e5d: $c3 $df $ff


	ld a, [hl]                                       ; $6e60: $7e
	xor l                                            ; $6e61: $ad
	ld a, d                                          ; $6e62: $7a
	and c                                            ; $6e63: $a1
	sbc [hl]                                         ; $6e64: $9e
	dec d                                            ; $6e65: $15
	ld a, e                                          ; $6e66: $7b
	ldh [$9c], a                                     ; $6e67: $e0 $9c
	ld a, c                                          ; $6e69: $79
	db $d3                                           ; $6e6a: $d3
	nop                                              ; $6e6b: $00
	ld a, d                                          ; $6e6c: $7a
	ld a, l                                          ; $6e6d: $7d
	ld a, e                                          ; $6e6e: $7b
	ret nc                                           ; $6e6f: $d0

	sub [hl]                                         ; $6e70: $96
	inc l                                            ; $6e71: $2c
	ld [hl], c                                       ; $6e72: $71
	xor d                                            ; $6e73: $aa
	ld e, l                                          ; $6e74: $5d

Jump_050_6e75:
	xor [hl]                                         ; $6e75: $ae
	ld d, b                                          ; $6e76: $50
	cp e                                             ; $6e77: $bb
	ld b, e                                          ; $6e78: $43
	sbc $73                                          ; $6e79: $de $73
	or b                                             ; $6e7b: $b0
	sub h                                            ; $6e7c: $94
	call z, $2180                                    ; $6e7d: $cc $80 $21
	sbc $bf                                          ; $6e80: $de $bf
	ld [hl], h                                       ; $6e82: $74
	xor d                                            ; $6e83: $aa
	ld bc, $2093                                     ; $6e84: $01 $93 $20
	ld [hl], e                                       ; $6e87: $73
	ld [hl], l                                       ; $6e88: $75
	ld [hl], a                                       ; $6e89: $77
	add b                                            ; $6e8a: $80
	cp $40                                           ; $6e8b: $fe $40
	db $10                                           ; $6e8d: $10
	adc h                                            ; $6e8e: $8c
	reti                                             ; $6e8f: $d9


	ei                                               ; $6e90: $fb
	or e                                             ; $6e91: $b3
	ld h, a                                          ; $6e92: $67
	rst $38                                          ; $6e93: $ff
	add b                                            ; $6e94: $80
	ld b, b                                          ; $6e95: $40
	rlca                                             ; $6e96: $07
	nop                                              ; $6e97: $00
	db $10                                           ; $6e98: $10
	jr nz, jr_050_6ebc                               ; $6e99: $20 $21

	dec b                                            ; $6e9b: $05
	ld b, $e0                                        ; $6e9c: $06 $e0
	ld hl, sp-$0d                                    ; $6e9e: $f8 $f3
	rst FarCall                                          ; $6ea0: $f7
	ei                                               ; $6ea1: $fb
	rst FarCall                                          ; $6ea2: $f7
	cp [hl]                                          ; $6ea3: $be
	add hl, sp                                       ; $6ea4: $39
	jr nz, jr_050_6eb3                               ; $6ea5: $20 $0c

	ld h, e                                          ; $6ea7: $63
	ld h, e                                          ; $6ea8: $63
	rst JumpTable                                          ; $6ea9: $c7
	add b                                            ; $6eaa: $80
	adc a                                            ; $6eab: $8f
	ld d, a                                          ; $6eac: $57
	ld b, $d0                                        ; $6ead: $06 $d0
	add e                                            ; $6eaf: $83
	xor a                                            ; $6eb0: $af
	ld e, h                                          ; $6eb1: $5c
	xor a                                            ; $6eb2: $af

jr_050_6eb3:
	ld e, a                                          ; $6eb3: $5f
	rst $38                                          ; $6eb4: $ff
	ld hl, sp+$0b                                    ; $6eb5: $f8 $0b
	ret z                                            ; $6eb7: $c8

	ldh a, [$f3]                                     ; $6eb8: $f0 $f3
	ldh a, [$e0]                                     ; $6eba: $f0 $e0

jr_050_6ebc:
	add b                                            ; $6ebc: $80
	nop                                              ; $6ebd: $00
	inc b                                            ; $6ebe: $04
	ld bc, $8df1                                     ; $6ebf: $01 $f1 $8d
	ld a, [$fffc]                                    ; $6ec2: $fa $fc $ff
	db $e4                                           ; $6ec5: $e4
	ld c, e                                          ; $6ec6: $4b
	ldh [rIF], a                                     ; $6ec7: $e0 $0f
	ld [hl], e                                       ; $6ec9: $73
	ld a, [hl]                                       ; $6eca: $7e
	add h                                            ; $6ecb: $84
	rst $38                                          ; $6ecc: $ff
	add l                                            ; $6ecd: $85
	jr nc, jr_050_6eef                               ; $6ece: $30 $1f

	rst SubAFromBC                                          ; $6ed0: $e7
	ld l, e                                          ; $6ed1: $6b
	ld [hl], l                                       ; $6ed2: $75
	ei                                               ; $6ed3: $fb
	db $f4                                           ; $6ed4: $f4
	ld a, [hl-]                                      ; $6ed5: $3a
	db $f4                                           ; $6ed6: $f4
	xor $0b                                          ; $6ed7: $ee $0b
	add a                                            ; $6ed9: $87
	adc e                                            ; $6eda: $8b
	dec b                                            ; $6edb: $05
	dec bc                                           ; $6edc: $0b
	dec b                                            ; $6edd: $05
	dec bc                                           ; $6ede: $0b
	ld de, $d5e2                                     ; $6edf: $11 $e2 $d5
	ld a, [rIE]                                    ; $6ee2: $fa $ff $ff
	halt                                             ; $6ee5: $76
	rst SubAFromDE                                          ; $6ee6: $df
	xor d                                            ; $6ee7: $aa
	call c, $90ff                                    ; $6ee8: $dc $ff $90
	ld sp, hl                                        ; $6eeb: $f9
	ldh [$d5], a                                     ; $6eec: $e0 $d5
	ret c                                            ; $6eee: $d8

jr_050_6eef:
	ld l, d                                          ; $6eef: $6a
	xor d                                            ; $6ef0: $aa
	ld [hl], l                                       ; $6ef1: $75
	sbc l                                            ; $6ef2: $9d
	ldh a, [$f8]                                     ; $6ef3: $f0 $f8
	cp [hl]                                          ; $6ef5: $be
	rst SubAFromBC                                          ; $6ef6: $e7
	pop af                                           ; $6ef7: $f1
	db $fd                                           ; $6ef8: $fd
	adc $de                                          ; $6ef9: $ce $de
	rst $38                                          ; $6efb: $ff
	sub d                                            ; $6efc: $92
	rst GetHLinHL                                          ; $6efd: $cf
	ret z                                            ; $6efe: $c8

	ld h, a                                          ; $6eff: $67
	db $fd                                           ; $6f00: $fd
	ld a, [hl+]                                      ; $6f01: $2a
	push af                                          ; $6f02: $f5
	jp c, $e747                                      ; $6f03: $da $47 $e7

	scf                                              ; $6f06: $37
	sbc b                                            ; $6f07: $98
	rst $38                                          ; $6f08: $ff
	ld [hl], a                                       ; $6f09: $77
	db $dd                                           ; $6f0a: $dd
	rst $38                                          ; $6f0b: $ff
	sub l                                            ; $6f0c: $95
	add hl, sp                                       ; $6f0d: $39
	cp h                                             ; $6f0e: $bc
	ld [hl], l                                       ; $6f0f: $75
	sbc d                                            ; $6f10: $9a
	db $ec                                           ; $6f11: $ec
	ldh a, [c]                                       ; $6f12: $f2
	ld l, a                                          ; $6f13: $6f
	xor h                                            ; $6f14: $ac
	call nz, Call_050_7b63                           ; $6f15: $c4 $63 $7b
	ld b, c                                          ; $6f18: $41
	add l                                            ; $6f19: $85
	rst $38                                          ; $6f1a: $ff
	rst FarCall                                          ; $6f1b: $f7
	ei                                               ; $6f1c: $fb
	ei                                               ; $6f1d: $fb
	db $fc                                           ; $6f1e: $fc
	db $fc                                           ; $6f1f: $fc
	rst GetHLinHL                                          ; $6f20: $cf
	sbc l                                            ; $6f21: $9d
	ld [$c85f], a                                    ; $6f22: $ea $5f $c8
	nop                                              ; $6f25: $00
	db $10                                           ; $6f26: $10
	ret z                                            ; $6f27: $c8

	nop                                              ; $6f28: $00
	inc bc                                           ; $6f29: $03
	rra                                              ; $6f2a: $1f
	rst $38                                          ; $6f2b: $ff
	add sp, -$04                                     ; $6f2c: $e8 $fc
	pop af                                           ; $6f2e: $f1
	rst $38                                          ; $6f2f: $ff
	adc a                                            ; $6f30: $8f
	rst FarCall                                          ; $6f31: $f7
	xor a                                            ; $6f32: $af
	ld d, a                                          ; $6f33: $57
	ld a, c                                          ; $6f34: $79
	add e                                            ; $6f35: $83
	add b                                            ; $6f36: $80
	and a                                            ; $6f37: $a7
	ld [bc], a                                       ; $6f38: $02
	ld [bc], a                                       ; $6f39: $02
	di                                               ; $6f3a: $f3
	db $fc                                           ; $6f3b: $fc
	ldh [c], a                                       ; $6f3c: $e2
	dec h                                            ; $6f3d: $25
	ld c, d                                          ; $6f3e: $4a
	sub c                                            ; $6f3f: $91
	sub a                                            ; $6f40: $97
	ld e, [hl]                                       ; $6f41: $5e
	sbc e                                            ; $6f42: $9b
	ld l, $5f                                        ; $6f43: $2e $5f
	ld hl, sp-$01                                    ; $6f45: $f8 $ff
	rst AddAOntoHL                                          ; $6f47: $ef
	rst AddAOntoHL                                          ; $6f48: $ef
	ld sp, hl                                        ; $6f49: $f9
	db $fc                                           ; $6f4a: $fc
	rst $38                                          ; $6f4b: $ff
	rst $38                                          ; $6f4c: $ff
	jr nz, jr_050_6f69                               ; $6f4d: $20 $1a

	dec a                                            ; $6f4f: $3d
	inc d                                            ; $6f50: $14
	adc e                                            ; $6f51: $8b
	ld [hl], l                                       ; $6f52: $75
	jr z, @+$57                                      ; $6f53: $28 $55

	rst SubAFromDE                                          ; $6f55: $df
	add b                                            ; $6f56: $80
	pop hl                                           ; $6f57: $e1
	ret z                                            ; $6f58: $c8

	cp $ff                                           ; $6f59: $fe $ff
	ei                                               ; $6f5b: $fb
	rst SubAFromDE                                          ; $6f5c: $df
	cp [hl]                                          ; $6f5d: $be

jr_050_6f5e:
	and b                                            ; $6f5e: $a0
	ld h, [hl]                                       ; $6f5f: $66
	inc de                                           ; $6f60: $13
	ld h, [hl]                                       ; $6f61: $66
	ld a, h                                          ; $6f62: $7c
	sbc [hl]                                         ; $6f63: $9e
	ld e, a                                          ; $6f64: $5f
	ccf                                              ; $6f65: $3f
	ld a, a                                          ; $6f66: $7f
	sbc c                                            ; $6f67: $99
	rst SubAFromBC                                          ; $6f68: $e7

jr_050_6f69:
	rst FarCall                                          ; $6f69: $f7
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	cp a                                             ; $6f6c: $bf
	rst $38                                          ; $6f6d: $ff
	ld hl, $b389                                     ; $6f6e: $21 $89 $b3
	ld a, c                                          ; $6f71: $79
	cp c                                             ; $6f72: $b9
	inc e                                            ; $6f73: $1c
	rst $38                                          ; $6f74: $ff
	rst $38                                          ; $6f75: $ff
	adc d                                            ; $6f76: $8a
	sbc $16                                          ; $6f77: $de $16
	rst $38                                          ; $6f79: $ff
	ei                                               ; $6f7a: $fb
	dec a                                            ; $6f7b: $3d
	cp a                                             ; $6f7c: $bf
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff
	jp $f71e                                         ; $6f7f: $c3 $1e $f7


	ld [$a67c], sp                                   ; $6f82: $08 $7c $a6
	rst $38                                          ; $6f85: $ff
	rst $38                                          ; $6f86: $ff
	inc a                                            ; $6f87: $3c
	pop af                                           ; $6f88: $f1
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	adc a                                            ; $6f8b: $8f
	sbc $ff                                          ; $6f8c: $de $ff
	sub d                                            ; $6f8e: $92
	ld sp, $f140                                     ; $6f8f: $31 $40 $f1
	reti                                             ; $6f92: $d9


	call z, Call_050_7fa6                            ; $6f93: $cc $a6 $7f
	rst $38                                          ; $6f96: $ff
	adc $bf                                          ; $6f97: $ce $bf
	rst $38                                          ; $6f99: $ff
	cp $7f                                           ; $6f9a: $fe $7f

Jump_050_6f9c:
	ld a, d                                          ; $6f9c: $7a
	sbc [hl]                                         ; $6f9d: $9e
	sub d                                            ; $6f9e: $92
	jr jr_050_6f5e                                   ; $6f9f: $18 $bd

	add l                                            ; $6fa1: $85
	push af                                          ; $6fa2: $f5
	cp h                                             ; $6fa3: $bc
	ld e, a                                          ; $6fa4: $5f
	sbc c                                            ; $6fa5: $99
	rst $38                                          ; $6fa6: $ff
	rst SubAFromBC                                          ; $6fa7: $e7
	jp Jump_050_7bfb                                 ; $6fa8: $c3 $fb $7b


	ld a, a                                          ; $6fab: $7f
	ld a, e                                          ; $6fac: $7b
	ret nc                                           ; $6fad: $d0

	sub [hl]                                         ; $6fae: $96
	ld b, b                                          ; $6faf: $40
	ret nz                                           ; $6fb0: $c0

	ld a, [de]                                       ; $6fb1: $1a
	sbc [hl]                                         ; $6fb2: $9e
	ld c, a                                          ; $6fb3: $4f
	db $fc                                           ; $6fb4: $fc
	cp $fd                                           ; $6fb5: $fe $fd
	cp a                                             ; $6fb7: $bf
	db $dd                                           ; $6fb8: $dd
	db $fc                                           ; $6fb9: $fc
	sbc $ff                                          ; $6fba: $de $ff
	sub a                                            ; $6fbc: $97
	ld b, d                                          ; $6fbd: $42
	nop                                              ; $6fbe: $00
	inc hl                                           ; $6fbf: $23
	ld b, a                                          ; $6fc0: $47
	xor a                                            ; $6fc1: $af
	ld d, b                                          ; $6fc2: $50
	jr nc, jr_050_6ff4                               ; $6fc3: $30 $2f

	ld a, d                                          ; $6fc5: $7a
	cpl                                              ; $6fc6: $2f
	add [hl]                                         ; $6fc7: $86
	jr nz, @+$52                                     ; $6fc8: $20 $50

jr_050_6fca:
	xor a                                            ; $6fca: $af
	rst JumpTable                                          ; $6fcb: $c7
	ldh a, [rSCY]                                    ; $6fcc: $f0 $42
	nop                                              ; $6fce: $00
	ld bc, $2b8c                                     ; $6fcf: $01 $8c $2b
	ld [$0783], sp                                   ; $6fd2: $08 $83 $07
	cp h                                             ; $6fd5: $bc
	ld hl, sp+$00                                    ; $6fd6: $f8 $00
	inc bc                                           ; $6fd8: $03
	rst SubAFromHL                                          ; $6fd9: $d7
	rst $38                                          ; $6fda: $ff
	ld a, a                                          ; $6fdb: $7f
	rst $38                                          ; $6fdc: $ff
	ccf                                              ; $6fdd: $3f
	ld a, l                                          ; $6fde: $7d
	ldh a, [rSVBK]                                   ; $6fdf: $f0 $70
	ld [hl], d                                       ; $6fe1: $72
	ld d, [hl]                                       ; $6fe2: $56
	sbc l                                            ; $6fe3: $9d
	ld [bc], a                                       ; $6fe4: $02
	rrca                                             ; $6fe5: $0f
	call c, $99ff                                    ; $6fe6: $dc $ff $99
	db $fc                                           ; $6fe9: $fc
	ld e, a                                          ; $6fea: $5f
	ld [bc], a                                       ; $6feb: $02
	ld bc, $f800                                     ; $6fec: $01 $00 $f8
	ld a, e                                          ; $6fef: $7b
	ldh a, [$9c]                                     ; $6ff0: $f0 $9c
	and b                                            ; $6ff2: $a0
	db $fd                                           ; $6ff3: $fd

jr_050_6ff4:
	cp $dd                                           ; $6ff4: $fe $dd
	rst $38                                          ; $6ff6: $ff
	ld a, h                                          ; $6ff7: $7c
	rst FarCall                                          ; $6ff8: $f7
	sub h                                            ; $6ff9: $94
	cp a                                             ; $6ffa: $bf
	dec d                                            ; $6ffb: $15
	jr z, jr_050_6ffe                                ; $6ffc: $28 $00

jr_050_6ffe:
	ldh a, [rIE]                                     ; $6ffe: $f0 $ff
	jr nz, jr_050_7002                               ; $7000: $20 $00

jr_050_7002:
	ld b, b                                          ; $7002: $40
	ld [$74d7], a                                    ; $7003: $ea $d7 $74
	ld h, b                                          ; $7006: $60
	sub l                                            ; $7007: $95
	ld a, [$58a4]                                    ; $7008: $fa $a4 $58
	ldh [rP1], a                                     ; $700b: $e0 $00
	dec e                                            ; $700d: $1d
	rst $38                                          ; $700e: $ff
	inc bc                                           ; $700f: $03
	rlca                                             ; $7010: $07
	ld e, a                                          ; $7011: $5f
	ld a, e                                          ; $7012: $7b
	sub d                                            ; $7013: $92
	rst SubAFromDE                                          ; $7014: $df
	rst $38                                          ; $7015: $ff
	sub [hl]                                         ; $7016: $96
	ld d, c                                          ; $7017: $51
	inc c                                            ; $7018: $0c
	jr @+$34                                         ; $7019: $18 $32

	dec [hl]                                         ; $701b: $35
	ld [$43c0], a                                    ; $701c: $ea $c0 $43
	xor [hl]                                         ; $701f: $ae
	db $db                                           ; $7020: $db
	rst $38                                          ; $7021: $ff
	sub a                                            ; $7022: $97
	cp a                                             ; $7023: $bf
	ld d, h                                          ; $7024: $54
	xor h                                            ; $7025: $ac
	rla                                              ; $7026: $17
	cp a                                             ; $7027: $bf
	rst SubAFromDE                                          ; $7028: $df
	ld sp, hl                                        ; $7029: $f9
	db $fc                                           ; $702a: $fc
	ld [hl], e                                       ; $702b: $73
	call nz, Call_050_5e7f                           ; $702c: $c4 $7f $5e
	ld a, e                                          ; $702f: $7b
	jr c, jr_050_6fca                                ; $7030: $38 $98

	db $fd                                           ; $7032: $fd
	db $fc                                           ; $7033: $fc
	ei                                               ; $7034: $fb
	cp $99                                           ; $7035: $fe $99
	adc $8d                                          ; $7037: $ce $8d
	ld [hl], a                                       ; $7039: $77
	db $f4                                           ; $703a: $f4
	ld a, a                                          ; $703b: $7f
	sub c                                            ; $703c: $91
	ld a, [hl]                                       ; $703d: $7e
	inc c                                            ; $703e: $0c
	sub d                                            ; $703f: $92
	and [hl]                                         ; $7040: $a6
	ld d, h                                          ; $7041: $54
	ld d, b                                          ; $7042: $50
	and b                                            ; $7043: $a0
	pop bc                                           ; $7044: $c1
	jp $83c3                                         ; $7045: $c3 $c3 $83


	and a                                            ; $7048: $a7
	ld d, a                                          ; $7049: $57
	ld d, a                                          ; $704a: $57
	cp a                                             ; $704b: $bf
	cp $de                                           ; $704c: $fe $de
	db $fc                                           ; $704e: $fc
	sub h                                            ; $704f: $94
	dec b                                            ; $7050: $05
	db $10                                           ; $7051: $10
	ld b, e                                          ; $7052: $43
	jr c, jr_050_70c1                                ; $7053: $38 $6c

	adc b                                            ; $7055: $88
	sbc d                                            ; $7056: $9a
	sub d                                            ; $7057: $92
	call $dbdd                                       ; $7058: $cd $dd $db
	ld [hl], e                                       ; $705b: $73
	ld hl, sp+$7b                                    ; $705c: $f8 $7b
	ld e, c                                          ; $705e: $59
	sub l                                            ; $705f: $95
	call nz, $a894                                   ; $7060: $c4 $94 $a8
	ld d, b                                          ; $7063: $50
	ld hl, sp-$39                                    ; $7064: $f8 $c7
	rst GetHLinHL                                          ; $7066: $cf
	rst AddAOntoHL                                          ; $7067: $ef
	rst JumpTable                                          ; $7068: $c7
	sub a                                            ; $7069: $97
	ld a, d                                          ; $706a: $7a
	dec [hl]                                         ; $706b: $35
	adc b                                            ; $706c: $88
	inc de                                           ; $706d: $13
	ld hl, $2848                                     ; $706e: $21 $48 $28
	ld de, $1528                                     ; $7071: $11 $28 $15
	dec bc                                           ; $7074: $0b
	inc de                                           ; $7075: $13

jr_050_7076:
	and c                                            ; $7076: $a1

Jump_050_7077:
	ret z                                            ; $7077: $c8

	add sp, -$2f                                     ; $7078: $e8 $d1
	add sp, -$0b                                     ; $707a: $e8 $f5
	ei                                               ; $707c: $fb
	ld a, d                                          ; $707d: $7a
	or $f7                                           ; $707e: $f6 $f7
	rst $38                                          ; $7080: $ff
	cp $77                                           ; $7081: $fe $77
	cp e                                             ; $7083: $bb
	ld [hl], b                                       ; $7084: $70
	ldh a, [$df]                                     ; $7085: $f0 $df
	rst $38                                          ; $7087: $ff
	sub d                                            ; $7088: $92
	rst JumpTable                                          ; $7089: $c7
	xor a                                            ; $708a: $af
	ld b, c                                          ; $708b: $41
	ld d, a                                          ; $708c: $57
	db $fd                                           ; $708d: $fd
	jr z, jr_050_7076                                ; $708e: $28 $e6

	and $f8                                          ; $7090: $e6 $f8
	db $fc                                           ; $7092: $fc
	rst $38                                          ; $7093: $ff
	rst AddAOntoHL                                          ; $7094: $ef
	and $7a                                          ; $7095: $e6 $7a
	ret nz                                           ; $7097: $c0

	ld a, d                                          ; $7098: $7a

jr_050_7099:
	ld l, h                                          ; $7099: $6c
	ld a, a                                          ; $709a: $7f
	ld l, c                                          ; $709b: $69
	sbc d                                            ; $709c: $9a
	rrca                                             ; $709d: $0f
	cp h                                             ; $709e: $bc
	ld b, [hl]                                       ; $709f: $46
	pop de                                           ; $70a0: $d1
	ld a, [hl-]                                      ; $70a1: $3a
	ld a, e                                          ; $70a2: $7b
	sub e                                            ; $70a3: $93
	ld a, a                                          ; $70a4: $7f
	cp $9d                                           ; $70a5: $fe $9d
	ld sp, hl                                        ; $70a7: $f9
	rst AddAOntoHL                                          ; $70a8: $ef
	ld [hl], e                                       ; $70a9: $73
	db $ec                                           ; $70aa: $ec
	rst SubAFromDE                                          ; $70ab: $df
	rst $38                                          ; $70ac: $ff
	sbc l                                            ; $70ad: $9d
	db $d3                                           ; $70ae: $d3
	rlca                                             ; $70af: $07
	pop bc                                           ; $70b0: $c1
	rst $38                                          ; $70b1: $ff
	reti                                             ; $70b2: $d9


	rst $38                                          ; $70b3: $ff
	ld l, a                                          ; $70b4: $6f
	ld b, a                                          ; $70b5: $47
	rst SubAFromHL                                          ; $70b6: $d7
	rst $38                                          ; $70b7: $ff
	sbc c                                            ; $70b8: $99
	sbc b                                            ; $70b9: $98
	ld b, b                                          ; $70ba: $40
	add a                                            ; $70bb: $87
	rst $38                                          ; $70bc: $ff
	ldh [c], a                                       ; $70bd: $e2
	db $e3                                           ; $70be: $e3
	ld l, a                                          ; $70bf: $6f
	push hl                                          ; $70c0: $e5

jr_050_70c1:
	ld [hl], h                                       ; $70c1: $74
	and b                                            ; $70c2: $a0
	ld a, [hl]                                       ; $70c3: $7e
	dec e                                            ; $70c4: $1d
	halt                                             ; $70c5: $76
	adc d                                            ; $70c6: $8a
	inc bc                                           ; $70c7: $03
	rst $38                                          ; $70c8: $ff
	dec de                                           ; $70c9: $1b
	sbc a                                            ; $70ca: $9f
	ld a, [hl]                                       ; $70cb: $7e
	xor b                                            ; $70cc: $a8
	ld a, a                                          ; $70cd: $7f
	ld d, d                                          ; $70ce: $52
	sbc l                                            ; $70cf: $9d
	ldh a, [$f4]                                     ; $70d0: $f0 $f4
	ld [hl], e                                       ; $70d2: $73
	or c                                             ; $70d3: $b1
	ld a, h                                          ; $70d4: $7c
	ld e, l                                          ; $70d5: $5d
	sbc c                                            ; $70d6: $99
	ei                                               ; $70d7: $fb
	and a                                            ; $70d8: $a7
	ld c, a                                          ; $70d9: $4f
	sbc a                                            ; $70da: $9f
	rra                                              ; $70db: $1f
	ccf                                              ; $70dc: $3f
	ld a, e                                          ; $70dd: $7b
	xor l                                            ; $70de: $ad
	ld e, a                                          ; $70df: $5f
	xor e                                            ; $70e0: $ab
	sbc e                                            ; $70e1: $9b
	di                                               ; $70e2: $f3
	db $ec                                           ; $70e3: $ec
	jp nc, Jump_050_78d5                             ; $70e4: $d2 $d5 $78

	adc d                                            ; $70e7: $8a
	ld a, [hl]                                       ; $70e8: $7e
	halt                                             ; $70e9: $76
	sbc l                                            ; $70ea: $9d
	di                                               ; $70eb: $f3
	rst AddAOntoHL                                          ; $70ec: $ef
	sbc $ff                                          ; $70ed: $de $ff
	sub a                                            ; $70ef: $97
	ld d, l                                          ; $70f0: $55
	ld a, [$ec9d]                                    ; $70f1: $fa $9d $ec
	sub l                                            ; $70f4: $95
	ld l, d                                          ; $70f5: $6a
	ld d, $46                                        ; $70f6: $16 $46
	ld a, e                                          ; $70f8: $7b
	jr nc, jr_050_7099                               ; $70f9: $30 $9e

	rra                                              ; $70fb: $1f
	ld a, e                                          ; $70fc: $7b
	ld [hl-], a                                      ; $70fd: $32
	add b                                            ; $70fe: $80
	cp a                                             ; $70ff: $bf
	add c                                            ; $7100: $81
	nop                                              ; $7101: $00
	add c                                            ; $7102: $81
	ld b, c                                          ; $7103: $41
	and e                                            ; $7104: $a3
	ld h, e                                          ; $7105: $63
	pop de                                           ; $7106: $d1
	add hl, hl                                       ; $7107: $29
	cp $7e                                           ; $7108: $fe $7e
	cp $7c                                           ; $710a: $fe $7c
	cp h                                             ; $710c: $bc
	ld a, h                                          ; $710d: $7c
	sbc $2e                                          ; $710e: $de $2e
	inc de                                           ; $7110: $13
	add hl, de                                       ; $7111: $19
	add hl, bc                                       ; $7112: $09
	dec l                                            ; $7113: $2d
	sbc c                                            ; $7114: $99
	pop de                                           ; $7115: $d1
	ld [hl], e                                       ; $7116: $73
	ld d, d                                          ; $7117: $52
	inc de                                           ; $7118: $13
	add hl, de                                       ; $7119: $19
	add hl, de                                       ; $711a: $19
	dec a                                            ; $711b: $3d
	sbc c                                            ; $711c: $99
	reti                                             ; $711d: $d9


	rst SubAFromDE                                          ; $711e: $df
	ld a, e                                          ; $711f: $7b
	sbc [hl]                                         ; $7120: $9e
	ld e, b                                          ; $7121: $58
	sbc $88                                          ; $7122: $de $88
	rst SubAFromDE                                          ; $7124: $df
	ld c, b                                          ; $7125: $48
	sbc h                                            ; $7126: $9c
	ld l, b                                          ; $7127: $68
	ld a, b                                          ; $7128: $78
	rst SubAFromDE                                          ; $7129: $df
	sbc $8f                                          ; $712a: $de $8f
	rst SubAFromDE                                          ; $712c: $df
	rst GetHLinHL                                          ; $712d: $cf
	ld a, a                                          ; $712e: $7f
	cp [hl]                                          ; $712f: $be
	add c                                            ; $7130: $81
	ld b, $0d                                        ; $7131: $06 $0d
	ld [de], a                                       ; $7133: $12
	dec c                                            ; $7134: $0d
	dec bc                                           ; $7135: $0b
	ld d, [hl]                                       ; $7136: $56
	ld e, b                                          ; $7137: $58
	rla                                              ; $7138: $17
	or $fd                                           ; $7139: $f6 $fd
	ldh a, [c]                                       ; $713b: $f2
	db $ed                                           ; $713c: $ed
	set 2, [hl]                                      ; $713d: $cb $d6
	ret c                                            ; $713f: $d8

	sub a                                            ; $7140: $97
	and a                                            ; $7141: $a7
	ld e, a                                          ; $7142: $5f
	ldh [c], a                                       ; $7143: $e2
	cp e                                             ; $7144: $bb
	and c                                            ; $7145: $a1
	ld e, d                                          ; $7146: $5a
	add l                                            ; $7147: $85
	jp z, $ffdf                                      ; $7148: $ca $df $ff

	db $fd                                           ; $714b: $fd
	ret nz                                           ; $714c: $c0

	rra                                              ; $714d: $1f
	rst SubAFromBC                                          ; $714e: $e7
	ld a, e                                          ; $714f: $7b
	ld a, d                                          ; $7150: $7a
	rst SubAFromDE                                          ; $7151: $df
	cp $9b                                           ; $7152: $fe $9b
	cp a                                             ; $7154: $bf
	ld e, a                                          ; $7155: $5f
	rrca                                             ; $7156: $0f
	rlca                                             ; $7157: $07
	ld [hl], a                                       ; $7158: $77
	add c                                            ; $7159: $81
	ld [hl], l                                       ; $715a: $75
	pop bc                                           ; $715b: $c1
	sbc e                                            ; $715c: $9b
	rst $38                                          ; $715d: $ff
	or h                                             ; $715e: $b4
	ld e, c                                          ; $715f: $59
	ei                                               ; $7160: $fb
	call c, $9eff                                    ; $7161: $dc $ff $9e
	ld a, e                                          ; $7164: $7b
	jp c, $94ff                                      ; $7165: $da $ff $94

	ld [hl], c                                       ; $7168: $71
	db $dd                                           ; $7169: $dd
	xor e                                            ; $716a: $ab
	sbc b                                            ; $716b: $98
	add d                                            ; $716c: $82
	jp nz, $fe7a                                     ; $716d: $c2 $7a $fe

	rst $38                                          ; $7170: $ff
	db $e3                                           ; $7171: $e3
	call c, $ffda                                    ; $7172: $dc $da $ff
	sbc c                                            ; $7175: $99
	ld c, $11                                        ; $7176: $0e $11
	inc h                                            ; $7178: $24
	add b                                            ; $7179: $80
	ret z                                            ; $717a: $c8

	xor b                                            ; $717b: $a8
	call c, $deff                                    ; $717c: $dc $ff $de
	ld a, a                                          ; $717f: $7f
	db $dd                                           ; $7180: $dd
	rst $38                                          ; $7181: $ff
	sbc e                                            ; $7182: $9b
	ccf                                              ; $7183: $3f
	ld [hl], e                                       ; $7184: $73
	rst GetHLinHL                                          ; $7185: $cf
	ld de, $ffdb                                     ; $7186: $11 $db $ff
	sbc [hl]                                         ; $7189: $9e
	rst FarCall                                          ; $718a: $f7
	ld [hl], a                                       ; $718b: $77
	ld c, l                                          ; $718c: $4d
	inc bc                                           ; $718d: $03
	rst $38                                          ; $718e: $ff
	inc bc                                           ; $718f: $03
	rst $38                                          ; $7190: $ff
	add $ff                                          ; $7191: $c6 $ff
	sbc d                                            ; $7193: $9a
	add sp, -$20                                     ; $7194: $e8 $e0
	jp hl                                            ; $7196: $e9


	pop de                                           ; $7197: $d1
	pop de                                           ; $7198: $d1
	ld a, c                                          ; $7199: $79
	cp a                                             ; $719a: $bf
	ld a, [hl]                                       ; $719b: $7e
	push af                                          ; $719c: $f5
	ld a, a                                          ; $719d: $7f
	sub h                                            ; $719e: $94
	scf                                              ; $719f: $37
	sub e                                            ; $71a0: $93
	ld c, d                                          ; $71a1: $4a
	nop                                              ; $71a2: $00
	db $db                                           ; $71a3: $db
	ld b, h                                          ; $71a4: $44
	sbc b                                            ; $71a5: $98
	ld b, [hl]                                       ; $71a6: $46
	ld h, h                                          ; $71a7: $64
	ld b, a                                          ; $71a8: $47
	ld h, [hl]                                       ; $71a9: $66
	ld [hl], a                                       ; $71aa: $77
	halt                                             ; $71ab: $76
	ld h, [hl]                                       ; $71ac: $66
	sbc $77                                          ; $71ad: $de $77
	sub [hl]                                         ; $71af: $96
	halt                                             ; $71b0: $76
	ld h, a                                          ; $71b1: $67
	ld [hl], a                                       ; $71b2: $77
	ld h, [hl]                                       ; $71b3: $66
	ld [hl], a                                       ; $71b4: $77
	ld h, [hl]                                       ; $71b5: $66
	ld h, [hl]                                       ; $71b6: $66
	ld h, a                                          ; $71b7: $67
	scf                                              ; $71b8: $37
	ld a, e                                          ; $71b9: $7b
	or $9e                                           ; $71ba: $f6 $9e
	inc sp                                           ; $71bc: $33
	ld [hl], a                                       ; $71bd: $77
	or $98                                           ; $71be: $f6 $98
	ld h, e                                          ; $71c0: $63
	inc sp                                           ; $71c1: $33
	scf                                              ; $71c2: $37
	halt                                             ; $71c3: $76
	ld h, h                                          ; $71c4: $64
	inc sp                                           ; $71c5: $33
	inc sp                                           ; $71c6: $33
	ld a, e                                          ; $71c7: $7b
	ldh [c], a                                       ; $71c8: $e2
	ld [hl], a                                       ; $71c9: $77
	or $7f                                           ; $71ca: $f6 $7f
	db $fc                                           ; $71cc: $fc
	ld a, a                                          ; $71cd: $7f
	db $eb                                           ; $71ce: $eb
	rst SubAFromDE                                          ; $71cf: $df
	ld h, [hl]                                       ; $71d0: $66
	sbc [hl]                                         ; $71d1: $9e
	ld [hl], e                                       ; $71d2: $73
	ld a, e                                          ; $71d3: $7b
	or $9d                                           ; $71d4: $f6 $9d
	ld h, l                                          ; $71d6: $65
	ld d, e                                          ; $71d7: $53
	reti                                             ; $71d8: $d9


	inc sp                                           ; $71d9: $33
	sbc [hl]                                         ; $71da: $9e
	ld d, l                                          ; $71db: $55
	ld e, a                                          ; $71dc: $5f
	or $de                                           ; $71dd: $f6 $de
	inc sp                                           ; $71df: $33
	sbc [hl]                                         ; $71e0: $9e
	ld [hl], $7b                                     ; $71e1: $36 $7b
	db $dd                                           ; $71e3: $dd
	db $db                                           ; $71e4: $db
	inc sp                                           ; $71e5: $33
	sbc l                                            ; $71e6: $9d
	ld b, a                                          ; $71e7: $47
	ld [hl], h                                       ; $71e8: $74
	ld b, e                                          ; $71e9: $43
	or $6e                                           ; $71ea: $f6 $6e
	adc d                                            ; $71ec: $8a
	cp $df                                           ; $71ed: $fe $df
	ld [$ff9c], sp                                   ; $71ef: $08 $9c $ff
	ld [$f508], sp                                   ; $71f2: $08 $08 $f5
	sbc e                                            ; $71f5: $9b
	ld b, b                                          ; $71f6: $40
	db $fc                                           ; $71f7: $fc
	ld b, b                                          ; $71f8: $40
	ld b, d                                          ; $71f9: $42
	ldh [$d5], a                                     ; $71fa: $e0 $d5

jr_050_71fc:
	sbc e                                            ; $71fc: $9b
	ld bc, $0f06                                     ; $71fd: $01 $06 $0f
	dec bc                                           ; $7200: $0b
	db $fc                                           ; $7201: $fc
	add b                                            ; $7202: $80
	inc bc                                           ; $7203: $03
	rlca                                             ; $7204: $07
	rrca                                             ; $7205: $0f
	inc bc                                           ; $7206: $03
	dec b                                            ; $7207: $05
	inc de                                           ; $7208: $13
	ld l, h                                          ; $7209: $6c
	cp b                                             ; $720a: $b8
	pop af                                           ; $720b: $f1
	cp $30                                           ; $720c: $fe $30
	ld [bc], a                                       ; $720e: $02
	ld b, $1c                                        ; $720f: $06 $1c
	ld [hl], b                                       ; $7211: $70
	ret nz                                           ; $7212: $c0

	nop                                              ; $7213: $00
	ld bc, $64cf                                     ; $7214: $01 $cf $64
	adc l                                            ; $7217: $8d
	rra                                              ; $7218: $1f
	ccf                                              ; $7219: $3f
	add e                                            ; $721a: $83
	rlca                                             ; $721b: $07
	rrca                                             ; $721c: $0f
	ccf                                              ; $721d: $3f
	add e                                            ; $721e: $83
	ld [bc], a                                       ; $721f: $02
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	sbc e                                            ; $7222: $9b
	ld a, h                                          ; $7223: $7c
	ld hl, sp-$10                                    ; $7224: $f8 $f0
	ret nz                                           ; $7226: $c0

	sbc $ff                                          ; $7227: $de $ff
	sbc $fe                                          ; $7229: $de $fe
	sbc l                                            ; $722b: $9d
	db $fc                                           ; $722c: $fc
	pop hl                                           ; $722d: $e1
	ld l, a                                          ; $722e: $6f
	rst JumpTable                                          ; $722f: $c7
	adc h                                            ; $7230: $8c
	inc bc                                           ; $7231: $03
	rra                                              ; $7232: $1f
	db $ec                                           ; $7233: $ec
	sbc c                                            ; $7234: $99
	ld [de], a                                       ; $7235: $12
	jr nz, jr_050_71fc                               ; $7236: $20 $c4

	ld [$f090], sp                                   ; $7238: $08 $90 $f0
	inc bc                                           ; $723b: $03
	rlca                                             ; $723c: $07
	ld c, $1c                                        ; $723d: $0e $1c
	inc a                                            ; $723f: $3c
	ld hl, sp-$10                                    ; $7240: $f8 $f0
	ldh [$80], a                                     ; $7242: $e0 $80
	ld a, [$f867]                                    ; $7244: $fa $67 $f8
	ld l, a                                          ; $7247: $6f
	ret c                                            ; $7248: $d8

	sbc l                                            ; $7249: $9d
	nop                                              ; $724a: $00
	inc b                                            ; $724b: $04
	ld d, e                                          ; $724c: $53
	pop af                                           ; $724d: $f1
	sbc h                                            ; $724e: $9c
	sbc a                                            ; $724f: $9f
	ld hl, $f921                                     ; $7250: $21 $21 $f9
	sbc l                                            ; $7253: $9d
	add hl, bc                                       ; $7254: $09
	rra                                              ; $7255: $1f
	sbc $09                                          ; $7256: $de $09
	sbc d                                            ; $7258: $9a
	rst $38                                          ; $7259: $ff
	add hl, bc                                       ; $725a: $09
	add hl, bc                                       ; $725b: $09
	ld bc, $7b01                                     ; $725c: $01 $01 $7b
	add sp, -$22                                     ; $725f: $e8 $de
	ld bc, $8b8f                                     ; $7261: $01 $8f $8b
	ld l, e                                          ; $7264: $6b
	db $db                                           ; $7265: $db
	sbc $1c                                          ; $7266: $de $1c
	cp h                                             ; $7268: $bc
	inc b                                            ; $7269: $04
	add [hl]                                         ; $726a: $86
	inc b                                            ; $726b: $04
	add h                                            ; $726c: $84
	db $e4                                           ; $726d: $e4
	rst SubAFromBC                                          ; $726e: $e7
	rst SubAFromBC                                          ; $726f: $e7
	ld b, a                                          ; $7270: $47
	ld a, a                                          ; $7271: $7f
	ld a, a                                          ; $7272: $7f
	cp $9a                                           ; $7273: $fe $9a
	rra                                              ; $7275: $1f
	rst $38                                          ; $7276: $ff
	rst $38                                          ; $7277: $ff
	ld a, a                                          ; $7278: $7f
	ld a, a                                          ; $7279: $7f
	reti                                             ; $727a: $d9


	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	sbc h                                            ; $727d: $9c
	jr @+$3a                                         ; $727e: $18 $38

	ld a, b                                          ; $7280: $78
	sub $ff                                          ; $7281: $d6 $ff
	rst SubAFromDE                                          ; $7283: $df
	ld bc, $219c                                     ; $7284: $01 $9c $21
	ld h, e                                          ; $7287: $63
	rst FarCall                                          ; $7288: $f7
	sub $ff                                          ; $7289: $d6 $ff
	sub [hl]                                         ; $728b: $96
	sbc [hl]                                         ; $728c: $9e
	rst $38                                          ; $728d: $ff
	db $fc                                           ; $728e: $fc
	ld hl, sp-$04                                    ; $728f: $f8 $fc
	rst $38                                          ; $7291: $ff
	db $f4                                           ; $7292: $f4
	db $fc                                           ; $7293: $fc
	cp $de                                           ; $7294: $fe $de
	db $fc                                           ; $7296: $fc
	sbc $f8                                          ; $7297: $de $f8
	sbc h                                            ; $7299: $9c
	ldh a, [rAUD4ENV]                                ; $729a: $f0 $21
	rst $38                                          ; $729c: $ff
	sbc $21                                          ; $729d: $de $21
	ld a, e                                          ; $729f: $7b
	db $fc                                           ; $72a0: $fc
	ld sp, hl                                        ; $72a1: $f9
	halt                                             ; $72a2: $76
	call nc, $d056                                   ; $72a3: $d4 $56 $d0

jr_050_72a6:
	ld b, a                                          ; $72a6: $47
	ldh a, [$9d]                                     ; $72a7: $f0 $9d
	ld b, d                                          ; $72a9: $42
	rst $38                                          ; $72aa: $ff
	sbc $42                                          ; $72ab: $de $42
	ld a, e                                          ; $72ad: $7b
	db $fc                                           ; $72ae: $fc
	ld sp, hl                                        ; $72af: $f9
	sbc l                                            ; $72b0: $9d
	db $10                                           ; $72b1: $10
	rst $38                                          ; $72b2: $ff
	sbc $10                                          ; $72b3: $de $10
	ld a, e                                          ; $72b5: $7b
	db $fc                                           ; $72b6: $fc
	or $df                                           ; $72b7: $f6 $df
	add h                                            ; $72b9: $84
	sbc h                                            ; $72ba: $9c
	rst $38                                          ; $72bb: $ff
	add h                                            ; $72bc: $84
	add h                                            ; $72bd: $84
	ld sp, hl                                        ; $72be: $f9
	sub b                                            ; $72bf: $90
	ld a, [de]                                       ; $72c0: $1a
	dec de                                           ; $72c1: $1b
	jr jr_050_72e0                                   ; $72c2: $18 $1c

	ld c, $c7                                        ; $72c4: $0e $c7
	inc hl                                           ; $72c6: $23
	jr nz, jr_050_72d6                               ; $72c7: $20 $0d

	inc e                                            ; $72c9: $1c
	rra                                              ; $72ca: $1f
	rrca                                             ; $72cb: $0f
	rlca                                             ; $72cc: $07
	inc bc                                           ; $72cd: $03
	inc bc                                           ; $72ce: $03
	sbc $01                                          ; $72cf: $de $01
	sbc d                                            ; $72d1: $9a
	nop                                              ; $72d2: $00
	ld [bc], a                                       ; $72d3: $02
	rlca                                             ; $72d4: $07
	inc bc                                           ; $72d5: $03

jr_050_72d6:
	ei                                               ; $72d6: $fb
	ret c                                            ; $72d7: $d8

	rst $38                                          ; $72d8: $ff
	sub l                                            ; $72d9: $95
	ld a, b                                          ; $72da: $78
	db $e3                                           ; $72db: $e3
	adc [hl]                                         ; $72dc: $8e
	inc e                                            ; $72dd: $1c
	jr jr_050_731f                                   ; $72de: $18 $3f

jr_050_72e0:
	ccf                                              ; $72e0: $3f
	rra                                              ; $72e1: $1f
	add a                                            ; $72e2: $87
	rra                                              ; $72e3: $1f
	ld l, a                                          ; $72e4: $6f
	dec a                                            ; $72e5: $3d
	sbc c                                            ; $72e6: $99
	ld a, a                                          ; $72e7: $7f
	ld de, $38c0                                     ; $72e8: $11 $c0 $38
	inc bc                                           ; $72eb: $03
	nop                                              ; $72ec: $00
	sbc $ff                                          ; $72ed: $de $ff
	sbc e                                            ; $72ef: $9b
	rst AddAOntoHL                                          ; $72f0: $ef
	ld bc, $fcc0                                     ; $72f1: $01 $c0 $fc
	sbc $ff                                          ; $72f4: $de $ff
	sub h                                            ; $72f6: $94
	ld [$0306], sp                                   ; $72f7: $08 $06 $03
	rlca                                             ; $72fa: $07
	ld e, $7f                                        ; $72fb: $1e $7f
	rst $38                                          ; $72fd: $ff
	ldh a, [$f8]                                     ; $72fe: $f0 $f8
	sbc [hl]                                         ; $7300: $9e
	rst GetHLinHL                                          ; $7301: $cf
	ld [hl], e                                       ; $7302: $73
	rst SubAFromDE                                          ; $7303: $df
	ld a, a                                          ; $7304: $7f
	push hl                                          ; $7305: $e5
	sbc e                                            ; $7306: $9b
	ldh a, [c]                                       ; $7307: $f2
	db $fc                                           ; $7308: $fc
	jr nc, jr_050_730e                               ; $7309: $30 $03

	db $fd                                           ; $730b: $fd
	sbc l                                            ; $730c: $9d
	adc a                                            ; $730d: $8f

jr_050_730e:
	rst $38                                          ; $730e: $ff
	ld [hl], a                                       ; $730f: $77
	rst SubAFromDE                                          ; $7310: $df
	ld a, a                                          ; $7311: $7f
	sub h                                            ; $7312: $94
	sbc e                                            ; $7313: $9b
	ld d, h                                          ; $7314: $54
	rra                                              ; $7315: $1f
	jr c, jr_050_72a6                                ; $7316: $38 $8e

	db $fd                                           ; $7318: $fd
	sbc c                                            ; $7319: $99
	ld hl, sp-$01                                    ; $731a: $f8 $ff
	rlca                                             ; $731c: $07
	ld [hl], c                                       ; $731d: $71
	rst $38                                          ; $731e: $ff

jr_050_731f:
	rst $38                                          ; $731f: $ff
	ld [hl], a                                       ; $7320: $77
	inc [hl]                                         ; $7321: $34
	sbc h                                            ; $7322: $9c
	pop hl                                           ; $7323: $e1
	cpl                                              ; $7324: $2f
	dec e                                            ; $7325: $1d
	ld [hl], a                                       ; $7326: $77
	sbc $9a                                          ; $7327: $de $9a
	add b                                            ; $7329: $80
	ret nz                                           ; $732a: $c0

	ldh a, [$fc]                                     ; $732b: $f0 $fc
	rst $38                                          ; $732d: $ff
	halt                                             ; $732e: $76
	call nz, $099c                                   ; $732f: $c4 $9c $09
	ld sp, hl                                        ; $7332: $f9
	rrca                                             ; $7333: $0f
	ld a, d                                          ; $7334: $7a
	ld hl, sp-$23                                    ; $7335: $f8 $dd
	ld bc, $0796                                     ; $7337: $01 $96 $07
	rst $38                                          ; $733a: $ff
	ld b, $06                                        ; $733b: $06 $06
	rlca                                             ; $733d: $07
	inc bc                                           ; $733e: $03
	add e                                            ; $733f: $83
	add c                                            ; $7340: $81
	di                                               ; $7341: $f3
	call nc, $dfff                                   ; $7342: $d4 $ff $df
	rst GetHLinHL                                          ; $7345: $cf
	sbc l                                            ; $7346: $9d
	rst JumpTable                                          ; $7347: $c7
	jp $ffc3                                         ; $7348: $c3 $c3 $ff


	sbc l                                            ; $734b: $9d
	cp $f8                                           ; $734c: $fe $f8
	ld l, a                                          ; $734e: $6f
	ld sp, hl                                        ; $734f: $f9
	ld a, d                                          ; $7350: $7a
	call nz, $e7df                                   ; $7351: $c4 $df $e7
	sub e                                            ; $7354: $93
	rst GetHLinHL                                          ; $7355: $cf
	sbc b                                            ; $7356: $98
	ldh a, [$e4]                                     ; $7357: $f0 $e4
	sbc $f0                                          ; $7359: $de $f0
	ldh a, [$c3]                                     ; $735b: $f0 $c3
	add a                                            ; $735d: $87
	rrca                                             ; $735e: $0f
	ccf                                              ; $735f: $3f
	ld a, a                                          ; $7360: $7f
	ld [hl], a                                       ; $7361: $77
	sub b                                            ; $7362: $90
	sbc e                                            ; $7363: $9b
	pop hl                                           ; $7364: $e1
	add hl, sp                                       ; $7365: $39
	rrca                                             ; $7366: $0f
	rlca                                             ; $7367: $07
	ld a, d                                          ; $7368: $7a
	ld h, d                                          ; $7369: $62
	sbc c                                            ; $736a: $99
	nop                                              ; $736b: $00
	ret nz                                           ; $736c: $c0

	ld hl, sp-$04                                    ; $736d: $f8 $fc
	cp $ff                                           ; $736f: $fe $ff
	ld l, d                                          ; $7371: $6a
	ret nc                                           ; $7372: $d0

	sbc [hl]                                         ; $7373: $9e
	adc b                                            ; $7374: $88
	ld h, [hl]                                       ; $7375: $66
	add hl, de                                       ; $7376: $19
	ld [bc], a                                       ; $7377: $02
	ret nz                                           ; $7378: $c0

	ld c, d                                          ; $7379: $4a
	ret nz                                           ; $737a: $c0

	halt                                             ; $737b: $76
	call nz, $c056                                   ; $737c: $c4 $56 $c0
	sub [hl]                                         ; $737f: $96
	inc hl                                           ; $7380: $23
	cp $23                                           ; $7381: $fe $23
	ld [hl+], a                                      ; $7383: $22
	ld [hl+], a                                      ; $7384: $22
	cp $23                                           ; $7385: $fe $23
	ld hl, $db01                                     ; $7387: $21 $01 $db
	inc bc                                           ; $738a: $03
	halt                                             ; $738b: $76
	and $9a                                          ; $738c: $e6 $9a
	rst SubAFromDE                                          ; $738e: $df
	rst GetHLinHL                                          ; $738f: $cf
	db $e3                                           ; $7390: $e3
	jp hl                                            ; $7391: $e9


	ld l, b                                          ; $7392: $68
	reti                                             ; $7393: $d9


	rst $38                                          ; $7394: $ff
	sbc h                                            ; $7395: $9c
	ret nz                                           ; $7396: $c0

	ld sp, hl                                        ; $7397: $f9
	cp $72                                           ; $7398: $fe $72
	ret                                              ; $739a: $c9


	ld a, a                                          ; $739b: $7f
	ld h, h                                          ; $739c: $64
	ld l, e                                          ; $739d: $6b
	inc [hl]                                         ; $739e: $34
	sbc e                                            ; $739f: $9b
	rlca                                             ; $73a0: $07
	ld c, c                                          ; $73a1: $49
	cp c                                             ; $73a2: $b9
	db $e3                                           ; $73a3: $e3
	sbc $ff                                          ; $73a4: $de $ff
	ld a, d                                          ; $73a6: $7a
	xor [hl]                                         ; $73a7: $ae
	sbc [hl]                                         ; $73a8: $9e
	rst JumpTable                                          ; $73a9: $c7
	db $dd                                           ; $73aa: $dd
	rst $38                                          ; $73ab: $ff
	sbc d                                            ; $73ac: $9a
	ldh [$f0], a                                     ; $73ad: $e0 $f0
	ld hl, sp-$22                                    ; $73af: $f8 $de
	jp $fb7b                                         ; $73b1: $c3 $7b $fb


	call c, $93ff                                    ; $73b4: $dc $ff $93
	ei                                               ; $73b7: $fb
	ld hl, sp-$02                                    ; $73b8: $f8 $fe
	ld bc, $0100                                     ; $73ba: $01 $00 $01
	rrca                                             ; $73bd: $0f
	rst $38                                          ; $73be: $ff
	rra                                              ; $73bf: $1f
	ld bc, $e700                                     ; $73c0: $01 $00 $e7
	ld [hl], d                                       ; $73c3: $72
	ld a, l                                          ; $73c4: $7d
	sbc l                                            ; $73c5: $9d
	rra                                              ; $73c6: $1f
	inc bc                                           ; $73c7: $03
	ld [hl], e                                       ; $73c8: $73
	ret z                                            ; $73c9: $c8

	sbc [hl]                                         ; $73ca: $9e
	rst SubAFromDE                                          ; $73cb: $df
	rst SubAFromHL                                          ; $73cc: $d7
	rst $38                                          ; $73cd: $ff
	sbc c                                            ; $73ce: $99
	sbc a                                            ; $73cf: $9f
	cp $f9                                           ; $73d0: $fe $f9
	ldh a, [$f8]                                     ; $73d2: $f0 $f8
	db $fc                                           ; $73d4: $fc
	ld a, e                                          ; $73d5: $7b
	scf                                              ; $73d6: $37
	ld l, e                                          ; $73d7: $6b
	xor a                                            ; $73d8: $af
	sbc h                                            ; $73d9: $9c
	add [hl]                                         ; $73da: $86
	ld [hl], a                                       ; $73db: $77
	ldh [$fc], a                                     ; $73dc: $e0 $fc
	sbc l                                            ; $73de: $9d
	ld hl, sp-$80                                    ; $73df: $f8 $80
	ld a, c                                          ; $73e1: $79
	sbc c                                            ; $73e2: $99
	sbc $ff                                          ; $73e3: $de $ff

jr_050_73e5:
	sbc h                                            ; $73e5: $9c
	rst SubAFromBC                                          ; $73e6: $e7
	db $e4                                           ; $73e7: $e4
	rrca                                             ; $73e8: $0f
	ld [hl], d                                       ; $73e9: $72
	add d                                            ; $73ea: $82
	sbc l                                            ; $73eb: $9d
	rra                                              ; $73ec: $1f
	dec de                                           ; $73ed: $1b
	ld a, d                                          ; $73ee: $7a
	and e                                            ; $73ef: $a3
	sbc $ff                                          ; $73f0: $de $ff
	sbc e                                            ; $73f2: $9b
	adc l                                            ; $73f3: $8d
	inc a                                            ; $73f4: $3c
	sbc b                                            ; $73f5: $98
	inc hl                                           ; $73f6: $23
	sbc $03                                          ; $73f7: $de $03
	sbc e                                            ; $73f9: $9b
	dec de                                           ; $73fa: $1b
	di                                               ; $73fb: $f3
	jp Jump_050_7707                                 ; $73fc: $c3 $07 $77


	rst SubAFromDE                                          ; $73ff: $df
	ld a, a                                          ; $7400: $7f
	ld a, b                                          ; $7401: $78
	sbc h                                            ; $7402: $9c
	ld a, a                                          ; $7403: $7f
	rlca                                             ; $7404: $07
	rlca                                             ; $7405: $07
	sbc $87                                          ; $7406: $de $87
	ld [hl], e                                       ; $7408: $73
	add h                                            ; $7409: $84
	db $dd                                           ; $740a: $dd
	rst $38                                          ; $740b: $ff
	sub [hl]                                         ; $740c: $96
	ldh a, [rIE]                                     ; $740d: $f0 $ff
	ldh a, [$f0]                                     ; $740f: $f0 $f0
	or b                                             ; $7411: $b0
	ccf                                              ; $7412: $3f
	ccf                                              ; $7413: $3f
	sbc a                                            ; $7414: $9f
	ldh a, [$dd]                                     ; $7415: $f0 $dd
	ldh [hDisp1_OBP1], a                                     ; $7417: $e0 $94
	ldh a, [$fe]                                     ; $7419: $f0 $fe
	pop hl                                           ; $741b: $e1
	db $fc                                           ; $741c: $fc
	ret nz                                           ; $741d: $c0

	add b                                            ; $741e: $80
	ld hl, sp-$74                                    ; $741f: $f8 $8c
	rst $38                                          ; $7421: $ff
	add d                                            ; $7422: $82
	cp $75                                           ; $7423: $fe $75
	ld c, [hl]                                       ; $7425: $4e
	ld a, [hl]                                       ; $7426: $7e
	ret                                              ; $7427: $c9


	sub l                                            ; $7428: $95
	nop                                              ; $7429: $00
	db $fc                                           ; $742a: $fc
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	ld h, b                                          ; $742d: $60
	ldh a, [rSVBK]                                   ; $742e: $f0 $70
	ld hl, sp+$3c                                    ; $7430: $f8 $3c
	ld d, $db                                        ; $7432: $16 $db
	rst $38                                          ; $7434: $ff
	sub b                                            ; $7435: $90
	ccf                                              ; $7436: $3f
	inc bc                                           ; $7437: $03
	add sp, $3f                                      ; $7438: $e8 $3f
	inc c                                            ; $743a: $0c
	rrca                                             ; $743b: $0f
	dec bc                                           ; $743c: $0b
	dec b                                            ; $743d: $05
	ld [bc], a                                       ; $743e: $02
	ld bc, $f8e0                                     ; $743f: $01 $e0 $f8
	db $fc                                           ; $7442: $fc
	rst FarCall                                          ; $7443: $f7
	pop af                                           ; $7444: $f1
	ld a, d                                          ; $7445: $7a
	xor a                                            ; $7446: $af
	ld [bc], a                                       ; $7447: $02
	ret nz                                           ; $7448: $c0

	ld a, [bc]                                       ; $7449: $0a
	ret nz                                           ; $744a: $c0

	ld b, l                                          ; $744b: $45
	jr nz, jr_050_73e5                               ; $744c: $20 $97

	add hl, hl                                       ; $744e: $29
	ei                                               ; $744f: $fb
	dec sp                                           ; $7450: $3b
	jr nc, jr_050_748b                               ; $7451: $30 $38

	db $fc                                           ; $7453: $fc
	ld a, $e6                                        ; $7454: $3e $e6
	sbc $3f                                          ; $7456: $de $3f
	rst SubAFromDE                                          ; $7458: $df
	rra                                              ; $7459: $1f
	db $dd                                           ; $745a: $dd
	ccf                                              ; $745b: $3f
	ld a, a                                          ; $745c: $7f
	ld d, [hl]                                       ; $745d: $56
	sub d                                            ; $745e: $92
	ld a, a                                          ; $745f: $7f
	ld a, $1c                                        ; $7460: $3e $1c
	nop                                              ; $7462: $00
	ld a, h                                          ; $7463: $7c
	rst $38                                          ; $7464: $ff
	rst JumpTable                                          ; $7465: $c7
	db $e3                                           ; $7466: $e3
	rst $38                                          ; $7467: $ff
	pop bc                                           ; $7468: $c1
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff

Call_050_746b:
	add e                                            ; $746b: $83
	ld [hl], a                                       ; $746c: $77
	ld a, e                                          ; $746d: $7b
	sbc e                                            ; $746e: $9b
	ld l, a                                          ; $746f: $6f
	ld c, [hl]                                       ; $7470: $4e
	inc a                                            ; $7471: $3c
	ld a, h                                          ; $7472: $7c
	call c, Call_050_7fff                            ; $7473: $dc $ff $7f
	add c                                            ; $7476: $81
	sbc [hl]                                         ; $7477: $9e
	or $6e                                           ; $7478: $f6 $6e
	ld a, [$2c9e]                                    ; $747a: $fa $9e $2c
	halt                                             ; $747d: $76
	adc b                                            ; $747e: $88
	sbc $ff                                          ; $747f: $de $ff
	sbc [hl]                                         ; $7481: $9e
	inc de                                           ; $7482: $13
	ld a, d                                          ; $7483: $7a
	ld a, [de]                                       ; $7484: $1a
	ld a, a                                          ; $7485: $7f
	ld h, [hl]                                       ; $7486: $66
	ld a, a                                          ; $7487: $7f
	db $ec                                           ; $7488: $ec
	rst SubAFromDE                                          ; $7489: $df
	ccf                                              ; $748a: $3f

jr_050_748b:
	sbc [hl]                                         ; $748b: $9e
	pop af                                           ; $748c: $f1
	db $db                                           ; $748d: $db
	rst $38                                          ; $748e: $ff
	ld a, l                                          ; $748f: $7d
	ld c, d                                          ; $7490: $4a
	ld a, e                                          ; $7491: $7b
	cp b                                             ; $7492: $b8
	ld d, c                                          ; $7493: $51
	sub $dd                                          ; $7494: $d6 $dd
	cp $d6                                           ; $7496: $fe $d6
	rst $38                                          ; $7498: $ff
	ld sp, hl                                        ; $7499: $f9
	ld c, a                                          ; $749a: $4f
	ldh a, [$9d]                                     ; $749b: $f0 $9d
	ld [$dc09], sp                                   ; $749d: $08 $09 $dc
	rst $38                                          ; $74a0: $ff
	rst SubAFromDE                                          ; $74a1: $df
	di                                               ; $74a2: $f3
	sub d                                            ; $74a3: $92
	ldh a, [rAUD3LOW]                                ; $74a4: $f0 $1d
	ld e, $0f                                        ; $74a6: $1e $0f
	rlca                                             ; $74a8: $07
	rlca                                             ; $74a9: $07
	inc bc                                           ; $74aa: $03
	inc hl                                           ; $74ab: $23
	ld d, e                                          ; $74ac: $53
	cp a                                             ; $74ad: $bf
	cp a                                             ; $74ae: $bf
	sbc a                                            ; $74af: $9f
	adc a                                            ; $74b0: $8f
	ld a, c                                          ; $74b1: $79
	ld a, c                                          ; $74b2: $79
	sub [hl]                                         ; $74b3: $96
	and e                                            ; $74b4: $a3
	rst JumpTable                                          ; $74b5: $c7
	rlca                                             ; $74b6: $07
	rrca                                             ; $74b7: $0f
	adc $fc                                          ; $74b8: $ce $fc
	ldh a, [$e0]                                     ; $74ba: $f0 $e0
	ret nz                                           ; $74bc: $c0

	ld l, a                                          ; $74bd: $6f
	add b                                            ; $74be: $80
	ld a, h                                          ; $74bf: $7c
	ld h, b                                          ; $74c0: $60
	sbc l                                            ; $74c1: $9d
	ret nz                                           ; $74c2: $c0

	add c                                            ; $74c3: $81
	db $dd                                           ; $74c4: $dd
	inc bc                                           ; $74c5: $03
	sub b                                            ; $74c6: $90
	ld c, [hl]                                       ; $74c7: $4e
	rst $38                                          ; $74c8: $ff
	ld hl, sp-$02                                    ; $74c9: $f8 $fe
	db $fc                                           ; $74cb: $fc
	call nz, $3c1c                                   ; $74cc: $c4 $1c $3c
	ld sp, $a700                                     ; $74cf: $31 $00 $a7
	ret nc                                           ; $74d2: $d0

	ld a, a                                          ; $74d3: $7f
	ccf                                              ; $74d4: $3f
	nop                                              ; $74d5: $00
	sbc $01                                          ; $74d6: $de $01
	ld a, a                                          ; $74d8: $7f
	ld c, e                                          ; $74d9: $4b
	ld a, d                                          ; $74da: $7a
	sub e                                            ; $74db: $93
	sbc $fe                                          ; $74dc: $de $fe
	sub e                                            ; $74de: $93
	di                                               ; $74df: $f3
	dec a                                            ; $74e0: $3d
	adc l                                            ; $74e1: $8d
	rst $38                                          ; $74e2: $ff
	pop bc                                           ; $74e3: $c1
	ldh [$fe], a                                     ; $74e4: $e0 $fe
	rst $38                                          ; $74e6: $ff
	pop bc                                           ; $74e7: $c1
	ldh a, [$fc]                                     ; $74e8: $f0 $fc
	cp $75                                           ; $74ea: $fe $75
	ld a, d                                          ; $74ec: $7a
	rst SubAFromDE                                          ; $74ed: $df
	add b                                            ; $74ee: $80
	sbc c                                            ; $74ef: $99
	ret c                                            ; $74f0: $d8

	ld a, b                                          ; $74f1: $78
	db $e3                                           ; $74f2: $e3
	ld l, l                                          ; $74f3: $6d
	rla                                              ; $74f4: $17
	bit 7, d                                         ; $74f5: $cb $7a
	ld d, [hl]                                       ; $74f7: $56
	sbc d                                            ; $74f8: $9a
	ld h, a                                          ; $74f9: $67
	or b                                             ; $74fa: $b0
	ldh a, [$78]                                     ; $74fb: $f0 $78
	inc a                                            ; $74fd: $3c
	ld l, [hl]                                       ; $74fe: $6e
	ret nz                                           ; $74ff: $c0

	sbc l                                            ; $7500: $9d
	rst $38                                          ; $7501: $ff
	adc h                                            ; $7502: $8c
	ld c, [hl]                                       ; $7503: $4e
	ret nz                                           ; $7504: $c0

	sbc l                                            ; $7505: $9d
	ld a, [$5662]                                    ; $7506: $fa $62 $56
	ret nz                                           ; $7509: $c0

jr_050_750a:
	sbc e                                            ; $750a: $9b
	ld de, $1cff                                     ; $750b: $11 $ff $1c
	jr @-$02                                         ; $750e: $18 $fc

	sbc h                                            ; $7510: $9c
	inc bc                                           ; $7511: $03
	ld c, $1c                                        ; $7512: $0e $1c
	ld a, d                                          ; $7514: $7a
	call nz, $ac7d                                   ; $7515: $c4 $7d $ac
	ei                                               ; $7518: $fb
	add b                                            ; $7519: $80
	rra                                              ; $751a: $1f
	pop af                                           ; $751b: $f1
	add c                                            ; $751c: $81
	rrca                                             ; $751d: $0f
	ccf                                              ; $751e: $3f
	cpl                                              ; $751f: $2f
	ldh a, [$80]                                     ; $7520: $f0 $80
	add a                                            ; $7522: $87
	rst $38                                          ; $7523: $ff
	cp a                                             ; $7524: $bf
	rst $38                                          ; $7525: $ff
	db $fc                                           ; $7526: $fc
	rra                                              ; $7527: $1f
	jr c, jr_050_750a                                ; $7528: $38 $e0

	ret nz                                           ; $752a: $c0

	ret nz                                           ; $752b: $c0

	ld [hl], b                                       ; $752c: $70
	ld a, a                                          ; $752d: $7f
	inc bc                                           ; $752e: $03
	rst SubAFromBC                                          ; $752f: $e7
	rst SubAFromBC                                          ; $7530: $e7
	rst FarCall                                          ; $7531: $f7
	cp e                                             ; $7532: $bb
	cp a                                             ; $7533: $bf
	rst GetHLinHL                                          ; $7534: $cf
	inc c                                            ; $7535: $0c
	ldh [rIE], a                                     ; $7536: $e0 $ff
	ld a, a                                          ; $7538: $7f
	sbc b                                            ; $7539: $98
	ld a, a                                          ; $753a: $7f
	ld [hl], a                                       ; $753b: $77
	ld [hl], e                                       ; $753c: $73
	inc sp                                           ; $753d: $33
	di                                               ; $753e: $f3
	rst $38                                          ; $753f: $ff
	or e                                             ; $7540: $b3
	ld a, d                                          ; $7541: $7a
	dec e                                            ; $7542: $1d
	sbc d                                            ; $7543: $9a
	ld a, a                                          ; $7544: $7f
	ld a, h                                          ; $7545: $7c
	db $ed                                           ; $7546: $ed
	db $db                                           ; $7547: $db
	rst GetHLinHL                                          ; $7548: $cf
	ld a, d                                          ; $7549: $7a
	ld sp, $8088                                     ; $754a: $31 $88 $80
	add e                                            ; $754d: $83
	inc de                                           ; $754e: $13
	daa                                              ; $754f: $27
	db $fc                                           ; $7550: $fc
	db $dd                                           ; $7551: $dd
	db $d3                                           ; $7552: $d3
	ld d, c                                          ; $7553: $51
	add e                                            ; $7554: $83
	and a                                            ; $7555: $a7
	rst JumpTable                                          ; $7556: $c7
	rst $38                                          ; $7557: $ff
	and $e6                                          ; $7558: $e6 $e6
	rst AddAOntoHL                                          ; $755a: $ef
	xor $fc                                          ; $755b: $ee $fc
	ret c                                            ; $755d: $d8

	jr c, @+$01                                      ; $755e: $38 $ff

	nop                                              ; $7560: $00
	inc a                                            ; $7561: $3c
	ei                                               ; $7562: $fb
	ld [hl], e                                       ; $7563: $73
	inc bc                                           ; $7564: $03
	ld a, [hl]                                       ; $7565: $7e
	ret z                                            ; $7566: $c8

	sbc [hl]                                         ; $7567: $9e
	db $fc                                           ; $7568: $fc
	ld [hl], a                                       ; $7569: $77
	ld h, c                                          ; $756a: $61
	sbc h                                            ; $756b: $9c
	ldh [$1f], a                                     ; $756c: $e0 $1f
	ld a, d                                          ; $756e: $7a
	ld a, e                                          ; $756f: $7b
	ld h, a                                          ; $7570: $67
	sub a                                            ; $7571: $97
	rst SubAFromBC                                          ; $7572: $e7
	db $e3                                           ; $7573: $e3
	pop hl                                           ; $7574: $e1
	rrca                                             ; $7575: $0f
	scf                                              ; $7576: $37
	jr nz, @-$1e                                     ; $7577: $20 $e0

	ret nz                                           ; $7579: $c0

	sbc $40                                          ; $757a: $de $40
	ld l, h                                          ; $757c: $6c
	add b                                            ; $757d: $80
	rst SubAFromDE                                          ; $757e: $df
	add a                                            ; $757f: $87
	sbc e                                            ; $7580: $9b
	rst $38                                          ; $7581: $ff
	rst AddAOntoHL                                          ; $7582: $ef
	rlca                                             ; $7583: $07
	inc bc                                           ; $7584: $03
	ld [hl], h                                       ; $7585: $74
	cp e                                             ; $7586: $bb
	ld [hl], d                                       ; $7587: $72
	call c, $9c7a                                    ; $7588: $dc $7a $9c
	ld l, l                                          ; $758b: $6d
	pop af                                           ; $758c: $f1
	sbc e                                            ; $758d: $9b
	rra                                              ; $758e: $1f
	rlca                                             ; $758f: $07
	ldh [$e7], a                                     ; $7590: $e0 $e7
	ld [hl], l                                       ; $7592: $75
	xor e                                            ; $7593: $ab
	sbc $ff                                          ; $7594: $de $ff
	sbc e                                            ; $7596: $9b
	ld hl, sp-$20                                    ; $7597: $f8 $e0
	ret nz                                           ; $7599: $c0

	add b                                            ; $759a: $80
	cp $9e                                           ; $759b: $fe $9e

Call_050_759d:
	inc b                                            ; $759d: $04
	ld l, d                                          ; $759e: $6a
	and e                                            ; $759f: $a3
	sbc [hl]                                         ; $75a0: $9e
	ld hl, sp-$06                                    ; $75a1: $f8 $fa
	ld a, l                                          ; $75a3: $7d
	add hl, sp                                       ; $75a4: $39
	ld a, c                                          ; $75a5: $79
	dec b                                            ; $75a6: $05
	sbc h                                            ; $75a7: $9c
	db $fc                                           ; $75a8: $fc
	db $fd                                           ; $75a9: $fd
	ld sp, hl                                        ; $75aa: $f9
	call c, $9401                                    ; $75ab: $dc $01 $94
	inc bc                                           ; $75ae: $03
	ld [bc], a                                       ; $75af: $02
	ld b, $81                                        ; $75b0: $06 $81
	inc bc                                           ; $75b2: $03
	rlca                                             ; $75b3: $07
	rrca                                             ; $75b4: $0f
	adc a                                            ; $75b5: $8f
	rrca                                             ; $75b6: $0f
	rra                                              ; $75b7: $1f
	ccf                                              ; $75b8: $3f
	ld a, e                                          ; $75b9: $7b

jr_050_75ba:
	ld d, d                                          ; $75ba: $52
	ld [hl], a                                       ; $75bb: $77
	pop de                                           ; $75bc: $d1
	ld c, d                                          ; $75bd: $4a
	adc b                                            ; $75be: $88
	ld a, d                                          ; $75bf: $7a
	ld b, c                                          ; $75c0: $41
	sbc h                                            ; $75c1: $9c
	db $e4                                           ; $75c2: $e4
	xor $fe                                          ; $75c3: $ee $fe
	ld a, d                                          ; $75c5: $7a
	xor d                                            ; $75c6: $aa
	sub [hl]                                         ; $75c7: $96
	add e                                            ; $75c8: $83
	ccf                                              ; $75c9: $3f
	dec de                                           ; $75ca: $1b
	ld de, $0701                                     ; $75cb: $11 $01 $07
	rrca                                             ; $75ce: $0f
	ccf                                              ; $75cf: $3f
	ld a, h                                          ; $75d0: $7c
	ld a, e                                          ; $75d1: $7b
	sbc h                                            ; $75d2: $9c
	rst SubAFromDE                                          ; $75d3: $df
	ld bc, $079c                                     ; $75d4: $01 $9c $07
	ld a, a                                          ; $75d7: $7f
	db $fd                                           ; $75d8: $fd
	ld a, e                                          ; $75d9: $7b
	adc h                                            ; $75da: $8c
	rst SubAFromDE                                          ; $75db: $df
	cp $97                                           ; $75dc: $fe $97
	ld hl, sp-$72                                    ; $75de: $f8 $8e
	inc bc                                           ; $75e0: $03
	push af                                          ; $75e1: $f5
	ld a, [$e0fd]                                    ; $75e2: $fa $fd $e0
	pop af                                           ; $75e5: $f1
	ld a, e                                          ; $75e6: $7b
	add d                                            ; $75e7: $82
	sbc l                                            ; $75e8: $9d
	ld c, $07                                        ; $75e9: $0e $07
	ld a, b                                          ; $75eb: $78
	sub e                                            ; $75ec: $93
	ld a, e                                          ; $75ed: $7b
	ld d, b                                          ; $75ee: $50
	sbc l                                            ; $75ef: $9d
	db $f4                                           ; $75f0: $f4
	nop                                              ; $75f1: $00
	sbc $f7                                          ; $75f2: $de $f7
	ld a, e                                          ; $75f4: $7b
	db $fc                                           ; $75f5: $fc
	ld h, l                                          ; $75f6: $65
	ld a, b                                          ; $75f7: $78
	sub a                                            ; $75f8: $97
	ld h, d                                          ; $75f9: $62
	rst $38                                          ; $75fa: $ff
	rst $38                                          ; $75fb: $ff
	pop hl                                           ; $75fc: $e1
	or e                                             ; $75fd: $b3
	ld bc, $bfbf                                     ; $75fe: $01 $bf $bf
	db $fd                                           ; $7601: $fd
	sub b                                            ; $7602: $90
	ld b, c                                          ; $7603: $41
	rst $38                                          ; $7604: $ff
	ld b, c                                          ; $7605: $41
	ld b, c                                          ; $7606: $41
	ld l, a                                          ; $7607: $6f
	rst SubAFromDE                                          ; $7608: $df
	rst $38                                          ; $7609: $ff
	or b                                             ; $760a: $b0
	or b                                             ; $760b: $b0
	cp c                                             ; $760c: $b9
	cp a                                             ; $760d: $bf
	sbc e                                            ; $760e: $9b
	jr nc, jr_050_7671                               ; $760f: $30 $60

	ret nz                                           ; $7611: $c0

	ld a, d                                          ; $7612: $7a
	db $fd                                           ; $7613: $fd
	halt                                             ; $7614: $76
	nop                                              ; $7615: $00
	sbc c                                            ; $7616: $99
	ld a, h                                          ; $7617: $7c
	xor l                                            ; $7618: $ad
	xor a                                            ; $7619: $af
	sub l                                            ; $761a: $95
	add c                                            ; $761b: $81
	db $db                                           ; $761c: $db
	ld a, d                                          ; $761d: $7a
	halt                                             ; $761e: $76
	rst SubAFromDE                                          ; $761f: $df
	ret nc                                           ; $7620: $d0

	sub l                                            ; $7621: $95
	ld a, [$feff]                                    ; $7622: $fa $ff $fe
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	dec a                                            ; $7627: $3d
	cp $fd                                           ; $7628: $fe $fd
	cp $f8                                           ; $762a: $fe $f8
	ld a, c                                          ; $762c: $79
	jr jr_050_75ba                                   ; $762d: $18 $8b

	jr nz, jr_050_7671                               ; $762f: $20 $40

	add d                                            ; $7631: $82
	add c                                            ; $7632: $81
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	inc e                                            ; $7635: $1c
	rlca                                             ; $7636: $07
	db $d3                                           ; $7637: $d3
	ld h, d                                          ; $7638: $62
	rst AddAOntoHL                                          ; $7639: $ef
	ld [bc], a                                       ; $763a: $02
	inc bc                                           ; $763b: $03
	rrca                                             ; $763c: $0f
	ld a, a                                          ; $763d: $7f
	ccf                                              ; $763e: $3f
	rrca                                             ; $763f: $0f
	rra                                              ; $7640: $1f
	rra                                              ; $7641: $1f
	rst $38                                          ; $7642: $ff
	ld a, c                                          ; $7643: $79
	jp nz, $c88e                                     ; $7644: $c2 $8e $c8

	jr c, @+$80                                      ; $7647: $38 $7e

	adc h                                            ; $7649: $8c
	ld [hl], e                                       ; $764a: $73
	ld c, $80                                        ; $764b: $0e $80
	cp $f0                                           ; $764d: $fe $f0
	ret nz                                           ; $764f: $c0

	add b                                            ; $7650: $80
	ldh a, [$80]                                     ; $7651: $f0 $80
	ldh a, [$f0]                                     ; $7653: $f0 $f0
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	ld [hl], b                                       ; $7657: $70
	and $9e                                          ; $7658: $e6 $9e
	ld a, a                                          ; $765a: $7f
	ld sp, hl                                        ; $765b: $f9
	ld a, e                                          ; $765c: $7b
	ldh a, [c]                                       ; $765d: $f2
	sbc $fe                                          ; $765e: $de $fe
	sbc [hl]                                         ; $7660: $9e
	db $fc                                           ; $7661: $fc
	ld [hl], h                                       ; $7662: $74
	ld a, e                                          ; $7663: $7b
	ld [hl], a                                       ; $7664: $77
	rra                                              ; $7665: $1f
	sbc l                                            ; $7666: $9d
	rra                                              ; $7667: $1f
	pop hl                                           ; $7668: $e1
	sbc $ff                                          ; $7669: $de $ff
	adc [hl]                                         ; $766b: $8e
	ld [hl], a                                       ; $766c: $77
	rst $38                                          ; $766d: $ff
	xor a                                            ; $766e: $af
	rst SubAFromDE                                          ; $766f: $df
	ld b, b                                          ; $7670: $40

jr_050_7671:
	ld h, b                                          ; $7671: $60
	jr nz, jr_050_76a4                               ; $7672: $20 $30

	sbc b                                            ; $7674: $98
	sbc a                                            ; $7675: $9f
	rst SubAFromDE                                          ; $7676: $df
	rst AddAOntoHL                                          ; $7677: $ef
	jp $e1c1                                         ; $7678: $c3 $c1 $e1


	ldh a, [$fe]                                     ; $767b: $f0 $fe
	ld [hl], l                                       ; $767d: $75
	ld a, $fd                                        ; $767e: $3e $fd
	sbc h                                            ; $7680: $9c
	add b                                            ; $7681: $80
	pop bc                                           ; $7682: $c1
	db $e3                                           ; $7683: $e3
	ld a, b                                          ; $7684: $78
	ld b, l                                          ; $7685: $45
	ld a, [hl]                                       ; $7686: $7e
	sub $9d                                          ; $7687: $d6 $9d
	jp nz, $de01                                     ; $7689: $c2 $01 $de

	inc bc                                           ; $768c: $03
	ld a, a                                          ; $768d: $7f
	ld a, [hl+]                                      ; $768e: $2a
	sub a                                            ; $768f: $97
	rra                                              ; $7690: $1f
	dec a                                            ; $7691: $3d
	cp $fc                                           ; $7692: $fe $fc
	ld a, a                                          ; $7694: $7f
	ld a, a                                          ; $7695: $7f
	rrca                                             ; $7696: $0f
	rrca                                             ; $7697: $0f
	ld a, e                                          ; $7698: $7b
	dec [hl]                                         ; $7699: $35
	sbc $80                                          ; $769a: $de $80
	rst SubAFromDE                                          ; $769c: $df
	ldh a, [$78]                                     ; $769d: $f0 $78
	jr z, jr_050_7713                                ; $769f: $28 $72

	or l                                             ; $76a1: $b5
	ld [hl], l                                       ; $76a2: $75
	xor c                                            ; $76a3: $a9

jr_050_76a4:
	ld [hl], d                                       ; $76a4: $72
	ld de, $ff7a                                     ; $76a5: $11 $7a $ff
	sbc e                                            ; $76a8: $9b
	ld a, [$c3f2]                                    ; $76a9: $fa $f2 $c3
	add e                                            ; $76ac: $83
	sbc $01                                          ; $76ad: $de $01
	ld a, [hl]                                       ; $76af: $7e
	xor b                                            ; $76b0: $a8
	sbc h                                            ; $76b1: $9c
	inc c                                            ; $76b2: $0c
	inc a                                            ; $76b3: $3c
	ld a, h                                          ; $76b4: $7c
	ld [hl], l                                       ; $76b5: $75
	ld b, [hl]                                       ; $76b6: $46
	sbc [hl]                                         ; $76b7: $9e
	ccf                                              ; $76b8: $3f
	ld [hl], d                                       ; $76b9: $72
	and e                                            ; $76ba: $a3
	sbc [hl]                                         ; $76bb: $9e
	ld [hl], b                                       ; $76bc: $70
	ld [hl], d                                       ; $76bd: $72
	call nz, $009b                                   ; $76be: $c4 $9b $00
	rlca                                             ; $76c1: $07
	adc a                                            ; $76c2: $8f
	ld a, a                                          ; $76c3: $7f
	ld a, e                                          ; $76c4: $7b
	call nc, $847f                                   ; $76c5: $d4 $7f $84
	ld a, d                                          ; $76c8: $7a
	sub $7b                                          ; $76c9: $d6 $7b
	call nc, $1879                                   ; $76cb: $d4 $79 $18
	ld a, a                                          ; $76ce: $7f
	ldh a, [c]                                       ; $76cf: $f2
	sub [hl]                                         ; $76d0: $96
	rlca                                             ; $76d1: $07
	rla                                              ; $76d2: $17
	ccf                                              ; $76d3: $3f
	ld a, a                                          ; $76d4: $7f
	ldh [$df], a                                     ; $76d5: $e0 $df
	cp $ff                                           ; $76d7: $fe $ff
	ld hl, sp+$7b                                    ; $76d9: $f8 $7b
	add sp, $7f                                      ; $76db: $e8 $7f
	db $d3                                           ; $76dd: $d3
	ld a, a                                          ; $76de: $7f
	ret z                                            ; $76df: $c8

	rst SubAFromDE                                          ; $76e0: $df
	rst $38                                          ; $76e1: $ff
	sbc l                                            ; $76e2: $9d
	ld a, [$7ac7]                                    ; $76e3: $fa $c7 $7a
	reti                                             ; $76e6: $d9


	halt                                             ; $76e7: $76
	and b                                            ; $76e8: $a0
	ld a, [hl]                                       ; $76e9: $7e
	inc de                                           ; $76ea: $13
	ld a, b                                          ; $76eb: $78
	ldh a, [$9c]                                     ; $76ec: $f0 $9c
	pop hl                                           ; $76ee: $e1
	ld e, a                                          ; $76ef: $5f
	cp $76                                           ; $76f0: $fe $76
	ld h, l                                          ; $76f2: $65
	sbc l                                            ; $76f3: $9d
	rst $38                                          ; $76f4: $ff
	ld e, $7b                                        ; $76f5: $1e $7b
	set 3, l                                         ; $76f7: $cb $dd
	rst $38                                          ; $76f9: $ff
	halt                                             ; $76fa: $76
	call nz, $d79e                                   ; $76fb: $c4 $9e $d7
	ld e, d                                          ; $76fe: $5a

Call_050_76ff:
Jump_050_76ff:
	ret nz                                           ; $76ff: $c0

	add a                                            ; $7700: $87
	cp a                                             ; $7701: $bf
	rla                                              ; $7702: $17
	xor h                                            ; $7703: $ac
	cp b                                             ; $7704: $b8
	jr nc, jr_050_7727                               ; $7705: $30 $20

Jump_050_7707:
	ldh [$e0], a                                     ; $7707: $e0 $e0
	ld b, e                                          ; $7709: $43
	rst AddAOntoHL                                          ; $770a: $ef
	ld e, a                                          ; $770b: $5f
	ld e, a                                          ; $770c: $5f
	ld a, l                                          ; $770d: $7d
	ld sp, hl                                        ; $770e: $f9
	ld a, e                                          ; $770f: $7b
	ld [hl], e                                       ; $7710: $73
	and $0d                                          ; $7711: $e6 $0d

jr_050_7713:
	dec de                                           ; $7713: $1b
	ld sp, $cf67                                     ; $7714: $31 $67 $cf
	rst SubAFromDE                                          ; $7717: $df
	sbc $7a                                          ; $7718: $de $7a
	dec sp                                           ; $771a: $3b
	ld a, e                                          ; $771b: $7b
	xor [hl]                                         ; $771c: $ae
	sub l                                            ; $771d: $95
	ldh [$e1], a                                     ; $771e: $e0 $e1
	db $fc                                           ; $7720: $fc
	db $fc                                           ; $7721: $fc
	ld hl, sp-$28                                    ; $7722: $f8 $d8
	call c, $048c                                    ; $7724: $dc $8c $04

jr_050_7727:
	inc b                                            ; $7727: $04
	call c, Call_050_7b3f                            ; $7728: $dc $3f $7b
	ld d, d                                          ; $772b: $52
	sbc l                                            ; $772c: $9d
	inc a                                            ; $772d: $3c
	ld b, $7b                                        ; $772e: $06 $7b
	ld [hl], $7b                                     ; $7730: $36 $7b
	ld h, b                                          ; $7732: $60
	sbc [hl]                                         ; $7733: $9e
	ret nz                                           ; $7734: $c0

	ld a, e                                          ; $7735: $7b
	ld b, e                                          ; $7736: $43
	ld [hl], a                                       ; $7737: $77
	ld h, b                                          ; $7738: $60
	sub [hl]                                         ; $7739: $96
	ld d, $17                                        ; $773a: $16 $17
	rla                                              ; $773c: $17
	rst SubAFromHL                                          ; $773d: $d7
	or $ee                                           ; $773e: $f6 $ee
	sbc [hl]                                         ; $7740: $9e
	ld [hl], $0f                                     ; $7741: $36 $0f
	sbc $0e                                          ; $7743: $de $0e
	ld a, a                                          ; $7745: $7f
	ld l, [hl]                                       ; $7746: $6e
	ld a, a                                          ; $7747: $7f
	rst SubAFromDE                                          ; $7748: $df
	sub a                                            ; $7749: $97
	di                                               ; $774a: $f3
	rst SubAFromBC                                          ; $774b: $e7
	jp $0f87                                         ; $774c: $c3 $87 $0f


	rla                                              ; $774f: $17
	rla                                              ; $7750: $17
	ld de, $9bfd                                     ; $7751: $11 $fd $9b
	sub b                                            ; $7754: $90
	ld [$8f08], sp                                   ; $7755: $08 $08 $8f
	ld [hl], a                                       ; $7758: $77
	ld hl, $f19c                                     ; $7759: $21 $9c $f1
	rst GetHLinHL                                          ; $775c: $cf
	ld a, a                                          ; $775d: $7f
	ld [hl], a                                       ; $775e: $77
	ld [hl], b                                       ; $775f: $70
	ld a, [hl]                                       ; $7760: $7e
	sbc e                                            ; $7761: $9b
	ld a, e                                          ; $7762: $7b
	inc sp                                           ; $7763: $33
	ld a, [hl]                                       ; $7764: $7e
	xor d                                            ; $7765: $aa
	sbc h                                            ; $7766: $9c
	ld [$f938], sp                                   ; $7767: $08 $38 $f9
	ld [hl], l                                       ; $776a: $75
	or l                                             ; $776b: $b5
	ld [hl], e                                       ; $776c: $73
	ld b, $df                                        ; $776d: $06 $df
	rst $38                                          ; $776f: $ff
	sub a                                            ; $7770: $97
	ld l, a                                          ; $7771: $6f
	ld a, e                                          ; $7772: $7b
	ld a, c                                          ; $7773: $79
	ld l, b                                          ; $7774: $68
	db $f4                                           ; $7775: $f4
	or $f7                                           ; $7776: $f6 $f7
	rst SubAFromDE                                          ; $7778: $df
	sbc $ff                                          ; $7779: $de $ff
	sbc d                                            ; $777b: $9a
	db $fd                                           ; $777c: $fd
	xor $ee                                          ; $777d: $ee $ee
	rst AddAOntoHL                                          ; $777f: $ef
	db $ed                                           ; $7780: $ed
	ld a, c                                          ; $7781: $79
	xor $9b                                          ; $7782: $ee $9b
	ld [hl], b                                       ; $7784: $70
	ld bc, $1f1f                                     ; $7785: $01 $1f $1f
	ld [hl], c                                       ; $7788: $71
	xor d                                            ; $7789: $aa
	sub a                                            ; $778a: $97
	ld a, [hl]                                       ; $778b: $7e
	ld bc, $fdff                                     ; $778c: $01 $ff $fd
	inc bc                                           ; $778f: $03
	ld c, $10                                        ; $7790: $0e $10
	ld a, b                                          ; $7792: $78
	halt                                             ; $7793: $76
	sub e                                            ; $7794: $93
	ld a, a                                          ; $7795: $7f
	cp e                                             ; $7796: $bb
	sbc l                                            ; $7797: $9d
	rst AddAOntoHL                                          ; $7798: $ef
	add a                                            ; $7799: $87
	ld [hl], h                                       ; $779a: $74
	daa                                              ; $779b: $27
	ld l, b                                          ; $779c: $68
	db $f4                                           ; $779d: $f4
	sbc [hl]                                         ; $779e: $9e
	nop                                              ; $779f: $00
	ld [hl], d                                       ; $77a0: $72
	add sp, $71                                      ; $77a1: $e8 $71
	cp b                                             ; $77a3: $b8
	sbc d                                            ; $77a4: $9a
	ld [bc], a                                       ; $77a5: $02
	scf                                              ; $77a6: $37
	ccf                                              ; $77a7: $3f
	ld a, a                                          ; $77a8: $7f
	ld a, a                                          ; $77a9: $7f
	ld l, c                                          ; $77aa: $69
	ld a, d                                          ; $77ab: $7a
	ld a, e                                          ; $77ac: $7b
	ldh a, [$7e]                                     ; $77ad: $f0 $7e
	sub l                                            ; $77af: $95
	sbc d                                            ; $77b0: $9a
	ld b, $0c                                        ; $77b1: $06 $0c
	jr @+$3a                                         ; $77b3: $18 $38

	ld a, b                                          ; $77b5: $78
	ld a, e                                          ; $77b6: $7b
	ld b, b                                          ; $77b7: $40
	sbc d                                            ; $77b8: $9a
	ld sp, hl                                        ; $77b9: $f9
	di                                               ; $77ba: $f3
	rst SubAFromBC                                          ; $77bb: $e7
	rst JumpTable                                          ; $77bc: $c7
	add a                                            ; $77bd: $87
	halt                                             ; $77be: $76
	ld e, b                                          ; $77bf: $58
	sbc h                                            ; $77c0: $9c
	ld [bc], a                                       ; $77c1: $02
	inc b                                            ; $77c2: $04
	ld [$f476], sp                                   ; $77c3: $08 $76 $f4
	sbc $ff                                          ; $77c6: $de $ff
	sub l                                            ; $77c8: $95
	ei                                               ; $77c9: $fb
	db $e3                                           ; $77ca: $e3
	ld a, [de]                                       ; $77cb: $1a
	dec [hl]                                         ; $77cc: $35
	ld l, d                                          ; $77cd: $6a
	push de                                          ; $77ce: $d5
	xor d                                            ; $77cf: $aa
	ld d, l                                          ; $77d0: $55
	and b                                            ; $77d1: $a0
	nop                                              ; $77d2: $00
	ld a, b                                          ; $77d3: $78
	dec l                                            ; $77d4: $2d
	db $fc                                           ; $77d5: $fc
	sbc e                                            ; $77d6: $9b
	rst $38                                          ; $77d7: $ff
	ld e, a                                          ; $77d8: $5f
	xor d                                            ; $77d9: $aa
	ld d, l                                          ; $77da: $55
	ld a, e                                          ; $77db: $7b
	cp $9e                                           ; $77dc: $fe $9e
	dec d                                            ; $77de: $15
	ld sp, hl                                        ; $77df: $f9
	sbc $ff                                          ; $77e0: $de $ff
	sbc l                                            ; $77e2: $9d
	ld e, a                                          ; $77e3: $5f
	xor e                                            ; $77e4: $ab
	ld a, e                                          ; $77e5: $7b
	xor $5b                                          ; $77e6: $ee $5b
	ldh a, [$79]                                     ; $77e8: $f0 $79
	rrca                                             ; $77ea: $0f
	ld a, a                                          ; $77eb: $7f
	xor $f9                                          ; $77ec: $ee $f9
	ld a, [hl]                                       ; $77ee: $7e
	ret nz                                           ; $77ef: $c0

	sbc h                                            ; $77f0: $9c
	dec d                                            ; $77f1: $15
	xor b                                            ; $77f2: $a8
	dec d                                            ; $77f3: $15
	ld a, e                                          ; $77f4: $7b
	ld [$c47e], a                                    ; $77f5: $ea $7e $c4
	ld [hl], h                                       ; $77f8: $74
	ld c, b                                          ; $77f9: $48
	rst $38                                          ; $77fa: $ff
	add b                                            ; $77fb: $80

jr_050_77fc:
	or $77                                           ; $77fc: $f6 $77
	ld e, [hl]                                       ; $77fe: $5e

Call_050_77ff:
Jump_050_77ff:
	ccf                                              ; $77ff: $3f
	ld a, $0d                                        ; $7800: $3e $0d
	dec e                                            ; $7802: $1d
	ld a, [hl-]                                      ; $7803: $3a
	ld h, c                                          ; $7804: $61
	ld h, b                                          ; $7805: $60
	ld h, c                                          ; $7806: $61
	ret nz                                           ; $7807: $c0

	pop bc                                           ; $7808: $c1
	jp nz, $8482                                     ; $7809: $c2 $82 $84

	cp [hl]                                          ; $780c: $be
	cp l                                             ; $780d: $bd
	jp c, $ecd2                                      ; $780e: $da $d2 $ec

	db $e3                                           ; $7811: $e3
	add d                                            ; $7812: $82
	ld a, h                                          ; $7813: $7c
	pop bc                                           ; $7814: $c1
	jp $6fe7                                         ; $7815: $c3 $e7 $6f


	ccf                                              ; $7818: $3f
	rra                                              ; $7819: $1f
	inc bc                                           ; $781a: $03
	sub e                                            ; $781b: $93
	nop                                              ; $781c: $00
	ld b, $0f                                        ; $781d: $06 $0f
	ld de, $c060                                     ; $781f: $11 $60 $c0
	add b                                            ; $7822: $80
	ldh [$30], a                                     ; $7823: $e0 $30
	rst $38                                          ; $7825: $ff
	rst $38                                          ; $7826: $ff
	ld sp, hl                                        ; $7827: $f9
	ld a, e                                          ; $7828: $7b
	adc l                                            ; $7829: $8d
	ld a, l                                          ; $782a: $7d
	dec hl                                           ; $782b: $2b
	ld a, e                                          ; $782c: $7b
	ld b, a                                          ; $782d: $47
	sbc e                                            ; $782e: $9b
	cp h                                             ; $782f: $bc
	cp [hl]                                          ; $7830: $be
	ld a, a                                          ; $7831: $7f
	ld e, a                                          ; $7832: $5f
	ld [hl], a                                       ; $7833: $77
	ld [bc], a                                       ; $7834: $02
	ld a, l                                          ; $7835: $7d
	push de                                          ; $7836: $d5
	ld a, c                                          ; $7837: $79
	res 2, a                                         ; $7838: $cb $97
	rst AddAOntoHL                                          ; $783a: $ef
	rst SubAFromHL                                          ; $783b: $d7
	or e                                             ; $783c: $b3
	daa                                              ; $783d: $27
	dec l                                            ; $783e: $2d
	rst AddAOntoHL                                          ; $783f: $ef
	adc a                                            ; $7840: $8f
	add c                                            ; $7841: $81
	ld a, e                                          ; $7842: $7b
	ld bc, $907e                                     ; $7843: $01 $7e $90
	sbc c                                            ; $7846: $99
	jr nc, jr_050_78b9                               ; $7847: $30 $70

	ld a, [hl]                                       ; $7849: $7e
	ld h, e                                          ; $784a: $63
	add e                                            ; $784b: $83
	ldh [$7a], a                                     ; $784c: $e0 $7a
	adc $7f                                          ; $784e: $ce $7f
	ld [de], a                                       ; $7850: $12
	sbc [hl]                                         ; $7851: $9e
	sbc a                                            ; $7852: $9f
	ld a, e                                          ; $7853: $7b
	adc d                                            ; $7854: $8a
	ld a, a                                          ; $7855: $7f
	pop bc                                           ; $7856: $c1
	ld a, [hl]                                       ; $7857: $7e
	call $c076                                       ; $7858: $cd $76 $c0
	ld a, h                                          ; $785b: $7c
	adc l                                            ; $785c: $8d
	ld l, a                                          ; $785d: $6f
	jr nz, jr_050_77fc                               ; $785e: $20 $9c

	ld hl, sp-$40                                    ; $7860: $f8 $c0
	rst $38                                          ; $7862: $ff
	ld a, e                                          ; $7863: $7b
	ret c                                            ; $7864: $d8

	sbc c                                            ; $7865: $99
	add $c4                                          ; $7866: $c6 $c4
	inc c                                            ; $7868: $0c
	ld sp, hl                                        ; $7869: $f9
	inc de                                           ; $786a: $13
	rst JumpTable                                          ; $786b: $c7
	ld a, e                                          ; $786c: $7b
	or b                                             ; $786d: $b0
	rst SubAFromDE                                          ; $786e: $df
	inc bc                                           ; $786f: $03
	sub e                                            ; $7870: $93
	rlca                                             ; $7871: $07
	rst AddAOntoHL                                          ; $7872: $ef
	rst $38                                          ; $7873: $ff
	adc $cd                                          ; $7874: $ce $cd
	rst GetHLinHL                                          ; $7876: $cf
	rst SubAFromBC                                          ; $7877: $e7
	db $e3                                           ; $7878: $e3
	and a                                            ; $7879: $a7
	ld e, a                                          ; $787a: $5f
	reti                                             ; $787b: $d9


	db $fc                                           ; $787c: $fc
	ld [hl], e                                       ; $787d: $73
	sbc $90                                          ; $787e: $de $90
	cp a                                             ; $7880: $bf
	ld hl, sp-$64                                    ; $7881: $f8 $9c
	inc a                                            ; $7883: $3c
	ld a, a                                          ; $7884: $7f
	adc c                                            ; $7885: $89
	ret nz                                           ; $7886: $c0

	ldh [hLCDCIntHandlerIdx], a                                     ; $7887: $e0 $81
	ret nz                                           ; $7889: $c0

	ld h, e                                          ; $788a: $63
	inc bc                                           ; $788b: $03
	add b                                            ; $788c: $80
	or $3f                                           ; $788d: $f6 $3f
	ld a, d                                          ; $788f: $7a
	cp c                                             ; $7890: $b9
	sbc [hl]                                         ; $7891: $9e
	ld [hl], b                                       ; $7892: $70
	ld a, e                                          ; $7893: $7b
	adc e                                            ; $7894: $8b
	rst SubAFromDE                                          ; $7895: $df
	ret nz                                           ; $7896: $c0

	rst $38                                          ; $7897: $ff
	sbc l                                            ; $7898: $9d
	adc a                                            ; $7899: $8f
	rra                                              ; $789a: $1f
	db $dd                                           ; $789b: $dd
	ccf                                              ; $789c: $3f
	ld [hl], b                                       ; $789d: $70
	adc b                                            ; $789e: $88
	sbc [hl]                                         ; $789f: $9e
	ld bc, $587a                                     ; $78a0: $01 $7a $58
	ld l, d                                          ; $78a3: $6a
	add d                                            ; $78a4: $82
	rst SubAFromDE                                          ; $78a5: $df
	rst $38                                          ; $78a6: $ff
	sbc l                                            ; $78a7: $9d
	ld a, h                                          ; $78a8: $7c
	db $fd                                           ; $78a9: $fd
	jp c, $7eff                                      ; $78aa: $da $ff $7e

	ret nc                                           ; $78ad: $d0

	ld a, [hl]                                       ; $78ae: $7e
	ld d, $de                                        ; $78af: $16 $de
	ld hl, sp-$21                                    ; $78b1: $f8 $df
	ldh a, [$9c]                                     ; $78b3: $f0 $9c
	ldh [$e2], a                                     ; $78b5: $e0 $e2
	rst SubAFromBC                                          ; $78b7: $e7
	ld a, e                                          ; $78b8: $7b

jr_050_78b9:
	di                                               ; $78b9: $f3
	rst SubAFromDE                                          ; $78ba: $df
	rrca                                             ; $78bb: $0f
	sbc $1f                                          ; $78bc: $de $1f
	sub d                                            ; $78be: $92
	add hl, sp                                       ; $78bf: $39
	ld a, c                                          ; $78c0: $79
	rst $38                                          ; $78c1: $ff
	ld e, b                                          ; $78c2: $58
	ld a, b                                          ; $78c3: $78
	ld hl, sp-$38                                    ; $78c4: $f8 $c8
	adc b                                            ; $78c6: $88
	adc b                                            ; $78c7: $88
	rst $38                                          ; $78c8: $ff
	nop                                              ; $78c9: $00
	db $e3                                           ; $78ca: $e3
	jp $83de                                         ; $78cb: $c3 $de $83


	ld [hl], h                                       ; $78ce: $74
	ld a, [hl]                                       ; $78cf: $7e
	ld l, [hl]                                       ; $78d0: $6e
	ld [$79fc], a                                    ; $78d1: $ea $fc $79
	ld sp, hl                                        ; $78d4: $f9

Jump_050_78d5:
	ld a, [hl]                                       ; $78d5: $7e
	add d                                            ; $78d6: $82
	cp $9e                                           ; $78d7: $fe $9e
	jr nz, jr_050_7946                               ; $78d9: $20 $6b

	ldh a, [rPCM34]                                  ; $78db: $f0 $77
	sbc b                                            ; $78dd: $98
	ld a, [hl]                                       ; $78de: $7e
	or [hl]                                          ; $78df: $b6
	ld a, a                                          ; $78e0: $7f
	xor $9d                                          ; $78e1: $ee $9d
	db $10                                           ; $78e3: $10
	ld [$f06f], sp                                   ; $78e4: $08 $6f $f0
	sbc l                                            ; $78e7: $9d
	ld h, b                                          ; $78e8: $60
	ld [hl], b                                       ; $78e9: $70
	ld a, e                                          ; $78ea: $7b
	ldh a, [$7e]                                     ; $78eb: $f0 $7e
	or h                                             ; $78ed: $b4
	sbc h                                            ; $78ee: $9c
	dec b                                            ; $78ef: $05
	nop                                              ; $78f0: $00
	ld h, b                                          ; $78f1: $60
	ld a, b                                          ; $78f2: $78
	sub c                                            ; $78f3: $91
	db $fc                                           ; $78f4: $fc
	ld a, a                                          ; $78f5: $7f
	cp a                                             ; $78f6: $bf
	rst SubAFromDE                                          ; $78f7: $df
	rst $38                                          ; $78f8: $ff
	add c                                            ; $78f9: $81

jr_050_78fa:
	push af                                          ; $78fa: $f5
	xor d                                            ; $78fb: $aa
	ld d, h                                          ; $78fc: $54

Call_050_78fd:
	xor b                                            ; $78fd: $a8
	nop                                              ; $78fe: $00
	inc b                                            ; $78ff: $04
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	ld a, [bc]                                       ; $7902: $0a
	ld d, l                                          ; $7903: $55
	xor e                                            ; $7904: $ab
	ld d, a                                          ; $7905: $57
	cp $f8                                           ; $7906: $fe $f8
	dec sp                                           ; $7908: $3b
	ld sp, $da32                                     ; $7909: $31 $32 $da
	add hl, hl                                       ; $790c: $29
	add h                                            ; $790d: $84
	ld [de], a                                       ; $790e: $12
	add hl, bc                                       ; $790f: $09
	add h                                            ; $7910: $84
	add [hl]                                         ; $7911: $86
	pop bc                                           ; $7912: $c1
	ld hl, $1890                                     ; $7913: $21 $90 $18
	inc c                                            ; $7916: $0c
	ld b, $79                                        ; $7917: $06 $79
	xor l                                            ; $7919: $ad
	rst SubAFromDE                                          ; $791a: $df
	ld a, a                                          ; $791b: $7f
	ld a, a                                          ; $791c: $7f
	ld b, a                                          ; $791d: $47
	add b                                            ; $791e: $80
	rlca                                             ; $791f: $07
	nop                                              ; $7920: $00
	ld bc, $8000                                     ; $7921: $01 $00 $80
	add b                                            ; $7924: $80
	ret nz                                           ; $7925: $c0

	ld h, b                                          ; $7926: $60
	jr c, jr_050_7941                                ; $7927: $38 $18

	inc a                                            ; $7929: $3c
	sub h                                            ; $792a: $94
	jp nz, $edd3                                     ; $792b: $c2 $d3 $ed

	ldh a, [c]                                       ; $792e: $f2
	ld sp, hl                                        ; $792f: $f9
	jr nc, jr_050_78fa                               ; $7930: $30 $c8

	ld l, h                                          ; $7932: $6c
	inc a                                            ; $7933: $3c
	ld c, $03                                        ; $7934: $0e $03
	ld bc, $2e00                                     ; $7936: $01 $00 $2e
	nop                                              ; $7939: $00
	dec de                                           ; $793a: $1b
	ld [$840c], sp                                   ; $793b: $08 $0c $84
	sbc c                                            ; $793e: $99
	add d                                            ; $793f: $82
	ld b, b                                          ; $7940: $40

jr_050_7941:
	ld de, $0c1f                                     ; $7941: $11 $1f $0c
	inc c                                            ; $7944: $0c
	ld a, b                                          ; $7945: $78

jr_050_7946:
	cp b                                             ; $7946: $b8
	add e                                            ; $7947: $83
	add e                                            ; $7948: $83
	nop                                              ; $7949: $00
	jr nz, @-$0e                                     ; $794a: $20 $f0

	ld h, a                                          ; $794c: $67
	rst $38                                          ; $794d: $ff
	db $db                                           ; $794e: $db
	nop                                              ; $794f: $00
	rst JumpTable                                          ; $7950: $c7
	rst $38                                          ; $7951: $ff
	rst FarCall                                          ; $7952: $f7
	ld hl, $2020                                     ; $7953: $21 $20 $20
	ld a, a                                          ; $7956: $7f
	rst $38                                          ; $7957: $ff
	jr nz, jr_050_795d                               ; $7958: $20 $03

	ld h, e                                          ; $795a: $63
	rst JumpTable                                          ; $795b: $c7
	add l                                            ; $795c: $85

jr_050_795d:
	dec bc                                           ; $795d: $0b
	sub b                                            ; $795e: $90
	jr nc, @+$65                                     ; $795f: $30 $63

	rst $38                                          ; $7961: $ff
	sbc [hl]                                         ; $7962: $9e
	inc a                                            ; $7963: $3c
	ld a, b                                          ; $7964: $78
	call nc, $037f                                   ; $7965: $d4 $7f $03
	sbc l                                            ; $7968: $9d
	rst GetHLinHL                                          ; $7969: $cf
	rst FarCall                                          ; $796a: $f7
	ld a, c                                          ; $796b: $79
	jp z, $fe99                                      ; $796c: $ca $99 $fe

	ei                                               ; $796f: $fb
	ld a, h                                          ; $7970: $7c
	nop                                              ; $7971: $00
	ld [$78ff], sp                                   ; $7972: $08 $ff $78
	ret z                                            ; $7975: $c8

	add b                                            ; $7976: $80
	rrca                                             ; $7977: $0f
	ld hl, sp-$11                                    ; $7978: $f8 $ef
	inc e                                            ; $797a: $1c
	cp c                                             ; $797b: $b9
	ldh a, [$df]                                     ; $797c: $f0 $df
	ld a, a                                          ; $797e: $7f
	inc bc                                           ; $797f: $03
	ld [bc], a                                       ; $7980: $02
	ccf                                              ; $7981: $3f
	ld hl, sp-$20                                    ; $7982: $f8 $e0
	ld b, b                                          ; $7984: $40
	ld h, b                                          ; $7985: $60
	rst $38                                          ; $7986: $ff
	ret nz                                           ; $7987: $c0

	ld bc, $7ff8                                     ; $7988: $01 $f8 $7f
	sbc a                                            ; $798b: $9f
	ccf                                              ; $798c: $3f
	db $fd                                           ; $798d: $fd
	db $ed                                           ; $798e: $ed
	call $30cb                                       ; $798f: $cd $cb $30
	db $10                                           ; $7992: $10
	rra                                              ; $7993: $1f
	add hl, sp                                       ; $7994: $39
	ld l, b                                          ; $7995: $68
	ld a, [hl]                                       ; $7996: $7e
	ld d, a                                          ; $7997: $57
	add d                                            ; $7998: $82
	add c                                            ; $7999: $81
	db $fd                                           ; $799a: $fd
	cp a                                             ; $799b: $bf
	rst SubAFromBC                                          ; $799c: $e7
	db $f4                                           ; $799d: $f4
	ei                                               ; $799e: $fb
	db $e4                                           ; $799f: $e4
	add sp, -$4e                                     ; $79a0: $e8 $b2
	cp $8f                                           ; $79a2: $fe $8f
	pop bc                                           ; $79a4: $c1
	ldh [hDisp1_SCY], a                                     ; $79a5: $e0 $90
	ret c                                            ; $79a7: $d8

	and $e1                                          ; $79a8: $e6 $e1
	inc a                                            ; $79aa: $3c
	ld [hl], a                                       ; $79ab: $77
	rst $38                                          ; $79ac: $ff
	ld a, a                                          ; $79ad: $7f
	add e                                            ; $79ae: $83
	db $fc                                           ; $79af: $fc
	rrca                                             ; $79b0: $0f
	nop                                              ; $79b1: $00
	rst $38                                          ; $79b2: $ff
	ld hl, sp-$04                                    ; $79b3: $f8 $fc
	rra                                              ; $79b5: $1f
	db $fd                                           ; $79b6: $fd
	sbc h                                            ; $79b7: $9c
	rra                                              ; $79b8: $1f
	ld sp, hl                                        ; $79b9: $f9
	and $78                                          ; $79ba: $e6 $78
	xor d                                            ; $79bc: $aa
	sbc b                                            ; $79bd: $98
	db $fd                                           ; $79be: $fd
	xor a                                            ; $79bf: $af
	rst $38                                          ; $79c0: $ff
	rlca                                             ; $79c1: $07
	ld bc, $7fe0                                     ; $79c2: $01 $e0 $7f
	ld l, l                                          ; $79c5: $6d
	ldh [rPCM12], a                                  ; $79c6: $e0 $76
	or h                                             ; $79c8: $b4
	ld a, a                                          ; $79c9: $7f
	scf                                              ; $79ca: $37
	sbc e                                            ; $79cb: $9b
	ld hl, sp-$18                                    ; $79cc: $f8 $e8
	pop af                                           ; $79ce: $f1
	cp $7b                                           ; $79cf: $fe $7b
	add hl, bc                                       ; $79d1: $09
	sbc $fe                                          ; $79d2: $de $fe
	ld a, [hl]                                       ; $79d4: $7e
	ld a, $7d                                        ; $79d5: $3e $7d
	add l                                            ; $79d7: $85
	sbc [hl]                                         ; $79d8: $9e
	inc bc                                           ; $79d9: $03
	ld a, e                                          ; $79da: $7b
	db $eb                                           ; $79db: $eb
	sbc l                                            ; $79dc: $9d
	cp $1f                                           ; $79dd: $fe $1f
	ld l, [hl]                                       ; $79df: $6e
	ld sp, hl                                        ; $79e0: $f9
	ld a, e                                          ; $79e1: $7b
	ld a, [$1f9d]                                    ; $79e2: $fa $9d $1f
	db $10                                           ; $79e5: $10
	ld l, l                                          ; $79e6: $6d
	or h                                             ; $79e7: $b4
	rst SubAFromDE                                          ; $79e8: $df
	ldh [$6f], a                                     ; $79e9: $e0 $6f
	ldh a, [$9d]                                     ; $79eb: $f0 $9d
	or b                                             ; $79ed: $b0
	jr nz, jr_050_7a5f                               ; $79ee: $20 $6f

	ldh a, [$df]                                     ; $79f0: $f0 $df
	ld b, b                                          ; $79f2: $40
	ld a, h                                          ; $79f3: $7c
	inc l                                            ; $79f4: $2c
	sbc c                                            ; $79f5: $99
	rlca                                             ; $79f6: $07
	ld hl, sp+$02                                    ; $79f7: $f8 $02
	ld sp, $a2a8                                     ; $79f9: $31 $a8 $a2
	sbc $03                                          ; $79fc: $de $03
	sbc d                                            ; $79fe: $9a
	ld b, $ff                                        ; $79ff: $06 $ff
	adc $47                                          ; $7a01: $ce $47

Jump_050_7a03:
	ld b, c                                          ; $7a03: $41
	sbc $80                                          ; $7a04: $de $80
	ld a, a                                          ; $7a06: $7f
	ldh [$9c], a                                     ; $7a07: $e0 $9c
	ld sp, hl                                        ; $7a09: $f9
	and b                                            ; $7a0a: $a0
	ld d, e                                          ; $7a0b: $53
	ld a, e                                          ; $7a0c: $7b
	ld [bc], a                                       ; $7a0d: $02
	ld a, a                                          ; $7a0e: $7f

Call_050_7a0f:
	ldh [$df], a                                     ; $7a0f: $e0 $df
	inc bc                                           ; $7a11: $03
	adc l                                            ; $7a12: $8d
	xor h                                            ; $7a13: $ac
	nop                                              ; $7a14: $00
	ldh [$60], a                                     ; $7a15: $e0 $60
	rst SubAFromDE                                          ; $7a17: $df
	add b                                            ; $7a18: $80
	ld e, $00                                        ; $7a19: $1e $00
	jr c, jr_050_7a1d                                ; $7a1b: $38 $00

jr_050_7a1d:
	ldh a, [$f0]                                     ; $7a1d: $f0 $f0
	add b                                            ; $7a1f: $80
	rst $38                                          ; $7a20: $ff
	pop hl                                           ; $7a21: $e1
	pop bc                                           ; $7a22: $c1
	pop bc                                           ; $7a23: $c1
	ld [$7a73], sp                                   ; $7a24: $08 $73 $7a
	sbc l                                            ; $7a27: $9d
	cp $02                                           ; $7a28: $fe $02
	ld a, c                                          ; $7a2a: $79
	or e                                             ; $7a2b: $b3
	ld a, a                                          ; $7a2c: $7f
	rst SubAFromDE                                          ; $7a2d: $df
	ld a, d                                          ; $7a2e: $7a
	ld a, [hl]                                       ; $7a2f: $7e
	add b                                            ; $7a30: $80
	ld [bc], a                                       ; $7a31: $02
	di                                               ; $7a32: $f3
	inc de                                           ; $7a33: $13
	inc bc                                           ; $7a34: $03
	ld [de], a                                       ; $7a35: $12
	ld [hl-], a                                      ; $7a36: $32
	ld a, c                                          ; $7a37: $79
	ld a, d                                          ; $7a38: $7a
	dec b                                            ; $7a39: $05
	inc c                                            ; $7a3a: $0c
	inc c                                            ; $7a3b: $0c
	inc a                                            ; $7a3c: $3c
	ld l, l                                          ; $7a3d: $6d
	call $8486                                       ; $7a3e: $cd $86 $84
	nop                                              ; $7a41: $00
	add b                                            ; $7a42: $80
	ld [bc], a                                       ; $7a43: $02
	nop                                              ; $7a44: $00
	rst SubAFromDE                                          ; $7a45: $df
	jp z, $bda9                                      ; $7a46: $ca $a9 $bd

	cp a                                             ; $7a49: $bf
	ld a, a                                          ; $7a4a: $7f
	ld bc, $0080                                     ; $7a4b: $01 $80 $00
	ld de, $8352                                     ; $7a4e: $11 $52 $83
	ld b, d                                          ; $7a51: $42
	db $fc                                           ; $7a52: $fc
	ld a, [hl]                                       ; $7a53: $7e
	rra                                              ; $7a54: $1f
	rlca                                             ; $7a55: $07
	sbc a                                            ; $7a56: $9f
	xor a                                            ; $7a57: $af
	ld b, a                                          ; $7a58: $47
	sbc e                                            ; $7a59: $9b
	nop                                              ; $7a5a: $00
	add b                                            ; $7a5b: $80
	ldh [$38], a                                     ; $7a5c: $e0 $38
	inc c                                            ; $7a5e: $0c

jr_050_7a5f:
	ld b, $23                                        ; $7a5f: $06 $23
	ld b, c                                          ; $7a61: $41
	or b                                             ; $7a62: $b0
	ret z                                            ; $7a63: $c8

	ld l, [hl]                                       ; $7a64: $6e
	and $f3                                          ; $7a65: $e6 $f3
	ld hl, sp-$02                                    ; $7a67: $f8 $fe
	ld a, a                                          ; $7a69: $7f
	ld b, e                                          ; $7a6a: $43
	inc sp                                           ; $7a6b: $33
	ld bc, $b27a                                     ; $7a6c: $01 $7a $b2
	ld a, a                                          ; $7a6f: $7f
	ld [$8f86], a                                    ; $7a70: $ea $86 $8f
	sbc a                                            ; $7a73: $9f
	sbc [hl]                                         ; $7a74: $9e
	cp l                                             ; $7a75: $bd
	ld a, e                                          ; $7a76: $7b
	and e                                            ; $7a77: $a3
	ld b, e                                          ; $7a78: $43
	di                                               ; $7a79: $f3
	ld b, b                                          ; $7a7a: $40
	ld b, c                                          ; $7a7b: $41
	ld b, c                                          ; $7a7c: $41
	ld b, d                                          ; $7a7d: $42
	add h                                            ; $7a7e: $84
	call c, $3c7c                                    ; $7a7f: $dc $7c $3c
	rst $38                                          ; $7a82: $ff
	ld a, [hl]                                       ; $7a83: $7e
	ldh [$e7], a                                     ; $7a84: $e0 $e7
	rst $38                                          ; $7a86: $ff
	db $fd                                           ; $7a87: $fd
	ei                                               ; $7a88: $fb
	rst SubAFromDE                                          ; $7a89: $df
	sbc a                                            ; $7a8a: $9f
	ld [hl], a                                       ; $7a8b: $77
	ld d, [hl]                                       ; $7a8c: $56
	ld a, l                                          ; $7a8d: $7d
	sbc a                                            ; $7a8e: $9f
	sub [hl]                                         ; $7a8f: $96
	daa                                              ; $7a90: $27
	add b                                            ; $7a91: $80
	rlca                                             ; $7a92: $07
	ld a, a                                          ; $7a93: $7f
	rst $38                                          ; $7a94: $ff
	db $fc                                           ; $7a95: $fc
	rst $38                                          ; $7a96: $ff
	rst SubAFromDE                                          ; $7a97: $df
	ld [hl+], a                                      ; $7a98: $22
	ld [hl], e                                       ; $7a99: $73
	pop af                                           ; $7a9a: $f1
	rst SubAFromDE                                          ; $7a9b: $df
	rst $38                                          ; $7a9c: $ff
	sub [hl]                                         ; $7a9d: $96
	sbc a                                            ; $7a9e: $9f
	dec e                                            ; $7a9f: $1d
	db $fd                                           ; $7aa0: $fd
	ld a, [$0702]                                    ; $7aa1: $fa $02 $07
	dec d                                            ; $7aa4: $15
	ei                                               ; $7aa5: $fb
	scf                                              ; $7aa6: $37
	ld a, c                                          ; $7aa7: $79
	add e                                            ; $7aa8: $83
	ld a, a                                          ; $7aa9: $7f
	rra                                              ; $7aaa: $1f
	sub a                                            ; $7aab: $97
	xor $fc                                          ; $7aac: $ee $fc
	ld hl, sp-$3d                                    ; $7aae: $f8 $c3
	and $66                                          ; $7ab0: $e6 $66
	cp l                                             ; $7ab2: $bd
	db $db                                           ; $7ab3: $db
	sbc $ff                                          ; $7ab4: $de $ff
	add b                                            ; $7ab6: $80
	add c                                            ; $7ab7: $81
	jp Jump_050_66c3                                 ; $7ab8: $c3 $c3 $66


	inc l                                            ; $7abb: $2c
	jr jr_050_7ac6                                   ; $7abc: $18 $08

	ld [$d879], sp                                   ; $7abe: $08 $79 $d8
	db $ec                                           ; $7ac1: $ec
	xor $f6                                          ; $7ac2: $ee $f6
	rst FarCall                                          ; $7ac4: $f7
	rst FarCall                                          ; $7ac5: $f7

jr_050_7ac6:
	ei                                               ; $7ac6: $fb
	or b                                             ; $7ac7: $b0
	jr nc, jr_050_7ae2                               ; $7ac8: $30 $18

	jr @+$0e                                         ; $7aca: $18 $0c

	inc c                                            ; $7acc: $0c
	ld c, $06                                        ; $7acd: $0e $06
	nop                                              ; $7acf: $00
	ld a, [bc]                                       ; $7ad0: $0a
	rlca                                             ; $7ad1: $07
	rla                                              ; $7ad2: $17
	inc l                                            ; $7ad3: $2c
	ld e, a                                          ; $7ad4: $5f
	db $fd                                           ; $7ad5: $fd
	sbc [hl]                                         ; $7ad6: $9e
	ld a, [$7ff9]                                    ; $7ad7: $fa $f9 $7f
	adc h                                            ; $7ada: $8c
	ld a, l                                          ; $7adb: $7d
	ld d, [hl]                                       ; $7adc: $56
	sbc e                                            ; $7add: $9b
	ld b, a                                          ; $7ade: $47
	rst $38                                          ; $7adf: $ff
	rst $38                                          ; $7ae0: $ff
	xor a                                            ; $7ae1: $af

jr_050_7ae2:
	ld sp, hl                                        ; $7ae2: $f9
	ld a, c                                          ; $7ae3: $79
	rst FarCall                                          ; $7ae4: $f7
	sbc e                                            ; $7ae5: $9b
	and b                                            ; $7ae6: $a0
	db $f4                                           ; $7ae7: $f4
	ld hl, sp-$04                                    ; $7ae8: $f8 $fc
	ld h, e                                          ; $7aea: $63
	ldh [$97], a                                     ; $7aeb: $e0 $97
	rlca                                             ; $7aed: $07
	ld [bc], a                                       ; $7aee: $02
	dec b                                            ; $7aef: $05
	inc bc                                           ; $7af0: $03
	dec b                                            ; $7af1: $05
	inc bc                                           ; $7af2: $03
	rlca                                             ; $7af3: $07
	adc e                                            ; $7af4: $8b
	ld sp, hl                                        ; $7af5: $f9
	ld a, l                                          ; $7af6: $7d
	cp l                                             ; $7af7: $bd
	sbc d                                            ; $7af8: $9a
	ld a, a                                          ; $7af9: $7f
	jr nz, jr_050_7b1c                               ; $7afa: $20 $20

	nop                                              ; $7afc: $00
	cp a                                             ; $7afd: $bf
	ld a, d                                          ; $7afe: $7a
	ld [$f27d], a                                    ; $7aff: $ea $7d $f2
	ld a, l                                          ; $7b02: $7d
	ld bc, $cf78                                     ; $7b03: $01 $78 $cf
	ld a, a                                          ; $7b06: $7f
	db $f4                                           ; $7b07: $f4
	ld [hl], a                                       ; $7b08: $77
	ldh a, [$9d]                                     ; $7b09: $f0 $9d
	jr nz, @+$42                                     ; $7b0b: $20 $40

	ld a, d                                          ; $7b0d: $7a
	call nz, $fc7b                                   ; $7b0e: $c4 $7b $fc
	sbc d                                            ; $7b11: $9a
	ld b, c                                          ; $7b12: $41
	and d                                            ; $7b13: $a2
	nop                                              ; $7b14: $00
	cp [hl]                                          ; $7b15: $be
	nop                                              ; $7b16: $00
	ld a, b                                          ; $7b17: $78
	xor h                                            ; $7b18: $ac
	sbc c                                            ; $7b19: $99
	sbc a                                            ; $7b1a: $9f
	ld b, c                                          ; $7b1b: $41

jr_050_7b1c:
	rst $38                                          ; $7b1c: $ff
	ld b, c                                          ; $7b1d: $41
	ld b, b                                          ; $7b1e: $40
	ld b, b                                          ; $7b1f: $40
	ld a, c                                          ; $7b20: $79
	add b                                            ; $7b21: $80
	sbc h                                            ; $7b22: $9c
	inc l                                            ; $7b23: $2c
	nop                                              ; $7b24: $00
	ld a, a                                          ; $7b25: $7f
	ld a, e                                          ; $7b26: $7b
	add sp, $7c                                      ; $7b27: $e8 $7c
	cp h                                             ; $7b29: $bc
	ld a, e                                          ; $7b2a: $7b
	ret nc                                           ; $7b2b: $d0

	ld a, d                                          ; $7b2c: $7a
	cp [hl]                                          ; $7b2d: $be
	rst $38                                          ; $7b2e: $ff
	sub l                                            ; $7b2f: $95
	jr jr_050_7b32                                   ; $7b30: $18 $00

jr_050_7b32:
	ld a, [hl]                                       ; $7b32: $7e
	ld b, b                                          ; $7b33: $40
	ld b, b                                          ; $7b34: $40
	ld hl, sp+$7e                                    ; $7b35: $f8 $7e
	cp $e1                                           ; $7b37: $fe $e1
	rst $38                                          ; $7b39: $ff
	sbc $81                                          ; $7b3a: $de $81
	sbc $01                                          ; $7b3c: $de $01
	sbc e                                            ; $7b3e: $9b

Call_050_7b3f:
	dec b                                            ; $7b3f: $05
	dec bc                                           ; $7b40: $0b
	ld d, $2f                                        ; $7b41: $16 $2f
	sbc $1f                                          ; $7b43: $de $1f
	add b                                            ; $7b45: $80
	sbc [hl]                                         ; $7b46: $9e
	ld [bc], a                                       ; $7b47: $02
	inc b                                            ; $7b48: $04
	add hl, bc                                       ; $7b49: $09
	db $10                                           ; $7b4a: $10
	ld h, b                                          ; $7b4b: $60
	ldh [$e0], a                                     ; $7b4c: $e0 $e0
	ld h, c                                          ; $7b4e: $61
	ld [hl], b                                       ; $7b4f: $70
	ld h, b                                          ; $7b50: $60
	ld c, b                                          ; $7b51: $48
	ld c, c                                          ; $7b52: $49
	ld [de], a                                       ; $7b53: $12
	jr nz, jr_050_7b96                               ; $7b54: $20 $40

	add hl, de                                       ; $7b56: $19
	adc h                                            ; $7b57: $8c
	sbc h                                            ; $7b58: $9c
	or l                                             ; $7b59: $b5
	or [hl]                                          ; $7b5a: $b6
	db $e4                                           ; $7b5b: $e4
	call nz, $848c                                   ; $7b5c: $c4 $8c $84
	rst SubAFromHL                                          ; $7b5f: $d7
	ld [hl], e                                       ; $7b60: $73
	ld c, d                                          ; $7b61: $4a
	ldh [c], a                                       ; $7b62: $e2

Call_050_7b63:
	ld sp, $7d06                                     ; $7b63: $31 $06 $7d
	dec c                                            ; $7b66: $0d
	adc e                                            ; $7b67: $8b
	ld [$9188], sp                                   ; $7b68: $08 $88 $91
	ld de, $4042                                     ; $7b6b: $11 $42 $40
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	add hl, sp                                       ; $7b70: $39
	ld a, b                                          ; $7b71: $78
	and c                                            ; $7b72: $a1
	add hl, hl                                       ; $7b73: $29
	ld e, c                                          ; $7b74: $59
	ld l, b                                          ; $7b75: $68
	ld c, b                                          ; $7b76: $48
	adc b                                            ; $7b77: $88
	ret nz                                           ; $7b78: $c0

	add b                                            ; $7b79: $80
	jr jr_050_7b8c                                   ; $7b7a: $18 $10

	halt                                             ; $7b7c: $76
	ld c, e                                          ; $7b7d: $4b
	sub [hl]                                         ; $7b7e: $96
	cp e                                             ; $7b7f: $bb
	ret nz                                           ; $7b80: $c0

	ret c                                            ; $7b81: $d8

	jp nc, $f8ae                                     ; $7b82: $d2 $ae $f8

	add hl, de                                       ; $7b85: $19
	ld a, [bc]                                       ; $7b86: $0a
	call nz, $9378                                   ; $7b87: $c4 $78 $93
	sub c                                            ; $7b8a: $91
	rst FarCall                                          ; $7b8b: $f7

jr_050_7b8c:
	ld l, a                                          ; $7b8c: $6f
	rrca                                             ; $7b8d: $0f
	dec b                                            ; $7b8e: $05
	db $eb                                           ; $7b8f: $eb
	di                                               ; $7b90: $f3
	db $10                                           ; $7b91: $10
	jr @-$6a                                         ; $7b92: $18 $94

	cp c                                             ; $7b94: $b9
	ld a, [hl+]                                      ; $7b95: $2a

jr_050_7b96:
	ld d, l                                          ; $7b96: $55
	inc e                                            ; $7b97: $1c
	inc e                                            ; $7b98: $1c
	sbc $ff                                          ; $7b99: $de $ff
	sub h                                            ; $7b9b: $94
	rst SubAFromBC                                          ; $7b9c: $e7
	pop bc                                           ; $7b9d: $c1
	add b                                            ; $7b9e: $80
	add a                                            ; $7b9f: $87
	rrca                                             ; $7ba0: $0f
	rra                                              ; $7ba1: $1f
	ld e, $3e                                        ; $7ba2: $1e $3e
	call $d52a                                       ; $7ba4: $cd $2a $d5
	ld [hl], h                                       ; $7ba7: $74
	ld c, [hl]                                       ; $7ba8: $4e
	adc b                                            ; $7ba9: $88
	db $fc                                           ; $7baa: $fc
	ldh a, [$c0]                                     ; $7bab: $f0 $c0
	nop                                              ; $7bad: $00
	scf                                              ; $7bae: $37
	ld e, a                                          ; $7baf: $5f
	rst $38                                          ; $7bb0: $ff
	ld a, $b8                                        ; $7bb1: $3e $b8
	or c                                             ; $7bb3: $b1
	pop bc                                           ; $7bb4: $c1
	and c                                            ; $7bb5: $a1
	rrca                                             ; $7bb6: $0f
	dec sp                                           ; $7bb7: $3b
	di                                               ; $7bb8: $f3
	and $6c                                          ; $7bb9: $e6 $6c
	ld a, b                                          ; $7bbb: $78
	ld [hl], b                                       ; $7bbc: $70
	ld b, b                                          ; $7bbd: $40
	rst AddAOntoHL                                          ; $7bbe: $ef
	rst SubAFromDE                                          ; $7bbf: $df
	rra                                              ; $7bc0: $1f
	ld a, b                                          ; $7bc1: $78

jr_050_7bc2:
	ld a, d                                          ; $7bc2: $7a
	sbc d                                            ; $7bc3: $9a
	xor e                                            ; $7bc4: $ab
	ld d, l                                          ; $7bc5: $55
	ldh a, [$e0]                                     ; $7bc6: $f0 $e0
	and b                                            ; $7bc8: $a0
	ld a, e                                          ; $7bc9: $7b
	and d                                            ; $7bca: $a2
	rst $38                                          ; $7bcb: $ff
	sub d                                            ; $7bcc: $92
	rst FarCall                                          ; $7bcd: $f7
	rst $38                                          ; $7bce: $ff
	rst AddAOntoHL                                          ; $7bcf: $ef
	rst $38                                          ; $7bd0: $ff
	rst SubAFromDE                                          ; $7bd1: $df
	push af                                          ; $7bd2: $f5
	xor d                                            ; $7bd3: $aa
	ld d, l                                          ; $7bd4: $55

jr_050_7bd5:
	jr jr_050_7be7                                   ; $7bd5: $18 $10

jr_050_7bd7:
	jr nc, @+$22                                     ; $7bd7: $30 $20

	jr nz, @+$7d                                     ; $7bd9: $20 $7b

	xor $7e                                          ; $7bdb: $ee $7e
	add h                                            ; $7bdd: $84
	ld a, b                                          ; $7bde: $78
	ld l, a                                          ; $7bdf: $6f
	ld a, h                                          ; $7be0: $7c
	call z, Call_050_559c                            ; $7be1: $cc $9c $55
	ld [bc], a                                       ; $7be4: $02
	inc bc                                           ; $7be5: $03
	ld l, h                                          ; $7be6: $6c

jr_050_7be7:
	sub e                                            ; $7be7: $93
	sub a                                            ; $7be8: $97
	push af                                          ; $7be9: $f5
	ld hl, sp-$4c                                    ; $7bea: $f8 $b4
	ld h, b                                          ; $7bec: $60
	add b                                            ; $7bed: $80
	add b                                            ; $7bee: $80
	add l                                            ; $7bef: $85
	ld a, [bc]                                       ; $7bf0: $0a
	cp $77                                           ; $7bf1: $fe $77
	ld sp, $8097                                     ; $7bf3: $31 $97 $80
	dec d                                            ; $7bf6: $15
	ld a, [bc]                                       ; $7bf7: $0a
	ld bc, $1d03                                     ; $7bf8: $01 $03 $1d

Jump_050_7bfb:
	dec hl                                           ; $7bfb: $2b
	ld e, a                                          ; $7bfc: $5f
	ld a, e                                          ; $7bfd: $7b
	dec bc                                           ; $7bfe: $0b
	ld l, [hl]                                       ; $7bff: $6e
	or c                                             ; $7c00: $b1
	ld [hl], h                                       ; $7c01: $74
	ld b, c                                          ; $7c02: $41
	sbc e                                            ; $7c03: $9b
	rst SubAFromDE                                          ; $7c04: $df
	xor a                                            ; $7c05: $af
	ld b, a                                          ; $7c06: $47
	adc d                                            ; $7c07: $8a
	db $fd                                           ; $7c08: $fd
	sbc b                                            ; $7c09: $98
	jr nz, jr_050_7c5c                               ; $7c0a: $20 $50

	cp b                                             ; $7c0c: $b8
	ld [hl], l                                       ; $7c0d: $75
	ld d, l                                          ; $7c0e: $55
	rst AddAOntoHL                                          ; $7c0f: $ef
	rst FarCall                                          ; $7c10: $f7
	call c, $f9ff                                    ; $7c11: $dc $ff $f9
	sub a                                            ; $7c14: $97
	add b                                            ; $7c15: $80
	sbc a                                            ; $7c16: $9f
	sbc a                                            ; $7c17: $9f
	add l                                            ; $7c18: $85
	and d                                            ; $7c19: $a2
	and b                                            ; $7c1a: $a0
	ret nz                                           ; $7c1b: $c0

	ret nc                                           ; $7c1c: $d0

	db $dd                                           ; $7c1d: $dd
	ld h, b                                          ; $7c1e: $60
	rst SubAFromDE                                          ; $7c1f: $df
	ld b, b                                          ; $7c20: $40
	rst SubAFromDE                                          ; $7c21: $df
	jr nz, jr_050_7bc2                               ; $7c22: $20 $9e

	ld hl, $a27b                                     ; $7c24: $21 $7b $a2
	sbc e                                            ; $7c27: $9b
	xor e                                            ; $7c28: $ab
	dec d                                            ; $7c29: $15
	ld a, [bc]                                       ; $7c2a: $0a
	nop                                              ; $7c2b: $00
	ld [hl], e                                       ; $7c2c: $73
	add e                                            ; $7c2d: $83
	cp $95                                           ; $7c2e: $fe $95
	jr nc, jr_050_7bd5                               ; $7c30: $30 $a3

	ldh [$e7], a                                     ; $7c32: $e0 $e7
	rst SubAFromBC                                          ; $7c34: $e7
	ldh [$a1], a                                     ; $7c35: $e0 $a1
	ld h, e                                          ; $7c37: $63
	rst GetHLinHL                                          ; $7c38: $cf
	ld e, h                                          ; $7c39: $5c
	db $dd                                           ; $7c3a: $dd
	jr jr_050_7bd7                                   ; $7c3b: $18 $9a

	ld e, b                                          ; $7c3d: $58
	jr jr_050_7c40                                   ; $7c3e: $18 $00

jr_050_7c40:
	ccf                                              ; $7c40: $3f
	pop bc                                           ; $7c41: $c1
	ld a, e                                          ; $7c42: $7b
	jp $c17a                                         ; $7c43: $c3 $7a $c1


	ld a, d                                          ; $7c46: $7a
	or h                                             ; $7c47: $b4
	cp $7d                                           ; $7c48: $fe $7d
	dec e                                            ; $7c4a: $1d
	sub [hl]                                         ; $7c4b: $96
	ld a, b                                          ; $7c4c: $78
	call nz, $fcfc                                   ; $7c4d: $c4 $fc $fc
	inc b                                            ; $7c50: $04
	db $fc                                           ; $7c51: $fc
	nop                                              ; $7c52: $00
	rst $38                                          ; $7c53: $ff
	add a                                            ; $7c54: $87
	call c, $9e03                                    ; $7c55: $dc $03 $9e
	rst $38                                          ; $7c58: $ff
	ld e, l                                          ; $7c59: $5d
	nop                                              ; $7c5a: $00
	rst SubAFromDE                                          ; $7c5b: $df

jr_050_7c5c:
	ld b, h                                          ; $7c5c: $44
	sbc b                                            ; $7c5d: $98
	ld b, l                                          ; $7c5e: $45
	ld d, l                                          ; $7c5f: $55
	ld d, l                                          ; $7c60: $55
	ld b, h                                          ; $7c61: $44
	ld b, a                                          ; $7c62: $47
	inc sp                                           ; $7c63: $33
	inc sp                                           ; $7c64: $33
	sbc $44                                          ; $7c65: $de $44
	rst SubAFromDE                                          ; $7c67: $df
	ld d, l                                          ; $7c68: $55
	sub [hl]                                         ; $7c69: $96
	ld d, e                                          ; $7c6a: $53
	inc sp                                           ; $7c6b: $33
	ld b, a                                          ; $7c6c: $47
	ld h, [hl]                                       ; $7c6d: $66
	inc sp                                           ; $7c6e: $33
	inc [hl]                                         ; $7c6f: $34
	ld b, h                                          ; $7c70: $44
	ld b, h                                          ; $7c71: $44
	ld b, a                                          ; $7c72: $47
	db $dd                                           ; $7c73: $dd
	ld [hl], a                                       ; $7c74: $77
	sbc c                                            ; $7c75: $99
	ld h, [hl]                                       ; $7c76: $66
	scf                                              ; $7c77: $37
	ld [hl], e                                       ; $7c78: $73
	ld b, h                                          ; $7c79: $44
	ld b, h                                          ; $7c7a: $44
	ld b, [hl]                                       ; $7c7b: $46
	jp c, $9b77                                      ; $7c7c: $da $77 $9b

	ld b, h                                          ; $7c7f: $44
	ld b, e                                          ; $7c80: $43
	halt                                             ; $7c81: $76
	ld h, [hl]                                       ; $7c82: $66
	sbc $77                                          ; $7c83: $de $77
	sbc $55                                          ; $7c85: $de $55
	ld a, e                                          ; $7c87: $7b
	reti                                             ; $7c88: $d9


	jp c, $9a55                                      ; $7c89: $da $55 $9a

	ld b, e                                          ; $7c8c: $43
	ld h, [hl]                                       ; $7c8d: $66
	ld h, [hl]                                       ; $7c8e: $66
	ld d, a                                          ; $7c8f: $57
	halt                                             ; $7c90: $76
	sbc $55                                          ; $7c91: $de $55
	rst SubAFromDE                                          ; $7c93: $df
	inc sp                                           ; $7c94: $33
	sbc c                                            ; $7c95: $99
	ld b, a                                          ; $7c96: $47
	halt                                             ; $7c97: $76
	halt                                             ; $7c98: $76
	ld [hl], a                                       ; $7c99: $77
	halt                                             ; $7c9a: $76
	ld [hl], l                                       ; $7c9b: $75
	ld a, e                                          ; $7c9c: $7b
	db $e4                                           ; $7c9d: $e4
	ld [hl], a                                       ; $7c9e: $77
	or d                                             ; $7c9f: $b2
	sbc d                                            ; $7ca0: $9a
	ld d, l                                          ; $7ca1: $55
	ld h, [hl]                                       ; $7ca2: $66
	ld [hl], a                                       ; $7ca3: $77
	ld d, l                                          ; $7ca4: $55
	ld d, h                                          ; $7ca5: $54
	sbc $44                                          ; $7ca6: $de $44
	sbc d                                            ; $7ca8: $9a
	dec [hl]                                         ; $7ca9: $35
	ld d, l                                          ; $7caa: $55
	ld d, l                                          ; $7cab: $55
	ld h, l                                          ; $7cac: $65
	ld [hl], h                                       ; $7cad: $74
	db $db                                           ; $7cae: $db
	ld b, h                                          ; $7caf: $44
	sbc $55                                          ; $7cb0: $de $55
	ld [hl], a                                       ; $7cb2: $77
	xor $9e                                          ; $7cb3: $ee $9e
	ld b, h                                          ; $7cb5: $44
	ld b, h                                          ; $7cb6: $44
	add a                                            ; $7cb7: $87
	sub a                                            ; $7cb8: $97
	ld d, l                                          ; $7cb9: $55
	xor d                                            ; $7cba: $aa
	ld d, h                                          ; $7cbb: $54
	add b                                            ; $7cbc: $80
	ld bc, $0500                                     ; $7cbd: $01 $00 $05
	ld a, [bc]                                       ; $7cc0: $0a
	reti                                             ; $7cc1: $d9


	rst $38                                          ; $7cc2: $ff
	sbc l                                            ; $7cc3: $9d
	ld d, l                                          ; $7cc4: $55
	ld a, [hl+]                                      ; $7cc5: $2a
	ld a, e                                          ; $7cc6: $7b
	cp $7f                                           ; $7cc7: $fe $7f
	db $ec                                           ; $7cc9: $ec
	sbc [hl]                                         ; $7cca: $9e
	xor b                                            ; $7ccb: $a8
	ld h, e                                          ; $7ccc: $63
	ldh a, [$9e]                                     ; $7ccd: $f0 $9e
	xor d                                            ; $7ccf: $aa
	ld a, e                                          ; $7cd0: $7b
	cp $9c                                           ; $7cd1: $fe $9c
	adc d                                            ; $7cd3: $8a
	dec d                                            ; $7cd4: $15
	ld a, [hl+]                                      ; $7cd5: $2a
	ld d, a                                          ; $7cd6: $57
	ldh a, [$9b]                                     ; $7cd7: $f0 $9b
	ld d, c                                          ; $7cd9: $51
	and b                                            ; $7cda: $a0
	ld bc, $d902                                     ; $7cdb: $01 $02 $d9
	rst $38                                          ; $7cde: $ff
	sbc l                                            ; $7cdf: $9d
	ld d, [hl]                                       ; $7ce0: $56
	xor e                                            ; $7ce1: $ab
	ld l, a                                          ; $7ce2: $6f
	cp $d9                                           ; $7ce3: $fe $d9
	db $fc                                           ; $7ce5: $fc
	sbc d                                            ; $7ce6: $9a
	cpl                                              ; $7ce7: $2f
	ld b, a                                          ; $7ce8: $47
	inc bc                                           ; $7ce9: $03
	ld b, a                                          ; $7cea: $47
	dec bc                                           ; $7ceb: $0b
	ld a, e                                          ; $7cec: $7b
	cp $67                                           ; $7ced: $fe $67
	ld hl, sp-$63                                    ; $7cef: $f8 $9d
	ld hl, sp+$78                                    ; $7cf1: $f8 $78
	ld [hl], a                                       ; $7cf3: $77
	cp $9d                                           ; $7cf4: $fe $9d
	cp b                                             ; $7cf6: $b8
	ld a, b                                          ; $7cf7: $78
	reti                                             ; $7cf8: $d9


	rra                                              ; $7cf9: $1f
	sbc d                                            ; $7cfa: $9a
	cp a                                             ; $7cfb: $bf
	ld a, a                                          ; $7cfc: $7f
	cp a                                             ; $7cfd: $bf
	ld a, a                                          ; $7cfe: $7f
	ccf                                              ; $7cff: $3f
	ld a, e                                          ; $7d00: $7b
	db $fc                                           ; $7d01: $fc
	rst SubAFromHL                                          ; $7d02: $d7
	rst $38                                          ; $7d03: $ff
	sbc c                                            ; $7d04: $99
	cp $ff                                           ; $7d05: $fe $ff
	cp $fd                                           ; $7d07: $fe $fd
	ld a, [$d9f4]                                    ; $7d09: $fa $f4 $d9
	rst $38                                          ; $7d0c: $ff
	adc a                                            ; $7d0d: $8f
	and d                                            ; $7d0e: $a2
	ld b, b                                          ; $7d0f: $40
	add h                                            ; $7d10: $84
	ld [$1080], sp                                   ; $7d11: $08 $80 $10
	ld bc, $fc22                                     ; $7d14: $01 $22 $fc
	db $fc                                           ; $7d17: $fc
	ld hl, sp-$10                                    ; $7d18: $f8 $f0
	ldh a, [$e0]                                     ; $7d1a: $f0 $e0
	ldh [$c0], a                                     ; $7d1c: $e0 $c0
	cp $9d                                           ; $7d1e: $fe $9d
	ld [bc], a                                       ; $7d20: $02
	dec d                                            ; $7d21: $15
	ld a, e                                          ; $7d22: $7b
	ld l, [hl]                                       ; $7d23: $6e
	or $77                                           ; $7d24: $f6 $77
	ld l, [hl]                                       ; $7d26: $6e
	ld d, a                                          ; $7d27: $57
	ldh a, [$9d]                                     ; $7d28: $f0 $9d
	xor b                                            ; $7d2a: $a8
	ld d, h                                          ; $7d2b: $54
	ld d, a                                          ; $7d2c: $57
	ldh a, [hDisp0_WX]                                     ; $7d2d: $f0 $89
	ld [$0400], sp                                   ; $7d2f: $08 $00 $04
	ld [bc], a                                       ; $7d32: $02
	nop                                              ; $7d33: $00
	ld b, c                                          ; $7d34: $41
	and b                                            ; $7d35: $a0
	rrca                                             ; $7d36: $0f
	rlca                                             ; $7d37: $07
	rlca                                             ; $7d38: $07
	inc bc                                           ; $7d39: $03
	ld bc, $0001                                     ; $7d3a: $01 $01 $00
	nop                                              ; $7d3d: $00
	ld e, a                                          ; $7d3e: $5f
	cpl                                              ; $7d3f: $2f
	rla                                              ; $7d40: $17
	cpl                                              ; $7d41: $2f
	rla                                              ; $7d42: $17
	dec bc                                           ; $7d43: $0b
	dec b                                            ; $7d44: $05
	ld h, e                                          ; $7d45: $63
	ld d, b                                          ; $7d46: $50
	inc bc                                           ; $7d47: $03
	rst $38                                          ; $7d48: $ff
	inc bc                                           ; $7d49: $03
	rst $38                                          ; $7d4a: $ff
	db $d3                                           ; $7d4b: $d3
	rst $38                                          ; $7d4c: $ff
	sbc [hl]                                         ; $7d4d: $9e
	dec d                                            ; $7d4e: $15
	ld [hl], a                                       ; $7d4f: $77
	ld [hl], d                                       ; $7d50: $72
	sbc h                                            ; $7d51: $9c
	jr z, jr_050_7d54                                ; $7d52: $28 $00

jr_050_7d54:
	rrca                                             ; $7d54: $0f
	reti                                             ; $7d55: $d9


	rst $38                                          ; $7d56: $ff
	sbc c                                            ; $7d57: $99
	ld d, b                                          ; $7d58: $50
	xor d                                            ; $7d59: $aa
	ld b, l                                          ; $7d5a: $45
	add b                                            ; $7d5b: $80
	ld bc, $631f                                     ; $7d5c: $01 $1f $63
	inc h                                            ; $7d5f: $24
	sbc d                                            ; $7d60: $9a
	ldh [$50], a                                     ; $7d61: $e0 $50
	and b                                            ; $7d63: $a0
	rlca                                             ; $7d64: $07
	ccf                                              ; $7d65: $3f
	reti                                             ; $7d66: $d9


	rst $38                                          ; $7d67: $ff
	sbc [hl]                                         ; $7d68: $9e
	ld hl, sp+$7b                                    ; $7d69: $f8 $7b
	ld [hl-], a                                      ; $7d6b: $32
	sbc e                                            ; $7d6c: $9b
	dec b                                            ; $7d6d: $05
	nop                                              ; $7d6e: $00
	ldh a, [$fe]                                     ; $7d6f: $f0 $fe
	reti                                             ; $7d71: $d9


	rst $38                                          ; $7d72: $ff
	sbc [hl]                                         ; $7d73: $9e
	rrca                                             ; $7d74: $0f
	ld a, e                                          ; $7d75: $7b
	ld h, b                                          ; $7d76: $60
	sub l                                            ; $7d77: $95
	ld d, [hl]                                       ; $7d78: $56
	dec hl                                           ; $7d79: $2b
	dec d                                            ; $7d7a: $15
	ld bc, $fdc1                                     ; $7d7b: $01 $c1 $fd
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	db $fc                                           ; $7d80: $fc
	db $fc                                           ; $7d81: $fc
	db $dd                                           ; $7d82: $dd
	cp $97                                           ; $7d83: $fe $97
	ld a, $02                                        ; $7d85: $3e $02
	dec hl                                           ; $7d87: $2b
	ld b, a                                          ; $7d88: $47
	dec hl                                           ; $7d89: $2b
	ld d, a                                          ; $7d8a: $57
	dec hl                                           ; $7d8b: $2b
	ld [hl], a                                       ; $7d8c: $77
	ld a, e                                          ; $7d8d: $7b
	cp $6b                                           ; $7d8e: $fe $6b
	ld hl, sp+$7e                                    ; $7d90: $f8 $7e
	add $7f                                          ; $7d92: $c6 $7f
	cp $9e                                           ; $7d94: $fe $9e
	ldh a, [$7b]                                     ; $7d96: $f0 $7b
	cp $d9                                           ; $7d98: $fe $d9
	rra                                              ; $7d9a: $1f
	halt                                             ; $7d9b: $76
	call nz, $be76                                   ; $7d9c: $c4 $76 $be
	reti                                             ; $7d9f: $d9


	rst $38                                          ; $7da0: $ff
	ld a, [hl]                                       ; $7da1: $7e
	add $99                                          ; $7da2: $c6 $99
	add sp, -$2f                                     ; $7da4: $e8 $d1
	and b                                            ; $7da6: $a0
	jp nc, $44a0                                     ; $7da7: $d2 $a0 $44

	ld [hl], a                                       ; $7daa: $77
	sub e                                            ; $7dab: $93
	sbc [hl]                                         ; $7dac: $9e
	cp $7a                                           ; $7dad: $fe $7a
	res 3, e                                         ; $7daf: $cb $9b
	ld b, l                                          ; $7db1: $45
	ld a, [bc]                                       ; $7db2: $0a
	add l                                            ; $7db3: $85
	ld a, [bc]                                       ; $7db4: $0a
	halt                                             ; $7db5: $76
	ret nc                                           ; $7db6: $d0

	rst SubAFromDE                                          ; $7db7: $df
	add b                                            ; $7db8: $80
	ei                                               ; $7db9: $fb
	ld [hl], d                                       ; $7dba: $72
	ld b, b                                          ; $7dbb: $40
	ld e, d                                          ; $7dbc: $5a
	ldh [rTAC], a                                    ; $7dbd: $e0 $07
	ldh a, [$9e]                                     ; $7dbf: $f0 $9e
	ld d, b                                          ; $7dc1: $50
	ld [hl], d                                       ; $7dc2: $72
	or d                                             ; $7dc3: $b2
	ld e, a                                          ; $7dc4: $5f
	ldh a, [hDisp1_BGP]                                     ; $7dc5: $f0 $92
	add c                                            ; $7dc7: $81
	ld b, d                                          ; $7dc8: $42
	ld bc, $0020                                     ; $7dc9: $01 $20 $00
	db $10                                           ; $7dcc: $10
	ld [$7f80], sp                                   ; $7dcd: $08 $80 $7f
	ccf                                              ; $7dd0: $3f
	ccf                                              ; $7dd1: $3f
	rra                                              ; $7dd2: $1f
	rra                                              ; $7dd3: $1f
	ld a, d                                          ; $7dd4: $7a
	xor e                                            ; $7dd5: $ab
	rst SubAFromDE                                          ; $7dd6: $df
	rst $38                                          ; $7dd7: $ff
	ld a, a                                          ; $7dd8: $7f
	add c                                            ; $7dd9: $81
	sbc e                                            ; $7dda: $9b
	ld e, a                                          ; $7ddb: $5f
	ccf                                              ; $7ddc: $3f
	ld e, a                                          ; $7ddd: $5f
	cpl                                              ; $7dde: $2f
	ld [bc], a                                       ; $7ddf: $02
	rst SubAFromBC                                          ; $7de0: $e7
	inc bc                                           ; $7de1: $03
	rst $38                                          ; $7de2: $ff
	db $db                                           ; $7de3: $db
	rst $38                                          ; $7de4: $ff
	ld h, e                                          ; $7de5: $63
	scf                                              ; $7de6: $37
	sbc [hl]                                         ; $7de7: $9e
	ldh a, [$6f]                                     ; $7de8: $f0 $6f
	ld c, a                                          ; $7dea: $4f
	reti                                             ; $7deb: $d9


	rst $38                                          ; $7dec: $ff
	ld sp, hl                                        ; $7ded: $f9
	inc bc                                           ; $7dee: $03
	ldh a, [rWX]                                     ; $7def: $f0 $4b
	ldh a, [$97]                                     ; $7df1: $f0 $97
	cpl                                              ; $7df3: $2f
	cp a                                             ; $7df4: $bf
	push af                                          ; $7df5: $f5
	jp z, $8a55                                      ; $7df6: $ca $55 $8a

	db $dd                                           ; $7df9: $dd
	cp a                                             ; $7dfa: $bf
	ld h, a                                          ; $7dfb: $67
	ld hl, sp-$66                                    ; $7dfc: $f8 $9a
	ldh a, [$f8]                                     ; $7dfe: $f0 $f8
	ldh a, [$f8]                                     ; $7e00: $f0 $f8
	ld [hl], b                                       ; $7e02: $70
	sbc $f8                                          ; $7e03: $de $f8
	ld [hl], d                                       ; $7e05: $72
	call nz, $3fde                                   ; $7e06: $c4 $de $3f
	sub a                                            ; $7e09: $97
	cp [hl]                                          ; $7e0a: $be
	ld a, a                                          ; $7e0b: $7f
	ld a, $7d                                        ; $7e0c: $3e $7d
	cp d                                             ; $7e0e: $ba
	ld a, h                                          ; $7e0f: $7c
	cp d                                             ; $7e10: $ba
	ld d, h                                          ; $7e11: $54
	reti                                             ; $7e12: $d9


	rst $38                                          ; $7e13: $ff
	sub a                                            ; $7e14: $97
	adc b                                            ; $7e15: $88
	ld b, b                                          ; $7e16: $40
	sub c                                            ; $7e17: $91
	ld [bc], a                                       ; $7e18: $02
	dec h                                            ; $7e19: $25
	ld b, d                                          ; $7e1a: $42
	dec b                                            ; $7e1b: $05
	adc d                                            ; $7e1c: $8a
	ld [hl], c                                       ; $7e1d: $71
	sub e                                            ; $7e1e: $93
	ld a, d                                          ; $7e1f: $7a
	rlc d                                            ; $7e20: $cb $02
	ret nc                                           ; $7e22: $d0

	inc bc                                           ; $7e23: $03
	ldh a, [rVBK]                                    ; $7e24: $f0 $4f
	ldh a, [$97]                                     ; $7e26: $f0 $97
	ld b, h                                          ; $7e28: $44
	and d                                            ; $7e29: $a2
	ld b, b                                          ; $7e2a: $40
	and c                                            ; $7e2b: $a1
	ld d, b                                          ; $7e2c: $50
	xor b                                            ; $7e2d: $a8
	ld d, b                                          ; $7e2e: $50
	xor b                                            ; $7e2f: $a8
	ld [hl], c                                       ; $7e30: $71
	ld [hl], e                                       ; $7e31: $73
	cp $7d                                           ; $7e32: $fe $7d
	ld [hl], h                                       ; $7e34: $74
	sbc d                                            ; $7e35: $9a
	rlca                                             ; $7e36: $07
	dec bc                                           ; $7e37: $0b
	dec b                                            ; $7e38: $05
	add d                                            ; $7e39: $82
	ld b, c                                          ; $7e3a: $41
	ld l, l                                          ; $7e3b: $6d
	ld [hl], b                                       ; $7e3c: $70
	ld a, d                                          ; $7e3d: $7a
	xor e                                            ; $7e3e: $ab
	ld [bc], a                                       ; $7e3f: $02
	rst SubAFromDE                                          ; $7e40: $df
	inc bc                                           ; $7e41: $03
	rst $38                                          ; $7e42: $ff
	db $db                                           ; $7e43: $db
	cp $9e                                           ; $7e44: $fe $9e
	nop                                              ; $7e46: $00
	jp c, Jump_050_7a03                              ; $7e47: $da $03 $7a

	rst FarCall                                          ; $7e4a: $f7
	sbc d                                            ; $7e4b: $9a
	ld d, l                                          ; $7e4c: $55
	push de                                          ; $7e4d: $d5
	ld b, h                                          ; $7e4e: $44
	ld b, b                                          ; $7e4f: $40
	ld b, b                                          ; $7e50: $40
	sbc $ff                                          ; $7e51: $de $ff
	sbc [hl]                                         ; $7e53: $9e
	xor d                                            ; $7e54: $aa
	db $dd                                           ; $7e55: $dd
	ld a, [hl+]                                      ; $7e56: $2a
	ld a, e                                          ; $7e57: $7b

jr_050_7e58:
	ldh a, [$9b]                                     ; $7e58: $f0 $9b
	ld [hl+], a                                      ; $7e5a: $22
	or h                                             ; $7e5b: $b4
	sub h                                            ; $7e5c: $94
	add b                                            ; $7e5d: $80
	halt                                             ; $7e5e: $76
	ret c                                            ; $7e5f: $d8

	sbc [hl]                                         ; $7e60: $9e
	db $dd                                           ; $7e61: $dd
	db $dd                                           ; $7e62: $dd
	ld c, c                                          ; $7e63: $49
	ld a, e                                          ; $7e64: $7b
	ldh a, [$9d]                                     ; $7e65: $f0 $9d
	inc d                                            ; $7e67: $14
	ld b, [hl]                                       ; $7e68: $46
	sbc $02                                          ; $7e69: $de $02
	sbc $ff                                          ; $7e6b: $de $ff
	sbc [hl]                                         ; $7e6d: $9e
	db $eb                                           ; $7e6e: $eb
	db $dd                                           ; $7e6f: $dd
	xor c                                            ; $7e70: $a9
	ld a, e                                          ; $7e71: $7b
	ldh a, [$df]                                     ; $7e72: $f0 $df
	or [hl]                                          ; $7e74: $b6
	rst SubAFromDE                                          ; $7e75: $df
	ld [hl+], a                                      ; $7e76: $22
	sbc [hl]                                         ; $7e77: $9e
	jr nz, jr_050_7e58                               ; $7e78: $20 $de

	rst $38                                          ; $7e7a: $ff
	call c, $9a49                                    ; $7e7b: $dc $49 $9a
	rst SubAFromHL                                          ; $7e7e: $d7
	set 3, a                                         ; $7e7f: $cb $df
	adc e                                            ; $7e81: $8b
	db $dd                                           ; $7e82: $dd
	ld a, e                                          ; $7e83: $7b
	cp $67                                           ; $7e84: $fe $67
	ld hl, sp+$7e                                    ; $7e86: $f8 $7e
	jp nz, Jump_050_4170                             ; $7e88: $c2 $70 $41

	sbc [hl]                                         ; $7e8b: $9e
	cp b                                             ; $7e8c: $b8
	reti                                             ; $7e8d: $d9


	rra                                              ; $7e8e: $1f
	sub [hl]                                         ; $7e8f: $96
	jr z, jr_050_7ee3                                ; $7e90: $28 $51

	and d                                            ; $7e92: $a2
	ld b, b                                          ; $7e93: $40
	inc b                                            ; $7e94: $04
	nop                                              ; $7e95: $00
	add hl, bc                                       ; $7e96: $09
	db $10                                           ; $7e97: $10
	rst $38                                          ; $7e98: $ff
	ld [hl], l                                       ; $7e99: $75
	sub e                                            ; $7e9a: $93
	ld a, [hl]                                       ; $7e9b: $7e
	and h                                            ; $7e9c: $a4
	sbc h                                            ; $7e9d: $9c
	ldh [$15], a                                     ; $7e9e: $e0 $15
	ld a, [hl+]                                      ; $7ea0: $2a
	ld [hl], l                                       ; $7ea1: $75
	sub d                                            ; $7ea2: $92
	ld c, $f0                                        ; $7ea3: $0e $f0
	sbc h                                            ; $7ea5: $9c
	ld d, a                                          ; $7ea6: $57
	xor a                                            ; $7ea7: $af
	ld a, a                                          ; $7ea8: $7f
	ld h, d                                          ; $7ea9: $62
	ld h, b                                          ; $7eaa: $60
	ld a, e                                          ; $7eab: $7b
	ldh a, [rHDMA2]                                  ; $7eac: $f0 $52
	ld d, b                                          ; $7eae: $50
	ld a, e                                          ; $7eaf: $7b
	ldh a, [$9e]                                     ; $7eb0: $f0 $9e
	ld [$b67b], a                                    ; $7eb2: $ea $7b $b6
	ld a, b                                          ; $7eb5: $78
	and $ff                                          ; $7eb6: $e6 $ff
	sbc e                                            ; $7eb8: $9b
	ld bc, $0703                                     ; $7eb9: $01 $03 $07
	scf                                              ; $7ebc: $37
	ld a, e                                          ; $7ebd: $7b
	ldh a, [$7f]                                     ; $7ebe: $f0 $7f
	or b                                             ; $7ec0: $b0
	ld a, a                                          ; $7ec1: $7f
	cp $9e                                           ; $7ec2: $fe $9e
	ld [$ddfe], a                                    ; $7ec4: $ea $fe $dd
	add b                                            ; $7ec7: $80
	sbc [hl]                                         ; $7ec8: $9e
	nop                                              ; $7ec9: $00
	ld l, l                                          ; $7eca: $6d
	ld [hl], d                                       ; $7ecb: $72
	ld e, a                                          ; $7ecc: $5f
	or b                                             ; $7ecd: $b0
	sbc [hl]                                         ; $7ece: $9e
	ld hl, $7379                                     ; $7ecf: $21 $79 $73
	sbc e                                            ; $7ed2: $9b
	nop                                              ; $7ed3: $00
	add h                                            ; $7ed4: $84
	ld b, b                                          ; $7ed5: $40
	and d                                            ; $7ed6: $a2
	ld [hl], c                                       ; $7ed7: $71
	ld [hl], e                                       ; $7ed8: $73
	rst SubAFromDE                                          ; $7ed9: $df
	inc bc                                           ; $7eda: $03
	sbc l                                            ; $7edb: $9d
	ld bc, $7a7f                                     ; $7edc: $01 $7f $7a
	cp e                                             ; $7edf: $bb
	ld a, l                                          ; $7ee0: $7d
	ld [hl], d                                       ; $7ee1: $72
	sbc [hl]                                         ; $7ee2: $9e

jr_050_7ee3:
	rra                                              ; $7ee3: $1f
	ld bc, $1270                                     ; $7ee4: $01 $70 $12
	jp nz, $e27a                                     ; $7ee7: $c2 $7a $e2

	call c, $fe03                                    ; $7eea: $dc $03 $fe
	rst SubAFromDE                                          ; $7eed: $df
	ld b, b                                          ; $7eee: $40
	sbc l                                            ; $7eef: $9d
	push bc                                          ; $7ef0: $c5
	ld d, l                                          ; $7ef1: $55
	ld [hl], l                                       ; $7ef2: $75
	xor d                                            ; $7ef3: $aa
	sbc $2a                                          ; $7ef4: $de $2a
	sub [hl]                                         ; $7ef6: $96
	xor d                                            ; $7ef7: $aa
	rst $38                                          ; $7ef8: $ff
	nop                                              ; $7ef9: $00
	rst $38                                          ; $7efa: $ff
	nop                                              ; $7efb: $00
	ld [bc], a                                       ; $7efc: $02
	ld [bc], a                                       ; $7efd: $02
	ld h, $36                                        ; $7efe: $26 $36
	ld a, e                                          ; $7f00: $7b
	ldh a, [$9e]                                     ; $7f01: $f0 $9e
	db $fd                                           ; $7f03: $fd
	ld l, [hl]                                       ; $7f04: $6e
	call nz, $ff99                                   ; $7f05: $c4 $99 $ff
	ld [bc], a                                       ; $7f08: $02
	ld [bc], a                                       ; $7f09: $02
	ld b, d                                          ; $7f0a: $42
	ld d, d                                          ; $7f0b: $52
	ld d, h                                          ; $7f0c: $54
	ld [hl], a                                       ; $7f0d: $77
	ldh [$de], a                                     ; $7f0e: $e0 $de
	xor c                                            ; $7f10: $a9
	sbc [hl]                                         ; $7f11: $9e
	xor e                                            ; $7f12: $ab
	ld [hl], a                                       ; $7f13: $77
	ldh [$df], a                                     ; $7f14: $e0 $df
	jr nz, @-$63                                     ; $7f16: $20 $9b

	inc h                                            ; $7f18: $24
	or [hl]                                          ; $7f19: $b6
	nop                                              ; $7f1a: $00
	ld bc, $c36e                                     ; $7f1b: $01 $6e $c3
	sub l                                            ; $7f1e: $95
	rst $38                                          ; $7f1f: $ff
	ld bc, $01ff                                     ; $7f20: $01 $ff $01
	db $dd                                           ; $7f23: $dd
	adc e                                            ; $7f24: $8b
	push de                                          ; $7f25: $d5
	adc e                                            ; $7f26: $8b
	sub l                                            ; $7f27: $95
	db $db                                           ; $7f28: $db
	ld a, d                                          ; $7f29: $7a
	sub e                                            ; $7f2a: $93
	ld l, e                                          ; $7f2b: $6b
	ld hl, sp+$76                                    ; $7f2c: $f8 $76
	call nz, $fe7b                                   ; $7f2e: $c4 $7b $fe
	ld [hl], c                                       ; $7f31: $71
	add b                                            ; $7f32: $80
	rst SubAFromDE                                          ; $7f33: $df
	rra                                              ; $7f34: $1f
	sbc b                                            ; $7f35: $98
	ld a, $7c                                        ; $7f36: $3e $7c
	ld bc, $4522                                     ; $7f38: $01 $22 $45
	ld a, [bc]                                       ; $7f3b: $0a
	sub l                                            ; $7f3c: $95
	ld a, b                                          ; $7f3d: $78
	ld e, [hl]                                       ; $7f3e: $5e

Jump_050_7f3f:
	ld [hl], c                                       ; $7f3f: $71
	sub e                                            ; $7f40: $93
	ld a, [hl-]                                      ; $7f41: $3a
	ret nc                                           ; $7f42: $d0

	ld a, [hl]                                       ; $7f43: $7e
	call nc, Call_050_5f9d                           ; $7f44: $d4 $9d $5f
	cp a                                             ; $7f47: $bf
	ld a, e                                          ; $7f48: $7b
	inc l                                            ; $7f49: $2c
	ld b, l                                          ; $7f4a: $45
	jr nz, jr_050_7fcc                               ; $7f4b: $20 $7f

	ld e, l                                          ; $7f4d: $5d
	rst $38                                          ; $7f4e: $ff
	sbc d                                            ; $7f4f: $9a
	inc bc                                           ; $7f50: $03
	rra                                              ; $7f51: $1f
	ccf                                              ; $7f52: $3f
	rlca                                             ; $7f53: $07
	inc c                                            ; $7f54: $0c
	ld a, e                                          ; $7f55: $7b
	push af                                          ; $7f56: $f5
	rst SubAFromDE                                          ; $7f57: $df
	ld a, [$f8df]                                    ; $7f58: $fa $df $f8
	sbc [hl]                                         ; $7f5b: $9e
	ld a, h                                          ; $7f5c: $7c
	ld a, d                                          ; $7f5d: $7a
	jp nc, $fd99                                     ; $7f5e: $d2 $99 $fd

	db $fc                                           ; $7f61: $fc
	cp $ff                                           ; $7f62: $fe $ff
	ccf                                              ; $7f64: $3f
	add c                                            ; $7f65: $81
	ei                                               ; $7f66: $fb
	sbc l                                            ; $7f67: $9d
	inc bc                                           ; $7f68: $03
	ld a, b                                          ; $7f69: $78
	ld [hl], c                                       ; $7f6a: $71
	or b                                             ; $7f6b: $b0
	sbc b                                            ; $7f6c: $98
	rra                                              ; $7f6d: $1f
	ret nz                                           ; $7f6e: $c0

	ld [hl], l                                       ; $7f6f: $75
	ld a, d                                          ; $7f70: $7a
	ld a, l                                          ; $7f71: $7d
	ld a, [hl]                                       ; $7f72: $7e
	ld a, a                                          ; $7f73: $7f
	ld a, e                                          ; $7f74: $7b
	cp a                                             ; $7f75: $bf
	db $db                                           ; $7f76: $db
	add b                                            ; $7f77: $80
	ld a, [hl]                                       ; $7f78: $7e
	cp h                                             ; $7f79: $bc
	ld b, a                                          ; $7f7a: $47
	and b                                            ; $7f7b: $a0
	sbc e                                            ; $7f7c: $9b
	ld d, c                                          ; $7f7d: $51
	xor b                                            ; $7f7e: $a8
	ld d, h                                          ; $7f7f: $54
	xor b                                            ; $7f80: $a8
	halt                                             ; $7f81: $76
	xor h                                            ; $7f82: $ac
	ld sp, hl                                        ; $7f83: $f9
	ld a, l                                          ; $7f84: $7d
	ld [hl], b                                       ; $7f85: $70
	sbc c                                            ; $7f86: $99
	add l                                            ; $7f87: $85
	inc bc                                           ; $7f88: $03
	ld b, l                                          ; $7f89: $45
	ld [hl+], a                                      ; $7f8a: $22
	ld bc, $7b10                                     ; $7f8b: $01 $10 $7b
	jp $b77e                                         ; $7f8e: $c3 $7e $b7


	ld a, d                                          ; $7f91: $7a
	xor e                                            ; $7f92: $ab
	ld l, b                                          ; $7f93: $68
	ld l, d                                          ; $7f94: $6a
	sbc [hl]                                         ; $7f95: $9e
	cp a                                             ; $7f96: $bf
	ld [bc], a                                       ; $7f97: $02
	rst JumpTable                                          ; $7f98: $c7
	ld h, h                                          ; $7f99: $64
	adc b                                            ; $7f9a: $88
	ld a, e                                          ; $7f9b: $7b
	inc b                                            ; $7f9c: $04
	cp $9d                                           ; $7f9d: $fe $9d
	xor b                                            ; $7f9f: $a8
	nop                                              ; $7fa0: $00
	ld a, e                                          ; $7fa1: $7b
	ld e, [hl]                                       ; $7fa2: $5e
	ld [hl], e                                       ; $7fa3: $73
	ldh a, [$9c]                                     ; $7fa4: $f0 $9c

Call_050_7fa6:
	rst $38                                          ; $7fa6: $ff
	add b                                            ; $7fa7: $80
	db $fc                                           ; $7fa8: $fc
	ld d, a                                          ; $7fa9: $57
	ld b, h                                          ; $7faa: $44
	sub a                                            ; $7fab: $97
	rlca                                             ; $7fac: $07
	rra                                              ; $7fad: $1f
	rrca                                             ; $7fae: $0f
	rrca                                             ; $7faf: $0f
	rra                                              ; $7fb0: $1f
	rlca                                             ; $7fb1: $07
	rlca                                             ; $7fb2: $07
	inc c                                            ; $7fb3: $0c
	cp $99                                           ; $7fb4: $fe $99
	ld [bc], a                                       ; $7fb6: $02
	rst SubAFromBC                                          ; $7fb7: $e7
	rst FarCall                                          ; $7fb8: $f7
	rst SubAFromBC                                          ; $7fb9: $e7
	call z, $7b00                                    ; $7fba: $cc $00 $7b
	ld [$fd7b], sp                                   ; $7fbd: $08 $7b $fd
	ld [hl], e                                       ; $7fc0: $73
	inc b                                            ; $7fc1: $04

Call_050_7fc2:
	ld a, l                                          ; $7fc2: $7d
	inc bc                                           ; $7fc3: $03
	sbc c                                            ; $7fc4: $99
	cp a                                             ; $7fc5: $bf
	sbc a                                            ; $7fc6: $9f
	rlca                                             ; $7fc7: $07
	rst $38                                          ; $7fc8: $ff
	ld e, $3c                                        ; $7fc9: $1e $3c
	ld l, [hl]                                       ; $7fcb: $6e

jr_050_7fcc:
	inc b                                            ; $7fcc: $04
	ld a, a                                          ; $7fcd: $7f
	cp $db                                           ; $7fce: $fe $db
	rst $38                                          ; $7fd0: $ff
	sbc [hl]                                         ; $7fd1: $9e
	ccf                                              ; $7fd2: $3f
	db $fd                                           ; $7fd3: $fd
	ld h, b                                          ; $7fd4: $60
	ld h, b                                          ; $7fd5: $60
	sbc d                                            ; $7fd6: $9a
	ldh a, [$c4]                                     ; $7fd7: $f0 $c4
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	ld de, $5e78                                     ; $7fdb: $11 $78 $5e
	ld [hl], c                                       ; $7fde: $71
	sub e                                            ; $7fdf: $93
	ld a, d                                          ; $7fe0: $7a
	bit 7, c                                         ; $7fe1: $cb $79
	db $e4                                           ; $7fe3: $e4
	ld c, l                                          ; $7fe4: $4d
	and b                                            ; $7fe5: $a0
	sbc h                                            ; $7fe6: $9c
	xor e                                            ; $7fe7: $ab
	ld d, a                                          ; $7fe8: $57
	xor a                                            ; $7fe9: $af
	ld a, d                                          ; $7fea: $7a
	call z, $af9e                                    ; $7feb: $cc $9e $af
	ld c, d                                          ; $7fee: $4a
	ret nc                                           ; $7fef: $d0

	ld c, [hl]                                       ; $7ff0: $4e
	ret nz                                           ; $7ff1: $c0

	sbc h                                            ; $7ff2: $9c
	db $fc                                           ; $7ff3: $fc
	ei                                               ; $7ff4: $fb
	ld hl, sp-$23                                    ; $7ff5: $f8 $dd
	ccf                                              ; $7ff7: $3f
	add l                                            ; $7ff8: $85
	rra                                              ; $7ff9: $1f
	dec de                                           ; $7ffa: $1b
	inc d                                            ; $7ffb: $14
	rlca                                             ; $7ffc: $07
	rst $38                                          ; $7ffd: $ff
	rst AddAOntoHL                                          ; $7ffe: $ef

Call_050_7fff:
Jump_050_7fff:
	di                                               ; $7fff: $f3
